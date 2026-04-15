module ripadd(input wire [3:0] a,b
               input wire cin,
               output [4:0] sum);

    wire w1,w2,w3;

    add1 layer1(a[0],b[0],cin,sum[0],w1);
    add1 layer2(a[1],b[1],w1,sum[1],w2);
    add1 layer3(a[2],b[2],w2,sum[2],w3);
    add1 layer4(a[3],b[3],w3,sum[3],sum[4]);

endmodule



module add1(input a,b,cin,
            output sum,carry);

    assign sum = a^b^cin;
    assign carry = a&cin | b&cin | a&b;        

endmodule
