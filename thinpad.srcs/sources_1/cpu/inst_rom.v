`include "defines.vh"

module inst_rom(

//	input	wire										clk,
	input wire                    ce,
	input wire[`WordBus]			addr,
	output reg[`WordBus]					inst,
	output reg ack
	
);

	reg[`WordBus]  inst_mem[0:1000];

	initial $readmemh ( "inst_rom.data", inst_mem );

	always @ (*) begin
		if (ce == `Disable) begin
			inst <= `Zero;
			ack <= `Disable;
	  end else begin
		  inst <= inst_mem[addr[`MemNumLog+1:2]]; //gao wei bu 0
		  ack <= `Enable;
		end
	end

endmodule