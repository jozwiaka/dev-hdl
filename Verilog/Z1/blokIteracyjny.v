`timescale 1ns / 1ps

module blokIteracyjny(
    input ai,
    input P2we,
    input P1we,
    output reg P2wy,
    output reg P1wy
  );

  always@ (ai or P2we or P1we)
  begin
    P2wy = (~ai & P1we) | (~ai & P2we) | (P2we & P1we);
    P1wy = P2we | ai;
  end
endmodule
