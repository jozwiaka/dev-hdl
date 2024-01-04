`timescale 1ns / 1ps

//CPOL = Clock Polarity = 0
//CPHA = Clock Phase = 0

module register(
    input clkSeq,
    input b0,
    input [7:0] in_data,
    input MISO,
    input CS,
    output reg [7:0] RM,
    output reg MOSI
  );

  initial
  begin
    RM = 0;
    MOSI = 1'bz;
  end

  always @(CS)
  begin
    if(CS)
    begin
      MOSI = 1'bz;
    end
  end

  always @(posedge clkSeq)
  begin
    MOSI = RM[0];
  end

  always @(negedge clkSeq or negedge b0)
  begin
    if(!b0)
    begin
      RM = in_data;
    end
    else
    begin
      RM[0] = RM[1];
      RM[1] = RM[2];
      RM[2] = RM[3];
      RM[3] = RM[4];
      RM[4] = RM[5];
      RM[5] = RM[6];
      RM[6] = RM[7];
      RM[7] = MISO;
    end
  end

endmodule
