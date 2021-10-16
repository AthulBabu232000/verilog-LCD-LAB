module dtb;
  reg d,clk,rst;
  wire q;
  dff f1(d,rst,clk,q);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #800
    $finish;
  end
  initial begin
    d = 1'b0;
    clk = 1'b0;
    rst = 1'b1;
  end
  always #100 clk = ~clk;                
  initial begin
    #200
    d = 1'b1;
    rst = 1'b0;
    #200
    d = 1'b0;
    rst = 1'b0;
    #200
    d = 1'b1;
    rst = 1'b0;                 
  end
endmodule
               