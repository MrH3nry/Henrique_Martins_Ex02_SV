module Questao09 ( 
	input logic clock,
	output logic [7:0] f, as, bs, cs
);

	logic [7:0] a=8'd1, b=8'd1, c=8'd1;
	
	always_ff @(posedge clock)
	begin
		a <= b + c;
		b = c + a;
		c = a + b;
	end
	
	assign as = a;
	assign bs = b;
	assign cs = c;
	assign f = c;

endmodule
