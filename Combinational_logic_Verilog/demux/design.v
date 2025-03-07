module demux_2_1(out1,out2,in,sel);
input in,sel;
output reg out1,out2;

always @ (in|sel)
begin
  case(sel)
  1'b0 : out1 <= in;
  1'b1 : out2 <= in;
  endcase
end

endmodule