`timescale 1ns / 1ps

module hamming_encoder(
input [3:0] data_in,
output reg [6:0] data_encoded_out
);
wire [2:0] parity_in;

parity_generator pg(
.data(data_in),
.parity_out(parity_in)
);

reg [7:1] t_data;
integer i ;

always @ (*)
begin
for(i = 0 ; i<3; i = i+1)
begin
t_data[2**i]  = parity_in[i];
end 
t_data[3] = data_in[0];
t_data[5] = data_in[1];
t_data[6] = data_in[2];
t_data[7] = data_in[3];

data_encoded_out = {t_data[7],t_data[6],t_data[5],t_data[4],t_data[3],t_data[2],t_data[1]};
end

endmodule
