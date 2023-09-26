`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2023 10:10:40 AM
// Design Name: 
// Module Name: decoder_tb
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


//-------------------------------------------------------------------------
// Module Name: Decoder
// The decoder for ahb system with 4 slave
// Project Group : 3 
// Members       : Amrutha, Hardeep, Sai Nagesh, Sanjay 
// Institute     : GSKSJTI 
//-------------------------------------------------------------------------
// Basic features about read and write
// New features: wait state, burst
//-------------------------------------------------------------------------

`timescale 1ns/1ns

module decoder_tb();

reg [1:0] sel;
wire hsel_1;
wire hsel_2;
wire hsel_3;
wire hsel_4;


initial begin
  sel = 2'b00;
  #20 sel = 2'b01;
  #20 sel = 2'b10;
  #20 sel = 2'b11;
end


decoder dut(
  .sel(sel),
  .hsel_1(hsel_1),
  .hsel_2(hsel_2),
  .hsel_3(hsel_3),
  .hsel_4(hsel_4)
);


endmodule


