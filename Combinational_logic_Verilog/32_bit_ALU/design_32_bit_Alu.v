// 32bit ALu (Arithmatic & Logical Unit)
//Design code

module Alu32bit(out,in1,in2,op,en);
  
  input [0:31] in1,in2;
  input [0:4] op;
  input en;
  output reg [0:32] out;
  
  always @ (en,in1,in2,op)
    begin
    if(!en)
      out<=32'bx;
    else
      begin
      case(op)
        5'b00000 : out<=in1+in2;//adder
        5'b00001 : out<=in1-in2;//subtracter
        5'b00010 : out<=in1+1;//increment1
        5'b00100 : out<=in1-1;//decrement1
        5'b01000 : out<=in1&in2;//andop
        5'b00011 : out<=in1|in2;//orop
        5'b11000 : out<=in1^in2;//exorop
        5'b00110 : out<=!in2;//notop
        5'b00101 : out<=(in2==0)?32'hx : in1/in2;//divide
        5'b01010 : out<=in1>>>2;//leftshift
      endcase    
    end
    end
      
endmodule