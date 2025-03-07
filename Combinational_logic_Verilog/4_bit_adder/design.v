module adder_4bit(out,in1,in2);

input [0:3] in1,in2;
output reg [0:4] out;

always @ (*)
begin
  out<=in1+in2;
end

endmodule