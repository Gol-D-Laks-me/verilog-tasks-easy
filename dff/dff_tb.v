module dff_tb();

reg d,clk,reset;
wire q;

dff ins1(.d(d), .q(q), .reset(reset), .clk(clk));

initial begin
    clk = 0;
    forever begin
        #5 clk = ~clk;
    end
end

initial begin
    reset = 1; d = 0; #10;
    reset = 0; d = 1; #10;
    d = 0; #10;
    d = 1; #10;
    reset = 1; #10;
    reset = 0; #10;
    $finish;
end

initial begin
    $monitor("t=%0t clk=%b reset=%b d=%b q=%b", $time, clk, reset, d, q);
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, dff_tb);
end
endmodule