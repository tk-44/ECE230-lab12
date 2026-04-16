module top (
    input [0:0] sw,     
    input btnC,         
    input btnU,         
    output [9:0] led   
);

    one_hot oh_inst (
        .w(sw[0]),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .states(led[6:2])
    );

    binary bin_inst (
        .w(sw[0]),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .state_bits(led[9:7])
    );

endmodule
