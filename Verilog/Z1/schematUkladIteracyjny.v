////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : schematUkladIteracyjny.vf
// /___/   /\     Timestamp : 01/11/2022 14:44:31
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -intstyle ise -family xbr -verilog C:/students_ulic/Gricjuta_Jozwiak_5AiSR2_wtorek_14/VeriLog/Z1/schematUkladIteracyjny.vf -w C:/students_ulic/Gricjuta_Jozwiak_5AiSR2_wtorek_14/VeriLog/Z1/schematUkladIteracyjny.sch
//Design Name: schematUkladIteracyjny
//Device: xbr
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module schematUkladIteracyjny(ai_1, 
                              ai_2, 
                              ai_3, 
                              ai_4, 
                              ai_5, 
                              ai_6, 
                              ai_7, 
                              ai_8, 
                              P1wy_8, 
                              P2wy_8);

    input ai_1;
    input ai_2;
    input ai_3;
    input ai_4;
    input ai_5;
    input ai_6;
    input ai_7;
    input ai_8;
   output P1wy_8;
   output P2wy_8;
   
   wire XLXN_56;
   wire XLXN_57;
   wire XLXN_58;
   wire XLXN_60;
   wire XLXN_62;
   wire XLXN_63;
   wire XLXN_64;
   wire XLXN_65;
   wire XLXN_66;
   wire XLXN_67;
   wire XLXN_68;
   wire XLXN_69;
   wire XLXN_70;
   wire XLXN_71;
   wire XLXN_78;
   wire XLXN_79;
   
   assign XLXN_78 = 0;
   assign XLXN_79 = 0;
   blokIteracyjny  blok_1 (.ai(ai_1), 
                          .P1we(XLXN_79), 
                          .P2we(XLXN_78), 
                          .P1wy(XLXN_57), 
                          .P2wy(XLXN_56));
   blokIteracyjny  blok_2 (.ai(ai_2), 
                          .P1we(XLXN_57), 
                          .P2we(XLXN_56), 
                          .P1wy(XLXN_63), 
                          .P2wy(XLXN_62));
   blokIteracyjny  blok_3 (.ai(ai_3), 
                          .P1we(XLXN_63), 
                          .P2we(XLXN_62), 
                          .P1wy(XLXN_67), 
                          .P2wy(XLXN_66));
   blokIteracyjny  blok_4 (.ai(ai_4), 
                          .P1we(XLXN_67), 
                          .P2we(XLXN_66), 
                          .P1wy(XLXN_69), 
                          .P2wy(XLXN_68));
   blokIteracyjny  blok_5 (.ai(ai_5), 
                          .P1we(XLXN_69), 
                          .P2we(XLXN_68), 
                          .P1wy(XLXN_60), 
                          .P2wy(XLXN_58));
   blokIteracyjny  blok_6 (.ai(ai_6), 
                          .P1we(XLXN_60), 
                          .P2we(XLXN_58), 
                          .P1wy(XLXN_65), 
                          .P2wy(XLXN_64));
   blokIteracyjny  blok_7 (.ai(ai_7), 
                          .P1we(XLXN_65), 
                          .P2we(XLXN_64), 
                          .P1wy(XLXN_71), 
                          .P2wy(XLXN_70));
   blokIteracyjny  blok_8 (.ai(ai_8), 
                          .P1we(XLXN_71), 
                          .P2we(XLXN_70), 
                          .P1wy(P1wy_8), 
                          .P2wy(P2wy_8));
endmodule
