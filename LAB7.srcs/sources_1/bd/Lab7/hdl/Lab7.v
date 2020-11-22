//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
//Date        : Sun Nov 22 13:39:47 2020
//Host        : B3-307-PC25 running 64-bit major release  (build 9200)
//Command     : generate_target Lab7.bd
//Design      : Lab7
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Lab7,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Lab7,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "Lab7.hwdef" *) 
module Lab7
   (LD0,
    LD1,
    LD2,
    LD3,
    LD4,
    LD5,
    LD6,
    LD7,
    SW0,
    SW1,
    SW2,
    SW3,
    SW4,
    SW5,
    SW6,
    SW7);
  output LD0;
  output LD1;
  output LD2;
  output LD3;
  output LD4;
  output LD5;
  output LD6;
  output LD7;
  input SW0;
  input SW1;
  input SW2;
  input SW3;
  input SW4;
  input SW5;
  input SW6;
  input SW7;

  wire SW0_1;
  wire SW1_1;
  wire SW2_1;
  wire SW3_1;
  wire SW4_1;
  wire SW5_1;
  wire SW6_1;
  wire SW7_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_inv_0_y;
  wire xup_inv_1_y;
  wire xup_or2_0_y;

  assign LD0 = xup_inv_0_y;
  assign LD1 = xup_and2_0_y;
  assign LD2 = xup_or2_0_y;
  assign LD3 = xup_and2_1_y;
  assign LD4 = SW4_1;
  assign LD5 = SW5_1;
  assign LD6 = SW6_1;
  assign LD7 = SW7_1;
  assign SW0_1 = SW0;
  assign SW1_1 = SW1;
  assign SW2_1 = SW2;
  assign SW3_1 = SW3;
  assign SW4_1 = SW4;
  assign SW5_1 = SW5;
  assign SW6_1 = SW6;
  assign SW7_1 = SW7;
  Lab7_xup_and2_0_0 xup_and2_0
       (.a(SW1_1),
        .b(xup_inv_1_y),
        .y(xup_and2_0_y));
  Lab7_xup_and2_0_1 xup_and2_1
       (.a(SW2_1),
        .b(SW3_1),
        .y(xup_and2_1_y));
  Lab7_xup_inv_0_0 xup_inv_0
       (.a(SW0_1),
        .y(xup_inv_0_y));
  Lab7_xup_inv_0_1 xup_inv_1
       (.a(SW2_1),
        .y(xup_inv_1_y));
  Lab7_xup_or2_0_0 xup_or2_0
       (.a(xup_and2_0_y),
        .b(xup_and2_1_y),
        .y(xup_or2_0_y));
endmodule
