`timescale 1ns / 1ps

//CPOL = Clock Polarity = 0
//CPHA = Clock Phase = 0

module main(
    input b0,
    input [7:0] in_data, //JP1
    input clk, //JP2
    input MISO, //MISO
    output reg [7:0] RM, //diodes //JP3, JP4
    output reg CS,
    output reg clkSeq, //to simulation
    output reg MOSI
  );

  reg [4:0] counter;
  reg [7:0] RM_temp;
  reg setCS;
  reg resetCS;
  reg setInitData;
  reg moveData;

  initial
  begin
    RM = 0;
    RM_temp = 0;
    CS = 1'b1;
    MOSI = 1'bz;
    clkSeq = 1'b0;
    counter = 19;

    setCS = 0;
    resetCS = 0;

    setInitData=0;
    moveData=0;
  end

  //Sekwenter
  always @(posedge clk or negedge b0)
  begin
    if(!b0)
    begin
      counter = 0;
    end
    else
    begin
      if(counter==18)
      begin
        clkSeq = 1'b0;
        CS = 1'b1;
      end
      else
      begin
        if(counter>=1)
        begin
          if(!counter[0])
            clkSeq=1; //even counter number
          else
            clkSeq=0; //odd counter number
        end
        counter = counter + 1;
        CS=1'b0;
      end
    end
  end


  //Rejestr
  always @(negedge b0)
  begin
    RM = in_data;
  end

  always @(posedge clkSeq)
  begin
    MOSI = RM[0];
  end

  always @(negedge clkSeq)
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

endmodule
