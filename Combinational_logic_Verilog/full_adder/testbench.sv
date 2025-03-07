module test_Full_Adder;
  
  reg in1,in2,in3;
  wire sum,carry;
  
  Full_Adder uut(
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .sum(sum),
    .carry(carry));
  
  initial
    begin

      in1 = 1;
      in2 = 1;
      in3 = 1;
      #100;
      
      $display("Sum is: %b \nCarry is : %b",sum,carry);
      
    end
endmodule
               
