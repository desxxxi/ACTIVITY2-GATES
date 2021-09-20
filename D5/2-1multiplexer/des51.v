module des51(input d0, d1, s, output a);

wire w1;
//w1 = d1(S)
wire w2;
//w2 = d0(S)
wire c;
//c = s' 

and (w1, d1, s);
and (w2, d0, c);
not (c, s);
or (a, w1, w2);

endmodule
module des51_tb;
wire out;
reg d0, d1, s;
des51 name(.y(out), .d0(d0), .d1(d1), .s(s));
initial
begin
d0=1'b0;
d1=1'b0;
s=1'b0;
#100 $finish;
end
always #40 d0=~d0;
always #20 d1=~d1;
always #10 s=~s;
always@(d0 or d1 or s)
$monitor("At time = %t, Output = %d", $time, out);

endmodule
