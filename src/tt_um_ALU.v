/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_ALU (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
    ALU C1 (.A(ui_in[3:0]), .B(ui_in[7:4]), .SEL(uio_in[2:0]), .ALU_OUT(uo_out[3:0]), .CARRY_OUT(uo_out[4]), .OVERFLOW(uo_out[5]), .ZERO(uo_out[6]), .SIGNO(uo_out[7]));

    assign uio_oe = 8'b00000000;
    assign uio_out [7:0] = 8'b00000000;


    
endmodule
