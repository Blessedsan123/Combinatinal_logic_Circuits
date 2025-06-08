`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2025 07:22:32 PM
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test;
reg [2:0] a;
reg [2:0] b;
wire [2:0] s;
wire c;

ripple_carry_adder dut (
.in1(a),
.in2(b),
.sum(s),
.carry(c)
);

initial
begin
a = 3'b001; b = 3'b101; #2; $display("Sum is  : %b , Carry is : %b",s,c);#2;
a = 3'b011; b = 3'b001; #2; $display("Sum is  : %b , Carry is : %b",s,c);#2;
a = 3'b101; b = 3'b100; #2; $display("Sum is  : %b , Carry is : %b",s,c);#2;
a = 3'b011; b = 3'b110; #2; $display("Sum is  : %b , Carry is : %b",s,c);#2;

end
endmodule
