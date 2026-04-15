module adder(
    input reg [3:0] a,b,
    input wire cin,
    output [3:0]sum,
    output wire cout
);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | ((a ^ b)&cin);

endmodule
