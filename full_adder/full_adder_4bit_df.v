module full_adder_4bit_df(s,c,a,b,cin);//input//
input [3:0]a, b;
input cin;
output [3:0]s;
output c;

  assign {c,s} = a + b + cin;//concatenation//

endmodule
