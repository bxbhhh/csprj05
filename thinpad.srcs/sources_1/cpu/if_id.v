`timescale 1ns / 1ps

`include"defines.vh"

module if_id(
    input wire rst,
    input wire clk,
    input wire[`StallBus] stall,
    input wire flush,

    input wire[`WordBus] if_pc,
    input wire[`WordBus] if_inst,
    output reg[`WordBus] id_pc,
    output reg[`WordBus] id_inst,

    output wire[`WordBus] debugdata
    );
    
    assign debugdata = if_inst ;

    always @ (posedge clk) begin
        if ((rst == `Enable) || ((stall[1] == `Enable) && (stall[2] == `Disable)) || (flush == `Enable)) begin
            id_pc <= `Zero ;
            id_inst <= `Zero ;
        end else if (stall[1] == `Disable) begin
            id_pc <= if_pc ;
            id_inst <= if_inst ;
        end 
    end
    
endmodule
