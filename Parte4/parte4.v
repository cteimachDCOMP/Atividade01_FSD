module parte4 (o,i);

	input [1:0] i;    
    output reg [6:0] o;


	assign o = (i == 2'b00) ? 7'b0111111 : // 'O' 
                (i == 2'b01) ? 7'b0111000 : // 'L'
                (i == 2'b10) ? 7'b1110111 : // 'A'
                7'b0000000;  // dont care

endmodule



