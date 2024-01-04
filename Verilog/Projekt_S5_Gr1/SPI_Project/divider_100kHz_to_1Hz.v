`timescale 1ns / 1ps

module divider_100kHz_to_1Hz(
    input clk_in,
    output reg clk_out
  );
  reg[15:0] counter;
  parameter divisor = 16'd25000; //1100 0011 0101 0000

  initial
  begin
    counter = 0;
    clk_out = 0;
  end
  always @(posedge clk_in)
  begin
    if (counter == divisor)
    begin
      counter = 0;
      clk_out = ~clk_out;
    end
    else
      counter = counter + 1;
  end
endmodule
