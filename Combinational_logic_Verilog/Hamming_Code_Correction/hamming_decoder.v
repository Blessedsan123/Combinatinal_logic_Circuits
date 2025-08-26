`timescale 1ns / 1ps

module hamming_decoder(
input [6:0] data_in,
output reg [6:0] data_out,
output reg success
);

reg [2:0] position;
reg [6:0] correct_data;
reg [6:0] copy_data;
wire c1 = data_in[3]^data_in[4]^data_in[5]^data_in[6];
wire c2 = data_in[1]^data_in[2]^data_in[5]^data_in[6];
wire c3 = data_in[0]^data_in[2]^data_in[4]^data_in[6];

always @(*)
begin
position = {c1,c2,c3};
copy_data = data_in;

if(position == 3'b000)
begin
$display("No error found");
data_out = data_in; 
success = 1'b1;
end

else if(position != 3'b000) begin
$display("Error found");
success = 1'b0;
copy_data[position] = ~copy_data[position];
data_out = copy_data;
end
end

endmodule
