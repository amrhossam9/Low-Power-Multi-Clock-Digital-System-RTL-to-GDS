/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct 23 22:48:28 2024
/////////////////////////////////////////////////////////////


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \ff[0] ;

  DFFRQX2M \ff_reg[1]  ( .D(\ff[0] ), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \ff_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\ff[0] ) );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \ff[0] ;

  DFFRQX2M \ff_reg[1]  ( .D(\ff[0] ), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \ff_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\ff[0] ) );
endmodule


module Data_Sync ( unsync_bus, bus_enable, CLK, RST, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   Pulse_Gen_ff, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] Multi_Flip_Flop;

  DFFRQX2M Pulse_Gen_ff_reg ( .D(Multi_Flip_Flop[1]), .CK(CLK), .RN(RST), .Q(
        Pulse_Gen_ff) );
  DFFRQX2M \Multi_Flip_Flop_reg[1]  ( .D(Multi_Flip_Flop[0]), .CK(CLK), .RN(
        RST), .Q(Multi_Flip_Flop[1]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  DFFRQX2M \Multi_Flip_Flop_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        Multi_Flip_Flop[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(Pulse_Gen_ff), .B(Multi_Flip_Flop[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module FIFO_MEM_CNTRL ( wclken, RST_n, CLK, wdata, waddr, raddr, rdata );
  input [7:0] wdata;
  input [2:0] waddr;
  input [2:0] raddr;
  output [7:0] rdata;
  input wclken, RST_n, CLK;
  wire   N10, N11, N12, \fifo_mem[7][7] , \fifo_mem[7][6] , \fifo_mem[7][5] ,
         \fifo_mem[7][4] , \fifo_mem[7][3] , \fifo_mem[7][2] ,
         \fifo_mem[7][1] , \fifo_mem[7][0] , \fifo_mem[6][7] ,
         \fifo_mem[6][6] , \fifo_mem[6][5] , \fifo_mem[6][4] ,
         \fifo_mem[6][3] , \fifo_mem[6][2] , \fifo_mem[6][1] ,
         \fifo_mem[6][0] , \fifo_mem[5][7] , \fifo_mem[5][6] ,
         \fifo_mem[5][5] , \fifo_mem[5][4] , \fifo_mem[5][3] ,
         \fifo_mem[5][2] , \fifo_mem[5][1] , \fifo_mem[5][0] ,
         \fifo_mem[4][7] , \fifo_mem[4][6] , \fifo_mem[4][5] ,
         \fifo_mem[4][4] , \fifo_mem[4][3] , \fifo_mem[4][2] ,
         \fifo_mem[4][1] , \fifo_mem[4][0] , \fifo_mem[3][7] ,
         \fifo_mem[3][6] , \fifo_mem[3][5] , \fifo_mem[3][4] ,
         \fifo_mem[3][3] , \fifo_mem[3][2] , \fifo_mem[3][1] ,
         \fifo_mem[3][0] , \fifo_mem[2][7] , \fifo_mem[2][6] ,
         \fifo_mem[2][5] , \fifo_mem[2][4] , \fifo_mem[2][3] ,
         \fifo_mem[2][2] , \fifo_mem[2][1] , \fifo_mem[2][0] ,
         \fifo_mem[1][7] , \fifo_mem[1][6] , \fifo_mem[1][5] ,
         \fifo_mem[1][4] , \fifo_mem[1][3] , \fifo_mem[1][2] ,
         \fifo_mem[1][1] , \fifo_mem[1][0] , \fifo_mem[0][7] ,
         \fifo_mem[0][6] , \fifo_mem[0][5] , \fifo_mem[0][4] ,
         \fifo_mem[0][3] , \fifo_mem[0][2] , \fifo_mem[0][1] ,
         \fifo_mem[0][0] , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];

  DFFRQX2M \fifo_mem_reg[5][7]  ( .D(n68), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[5][7] ) );
  DFFRQX2M \fifo_mem_reg[5][6]  ( .D(n67), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[5][6] ) );
  DFFRQX2M \fifo_mem_reg[5][5]  ( .D(n66), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[5][5] ) );
  DFFRQX2M \fifo_mem_reg[5][4]  ( .D(n65), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[5][4] ) );
  DFFRQX2M \fifo_mem_reg[5][3]  ( .D(n64), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[5][3] ) );
  DFFRQX2M \fifo_mem_reg[5][2]  ( .D(n63), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[5][2] ) );
  DFFRQX2M \fifo_mem_reg[5][1]  ( .D(n62), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[5][1] ) );
  DFFRQX2M \fifo_mem_reg[5][0]  ( .D(n61), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[5][0] ) );
  DFFRQX2M \fifo_mem_reg[1][7]  ( .D(n36), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[1][7] ) );
  DFFRQX2M \fifo_mem_reg[1][6]  ( .D(n35), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[1][6] ) );
  DFFRQX2M \fifo_mem_reg[1][5]  ( .D(n34), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[1][5] ) );
  DFFRQX2M \fifo_mem_reg[1][4]  ( .D(n33), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[1][4] ) );
  DFFRQX2M \fifo_mem_reg[1][3]  ( .D(n32), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[1][3] ) );
  DFFRQX2M \fifo_mem_reg[1][2]  ( .D(n31), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[1][2] ) );
  DFFRQX2M \fifo_mem_reg[1][1]  ( .D(n30), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[1][1] ) );
  DFFRQX2M \fifo_mem_reg[1][0]  ( .D(n29), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[1][0] ) );
  DFFRQX2M \fifo_mem_reg[7][7]  ( .D(n84), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[7][7] ) );
  DFFRQX2M \fifo_mem_reg[7][6]  ( .D(n83), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[7][6] ) );
  DFFRQX2M \fifo_mem_reg[7][5]  ( .D(n82), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[7][5] ) );
  DFFRQX2M \fifo_mem_reg[7][4]  ( .D(n81), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[7][4] ) );
  DFFRQX2M \fifo_mem_reg[7][3]  ( .D(n80), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[7][3] ) );
  DFFRQX2M \fifo_mem_reg[7][2]  ( .D(n79), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[7][2] ) );
  DFFRQX2M \fifo_mem_reg[7][1]  ( .D(n78), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[7][1] ) );
  DFFRQX2M \fifo_mem_reg[7][0]  ( .D(n77), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[7][0] ) );
  DFFRQX2M \fifo_mem_reg[3][7]  ( .D(n52), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[3][7] ) );
  DFFRQX2M \fifo_mem_reg[3][6]  ( .D(n51), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[3][6] ) );
  DFFRQX2M \fifo_mem_reg[3][5]  ( .D(n50), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[3][5] ) );
  DFFRQX2M \fifo_mem_reg[3][4]  ( .D(n49), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[3][4] ) );
  DFFRQX2M \fifo_mem_reg[3][3]  ( .D(n48), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[3][3] ) );
  DFFRQX2M \fifo_mem_reg[3][2]  ( .D(n47), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[3][2] ) );
  DFFRQX2M \fifo_mem_reg[3][1]  ( .D(n46), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[3][1] ) );
  DFFRQX2M \fifo_mem_reg[3][0]  ( .D(n45), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[3][0] ) );
  DFFRQX2M \fifo_mem_reg[6][7]  ( .D(n76), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[6][7] ) );
  DFFRQX2M \fifo_mem_reg[6][6]  ( .D(n75), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[6][6] ) );
  DFFRQX2M \fifo_mem_reg[6][5]  ( .D(n74), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[6][5] ) );
  DFFRQX2M \fifo_mem_reg[6][4]  ( .D(n73), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[6][4] ) );
  DFFRQX2M \fifo_mem_reg[6][3]  ( .D(n72), .CK(CLK), .RN(n99), .Q(
        \fifo_mem[6][3] ) );
  DFFRQX2M \fifo_mem_reg[6][2]  ( .D(n71), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[6][2] ) );
  DFFRQX2M \fifo_mem_reg[6][1]  ( .D(n70), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[6][1] ) );
  DFFRQX2M \fifo_mem_reg[6][0]  ( .D(n69), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[6][0] ) );
  DFFRQX2M \fifo_mem_reg[2][7]  ( .D(n44), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[2][7] ) );
  DFFRQX2M \fifo_mem_reg[2][6]  ( .D(n43), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[2][6] ) );
  DFFRQX2M \fifo_mem_reg[2][5]  ( .D(n42), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[2][5] ) );
  DFFRQX2M \fifo_mem_reg[2][4]  ( .D(n41), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[2][4] ) );
  DFFRQX2M \fifo_mem_reg[2][3]  ( .D(n40), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[2][3] ) );
  DFFRQX2M \fifo_mem_reg[2][2]  ( .D(n39), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[2][2] ) );
  DFFRQX2M \fifo_mem_reg[2][1]  ( .D(n38), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[2][1] ) );
  DFFRQX2M \fifo_mem_reg[2][0]  ( .D(n37), .CK(CLK), .RN(n102), .Q(
        \fifo_mem[2][0] ) );
  DFFRQX2M \fifo_mem_reg[4][7]  ( .D(n60), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[4][7] ) );
  DFFRQX2M \fifo_mem_reg[4][6]  ( .D(n59), .CK(CLK), .RN(n100), .Q(
        \fifo_mem[4][6] ) );
  DFFRQX2M \fifo_mem_reg[4][5]  ( .D(n58), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[4][5] ) );
  DFFRQX2M \fifo_mem_reg[4][4]  ( .D(n57), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[4][4] ) );
  DFFRQX2M \fifo_mem_reg[4][3]  ( .D(n56), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[4][3] ) );
  DFFRQX2M \fifo_mem_reg[4][2]  ( .D(n55), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[4][2] ) );
  DFFRQX2M \fifo_mem_reg[4][1]  ( .D(n54), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[4][1] ) );
  DFFRQX2M \fifo_mem_reg[4][0]  ( .D(n53), .CK(CLK), .RN(n101), .Q(
        \fifo_mem[4][0] ) );
  DFFRQX2M \fifo_mem_reg[0][7]  ( .D(n28), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[0][7] ) );
  DFFRQX2M \fifo_mem_reg[0][6]  ( .D(n27), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[0][6] ) );
  DFFRQX2M \fifo_mem_reg[0][5]  ( .D(n26), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[0][5] ) );
  DFFRQX2M \fifo_mem_reg[0][4]  ( .D(n25), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[0][4] ) );
  DFFRQX2M \fifo_mem_reg[0][3]  ( .D(n24), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[0][3] ) );
  DFFRQX2M \fifo_mem_reg[0][2]  ( .D(n23), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[0][2] ) );
  DFFRQX2M \fifo_mem_reg[0][1]  ( .D(n22), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[0][1] ) );
  DFFRQX2M \fifo_mem_reg[0][0]  ( .D(n21), .CK(CLK), .RN(n103), .Q(
        \fifo_mem[0][0] ) );
  BUFX2M U2 ( .A(n18), .Y(n95) );
  BUFX2M U3 ( .A(n19), .Y(n94) );
  BUFX2M U4 ( .A(n20), .Y(n93) );
  BUFX2M U5 ( .A(n14), .Y(n96) );
  BUFX2M U6 ( .A(n97), .Y(n101) );
  BUFX2M U7 ( .A(n97), .Y(n100) );
  BUFX2M U8 ( .A(n97), .Y(n99) );
  BUFX2M U9 ( .A(n98), .Y(n102) );
  BUFX2M U10 ( .A(n98), .Y(n103) );
  BUFX2M U11 ( .A(RST_n), .Y(n97) );
  BUFX2M U12 ( .A(RST_n), .Y(n98) );
  NAND3X2M U13 ( .A(n104), .B(n105), .C(n17), .Y(n16) );
  NAND3X2M U14 ( .A(n104), .B(n105), .C(n12), .Y(n11) );
  NAND3X2M U15 ( .A(waddr[0]), .B(n12), .C(waddr[1]), .Y(n15) );
  NAND3X2M U16 ( .A(n12), .B(n105), .C(waddr[0]), .Y(n13) );
  NOR2BX2M U17 ( .AN(wclken), .B(waddr[2]), .Y(n12) );
  OAI2BB2X1M U18 ( .B0(n11), .B1(n113), .A0N(\fifo_mem[0][0] ), .A1N(n11), .Y(
        n21) );
  OAI2BB2X1M U19 ( .B0(n11), .B1(n112), .A0N(\fifo_mem[0][1] ), .A1N(n11), .Y(
        n22) );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n111), .A0N(\fifo_mem[0][2] ), .A1N(n11), .Y(
        n23) );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n110), .A0N(\fifo_mem[0][3] ), .A1N(n11), .Y(
        n24) );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n109), .A0N(\fifo_mem[0][4] ), .A1N(n11), .Y(
        n25) );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n108), .A0N(\fifo_mem[0][5] ), .A1N(n11), .Y(
        n26) );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n107), .A0N(\fifo_mem[0][6] ), .A1N(n11), .Y(
        n27) );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n106), .A0N(\fifo_mem[0][7] ), .A1N(n11), .Y(
        n28) );
  OAI2BB2X1M U26 ( .B0(n113), .B1(n15), .A0N(\fifo_mem[3][0] ), .A1N(n15), .Y(
        n45) );
  OAI2BB2X1M U27 ( .B0(n112), .B1(n15), .A0N(\fifo_mem[3][1] ), .A1N(n15), .Y(
        n46) );
  OAI2BB2X1M U28 ( .B0(n111), .B1(n15), .A0N(\fifo_mem[3][2] ), .A1N(n15), .Y(
        n47) );
  OAI2BB2X1M U29 ( .B0(n110), .B1(n15), .A0N(\fifo_mem[3][3] ), .A1N(n15), .Y(
        n48) );
  OAI2BB2X1M U30 ( .B0(n109), .B1(n15), .A0N(\fifo_mem[3][4] ), .A1N(n15), .Y(
        n49) );
  OAI2BB2X1M U31 ( .B0(n108), .B1(n15), .A0N(\fifo_mem[3][5] ), .A1N(n15), .Y(
        n50) );
  OAI2BB2X1M U32 ( .B0(n107), .B1(n15), .A0N(\fifo_mem[3][6] ), .A1N(n15), .Y(
        n51) );
  OAI2BB2X1M U33 ( .B0(n106), .B1(n15), .A0N(\fifo_mem[3][7] ), .A1N(n15), .Y(
        n52) );
  OAI2BB2X1M U34 ( .B0(n113), .B1(n13), .A0N(\fifo_mem[1][0] ), .A1N(n13), .Y(
        n29) );
  OAI2BB2X1M U35 ( .B0(n112), .B1(n13), .A0N(\fifo_mem[1][1] ), .A1N(n13), .Y(
        n30) );
  OAI2BB2X1M U36 ( .B0(n111), .B1(n13), .A0N(\fifo_mem[1][2] ), .A1N(n13), .Y(
        n31) );
  OAI2BB2X1M U37 ( .B0(n110), .B1(n13), .A0N(\fifo_mem[1][3] ), .A1N(n13), .Y(
        n32) );
  OAI2BB2X1M U38 ( .B0(n109), .B1(n13), .A0N(\fifo_mem[1][4] ), .A1N(n13), .Y(
        n33) );
  OAI2BB2X1M U39 ( .B0(n108), .B1(n13), .A0N(\fifo_mem[1][5] ), .A1N(n13), .Y(
        n34) );
  OAI2BB2X1M U40 ( .B0(n107), .B1(n13), .A0N(\fifo_mem[1][6] ), .A1N(n13), .Y(
        n35) );
  OAI2BB2X1M U41 ( .B0(n106), .B1(n13), .A0N(\fifo_mem[1][7] ), .A1N(n13), .Y(
        n36) );
  OAI2BB2X1M U42 ( .B0(n113), .B1(n16), .A0N(\fifo_mem[4][0] ), .A1N(n16), .Y(
        n53) );
  OAI2BB2X1M U43 ( .B0(n112), .B1(n16), .A0N(\fifo_mem[4][1] ), .A1N(n16), .Y(
        n54) );
  OAI2BB2X1M U44 ( .B0(n111), .B1(n16), .A0N(\fifo_mem[4][2] ), .A1N(n16), .Y(
        n55) );
  OAI2BB2X1M U45 ( .B0(n110), .B1(n16), .A0N(\fifo_mem[4][3] ), .A1N(n16), .Y(
        n56) );
  OAI2BB2X1M U46 ( .B0(n109), .B1(n16), .A0N(\fifo_mem[4][4] ), .A1N(n16), .Y(
        n57) );
  OAI2BB2X1M U47 ( .B0(n108), .B1(n16), .A0N(\fifo_mem[4][5] ), .A1N(n16), .Y(
        n58) );
  OAI2BB2X1M U48 ( .B0(n107), .B1(n16), .A0N(\fifo_mem[4][6] ), .A1N(n16), .Y(
        n59) );
  OAI2BB2X1M U49 ( .B0(n106), .B1(n16), .A0N(\fifo_mem[4][7] ), .A1N(n16), .Y(
        n60) );
  INVX2M U50 ( .A(wdata[0]), .Y(n113) );
  OAI2BB2X1M U51 ( .B0(n113), .B1(n96), .A0N(\fifo_mem[2][0] ), .A1N(n96), .Y(
        n37) );
  OAI2BB2X1M U52 ( .B0(n112), .B1(n96), .A0N(\fifo_mem[2][1] ), .A1N(n96), .Y(
        n38) );
  OAI2BB2X1M U53 ( .B0(n111), .B1(n96), .A0N(\fifo_mem[2][2] ), .A1N(n96), .Y(
        n39) );
  OAI2BB2X1M U54 ( .B0(n110), .B1(n96), .A0N(\fifo_mem[2][3] ), .A1N(n96), .Y(
        n40) );
  OAI2BB2X1M U55 ( .B0(n109), .B1(n96), .A0N(\fifo_mem[2][4] ), .A1N(n96), .Y(
        n41) );
  OAI2BB2X1M U56 ( .B0(n108), .B1(n96), .A0N(\fifo_mem[2][5] ), .A1N(n96), .Y(
        n42) );
  OAI2BB2X1M U57 ( .B0(n107), .B1(n96), .A0N(\fifo_mem[2][6] ), .A1N(n96), .Y(
        n43) );
  OAI2BB2X1M U58 ( .B0(n106), .B1(n96), .A0N(\fifo_mem[2][7] ), .A1N(n96), .Y(
        n44) );
  OAI2BB2X1M U59 ( .B0(n113), .B1(n95), .A0N(\fifo_mem[5][0] ), .A1N(n95), .Y(
        n61) );
  OAI2BB2X1M U60 ( .B0(n112), .B1(n95), .A0N(\fifo_mem[5][1] ), .A1N(n95), .Y(
        n62) );
  OAI2BB2X1M U61 ( .B0(n111), .B1(n95), .A0N(\fifo_mem[5][2] ), .A1N(n95), .Y(
        n63) );
  OAI2BB2X1M U62 ( .B0(n110), .B1(n95), .A0N(\fifo_mem[5][3] ), .A1N(n95), .Y(
        n64) );
  OAI2BB2X1M U63 ( .B0(n109), .B1(n95), .A0N(\fifo_mem[5][4] ), .A1N(n95), .Y(
        n65) );
  OAI2BB2X1M U64 ( .B0(n108), .B1(n95), .A0N(\fifo_mem[5][5] ), .A1N(n95), .Y(
        n66) );
  OAI2BB2X1M U65 ( .B0(n107), .B1(n95), .A0N(\fifo_mem[5][6] ), .A1N(n95), .Y(
        n67) );
  OAI2BB2X1M U66 ( .B0(n106), .B1(n95), .A0N(\fifo_mem[5][7] ), .A1N(n95), .Y(
        n68) );
  OAI2BB2X1M U67 ( .B0(n113), .B1(n94), .A0N(\fifo_mem[6][0] ), .A1N(n94), .Y(
        n69) );
  OAI2BB2X1M U68 ( .B0(n112), .B1(n94), .A0N(\fifo_mem[6][1] ), .A1N(n94), .Y(
        n70) );
  OAI2BB2X1M U69 ( .B0(n111), .B1(n94), .A0N(\fifo_mem[6][2] ), .A1N(n94), .Y(
        n71) );
  OAI2BB2X1M U70 ( .B0(n110), .B1(n94), .A0N(\fifo_mem[6][3] ), .A1N(n94), .Y(
        n72) );
  OAI2BB2X1M U71 ( .B0(n109), .B1(n94), .A0N(\fifo_mem[6][4] ), .A1N(n94), .Y(
        n73) );
  OAI2BB2X1M U72 ( .B0(n108), .B1(n94), .A0N(\fifo_mem[6][5] ), .A1N(n94), .Y(
        n74) );
  OAI2BB2X1M U73 ( .B0(n107), .B1(n94), .A0N(\fifo_mem[6][6] ), .A1N(n94), .Y(
        n75) );
  OAI2BB2X1M U74 ( .B0(n106), .B1(n94), .A0N(\fifo_mem[6][7] ), .A1N(n94), .Y(
        n76) );
  OAI2BB2X1M U75 ( .B0(n113), .B1(n93), .A0N(\fifo_mem[7][0] ), .A1N(n93), .Y(
        n77) );
  OAI2BB2X1M U76 ( .B0(n112), .B1(n93), .A0N(\fifo_mem[7][1] ), .A1N(n93), .Y(
        n78) );
  OAI2BB2X1M U77 ( .B0(n111), .B1(n93), .A0N(\fifo_mem[7][2] ), .A1N(n93), .Y(
        n79) );
  OAI2BB2X1M U78 ( .B0(n110), .B1(n93), .A0N(\fifo_mem[7][3] ), .A1N(n93), .Y(
        n80) );
  OAI2BB2X1M U79 ( .B0(n109), .B1(n93), .A0N(\fifo_mem[7][4] ), .A1N(n93), .Y(
        n81) );
  OAI2BB2X1M U80 ( .B0(n108), .B1(n93), .A0N(\fifo_mem[7][5] ), .A1N(n93), .Y(
        n82) );
  OAI2BB2X1M U81 ( .B0(n107), .B1(n93), .A0N(\fifo_mem[7][6] ), .A1N(n93), .Y(
        n83) );
  OAI2BB2X1M U82 ( .B0(n106), .B1(n93), .A0N(\fifo_mem[7][7] ), .A1N(n93), .Y(
        n84) );
  AND2X2M U83 ( .A(waddr[2]), .B(wclken), .Y(n17) );
  NAND3X2M U84 ( .A(n12), .B(n104), .C(waddr[1]), .Y(n14) );
  NAND3X2M U85 ( .A(waddr[0]), .B(n105), .C(n17), .Y(n18) );
  NAND3X2M U86 ( .A(waddr[1]), .B(n104), .C(n17), .Y(n19) );
  NAND3X2M U87 ( .A(waddr[1]), .B(waddr[0]), .C(n17), .Y(n20) );
  INVX2M U88 ( .A(wdata[1]), .Y(n112) );
  INVX2M U89 ( .A(wdata[2]), .Y(n111) );
  INVX2M U90 ( .A(wdata[3]), .Y(n110) );
  INVX2M U91 ( .A(wdata[4]), .Y(n109) );
  INVX2M U92 ( .A(wdata[5]), .Y(n108) );
  INVX2M U93 ( .A(wdata[6]), .Y(n107) );
  INVX2M U94 ( .A(wdata[7]), .Y(n106) );
  INVX2M U95 ( .A(waddr[1]), .Y(n105) );
  INVX2M U96 ( .A(waddr[0]), .Y(n104) );
  MX2X2M U97 ( .A(n2), .B(n1), .S0(N12), .Y(rdata[0]) );
  MX4X1M U98 ( .A(\fifo_mem[4][0] ), .B(\fifo_mem[5][0] ), .C(\fifo_mem[6][0] ), .D(\fifo_mem[7][0] ), .S0(n91), .S1(N11), .Y(n1) );
  MX4X1M U99 ( .A(\fifo_mem[0][0] ), .B(\fifo_mem[1][0] ), .C(\fifo_mem[2][0] ), .D(\fifo_mem[3][0] ), .S0(n92), .S1(N11), .Y(n2) );
  MX2X2M U100 ( .A(n4), .B(n3), .S0(N12), .Y(rdata[1]) );
  MX4X1M U101 ( .A(\fifo_mem[4][1] ), .B(\fifo_mem[5][1] ), .C(
        \fifo_mem[6][1] ), .D(\fifo_mem[7][1] ), .S0(n91), .S1(N11), .Y(n3) );
  MX4X1M U102 ( .A(\fifo_mem[0][1] ), .B(\fifo_mem[1][1] ), .C(
        \fifo_mem[2][1] ), .D(\fifo_mem[3][1] ), .S0(n92), .S1(N11), .Y(n4) );
  MX2X2M U103 ( .A(n6), .B(n5), .S0(N12), .Y(rdata[2]) );
  MX4X1M U104 ( .A(\fifo_mem[4][2] ), .B(\fifo_mem[5][2] ), .C(
        \fifo_mem[6][2] ), .D(\fifo_mem[7][2] ), .S0(n91), .S1(N11), .Y(n5) );
  MX4X1M U105 ( .A(\fifo_mem[0][2] ), .B(\fifo_mem[1][2] ), .C(
        \fifo_mem[2][2] ), .D(\fifo_mem[3][2] ), .S0(n92), .S1(N11), .Y(n6) );
  MX2X2M U106 ( .A(n8), .B(n7), .S0(N12), .Y(rdata[3]) );
  MX4X1M U107 ( .A(\fifo_mem[4][3] ), .B(\fifo_mem[5][3] ), .C(
        \fifo_mem[6][3] ), .D(\fifo_mem[7][3] ), .S0(n91), .S1(N11), .Y(n7) );
  MX4X1M U108 ( .A(\fifo_mem[0][3] ), .B(\fifo_mem[1][3] ), .C(
        \fifo_mem[2][3] ), .D(\fifo_mem[3][3] ), .S0(n92), .S1(N11), .Y(n8) );
  MX2X2M U109 ( .A(n10), .B(n9), .S0(N12), .Y(rdata[4]) );
  MX4X1M U110 ( .A(\fifo_mem[4][4] ), .B(\fifo_mem[5][4] ), .C(
        \fifo_mem[6][4] ), .D(\fifo_mem[7][4] ), .S0(n91), .S1(N11), .Y(n9) );
  MX4X1M U111 ( .A(\fifo_mem[0][4] ), .B(\fifo_mem[1][4] ), .C(
        \fifo_mem[2][4] ), .D(\fifo_mem[3][4] ), .S0(n92), .S1(N11), .Y(n10)
         );
  MX2X2M U112 ( .A(n86), .B(n85), .S0(N12), .Y(rdata[5]) );
  MX4X1M U113 ( .A(\fifo_mem[4][5] ), .B(\fifo_mem[5][5] ), .C(
        \fifo_mem[6][5] ), .D(\fifo_mem[7][5] ), .S0(n91), .S1(N11), .Y(n85)
         );
  MX4X1M U114 ( .A(\fifo_mem[0][5] ), .B(\fifo_mem[1][5] ), .C(
        \fifo_mem[2][5] ), .D(\fifo_mem[3][5] ), .S0(n92), .S1(N11), .Y(n86)
         );
  MX2X2M U115 ( .A(n88), .B(n87), .S0(N12), .Y(rdata[6]) );
  MX4X1M U116 ( .A(\fifo_mem[4][6] ), .B(\fifo_mem[5][6] ), .C(
        \fifo_mem[6][6] ), .D(\fifo_mem[7][6] ), .S0(n91), .S1(N11), .Y(n87)
         );
  MX4X1M U117 ( .A(\fifo_mem[0][6] ), .B(\fifo_mem[1][6] ), .C(
        \fifo_mem[2][6] ), .D(\fifo_mem[3][6] ), .S0(n92), .S1(N11), .Y(n88)
         );
  MX2X2M U118 ( .A(n90), .B(n89), .S0(N12), .Y(rdata[7]) );
  MX4X1M U119 ( .A(\fifo_mem[4][7] ), .B(\fifo_mem[5][7] ), .C(
        \fifo_mem[6][7] ), .D(\fifo_mem[7][7] ), .S0(n91), .S1(N11), .Y(n89)
         );
  MX4X1M U120 ( .A(\fifo_mem[0][7] ), .B(\fifo_mem[1][7] ), .C(
        \fifo_mem[2][7] ), .D(\fifo_mem[3][7] ), .S0(n92), .S1(N11), .Y(n90)
         );
  BUFX2M U121 ( .A(N10), .Y(n92) );
  BUFX2M U122 ( .A(N10), .Y(n91) );
