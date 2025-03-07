module half_adder(sum,carry,in1,in2);
  
  input in1,in2;
  output sum,carry;
  
  xor(sum,in1,in2);
  and(carry,in1,in2);
  
endmodule


module Full_Adder(sum,carry,in1,in2,in3);
  
  input in1,in2,in3;
  output sum,carry;
  wire s1,c1,c2;
  
  half_adder h1(s1,c1,in1,in2);
  half_adder h2(sum,c2,s1,in3);
  or(carry,c1,c2);
  
endmodule