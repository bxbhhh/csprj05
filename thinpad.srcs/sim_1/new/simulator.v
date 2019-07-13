`timescale 1ns / 1ps


module simulator(

    );
    reg sys_rst_n;
    reg sys_clk ;
    
    initial 
    begin
        sys_rst_n = 1;
        sys_clk = 0;
        #40 sys_rst_n = 1'b0;
    end
    
     always #20 sys_clk <= ~sys_clk;
     
     openmips_min_sopc openmips_min_sopc0(sys_clk,sys_rst_n);
    
endmodule