endmodule


module FIFO_WR ( winc, wclk, wrst_n, wg2_rptr, wptr, waddr, wfull );
  input [3:0] wg2_rptr;
  output [3:0] wptr;
  output [2:0] waddr;
  input winc, wclk, wrst_n;
  output wfull;
  wire   \waddr_ptr[3] , N7, N8, N9, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n5;

  DFFRQX2M \waddr_ptr_reg[3]  ( .D(n11), .CK(wclk), .RN(wrst_n), .Q(
        \waddr_ptr[3] ) );
  DFFRQX2M \wptr_reg[0]  ( .D(N9), .CK(wclk), .RN(wrst_n), .Q(wptr[0]) );
  DFFRQX2M \wptr_reg[1]  ( .D(N8), .CK(wclk), .RN(wrst_n), .Q(wptr[1]) );
  DFFRQX2M \waddr_ptr_reg[2]  ( .D(n12), .CK(wclk), .RN(wrst_n), .Q(waddr[2])
         );
  DFFRQX2M \waddr_ptr_reg[0]  ( .D(n14), .CK(wclk), .RN(wrst_n), .Q(waddr[0])
         );
  DFFRQX2M \wptr_reg[3]  ( .D(\waddr_ptr[3] ), .CK(wclk), .RN(wrst_n), .Q(
        wptr[3]) );
  DFFRQX2M \wptr_reg[2]  ( .D(N7), .CK(wclk), .RN(wrst_n), .Q(wptr[2]) );
  DFFRQX2M \waddr_ptr_reg[1]  ( .D(n13), .CK(wclk), .RN(wrst_n), .Q(waddr[1])
         );
  NOR2X2M U3 ( .A(n5), .B(n6), .Y(n4) );
  INVX2M U4 ( .A(n1), .Y(wfull) );
  NAND2X2M U5 ( .A(winc), .B(n1), .Y(n6) );
  XNOR2X2M U6 ( .A(waddr[2]), .B(n3), .Y(n12) );
  XNOR2X2M U7 ( .A(\waddr_ptr[3] ), .B(n2), .Y(n11) );
  NAND2BX2M U8 ( .AN(n3), .B(waddr[2]), .Y(n2) );
  NAND4X2M U9 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n1) );
  XNOR2X2M U10 ( .A(wptr[0]), .B(wg2_rptr[0]), .Y(n7) );
  XNOR2X2M U11 ( .A(wptr[1]), .B(wg2_rptr[1]), .Y(n8) );
  CLKXOR2X2M U12 ( .A(wptr[2]), .B(wg2_rptr[2]), .Y(n9) );
  NAND2X2M U13 ( .A(waddr[1]), .B(n4), .Y(n3) );
  CLKXOR2X2M U14 ( .A(wptr[3]), .B(wg2_rptr[3]), .Y(n10) );
  CLKXOR2X2M U15 ( .A(waddr[1]), .B(n4), .Y(n13) );
  XNOR2X2M U16 ( .A(waddr[1]), .B(n5), .Y(N9) );
  XNOR2X2M U17 ( .A(waddr[0]), .B(n6), .Y(n14) );
  INVX2M U18 ( .A(waddr[0]), .Y(n5) );
  CLKXOR2X2M U19 ( .A(waddr[2]), .B(waddr[1]), .Y(N8) );
  CLKXOR2X2M U20 ( .A(\waddr_ptr[3] ), .B(waddr[2]), .Y(N7) );
endmodule


module FIFO_RD ( rinc, rclk, rrst_n, rg2_wptr, rptr, raddr, rempty );
  input [3:0] rg2_wptr;
  output [3:0] rptr;
  output [2:0] raddr;
  input rinc, rclk, rrst_n;
  output rempty;
  wire   \raddr_ptr[3] , N7, N8, N9, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n1;

  DFFRQX1M \rptr_reg[3]  ( .D(\raddr_ptr[3] ), .CK(rclk), .RN(rrst_n), .Q(
        rptr[3]) );
  DFFRQX1M \rptr_reg[2]  ( .D(N7), .CK(rclk), .RN(rrst_n), .Q(rptr[2]) );
  DFFRQX1M \rptr_reg[0]  ( .D(N9), .CK(rclk), .RN(rrst_n), .Q(rptr[0]) );
  DFFRQX1M \raddr_ptr_reg[0]  ( .D(n14), .CK(rclk), .RN(rrst_n), .Q(raddr[0])
         );
  DFFRQX1M \rptr_reg[1]  ( .D(N8), .CK(rclk), .RN(rrst_n), .Q(rptr[1]) );
  DFFRQX1M \raddr_ptr_reg[1]  ( .D(n13), .CK(rclk), .RN(rrst_n), .Q(raddr[1])
         );
  DFFRQX1M \raddr_ptr_reg[2]  ( .D(n12), .CK(rclk), .RN(rrst_n), .Q(raddr[2])
         );
  DFFRQX1M \raddr_ptr_reg[3]  ( .D(n11), .CK(rclk), .RN(rrst_n), .Q(
        \raddr_ptr[3] ) );
  NOR2X2M U3 ( .A(n1), .B(n6), .Y(n5) );
  INVX2M U4 ( .A(n2), .Y(rempty) );
  XNOR2X2M U5 ( .A(rptr[1]), .B(rg2_wptr[1]), .Y(n7) );
  XNOR2X2M U6 ( .A(raddr[2]), .B(n4), .Y(n12) );
  XNOR2X2M U7 ( .A(\raddr_ptr[3] ), .B(n3), .Y(n11) );
  NAND2BX2M U8 ( .AN(n4), .B(raddr[2]), .Y(n3) );
  NAND4X2M U9 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n2) );
  XNOR2X2M U10 ( .A(rptr[3]), .B(rg2_wptr[3]), .Y(n9) );
  XNOR2X2M U11 ( .A(rptr[2]), .B(rg2_wptr[2]), .Y(n10) );
  XNOR2X2M U12 ( .A(rptr[0]), .B(rg2_wptr[0]), .Y(n8) );
  NAND2X2M U13 ( .A(raddr[1]), .B(n5), .Y(n4) );
  NAND2X2M U14 ( .A(rinc), .B(n2), .Y(n6) );
  INVX2M U15 ( .A(raddr[0]), .Y(n1) );
  CLKXOR2X2M U16 ( .A(raddr[1]), .B(n5), .Y(n13) );
  XNOR2X2M U17 ( .A(raddr[1]), .B(n1), .Y(N9) );
  XNOR2X2M U18 ( .A(raddr[0]), .B(n6), .Y(n14) );
  CLKXOR2X2M U19 ( .A(raddr[2]), .B(raddr[1]), .Y(N8) );
  CLKXOR2X2M U20 ( .A(\raddr_ptr[3] ), .B(raddr[2]), .Y(N7) );
endmodule


module DF_SYNC_0 ( data_in, CLK, RST_n, data_out );
  input [3:0] data_in;
  output [3:0] data_out;
  input CLK, RST_n;

  wire   [3:0] ff;

  DFFRQX2M \data_out_reg[3]  ( .D(ff[3]), .CK(CLK), .RN(RST_n), .Q(data_out[3]) );
  DFFRQX2M \data_out_reg[2]  ( .D(ff[2]), .CK(CLK), .RN(RST_n), .Q(data_out[2]) );
  DFFRQX2M \data_out_reg[1]  ( .D(ff[1]), .CK(CLK), .RN(RST_n), .Q(data_out[1]) );
  DFFRQX2M \data_out_reg[0]  ( .D(ff[0]), .CK(CLK), .RN(RST_n), .Q(data_out[0]) );
  DFFRQX2M \ff_reg[3]  ( .D(data_in[3]), .CK(CLK), .RN(RST_n), .Q(ff[3]) );
  DFFRQX2M \ff_reg[2]  ( .D(data_in[2]), .CK(CLK), .RN(RST_n), .Q(ff[2]) );
  DFFRQX2M \ff_reg[1]  ( .D(data_in[1]), .CK(CLK), .RN(RST_n), .Q(ff[1]) );
  DFFRQX2M \ff_reg[0]  ( .D(data_in[0]), .CK(CLK), .RN(RST_n), .Q(ff[0]) );
endmodule


module DF_SYNC_1 ( data_in, CLK, RST_n, data_out );
  input [3:0] data_in;
  output [3:0] data_out;
  input CLK, RST_n;

  wire   [3:0] ff;

  DFFRQX2M \data_out_reg[1]  ( .D(ff[1]), .CK(CLK), .RN(RST_n), .Q(data_out[1]) );
  DFFRQX2M \data_out_reg[0]  ( .D(ff[0]), .CK(CLK), .RN(RST_n), .Q(data_out[0]) );
  DFFRQX2M \data_out_reg[3]  ( .D(ff[3]), .CK(CLK), .RN(RST_n), .Q(data_out[3]) );
  DFFRQX2M \data_out_reg[2]  ( .D(ff[2]), .CK(CLK), .RN(RST_n), .Q(data_out[2]) );
  DFFRQX2M \ff_reg[3]  ( .D(data_in[3]), .CK(CLK), .RN(RST_n), .Q(ff[3]) );
  DFFRQX2M \ff_reg[2]  ( .D(data_in[2]), .CK(CLK), .RN(RST_n), .Q(ff[2]) );
  DFFRQX2M \ff_reg[1]  ( .D(data_in[1]), .CK(CLK), .RN(RST_n), .Q(ff[1]) );
  DFFRQX2M \ff_reg[0]  ( .D(data_in[0]), .CK(CLK), .RN(RST_n), .Q(ff[0]) );
endmodule


module FIFO_TOP ( wclk, wrst_n, winc, rclk, rrst_n, rinc, wdata, wfull, rempty, 
        rdata );
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wrst_n, winc, rclk, rrst_n, rinc;
  output wfull, rempty;
  wire   _0_net_, n1, n2;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rg2_wptr;
  wire   [3:0] wptr;
  wire   [3:0] wg2_rptr;
  wire   [3:0] rptr;

  FIFO_MEM_CNTRL FIFO_MEM_CNTRL_BLOCK ( .wclken(_0_net_), .RST_n(n1), .CLK(
        wclk), .wdata(wdata), .waddr(waddr), .raddr(raddr), .rdata(rdata) );
  FIFO_WR FIFO_WR_BLOCK ( .winc(winc), .wclk(wclk), .wrst_n(n1), .wg2_rptr(
        rg2_wptr), .wptr(wptr), .waddr(waddr), .wfull(wfull) );
  FIFO_RD FIFO_RD_BLOCK ( .rinc(rinc), .rclk(rclk), .rrst_n(rrst_n), 
        .rg2_wptr(wg2_rptr), .rptr(rptr), .raddr(raddr), .rempty(rempty) );
  DF_SYNC_0 DF_SYNC_U0 ( .data_in(wptr), .CLK(wclk), .RST_n(n1), .data_out(
        wg2_rptr) );
  DF_SYNC_1 DF_SYNC_U1 ( .data_in(rptr), .CLK(rclk), .RST_n(rrst_n), 
        .data_out(rg2_wptr) );
  NOR2BX2M U1 ( .AN(winc), .B(wfull), .Y(_0_net_) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(wrst_n), .Y(n2) );
endmodule


