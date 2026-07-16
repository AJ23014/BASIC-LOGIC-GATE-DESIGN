
//////////////////////////////////////////////////////////////////////////////////
// Company: Vivado
// Engineer: Anay Jha
// 
// Create Date: 07/05/2026 12:24:17 AM
// Design Name: BASIC LOGIC GATE DESIGN
// Module Name: logic_testtst
// Project Name: BASIC LOGIC GATE DESIGN
// Target Devices: FPGA
// Tool Versions: AMD Vivado
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



// Simulation Testbench for my_gates
`timescale 1ns / 1ps

module tb_my_gates();

    reg a, b;
    wire r_and, r_or, r_xor, r_nand, r_nor, r_xnor, r_not;

    // Instantiate design under test (DUT)
    my_gates uut (
        .a_in(a), .b_in(b), 
        .res_and(r_and), .res_or(r_or), .res_xor(r_xor), 
        .res_nand(r_nand), .res_nor(r_nor), .res_xnor(r_xnor), 
        .res_not(r_not)
    );

    initial begin
        // test all 4 combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $display("Gates test completed.");
        $finish;
    end

endmodule



