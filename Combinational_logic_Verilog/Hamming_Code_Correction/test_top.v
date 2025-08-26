`timescale 1ns / 1ps

module test_top();
reg [3:0] data_in;
wire [6:0] data_encoded;
wire [6:0] data_out;
wire data_got;

hamming test(
.data_in(data_in),
.data_encoded(data_encoded),
.data_out(data_out),
.data_got(data_got)
);

initial
begin
data_in = 4'b0101;
#10;
data_in = 4'b1101;
#10;
data_in = 4'b1001;
#10;
data_in = 4'b0110;
#10;
data_in = 4'b1101;
#10;
data_in = 4'b0001;
#10;
data_in = 4'b0111;
#10 $finish;
end
endmodule