module PULSE_GEN ( CLK, RST, lvl_sig, pulse_sig );
  input CLK, RST, lvl_sig;
  output pulse_sig;
  wire   pls_flop, rcv_flop;

  DFFRQX1M pls_flop_reg ( .D(rcv_flop), .CK(CLK), .RN(RST), .Q(pls_flop) );
  DFFRQX1M rcv_flop_reg ( .D(lvl_sig), .CK(CLK), .RN(RST), .Q(rcv_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module ClkDiv_0 ( I_ref_clk, I_rst_n, I_clk_en, I_div_ratio, O_div_clk );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst_n, I_clk_en;
  output O_div_clk;
  wire   even_cond, flag, N6, N7, N8, N9, N10, N11, o_clk, N22, N23, N24, N26,
         N27, N28, N29, N30, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         \add_46/carry[4] , \add_46/carry[3] , \add_46/carry[2] ,
         \add_18/carry[4] , \add_18/carry[3] , \add_18/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35;
  wire   [4:0] half;
  wire   [4:0] counter;

  DFFRQX2M o_clk_reg ( .D(n21), .CK(I_ref_clk), .RN(I_rst_n), .Q(o_clk) );
  DFFRQX2M flag_reg ( .D(n20), .CK(I_ref_clk), .RN(I_rst_n), .Q(flag) );
  DFFRQX2M \counter_reg[4]  ( .D(N30), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[0]  ( .D(N26), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[3]  ( .D(N29), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N28), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N27), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        counter[1]) );
  NAND3X2M U3 ( .A(n32), .B(n14), .C(n33), .Y(n15) );
  ADDHX1M U4 ( .A(half[2]), .B(\add_18/carry[2] ), .CO(\add_18/carry[3] ), .S(
        N7) );
  MX2X2M U5 ( .A(I_ref_clk), .B(o_clk), .S0(n33), .Y(O_div_clk) );
  NAND3X2M U6 ( .A(even_cond), .B(n34), .C(n33), .Y(n14) );
  INVX2M U7 ( .A(n12), .Y(n32) );
  NOR2BX2M U8 ( .AN(N22), .B(n15), .Y(N27) );
  NOR2BX2M U9 ( .AN(N23), .B(n15), .Y(N28) );
  NOR2BX2M U10 ( .AN(N24), .B(n15), .Y(N29) );
  INVX2M U11 ( .A(n16), .Y(n33) );
  ADDHX1M U12 ( .A(half[3]), .B(\add_18/carry[3] ), .CO(\add_18/carry[4] ), 
        .S(N8) );
  ADDHX1M U13 ( .A(half[1]), .B(half[0]), .CO(\add_18/carry[2] ), .S(N6) );
  ADDHX1M U14 ( .A(half[4]), .B(\add_18/carry[4] ), .CO(N10), .S(N9) );
  NOR3X2M U15 ( .A(n17), .B(n16), .C(n34), .Y(n12) );
  AOI22X1M U16 ( .A0(flag), .A1(N11), .B0(even_cond), .B1(n35), .Y(n17) );
  OAI2BB2X1M U17 ( .B0(n12), .B1(n35), .A0N(n12), .A1N(o_clk), .Y(n20) );
  NOR2X2M U18 ( .A(n1), .B(n15), .Y(N30) );
  XNOR2X2M U19 ( .A(\add_46/carry[4] ), .B(counter[4]), .Y(n1) );
  NOR2X2M U20 ( .A(counter[0]), .B(n15), .Y(N26) );
  CLKXOR2X2M U21 ( .A(n13), .B(o_clk), .Y(n21) );
  NAND2X2M U22 ( .A(n14), .B(n32), .Y(n13) );
  ADDHX1M U23 ( .A(counter[1]), .B(counter[0]), .CO(\add_46/carry[2] ), .S(N22) );
  ADDHX1M U24 ( .A(counter[2]), .B(\add_46/carry[2] ), .CO(\add_46/carry[3] ), 
        .S(N23) );
  INVX2M U25 ( .A(flag), .Y(n35) );
  ADDHX1M U26 ( .A(counter[3]), .B(\add_46/carry[3] ), .CO(\add_46/carry[4] ), 
        .S(N24) );
  OAI2BB1X2M U27 ( .A0N(n18), .A1N(n19), .B0(I_clk_en), .Y(n16) );
  NOR3X2M U28 ( .A(I_div_ratio[1]), .B(I_div_ratio[3]), .C(I_div_ratio[2]), 
        .Y(n18) );
  NOR4X1M U29 ( .A(I_div_ratio[7]), .B(I_div_ratio[6]), .C(I_div_ratio[5]), 
        .D(I_div_ratio[4]), .Y(n19) );
  INVX2M U30 ( .A(I_div_ratio[0]), .Y(n34) );
  INVX2M U31 ( .A(I_div_ratio[3]), .Y(n5) );
  CLKINVX1M U32 ( .A(I_div_ratio[1]), .Y(half[0]) );
  NOR2X1M U33 ( .A(I_div_ratio[2]), .B(I_div_ratio[1]), .Y(n2) );
  AO21XLM U34 ( .A0(I_div_ratio[1]), .A1(I_div_ratio[2]), .B0(n2), .Y(half[1])
         );
  CLKNAND2X2M U35 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1M U36 ( .A0(n2), .A1(n5), .B0(n3), .Y(half[2]) );
  XNOR2X1M U37 ( .A(I_div_ratio[4]), .B(n3), .Y(half[3]) );
  NOR2X1M U38 ( .A(I_div_ratio[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U39 ( .A(I_div_ratio[5]), .B(n4), .Y(half[4]) );
  CLKXOR2X2M U40 ( .A(half[2]), .B(counter[2]), .Y(n23) );
  NOR2BX1M U41 ( .AN(half[0]), .B(counter[0]), .Y(n6) );
  OAI2B2X1M U42 ( .A1N(counter[1]), .A0(n6), .B0(half[1]), .B1(n6), .Y(n9) );
  NOR2BX1M U43 ( .AN(counter[0]), .B(half[0]), .Y(n7) );
  OAI2B2X1M U44 ( .A1N(half[1]), .A0(n7), .B0(counter[1]), .B1(n7), .Y(n8) );
  CLKNAND2X2M U45 ( .A(n9), .B(n8), .Y(n22) );
  CLKXOR2X2M U46 ( .A(half[3]), .B(counter[3]), .Y(n11) );
  CLKXOR2X2M U47 ( .A(half[4]), .B(counter[4]), .Y(n10) );
  NOR4X1M U48 ( .A(n23), .B(n22), .C(n11), .D(n10), .Y(even_cond) );
  NOR2BX1M U49 ( .AN(I_div_ratio[1]), .B(counter[0]), .Y(n24) );
  OAI2B2X1M U50 ( .A1N(counter[1]), .A0(n24), .B0(N6), .B1(n24), .Y(n27) );
  NOR2BX1M U51 ( .AN(counter[0]), .B(I_div_ratio[1]), .Y(n25) );
  OAI2B2X1M U52 ( .A1N(N6), .A0(n25), .B0(counter[1]), .B1(n25), .Y(n26) );
  NAND3BX1M U53 ( .AN(N10), .B(n27), .C(n26), .Y(n31) );
  CLKXOR2X2M U54 ( .A(N9), .B(counter[4]), .Y(n30) );
  CLKXOR2X2M U55 ( .A(N7), .B(counter[2]), .Y(n29) );
  CLKXOR2X2M U56 ( .A(N8), .B(counter[3]), .Y(n28) );
  NOR4X1M U57 ( .A(n31), .B(n30), .C(n29), .D(n28), .Y(N11) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
  NOR4X1M U11 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND4BX1M U12 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U13 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NAND3X2M U14 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  NOR3X2M U15 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X2M U16 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  INVX2M U17 ( .A(IN[2]), .Y(n15) );
  INVX2M U18 ( .A(IN[1]), .Y(n16) );
  OAI211X2M U19 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NAND2X2M U20 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U21 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  INVX2M U22 ( .A(IN[0]), .Y(n17) );
  INVX2M U23 ( .A(IN[5]), .Y(n14) );
endmodule


module ClkDiv_1 ( I_ref_clk, I_rst_n, I_clk_en, I_div_ratio, O_div_clk );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst_n, I_clk_en;
  output O_div_clk;
  wire   even_cond, flag, N6, N7, N8, N9, N10, N11, o_clk, N22, N23, N24, N26,
         N27, N28, N29, N30, \add_46/carry[4] , \add_46/carry[3] ,
         \add_46/carry[2] , \add_18/carry[4] , \add_18/carry[3] ,
         \add_18/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45;
  wire   [4:0] half;
  wire   [4:0] counter;

  DFFRQX2M o_clk_reg ( .D(n36), .CK(I_ref_clk), .RN(I_rst_n), .Q(o_clk) );
  DFFRQX2M flag_reg ( .D(n37), .CK(I_ref_clk), .RN(I_rst_n), .Q(flag) );
  DFFRQX2M \counter_reg[4]  ( .D(N30), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[0]  ( .D(N26), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[3]  ( .D(N29), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N28), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N27), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        counter[1]) );
  ADDHX1M U3 ( .A(half[2]), .B(\add_18/carry[2] ), .CO(\add_18/carry[3] ), .S(
        N7) );
  NAND3X2M U4 ( .A(n32), .B(n43), .C(n35), .Y(n42) );
  ADDHX1M U5 ( .A(half[1]), .B(half[0]), .CO(\add_18/carry[2] ), .S(N6) );
  MX2X2M U6 ( .A(I_ref_clk), .B(o_clk), .S0(n35), .Y(O_div_clk) );
  NAND3X2M U7 ( .A(even_cond), .B(n34), .C(n35), .Y(n43) );
  INVX2M U8 ( .A(n45), .Y(n32) );
  NOR2BX2M U9 ( .AN(N22), .B(n42), .Y(N27) );
  NOR2BX2M U10 ( .AN(N23), .B(n42), .Y(N28) );
  NOR2BX2M U11 ( .AN(N24), .B(n42), .Y(N29) );
  INVX2M U12 ( .A(n41), .Y(n35) );
  ADDHX1M U13 ( .A(half[3]), .B(\add_18/carry[3] ), .CO(\add_18/carry[4] ), 
        .S(N8) );
  INVX2M U14 ( .A(I_div_ratio[3]), .Y(n5) );
  ADDHX1M U15 ( .A(half[4]), .B(\add_18/carry[4] ), .CO(N10), .S(N9) );
  NOR3X2M U16 ( .A(n40), .B(n41), .C(n34), .Y(n45) );
  AOI22X1M U17 ( .A0(flag), .A1(N11), .B0(even_cond), .B1(n33), .Y(n40) );
  OAI2BB2X1M U18 ( .B0(n45), .B1(n33), .A0N(n45), .A1N(o_clk), .Y(n37) );
  NOR2X2M U19 ( .A(n1), .B(n42), .Y(N30) );
  XNOR2X2M U20 ( .A(\add_46/carry[4] ), .B(counter[4]), .Y(n1) );
  NOR2X2M U21 ( .A(counter[0]), .B(n42), .Y(N26) );
  CLKXOR2X2M U22 ( .A(n44), .B(o_clk), .Y(n36) );
  NAND2X2M U23 ( .A(n43), .B(n32), .Y(n44) );
  ADDHX1M U24 ( .A(counter[1]), .B(counter[0]), .CO(\add_46/carry[2] ), .S(N22) );
  ADDHX1M U25 ( .A(counter[2]), .B(\add_46/carry[2] ), .CO(\add_46/carry[3] ), 
        .S(N23) );
  INVX2M U26 ( .A(flag), .Y(n33) );
  ADDHX1M U27 ( .A(counter[3]), .B(\add_46/carry[3] ), .CO(\add_46/carry[4] ), 
        .S(N24) );
  OAI2BB1X2M U28 ( .A0N(n39), .A1N(n38), .B0(I_clk_en), .Y(n41) );
  NOR4X1M U29 ( .A(I_div_ratio[7]), .B(I_div_ratio[6]), .C(I_div_ratio[5]), 
        .D(I_div_ratio[4]), .Y(n38) );
  NOR3X2M U30 ( .A(I_div_ratio[1]), .B(I_div_ratio[3]), .C(I_div_ratio[2]), 
        .Y(n39) );
  INVX2M U31 ( .A(I_div_ratio[0]), .Y(n34) );
  CLKINVX1M U32 ( .A(I_div_ratio[1]), .Y(half[0]) );
  NOR2X1M U33 ( .A(I_div_ratio[2]), .B(I_div_ratio[1]), .Y(n2) );
  AO21XLM U34 ( .A0(I_div_ratio[1]), .A1(I_div_ratio[2]), .B0(n2), .Y(half[1])
         );
  CLKNAND2X2M U35 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1M U36 ( .A0(n2), .A1(n5), .B0(n3), .Y(half[2]) );
  XNOR2X1M U37 ( .A(I_div_ratio[4]), .B(n3), .Y(half[3]) );
  NOR2X1M U38 ( .A(I_div_ratio[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U39 ( .A(I_div_ratio[5]), .B(n4), .Y(half[4]) );
  CLKXOR2X2M U40 ( .A(half[2]), .B(counter[2]), .Y(n23) );
  NOR2BX1M U41 ( .AN(half[0]), .B(counter[0]), .Y(n6) );
  OAI2B2X1M U42 ( .A1N(counter[1]), .A0(n6), .B0(half[1]), .B1(n6), .Y(n9) );
  NOR2BX1M U43 ( .AN(counter[0]), .B(half[0]), .Y(n7) );
  OAI2B2X1M U44 ( .A1N(half[1]), .A0(n7), .B0(counter[1]), .B1(n7), .Y(n8) );
  CLKNAND2X2M U45 ( .A(n9), .B(n8), .Y(n22) );
  CLKXOR2X2M U46 ( .A(half[3]), .B(counter[3]), .Y(n11) );
  CLKXOR2X2M U47 ( .A(half[4]), .B(counter[4]), .Y(n10) );
  NOR4X1M U48 ( .A(n23), .B(n22), .C(n11), .D(n10), .Y(even_cond) );
  NOR2BX1M U49 ( .AN(I_div_ratio[1]), .B(counter[0]), .Y(n24) );
  OAI2B2X1M U50 ( .A1N(counter[1]), .A0(n24), .B0(N6), .B1(n24), .Y(n27) );
  NOR2BX1M U51 ( .AN(counter[0]), .B(I_div_ratio[1]), .Y(n25) );
  OAI2B2X1M U52 ( .A1N(N6), .A0(n25), .B0(counter[1]), .B1(n25), .Y(n26) );
  NAND3BX1M U53 ( .AN(N10), .B(n27), .C(n26), .Y(n31) );
  CLKXOR2X2M U54 ( .A(N9), .B(counter[4]), .Y(n30) );
  CLKXOR2X2M U55 ( .A(N7), .B(counter[2]), .Y(n29) );
  CLKXOR2X2M U56 ( .A(N8), .B(counter[3]), .Y(n28) );
  NOR4X1M U57 ( .A(n31), .B(n30), .C(n29), .D(n28), .Y(N11) );
endmodule


module fsm ( ser_done, Data_Valid, PAR_EN, CLK, RST, mux_sel, busy, ser_en );
  output [1:0] mux_sel;
  input ser_done, Data_Valid, PAR_EN, CLK, RST;
  output busy, ser_en;
  wire   n4, n5, n6, n7, n8, n9, n1, n2, n3;
  wire   [2:0] PS;
  wire   [2:0] NS;

  DFFRQX1M \PS_reg[2]  ( .D(NS[2]), .CK(CLK), .RN(RST), .Q(PS[2]) );
  DFFRQX1M \PS_reg[1]  ( .D(NS[1]), .CK(CLK), .RN(RST), .Q(PS[1]) );
  DFFRQX1M \PS_reg[0]  ( .D(NS[0]), .CK(CLK), .RN(RST), .Q(PS[0]) );
  OAI21X2M U3 ( .A0(n1), .A1(n3), .B0(n2), .Y(mux_sel[1]) );
  OAI22X1M U4 ( .A0(PS[1]), .A1(PS[0]), .B0(n1), .B1(n5), .Y(mux_sel[0]) );
  NAND2X2M U5 ( .A(n6), .B(n3), .Y(n4) );
  NOR2X2M U6 ( .A(n8), .B(n5), .Y(NS[2]) );
  NAND2X2M U7 ( .A(PS[1]), .B(n3), .Y(n5) );
  INVX2M U8 ( .A(PS[2]), .Y(n3) );
  INVX2M U9 ( .A(PS[1]), .Y(n2) );
  INVX2M U10 ( .A(PS[0]), .Y(n1) );
  NAND3BX2M U11 ( .AN(n4), .B(PS[1]), .C(ser_done), .Y(ser_en) );
  NAND2X2M U12 ( .A(PS[0]), .B(n3), .Y(n6) );
  NAND3X2M U13 ( .A(n6), .B(n5), .C(n7), .Y(busy) );
  NAND3X2M U14 ( .A(n1), .B(n2), .C(PS[2]), .Y(n7) );
  NOR2X2M U15 ( .A(n9), .B(n4), .Y(NS[0]) );
  AOI32X1M U16 ( .A0(ser_done), .A1(PS[1]), .A2(PAR_EN), .B0(Data_Valid), .B1(
        n2), .Y(n9) );
  OAI2B2X1M U17 ( .A1N(n8), .A0(n5), .B0(PS[1]), .B1(n6), .Y(NS[1]) );
  AOI2B1X1M U18 ( .A1N(PAR_EN), .A0(ser_done), .B0(PS[0]), .Y(n8) );
endmodule


module serializer ( ser_en, Data_Valid, P_DATA, CLK, RST, busy, ser_data, 
        ser_done );
  input [7:0] P_DATA;
  input ser_en, Data_Valid, CLK, RST, busy;
  output ser_data, ser_done;
  wire   N1, N2, N3, \cnt[3] , N11, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n1, n2, n3, n4, n5, n6, n7, n32, n33, n34;
  wire   [7:0] REG;

  DFFSQX2M \REG_reg[5]  ( .D(n23), .CK(CLK), .SN(n1), .Q(REG[5]) );
  DFFSQX2M \REG_reg[1]  ( .D(n19), .CK(CLK), .SN(n1), .Q(REG[1]) );
  DFFSQX2M \REG_reg[7]  ( .D(n25), .CK(CLK), .SN(n1), .Q(REG[7]) );
  DFFSQX2M \REG_reg[3]  ( .D(n21), .CK(CLK), .SN(n1), .Q(REG[3]) );
  DFFSQX2M \REG_reg[6]  ( .D(n24), .CK(CLK), .SN(n1), .Q(REG[6]) );
  DFFSQX2M \REG_reg[2]  ( .D(n20), .CK(CLK), .SN(n1), .Q(REG[2]) );
  DFFSQX2M \REG_reg[4]  ( .D(n22), .CK(CLK), .SN(n1), .Q(REG[4]) );
  DFFSQX2M \REG_reg[0]  ( .D(n18), .CK(CLK), .SN(n1), .Q(REG[0]) );
  DFFSQX2M ser_data_reg ( .D(n26), .CK(CLK), .SN(n1), .Q(ser_data) );
  DFFRQX1M ser_done_reg ( .D(n27), .CK(CLK), .RN(n1), .Q(ser_done) );
  DFFRQX1M \cnt_reg[0]  ( .D(n31), .CK(CLK), .RN(RST), .Q(N1) );
  DFFRQX1M \cnt_reg[1]  ( .D(n29), .CK(CLK), .RN(n1), .Q(N2) );
  DFFRQX1M \cnt_reg[2]  ( .D(n28), .CK(CLK), .RN(n1), .Q(N3) );
  DFFRQX1M \cnt_reg[3]  ( .D(n30), .CK(CLK), .RN(n1), .Q(\cnt[3] ) );
  BUFX2M U3 ( .A(RST), .Y(n1) );
  INVX2M U4 ( .A(n8), .Y(n34) );
  INVX2M U5 ( .A(n16), .Y(n5) );
  NAND2BX2M U6 ( .AN(busy), .B(Data_Valid), .Y(n8) );
  AOI21X2M U7 ( .A0(n6), .A1(n8), .B0(n5), .Y(n14) );
  OAI22X1M U8 ( .A0(n11), .A1(n12), .B0(n15), .B1(n7), .Y(n30) );
  AOI21X2M U9 ( .A0(n8), .A1(n33), .B0(n13), .Y(n15) );
  NAND2X2M U10 ( .A(n8), .B(n9), .Y(n16) );
  OAI32X1M U11 ( .A0(n5), .A1(N1), .A2(n34), .B0(n6), .B1(n16), .Y(n31) );
  OAI32X1M U12 ( .A0(n12), .A1(N3), .A2(n32), .B0(n4), .B1(n33), .Y(n28) );
  INVX2M U13 ( .A(n13), .Y(n4) );
  OAI21X2M U14 ( .A0(N2), .A1(n34), .B0(n14), .Y(n13) );
  OAI22X1M U15 ( .A0(n14), .A1(n32), .B0(N2), .B1(n12), .Y(n29) );
  NAND3X2M U16 ( .A(n17), .B(n8), .C(ser_en), .Y(n9) );
  NAND4X2M U17 ( .A(\cnt[3] ), .B(n6), .C(n32), .D(n33), .Y(n17) );
  OAI2BB2X1M U18 ( .B0(n10), .B1(n9), .A0N(ser_done), .A1N(n10), .Y(n27) );
  AOI2B1X1M U19 ( .A1N(n11), .A0(N1), .B0(n9), .Y(n10) );
  NAND3X2M U20 ( .A(n16), .B(n8), .C(N1), .Y(n12) );
  INVX2M U21 ( .A(N1), .Y(n6) );
  INVX2M U22 ( .A(N2), .Y(n32) );
  INVX2M U23 ( .A(N3), .Y(n33) );
  AO2B2X2M U24 ( .B0(ser_data), .B1(n9), .A0(N11), .A1N(n9), .Y(n26) );
  MX2X2M U25 ( .A(n3), .B(n2), .S0(N3), .Y(N11) );
  MX4X1M U26 ( .A(REG[4]), .B(REG[5]), .C(REG[6]), .D(REG[7]), .S0(N1), .S1(N2), .Y(n2) );
  MX4X1M U27 ( .A(REG[0]), .B(REG[1]), .C(REG[2]), .D(REG[3]), .S0(N1), .S1(N2), .Y(n3) );
  AO22X1M U28 ( .A0(P_DATA[0]), .A1(n34), .B0(REG[0]), .B1(n8), .Y(n18) );
  AO22X1M U29 ( .A0(P_DATA[1]), .A1(n34), .B0(REG[1]), .B1(n8), .Y(n19) );
  AO22X1M U30 ( .A0(P_DATA[2]), .A1(n34), .B0(REG[2]), .B1(n8), .Y(n20) );
  AO22X1M U31 ( .A0(P_DATA[3]), .A1(n34), .B0(REG[3]), .B1(n8), .Y(n21) );
  AO22X1M U32 ( .A0(P_DATA[4]), .A1(n34), .B0(REG[4]), .B1(n8), .Y(n22) );
  AO22X1M U33 ( .A0(P_DATA[5]), .A1(n34), .B0(REG[5]), .B1(n8), .Y(n23) );
  AO22X1M U34 ( .A0(P_DATA[6]), .A1(n34), .B0(REG[6]), .B1(n8), .Y(n24) );
  AO22X1M U35 ( .A0(P_DATA[7]), .A1(n34), .B0(REG[7]), .B1(n8), .Y(n25) );
  NAND3X2M U36 ( .A(N2), .B(n7), .C(N3), .Y(n11) );
  INVX2M U37 ( .A(\cnt[3] ), .Y(n7) );
endmodule


module parityCalc ( Data_Valid, PAR_TYP, P_DATA, CLK, RST, busy, par_bit );
  input [7:0] P_DATA;
  input Data_Valid, PAR_TYP, CLK, RST, busy;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [7:0] xor_ip;

  DFFRQX1M \xor_ip_reg[7]  ( .D(n13), .CK(CLK), .RN(RST), .Q(xor_ip[7]) );
  DFFRQX1M \xor_ip_reg[6]  ( .D(n12), .CK(CLK), .RN(RST), .Q(xor_ip[6]) );
  DFFRQX1M \xor_ip_reg[5]  ( .D(n11), .CK(CLK), .RN(RST), .Q(xor_ip[5]) );
  DFFRQX1M \xor_ip_reg[4]  ( .D(n10), .CK(CLK), .RN(RST), .Q(xor_ip[4]) );
  DFFRQX1M \xor_ip_reg[3]  ( .D(n9), .CK(CLK), .RN(RST), .Q(xor_ip[3]) );
  DFFRQX1M \xor_ip_reg[2]  ( .D(n8), .CK(CLK), .RN(RST), .Q(xor_ip[2]) );
  DFFRQX1M \xor_ip_reg[1]  ( .D(n7), .CK(CLK), .RN(RST), .Q(xor_ip[1]) );
  DFFRQX1M \xor_ip_reg[0]  ( .D(n6), .CK(CLK), .RN(RST), .Q(xor_ip[0]) );
  XOR3XLM U2 ( .A(n1), .B(n2), .C(PAR_TYP), .Y(par_bit) );
  NOR2BX2M U3 ( .AN(Data_Valid), .B(busy), .Y(n5) );
  XOR3XLM U4 ( .A(xor_ip[1]), .B(xor_ip[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U5 ( .A(xor_ip[3]), .B(xor_ip[2]), .Y(n3) );
  XOR3XLM U6 ( .A(xor_ip[5]), .B(xor_ip[4]), .C(n4), .Y(n1) );
  CLKXOR2X2M U7 ( .A(xor_ip[7]), .B(xor_ip[6]), .Y(n4) );
  AO2B2X2M U8 ( .B0(P_DATA[0]), .B1(n5), .A0(xor_ip[0]), .A1N(n5), .Y(n6) );
  AO2B2X2M U9 ( .B0(P_DATA[1]), .B1(n5), .A0(xor_ip[1]), .A1N(n5), .Y(n7) );
  AO2B2X2M U10 ( .B0(P_DATA[2]), .B1(n5), .A0(xor_ip[2]), .A1N(n5), .Y(n8) );
  AO2B2X2M U11 ( .B0(P_DATA[3]), .B1(n5), .A0(xor_ip[3]), .A1N(n5), .Y(n9) );
  AO2B2X2M U12 ( .B0(P_DATA[4]), .B1(n5), .A0(xor_ip[4]), .A1N(n5), .Y(n10) );
  AO2B2X2M U13 ( .B0(P_DATA[5]), .B1(n5), .A0(xor_ip[5]), .A1N(n5), .Y(n11) );
  AO2B2X2M U14 ( .B0(P_DATA[6]), .B1(n5), .A0(xor_ip[6]), .A1N(n5), .Y(n12) );
  AO2B2X2M U15 ( .B0(P_DATA[7]), .B1(n5), .A0(xor_ip[7]), .A1N(n5), .Y(n13) );
endmodule


module MUX ( mux_sel, inputs, CLK, RST, TX_OUT );
  input [1:0] mux_sel;
  input [3:0] inputs;
  input CLK, RST;
  output TX_OUT;
  wire   N0, N1;
  assign N0 = mux_sel[0];
  assign N1 = mux_sel[1];

  MX4X8M U1 ( .A(inputs[0]), .B(inputs[2]), .C(inputs[1]), .D(inputs[3]), .S0(
        N1), .S1(N0), .Y(TX_OUT) );
endmodule


module UART_TX ( P_DATA, Data_Valid, PAR_TYP, PAR_EN, CLK, RST, TX_OUT, busy
 );
  input [7:0] P_DATA;
  input Data_Valid, PAR_TYP, PAR_EN, CLK, RST;
  output TX_OUT, busy;
  wire   ser_done, ser_en, n1, n2;
  wire   [1:0] mux_sel;
  wire   [3:2] input_MUX;

  fsm fsm_block ( .ser_done(ser_done), .Data_Valid(Data_Valid), .PAR_EN(PAR_EN), .CLK(CLK), .RST(n1), .mux_sel(mux_sel), .busy(busy), .ser_en(ser_en) );
  serializer serializer_block ( .ser_en(ser_en), .Data_Valid(Data_Valid), 
        .P_DATA(P_DATA), .CLK(CLK), .RST(n1), .busy(busy), .ser_data(
        input_MUX[2]), .ser_done(ser_done) );
  parityCalc parityCalc_block ( .Data_Valid(Data_Valid), .PAR_TYP(PAR_TYP), 
        .P_DATA(P_DATA), .CLK(CLK), .RST(n1), .busy(busy), .par_bit(
        input_MUX[3]) );
  MUX MUX_block ( .mux_sel(mux_sel), .inputs({input_MUX, 1'b1, 1'b0}), .CLK(
        CLK), .RST(n1), .TX_OUT(TX_OUT) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module FSM ( CLK, RST, RX_IN, PAR_EN, bit_cnt, edge_cnt, Prescale, par_err, 
        strt_glitch, stp_err, par_chk_en, strt_chk_en, stp_chk_en, deser_en, 
        data_valid, enable, data_samp_en );
  input [2:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] Prescale;
  input CLK, RST, RX_IN, PAR_EN, par_err, strt_glitch, stp_err;
  output par_chk_en, strt_chk_en, stp_chk_en, deser_en, data_valid, enable,
         data_samp_en;
  wire   N38, N39, N40, N41, N42, N43, N44, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, \r74/carry[5] , \r74/carry[4] ,
         \r74/carry[3] , \r74/carry[2] , n4, n5, n6, n7, n8, n9, n10, n11, n24,
         n25, n26, n27, n28, n29;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  INVX2M U3 ( .A(1'b0), .Y(data_samp_en) );
  NOR4XLM U5 ( .A(stp_err), .B(par_err), .C(n27), .D(n12), .Y(data_valid) );
  INVX2M U6 ( .A(N44), .Y(n25) );
  INVX2M U7 ( .A(n18), .Y(n26) );
  INVX2M U8 ( .A(stp_chk_en), .Y(n28) );
  OAI211X2M U9 ( .A0(n25), .A1(n28), .B0(n19), .C0(n20), .Y(next_state[0]) );
  OAI21X2M U10 ( .A0(n17), .A1(par_chk_en), .B0(n25), .Y(n19) );
  AOI31X2M U11 ( .A0(n26), .A1(enable), .A2(PAR_EN), .B0(n21), .Y(n20) );
  NOR3X2M U12 ( .A(n22), .B(current_state[1]), .C(RX_IN), .Y(n21) );
  CLKXOR2X2M U13 ( .A(current_state[2]), .B(current_state[0]), .Y(n22) );
  NAND4X2M U14 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(bit_cnt[0]), .D(N44), .Y(
        n18) );
  OAI211XLM U15 ( .A0(N44), .A1(n13), .B0(n15), .C0(n16), .Y(next_state[1]) );
  NAND3XLM U16 ( .A(N44), .B(n29), .C(n17), .Y(n16) );
  OAI21X2M U17 ( .A0(PAR_EN), .A1(n18), .B0(enable), .Y(n15) );
  ADDHX1M U18 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\r74/carry[2] ), .S(N39)
         );
  ADDHX1M U19 ( .A(edge_cnt[3]), .B(\r74/carry[3] ), .CO(\r74/carry[4] ), .S(
        N41) );
  ADDHX1M U20 ( .A(edge_cnt[2]), .B(\r74/carry[2] ), .CO(\r74/carry[3] ), .S(
        N40) );
  ADDHX1M U21 ( .A(edge_cnt[4]), .B(\r74/carry[4] ), .CO(\r74/carry[5] ), .S(
        N42) );
  OAI211X2M U22 ( .A0(n25), .A1(n13), .B0(n14), .C0(n28), .Y(next_state[2]) );
  NAND3BX2M U23 ( .AN(PAR_EN), .B(enable), .C(n26), .Y(n14) );
  NOR2X2M U24 ( .A(n29), .B(current_state[2]), .Y(n23) );
  INVX2M U25 ( .A(n13), .Y(par_chk_en) );
  INVX2M U26 ( .A(current_state[1]), .Y(n29) );
  NOR3X2M U27 ( .A(strt_glitch), .B(current_state[2]), .C(n27), .Y(n17) );
  NOR2X2M U28 ( .A(n12), .B(current_state[0]), .Y(stp_chk_en) );
  NAND2X2M U29 ( .A(n23), .B(current_state[0]), .Y(n13) );
  NAND2X2M U30 ( .A(current_state[2]), .B(n29), .Y(n12) );
  INVX2M U31 ( .A(current_state[0]), .Y(n27) );
  AND3X2M U32 ( .A(n12), .B(current_state[0]), .C(n29), .Y(strt_chk_en) );
  BUFX2M U33 ( .A(enable), .Y(deser_en) );
  NOR2BX2M U34 ( .AN(n23), .B(current_state[0]), .Y(enable) );
  CLKINVX1M U35 ( .A(edge_cnt[0]), .Y(N38) );
  CLKXOR2X2M U36 ( .A(\r74/carry[5] ), .B(edge_cnt[5]), .Y(N43) );
  NOR2BX1M U37 ( .AN(N38), .B(Prescale[0]), .Y(n4) );
  OAI2B2X1M U38 ( .A1N(Prescale[1]), .A0(n4), .B0(N39), .B1(n4), .Y(n8) );
  NOR2BX1M U39 ( .AN(Prescale[0]), .B(N38), .Y(n5) );
  OAI2B2X1M U40 ( .A1N(N39), .A0(n5), .B0(Prescale[1]), .B1(n5), .Y(n7) );
  XNOR2X1M U41 ( .A(Prescale[5]), .B(N43), .Y(n6) );
  NAND3X1M U42 ( .A(n8), .B(n7), .C(n6), .Y(n24) );
  CLKXOR2X2M U43 ( .A(Prescale[4]), .B(N42), .Y(n11) );
  CLKXOR2X2M U44 ( .A(Prescale[2]), .B(N40), .Y(n10) );
  CLKXOR2X2M U45 ( .A(Prescale[3]), .B(N41), .Y(n9) );
  NOR4X1M U46 ( .A(n24), .B(n11), .C(n10), .D(n9), .Y(N44) );
endmodule


module data_sampling ( CLK, RST, data_samp_en, RX_IN, edge_cnt, Prescale, 
        sampled_bit, valid );
  input [5:0] edge_cnt;
  input [5:0] Prescale;
  input CLK, RST, data_samp_en, RX_IN;
  output sampled_bit, valid;
  wire   N4, N5, N6, N7, N8, N9, N10, N13, N14, N15, N16, N17, n21, n22, n23,
         n24, \add_13/carry[4] , \add_13/carry[3] , \add_13/carry[2] , n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38;
  wire   [2:0] samples;

  DFFRQX2M \samples_reg[2]  ( .D(n23), .CK(CLK), .RN(RST), .Q(samples[2]) );
  DFFRQX2M valid_reg ( .D(n24), .CK(CLK), .RN(RST), .Q(valid) );
  DFFRQX2M \samples_reg[1]  ( .D(n22), .CK(CLK), .RN(RST), .Q(samples[1]) );
  DFFRQX2M \samples_reg[0]  ( .D(n21), .CK(CLK), .RN(RST), .Q(samples[0]) );
  OR2X2M U3 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  ADDHX1M U4 ( .A(Prescale[4]), .B(\add_13/carry[3] ), .CO(\add_13/carry[4] ), 
        .S(N15) );
  ADDHX1M U5 ( .A(Prescale[3]), .B(\add_13/carry[2] ), .CO(\add_13/carry[3] ), 
        .S(N14) );
  ADDHX1M U6 ( .A(Prescale[2]), .B(Prescale[1]), .CO(\add_13/carry[2] ), .S(
        N13) );
  ADDHX1M U7 ( .A(Prescale[5]), .B(\add_13/carry[4] ), .CO(N17), .S(N16) );
  CLKINVX1M U8 ( .A(Prescale[1]), .Y(N4) );
  OAI2BB1X1M U9 ( .A0N(Prescale[1]), .A1N(Prescale[2]), .B0(n1), .Y(N5) );
  OR2X1M U10 ( .A(n1), .B(Prescale[3]), .Y(n2) );
  OAI2BB1X1M U11 ( .A0N(n1), .A1N(Prescale[3]), .B0(n2), .Y(N6) );
  XNOR2X1M U12 ( .A(Prescale[4]), .B(n2), .Y(N7) );
  NOR3X1M U13 ( .A(Prescale[4]), .B(Prescale[5]), .C(n2), .Y(N9) );
  OAI21X1M U14 ( .A0(Prescale[4]), .A1(n2), .B0(Prescale[5]), .Y(n3) );
  NAND2BX1M U15 ( .AN(N9), .B(n3), .Y(N8) );
  NOR2BX1M U16 ( .AN(N4), .B(edge_cnt[0]), .Y(n4) );
  OAI2B2X1M U17 ( .A1N(edge_cnt[1]), .A0(n4), .B0(N5), .B1(n4), .Y(n7) );
  NOR2BX1M U18 ( .AN(edge_cnt[0]), .B(N4), .Y(n5) );
  OAI2B2X1M U19 ( .A1N(N5), .A0(n5), .B0(edge_cnt[1]), .B1(n5), .Y(n6) );
  NAND4BBX1M U20 ( .AN(edge_cnt[5]), .BN(N9), .C(n7), .D(n6), .Y(n11) );
  CLKXOR2X2M U21 ( .A(edge_cnt[4]), .B(N8), .Y(n10) );
  CLKXOR2X2M U22 ( .A(edge_cnt[2]), .B(N6), .Y(n9) );
  CLKXOR2X2M U23 ( .A(edge_cnt[3]), .B(N7), .Y(n8) );
  NOR4X1M U24 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N10) );
  OAI21X1M U25 ( .A0(n12), .A1(n13), .B0(n14), .Y(sampled_bit) );
  OAI21X1M U26 ( .A0(samples[0]), .A1(samples[1]), .B0(samples[2]), .Y(n14) );
  OAI2BB1X1M U27 ( .A0N(valid), .A1N(n15), .B0(n16), .Y(n24) );
  CLKMX2X2M U28 ( .A(RX_IN), .B(samples[2]), .S0(n16), .Y(n23) );
  NAND4BX1M U29 ( .AN(n15), .B(data_samp_en), .C(n17), .D(n18), .Y(n16) );
  NOR4X1M U30 ( .A(n19), .B(n20), .C(n25), .D(n26), .Y(n18) );
  CLKXOR2X2M U31 ( .A(edge_cnt[5]), .B(N17), .Y(n26) );
  CLKXOR2X2M U32 ( .A(edge_cnt[4]), .B(N16), .Y(n25) );
  CLKXOR2X2M U33 ( .A(edge_cnt[3]), .B(N15), .Y(n20) );
  CLKXOR2X2M U34 ( .A(edge_cnt[2]), .B(N14), .Y(n19) );
  NOR2X1M U35 ( .A(n27), .B(n28), .Y(n17) );
  CLKXOR2X2M U36 ( .A(edge_cnt[1]), .B(N13), .Y(n28) );
  CLKXOR2X2M U37 ( .A(edge_cnt[0]), .B(N4), .Y(n27) );
  CLKNAND2X2M U38 ( .A(n29), .B(n30), .Y(n15) );
  MXI2X1M U39 ( .A(n13), .B(n31), .S0(n32), .Y(n22) );
  NOR2BX1M U40 ( .AN(n29), .B(n30), .Y(n32) );
  NAND4X1M U41 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n30) );
  NOR4BX1M U42 ( .AN(data_samp_en), .B(edge_cnt[5]), .C(n37), .D(n38), .Y(n36)
         );
  CLKXOR2X2M U43 ( .A(edge_cnt[1]), .B(Prescale[2]), .Y(n38) );
  CLKXOR2X2M U44 ( .A(edge_cnt[0]), .B(Prescale[1]), .Y(n37) );
  XNOR2X1M U45 ( .A(edge_cnt[3]), .B(Prescale[4]), .Y(n35) );
  XNOR2X1M U46 ( .A(edge_cnt[4]), .B(Prescale[5]), .Y(n34) );
  XNOR2X1M U47 ( .A(edge_cnt[2]), .B(Prescale[3]), .Y(n33) );
  CLKINVX1M U48 ( .A(samples[1]), .Y(n13) );
  MXI2X1M U49 ( .A(n31), .B(n12), .S0(n29), .Y(n21) );
  CLKNAND2X2M U50 ( .A(N10), .B(data_samp_en), .Y(n29) );
  CLKINVX1M U51 ( .A(samples[0]), .Y(n12) );
  CLKINVX1M U52 ( .A(RX_IN), .Y(n31) );
endmodule


module parity_check ( CLK, RST, PAR_TYP, par_chk_en, sampled_bit, valid, data, 
        par_err );
  input [7:0] data;
  input CLK, RST, PAR_TYP, par_chk_en, sampled_bit, valid;
  output par_err;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  DFFRHQX8M par_err_reg ( .D(n8), .CK(CLK), .RN(RST), .Q(par_err) );
  XNOR2X2M U3 ( .A(sampled_bit), .B(PAR_TYP), .Y(n5) );
  OAI2BB2X1M U4 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n8) );
  NAND2X2M U5 ( .A(valid), .B(par_chk_en), .Y(n2) );
  XOR3XLM U6 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  XOR3XLM U7 ( .A(data[5]), .B(data[4]), .C(n6), .Y(n4) );
  XNOR2X2M U8 ( .A(data[7]), .B(data[6]), .Y(n6) );
  XOR3XLM U9 ( .A(data[1]), .B(data[0]), .C(n7), .Y(n3) );
  XNOR2X2M U10 ( .A(data[3]), .B(data[2]), .Y(n7) );
endmodule


module strt_check ( CLK, RST, strt_chk_en, sampled_bit, valid, strt_glitch );
  input CLK, RST, strt_chk_en, sampled_bit, valid;
  output strt_glitch;
  wire   N1;

  DFFRQX2M strt_glitch_reg ( .D(N1), .CK(CLK), .RN(RST), .Q(strt_glitch) );
  AND3XLM U3 ( .A(strt_chk_en), .B(sampled_bit), .C(valid), .Y(N1) );
endmodule


module stop_check ( CLK, RST, stp_chk_en, sampled_bit, valid, stp_err );
  input CLK, RST, stp_chk_en, sampled_bit, valid;
  output stp_err;
  wire   n1, n2;

  DFFRHQX8M stp_err_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(stp_err) );
  OAI2BB2XLM U3 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n2)
         );
  NAND2X2M U4 ( .A(valid), .B(stp_chk_en), .Y(n1) );
endmodule


module edge_bit_counter ( CLK, RST, enable, Prescale, bit_cnt, edge_cnt );
  input [5:0] Prescale;
  output [2:0] bit_cnt;
  output [5:0] edge_cnt;
  input CLK, RST, enable;
  wire   N3, N4, N5, N6, N7, N8, N9, N16, N17, N18, N19, N22, N23, N24, N25,
         N26, N27, n3, n4, n5, n6, n7, n8, \add_19/carry[5] ,
         \add_19/carry[4] , \add_19/carry[3] , \add_19/carry[2] ,
         \add_14/carry[5] , \add_14/carry[4] , \add_14/carry[3] ,
         \add_14/carry[2] , n1, n2, n9, n10, n11, n12, n13, n14, n15, n16;

  DFFRQX2M \bit_cnt_reg[2]  ( .D(n6), .CK(CLK), .RN(RST), .Q(bit_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(n7), .CK(CLK), .RN(RST), .Q(bit_cnt[1]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n8), .CK(CLK), .RN(RST), .Q(bit_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[5]  ( .D(N27), .CK(CLK), .RN(RST), .Q(edge_cnt[5]) );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N22), .CK(CLK), .RN(RST), .Q(edge_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N26), .CK(CLK), .RN(RST), .Q(edge_cnt[4]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N25), .CK(CLK), .RN(RST), .Q(edge_cnt[3]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N24), .CK(CLK), .RN(RST), .Q(edge_cnt[2]) );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N23), .CK(CLK), .RN(RST), .Q(edge_cnt[1]) );
  NAND2X2M U3 ( .A(enable), .B(N9), .Y(n5) );
  NOR2BXLM U4 ( .AN(N16), .B(N9), .Y(N23) );
  NOR2BXLM U5 ( .AN(N17), .B(N9), .Y(N24) );
  NOR2BXLM U6 ( .AN(N18), .B(N9), .Y(N25) );
  NOR2BXLM U7 ( .AN(N19), .B(N9), .Y(N26) );
  NAND2BX2M U8 ( .AN(n5), .B(bit_cnt[0]), .Y(n4) );
  ADDHX1M U9 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_14/carry[2] ), .S(N4) );
  ADDHX1M U10 ( .A(edge_cnt[3]), .B(\add_14/carry[3] ), .CO(\add_14/carry[4] ), 
        .S(N6) );
  ADDHX1M U11 ( .A(edge_cnt[2]), .B(\add_14/carry[2] ), .CO(\add_14/carry[3] ), 
        .S(N5) );
  CLKXOR2X2M U12 ( .A(bit_cnt[2]), .B(n3), .Y(n6) );
  NOR2BX2M U13 ( .AN(bit_cnt[1]), .B(n4), .Y(n3) );
  ADDHX1M U14 ( .A(edge_cnt[4]), .B(\add_14/carry[4] ), .CO(\add_14/carry[5] ), 
        .S(N7) );
  NOR2X2M U15 ( .A(n1), .B(N9), .Y(N27) );
  XNOR2X2M U16 ( .A(\add_19/carry[5] ), .B(edge_cnt[5]), .Y(n1) );
  NOR2X2M U17 ( .A(edge_cnt[0]), .B(N9), .Y(N22) );
  XNOR2X2M U18 ( .A(bit_cnt[0]), .B(n5), .Y(n8) );
  XNOR2X2M U19 ( .A(bit_cnt[1]), .B(n4), .Y(n7) );
  ADDHX1M U20 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_19/carry[2] ), .S(
        N16) );
  ADDHX1M U21 ( .A(edge_cnt[2]), .B(\add_19/carry[2] ), .CO(\add_19/carry[3] ), 
        .S(N17) );
  ADDHX1M U22 ( .A(edge_cnt[3]), .B(\add_19/carry[3] ), .CO(\add_19/carry[4] ), 
        .S(N18) );
  ADDHX1M U23 ( .A(edge_cnt[4]), .B(\add_19/carry[4] ), .CO(\add_19/carry[5] ), 
        .S(N19) );
  CLKINVX1M U24 ( .A(edge_cnt[0]), .Y(N3) );
  CLKXOR2X2M U25 ( .A(\add_14/carry[5] ), .B(edge_cnt[5]), .Y(N8) );
  NOR2BX1M U26 ( .AN(Prescale[0]), .B(N3), .Y(n2) );
  OAI2B2X1M U27 ( .A1N(N4), .A0(n2), .B0(Prescale[1]), .B1(n2), .Y(n12) );
  NOR2BX1M U28 ( .AN(N3), .B(Prescale[0]), .Y(n9) );
  OAI2B2X1M U29 ( .A1N(Prescale[1]), .A0(n9), .B0(N4), .B1(n9), .Y(n11) );
  XNOR2X1M U30 ( .A(N8), .B(Prescale[5]), .Y(n10) );
  NAND3X1M U31 ( .A(n12), .B(n11), .C(n10), .Y(n16) );
  CLKXOR2X2M U32 ( .A(N7), .B(Prescale[4]), .Y(n15) );
  CLKXOR2X2M U33 ( .A(N5), .B(Prescale[2]), .Y(n14) );
  CLKXOR2X2M U34 ( .A(N6), .B(Prescale[3]), .Y(n13) );
  NOR4X1M U35 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(N9) );
