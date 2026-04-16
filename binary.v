module binary (
    input w,
    input clk,
    input reset,
    output z,
    output [2:0] state_bits
);
    wire [2:0] next;
    wire [2:0] curr;

    assign state_bits = curr;
    assign z = (curr == 3'b010) | (curr == 3'b100); 

    // Next State Equations
    assign next[0] = (~w & (curr == 3'b000 || curr >= 3'b011)) | 
                     (w  & (curr <= 3'b010)); 
    assign next[1] = (~w & (curr == 3'b001 || curr == 3'b010)) | 
                     (w  & (curr <= 3'b010)); 
    assign next[2] = (w  & (curr == 3'b011 || curr == 3'b100));

    dff b0 (.Default(1'b0), .D(next[0]), .clk(clk), .reset(reset), .Q(curr[0]));
    dff b1 (.Default(1'b0), .D(next[1]), .clk(clk), .reset(reset), .Q(curr[1]));
    dff b2 (.Default(1'b0), .D(next[2]), .clk(clk), .reset(reset), .Q(curr[2]));
endmodule
