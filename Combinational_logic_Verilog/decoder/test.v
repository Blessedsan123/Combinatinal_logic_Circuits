`include "design.v"
module test_decoder();
reg [0:1] in;
reg en;
wire [0:3] out;

decoder_2_4 d1(out,in,en);

initial
begin
in = 2'b01;
en = 1;
#10;

$display("output is : %d",out);
end

endmodule