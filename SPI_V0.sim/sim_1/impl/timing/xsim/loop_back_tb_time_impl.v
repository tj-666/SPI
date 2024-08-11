// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Aug 11 08:44:38 2024
// Host        : KING running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/DigitalSystem/SPI_V0/SPI_V0.sim/sim_1/impl/timing/xsim/loop_back_tb_time_impl.v
// Design      : SPI_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Counter
   (CO,
    D,
    Q,
    S,
    \enable_reg[2] ,
    \enable_reg[2]_0 ,
    \enable_reg[3] ,
    n_count1_carry_0,
    \p_count_reg[2]_0 ,
    \p_count_reg[4]_0 ,
    E,
    CLK,
    \p_count_reg[0]_0 );
  output [0:0]CO;
  output [1:0]D;
  output [7:0]Q;
  input [3:0]S;
  input [0:0]\enable_reg[2] ;
  input \enable_reg[2]_0 ;
  input \enable_reg[3] ;
  input [7:0]n_count1_carry_0;
  input [0:0]\p_count_reg[2]_0 ;
  input \p_count_reg[4]_0 ;
  input [0:0]E;
  input CLK;
  input \p_count_reg[0]_0 ;

  wire CLK;
  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire [0:0]\enable_reg[2] ;
  wire \enable_reg[2]_0 ;
  wire \enable_reg[3] ;
  wire [7:0]n_count1_carry_0;
  wire n_count1_carry_i_1__0_n_0;
  wire n_count1_carry_i_2__0_n_0;
  wire n_count1_carry_i_3__0_n_0;
  wire n_count1_carry_i_4__0_n_0;
  wire \p_count[0]_i_1__0_n_0 ;
  wire \p_count[1]_i_1__0_n_0 ;
  wire \p_count[2]_i_1__0_n_0 ;
  wire \p_count[3]_i_1__0_n_0 ;
  wire \p_count[4]_i_1__0_n_0 ;
  wire \p_count[5]_i_1__0_n_0 ;
  wire \p_count[5]_i_2__0_n_0 ;
  wire \p_count[6]_i_1__0_n_0 ;
  wire \p_count[7]_i_2__0_n_0 ;
  wire \p_count[7]_i_3__0_n_0 ;
  wire \p_count_reg[0]_0 ;
  wire [0:0]\p_count_reg[2]_0 ;
  wire \p_count_reg[4]_0 ;
  wire [2:0]NLW_n_count1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_n_count1_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \enable[2]_i_1 
       (.I0(CO),
        .I1(\enable_reg[2] ),
        .I2(\enable_reg[2]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \enable[3]_i_1 
       (.I0(CO),
        .I1(\enable_reg[2] ),
        .I2(\enable_reg[3] ),
        .O(D[1]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 n_count1_carry
       (.CI(1'b0),
        .CO({CO,NLW_n_count1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({n_count1_carry_i_1__0_n_0,n_count1_carry_i_2__0_n_0,n_count1_carry_i_3__0_n_0,n_count1_carry_i_4__0_n_0}),
        .O(NLW_n_count1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  LUT4 #(
    .INIT(16'h2F02)) 
    n_count1_carry_i_1__0
       (.I0(Q[6]),
        .I1(n_count1_carry_0[6]),
        .I2(n_count1_carry_0[7]),
        .I3(Q[7]),
        .O(n_count1_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    n_count1_carry_i_2__0
       (.I0(Q[4]),
        .I1(n_count1_carry_0[4]),
        .I2(n_count1_carry_0[5]),
        .I3(Q[5]),
        .O(n_count1_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    n_count1_carry_i_3__0
       (.I0(Q[2]),
        .I1(n_count1_carry_0[2]),
        .I2(n_count1_carry_0[3]),
        .I3(Q[3]),
        .O(n_count1_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    n_count1_carry_i_4__0
       (.I0(Q[0]),
        .I1(n_count1_carry_0[0]),
        .I2(n_count1_carry_0[1]),
        .I3(Q[1]),
        .O(n_count1_carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \p_count[0]_i_1__0 
       (.I0(CO),
        .I1(\p_count_reg[2]_0 ),
        .I2(Q[0]),
        .O(\p_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \p_count[1]_i_1__0 
       (.I0(\p_count_reg[2]_0 ),
        .I1(CO),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\p_count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \p_count[2]_i_1__0 
       (.I0(\p_count_reg[2]_0 ),
        .I1(CO),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\p_count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \p_count[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(CO),
        .I4(\p_count_reg[2]_0 ),
        .I5(Q[3]),
        .O(\p_count[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \p_count[4]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\p_count_reg[4]_0 ),
        .I5(Q[4]),
        .O(\p_count[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \p_count[5]_i_1__0 
       (.I0(\p_count[5]_i_2__0_n_0 ),
        .I1(CO),
        .I2(\p_count_reg[2]_0 ),
        .I3(Q[5]),
        .O(\p_count[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \p_count[5]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\p_count[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \p_count[6]_i_1__0 
       (.I0(\p_count[7]_i_3__0_n_0 ),
        .I1(CO),
        .I2(\p_count_reg[2]_0 ),
        .I3(Q[6]),
        .O(\p_count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h07000800)) 
    \p_count[7]_i_2__0 
       (.I0(Q[6]),
        .I1(\p_count[7]_i_3__0_n_0 ),
        .I2(CO),
        .I3(\p_count_reg[2]_0 ),
        .I4(Q[7]),
        .O(\p_count[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \p_count[7]_i_3__0 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\p_count[7]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(\p_count[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(\p_count[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(\p_count[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(\p_count[3]_i_1__0_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(\p_count[4]_i_1__0_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(\p_count[5]_i_1__0_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(\p_count[6]_i_1__0_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(\p_count[7]_i_2__0_n_0 ),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_0
   (\p_count_reg[6]_0 ,
    Q,
    S,
    n_count1_carry_0,
    \p_count_reg[2]_0 ,
    \p_count_reg[4]_0 ,
    E,
    CLK,
    \p_count_reg[0]_0 );
  output [0:0]\p_count_reg[6]_0 ;
  output [7:0]Q;
  input [3:0]S;
  input [7:0]n_count1_carry_0;
  input [0:0]\p_count_reg[2]_0 ;
  input \p_count_reg[4]_0 ;
  input [0:0]E;
  input CLK;
  input \p_count_reg[0]_0 ;

  wire CLK;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire [7:0]n_count;
  wire [7:0]n_count1_carry_0;
  wire n_count1_carry_i_1_n_0;
  wire n_count1_carry_i_2_n_0;
  wire n_count1_carry_i_3_n_0;
  wire n_count1_carry_i_4_n_0;
  wire \p_count[5]_i_2_n_0 ;
  wire \p_count[7]_i_3_n_0 ;
  wire \p_count_reg[0]_0 ;
  wire [0:0]\p_count_reg[2]_0 ;
  wire \p_count_reg[4]_0 ;
  wire [0:0]\p_count_reg[6]_0 ;
  wire [2:0]NLW_n_count1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_n_count1_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 n_count1_carry
       (.CI(1'b0),
        .CO({\p_count_reg[6]_0 ,NLW_n_count1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({n_count1_carry_i_1_n_0,n_count1_carry_i_2_n_0,n_count1_carry_i_3_n_0,n_count1_carry_i_4_n_0}),
        .O(NLW_n_count1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  LUT4 #(
    .INIT(16'h2F02)) 
    n_count1_carry_i_1
       (.I0(Q[6]),
        .I1(n_count1_carry_0[6]),
        .I2(n_count1_carry_0[7]),
        .I3(Q[7]),
        .O(n_count1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    n_count1_carry_i_2
       (.I0(Q[4]),
        .I1(n_count1_carry_0[4]),
        .I2(n_count1_carry_0[5]),
        .I3(Q[5]),
        .O(n_count1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    n_count1_carry_i_3
       (.I0(Q[2]),
        .I1(n_count1_carry_0[2]),
        .I2(n_count1_carry_0[3]),
        .I3(Q[3]),
        .O(n_count1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    n_count1_carry_i_4
       (.I0(Q[0]),
        .I1(n_count1_carry_0[0]),
        .I2(n_count1_carry_0[1]),
        .I3(Q[1]),
        .O(n_count1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \p_count[0]_i_1 
       (.I0(\p_count_reg[6]_0 ),
        .I1(\p_count_reg[2]_0 ),
        .I2(Q[0]),
        .O(n_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \p_count[1]_i_1 
       (.I0(\p_count_reg[2]_0 ),
        .I1(\p_count_reg[6]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(n_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \p_count[2]_i_1 
       (.I0(\p_count_reg[2]_0 ),
        .I1(\p_count_reg[6]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(n_count[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \p_count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\p_count_reg[6]_0 ),
        .I4(\p_count_reg[2]_0 ),
        .I5(Q[3]),
        .O(n_count[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \p_count[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\p_count_reg[4]_0 ),
        .I5(Q[4]),
        .O(n_count[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \p_count[5]_i_1 
       (.I0(\p_count[5]_i_2_n_0 ),
        .I1(\p_count_reg[6]_0 ),
        .I2(\p_count_reg[2]_0 ),
        .I3(Q[5]),
        .O(n_count[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \p_count[5]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\p_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \p_count[6]_i_1 
       (.I0(\p_count[7]_i_3_n_0 ),
        .I1(\p_count_reg[6]_0 ),
        .I2(\p_count_reg[2]_0 ),
        .I3(Q[6]),
        .O(n_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h07000800)) 
    \p_count[7]_i_2 
       (.I0(Q[6]),
        .I1(\p_count[7]_i_3_n_0 ),
        .I2(\p_count_reg[6]_0 ),
        .I3(\p_count_reg[2]_0 ),
        .I4(Q[7]),
        .O(n_count[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \p_count[7]_i_3 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\p_count[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(n_count[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(n_count[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(n_count[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(n_count[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(n_count[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(n_count[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(n_count[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \p_count_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_count_reg[0]_0 ),
        .D(n_count[7]),
        .Q(Q[7]));
endmodule

module PISO
   (Q,
    E,
    D,
    CLK,
    \p_shift_reg[0]_0 );
  output [31:0]Q;
  input [0:0]E;
  input [31:0]D;
  input CLK;
  input \p_shift_reg[0]_0 ;

  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire \p_shift_reg[0]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[27] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[28] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[29] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[30] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[31] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D[9]),
        .Q(Q[9]));
endmodule

module SIPO
   (Q,
    E,
    CLK,
    \p_shift_reg[0]_0 ,
    D,
    \p_data_reg[0]_0 );
  output [31:0]Q;
  input [0:0]E;
  input CLK;
  input \p_shift_reg[0]_0 ;
  input [0:0]D;
  input [0:0]\p_data_reg[0]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]\p_data_reg[0]_0 ;
  wire [31:0]p_shift__0;
  wire \p_shift_reg[0]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[0] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[10] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[11] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[12] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[13] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[14] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[15] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[16] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[17] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[18] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[19] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[1] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[20] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[21] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[22] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[23] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[24] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[25] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[26] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[27] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[28] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[29] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[2] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[30] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[31] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[3] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[4] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[5] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[6] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[7] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[8] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \p_data_reg[9] 
       (.C(CLK),
        .CE(\p_data_reg[0]_0 ),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[9]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(D),
        .Q(p_shift__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[9]),
        .Q(p_shift__0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[10]),
        .Q(p_shift__0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[11]),
        .Q(p_shift__0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[12]),
        .Q(p_shift__0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[13]),
        .Q(p_shift__0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[14]),
        .Q(p_shift__0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[15]),
        .Q(p_shift__0[16]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[16]),
        .Q(p_shift__0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[17]),
        .Q(p_shift__0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[18]),
        .Q(p_shift__0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[0]),
        .Q(p_shift__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[19]),
        .Q(p_shift__0[20]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[20]),
        .Q(p_shift__0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[21]),
        .Q(p_shift__0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[22]),
        .Q(p_shift__0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[23]),
        .Q(p_shift__0[24]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[24]),
        .Q(p_shift__0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[25]),
        .Q(p_shift__0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[27] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[26]),
        .Q(p_shift__0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[28] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[27]),
        .Q(p_shift__0[28]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[29] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[28]),
        .Q(p_shift__0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[1]),
        .Q(p_shift__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[30] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[29]),
        .Q(p_shift__0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[31] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[30]),
        .Q(p_shift__0[31]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[2]),
        .Q(p_shift__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[3]),
        .Q(p_shift__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[4]),
        .Q(p_shift__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[5]),
        .Q(p_shift__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[6]),
        .Q(p_shift__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[7]),
        .Q(p_shift__0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \p_shift_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(\p_shift_reg[0]_0 ),
        .D(p_shift__0[8]),
        .Q(p_shift__0[9]));
endmodule

(* D_WIDTH = "32" *) (* ECO_CHECKSUM = "37e2c457" *) (* FMT_SHIFT = "8'b00100000" *) 
(* RX_MAX = "-1" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module SPI_top
   (clk,
    reset_n,
    start,
    rw_n,
    addr,
    data_in,
    data_out,
    miso,
    mosi,
    spi_clk,
    cs_n,
    busy);
  input clk;
  input reset_n;
  input start;
  input rw_n;
  input [2:0]addr;
  input [31:0]data_in;
  output [31:0]data_out;
  input miso;
  output mosi;
  output spi_clk;
  output cs_n;
  output busy;

  wire [2:0]addr;
  wire [2:0]addr_IBUF;
  wire bit_count_tick_n_10;
  wire bit_count_tick_n_3;
  wire bit_count_tick_n_4;
  wire bit_count_tick_n_5;
  wire bit_count_tick_n_6;
  wire bit_count_tick_n_7;
  wire bit_count_tick_n_8;
  wire bit_count_tick_n_9;
  wire busy;
  wire busy_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire control_and_clkgen_n_1;
  wire control_and_clkgen_n_10;
  wire control_and_clkgen_n_12;
  wire control_and_clkgen_n_15;
  wire control_and_clkgen_n_16;
  wire control_and_clkgen_n_17;
  wire control_and_clkgen_n_18;
  wire control_and_clkgen_n_2;
  wire control_and_clkgen_n_3;
  wire control_and_clkgen_n_4;
  wire control_and_clkgen_n_5;
  wire control_and_clkgen_n_6;
  wire control_and_clkgen_n_8;
  wire cs_n;
  wire cs_n_OBUF;
  wire [31:0]data_in;
  wire [31:0]data_in_IBUF;
  wire [31:0]data_out;
  wire [31:0]data_out_OBUF;
  wire miso;
  wire miso_IBUF;
  wire mosi;
  wire mosi_OBUF;
  wire [31:0]n_shift;
  wire [7:0]p_count;
  wire [30:0]p_shift;
  wire reset_n;
  wire reset_n_IBUF;
  wire rw_n;
  wire rw_n_IBUF;
  wire rx_en;
  wire spi_clk;
  wire spi_clk_OBUF;
  wire [7:0]\spi_reg_file_reg[0] ;
  wire [7:0]\spi_reg_file_reg[4] ;
  wire spi_register_file_n_10;
  wire spi_register_file_n_11;
  wire spi_register_file_n_12;
  wire spi_register_file_n_21;
  wire spi_register_file_n_22;
  wire spi_register_file_n_23;
  wire spi_register_file_n_24;
  wire spi_register_file_n_57;
  wire spi_register_file_n_8;
  wire spi_register_file_n_9;
  wire start;
  wire start_IBUF;
  wire tx_en;
  wire wire_bit_count_tick;
  wire [3:1]wire_enable;
  wire [3:3]wire_load;
  wire [31:0]wire_rx_reg;
  wire wire_spi_tick;

initial begin
 $sdf_annotate("loop_back_tb_time_impl.sdf",,,,"tool_control");
end
  PISO FMT_SHIFT_reg
       (.CLK(clk_IBUF_BUFG),
        .D(n_shift),
        .E(control_and_clkgen_n_8),
        .Q({mosi_OBUF,p_shift}),
        .\p_shift_reg[0]_0 (spi_register_file_n_57));
  IBUF \addr_IBUF[0]_inst 
       (.I(addr[0]),
        .O(addr_IBUF[0]));
  IBUF \addr_IBUF[1]_inst 
       (.I(addr[1]),
        .O(addr_IBUF[1]));
  IBUF \addr_IBUF[2]_inst 
       (.I(addr[2]),
        .O(addr_IBUF[2]));
  Counter bit_count_tick
       (.CLK(clk_IBUF_BUFG),
        .CO(wire_bit_count_tick),
        .D({tx_en,rx_en}),
        .E(control_and_clkgen_n_16),
        .Q({bit_count_tick_n_3,bit_count_tick_n_4,bit_count_tick_n_5,bit_count_tick_n_6,bit_count_tick_n_7,bit_count_tick_n_8,bit_count_tick_n_9,bit_count_tick_n_10}),
        .S({spi_register_file_n_21,spi_register_file_n_22,spi_register_file_n_23,spi_register_file_n_24}),
        .\enable_reg[2] (wire_spi_tick),
        .\enable_reg[2]_0 (control_and_clkgen_n_2),
        .\enable_reg[3] (control_and_clkgen_n_1),
        .n_count1_carry_0(\spi_reg_file_reg[4] ),
        .\p_count_reg[0]_0 (spi_register_file_n_57),
        .\p_count_reg[2]_0 (wire_enable[3]),
        .\p_count_reg[4]_0 (control_and_clkgen_n_18));
  OBUF busy_OBUF_inst
       (.I(busy_OBUF),
        .O(busy));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  spi_controller control_and_clkgen
       (.CLK(clk_IBUF_BUFG),
        .CO(wire_bit_count_tick),
        .D(busy_OBUF),
        .E(control_and_clkgen_n_3),
        .\FSM_onehot_p_state_reg[1]_0 (control_and_clkgen_n_2),
        .\FSM_onehot_p_state_reg[2]_0 (control_and_clkgen_n_1),
        .\FSM_onehot_p_state_reg[2]_1 (control_and_clkgen_n_4),
        .\FSM_onehot_p_state_reg[2]_2 (control_and_clkgen_n_5),
        .\FSM_onehot_p_state_reg[2]_3 (control_and_clkgen_n_6),
        .\FSM_onehot_p_state_reg[2]_4 (wire_spi_tick),
        .Q({wire_load,control_and_clkgen_n_10}),
        .addr_IBUF(addr_IBUF),
        .cs_n_OBUF(cs_n_OBUF),
        .\enable_reg[1]_0 (control_and_clkgen_n_17),
        .\enable_reg[3]_0 ({wire_enable[3],control_and_clkgen_n_12,wire_enable[1]}),
        .\enable_reg[3]_1 (control_and_clkgen_n_18),
        .\enable_reg[3]_2 ({tx_en,rx_en}),
        .\load_reg[1]_0 (control_and_clkgen_n_15),
        .\load_reg[1]_1 (control_and_clkgen_n_16),
        .\load_reg[3]_0 (control_and_clkgen_n_8),
        .rw_n_IBUF(rw_n_IBUF),
        .spi_clk_OBUF(spi_clk_OBUF),
        .spi_clk_reg_0(spi_register_file_n_8),
        .spi_clk_reg_1(spi_register_file_n_57),
        .start_IBUF(start_IBUF));
  OBUF cs_n_OBUF_inst
       (.I(cs_n_OBUF),
        .O(cs_n));
  IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
  IBUF \data_in_IBUF[10]_inst 
       (.I(data_in[10]),
        .O(data_in_IBUF[10]));
  IBUF \data_in_IBUF[11]_inst 
       (.I(data_in[11]),
        .O(data_in_IBUF[11]));
  IBUF \data_in_IBUF[12]_inst 
       (.I(data_in[12]),
        .O(data_in_IBUF[12]));
  IBUF \data_in_IBUF[13]_inst 
       (.I(data_in[13]),
        .O(data_in_IBUF[13]));
  IBUF \data_in_IBUF[14]_inst 
       (.I(data_in[14]),
        .O(data_in_IBUF[14]));
  IBUF \data_in_IBUF[15]_inst 
       (.I(data_in[15]),
        .O(data_in_IBUF[15]));
  IBUF \data_in_IBUF[16]_inst 
       (.I(data_in[16]),
        .O(data_in_IBUF[16]));
  IBUF \data_in_IBUF[17]_inst 
       (.I(data_in[17]),
        .O(data_in_IBUF[17]));
  IBUF \data_in_IBUF[18]_inst 
       (.I(data_in[18]),
        .O(data_in_IBUF[18]));
  IBUF \data_in_IBUF[19]_inst 
       (.I(data_in[19]),
        .O(data_in_IBUF[19]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[20]_inst 
       (.I(data_in[20]),
        .O(data_in_IBUF[20]));
  IBUF \data_in_IBUF[21]_inst 
       (.I(data_in[21]),
        .O(data_in_IBUF[21]));
  IBUF \data_in_IBUF[22]_inst 
       (.I(data_in[22]),
        .O(data_in_IBUF[22]));
  IBUF \data_in_IBUF[23]_inst 
       (.I(data_in[23]),
        .O(data_in_IBUF[23]));
  IBUF \data_in_IBUF[24]_inst 
       (.I(data_in[24]),
        .O(data_in_IBUF[24]));
  IBUF \data_in_IBUF[25]_inst 
       (.I(data_in[25]),
        .O(data_in_IBUF[25]));
  IBUF \data_in_IBUF[26]_inst 
       (.I(data_in[26]),
        .O(data_in_IBUF[26]));
  IBUF \data_in_IBUF[27]_inst 
       (.I(data_in[27]),
        .O(data_in_IBUF[27]));
  IBUF \data_in_IBUF[28]_inst 
       (.I(data_in[28]),
        .O(data_in_IBUF[28]));
  IBUF \data_in_IBUF[29]_inst 
       (.I(data_in[29]),
        .O(data_in_IBUF[29]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[30]_inst 
       (.I(data_in[30]),
        .O(data_in_IBUF[30]));
  IBUF \data_in_IBUF[31]_inst 
       (.I(data_in[31]),
        .O(data_in_IBUF[31]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
  IBUF \data_in_IBUF[5]_inst 
       (.I(data_in[5]),
        .O(data_in_IBUF[5]));
  IBUF \data_in_IBUF[6]_inst 
       (.I(data_in[6]),
        .O(data_in_IBUF[6]));
  IBUF \data_in_IBUF[7]_inst 
       (.I(data_in[7]),
        .O(data_in_IBUF[7]));
  IBUF \data_in_IBUF[8]_inst 
       (.I(data_in[8]),
        .O(data_in_IBUF[8]));
  IBUF \data_in_IBUF[9]_inst 
       (.I(data_in[9]),
        .O(data_in_IBUF[9]));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  OBUF \data_out_OBUF[10]_inst 
       (.I(data_out_OBUF[10]),
        .O(data_out[10]));
  OBUF \data_out_OBUF[11]_inst 
       (.I(data_out_OBUF[11]),
        .O(data_out[11]));
  OBUF \data_out_OBUF[12]_inst 
       (.I(data_out_OBUF[12]),
        .O(data_out[12]));
  OBUF \data_out_OBUF[13]_inst 
       (.I(data_out_OBUF[13]),
        .O(data_out[13]));
  OBUF \data_out_OBUF[14]_inst 
       (.I(data_out_OBUF[14]),
        .O(data_out[14]));
  OBUF \data_out_OBUF[15]_inst 
       (.I(data_out_OBUF[15]),
        .O(data_out[15]));
  OBUF \data_out_OBUF[16]_inst 
       (.I(data_out_OBUF[16]),
        .O(data_out[16]));
  OBUF \data_out_OBUF[17]_inst 
       (.I(data_out_OBUF[17]),
        .O(data_out[17]));
  OBUF \data_out_OBUF[18]_inst 
       (.I(data_out_OBUF[18]),
        .O(data_out[18]));
  OBUF \data_out_OBUF[19]_inst 
       (.I(data_out_OBUF[19]),
        .O(data_out[19]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[20]_inst 
       (.I(data_out_OBUF[20]),
        .O(data_out[20]));
  OBUF \data_out_OBUF[21]_inst 
       (.I(data_out_OBUF[21]),
        .O(data_out[21]));
  OBUF \data_out_OBUF[22]_inst 
       (.I(data_out_OBUF[22]),
        .O(data_out[22]));
  OBUF \data_out_OBUF[23]_inst 
       (.I(data_out_OBUF[23]),
        .O(data_out[23]));
  OBUF \data_out_OBUF[24]_inst 
       (.I(data_out_OBUF[24]),
        .O(data_out[24]));
  OBUF \data_out_OBUF[25]_inst 
       (.I(data_out_OBUF[25]),
        .O(data_out[25]));
  OBUF \data_out_OBUF[26]_inst 
       (.I(data_out_OBUF[26]),
        .O(data_out[26]));
  OBUF \data_out_OBUF[27]_inst 
       (.I(data_out_OBUF[27]),
        .O(data_out[27]));
  OBUF \data_out_OBUF[28]_inst 
       (.I(data_out_OBUF[28]),
        .O(data_out[28]));
  OBUF \data_out_OBUF[29]_inst 
       (.I(data_out_OBUF[29]),
        .O(data_out[29]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[30]_inst 
       (.I(data_out_OBUF[30]),
        .O(data_out[30]));
  OBUF \data_out_OBUF[31]_inst 
       (.I(data_out_OBUF[31]),
        .O(data_out[31]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  OBUF \data_out_OBUF[7]_inst 
       (.I(data_out_OBUF[7]),
        .O(data_out[7]));
  OBUF \data_out_OBUF[8]_inst 
       (.I(data_out_OBUF[8]),
        .O(data_out[8]));
  OBUF \data_out_OBUF[9]_inst 
       (.I(data_out_OBUF[9]),
        .O(data_out[9]));
  IBUF miso_IBUF_inst
       (.I(miso),
        .O(miso_IBUF));
  OBUF mosi_OBUF_inst
       (.I(mosi_OBUF),
        .O(mosi));
  IBUF reset_n_IBUF_inst
       (.I(reset_n),
        .O(reset_n_IBUF));
  IBUF rw_n_IBUF_inst
       (.I(rw_n),
        .O(rw_n_IBUF));
  SIPO rx_shift_reg
       (.CLK(clk_IBUF_BUFG),
        .D(miso_IBUF),
        .E(control_and_clkgen_n_12),
        .Q(wire_rx_reg),
        .\p_data_reg[0]_0 (control_and_clkgen_n_10),
        .\p_shift_reg[0]_0 (spi_register_file_n_57));
  OBUF spi_clk_OBUF_inst
       (.I(spi_clk_OBUF),
        .O(spi_clk));
  reg_spi spi_register_file
       (.CLK(clk_IBUF_BUFG),
        .D(n_shift),
        .E(control_and_clkgen_n_5),
        .Q(\spi_reg_file_reg[4] ),
        .S({spi_register_file_n_9,spi_register_file_n_10,spi_register_file_n_11,spi_register_file_n_12}),
        .addr_IBUF(addr_IBUF),
        .\data_out_reg[0]_0 (control_and_clkgen_n_2),
        .\data_out_reg[0]_1 (control_and_clkgen_n_1),
        .\data_out_reg[31]_0 (data_out_OBUF),
        .n_count1_carry(p_count),
        .n_count1_carry_0({bit_count_tick_n_3,bit_count_tick_n_4,bit_count_tick_n_5,bit_count_tick_n_6,bit_count_tick_n_7,bit_count_tick_n_8,bit_count_tick_n_9,bit_count_tick_n_10}),
        .\p_shift_reg[31] (p_shift),
        .\p_shift_reg[4] (wire_load),
        .reset_n(spi_register_file_n_57),
        .reset_n_IBUF(reset_n_IBUF),
        .rw_n_IBUF(rw_n_IBUF),
        .\spi_reg_file_reg[0][31]_0 (data_in_IBUF),
        .\spi_reg_file_reg[0][31]_1 (control_and_clkgen_n_4),
        .\spi_reg_file_reg[0][7]_0 (\spi_reg_file_reg[0] ),
        .\spi_reg_file_reg[1][7]_0 (spi_register_file_n_8),
        .\spi_reg_file_reg[2][31]_0 (wire_rx_reg),
        .\spi_reg_file_reg[3][31]_0 (control_and_clkgen_n_6),
        .\spi_reg_file_reg[4][31]_0 (control_and_clkgen_n_3),
        .\spi_reg_file_reg[4][7]_0 ({spi_register_file_n_21,spi_register_file_n_22,spi_register_file_n_23,spi_register_file_n_24}));
  Counter_0 spi_tick
       (.CLK(clk_IBUF_BUFG),
        .E(control_and_clkgen_n_15),
        .Q(p_count),
        .S({spi_register_file_n_9,spi_register_file_n_10,spi_register_file_n_11,spi_register_file_n_12}),
        .n_count1_carry_0(\spi_reg_file_reg[0] ),
        .\p_count_reg[0]_0 (spi_register_file_n_57),
        .\p_count_reg[2]_0 (wire_enable[1]),
        .\p_count_reg[4]_0 (control_and_clkgen_n_17),
        .\p_count_reg[6]_0 (wire_spi_tick));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
endmodule

module reg_spi
   (Q,
    \spi_reg_file_reg[1][7]_0 ,
    S,
    \spi_reg_file_reg[0][7]_0 ,
    \spi_reg_file_reg[4][7]_0 ,
    D,
    reset_n,
    \data_out_reg[31]_0 ,
    \data_out_reg[0]_0 ,
    \data_out_reg[0]_1 ,
    rw_n_IBUF,
    addr_IBUF,
    n_count1_carry,
    n_count1_carry_0,
    \spi_reg_file_reg[2][31]_0 ,
    \p_shift_reg[31] ,
    \p_shift_reg[4] ,
    reset_n_IBUF,
    E,
    \spi_reg_file_reg[0][31]_0 ,
    CLK,
    \spi_reg_file_reg[4][31]_0 ,
    \spi_reg_file_reg[3][31]_0 ,
    \spi_reg_file_reg[0][31]_1 );
  output [7:0]Q;
  output \spi_reg_file_reg[1][7]_0 ;
  output [3:0]S;
  output [7:0]\spi_reg_file_reg[0][7]_0 ;
  output [3:0]\spi_reg_file_reg[4][7]_0 ;
  output [31:0]D;
  output reset_n;
  output [31:0]\data_out_reg[31]_0 ;
  input \data_out_reg[0]_0 ;
  input \data_out_reg[0]_1 ;
  input rw_n_IBUF;
  input [2:0]addr_IBUF;
  input [7:0]n_count1_carry;
  input [7:0]n_count1_carry_0;
  input [31:0]\spi_reg_file_reg[2][31]_0 ;
  input [30:0]\p_shift_reg[31] ;
  input [0:0]\p_shift_reg[4] ;
  input reset_n_IBUF;
  input [0:0]E;
  input [31:0]\spi_reg_file_reg[0][31]_0 ;
  input CLK;
  input [0:0]\spi_reg_file_reg[4][31]_0 ;
  input [0:0]\spi_reg_file_reg[3][31]_0 ;
  input [0:0]\spi_reg_file_reg[0][31]_1 ;

  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire [2:0]addr_IBUF;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[10]_i_1_n_0 ;
  wire \data_out[10]_i_2_n_0 ;
  wire \data_out[11]_i_1_n_0 ;
  wire \data_out[11]_i_2_n_0 ;
  wire \data_out[12]_i_1_n_0 ;
  wire \data_out[12]_i_2_n_0 ;
  wire \data_out[13]_i_1_n_0 ;
  wire \data_out[13]_i_2_n_0 ;
  wire \data_out[14]_i_1_n_0 ;
  wire \data_out[14]_i_2_n_0 ;
  wire \data_out[15]_i_1_n_0 ;
  wire \data_out[15]_i_2_n_0 ;
  wire \data_out[16]_i_1_n_0 ;
  wire \data_out[16]_i_2_n_0 ;
  wire \data_out[17]_i_1_n_0 ;
  wire \data_out[17]_i_2_n_0 ;
  wire \data_out[18]_i_1_n_0 ;
  wire \data_out[18]_i_2_n_0 ;
  wire \data_out[19]_i_1_n_0 ;
  wire \data_out[19]_i_2_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire \data_out[20]_i_1_n_0 ;
  wire \data_out[20]_i_2_n_0 ;
  wire \data_out[21]_i_1_n_0 ;
  wire \data_out[21]_i_2_n_0 ;
  wire \data_out[22]_i_1_n_0 ;
  wire \data_out[22]_i_2_n_0 ;
  wire \data_out[23]_i_1_n_0 ;
  wire \data_out[23]_i_2_n_0 ;
  wire \data_out[24]_i_1_n_0 ;
  wire \data_out[24]_i_2_n_0 ;
  wire \data_out[25]_i_1_n_0 ;
  wire \data_out[25]_i_2_n_0 ;
  wire \data_out[26]_i_1_n_0 ;
  wire \data_out[26]_i_2_n_0 ;
  wire \data_out[27]_i_1_n_0 ;
  wire \data_out[27]_i_2_n_0 ;
  wire \data_out[28]_i_1_n_0 ;
  wire \data_out[28]_i_2_n_0 ;
  wire \data_out[29]_i_1_n_0 ;
  wire \data_out[29]_i_2_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[30]_i_1_n_0 ;
  wire \data_out[30]_i_2_n_0 ;
  wire \data_out[31]_i_1_n_0 ;
  wire \data_out[31]_i_2_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[5]_i_2_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[6]_i_2_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[8]_i_1_n_0 ;
  wire \data_out[8]_i_2_n_0 ;
  wire \data_out[9]_i_1_n_0 ;
  wire \data_out[9]_i_2_n_0 ;
  wire \data_out_reg[0]_0 ;
  wire \data_out_reg[0]_1 ;
  wire [31:0]\data_out_reg[31]_0 ;
  wire [7:0]n_count1_carry;
  wire [7:0]n_count1_carry_0;
  wire [31:0]p_0_in;
  wire \p_shift[0]_i_2_n_0 ;
  wire \p_shift[10]_i_2_n_0 ;
  wire \p_shift[11]_i_2_n_0 ;
  wire \p_shift[11]_i_3_n_0 ;
  wire \p_shift[12]_i_2_n_0 ;
  wire \p_shift[12]_i_3_n_0 ;
  wire \p_shift[13]_i_2_n_0 ;
  wire \p_shift[13]_i_3_n_0 ;
  wire \p_shift[14]_i_2_n_0 ;
  wire \p_shift[14]_i_3_n_0 ;
  wire \p_shift[15]_i_2_n_0 ;
  wire \p_shift[15]_i_3_n_0 ;
  wire \p_shift[16]_i_2_n_0 ;
  wire \p_shift[16]_i_3_n_0 ;
  wire \p_shift[17]_i_2_n_0 ;
  wire \p_shift[17]_i_3_n_0 ;
  wire \p_shift[18]_i_2_n_0 ;
  wire \p_shift[18]_i_3_n_0 ;
  wire \p_shift[19]_i_2_n_0 ;
  wire \p_shift[19]_i_3_n_0 ;
  wire \p_shift[1]_i_2_n_0 ;
  wire \p_shift[20]_i_2_n_0 ;
  wire \p_shift[20]_i_3_n_0 ;
  wire \p_shift[21]_i_2_n_0 ;
  wire \p_shift[21]_i_3_n_0 ;
  wire \p_shift[22]_i_2_n_0 ;
  wire \p_shift[22]_i_3_n_0 ;
  wire \p_shift[22]_i_4_n_0 ;
  wire \p_shift[23]_i_2_n_0 ;
  wire \p_shift[23]_i_3_n_0 ;
  wire \p_shift[24]_i_2_n_0 ;
  wire \p_shift[24]_i_3_n_0 ;
  wire \p_shift[25]_i_2_n_0 ;
  wire \p_shift[25]_i_3_n_0 ;
  wire \p_shift[26]_i_2_n_0 ;
  wire \p_shift[26]_i_3_n_0 ;
  wire \p_shift[27]_i_2_n_0 ;
  wire \p_shift[27]_i_3_n_0 ;
  wire \p_shift[28]_i_2_n_0 ;
  wire \p_shift[28]_i_3_n_0 ;
  wire \p_shift[29]_i_2_n_0 ;
  wire \p_shift[29]_i_3_n_0 ;
  wire \p_shift[2]_i_2_n_0 ;
  wire \p_shift[30]_i_2_n_0 ;
  wire \p_shift[30]_i_3_n_0 ;
  wire \p_shift[31]_i_11_n_0 ;
  wire \p_shift[31]_i_13_n_0 ;
  wire \p_shift[31]_i_14_n_0 ;
  wire \p_shift[31]_i_15_n_0 ;
  wire \p_shift[31]_i_16_n_0 ;
  wire \p_shift[31]_i_17_n_0 ;
  wire \p_shift[31]_i_3_n_0 ;
  wire \p_shift[31]_i_4_n_0 ;
  wire \p_shift[31]_i_5_n_0 ;
  wire \p_shift[31]_i_6_n_0 ;
  wire \p_shift[31]_i_7_n_0 ;
  wire \p_shift[31]_i_8_n_0 ;
  wire \p_shift[31]_i_9_n_0 ;
  wire \p_shift[3]_i_2_n_0 ;
  wire \p_shift[4]_i_2_n_0 ;
  wire \p_shift[5]_i_2_n_0 ;
  wire \p_shift[6]_i_2_n_0 ;
  wire \p_shift[7]_i_2_n_0 ;
  wire \p_shift[7]_i_3_n_0 ;
  wire \p_shift[8]_i_2_n_0 ;
  wire \p_shift[8]_i_3_n_0 ;
  wire \p_shift[9]_i_2_n_0 ;
  wire [30:0]\p_shift_reg[31] ;
  wire [0:0]\p_shift_reg[4] ;
  wire reset_n;
  wire reset_n_IBUF;
  wire rw_n_IBUF;
  wire \spi_reg_file[2][10]_i_2_n_0 ;
  wire \spi_reg_file[2][14]_i_2_n_0 ;
  wire \spi_reg_file[2][20]_i_2_n_0 ;
  wire \spi_reg_file[2][22]_i_2_n_0 ;
  wire \spi_reg_file[2][30]_i_2_n_0 ;
  wire \spi_reg_file[2][30]_i_3_n_0 ;
  wire \spi_reg_file[2][8]_i_2_n_0 ;
  wire [31:8]\spi_reg_file_reg[0] ;
  wire [31:0]\spi_reg_file_reg[0][31]_0 ;
  wire [0:0]\spi_reg_file_reg[0][31]_1 ;
  wire [7:0]\spi_reg_file_reg[0][7]_0 ;
  wire \spi_reg_file_reg[1][7]_0 ;
  wire [31:0]\spi_reg_file_reg[2] ;
  wire [31:0]\spi_reg_file_reg[2][31]_0 ;
  wire [31:0]\spi_reg_file_reg[3] ;
  wire [0:0]\spi_reg_file_reg[3][31]_0 ;
  wire [31:8]\spi_reg_file_reg[4] ;
  wire [0:0]\spi_reg_file_reg[4][31]_0 ;
  wire [3:0]\spi_reg_file_reg[4][7]_0 ;
  wire \spi_reg_file_reg_n_0_[1][0] ;
  wire \spi_reg_file_reg_n_0_[1][10] ;
  wire \spi_reg_file_reg_n_0_[1][11] ;
  wire \spi_reg_file_reg_n_0_[1][12] ;
  wire \spi_reg_file_reg_n_0_[1][13] ;
  wire \spi_reg_file_reg_n_0_[1][14] ;
  wire \spi_reg_file_reg_n_0_[1][15] ;
  wire \spi_reg_file_reg_n_0_[1][16] ;
  wire \spi_reg_file_reg_n_0_[1][17] ;
  wire \spi_reg_file_reg_n_0_[1][18] ;
  wire \spi_reg_file_reg_n_0_[1][19] ;
  wire \spi_reg_file_reg_n_0_[1][1] ;
  wire \spi_reg_file_reg_n_0_[1][20] ;
  wire \spi_reg_file_reg_n_0_[1][21] ;
  wire \spi_reg_file_reg_n_0_[1][22] ;
  wire \spi_reg_file_reg_n_0_[1][23] ;
  wire \spi_reg_file_reg_n_0_[1][24] ;
  wire \spi_reg_file_reg_n_0_[1][25] ;
  wire \spi_reg_file_reg_n_0_[1][26] ;
  wire \spi_reg_file_reg_n_0_[1][27] ;
  wire \spi_reg_file_reg_n_0_[1][28] ;
  wire \spi_reg_file_reg_n_0_[1][29] ;
  wire \spi_reg_file_reg_n_0_[1][2] ;
  wire \spi_reg_file_reg_n_0_[1][30] ;
  wire \spi_reg_file_reg_n_0_[1][31] ;
  wire \spi_reg_file_reg_n_0_[1][3] ;
  wire \spi_reg_file_reg_n_0_[1][4] ;
  wire \spi_reg_file_reg_n_0_[1][5] ;
  wire \spi_reg_file_reg_n_0_[1][8] ;
  wire \spi_reg_file_reg_n_0_[1][9] ;
  wire wire_cpha;
  wire wire_cpol;
  wire [4:1]wire_tx_reg_shifted0;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_p_state[2]_i_2 
       (.I0(reset_n_IBUF),
        .O(reset_n));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[0]_i_1 
       (.I0(Q[0]),
        .I1(\data_out[0]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[0]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][0] ),
        .I1(\spi_reg_file_reg[3] [0]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0][7]_0 [0]),
        .I5(\spi_reg_file_reg[2] [0]),
        .O(\data_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[10]_i_1 
       (.I0(\spi_reg_file_reg[4] [10]),
        .I1(\data_out[10]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[10]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][10] ),
        .I1(\spi_reg_file_reg[3] [10]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [10]),
        .I5(\spi_reg_file_reg[2] [10]),
        .O(\data_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[11]_i_1 
       (.I0(\spi_reg_file_reg[4] [11]),
        .I1(\data_out[11]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[11]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][11] ),
        .I1(\spi_reg_file_reg[3] [11]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [11]),
        .I5(\spi_reg_file_reg[2] [11]),
        .O(\data_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[12]_i_1 
       (.I0(\spi_reg_file_reg[4] [12]),
        .I1(\data_out[12]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[12]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][12] ),
        .I1(\spi_reg_file_reg[3] [12]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [12]),
        .I5(\spi_reg_file_reg[2] [12]),
        .O(\data_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[13]_i_1 
       (.I0(\spi_reg_file_reg[4] [13]),
        .I1(\data_out[13]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[13]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][13] ),
        .I1(\spi_reg_file_reg[3] [13]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [13]),
        .I5(\spi_reg_file_reg[2] [13]),
        .O(\data_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[14]_i_1 
       (.I0(\spi_reg_file_reg[4] [14]),
        .I1(\data_out[14]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[14]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][14] ),
        .I1(\spi_reg_file_reg[3] [14]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [14]),
        .I5(\spi_reg_file_reg[2] [14]),
        .O(\data_out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[15]_i_1 
       (.I0(\spi_reg_file_reg[4] [15]),
        .I1(\data_out[15]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[15]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][15] ),
        .I1(\spi_reg_file_reg[3] [15]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [15]),
        .I5(\spi_reg_file_reg[2] [15]),
        .O(\data_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[16]_i_1 
       (.I0(\spi_reg_file_reg[4] [16]),
        .I1(\data_out[16]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[16]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][16] ),
        .I1(\spi_reg_file_reg[3] [16]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [16]),
        .I5(\spi_reg_file_reg[2] [16]),
        .O(\data_out[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[17]_i_1 
       (.I0(\spi_reg_file_reg[4] [17]),
        .I1(\data_out[17]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[17]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][17] ),
        .I1(\spi_reg_file_reg[3] [17]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [17]),
        .I5(\spi_reg_file_reg[2] [17]),
        .O(\data_out[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[18]_i_1 
       (.I0(\spi_reg_file_reg[4] [18]),
        .I1(\data_out[18]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[18]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][18] ),
        .I1(\spi_reg_file_reg[3] [18]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [18]),
        .I5(\spi_reg_file_reg[2] [18]),
        .O(\data_out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[19]_i_1 
       (.I0(\spi_reg_file_reg[4] [19]),
        .I1(\data_out[19]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[19]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][19] ),
        .I1(\spi_reg_file_reg[3] [19]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [19]),
        .I5(\spi_reg_file_reg[2] [19]),
        .O(\data_out[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[1]_i_1 
       (.I0(Q[1]),
        .I1(\data_out[1]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[1]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][1] ),
        .I1(\spi_reg_file_reg[3] [1]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0][7]_0 [1]),
        .I5(\spi_reg_file_reg[2] [1]),
        .O(\data_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[20]_i_1 
       (.I0(\spi_reg_file_reg[4] [20]),
        .I1(\data_out[20]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[20]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][20] ),
        .I1(\spi_reg_file_reg[3] [20]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [20]),
        .I5(\spi_reg_file_reg[2] [20]),
        .O(\data_out[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[21]_i_1 
       (.I0(\spi_reg_file_reg[4] [21]),
        .I1(\data_out[21]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[21]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][21] ),
        .I1(\spi_reg_file_reg[3] [21]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [21]),
        .I5(\spi_reg_file_reg[2] [21]),
        .O(\data_out[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[22]_i_1 
       (.I0(\spi_reg_file_reg[4] [22]),
        .I1(\data_out[22]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[22]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][22] ),
        .I1(\spi_reg_file_reg[3] [22]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [22]),
        .I5(\spi_reg_file_reg[2] [22]),
        .O(\data_out[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[23]_i_1 
       (.I0(\spi_reg_file_reg[4] [23]),
        .I1(\data_out[23]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[23]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][23] ),
        .I1(\spi_reg_file_reg[3] [23]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [23]),
        .I5(\spi_reg_file_reg[2] [23]),
        .O(\data_out[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[24]_i_1 
       (.I0(\spi_reg_file_reg[4] [24]),
        .I1(\data_out[24]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[24]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][24] ),
        .I1(\spi_reg_file_reg[3] [24]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [24]),
        .I5(\spi_reg_file_reg[2] [24]),
        .O(\data_out[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[25]_i_1 
       (.I0(\spi_reg_file_reg[4] [25]),
        .I1(\data_out[25]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[25]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][25] ),
        .I1(\spi_reg_file_reg[3] [25]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [25]),
        .I5(\spi_reg_file_reg[2] [25]),
        .O(\data_out[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[26]_i_1 
       (.I0(\spi_reg_file_reg[4] [26]),
        .I1(\data_out[26]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[26]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][26] ),
        .I1(\spi_reg_file_reg[3] [26]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [26]),
        .I5(\spi_reg_file_reg[2] [26]),
        .O(\data_out[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[27]_i_1 
       (.I0(\spi_reg_file_reg[4] [27]),
        .I1(\data_out[27]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[27]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][27] ),
        .I1(\spi_reg_file_reg[3] [27]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [27]),
        .I5(\spi_reg_file_reg[2] [27]),
        .O(\data_out[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[28]_i_1 
       (.I0(\spi_reg_file_reg[4] [28]),
        .I1(\data_out[28]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[28]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][28] ),
        .I1(\spi_reg_file_reg[3] [28]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [28]),
        .I5(\spi_reg_file_reg[2] [28]),
        .O(\data_out[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[29]_i_1 
       (.I0(\spi_reg_file_reg[4] [29]),
        .I1(\data_out[29]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[29]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][29] ),
        .I1(\spi_reg_file_reg[3] [29]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [29]),
        .I5(\spi_reg_file_reg[2] [29]),
        .O(\data_out[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[2]_i_1 
       (.I0(Q[2]),
        .I1(\data_out[2]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[2]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][2] ),
        .I1(\spi_reg_file_reg[3] [2]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0][7]_0 [2]),
        .I5(\spi_reg_file_reg[2] [2]),
        .O(\data_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[30]_i_1 
       (.I0(\spi_reg_file_reg[4] [30]),
        .I1(\data_out[30]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[30]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][30] ),
        .I1(\spi_reg_file_reg[3] [30]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [30]),
        .I5(\spi_reg_file_reg[2] [30]),
        .O(\data_out[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[31]_i_1 
       (.I0(\spi_reg_file_reg[4] [31]),
        .I1(\data_out[31]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[31]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][31] ),
        .I1(\spi_reg_file_reg[3] [31]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [31]),
        .I5(\spi_reg_file_reg[2] [31]),
        .O(\data_out[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[3]_i_1 
       (.I0(Q[3]),
        .I1(\data_out[3]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[3]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][3] ),
        .I1(\spi_reg_file_reg[3] [3]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0][7]_0 [3]),
        .I5(\spi_reg_file_reg[2] [3]),
        .O(\data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[4]_i_1 
       (.I0(Q[4]),
        .I1(\data_out[4]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[4]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][4] ),
        .I1(\spi_reg_file_reg[3] [4]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0][7]_0 [4]),
        .I5(\spi_reg_file_reg[2] [4]),
        .O(\data_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[5]_i_1 
       (.I0(Q[5]),
        .I1(\data_out[5]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[5]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][5] ),
        .I1(\spi_reg_file_reg[3] [5]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0][7]_0 [5]),
        .I5(\spi_reg_file_reg[2] [5]),
        .O(\data_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[6]_i_1 
       (.I0(Q[6]),
        .I1(\data_out[6]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[6]_i_2 
       (.I0(wire_cpha),
        .I1(\spi_reg_file_reg[3] [6]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0][7]_0 [6]),
        .I5(\spi_reg_file_reg[2] [6]),
        .O(\data_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[7]_i_1 
       (.I0(Q[7]),
        .I1(\data_out[7]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[7]_i_2 
       (.I0(wire_cpol),
        .I1(\spi_reg_file_reg[3] [7]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0][7]_0 [7]),
        .I5(\spi_reg_file_reg[2] [7]),
        .O(\data_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[8]_i_1 
       (.I0(\spi_reg_file_reg[4] [8]),
        .I1(\data_out[8]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[8]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][8] ),
        .I1(\spi_reg_file_reg[3] [8]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [8]),
        .I5(\spi_reg_file_reg[2] [8]),
        .O(\data_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \data_out[9]_i_1 
       (.I0(\spi_reg_file_reg[4] [9]),
        .I1(\data_out[9]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(rw_n_IBUF),
        .I5(addr_IBUF[2]),
        .O(\data_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[9]_i_2 
       (.I0(\spi_reg_file_reg_n_0_[1][9] ),
        .I1(\spi_reg_file_reg[3] [9]),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[1]),
        .I4(\spi_reg_file_reg[0] [9]),
        .I5(\spi_reg_file_reg[2] [9]),
        .O(\data_out[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[10]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[11]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[12]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[13]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[14]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[15]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[16]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[17]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[18]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[19]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[20]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[21]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[22]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[23]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[24]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[25]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[26]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[27]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[28]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[29]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[30]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[31]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[8]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(\data_out[9]_i_1_n_0 ),
        .Q(\data_out_reg[31]_0 [9]));
  LUT4 #(
    .INIT(16'h9009)) 
    n_count1_carry_i_5
       (.I0(\spi_reg_file_reg[0][7]_0 [7]),
        .I1(n_count1_carry[7]),
        .I2(\spi_reg_file_reg[0][7]_0 [6]),
        .I3(n_count1_carry[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    n_count1_carry_i_5__0
       (.I0(Q[7]),
        .I1(n_count1_carry_0[7]),
        .I2(Q[6]),
        .I3(n_count1_carry_0[6]),
        .O(\spi_reg_file_reg[4][7]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    n_count1_carry_i_6
       (.I0(\spi_reg_file_reg[0][7]_0 [5]),
        .I1(n_count1_carry[5]),
        .I2(\spi_reg_file_reg[0][7]_0 [4]),
        .I3(n_count1_carry[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    n_count1_carry_i_6__0
       (.I0(Q[5]),
        .I1(n_count1_carry_0[5]),
        .I2(Q[4]),
        .I3(n_count1_carry_0[4]),
        .O(\spi_reg_file_reg[4][7]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    n_count1_carry_i_7
       (.I0(\spi_reg_file_reg[0][7]_0 [3]),
        .I1(n_count1_carry[3]),
        .I2(\spi_reg_file_reg[0][7]_0 [2]),
        .I3(n_count1_carry[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    n_count1_carry_i_7__0
       (.I0(Q[3]),
        .I1(n_count1_carry_0[3]),
        .I2(Q[2]),
        .I3(n_count1_carry_0[2]),
        .O(\spi_reg_file_reg[4][7]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    n_count1_carry_i_8
       (.I0(\spi_reg_file_reg[0][7]_0 [1]),
        .I1(n_count1_carry[1]),
        .I2(\spi_reg_file_reg[0][7]_0 [0]),
        .I3(n_count1_carry[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    n_count1_carry_i_8__0
       (.I0(Q[1]),
        .I1(n_count1_carry_0[1]),
        .I2(Q[0]),
        .I3(n_count1_carry_0[0]),
        .O(\spi_reg_file_reg[4][7]_0 [0]));
  LUT6 #(
    .INIT(64'h8000000000000080)) 
    \p_shift[0]_i_1 
       (.I0(\p_shift[31]_i_3_n_0 ),
        .I1(\p_shift[0]_i_2_n_0 ),
        .I2(\spi_reg_file_reg[3] [0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAAA80001)) 
    \p_shift[0]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\p_shift[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[10]_i_1 
       (.I0(\p_shift_reg[31] [9]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[11]_i_2_n_0 ),
        .I4(\p_shift[10]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \p_shift[10]_i_2 
       (.I0(\spi_reg_file_reg[3] [3]),
        .I1(wire_tx_reg_shifted0[2]),
        .I2(\p_shift[0]_i_2_n_0 ),
        .I3(\spi_reg_file_reg[3] [7]),
        .I4(wire_tx_reg_shifted0[1]),
        .I5(\p_shift[12]_i_3_n_0 ),
        .O(\p_shift[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[11]_i_1 
       (.I0(\p_shift_reg[31] [10]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[12]_i_2_n_0 ),
        .I4(\p_shift[11]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \p_shift[11]_i_2 
       (.I0(\p_shift[11]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\p_shift[13]_i_3_n_0 ),
        .O(\p_shift[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB88830003000)) 
    \p_shift[11]_i_3 
       (.I0(\spi_reg_file_reg[3] [4]),
        .I1(wire_tx_reg_shifted0[2]),
        .I2(\spi_reg_file_reg[3] [0]),
        .I3(\p_shift[22]_i_4_n_0 ),
        .I4(\spi_reg_file_reg[3] [8]),
        .I5(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[12]_i_1 
       (.I0(\p_shift_reg[31] [11]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[13]_i_2_n_0 ),
        .I4(\p_shift[12]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \p_shift[12]_i_2 
       (.I0(\p_shift[12]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\p_shift[14]_i_3_n_0 ),
        .O(\p_shift[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB88830003000)) 
    \p_shift[12]_i_3 
       (.I0(\spi_reg_file_reg[3] [5]),
        .I1(wire_tx_reg_shifted0[2]),
        .I2(\spi_reg_file_reg[3] [1]),
        .I3(\p_shift[22]_i_4_n_0 ),
        .I4(\spi_reg_file_reg[3] [9]),
        .I5(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[13]_i_1 
       (.I0(\p_shift_reg[31] [12]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[14]_i_2_n_0 ),
        .I4(\p_shift[13]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hEBE8EB2B2B28E828)) 
    \p_shift[13]_i_2 
       (.I0(\p_shift[13]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\p_shift[15]_i_3_n_0 ),
        .I4(Q[2]),
        .I5(\p_shift[19]_i_3_n_0 ),
        .O(\p_shift[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB88830003000)) 
    \p_shift[13]_i_3 
       (.I0(\spi_reg_file_reg[3] [6]),
        .I1(wire_tx_reg_shifted0[2]),
        .I2(\spi_reg_file_reg[3] [2]),
        .I3(\p_shift[22]_i_4_n_0 ),
        .I4(\spi_reg_file_reg[3] [10]),
        .I5(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[14]_i_1 
       (.I0(\p_shift_reg[31] [13]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[15]_i_2_n_0 ),
        .I4(\p_shift[14]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hEBE8EB2B2B28E828)) 
    \p_shift[14]_i_2 
       (.I0(\p_shift[14]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\p_shift[16]_i_3_n_0 ),
        .I4(Q[2]),
        .I5(\p_shift[20]_i_3_n_0 ),
        .O(\p_shift[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB88830003000)) 
    \p_shift[14]_i_3 
       (.I0(\spi_reg_file_reg[3] [7]),
        .I1(wire_tx_reg_shifted0[2]),
        .I2(\spi_reg_file_reg[3] [3]),
        .I3(\p_shift[22]_i_4_n_0 ),
        .I4(\spi_reg_file_reg[3] [11]),
        .I5(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[15]_i_1 
       (.I0(\p_shift_reg[31] [14]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[16]_i_2_n_0 ),
        .I4(\p_shift[15]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[15]_i_2 
       (.I0(\p_shift[15]_i_3_n_0 ),
        .I1(\p_shift[19]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[17]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[21]_i_3_n_0 ),
        .O(\p_shift[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \p_shift[15]_i_3 
       (.I0(\spi_reg_file_reg[3] [0]),
        .I1(\p_shift[22]_i_4_n_0 ),
        .I2(\spi_reg_file_reg[3] [8]),
        .I3(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[16]_i_1 
       (.I0(\p_shift_reg[31] [15]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[17]_i_2_n_0 ),
        .I4(\p_shift[16]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[16]_i_2 
       (.I0(\p_shift[16]_i_3_n_0 ),
        .I1(\p_shift[20]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[18]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[22]_i_3_n_0 ),
        .O(\p_shift[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \p_shift[16]_i_3 
       (.I0(\spi_reg_file_reg[3] [1]),
        .I1(\p_shift[22]_i_4_n_0 ),
        .I2(\spi_reg_file_reg[3] [9]),
        .I3(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[17]_i_1 
       (.I0(\p_shift_reg[31] [16]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[18]_i_2_n_0 ),
        .I4(\p_shift[17]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[17]_i_2 
       (.I0(\p_shift[17]_i_3_n_0 ),
        .I1(\p_shift[21]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[19]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[23]_i_3_n_0 ),
        .O(\p_shift[17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \p_shift[17]_i_3 
       (.I0(\spi_reg_file_reg[3] [2]),
        .I1(\p_shift[22]_i_4_n_0 ),
        .I2(\spi_reg_file_reg[3] [10]),
        .I3(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[18]_i_1 
       (.I0(\p_shift_reg[31] [17]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[19]_i_2_n_0 ),
        .I4(\p_shift[18]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[18]_i_2 
       (.I0(\p_shift[18]_i_3_n_0 ),
        .I1(\p_shift[22]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[20]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[24]_i_3_n_0 ),
        .O(\p_shift[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \p_shift[18]_i_3 
       (.I0(\spi_reg_file_reg[3] [3]),
        .I1(\p_shift[22]_i_4_n_0 ),
        .I2(\spi_reg_file_reg[3] [11]),
        .I3(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[19]_i_1 
       (.I0(\p_shift_reg[31] [18]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[20]_i_2_n_0 ),
        .I4(\p_shift[19]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[19]_i_2 
       (.I0(\p_shift[19]_i_3_n_0 ),
        .I1(\p_shift[23]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[21]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[25]_i_3_n_0 ),
        .O(\p_shift[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \p_shift[19]_i_3 
       (.I0(\spi_reg_file_reg[3] [4]),
        .I1(\p_shift[22]_i_4_n_0 ),
        .I2(\spi_reg_file_reg[3] [12]),
        .I3(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[1]_i_1 
       (.I0(\p_shift_reg[31] [0]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[2]_i_2_n_0 ),
        .I4(\p_shift[1]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8000000000000002)) 
    \p_shift[1]_i_2 
       (.I0(\spi_reg_file_reg[3] [0]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\p_shift[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[20]_i_1 
       (.I0(\p_shift_reg[31] [19]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[21]_i_2_n_0 ),
        .I4(\p_shift[20]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[20]_i_2 
       (.I0(\p_shift[20]_i_3_n_0 ),
        .I1(\p_shift[24]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[22]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[26]_i_3_n_0 ),
        .O(\p_shift[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \p_shift[20]_i_3 
       (.I0(\spi_reg_file_reg[3] [5]),
        .I1(\p_shift[22]_i_4_n_0 ),
        .I2(\spi_reg_file_reg[3] [13]),
        .I3(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[21]_i_1 
       (.I0(\p_shift_reg[31] [20]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[22]_i_2_n_0 ),
        .I4(\p_shift[21]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[21]_i_2 
       (.I0(\p_shift[21]_i_3_n_0 ),
        .I1(\p_shift[25]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[23]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[27]_i_3_n_0 ),
        .O(\p_shift[21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \p_shift[21]_i_3 
       (.I0(\spi_reg_file_reg[3] [6]),
        .I1(\p_shift[22]_i_4_n_0 ),
        .I2(\spi_reg_file_reg[3] [14]),
        .I3(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[22]_i_1 
       (.I0(\p_shift_reg[31] [21]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[23]_i_2_n_0 ),
        .I4(\p_shift[22]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[22]_i_2 
       (.I0(\p_shift[22]_i_3_n_0 ),
        .I1(\p_shift[26]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[24]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[28]_i_3_n_0 ),
        .O(\p_shift[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \p_shift[22]_i_3 
       (.I0(\spi_reg_file_reg[3] [7]),
        .I1(\p_shift[22]_i_4_n_0 ),
        .I2(\spi_reg_file_reg[3] [15]),
        .I3(\p_shift[0]_i_2_n_0 ),
        .O(\p_shift[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0002AAA8)) 
    \p_shift[22]_i_4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\p_shift[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[23]_i_1 
       (.I0(\p_shift_reg[31] [22]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[24]_i_2_n_0 ),
        .I4(\p_shift[23]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[23]_i_2 
       (.I0(\p_shift[23]_i_3_n_0 ),
        .I1(\p_shift[27]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[25]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[29]_i_3_n_0 ),
        .O(\p_shift[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \p_shift[23]_i_3 
       (.I0(\spi_reg_file_reg[3] [8]),
        .I1(wire_tx_reg_shifted0[3]),
        .I2(\spi_reg_file_reg[3] [0]),
        .I3(wire_tx_reg_shifted0[4]),
        .I4(\spi_reg_file_reg[3] [16]),
        .O(\p_shift[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[24]_i_1 
       (.I0(\p_shift_reg[31] [23]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[25]_i_2_n_0 ),
        .I4(\p_shift[24]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[24]_i_2 
       (.I0(\p_shift[24]_i_3_n_0 ),
        .I1(\p_shift[28]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[26]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[30]_i_3_n_0 ),
        .O(\p_shift[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \p_shift[24]_i_3 
       (.I0(\spi_reg_file_reg[3] [9]),
        .I1(wire_tx_reg_shifted0[3]),
        .I2(\spi_reg_file_reg[3] [1]),
        .I3(wire_tx_reg_shifted0[4]),
        .I4(\spi_reg_file_reg[3] [17]),
        .O(\p_shift[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[25]_i_1 
       (.I0(\p_shift_reg[31] [24]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[26]_i_2_n_0 ),
        .I4(\p_shift[25]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[25]_i_2 
       (.I0(\p_shift[25]_i_3_n_0 ),
        .I1(\p_shift[29]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[27]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[31]_i_16_n_0 ),
        .O(\p_shift[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \p_shift[25]_i_3 
       (.I0(\spi_reg_file_reg[3] [10]),
        .I1(wire_tx_reg_shifted0[3]),
        .I2(\spi_reg_file_reg[3] [2]),
        .I3(wire_tx_reg_shifted0[4]),
        .I4(\spi_reg_file_reg[3] [18]),
        .O(\p_shift[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[26]_i_1 
       (.I0(\p_shift_reg[31] [25]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[27]_i_2_n_0 ),
        .I4(\p_shift[26]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[26]_i_2 
       (.I0(\p_shift[26]_i_3_n_0 ),
        .I1(\p_shift[30]_i_3_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[28]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[31]_i_11_n_0 ),
        .O(\p_shift[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \p_shift[26]_i_3 
       (.I0(\spi_reg_file_reg[3] [11]),
        .I1(wire_tx_reg_shifted0[3]),
        .I2(\spi_reg_file_reg[3] [3]),
        .I3(wire_tx_reg_shifted0[4]),
        .I4(\spi_reg_file_reg[3] [19]),
        .O(\p_shift[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[27]_i_1 
       (.I0(\p_shift_reg[31] [26]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[28]_i_2_n_0 ),
        .I4(\p_shift[27]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[27]_i_2 
       (.I0(\p_shift[27]_i_3_n_0 ),
        .I1(\p_shift[31]_i_16_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[29]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[31]_i_15_n_0 ),
        .O(\p_shift[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \p_shift[27]_i_3 
       (.I0(\spi_reg_file_reg[3] [12]),
        .I1(wire_tx_reg_shifted0[3]),
        .I2(\spi_reg_file_reg[3] [4]),
        .I3(wire_tx_reg_shifted0[4]),
        .I4(\spi_reg_file_reg[3] [20]),
        .O(\p_shift[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[28]_i_1 
       (.I0(\p_shift_reg[31] [27]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[29]_i_2_n_0 ),
        .I4(\p_shift[28]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[28]_i_2 
       (.I0(\p_shift[28]_i_3_n_0 ),
        .I1(\p_shift[31]_i_11_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[30]_i_3_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[31]_i_9_n_0 ),
        .O(\p_shift[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \p_shift[28]_i_3 
       (.I0(\spi_reg_file_reg[3] [13]),
        .I1(wire_tx_reg_shifted0[3]),
        .I2(\spi_reg_file_reg[3] [5]),
        .I3(wire_tx_reg_shifted0[4]),
        .I4(\spi_reg_file_reg[3] [21]),
        .O(\p_shift[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[29]_i_1 
       (.I0(\p_shift_reg[31] [28]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[30]_i_2_n_0 ),
        .I4(\p_shift[29]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[29]_i_2 
       (.I0(\p_shift[29]_i_3_n_0 ),
        .I1(\p_shift[31]_i_15_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[31]_i_16_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[31]_i_17_n_0 ),
        .O(\p_shift[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \p_shift[29]_i_3 
       (.I0(\spi_reg_file_reg[3] [14]),
        .I1(wire_tx_reg_shifted0[3]),
        .I2(\spi_reg_file_reg[3] [6]),
        .I3(wire_tx_reg_shifted0[4]),
        .I4(\spi_reg_file_reg[3] [22]),
        .O(\p_shift[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[2]_i_1 
       (.I0(\p_shift_reg[31] [1]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[3]_i_2_n_0 ),
        .I4(\p_shift[2]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h8000000000000002)) 
    \p_shift[2]_i_2 
       (.I0(\spi_reg_file_reg[3] [1]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\p_shift[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[30]_i_1 
       (.I0(\p_shift_reg[31] [29]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_6_n_0 ),
        .I3(\p_shift[30]_i_2_n_0 ),
        .I4(\p_shift[31]_i_5_n_0 ),
        .I5(\p_shift[31]_i_3_n_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_shift[30]_i_2 
       (.I0(\p_shift[30]_i_3_n_0 ),
        .I1(\p_shift[31]_i_9_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[31]_i_11_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[31]_i_13_n_0 ),
        .O(\p_shift[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \p_shift[30]_i_3 
       (.I0(\spi_reg_file_reg[3] [15]),
        .I1(wire_tx_reg_shifted0[3]),
        .I2(\spi_reg_file_reg[3] [7]),
        .I3(wire_tx_reg_shifted0[4]),
        .I4(\spi_reg_file_reg[3] [23]),
        .O(\p_shift[30]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_shift[31]_i_10 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(wire_tx_reg_shifted0[1]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \p_shift[31]_i_11 
       (.I0(\spi_reg_file_reg[3] [25]),
        .I1(\spi_reg_file_reg[3] [9]),
        .I2(wire_tx_reg_shifted0[3]),
        .I3(\spi_reg_file_reg[3] [1]),
        .I4(wire_tx_reg_shifted0[4]),
        .I5(\spi_reg_file_reg[3] [17]),
        .O(\p_shift[31]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \p_shift[31]_i_12 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(wire_tx_reg_shifted0[2]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \p_shift[31]_i_13 
       (.I0(\spi_reg_file_reg[3] [29]),
        .I1(\spi_reg_file_reg[3] [13]),
        .I2(wire_tx_reg_shifted0[3]),
        .I3(\spi_reg_file_reg[3] [5]),
        .I4(wire_tx_reg_shifted0[4]),
        .I5(\spi_reg_file_reg[3] [21]),
        .O(\p_shift[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \p_shift[31]_i_14 
       (.I0(\spi_reg_file_reg[3] [30]),
        .I1(\spi_reg_file_reg[3] [14]),
        .I2(wire_tx_reg_shifted0[3]),
        .I3(\spi_reg_file_reg[3] [6]),
        .I4(wire_tx_reg_shifted0[4]),
        .I5(\spi_reg_file_reg[3] [22]),
        .O(\p_shift[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \p_shift[31]_i_15 
       (.I0(\spi_reg_file_reg[3] [26]),
        .I1(\spi_reg_file_reg[3] [10]),
        .I2(wire_tx_reg_shifted0[3]),
        .I3(\spi_reg_file_reg[3] [2]),
        .I4(wire_tx_reg_shifted0[4]),
        .I5(\spi_reg_file_reg[3] [18]),
        .O(\p_shift[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \p_shift[31]_i_16 
       (.I0(\spi_reg_file_reg[3] [24]),
        .I1(\spi_reg_file_reg[3] [8]),
        .I2(wire_tx_reg_shifted0[3]),
        .I3(\spi_reg_file_reg[3] [0]),
        .I4(wire_tx_reg_shifted0[4]),
        .I5(\spi_reg_file_reg[3] [16]),
        .O(\p_shift[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \p_shift[31]_i_17 
       (.I0(\spi_reg_file_reg[3] [28]),
        .I1(\spi_reg_file_reg[3] [12]),
        .I2(wire_tx_reg_shifted0[3]),
        .I3(\spi_reg_file_reg[3] [4]),
        .I4(wire_tx_reg_shifted0[4]),
        .I5(\spi_reg_file_reg[3] [20]),
        .O(\p_shift[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h01FE)) 
    \p_shift[31]_i_18 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(wire_tx_reg_shifted0[3]));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \p_shift[31]_i_19 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(wire_tx_reg_shifted0[4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[31]_i_2 
       (.I0(\p_shift_reg[31] [30]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[31]_i_4_n_0 ),
        .I4(\p_shift[31]_i_5_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h0000000000002002)) 
    \p_shift[31]_i_3 
       (.I0(\p_shift_reg[4] ),
        .I1(Q[6]),
        .I2(\p_shift[31]_i_7_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[0]),
        .O(\p_shift[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \p_shift[31]_i_4 
       (.I0(\p_shift[31]_i_8_n_0 ),
        .I1(\p_shift[31]_i_9_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[31]_i_11_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[31]_i_13_n_0 ),
        .O(\p_shift[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \p_shift[31]_i_5 
       (.I0(\p_shift[31]_i_14_n_0 ),
        .I1(\p_shift[31]_i_15_n_0 ),
        .I2(wire_tx_reg_shifted0[1]),
        .I3(\p_shift[31]_i_16_n_0 ),
        .I4(wire_tx_reg_shifted0[2]),
        .I5(\p_shift[31]_i_17_n_0 ),
        .O(\p_shift[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000200200000000)) 
    \p_shift[31]_i_6 
       (.I0(\p_shift_reg[4] ),
        .I1(Q[6]),
        .I2(\p_shift[31]_i_7_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[0]),
        .O(\p_shift[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \p_shift[31]_i_7 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\p_shift[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \p_shift[31]_i_8 
       (.I0(\spi_reg_file_reg[3] [31]),
        .I1(\spi_reg_file_reg[3] [15]),
        .I2(wire_tx_reg_shifted0[3]),
        .I3(\spi_reg_file_reg[3] [7]),
        .I4(wire_tx_reg_shifted0[4]),
        .I5(\spi_reg_file_reg[3] [23]),
        .O(\p_shift[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \p_shift[31]_i_9 
       (.I0(\spi_reg_file_reg[3] [27]),
        .I1(\spi_reg_file_reg[3] [11]),
        .I2(wire_tx_reg_shifted0[3]),
        .I3(\spi_reg_file_reg[3] [3]),
        .I4(wire_tx_reg_shifted0[4]),
        .I5(\spi_reg_file_reg[3] [19]),
        .O(\p_shift[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[3]_i_1 
       (.I0(\p_shift_reg[31] [2]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[4]_i_2_n_0 ),
        .I4(\p_shift[3]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hC0008800880000C0)) 
    \p_shift[3]_i_2 
       (.I0(\spi_reg_file_reg[3] [0]),
        .I1(\p_shift[0]_i_2_n_0 ),
        .I2(\spi_reg_file_reg[3] [2]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\p_shift[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[4]_i_1 
       (.I0(\p_shift_reg[31] [3]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[5]_i_2_n_0 ),
        .I4(\p_shift[4]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hC0008800880000C0)) 
    \p_shift[4]_i_2 
       (.I0(\spi_reg_file_reg[3] [1]),
        .I1(\p_shift[0]_i_2_n_0 ),
        .I2(\spi_reg_file_reg[3] [3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\p_shift[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[5]_i_1 
       (.I0(\p_shift_reg[31] [4]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[6]_i_2_n_0 ),
        .I4(\p_shift[5]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \p_shift[5]_i_2 
       (.I0(\spi_reg_file_reg[3] [2]),
        .I1(wire_tx_reg_shifted0[1]),
        .I2(\spi_reg_file_reg[3] [0]),
        .I3(wire_tx_reg_shifted0[2]),
        .I4(\p_shift[0]_i_2_n_0 ),
        .I5(\spi_reg_file_reg[3] [4]),
        .O(\p_shift[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[6]_i_1 
       (.I0(\p_shift_reg[31] [5]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[7]_i_2_n_0 ),
        .I4(\p_shift[6]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \p_shift[6]_i_2 
       (.I0(\spi_reg_file_reg[3] [3]),
        .I1(wire_tx_reg_shifted0[1]),
        .I2(\spi_reg_file_reg[3] [1]),
        .I3(wire_tx_reg_shifted0[2]),
        .I4(\p_shift[0]_i_2_n_0 ),
        .I5(\spi_reg_file_reg[3] [5]),
        .O(\p_shift[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[7]_i_1 
       (.I0(\p_shift_reg[31] [6]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[8]_i_2_n_0 ),
        .I4(\p_shift[7]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \p_shift[7]_i_2 
       (.I0(\spi_reg_file_reg[3] [0]),
        .I1(wire_tx_reg_shifted0[2]),
        .I2(\p_shift[0]_i_2_n_0 ),
        .I3(\spi_reg_file_reg[3] [4]),
        .I4(wire_tx_reg_shifted0[1]),
        .I5(\p_shift[7]_i_3_n_0 ),
        .O(\p_shift[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEAB000002A80000)) 
    \p_shift[7]_i_3 
       (.I0(\spi_reg_file_reg[3] [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\p_shift[0]_i_2_n_0 ),
        .I5(\spi_reg_file_reg[3] [6]),
        .O(\p_shift[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[8]_i_1 
       (.I0(\p_shift_reg[31] [7]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[9]_i_2_n_0 ),
        .I4(\p_shift[8]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \p_shift[8]_i_2 
       (.I0(\spi_reg_file_reg[3] [1]),
        .I1(wire_tx_reg_shifted0[2]),
        .I2(\p_shift[0]_i_2_n_0 ),
        .I3(\spi_reg_file_reg[3] [5]),
        .I4(wire_tx_reg_shifted0[1]),
        .I5(\p_shift[8]_i_3_n_0 ),
        .O(\p_shift[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEAB000002A80000)) 
    \p_shift[8]_i_3 
       (.I0(\spi_reg_file_reg[3] [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\p_shift[0]_i_2_n_0 ),
        .I5(\spi_reg_file_reg[3] [7]),
        .O(\p_shift[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \p_shift[9]_i_1 
       (.I0(\p_shift_reg[31] [8]),
        .I1(\p_shift_reg[4] ),
        .I2(\p_shift[31]_i_3_n_0 ),
        .I3(\p_shift[10]_i_2_n_0 ),
        .I4(\p_shift[9]_i_2_n_0 ),
        .I5(\p_shift[31]_i_6_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \p_shift[9]_i_2 
       (.I0(\spi_reg_file_reg[3] [2]),
        .I1(wire_tx_reg_shifted0[2]),
        .I2(\p_shift[0]_i_2_n_0 ),
        .I3(\spi_reg_file_reg[3] [6]),
        .I4(wire_tx_reg_shifted0[1]),
        .I5(\p_shift[11]_i_3_n_0 ),
        .O(\p_shift[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    spi_clk_i_1
       (.I0(wire_cpol),
        .I1(\data_out_reg[0]_1 ),
        .I2(wire_cpha),
        .I3(\data_out_reg[0]_0 ),
        .O(\spi_reg_file_reg[1][7]_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \spi_reg_file[2][0]_i_1 
       (.I0(\spi_reg_file_reg[2][31]_0 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\spi_reg_file[2][10]_i_2_n_0 ),
        .I4(Q[2]),
        .I5(\spi_reg_file[2][30]_i_3_n_0 ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h757F000055FF0000)) 
    \spi_reg_file[2][10]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(\spi_reg_file[2][10]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(\spi_reg_file[2][14]_i_2_n_0 ),
        .I4(\spi_reg_file_reg[2][31]_0 [10]),
        .I5(Q[0]),
        .O(p_0_in[10]));
  LUT2 #(
    .INIT(4'h1)) 
    \spi_reg_file[2][10]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(\spi_reg_file[2][10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \spi_reg_file[2][11]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(\spi_reg_file_reg[2][31]_0 [11]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'h0FFF00002FEF0000)) 
    \spi_reg_file[2][12]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(\spi_reg_file[2][30]_i_3_n_0 ),
        .I3(\spi_reg_file[2][14]_i_2_n_0 ),
        .I4(\spi_reg_file_reg[2][31]_0 [12]),
        .I5(Q[0]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hFFFFD55500000000)) 
    \spi_reg_file[2][13]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[4]),
        .I5(\spi_reg_file_reg[2][31]_0 [13]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'h7F750000FF550000)) 
    \spi_reg_file[2][14]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(\spi_reg_file[2][14]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(\spi_reg_file_reg[2][31]_0 [14]),
        .I5(Q[0]),
        .O(p_0_in[14]));
  LUT3 #(
    .INIT(8'h07)) 
    \spi_reg_file[2][14]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\spi_reg_file[2][14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \spi_reg_file[2][15]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\spi_reg_file_reg[2][31]_0 [15]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hFF00DF000F001F00)) 
    \spi_reg_file[2][16]_i_1 
       (.I0(\spi_reg_file[2][20]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\spi_reg_file[2][30]_i_3_n_0 ),
        .I3(\spi_reg_file_reg[2][31]_0 [16]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'hFF55FD5500000000)) 
    \spi_reg_file[2][17]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\spi_reg_file_reg[2][31]_0 [17]),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hD5DF000055FF0000)) 
    \spi_reg_file[2][18]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\spi_reg_file[2][20]_i_2_n_0 ),
        .I4(\spi_reg_file_reg[2][31]_0 [18]),
        .I5(Q[0]),
        .O(p_0_in[18]));
  LUT5 #(
    .INIT(32'hF5D50000)) 
    \spi_reg_file[2][19]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\spi_reg_file_reg[2][31]_0 [19]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \spi_reg_file[2][1]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\spi_reg_file_reg[2][31]_0 [1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h0FFF00001FDF0000)) 
    \spi_reg_file[2][20]_i_1 
       (.I0(\spi_reg_file[2][30]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\spi_reg_file[2][30]_i_3_n_0 ),
        .I3(\spi_reg_file[2][20]_i_2_n_0 ),
        .I4(\spi_reg_file_reg[2][31]_0 [20]),
        .I5(Q[0]),
        .O(p_0_in[20]));
  LUT3 #(
    .INIT(8'h37)) 
    \spi_reg_file[2][20]_i_2 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(\spi_reg_file[2][20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF55D55500000000)) 
    \spi_reg_file[2][21]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\spi_reg_file_reg[2][31]_0 [21]),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'h0FFF00008F8F0000)) 
    \spi_reg_file[2][22]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(\spi_reg_file[2][30]_i_3_n_0 ),
        .I3(\spi_reg_file[2][22]_i_2_n_0 ),
        .I4(\spi_reg_file_reg[2][31]_0 [22]),
        .I5(Q[0]),
        .O(p_0_in[22]));
  LUT4 #(
    .INIT(16'h0F7F)) 
    \spi_reg_file[2][22]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(\spi_reg_file[2][22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFE00000000)) 
    \spi_reg_file[2][23]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\spi_reg_file_reg[2][31]_0 [23]),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'h0FFF00000FEF0000)) 
    \spi_reg_file[2][24]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\spi_reg_file[2][30]_i_3_n_0 ),
        .I3(\spi_reg_file[2][30]_i_2_n_0 ),
        .I4(\spi_reg_file_reg[2][31]_0 [24]),
        .I5(Q[0]),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'hF555D55500000000)) 
    \spi_reg_file[2][25]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(\spi_reg_file_reg[2][31]_0 [25]),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'h5F5D00005F550000)) 
    \spi_reg_file[2][26]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\spi_reg_file[2][30]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(\spi_reg_file_reg[2][31]_0 [26]),
        .I5(Q[0]),
        .O(p_0_in[26]));
  LUT5 #(
    .INIT(32'hD5550000)) 
    \spi_reg_file[2][27]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(\spi_reg_file_reg[2][31]_0 [27]),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'h3F3300003B330000)) 
    \spi_reg_file[2][28]_i_1 
       (.I0(Q[1]),
        .I1(\spi_reg_file[2][30]_i_3_n_0 ),
        .I2(\spi_reg_file[2][30]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(\spi_reg_file_reg[2][31]_0 [28]),
        .I5(Q[0]),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'hD555555500000000)) 
    \spi_reg_file[2][29]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\spi_reg_file_reg[2][31]_0 [29]),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'hFFDF0000DFDF0000)) 
    \spi_reg_file[2][2]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(\spi_reg_file[2][10]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\spi_reg_file_reg[2][31]_0 [2]),
        .I5(Q[0]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h2000FFFF00000000)) 
    \spi_reg_file[2][30]_i_1 
       (.I0(Q[2]),
        .I1(\spi_reg_file[2][30]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\spi_reg_file[2][30]_i_3_n_0 ),
        .I5(\spi_reg_file_reg[2][31]_0 [30]),
        .O(p_0_in[30]));
  LUT2 #(
    .INIT(4'h7)) 
    \spi_reg_file[2][30]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(\spi_reg_file[2][30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \spi_reg_file[2][30]_i_3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .O(\spi_reg_file[2][30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \spi_reg_file[2][31]_i_1 
       (.I0(\spi_reg_file_reg[2][31]_0 [31]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(p_0_in[31]));
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \spi_reg_file[2][3]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(\spi_reg_file_reg[2][31]_0 [3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFF3F0000BF3F0000)) 
    \spi_reg_file[2][4]_i_1 
       (.I0(Q[1]),
        .I1(\spi_reg_file[2][30]_i_3_n_0 ),
        .I2(\spi_reg_file[2][10]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(\spi_reg_file_reg[2][31]_0 [4]),
        .I5(Q[0]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFD500000000)) 
    \spi_reg_file[2][5]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\spi_reg_file_reg[2][31]_0 [5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hD5FF000055FF0000)) 
    \spi_reg_file[2][6]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\spi_reg_file[2][10]_i_2_n_0 ),
        .I4(\spi_reg_file_reg[2][31]_0 [6]),
        .I5(Q[0]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \spi_reg_file[2][7]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\spi_reg_file_reg[2][31]_0 [7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hFFF3000077770000)) 
    \spi_reg_file[2][8]_i_1 
       (.I0(\spi_reg_file[2][8]_i_2_n_0 ),
        .I1(\spi_reg_file[2][30]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\spi_reg_file_reg[2][31]_0 [8]),
        .I5(Q[0]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'h0037)) 
    \spi_reg_file[2][8]_i_2 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\spi_reg_file[2][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF5D500000000)) 
    \spi_reg_file[2][9]_i_1 
       (.I0(\spi_reg_file[2][30]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(\spi_reg_file_reg[2][31]_0 [9]),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][0] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [0]),
        .Q(\spi_reg_file_reg[0][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][10] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [10]),
        .Q(\spi_reg_file_reg[0] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][11] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [11]),
        .Q(\spi_reg_file_reg[0] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][12] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [12]),
        .Q(\spi_reg_file_reg[0] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][13] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [13]),
        .Q(\spi_reg_file_reg[0] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][14] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [14]),
        .Q(\spi_reg_file_reg[0] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][15] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [15]),
        .Q(\spi_reg_file_reg[0] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][16] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [16]),
        .Q(\spi_reg_file_reg[0] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][17] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [17]),
        .Q(\spi_reg_file_reg[0] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][18] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [18]),
        .Q(\spi_reg_file_reg[0] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][19] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [19]),
        .Q(\spi_reg_file_reg[0] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][1] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [1]),
        .Q(\spi_reg_file_reg[0][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][20] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [20]),
        .Q(\spi_reg_file_reg[0] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][21] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [21]),
        .Q(\spi_reg_file_reg[0] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][22] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [22]),
        .Q(\spi_reg_file_reg[0] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][23] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [23]),
        .Q(\spi_reg_file_reg[0] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][24] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [24]),
        .Q(\spi_reg_file_reg[0] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][25] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [25]),
        .Q(\spi_reg_file_reg[0] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][26] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [26]),
        .Q(\spi_reg_file_reg[0] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][27] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [27]),
        .Q(\spi_reg_file_reg[0] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][28] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [28]),
        .Q(\spi_reg_file_reg[0] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][29] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [29]),
        .Q(\spi_reg_file_reg[0] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][2] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [2]),
        .Q(\spi_reg_file_reg[0][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][30] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [30]),
        .Q(\spi_reg_file_reg[0] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][31] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [31]),
        .Q(\spi_reg_file_reg[0] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][3] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [3]),
        .Q(\spi_reg_file_reg[0][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][4] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [4]),
        .Q(\spi_reg_file_reg[0][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][5] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [5]),
        .Q(\spi_reg_file_reg[0][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][6] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [6]),
        .Q(\spi_reg_file_reg[0][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][7] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [7]),
        .Q(\spi_reg_file_reg[0][7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][8] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [8]),
        .Q(\spi_reg_file_reg[0] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[0][9] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[0][31]_1 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [9]),
        .Q(\spi_reg_file_reg[0] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][0] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [0]),
        .Q(\spi_reg_file_reg_n_0_[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][10] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [10]),
        .Q(\spi_reg_file_reg_n_0_[1][10] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][11] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [11]),
        .Q(\spi_reg_file_reg_n_0_[1][11] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][12] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [12]),
        .Q(\spi_reg_file_reg_n_0_[1][12] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][13] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [13]),
        .Q(\spi_reg_file_reg_n_0_[1][13] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][14] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [14]),
        .Q(\spi_reg_file_reg_n_0_[1][14] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][15] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [15]),
        .Q(\spi_reg_file_reg_n_0_[1][15] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][16] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [16]),
        .Q(\spi_reg_file_reg_n_0_[1][16] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][17] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [17]),
        .Q(\spi_reg_file_reg_n_0_[1][17] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][18] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [18]),
        .Q(\spi_reg_file_reg_n_0_[1][18] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][19] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [19]),
        .Q(\spi_reg_file_reg_n_0_[1][19] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][1] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [1]),
        .Q(\spi_reg_file_reg_n_0_[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][20] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [20]),
        .Q(\spi_reg_file_reg_n_0_[1][20] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][21] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [21]),
        .Q(\spi_reg_file_reg_n_0_[1][21] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][22] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [22]),
        .Q(\spi_reg_file_reg_n_0_[1][22] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][23] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [23]),
        .Q(\spi_reg_file_reg_n_0_[1][23] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][24] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [24]),
        .Q(\spi_reg_file_reg_n_0_[1][24] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][25] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [25]),
        .Q(\spi_reg_file_reg_n_0_[1][25] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][26] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [26]),
        .Q(\spi_reg_file_reg_n_0_[1][26] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][27] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [27]),
        .Q(\spi_reg_file_reg_n_0_[1][27] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][28] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [28]),
        .Q(\spi_reg_file_reg_n_0_[1][28] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][29] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [29]),
        .Q(\spi_reg_file_reg_n_0_[1][29] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][2] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [2]),
        .Q(\spi_reg_file_reg_n_0_[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][30] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [30]),
        .Q(\spi_reg_file_reg_n_0_[1][30] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][31] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [31]),
        .Q(\spi_reg_file_reg_n_0_[1][31] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][3] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [3]),
        .Q(\spi_reg_file_reg_n_0_[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][4] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [4]),
        .Q(\spi_reg_file_reg_n_0_[1][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][5] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [5]),
        .Q(\spi_reg_file_reg_n_0_[1][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][6] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [6]),
        .Q(wire_cpha));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][7] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [7]),
        .Q(wire_cpol));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][8] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [8]),
        .Q(\spi_reg_file_reg_n_0_[1][8] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[1][9] 
       (.C(CLK),
        .CE(E),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [9]),
        .Q(\spi_reg_file_reg_n_0_[1][9] ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[0]),
        .Q(\spi_reg_file_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[10]),
        .Q(\spi_reg_file_reg[2] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[11]),
        .Q(\spi_reg_file_reg[2] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[12]),
        .Q(\spi_reg_file_reg[2] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[13]),
        .Q(\spi_reg_file_reg[2] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[14]),
        .Q(\spi_reg_file_reg[2] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[15]),
        .Q(\spi_reg_file_reg[2] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[16]),
        .Q(\spi_reg_file_reg[2] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[17]),
        .Q(\spi_reg_file_reg[2] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[18]),
        .Q(\spi_reg_file_reg[2] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[19]),
        .Q(\spi_reg_file_reg[2] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[1]),
        .Q(\spi_reg_file_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[20]),
        .Q(\spi_reg_file_reg[2] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[21]),
        .Q(\spi_reg_file_reg[2] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[22]),
        .Q(\spi_reg_file_reg[2] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[23]),
        .Q(\spi_reg_file_reg[2] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[24]),
        .Q(\spi_reg_file_reg[2] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[25]),
        .Q(\spi_reg_file_reg[2] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[26]),
        .Q(\spi_reg_file_reg[2] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[27]),
        .Q(\spi_reg_file_reg[2] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[28]),
        .Q(\spi_reg_file_reg[2] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[29]),
        .Q(\spi_reg_file_reg[2] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[2]),
        .Q(\spi_reg_file_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[30]),
        .Q(\spi_reg_file_reg[2] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[31]),
        .Q(\spi_reg_file_reg[2] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[3]),
        .Q(\spi_reg_file_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[4]),
        .Q(\spi_reg_file_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[5]),
        .Q(\spi_reg_file_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[6]),
        .Q(\spi_reg_file_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[7]),
        .Q(\spi_reg_file_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[8]),
        .Q(\spi_reg_file_reg[2] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[2][9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[9]),
        .Q(\spi_reg_file_reg[2] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][0] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [0]),
        .Q(\spi_reg_file_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][10] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [10]),
        .Q(\spi_reg_file_reg[3] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][11] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [11]),
        .Q(\spi_reg_file_reg[3] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][12] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [12]),
        .Q(\spi_reg_file_reg[3] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][13] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [13]),
        .Q(\spi_reg_file_reg[3] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][14] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [14]),
        .Q(\spi_reg_file_reg[3] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][15] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [15]),
        .Q(\spi_reg_file_reg[3] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][16] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [16]),
        .Q(\spi_reg_file_reg[3] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][17] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [17]),
        .Q(\spi_reg_file_reg[3] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][18] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [18]),
        .Q(\spi_reg_file_reg[3] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][19] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [19]),
        .Q(\spi_reg_file_reg[3] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][1] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [1]),
        .Q(\spi_reg_file_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][20] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [20]),
        .Q(\spi_reg_file_reg[3] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][21] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [21]),
        .Q(\spi_reg_file_reg[3] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][22] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [22]),
        .Q(\spi_reg_file_reg[3] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][23] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [23]),
        .Q(\spi_reg_file_reg[3] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][24] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [24]),
        .Q(\spi_reg_file_reg[3] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][25] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [25]),
        .Q(\spi_reg_file_reg[3] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][26] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [26]),
        .Q(\spi_reg_file_reg[3] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][27] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [27]),
        .Q(\spi_reg_file_reg[3] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][28] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [28]),
        .Q(\spi_reg_file_reg[3] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][29] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [29]),
        .Q(\spi_reg_file_reg[3] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][2] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [2]),
        .Q(\spi_reg_file_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][30] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [30]),
        .Q(\spi_reg_file_reg[3] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][31] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [31]),
        .Q(\spi_reg_file_reg[3] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][3] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [3]),
        .Q(\spi_reg_file_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][4] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [4]),
        .Q(\spi_reg_file_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][5] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [5]),
        .Q(\spi_reg_file_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][6] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [6]),
        .Q(\spi_reg_file_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][7] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [7]),
        .Q(\spi_reg_file_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][8] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [8]),
        .Q(\spi_reg_file_reg[3] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[3][9] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[3][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [9]),
        .Q(\spi_reg_file_reg[3] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][0] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][10] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [10]),
        .Q(\spi_reg_file_reg[4] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][11] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [11]),
        .Q(\spi_reg_file_reg[4] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][12] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [12]),
        .Q(\spi_reg_file_reg[4] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][13] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [13]),
        .Q(\spi_reg_file_reg[4] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][14] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [14]),
        .Q(\spi_reg_file_reg[4] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][15] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [15]),
        .Q(\spi_reg_file_reg[4] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][16] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [16]),
        .Q(\spi_reg_file_reg[4] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][17] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [17]),
        .Q(\spi_reg_file_reg[4] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][18] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [18]),
        .Q(\spi_reg_file_reg[4] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][19] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [19]),
        .Q(\spi_reg_file_reg[4] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][1] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][20] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [20]),
        .Q(\spi_reg_file_reg[4] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][21] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [21]),
        .Q(\spi_reg_file_reg[4] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][22] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [22]),
        .Q(\spi_reg_file_reg[4] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][23] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [23]),
        .Q(\spi_reg_file_reg[4] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][24] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [24]),
        .Q(\spi_reg_file_reg[4] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][25] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [25]),
        .Q(\spi_reg_file_reg[4] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][26] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [26]),
        .Q(\spi_reg_file_reg[4] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][27] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [27]),
        .Q(\spi_reg_file_reg[4] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][28] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [28]),
        .Q(\spi_reg_file_reg[4] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][29] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [29]),
        .Q(\spi_reg_file_reg[4] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][2] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][30] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [30]),
        .Q(\spi_reg_file_reg[4] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][31] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [31]),
        .Q(\spi_reg_file_reg[4] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][3] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][4] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][5] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][6] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][7] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][8] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [8]),
        .Q(\spi_reg_file_reg[4] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_reg_file_reg[4][9] 
       (.C(CLK),
        .CE(\spi_reg_file_reg[4][31]_0 ),
        .CLR(reset_n),
        .D(\spi_reg_file_reg[0][31]_0 [9]),
        .Q(\spi_reg_file_reg[4] [9]));
endmodule

module spi_controller
   (spi_clk_OBUF,
    \FSM_onehot_p_state_reg[2]_0 ,
    \FSM_onehot_p_state_reg[1]_0 ,
    E,
    \FSM_onehot_p_state_reg[2]_1 ,
    \FSM_onehot_p_state_reg[2]_2 ,
    \FSM_onehot_p_state_reg[2]_3 ,
    D,
    \load_reg[3]_0 ,
    Q,
    \enable_reg[3]_0 ,
    cs_n_OBUF,
    \load_reg[1]_0 ,
    \load_reg[1]_1 ,
    \enable_reg[1]_0 ,
    \enable_reg[3]_1 ,
    spi_clk_reg_0,
    CLK,
    spi_clk_reg_1,
    CO,
    rw_n_IBUF,
    addr_IBUF,
    start_IBUF,
    \FSM_onehot_p_state_reg[2]_4 ,
    \enable_reg[3]_2 );
  output spi_clk_OBUF;
  output \FSM_onehot_p_state_reg[2]_0 ;
  output \FSM_onehot_p_state_reg[1]_0 ;
  output [0:0]E;
  output [0:0]\FSM_onehot_p_state_reg[2]_1 ;
  output [0:0]\FSM_onehot_p_state_reg[2]_2 ;
  output [0:0]\FSM_onehot_p_state_reg[2]_3 ;
  output [0:0]D;
  output [0:0]\load_reg[3]_0 ;
  output [1:0]Q;
  output [2:0]\enable_reg[3]_0 ;
  output cs_n_OBUF;
  output [0:0]\load_reg[1]_0 ;
  output [0:0]\load_reg[1]_1 ;
  output \enable_reg[1]_0 ;
  output \enable_reg[3]_1 ;
  input spi_clk_reg_0;
  input CLK;
  input spi_clk_reg_1;
  input [0:0]CO;
  input rw_n_IBUF;
  input [2:0]addr_IBUF;
  input start_IBUF;
  input [0:0]\FSM_onehot_p_state_reg[2]_4 ;
  input [1:0]\enable_reg[3]_2 ;

  wire CLK;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_p_state[0]_i_1_n_0 ;
  wire \FSM_onehot_p_state[1]_i_1_n_0 ;
  wire \FSM_onehot_p_state[2]_i_1_n_0 ;
  wire \FSM_onehot_p_state_reg[1]_0 ;
  wire \FSM_onehot_p_state_reg[2]_0 ;
  wire [0:0]\FSM_onehot_p_state_reg[2]_1 ;
  wire [0:0]\FSM_onehot_p_state_reg[2]_2 ;
  wire [0:0]\FSM_onehot_p_state_reg[2]_3 ;
  wire [0:0]\FSM_onehot_p_state_reg[2]_4 ;
  wire [1:0]Q;
  wire [2:0]addr_IBUF;
  wire cs_n_OBUF;
  wire \enable_reg[1]_0 ;
  wire [2:0]\enable_reg[3]_0 ;
  wire \enable_reg[3]_1 ;
  wire [1:0]\enable_reg[3]_2 ;
  wire [0:0]\load_reg[1]_0 ;
  wire [0:0]\load_reg[1]_1 ;
  wire [0:0]\load_reg[3]_0 ;
  wire load_rx;
  wire load_tx;
  wire rw_n_IBUF;
  wire spi_clk_OBUF;
  wire spi_clk_reg_0;
  wire spi_clk_reg_1;
  wire start_IBUF;
  wire [1:1]wire_load;

  LUT6 #(
    .INIT(64'hAAA0BBBFAAA0AAA0)) 
    \FSM_onehot_p_state[0]_i_1 
       (.I0(CO),
        .I1(\FSM_onehot_p_state_reg[2]_4 ),
        .I2(\FSM_onehot_p_state_reg[1]_0 ),
        .I3(\FSM_onehot_p_state_reg[2]_0 ),
        .I4(start_IBUF),
        .I5(cs_n_OBUF),
        .O(\FSM_onehot_p_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEF054105410)) 
    \FSM_onehot_p_state[1]_i_1 
       (.I0(CO),
        .I1(\FSM_onehot_p_state_reg[2]_4 ),
        .I2(\FSM_onehot_p_state_reg[1]_0 ),
        .I3(\FSM_onehot_p_state_reg[2]_0 ),
        .I4(start_IBUF),
        .I5(cs_n_OBUF),
        .O(\FSM_onehot_p_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5050514051405140)) 
    \FSM_onehot_p_state[2]_i_1 
       (.I0(CO),
        .I1(\FSM_onehot_p_state_reg[2]_4 ),
        .I2(\FSM_onehot_p_state_reg[1]_0 ),
        .I3(\FSM_onehot_p_state_reg[2]_0 ),
        .I4(start_IBUF),
        .I5(cs_n_OBUF),
        .O(\FSM_onehot_p_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_DRIVE:100,S_SAMPLE:010,S_IDLE:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_p_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_p_state[0]_i_1_n_0 ),
        .PRE(spi_clk_reg_1),
        .Q(cs_n_OBUF));
  (* FSM_ENCODED_STATES = "S_DRIVE:100,S_SAMPLE:010,S_IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_p_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(spi_clk_reg_1),
        .D(\FSM_onehot_p_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_p_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "S_DRIVE:100,S_SAMPLE:010,S_IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_p_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(spi_clk_reg_1),
        .D(\FSM_onehot_p_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_p_state_reg[2]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    busy_OBUF_inst_i_1
       (.I0(\FSM_onehot_p_state_reg[1]_0 ),
        .I1(\FSM_onehot_p_state_reg[2]_0 ),
        .O(D));
  FDCE #(
    .INIT(1'b0)) 
    \enable_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(spi_clk_reg_1),
        .D(D),
        .Q(\enable_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \enable_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(spi_clk_reg_1),
        .D(\enable_reg[3]_2 [0]),
        .Q(\enable_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \enable_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(spi_clk_reg_1),
        .D(\enable_reg[3]_2 [1]),
        .Q(\enable_reg[3]_0 [2]));
  LUT3 #(
    .INIT(8'hA8)) 
    \load[2]_i_1 
       (.I0(CO),
        .I1(\FSM_onehot_p_state_reg[2]_0 ),
        .I2(\FSM_onehot_p_state_reg[1]_0 ),
        .O(load_rx));
  LUT2 #(
    .INIT(4'h8)) 
    \load[3]_i_1 
       (.I0(cs_n_OBUF),
        .I1(start_IBUF),
        .O(load_tx));
  FDCE #(
    .INIT(1'b0)) 
    \load_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(spi_clk_reg_1),
        .D(cs_n_OBUF),
        .Q(wire_load));
  FDCE #(
    .INIT(1'b0)) 
    \load_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(spi_clk_reg_1),
        .D(load_rx),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \load_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(spi_clk_reg_1),
        .D(load_tx),
        .Q(Q[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \p_count[4]_i_2 
       (.I0(\enable_reg[3]_0 [0]),
        .I1(\FSM_onehot_p_state_reg[2]_4 ),
        .O(\enable_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \p_count[4]_i_2__0 
       (.I0(\enable_reg[3]_0 [2]),
        .I1(CO),
        .O(\enable_reg[3]_1 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \p_count[7]_i_1 
       (.I0(wire_load),
        .I1(\enable_reg[3]_0 [0]),
        .I2(\FSM_onehot_p_state_reg[2]_4 ),
        .O(\load_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \p_count[7]_i_1__0 
       (.I0(wire_load),
        .I1(\enable_reg[3]_0 [2]),
        .I2(CO),
        .O(\load_reg[1]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \p_shift[31]_i_1 
       (.I0(Q[1]),
        .I1(\enable_reg[3]_0 [2]),
        .O(\load_reg[3]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    spi_clk_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(spi_clk_reg_1),
        .D(spi_clk_reg_0),
        .Q(spi_clk_OBUF));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spi_reg_file[0][31]_i_1 
       (.I0(rw_n_IBUF),
        .I1(\FSM_onehot_p_state_reg[2]_0 ),
        .I2(\FSM_onehot_p_state_reg[1]_0 ),
        .I3(addr_IBUF[1]),
        .I4(addr_IBUF[0]),
        .I5(addr_IBUF[2]),
        .O(\FSM_onehot_p_state_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \spi_reg_file[1][31]_i_1 
       (.I0(rw_n_IBUF),
        .I1(\FSM_onehot_p_state_reg[2]_0 ),
        .I2(\FSM_onehot_p_state_reg[1]_0 ),
        .I3(addr_IBUF[1]),
        .I4(addr_IBUF[0]),
        .I5(addr_IBUF[2]),
        .O(\FSM_onehot_p_state_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \spi_reg_file[3][31]_i_1 
       (.I0(rw_n_IBUF),
        .I1(\FSM_onehot_p_state_reg[2]_0 ),
        .I2(\FSM_onehot_p_state_reg[1]_0 ),
        .I3(addr_IBUF[1]),
        .I4(addr_IBUF[0]),
        .I5(addr_IBUF[2]),
        .O(\FSM_onehot_p_state_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \spi_reg_file[4][31]_i_1 
       (.I0(rw_n_IBUF),
        .I1(\FSM_onehot_p_state_reg[2]_0 ),
        .I2(\FSM_onehot_p_state_reg[1]_0 ),
        .I3(addr_IBUF[1]),
        .I4(addr_IBUF[0]),
        .I5(addr_IBUF[2]),
        .O(E));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
