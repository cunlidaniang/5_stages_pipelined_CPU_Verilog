`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: cun
// 
// Create Date: 2023/05/20 20:34:52
// Design Name: 
// Module Name: pipeir
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
module pipeir(pc4, ins, wir, clk, clrn, dpc4, inst, brance, prebrance);
    input [31:0] pc4, ins;
    input wir, clk, clrn;
    input brance;
    output [31:0] dpc4, inst;
    output prebrance;
    dffe32 pc_plus4 (pc4, clk, clrn, wir, dpc4);
    dffe32 instruction (ins,clk, clrn, wir, inst);
    dffe32 brance_prebrance(brance, clk, clrn, wir, prebrance);

endmodule