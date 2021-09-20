module des4 (x,y,z,m);
  input x,y,z;
  output m;
  wire d;
  wire e;
   
  
and (d,x,z);
and (e,y,z);
or (m,d,e);
   
  
endmodule

module des4_tb();
  
  reg x,y,z;
  wire m;
  
  
  des4 a1(x,y,z,m);
  
  initial begin
    
    $monitor("value of x=%b, y=%b,z=%b, m=%b");
    x=0; y=0; z=0;
    #1 x=1; y=0; z=0; 
    #1 x=0; y=1; z=0;
    #1 x=0; y=0; z=1;
    #1 x=1; y=1; z=0; 
    #1 x=0; y=1; z=1; 
    #1 x=1; y=0; z=1; 
    #1 x=1; y=1; z=1; 
        
  end
endmodule


