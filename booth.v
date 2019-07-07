`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2019 11:53:34 PM
// Design Name: 
// Module Name: BoothMulti
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
module exp(x,res);
input [31:0]x;
output reg [63:0]res;//y=16'b0000000000000001;
reg [31:0]t,z,temp,y,p;
localparam sf = 2.0**-8.0;

always@(*)
begin
z=x;
y=32'b0000000000000001_0000000000000000;

t=z-32'b0000000000000101_1000101110010010;
if (t[31]!=1'b1)
    begin 
    z=t;
    y=y<<8;
    end
   
 t=z-32'b0000000000000010_1100010111001001;
 if (t[31]!=1'b1)
     begin 
     z=t;
     y=y<<4;
     end
 
         
 t=z-32'b0000000000000001_0110001011100100;
 if (t[31]!=1'b1)
     begin 
     z=t;
     y=y<<2;
     end
 
 t=z-32'b0000000000000000_1011000101101111;
 if (t[31]!=1'b1)
     begin 
     z=t;
     y=y<<1;
     end
   
 t=z-32'b0000000000000000_0110011111001110;
 if (t[31]!=1'b1)
     begin 
     z=t;
     temp=y>>1;
     y=y+temp;
     end
     
 t=z-32'b0000000000000000_0011100100011101;
 if (t[31]!=1'b1)
     begin 
     z=t;
     temp=y>>2;
     y=y+temp;
     end
    
 t=z-32'b0000000000000000_0001111000101000;
 if (t[31]!=1'b1)
     begin 
     z=t;
     temp=y>>3;
     y=y+temp;
     end
 
 t=z-32'b0000000000000000_0000111110000011;
 if (t[31]!=1'b1)
     begin 
     z=t;
     temp=y>>4;
     y=y+temp;
     end
    
 t=z-32'b0000000000000000_0000011111100010;
 if (t[31]!=1'b1)
     begin 
     z=t;
     temp=y>>5;
     y=y+temp;
     end
    
 t=z-32'b0000000000000000_0000001111110111;
 if (t[31]!=1'b1)
     begin 
     z=t;
     temp=y>>6;
     y=y+temp;
     end
  
 t=z-32'b0000000000000000_0000000111111111; 
if (t[31]!=1'b1)
     begin 
     z=t;
     temp=y>>7;
     y=y+temp;
     end
     p=z+32'b0000000000000001_0000000000000000;
    res=y*p;  
 end
 endmodule

/*     
module divide(Q,M,Quo,rem);
input [15:0]Q;
input [15:0]M;
output [15:0]Quo;
output [15:0]rem;
reg [15:0]Quo=0;
reg [15:0]rem=0;
reg [15:0]a1,b1;
reg [15:0]p1;
integer i;

always @(Q or M)
begin
a1=Q;
b1=M;
p1=0;
for(i=0;i<16;i=i+1)
begin
    p1={p1[14:0],a1[15]};
    a1[15:1]=a1[14:0];
    p1=p1-b1;
    if(p1[15]==1)
    begin
        a1[0]=0;
        p1=p1+b1;
    end
    else 
    begin
        a1[0]=1;
    end
end
Quo=a1;
rem=p1;
end
endmodule    
*/
/*
module multiply(x,y,prod);
input [31:0]x,y;
output reg [31:0] prod;
integer i;
always @ (x or y)
begin
prod=0;
for(i=0; i<16; i=i+1)
    if ( x[i] == 1'b1 )
    prod = prod + (y<<i);
end
endmodule

*/