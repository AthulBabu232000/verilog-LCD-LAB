module countertb;
  reg clk;
  wire q;
  acounter c1(clk ,q);
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
    #1500
    $finish;
  end
  
  initial begin
    clk = 1'b0;
  end
    always #10 clk = ~clk;
endmodule