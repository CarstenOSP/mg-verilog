module stencil3d (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,C_address0,C_ce0,C_q0,C_address1,C_ce1,C_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_15_address1,orig_15_ce1,orig_15_q1,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_0_address1,sol_0_ce1,sol_0_we1,sol_0_d1,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_1_address1,sol_1_ce1,sol_1_we1,sol_1_d1,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_2_address1,sol_2_ce1,sol_2_we1,sol_2_d1,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_3_address1,sol_3_ce1,sol_3_we1,sol_3_d1,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_4_address1,sol_4_ce1,sol_4_we1,sol_4_d1,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_5_address1,sol_5_ce1,sol_5_we1,sol_5_d1,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_6_address1,sol_6_ce1,sol_6_we1,sol_6_d1,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_7_address1,sol_7_ce1,sol_7_we1,sol_7_d1,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_8_address1,sol_8_ce1,sol_8_we1,sol_8_d1,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_9_address1,sol_9_ce1,sol_9_we1,sol_9_d1,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_10_address1,sol_10_ce1,sol_10_we1,sol_10_d1,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_11_address1,sol_11_ce1,sol_11_we1,sol_11_d1,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_12_address1,sol_12_ce1,sol_12_we1,sol_12_d1,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_13_address1,sol_13_ce1,sol_13_we1,sol_13_d1,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,sol_14_address1,sol_14_ce1,sol_14_we1,sol_14_d1,sol_15_address0,sol_15_ce0,sol_15_we0,sol_15_d0,sol_15_address1,sol_15_ce1,sol_15_we1,sol_15_d1); 
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] C_address0;
output   C_ce0;
input  [31:0] C_q0;
output  [0:0] C_address1;
output   C_ce1;
input  [31:0] C_q1;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [9:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [9:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [9:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [9:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [9:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
output  [9:0] orig_8_address0;
output   orig_8_ce0;
input  [31:0] orig_8_q0;
output  [9:0] orig_8_address1;
output   orig_8_ce1;
input  [31:0] orig_8_q1;
output  [9:0] orig_9_address0;
output   orig_9_ce0;
input  [31:0] orig_9_q0;
output  [9:0] orig_9_address1;
output   orig_9_ce1;
input  [31:0] orig_9_q1;
output  [9:0] orig_10_address0;
output   orig_10_ce0;
input  [31:0] orig_10_q0;
output  [9:0] orig_10_address1;
output   orig_10_ce1;
input  [31:0] orig_10_q1;
output  [9:0] orig_11_address0;
output   orig_11_ce0;
input  [31:0] orig_11_q0;
output  [9:0] orig_11_address1;
output   orig_11_ce1;
input  [31:0] orig_11_q1;
output  [9:0] orig_12_address0;
output   orig_12_ce0;
input  [31:0] orig_12_q0;
output  [9:0] orig_12_address1;
output   orig_12_ce1;
input  [31:0] orig_12_q1;
output  [9:0] orig_13_address0;
output   orig_13_ce0;
input  [31:0] orig_13_q0;
output  [9:0] orig_13_address1;
output   orig_13_ce1;
input  [31:0] orig_13_q1;
output  [9:0] orig_14_address0;
output   orig_14_ce0;
input  [31:0] orig_14_q0;
output  [9:0] orig_14_address1;
output   orig_14_ce1;
input  [31:0] orig_14_q1;
output  [9:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [9:0] orig_15_address1;
output   orig_15_ce1;
input  [31:0] orig_15_q1;
output  [9:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [9:0] sol_0_address1;
output   sol_0_ce1;
output   sol_0_we1;
output  [31:0] sol_0_d1;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [9:0] sol_1_address1;
output   sol_1_ce1;
output   sol_1_we1;
output  [31:0] sol_1_d1;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_2_address1;
output   sol_2_ce1;
output   sol_2_we1;
output  [31:0] sol_2_d1;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_3_address1;
output   sol_3_ce1;
output   sol_3_we1;
output  [31:0] sol_3_d1;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_4_address1;
output   sol_4_ce1;
output   sol_4_we1;
output  [31:0] sol_4_d1;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_5_address1;
output   sol_5_ce1;
output   sol_5_we1;
output  [31:0] sol_5_d1;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_6_address1;
output   sol_6_ce1;
output   sol_6_we1;
output  [31:0] sol_6_d1;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [9:0] sol_7_address1;
output   sol_7_ce1;
output   sol_7_we1;
output  [31:0] sol_7_d1;
output  [9:0] sol_8_address0;
output   sol_8_ce0;
output   sol_8_we0;
output  [31:0] sol_8_d0;
output  [9:0] sol_8_address1;
output   sol_8_ce1;
output   sol_8_we1;
output  [31:0] sol_8_d1;
output  [9:0] sol_9_address0;
output   sol_9_ce0;
output   sol_9_we0;
output  [31:0] sol_9_d0;
output  [9:0] sol_9_address1;
output   sol_9_ce1;
output   sol_9_we1;
output  [31:0] sol_9_d1;
output  [9:0] sol_10_address0;
output   sol_10_ce0;
output   sol_10_we0;
output  [31:0] sol_10_d0;
output  [9:0] sol_10_address1;
output   sol_10_ce1;
output   sol_10_we1;
output  [31:0] sol_10_d1;
output  [9:0] sol_11_address0;
output   sol_11_ce0;
output   sol_11_we0;
output  [31:0] sol_11_d0;
output  [9:0] sol_11_address1;
output   sol_11_ce1;
output   sol_11_we1;
output  [31:0] sol_11_d1;
output  [9:0] sol_12_address0;
output   sol_12_ce0;
output   sol_12_we0;
output  [31:0] sol_12_d0;
output  [9:0] sol_12_address1;
output   sol_12_ce1;
output   sol_12_we1;
output  [31:0] sol_12_d1;
output  [9:0] sol_13_address0;
output   sol_13_ce0;
output   sol_13_we0;
output  [31:0] sol_13_d0;
output  [9:0] sol_13_address1;
output   sol_13_ce1;
output   sol_13_we1;
output  [31:0] sol_13_d1;
output  [9:0] sol_14_address0;
output   sol_14_ce0;
output   sol_14_we0;
output  [31:0] sol_14_d0;
output  [9:0] sol_14_address1;
output   sol_14_ce1;
output   sol_14_we1;
output  [31:0] sol_14_d1;
output  [9:0] sol_15_address0;
output   sol_15_ce0;
output   sol_15_we0;
output  [31:0] sol_15_d0;
output  [9:0] sol_15_address1;
output   sol_15_ce1;
output   sol_15_we1;
output  [31:0] sol_15_d1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] orig_0_address0;
reg orig_0_ce0;
reg[9:0] orig_0_address1;
reg orig_0_ce1;
reg[9:0] orig_1_address0;
reg orig_1_ce0;
reg[9:0] orig_1_address1;
reg orig_1_ce1;
reg[9:0] orig_2_address0;
reg orig_2_ce0;
reg[9:0] orig_2_address1;
reg orig_2_ce1;
reg[9:0] orig_3_address0;
reg orig_3_ce0;
reg[9:0] orig_3_address1;
reg orig_3_ce1;
reg[9:0] orig_4_address0;
reg orig_4_ce0;
reg[9:0] orig_4_address1;
reg orig_4_ce1;
reg[9:0] orig_5_address0;
reg orig_5_ce0;
reg[9:0] orig_5_address1;
reg orig_5_ce1;
reg[9:0] orig_6_address0;
reg orig_6_ce0;
reg[9:0] orig_6_address1;
reg orig_6_ce1;
reg[9:0] orig_7_address0;
reg orig_7_ce0;
reg[9:0] orig_7_address1;
reg orig_7_ce1;
reg[9:0] orig_8_address0;
reg orig_8_ce0;
reg[9:0] orig_8_address1;
reg orig_8_ce1;
reg[9:0] orig_9_address0;
reg orig_9_ce0;
reg[9:0] orig_9_address1;
reg orig_9_ce1;
reg[9:0] orig_10_address0;
reg orig_10_ce0;
reg[9:0] orig_10_address1;
reg orig_10_ce1;
reg[9:0] orig_11_address0;
reg orig_11_ce0;
reg[9:0] orig_11_address1;
reg orig_11_ce1;
reg[9:0] orig_12_address0;
reg orig_12_ce0;
reg[9:0] orig_12_address1;
reg orig_12_ce1;
reg[9:0] orig_13_address0;
reg orig_13_ce0;
reg[9:0] orig_13_address1;
reg orig_13_ce1;
reg[9:0] orig_14_address0;
reg orig_14_ce0;
reg[9:0] orig_14_address1;
reg orig_14_ce1;
reg[9:0] orig_15_address0;
reg orig_15_ce0;
reg[9:0] orig_15_address1;
reg orig_15_ce1;
reg[9:0] sol_0_address0;
reg sol_0_ce0;
reg sol_0_we0;
reg[31:0] sol_0_d0;
reg[9:0] sol_0_address1;
reg sol_0_ce1;
reg sol_0_we1;
reg[31:0] sol_0_d1;
reg[9:0] sol_1_address0;
reg sol_1_ce0;
reg sol_1_we0;
reg[31:0] sol_1_d0;
reg[9:0] sol_1_address1;
reg sol_1_ce1;
reg sol_1_we1;
reg[31:0] sol_1_d1;
reg[9:0] sol_2_address0;
reg sol_2_ce0;
reg sol_2_we0;
reg[31:0] sol_2_d0;
reg[9:0] sol_2_address1;
reg sol_2_ce1;
reg sol_2_we1;
reg[31:0] sol_2_d1;
reg[9:0] sol_3_address0;
reg sol_3_ce0;
reg sol_3_we0;
reg[31:0] sol_3_d0;
reg[9:0] sol_3_address1;
reg sol_3_ce1;
reg sol_3_we1;
reg[31:0] sol_3_d1;
reg[9:0] sol_4_address0;
reg sol_4_ce0;
reg sol_4_we0;
reg[31:0] sol_4_d0;
reg[9:0] sol_4_address1;
reg sol_4_ce1;
reg sol_4_we1;
reg[31:0] sol_4_d1;
reg[9:0] sol_5_address0;
reg sol_5_ce0;
reg sol_5_we0;
reg[31:0] sol_5_d0;
reg[9:0] sol_5_address1;
reg sol_5_ce1;
reg sol_5_we1;
reg[31:0] sol_5_d1;
reg[9:0] sol_6_address0;
reg sol_6_ce0;
reg sol_6_we0;
reg[31:0] sol_6_d0;
reg[9:0] sol_6_address1;
reg sol_6_ce1;
reg sol_6_we1;
reg[31:0] sol_6_d1;
reg[9:0] sol_7_address0;
reg sol_7_ce0;
reg sol_7_we0;
reg[31:0] sol_7_d0;
reg[9:0] sol_7_address1;
reg sol_7_ce1;
reg sol_7_we1;
reg[31:0] sol_7_d1;
reg[9:0] sol_8_address0;
reg sol_8_ce0;
reg sol_8_we0;
reg[31:0] sol_8_d0;
reg[9:0] sol_8_address1;
reg sol_8_ce1;
reg sol_8_we1;
reg[31:0] sol_8_d1;
reg[9:0] sol_9_address0;
reg sol_9_ce0;
reg sol_9_we0;
reg[31:0] sol_9_d0;
reg[9:0] sol_9_address1;
reg sol_9_ce1;
reg sol_9_we1;
reg[31:0] sol_9_d1;
reg[9:0] sol_10_address0;
reg sol_10_ce0;
reg sol_10_we0;
reg[31:0] sol_10_d0;
reg[9:0] sol_10_address1;
reg sol_10_ce1;
reg sol_10_we1;
reg[31:0] sol_10_d1;
reg[9:0] sol_11_address0;
reg sol_11_ce0;
reg sol_11_we0;
reg[31:0] sol_11_d0;
reg[9:0] sol_11_address1;
reg sol_11_ce1;
reg sol_11_we1;
reg[31:0] sol_11_d1;
reg[9:0] sol_12_address0;
reg sol_12_ce0;
reg sol_12_we0;
reg[31:0] sol_12_d0;
reg[9:0] sol_12_address1;
reg sol_12_ce1;
reg sol_12_we1;
reg[31:0] sol_12_d1;
reg[9:0] sol_13_address0;
reg sol_13_ce0;
reg sol_13_we0;
reg[31:0] sol_13_d0;
reg[9:0] sol_13_address1;
reg sol_13_ce1;
reg sol_13_we1;
reg[31:0] sol_13_d1;
reg[9:0] sol_14_address0;
reg sol_14_ce0;
reg sol_14_we0;
reg[31:0] sol_14_d0;
reg[9:0] sol_14_address1;
reg sol_14_ce1;
reg sol_14_we1;
reg[31:0] sol_14_d1;
reg[9:0] sol_15_address0;
reg sol_15_ce0;
reg sol_15_we0;
reg[31:0] sol_15_d0;
reg[9:0] sol_15_address1;
reg sol_15_ce1;
reg sol_15_we1;
reg[31:0] sol_15_d1;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state5;
reg   [31:0] C_load_reg_1420;
wire    ap_CS_fsm_state6;
reg   [31:0] C_load_1_reg_1425;
reg   [4:0] i_reg_1430;
wire    ap_CS_fsm_state7;
wire   [9:0] tmp_s_fu_1251_p3;
reg   [9:0] tmp_s_reg_1439;
wire   [4:0] indvars_iv_next162_fu_1259_p2;
reg   [4:0] indvars_iv_next162_reg_1445;
wire   [9:0] tmp_17_fu_1271_p3;
reg   [9:0] tmp_17_reg_1453;
wire    ap_CS_fsm_state8;
wire   [63:0] p_cast48_fu_1278_p1;
reg   [63:0] p_cast48_reg_1459;
wire   [9:0] empty_fu_1296_p2;
reg   [9:0] empty_reg_1477;
wire   [63:0] p_cast49_fu_1301_p1;
reg   [63:0] p_cast49_reg_1482;
wire   [9:0] empty_34_fu_1320_p2;
reg   [9:0] empty_34_reg_1490;
wire   [63:0] p_cast50_fu_1329_p1;
reg   [63:0] p_cast50_reg_1561;
wire    ap_CS_fsm_state9;
wire   [4:0] indvars_iv_next149_fu_1345_p2;
reg   [4:0] indvars_iv_next149_reg_1567;
wire   [9:0] tmp_18_fu_1351_p3;
reg   [9:0] tmp_18_reg_1572;
wire   [63:0] p_cast51_fu_1358_p1;
reg   [63:0] p_cast51_reg_1577;
reg   [31:0] orig_1_load_reg_1585;
reg   [31:0] orig_4_load_reg_1600;
reg   [31:0] orig_5_load_reg_1605;
reg   [31:0] orig_6_load_reg_1610;
reg   [31:0] orig_7_load_reg_1615;
reg   [31:0] orig_8_load_reg_1620;
reg   [31:0] orig_9_load_reg_1625;
reg   [31:0] orig_10_load_reg_1630;
reg   [31:0] orig_11_load_reg_1635;
reg   [31:0] orig_12_load_reg_1640;
reg   [31:0] orig_13_load_reg_1645;
reg   [31:0] orig_14_load_reg_1760;
reg   [31:0] orig_15_load_reg_1775;
wire   [9:0] tmp_19_fu_1379_p3;
reg   [9:0] tmp_19_reg_1790;
wire    ap_CS_fsm_state10;
wire   [63:0] p_cast52_fu_1386_p1;
reg   [63:0] p_cast52_reg_1795;
reg   [31:0] orig_2_load_reg_1801;
reg   [31:0] orig_3_load_reg_1806;
reg   [31:0] orig_1_load_31_reg_1811;
reg   [31:0] orig_4_load_31_reg_1826;
reg   [31:0] orig_5_load_31_reg_1831;
reg   [31:0] orig_6_load_31_reg_1836;
reg   [31:0] orig_7_load_31_reg_1841;
reg   [31:0] orig_8_load_31_reg_1846;
reg   [31:0] orig_9_load_31_reg_1851;
reg   [31:0] orig_10_load_31_reg_1856;
reg   [31:0] orig_11_load_31_reg_1861;
reg   [31:0] orig_12_load_31_reg_1866;
reg   [31:0] orig_13_load_31_reg_1871;
reg   [31:0] orig_1_load_32_reg_1876;
reg   [31:0] orig_4_load_32_reg_1891;
reg   [31:0] orig_5_load_32_reg_1896;
reg   [31:0] orig_6_load_32_reg_1901;
reg   [31:0] orig_7_load_32_reg_1906;
reg   [31:0] orig_8_load_32_reg_1911;
reg   [31:0] orig_9_load_32_reg_1916;
reg   [31:0] orig_10_load_32_reg_1921;
reg   [31:0] orig_11_load_32_reg_1926;
reg   [31:0] orig_12_load_32_reg_1931;
reg   [31:0] orig_13_load_32_reg_1936;
reg   [31:0] orig_14_load_31_reg_2001;
reg   [31:0] orig_14_load_32_reg_2006;
reg   [31:0] orig_15_load_244_reg_2086;
reg   [31:0] orig_15_load_245_reg_2091;
reg   [31:0] orig_2_load_31_reg_2096;
wire    ap_CS_fsm_state11;
reg   [31:0] orig_3_load_31_reg_2101;
reg   [31:0] orig_2_load_32_reg_2106;
reg   [31:0] orig_3_load_32_reg_2111;
reg   [31:0] orig_1_load_33_reg_2116;
reg   [31:0] orig_4_load_33_reg_2131;
reg   [31:0] orig_5_load_33_reg_2136;
reg   [31:0] orig_6_load_33_reg_2141;
reg   [31:0] orig_7_load_33_reg_2146;
reg   [31:0] orig_8_load_33_reg_2151;
reg   [31:0] orig_9_load_33_reg_2156;
reg   [31:0] orig_10_load_33_reg_2161;
reg   [31:0] orig_11_load_33_reg_2166;
reg   [31:0] orig_12_load_33_reg_2171;
reg   [31:0] orig_13_load_33_reg_2176;
reg   [31:0] orig_0_load_reg_2181;
reg   [31:0] orig_14_load_33_reg_2186;
reg   [31:0] orig_14_load_34_reg_2191;
reg   [31:0] orig_1_load_34_reg_2196;
reg   [31:0] orig_4_load_34_reg_2211;
reg   [31:0] orig_5_load_34_reg_2216;
reg   [31:0] orig_6_load_34_reg_2221;
reg   [31:0] orig_7_load_34_reg_2226;
reg   [31:0] orig_8_load_34_reg_2231;
reg   [31:0] orig_9_load_34_reg_2236;
reg   [31:0] orig_10_load_34_reg_2241;
reg   [31:0] orig_11_load_34_reg_2246;
reg   [31:0] orig_12_load_34_reg_2251;
reg   [31:0] orig_13_load_34_reg_2256;
reg   [31:0] orig_15_load_246_reg_2261;
reg   [31:0] orig_15_load_247_reg_2266;
reg   [31:0] orig_2_load_33_reg_2271;
wire    ap_CS_fsm_state12;
reg   [31:0] orig_3_load_33_reg_2276;
reg   [31:0] orig_2_load_34_reg_2281;
reg   [31:0] orig_3_load_34_reg_2286;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_start;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_done;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_idle;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_start;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_done;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_idle;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_ce1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_start;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_done;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_idle;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_ce0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_we0;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_d0;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_address1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_ce1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_we1;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_d1;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_ce0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_d0;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_address1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_ce1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_we1;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_d1;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_ce0;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_address1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_ce1;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_ce0;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_address1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_ap_start;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_ap_done;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_ap_idle;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_ce1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_address1;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1085_orig_1_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1085_orig_1_ce0;
reg   [4:0] j_1_reg_897;
wire   [0:0] icmp_ln36_fu_1245_p2;
wire    ap_CS_fsm_state13;
reg    grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_start_reg;
reg    grp_stencil3d_Pipeline_loop_row_fu_1085_ap_start_reg;
wire   [0:0] icmp_ln37_fu_1265_p2;
reg   [4:0] i_2_fu_118;
reg    C_ce1_local;
reg    C_ce0_local;
reg    orig_1_ce0_local;
reg   [9:0] orig_1_address0_local;
reg    orig_1_ce1_local;
reg   [9:0] orig_1_address1_local;
reg    orig_4_ce0_local;
reg   [9:0] orig_4_address0_local;
reg    orig_4_ce1_local;
reg   [9:0] orig_4_address1_local;
reg    orig_5_ce0_local;
reg   [9:0] orig_5_address0_local;
reg    orig_5_ce1_local;
reg   [9:0] orig_5_address1_local;
reg    orig_6_ce0_local;
reg   [9:0] orig_6_address0_local;
reg    orig_6_ce1_local;
reg   [9:0] orig_6_address1_local;
reg    orig_7_ce0_local;
reg   [9:0] orig_7_address0_local;
reg    orig_7_ce1_local;
reg   [9:0] orig_7_address1_local;
reg    orig_8_ce0_local;
reg   [9:0] orig_8_address0_local;
reg    orig_8_ce1_local;
reg   [9:0] orig_8_address1_local;
reg    orig_9_ce0_local;
reg   [9:0] orig_9_address0_local;
reg    orig_9_ce1_local;
reg   [9:0] orig_9_address1_local;
reg    orig_10_ce0_local;
reg   [9:0] orig_10_address0_local;
reg    orig_10_ce1_local;
reg   [9:0] orig_10_address1_local;
reg    orig_11_ce0_local;
reg   [9:0] orig_11_address0_local;
reg    orig_11_ce1_local;
reg   [9:0] orig_11_address1_local;
reg    orig_12_ce0_local;
reg   [9:0] orig_12_address0_local;
reg    orig_12_ce1_local;
reg   [9:0] orig_12_address1_local;
reg    orig_13_ce0_local;
reg   [9:0] orig_13_address0_local;
reg    orig_13_ce1_local;
reg   [9:0] orig_13_address1_local;
reg    orig_14_ce0_local;
reg   [9:0] orig_14_address0_local;
reg    orig_14_ce1_local;
reg   [9:0] orig_14_address1_local;
reg    orig_15_ce0_local;
reg   [9:0] orig_15_address0_local;
reg    orig_15_ce1_local;
reg   [9:0] orig_15_address1_local;
reg    orig_2_ce0_local;
reg   [9:0] orig_2_address0_local;
reg    orig_2_ce1_local;
reg   [9:0] orig_2_address1_local;
reg    orig_3_ce0_local;
reg   [9:0] orig_3_address0_local;
reg    orig_3_ce1_local;
reg   [9:0] orig_3_address1_local;
reg    orig_0_ce0_local;
wire  signed [5:0] tmp1_cast_cast_fu_1284_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_1292_p1;
wire  signed [9:0] tmp2_cast_fu_1316_p1;
wire   [4:0] tmp3_fu_1373_p2;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_loop_row_fu_1085_ap_start_reg = 1'b0;
#0 i_2_fu_118 = 5'd0;
end
stencil3d_stencil3d_Pipeline_height_bound_col grp_stencil3d_Pipeline_height_bound_col_fu_909(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_start),.ap_done(grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_done),.ap_idle(grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_idle),.ap_ready(grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_ready),.sol_15_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_address0),.sol_15_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_ce0),.sol_15_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_we0),.sol_15_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_d0),.sol_15_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_address1),.sol_15_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_ce1),.sol_15_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_we1),.sol_15_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_d1),.sol_14_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_address0),.sol_14_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_ce0),.sol_14_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_we0),.sol_14_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_d0),.sol_14_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_address1),.sol_14_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_ce1),.sol_14_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_we1),.sol_14_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_d1),.sol_13_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_address0),.sol_13_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_ce0),.sol_13_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_we0),.sol_13_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_d0),.sol_13_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_address1),.sol_13_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_ce1),.sol_13_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_we1),.sol_13_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_d1),.sol_12_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_address0),.sol_12_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_ce0),.sol_12_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_we0),.sol_12_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_d0),.sol_12_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_address1),.sol_12_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_ce1),.sol_12_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_we1),.sol_12_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_d1),.sol_11_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_address0),.sol_11_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_ce0),.sol_11_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_we0),.sol_11_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_d0),.sol_11_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_address1),.sol_11_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_ce1),.sol_11_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_we1),.sol_11_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_d1),.sol_10_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_address0),.sol_10_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_ce0),.sol_10_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_we0),.sol_10_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_d0),.sol_10_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_address1),.sol_10_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_ce1),.sol_10_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_we1),.sol_10_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_d1),.sol_9_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_address0),.sol_9_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_ce0),.sol_9_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_we0),.sol_9_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_d0),.sol_9_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_address1),.sol_9_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_ce1),.sol_9_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_we1),.sol_9_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_d1),.sol_8_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_address0),.sol_8_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_ce0),.sol_8_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_we0),.sol_8_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_d0),.sol_8_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_address1),.sol_8_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_ce1),.sol_8_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_we1),.sol_8_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_d1),.sol_7_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_address0),.sol_7_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_ce0),.sol_7_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_we0),.sol_7_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_d0),.sol_7_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_address1),.sol_7_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_ce1),.sol_7_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_we1),.sol_7_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_d1),.sol_6_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_address0),.sol_6_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_ce0),.sol_6_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_we0),.sol_6_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_d0),.sol_6_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_address1),.sol_6_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_ce1),.sol_6_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_we1),.sol_6_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_d1),.sol_5_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_address0),.sol_5_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_ce0),.sol_5_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_we0),.sol_5_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_d0),.sol_5_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_address1),.sol_5_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_ce1),.sol_5_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_we1),.sol_5_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_d1),.sol_4_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_address0),.sol_4_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_ce0),.sol_4_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_we0),.sol_4_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_d0),.sol_4_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_address1),.sol_4_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_ce1),.sol_4_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_we1),.sol_4_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_d1),.sol_3_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_address0),.sol_3_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_ce0),.sol_3_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_we0),.sol_3_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_d0),.sol_3_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_address1),.sol_3_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_ce1),.sol_3_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_we1),.sol_3_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_d1),.sol_2_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_address0),.sol_2_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_ce0),.sol_2_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_we0),.sol_2_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_d0),.sol_2_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_address1),.sol_2_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_ce1),.sol_2_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_we1),.sol_2_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_d1),.sol_1_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_d0),.sol_1_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_address1),.sol_1_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_ce1),.sol_1_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_we1),.sol_1_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_d1),.sol_0_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_d0),.sol_0_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_address1),.sol_0_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_ce1),.sol_0_we1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_we1),.sol_0_d1(grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_d1),.orig_0_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_1_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_address1),.orig_1_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_ce1),.orig_1_q1(orig_1_q1),.orig_2_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_address0),.orig_2_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_ce0),.orig_2_q0(orig_2_q0),.orig_2_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_address1),.orig_2_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_ce1),.orig_2_q1(orig_2_q1),.orig_3_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_address0),.orig_3_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_ce0),.orig_3_q0(orig_3_q0),.orig_3_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_address1),.orig_3_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_ce1),.orig_3_q1(orig_3_q1),.orig_4_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_address0),.orig_4_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_ce0),.orig_4_q0(orig_4_q0),.orig_4_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_address1),.orig_4_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_ce1),.orig_4_q1(orig_4_q1),.orig_5_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_address0),.orig_5_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_ce0),.orig_5_q0(orig_5_q0),.orig_5_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_address1),.orig_5_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_ce1),.orig_5_q1(orig_5_q1),.orig_6_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_address0),.orig_6_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_ce0),.orig_6_q0(orig_6_q0),.orig_6_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_address1),.orig_6_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_ce1),.orig_6_q1(orig_6_q1),.orig_7_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_address0),.orig_7_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_ce0),.orig_7_q0(orig_7_q0),.orig_7_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_address1),.orig_7_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_ce1),.orig_7_q1(orig_7_q1),.orig_8_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_address0),.orig_8_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_ce0),.orig_8_q0(orig_8_q0),.orig_8_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_address1),.orig_8_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_ce1),.orig_8_q1(orig_8_q1),.orig_9_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_address0),.orig_9_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_ce0),.orig_9_q0(orig_9_q0),.orig_9_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_address1),.orig_9_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_ce1),.orig_9_q1(orig_9_q1),.orig_10_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_address0),.orig_10_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_ce0),.orig_10_q0(orig_10_q0),.orig_10_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_address1),.orig_10_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_ce1),.orig_10_q1(orig_10_q1),.orig_11_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_address0),.orig_11_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_ce0),.orig_11_q0(orig_11_q0),.orig_11_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_address1),.orig_11_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_ce1),.orig_11_q1(orig_11_q1),.orig_12_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_address0),.orig_12_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_ce0),.orig_12_q0(orig_12_q0),.orig_12_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_address1),.orig_12_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_ce1),.orig_12_q1(orig_12_q1),.orig_13_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_address0),.orig_13_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_ce0),.orig_13_q0(orig_13_q0),.orig_13_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_address1),.orig_13_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_ce1),.orig_13_q1(orig_13_q1),.orig_14_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_address0),.orig_14_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_ce0),.orig_14_q0(orig_14_q0),.orig_14_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_address1),.orig_14_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_ce1),.orig_14_q1(orig_14_q1),.orig_15_address0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_address0),.orig_15_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_ce0),.orig_15_q0(orig_15_q0),.orig_15_address1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_address1),.orig_15_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_ce1),.orig_15_q1(orig_15_q1));
stencil3d_stencil3d_Pipeline_col_bound_height grp_stencil3d_Pipeline_col_bound_height_fu_977(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_start),.ap_done(grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_done),.ap_idle(grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_idle),.ap_ready(grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_ready),.sol_15_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_address0),.sol_15_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_ce0),.sol_15_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_we0),.sol_15_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_d0),.sol_15_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_address1),.sol_15_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_ce1),.sol_15_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_we1),.sol_15_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_d1),.sol_14_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_address0),.sol_14_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_ce0),.sol_14_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_we0),.sol_14_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_d0),.sol_14_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_address1),.sol_14_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_ce1),.sol_14_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_we1),.sol_14_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_d1),.sol_13_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_address0),.sol_13_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_ce0),.sol_13_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_we0),.sol_13_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_d0),.sol_13_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_address1),.sol_13_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_ce1),.sol_13_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_we1),.sol_13_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_d1),.sol_12_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_address0),.sol_12_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_ce0),.sol_12_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_we0),.sol_12_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_d0),.sol_12_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_address1),.sol_12_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_ce1),.sol_12_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_we1),.sol_12_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_d1),.sol_11_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_address0),.sol_11_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_ce0),.sol_11_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_we0),.sol_11_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_d0),.sol_11_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_address1),.sol_11_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_ce1),.sol_11_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_we1),.sol_11_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_d1),.sol_10_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_address0),.sol_10_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_ce0),.sol_10_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_we0),.sol_10_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_d0),.sol_10_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_address1),.sol_10_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_ce1),.sol_10_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_we1),.sol_10_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_d1),.sol_9_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_address0),.sol_9_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_ce0),.sol_9_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_we0),.sol_9_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_d0),.sol_9_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_address1),.sol_9_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_ce1),.sol_9_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_we1),.sol_9_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_d1),.sol_8_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_address0),.sol_8_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_ce0),.sol_8_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_we0),.sol_8_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_d0),.sol_8_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_address1),.sol_8_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_ce1),.sol_8_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_we1),.sol_8_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_d1),.sol_7_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_address0),.sol_7_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_ce0),.sol_7_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_we0),.sol_7_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_d0),.sol_7_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_address1),.sol_7_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_ce1),.sol_7_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_we1),.sol_7_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_d1),.sol_6_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_address0),.sol_6_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_ce0),.sol_6_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_we0),.sol_6_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_d0),.sol_6_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_address1),.sol_6_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_ce1),.sol_6_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_we1),.sol_6_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_d1),.sol_5_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_address0),.sol_5_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_ce0),.sol_5_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_we0),.sol_5_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_d0),.sol_5_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_address1),.sol_5_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_ce1),.sol_5_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_we1),.sol_5_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_d1),.sol_4_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_address0),.sol_4_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_ce0),.sol_4_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_we0),.sol_4_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_d0),.sol_4_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_address1),.sol_4_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_ce1),.sol_4_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_we1),.sol_4_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_d1),.sol_3_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_address0),.sol_3_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_ce0),.sol_3_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_we0),.sol_3_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_d0),.sol_3_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_address1),.sol_3_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_ce1),.sol_3_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_we1),.sol_3_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_d1),.sol_2_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_address0),.sol_2_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_ce0),.sol_2_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_we0),.sol_2_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_d0),.sol_2_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_address1),.sol_2_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_ce1),.sol_2_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_we1),.sol_2_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_d1),.sol_1_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_d0),.sol_1_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_address1),.sol_1_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_ce1),.sol_1_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_we1),.sol_1_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_d1),.sol_0_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_d0),.sol_0_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_address1),.sol_0_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_ce1),.sol_0_we1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_we1),.sol_0_d1(grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_d1),.orig_0_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_1_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_address1),.orig_1_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_ce1),.orig_1_q1(orig_1_q1),.orig_2_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_address0),.orig_2_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_ce0),.orig_2_q0(orig_2_q0),.orig_2_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_address1),.orig_2_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_ce1),.orig_2_q1(orig_2_q1),.orig_3_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_address0),.orig_3_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_ce0),.orig_3_q0(orig_3_q0),.orig_3_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_address1),.orig_3_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_ce1),.orig_3_q1(orig_3_q1),.orig_4_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_address0),.orig_4_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_ce0),.orig_4_q0(orig_4_q0),.orig_4_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_address1),.orig_4_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_ce1),.orig_4_q1(orig_4_q1),.orig_5_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_address0),.orig_5_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_ce0),.orig_5_q0(orig_5_q0),.orig_5_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_address1),.orig_5_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_ce1),.orig_5_q1(orig_5_q1),.orig_6_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_address0),.orig_6_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_ce0),.orig_6_q0(orig_6_q0),.orig_6_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_address1),.orig_6_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_ce1),.orig_6_q1(orig_6_q1),.orig_7_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_address0),.orig_7_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_ce0),.orig_7_q0(orig_7_q0),.orig_7_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_address1),.orig_7_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_ce1),.orig_7_q1(orig_7_q1),.orig_8_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_address0),.orig_8_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_ce0),.orig_8_q0(orig_8_q0),.orig_8_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_address1),.orig_8_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_ce1),.orig_8_q1(orig_8_q1),.orig_9_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_address0),.orig_9_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_ce0),.orig_9_q0(orig_9_q0),.orig_9_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_address1),.orig_9_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_ce1),.orig_9_q1(orig_9_q1),.orig_10_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_address0),.orig_10_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_ce0),.orig_10_q0(orig_10_q0),.orig_10_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_address1),.orig_10_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_ce1),.orig_10_q1(orig_10_q1),.orig_11_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_address0),.orig_11_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_ce0),.orig_11_q0(orig_11_q0),.orig_11_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_address1),.orig_11_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_ce1),.orig_11_q1(orig_11_q1),.orig_12_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_address0),.orig_12_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_ce0),.orig_12_q0(orig_12_q0),.orig_12_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_address1),.orig_12_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_ce1),.orig_12_q1(orig_12_q1),.orig_13_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_address0),.orig_13_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_ce0),.orig_13_q0(orig_13_q0),.orig_13_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_address1),.orig_13_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_ce1),.orig_13_q1(orig_13_q1),.orig_14_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_address0),.orig_14_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_ce0),.orig_14_q0(orig_14_q0),.orig_14_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_address1),.orig_14_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_ce1),.orig_14_q1(orig_14_q1),.orig_15_address0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_address0),.orig_15_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_ce0),.orig_15_q0(orig_15_q0),.orig_15_address1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_address1),.orig_15_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_ce1),.orig_15_q1(orig_15_q1));
stencil3d_stencil3d_Pipeline_row_bound_height grp_stencil3d_Pipeline_row_bound_height_fu_1045(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_start),.ap_done(grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_done),.ap_idle(grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_idle),.ap_ready(grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_ready),.sol_15_address0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_address0),.sol_15_ce0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_ce0),.sol_15_we0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_we0),.sol_15_d0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_d0),.sol_15_address1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_address1),.sol_15_ce1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_ce1),.sol_15_we1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_we1),.sol_15_d1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_d1),.sol_0_address0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_d0),.sol_0_address1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_address1),.sol_0_ce1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_ce1),.sol_0_we1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_we1),.sol_0_d1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_d1),.orig_0_address0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_15_address0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_address0),.orig_15_ce0(grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_ce0),.orig_15_q0(orig_15_q0),.orig_15_address1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_address1),.orig_15_ce1(grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_ce1),.orig_15_q1(orig_15_q1));
stencil3d_stencil3d_Pipeline_loop_row grp_stencil3d_Pipeline_loop_row_fu_1085(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_loop_row_fu_1085_ap_start),.ap_done(grp_stencil3d_Pipeline_loop_row_fu_1085_ap_done),.ap_idle(grp_stencil3d_Pipeline_loop_row_fu_1085_ap_idle),.ap_ready(grp_stencil3d_Pipeline_loop_row_fu_1085_ap_ready),.sol_14_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_address0),.sol_14_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_ce0),.sol_14_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_we0),.sol_14_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_d0),.sol_14_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_address1),.sol_14_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_ce1),.sol_14_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_we1),.sol_14_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_d1),.p_cast48(tmp_17_reg_1453),.sol_13_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_address0),.sol_13_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_ce0),.sol_13_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_we0),.sol_13_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_d0),.sol_13_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_address1),.sol_13_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_ce1),.sol_13_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_we1),.sol_13_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_d1),.sol_12_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_address0),.sol_12_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_ce0),.sol_12_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_we0),.sol_12_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_d0),.sol_12_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_address1),.sol_12_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_ce1),.sol_12_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_we1),.sol_12_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_d1),.sol_11_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_address0),.sol_11_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_ce0),.sol_11_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_we0),.sol_11_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_d0),.sol_11_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_address1),.sol_11_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_ce1),.sol_11_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_we1),.sol_11_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_d1),.sol_10_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_address0),.sol_10_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_ce0),.sol_10_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_we0),.sol_10_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_d0),.sol_10_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_address1),.sol_10_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_ce1),.sol_10_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_we1),.sol_10_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_d1),.sol_9_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_address0),.sol_9_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_ce0),.sol_9_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_we0),.sol_9_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_d0),.sol_9_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_address1),.sol_9_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_ce1),.sol_9_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_we1),.sol_9_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_d1),.sol_8_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_address0),.sol_8_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_ce0),.sol_8_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_we0),.sol_8_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_d0),.sol_8_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_address1),.sol_8_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_ce1),.sol_8_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_we1),.sol_8_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_d1),.sol_7_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_address0),.sol_7_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_ce0),.sol_7_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_we0),.sol_7_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_d0),.sol_7_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_address1),.sol_7_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_ce1),.sol_7_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_we1),.sol_7_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_d1),.sol_6_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_address0),.sol_6_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_ce0),.sol_6_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_we0),.sol_6_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_d0),.sol_6_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_address1),.sol_6_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_ce1),.sol_6_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_we1),.sol_6_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_d1),.sol_5_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_address0),.sol_5_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_ce0),.sol_5_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_we0),.sol_5_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_d0),.sol_5_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_address1),.sol_5_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_ce1),.sol_5_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_we1),.sol_5_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_d1),.sol_4_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_address0),.sol_4_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_ce0),.sol_4_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_we0),.sol_4_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_d0),.sol_4_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_address1),.sol_4_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_ce1),.sol_4_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_we1),.sol_4_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_d1),.sol_3_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_address0),.sol_3_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_ce0),.sol_3_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_we0),.sol_3_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_d0),.sol_2_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_address0),.sol_2_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_ce0),.sol_2_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_we0),.sol_2_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_d0),.sol_1_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_d0),.sol_15_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_address0),.sol_15_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_ce0),.sol_15_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_we0),.sol_15_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_d0),.sol_15_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_address1),.sol_15_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_ce1),.sol_15_we1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_we1),.sol_15_d1(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_d1),.sol_0_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_d0),.orig_1_load_36(orig_1_load_34_reg_2196),.orig_2_load_36(orig_2_load_34_reg_2281),.orig_3_load_36(orig_3_load_34_reg_2286),.orig_4_load_36(orig_4_load_34_reg_2211),.orig_5_load_36(orig_5_load_34_reg_2216),.orig_6_load_36(orig_6_load_34_reg_2221),.orig_7_load_36(orig_7_load_34_reg_2226),.orig_8_load_36(orig_8_load_34_reg_2231),.orig_9_load_36(orig_9_load_34_reg_2236),.orig_10_load_36(orig_10_load_34_reg_2241),.orig_11_load_36(orig_11_load_34_reg_2246),.orig_12_load_36(orig_12_load_34_reg_2251),.orig_13_load_36(orig_13_load_34_reg_2256),.orig_1_load_32(orig_1_load_reg_1585),.orig_2_load_32(orig_2_load_reg_1801),.orig_3_load_32(orig_3_load_reg_1806),.orig_4_load_32(orig_4_load_reg_1600),.orig_5_load_32(orig_5_load_reg_1605),.orig_6_load_32(orig_6_load_reg_1610),.orig_7_load_32(orig_7_load_reg_1615),.orig_8_load_32(orig_8_load_reg_1620),.orig_9_load_32(orig_9_load_reg_1625),.orig_10_load_32(orig_10_load_reg_1630),.orig_11_load_32(orig_11_load_reg_1635),.orig_12_load_32(orig_12_load_reg_1640),.orig_13_load_32(orig_13_load_reg_1645),.orig_1_load_33(orig_1_load_31_reg_1811),.orig_2_load_33(orig_2_load_31_reg_2096),.orig_3_load_33(orig_3_load_31_reg_2101),.orig_4_load_33(orig_4_load_31_reg_1826),.orig_5_load_33(orig_5_load_31_reg_1831),.orig_6_load_33(orig_6_load_31_reg_1836),.orig_7_load_33(orig_7_load_31_reg_1841),.orig_8_load_33(orig_8_load_31_reg_1846),.orig_9_load_33(orig_9_load_31_reg_1851),.orig_10_load_33(orig_10_load_31_reg_1856),.orig_11_load_33(orig_11_load_31_reg_1861),.orig_12_load_33(orig_12_load_31_reg_1866),.orig_13_load_33(orig_13_load_31_reg_1871),.orig_1_load_34(orig_1_load_32_reg_1876),.orig_2_load_34(orig_2_load_32_reg_2106),.orig_3_load_34(orig_3_load_32_reg_2111),.orig_4_load_34(orig_4_load_32_reg_1891),.orig_5_load_34(orig_5_load_32_reg_1896),.orig_6_load_34(orig_6_load_32_reg_1901),.orig_7_load_34(orig_7_load_32_reg_1906),.orig_8_load_34(orig_8_load_32_reg_1911),.orig_9_load_34(orig_9_load_32_reg_1916),.orig_10_load_34(orig_10_load_32_reg_1921),.orig_11_load_34(orig_11_load_32_reg_1926),.orig_12_load_34(orig_12_load_32_reg_1931),.orig_13_load_34(orig_13_load_32_reg_1936),.orig_1_load_35(orig_1_load_33_reg_2116),.orig_2_load_35(orig_2_load_33_reg_2271),.orig_3_load_35(orig_3_load_33_reg_2276),.orig_4_load_35(orig_4_load_33_reg_2131),.orig_5_load_35(orig_5_load_33_reg_2136),.orig_6_load_35(orig_6_load_33_reg_2141),.orig_7_load_35(orig_7_load_33_reg_2146),.orig_8_load_35(orig_8_load_33_reg_2151),.orig_9_load_35(orig_9_load_33_reg_2156),.orig_10_load_35(orig_10_load_33_reg_2161),.orig_11_load_35(orig_11_load_33_reg_2166),.orig_12_load_35(orig_12_load_33_reg_2171),.orig_13_load_35(orig_13_load_33_reg_2176),.orig_14_load_32(orig_14_load_reg_1760),.orig_0_load_272(orig_0_load_reg_2181),.C_load(C_load_reg_1420),.C_load_1(C_load_1_reg_1425),.orig_14_load_33(orig_14_load_31_reg_2001),.orig_14_load_34(orig_14_load_32_reg_2006),.orig_14_load_35(orig_14_load_33_reg_2186),.orig_14_load_36(orig_14_load_34_reg_2191),.orig_15_load_272(orig_15_load_reg_1775),.orig_15_load_273(orig_15_load_244_reg_2086),.orig_15_load_274(orig_15_load_245_reg_2091),.orig_15_load_275(orig_15_load_246_reg_2261),.orig_15_load_276(orig_15_load_247_reg_2266),.tmp_17(tmp_17_reg_1453),.orig_0_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_4_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_address0),.orig_4_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_ce0),.orig_4_q0(orig_4_q0),.orig_4_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_address1),.orig_4_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_ce1),.orig_4_q1(orig_4_q1),.orig_5_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_address0),.orig_5_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_ce0),.orig_5_q0(orig_5_q0),.orig_5_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_address1),.orig_5_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_ce1),.orig_5_q1(orig_5_q1),.orig_6_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_address0),.orig_6_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_ce0),.orig_6_q0(orig_6_q0),.orig_6_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_address1),.orig_6_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_ce1),.orig_6_q1(orig_6_q1),.orig_7_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_address0),.orig_7_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_ce0),.orig_7_q0(orig_7_q0),.orig_7_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_address1),.orig_7_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_ce1),.orig_7_q1(orig_7_q1),.orig_8_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_address0),.orig_8_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_ce0),.orig_8_q0(orig_8_q0),.orig_8_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_address1),.orig_8_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_ce1),.orig_8_q1(orig_8_q1),.orig_9_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_address0),.orig_9_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_ce0),.orig_9_q0(orig_9_q0),.orig_9_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_address1),.orig_9_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_ce1),.orig_9_q1(orig_9_q1),.orig_10_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_address0),.orig_10_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_ce0),.orig_10_q0(orig_10_q0),.orig_10_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_address1),.orig_10_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_ce1),.orig_10_q1(orig_10_q1),.orig_11_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_address0),.orig_11_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_ce0),.orig_11_q0(orig_11_q0),.orig_11_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_address1),.orig_11_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_ce1),.orig_11_q1(orig_11_q1),.orig_12_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_address0),.orig_12_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_ce0),.orig_12_q0(orig_12_q0),.orig_12_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_address1),.orig_12_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_ce1),.orig_12_q1(orig_12_q1),.orig_13_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_address0),.orig_13_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_ce0),.orig_13_q0(orig_13_q0),.orig_13_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_address1),.orig_13_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_ce1),.orig_13_q1(orig_13_q1),.orig_14_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_address0),.orig_14_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_ce0),.orig_14_q0(orig_14_q0),.orig_14_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_address1),.orig_14_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_ce1),.orig_14_q1(orig_14_q1),.orig_15_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_address0),.orig_15_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_ce0),.orig_15_q0(orig_15_q0),.orig_15_address1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_address1),.orig_15_ce1(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_ce1),.orig_15_q1(orig_15_q1),.empty_8(empty_reg_1477),.empty(empty_34_reg_1490),.tmp_18(tmp_18_reg_1572),.tmp_19(tmp_19_reg_1790),.orig_1_address0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_loop_row_fu_1085_orig_1_ce0),.orig_1_q0(orig_1_q0));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_loop_row_fu_1085_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_stencil3d_Pipeline_loop_row_fu_1085_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_loop_row_fu_1085_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_loop_row_fu_1085_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_2_fu_118 <= 5'd1;
    end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln37_fu_1265_p2 == 1'd1))) begin
        i_2_fu_118 <= indvars_iv_next162_reg_1445;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & (grp_stencil3d_Pipeline_loop_row_fu_1085_ap_done == 1'b1))) begin
        j_1_reg_897 <= indvars_iv_next149_reg_1567;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_1245_p2 == 1'd0))) begin
        j_1_reg_897 <= 5'd1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_load_1_reg_1425 <= C_q0;
        C_load_reg_1420 <= C_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_34_reg_1490 <= empty_34_fu_1320_p2;
        empty_reg_1477 <= empty_fu_1296_p2;
        p_cast48_reg_1459[9 : 0] <= p_cast48_fu_1278_p1[9 : 0];
        p_cast49_reg_1482[9 : 0] <= p_cast49_fu_1301_p1[9 : 0];
        tmp_17_reg_1453 <= tmp_17_fu_1271_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_reg_1430 <= i_2_fu_118;
        indvars_iv_next162_reg_1445 <= indvars_iv_next162_fu_1259_p2;
        tmp_s_reg_1439[9 : 5] <= tmp_s_fu_1251_p3[9 : 5];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        indvars_iv_next149_reg_1567 <= indvars_iv_next149_fu_1345_p2;
        orig_10_load_reg_1630 <= orig_10_q0;
        orig_11_load_reg_1635 <= orig_11_q0;
        orig_12_load_reg_1640 <= orig_12_q0;
        orig_13_load_reg_1645 <= orig_13_q0;
        orig_14_load_reg_1760 <= orig_14_q0;
        orig_15_load_reg_1775 <= orig_15_q0;
        orig_1_load_reg_1585 <= orig_1_q0;
        orig_4_load_reg_1600 <= orig_4_q0;
        orig_5_load_reg_1605 <= orig_5_q0;
        orig_6_load_reg_1610 <= orig_6_q0;
        orig_7_load_reg_1615 <= orig_7_q0;
        orig_8_load_reg_1620 <= orig_8_q0;
        orig_9_load_reg_1625 <= orig_9_q0;
        p_cast50_reg_1561[9 : 0] <= p_cast50_fu_1329_p1[9 : 0];
        p_cast51_reg_1577[9 : 0] <= p_cast51_fu_1358_p1[9 : 0];
        tmp_18_reg_1572 <= tmp_18_fu_1351_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        orig_0_load_reg_2181 <= orig_0_q0;
        orig_10_load_33_reg_2161 <= orig_10_q0;
        orig_10_load_34_reg_2241 <= orig_10_q1;
        orig_11_load_33_reg_2166 <= orig_11_q0;
        orig_11_load_34_reg_2246 <= orig_11_q1;
        orig_12_load_33_reg_2171 <= orig_12_q0;
        orig_12_load_34_reg_2251 <= orig_12_q1;
        orig_13_load_33_reg_2176 <= orig_13_q0;
        orig_13_load_34_reg_2256 <= orig_13_q1;
        orig_14_load_33_reg_2186 <= orig_14_q0;
        orig_14_load_34_reg_2191 <= orig_14_q1;
        orig_15_load_246_reg_2261 <= orig_15_q0;
        orig_15_load_247_reg_2266 <= orig_15_q1;
        orig_1_load_33_reg_2116 <= orig_1_q0;
        orig_1_load_34_reg_2196 <= orig_1_q1;
        orig_2_load_31_reg_2096 <= orig_2_q1;
        orig_2_load_32_reg_2106 <= orig_2_q0;
        orig_3_load_31_reg_2101 <= orig_3_q1;
        orig_3_load_32_reg_2111 <= orig_3_q0;
        orig_4_load_33_reg_2131 <= orig_4_q0;
        orig_4_load_34_reg_2211 <= orig_4_q1;
        orig_5_load_33_reg_2136 <= orig_5_q0;
        orig_5_load_34_reg_2216 <= orig_5_q1;
        orig_6_load_33_reg_2141 <= orig_6_q0;
        orig_6_load_34_reg_2221 <= orig_6_q1;
        orig_7_load_33_reg_2146 <= orig_7_q0;
        orig_7_load_34_reg_2226 <= orig_7_q1;
        orig_8_load_33_reg_2151 <= orig_8_q0;
        orig_8_load_34_reg_2231 <= orig_8_q1;
        orig_9_load_33_reg_2156 <= orig_9_q0;
        orig_9_load_34_reg_2236 <= orig_9_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_10_load_31_reg_1856 <= orig_10_q1;
        orig_10_load_32_reg_1921 <= orig_10_q0;
        orig_11_load_31_reg_1861 <= orig_11_q1;
        orig_11_load_32_reg_1926 <= orig_11_q0;
        orig_12_load_31_reg_1866 <= orig_12_q1;
        orig_12_load_32_reg_1931 <= orig_12_q0;
        orig_13_load_31_reg_1871 <= orig_13_q1;
        orig_13_load_32_reg_1936 <= orig_13_q0;
        orig_14_load_31_reg_2001 <= orig_14_q1;
        orig_14_load_32_reg_2006 <= orig_14_q0;
        orig_15_load_244_reg_2086 <= orig_15_q1;
        orig_15_load_245_reg_2091 <= orig_15_q0;
        orig_1_load_31_reg_1811 <= orig_1_q1;
        orig_1_load_32_reg_1876 <= orig_1_q0;
        orig_2_load_reg_1801 <= orig_2_q0;
        orig_3_load_reg_1806 <= orig_3_q0;
        orig_4_load_31_reg_1826 <= orig_4_q1;
        orig_4_load_32_reg_1891 <= orig_4_q0;
        orig_5_load_31_reg_1831 <= orig_5_q1;
        orig_5_load_32_reg_1896 <= orig_5_q0;
        orig_6_load_31_reg_1836 <= orig_6_q1;
        orig_6_load_32_reg_1901 <= orig_6_q0;
        orig_7_load_31_reg_1841 <= orig_7_q1;
        orig_7_load_32_reg_1906 <= orig_7_q0;
        orig_8_load_31_reg_1846 <= orig_8_q1;
        orig_8_load_32_reg_1911 <= orig_8_q0;
        orig_9_load_31_reg_1851 <= orig_9_q1;
        orig_9_load_32_reg_1916 <= orig_9_q0;
        p_cast52_reg_1795[9 : 0] <= p_cast52_fu_1386_p1[9 : 0];
        tmp_19_reg_1790 <= tmp_19_fu_1379_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        orig_2_load_33_reg_2271 <= orig_2_q0;
        orig_2_load_34_reg_2281 <= orig_2_q1;
        orig_3_load_33_reg_2276 <= orig_3_q0;
        orig_3_load_34_reg_2286 <= orig_3_q1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        C_ce0_local = 1'b1;
    end else begin
        C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        C_ce1_local = 1'b1;
    end else begin
        C_ce1_local = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_loop_row_fu_1085_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_1245_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_1245_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_address0;
    end else begin
        orig_0_address0 = p_cast48_reg_1459;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_address1;
    end else begin
        orig_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_ce0;
    end else begin
        orig_0_ce0 = orig_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_0_ce1;
    end else begin
        orig_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_10_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_address0;
    end else begin
        orig_10_address0 = orig_10_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_10_address0_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_10_address0_local = p_cast51_fu_1358_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_10_address0_local = p_cast49_fu_1301_p1;
    end else begin
        orig_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_10_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_address1;
    end else begin
        orig_10_address1 = orig_10_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_10_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_10_address1_local = p_cast50_fu_1329_p1;
    end else begin
        orig_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_10_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_ce0;
    end else begin
        orig_10_ce0 = orig_10_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_10_ce0_local = 1'b1;
    end else begin
        orig_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_10_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_10_ce1;
    end else begin
        orig_10_ce1 = orig_10_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_10_ce1_local = 1'b1;
    end else begin
        orig_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_11_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_address0;
    end else begin
        orig_11_address0 = orig_11_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_11_address0_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_11_address0_local = p_cast51_fu_1358_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_11_address0_local = p_cast49_fu_1301_p1;
    end else begin
        orig_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_11_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_address1;
    end else begin
        orig_11_address1 = orig_11_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_11_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_11_address1_local = p_cast50_fu_1329_p1;
    end else begin
        orig_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_11_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_ce0;
    end else begin
        orig_11_ce0 = orig_11_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_11_ce0_local = 1'b1;
    end else begin
        orig_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_11_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_11_ce1;
    end else begin
        orig_11_ce1 = orig_11_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_11_ce1_local = 1'b1;
    end else begin
        orig_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_12_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_address0;
    end else begin
        orig_12_address0 = orig_12_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_12_address0_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_12_address0_local = p_cast51_fu_1358_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_12_address0_local = p_cast49_fu_1301_p1;
    end else begin
        orig_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_12_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_address1;
    end else begin
        orig_12_address1 = orig_12_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_12_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_12_address1_local = p_cast50_fu_1329_p1;
    end else begin
        orig_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_12_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_ce0;
    end else begin
        orig_12_ce0 = orig_12_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_12_ce0_local = 1'b1;
    end else begin
        orig_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_12_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_12_ce1;
    end else begin
        orig_12_ce1 = orig_12_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_12_ce1_local = 1'b1;
    end else begin
        orig_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_13_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_address0;
    end else begin
        orig_13_address0 = orig_13_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_13_address0_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_13_address0_local = p_cast51_fu_1358_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_13_address0_local = p_cast49_fu_1301_p1;
    end else begin
        orig_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_13_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_address1;
    end else begin
        orig_13_address1 = orig_13_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_13_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_13_address1_local = p_cast50_fu_1329_p1;
    end else begin
        orig_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_13_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_ce0;
    end else begin
        orig_13_ce0 = orig_13_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_13_ce0_local = 1'b1;
    end else begin
        orig_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_13_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_13_ce1;
    end else begin
        orig_13_ce1 = orig_13_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_13_ce1_local = 1'b1;
    end else begin
        orig_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_14_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_address0;
    end else begin
        orig_14_address0 = orig_14_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_14_address0_local = p_cast51_reg_1577;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_14_address0_local = p_cast50_fu_1329_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_14_address0_local = p_cast48_fu_1278_p1;
    end else begin
        orig_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_14_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_address1;
    end else begin
        orig_14_address1 = orig_14_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_14_address1_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_14_address1_local = p_cast49_reg_1482;
    end else begin
        orig_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_14_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_ce0;
    end else begin
        orig_14_ce0 = orig_14_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_14_ce0_local = 1'b1;
    end else begin
        orig_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_14_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_14_ce1;
    end else begin
        orig_14_ce1 = orig_14_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_14_ce1_local = 1'b1;
    end else begin
        orig_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_15_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_15_address0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_address0;
    end else begin
        orig_15_address0 = orig_15_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_15_address0_local = p_cast51_reg_1577;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_15_address0_local = p_cast50_fu_1329_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_15_address0_local = p_cast48_fu_1278_p1;
    end else begin
        orig_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_15_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_15_address1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_address1;
    end else begin
        orig_15_address1 = orig_15_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_15_address1_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_15_address1_local = p_cast49_reg_1482;
    end else begin
        orig_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_15_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_15_ce0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_ce0;
    end else begin
        orig_15_ce0 = orig_15_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_15_ce0_local = 1'b1;
    end else begin
        orig_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_15_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_15_ce1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_orig_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_15_ce1;
    end else begin
        orig_15_ce1 = orig_15_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_15_ce1_local = 1'b1;
    end else begin
        orig_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_address0;
    end else begin
        orig_1_address0 = orig_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_1_address0_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_1_address0_local = p_cast51_fu_1358_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_1_address0_local = p_cast49_fu_1301_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_address1;
    end else begin
        orig_1_address1 = orig_1_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_1_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_1_address1_local = p_cast50_fu_1329_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_ce0;
    end else begin
        orig_1_ce0 = orig_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_1_ce1;
    end else begin
        orig_1_ce1 = orig_1_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_address0;
    end else begin
        orig_2_address0 = orig_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        orig_2_address0_local = p_cast52_reg_1795;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_2_address0_local = p_cast51_reg_1577;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_2_address0_local = p_cast49_reg_1482;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_address1;
    end else begin
        orig_2_address1 = orig_2_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        orig_2_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_2_address1_local = p_cast50_reg_1561;
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_ce0;
    end else begin
        orig_2_ce0 = orig_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_2_ce1;
    end else begin
        orig_2_ce1 = orig_2_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_address0;
    end else begin
        orig_3_address0 = orig_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        orig_3_address0_local = p_cast52_reg_1795;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_3_address0_local = p_cast51_reg_1577;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_3_address0_local = p_cast49_reg_1482;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_address1;
    end else begin
        orig_3_address1 = orig_3_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        orig_3_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_3_address1_local = p_cast50_reg_1561;
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_ce0;
    end else begin
        orig_3_ce0 = orig_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_3_ce1;
    end else begin
        orig_3_ce1 = orig_3_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_4_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_address0;
    end else begin
        orig_4_address0 = orig_4_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_4_address0_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_4_address0_local = p_cast51_fu_1358_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_4_address0_local = p_cast49_fu_1301_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_4_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_address1;
    end else begin
        orig_4_address1 = orig_4_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_4_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_4_address1_local = p_cast50_fu_1329_p1;
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_4_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_ce0;
    end else begin
        orig_4_ce0 = orig_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_4_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_4_ce1;
    end else begin
        orig_4_ce1 = orig_4_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_5_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_address0;
    end else begin
        orig_5_address0 = orig_5_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_5_address0_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_5_address0_local = p_cast51_fu_1358_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_5_address0_local = p_cast49_fu_1301_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_5_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_address1;
    end else begin
        orig_5_address1 = orig_5_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_5_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_5_address1_local = p_cast50_fu_1329_p1;
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_5_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_ce0;
    end else begin
        orig_5_ce0 = orig_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_5_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_5_ce1;
    end else begin
        orig_5_ce1 = orig_5_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_6_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_address0;
    end else begin
        orig_6_address0 = orig_6_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_6_address0_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_6_address0_local = p_cast51_fu_1358_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_6_address0_local = p_cast49_fu_1301_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_6_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_address1;
    end else begin
        orig_6_address1 = orig_6_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_6_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_6_address1_local = p_cast50_fu_1329_p1;
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_6_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_ce0;
    end else begin
        orig_6_ce0 = orig_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_6_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_6_ce1;
    end else begin
        orig_6_ce1 = orig_6_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_7_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_address0;
    end else begin
        orig_7_address0 = orig_7_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_7_address0_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_7_address0_local = p_cast51_fu_1358_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_7_address0_local = p_cast49_fu_1301_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_7_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_address1;
    end else begin
        orig_7_address1 = orig_7_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_7_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_7_address1_local = p_cast50_fu_1329_p1;
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_7_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_ce0;
    end else begin
        orig_7_ce0 = orig_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_7_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_7_ce1;
    end else begin
        orig_7_ce1 = orig_7_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_8_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_address0;
    end else begin
        orig_8_address0 = orig_8_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_8_address0_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_8_address0_local = p_cast51_fu_1358_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_8_address0_local = p_cast49_fu_1301_p1;
    end else begin
        orig_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_8_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_address1;
    end else begin
        orig_8_address1 = orig_8_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_8_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_8_address1_local = p_cast50_fu_1329_p1;
    end else begin
        orig_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_8_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_ce0;
    end else begin
        orig_8_ce0 = orig_8_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_8_ce0_local = 1'b1;
    end else begin
        orig_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_8_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_8_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_8_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_8_ce1;
    end else begin
        orig_8_ce1 = orig_8_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_8_ce1_local = 1'b1;
    end else begin
        orig_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_9_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_address0;
    end else begin
        orig_9_address0 = orig_9_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_9_address0_local = p_cast52_fu_1386_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_9_address0_local = p_cast51_fu_1358_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_9_address0_local = p_cast49_fu_1301_p1;
    end else begin
        orig_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_9_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_address1;
    end else begin
        orig_9_address1 = orig_9_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_9_address1_local = p_cast48_reg_1459;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_9_address1_local = p_cast50_fu_1329_p1;
    end else begin
        orig_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_9_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_ce0;
    end else begin
        orig_9_ce0 = orig_9_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_9_ce0_local = 1'b1;
    end else begin
        orig_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        orig_9_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_orig_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_orig_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_orig_9_ce1;
    end else begin
        orig_9_ce1 = orig_9_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_9_ce1_local = 1'b1;
    end else begin
        orig_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_address0;
    end else begin
        sol_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_address1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_address1;
    end else begin
        sol_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_ce0;
    end else begin
        sol_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_ce1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_ce1;
    end else begin
        sol_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_d0;
    end else begin
        sol_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_d1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_d1;
    end else begin
        sol_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_we0;
    end else begin
        sol_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_we1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_0_we1;
    end else begin
        sol_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_address0;
    end else begin
        sol_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_address1;
    end else begin
        sol_10_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_ce0;
    end else begin
        sol_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_ce1;
    end else begin
        sol_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_d0;
    end else begin
        sol_10_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_d1;
    end else begin
        sol_10_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_we0;
    end else begin
        sol_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_10_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_10_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_10_we1;
    end else begin
        sol_10_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_address0;
    end else begin
        sol_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_address1;
    end else begin
        sol_11_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_ce0;
    end else begin
        sol_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_ce1;
    end else begin
        sol_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_d0;
    end else begin
        sol_11_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_d1;
    end else begin
        sol_11_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_we0;
    end else begin
        sol_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_11_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_11_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_11_we1;
    end else begin
        sol_11_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_address0;
    end else begin
        sol_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_address1;
    end else begin
        sol_12_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_ce0;
    end else begin
        sol_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_ce1;
    end else begin
        sol_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_d0;
    end else begin
        sol_12_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_d1;
    end else begin
        sol_12_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_we0;
    end else begin
        sol_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_12_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_12_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_12_we1;
    end else begin
        sol_12_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_address0;
    end else begin
        sol_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_address1;
    end else begin
        sol_13_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_ce0;
    end else begin
        sol_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_ce1;
    end else begin
        sol_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_d0;
    end else begin
        sol_13_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_d1;
    end else begin
        sol_13_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_we0;
    end else begin
        sol_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_13_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_13_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_13_we1;
    end else begin
        sol_13_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_address0;
    end else begin
        sol_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_address1;
    end else begin
        sol_14_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_ce0;
    end else begin
        sol_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_ce1;
    end else begin
        sol_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_d0;
    end else begin
        sol_14_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_d1;
    end else begin
        sol_14_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_we0;
    end else begin
        sol_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_14_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_14_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_14_we1;
    end else begin
        sol_14_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_15_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_address0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_address0;
    end else begin
        sol_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_15_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_address1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_address1;
    end else begin
        sol_15_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_15_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_ce0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_ce0;
    end else begin
        sol_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_15_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_ce1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_ce1;
    end else begin
        sol_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_15_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_d0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_d0;
    end else begin
        sol_15_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_15_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_d1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_d1;
    end else begin
        sol_15_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_15_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_we0 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_we0;
    end else begin
        sol_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_15_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_15_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_we1 = grp_stencil3d_Pipeline_row_bound_height_fu_1045_sol_15_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_15_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_15_we1;
    end else begin
        sol_15_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_address0;
    end else begin
        sol_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_address1;
    end else begin
        sol_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_ce0;
    end else begin
        sol_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_ce1;
    end else begin
        sol_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_d0;
    end else begin
        sol_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_d1;
    end else begin
        sol_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_we0;
    end else begin
        sol_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_1_we1;
    end else begin
        sol_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_2_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_address0;
    end else begin
        sol_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_address1;
    end else begin
        sol_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_2_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_ce0;
    end else begin
        sol_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_ce1;
    end else begin
        sol_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_2_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_d0;
    end else begin
        sol_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_d1;
    end else begin
        sol_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_2_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_we0;
    end else begin
        sol_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_2_we1;
    end else begin
        sol_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_3_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_address0;
    end else begin
        sol_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_address1;
    end else begin
        sol_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_3_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_ce0;
    end else begin
        sol_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_ce1;
    end else begin
        sol_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_3_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_d0;
    end else begin
        sol_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_d1;
    end else begin
        sol_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_3_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_we0;
    end else begin
        sol_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_3_we1;
    end else begin
        sol_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_address0;
    end else begin
        sol_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_address1;
    end else begin
        sol_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_ce0;
    end else begin
        sol_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_ce1;
    end else begin
        sol_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_d0;
    end else begin
        sol_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_d1;
    end else begin
        sol_4_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_we0;
    end else begin
        sol_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_4_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_4_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_4_we1;
    end else begin
        sol_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_address0;
    end else begin
        sol_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_address1;
    end else begin
        sol_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_ce0;
    end else begin
        sol_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_ce1;
    end else begin
        sol_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_d0;
    end else begin
        sol_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_d1;
    end else begin
        sol_5_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_we0;
    end else begin
        sol_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_5_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_5_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_5_we1;
    end else begin
        sol_5_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_address0;
    end else begin
        sol_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_address1;
    end else begin
        sol_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_ce0;
    end else begin
        sol_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_ce1;
    end else begin
        sol_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_d0;
    end else begin
        sol_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_d1;
    end else begin
        sol_6_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_we0;
    end else begin
        sol_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_6_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_6_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_6_we1;
    end else begin
        sol_6_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_address0;
    end else begin
        sol_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_address1;
    end else begin
        sol_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_ce0;
    end else begin
        sol_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_ce1;
    end else begin
        sol_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_d0;
    end else begin
        sol_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_d1;
    end else begin
        sol_7_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_we0;
    end else begin
        sol_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_7_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_7_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_7_we1;
    end else begin
        sol_7_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_address0;
    end else begin
        sol_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_address1;
    end else begin
        sol_8_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_ce0;
    end else begin
        sol_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_ce1;
    end else begin
        sol_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_d0;
    end else begin
        sol_8_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_d1;
    end else begin
        sol_8_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_we0;
    end else begin
        sol_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_8_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_8_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_8_we1;
    end else begin
        sol_8_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_address0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_address0;
    end else begin
        sol_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_address1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_address1;
    end else begin
        sol_9_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_ce0;
    end else begin
        sol_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_ce1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_ce1;
    end else begin
        sol_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_d0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_d0;
    end else begin
        sol_9_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_d1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_d1;
    end else begin
        sol_9_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_we0 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_we0;
    end else begin
        sol_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_we1 = grp_stencil3d_Pipeline_loop_row_fu_1085_sol_9_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_977_sol_9_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_909_sol_9_we1;
    end else begin
        sol_9_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_1245_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln37_fu_1265_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_stencil3d_Pipeline_loop_row_fu_1085_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign C_address0 = 64'd1;
assign C_address1 = 64'd0;
assign C_ce0 = C_ce0_local;
assign C_ce1 = C_ce1_local;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign empty_34_fu_1320_p2 = ($signed(tmp2_cast_fu_1316_p1) + $signed(tmp_s_reg_1439));
assign empty_fu_1296_p2 = (tmp1_cast_cast_cast_fu_1292_p1 + tmp_s_reg_1439);
assign grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_start = grp_stencil3d_Pipeline_col_bound_height_fu_977_ap_start_reg;
assign grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_start = grp_stencil3d_Pipeline_height_bound_col_fu_909_ap_start_reg;
assign grp_stencil3d_Pipeline_loop_row_fu_1085_ap_start = grp_stencil3d_Pipeline_loop_row_fu_1085_ap_start_reg;
assign grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_start = grp_stencil3d_Pipeline_row_bound_height_fu_1045_ap_start_reg;
assign icmp_ln36_fu_1245_p2 = ((i_2_fu_118 == 5'd31) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_1265_p2 = ((j_1_reg_897 == 5'd31) ? 1'b1 : 1'b0);
assign indvars_iv_next149_fu_1345_p2 = (j_1_reg_897 + 5'd1);
assign indvars_iv_next162_fu_1259_p2 = (i_2_fu_118 + 5'd1);
assign p_cast48_fu_1278_p1 = tmp_17_fu_1271_p3;
assign p_cast49_fu_1301_p1 = empty_fu_1296_p2;
assign p_cast50_fu_1329_p1 = empty_34_reg_1490;
assign p_cast51_fu_1358_p1 = tmp_18_fu_1351_p3;
assign p_cast52_fu_1386_p1 = tmp_19_fu_1379_p3;
assign tmp1_cast_cast_cast_fu_1292_p1 = $unsigned(tmp1_cast_cast_fu_1284_p3);
assign tmp1_cast_cast_fu_1284_p3 = {{1'd1}, {j_1_reg_897}};
assign tmp2_cast_fu_1316_p1 = tmp1_cast_cast_fu_1284_p3;
assign tmp3_fu_1373_p2 = ($signed(j_1_reg_897) + $signed(5'd31));
assign tmp_17_fu_1271_p3 = {{i_2_fu_118}, {j_1_reg_897}};
assign tmp_18_fu_1351_p3 = {{i_reg_1430}, {indvars_iv_next149_fu_1345_p2}};
assign tmp_19_fu_1379_p3 = {{i_reg_1430}, {tmp3_fu_1373_p2}};
assign tmp_s_fu_1251_p3 = {{i_2_fu_118}, {5'd0}};
always @ (posedge ap_clk) begin
    tmp_s_reg_1439[4:0] <= 5'b00000;
    p_cast48_reg_1459[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast49_reg_1482[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast50_reg_1561[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast51_reg_1577[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    p_cast52_reg_1795[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 