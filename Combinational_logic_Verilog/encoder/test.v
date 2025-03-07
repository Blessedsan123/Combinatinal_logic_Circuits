`include "design.v"
module test_encoder();
reg [0:3] in;
reg en;
wire [0:1] out;

encoder_4_2 e1(out,in,en);

initial
begin
in = 4'b0111;
en = 1;
#10;

$display("output is : %d",out);
end

endmodule