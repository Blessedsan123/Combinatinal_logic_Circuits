// Code your design here
// 8bit ALu (Arithmatic & Logical Unit)
//Design code

module Alu8bit(out,in1,in2,op,en);
  
  input [0:7] in1,in2;
  input [0:2] op;
  input en;
  output reg [0:8] out;
  
  always @ (en,in1,in2,op)
    begin
    if(!en)
      out<=8'bx;
    else
      begin
      case(op)
        3'b000 : out<=in1+in2;//adder
        3'b001 : out<=in1-in2;//subtracter
        3'b010 : out<=in1+1;//increment1
        3'b011 : out<=in1-1;//decrement1
        3'b100 : out<=in1&in2;//andop
        3'b101 : out<=in1|in2;//orop
        3'b110 : out<=in1^in2;//exorop
        3'b111 : out<=!in2;//notop
      endcase    
    end
    end
      
endmodule