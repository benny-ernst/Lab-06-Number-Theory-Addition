module top(
    input [7:0] sw,
    output [5:0] led
);

    light light_inst(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
    );

    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
    );
    
    full_adder full_adder_inst(
        .A_lsb(sw[4]),
        .A_msb(sw[5]),
        .B_lsb(sw[6]),
        .B_msb(sw[7]),
        .sum_lsb(led[3]),
        .sum_msb(led[4]),
        .carryout(led[5])
    );

endmodule
