module encoder_4_2(out,in,en);

input [0:3] in;
input en;
output reg [0:1] out;

always @(in|en)
begin
  if(en==1)
  begin
    case(in)
    4'b0101 : out <= 2'b00;
    4'b0100 : out <= 2'b01;
    4'b0111 : out <= 2'b10;
    4'b0001 : out <= 2'b11;
    default : out <= 2'bxx;
    endcase
  end
  else
  $display("turn on the enable !");
end

endmodule