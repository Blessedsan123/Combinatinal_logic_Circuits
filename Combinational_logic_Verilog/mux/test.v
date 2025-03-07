`include "design.v"
module test_mux();
reg in1,in2,sel;
wire out;

mux_2_1 m1(out,in1,in2,sel);

initial
begin
  in1 = 1'b0;
  in2 = 1'b1;
  sel = 1'b1;
  #10;

  $display("output is : %d",out);
end

endmodule