module des3 (a,b,c,x);
  input a,b,c;
  output x;
  wire d;
  wire e;
   
  
xor  (d,a,b);
  xnor (e,b,c);
    and (x,d,e,c);
   
  
endmodule

module des3_tb();
  
  reg a,b,c;
  wire x;
  
  
  des3 a1(a,b,c,x);
  
  initial begin
    
    $monitor("value of a=%b, b=%b,c=%b, x=%b");
    
     a=0; b=0; c=0; 
    #15 a=1; b=0; c=0; 
    #15 a=0; b=1; c=0;
    #15 a=0; b=0; c=1;
    #50 a=1; b=1; c=0; 
    #50 a=0; b=1; c=1; 
    #50 a=1; b=0; c=1; 
    #50 a=1; b=1; c=1; 
        
  end
endmodule

