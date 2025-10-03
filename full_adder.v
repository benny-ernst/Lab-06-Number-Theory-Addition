module full_adder(
    input A_lsb, A_msb, B_lsb, B_msb,
    output sum_lsb, sum_msb, carryout
);

    assign sum_lsb = A_lsb ^ B_lsb;
    assign sum_msb = A_msb ^ B_msb ^ (A_lsb & B_lsb);
    assign carryout = (A_msb & B_msb) | (B_msb & (A_lsb & B_lsb)) | (A_msb & (A_lsb & B_lsb));

endmodule