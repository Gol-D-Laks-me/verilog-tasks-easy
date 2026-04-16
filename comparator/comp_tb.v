module comp_tb();

    reg [3:0] a,b;
    wire lt,gt,eq;

    comp in1 (.a(a), .b(b), .lt(lt), .eq(eq), .gt(gt));

    initial begin
        a = 0;
        b = 0;
        #1;
        a = 4'b0101; b = 4'b0011; #10;
        a = 4'b0001; b = 4'b0001; #10;
        a = 4'b0101; b = 4'b0101; #10;
        a = 4'b1101; b = 4'b0111; #10;
        a = 4'b0100; b = 4'b1011; #10;
        $finish;
    end
    initial begin
        #1;
            $monitor("t = %0t, a = %b, b = %b, a>b = %b, a=b = %b, a<b = %b",$time, a, b, gt, eq, lt);

    end    

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, comp_tb);
    end

endmodule