endmodule


module deserializer ( CLK, RST, deser_en, sampled_bit, valid, bit_cnt, P_DATA
 );
  input [2:0] bit_cnt;
  output [7:0] P_DATA;
  input CLK, RST, deser_en, sampled_bit, valid;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n1, n2;

  DFFRQX2M \P_DATA_reg[5]  ( .D(n25), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n21), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n24), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n20), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n27), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n23), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n26), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n22), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  NAND2BX2M U2 ( .AN(n16), .B(sampled_bit), .Y(n14) );
  NAND2BX2M U3 ( .AN(n6), .B(sampled_bit), .Y(n4) );
  NAND2X2M U4 ( .A(n2), .B(n1), .Y(n3) );
  NAND2X2M U5 ( .A(bit_cnt[2]), .B(n13), .Y(n16) );
  NAND2BX2M U6 ( .AN(bit_cnt[2]), .B(n13), .Y(n6) );
  OAI21X2M U7 ( .A0(n4), .A1(n7), .B0(n8), .Y(n21) );
  OAI21X2M U8 ( .A0(n6), .A1(n7), .B0(P_DATA[1]), .Y(n8) );
  OAI21X2M U9 ( .A0(n4), .A1(n9), .B0(n10), .Y(n22) );
  OAI21X2M U10 ( .A0(n6), .A1(n9), .B0(P_DATA[2]), .Y(n10) );
  OAI21X2M U11 ( .A0(n4), .A1(n11), .B0(n12), .Y(n23) );
  OAI21X2M U12 ( .A0(n6), .A1(n11), .B0(P_DATA[3]), .Y(n12) );
  OAI21X2M U13 ( .A0(n3), .A1(n14), .B0(n15), .Y(n24) );
  OAI21X2M U14 ( .A0(n3), .A1(n16), .B0(P_DATA[4]), .Y(n15) );
  OAI21X2M U15 ( .A0(n7), .A1(n14), .B0(n17), .Y(n25) );
  OAI21X2M U16 ( .A0(n7), .A1(n16), .B0(P_DATA[5]), .Y(n17) );
  OAI21X2M U17 ( .A0(n9), .A1(n14), .B0(n18), .Y(n26) );
  OAI21X2M U18 ( .A0(n9), .A1(n16), .B0(P_DATA[6]), .Y(n18) );
  OAI21X2M U19 ( .A0(n11), .A1(n14), .B0(n19), .Y(n27) );
  OAI21X2M U20 ( .A0(n11), .A1(n16), .B0(P_DATA[7]), .Y(n19) );
  OAI21X2M U21 ( .A0(n3), .A1(n4), .B0(n5), .Y(n20) );
  OAI21X2M U22 ( .A0(n6), .A1(n3), .B0(P_DATA[0]), .Y(n5) );
  AND2X2M U23 ( .A(valid), .B(deser_en), .Y(n13) );
  NAND2X2M U24 ( .A(bit_cnt[0]), .B(n2), .Y(n7) );
  NAND2X2M U25 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .Y(n11) );
  NAND2X2M U26 ( .A(bit_cnt[1]), .B(n1), .Y(n9) );
  INVX2M U27 ( .A(bit_cnt[0]), .Y(n1) );
  INVX2M U28 ( .A(bit_cnt[1]), .Y(n2) );
endmodule


