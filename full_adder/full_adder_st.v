module full_adder_st(s,c,a,b,cin);
input a, b, cin;
output s, c;
wire n1, n2, n3;

  half_adder HA_1(.a(a),.b(b),.s(n1),.c(n2));//It produces a "partial sum" (n1) and a "partial carry" (n2).//
  half_adder HA_2(.a(n1),.b(cin),.s(s),.c(n3));//It takes the partial sum (n1) and adds the incoming cin.//It also produces its own carry signal (n3).//
  or or_1(c,n2,n3);//If either the first addition produced a carry (n2) OR the second addition produced a carry (n3), the final carry-out c is set to 1.//

endmodule
