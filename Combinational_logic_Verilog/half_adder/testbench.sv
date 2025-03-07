module test_Half_Adder;
  
  reg in1,in2;
  wire sum,carry;
  
  Half_Adder uut (
    .in1(in1),
    .in2(in2),
    .sum(sum),
    .carry(carry));
  
  initial
    begin
  
  in1 = 1;
  in2 = 1;
  #100;
      
      $display("Sum is : %b \nCarry is : %b",sum,carry);
      
    end
endmodule
  
  
  