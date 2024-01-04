// Verilog test fixture created from schematic C:\dev\ULiC\Verilog\Projekt_S5_Gr1\SPI_Project\scheme.sch - Thu Jan 20 19:10:00 2022

`timescale 1us / 1ps

module scheme_scheme_sch_tb();

// Inputs
   reg clk;
   reg b0;
   reg MISO;
   reg [7:0] in_data;

// Output
   wire CS;
   wire clkSeq;
   wire MOSI;
   wire [7:0] RM;

// Bidirs

// Instantiate the UUT
   scheme UUT (
		.clk(clk), 
		.b0(b0), 
		.MISO(MISO), 
		.CS(CS), 
		.clkSeq(clkSeq), 
		.MOSI(MOSI), 
		.RM(RM), 
		.in_data(in_data)
   );
// Initialize Inputs
    initial begin
	in_data=8'b10101010;
    MISO = 1;
    b0=1;
    #1000000;
    b0=0;
    #1000000;
    b0=1;
//    //#100020;
//    #100000;
//    b0=0;
//    #10000;
//    b0=1;
	end
	
	always
	  begin
	  #5;
	  clk = 0;
	  #5;
	  clk = 1;
	  end
endmodule
