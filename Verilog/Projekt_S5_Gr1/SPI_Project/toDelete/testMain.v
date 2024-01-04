`timescale 1ns / 1ps

module testMain;

  // Inputs
  reg b0;
  reg [7:0] in_data;
  reg clk;
  reg MISO;

  // Outputs
  wire [7:0] RM;
  wire CS;
  wire clkSeq;
  wire MOSI;

  // Instantiate the Unit Under Test (UUT)
  main uut (
         .b0(b0),
         .in_data(in_data),
         .clk(clk),
         .MISO(MISO),
         .RM(RM),
         .CS(CS),
         .clkSeq(clkSeq),
         .MOSI(MOSI)
       );

  initial
  begin
    in_data=8'b10101010;
    MISO = 1;
    //b0=1;
    #100;
    b0=0;
    #100;
    b0=1;
    //#100020;
    #100000;
    b0=0;
    #100;
    b0=1;
  end

  always
  begin
    #20;
    clk = 0;
    #20;
    clk = 1;
  end

endmodule

