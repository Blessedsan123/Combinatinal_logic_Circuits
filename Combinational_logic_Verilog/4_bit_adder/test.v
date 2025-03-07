`include "design.v"

module test();
reg [0:3] in1,in2;
wire [0:4] out;

adder_4bit adder(out,in1,in2);

initial
begin
$dumpfile("wave.vcd");
$dumpvars(0,test);

  in1 = 4'b0010;
  in2 = 4'b1100;
  #10;
  $display("output is : %d",out);
end

endmodule