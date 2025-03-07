module mux_2_1(out,in1,in2,sel);
input in1,in2,sel;
output reg out;

always @ (sel|in1,in2)
begin
  case(sel)
  1'b0 : out <= in1;
  1'b1 : out <= in2;
  endcase
end

endmodule