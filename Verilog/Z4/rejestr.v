`timescale 1ns / 1ps

module rejestr(
    input clk,
    input sw1,
    input [7:0] in,
    output reg [7:0] out
  );

  integer i;
  initial
  begin
    for (i=0;i<8;i=i+1)
      out[i]=1'b0;
  end

  always@ (posedge clk)
  begin
    if(sw1 == 1'b0)
      out = ~out;
    else
      out = in;
  end

endmodule
