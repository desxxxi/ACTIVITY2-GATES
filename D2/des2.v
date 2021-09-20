module des2 (i,m,r,l,e);
  input i,m,r,l;
  output e;
  wire f;
  wire g; 
  wire x; 
  
not (m,x); 
and (f,i,m);
and (g,r,l);
or (e,f,g);
  
endmodule

module des2_tb();
  
  reg i,m,r,l;
  wire e;
  
  
  des2 a1(i,m,r,l,e);
  
  initial begin
    
    $monitor("value of i=%b, m=%b,r=%b,l=%b,e=%b");
    
    i=0; m=0; r=0; l=0;
    #5 i=0; m=0; r=0; l=0;
    #5 i=0; m=1; r=0; l=0;
    #5 i=0; m=0; r=1; l=0;
    #5 i=0; m=0; r=0; l=1;
    #5 i=1; m=1; r=0; l=0;
    #5 i=0; m=1; r=1; l=0;
    #5 i=0; m=0; r=1; l=1;
    #5 i=1; m=0; r=0; l=1;
    #5 i=1; m=0; r=1; l=0;
    #5 i=1; m=1; r=1; l=0;
    #5 i=0; m=1; r=1; l=1;
    #5 i=1; m=1; r=0; l=1;
    #5 i=1; m=0; r=1; l=1;
    
  end
endmodule
