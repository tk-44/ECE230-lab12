module one_hot(
    input w,
    input clk,
    input reset,
    output z,
    output [4:0] states
    );
    
    wire [4:0] next;
    wire [4:0] curr;
    
    assign states = curr;
    assign z = curr[2] | curr[4];
    
    assign next[0] = 1'b0;
    assign next[1] = (curr[0] | curr[3] | curr[4]) & ~w;
    assign next[2] = (curr[1] | curr[2]) & ~w;
    assign next[3] = (curr[0] | curr[1] | curr[2]) & w;
    assign next[4] = (curr[3] | curr[4]) & w;

    dff fA (.Default(1'b1), .D(next[0]), .clk(clk), .reset(reset), .Q(curr[0]));
    dff fB (.Default(1'b0), .D(next[1]), .clk(clk), .reset(reset), .Q(curr[1]));
    dff fC (.Default(1'b0), .D(next[2]), .clk(clk), .reset(reset), .Q(curr[2]));
    dff fD (.Default(1'b0), .D(next[3]), .clk(clk), .reset(reset), .Q(curr[3]));
    dff fE (.Default(1'b0), .D(next[4]), .clk(clk), .reset(reset), .Q(curr[4]));
endmodule
