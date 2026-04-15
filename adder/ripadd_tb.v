module ripadd_tb;

reg [3:0] a, b;
reg cin;
wire [4:0] sum;

ripadd ins1(.a(a), .b(b), .cin(cin), .sum(sum));

initial begin
    a=0;  b=0;  cin=0; #10;
    a=1;  b=1;  cin=0; #10;
    a=7;  b=8;  cin=0; #10;
    a=3;  b=5;  cin=1; #10;
    a=10; b=9;  cin=0; #10;
    a=10; b=9;  cin=1; #10;
    a=15; b=15; cin=0; #10;
    a=15; b=15; cin=1; #10;

    $finish;
end

initial begin
    $monitor("t=%0t | a=%b b=%b cin=%b | sum=%b", $time, a, b, cin, sum);
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, ripadd_tb);
end

endmodule