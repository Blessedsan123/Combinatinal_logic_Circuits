module decoder_2_4(out,in,en);
input [0:1] in;
input en;
output reg [0:3] out;

always @(in|en)
begin
  if(en==1)
  begin
    case(in)
    2'b00 : out <= 4'b0010;
    2'b01 : out <= 4'b0110;
    2'b10 : out <= 4'b0111;
    2'b11 : out <= 4'b1010;
    default : out <= 4'bxxxx;
    endcase
  end
  else
  $display("turn on the enable pin !");
end
endmodule