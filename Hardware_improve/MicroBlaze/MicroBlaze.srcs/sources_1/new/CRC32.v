// SHA-256 module 
module sha256 (
    input wire clk,
    input wire reset,
    input wire [1:0] hash_size,
    input wire [511:0] message_block,
    output reg [255:0] hash,
    output reg done,
    output reg hash_started
);

    // State definitions
    localparam IDLE = 2'b00;
    localparam PROCESS = 2'b01;
    localparam FINISH = 2'b10;
    
    localparam SIGNLEHASH = 2'b01;
    localparam LARGEHASH = 2'b10;

    reg [1:0] state;
    reg [5:0] round_count;
    
    // Hash registers
    reg [31:0] H0, H1, H2, H3, H4, H5, H6, H7;
    reg [31:0] a, b, c, d, e, f, g, h;
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

    always @(posedge clk or posedge reset) begin   
        if (reset) begin
            hash_started <= 0;
            state <= IDLE;
            round_count <= 0;
            done <= 0;
            
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
                case (hash_size)
                    SIGNLEHASH: begin
                        hash_started <= 1;
                        round_count <= 0;
                        done <= 0;
                        
                        // Initialize hash values
                        H0 <= 32'h6a09e667;
                        H1 <= 32'hbb67ae85;
                        H2 <= 32'h3c6ef372;
                        H3 <= 32'ha54ff53a;
                        H4 <= 32'h510e527f;
                        H5 <= 32'h9b05688c;
                        H6 <= 32'h1f83d9ab;
                        H7 <= 32'h5be0cd19;
                    end
                    LARGEHASH: begin
                        hash_started <= 1;
                        round_count <= 0;
                        done <= 0;
                        
                        a <= H0;
                        b <= H1;
                        c <= H2;
                        d <= H3;
                        e <= H4;
                        f <= H5;
                        g <= H6;
                        h <= H7;
                    end
                endcase
                
                    if (hash_started && hash_size == 2'b00) begin
                        hash_started <= 0;

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
                    hash_started <= 0;
                    // Update message schedule
                    if (round_count >= 16) begin
                        W[round_count] <= w_next;
                    end
                    
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
                    state <= IDLE;
                end
            endcase
        end
    end

endmodule