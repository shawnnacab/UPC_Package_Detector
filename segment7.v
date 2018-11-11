module segment7(bcd, leds); //driver code

	input[3:0] bcd;
	output reg[1:7] leds;
	
	always @(bcd) //always blocks execute always,
	// The case statement will execute whenever bcd changes
	
	case(bcd) // ABCDEFG
	0: leds = 7'b0000001;
	1: leds = 7'b1001111;
	2: leds = 7'b0010010;
	3: leds = 7'b0000110;
	4: leds = 7'b1001100;
	5: leds = 7'b0100100;
	6: leds = 7'b0100000;
	7: leds = 7'b0001111;
	8: leds = 7'b0000000;
	9: leds = 7'b0000100;
	default: leds = 7'bx;
	endcase

endmodule //segment7
	