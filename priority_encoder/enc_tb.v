module enc_tb();

reg [7:0] a;
wire [2:0] y;
wire valid;

enc ins(.a(a), .y(y), .valid(valid));

initial begin
    a = 8'b10101000; #10;
    a = 8'b00101000; #10;
    a = 8'b00010000; #10;
    a = 8'b10000000; #10;
    a = 8'b10000001; #10;
    a = 8'b00101100; #10;
    a = 8'b11111111; #10;
    a = 8'b00000000; #10;
    
    $finish;
end

initial begin
    $monitor("t = %0t, a = %b, valid = %b, y = %b", $time, a,valid,y);
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, enc_tb);
end



endmodule