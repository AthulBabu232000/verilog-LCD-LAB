module acounter( clk, q );
input clk;
output reg[3:0]q;
wire clk;

initial begin
    q = 4'b0;
end

 always @( negedge clk )
    q[0] <= ~q[0];

  always @( negedge q[0] )
    q[1] <= ~q[1];

  always @( negedge q[1] )
    q[2] <= ~q[2];

  always @( negedge q[2] )
    q[3] <= ~q[3];

endmodule