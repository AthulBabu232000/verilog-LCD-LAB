module mux(a,b,c,d,s1,s2,y);
  input a,b,c,d,s1,s2;
  output reg y;
  always @ (s1,s2)
    begin
  if (~s1 && ~s2)
     y <= a;
  if (~s1 && s2)
     y <= b;
  if (s1 && ~s2)
    y <= c;
  if (s1 && s2)
    y <= d;
    end
endmodule