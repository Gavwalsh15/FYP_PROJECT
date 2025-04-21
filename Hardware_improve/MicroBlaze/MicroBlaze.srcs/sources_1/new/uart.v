module uart #(
    parameter CLK_FREQ = 100_000_000,
    parameter BAUD_RATE = 2000000 
) (
    input wire clk,
    input wire reset,
    input wire rx,
    output reg tx,
    output reg [511:0] message_block, 
    output reg [1:0] hash_state,
    input wire hash_done,
    input wire [255:0] hash,
    input wire hash_started
);

localparam CLKS_PER_BIT = CLK_FREQ / BAUD_RATE;

// RX registers
reg [15:0] clk_count;
reg [3:0] bit_count;
reg [7:0] data_byte;
reg [8:0] byte_count;

// TX registers
reg [7:0] tx_data;
reg [3:0] tx_bit_count;
reg tx_active;
reg [15:0] tx_clk_count;
reg [7:0] tx_byte_count;
reg send_response;
reg [1:0] tx_state;

// State definitions
localparam IDLE = 2'b00;
localparam START_BIT = 2'b01;
localparam DATA_BITS = 2'b10;
localparam STOP_BIT = 2'b11;

localparam NOOPHASH = 2'b00;
localparam SIGNLEHASH = 2'b01;
localparam LARGEHASH = 2'b10;

// TX states
localparam TX_IDLE = 2'b00;
localparam TX_SENDING_FF = 2'b01;
localparam TX_SENDING_HASH = 2'b10;

reg [1:0] state;

// TX State Machine
always @(posedge clk or posedge reset) begin
    if (reset) begin
        tx            <= 1;
        tx_active     <= 0;
        tx_bit_count  <= 0;
        tx_clk_count  <= 0;
        tx_state      <= TX_IDLE;
        tx_byte_count <= 0;
    end else begin
        case (tx_state)
            TX_IDLE: begin
                if (send_response && hash_done) begin
                    tx_state      <= TX_SENDING_HASH;
                    tx_active     <= 1;
                    tx            <= 0; // Start bit
                    tx_clk_count  <= CLKS_PER_BIT - 1;
                    tx_bit_count  <= 0;
                    tx_byte_count <= 0;
                end else if (!tx_active && state == IDLE) begin
                    tx_active     <= 1;
                    tx            <= 0; // Start bit
                    tx_data       <= 8'hFF;
                    tx_clk_count  <= CLKS_PER_BIT - 1;
                    tx_bit_count  <= 0;
                end
            end

            TX_SENDING_HASH: begin
                if (!tx_active) begin
                    if (tx_byte_count < 32) begin // 256 bits = 32 bytes
                        tx_active     <= 1;
                        tx            <= 0; 
                        tx_data       <= hash[tx_byte_count*8 +: 8];
                        tx_clk_count  <= CLKS_PER_BIT - 1;
                        tx_bit_count  <= 0;
                        tx_byte_count <= tx_byte_count + 1;
                    end else begin
                        tx_state <= TX_IDLE;
                    end
                end
            end
        endcase

        // Bit-level transmission
        if (tx_active) begin
            if (tx_clk_count > 0) begin
                tx_clk_count <= tx_clk_count - 1;
            end else begin
                tx_clk_count <= CLKS_PER_BIT - 1;
                if (tx_bit_count < 8) begin
                    tx           <= tx_data[tx_bit_count];
                    tx_bit_count <= tx_bit_count + 1;
                end else if (tx_bit_count == 8) begin
                    tx           <= 1; // Stop bit
                    tx_bit_count <= tx_bit_count + 1;
                end else begin
                    tx_active <= 0;
                end
            end
        end
    end
end


// RX State Machine
always @(posedge clk or posedge reset) begin
    if (reset) begin
        clk_count <= 16'b0;
        bit_count <= 4'b0;
        data_byte <= 8'b0;
        byte_count <= 9'b0;
        state <= IDLE;
        message_block <= 512'b0;
        hash_state <= NOOPHASH;
        send_response <= 1'b0;
    end else begin
        case (state)
            IDLE: begin
                if(hash_started)
                    hash_state <= NOOPHASH;
                    
                if(tx_byte_count < 32)
                    send_response <= 1'b0;

                if (rx == 1'b0) begin
                    state <= START_BIT;
                    clk_count <= (CLKS_PER_BIT - 1) / 2;
                end
            end

            START_BIT: begin
                if (clk_count == 0) begin
                    if (rx == 1'b0) begin
                        state <= DATA_BITS;
                        clk_count <= CLKS_PER_BIT - 1;
                        bit_count <= 4'b0;
                    end else
                        state <= IDLE;
                end else
                    clk_count <= clk_count - 1;
            end

            DATA_BITS: begin
                if (clk_count == 0) begin
                    clk_count <= CLKS_PER_BIT - 1;
                    data_byte[bit_count] <= rx;
                    if (bit_count == 7)
                        state <= STOP_BIT;
                    else
                        bit_count <= bit_count + 1;
                end else
                    clk_count <= clk_count - 1;
            end

            STOP_BIT: begin
                if (clk_count == 0) begin
                    if (rx == 1'b1) begin
                        if (byte_count < 64) begin  
                            message_block[byte_count*8 +: 8] <= data_byte;
                            byte_count <= byte_count + 9'b1;
                        end else if (byte_count == 64) begin  // command char
                            case (data_byte)
                                8'h73: begin  // 's'
                                    hash_state <= SIGNLEHASH;
                                end
                                8'h53: begin  // 'S'
                                    hash_state <= SIGNLEHASH;
                                    send_response <= 1'b1;
                                end
                                8'h6C: begin  // 'l'
                                    hash_state <= LARGEHASH;
                                end
                                8'h4C: begin  // 'L'
                                    hash_state <= LARGEHASH;
                                    send_response <= 1'b1;
                                end
                            endcase
                            byte_count <= 9'b0;
                        end
                        state <= IDLE;
                    end else
                        state <= IDLE;
                end else
                    clk_count <= clk_count - 1;
            end
        endcase
    end
end

endmodule