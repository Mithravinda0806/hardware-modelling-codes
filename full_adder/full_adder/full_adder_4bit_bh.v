module full_adder_4bit_bh(s,c,a,b,cin);
input [3:0]a, b;
input cin;
output reg [3:0]s;
output reg c;

always@(*)
{c,s} = a + b + cin;//concatenation 5 bit addition operation if carry is there it will store in cin and sum in s//
    
endmodule
