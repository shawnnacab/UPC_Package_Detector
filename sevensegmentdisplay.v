module segmentsevendisplay(SW0, SW1, HEX0, HEX1); //displays on HEX0 and HEX1
	
	input [3:0] SW0;			// HEX0 takes input from SW0-SW3
	input [7:4] SW1;			//HEX1 takes input from SW4-SW7
	output [0:6] HEX0;		//HEX0 and HEX 1 output a 7-bit number
	output [0:6] HEX1;		
	
segment7 digit0 (SW0, HEX0); 	
segment7 digit1 (SW1, HEX1); 

endmodule //segmentsevendisplay