`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2019 11:57:39 PM
// Design Name: 
// Module Name: tb
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

module tb();
reg [31:0]x;
//wire [31:0]t,z,temp,y,p;
wire [63:0]res;
exp f(x,res);
initial
begin
x=32'b0000000000000100_0000000000000000;
#10 x=32'b0000000000000001_0000000000000000;
#10 x=32'b0000000000000000_0000000000000000;
#10 x=32'b0000000000000110_0000000000000000;
end
endmodule
/*
module tb();
 reg [15:0]Q,M;
 wire [15:0]Quo,rem;
 divide f(Q,M,Quo,rem);
 initial 
 begin
 Q=16'b0000000000001000;
 M=16'b000000000000011;
end  
endmodule */
/*
module tb();
 reg [15:0]x,y;
 wire [31:0]prod;
 multiply f(x,y,prod);
 initial 
 begin
 x=16'b0000000000001001;
 y=16'b000000000000011;
end  
endmodule*/
