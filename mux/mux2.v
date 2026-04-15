module mux2(input a, b, s, 
            output reg y);

        always @(*)
        begin
            if(s == 1'b0)
                y = a;
            else
                y = b; 
        end
endmodule