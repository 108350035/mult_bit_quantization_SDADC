/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP5
// Date      : Tue Sep 15 23:21:47 2026
/////////////////////////////////////////////////////////////


module DWA ( clk, rst_n, D, LP, LN, D_out );
  input [6:0] D;
  output [6:0] LP;
  output [6:0] LN;
  output [2:0] D_out;
  input clk, rst_n;
  wire   n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97;
  wire   [2:0] ptr;
  wire   [2:0] sum_raw;
  wire   [6:0] d_out;
  wire   [2:0] D_out_reg;

  DFCNQD1BWP7T40P140 D_out_reg_2_ ( .D(D_out_reg[2]), .CP(clk), .CDN(rst_n), 
        .Q(D_out[2]) );
  DFCNQD1BWP7T40P140 D_out_reg_1_ ( .D(D_out_reg[1]), .CP(clk), .CDN(rst_n), 
        .Q(D_out[1]) );
  DFCNQD1BWP7T40P140 D_out_reg_0_ ( .D(D_out_reg[0]), .CP(clk), .CDN(rst_n), 
        .Q(D_out[0]) );
  DFCNQD1BWP7T40P140 ptr_reg_1_ ( .D(sum_raw[1]), .CP(clk), .CDN(rst_n), .Q(
        ptr[1]) );
  DFCNQD1BWP7T40P140 LP_reg_0_ ( .D(d_out[0]), .CP(clk), .CDN(rst_n), .Q(LP[0]) );
  DFCNQD1BWP7T40P140 LN_reg_0_ ( .D(n50), .CP(clk), .CDN(rst_n), .Q(LN[0]) );
  DFCNQD1BWP7T40P140 LP_reg_4_ ( .D(d_out[4]), .CP(clk), .CDN(rst_n), .Q(LP[4]) );
  DFCNQD1BWP7T40P140 LN_reg_4_ ( .D(n46), .CP(clk), .CDN(rst_n), .Q(LN[4]) );
  DFCNQD1BWP7T40P140 LP_reg_1_ ( .D(d_out[1]), .CP(clk), .CDN(rst_n), .Q(LP[1]) );
  DFCNQD1BWP7T40P140 LN_reg_1_ ( .D(n49), .CP(clk), .CDN(rst_n), .Q(LN[1]) );
  DFCNQD1BWP7T40P140 LP_reg_5_ ( .D(d_out[5]), .CP(clk), .CDN(rst_n), .Q(LP[5]) );
  DFCNQD1BWP7T40P140 LN_reg_5_ ( .D(n45), .CP(clk), .CDN(rst_n), .Q(LN[5]) );
  DFCNQD1BWP7T40P140 LP_reg_2_ ( .D(d_out[2]), .CP(clk), .CDN(rst_n), .Q(LP[2]) );
  DFCNQD1BWP7T40P140 LN_reg_2_ ( .D(n48), .CP(clk), .CDN(rst_n), .Q(LN[2]) );
  DFCNQD1BWP7T40P140 LP_reg_3_ ( .D(d_out[3]), .CP(clk), .CDN(rst_n), .Q(LP[3]) );
  DFCNQD1BWP7T40P140 LN_reg_3_ ( .D(n47), .CP(clk), .CDN(rst_n), .Q(LN[3]) );
  DFCNQD1BWP7T40P140 LP_reg_6_ ( .D(d_out[6]), .CP(clk), .CDN(rst_n), .Q(LP[6]) );
  DFCNQD1BWP7T40P140 LN_reg_6_ ( .D(n44), .CP(clk), .CDN(rst_n), .Q(LN[6]) );
  DFCNQD1BWP7T40P140 ptr_reg_0_ ( .D(sum_raw[0]), .CP(clk), .CDN(rst_n), .Q(
        ptr[0]) );
  DFCNQD1BWP7T40P140 ptr_reg_2_ ( .D(sum_raw[2]), .CP(clk), .CDN(rst_n), .Q(
        ptr[2]) );
  INVD1BWP7T40P140 U62 ( .I(D[5]), .ZN(n72) );
  INVD1BWP7T40P140 U63 ( .I(D[0]), .ZN(n91) );
  INVD1BWP7T40P140 U64 ( .I(ptr[1]), .ZN(n79) );
  AOI22D1BWP7T40P140 U65 ( .A1(ptr[1]), .A2(n72), .B1(n91), .B2(n79), .ZN(n54)
         );
  INVD1BWP7T40P140 U66 ( .I(D[6]), .ZN(n88) );
  INVD1BWP7T40P140 U67 ( .I(D[1]), .ZN(n71) );
  AOI22D1BWP7T40P140 U68 ( .A1(ptr[1]), .A2(n88), .B1(n71), .B2(n79), .ZN(n52)
         );
  INVD1BWP7T40P140 U69 ( .I(ptr[0]), .ZN(n60) );
  AOI22D1BWP7T40P140 U70 ( .A1(ptr[0]), .A2(n54), .B1(n52), .B2(n60), .ZN(n56)
         );
  INVD1BWP7T40P140 U71 ( .I(D[2]), .ZN(n51) );
  INVD1BWP7T40P140 U72 ( .I(D[4]), .ZN(n70) );
  AOI22D1BWP7T40P140 U73 ( .A1(ptr[1]), .A2(n51), .B1(n70), .B2(n79), .ZN(n55)
         );
  INVD1BWP7T40P140 U74 ( .I(D[3]), .ZN(n69) );
  AOI22D1BWP7T40P140 U75 ( .A1(ptr[1]), .A2(n69), .B1(n72), .B2(n79), .ZN(n59)
         );
  AOI22D1BWP7T40P140 U76 ( .A1(ptr[0]), .A2(n55), .B1(n59), .B2(n60), .ZN(n53)
         );
  INVD1BWP7T40P140 U77 ( .I(ptr[2]), .ZN(n85) );
  AOI22D1BWP7T40P140 U78 ( .A1(ptr[2]), .A2(n56), .B1(n53), .B2(n85), .ZN(
        d_out[5]) );
  INVD1BWP7T40P140 U79 ( .I(d_out[5]), .ZN(n45) );
  AOI22D1BWP7T40P140 U80 ( .A1(ptr[1]), .A2(n91), .B1(n51), .B2(n79), .ZN(n62)
         );
  AOI22D1BWP7T40P140 U81 ( .A1(ptr[0]), .A2(n52), .B1(n62), .B2(n60), .ZN(n66)
         );
  AOI22D1BWP7T40P140 U82 ( .A1(ptr[2]), .A2(n53), .B1(n66), .B2(n85), .ZN(
        d_out[2]) );
  INVD1BWP7T40P140 U83 ( .I(d_out[2]), .ZN(n48) );
  AOI22D1BWP7T40P140 U84 ( .A1(ptr[1]), .A2(n70), .B1(n88), .B2(n79), .ZN(n58)
         );
  AOI22D1BWP7T40P140 U85 ( .A1(ptr[0]), .A2(n58), .B1(n54), .B2(n60), .ZN(n63)
         );
  AOI22D1BWP7T40P140 U86 ( .A1(ptr[1]), .A2(n71), .B1(n69), .B2(n79), .ZN(n61)
         );
  AOI22D1BWP7T40P140 U87 ( .A1(ptr[0]), .A2(n61), .B1(n55), .B2(n60), .ZN(n57)
         );
  AOI22D1BWP7T40P140 U88 ( .A1(ptr[2]), .A2(n63), .B1(n57), .B2(n85), .ZN(
        d_out[4]) );
  INVD1BWP7T40P140 U89 ( .I(d_out[4]), .ZN(n46) );
  AOI22D1BWP7T40P140 U90 ( .A1(ptr[2]), .A2(n57), .B1(n56), .B2(n85), .ZN(
        d_out[1]) );
  INVD1BWP7T40P140 U91 ( .I(d_out[1]), .ZN(n49) );
  AOI22D1BWP7T40P140 U92 ( .A1(ptr[0]), .A2(n59), .B1(n58), .B2(n60), .ZN(n65)
         );
  AOI22D1BWP7T40P140 U93 ( .A1(ptr[0]), .A2(n62), .B1(n61), .B2(n60), .ZN(n64)
         );
  AOI22D1BWP7T40P140 U94 ( .A1(ptr[2]), .A2(n65), .B1(n64), .B2(n85), .ZN(
        d_out[3]) );
  INVD1BWP7T40P140 U95 ( .I(d_out[3]), .ZN(n47) );
  AOI22D1BWP7T40P140 U96 ( .A1(ptr[2]), .A2(n64), .B1(n63), .B2(n85), .ZN(
        d_out[0]) );
  INVD1BWP7T40P140 U97 ( .I(d_out[0]), .ZN(n50) );
  AOI22D1BWP7T40P140 U98 ( .A1(ptr[2]), .A2(n66), .B1(n65), .B2(n85), .ZN(
        d_out[6]) );
  INVD1BWP7T40P140 U99 ( .I(d_out[6]), .ZN(n44) );
  ND2D1BWP7T40P140 U100 ( .A1(D[1]), .A2(D[2]), .ZN(n90) );
  NR2D1BWP7T40P140 U101 ( .A1(D[1]), .A2(D[2]), .ZN(n92) );
  INR2D1BWP7T40P140 U102 ( .A1(n90), .B1(n92), .ZN(n76) );
  MUX2ND1BWP7T40P140 U103 ( .I0(D[0]), .I1(n91), .S(n76), .ZN(n87) );
  INVD1BWP7T40P140 U104 ( .I(n67), .ZN(n86) );
  INVD1BWP7T40P140 U105 ( .I(n68), .ZN(D_out_reg[0]) );
  NR3D0BWP7T40P140 U106 ( .A1(n91), .A2(n69), .A3(n90), .ZN(n81) );
  ND2D1BWP7T40P140 U107 ( .A1(D[4]), .A2(n81), .ZN(n73) );
  NR2D1BWP7T40P140 U108 ( .A1(D[6]), .A2(D[5]), .ZN(n80) );
  ND4D1BWP7T40P140 U109 ( .A1(n80), .A2(D[0]), .A3(n70), .A4(n69), .ZN(n75) );
  OA22D1BWP7T40P140 U110 ( .A1(n72), .A2(n73), .B1(n71), .B2(n75), .Z(n78) );
  AOI22D1BWP7T40P140 U111 ( .A1(D[6]), .A2(D[5]), .B1(n72), .B2(n88), .ZN(n74)
         );
  OAI22D1BWP7T40P140 U112 ( .A1(n76), .A2(n75), .B1(n74), .B2(n73), .ZN(n97)
         );
  ND2D1BWP7T40P140 U113 ( .A1(n97), .A2(ptr[0]), .ZN(n96) );
  INVD1BWP7T40P140 U114 ( .I(n77), .ZN(sum_raw[1]) );
  FA1D1BWP7T40P140 U115 ( .A(n79), .B(n78), .CI(n96), .CO(n83), .S(n77) );
  AOI32D1BWP7T40P140 U116 ( .A1(D[5]), .A2(n81), .A3(D[4]), .B1(n80), .B2(n81), 
        .ZN(n82) );
  XNR2D1BWP7T40P140 U117 ( .A1(n83), .A2(n82), .ZN(n84) );
  MUX2ND1BWP7T40P140 U118 ( .I0(ptr[2]), .I1(n85), .S(n84), .ZN(sum_raw[2]) );
  FA1D1BWP7T40P140 U119 ( .A(n88), .B(n87), .CI(n86), .CO(n89), .S(n68) );
  INVD1BWP7T40P140 U120 ( .I(n89), .ZN(n95) );
  OAI21D1BWP7T40P140 U121 ( .A1(n92), .A2(n91), .B(n90), .ZN(n94) );
  FA1D1BWP7T40P140 U122 ( .A(D[4]), .B(D[3]), .CI(D[5]), .CO(n93), .S(n67) );
  FA1D1BWP7T40P140 U123 ( .A(n95), .B(n94), .CI(n93), .CO(D_out_reg[2]), .S(
        D_out_reg[1]) );
  OA21D1BWP7T40P140 U124 ( .A1(ptr[0]), .A2(n97), .B(n96), .Z(sum_raw[0]) );
endmodule