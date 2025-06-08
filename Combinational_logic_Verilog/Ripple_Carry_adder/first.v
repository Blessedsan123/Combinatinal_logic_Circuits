`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2025 06:53:13 PM
// Design Name: 
// Module Name: first
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


module half_adder(
input in1,
input in2,
output sum,
output carry
);

assign sum = in1 ^ in2;
assign carry = in1 & in2;

endmodule

module full_adder(
input in1,
input in2,
input in3,
output sum,
output carry
);

wire s1,c1,c2;

half_adder hf1(in1,in2,s1,c1);
half_adder hf2(in3,s1,sum,c2);
assign carry = c1 | c2;

endmodule

module ripple_carry_adder(
input [2:0] in1,
input [2:0] in2,
output [2:0] sum,
output carry
);

wire [2:0] carry_in;

full_adder fa1(in1[0],in2[0],1'b0,sum[0],carry_in[0]);
full_adder fa2(in1[1],in2[1],carry_in[0],sum[1],carry_in[1]);
full_adder fa3(in1[2],in2[2],carry_in[1],sum[2],carry_in[2]);

assign carry = carry_in[2];

endmodule

