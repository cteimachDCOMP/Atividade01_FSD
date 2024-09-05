module multiplex41 (o,i1,i0,a,b,c,d);
	output o;
	input i1,i0;
	input a;
	input b;
	input c;
	input d;

	assign o = (~i0 & ~i1 & a) | (~i0 & i1 & b) | (i0 & ~i1 & c) | (i0 & i1 & d);  
endmodule

module multPar (z,s,u,v,w,x);
	output [1:0]z;
	input [1:0]s;
	input [1:0]u;
	input [1:0]v;
	input [1:0]w;
	input [1:0]x;

	multiplex41 m(z[0],s[0],s[1],u[0],v[0],w[0],x[0]); 
	multiplex41 n(z[1],s[0],s[1],u[1],v[1],w[1],x[1]); 

endmodule


