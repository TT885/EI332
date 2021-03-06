module pipeif(pcsource,pc,bpc,da,jpc,npc,pc4,ins,mem_clock);
	input mem_clock;
	input [ 1:0] pcsource;
	input [31:0] pc, bpc, da, jpc;
	output wire [31:0] npc, pc4, ins;
	
	assign pc4 = pc + 4;
	mux4x32 nextpc(pc4, bpc, da, jpc, pcsource, npc);
	sc_instmem imem(pc, ins, mem_clock);
endmodule 