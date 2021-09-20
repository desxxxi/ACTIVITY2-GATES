module des1 (a,b,c,d,e);
  input a,b,c,d;
  output e;
  wire ab;
  wire f;
  wire g; 
  
and (ab,a,b);
  nor (f,c,d);
    and (g,ab,f);
    nand (e,ab,g);
  
endmodule

module des1_tb();
  
  reg a,b,c,d;
  wire e;
  
  
  des1 a1(a,b,c,d,e);
  
  initial begin
    
    $monitor("value of a=%b, b=%b,c=%b,d=%b,e=%b");
    
    a=0; b=0; c=0; d=0;
    #50 a=0; b=0; c=0; d=0;
    #50 a=1; b=0; c=0; d=0;
    #50 a=0; b=1; c=0; d=0;
    #50 a=0; b=0; c=1; d=0;
    #50 a=0; b=0; c=0; d=1;
    #50 a=1; b=1; c=0; d=0;
    #50 a=0; b=1; c=1; d=0;
    #50 a=0; b=0; c=1; d=1;
    #50 a=1; b=0; c=0; d=1;
    #50 a=1; b=0; c=1; d=0;
    #50 a=1; b=1; c=1; d=0;
    #50 a=0; b=1; c=1; d=1;
    #50 a=1; b=1; c=0; d=1;
    #50 a=1; b=0; c=1; d=1;
    #50 a=1; b=1; c=1; d=1;
    
  end
endmodule
