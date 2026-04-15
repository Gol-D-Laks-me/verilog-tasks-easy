module alu_8bit (
    input [7:0] A, B,
    input [3:0] sel,
    output reg [7:0] out,
    output reg carry
);

always @(A or B or sel) begin
    carry = 0;
    out = 0;
    case (sel)
        4'b0000: {carry, out} = A + B; // Addition
        4'b0001: {carry, out} = A - B; // Subtraction
        4'b0010: out = A & B; // AND
        4'b0011: out = A | B; // OR
        4'b0100: out = A ^ B; // XOR
        4'b0101: out = ~A; // NOT
        4'b0110: out = A << 1; // Logical Shift Left
        4'b0111: out = A >> 1; // Logical Shift Right
        4'b1000: out = A >>> 1; // Arithmetic Shift Right
        4'b1001: out = A; // Pass A
        4'b1010: out = B; // Pass B
        default: out = 8'b0000_0000; // Default case 
    endcase

end
endmodule