module axi_uartlite_0 (
    // AXI-Lite Slave Interface
    input wire s_axi_aclk,
    input wire s_axi_aresetn,
    
    // AXI-Lite Write Address Channel
    input wire [3:0] s_axi_awaddr,
    input wire s_axi_awvalid,
    output reg s_axi_awready,
    
    // AXI-Lite Write Data Channel
    input wire [31:0] s_axi_wdata,
    input wire [3:0] s_axi_wstrb,
    input wire s_axi_wvalid,
    output reg s_axi_wready,
    
    // AXI-Lite Write Response Channel
    output reg [1:0] s_axi_bresp,
    output reg s_axi_bvalid,
    input wire s_axi_bready,
    
    // AXI-Lite Read Address Channel
    input wire [3:0] s_axi_araddr,
    input wire s_axi_arvalid,
    output reg s_axi_arready,
    
    // AXI-Lite Read Data Channel
    output reg [31:0] s_axi_rdata,
    output reg [1:0] s_axi_rresp,
    output reg s_axi_rvalid,
    input wire s_axi_rready,
    
    // UART Interface
    input wire usb_uart_rxd,
    output wire usb_uart_txd,
    output wire interrupt
);

    // Parameters
    parameter CLK_FREQ = 100_000_000; // 100 MHz
    parameter BAUD_RATE = 115200;
    parameter CLKS_PER_BIT = CLK_FREQ / BAUD_RATE;
    
    // Register Map
    localparam RX_FIFO = 4'h0;    // Read Only
    localparam TX_FIFO = 4'h4;    // Write Only
    localparam STATUS_REG = 4'h8;  // Read Only
    localparam CTRL_REG = 4'hC;    // Read/Write
    
    // Internal Registers
    reg [7:0] tx_data;
    reg tx_start;
    wire tx_busy;
    wire [7:0] rx_data;
    wire rx_data_ready;
    reg [7:0] ctrl_reg;
    reg [7:0] status_reg;
    
    // Status Register Bits
    localparam TX_FULL = 3;
    localparam RX_FULL = 2;
    localparam TX_EMPTY = 1;
    localparam RX_EMPTY = 0;
    
    // Control Register Bits
    localparam TX_INT_EN = 1;
    localparam RX_INT_EN = 0;

    // UART TX Instance
    uart_tx #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) uart_tx_inst (
        .clk(s_axi_aclk),
        .reset(!s_axi_aresetn),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx(tx),
        .tx_busy(tx_busy)
    );

    // UART RX Instance
    uart_rx #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) uart_rx_inst (
        .clk(s_axi_aclk),
        .reset(!s_axi_aresetn),
        .rx(rx),
        .rx_data(rx_data),
        .rx_data_ready(rx_data_ready)
    );

    // Write Address Channel
    always @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
        if (!s_axi_aresetn) begin
            s_axi_awready <= 1'b0;
        end else begin
            s_axi_awready <= !s_axi_awready && s_axi_awvalid;
        end
    end

    // Write Data Channel
    always @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
        if (!s_axi_aresetn) begin
            s_axi_wready <= 1'b0;
            tx_start <= 1'b0;
            tx_data <= 8'h00;
            ctrl_reg <= 8'h00;
        end else begin
            tx_start <= 1'b0; // Default state
            
            if (s_axi_wvalid && s_axi_wready) begin
                case (s_axi_awaddr)
                    TX_FIFO: begin
                        if (!tx_busy) begin
                            tx_data <= s_axi_wdata[7:0];
                            tx_start <= 1'b1;
                        end
                    end
                    CTRL_REG: ctrl_reg <= s_axi_wdata[7:0];
                endcase
            end
            
            s_axi_wready <= !s_axi_wready && s_axi_wvalid;
        end
    end

    // Write Response Channel
    always @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
        if (!s_axi_aresetn) begin
            s_axi_bvalid <= 1'b0;
            s_axi_bresp <= 2'b00;
        end else begin
            if (s_axi_wready && s_axi_wvalid) begin
                s_axi_bvalid <= 1'b1;
                s_axi_bresp <= 2'b00; // OKAY response
            end else if (s_axi_bvalid && s_axi_bready) begin
                s_axi_bvalid <= 1'b0;
            end
        end
    end

    // Read Address Channel
    always @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
        if (!s_axi_aresetn) begin
            s_axi_arready <= 1'b0;
        end else begin
            s_axi_arready <= !s_axi_arready && s_axi_arvalid;
        end
    end

    // Read Data Channel
    always @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
        if (!s_axi_aresetn) begin
            s_axi_rvalid <= 1'b0;
            s_axi_rdata <= 32'h0;
            s_axi_rresp <= 2'b00;
        end else begin
            if (s_axi_arready && s_axi_arvalid) begin
                s_axi_rvalid <= 1'b1;
                case (s_axi_araddr)
                    RX_FIFO: s_axi_rdata <= {24'h0, rx_data};
                    STATUS_REG: s_axi_rdata <= {24'h0, status_reg};
                    CTRL_REG: s_axi_rdata <= {24'h0, ctrl_reg};
                    default: s_axi_rdata <= 32'h0;
                endcase
                s_axi_rresp <= 2'b00; // OKAY response
            end else if (s_axi_rvalid && s_axi_rready) begin
                s_axi_rvalid <= 1'b0;
            end
        end
    end

    // Status Register Update
    always @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
        if (!s_axi_aresetn) begin
            status_reg <= 8'h0;
        end else begin
            status_reg[TX_FULL] <= tx_busy;
            status_reg[RX_FULL] <= rx_data_ready;
            status_reg[TX_EMPTY] <= !tx_busy;
            status_reg[RX_EMPTY] <= !rx_data_ready;
        end
    end

    // Interrupt Generation
    assign interrupt = (ctrl_reg[RX_INT_EN] && rx_data_ready) ||
                      (ctrl_reg[TX_INT_EN] && !tx_busy);

endmodule

// UART TX Module
module uart_tx #(
    parameter CLKS_PER_BIT = 868
) (
    input wire clk,
    input wire reset,
    input wire tx_start,
    input wire [7:0] tx_data,
    output reg tx,
    output reg tx_busy
);

    // State Machine States
    localparam IDLE = 2'b00;
    localparam START = 2'b01;
    localparam DATA = 2'b10;
    localparam STOP = 2'b11;

    reg [1:0] state;
    reg [15:0] tick_counter;
    reg [2:0] bit_counter;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            tx <= 1'b1;
            tx_busy <= 1'b0;
            tick_counter <= 0;
            bit_counter <= 0;
        end else begin
            case (state)
                IDLE: begin
                    tx <= 1'b1;
                    if (tx_start) begin
                        state <= START;
                        tx_busy <= 1'b1;
                        tick_counter <= 0;
                    end
                end

                START: begin
                    tx <= 1'b0;
                    if (tick_counter == CLKS_PER_BIT-1) begin
                        state <= DATA;
                        tick_counter <= 0;
                        bit_counter <= 0;
                    end else begin
                        tick_counter <= tick_counter + 1;
                    end
                end

                DATA: begin
                    tx <= tx_data[bit_counter];
                    if (tick_counter == CLKS_PER_BIT-1) begin
                        tick_counter <= 0;
                        if (bit_counter == 7) begin
                            state <= STOP;
                        end else begin
                            bit_counter <= bit_counter + 1;
                        end
                    end else begin
                        tick_counter <= tick_counter + 1;
                    end
                end

                STOP: begin
                    tx <= 1'b1;
                    if (tick_counter == CLKS_PER_BIT-1) begin
                        state <= IDLE;
                        tx_busy <= 1'b0;
                    end else begin
                        tick_counter <= tick_counter + 1;
                    end
                end
            endcase
        end
    end
endmodule

// UART RX Module
module uart_rx #(
    parameter CLKS_PER_BIT = 868
) (
    input wire clk,
    input wire reset,
    input wire rx,
    output reg [7:0] rx_data,
    output reg rx_data_ready
);

    // State Machine States
    localparam IDLE = 2'b00;
    localparam START = 2'b01;
    localparam DATA = 2'b10;
    localparam STOP = 2'b11;

    reg [1:0] state;
    reg [15:0] tick_counter;
    reg [2:0] bit_counter;
    reg rx_sync1, rx_sync2;

    // Double-flop synchronizer for RX input
    always @(posedge clk) begin
        rx_sync1 <= rx;
        rx_sync2 <= rx_sync1;
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            rx_data <= 8'h00;
            rx_data_ready <= 1'b0;
            tick_counter <= 0;
            bit_counter <= 0;
        end else begin
            case (state)
                IDLE: begin
                    rx_data_ready <= 1'b0;
                    if (!rx_sync2) begin // Start bit detected
                        state <= START;
                        tick_counter <= 0;
                    end
                end

                START: begin
                    if (tick_counter == CLKS_PER_BIT/2) begin
                        if (!rx_sync2) begin // Confirm start bit
                            state <= DATA;
                            tick_counter <= 0;
                            bit_counter <= 0;
                        end else begin
                            state <= IDLE;
                        end
                    end else begin
                        tick_counter <= tick_counter + 1;
                    end
                end

                DATA: begin
                    if (tick_counter == CLKS_PER_BIT-1) begin
                        rx_data[bit_counter] <= rx_sync2;
                        tick_counter <= 0;
                        if (bit_counter == 7) begin
                            state <= STOP;
                        end else begin
                            bit_counter <= bit_counter + 1;
                        end
                    end else begin
                        tick_counter <= tick_counter + 1;
                    end
                end

                STOP: begin
                    if (tick_counter == CLKS_PER_BIT-1) begin
                        if (rx_sync2) begin // Valid stop bit
                            rx_data_ready <= 1'b1;
                        end
                        state <= IDLE;
                    end else begin
                        tick_counter <= tick_counter + 1;
                    end
                end
            endcase
        end
    end
endmodule