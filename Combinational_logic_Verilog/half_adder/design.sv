module Half_Adder(sum,carry,in1,in2);
  
  input in1,in2;
  output sum,carry;
  
  xor(sum,in1,in2);
  and(carry,in1,in2);
  
endmodule
