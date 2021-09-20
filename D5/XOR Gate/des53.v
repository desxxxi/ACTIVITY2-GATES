module des53 (a,b,c,d,e,f);
  input a,b;
  output c,d,e,f;

or  (c,a,b);
and (d,a,b);
not (e,a);
xor (f,e,c);
endmodule

module des53_tb;
reg a, b;
wire c, d, e, f;
des53 Instance0 (c, d, e, f, a, b);
 initial begin
      a = 0; b = 0;
   #2a = 0; b = 1; 
   #2 a = 1; b = 0;
   #2 a = 1; b = 1;
 end
 initial begin
   $monitor ("T=%t |a=%b  |b=%b  |c(or)=%b  |d(and)=%b  |e(not)=%b  |f(xor)=%b", $time, a, b, c, d, e,f);
   
 end
endmodule