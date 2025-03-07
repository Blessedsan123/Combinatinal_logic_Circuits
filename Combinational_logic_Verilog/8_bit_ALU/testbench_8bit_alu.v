// Code your testbench here

module test;
  reg [0:7] in1,in2;
  reg [0:2] op;
  reg en;
  wire [0:8] out;
  
  Alu8bit a1(out,in1,in2,op,en);
  
  initial
    begin
      en = 1'b1;
      in1 = 8;
      in2 = 5;
      op = 3'b000;
      #10;
      $display("output is : %d",out);
    end
endmodule
