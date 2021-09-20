module des52  ( a, b, sum, carry);
  input a,b;
  output sum,carry;
  
    wire r;
    // r = AB
    wire u;
    // u = B'
    wire i;
    // i = A'
    wire o;
    // o = A'B

    not (u,b);
    not (i,a);
    and (r,a,u);
    and (o,b,i);
    or (sum,o,r);
    
    and (carry,a,b);
    
endmodule
module des52_tb;

    reg a,b;
    des52 des(a, b, sum, carry);

initial begin

    $monitor ("time=%d:%b   %b  SUM = %b\n",$time,a,b,sum,carry);
  
    a = 0; b = 0;
  #3 a = 0; b = 1;
  #3 a = 1; b = 1;
  #3 a = 1; b = 0;

    $display("test complete HALF-ADDER");
end

endmodule