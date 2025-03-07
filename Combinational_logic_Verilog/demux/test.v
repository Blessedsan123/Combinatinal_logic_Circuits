`include "design.v"
module test_demux();
reg in,sel;
wire out1,out2;

demux_2_1 d1(out1,out2,in,sel);

initial
begin
  in = 1'b1;
  sel = 1'b1;
  #10;

  $display("out1 is : %d",out1);
  #10;
  $display("out2 is : %d",out2);
end

endmodule