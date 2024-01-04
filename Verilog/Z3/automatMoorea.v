`timescale 1ns / 1ps

module automatMoorea(
    input clk,
    input in,
    input r,
    output reg out,
	 output reg [2:0] current  );

  reg [2:0] next;

  initial
  begin
    current = 3'b000;
  end

  //UK1 - funkcja wzbudzen
  always @(current or in)
  begin
    case(current)
      3'b000:
        if(in == 1'b0)
          next = 3'b000;
        else
          next = 3'b001;
      3'b001:
        if(in == 1'b0)
          next = 3'b010;
        else
          next = 3'b001;
      3'b010:
        if(in == 1'b0)
          next = 3'b011;
        else
          next = 3'b001;
      3'b011:
        if(in == 1'b0)
          next = 3'b100;
        else
          next = 3'b001;
      3'b100:
        if(in == 1'b0)
          next = 3'b101;
        else
          next = 3'b001;
      3'b101:
        if(in == 1'b0)
          next = 3'b110;
        else
          next = 3'b001;

      3'b110:
        if(in == 1'b0)
          next = 3'b000;
        else
          next = 3'b001;
      default :
        next = 3'b000;
    endcase
  end

  //US - Pamiec
  always @(posedge clk or negedge r)
  begin
    if (r == 1'b0)
      current = 3'b000;
    else
      current = next;
  end

  //UK2 - Wyjciowy
  always @(current)
  begin
    if (current == 3'b110)
      out = 1;
    else
      out = 0;
  end
endmodule
