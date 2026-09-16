/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP5
// Date      : Tue Sep 15 23:35:06 2026
/////////////////////////////////////////////////////////////


module clk_div ( clk, rst_n, clk64, clk256 );
  input clk, rst_n;
  output clk64, clk256;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;
  wire   [4:0] cnt32;
  wire   [6:0] cnt128;

  DFCNQD1BWP7T40P140 cnt32_reg_4_ ( .D(N5), .CP(clk), .CDN(rst_n), .Q(cnt32[4]) );
  DFCNQD1BWP7T40P140 cnt32_reg_3_ ( .D(N4), .CP(clk), .CDN(rst_n), .Q(cnt32[3]) );
  DFCNQD1BWP7T40P140 cnt32_reg_2_ ( .D(N3), .CP(clk), .CDN(rst_n), .Q(cnt32[2]) );
  DFCNQD1BWP7T40P140 cnt32_reg_1_ ( .D(N2), .CP(clk), .CDN(rst_n), .Q(cnt32[1]) );
  DFCNQD1BWP7T40P140 cnt32_reg_0_ ( .D(N1), .CP(clk), .CDN(rst_n), .Q(cnt32[0]) );
  DFCNQD1BWP7T40P140 cnt128_reg_6_ ( .D(N12), .CP(clk), .CDN(rst_n), .Q(
        cnt128[6]) );
  DFCNQD1BWP7T40P140 cnt128_reg_5_ ( .D(N11), .CP(clk), .CDN(rst_n), .Q(
        cnt128[5]) );
  DFCNQD1BWP7T40P140 cnt128_reg_4_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(
        cnt128[4]) );
  DFCNQD1BWP7T40P140 cnt128_reg_3_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(
        cnt128[3]) );
  DFCNQD1BWP7T40P140 cnt128_reg_2_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(
        cnt128[2]) );
  DFCNQD1BWP7T40P140 cnt128_reg_1_ ( .D(N7), .CP(clk), .CDN(rst_n), .Q(
        cnt128[1]) );
  DFCNQD1BWP7T40P140 cnt128_reg_0_ ( .D(N6), .CP(clk), .CDN(rst_n), .Q(
        cnt128[0]) );
  DFCNQD1BWP7T40P140 clk256_reg ( .D(n7), .CP(clk), .CDN(rst_n), .Q(clk256) );
  DFCNQD1BWP7T40P140 clk64_reg ( .D(n6), .CP(clk), .CDN(rst_n), .Q(clk64) );
  INVD1BWP7T40P140 U10 ( .I(cnt128[0]), .ZN(N6) );
  INVD1BWP7T40P140 U11 ( .I(cnt32[0]), .ZN(N1) );
  INVD1BWP7T40P140 U12 ( .I(cnt32[1]), .ZN(n8) );
  NR2D1BWP7T40P140 U13 ( .A1(N1), .A2(n8), .ZN(n18) );
  AOI21D1BWP7T40P140 U14 ( .A1(N1), .A2(n8), .B(n18), .ZN(N2) );
  ND3D1BWP7T40P140 U15 ( .A1(cnt32[0]), .A2(cnt32[1]), .A3(cnt32[2]), .ZN(n17)
         );
  INVD1BWP7T40P140 U16 ( .I(cnt32[3]), .ZN(n9) );
  NR2D1BWP7T40P140 U17 ( .A1(n9), .A2(n17), .ZN(n19) );
  AOI21D1BWP7T40P140 U18 ( .A1(n17), .A2(n9), .B(n19), .ZN(N4) );
  ND2D1BWP7T40P140 U19 ( .A1(cnt128[0]), .A2(cnt128[1]), .ZN(n15) );
  INVD1BWP7T40P140 U20 ( .I(cnt128[2]), .ZN(n10) );
  NR2D1BWP7T40P140 U21 ( .A1(n10), .A2(n15), .ZN(n14) );
  AOI21D1BWP7T40P140 U22 ( .A1(n15), .A2(n10), .B(n14), .ZN(N8) );
  ND2D1BWP7T40P140 U23 ( .A1(n14), .A2(cnt128[3]), .ZN(n13) );
  INVD1BWP7T40P140 U24 ( .I(cnt128[4]), .ZN(n11) );
  NR2D1BWP7T40P140 U25 ( .A1(n11), .A2(n13), .ZN(n12) );
  AOI21D1BWP7T40P140 U26 ( .A1(n13), .A2(n11), .B(n12), .ZN(N10) );
  ND2D1BWP7T40P140 U27 ( .A1(n12), .A2(cnt128[5]), .ZN(n16) );
  OA21D1BWP7T40P140 U28 ( .A1(n12), .A2(cnt128[5]), .B(n16), .Z(N11) );
  OA21D1BWP7T40P140 U29 ( .A1(n14), .A2(cnt128[3]), .B(n13), .Z(N9) );
  OA21D1BWP7T40P140 U30 ( .A1(cnt128[0]), .A2(cnt128[1]), .B(n15), .Z(N7) );
  NR2D1BWP7T40P140 U31 ( .A1(cnt128[6]), .A2(n16), .ZN(n20) );
  AO21D1BWP7T40P140 U32 ( .A1(cnt128[6]), .A2(n16), .B(n20), .Z(N12) );
  OA21D1BWP7T40P140 U33 ( .A1(n18), .A2(cnt32[2]), .B(n17), .Z(N3) );
  ND2D1BWP7T40P140 U34 ( .A1(n19), .A2(cnt32[4]), .ZN(n21) );
  OA21D1BWP7T40P140 U35 ( .A1(n19), .A2(cnt32[4]), .B(n21), .Z(N5) );
  XOR2D1BWP7T40P140 U36 ( .A1(clk256), .A2(n20), .Z(n7) );
  XNR2D1BWP7T40P140 U37 ( .A1(clk64), .A2(n21), .ZN(n6) );
endmodule

