// Code your design here
module demux(s1,s2,y,d0,d1,d2,d3);
  input y,s1,s2;
  output reg d0,d1,d2,d3;
  always @ (s1, s2)
    begin
  if (~s1 && ~s2)
    begin
    d0 <= y;
      {d1,d2,d3} <= 0;
    end
  if (~s1 && s2)
    begin
    d1 <= y;
      {d0,d2,d3} <= 0;
    end
  if (s1 && ~s2)
    begin
    d2 <= y;
      {d0,d1,d3} <= 0;
    end
  if (s1 && s2)
    begin
    d3 <= y;
      {d1,d2,d0} <= 0;
    end
    end
endmodule
  