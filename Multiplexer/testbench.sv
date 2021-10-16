module t_mux;
  reg a,b,c,d,s1,s2;
  wire y;
  mux f1(a,b,c,d,s1,s2,y);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #400
    $finish;
  end
  initial begin
    s1 = 1'b0;
    s2 = 1'b0;
    a = 1'b1;
    b = 1'b0;
    c= 1'b0;
    d= 1'b0;
    
    #100
    s1 = 1'b0;
    s2 = 1'b1;
    a = 1'b0;
    b = 1'b1;
    c= 1'b0;
    d= 1'b0;
    
    #100
    s1 = 1'b1;
    s2 = 1'b0;
    a = 1'b0;
    b = 1'b0;
    c= 1'b1;
    d= 1'b0;
    
    #100
    s1 = 1'b1;
    s2 = 1'b1;
    a = 1'b10;
    b = 1'b0;
    c= 1'b0;
    d= 1'b1;

  end
endmodule