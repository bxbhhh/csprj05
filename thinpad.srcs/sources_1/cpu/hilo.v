`timescale 1ns / 1ps

`include"defines.vh"

module hilo(
    input wire rst,
    input wire clk,
    input wire we,
    input wire[`WordBus] hi_i,
    input wire[`WordBus] lo_i,
    
    output reg[`WordBus] hi_o,
    output reg[`WordBus] lo_o
    );
    
    always @ (posedge clk) begin
        if (rst == `Enable) begin
            hi_o <= `Zero ;
            lo_o <= `Zero ;
        end
        else if (we == `Enable) begin
            hi_o <= hi_i ;
            lo_o <= lo_i ;
        end
    end 

endmodule
