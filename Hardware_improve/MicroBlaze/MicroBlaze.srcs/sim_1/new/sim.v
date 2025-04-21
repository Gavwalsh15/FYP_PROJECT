module sha256_tb;

    // Inputs
    reg clk;
    reg reset;
    reg [1:0] hash_size;
    reg [511:0] message_block;

    // Outputs
    wire [255:0] hash;
    wire hash_started;
    wire done;

    // Instantiate the SHA-256 module
    sha256 uut (
        .clk(clk),
        .reset(reset),
        .hash_size(hash_size), // 01 for single block , 10 for multi
        .message_block(message_block),
        .hash(hash),
        .hash_started(hash_started),
        .done(done)
    );

    // Clock generation
    always begin
        #5 clk = ~clk; // 100 MHz clock
    end

    // Stimulus process
    initial begin
        // Initialize the inputs
        clk = 0;
        reset = 0;
        message_block = 512'h61626380000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018; // Example input block

        // Display header
        $display("Starting Single Hash Testbench...");

        // Apply reset
        reset = 1;
        #10; // Wait for a few cycles
        reset = 0;
        hash_size = 2'b01; // Set hash size to SIGNLEHASH
        #10;
        hash_size = 2'b00;

        // Test: Start a single hash computation
        $display("Testing Single Hash...");
        #10; // Wait a few cycles

        // Monitor output
        #10;
        $display("Final hash: %h", hash);
        $display("Done: %b", done);
        
        // Finish the simulation
        $finish;
    end

    // Monitor the signals
    initial begin
        $monitor("At time %t, hash_started: %b, done: %b, hash: %h", $time, hash_started, done, hash);
    end

endmodule
