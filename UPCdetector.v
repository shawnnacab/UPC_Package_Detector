module UPCdetector(SW, HEX0, HEX1, HEX2, HEX3, HEX4, sale, stolen);
	
	input [3:0] SW;					//SW[3] = M; SW[2] = U; SW[1] = P, SW[0] = C;
	
	output [0:6] HEX0, HEX1, HEX2, HEX3, HEX4;

	//instantiating HEX displays
	HEX0display digit0 (SW, HEX0);
	HEX1display digit1 (SW, HEX1);
	HEX2display digit2 (SW, HEX2);
	HEX3display digit3 (SW, HEX3);
	HEX4display digit4 (SW, HEX4); 
	
	//instantiating lab 2 code

	output sale, stolen;
	
	assign sale = (SW[2]&SW[0])|SW[1];					//sale = UC + P
	assign stolen = (~SW[1]&~SW[3])&(~SW[0]|SW[2]); 		//stolen = P'M'(U+C')

endmodule //UPCdetector

module HEX0display(bcd, leds);

	input [3:0] bcd; 					// Uses 4-bit switches (4 total switches)
	output reg[1:7] leds;			// 7-segment LED display outputs

	always @(bcd) 		//always blocks execute always,
	//The case statement will execute whenever bcd changes
	case(bcd) // 0123456
	0: leds = 7'b1111111;  			//glasses
	1: leds = 7'b1100110;  			//top hat
	3: leds = 7'b0000001; 			//water bottles
	4: leds = 7'b0011100; 			//pistol
	5: leds = 7'b1110001; 			//laughing gas
	6: leds = 7'b1111111; 			//husky t-shirt
	default: leds = 7'bx;			//default item
	endcase

endmodule //HEX0display

module HEX1display(bcd, leds); 
	
	input [3:0] bcd; 					// Uses 4-bit switches (4 total switches)
	output reg[1:7] leds;			// 7-segment LED display outputs

	always @(bcd) 		//always blocks execute always,
	//The case statement will execute whenever bcd changes
	case(bcd) // 0123456
	0: leds = 7'b1111110;  			//glasses
	1: leds = 7'b0010111;  			//top hat
	3: leds = 7'b0010010; 			//water bottles
	4: leds = 7'b0011110; 			//pistol
	5: leds = 7'b0000001; 			//laughing gas
	6: leds = 7'b0000000; 			//husky t-shirt
	default: leds = 7'bx;			//default item
	endcase

endmodule //HEX1display

module HEX2display(bcd, leds);
	input [3:0] bcd; 					// Uses 4-bit switches (4 total switches)
	output reg[1:7] leds;			// 7-segment LED display outputs

	always @(bcd) 		//always blocks execute always,
	//The case statement will execute whenever bcd changes
	case(bcd) // 0123456
	0: leds = 7'b0000001;  			//glasses
	1: leds = 7'b0110101;  			//top hat
	3: leds = 7'b1001000; 			//water bottles
	4: leds = 7'b0111110; 			//pistol
	5: leds = 7'b1110001; 			//laughing gas
	6: leds = 7'b1000011; 			//husky t-shirt
	default: leds = 7'bx;			//default item
	endcase

endmodule //HEX2display

module HEX3display(bcd, leds);
	input [3:0] bcd; 					// Uses 4-bit switches (4 total switches)
	output reg[1:7] leds;			// 7-segment LED display outputs

	always @(bcd) 		//always blocks execute always,
	//The case statement will execute whenever bcd changes
	case(bcd) // 0123456
	0: leds = 7'b0000001;  			//glasses
	1: leds = 7'b1110010;  			//top hat
	3: leds = 7'b1111111; 			//water bottles
	4: leds = 7'b0100001; 			//pistol
	5: leds = 7'b1111111; 			//laughing gas
	6: leds = 7'b1100001; 			//husky t-shirt
	default: leds = 7'bx;			//default item
	endcase

endmodule //HEX3display

module HEX4display(bcd, leds);
	input [3:0] bcd; 					// Uses 4-bit switches (4 total switches)
	output reg[1:7] leds;			// 7-segment LED display outputs

	always @(bcd) 		//always blocks execute always,
	//The case statement will execute whenever bcd changes
	case(bcd) // 0123456
	0: leds = 7'b1111110;  			//glasses
	1: leds = 7'b1111111;  			//top hat
	3: leds = 7'b1111111; 			//water bottles
	4: leds = 7'b1111111; 			//pistol
	5: leds = 7'b1111111; 			//laughing gas
	6: leds = 7'b1000001; 			//husky t-shirt
	default: leds = 7'bx;			//default item
	endcase

endmodule //HEX4display

