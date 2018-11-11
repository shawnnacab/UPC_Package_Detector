module segmentsevendisplayHEX0(SW0, HEX0); //displays on HEX0 only
	
	input [3:0] SW0;			// HEX0 takes input from SW0-SW3
	output [0:6] HEX0;		//HEX0 outputs a 7-bit number
	
segment7 digit0 (SW0, HEX0); 	

endmodule //segmentsevendisplayHEX0