// Code your testbench here

module test;
  reg [0:31] in1,in2;
  reg [0:4] op;
  reg en;
  wire [0:32] out;
  
  Alu32bit a1(out,in1,in2,op,en);
  
  initial
    begin
      en = 1'b1;
      in1 = 30;
      in2 = 5;
      op = 5'b00100;
      #10;
      $display("output is : %d",out);
    end
endmodule
