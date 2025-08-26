`timescale 1ns / 1ps

module hamming (
input [3:0] data_in,
output [6:0] data_encoded,
output [6:0] data_out,
output data_got
);

hamming_encoder he(
.data_in(data_in),
.data_encoded_out(data_encoded)
);

hamming_decoder hd(
.data_in(data_encoded),
.data_out(data_out),
.success(data_got)
);

endmodule
