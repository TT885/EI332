module pipedereg(dbubble,drs,drt,dwreg,dm2reg,dwmem,daluc,daluimm,da,db,dimm,dsa,drn,dshift,djal,dpc4,clock,resetn,
					ebubble,ers,ert,ewreg,em2reg,ewmem,ealuc,ealuimm,ea,eb,eimm,esa,ern0,eshift,ejal,epc4);
	input dbubble, dwreg, dm2reg, dwmem, daluimm, dshift, djal, clock, resetn;
	input [3:0] daluc;
	input [31:0] dimm, da, db, dpc4, dsa;
	input [4:0] drn, drs, drt;
	output reg ebubble, ewreg, em2reg, ewmem, ealuimm, eshift, ejal;
	output reg [3:0] ealuc;
	output reg [31:0] eimm, ea, eb, epc4, esa;
	output reg [4:0] ern0, ers, ert;
	
	always@(negedge resetn or posedge clock)
	begin
		if(resetn == 0)
		begin
			ebubble <= 0;
			ewreg <= 0;
			em2reg <= 0;
			ewmem <= 0;
			ealuimm <= 0;
			eshift <= 0;
			ejal <= 0;
			ealuc <= 0;
			eimm <= 0;
			ea <= 0;
			eb <= 0;
			epc4 <= 0;
			esa <= 0;
			ern0 <= 0;
			ers <= 0;
			ert <= 0;
		end
		else
		begin
			ebubble <= dbubble;
			ewreg <= dwreg;
			em2reg <= dm2reg;
			ewmem <= dwmem;
			ealuimm <= daluimm;
			eshift <= dshift;
			ejal <= djal;
			ealuc <= daluc;
			eimm <= dimm;
			ea <= da;
			eb <= db;
			epc4 <= dpc4;
			esa <= dsa;
			ern0 <= drn;
			ers <= drs;
			ert <= drt;
		end
	end
endmodule 