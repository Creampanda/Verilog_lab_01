`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2020 13:43:29
// Design Name: 
// Module Name: hex_test
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


module hex_test(
  input      [15:0] sw,
  output     [15:0] led,
  output reg [6:0]  hex,
  output     [7:0]  hex_on
    );

  assign hex_on = 8'b0000_0001;
  assign led    = sw;
  
  always @(*) begin
    case (sw[1:0])
      2'd0 : hex = 7'b100_0000;
      2'd1 : hex = 7'b111_1001;
      2'd2 : hex = 7'b010_0100;
      2'd3 : hex = 7'b011_0000;
    endcase
  end
      
    
endmodule
