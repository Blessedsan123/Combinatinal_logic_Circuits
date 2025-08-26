`timescale 1ns / 1ps

module parity_generator(
input [3:0] data,
output [2:0] parity_out
);

assign parity_out[0] = data[0]^data[1]^data[3];
assign parity_out[1] = data[0]^data[2]^data[3];
assign parity_out[2] = data[1]^data[2]^data[3];
endmodule
