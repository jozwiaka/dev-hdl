`timescale 1ns / 1ps

module ukladIteracyjny(
    input [7:0] we,
    output reg wy //active 0
  );
  integer i;
  reg [2:0] sekwencja;
  initial
  begin
    sekwencja = 3'b100;
    wy = 1'b1;
  end

  always@ (we or wy or sekwencja)
  begin
    for (i=0;i<6;i=i+1)
      if (wy==1'b1)
        if(we[i+2] == sekwencja[2] &&
            we[i+1] == sekwencja[1] &&
            we[i] == sekwencja[0])
          wy = 1'b0;
        else
          wy = 1'b1;
  end
endmodule
