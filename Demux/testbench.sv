// Code your testbench here
// or browse Examples
module t_demux;
  reg y, s1, s2;
  wire d0,d1,d2,d3;
  demux dm(s1,s2,y,d0,d1,d2,d3);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #1000
    $finish;
  end
  initial begin
    s1=1'b0;
    s2=1'b0;
    y=1'b1;
    
    #100
    
    s1=1'b0;
    s2=1'b1;
    y=1'b1;
    #100
    
    s1=1'b1;
    s2=1'b0;
    y=1'b1;
    #100
    
    s1=1'b1;
    s2=1'b1;
    y=1'b1;
  end
endmodule