`timescale 1ns/1ps

module uart_tb();

// Parameters
parameter CLK_FREQ = 50_000_000;
parameter BAUD_RATE = 115200;
parameter CLK_PERIOD = 20; // 50MHz clock period in ns
parameter BIT_PERIOD = (CLK_FREQ/BAUD_RATE) * 1000; // Period for each UART bit in ns

// Testbench signals
reg clk;
reg reset;
reg rx;
wire tx;
wire [511:0] message_block;
wire message_ready;
wire single_hash;
wire large_hash;
reg hash_status;
reg [255:0] hash;

// Instantiate UART module
uart #(
    .CLK_FREQ(CLK_FREQ),
    .BAUD_RATE(BAUD_RATE)
) uart_inst (
    .clk(clk),
    .reset(reset),
    .rx(rx),
    .tx(tx),
    .message_block(message_block),
    .message_ready(message_ready),
    .single_hash(single_hash),
    .large_hash(large_hash),
    .hash_status(hash_status),
    .hash(hash)
);

// Clock generation
initial begin
    clk = 0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end

// Test stimulus
initial begin
    // Initialize signals
    reset = 1;
    rx = 1;
    hash_status = 0;
    hash = 256'h0;
    
    // Release reset
    #100;
    reset = 0;
    #100;

    // Send 'a' (0x61)
    rx = 0; #BIT_PERIOD; // Start bit
    rx = 1; #BIT_PERIOD; // LSB
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD; // MSB
    rx = 1; #BIT_PERIOD; // Stop bit

    // Send 'b' (0x62)
    rx = 0; #BIT_PERIOD; // Start bit
    rx = 0; #BIT_PERIOD; // LSB
    rx = 1; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD; // MSB
    rx = 1; #BIT_PERIOD; // Stop bit

    // Send 'c' (0x63)
    rx = 0; #BIT_PERIOD; // Start bit
    rx = 1; #BIT_PERIOD; // LSB
    rx = 1; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD; // MSB
    rx = 1; #BIT_PERIOD; // Stop bit

    // Send 0x80
    rx = 0; #BIT_PERIOD; // Start bit
    rx = 0; #BIT_PERIOD; // LSB
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD; // MSB
    rx = 1; #BIT_PERIOD; // Stop bit

    // Send 56 zeros
    repeat(56) begin
        rx = 0; #BIT_PERIOD; // Start bit
        rx = 0; #BIT_PERIOD; // LSB
        rx = 0; #BIT_PERIOD;
        rx = 0; #BIT_PERIOD;
        rx = 0; #BIT_PERIOD;
        rx = 0; #BIT_PERIOD;
        rx = 0; #BIT_PERIOD;
        rx = 0; #BIT_PERIOD;
        rx = 0; #BIT_PERIOD; // MSB
        rx = 1; #BIT_PERIOD; // Stop bit
    end

    // Send 0x18
    rx = 0; #BIT_PERIOD; // Start bit
    rx = 0; #BIT_PERIOD; // LSB
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD; // MSB
    rx = 1; #BIT_PERIOD; // Stop bit

    // Send 's' (0x73)
    rx = 0; #BIT_PERIOD; // Start bit
    rx = 1; #BIT_PERIOD; // LSB
    rx = 1; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD;
    rx = 1; #BIT_PERIOD;
    rx = 0; #BIT_PERIOD; // MSB
    rx = 1; #BIT_PERIOD; // Stop bit

    // Wait for message_ready
    @(posedge message_ready);
    $display("Message received!");
    $display("Message block: %h", message_block);
    $display("Single hash: %b", single_hash);
    $display("Large hash: %b", large_hash);
    
    #1000;
    $display("Simulation completed");
    $finish;
end

endmodule