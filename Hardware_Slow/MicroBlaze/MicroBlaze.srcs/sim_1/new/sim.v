`timescale 1ns/1ps

module sha256_tb;
    // Inputs
    reg clk;
    reg rst;
    reg reset_hash;
    reg large_hash;
    reg start;
    reg [511:0] message_block;

    // Outputs
    wire [255:0] hash;
    wire done;

    // Instantiate the SHA-256 module
    sha256 uut (
        .clk(clk),
        .rst(rst),
        .reset_hash(reset_hash),
        .large_hash(large_hash),
        .start(start),
        .message_block(message_block),
        .hash(hash),
        .done(done)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test vectors
    reg [511:0] test_message1 = 512'h546865206f6c6420726164696f20637261636b6c656420746f206c6966652c2077686973706572696e6720736563726574732066726f6d206120666f72676f74;
    reg [511:0] test_message2 = 512'h74656e206572612e8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000240;

    // Test procedure
    initial begin
        // Initialize signals
        rst = 1;
        reset_hash = 0;
        large_hash = 0;
        start = 0;
        message_block = 0;

        // Wait for 100ns
        #100;

        // Release reset
        rst = 0;
        #20;

        // Test Case 1: First message block
        $display("Test Case 1: Processing first message block");
        message_block = test_message1;
        start = 1;
        #10;
        start = 0;

        // Wait for completion
        @(posedge done);
        $display("Hash result 1: %h", hash);
        #20;

        // Test Case 2: Second message block
        $display("Test Case 2: Processing second message block");
        large_hash = 1;
        #10;
        large_hash = 0;
        message_block = test_message2;
        start = 1;
        #10;
        start = 0;

        // Wait for completion
        @(posedge done);
        $display("Final hash result: %h", hash);

        // Test Case 3: Reset hash test
        $display("Test Case 3: Testing reset_hash");
        reset_hash = 1;
        #10;
        reset_hash = 0;
        message_block = test_message1;
        start = 1;
        #10;
        start = 0;

        // Wait for completion
        @(posedge done);
        $display("Hash after reset: %h", hash);

        // Add delay before finishing simulation
        #100;
        $display("Simulation completed");
        $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time=%0t rst=%b start=%b done=%b state=%b", 
                 $time, rst, start, done, uut.state);
    end

    // Optional: Dump waveform file
    initial begin
        $dumpfile("sha256_tb.vcd");
        $dumpvars(0, sha256_tb);
    end

    // Timeout watchdog
    initial begin
        #10000; // Timeout after 10000 time units
        $display("Timeout: Simulation took too long");
        $finish;
    end

    // Check for completion of each round
    always @(posedge clk) begin
        if (uut.state == uut.PROCESS) begin
            $display("Round %0d completed", uut.round_count);
        end
    end

    // Verification tasks
    task verify_hash;
        input [255:0] expected_hash;
        begin
            if (hash === expected_hash)
                $display("Hash verification PASSED");
            else
                $display("Hash verification FAILED. Expected: %h, Got: %h", expected_hash, hash);
        end
    endtask

endmodule