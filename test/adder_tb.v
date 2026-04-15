`timescale 1ns/1ps

module adder_tb;
  reg [3:0] a, b;
  wire [4:0] sum;

  adder dut(.a(a), .b(b), .sum(sum));

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, adder_tb);

    a = 4; b = 3;
    #10 a = 7; b = 8;
    #10 $finish;
  end
endmodule