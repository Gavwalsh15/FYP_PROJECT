module simple_axi_writer_tb;

    reg M_AXI_ACLK;
    reg M_AXI_ARESETN;
    reg start;
    wire [255:0] hash;
    wire done;

    // Instantiate the Unit Under Test (UUT)
    simple_axi_writer uut (
        .M_AXI_ACLK(M_AXI_ACLK),
        .M_AXI_ARESETN(M_AXI_ARESETN),
        .start(start),
        .hash(hash),
        .done(done)
    );

    // Clock generation
    initial begin
        M_AXI_ACLK = 0;
        forever #5 M_AXI_ACLK = ~M_AXI_ACLK;
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        M_AXI_ARESETN = 0;
        start = 0;

        // Wait 100 ns for global reset
        #100;
        M_AXI_ARESETN = 1;
        
        // Wait a bit after reset
        #20;
        
        // Start the hash
        start = 1;
        #10;
        start = 0;

        // Wait for completion
        @(posedge done);
        
        // Display results
        $display("Hash result: %h", hash);
        
        // Expected hash for "abc":
        // ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad
        
        if (hash == 256'hba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad)
            $display("Test PASSED!");
        else
            $display("Test FAILED!");

        #100;
        $finish;
    end

    // Optional: Monitor state changes
    reg [1:0] prev_state;
    always @(posedge M_AXI_ACLK) begin
        prev_state <= uut.state;
        if (prev_state != uut.state) begin
            case (uut.state)
                0: $display("State: IDLE");
                1: $display("State: START_HASH");
                2: $display("State: WAIT_HASH");
                3: $display("State: FINISH");
            endcase
        end
    end

endmodule