module UART_RX ( CLK, RST, RX_IN, PAR_EN, PAR_TYP, Prescale, data_valid, 
        P_DATA, par_err, stp_err );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_EN, PAR_TYP;
  output data_valid, par_err, stp_err;
  wire   strt_glitch, par_chk_en, strt_chk_en, stp_chk_en, deser_en, enable,
         sampled_bit, valid, n1, n2;
  wire   [2:0] bit_cnt;
  wire   [5:0] edge_cnt;

  FSM FSM_BLOCK ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .Prescale(Prescale), .par_err(
        par_err), .strt_glitch(strt_glitch), .stp_err(stp_err), .par_chk_en(
        par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(stp_chk_en), 
        .deser_en(deser_en), .data_valid(data_valid), .enable(enable) );
  data_sampling data_sampling_BLOCK ( .CLK(CLK), .RST(n1), .data_samp_en(1'b1), 
        .RX_IN(RX_IN), .edge_cnt(edge_cnt), .Prescale(Prescale), .sampled_bit(
        sampled_bit), .valid(valid) );
  parity_check parity_check_BLOCK ( .CLK(CLK), .RST(n1), .PAR_TYP(PAR_TYP), 
        .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), .valid(valid), 
        .data(P_DATA), .par_err(par_err) );
  strt_check strt_check_BLOCK ( .CLK(CLK), .RST(n1), .strt_chk_en(strt_chk_en), 
        .sampled_bit(sampled_bit), .valid(valid), .strt_glitch(strt_glitch) );
  stop_check stop_check_BLOCK ( .CLK(CLK), .RST(n1), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .valid(valid), .stp_err(stp_err) );
  edge_bit_counter edge_bit_counter_BLOCK ( .CLK(CLK), .RST(n1), .enable(
        enable), .Prescale(Prescale), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt)
         );
  deserializer deserializer_BLOCK ( .CLK(CLK), .RST(n1), .deser_en(deser_en), 
        .sampled_bit(sampled_bit), .valid(valid), .bit_cnt(bit_cnt), .P_DATA(
        P_DATA) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module UART_TOP ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error;
  wire   n1, n2;

  UART_TX UART_TX_BLOCK ( .P_DATA(TX_IN_P), .Data_Valid(TX_IN_V), .PAR_TYP(
        parity_type), .PAR_EN(parity_enable), .CLK(TX_CLK), .RST(n1), .TX_OUT(
        TX_OUT_S), .busy(TX_OUT_V) );
  UART_RX UART_RX_BLOCK ( .CLK(RX_CLK), .RST(n1), .RX_IN(RX_IN_S), .PAR_EN(
        parity_enable), .PAR_TYP(parity_type), .Prescale(Prescale), 
        .data_valid(RX_OUT_V), .P_DATA(RX_OUT_P), .par_err(parity_error), 
        .stp_err(framing_error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module SYS_CTRL ( CLK, RST, ALU_OUT, OUT_Valid, ALU_FUN, EN, CLK_EN, Address, 
        WrEn, RdEn, WrData, RdData, RdData_Valid, RX_P_DATA, RX_D_VLD, 
        TX_P_DATA, TX_D_VLD, clk_div_en );
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, RdData_Valid, RX_D_VLD;
  output EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n71;
  wire   [3:0] current_state;
  wire   [3:0] next_state;

  DFFRQX2M \Address_reg[1]  ( .D(n68), .CK(CLK), .RN(RST), .Q(Address[1]) );
  DFFRQX2M \Address_reg[2]  ( .D(n69), .CK(CLK), .RN(RST), .Q(Address[2]) );
  DFFRQX2M \Address_reg[3]  ( .D(n70), .CK(CLK), .RN(RST), .Q(Address[3]) );
  DFFRQX2M \Address_reg[0]  ( .D(n67), .CK(CLK), .RN(RST), .Q(Address[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  NOR2X2M U3 ( .A(n17), .B(n7), .Y(ALU_FUN[3]) );
  NOR2X2M U4 ( .A(n18), .B(n7), .Y(ALU_FUN[2]) );
  INVX2M U5 ( .A(EN), .Y(n7) );
  INVX2M U6 ( .A(WrEn), .Y(n4) );
  OR3X2M U7 ( .A(n58), .B(n32), .C(n6), .Y(TX_D_VLD) );
  NAND2X2M U8 ( .A(n53), .B(n51), .Y(n52) );
  INVX2M U9 ( .A(n51), .Y(n5) );
  NOR2X2M U10 ( .A(n21), .B(n13), .Y(EN) );
  NOR2X2M U11 ( .A(n71), .B(n7), .Y(ALU_FUN[0]) );
  NAND3X2M U12 ( .A(n8), .B(n11), .C(n66), .Y(n21) );
  NOR2X2M U13 ( .A(n19), .B(n7), .Y(ALU_FUN[1]) );
  NOR2X2M U14 ( .A(n2), .B(n20), .Y(n32) );
  NOR2X2M U15 ( .A(n3), .B(n49), .Y(n58) );
  NOR2X2M U16 ( .A(n28), .B(n13), .Y(RdEn) );
  NOR2X2M U17 ( .A(n13), .B(n56), .Y(WrEn) );
  NOR2BX2M U18 ( .AN(n53), .B(n48), .Y(n56) );
  NOR2X2M U19 ( .A(n14), .B(n4), .Y(WrData[6]) );
  NOR2X2M U20 ( .A(n19), .B(n4), .Y(WrData[1]) );
  NOR2X2M U21 ( .A(n18), .B(n4), .Y(WrData[2]) );
  NOR2X2M U22 ( .A(n17), .B(n4), .Y(WrData[3]) );
  NOR2X2M U23 ( .A(n16), .B(n4), .Y(WrData[4]) );
  NOR2X2M U24 ( .A(n15), .B(n4), .Y(WrData[5]) );
  NOR2X2M U25 ( .A(n71), .B(n4), .Y(WrData[0]) );
  NAND3X2M U26 ( .A(n8), .B(n11), .C(n30), .Y(n28) );
  AND2X2M U27 ( .A(n38), .B(n36), .Y(n53) );
  AND2X2M U28 ( .A(n44), .B(n11), .Y(n39) );
  INVX2M U29 ( .A(n55), .Y(n6) );
  OAI21X2M U30 ( .A0(n53), .A1(n13), .B0(n46), .Y(n51) );
  AOI2BB1X2M U31 ( .A0N(n33), .A1N(n13), .B0(RdEn), .Y(n46) );
  INVX2M U32 ( .A(n36), .Y(n10) );
  NAND4BX1M U33 ( .AN(n54), .B(n55), .C(n49), .D(n56), .Y(clk_div_en) );
  NAND4BX1M U34 ( .AN(n44), .B(n21), .C(n20), .D(n28), .Y(n54) );
  NOR2X2M U35 ( .A(n12), .B(current_state[2]), .Y(n66) );
  INVX2M U36 ( .A(current_state[3]), .Y(n12) );
  INVX2M U37 ( .A(current_state[1]), .Y(n11) );
  INVX2M U38 ( .A(current_state[0]), .Y(n8) );
  INVX2M U39 ( .A(RX_D_VLD), .Y(n13) );
  INVX2M U40 ( .A(RX_P_DATA[0]), .Y(n71) );
  INVX2M U41 ( .A(RX_P_DATA[2]), .Y(n18) );
  NOR3X2M U42 ( .A(current_state[2]), .B(current_state[3]), .C(
        current_state[0]), .Y(n44) );
  NOR3X2M U43 ( .A(n8), .B(current_state[3]), .C(n11), .Y(n48) );
  NOR4BX1M U44 ( .AN(n43), .B(n15), .C(n19), .D(n25), .Y(n26) );
  NOR2X2M U45 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .Y(n43) );
  NAND4X2M U46 ( .A(RX_P_DATA[7]), .B(RX_P_DATA[3]), .C(RX_D_VLD), .D(n39), 
        .Y(n25) );
  OAI2B11X2M U47 ( .A1N(n26), .A0(n27), .B0(n28), .C0(n29), .Y(next_state[2])
         );
  NAND2X2M U48 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .Y(n27) );
  AOI31X2M U49 ( .A0(n3), .A1(n11), .A2(n30), .B0(n31), .Y(n29) );
  NAND3X2M U50 ( .A(n66), .B(n11), .C(current_state[0]), .Y(n20) );
  NAND3X2M U51 ( .A(n30), .B(current_state[0]), .C(current_state[1]), .Y(n36)
         );
  OAI2BB1X2M U52 ( .A0N(ALU_OUT[8]), .A1N(n6), .B0(n65), .Y(TX_P_DATA[0]) );
  NAND3X2M U53 ( .A(current_state[0]), .B(n11), .C(n30), .Y(n49) );
  AND2X2M U54 ( .A(current_state[2]), .B(n12), .Y(n30) );
  NAND3X2M U55 ( .A(n30), .B(n8), .C(current_state[1]), .Y(n38) );
  NAND3X2M U56 ( .A(n66), .B(n8), .C(current_state[1]), .Y(n55) );
  INVX2M U57 ( .A(RX_P_DATA[1]), .Y(n19) );
  INVX2M U58 ( .A(RX_P_DATA[3]), .Y(n17) );
  AND2X2M U59 ( .A(RX_P_DATA[7]), .B(WrEn), .Y(WrData[7]) );
  INVX2M U60 ( .A(RdData_Valid), .Y(n3) );
  INVX2M U61 ( .A(OUT_Valid), .Y(n2) );
  OAI211X2M U62 ( .A0(RX_D_VLD), .A1(n36), .B0(n37), .C0(n38), .Y(n31) );
  NAND4X2M U63 ( .A(n39), .B(n71), .C(n40), .D(n41), .Y(n37) );
  NOR3X2M U64 ( .A(RX_P_DATA[1]), .B(RX_P_DATA[5]), .C(RX_P_DATA[4]), .Y(n40)
         );
  NOR3X2M U65 ( .A(n42), .B(n18), .C(n14), .Y(n41) );
  OAI2BB1X2M U66 ( .A0N(ALU_OUT[9]), .A1N(n6), .B0(n64), .Y(TX_P_DATA[1]) );
  AOI22X1M U67 ( .A0(ALU_OUT[1]), .A1(n32), .B0(RdData[1]), .B1(n58), .Y(n64)
         );
  OAI2BB1X2M U68 ( .A0N(ALU_OUT[10]), .A1N(n6), .B0(n63), .Y(TX_P_DATA[2]) );
  AOI22X1M U69 ( .A0(ALU_OUT[2]), .A1(n32), .B0(RdData[2]), .B1(n58), .Y(n63)
         );
  OAI2BB1X2M U70 ( .A0N(ALU_OUT[11]), .A1N(n6), .B0(n62), .Y(TX_P_DATA[3]) );
  AOI22X1M U71 ( .A0(ALU_OUT[3]), .A1(n32), .B0(RdData[3]), .B1(n58), .Y(n62)
         );
  OAI2BB1X2M U72 ( .A0N(ALU_OUT[12]), .A1N(n6), .B0(n61), .Y(TX_P_DATA[4]) );
  AOI22X1M U73 ( .A0(ALU_OUT[4]), .A1(n32), .B0(RdData[4]), .B1(n58), .Y(n61)
         );
  OAI2BB1X2M U74 ( .A0N(ALU_OUT[13]), .A1N(n6), .B0(n60), .Y(TX_P_DATA[5]) );
  AOI22X1M U75 ( .A0(ALU_OUT[5]), .A1(n32), .B0(RdData[5]), .B1(n58), .Y(n60)
         );
  OAI2BB1X2M U76 ( .A0N(ALU_OUT[14]), .A1N(n6), .B0(n59), .Y(TX_P_DATA[6]) );
  AOI22X1M U77 ( .A0(ALU_OUT[6]), .A1(n32), .B0(RdData[6]), .B1(n58), .Y(n59)
         );
  OAI2BB1X2M U78 ( .A0N(ALU_OUT[15]), .A1N(n6), .B0(n57), .Y(TX_P_DATA[7]) );
  AOI22X1M U79 ( .A0(ALU_OUT[7]), .A1(n32), .B0(RdData[7]), .B1(n58), .Y(n57)
         );
  OAI2BB2X1M U80 ( .B0(n19), .B1(n52), .A0N(Address[1]), .A1N(n5), .Y(n68) );
  OAI2BB2X1M U81 ( .B0(n18), .B1(n52), .A0N(Address[2]), .A1N(n5), .Y(n69) );
  OAI2BB2X1M U82 ( .B0(n17), .B1(n52), .A0N(Address[3]), .A1N(n5), .Y(n70) );
  NAND4BX1M U83 ( .AN(n32), .B(n33), .C(n34), .D(n35), .Y(next_state[1]) );
  NAND3X2M U84 ( .A(n13), .B(n12), .C(current_state[1]), .Y(n34) );
  AOI31X2M U85 ( .A0(n71), .A1(n16), .A2(n26), .B0(n31), .Y(n35) );
  NAND2X2M U86 ( .A(current_state[1]), .B(n44), .Y(n33) );
  NAND3X2M U87 ( .A(RX_P_DATA[3]), .B(RX_D_VLD), .C(RX_P_DATA[7]), .Y(n42) );
  INVX2M U88 ( .A(RX_P_DATA[4]), .Y(n16) );
  INVX2M U89 ( .A(RX_P_DATA[6]), .Y(n14) );
  NAND3X2M U90 ( .A(n45), .B(n46), .C(n47), .Y(next_state[0]) );
  OA22X2M U91 ( .A0(n49), .A1(RdData_Valid), .B0(n38), .B1(n13), .Y(n45) );
  AOI221XLM U92 ( .A0(n9), .A1(n2), .B0(n48), .B1(n13), .C0(EN), .Y(n47) );
  INVX2M U93 ( .A(n20), .Y(n9) );
  INVX2M U94 ( .A(RX_P_DATA[5]), .Y(n15) );
  NAND3X2M U95 ( .A(n20), .B(n21), .C(n22), .Y(next_state[3]) );
  AOI22X1M U96 ( .A0(n23), .A1(n24), .B0(n10), .B1(RX_D_VLD), .Y(n22) );
  NOR3X2M U97 ( .A(n14), .B(n18), .C(n16), .Y(n23) );
  NOR4X1M U98 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n25), .D(n71), .Y(n24)
         );
  OAI2BB1X2M U99 ( .A0N(Address[0]), .A1N(n5), .B0(n50), .Y(n67) );
  AOI2BB2XLM U100 ( .B0(n10), .B1(n51), .A0N(n52), .A1N(n71), .Y(n50) );
  AOI22X1M U101 ( .A0(ALU_OUT[0]), .A1(n32), .B0(RdData[0]), .B1(n58), .Y(n65)
         );
  BUFX2M U102 ( .A(EN), .Y(CLK_EN) );
endmodule


module register ( CLK, RST, WrData, Address, WrEn, RdEn, RdData_Valid, RdData, 
        REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_Valid;
  wire   N11, N12, N13, N14, n235, \Reg_File[15][7] , \Reg_File[15][6] ,
         \Reg_File[15][5] , \Reg_File[15][4] , \Reg_File[15][3] ,
         \Reg_File[15][2] , \Reg_File[15][1] , \Reg_File[15][0] ,
         \Reg_File[14][7] , \Reg_File[14][6] , \Reg_File[14][5] ,
         \Reg_File[14][4] , \Reg_File[14][3] , \Reg_File[14][2] ,
         \Reg_File[14][1] , \Reg_File[14][0] , \Reg_File[13][7] ,
         \Reg_File[13][6] , \Reg_File[13][5] , \Reg_File[13][4] ,
         \Reg_File[13][3] , \Reg_File[13][2] , \Reg_File[13][1] ,
         \Reg_File[13][0] , \Reg_File[12][7] , \Reg_File[12][6] ,
         \Reg_File[12][5] , \Reg_File[12][4] , \Reg_File[12][3] ,
         \Reg_File[12][2] , \Reg_File[12][1] , \Reg_File[12][0] ,
         \Reg_File[11][7] , \Reg_File[11][6] , \Reg_File[11][5] ,
         \Reg_File[11][4] , \Reg_File[11][3] , \Reg_File[11][2] ,
         \Reg_File[11][1] , \Reg_File[11][0] , \Reg_File[10][7] ,
         \Reg_File[10][6] , \Reg_File[10][5] , \Reg_File[10][4] ,
         \Reg_File[10][3] , \Reg_File[10][2] , \Reg_File[10][1] ,
         \Reg_File[10][0] , \Reg_File[9][7] , \Reg_File[9][6] ,
         \Reg_File[9][5] , \Reg_File[9][4] , \Reg_File[9][3] ,
         \Reg_File[9][2] , \Reg_File[9][1] , \Reg_File[9][0] ,
         \Reg_File[8][7] , \Reg_File[8][6] , \Reg_File[8][5] ,
         \Reg_File[8][4] , \Reg_File[8][3] , \Reg_File[8][2] ,
         \Reg_File[8][1] , \Reg_File[8][0] , \Reg_File[7][7] ,
         \Reg_File[7][6] , \Reg_File[7][5] , \Reg_File[7][4] ,
         \Reg_File[7][3] , \Reg_File[7][2] , \Reg_File[7][1] ,
         \Reg_File[7][0] , \Reg_File[6][7] , \Reg_File[6][6] ,
         \Reg_File[6][5] , \Reg_File[6][4] , \Reg_File[6][3] ,
         \Reg_File[6][2] , \Reg_File[6][1] , \Reg_File[6][0] ,
         \Reg_File[5][7] , \Reg_File[5][6] , \Reg_File[5][5] ,
         \Reg_File[5][4] , \Reg_File[5][3] , \Reg_File[5][2] ,
         \Reg_File[5][1] , \Reg_File[5][0] , \Reg_File[4][7] ,
         \Reg_File[4][6] , \Reg_File[4][5] , \Reg_File[4][4] ,
         \Reg_File[4][3] , \Reg_File[4][2] , \Reg_File[4][1] ,
         \Reg_File[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n12, n13,
         n14, n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n1,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n17, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \RdData_reg[0]  ( .D(n40), .CK(CLK), .RN(n212), .Q(RdData[0]) );
  DFFRQX2M \Reg_File_reg[13][7]  ( .D(n160), .CK(CLK), .RN(n216), .Q(
        \Reg_File[13][7] ) );
  DFFRQX2M \Reg_File_reg[13][6]  ( .D(n159), .CK(CLK), .RN(n216), .Q(
        \Reg_File[13][6] ) );
  DFFRQX2M \Reg_File_reg[13][5]  ( .D(n158), .CK(CLK), .RN(n215), .Q(
        \Reg_File[13][5] ) );
  DFFRQX2M \Reg_File_reg[13][4]  ( .D(n157), .CK(CLK), .RN(n215), .Q(
        \Reg_File[13][4] ) );
  DFFRQX2M \Reg_File_reg[13][3]  ( .D(n156), .CK(CLK), .RN(n215), .Q(
        \Reg_File[13][3] ) );
  DFFRQX2M \Reg_File_reg[13][2]  ( .D(n155), .CK(CLK), .RN(n215), .Q(
        \Reg_File[13][2] ) );
  DFFRQX2M \Reg_File_reg[13][1]  ( .D(n154), .CK(CLK), .RN(n215), .Q(
        \Reg_File[13][1] ) );
  DFFRQX2M \Reg_File_reg[13][0]  ( .D(n153), .CK(CLK), .RN(n215), .Q(
        \Reg_File[13][0] ) );
  DFFRQX2M \Reg_File_reg[9][7]  ( .D(n128), .CK(CLK), .RN(n213), .Q(
        \Reg_File[9][7] ) );
  DFFRQX2M \Reg_File_reg[9][6]  ( .D(n127), .CK(CLK), .RN(n213), .Q(
        \Reg_File[9][6] ) );
  DFFRQX2M \Reg_File_reg[9][5]  ( .D(n126), .CK(CLK), .RN(n213), .Q(
        \Reg_File[9][5] ) );
  DFFRQX2M \Reg_File_reg[9][4]  ( .D(n125), .CK(CLK), .RN(n213), .Q(
        \Reg_File[9][4] ) );
  DFFRQX2M \Reg_File_reg[9][3]  ( .D(n124), .CK(CLK), .RN(n213), .Q(
        \Reg_File[9][3] ) );
  DFFRQX2M \Reg_File_reg[9][2]  ( .D(n123), .CK(CLK), .RN(n213), .Q(
        \Reg_File[9][2] ) );
  DFFRQX2M \Reg_File_reg[9][1]  ( .D(n122), .CK(CLK), .RN(n213), .Q(
        \Reg_File[9][1] ) );
  DFFRQX2M \Reg_File_reg[9][0]  ( .D(n121), .CK(CLK), .RN(n213), .Q(
        \Reg_File[9][0] ) );
  DFFRQX2M \Reg_File_reg[5][7]  ( .D(n96), .CK(CLK), .RN(n211), .Q(
        \Reg_File[5][7] ) );
  DFFRQX2M \Reg_File_reg[5][6]  ( .D(n95), .CK(CLK), .RN(n211), .Q(
        \Reg_File[5][6] ) );
  DFFRQX2M \Reg_File_reg[5][5]  ( .D(n94), .CK(CLK), .RN(n211), .Q(
        \Reg_File[5][5] ) );
  DFFRQX2M \Reg_File_reg[5][4]  ( .D(n93), .CK(CLK), .RN(n211), .Q(
        \Reg_File[5][4] ) );
  DFFRQX2M \Reg_File_reg[5][3]  ( .D(n92), .CK(CLK), .RN(n211), .Q(
        \Reg_File[5][3] ) );
  DFFRQX2M \Reg_File_reg[5][2]  ( .D(n91), .CK(CLK), .RN(n211), .Q(
        \Reg_File[5][2] ) );
  DFFRQX2M \Reg_File_reg[5][1]  ( .D(n90), .CK(CLK), .RN(n211), .Q(
        \Reg_File[5][1] ) );
  DFFRQX2M \Reg_File_reg[5][0]  ( .D(n89), .CK(CLK), .RN(n211), .Q(
        \Reg_File[5][0] ) );
  DFFRQX2M \Reg_File_reg[15][7]  ( .D(n176), .CK(CLK), .RN(n208), .Q(
        \Reg_File[15][7] ) );
  DFFRQX2M \Reg_File_reg[15][6]  ( .D(n175), .CK(CLK), .RN(n217), .Q(
        \Reg_File[15][6] ) );
  DFFRQX2M \Reg_File_reg[15][5]  ( .D(n174), .CK(CLK), .RN(n217), .Q(
        \Reg_File[15][5] ) );
  DFFRQX2M \Reg_File_reg[15][4]  ( .D(n173), .CK(CLK), .RN(n216), .Q(
        \Reg_File[15][4] ) );
  DFFRQX2M \Reg_File_reg[15][3]  ( .D(n172), .CK(CLK), .RN(n216), .Q(
        \Reg_File[15][3] ) );
  DFFRQX2M \Reg_File_reg[15][2]  ( .D(n171), .CK(CLK), .RN(n216), .Q(
        \Reg_File[15][2] ) );
  DFFRQX2M \Reg_File_reg[15][1]  ( .D(n170), .CK(CLK), .RN(n216), .Q(
        \Reg_File[15][1] ) );
  DFFRQX2M \Reg_File_reg[15][0]  ( .D(n169), .CK(CLK), .RN(n216), .Q(
        \Reg_File[15][0] ) );
  DFFRQX2M \Reg_File_reg[11][7]  ( .D(n144), .CK(CLK), .RN(n215), .Q(
        \Reg_File[11][7] ) );
  DFFRQX2M \Reg_File_reg[11][6]  ( .D(n143), .CK(CLK), .RN(n214), .Q(
        \Reg_File[11][6] ) );
  DFFRQX2M \Reg_File_reg[11][5]  ( .D(n142), .CK(CLK), .RN(n214), .Q(
        \Reg_File[11][5] ) );
  DFFRQX2M \Reg_File_reg[11][4]  ( .D(n141), .CK(CLK), .RN(n214), .Q(
        \Reg_File[11][4] ) );
  DFFRQX2M \Reg_File_reg[11][3]  ( .D(n140), .CK(CLK), .RN(n214), .Q(
        \Reg_File[11][3] ) );
  DFFRQX2M \Reg_File_reg[11][2]  ( .D(n139), .CK(CLK), .RN(n214), .Q(
        \Reg_File[11][2] ) );
  DFFRQX2M \Reg_File_reg[11][1]  ( .D(n138), .CK(CLK), .RN(n214), .Q(
        \Reg_File[11][1] ) );
  DFFRQX2M \Reg_File_reg[11][0]  ( .D(n137), .CK(CLK), .RN(n214), .Q(
        \Reg_File[11][0] ) );
  DFFRQX2M \Reg_File_reg[7][7]  ( .D(n112), .CK(CLK), .RN(n212), .Q(
        \Reg_File[7][7] ) );
  DFFRQX2M \Reg_File_reg[7][6]  ( .D(n111), .CK(CLK), .RN(n212), .Q(
        \Reg_File[7][6] ) );
  DFFRQX2M \Reg_File_reg[7][5]  ( .D(n110), .CK(CLK), .RN(n212), .Q(
        \Reg_File[7][5] ) );
  DFFRQX2M \Reg_File_reg[7][4]  ( .D(n109), .CK(CLK), .RN(n212), .Q(
        \Reg_File[7][4] ) );
  DFFRQX2M \Reg_File_reg[7][3]  ( .D(n108), .CK(CLK), .RN(n212), .Q(
        \Reg_File[7][3] ) );
  DFFRQX2M \Reg_File_reg[7][2]  ( .D(n107), .CK(CLK), .RN(n212), .Q(
        \Reg_File[7][2] ) );
  DFFRQX2M \Reg_File_reg[7][1]  ( .D(n106), .CK(CLK), .RN(n212), .Q(
        \Reg_File[7][1] ) );
  DFFRQX2M \Reg_File_reg[7][0]  ( .D(n105), .CK(CLK), .RN(n212), .Q(
        \Reg_File[7][0] ) );
  DFFRQX2M \Reg_File_reg[14][7]  ( .D(n168), .CK(CLK), .RN(n216), .Q(
        \Reg_File[14][7] ) );
  DFFRQX2M \Reg_File_reg[14][6]  ( .D(n167), .CK(CLK), .RN(n216), .Q(
        \Reg_File[14][6] ) );
  DFFRQX2M \Reg_File_reg[14][5]  ( .D(n166), .CK(CLK), .RN(n216), .Q(
        \Reg_File[14][5] ) );
  DFFRQX2M \Reg_File_reg[14][4]  ( .D(n165), .CK(CLK), .RN(n216), .Q(
        \Reg_File[14][4] ) );
  DFFRQX2M \Reg_File_reg[14][3]  ( .D(n164), .CK(CLK), .RN(n216), .Q(
        \Reg_File[14][3] ) );
  DFFRQX2M \Reg_File_reg[14][2]  ( .D(n163), .CK(CLK), .RN(n216), .Q(
        \Reg_File[14][2] ) );
  DFFRQX2M \Reg_File_reg[14][1]  ( .D(n162), .CK(CLK), .RN(n216), .Q(
        \Reg_File[14][1] ) );
  DFFRQX2M \Reg_File_reg[14][0]  ( .D(n161), .CK(CLK), .RN(n216), .Q(
        \Reg_File[14][0] ) );
  DFFRQX2M \Reg_File_reg[10][7]  ( .D(n136), .CK(CLK), .RN(n214), .Q(
        \Reg_File[10][7] ) );
  DFFRQX2M \Reg_File_reg[10][6]  ( .D(n135), .CK(CLK), .RN(n214), .Q(
        \Reg_File[10][6] ) );
  DFFRQX2M \Reg_File_reg[10][5]  ( .D(n134), .CK(CLK), .RN(n214), .Q(
        \Reg_File[10][5] ) );
  DFFRQX2M \Reg_File_reg[10][4]  ( .D(n133), .CK(CLK), .RN(n214), .Q(
        \Reg_File[10][4] ) );
  DFFRQX2M \Reg_File_reg[10][3]  ( .D(n132), .CK(CLK), .RN(n214), .Q(
        \Reg_File[10][3] ) );
  DFFRQX2M \Reg_File_reg[10][2]  ( .D(n131), .CK(CLK), .RN(n214), .Q(
        \Reg_File[10][2] ) );
  DFFRQX2M \Reg_File_reg[10][1]  ( .D(n130), .CK(CLK), .RN(n214), .Q(
        \Reg_File[10][1] ) );
  DFFRQX2M \Reg_File_reg[10][0]  ( .D(n129), .CK(CLK), .RN(n214), .Q(
        \Reg_File[10][0] ) );
  DFFRQX2M \Reg_File_reg[6][7]  ( .D(n104), .CK(CLK), .RN(n212), .Q(
        \Reg_File[6][7] ) );
  DFFRQX2M \Reg_File_reg[6][6]  ( .D(n103), .CK(CLK), .RN(n212), .Q(
        \Reg_File[6][6] ) );
  DFFRQX2M \Reg_File_reg[6][5]  ( .D(n102), .CK(CLK), .RN(n212), .Q(
        \Reg_File[6][5] ) );
  DFFRQX2M \Reg_File_reg[6][4]  ( .D(n101), .CK(CLK), .RN(n212), .Q(
        \Reg_File[6][4] ) );
  DFFRQX2M \Reg_File_reg[6][3]  ( .D(n100), .CK(CLK), .RN(n212), .Q(
        \Reg_File[6][3] ) );
  DFFRQX2M \Reg_File_reg[6][2]  ( .D(n99), .CK(CLK), .RN(n211), .Q(
        \Reg_File[6][2] ) );
  DFFRQX2M \Reg_File_reg[6][1]  ( .D(n98), .CK(CLK), .RN(n211), .Q(
        \Reg_File[6][1] ) );
  DFFRQX2M \Reg_File_reg[6][0]  ( .D(n97), .CK(CLK), .RN(n211), .Q(
        \Reg_File[6][0] ) );
  DFFRQX2M \Reg_File_reg[12][7]  ( .D(n152), .CK(CLK), .RN(n215), .Q(
        \Reg_File[12][7] ) );
  DFFRQX2M \Reg_File_reg[12][6]  ( .D(n151), .CK(CLK), .RN(n215), .Q(
        \Reg_File[12][6] ) );
  DFFRQX2M \Reg_File_reg[12][5]  ( .D(n150), .CK(CLK), .RN(n215), .Q(
        \Reg_File[12][5] ) );
  DFFRQX2M \Reg_File_reg[12][4]  ( .D(n149), .CK(CLK), .RN(n215), .Q(
        \Reg_File[12][4] ) );
  DFFRQX2M \Reg_File_reg[12][3]  ( .D(n148), .CK(CLK), .RN(n215), .Q(
        \Reg_File[12][3] ) );
  DFFRQX2M \Reg_File_reg[12][2]  ( .D(n147), .CK(CLK), .RN(n215), .Q(
        \Reg_File[12][2] ) );
  DFFRQX2M \Reg_File_reg[12][1]  ( .D(n146), .CK(CLK), .RN(n215), .Q(
        \Reg_File[12][1] ) );
  DFFRQX2M \Reg_File_reg[12][0]  ( .D(n145), .CK(CLK), .RN(n215), .Q(
        \Reg_File[12][0] ) );
  DFFRQX2M \Reg_File_reg[8][7]  ( .D(n120), .CK(CLK), .RN(n213), .Q(
        \Reg_File[8][7] ) );
  DFFRQX2M \Reg_File_reg[8][6]  ( .D(n119), .CK(CLK), .RN(n213), .Q(
        \Reg_File[8][6] ) );
  DFFRQX2M \Reg_File_reg[8][5]  ( .D(n118), .CK(CLK), .RN(n213), .Q(
        \Reg_File[8][5] ) );
  DFFRQX2M \Reg_File_reg[8][4]  ( .D(n117), .CK(CLK), .RN(n213), .Q(
        \Reg_File[8][4] ) );
  DFFRQX2M \Reg_File_reg[8][3]  ( .D(n116), .CK(CLK), .RN(n213), .Q(
        \Reg_File[8][3] ) );
  DFFRQX2M \Reg_File_reg[8][2]  ( .D(n115), .CK(CLK), .RN(n213), .Q(
        \Reg_File[8][2] ) );
  DFFRQX2M \Reg_File_reg[8][1]  ( .D(n114), .CK(CLK), .RN(n213), .Q(
        \Reg_File[8][1] ) );
  DFFRQX2M \Reg_File_reg[8][0]  ( .D(n113), .CK(CLK), .RN(n212), .Q(
        \Reg_File[8][0] ) );
  DFFRQX2M \Reg_File_reg[4][7]  ( .D(n88), .CK(CLK), .RN(n211), .Q(
        \Reg_File[4][7] ) );
  DFFRQX2M \Reg_File_reg[4][6]  ( .D(n87), .CK(CLK), .RN(n211), .Q(
        \Reg_File[4][6] ) );
  DFFRQX2M \Reg_File_reg[4][5]  ( .D(n86), .CK(CLK), .RN(n211), .Q(
        \Reg_File[4][5] ) );
  DFFRQX2M \Reg_File_reg[4][4]  ( .D(n85), .CK(CLK), .RN(n211), .Q(
        \Reg_File[4][4] ) );
  DFFRQX2M \Reg_File_reg[4][3]  ( .D(n84), .CK(CLK), .RN(n210), .Q(
        \Reg_File[4][3] ) );
  DFFRQX2M \Reg_File_reg[4][2]  ( .D(n83), .CK(CLK), .RN(n210), .Q(
        \Reg_File[4][2] ) );
  DFFRQX2M \Reg_File_reg[4][1]  ( .D(n82), .CK(CLK), .RN(n210), .Q(
        \Reg_File[4][1] ) );
  DFFRQX2M \Reg_File_reg[4][0]  ( .D(n81), .CK(CLK), .RN(n210), .Q(
        \Reg_File[4][0] ) );
  DFFRQX2M \RdData_reg[7]  ( .D(n47), .CK(CLK), .RN(n208), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n46), .CK(CLK), .RN(n208), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n45), .CK(CLK), .RN(n208), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n44), .CK(CLK), .RN(n210), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n43), .CK(CLK), .RN(n208), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n42), .CK(CLK), .RN(n208), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n41), .CK(CLK), .RN(n208), .Q(RdData[1]) );
  DFFSQX2M \Reg_File_reg[2][0]  ( .D(n65), .CK(CLK), .SN(n208), .Q(REG2[0]) );
  DFFRQX2M \Reg_File_reg[2][1]  ( .D(n66), .CK(CLK), .RN(n209), .Q(REG2[1]) );
  DFFRQX2M \Reg_File_reg[3][0]  ( .D(n73), .CK(CLK), .RN(n210), .Q(REG3[0]) );
  DFFRQX2M \Reg_File_reg[3][2]  ( .D(n75), .CK(CLK), .RN(n210), .Q(REG3[2]) );
  DFFRQX2M \Reg_File_reg[3][1]  ( .D(n74), .CK(CLK), .RN(n210), .Q(REG3[1]) );
  DFFSQX2M \Reg_File_reg[3][5]  ( .D(n78), .CK(CLK), .SN(n208), .Q(REG3[5]) );
  DFFRQX2M \Reg_File_reg[3][6]  ( .D(n79), .CK(CLK), .RN(n210), .Q(REG3[6]) );
  DFFRQX2M \Reg_File_reg[3][7]  ( .D(n80), .CK(CLK), .RN(n210), .Q(REG3[7]) );
  DFFRQX2M \Reg_File_reg[3][4]  ( .D(n77), .CK(CLK), .RN(n210), .Q(REG3[4]) );
  DFFRQX2M \Reg_File_reg[3][3]  ( .D(n76), .CK(CLK), .RN(n210), .Q(REG3[3]) );
  DFFRQX2M \Reg_File_reg[2][2]  ( .D(n67), .CK(CLK), .RN(n209), .Q(REG2[2]) );
  DFFRQX2M \Reg_File_reg[2][4]  ( .D(n69), .CK(CLK), .RN(n210), .Q(REG2[4]) );
  DFFRQX2M \Reg_File_reg[2][3]  ( .D(n68), .CK(CLK), .RN(n209), .Q(REG2[3]) );
  DFFSQX2M \Reg_File_reg[2][7]  ( .D(n72), .CK(CLK), .SN(n208), .Q(REG2[7]) );
  DFFRQX2M \Reg_File_reg[2][5]  ( .D(n70), .CK(CLK), .RN(n210), .Q(REG2[5]) );
  DFFRQX2M \Reg_File_reg[2][6]  ( .D(n71), .CK(CLK), .RN(n210), .Q(REG2[6]) );
  DFFRQX2M RdData_Valid_reg ( .D(n48), .CK(CLK), .RN(n208), .Q(RdData_Valid)
         );
  DFFRQX2M \Reg_File_reg[0][2]  ( .D(n51), .CK(CLK), .RN(n209), .Q(REG0[2]) );
  DFFRQX2M \Reg_File_reg[0][1]  ( .D(n50), .CK(CLK), .RN(n209), .Q(REG0[1]) );
  DFFRQX2M \Reg_File_reg[0][3]  ( .D(n52), .CK(CLK), .RN(n209), .Q(REG0[3]) );
  DFFRQX2M \Reg_File_reg[0][0]  ( .D(n49), .CK(CLK), .RN(n208), .Q(REG0[0]) );
  DFFRQX2M \Reg_File_reg[0][4]  ( .D(n53), .CK(CLK), .RN(n209), .Q(REG0[4]) );
  DFFRQX2M \Reg_File_reg[0][6]  ( .D(n55), .CK(CLK), .RN(n209), .Q(REG0[6]) );
  DFFRQX2M \Reg_File_reg[1][3]  ( .D(n60), .CK(CLK), .RN(n209), .Q(REG1[3]) );
  DFFRQX1M \Reg_File_reg[0][5]  ( .D(n54), .CK(CLK), .RN(RST), .Q(REG0[5]) );
  DFFRHQX2M \Reg_File_reg[1][2]  ( .D(n59), .CK(CLK), .RN(n209), .Q(REG1[2])
         );
  DFFRHQX1M \Reg_File_reg[1][5]  ( .D(n62), .CK(CLK), .RN(n209), .Q(REG1[5])
         );
  DFFRHQX1M \Reg_File_reg[1][4]  ( .D(n61), .CK(CLK), .RN(n209), .Q(REG1[4])
         );
  DFFRHQX1M \Reg_File_reg[1][1]  ( .D(n58), .CK(CLK), .RN(n209), .Q(REG1[1])
         );
  DFFRHQX4M \Reg_File_reg[1][7]  ( .D(n64), .CK(CLK), .RN(n208), .Q(n235) );
  DFFRHQX1M \Reg_File_reg[0][7]  ( .D(n56), .CK(CLK), .RN(n209), .Q(REG0[7])
         );
  DFFRHQX8M \Reg_File_reg[1][0]  ( .D(n57), .CK(CLK), .RN(n208), .Q(REG1[0])
         );
  DFFRHQX4M \Reg_File_reg[1][6]  ( .D(n63), .CK(CLK), .RN(n208), .Q(REG1[6])
         );
  INVX6M U3 ( .A(n235), .Y(n1) );
  CLKINVX16M U4 ( .A(n1), .Y(REG1[7]) );
  NOR2X2M U5 ( .A(n225), .B(n224), .Y(n3) );
  OAI2BB2XLM U6 ( .B0(n14), .B1(n229), .A0N(REG0[4]), .A1N(n14), .Y(n53) );
  OAI2BB2XLM U7 ( .B0(n14), .B1(n228), .A0N(REG0[5]), .A1N(n14), .Y(n54) );
  MX4XLM U8 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n202), 
        .S1(N12), .Y(n11) );
  MX4XLM U9 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n202), 
        .S1(N12), .Y(n179) );
  MX4XLM U10 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n202), 
        .S1(N12), .Y(n183) );
  MX2XLM U11 ( .A(REG1[1]), .B(WrData[1]), .S0(n3), .Y(n58) );
  MX2XLM U12 ( .A(REG1[2]), .B(WrData[2]), .S0(n3), .Y(n59) );
  MX2XLM U13 ( .A(REG1[3]), .B(WrData[3]), .S0(n3), .Y(n60) );
  NOR2X2M U14 ( .A(n207), .B(N13), .Y(n20) );
  NOR2BX2M U15 ( .AN(N13), .B(n206), .Y(n23) );
  NOR2BX2M U16 ( .AN(N13), .B(n207), .Y(n26) );
  INVX2M U17 ( .A(n200), .Y(n202) );
  INVX2M U18 ( .A(n200), .Y(n201) );
  INVX2M U19 ( .A(n12), .Y(n226) );
  BUFX2M U20 ( .A(n205), .Y(n200) );
  INVX2M U21 ( .A(n14), .Y(n223) );
  INVX2M U22 ( .A(WrData[0]), .Y(n233) );
  INVX2M U23 ( .A(WrData[1]), .Y(n232) );
  INVX2M U24 ( .A(WrData[2]), .Y(n231) );
  INVX2M U25 ( .A(WrData[3]), .Y(n230) );
  INVX2M U26 ( .A(WrData[4]), .Y(n229) );
  INVX2M U27 ( .A(WrData[5]), .Y(n228) );
  INVX2M U28 ( .A(WrData[6]), .Y(n227) );
  NAND2BX2M U29 ( .AN(n225), .B(n16), .Y(n14) );
  NAND2BX2M U30 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  NOR2BX2M U31 ( .AN(WrEn), .B(RdEn), .Y(n13) );
  INVX2M U32 ( .A(n18), .Y(n224) );
  BUFX2M U33 ( .A(n222), .Y(n208) );
  BUFX2M U34 ( .A(n222), .Y(n209) );
  BUFX2M U35 ( .A(n221), .Y(n210) );
  BUFX2M U36 ( .A(n221), .Y(n211) );
  BUFX2M U37 ( .A(n220), .Y(n212) );
  BUFX2M U38 ( .A(n220), .Y(n213) );
  BUFX2M U39 ( .A(n219), .Y(n214) );
  BUFX2M U40 ( .A(n219), .Y(n215) );
  BUFX2M U41 ( .A(n218), .Y(n216) );
  BUFX2M U42 ( .A(n218), .Y(n217) );
  NOR2BX2M U43 ( .AN(n38), .B(N11), .Y(n30) );
  NOR2BX2M U44 ( .AN(n38), .B(n205), .Y(n32) );
  NOR2BX2M U45 ( .AN(n27), .B(n202), .Y(n16) );
  NOR2BX2M U46 ( .AN(n27), .B(n205), .Y(n18) );
  NAND2X2M U47 ( .A(n30), .B(n15), .Y(n29) );
  NAND2X2M U48 ( .A(n32), .B(n15), .Y(n31) );
  NAND2X2M U49 ( .A(n30), .B(n20), .Y(n33) );
  NAND2X2M U50 ( .A(n32), .B(n20), .Y(n34) );
  NAND2X2M U51 ( .A(n30), .B(n23), .Y(n35) );
  NAND2X2M U52 ( .A(n32), .B(n23), .Y(n36) );
  NAND2X2M U53 ( .A(n30), .B(n26), .Y(n37) );
  NAND2X2M U54 ( .A(n32), .B(n26), .Y(n39) );
  NAND2X2M U55 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U56 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X2M U57 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U58 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U59 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U60 ( .A(n26), .B(n18), .Y(n28) );
  INVX2M U61 ( .A(WrData[7]), .Y(n234) );
  INVX2M U62 ( .A(n15), .Y(n225) );
  INVX2M U63 ( .A(n207), .Y(n206) );
  BUFX2M U64 ( .A(RST), .Y(n221) );
  BUFX2M U65 ( .A(RST), .Y(n220) );
  BUFX2M U66 ( .A(RST), .Y(n219) );
  BUFX2M U67 ( .A(RST), .Y(n218) );
  BUFX2M U68 ( .A(RST), .Y(n222) );
  OAI2BB2X1M U69 ( .B0(n233), .B1(n22), .A0N(\Reg_File[4][0] ), .A1N(n22), .Y(
        n81) );
  OAI2BB2X1M U70 ( .B0(n232), .B1(n22), .A0N(\Reg_File[4][1] ), .A1N(n22), .Y(
        n82) );
  OAI2BB2X1M U71 ( .B0(n231), .B1(n22), .A0N(\Reg_File[4][2] ), .A1N(n22), .Y(
        n83) );
  OAI2BB2X1M U72 ( .B0(n230), .B1(n22), .A0N(\Reg_File[4][3] ), .A1N(n22), .Y(
        n84) );
  OAI2BB2X1M U73 ( .B0(n229), .B1(n22), .A0N(\Reg_File[4][4] ), .A1N(n22), .Y(
        n85) );
  OAI2BB2X1M U74 ( .B0(n228), .B1(n22), .A0N(\Reg_File[4][5] ), .A1N(n22), .Y(
        n86) );
  OAI2BB2X1M U75 ( .B0(n227), .B1(n22), .A0N(\Reg_File[4][6] ), .A1N(n22), .Y(
        n87) );
  OAI2BB2X1M U76 ( .B0(n234), .B1(n22), .A0N(\Reg_File[4][7] ), .A1N(n22), .Y(
        n88) );
  OAI2BB2X1M U77 ( .B0(n233), .B1(n24), .A0N(\Reg_File[5][0] ), .A1N(n24), .Y(
        n89) );
  OAI2BB2X1M U78 ( .B0(n232), .B1(n24), .A0N(\Reg_File[5][1] ), .A1N(n24), .Y(
        n90) );
  OAI2BB2X1M U79 ( .B0(n231), .B1(n24), .A0N(\Reg_File[5][2] ), .A1N(n24), .Y(
        n91) );
  OAI2BB2X1M U80 ( .B0(n230), .B1(n24), .A0N(\Reg_File[5][3] ), .A1N(n24), .Y(
        n92) );
  OAI2BB2X1M U81 ( .B0(n229), .B1(n24), .A0N(\Reg_File[5][4] ), .A1N(n24), .Y(
        n93) );
  OAI2BB2X1M U82 ( .B0(n228), .B1(n24), .A0N(\Reg_File[5][5] ), .A1N(n24), .Y(
        n94) );
  OAI2BB2X1M U83 ( .B0(n227), .B1(n24), .A0N(\Reg_File[5][6] ), .A1N(n24), .Y(
        n95) );
  OAI2BB2X1M U84 ( .B0(n234), .B1(n24), .A0N(\Reg_File[5][7] ), .A1N(n24), .Y(
        n96) );
  OAI2BB2X1M U85 ( .B0(n233), .B1(n25), .A0N(\Reg_File[6][0] ), .A1N(n25), .Y(
        n97) );
  OAI2BB2X1M U86 ( .B0(n232), .B1(n25), .A0N(\Reg_File[6][1] ), .A1N(n25), .Y(
        n98) );
  OAI2BB2X1M U87 ( .B0(n231), .B1(n25), .A0N(\Reg_File[6][2] ), .A1N(n25), .Y(
        n99) );
  OAI2BB2X1M U88 ( .B0(n230), .B1(n25), .A0N(\Reg_File[6][3] ), .A1N(n25), .Y(
        n100) );
  OAI2BB2X1M U89 ( .B0(n229), .B1(n25), .A0N(\Reg_File[6][4] ), .A1N(n25), .Y(
        n101) );
  OAI2BB2X1M U90 ( .B0(n228), .B1(n25), .A0N(\Reg_File[6][5] ), .A1N(n25), .Y(
        n102) );
  OAI2BB2X1M U91 ( .B0(n227), .B1(n25), .A0N(\Reg_File[6][6] ), .A1N(n25), .Y(
        n103) );
  OAI2BB2X1M U92 ( .B0(n234), .B1(n25), .A0N(\Reg_File[6][7] ), .A1N(n25), .Y(
        n104) );
  OAI2BB2X1M U93 ( .B0(n233), .B1(n28), .A0N(\Reg_File[7][0] ), .A1N(n28), .Y(
        n105) );
  OAI2BB2X1M U94 ( .B0(n232), .B1(n28), .A0N(\Reg_File[7][1] ), .A1N(n28), .Y(
        n106) );
  OAI2BB2X1M U95 ( .B0(n231), .B1(n28), .A0N(\Reg_File[7][2] ), .A1N(n28), .Y(
        n107) );
  OAI2BB2X1M U96 ( .B0(n230), .B1(n28), .A0N(\Reg_File[7][3] ), .A1N(n28), .Y(
        n108) );
  OAI2BB2X1M U97 ( .B0(n229), .B1(n28), .A0N(\Reg_File[7][4] ), .A1N(n28), .Y(
        n109) );
  OAI2BB2X1M U98 ( .B0(n228), .B1(n28), .A0N(\Reg_File[7][5] ), .A1N(n28), .Y(
        n110) );
  OAI2BB2X1M U99 ( .B0(n227), .B1(n28), .A0N(\Reg_File[7][6] ), .A1N(n28), .Y(
        n111) );
  OAI2BB2X1M U100 ( .B0(n234), .B1(n28), .A0N(\Reg_File[7][7] ), .A1N(n28), 
        .Y(n112) );
  OAI2BB2X1M U101 ( .B0(n233), .B1(n29), .A0N(\Reg_File[8][0] ), .A1N(n29), 
        .Y(n113) );
  OAI2BB2X1M U102 ( .B0(n232), .B1(n29), .A0N(\Reg_File[8][1] ), .A1N(n29), 
        .Y(n114) );
  OAI2BB2X1M U103 ( .B0(n231), .B1(n29), .A0N(\Reg_File[8][2] ), .A1N(n29), 
        .Y(n115) );
  OAI2BB2X1M U104 ( .B0(n230), .B1(n29), .A0N(\Reg_File[8][3] ), .A1N(n29), 
        .Y(n116) );
  OAI2BB2X1M U105 ( .B0(n229), .B1(n29), .A0N(\Reg_File[8][4] ), .A1N(n29), 
        .Y(n117) );
  OAI2BB2X1M U106 ( .B0(n228), .B1(n29), .A0N(\Reg_File[8][5] ), .A1N(n29), 
        .Y(n118) );
  OAI2BB2X1M U107 ( .B0(n227), .B1(n29), .A0N(\Reg_File[8][6] ), .A1N(n29), 
        .Y(n119) );
  OAI2BB2X1M U108 ( .B0(n234), .B1(n29), .A0N(\Reg_File[8][7] ), .A1N(n29), 
        .Y(n120) );
  OAI2BB2X1M U109 ( .B0(n233), .B1(n31), .A0N(\Reg_File[9][0] ), .A1N(n31), 
        .Y(n121) );
  OAI2BB2X1M U110 ( .B0(n232), .B1(n31), .A0N(\Reg_File[9][1] ), .A1N(n31), 
        .Y(n122) );
  OAI2BB2X1M U111 ( .B0(n231), .B1(n31), .A0N(\Reg_File[9][2] ), .A1N(n31), 
        .Y(n123) );
  OAI2BB2X1M U112 ( .B0(n230), .B1(n31), .A0N(\Reg_File[9][3] ), .A1N(n31), 
        .Y(n124) );
  OAI2BB2X1M U113 ( .B0(n229), .B1(n31), .A0N(\Reg_File[9][4] ), .A1N(n31), 
        .Y(n125) );
  OAI2BB2X1M U114 ( .B0(n228), .B1(n31), .A0N(\Reg_File[9][5] ), .A1N(n31), 
        .Y(n126) );
  OAI2BB2X1M U115 ( .B0(n227), .B1(n31), .A0N(\Reg_File[9][6] ), .A1N(n31), 
        .Y(n127) );
  OAI2BB2X1M U116 ( .B0(n234), .B1(n31), .A0N(\Reg_File[9][7] ), .A1N(n31), 
        .Y(n128) );
  OAI2BB2X1M U117 ( .B0(n233), .B1(n33), .A0N(\Reg_File[10][0] ), .A1N(n33), 
        .Y(n129) );
  OAI2BB2X1M U118 ( .B0(n232), .B1(n33), .A0N(\Reg_File[10][1] ), .A1N(n33), 
        .Y(n130) );
  OAI2BB2X1M U119 ( .B0(n231), .B1(n33), .A0N(\Reg_File[10][2] ), .A1N(n33), 
        .Y(n131) );
  OAI2BB2X1M U120 ( .B0(n230), .B1(n33), .A0N(\Reg_File[10][3] ), .A1N(n33), 
        .Y(n132) );
  OAI2BB2X1M U121 ( .B0(n229), .B1(n33), .A0N(\Reg_File[10][4] ), .A1N(n33), 
        .Y(n133) );
  OAI2BB2X1M U122 ( .B0(n228), .B1(n33), .A0N(\Reg_File[10][5] ), .A1N(n33), 
        .Y(n134) );
  OAI2BB2X1M U123 ( .B0(n227), .B1(n33), .A0N(\Reg_File[10][6] ), .A1N(n33), 
        .Y(n135) );
  OAI2BB2X1M U124 ( .B0(n234), .B1(n33), .A0N(\Reg_File[10][7] ), .A1N(n33), 
        .Y(n136) );
  OAI2BB2X1M U125 ( .B0(n233), .B1(n34), .A0N(\Reg_File[11][0] ), .A1N(n34), 
        .Y(n137) );
  OAI2BB2X1M U126 ( .B0(n232), .B1(n34), .A0N(\Reg_File[11][1] ), .A1N(n34), 
        .Y(n138) );
  OAI2BB2X1M U127 ( .B0(n231), .B1(n34), .A0N(\Reg_File[11][2] ), .A1N(n34), 
        .Y(n139) );
  OAI2BB2X1M U128 ( .B0(n230), .B1(n34), .A0N(\Reg_File[11][3] ), .A1N(n34), 
        .Y(n140) );
  OAI2BB2X1M U129 ( .B0(n229), .B1(n34), .A0N(\Reg_File[11][4] ), .A1N(n34), 
        .Y(n141) );
  OAI2BB2X1M U130 ( .B0(n228), .B1(n34), .A0N(\Reg_File[11][5] ), .A1N(n34), 
        .Y(n142) );
  OAI2BB2X1M U131 ( .B0(n227), .B1(n34), .A0N(\Reg_File[11][6] ), .A1N(n34), 
        .Y(n143) );
  OAI2BB2X1M U132 ( .B0(n234), .B1(n34), .A0N(\Reg_File[11][7] ), .A1N(n34), 
        .Y(n144) );
  OAI2BB2X1M U133 ( .B0(n233), .B1(n35), .A0N(\Reg_File[12][0] ), .A1N(n35), 
        .Y(n145) );
  OAI2BB2X1M U134 ( .B0(n232), .B1(n35), .A0N(\Reg_File[12][1] ), .A1N(n35), 
        .Y(n146) );
  OAI2BB2X1M U135 ( .B0(n231), .B1(n35), .A0N(\Reg_File[12][2] ), .A1N(n35), 
        .Y(n147) );
  OAI2BB2X1M U136 ( .B0(n230), .B1(n35), .A0N(\Reg_File[12][3] ), .A1N(n35), 
        .Y(n148) );
  OAI2BB2X1M U137 ( .B0(n229), .B1(n35), .A0N(\Reg_File[12][4] ), .A1N(n35), 
        .Y(n149) );
  OAI2BB2X1M U138 ( .B0(n228), .B1(n35), .A0N(\Reg_File[12][5] ), .A1N(n35), 
        .Y(n150) );
  OAI2BB2X1M U139 ( .B0(n227), .B1(n35), .A0N(\Reg_File[12][6] ), .A1N(n35), 
        .Y(n151) );
  OAI2BB2X1M U140 ( .B0(n234), .B1(n35), .A0N(\Reg_File[12][7] ), .A1N(n35), 
        .Y(n152) );
  OAI2BB2X1M U141 ( .B0(n233), .B1(n36), .A0N(\Reg_File[13][0] ), .A1N(n36), 
        .Y(n153) );
  OAI2BB2X1M U142 ( .B0(n232), .B1(n36), .A0N(\Reg_File[13][1] ), .A1N(n36), 
        .Y(n154) );
  OAI2BB2X1M U143 ( .B0(n231), .B1(n36), .A0N(\Reg_File[13][2] ), .A1N(n36), 
        .Y(n155) );
  OAI2BB2X1M U144 ( .B0(n230), .B1(n36), .A0N(\Reg_File[13][3] ), .A1N(n36), 
        .Y(n156) );
  OAI2BB2X1M U145 ( .B0(n229), .B1(n36), .A0N(\Reg_File[13][4] ), .A1N(n36), 
        .Y(n157) );
  OAI2BB2X1M U146 ( .B0(n228), .B1(n36), .A0N(\Reg_File[13][5] ), .A1N(n36), 
        .Y(n158) );
  OAI2BB2X1M U147 ( .B0(n227), .B1(n36), .A0N(\Reg_File[13][6] ), .A1N(n36), 
        .Y(n159) );
  OAI2BB2X1M U148 ( .B0(n234), .B1(n36), .A0N(\Reg_File[13][7] ), .A1N(n36), 
        .Y(n160) );
  OAI2BB2X1M U149 ( .B0(n233), .B1(n37), .A0N(\Reg_File[14][0] ), .A1N(n37), 
        .Y(n161) );
  OAI2BB2X1M U150 ( .B0(n232), .B1(n37), .A0N(\Reg_File[14][1] ), .A1N(n37), 
        .Y(n162) );
  OAI2BB2X1M U151 ( .B0(n231), .B1(n37), .A0N(\Reg_File[14][2] ), .A1N(n37), 
        .Y(n163) );
  OAI2BB2X1M U152 ( .B0(n230), .B1(n37), .A0N(\Reg_File[14][3] ), .A1N(n37), 
        .Y(n164) );
  OAI2BB2X1M U153 ( .B0(n229), .B1(n37), .A0N(\Reg_File[14][4] ), .A1N(n37), 
        .Y(n165) );
  OAI2BB2X1M U154 ( .B0(n228), .B1(n37), .A0N(\Reg_File[14][5] ), .A1N(n37), 
        .Y(n166) );
  OAI2BB2X1M U155 ( .B0(n227), .B1(n37), .A0N(\Reg_File[14][6] ), .A1N(n37), 
        .Y(n167) );
  OAI2BB2X1M U156 ( .B0(n234), .B1(n37), .A0N(\Reg_File[14][7] ), .A1N(n37), 
        .Y(n168) );
  OAI2BB2X1M U157 ( .B0(n233), .B1(n39), .A0N(\Reg_File[15][0] ), .A1N(n39), 
        .Y(n169) );
  OAI2BB2X1M U158 ( .B0(n232), .B1(n39), .A0N(\Reg_File[15][1] ), .A1N(n39), 
        .Y(n170) );
  OAI2BB2X1M U159 ( .B0(n231), .B1(n39), .A0N(\Reg_File[15][2] ), .A1N(n39), 
        .Y(n171) );
  OAI2BB2X1M U160 ( .B0(n230), .B1(n39), .A0N(\Reg_File[15][3] ), .A1N(n39), 
        .Y(n172) );
  OAI2BB2X1M U161 ( .B0(n229), .B1(n39), .A0N(\Reg_File[15][4] ), .A1N(n39), 
        .Y(n173) );
  OAI2BB2X1M U162 ( .B0(n228), .B1(n39), .A0N(\Reg_File[15][5] ), .A1N(n39), 
        .Y(n174) );
  OAI2BB2X1M U163 ( .B0(n227), .B1(n39), .A0N(\Reg_File[15][6] ), .A1N(n39), 
        .Y(n175) );
  OAI2BB2X1M U164 ( .B0(n234), .B1(n39), .A0N(\Reg_File[15][7] ), .A1N(n39), 
        .Y(n176) );
  OAI2BB2X1M U165 ( .B0(n232), .B1(n19), .A0N(REG2[1]), .A1N(n19), .Y(n66) );
  OAI2BB2X1M U166 ( .B0(n231), .B1(n19), .A0N(REG2[2]), .A1N(n19), .Y(n67) );
  OAI2BB2X1M U167 ( .B0(n230), .B1(n19), .A0N(REG2[3]), .A1N(n19), .Y(n68) );
  OAI2BB2X1M U168 ( .B0(n229), .B1(n19), .A0N(REG2[4]), .A1N(n19), .Y(n69) );
  OAI2BB2X1M U169 ( .B0(n228), .B1(n19), .A0N(REG2[5]), .A1N(n19), .Y(n70) );
  OAI2BB2X1M U170 ( .B0(n227), .B1(n19), .A0N(REG2[6]), .A1N(n19), .Y(n71) );
  OAI2BB2X1M U171 ( .B0(n233), .B1(n21), .A0N(REG3[0]), .A1N(n21), .Y(n73) );
  OAI2BB2X1M U172 ( .B0(n232), .B1(n21), .A0N(REG3[1]), .A1N(n21), .Y(n74) );
  OAI2BB2X1M U173 ( .B0(n231), .B1(n21), .A0N(REG3[2]), .A1N(n21), .Y(n75) );
  OAI2BB2X1M U174 ( .B0(n230), .B1(n21), .A0N(REG3[3]), .A1N(n21), .Y(n76) );
  OAI2BB2X1M U175 ( .B0(n229), .B1(n21), .A0N(REG3[4]), .A1N(n21), .Y(n77) );
  OAI2BB2X1M U176 ( .B0(n227), .B1(n21), .A0N(REG3[6]), .A1N(n21), .Y(n79) );
  OAI2BB2X1M U177 ( .B0(n234), .B1(n21), .A0N(REG3[7]), .A1N(n21), .Y(n80) );
  NOR2BX2M U178 ( .AN(n13), .B(N14), .Y(n27) );
  OAI2BB2X1M U179 ( .B0(n233), .B1(n19), .A0N(REG2[0]), .A1N(n19), .Y(n65) );
  OAI2BB2X1M U180 ( .B0(n234), .B1(n19), .A0N(REG2[7]), .A1N(n19), .Y(n72) );
  OAI2BB2X1M U181 ( .B0(n228), .B1(n21), .A0N(REG3[5]), .A1N(n21), .Y(n78) );
  OAI2BB2X1M U182 ( .B0(n14), .B1(n233), .A0N(REG0[0]), .A1N(n14), .Y(n49) );
  OAI2BB2X1M U183 ( .B0(n14), .B1(n232), .A0N(REG0[1]), .A1N(n14), .Y(n50) );
  OAI2BB2X1M U184 ( .B0(n14), .B1(n231), .A0N(REG0[2]), .A1N(n14), .Y(n51) );
  OAI2BB2X1M U185 ( .B0(n14), .B1(n230), .A0N(REG0[3]), .A1N(n14), .Y(n52) );
  MX4X1M U186 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n202), .S1(n206), .Y(n10)
         );
  MX4X1M U187 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(
        \Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n202), .S1(N12), .Y(n178)
         );
  MX4X1M U188 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(
        \Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n202), .S1(N12), .Y(n182)
         );
  MX4X1M U189 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(
        \Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n202), .S1(N12), .Y(n186)
         );
  MX4X1M U190 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n201), .S1(n206), .Y(n190) );
  MX4X1M U191 ( .A(\Reg_File[12][0] ), .B(\Reg_File[13][0] ), .C(
        \Reg_File[14][0] ), .D(\Reg_File[15][0] ), .S0(n201), .S1(n206), .Y(n4) );
  MX4X1M U192 ( .A(\Reg_File[12][2] ), .B(\Reg_File[13][2] ), .C(
        \Reg_File[14][2] ), .D(\Reg_File[15][2] ), .S0(n202), .S1(n206), .Y(
        n17) );
  MX4X1M U193 ( .A(\Reg_File[12][3] ), .B(\Reg_File[13][3] ), .C(
        \Reg_File[14][3] ), .D(\Reg_File[15][3] ), .S0(n202), .S1(N12), .Y(
        n180) );
  MX4X1M U194 ( .A(\Reg_File[12][4] ), .B(\Reg_File[13][4] ), .C(
        \Reg_File[14][4] ), .D(\Reg_File[15][4] ), .S0(n202), .S1(N12), .Y(
        n184) );
  MX4X1M U195 ( .A(\Reg_File[12][5] ), .B(\Reg_File[13][5] ), .C(
        \Reg_File[14][5] ), .D(\Reg_File[15][5] ), .S0(n201), .S1(n206), .Y(
        n188) );
  MX4X1M U196 ( .A(\Reg_File[12][6] ), .B(\Reg_File[13][6] ), .C(
        \Reg_File[14][6] ), .D(\Reg_File[15][6] ), .S0(n201), .S1(n206), .Y(
        n192) );
  MX4X1M U197 ( .A(\Reg_File[12][7] ), .B(\Reg_File[13][7] ), .C(
        \Reg_File[14][7] ), .D(\Reg_File[15][7] ), .S0(n201), .S1(n206), .Y(
        n196) );
  MX2X2M U198 ( .A(REG0[6]), .B(WrData[6]), .S0(n223), .Y(n55) );
  MX2XLM U199 ( .A(REG1[4]), .B(WrData[4]), .S0(n3), .Y(n61) );
  MX2XLM U200 ( .A(REG1[5]), .B(WrData[5]), .S0(n3), .Y(n62) );
  AND2X2M U201 ( .A(N14), .B(n13), .Y(n38) );
  AO22X1M U202 ( .A0(N43), .A1(n226), .B0(RdData[0]), .B1(n12), .Y(n40) );
  MX4X1M U203 ( .A(n7), .B(n5), .C(n6), .D(n4), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U204 ( .A(\Reg_File[8][0] ), .B(\Reg_File[9][0] ), .C(
        \Reg_File[10][0] ), .D(\Reg_File[11][0] ), .S0(n201), .S1(N12), .Y(n5)
         );
  MX4X1M U205 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(n201), .S1(N12), .Y(n6)
         );
  AO22X1M U206 ( .A0(N42), .A1(n226), .B0(RdData[1]), .B1(n12), .Y(n41) );
  MX4X1M U207 ( .A(n11), .B(n9), .C(n10), .D(n8), .S0(N14), .S1(N13), .Y(N42)
         );
  MX4X1M U208 ( .A(\Reg_File[8][1] ), .B(\Reg_File[9][1] ), .C(
        \Reg_File[10][1] ), .D(\Reg_File[11][1] ), .S0(n201), .S1(N12), .Y(n9)
         );
  MX4X1M U209 ( .A(\Reg_File[12][1] ), .B(\Reg_File[13][1] ), .C(
        \Reg_File[14][1] ), .D(\Reg_File[15][1] ), .S0(n201), .S1(n206), .Y(n8) );
  AO22X1M U210 ( .A0(N41), .A1(n226), .B0(RdData[2]), .B1(n12), .Y(n42) );
  MX4X1M U211 ( .A(n179), .B(n177), .C(n178), .D(n17), .S0(N14), .S1(N13), .Y(
        N41) );
  MX4X1M U212 ( .A(\Reg_File[8][2] ), .B(\Reg_File[9][2] ), .C(
        \Reg_File[10][2] ), .D(\Reg_File[11][2] ), .S0(n202), .S1(N12), .Y(
        n177) );
  AO22X1M U213 ( .A0(N40), .A1(n226), .B0(RdData[3]), .B1(n12), .Y(n43) );
  MX4X1M U214 ( .A(n183), .B(n181), .C(n182), .D(n180), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U215 ( .A(\Reg_File[8][3] ), .B(\Reg_File[9][3] ), .C(
        \Reg_File[10][3] ), .D(\Reg_File[11][3] ), .S0(n202), .S1(N12), .Y(
        n181) );
  AO22X1M U216 ( .A0(N39), .A1(n226), .B0(RdData[4]), .B1(n12), .Y(n44) );
  MX4X1M U217 ( .A(n187), .B(n185), .C(n186), .D(n184), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4XLM U218 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n201), 
        .S1(N12), .Y(n187) );
  MX4X1M U219 ( .A(\Reg_File[8][4] ), .B(\Reg_File[9][4] ), .C(
        \Reg_File[10][4] ), .D(\Reg_File[11][4] ), .S0(n202), .S1(N12), .Y(
        n185) );
  AO22X1M U220 ( .A0(N38), .A1(n226), .B0(RdData[5]), .B1(n12), .Y(n45) );
  MX4X1M U221 ( .A(n191), .B(n189), .C(n190), .D(n188), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4XLM U222 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n201), 
        .S1(n206), .Y(n191) );
  MX4X1M U223 ( .A(\Reg_File[8][5] ), .B(\Reg_File[9][5] ), .C(
        \Reg_File[10][5] ), .D(\Reg_File[11][5] ), .S0(N11), .S1(n206), .Y(
        n189) );
  AO22X1M U224 ( .A0(N37), .A1(n226), .B0(RdData[6]), .B1(n12), .Y(n46) );
  MX4X1M U225 ( .A(n195), .B(n193), .C(n194), .D(n192), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U226 ( .A(\Reg_File[8][6] ), .B(\Reg_File[9][6] ), .C(
        \Reg_File[10][6] ), .D(\Reg_File[11][6] ), .S0(N11), .S1(n206), .Y(
        n193) );
  MX4X1M U227 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n202), .S1(n206), .Y(n194) );
  AO22X1M U228 ( .A0(N36), .A1(n226), .B0(RdData[7]), .B1(n12), .Y(n47) );
  MX4X1M U229 ( .A(n199), .B(n197), .C(n198), .D(n196), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U230 ( .A(\Reg_File[8][7] ), .B(\Reg_File[9][7] ), .C(
        \Reg_File[10][7] ), .D(\Reg_File[11][7] ), .S0(N11), .S1(n206), .Y(
        n197) );
  MX4X1M U231 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n201), .S1(n206), .Y(n198) );
  INVX2M U232 ( .A(N11), .Y(n205) );
  NOR2X2M U233 ( .A(n206), .B(N13), .Y(n15) );
  OAI2BB1X2M U234 ( .A0N(RdData_Valid), .A1N(n13), .B0(n12), .Y(n48) );
  INVX2M U235 ( .A(N12), .Y(n207) );
  MX2XLM U236 ( .A(REG1[7]), .B(WrData[7]), .S0(n3), .Y(n64) );
  MX4XLM U237 ( .A(n204), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n201), 
        .S1(n206), .Y(n199) );
  MX4XLM U238 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n201), 
        .S1(n206), .Y(n7) );
  MX4XLM U239 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n201), 
        .S1(n206), .Y(n195) );
  MX2XLM U240 ( .A(REG1[6]), .B(WrData[6]), .S0(n3), .Y(n63) );
  MX2XLM U241 ( .A(REG1[0]), .B(WrData[0]), .S0(n3), .Y(n57) );
  INVXLM U242 ( .A(REG0[7]), .Y(n203) );
  INVX2M U243 ( .A(n203), .Y(n204) );
  MX2XLM U244 ( .A(n204), .B(WrData[7]), .S0(n223), .Y(n56) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  NAND2XLM U1 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVXLM U2 ( .A(B[1]), .Y(n8) );
  INVXLM U3 ( .A(B[2]), .Y(n7) );
  INVXLM U4 ( .A(B[3]), .Y(n6) );
  INVXLM U5 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U6 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U7 ( .A(B[4]), .Y(n5) );
  INVXLM U8 ( .A(B[5]), .Y(n4) );
  INVX2M U9 ( .A(A[0]), .Y(n1) );
  INVXLM U10 ( .A(B[7]), .Y(n2) );
  INVXLM U11 ( .A(B[0]), .Y(n9) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  XNOR2X2M U3 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  NAND2X2M U4 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n11, n14, n15, n13, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n8), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n7), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n4), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVXLM U10 ( .A(A[4]), .Y(n35) );
  INVXLM U11 ( .A(B[1]), .Y(n30) );
  INVXLM U12 ( .A(B[2]), .Y(n29) );
  INVXLM U13 ( .A(B[3]), .Y(n28) );
  INVX2M U14 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U15 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U16 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U17 ( .A(\ab[0][4] ), .Y(n20) );
  CLKXOR2X2M U18 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n11) );
  AND2X2M U24 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U25 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  AND2X2M U27 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  CLKXOR2X2M U30 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U31 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  XNOR2X2M U32 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U33 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U34 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U35 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U36 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U37 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U38 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVXLM U39 ( .A(B[6]), .Y(n25) );
  XNOR2X2M U40 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U41 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U42 ( .A(A[3]), .Y(n36) );
  INVX2M U43 ( .A(A[2]), .Y(n37) );
  INVX2M U44 ( .A(A[1]), .Y(n38) );
  INVX2M U45 ( .A(A[6]), .Y(n33) );
  INVX2M U46 ( .A(A[5]), .Y(n34) );
  INVXLM U47 ( .A(B[4]), .Y(n27) );
  INVXLM U48 ( .A(B[5]), .Y(n26) );
  INVX2M U49 ( .A(A[0]), .Y(n39) );
  INVXLM U50 ( .A(B[7]), .Y(n24) );
  INVXLM U51 ( .A(B[0]), .Y(n31) );
  INVXLM U52 ( .A(A[7]), .Y(n32) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
endmodule


module ALU_DW_div_uns_1 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] ,
         \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] , \u_div/SumTmp[4][0] ,
         \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] ,
         \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] ,
         \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] , \u_div/CryTmp[0][1] ,
         \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] ,
         \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] ,
         \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] ,
         \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] ,
         \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] ,
         \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] ,
         \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] ,
         \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] ,
         \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] ,
         \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][3] ,
         \u_div/PartRem[2][4] , \u_div/PartRem[2][5] , \u_div/PartRem[2][6] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[5][1] , \u_div/PartRem[6][1] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77;
  wire   [7:0] \u_div/BInv ;

  ADDFHX4M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), 
        .S(\u_div/SumTmp[1][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), 
        .S(\u_div/SumTmp[1][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), 
        .S(\u_div/SumTmp[1][5] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(
        \u_div/BInv [7]), .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/CryTmp[6][1] ), .B(
        \u_div/BInv [1]), .CI(n14), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n8), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_5  ( .A(n20), .B(\u_div/BInv [5]), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] )
         );
  ADDFHX2M \u_div/u_fa_PartRem_0_4_2  ( .A(n28), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_1  ( .A(n6), .B(n8), .CI(
        \u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n8), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n8), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), 
        .S(\u_div/SumTmp[1][6] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_4  ( .A(n22), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_2  ( .A(n23), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_2  ( .A(n25), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_3  ( .A(n1), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] )
         );
  ADDFHX2M \u_div/u_fa_PartRem_0_4_3  ( .A(n31), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n8), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_2  ( .A(n21), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_3  ( .A(n29), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_4  ( .A(n27), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n8), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_5_2  ( .A(n24), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_0  ( .A(a[0]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[0][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_0  ( .A(a[1]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[1][1] ), .S(\u_div/SumTmp[1][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_0  ( .A(a[2]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[2][1] ), .S(\u_div/SumTmp[2][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_0  ( .A(a[4]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[4][1] ), .S(\u_div/SumTmp[4][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_0  ( .A(a[5]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[5][1] ), .S(\u_div/SumTmp[5][0] ) );
  NOR2X4M U1 ( .A(n55), .B(n42), .Y(n54) );
  CLKMX2X2M U2 ( .A(n24), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(n31)
         );
  NAND2X6M U3 ( .A(n18), .B(n19), .Y(\u_div/PartRem[6][1] ) );
  MX2X1M U4 ( .A(n25), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(n26) );
  MX2X4M U5 ( .A(n37), .B(\u_div/SumTmp[4][1] ), .S0(quotient[4]), .Y(n25) );
  MXI2XLM U6 ( .A(n23), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(n46) );
  CLKBUFX6M U7 ( .A(n26), .Y(n1) );
  NAND2XLM U8 ( .A(n41), .B(\u_div/BInv [2]), .Y(n50) );
  INVX6M U9 ( .A(n71), .Y(quotient[6]) );
  NAND2X4M U10 ( .A(n70), .B(n41), .Y(n69) );
  NOR2X12M U11 ( .A(n57), .B(b[3]), .Y(n41) );
  CLKMX2X2M U12 ( .A(n28), .B(\u_div/SumTmp[4][2] ), .S0(quotient[4]), .Y(n29)
         );
  CLKINVX8M U13 ( .A(n64), .Y(n75) );
  INVX3M U14 ( .A(n73), .Y(quotient[5]) );
  BUFX4M U15 ( .A(n33), .Y(quotient[4]) );
  MXI2X3M U16 ( .A(n12), .B(n13), .S0(quotient[3]), .Y(n23) );
  INVX3M U17 ( .A(\u_div/CryTmp[3][5] ), .Y(n61) );
  CLKMX2X2M U18 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(n28) );
  INVX3M U19 ( .A(n76), .Y(quotient[2]) );
  NAND2X3M U20 ( .A(\u_div/SumTmp[6][0] ), .B(quotient[6]), .Y(n19) );
  NAND2BX1M U21 ( .AN(b[7]), .B(\u_div/CryTmp[1][7] ), .Y(n77) );
  INVX10M U22 ( .A(b[0]), .Y(\u_div/BInv [0]) );
  CLKINVX1M U23 ( .A(b[4]), .Y(\u_div/BInv [4]) );
  NOR2X4M U24 ( .A(b[5]), .B(b[4]), .Y(n74) );
  NAND2BX8M U25 ( .AN(b[6]), .B(\u_div/BInv [7]), .Y(n64) );
  NAND2X4M U26 ( .A(\u_div/CryTmp[6][2] ), .B(n72), .Y(n71) );
  NAND2X6M U27 ( .A(n74), .B(n75), .Y(n57) );
  CLKINVX4M U28 ( .A(n69), .Y(quotient[7]) );
  MXI2X6M U29 ( .A(n2), .B(n34), .S0(n7), .Y(n6) );
  OR2X6M U30 ( .A(n60), .B(n61), .Y(n7) );
  MXI2X2M U31 ( .A(n52), .B(n53), .S0(n54), .Y(\u_div/PartRem[5][1] ) );
  INVX3M U32 ( .A(n47), .Y(\u_div/PartRem[2][1] ) );
  MXI2X3M U33 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(n63), .Y(n47) );
  MX2X1M U34 ( .A(n6), .B(\u_div/SumTmp[2][1] ), .S0(quotient[2]), .Y(n21) );
  INVX2M U35 ( .A(a[4]), .Y(n5) );
  INVX2M U36 ( .A(\u_div/SumTmp[4][0] ), .Y(n4) );
  MXI2X4M U37 ( .A(n15), .B(n16), .S0(quotient[7]), .Y(n14) );
  CLKINVX4M U38 ( .A(\u_div/CryTmp[2][6] ), .Y(n65) );
  INVX8M U39 ( .A(b[7]), .Y(\u_div/BInv [7]) );
  NOR2X2M U40 ( .A(n64), .B(n65), .Y(n63) );
  NOR2X2M U41 ( .A(n61), .B(n60), .Y(quotient[3]) );
  INVX4M U42 ( .A(b[2]), .Y(\u_div/BInv [2]) );
  CLKXOR2X2M U43 ( .A(\u_div/BInv [0]), .B(a[3]), .Y(n2) );
  NOR2X2M U44 ( .A(\u_div/BInv [0]), .B(a[7]), .Y(n3) );
  INVX2M U45 ( .A(b[3]), .Y(\u_div/BInv [3]) );
  INVX2M U46 ( .A(b[5]), .Y(\u_div/BInv [5]) );
  MXI2X6M U47 ( .A(n4), .B(n5), .S0(n32), .Y(\u_div/PartRem[4][1] ) );
  MX2X1M U48 ( .A(n40), .B(\u_div/SumTmp[6][1] ), .S0(quotient[6]), .Y(n24) );
  INVX4M U49 ( .A(quotient[6]), .Y(n17) );
  NAND2X4M U50 ( .A(b[0]), .B(n35), .Y(\u_div/CryTmp[6][1] ) );
  MX2XLM U51 ( .A(n29), .B(\u_div/SumTmp[3][3] ), .S0(quotient[3]), .Y(n22) );
  BUFX2M U52 ( .A(\u_div/BInv [1]), .Y(n8) );
  INVXLM U53 ( .A(b[1]), .Y(\u_div/BInv [1]) );
  OR2X4M U54 ( .A(n57), .B(n58), .Y(n32) );
  NAND2BX2M U55 ( .AN(n65), .B(n75), .Y(n76) );
  INVX2M U56 ( .A(n77), .Y(quotient[1]) );
  MXI2X6M U57 ( .A(n66), .B(n67), .S0(n68), .Y(\u_div/PartRem[1][1] ) );
  NOR2BX8M U58 ( .AN(\u_div/CryTmp[1][7] ), .B(b[7]), .Y(n68) );
  INVX3M U59 ( .A(\u_div/CryTmp[5][3] ), .Y(n55) );
  XOR2XLM U60 ( .A(\u_div/BInv [0]), .B(a[7]), .Y(n16) );
  NAND2X4M U61 ( .A(a[6]), .B(n17), .Y(n18) );
  NOR2XLM U62 ( .A(b[2]), .B(b[1]), .Y(n10) );
  NOR2X2M U63 ( .A(n11), .B(n3), .Y(n70) );
  INVX2M U64 ( .A(n10), .Y(n11) );
  INVXLM U65 ( .A(\u_div/PartRem[4][1] ), .Y(n12) );
  CLKINVX2M U66 ( .A(\u_div/SumTmp[3][1] ), .Y(n13) );
  INVX2M U67 ( .A(\u_div/SumTmp[1][1] ), .Y(n62) );
  INVXLM U68 ( .A(a[5]), .Y(n52) );
  CLKINVX2M U69 ( .A(\u_div/SumTmp[5][0] ), .Y(n53) );
  INVX2M U70 ( .A(a[7]), .Y(n15) );
  NAND2BX1M U71 ( .AN(\u_div/BInv [0]), .B(n34), .Y(\u_div/CryTmp[3][1] ) );
  INVXLM U72 ( .A(n50), .Y(n72) );
  INVX2M U73 ( .A(n44), .Y(\u_div/PartRem[2][5] ) );
  INVX2M U74 ( .A(n45), .Y(\u_div/PartRem[2][4] ) );
  MXI2XLM U75 ( .A(n20), .B(\u_div/SumTmp[2][5] ), .S0(quotient[2]), .Y(n43)
         );
  MXI2XLM U76 ( .A(n1), .B(\u_div/SumTmp[2][3] ), .S0(quotient[2]), .Y(n45) );
  MXI2XLM U77 ( .A(n22), .B(\u_div/SumTmp[2][4] ), .S0(quotient[2]), .Y(n44)
         );
  MX2XLM U78 ( .A(n27), .B(\u_div/SumTmp[3][4] ), .S0(quotient[3]), .Y(n20) );
  NOR2XLM U79 ( .A(n58), .B(n57), .Y(n33) );
  XNOR2XLM U80 ( .A(\u_div/BInv [0]), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  MX2X2M U81 ( .A(n31), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(n27) );
  INVX2M U82 ( .A(n43), .Y(\u_div/PartRem[2][6] ) );
  INVX2M U83 ( .A(\u_div/CryTmp[4][4] ), .Y(n58) );
  INVX2M U84 ( .A(\u_div/SumTmp[1][2] ), .Y(n59) );
  INVX2M U85 ( .A(\u_div/SumTmp[1][3] ), .Y(n56) );
  INVX2M U86 ( .A(\u_div/SumTmp[1][5] ), .Y(n49) );
  INVX2M U87 ( .A(\u_div/SumTmp[1][6] ), .Y(n48) );
  INVX2M U88 ( .A(a[3]), .Y(n34) );
  INVX2M U89 ( .A(a[6]), .Y(n35) );
  INVX2M U90 ( .A(n46), .Y(\u_div/PartRem[2][3] ) );
  INVX2M U91 ( .A(\u_div/SumTmp[1][4] ), .Y(n51) );
  NAND2XLM U92 ( .A(n75), .B(\u_div/BInv [5]), .Y(n60) );
  INVXLM U93 ( .A(b[6]), .Y(\u_div/BInv [6]) );
  INVX2M U94 ( .A(\u_div/SumTmp[1][0] ), .Y(n67) );
  INVX2M U95 ( .A(a[1]), .Y(n66) );
  MXI2X1M U96 ( .A(n47), .B(n62), .S0(quotient[1]), .Y(\u_div/PartRem[1][2] )
         );
  MXI2XLM U97 ( .A(n38), .B(n59), .S0(quotient[1]), .Y(\u_div/PartRem[1][3] )
         );
  MXI2XLM U98 ( .A(n46), .B(n56), .S0(quotient[1]), .Y(\u_div/PartRem[1][4] )
         );
  MXI2XLM U99 ( .A(n45), .B(n51), .S0(quotient[1]), .Y(\u_div/PartRem[1][5] )
         );
  MXI2XLM U100 ( .A(n44), .B(n49), .S0(quotient[1]), .Y(\u_div/PartRem[1][6] )
         );
  MXI2XLM U101 ( .A(n43), .B(n48), .S0(quotient[1]), .Y(\u_div/PartRem[1][7] )
         );
  INVXLM U102 ( .A(\u_div/PartRem[5][1] ), .Y(n36) );
  INVX2M U103 ( .A(n36), .Y(n37) );
  INVXLM U104 ( .A(n21), .Y(n38) );
  NAND2BX4M U105 ( .AN(n55), .B(n41), .Y(n73) );
  INVXLM U106 ( .A(n14), .Y(n39) );
  INVX2M U107 ( .A(n39), .Y(n40) );
  INVXLM U108 ( .A(n41), .Y(n42) );
endmodule


module ALU ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n31, n32,
         n33, n34, n36, n43, n44, n45, n46, n47, n48, n54, n55, n56, n60, n61,
         n62, n66, n67, n68, n72, n73, n74, n78, n79, n80, n83, n84, n85, n86,
         n87, n88, n89, n90, n92, n101, n103, n104, n106, n107, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n35, n37, n38, n39,
         n40, n41, n42, n49, n50, n51, n52, n53, n57, n58, n59, n63, n64, n65,
         n69, n70, n71, n75, n76, n77, n81, n82, n91, n93, n94, n95, n96, n97,
         n98, n99, n100, n102, n105, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170;
  wire   [15:0] ALU_OUT_Comb;

  ALU_DW01_sub_0 sub_37 ( .A({1'b0, n16, n5, n14, n13, n12, n11, n10, A[0]}), 
        .B({1'b0, B[7], n9, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_34 ( .A({1'b0, n16, n4, n14, n13, n12, n11, n10, A[0]}), 
        .B({1'b0, B[7], n9, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_40 ( .A({n16, n5, n14, n13, n12, n11, n10, A[0]}), .B({
        B[7], n9, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
  ALU_DW_div_uns_1 div_43 ( .a({n16, n3, n14, n13, n12, n11, n10, A[0]}), .b({
        B[7], n9, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, 
        N126, N125}) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  DFFRQX1M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  BUFX6M U3 ( .A(A[7]), .Y(n16) );
  BUFX8M U4 ( .A(n15), .Y(n3) );
  DLY1X1M U7 ( .A(n15), .Y(n4) );
  DLY1X1M U8 ( .A(n15), .Y(n5) );
  BUFX8M U9 ( .A(A[6]), .Y(n15) );
  NAND2BXLM U10 ( .AN(n13), .B(B[4]), .Y(n130) );
  BUFX10M U11 ( .A(B[6]), .Y(n9) );
  NOR2X4M U12 ( .A(N125), .B(n71), .Y(n115) );
  BUFX2M U13 ( .A(A[5]), .Y(n14) );
  AND2X2M U14 ( .A(n103), .B(n97), .Y(n6) );
  AOI32XLM U15 ( .A0(n132), .A1(n142), .A2(n145), .B0(n9), .B1(n152), .Y(n133)
         );
  XNOR2XLM U16 ( .A(n4), .B(n9), .Y(n145) );
  AOI21X1M U17 ( .A0(N101), .A1(n7), .B0(n22), .Y(n23) );
  AOI22XLM U18 ( .A0(N104), .A1(n7), .B0(n13), .B1(n117), .Y(n42) );
  INVXLM U19 ( .A(n13), .Y(n165) );
  OAI21XLM U20 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  OAI222XLM U21 ( .A0(n73), .A1(n157), .B0(B[3]), .B1(n74), .C0(n36), .C1(n167), .Y(n72) );
  OAI222XLM U22 ( .A0(n79), .A1(n155), .B0(B[2]), .B1(n80), .C0(n36), .C1(n123), .Y(n78) );
  AOI21XLM U23 ( .A0(n126), .A1(n123), .B0(B[1]), .Y(n127) );
  INVXLM U24 ( .A(B[2]), .Y(n155) );
  INVXLM U25 ( .A(B[3]), .Y(n157) );
  INVX2M U26 ( .A(n77), .Y(n119) );
  INVX2M U27 ( .A(n93), .Y(n117) );
  INVX2M U28 ( .A(n108), .Y(n64) );
  OAI2BB1X2M U29 ( .A0N(N124), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U30 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U31 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U32 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U33 ( .A0N(n170), .A1N(n122), .B0(n101), .Y(n47) );
  OAI2BB1X2M U34 ( .A0N(n121), .A1N(n118), .B0(n101), .Y(n48) );
  OAI2BB1X2M U35 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U36 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U37 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[11]) );
  INVX2M U38 ( .A(n26), .Y(n118) );
  INVX2M U39 ( .A(n20), .Y(n122) );
  NAND3BX2M U40 ( .AN(n124), .B(n122), .C(n21), .Y(n108) );
  OR2X2M U41 ( .A(n20), .B(n26), .Y(n93) );
  OR2X2M U42 ( .A(n107), .B(n18), .Y(n77) );
  INVX2M U43 ( .A(n17), .Y(n120) );
  NAND3BX2M U44 ( .AN(n124), .B(n121), .C(n21), .Y(n17) );
  NOR2X2M U45 ( .A(n19), .B(n20), .Y(n7) );
  NOR2X2M U46 ( .A(n18), .B(n19), .Y(n8) );
  INVX2M U47 ( .A(n106), .Y(n19) );
  INVX2M U48 ( .A(n107), .Y(n170) );
  INVX2M U49 ( .A(n46), .Y(n91) );
  INVX2M U50 ( .A(n18), .Y(n121) );
  NOR2BX2M U51 ( .AN(n120), .B(n169), .Y(n31) );
  INVX2M U52 ( .A(n75), .Y(n116) );
  NOR2X2M U53 ( .A(n112), .B(n111), .Y(n113) );
  NOR2X2M U54 ( .A(n99), .B(n98), .Y(n114) );
  INVX2M U55 ( .A(ALU_FUN[0]), .Y(n125) );
  OR2X2M U56 ( .A(ALU_FUN[3]), .B(n125), .Y(n20) );
  INVX2M U57 ( .A(ALU_FUN[2]), .Y(n21) );
  OR2X2M U58 ( .A(ALU_FUN[1]), .B(n21), .Y(n26) );
  AOI31X2M U59 ( .A0(N158), .A1(ALU_FUN[3]), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U60 ( .A(n125), .B(ALU_FUN[2]), .C(n124), .Y(n89) );
  NAND2X2M U61 ( .A(EN), .B(n159), .Y(n32) );
  NOR2X2M U62 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  AND3X2M U63 ( .A(n106), .B(n125), .C(ALU_FUN[3]), .Y(n46) );
  NOR3X2M U64 ( .A(n124), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  NAND3BX2M U65 ( .AN(n125), .B(ALU_FUN[3]), .C(n118), .Y(n75) );
  NAND3X2M U66 ( .A(n170), .B(n125), .C(ALU_FUN[3]), .Y(n36) );
  OR2X2M U67 ( .A(n123), .B(n75), .Y(n100) );
  NAND2X2M U68 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX2M U69 ( .A(ALU_FUN[1]), .Y(n124) );
  OR2X2M U70 ( .A(ALU_FUN[0]), .B(ALU_FUN[3]), .Y(n18) );
  NAND3X2M U71 ( .A(n106), .B(ALU_FUN[0]), .C(ALU_FUN[3]), .Y(n101) );
  AND4X2M U72 ( .A(N159), .B(n118), .C(ALU_FUN[3]), .D(n125), .Y(n90) );
  AO22X1M U73 ( .A0(N97), .A1(n8), .B0(n152), .B1(n119), .Y(n57) );
  INVX2M U74 ( .A(EN), .Y(n169) );
  INVX2M U75 ( .A(n110), .Y(n99) );
  AOI31X2M U76 ( .A0(n25), .A1(n24), .A2(n23), .B0(n169), .Y(ALU_OUT_Comb[1])
         );
  AOI22X1M U77 ( .A0(N92), .A1(n8), .B0(N110), .B1(n120), .Y(n25) );
  MX2X2M U78 ( .A(n77), .B(n93), .S0(n10), .Y(n24) );
  AOI31X2M U79 ( .A0(n30), .A1(n29), .A2(n28), .B0(n169), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U80 ( .A0(N102), .A1(n7), .B0(n11), .B1(n117), .Y(n29) );
  AOI211X2M U81 ( .A0(N111), .A1(n120), .B0(n27), .C0(n78), .Y(n28) );
  AOI22XLM U82 ( .A0(n12), .A1(n116), .B0(N127), .B1(n64), .Y(n30) );
  AOI31X2M U83 ( .A0(n39), .A1(n38), .A2(n37), .B0(n169), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U84 ( .A0(N103), .A1(n7), .B0(n12), .B1(n117), .Y(n38) );
  AOI211X2M U85 ( .A0(N112), .A1(n120), .B0(n35), .C0(n72), .Y(n37) );
  AOI211X2M U86 ( .A0(N113), .A1(n120), .B0(n40), .C0(n66), .Y(n41) );
  AOI31X2M U87 ( .A0(n70), .A1(n69), .A2(n65), .B0(n169), .Y(ALU_OUT_Comb[7])
         );
  AOI21X2M U88 ( .A0(n33), .A1(n34), .B0(n169), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U89 ( .A0(N99), .A1(n8), .B0(n159), .Y(n33) );
  AOI2BB2XLM U90 ( .B0(N117), .B1(n120), .A0N(n163), .A1N(n36), .Y(n34) );
  NAND3X2M U91 ( .A(n110), .B(n6), .C(n109), .Y(n111) );
  NAND2X2M U92 ( .A(n100), .B(n6), .Y(n98) );
  INVXLM U93 ( .A(n9), .Y(n158) );
  AOI221XLM U94 ( .A0(n46), .A1(n123), .B0(n10), .B1(n48), .C0(n117), .Y(n86)
         );
  AOI221XLM U95 ( .A0(n10), .A1(n46), .B0(n47), .B1(n123), .C0(n119), .Y(n87)
         );
  OAI222XLM U96 ( .A0(n55), .A1(n158), .B0(n9), .B1(n56), .C0(n36), .C1(n164), 
        .Y(n54) );
  AOI221XLM U97 ( .A0(n4), .A1(n46), .B0(n47), .B1(n152), .C0(n119), .Y(n56)
         );
  AOI221XLM U98 ( .A0(n46), .A1(n152), .B0(n5), .B1(n48), .C0(n117), .Y(n55)
         );
  NAND4X2M U99 ( .A(n108), .B(n105), .C(n102), .D(n100), .Y(n112) );
  INVX2M U100 ( .A(n5), .Y(n152) );
  AOI22X1M U101 ( .A0(N106), .A1(n7), .B0(n5), .B1(n117), .Y(n59) );
  AOI211X2M U102 ( .A0(N115), .A1(n120), .B0(n57), .C0(n54), .Y(n58) );
  AOI31X2M U103 ( .A0(n53), .A1(n52), .A2(n51), .B0(n169), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U104 ( .A0(N105), .A1(n7), .B0(n14), .B1(n117), .Y(n52) );
  AOI22XLM U105 ( .A0(n4), .A1(n116), .B0(N130), .B1(n64), .Y(n53) );
  AOI211X2M U106 ( .A0(N114), .A1(n120), .B0(n50), .C0(n60), .Y(n51) );
  NAND3X2M U107 ( .A(n102), .B(n109), .C(n105), .Y(n71) );
  INVX2M U108 ( .A(n92), .Y(n159) );
  AOI211X2M U109 ( .A0(N108), .A1(n7), .B0(n119), .C0(n47), .Y(n92) );
  INVX2M U110 ( .A(n10), .Y(n123) );
  AO22X1M U111 ( .A0(N93), .A1(n8), .B0(n167), .B1(n119), .Y(n27) );
  AO22X1M U112 ( .A0(N94), .A1(n8), .B0(n166), .B1(n119), .Y(n35) );
  AO22X1M U113 ( .A0(N95), .A1(n8), .B0(n165), .B1(n119), .Y(n40) );
  AO22X1M U114 ( .A0(N96), .A1(n8), .B0(n164), .B1(n119), .Y(n50) );
  NAND2X2M U115 ( .A(N109), .B(n120), .Y(n110) );
  NAND2X2M U116 ( .A(N91), .B(n8), .Y(n109) );
  INVX2M U117 ( .A(n12), .Y(n166) );
  INVX2M U118 ( .A(n11), .Y(n167) );
  INVX2M U119 ( .A(n14), .Y(n164) );
  BUFX2M U120 ( .A(A[4]), .Y(n13) );
  OAI2BB1XLM U121 ( .A0N(N126), .A1N(n64), .B0(n83), .Y(n22) );
  AOI211X2M U122 ( .A0(n11), .A1(n116), .B0(n84), .C0(n85), .Y(n83) );
  OAI2B2X1M U123 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n168), .Y(n85) );
  BUFX2M U124 ( .A(A[3]), .Y(n12) );
  BUFX2M U125 ( .A(A[2]), .Y(n11) );
  BUFX2M U126 ( .A(A[1]), .Y(n10) );
  AND2X2M U127 ( .A(n81), .B(n77), .Y(n96) );
  INVX2M U128 ( .A(n47), .Y(n76) );
  AOI31X2M U129 ( .A0(N157), .A1(ALU_FUN[3]), .A2(n104), .B0(n90), .Y(n103) );
  MX2X2M U130 ( .A(n96), .B(n95), .S0(A[0]), .Y(n97) );
  AND2X2M U131 ( .A(n94), .B(n93), .Y(n95) );
  INVX2M U132 ( .A(n48), .Y(n82) );
  INVX2M U133 ( .A(n137), .Y(n156) );
  AOI221XLM U134 ( .A0(n11), .A1(n46), .B0(n47), .B1(n167), .C0(n119), .Y(n80)
         );
  AOI221XLM U135 ( .A0(n46), .A1(n167), .B0(n11), .B1(n48), .C0(n117), .Y(n79)
         );
  AOI221XLM U136 ( .A0(n12), .A1(n46), .B0(n47), .B1(n166), .C0(n119), .Y(n74)
         );
  AOI221XLM U137 ( .A0(n46), .A1(n166), .B0(n12), .B1(n48), .C0(n117), .Y(n73)
         );
  OAI222XLM U138 ( .A0(n67), .A1(n162), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n166), .Y(n66) );
  INVXLM U139 ( .A(B[4]), .Y(n162) );
  AOI221XLM U140 ( .A0(n13), .A1(n46), .B0(n47), .B1(n165), .C0(n119), .Y(n68)
         );
  AOI221XLM U141 ( .A0(n46), .A1(n165), .B0(n13), .B1(n48), .C0(n117), .Y(n67)
         );
  OAI222XLM U142 ( .A0(n61), .A1(n161), .B0(B[5]), .B1(n62), .C0(n36), .C1(
        n165), .Y(n60) );
  INVXLM U143 ( .A(B[5]), .Y(n161) );
  AOI221XLM U144 ( .A0(n14), .A1(n46), .B0(n47), .B1(n164), .C0(n119), .Y(n62)
         );
  AOI221XLM U145 ( .A0(n46), .A1(n164), .B0(n14), .B1(n48), .C0(n117), .Y(n61)
         );
  INVX2M U146 ( .A(n126), .Y(n154) );
  NAND2X2M U147 ( .A(N100), .B(n7), .Y(n102) );
  INVX2M U148 ( .A(A[0]), .Y(n168) );
  INVXLM U149 ( .A(B[7]), .Y(n160) );
  AOI22XLM U150 ( .A0(n13), .A1(n116), .B0(N128), .B1(n64), .Y(n39) );
  AOI31X2M U151 ( .A0(n49), .A1(n42), .A2(n41), .B0(n169), .Y(ALU_OUT_Comb[4])
         );
  AOI31X2M U152 ( .A0(n63), .A1(n59), .A2(n58), .B0(n169), .Y(ALU_OUT_Comb[6])
         );
  OA22X2M U153 ( .A0(n93), .A1(n163), .B0(n77), .B1(n16), .Y(n69) );
  AOI221XLM U154 ( .A0(N98), .A1(n8), .B0(N116), .B1(n120), .C0(n43), .Y(n65)
         );
  MX2XLM U155 ( .A(n77), .B(n93), .S0(B[0]), .Y(n105) );
  MX2XLM U156 ( .A(n76), .B(n91), .S0(B[0]), .Y(n81) );
  MX2XLM U157 ( .A(n91), .B(n82), .S0(B[0]), .Y(n94) );
  INVXLM U158 ( .A(B[0]), .Y(n153) );
  INVXLM U159 ( .A(n16), .Y(n163) );
  AOI22XLM U160 ( .A0(N132), .A1(n64), .B0(N107), .B1(n7), .Y(n70) );
  AOI22XLM U161 ( .A0(n16), .A1(n116), .B0(N131), .B1(n64), .Y(n63) );
  AOI221XLM U162 ( .A0(n46), .A1(n163), .B0(n16), .B1(n48), .C0(n117), .Y(n44)
         );
  AOI221XLM U163 ( .A0(n46), .A1(n16), .B0(n47), .B1(n163), .C0(n119), .Y(n45)
         );
  NAND2XLM U164 ( .A(B[7]), .B(n163), .Y(n149) );
  AOI22XLM U165 ( .A0(n14), .A1(n116), .B0(N129), .B1(n64), .Y(n49) );
  OAI222XLM U166 ( .A0(n44), .A1(n160), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n152), .Y(n43) );
  NOR2XLM U167 ( .A(n163), .B(B[7]), .Y(n148) );
  AOI211X2M U168 ( .A0(n115), .A1(n114), .B0(n113), .C0(n169), .Y(
        ALU_OUT_Comb[0]) );
  NAND2BX1M U169 ( .AN(B[4]), .B(n13), .Y(n141) );
  CLKNAND2X2M U170 ( .A(n141), .B(n130), .Y(n143) );
  NOR2X1M U171 ( .A(n157), .B(n12), .Y(n138) );
  NOR2X1M U172 ( .A(n155), .B(n11), .Y(n129) );
  NOR2X1M U173 ( .A(n153), .B(A[0]), .Y(n126) );
  CLKNAND2X2M U174 ( .A(n11), .B(n155), .Y(n140) );
  NAND2BX1M U175 ( .AN(n129), .B(n140), .Y(n135) );
  AOI211X1M U176 ( .A0(n10), .A1(n154), .B0(n135), .C0(n127), .Y(n128) );
  CLKNAND2X2M U177 ( .A(n12), .B(n157), .Y(n139) );
  OAI31X1M U178 ( .A0(n138), .A1(n129), .A2(n128), .B0(n139), .Y(n131) );
  NAND2BX1M U179 ( .AN(n14), .B(B[5]), .Y(n146) );
  OAI211X1M U180 ( .A0(n143), .A1(n131), .B0(n130), .C0(n146), .Y(n132) );
  NAND2BX1M U181 ( .AN(B[5]), .B(n14), .Y(n142) );
  OAI21X1M U182 ( .A0(n148), .A1(n133), .B0(n149), .Y(N159) );
  CLKNAND2X2M U183 ( .A(A[0]), .B(n153), .Y(n136) );
  OA21X1M U184 ( .A0(n136), .A1(n123), .B0(B[1]), .Y(n134) );
  AOI211X1M U185 ( .A0(n136), .A1(n123), .B0(n135), .C0(n134), .Y(n137) );
  AOI31X1M U186 ( .A0(n156), .A1(n140), .A2(n139), .B0(n138), .Y(n144) );
  OAI2B11X1M U187 ( .A1N(n144), .A0(n143), .B0(n142), .C0(n141), .Y(n147) );
  AOI32X1M U188 ( .A0(n147), .A1(n146), .A2(n145), .B0(n4), .B1(n158), .Y(n150) );
  AOI2B1X1M U189 ( .A1N(n150), .A0(n149), .B0(n148), .Y(n151) );
  CLKINVX1M U190 ( .A(n151), .Y(N158) );
  NOR2X1M U191 ( .A(N159), .B(N158), .Y(N157) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   SYNC_RST_1, SYNC_RST_2, RX_OUT_V, RX_D_VLD, TX_D_VLD, TX_CLK, rinc,
         empty, TX_OUT_V, clk_div_en, RX_CLK, OUT_Valid, EN, CLK_EN, WrEn,
         RdEn, RdData_Valid, ALU_CLK, n1, n2, n3, n4, n5, n6, n7;
  wire   [7:0] RX_OUT_P;
  wire   [7:0] RX_P_DATA;
  wire   [7:0] TX_P_DATA;
  wire   [7:0] rdata;
  wire   [7:0] REG3;
  wire   [7:0] REG2;
  wire   [7:0] CLK_DIV_RX;
  wire   [15:0] ALU_OUT;
  wire   [3:0] ALU_FUN;
  wire   [3:0] Address;
  wire   [7:0] WrData;
  wire   [7:0] RdData;
  wire   [7:0] REG0;
  wire   [7:0] REG1;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  RST_SYNC_0 RST_SYNC_BLOCK_U1 ( .RST(RST_N), .CLK(REF_CLK), .SYNC_RST(
        SYNC_RST_1) );
  RST_SYNC_1 RST_SYNC_BLOCK_U2 ( .RST(RST_N), .CLK(UART_CLK), .SYNC_RST(
        SYNC_RST_2) );
  Data_Sync Data_Sync_BLOCK ( .unsync_bus(RX_OUT_P), .bus_enable(RX_OUT_V), 
        .CLK(REF_CLK), .RST(n6), .sync_bus(RX_P_DATA), .enable_pulse(RX_D_VLD)
         );
  FIFO_TOP FIFO_BLOCK ( .wclk(REF_CLK), .wrst_n(n6), .winc(TX_D_VLD), .rclk(
        TX_CLK), .rrst_n(n4), .rinc(rinc), .wdata(TX_P_DATA), .rempty(empty), 
        .rdata(rdata) );
  PULSE_GEN PULSE_GEN_BLOCK ( .CLK(TX_CLK), .RST(n4), .lvl_sig(TX_OUT_V), 
        .pulse_sig(rinc) );
  ClkDiv_0 ClkDiv_TX_BLOCK ( .I_ref_clk(UART_CLK), .I_rst_n(n4), .I_clk_en(
        clk_div_en), .I_div_ratio(REG3), .O_div_clk(TX_CLK) );
  CLKDIV_MUX CLKDIV_MUX_BLOCK ( .IN(REG2[7:2]), .OUT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, CLK_DIV_RX[3:0]}) );
  ClkDiv_1 ClkDiv_RX_BLOCK ( .I_ref_clk(UART_CLK), .I_rst_n(n4), .I_clk_en(
        clk_div_en), .I_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, CLK_DIV_RX[3:0]}), 
        .O_div_clk(RX_CLK) );
  UART_TOP UART_TOP_BLOCK ( .RST(n4), .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), 
        .RX_IN_S(UART_RX_IN), .RX_OUT_P(RX_OUT_P), .RX_OUT_V(RX_OUT_V), 
        .TX_IN_P(rdata), .TX_IN_V(n1), .TX_OUT_S(UART_TX_O), .TX_OUT_V(
        TX_OUT_V), .Prescale(REG2[7:2]), .parity_enable(REG2[0]), 
        .parity_type(REG2[1]), .parity_error(parity_error), .framing_error(
        framing_error) );
  SYS_CTRL SYS_CTRL_BLOCK ( .CLK(REF_CLK), .RST(n6), .ALU_OUT(ALU_OUT), 
        .OUT_Valid(OUT_Valid), .ALU_FUN(ALU_FUN), .EN(EN), .CLK_EN(CLK_EN), 
        .Address(Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(WrData), .RdData(
        RdData), .RdData_Valid(RdData_Valid), .RX_P_DATA(RX_P_DATA), 
        .RX_D_VLD(RX_D_VLD), .TX_P_DATA(TX_P_DATA), .TX_D_VLD(TX_D_VLD), 
        .clk_div_en(clk_div_en) );
  register register_BLOCK ( .CLK(REF_CLK), .RST(n6), .WrData(WrData), 
        .Address({Address[3:2], n3, n2}), .WrEn(WrEn), .RdEn(RdEn), 
        .RdData_Valid(RdData_Valid), .RdData(RdData), .REG0(REG0), .REG1(REG1), 
        .REG2(REG2), .REG3(REG3) );
  ALU ALU_BLOCK ( .A(REG0), .B(REG1), .EN(EN), .ALU_FUN(ALU_FUN), .CLK(ALU_CLK), .RST(n6), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_Valid) );
  CLK_GATE CLK_GATE_BLOCK ( .CLK_EN(CLK_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK) );
  INVX2M U2 ( .A(empty), .Y(n1) );
  BUFX2M U3 ( .A(Address[0]), .Y(n2) );
  BUFX2M U4 ( .A(Address[1]), .Y(n3) );
  INVX4M U5 ( .A(n7), .Y(n6) );
  INVX2M U6 ( .A(SYNC_RST_1), .Y(n7) );
  INVX4M U7 ( .A(n5), .Y(n4) );
  INVX2M U8 ( .A(SYNC_RST_2), .Y(n5) );
endmodule

