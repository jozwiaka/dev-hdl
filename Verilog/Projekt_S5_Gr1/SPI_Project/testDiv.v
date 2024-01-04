`timescale 1us / 1ps

module testDiv;

  // Inputs
  reg clk_in;

  // Outputs
  wire clk_out;

  // Instantiate the Unit Under Test (UUT)
  divider_100kHz_to_1Hz uut (
                          .clk_in(clk_in),
                          .clk_out(clk_out)
                        );

  initial
  begin
	
  end
  
  always
  begin
  #5;
  clk_in = 0;
  #5;
  clk_in = 1;
  end
endmodule

