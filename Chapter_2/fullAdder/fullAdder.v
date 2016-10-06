module fullAdder (a,b,cin,sum,cout);
	//端口声明的开始
	input a,b,cin;
	output sum,cout;
	//端口声明的结束
	
	wire a,b,cin;
	wire sum,cout;
	
	assign sum=(a^b)^c;
	assign cout=cin&(a^b)|(a&b);
	
endmodule