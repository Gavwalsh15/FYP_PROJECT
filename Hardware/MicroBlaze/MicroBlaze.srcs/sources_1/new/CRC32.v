// Top level module containing both SHA-256 and AXI interfaces
module simple_axi_writer #(
    parameter integer AXI_ADDR_WIDTH = 32,
    parameter integer AXI_DATA_WIDTH = 32,
    parameter READ_ADDR = 32'hC000_0000,
    parameter WRITE_ADDR = 32'hC000_0100
)(
    input  wire [1:0] GPIO_start,
    output reg        GPIO_complete,
    input  wire       M_AXI_ACLK,
    input  wire       M_AXI_ARESETN,

    // AXI write interface
    output wire [AXI_DATA_WIDTH-1:0]     M_AXI_WDATA,
    output wire [AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
    output wire [31:0]                   M_AXI_AWADDR,
    output wire [2:0]  M_AXI_AWPROT,
    output wire        M_AXI_AWVALID,
    input  wire        M_AXI_AWREADY,
    output wire        M_AXI_WVALID,
    input  wire        M_AXI_WREADY,
    input  wire [1:0]  M_AXI_BRESP,
    input  wire        M_AXI_BVALID,
    output wire        M_AXI_BREADY,

    // AXI read interface
    output wire [31:0] M_AXI_ARADDR,
    output wire [2:0]  M_AXI_ARPROT,
    output wire        M_AXI_ARVALID,
    input  wire        M_AXI_ARREADY,
    input  wire [AXI_DATA_WIDTH-1:0] M_AXI_RDATA,
    input  wire [1:0]  M_AXI_RRESP,
    input  wire        M_AXI_RVALID,
    output wire        M_AXI_RREADY
);

    // State definitions
    localparam [4:0]
        IDLE          = 5'b00000,
        READ_BLOCK    = 5'b00001,
        WAIT_READ     = 5'b00010,
        STORE_WORD    = 5'b00011,
        START_HASH    = 5'b00100,
        WRITING       = 5'b00101,
        WAIT_WRITE    = 5'b00110,
        RESPONSE      = 5'b00111,
        NEXT_WORD     = 5'b01000,
        DONE          = 5'b01001;
        
    // Control signal definitions
    localparam [1:0]
        NO_OP      = 2'b00,
        START_HASH_SIGNAL = 2'b01,
        RESET_HASH_SIGNAL = 2'b10;

    // Internal registers
    reg [4:0] state;
    wire [255:0] hash_out;
    wire hash_done;
    reg hash_start;
    reg reset_hash;  // New reset signal
    reg [255:0] final_hash;
    reg [3:0] word_counter;  
    reg [31:0] current_word;
    reg [511:0] message_block;
    reg axi_awvalid;
    reg axi_wvalid;
    reg axi_bready;
    reg axi_arvalid;
    reg axi_rready;
    reg [31:0] read_addr;
    reg [31:0] write_addr;

    // Fixed assignments
    assign M_AXI_AWADDR = write_addr;
    assign M_AXI_ARADDR = read_addr;
    assign M_AXI_AWVALID = axi_awvalid;
    assign M_AXI_WVALID = axi_wvalid;
    assign M_AXI_BREADY = axi_bready;
    assign M_AXI_ARVALID = axi_arvalid;
    assign M_AXI_RREADY = axi_rready;
    assign M_AXI_WSTRB = 4'b1111;
    assign M_AXI_AWPROT = 3'b000;
    assign M_AXI_ARPROT = 3'b000;
    assign M_AXI_WDATA = current_word;

    // SHA-256 instance
    sha256 sha256_inst (
        .clk(M_AXI_ACLK),
        .rst(~M_AXI_ARESETN),
        .reset_hash(reset_hash),
        .start(hash_start),
        .message_block(message_block),
        .hash(hash_out),
        .done(hash_done)
    );

    // Main state machine
    always @(posedge M_AXI_ACLK) begin
        if (~M_AXI_ARESETN) begin
            state <= IDLE;
            reset_hash <= 1'b0;
            axi_awvalid <= 1'b0;
            axi_wvalid <= 1'b0;
            axi_bready <= 1'b0;
            axi_arvalid <= 1'b0;
            axi_rready <= 1'b0;
            GPIO_complete <= 1'b0;
            hash_start <= 1'b0;
            word_counter <= 4'b0000;
            read_addr <= READ_ADDR;
            write_addr <= WRITE_ADDR;
            message_block <= 512'b0;
            current_word <= 32'b0;
            final_hash <= 256'b0;
        end
        else begin
            case (state)
                IDLE: begin
                    case (GPIO_start)
                        START_HASH_SIGNAL: begin
                            reset_hash <= 1'b0;
                            state <= READ_BLOCK;
                            word_counter <= 4'b0000;
                            read_addr <= READ_ADDR;
                            axi_arvalid <= 1'b1;
                            axi_rready <= 1'b1;
                            GPIO_complete <= 1'b0;
                        end
                
                        RESET_HASH_SIGNAL: begin
                            reset_hash <= 1'b1;
                            state <= IDLE;
                            axi_awvalid <= 1'b0;
                            axi_wvalid <= 1'b0;
                            axi_bready <= 1'b0;
                            axi_arvalid <= 1'b0;
                            axi_rready <= 1'b0;
                            GPIO_complete <= 1'b0;
                            hash_start <= 1'b0;
                            word_counter <= 4'b0000;
                            read_addr <= READ_ADDR;
                            write_addr <= WRITE_ADDR;
                            message_block <= 512'b0;
                            current_word <= 32'b0;
                            final_hash <= 256'b0;
                        end
                
                        default: begin
                            reset_hash <= 1'b0;
                            state <= IDLE;
                            hash_start <= 1'b0;
                        end
                    endcase
                end

                READ_BLOCK: begin
                    if (M_AXI_ARREADY && axi_arvalid) begin
                        axi_arvalid <= 1'b0;
                        state <= WAIT_READ;
                    end
                end

                WAIT_READ: begin
                    if (M_AXI_RVALID && axi_rready) begin
                        state <= STORE_WORD;
                    end
                end

                STORE_WORD: begin
                    message_block[511-word_counter*32 -: 32] <= M_AXI_RDATA;
                    
                    if (word_counter == 4'b1111) begin
                        state <= START_HASH;
                        axi_rready <= 1'b0;
                    end else begin
                        word_counter <= word_counter + 1;
                        read_addr <= read_addr + 4;
                        axi_arvalid <= 1'b1;
                        state <= READ_BLOCK;
                    end
                end

                START_HASH: begin
                    hash_start <= 1'b1;
                    state <= WRITING;
                    word_counter <= 3'b000;
                    write_addr <= WRITE_ADDR;
                end

                // In the WRITING state, we'll assert BREADY along with AWVALID/WVALID
                WRITING: begin
                    hash_start <= 1'b0;
                    
                    if (hash_done) begin
                        final_hash <= hash_out;
                        case (word_counter)
                            3'b000: current_word <= hash_out[255:224];
                            3'b001: current_word <= hash_out[223:192];
                            3'b010: current_word <= hash_out[191:160];
                            3'b011: current_word <= hash_out[159:128];
                            3'b100: current_word <= hash_out[127:96];
                            3'b101: current_word <= hash_out[95:64];
                            3'b110: current_word <= hash_out[63:32];
                            3'b111: current_word <= hash_out[31:0];
                        endcase
                        axi_awvalid <= 1'b1;
                        axi_wvalid <= 1'b1;
                        axi_bready <= 1'b1;  // Assert BREADY here
                        state <= WAIT_WRITE;
                    end
                end
                
                WAIT_WRITE: begin
                    if (M_AXI_AWREADY && M_AXI_AWVALID) begin
                        axi_awvalid <= 1'b0;
                    end
                
                    if (M_AXI_WREADY && M_AXI_WVALID) begin
                        axi_wvalid <= 1'b0;
                        state <= RESPONSE;
                        // Don't deassert axi_bready here anymore
                    end
                end
                
                RESPONSE: begin
                    if (M_AXI_BVALID && M_AXI_BREADY) begin
                        axi_bready <= 1'b0;  // Only deassert after receiving response
                        if (word_counter == 3'b111) begin
                            state <= DONE;
                            GPIO_complete <= 1'b1;
                        end else begin
                            state <= NEXT_WORD;
                        end
                    end
                end

                NEXT_WORD: begin
                    word_counter <= word_counter + 1;
                    write_addr <= write_addr + 4;
                    state <= WRITING;
                end

                DONE: begin
                    axi_awvalid <= 1'b0;
                    axi_wvalid <= 1'b0;
                    axi_bready <= 1'b0;
                    GPIO_complete <= 1'b1;
                    hash_start <= 1'b0;
                    if(GPIO_start == RESET_HASH_SIGNAL) 
                        state <= IDLE;
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule

// SHA-256 module with reset modification
module sha256 (
    input wire clk,
    input wire rst,
    input wire reset_hash,
    input wire start,
    input wire [511:0] message_block,
    output reg [255:0] hash,
    output reg done,
    output reg [31:0] hash_probe
);

    // State definitions
    localparam IDLE = 2'b00;
    localparam PROCESS = 2'b01;
    localparam FINISH = 2'b10;

    reg [1:0] state;
    reg [5:0] round_count;
    
    // Hash registers
    reg [31:0] H0, H1, H2, H3, H4, H5, H6, H7;
    reg [31:0] a, b, c, d, e, f, g, h;
    reg [31:0] T1, T2;
    wire [31:0] ch, maj, s0, s1;

    // Message schedule array
    reg [31:0] W [0:63];
    
    // K constants array
    reg [31:0] K [0:63];
    initial begin
        K[0] = 32'h428a2f98; K[1] = 32'h71374491; K[2] = 32'hb5c0fbcf; K[3] = 32'he9b5dba5;
        K[4] = 32'h3956c25b; K[5] = 32'h59f111f1; K[6] = 32'h923f82a4; K[7] = 32'hab1c5ed5;
        K[8] = 32'hd807aa98; K[9] = 32'h12835b01; K[10] = 32'h243185be; K[11] = 32'h550c7dc3;
        K[12] = 32'h72be5d74; K[13] = 32'h80deb1fe; K[14] = 32'h9bdc06a7; K[15] = 32'hc19bf174;
        K[16] = 32'he49b69c1; K[17] = 32'hefbe4786; K[18] = 32'h0fc19dc6; K[19] = 32'h240ca1cc;
        K[20] = 32'h2de92c6f; K[21] = 32'h4a7484aa; K[22] = 32'h5cb0a9dc; K[23] = 32'h76f988da;
        K[24] = 32'h983e5152; K[25] = 32'ha831c66d; K[26] = 32'hb00327c8; K[27] = 32'hbf597fc7;
        K[28] = 32'hc6e00bf3; K[29] = 32'hd5a79147; K[30] = 32'h06ca6351; K[31] = 32'h14292967;
        K[32] = 32'h27b70a85; K[33] = 32'h2e1b2138; K[34] = 32'h4d2c6dfc; K[35] = 32'h53380d13;
        K[36] = 32'h650a7354; K[37] = 32'h766a0abb; K[38] = 32'h81c2c92e; K[39] = 32'h92722c85;
        K[40] = 32'ha2bfe8a1; K[41] = 32'ha81a664b; K[42] = 32'hc24b8b70; K[43] = 32'hc76c51a3;
        K[44] = 32'hd192e819; K[45] = 32'hd6990624; K[46] = 32'hf40e3585; K[47] = 32'h106aa070;
        K[48] = 32'h19a4c116; K[49] = 32'h1e376c08; K[50] = 32'h2748774c; K[51] = 32'h34b0bcb5;
        K[52] = 32'h391c0cb3; K[53] = 32'h4ed8aa4a; K[54] = 32'h5b9cca4f; K[55] = 32'h682e6ff3;
        K[56] = 32'h748f82ee; K[57] = 32'h78a5636f; K[58] = 32'h84c87814; K[59] = 32'h8cc70208;
        K[60] = 32'h90befffa; K[61] = 32'ha4506ceb; K[62] = 32'hbef9a3f7; K[63] = 32'hc67178f2;
    end

    // SHA-256 functions
    assign ch = (e & f) ^ (~e & g);
    assign maj = (a & b) ^ (a & c) ^ (b & c);
    assign s0 = {a[1:0],a[31:2]} ^ {a[12:0],a[31:13]} ^ {a[21:0],a[31:22]};
    assign s1 = {e[5:0],e[31:6]} ^ {e[10:0],e[31:11]} ^ {e[24:0],e[31:25]};

    // Message schedule functions
    wire [31:0] sigma0, sigma1;
    assign sigma0 = {W[round_count-15][6:0],W[round_count-15][31:7]} ^ 
                    {W[round_count-15][17:0],W[round_count-15][31:18]} ^ 
                    (W[round_count-15] >> 3);
    
    assign sigma1 = {W[round_count-2][16:0],W[round_count-2][31:17]} ^ 
                    {W[round_count-2][18:0],W[round_count-2][31:19]} ^ 
                    (W[round_count-2] >> 10);

    // Next W value calculation
    wire [31:0] w_next = (round_count < 16) ? W[round_count] :
                         W[round_count-16] + sigma0 + W[round_count-7] + sigma1;

    // T1 and T2 calculation
    wire [31:0] t1_next = h + s1 + ch + K[round_count] + w_next;
    wire [31:0] t2_next = s0 + maj;

    always @(posedge clk or posedge rst) begin
        if (rst || reset_hash) begin
            state <= IDLE;
            round_count <= 0;
            done <= 0;
            hash_probe <= 0;
            
            // Initialize hash values
            H0 <= 32'h6a09e667;
            H1 <= 32'hbb67ae85;
            H2 <= 32'h3c6ef372;
            H3 <= 32'ha54ff53a;
            H4 <= 32'h510e527f;
            H5 <= 32'h9b05688c;
            H6 <= 32'h1f83d9ab;
            H7 <= 32'h5be0cd19;

            // Initialize working variables
            a <= 32'h6a09e667;
            b <= 32'hbb67ae85;
            c <= 32'h3c6ef372;
            d <= 32'ha54ff53a;
            e <= 32'h510e527f;
            f <= 32'h9b05688c;
            g <= 32'h1f83d9ab;
            h <= 32'h5be0cd19;

        end else begin
            case (state)
                IDLE: begin
                    if (start) begin
                        // Load message block into W
                        W[0] <= message_block[511:480];
                        W[1] <= message_block[479:448];
                        W[2] <= message_block[447:416];
                        W[3] <= message_block[415:384];
                        W[4] <= message_block[383:352];
                        W[5] <= message_block[351:320];
                        W[6] <= message_block[319:288];
                        W[7] <= message_block[287:256];
                        W[8] <= message_block[255:224];
                        W[9] <= message_block[223:192];
                        W[10] <= message_block[191:160];
                        W[11] <= message_block[159:128];
                        W[12] <= message_block[127:96];
                        W[13] <= message_block[95:64];
                        W[14] <= message_block[63:32];
                        W[15] <= message_block[31:0];
                        
                        // Reset working variables
                        a <= H0;
                        b <= H1;
                        c <= H2;
                        d <= H3;
                        e <= H4;
                        f <= H5;
                        g <= H6;
                        h <= H7;
                        
                        state <= PROCESS;
                        round_count <= 0;
                        done <= 0;
                    end
                end 

                PROCESS: begin
                    // Update message schedule
                    if (round_count >= 16) begin
                        W[round_count] <= w_next;
                    end

                    // Store T1 and T2
                    T1 <= t1_next;
                    T2 <= t2_next;

                    // Update working variables
                    h <= g;
                    g <= f;
                    f <= e;
                    e <= d + t1_next;
                    d <= c;
                    c <= b;
                    b <= a;
                    a <= t1_next + t2_next;

                    if (round_count == 63)
                        state <= FINISH;
                    else
                        round_count <= round_count + 1;
                end

                FINISH: begin
                    // Update hash values
                    H0 <= H0 + a;
                    H1 <= H1 + b;
                    H2 <= H2 + c;
                    H3 <= H3 + d;
                    H4 <= H4 + e;
                    H5 <= H5 + f;
                    H6 <= H6 + g;
                    H7 <= H7 + h;
                    
                    // Output final hash
                    hash <= {H0 + a, H1 + b, H2 + c, H3 + d,
                            H4 + e, H5 + f, H6 + g, H7 + h};
                    done <= 1;
                    hash_probe <= H0 + a;
                    state <= IDLE;
                end
            endcase
        end
    end

endmodule