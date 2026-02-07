`timescale 1ns/100ps

module full_adder_tb;
reg [3:0]a1, b1;//Regs (a1, b1, cin): In a testbench, inputs to the DUT must be reg because they are driven inside a procedural block (initial).//
reg cin;
wire [3:0]s1;
wire c1;//Wires (s1, c1): Outputs from the DUT are wire because they are being driven by the module, not the testbench.//

  full_adder_4bit_bh DUT(.s(s1),.c(c1),.a(a1),.b(b1),.cin(cin)); DUT: //connected behavioral module (full_adder_4bit_bh) to these testbench signals.//

initial
  $monitor("time = %d \t a = %b \t b = %b \t cin = %b \t s = %b \t c = %b", $time,a1,b1,cin,s1,c1);//$monitor.it only prints to the console when one of the variables inside it changes value. //
initial begin
    a1 = 0;
    b1 = 0;
    cin = 0;
  repeat(16) begin//repeat it 16 times Cycles through all 16 possible values of input a//
        #10 a = a + 1;
    repeat(16) begin//inside loop//For every value of a, it cycles through all 16 values of b.//
            #10 b = b + 1;
      repeat(2)//repeat 2 times//
        #10 cin = ~cin; //with every delay in 10 clock gets inverted//or every a and b combo, it toggles the Carry-In (0 then 1).//
        end
    end
end

endmodule
//Full Range: Since $16 \times 16 \times 2 = 512$ combinations, you are testing every single possible state of a 4-bit adder.//
