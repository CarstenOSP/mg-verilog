
module md (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,n_points_0_0_0_address0,n_points_0_0_0_ce0,n_points_0_0_0_q0,n_points_0_0_1_address0,n_points_0_0_1_ce0,n_points_0_0_1_q0,n_points_0_1_0_address0,n_points_0_1_0_ce0,n_points_0_1_0_q0,n_points_0_1_1_address0,n_points_0_1_1_ce0,n_points_0_1_1_q0,n_points_1_0_0_address0,n_points_1_0_0_ce0,n_points_1_0_0_q0,n_points_1_0_1_address0,n_points_1_0_1_ce0,n_points_1_0_1_q0,n_points_1_1_0_address0,n_points_1_1_0_ce0,n_points_1_1_0_q0,n_points_1_1_1_address0,n_points_1_1_1_ce0,n_points_1_1_1_q0,force_0_0_0_0_address0,force_0_0_0_0_ce0,force_0_0_0_0_we0,force_0_0_0_0_d0,force_0_0_0_0_q0,force_0_0_0_1_address0,force_0_0_0_1_ce0,force_0_0_0_1_we0,force_0_0_0_1_d0,force_0_0_0_1_q0,force_0_0_1_0_address0,force_0_0_1_0_ce0,force_0_0_1_0_we0,force_0_0_1_0_d0,force_0_0_1_0_q0,force_0_0_1_1_address0,force_0_0_1_1_ce0,force_0_0_1_1_we0,force_0_0_1_1_d0,force_0_0_1_1_q0,force_0_1_0_0_address0,force_0_1_0_0_ce0,force_0_1_0_0_we0,force_0_1_0_0_d0,force_0_1_0_0_q0,force_0_1_0_1_address0,force_0_1_0_1_ce0,force_0_1_0_1_we0,force_0_1_0_1_d0,force_0_1_0_1_q0,force_0_1_1_0_address0,force_0_1_1_0_ce0,force_0_1_1_0_we0,force_0_1_1_0_d0,force_0_1_1_0_q0,force_0_1_1_1_address0,force_0_1_1_1_ce0,force_0_1_1_1_we0,force_0_1_1_1_d0,force_0_1_1_1_q0,force_1_0_0_0_address0,force_1_0_0_0_ce0,force_1_0_0_0_we0,force_1_0_0_0_d0,force_1_0_0_0_q0,force_1_0_0_1_address0,force_1_0_0_1_ce0,force_1_0_0_1_we0,force_1_0_0_1_d0,force_1_0_0_1_q0,force_1_0_1_0_address0,force_1_0_1_0_ce0,force_1_0_1_0_we0,force_1_0_1_0_d0,force_1_0_1_0_q0,force_1_0_1_1_address0,force_1_0_1_1_ce0,force_1_0_1_1_we0,force_1_0_1_1_d0,force_1_0_1_1_q0,force_1_1_0_0_address0,force_1_1_0_0_ce0,force_1_1_0_0_we0,force_1_1_0_0_d0,force_1_1_0_0_q0,force_1_1_0_1_address0,force_1_1_0_1_ce0,force_1_1_0_1_we0,force_1_1_0_1_d0,force_1_1_0_1_q0,force_1_1_1_0_address0,force_1_1_1_0_ce0,force_1_1_1_0_we0,force_1_1_1_0_d0,force_1_1_1_0_q0,force_1_1_1_1_address0,force_1_1_1_1_ce0,force_1_1_1_1_we0,force_1_1_1_1_d0,force_1_1_1_1_q0,position_0_0_0_0_address0,position_0_0_0_0_ce0,position_0_0_0_0_q0,position_0_0_0_1_address0,position_0_0_0_1_ce0,position_0_0_0_1_q0,position_0_0_1_0_address0,position_0_0_1_0_ce0,position_0_0_1_0_q0,position_0_0_1_1_address0,position_0_0_1_1_ce0,position_0_0_1_1_q0,position_0_1_0_0_address0,position_0_1_0_0_ce0,position_0_1_0_0_q0,position_0_1_0_1_address0,position_0_1_0_1_ce0,position_0_1_0_1_q0,position_0_1_1_0_address0,position_0_1_1_0_ce0,position_0_1_1_0_q0,position_0_1_1_1_address0,position_0_1_1_1_ce0,position_0_1_1_1_q0,position_1_0_0_0_address0,position_1_0_0_0_ce0,position_1_0_0_0_q0,position_1_0_0_1_address0,position_1_0_0_1_ce0,position_1_0_0_1_q0,position_1_0_1_0_address0,position_1_0_1_0_ce0,position_1_0_1_0_q0,position_1_0_1_1_address0,position_1_0_1_1_ce0,position_1_0_1_1_q0,position_1_1_0_0_address0,position_1_1_0_0_ce0,position_1_1_0_0_q0,position_1_1_0_1_address0,position_1_1_0_1_ce0,position_1_1_0_1_q0,position_1_1_1_0_address0,position_1_1_1_0_ce0,position_1_1_1_0_q0,position_1_1_1_1_address0,position_1_1_1_1_ce0,position_1_1_1_1_q0);  
parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] n_points_0_0_0_address0;
output   n_points_0_0_0_ce0;
input  [31:0] n_points_0_0_0_q0;
output  [2:0] n_points_0_0_1_address0;
output   n_points_0_0_1_ce0;
input  [31:0] n_points_0_0_1_q0;
output  [2:0] n_points_0_1_0_address0;
output   n_points_0_1_0_ce0;
input  [31:0] n_points_0_1_0_q0;
output  [2:0] n_points_0_1_1_address0;
output   n_points_0_1_1_ce0;
input  [31:0] n_points_0_1_1_q0;
output  [2:0] n_points_1_0_0_address0;
output   n_points_1_0_0_ce0;
input  [31:0] n_points_1_0_0_q0;
output  [2:0] n_points_1_0_1_address0;
output   n_points_1_0_1_ce0;
input  [31:0] n_points_1_0_1_q0;
output  [2:0] n_points_1_1_0_address0;
output   n_points_1_1_0_ce0;
input  [31:0] n_points_1_1_0_q0;
output  [2:0] n_points_1_1_1_address0;
output   n_points_1_1_1_ce0;
input  [31:0] n_points_1_1_1_q0;
output  [5:0] force_0_0_0_0_address0;
output   force_0_0_0_0_ce0;
output   force_0_0_0_0_we0;
output  [191:0] force_0_0_0_0_d0;
input  [191:0] force_0_0_0_0_q0;
output  [5:0] force_0_0_0_1_address0;
output   force_0_0_0_1_ce0;
output   force_0_0_0_1_we0;
output  [191:0] force_0_0_0_1_d0;
input  [191:0] force_0_0_0_1_q0;
output  [5:0] force_0_0_1_0_address0;
output   force_0_0_1_0_ce0;
output   force_0_0_1_0_we0;
output  [191:0] force_0_0_1_0_d0;
input  [191:0] force_0_0_1_0_q0;
output  [5:0] force_0_0_1_1_address0;
output   force_0_0_1_1_ce0;
output   force_0_0_1_1_we0;
output  [191:0] force_0_0_1_1_d0;
input  [191:0] force_0_0_1_1_q0;
output  [5:0] force_0_1_0_0_address0;
output   force_0_1_0_0_ce0;
output   force_0_1_0_0_we0;
output  [191:0] force_0_1_0_0_d0;
input  [191:0] force_0_1_0_0_q0;
output  [5:0] force_0_1_0_1_address0;
output   force_0_1_0_1_ce0;
output   force_0_1_0_1_we0;
output  [191:0] force_0_1_0_1_d0;
input  [191:0] force_0_1_0_1_q0;
output  [5:0] force_0_1_1_0_address0;
output   force_0_1_1_0_ce0;
output   force_0_1_1_0_we0;
output  [191:0] force_0_1_1_0_d0;
input  [191:0] force_0_1_1_0_q0;
output  [5:0] force_0_1_1_1_address0;
output   force_0_1_1_1_ce0;
output   force_0_1_1_1_we0;
output  [191:0] force_0_1_1_1_d0;
input  [191:0] force_0_1_1_1_q0;
output  [5:0] force_1_0_0_0_address0;
output   force_1_0_0_0_ce0;
output   force_1_0_0_0_we0;
output  [191:0] force_1_0_0_0_d0;
input  [191:0] force_1_0_0_0_q0;
output  [5:0] force_1_0_0_1_address0;
output   force_1_0_0_1_ce0;
output   force_1_0_0_1_we0;
output  [191:0] force_1_0_0_1_d0;
input  [191:0] force_1_0_0_1_q0;
output  [5:0] force_1_0_1_0_address0;
output   force_1_0_1_0_ce0;
output   force_1_0_1_0_we0;
output  [191:0] force_1_0_1_0_d0;
input  [191:0] force_1_0_1_0_q0;
output  [5:0] force_1_0_1_1_address0;
output   force_1_0_1_1_ce0;
output   force_1_0_1_1_we0;
output  [191:0] force_1_0_1_1_d0;
input  [191:0] force_1_0_1_1_q0;
output  [5:0] force_1_1_0_0_address0;
output   force_1_1_0_0_ce0;
output   force_1_1_0_0_we0;
output  [191:0] force_1_1_0_0_d0;
input  [191:0] force_1_1_0_0_q0;
output  [5:0] force_1_1_0_1_address0;
output   force_1_1_0_1_ce0;
output   force_1_1_0_1_we0;
output  [191:0] force_1_1_0_1_d0;
input  [191:0] force_1_1_0_1_q0;
output  [5:0] force_1_1_1_0_address0;
output   force_1_1_1_0_ce0;
output   force_1_1_1_0_we0;
output  [191:0] force_1_1_1_0_d0;
input  [191:0] force_1_1_1_0_q0;
output  [5:0] force_1_1_1_1_address0;
output   force_1_1_1_1_ce0;
output   force_1_1_1_1_we0;
output  [191:0] force_1_1_1_1_d0;
input  [191:0] force_1_1_1_1_q0;
output  [5:0] position_0_0_0_0_address0;
output   position_0_0_0_0_ce0;
input  [191:0] position_0_0_0_0_q0;
output  [5:0] position_0_0_0_1_address0;
output   position_0_0_0_1_ce0;
input  [191:0] position_0_0_0_1_q0;
output  [5:0] position_0_0_1_0_address0;
output   position_0_0_1_0_ce0;
input  [191:0] position_0_0_1_0_q0;
output  [5:0] position_0_0_1_1_address0;
output   position_0_0_1_1_ce0;
input  [191:0] position_0_0_1_1_q0;
output  [5:0] position_0_1_0_0_address0;
output   position_0_1_0_0_ce0;
input  [191:0] position_0_1_0_0_q0;
output  [5:0] position_0_1_0_1_address0;
output   position_0_1_0_1_ce0;
input  [191:0] position_0_1_0_1_q0;
output  [5:0] position_0_1_1_0_address0;
output   position_0_1_1_0_ce0;
input  [191:0] position_0_1_1_0_q0;
output  [5:0] position_0_1_1_1_address0;
output   position_0_1_1_1_ce0;
input  [191:0] position_0_1_1_1_q0;
output  [5:0] position_1_0_0_0_address0;
output   position_1_0_0_0_ce0;
input  [191:0] position_1_0_0_0_q0;
output  [5:0] position_1_0_0_1_address0;
output   position_1_0_0_1_ce0;
input  [191:0] position_1_0_0_1_q0;
output  [5:0] position_1_0_1_0_address0;
output   position_1_0_1_0_ce0;
input  [191:0] position_1_0_1_0_q0;
output  [5:0] position_1_0_1_1_address0;
output   position_1_0_1_1_ce0;
input  [191:0] position_1_0_1_1_q0;
output  [5:0] position_1_1_0_0_address0;
output   position_1_1_0_0_ce0;
input  [191:0] position_1_1_0_0_q0;
output  [5:0] position_1_1_0_1_address0;
output   position_1_1_0_1_ce0;
input  [191:0] position_1_1_0_1_q0;
output  [5:0] position_1_1_1_0_address0;
output   position_1_1_1_0_ce0;
input  [191:0] position_1_1_1_0_q0;
output  [5:0] position_1_1_1_1_address0;
output   position_1_1_1_1_ce0;
input  [191:0] position_1_1_1_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] position_0_0_0_0_address0;
reg position_0_0_0_0_ce0;
reg[5:0] position_0_0_0_1_address0;
reg position_0_0_0_1_ce0;
reg[5:0] position_0_0_1_0_address0;
reg position_0_0_1_0_ce0;
reg[5:0] position_0_0_1_1_address0;
reg position_0_0_1_1_ce0;
reg[5:0] position_0_1_0_0_address0;
reg position_0_1_0_0_ce0;
reg[5:0] position_0_1_0_1_address0;
reg position_0_1_0_1_ce0;
reg[5:0] position_0_1_1_0_address0;
reg position_0_1_1_0_ce0;
reg[5:0] position_0_1_1_1_address0;
reg position_0_1_1_1_ce0;
reg[5:0] position_1_0_0_0_address0;
reg position_1_0_0_0_ce0;
reg[5:0] position_1_0_0_1_address0;
reg position_1_0_0_1_ce0;
reg[5:0] position_1_0_1_0_address0;
reg position_1_0_1_0_ce0;
reg[5:0] position_1_0_1_1_address0;
reg position_1_0_1_1_ce0;
reg[5:0] position_1_1_0_0_address0;
reg position_1_1_0_0_ce0;
reg[5:0] position_1_1_0_1_address0;
reg position_1_1_0_1_ce0;
reg[5:0] position_1_1_1_0_address0;
reg position_1_1_1_0_ce0;
reg[5:0] position_1_1_1_1_address0;
reg position_1_1_1_1_ce0;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] add_ln14_fu_970_p2;
reg   [2:0] add_ln14_reg_1992;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln14_1_fu_980_p1;
reg   [0:0] trunc_ln14_1_reg_1997;
reg   [0:0] tmp_reg_2004;
wire   [2:0] smax74_cast_fu_1006_p1;
reg   [2:0] smax74_cast_reg_2010;
wire   [2:0] cond24_fu_1022_p3;
reg   [2:0] cond24_reg_2015;
wire   [2:0] add_ln15_fu_1036_p2;
reg   [2:0] add_ln15_reg_2023;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln15_1_fu_1046_p1;
reg   [0:0] trunc_ln15_1_reg_2028;
reg   [0:0] tmp_12_reg_2038;
wire   [2:0] smax69_cast_fu_1072_p1;
reg   [2:0] smax69_cast_reg_2044;
wire   [2:0] cond47_fu_1088_p3;
reg   [2:0] cond47_reg_2049;
wire   [2:0] add_ln16_fu_1117_p2;
reg   [2:0] add_ln16_reg_2057;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_13_fu_1123_p3;
reg   [0:0] tmp_13_reg_2062;
wire   [2:0] tmp_16_fu_1131_p4;
reg   [2:0] tmp_16_reg_2067;
wire   [2:0] add_ln15_1_fu_1151_p2;
wire   [0:0] trunc_ln16_1_fu_1161_p1;
reg   [0:0] trunc_ln16_1_reg_2117;
wire    ap_CS_fsm_state5;
wire   [5:0] add_ln26_1_fu_1181_p2;
reg   [5:0] add_ln26_1_reg_2129;
wire   [2:0] smax_cast_fu_1201_p1;
reg   [2:0] smax_cast_reg_2134;
wire   [2:0] cond70_fu_1217_p3;
reg   [2:0] cond70_reg_2139;
wire   [31:0] tmp_11_fu_1271_p3;
reg   [31:0] tmp_11_reg_2144;
wire   [0:0] trunc_ln8_fu_1283_p1;
reg   [0:0] trunc_ln8_reg_2152;
wire    ap_CS_fsm_state6;
wire   [2:0] zext_ln8_fu_1303_p1;
reg   [2:0] zext_ln8_reg_2158;
wire   [2:0] add_ln16_1_fu_1307_p2;
wire   [0:0] trunc_ln8_1_fu_1318_p1;
reg   [0:0] trunc_ln8_1_reg_2171;
wire    ap_CS_fsm_state7;
wire   [3:0] tmp_17_fu_1341_p3;
reg   [3:0] tmp_17_reg_2178;
wire   [2:0] add_ln18_fu_1349_p2;
wire   [3:0] add_ln23_1_fu_1374_p2;
reg   [3:0] add_ln23_1_reg_2191;
wire    ap_CS_fsm_state8;
wire   [2:0] add_ln19_fu_1391_p2;
wire   [0:0] trunc_ln8_2_fu_1397_p1;
reg   [0:0] trunc_ln8_2_reg_2242;
wire    ap_CS_fsm_state9;
wire   [5:0] add_ln8_fu_1411_p2;
reg   [5:0] add_ln8_reg_2247;
wire   [31:0] q_idx_range_fu_1463_p3;
reg   [31:0] q_idx_range_reg_2252;
wire   [30:0] add_ln24_fu_1479_p2;
reg   [30:0] add_ln24_reg_2261;
wire    ap_CS_fsm_state10;
wire   [0:0] trunc_ln24_fu_1485_p1;
reg   [0:0] trunc_ln24_reg_2266;
reg   [5:0] force_0_0_0_0_addr_reg_2286;
reg   [5:0] force_0_0_0_1_addr_reg_2291;
reg   [5:0] force_0_0_1_0_addr_reg_2296;
reg   [5:0] force_0_0_1_1_addr_reg_2301;
reg   [5:0] force_0_1_0_0_addr_reg_2306;
reg   [5:0] force_0_1_0_1_addr_reg_2311;
reg   [5:0] force_0_1_1_0_addr_reg_2316;
reg   [5:0] force_0_1_1_1_addr_reg_2321;
reg   [5:0] force_1_0_0_0_addr_reg_2326;
reg   [5:0] force_1_0_0_1_addr_reg_2331;
reg   [5:0] force_1_0_1_0_addr_reg_2336;
reg   [5:0] force_1_0_1_1_addr_reg_2341;
reg   [5:0] force_1_1_0_0_addr_reg_2346;
reg   [5:0] force_1_1_0_1_addr_reg_2351;
reg   [5:0] force_1_1_1_0_addr_reg_2356;
reg   [5:0] force_1_1_1_1_addr_reg_2361;
wire   [2:0] add_ln20_fu_1540_p2;
wire   [191:0] select_ln25_6_fu_1588_p3;
reg   [191:0] select_ln25_6_reg_2451;
wire    ap_CS_fsm_state11;
wire   [191:0] select_ln25_13_fu_1637_p3;
reg   [191:0] select_ln25_13_reg_2456;
wire   [191:0] select_ln26_6_fu_1686_p3;
reg   [191:0] select_ln26_6_reg_2461;
wire   [191:0] select_ln26_13_fu_1735_p3;
reg   [191:0] select_ln26_13_reg_2466;
wire   [190:0] trunc_ln25_fu_1747_p1;
reg   [190:0] trunc_ln25_reg_2471;
wire    ap_CS_fsm_state12;
wire   [63:0] p_x_fu_1756_p1;
reg   [63:0] p_x_reg_2476;
wire   [63:0] p_y_fu_1771_p1;
reg   [63:0] p_y_reg_2481;
wire   [63:0] p_z_fu_1786_p1;
reg   [63:0] p_z_reg_2486;
wire   [63:0] sum_x_fu_1800_p1;
reg   [63:0] sum_x_reg_2491;
wire   [63:0] sum_y_fu_1815_p1;
reg   [63:0] sum_y_reg_2496;
wire   [63:0] sum_z_fu_1830_p1;
reg   [63:0] sum_z_reg_2501;
wire   [51:0] trunc_ln34_fu_1835_p1;
reg   [51:0] trunc_ln34_reg_2506;
reg   [51:0] trunc_ln34_3_reg_2511;
reg   [51:0] trunc_ln34_5_reg_2516;
wire   [0:0] grp_md_Pipeline_loop_q_fu_890_ap_return;
reg   [0:0] targetBlock_reg_2521;
wire    ap_CS_fsm_state13;
wire    grp_md_Pipeline_loop_q_fu_890_ap_start;
wire    grp_md_Pipeline_loop_q_fu_890_ap_done;
wire    grp_md_Pipeline_loop_q_fu_890_ap_idle;
wire    grp_md_Pipeline_loop_q_fu_890_ap_ready;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_0_0_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_0_0_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_0_0_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_0_0_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_0_0_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_0_0_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_0_0_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_0_0_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_0_1_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_0_1_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_0_1_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_0_1_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_0_1_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_0_1_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_0_1_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_0_1_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_1_0_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_1_0_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_1_0_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_1_0_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_1_0_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_1_0_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_1_0_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_1_0_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_1_1_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_1_1_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_1_1_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_1_1_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_1_1_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_1_1_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_890_position_1_1_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_890_position_1_1_1_1_ce0;
wire   [63:0] grp_md_Pipeline_loop_q_fu_890_sum_z_1_out;
wire    grp_md_Pipeline_loop_q_fu_890_sum_z_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_890_sum_y_1_out;
wire    grp_md_Pipeline_loop_q_fu_890_sum_y_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_890_sum_x_1_out;
wire    grp_md_Pipeline_loop_q_fu_890_sum_x_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_890_sum_x_3_out;
wire    grp_md_Pipeline_loop_q_fu_890_sum_x_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_890_sum_y_3_out;
wire    grp_md_Pipeline_loop_q_fu_890_sum_y_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_890_sum_z_3_out;
wire    grp_md_Pipeline_loop_q_fu_890_sum_z_3_out_ap_vld;
reg   [2:0] b0_y_reg_802;
wire   [0:0] icmp_ln14_fu_964_p2;
wire   [0:0] icmp_ln16_fu_1111_p2;
reg   [2:0] indvars_iv67_reg_813;
reg   [2:0] b0_z_reg_825;
wire   [0:0] icmp_ln15_fu_1030_p2;
wire   [0:0] icmp_ln18_fu_1278_p2;
reg   [2:0] indvars_iv63_reg_837;
reg   [2:0] b1_x_reg_849;
wire   [0:0] icmp_ln19_fu_1313_p2;
reg   [2:0] b1_y_reg_859;
wire   [0:0] icmp_ln20_fu_1355_p2;
reg   [2:0] b1_z_reg_869;
wire   [0:0] icmp_ln24_fu_1474_p2;
reg   [30:0] p_idx_reg_879;
wire    ap_CS_fsm_state14;
reg    grp_md_Pipeline_loop_q_fu_890_ap_start_reg;
reg   [63:0] sum_z_1_loc_fu_214;
reg   [63:0] sum_y_1_loc_fu_210;
reg   [63:0] sum_x_1_loc_fu_206;
reg   [63:0] sum_x_3_loc_fu_202;
reg   [63:0] sum_y_3_loc_fu_198;
reg   [63:0] sum_z_3_loc_fu_194;
wire   [63:0] tmp_16_cast5_fu_1139_p1;
wire   [63:0] zext_ln23_2_fu_1379_p1;
wire   [63:0] zext_ln26_1_fu_1504_p1;
reg   [2:0] indvars_iv72_fu_186;
wire   [2:0] add_ln14_1_fu_1096_p2;
reg   [2:0] b0_x_fu_190;
reg    n_points_0_0_0_ce0_local;
reg   [2:0] n_points_0_0_0_address0_local;
reg    n_points_0_0_1_ce0_local;
reg   [2:0] n_points_0_0_1_address0_local;
reg    n_points_0_1_0_ce0_local;
reg   [2:0] n_points_0_1_0_address0_local;
reg    n_points_0_1_1_ce0_local;
reg   [2:0] n_points_0_1_1_address0_local;
reg    n_points_1_0_0_ce0_local;
reg   [2:0] n_points_1_0_0_address0_local;
reg    n_points_1_0_1_ce0_local;
reg   [2:0] n_points_1_0_1_address0_local;
reg    n_points_1_1_0_ce0_local;
reg   [2:0] n_points_1_1_0_address0_local;
reg    n_points_1_1_1_ce0_local;
reg   [2:0] n_points_1_1_1_address0_local;
reg    position_0_0_0_0_ce0_local;
reg    position_0_0_0_1_ce0_local;
reg    position_0_0_1_0_ce0_local;
reg    position_0_0_1_1_ce0_local;
reg    position_0_1_0_0_ce0_local;
reg    position_0_1_0_1_ce0_local;
reg    position_0_1_1_0_ce0_local;
reg    position_0_1_1_1_ce0_local;
reg    position_1_0_0_0_ce0_local;
reg    position_1_0_0_1_ce0_local;
reg    position_1_0_1_0_ce0_local;
reg    position_1_0_1_1_ce0_local;
reg    position_1_1_0_0_ce0_local;
reg    position_1_1_0_1_ce0_local;
reg    position_1_1_1_0_ce0_local;
reg    position_1_1_1_1_ce0_local;
reg    force_0_0_0_0_ce0_local;
reg   [5:0] force_0_0_0_0_address0_local;
reg    force_0_0_0_0_we0_local;
wire   [191:0] or_ln_fu_1913_p4;
reg    force_0_0_0_1_ce0_local;
reg   [5:0] force_0_0_0_1_address0_local;
reg    force_0_0_0_1_we0_local;
reg    force_0_0_1_0_ce0_local;
reg   [5:0] force_0_0_1_0_address0_local;
reg    force_0_0_1_0_we0_local;
reg    force_0_0_1_1_ce0_local;
reg   [5:0] force_0_0_1_1_address0_local;
reg    force_0_0_1_1_we0_local;
reg    force_0_1_0_0_ce0_local;
reg   [5:0] force_0_1_0_0_address0_local;
reg    force_0_1_0_0_we0_local;
reg    force_0_1_0_1_ce0_local;
reg   [5:0] force_0_1_0_1_address0_local;
reg    force_0_1_0_1_we0_local;
reg    force_0_1_1_0_ce0_local;
reg   [5:0] force_0_1_1_0_address0_local;
reg    force_0_1_1_0_we0_local;
reg    force_0_1_1_1_ce0_local;
reg   [5:0] force_0_1_1_1_address0_local;
reg    force_0_1_1_1_we0_local;
reg    force_1_0_0_0_ce0_local;
reg   [5:0] force_1_0_0_0_address0_local;
reg    force_1_0_0_0_we0_local;
reg    force_1_0_0_1_ce0_local;
reg   [5:0] force_1_0_0_1_address0_local;
reg    force_1_0_0_1_we0_local;
reg    force_1_0_1_0_ce0_local;
reg   [5:0] force_1_0_1_0_address0_local;
reg    force_1_0_1_0_we0_local;
reg    force_1_0_1_1_ce0_local;
reg   [5:0] force_1_0_1_1_address0_local;
reg    force_1_0_1_1_we0_local;
reg    force_1_1_0_0_ce0_local;
reg   [5:0] force_1_1_0_0_address0_local;
reg    force_1_1_0_0_we0_local;
reg    force_1_1_0_1_ce0_local;
reg   [5:0] force_1_1_0_1_address0_local;
reg    force_1_1_0_1_we0_local;
reg    force_1_1_1_0_ce0_local;
reg   [5:0] force_1_1_1_0_address0_local;
reg    force_1_1_1_0_we0_local;
reg    force_1_1_1_1_ce0_local;
reg   [5:0] force_1_1_1_1_address0_local;
reg    force_1_1_1_1_we0_local;
wire   [0:0] empty_fu_992_p2;
wire   [1:0] trunc_ln14_fu_976_p1;
wire   [1:0] smax74_fu_998_p3;
wire   [2:0] empty_26_fu_1010_p2;
wire   [0:0] cmp18_fu_1016_p2;
wire   [0:0] empty_27_fu_1058_p2;
wire   [1:0] trunc_ln15_fu_1042_p1;
wire   [1:0] smax69_fu_1064_p3;
wire   [2:0] empty_28_fu_1076_p2;
wire   [0:0] cmp41_fu_1082_p2;
wire   [4:0] tmp_14_fu_1168_p5;
wire   [5:0] zext_ln26_fu_1177_p1;
wire   [5:0] tmp_16_cast_fu_1165_p1;
wire   [0:0] empty_29_fu_1187_p2;
wire   [1:0] trunc_ln16_fu_1157_p1;
wire   [1:0] smax_fu_1193_p3;
wire   [2:0] empty_30_fu_1205_p2;
wire   [0:0] cmp64_fu_1211_p2;
wire   [31:0] tmp_8_fu_1233_p3;
wire   [31:0] tmp_7_fu_1225_p3;
wire   [31:0] tmp_6_fu_1256_p3;
wire   [31:0] tmp_s_fu_1248_p3;
wire   [31:0] tmp_10_fu_1264_p3;
wire   [31:0] tmp_9_fu_1241_p3;
wire   [0:0] tmp_15_fu_1287_p3;
wire   [1:0] tmp_19_fu_1295_p3;
wire   [1:0] lshr_ln8_4_fu_1322_p4;
wire   [2:0] zext_ln23_fu_1332_p1;
wire   [2:0] add_ln23_fu_1336_p2;
wire   [1:0] lshr_ln8_5_fu_1360_p4;
wire   [3:0] zext_ln23_1_fu_1370_p1;
wire   [5:0] tmp_18_fu_1404_p3;
wire   [5:0] zext_ln8_1_fu_1401_p1;
wire   [31:0] select_ln23_1_fu_1425_p3;
wire   [31:0] select_ln23_fu_1417_p3;
wire   [31:0] select_ln23_4_fu_1448_p3;
wire   [31:0] select_ln23_3_fu_1440_p3;
wire   [31:0] select_ln23_5_fu_1456_p3;
wire   [31:0] select_ln23_2_fu_1433_p3;
wire   [31:0] zext_ln24_fu_1470_p1;
wire   [5:0] lshr_ln_fu_1489_p4;
wire   [5:0] add_ln26_fu_1499_p2;
wire   [191:0] select_ln25_1_fu_1553_p3;
wire   [191:0] select_ln25_fu_1546_p3;
wire   [191:0] select_ln25_4_fu_1574_p3;
wire   [191:0] select_ln25_3_fu_1567_p3;
wire   [191:0] select_ln25_5_fu_1581_p3;
wire   [191:0] select_ln25_2_fu_1560_p3;
wire   [191:0] select_ln25_8_fu_1602_p3;
wire   [191:0] select_ln25_7_fu_1595_p3;
wire   [191:0] select_ln25_11_fu_1623_p3;
wire   [191:0] select_ln25_10_fu_1616_p3;
wire   [191:0] select_ln25_12_fu_1630_p3;
wire   [191:0] select_ln25_9_fu_1609_p3;
wire   [191:0] select_ln26_1_fu_1651_p3;
wire   [191:0] select_ln26_fu_1644_p3;
wire   [191:0] select_ln26_4_fu_1672_p3;
wire   [191:0] select_ln26_3_fu_1665_p3;
wire   [191:0] select_ln26_5_fu_1679_p3;
wire   [191:0] select_ln26_2_fu_1658_p3;
wire   [191:0] select_ln26_8_fu_1700_p3;
wire   [191:0] select_ln26_7_fu_1693_p3;
wire   [191:0] select_ln26_11_fu_1721_p3;
wire   [191:0] select_ln26_10_fu_1714_p3;
wire   [191:0] select_ln26_12_fu_1728_p3;
wire   [191:0] select_ln26_9_fu_1707_p3;
wire   [191:0] select_ln25_14_fu_1742_p3;
wire   [63:0] trunc_ln25_3_fu_1752_p1;
wire   [63:0] trunc_ln25_1_fu_1761_p4;
wire   [63:0] trunc_ln25_2_fu_1776_p4;
wire   [191:0] select_ln26_14_fu_1791_p3;
wire   [63:0] trunc_ln26_fu_1796_p1;
wire   [63:0] trunc_ln4_fu_1805_p4;
wire   [63:0] trunc_ln5_fu_1820_p4;
wire   [63:0] select_ln30_fu_1880_p3;
wire   [63:0] select_ln30_1_fu_1887_p3;
wire   [63:0] select_ln30_2_fu_1894_p3;
wire   [63:0] bitcast_ln51_fu_1909_p1;
wire   [63:0] bitcast_ln50_fu_1905_p1;
wire   [63:0] bitcast_ln49_fu_1901_p1;
reg   [13:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_md_Pipeline_loop_q_fu_890_ap_start_reg = 1'b0;
#0 indvars_iv72_fu_186 = 3'd0;
#0 b0_x_fu_190 = 3'd0;
end
md_md_Pipeline_loop_q grp_md_Pipeline_loop_q_fu_890(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_md_Pipeline_loop_q_fu_890_ap_start),.ap_done(grp_md_Pipeline_loop_q_fu_890_ap_done),.ap_idle(grp_md_Pipeline_loop_q_fu_890_ap_idle),.ap_ready(grp_md_Pipeline_loop_q_fu_890_ap_ready),.sum_z(sum_z_reg_2501),.sum_y(sum_y_reg_2496),.sum_x(sum_x_reg_2491),.sext_ln24(q_idx_range_reg_2252),.empty_10(trunc_ln8_2_reg_2242),.empty_11(trunc_ln8_1_reg_2171),.empty_12(trunc_ln8_reg_2152),.p_x(p_x_reg_2476),.p_y(p_y_reg_2481),.p_z(p_z_reg_2486),.q_idx_range(q_idx_range_reg_2252),.mul_ln31(add_ln8_reg_2247),.position_0_0_0_0_address0(grp_md_Pipeline_loop_q_fu_890_position_0_0_0_0_address0),.position_0_0_0_0_ce0(grp_md_Pipeline_loop_q_fu_890_position_0_0_0_0_ce0),.position_0_0_0_0_q0(position_0_0_0_0_q0),.position_0_0_0_1_address0(grp_md_Pipeline_loop_q_fu_890_position_0_0_0_1_address0),.position_0_0_0_1_ce0(grp_md_Pipeline_loop_q_fu_890_position_0_0_0_1_ce0),.position_0_0_0_1_q0(position_0_0_0_1_q0),.position_0_0_1_0_address0(grp_md_Pipeline_loop_q_fu_890_position_0_0_1_0_address0),.position_0_0_1_0_ce0(grp_md_Pipeline_loop_q_fu_890_position_0_0_1_0_ce0),.position_0_0_1_0_q0(position_0_0_1_0_q0),.position_0_0_1_1_address0(grp_md_Pipeline_loop_q_fu_890_position_0_0_1_1_address0),.position_0_0_1_1_ce0(grp_md_Pipeline_loop_q_fu_890_position_0_0_1_1_ce0),.position_0_0_1_1_q0(position_0_0_1_1_q0),.position_0_1_0_0_address0(grp_md_Pipeline_loop_q_fu_890_position_0_1_0_0_address0),.position_0_1_0_0_ce0(grp_md_Pipeline_loop_q_fu_890_position_0_1_0_0_ce0),.position_0_1_0_0_q0(position_0_1_0_0_q0),.position_0_1_0_1_address0(grp_md_Pipeline_loop_q_fu_890_position_0_1_0_1_address0),.position_0_1_0_1_ce0(grp_md_Pipeline_loop_q_fu_890_position_0_1_0_1_ce0),.position_0_1_0_1_q0(position_0_1_0_1_q0),.position_0_1_1_0_address0(grp_md_Pipeline_loop_q_fu_890_position_0_1_1_0_address0),.position_0_1_1_0_ce0(grp_md_Pipeline_loop_q_fu_890_position_0_1_1_0_ce0),.position_0_1_1_0_q0(position_0_1_1_0_q0),.position_0_1_1_1_address0(grp_md_Pipeline_loop_q_fu_890_position_0_1_1_1_address0),.position_0_1_1_1_ce0(grp_md_Pipeline_loop_q_fu_890_position_0_1_1_1_ce0),.position_0_1_1_1_q0(position_0_1_1_1_q0),.position_1_0_0_0_address0(grp_md_Pipeline_loop_q_fu_890_position_1_0_0_0_address0),.position_1_0_0_0_ce0(grp_md_Pipeline_loop_q_fu_890_position_1_0_0_0_ce0),.position_1_0_0_0_q0(position_1_0_0_0_q0),.position_1_0_0_1_address0(grp_md_Pipeline_loop_q_fu_890_position_1_0_0_1_address0),.position_1_0_0_1_ce0(grp_md_Pipeline_loop_q_fu_890_position_1_0_0_1_ce0),.position_1_0_0_1_q0(position_1_0_0_1_q0),.position_1_0_1_0_address0(grp_md_Pipeline_loop_q_fu_890_position_1_0_1_0_address0),.position_1_0_1_0_ce0(grp_md_Pipeline_loop_q_fu_890_position_1_0_1_0_ce0),.position_1_0_1_0_q0(position_1_0_1_0_q0),.position_1_0_1_1_address0(grp_md_Pipeline_loop_q_fu_890_position_1_0_1_1_address0),.position_1_0_1_1_ce0(grp_md_Pipeline_loop_q_fu_890_position_1_0_1_1_ce0),.position_1_0_1_1_q0(position_1_0_1_1_q0),.position_1_1_0_0_address0(grp_md_Pipeline_loop_q_fu_890_position_1_1_0_0_address0),.position_1_1_0_0_ce0(grp_md_Pipeline_loop_q_fu_890_position_1_1_0_0_ce0),.position_1_1_0_0_q0(position_1_1_0_0_q0),.position_1_1_0_1_address0(grp_md_Pipeline_loop_q_fu_890_position_1_1_0_1_address0),.position_1_1_0_1_ce0(grp_md_Pipeline_loop_q_fu_890_position_1_1_0_1_ce0),.position_1_1_0_1_q0(position_1_1_0_1_q0),.position_1_1_1_0_address0(grp_md_Pipeline_loop_q_fu_890_position_1_1_1_0_address0),.position_1_1_1_0_ce0(grp_md_Pipeline_loop_q_fu_890_position_1_1_1_0_ce0),.position_1_1_1_0_q0(position_1_1_1_0_q0),.position_1_1_1_1_address0(grp_md_Pipeline_loop_q_fu_890_position_1_1_1_1_address0),.position_1_1_1_1_ce0(grp_md_Pipeline_loop_q_fu_890_position_1_1_1_1_ce0),.position_1_1_1_1_q0(position_1_1_1_1_q0),.select_ln25_14(trunc_ln25_reg_2471),.empty(trunc_ln34_reg_2506),.trunc_ln34_3(trunc_ln34_3_reg_2511),.trunc_ln34_5(trunc_ln34_5_reg_2516),.sum_z_1_out(grp_md_Pipeline_loop_q_fu_890_sum_z_1_out),.sum_z_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_890_sum_z_1_out_ap_vld),.sum_y_1_out(grp_md_Pipeline_loop_q_fu_890_sum_y_1_out),.sum_y_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_890_sum_y_1_out_ap_vld),.sum_x_1_out(grp_md_Pipeline_loop_q_fu_890_sum_x_1_out),.sum_x_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_890_sum_x_1_out_ap_vld),.sum_x_3_out(grp_md_Pipeline_loop_q_fu_890_sum_x_3_out),.sum_x_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_890_sum_x_3_out_ap_vld),.sum_y_3_out(grp_md_Pipeline_loop_q_fu_890_sum_y_3_out),.sum_y_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_890_sum_y_3_out_ap_vld),.sum_z_3_out(grp_md_Pipeline_loop_q_fu_890_sum_z_3_out),.sum_z_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_890_sum_z_3_out_ap_vld),.ap_return(grp_md_Pipeline_loop_q_fu_890_ap_return));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_md_Pipeline_loop_q_fu_890_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_md_Pipeline_loop_q_fu_890_ap_start_reg <= 1'b1;
        end else if ((grp_md_Pipeline_loop_q_fu_890_ap_ready == 1'b1)) begin
            grp_md_Pipeline_loop_q_fu_890_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b0_x_fu_190 <= 3'd0;
    end else if (((icmp_ln15_fu_1030_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_x_fu_190 <= add_ln14_reg_1992;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_1111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        b0_y_reg_802 <= add_ln15_reg_2023;
    end else if (((icmp_ln14_fu_964_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b0_y_reg_802 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1278_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        b0_z_reg_825 <= add_ln16_reg_2057;
    end else if (((icmp_ln15_fu_1030_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_z_reg_825 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b1_x_reg_849 <= smax74_cast_reg_2010;
    end else if (((icmp_ln19_fu_1313_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_x_reg_849 <= add_ln18_fu_1349_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1278_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        b1_y_reg_859 <= smax69_cast_reg_2044;
    end else if (((icmp_ln20_fu_1355_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        b1_y_reg_859 <= add_ln19_fu_1391_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_1313_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_z_reg_869 <= smax_cast_reg_2134;
    end else if (((icmp_ln24_fu_1474_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        b1_z_reg_869 <= add_ln20_fu_1540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1278_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        indvars_iv63_reg_837 <= add_ln16_1_fu_1307_p2;
    end else if (((icmp_ln15_fu_1030_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv63_reg_837 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_1111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv67_reg_813 <= add_ln15_1_fu_1151_p2;
    end else if (((icmp_ln14_fu_964_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv67_reg_813 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv72_fu_186 <= 3'd7;
    end else if (((icmp_ln15_fu_1030_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv72_fu_186 <= add_ln14_1_fu_1096_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        p_idx_reg_879 <= add_ln24_reg_2261;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        p_idx_reg_879 <= 31'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln14_reg_1992 <= add_ln14_fu_970_p2;
        cond24_reg_2015 <= cond24_fu_1022_p3;
        smax74_cast_reg_2010[1 : 0] <= smax74_cast_fu_1006_p1[1 : 0];
        tmp_reg_2004 <= b0_x_fu_190[32'd1];
        trunc_ln14_1_reg_1997 <= trunc_ln14_1_fu_980_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln15_reg_2023 <= add_ln15_fu_1036_p2;
        cond47_reg_2049 <= cond47_fu_1088_p3;
        smax69_cast_reg_2044[1 : 0] <= smax69_cast_fu_1072_p1[1 : 0];
        tmp_12_reg_2038 <= b0_y_reg_802[32'd1];
        trunc_ln15_1_reg_2028 <= trunc_ln15_1_fu_1046_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_reg_2057 <= add_ln16_fu_1117_p2;
        tmp_13_reg_2062 <= b0_z_reg_825[32'd1];
        tmp_16_reg_2067 <= tmp_16_fu_1131_p4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln23_1_reg_2191 <= add_ln23_1_fu_1374_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln24_reg_2261 <= add_ln24_fu_1479_p2;
        force_0_0_0_0_addr_reg_2286 <= zext_ln26_1_fu_1504_p1;
        force_0_0_0_1_addr_reg_2291 <= zext_ln26_1_fu_1504_p1;
        force_0_0_1_0_addr_reg_2296 <= zext_ln26_1_fu_1504_p1;
        force_0_0_1_1_addr_reg_2301 <= zext_ln26_1_fu_1504_p1;
        force_0_1_0_0_addr_reg_2306 <= zext_ln26_1_fu_1504_p1;
        force_0_1_0_1_addr_reg_2311 <= zext_ln26_1_fu_1504_p1;
        force_0_1_1_0_addr_reg_2316 <= zext_ln26_1_fu_1504_p1;
        force_0_1_1_1_addr_reg_2321 <= zext_ln26_1_fu_1504_p1;
        force_1_0_0_0_addr_reg_2326 <= zext_ln26_1_fu_1504_p1;
        force_1_0_0_1_addr_reg_2331 <= zext_ln26_1_fu_1504_p1;
        force_1_0_1_0_addr_reg_2336 <= zext_ln26_1_fu_1504_p1;
        force_1_0_1_1_addr_reg_2341 <= zext_ln26_1_fu_1504_p1;
        force_1_1_0_0_addr_reg_2346 <= zext_ln26_1_fu_1504_p1;
        force_1_1_0_1_addr_reg_2351 <= zext_ln26_1_fu_1504_p1;
        force_1_1_1_0_addr_reg_2356 <= zext_ln26_1_fu_1504_p1;
        force_1_1_1_1_addr_reg_2361 <= zext_ln26_1_fu_1504_p1;
        trunc_ln24_reg_2266 <= trunc_ln24_fu_1485_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln26_1_reg_2129 <= add_ln26_1_fu_1181_p2;
        cond70_reg_2139 <= cond70_fu_1217_p3;
        smax_cast_reg_2134[1 : 0] <= smax_cast_fu_1201_p1[1 : 0];
        tmp_11_reg_2144 <= tmp_11_fu_1271_p3;
        trunc_ln16_1_reg_2117 <= trunc_ln16_1_fu_1161_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln8_reg_2247 <= add_ln8_fu_1411_p2;
        q_idx_range_reg_2252 <= q_idx_range_fu_1463_p3;
        trunc_ln8_2_reg_2242 <= trunc_ln8_2_fu_1397_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        p_x_reg_2476 <= p_x_fu_1756_p1;
        p_y_reg_2481 <= p_y_fu_1771_p1;
        p_z_reg_2486 <= p_z_fu_1786_p1;
        sum_x_reg_2491 <= sum_x_fu_1800_p1;
        sum_y_reg_2496 <= sum_y_fu_1815_p1;
        sum_z_reg_2501 <= sum_z_fu_1830_p1;
        trunc_ln25_reg_2471 <= trunc_ln25_fu_1747_p1;
        trunc_ln34_3_reg_2511 <= {{select_ln25_14_fu_1742_p3[115:64]}};
        trunc_ln34_5_reg_2516 <= {{select_ln25_14_fu_1742_p3[179:128]}};
        trunc_ln34_reg_2506 <= trunc_ln34_fu_1835_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        select_ln25_13_reg_2456 <= select_ln25_13_fu_1637_p3;
        select_ln25_6_reg_2451 <= select_ln25_6_fu_1588_p3;
        select_ln26_13_reg_2466 <= select_ln26_13_fu_1735_p3;
        select_ln26_6_reg_2461 <= select_ln26_6_fu_1686_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_890_sum_x_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_1_loc_fu_206 <= grp_md_Pipeline_loop_q_fu_890_sum_x_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_890_sum_x_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_3_loc_fu_202 <= grp_md_Pipeline_loop_q_fu_890_sum_x_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_890_sum_y_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_1_loc_fu_210 <= grp_md_Pipeline_loop_q_fu_890_sum_y_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_890_sum_y_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_3_loc_fu_198 <= grp_md_Pipeline_loop_q_fu_890_sum_y_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_890_sum_z_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_1_loc_fu_214 <= grp_md_Pipeline_loop_q_fu_890_sum_z_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_890_sum_z_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_3_loc_fu_194 <= grp_md_Pipeline_loop_q_fu_890_sum_z_3_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        targetBlock_reg_2521 <= grp_md_Pipeline_loop_q_fu_890_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_17_reg_2178[3 : 1] <= tmp_17_fu_1341_p3[3 : 1];
        trunc_ln8_1_reg_2171 <= trunc_ln8_1_fu_1318_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        trunc_ln8_reg_2152 <= trunc_ln8_fu_1283_p1;
        zext_ln8_reg_2158[1] <= zext_ln8_fu_1303_p1[1];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_md_Pipeline_loop_q_fu_890_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln14_fu_964_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln14_fu_964_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_0_0_address0_local = force_0_0_0_0_addr_reg_2286;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_0_0_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_0_0_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_0_0_0_ce0_local = 1'b1;
    end else begin
        force_0_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd0) & (trunc_ln16_1_reg_2117 == 1'd0) & (trunc_ln15_1_reg_2028 == 1'd0) & (trunc_ln14_1_reg_1997 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_0_0_we0_local = 1'b1;
    end else begin
        force_0_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_0_1_address0_local = force_0_0_0_1_addr_reg_2291;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_0_1_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_0_0_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_0_0_1_ce0_local = 1'b1;
    end else begin
        force_0_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd1) & (trunc_ln16_1_reg_2117 == 1'd0) & (trunc_ln15_1_reg_2028 == 1'd0) & (trunc_ln14_1_reg_1997 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_0_1_we0_local = 1'b1;
    end else begin
        force_0_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_1_0_address0_local = force_0_0_1_0_addr_reg_2296;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_1_0_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_0_0_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_0_1_0_ce0_local = 1'b1;
    end else begin
        force_0_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd0) & (trunc_ln16_1_reg_2117 == 1'd1) & (trunc_ln15_1_reg_2028 == 1'd0) & (trunc_ln14_1_reg_1997 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_1_0_we0_local = 1'b1;
    end else begin
        force_0_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_1_1_address0_local = force_0_0_1_1_addr_reg_2301;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_1_1_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_0_0_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_0_1_1_ce0_local = 1'b1;
    end else begin
        force_0_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd1) & (trunc_ln16_1_reg_2117 == 1'd1) & (trunc_ln15_1_reg_2028 == 1'd0) & (trunc_ln14_1_reg_1997 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_1_1_we0_local = 1'b1;
    end else begin
        force_0_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_0_0_address0_local = force_0_1_0_0_addr_reg_2306;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_0_0_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_0_1_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_1_0_0_ce0_local = 1'b1;
    end else begin
        force_0_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd0) & (trunc_ln16_1_reg_2117 == 1'd0) & (trunc_ln15_1_reg_2028 == 1'd1) & (trunc_ln14_1_reg_1997 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_0_0_we0_local = 1'b1;
    end else begin
        force_0_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_0_1_address0_local = force_0_1_0_1_addr_reg_2311;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_0_1_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_0_1_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_1_0_1_ce0_local = 1'b1;
    end else begin
        force_0_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd1) & (trunc_ln16_1_reg_2117 == 1'd0) & (trunc_ln15_1_reg_2028 == 1'd1) & (trunc_ln14_1_reg_1997 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_0_1_we0_local = 1'b1;
    end else begin
        force_0_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_1_0_address0_local = force_0_1_1_0_addr_reg_2316;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_1_0_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_0_1_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_1_1_0_ce0_local = 1'b1;
    end else begin
        force_0_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd0) & (trunc_ln16_1_reg_2117 == 1'd1) & (trunc_ln15_1_reg_2028 == 1'd1) & (trunc_ln14_1_reg_1997 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_1_0_we0_local = 1'b1;
    end else begin
        force_0_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_1_1_address0_local = force_0_1_1_1_addr_reg_2321;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_1_1_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_0_1_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_1_1_1_ce0_local = 1'b1;
    end else begin
        force_0_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd1) & (trunc_ln16_1_reg_2117 == 1'd1) & (trunc_ln15_1_reg_2028 == 1'd1) & (trunc_ln14_1_reg_1997 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_1_1_we0_local = 1'b1;
    end else begin
        force_0_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_0_0_address0_local = force_1_0_0_0_addr_reg_2326;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_0_0_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_1_0_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_0_0_0_ce0_local = 1'b1;
    end else begin
        force_1_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd0) & (trunc_ln16_1_reg_2117 == 1'd0) & (trunc_ln15_1_reg_2028 == 1'd0) & (trunc_ln14_1_reg_1997 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_0_0_we0_local = 1'b1;
    end else begin
        force_1_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_0_1_address0_local = force_1_0_0_1_addr_reg_2331;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_0_1_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_1_0_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_0_0_1_ce0_local = 1'b1;
    end else begin
        force_1_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd1) & (trunc_ln16_1_reg_2117 == 1'd0) & (trunc_ln15_1_reg_2028 == 1'd0) & (trunc_ln14_1_reg_1997 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_0_1_we0_local = 1'b1;
    end else begin
        force_1_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_1_0_address0_local = force_1_0_1_0_addr_reg_2336;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_1_0_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_1_0_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_0_1_0_ce0_local = 1'b1;
    end else begin
        force_1_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd0) & (trunc_ln16_1_reg_2117 == 1'd1) & (trunc_ln15_1_reg_2028 == 1'd0) & (trunc_ln14_1_reg_1997 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_1_0_we0_local = 1'b1;
    end else begin
        force_1_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_1_1_address0_local = force_1_0_1_1_addr_reg_2341;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_1_1_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_1_0_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_0_1_1_ce0_local = 1'b1;
    end else begin
        force_1_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd1) & (trunc_ln16_1_reg_2117 == 1'd1) & (trunc_ln15_1_reg_2028 == 1'd0) & (trunc_ln14_1_reg_1997 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_1_1_we0_local = 1'b1;
    end else begin
        force_1_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_0_0_address0_local = force_1_1_0_0_addr_reg_2346;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_0_0_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_1_1_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_1_0_0_ce0_local = 1'b1;
    end else begin
        force_1_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd0) & (trunc_ln16_1_reg_2117 == 1'd0) & (trunc_ln15_1_reg_2028 == 1'd1) & (trunc_ln14_1_reg_1997 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_0_0_we0_local = 1'b1;
    end else begin
        force_1_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_0_1_address0_local = force_1_1_0_1_addr_reg_2351;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_0_1_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_1_1_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_1_0_1_ce0_local = 1'b1;
    end else begin
        force_1_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd1) & (trunc_ln16_1_reg_2117 == 1'd0) & (trunc_ln15_1_reg_2028 == 1'd1) & (trunc_ln14_1_reg_1997 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_0_1_we0_local = 1'b1;
    end else begin
        force_1_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_1_0_address0_local = force_1_1_1_0_addr_reg_2356;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_1_0_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_1_1_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_1_1_0_ce0_local = 1'b1;
    end else begin
        force_1_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd0) & (trunc_ln16_1_reg_2117 == 1'd1) & (trunc_ln15_1_reg_2028 == 1'd1) & (trunc_ln14_1_reg_1997 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_1_0_we0_local = 1'b1;
    end else begin
        force_1_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_1_1_address0_local = force_1_1_1_1_addr_reg_2361;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_1_1_address0_local = zext_ln26_1_fu_1504_p1;
    end else begin
        force_1_1_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_1_1_1_ce0_local = 1'b1;
    end else begin
        force_1_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_2266 == 1'd1) & (trunc_ln16_1_reg_2117 == 1'd1) & (trunc_ln15_1_reg_2028 == 1'd1) & (trunc_ln14_1_reg_1997 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_1_1_we0_local = 1'b1;
    end else begin
        force_1_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_0_0_0_address0_local = zext_ln23_2_fu_1379_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_0_0_address0_local = tmp_16_cast5_fu_1139_p1;
    end else begin
        n_points_0_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        n_points_0_0_0_ce0_local = 1'b1;
    end else begin
        n_points_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_0_0_1_address0_local = zext_ln23_2_fu_1379_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_0_1_address0_local = tmp_16_cast5_fu_1139_p1;
    end else begin
        n_points_0_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        n_points_0_0_1_ce0_local = 1'b1;
    end else begin
        n_points_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_0_1_0_address0_local = zext_ln23_2_fu_1379_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_1_0_address0_local = tmp_16_cast5_fu_1139_p1;
    end else begin
        n_points_0_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        n_points_0_1_0_ce0_local = 1'b1;
    end else begin
        n_points_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_0_1_1_address0_local = zext_ln23_2_fu_1379_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_1_1_address0_local = tmp_16_cast5_fu_1139_p1;
    end else begin
        n_points_0_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        n_points_0_1_1_ce0_local = 1'b1;
    end else begin
        n_points_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_1_0_0_address0_local = zext_ln23_2_fu_1379_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_0_0_address0_local = tmp_16_cast5_fu_1139_p1;
    end else begin
        n_points_1_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        n_points_1_0_0_ce0_local = 1'b1;
    end else begin
        n_points_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_1_0_1_address0_local = zext_ln23_2_fu_1379_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_0_1_address0_local = tmp_16_cast5_fu_1139_p1;
    end else begin
        n_points_1_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        n_points_1_0_1_ce0_local = 1'b1;
    end else begin
        n_points_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_1_1_0_address0_local = zext_ln23_2_fu_1379_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_1_0_address0_local = tmp_16_cast5_fu_1139_p1;
    end else begin
        n_points_1_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        n_points_1_1_0_ce0_local = 1'b1;
    end else begin
        n_points_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_1_1_1_address0_local = zext_ln23_2_fu_1379_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_1_1_address0_local = tmp_16_cast5_fu_1139_p1;
    end else begin
        n_points_1_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        n_points_1_1_1_ce0_local = 1'b1;
    end else begin
        n_points_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_0_address0 = grp_md_Pipeline_loop_q_fu_890_position_0_0_0_0_address0;
    end else begin
        position_0_0_0_0_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_0_ce0 = grp_md_Pipeline_loop_q_fu_890_position_0_0_0_0_ce0;
    end else begin
        position_0_0_0_0_ce0 = position_0_0_0_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_0_0_0_0_ce0_local = 1'b1;
    end else begin
        position_0_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_1_address0 = grp_md_Pipeline_loop_q_fu_890_position_0_0_0_1_address0;
    end else begin
        position_0_0_0_1_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_1_ce0 = grp_md_Pipeline_loop_q_fu_890_position_0_0_0_1_ce0;
    end else begin
        position_0_0_0_1_ce0 = position_0_0_0_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_0_0_0_1_ce0_local = 1'b1;
    end else begin
        position_0_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_0_address0 = grp_md_Pipeline_loop_q_fu_890_position_0_0_1_0_address0;
    end else begin
        position_0_0_1_0_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_0_ce0 = grp_md_Pipeline_loop_q_fu_890_position_0_0_1_0_ce0;
    end else begin
        position_0_0_1_0_ce0 = position_0_0_1_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_0_0_1_0_ce0_local = 1'b1;
    end else begin
        position_0_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_1_address0 = grp_md_Pipeline_loop_q_fu_890_position_0_0_1_1_address0;
    end else begin
        position_0_0_1_1_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_1_ce0 = grp_md_Pipeline_loop_q_fu_890_position_0_0_1_1_ce0;
    end else begin
        position_0_0_1_1_ce0 = position_0_0_1_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_0_0_1_1_ce0_local = 1'b1;
    end else begin
        position_0_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_0_address0 = grp_md_Pipeline_loop_q_fu_890_position_0_1_0_0_address0;
    end else begin
        position_0_1_0_0_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_0_ce0 = grp_md_Pipeline_loop_q_fu_890_position_0_1_0_0_ce0;
    end else begin
        position_0_1_0_0_ce0 = position_0_1_0_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_0_1_0_0_ce0_local = 1'b1;
    end else begin
        position_0_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_1_address0 = grp_md_Pipeline_loop_q_fu_890_position_0_1_0_1_address0;
    end else begin
        position_0_1_0_1_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_1_ce0 = grp_md_Pipeline_loop_q_fu_890_position_0_1_0_1_ce0;
    end else begin
        position_0_1_0_1_ce0 = position_0_1_0_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_0_1_0_1_ce0_local = 1'b1;
    end else begin
        position_0_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_0_address0 = grp_md_Pipeline_loop_q_fu_890_position_0_1_1_0_address0;
    end else begin
        position_0_1_1_0_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_0_ce0 = grp_md_Pipeline_loop_q_fu_890_position_0_1_1_0_ce0;
    end else begin
        position_0_1_1_0_ce0 = position_0_1_1_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_0_1_1_0_ce0_local = 1'b1;
    end else begin
        position_0_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_1_address0 = grp_md_Pipeline_loop_q_fu_890_position_0_1_1_1_address0;
    end else begin
        position_0_1_1_1_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_1_ce0 = grp_md_Pipeline_loop_q_fu_890_position_0_1_1_1_ce0;
    end else begin
        position_0_1_1_1_ce0 = position_0_1_1_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_0_1_1_1_ce0_local = 1'b1;
    end else begin
        position_0_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_0_address0 = grp_md_Pipeline_loop_q_fu_890_position_1_0_0_0_address0;
    end else begin
        position_1_0_0_0_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_0_ce0 = grp_md_Pipeline_loop_q_fu_890_position_1_0_0_0_ce0;
    end else begin
        position_1_0_0_0_ce0 = position_1_0_0_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_1_0_0_0_ce0_local = 1'b1;
    end else begin
        position_1_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_1_address0 = grp_md_Pipeline_loop_q_fu_890_position_1_0_0_1_address0;
    end else begin
        position_1_0_0_1_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_1_ce0 = grp_md_Pipeline_loop_q_fu_890_position_1_0_0_1_ce0;
    end else begin
        position_1_0_0_1_ce0 = position_1_0_0_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_1_0_0_1_ce0_local = 1'b1;
    end else begin
        position_1_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_0_address0 = grp_md_Pipeline_loop_q_fu_890_position_1_0_1_0_address0;
    end else begin
        position_1_0_1_0_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_0_ce0 = grp_md_Pipeline_loop_q_fu_890_position_1_0_1_0_ce0;
    end else begin
        position_1_0_1_0_ce0 = position_1_0_1_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_1_0_1_0_ce0_local = 1'b1;
    end else begin
        position_1_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_1_address0 = grp_md_Pipeline_loop_q_fu_890_position_1_0_1_1_address0;
    end else begin
        position_1_0_1_1_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_1_ce0 = grp_md_Pipeline_loop_q_fu_890_position_1_0_1_1_ce0;
    end else begin
        position_1_0_1_1_ce0 = position_1_0_1_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_1_0_1_1_ce0_local = 1'b1;
    end else begin
        position_1_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_0_address0 = grp_md_Pipeline_loop_q_fu_890_position_1_1_0_0_address0;
    end else begin
        position_1_1_0_0_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_0_ce0 = grp_md_Pipeline_loop_q_fu_890_position_1_1_0_0_ce0;
    end else begin
        position_1_1_0_0_ce0 = position_1_1_0_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_1_1_0_0_ce0_local = 1'b1;
    end else begin
        position_1_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_1_address0 = grp_md_Pipeline_loop_q_fu_890_position_1_1_0_1_address0;
    end else begin
        position_1_1_0_1_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_1_ce0 = grp_md_Pipeline_loop_q_fu_890_position_1_1_0_1_ce0;
    end else begin
        position_1_1_0_1_ce0 = position_1_1_0_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_1_1_0_1_ce0_local = 1'b1;
    end else begin
        position_1_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_0_address0 = grp_md_Pipeline_loop_q_fu_890_position_1_1_1_0_address0;
    end else begin
        position_1_1_1_0_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_0_ce0 = grp_md_Pipeline_loop_q_fu_890_position_1_1_1_0_ce0;
    end else begin
        position_1_1_1_0_ce0 = position_1_1_1_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_1_1_1_0_ce0_local = 1'b1;
    end else begin
        position_1_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_1_address0 = grp_md_Pipeline_loop_q_fu_890_position_1_1_1_1_address0;
    end else begin
        position_1_1_1_1_address0 = zext_ln26_1_fu_1504_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_1_ce0 = grp_md_Pipeline_loop_q_fu_890_position_1_1_1_1_ce0;
    end else begin
        position_1_1_1_1_ce0 = position_1_1_1_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_1_1_1_1_ce0_local = 1'b1;
    end else begin
        position_1_1_1_1_ce0_local = 1'b0;
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
            if (((icmp_ln14_fu_964_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln15_fu_1030_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_1111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln18_fu_1278_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_1313_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln20_fu_1355_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln24_fu_1474_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_md_Pipeline_loop_q_fu_890_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln14_1_fu_1096_p2 = (indvars_iv72_fu_186 + 3'd1);
assign add_ln14_fu_970_p2 = (b0_x_fu_190 + 3'd1);
assign add_ln15_1_fu_1151_p2 = (indvars_iv67_reg_813 + 3'd1);
assign add_ln15_fu_1036_p2 = (b0_y_reg_802 + 3'd1);
assign add_ln16_1_fu_1307_p2 = (indvars_iv63_reg_837 + 3'd1);
assign add_ln16_fu_1117_p2 = (b0_z_reg_825 + 3'd1);
assign add_ln18_fu_1349_p2 = (b1_x_reg_849 + 3'd1);
assign add_ln19_fu_1391_p2 = (b1_y_reg_859 + 3'd1);
assign add_ln20_fu_1540_p2 = (b1_z_reg_869 + 3'd1);
assign add_ln23_1_fu_1374_p2 = (tmp_17_reg_2178 + zext_ln23_1_fu_1370_p1);
assign add_ln23_fu_1336_p2 = (zext_ln8_reg_2158 + zext_ln23_fu_1332_p1);
assign add_ln24_fu_1479_p2 = (p_idx_reg_879 + 31'd1);
assign add_ln26_1_fu_1181_p2 = (zext_ln26_fu_1177_p1 + tmp_16_cast_fu_1165_p1);
assign add_ln26_fu_1499_p2 = (add_ln26_1_reg_2129 + lshr_ln_fu_1489_p4);
assign add_ln8_fu_1411_p2 = (tmp_18_fu_1404_p3 + zext_ln8_1_fu_1401_p1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln49_fu_1901_p1 = select_ln30_fu_1880_p3;
assign bitcast_ln50_fu_1905_p1 = select_ln30_1_fu_1887_p3;
assign bitcast_ln51_fu_1909_p1 = select_ln30_2_fu_1894_p3;
assign cmp18_fu_1016_p2 = ((empty_26_fu_1010_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp41_fu_1082_p2 = ((empty_28_fu_1076_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp64_fu_1211_p2 = ((empty_30_fu_1205_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cond24_fu_1022_p3 = ((cmp18_fu_1016_p2[0:0] == 1'b1) ? 3'd4 : empty_26_fu_1010_p2);
assign cond47_fu_1088_p3 = ((cmp41_fu_1082_p2[0:0] == 1'b1) ? 3'd4 : empty_28_fu_1076_p2);
assign cond70_fu_1217_p3 = ((cmp64_fu_1211_p2[0:0] == 1'b1) ? 3'd4 : empty_30_fu_1205_p2);
assign empty_26_fu_1010_p2 = (b0_x_fu_190 + 3'd2);
assign empty_27_fu_1058_p2 = (($signed(indvars_iv67_reg_813) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_28_fu_1076_p2 = (b0_y_reg_802 + 3'd2);
assign empty_29_fu_1187_p2 = (($signed(indvars_iv63_reg_837) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_30_fu_1205_p2 = (b0_z_reg_825 + 3'd2);
assign empty_fu_992_p2 = (($signed(indvars_iv72_fu_186) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign force_0_0_0_0_address0 = force_0_0_0_0_address0_local;
assign force_0_0_0_0_ce0 = force_0_0_0_0_ce0_local;
assign force_0_0_0_0_d0 = or_ln_fu_1913_p4;
assign force_0_0_0_0_we0 = force_0_0_0_0_we0_local;
assign force_0_0_0_1_address0 = force_0_0_0_1_address0_local;
assign force_0_0_0_1_ce0 = force_0_0_0_1_ce0_local;
assign force_0_0_0_1_d0 = or_ln_fu_1913_p4;
assign force_0_0_0_1_we0 = force_0_0_0_1_we0_local;
assign force_0_0_1_0_address0 = force_0_0_1_0_address0_local;
assign force_0_0_1_0_ce0 = force_0_0_1_0_ce0_local;
assign force_0_0_1_0_d0 = or_ln_fu_1913_p4;
assign force_0_0_1_0_we0 = force_0_0_1_0_we0_local;
assign force_0_0_1_1_address0 = force_0_0_1_1_address0_local;
assign force_0_0_1_1_ce0 = force_0_0_1_1_ce0_local;
assign force_0_0_1_1_d0 = or_ln_fu_1913_p4;
assign force_0_0_1_1_we0 = force_0_0_1_1_we0_local;
assign force_0_1_0_0_address0 = force_0_1_0_0_address0_local;
assign force_0_1_0_0_ce0 = force_0_1_0_0_ce0_local;
assign force_0_1_0_0_d0 = or_ln_fu_1913_p4;
assign force_0_1_0_0_we0 = force_0_1_0_0_we0_local;
assign force_0_1_0_1_address0 = force_0_1_0_1_address0_local;
assign force_0_1_0_1_ce0 = force_0_1_0_1_ce0_local;
assign force_0_1_0_1_d0 = or_ln_fu_1913_p4;
assign force_0_1_0_1_we0 = force_0_1_0_1_we0_local;
assign force_0_1_1_0_address0 = force_0_1_1_0_address0_local;
assign force_0_1_1_0_ce0 = force_0_1_1_0_ce0_local;
assign force_0_1_1_0_d0 = or_ln_fu_1913_p4;
assign force_0_1_1_0_we0 = force_0_1_1_0_we0_local;
assign force_0_1_1_1_address0 = force_0_1_1_1_address0_local;
assign force_0_1_1_1_ce0 = force_0_1_1_1_ce0_local;
assign force_0_1_1_1_d0 = or_ln_fu_1913_p4;
assign force_0_1_1_1_we0 = force_0_1_1_1_we0_local;
assign force_1_0_0_0_address0 = force_1_0_0_0_address0_local;
assign force_1_0_0_0_ce0 = force_1_0_0_0_ce0_local;
assign force_1_0_0_0_d0 = or_ln_fu_1913_p4;
assign force_1_0_0_0_we0 = force_1_0_0_0_we0_local;
assign force_1_0_0_1_address0 = force_1_0_0_1_address0_local;
assign force_1_0_0_1_ce0 = force_1_0_0_1_ce0_local;
assign force_1_0_0_1_d0 = or_ln_fu_1913_p4;
assign force_1_0_0_1_we0 = force_1_0_0_1_we0_local;
assign force_1_0_1_0_address0 = force_1_0_1_0_address0_local;
assign force_1_0_1_0_ce0 = force_1_0_1_0_ce0_local;
assign force_1_0_1_0_d0 = or_ln_fu_1913_p4;
assign force_1_0_1_0_we0 = force_1_0_1_0_we0_local;
assign force_1_0_1_1_address0 = force_1_0_1_1_address0_local;
assign force_1_0_1_1_ce0 = force_1_0_1_1_ce0_local;
assign force_1_0_1_1_d0 = or_ln_fu_1913_p4;
assign force_1_0_1_1_we0 = force_1_0_1_1_we0_local;
assign force_1_1_0_0_address0 = force_1_1_0_0_address0_local;
assign force_1_1_0_0_ce0 = force_1_1_0_0_ce0_local;
assign force_1_1_0_0_d0 = or_ln_fu_1913_p4;
assign force_1_1_0_0_we0 = force_1_1_0_0_we0_local;
assign force_1_1_0_1_address0 = force_1_1_0_1_address0_local;
assign force_1_1_0_1_ce0 = force_1_1_0_1_ce0_local;
assign force_1_1_0_1_d0 = or_ln_fu_1913_p4;
assign force_1_1_0_1_we0 = force_1_1_0_1_we0_local;
assign force_1_1_1_0_address0 = force_1_1_1_0_address0_local;
assign force_1_1_1_0_ce0 = force_1_1_1_0_ce0_local;
assign force_1_1_1_0_d0 = or_ln_fu_1913_p4;
assign force_1_1_1_0_we0 = force_1_1_1_0_we0_local;
assign force_1_1_1_1_address0 = force_1_1_1_1_address0_local;
assign force_1_1_1_1_ce0 = force_1_1_1_1_ce0_local;
assign force_1_1_1_1_d0 = or_ln_fu_1913_p4;
assign force_1_1_1_1_we0 = force_1_1_1_1_we0_local;
assign grp_md_Pipeline_loop_q_fu_890_ap_start = grp_md_Pipeline_loop_q_fu_890_ap_start_reg;
assign icmp_ln14_fu_964_p2 = ((b0_x_fu_190 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_1030_p2 = ((b0_y_reg_802 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1111_p2 = ((b0_z_reg_825 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_1278_p2 = ((b1_x_reg_849 < cond24_reg_2015) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_1313_p2 = ((b1_y_reg_859 < cond47_reg_2049) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_1355_p2 = ((b1_z_reg_869 < cond70_reg_2139) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_1474_p2 = (($signed(zext_ln24_fu_1470_p1) < $signed(tmp_11_reg_2144)) ? 1'b1 : 1'b0);
assign lshr_ln8_4_fu_1322_p4 = {{b1_y_reg_859[2:1]}};
assign lshr_ln8_5_fu_1360_p4 = {{b1_z_reg_869[2:1]}};
assign lshr_ln_fu_1489_p4 = {{p_idx_reg_879[6:1]}};
assign n_points_0_0_0_address0 = n_points_0_0_0_address0_local;
assign n_points_0_0_0_ce0 = n_points_0_0_0_ce0_local;
assign n_points_0_0_1_address0 = n_points_0_0_1_address0_local;
assign n_points_0_0_1_ce0 = n_points_0_0_1_ce0_local;
assign n_points_0_1_0_address0 = n_points_0_1_0_address0_local;
assign n_points_0_1_0_ce0 = n_points_0_1_0_ce0_local;
assign n_points_0_1_1_address0 = n_points_0_1_1_address0_local;
assign n_points_0_1_1_ce0 = n_points_0_1_1_ce0_local;
assign n_points_1_0_0_address0 = n_points_1_0_0_address0_local;
assign n_points_1_0_0_ce0 = n_points_1_0_0_ce0_local;
assign n_points_1_0_1_address0 = n_points_1_0_1_address0_local;
assign n_points_1_0_1_ce0 = n_points_1_0_1_ce0_local;
assign n_points_1_1_0_address0 = n_points_1_1_0_address0_local;
assign n_points_1_1_0_ce0 = n_points_1_1_0_ce0_local;
assign n_points_1_1_1_address0 = n_points_1_1_1_address0_local;
assign n_points_1_1_1_ce0 = n_points_1_1_1_ce0_local;
assign or_ln_fu_1913_p4 = {{{bitcast_ln51_fu_1909_p1}, {bitcast_ln50_fu_1905_p1}}, {bitcast_ln49_fu_1901_p1}};
assign p_x_fu_1756_p1 = trunc_ln25_3_fu_1752_p1;
assign p_y_fu_1771_p1 = trunc_ln25_1_fu_1761_p4;
assign p_z_fu_1786_p1 = trunc_ln25_2_fu_1776_p4;
assign q_idx_range_fu_1463_p3 = ((trunc_ln8_reg_2152[0:0] == 1'b1) ? select_ln23_5_fu_1456_p3 : select_ln23_2_fu_1433_p3);
assign select_ln23_1_fu_1425_p3 = ((trunc_ln8_2_fu_1397_p1[0:0] == 1'b1) ? n_points_0_1_1_q0 : n_points_0_1_0_q0);
assign select_ln23_2_fu_1433_p3 = ((trunc_ln8_1_reg_2171[0:0] == 1'b1) ? select_ln23_1_fu_1425_p3 : select_ln23_fu_1417_p3);
assign select_ln23_3_fu_1440_p3 = ((trunc_ln8_2_fu_1397_p1[0:0] == 1'b1) ? n_points_1_0_1_q0 : n_points_1_0_0_q0);
assign select_ln23_4_fu_1448_p3 = ((trunc_ln8_2_fu_1397_p1[0:0] == 1'b1) ? n_points_1_1_1_q0 : n_points_1_1_0_q0);
assign select_ln23_5_fu_1456_p3 = ((trunc_ln8_1_reg_2171[0:0] == 1'b1) ? select_ln23_4_fu_1448_p3 : select_ln23_3_fu_1440_p3);
assign select_ln23_fu_1417_p3 = ((trunc_ln8_2_fu_1397_p1[0:0] == 1'b1) ? n_points_0_0_1_q0 : n_points_0_0_0_q0);
assign select_ln25_10_fu_1616_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? position_1_1_0_1_q0 : position_1_1_0_0_q0);
assign select_ln25_11_fu_1623_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? position_1_1_1_1_q0 : position_1_1_1_0_q0);
assign select_ln25_12_fu_1630_p3 = ((trunc_ln16_1_reg_2117[0:0] == 1'b1) ? select_ln25_11_fu_1623_p3 : select_ln25_10_fu_1616_p3);
assign select_ln25_13_fu_1637_p3 = ((trunc_ln15_1_reg_2028[0:0] == 1'b1) ? select_ln25_12_fu_1630_p3 : select_ln25_9_fu_1609_p3);
assign select_ln25_14_fu_1742_p3 = ((trunc_ln14_1_reg_1997[0:0] == 1'b1) ? select_ln25_13_reg_2456 : select_ln25_6_reg_2451);
assign select_ln25_1_fu_1553_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? position_0_0_1_1_q0 : position_0_0_1_0_q0);
assign select_ln25_2_fu_1560_p3 = ((trunc_ln16_1_reg_2117[0:0] == 1'b1) ? select_ln25_1_fu_1553_p3 : select_ln25_fu_1546_p3);
assign select_ln25_3_fu_1567_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? position_0_1_0_1_q0 : position_0_1_0_0_q0);
assign select_ln25_4_fu_1574_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? position_0_1_1_1_q0 : position_0_1_1_0_q0);
assign select_ln25_5_fu_1581_p3 = ((trunc_ln16_1_reg_2117[0:0] == 1'b1) ? select_ln25_4_fu_1574_p3 : select_ln25_3_fu_1567_p3);
assign select_ln25_6_fu_1588_p3 = ((trunc_ln15_1_reg_2028[0:0] == 1'b1) ? select_ln25_5_fu_1581_p3 : select_ln25_2_fu_1560_p3);
assign select_ln25_7_fu_1595_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? position_1_0_0_1_q0 : position_1_0_0_0_q0);
assign select_ln25_8_fu_1602_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? position_1_0_1_1_q0 : position_1_0_1_0_q0);
assign select_ln25_9_fu_1609_p3 = ((trunc_ln16_1_reg_2117[0:0] == 1'b1) ? select_ln25_8_fu_1602_p3 : select_ln25_7_fu_1595_p3);
assign select_ln25_fu_1546_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? position_0_0_0_1_q0 : position_0_0_0_0_q0);
assign select_ln26_10_fu_1714_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? force_1_1_0_1_q0 : force_1_1_0_0_q0);
assign select_ln26_11_fu_1721_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? force_1_1_1_1_q0 : force_1_1_1_0_q0);
assign select_ln26_12_fu_1728_p3 = ((trunc_ln16_1_reg_2117[0:0] == 1'b1) ? select_ln26_11_fu_1721_p3 : select_ln26_10_fu_1714_p3);
assign select_ln26_13_fu_1735_p3 = ((trunc_ln15_1_reg_2028[0:0] == 1'b1) ? select_ln26_12_fu_1728_p3 : select_ln26_9_fu_1707_p3);
assign select_ln26_14_fu_1791_p3 = ((trunc_ln14_1_reg_1997[0:0] == 1'b1) ? select_ln26_13_reg_2466 : select_ln26_6_reg_2461);
assign select_ln26_1_fu_1651_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? force_0_0_1_1_q0 : force_0_0_1_0_q0);
assign select_ln26_2_fu_1658_p3 = ((trunc_ln16_1_reg_2117[0:0] == 1'b1) ? select_ln26_1_fu_1651_p3 : select_ln26_fu_1644_p3);
assign select_ln26_3_fu_1665_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? force_0_1_0_1_q0 : force_0_1_0_0_q0);
assign select_ln26_4_fu_1672_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? force_0_1_1_1_q0 : force_0_1_1_0_q0);
assign select_ln26_5_fu_1679_p3 = ((trunc_ln16_1_reg_2117[0:0] == 1'b1) ? select_ln26_4_fu_1672_p3 : select_ln26_3_fu_1665_p3);
assign select_ln26_6_fu_1686_p3 = ((trunc_ln15_1_reg_2028[0:0] == 1'b1) ? select_ln26_5_fu_1679_p3 : select_ln26_2_fu_1658_p3);
assign select_ln26_7_fu_1693_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? force_1_0_0_1_q0 : force_1_0_0_0_q0);
assign select_ln26_8_fu_1700_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? force_1_0_1_1_q0 : force_1_0_1_0_q0);
assign select_ln26_9_fu_1707_p3 = ((trunc_ln16_1_reg_2117[0:0] == 1'b1) ? select_ln26_8_fu_1700_p3 : select_ln26_7_fu_1693_p3);
assign select_ln26_fu_1644_p3 = ((trunc_ln24_reg_2266[0:0] == 1'b1) ? force_0_0_0_1_q0 : force_0_0_0_0_q0);
assign select_ln30_1_fu_1887_p3 = ((targetBlock_reg_2521[0:0] == 1'b1) ? sum_y_1_loc_fu_210 : sum_y_3_loc_fu_198);
assign select_ln30_2_fu_1894_p3 = ((targetBlock_reg_2521[0:0] == 1'b1) ? sum_z_1_loc_fu_214 : sum_z_3_loc_fu_194);
assign select_ln30_fu_1880_p3 = ((targetBlock_reg_2521[0:0] == 1'b1) ? sum_x_1_loc_fu_206 : sum_x_3_loc_fu_202);
assign smax69_cast_fu_1072_p1 = smax69_fu_1064_p3;
assign smax69_fu_1064_p3 = ((empty_27_fu_1058_p2[0:0] == 1'b1) ? trunc_ln15_fu_1042_p1 : 2'd0);
assign smax74_cast_fu_1006_p1 = smax74_fu_998_p3;
assign smax74_fu_998_p3 = ((empty_fu_992_p2[0:0] == 1'b1) ? trunc_ln14_fu_976_p1 : 2'd0);
assign smax_cast_fu_1201_p1 = smax_fu_1193_p3;
assign smax_fu_1193_p3 = ((empty_29_fu_1187_p2[0:0] == 1'b1) ? trunc_ln16_fu_1157_p1 : 2'd0);
assign sum_x_fu_1800_p1 = trunc_ln26_fu_1796_p1;
assign sum_y_fu_1815_p1 = trunc_ln4_fu_1805_p4;
assign sum_z_fu_1830_p1 = trunc_ln5_fu_1820_p4;
assign tmp_10_fu_1264_p3 = ((trunc_ln15_1_reg_2028[0:0] == 1'b1) ? tmp_6_fu_1256_p3 : tmp_s_fu_1248_p3);
assign tmp_11_fu_1271_p3 = ((trunc_ln14_1_reg_1997[0:0] == 1'b1) ? tmp_10_fu_1264_p3 : tmp_9_fu_1241_p3);
assign tmp_13_fu_1123_p3 = b0_z_reg_825[32'd1];
assign tmp_14_fu_1168_p5 = {{{{tmp_reg_2004}, {tmp_12_reg_2038}}, {tmp_13_reg_2062}}, {2'd0}};
assign tmp_15_fu_1287_p3 = b1_x_reg_849[32'd1];
assign tmp_16_cast5_fu_1139_p1 = tmp_16_fu_1131_p4;
assign tmp_16_cast_fu_1165_p1 = tmp_16_reg_2067;
assign tmp_16_fu_1131_p4 = {{{tmp_reg_2004}, {tmp_12_reg_2038}}, {tmp_13_fu_1123_p3}};
assign tmp_17_fu_1341_p3 = {{add_ln23_fu_1336_p2}, {1'd0}};
assign tmp_18_fu_1404_p3 = {{add_ln23_1_reg_2191}, {2'd0}};
assign tmp_19_fu_1295_p3 = {{tmp_15_fu_1287_p3}, {1'd0}};
assign tmp_6_fu_1256_p3 = ((trunc_ln16_1_fu_1161_p1[0:0] == 1'b1) ? n_points_1_1_1_q0 : n_points_1_1_0_q0);
assign tmp_7_fu_1225_p3 = ((trunc_ln16_1_fu_1161_p1[0:0] == 1'b1) ? n_points_0_0_1_q0 : n_points_0_0_0_q0);
assign tmp_8_fu_1233_p3 = ((trunc_ln16_1_fu_1161_p1[0:0] == 1'b1) ? n_points_0_1_1_q0 : n_points_0_1_0_q0);
assign tmp_9_fu_1241_p3 = ((trunc_ln15_1_reg_2028[0:0] == 1'b1) ? tmp_8_fu_1233_p3 : tmp_7_fu_1225_p3);
assign tmp_s_fu_1248_p3 = ((trunc_ln16_1_fu_1161_p1[0:0] == 1'b1) ? n_points_1_0_1_q0 : n_points_1_0_0_q0);
assign trunc_ln14_1_fu_980_p1 = b0_x_fu_190[0:0];
assign trunc_ln14_fu_976_p1 = indvars_iv72_fu_186[1:0];
assign trunc_ln15_1_fu_1046_p1 = b0_y_reg_802[0:0];
assign trunc_ln15_fu_1042_p1 = indvars_iv67_reg_813[1:0];
assign trunc_ln16_1_fu_1161_p1 = b0_z_reg_825[0:0];
assign trunc_ln16_fu_1157_p1 = indvars_iv63_reg_837[1:0];
assign trunc_ln24_fu_1485_p1 = p_idx_reg_879[0:0];
assign trunc_ln25_1_fu_1761_p4 = {{select_ln25_14_fu_1742_p3[127:64]}};
assign trunc_ln25_2_fu_1776_p4 = {{select_ln25_14_fu_1742_p3[191:128]}};
assign trunc_ln25_3_fu_1752_p1 = select_ln25_14_fu_1742_p3[63:0];
assign trunc_ln25_fu_1747_p1 = select_ln25_14_fu_1742_p3[190:0];
assign trunc_ln26_fu_1796_p1 = select_ln26_14_fu_1791_p3[63:0];
assign trunc_ln34_fu_1835_p1 = select_ln25_14_fu_1742_p3[51:0];
assign trunc_ln4_fu_1805_p4 = {{select_ln26_14_fu_1791_p3[127:64]}};
assign trunc_ln5_fu_1820_p4 = {{select_ln26_14_fu_1791_p3[191:128]}};
assign trunc_ln8_1_fu_1318_p1 = b1_y_reg_859[0:0];
assign trunc_ln8_2_fu_1397_p1 = b1_z_reg_869[0:0];
assign trunc_ln8_fu_1283_p1 = b1_x_reg_849[0:0];
assign zext_ln23_1_fu_1370_p1 = lshr_ln8_5_fu_1360_p4;
assign zext_ln23_2_fu_1379_p1 = add_ln23_1_fu_1374_p2;
assign zext_ln23_fu_1332_p1 = lshr_ln8_4_fu_1322_p4;
assign zext_ln24_fu_1470_p1 = p_idx_reg_879;
assign zext_ln26_1_fu_1504_p1 = add_ln26_fu_1499_p2;
assign zext_ln26_fu_1177_p1 = tmp_14_fu_1168_p5;
assign zext_ln8_1_fu_1401_p1 = add_ln23_1_reg_2191;
assign zext_ln8_fu_1303_p1 = tmp_19_fu_1295_p3;
always @ (posedge ap_clk) begin
    smax74_cast_reg_2010[2] <= 1'b0;
    smax69_cast_reg_2044[2] <= 1'b0;
    smax_cast_reg_2134[2] <= 1'b0;
    zext_ln8_reg_2158[0] <= 1'b0;
    zext_ln8_reg_2158[2] <= 1'b0;
    tmp_17_reg_2178[0] <= 1'b0;
end
endmodule 
