module uart #(
    parameter CLK_FREQ = 50_000_000,
    parameter BAUD_RATE = 115200
) (
    input wire clk,          
    input wire reset,        
    input wire rx,           
    output reg tx,           
    output reg [511:0] message_block, 
    output reg message_ready,
    output reg single_hash,
    output reg large_hash,
    output reg [8:0] byte_count
);
    localparam CLKS_PER_BIT = CLK_FREQ / BAUD_RATE;
    
    // RX registers
    reg [15:0] clk_count;
    reg [3:0] bit_count;
    reg [7:0] data_byte;
    
    // TX registers
    reg [7:0] tx_data;
    reg [3:0] tx_bit_count;
    reg tx_active;
    reg [15:0] tx_clk_count;
    
    // State definitions
    localparam IDLE = 2'b00;
    localparam START_BIT = 2'b01;
    localparam DATA_BITS = 2'b10;
    localparam STOP_BIT = 2'b11;
    
    reg [1:0] state;

    // TX State Machine
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            tx <= 1'b1;  // Idle state is high
            tx_active <= 1'b0;
            tx_bit_count <= 4'b0000;
            tx_clk_count <= 16'b0;
        end else begin
            if (!tx_active && state == IDLE) begin
                // Send ready signal (0xFF)
                tx_data <= 8'hFF;
                tx_active <= 1'b1;
                tx <= 1'b0;  // Start bit
                tx_clk_count <= CLKS_PER_BIT - 1'b1;
                tx_bit_count <= 4'b0000;
            end else if (tx_active) begin
                if (tx_clk_count > 16'b0) begin
                    tx_clk_count <= tx_clk_count - 1'b1;
                end else begin
                    tx_clk_count <= CLKS_PER_BIT - 1'b1;
                    
                    if (tx_bit_count < 4'd8) begin
                        tx <= tx_data[tx_bit_count];
                        tx_bit_count <= tx_bit_count + 1'b1;
                    end else if (tx_bit_count == 4'd8) begin
                        tx <= 1'b1;  // Stop bit
                        tx_bit_count <= tx_bit_count + 1'b1;
                    end else begin
                        tx_active <= 1'b0;
                    end
                end
            end
        end
    end

    // RX State Machine
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            clk_count <= 16'b0;
            bit_count <= 4'b0000;
            data_byte <= 8'b0;
            byte_count <= 9'b0;
            state <= IDLE;
            message_block <= 512'b0;
            message_ready <= 1'b0;
            single_hash <= 1'b0;
            large_hash <= 1'b0;
        end else begin
            case (state)
                IDLE: begin
                    message_ready <= 1'b0;
                    single_hash <= 1'b0;
                    large_hash <= 1'b0;
                    if (rx == 1'b0) begin  // Start bit detected
                        state <= START_BIT;
                        clk_count <= (CLKS_PER_BIT - 1'b1) / 2;
                    end
                end

                START_BIT: begin
                    if (clk_count == 16'b0) begin
                        if (rx == 1'b0) begin
                            state <= DATA_BITS;
                            clk_count <= CLKS_PER_BIT - 1'b1;
                            bit_count <= 4'b0000;
                        end else
                            state <= IDLE;
                    end else
                        clk_count <= clk_count - 1'b1;
                end

                DATA_BITS: begin
                    if (clk_count == 16'b0) begin
                        clk_count <= CLKS_PER_BIT - 1'b1;
                        data_byte[bit_count] <= rx;
                        if (bit_count == 4'd7) begin
                            state <= STOP_BIT;
                        end else
                            bit_count <= bit_count + 1'b1;
                    end else
                        clk_count <= clk_count - 1'b1;
                end

                STOP_BIT: begin
                    if (clk_count == 16'b0) begin
                        if (rx == 1'b1) begin
                            message_block[byte_count*8 +: 8] <= data_byte;
                            
                            if (byte_count == 9'd63) begin  // Last byte
                                single_hash <= 1'b1;
                                large_hash <= 1'b0;
                                message_ready <= 1'b1;
                                byte_count <= 9'b0;
                                state <= IDLE;
                            end else begin
                                byte_count <= byte_count + 1'b1;
                                state <= IDLE;
                            end
                        end else begin
                            state <= IDLE;
                        end
                    end else begin
                        clk_count <= clk_count - 1'b1;
                    end
                end 
            endcase
        end
    end

endmodule