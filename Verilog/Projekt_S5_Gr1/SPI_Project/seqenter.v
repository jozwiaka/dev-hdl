`timescale 1ns / 1ps

//CPOL = Clock Polarity = 0
//CPHA = Clock Phase = 0

module sequenter(
    input b0,
    input clk,
    output reg CS,
    output reg clkSeq
  );

  reg [4:0] counter;

  initial
  begin
    CS = 1'b1;
    clkSeq = 1'b0;
    counter = 18;
  end

  always @(posedge clk or negedge b0)
  begin
    if(!b0)
    begin
      counter = 0;
    end
    else
    begin
      if(counter == 18)
      begin
        clkSeq = 1'b0;
        CS = 1'b1;
      end
      else
      begin
        if(counter >= 1)
        begin
          if(!counter[0])
            clkSeq = 1; //even counter number
          else
            clkSeq = 0; //odd counter number
        end
        counter = counter + 1;
        CS = 1'b0;
      end
    end
  end
endmodule
