`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2020 13:54:15
// Design Name: 
// Module Name: hex_test_tb
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


module hex_test_tb(

    );

  reg  [15:0] sw;
  wire [15:0] led;
  wire [6:0]  hex;
  wire [7:0]  hex_on;
  
  hex_test DUT (
  .sw     (sw),
  .led    (led),
  .hex    (hex),
  .hex_on (hex_on)
  );
  
  initial begin
    sw = 16'd0;
    forever begin
      #5 sw = sw +1'b1;
    end
  end     
    
    
endmodule
