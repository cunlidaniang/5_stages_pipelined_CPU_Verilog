`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: cun
// 
// Create Date: 2023/05/20 20:34:52
// Design Name: 
// Module Name: pipemwreg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//done
module pipemwreg (mwreg, mm2reg, mmo, malu, mrn, clk, clrn,
                wwreg, wm2reg, wmo, walu, wrn); //EXE MEM reg
    input [31:0] mmo, malu;
    input [4:0] mrn;
    input mwreg, mm2reg;
    input clk, clrn;
    output [31:0] wmo, walu;
    output [4:0] wrn;
    output wwreg, wm2reg;
    reg [31:0] wmo, walu;
    reg [4:0] wrn;
    reg wwreg, wm2reg;
    always @(negedge clrn or posedge clk) begin
        if (clrn == 0) begin
            wwreg <= 0; wm2reg <= 0; wmo <= 0;
            walu <= 0; wrn <= 0;
        end else begin
            wwreg <= mwreg; wm2reg <= mm2reg; wmo <= mmo;
            walu <= malu; wrn <= mrn;
        end
    end
    
endmodule