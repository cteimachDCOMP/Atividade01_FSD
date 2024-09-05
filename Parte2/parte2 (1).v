module multiplex (m,s,x,y);
	output m;
	input s,x,y;

	assign m = (~s & x) | (s & y);
endmodule

module multiplex4bit (Z,c,X,Y);
	output [3:0] Z;
	input c;
	input [3:0] X;
	input [3:0] Y;

	multiplex m0(Z[0],c,X[0],Y[0]);
	multiplex m1(Z[1],c,X[1],Y[1]);
	multiplex m2(Z[2],c,X[2],Y[2]);
	multiplex m3(Z[3],c,X[3],Y[3]);
endmodule


