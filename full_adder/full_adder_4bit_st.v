module full_adder_4bit_st(s,c,a,b,cin);
input [3:0]a, b;
input cin;
output [3:0]s;
output c;
wire n1, n2, n3; // Internal carry wires

  full_adder_st fa_0(.a(a[0]),.b(b[0]),.cin(cin),.s(s[0]),.c(c[0]));//stage 0 a[0]+b[0] in s[0] and c[0] carry goes to cin and it propogates//
full_adder_st fa_1(.a(a[1]),.b(b[1]),.cin(n1),.s(s[1]),.c(c[1]));
full_adder_st fa_2(.a(a[2]),.b(b[2]),.cin(n2),.s(s[2]),.c(c[2]));
full_adder_st fa_3(.a(a[3]),.b(b[3]),.cin(n3),.s(s[3]),.c(c[3]));

endmodule
//or a 4-bit number, the carry has to "ripple" from the least significant bit (LSB) to the most significant bit (MSB).
//
