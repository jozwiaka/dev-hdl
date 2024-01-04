`timescale 1ns / 1ps

module ukladSekwencyjny(
    input clk,
    input start_stop,
    input r, //active 0
    output reg [3:0] out
  );
  parameter min = 4'b0000;
  parameter max = 4'b1001;
  initial
  begin
    out = max;
  end

  always@ (posedge clk or negedge r)
  begin
    if(r == 1'b0)
      out = max;
    else if (start_stop == 1'b0)
    begin
      if(out == min)
        out = max;
      else
        out = out - 1;
    end
  end
endmodule
