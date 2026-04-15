module mux2_tb;

        reg a,b,s; 
        wire y;

        mux2 ins1(.a(a),
                    .b(b),
                    .s(s),
                    .y(y));


initial
    begin 
        s = 1'b0; a = 1'b0; b = 1'b1; #10;
        s = 1'b0; a = 1'b1; b = 1'b0; #10;
        s = 1'b1; a = 1'b0; b = 1'b1; #10;
        s = 1'b1; a = 1'b1; b = 1'b0; #10;
    end
initial begin
$dumpfile("mux2.vcd");
$dumpvars(0, mux2_tb);
end

endmodule