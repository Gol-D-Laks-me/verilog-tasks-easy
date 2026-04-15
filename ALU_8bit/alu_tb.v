module alu_tb;

    reg [7:0] a,b;
    wire [7:0] out;
    reg [3:0] sel;
    wire carry;

    alu_8bit inst1(
    .A(a),
    .B(b),
    .sel(sel),
    .out(out),
    .carry(carry)
);

    initial 
        begin
            a = 8'd10; b = 8'd5; sel = 4'b0000; #10;
            a = 8'd10; b = 8'd5; sel = 4'b0001; #10;
            a = 8'd10; b = 8'd5; sel = 4'b0010; #10;
            a = 8'd10; b = 8'd5; sel = 4'b0011; #10;
            a = 8'd10; b = 8'd5; sel = 4'b0100; #10;
            a = 8'd10; b = 8'd5; sel = 4'b0101; #10;
            a = 8'd10; b = 8'd5; sel = 4'b0110; #10;
            a = 8'd10; b = 8'd5; sel = 4'b0111; #10;
        $finish;

        end
    initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);
end

endmodule