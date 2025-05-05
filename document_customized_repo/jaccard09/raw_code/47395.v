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
wire   [2:0] add_ln14_fu_954_p2;
reg   [2:0] add_ln14_reg_1930;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln14_1_fu_964_p1;
reg   [0:0] trunc_ln14_1_reg_1935;
reg   [0:0] tmp_reg_1942;
wire   [2:0] smax73_cast_fu_990_p1;
reg   [2:0] smax73_cast_reg_1948;
wire   [2:0] cond24_fu_1006_p3;
reg   [2:0] cond24_reg_1953;
wire   [2:0] add_ln15_fu_1020_p2;
reg   [2:0] add_ln15_reg_1961;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln15_1_fu_1030_p1;
reg   [0:0] trunc_ln15_1_reg_1966;
reg   [0:0] tmp_12_reg_1976;
wire   [2:0] smax68_cast_fu_1056_p1;
reg   [2:0] smax68_cast_reg_1982;
wire   [2:0] cond47_fu_1072_p3;
reg   [2:0] cond47_reg_1987;
wire   [2:0] add_ln16_fu_1101_p2;
reg   [2:0] add_ln16_reg_1995;
wire    ap_CS_fsm_state4;
wire   [5:0] add_ln26_1_fu_1153_p2;
reg   [5:0] add_ln26_1_reg_2040;
wire   [2:0] add_ln15_1_fu_1159_p2;
wire   [0:0] trunc_ln16_1_fu_1169_p1;
reg   [0:0] trunc_ln16_1_reg_2050;
wire    ap_CS_fsm_state5;
wire   [2:0] smax_cast_fu_1187_p1;
reg   [2:0] smax_cast_reg_2062;
wire   [2:0] cond70_fu_1203_p3;
reg   [2:0] cond70_reg_2067;
wire   [31:0] tmp_11_fu_1257_p3;
reg   [31:0] tmp_11_reg_2072;
wire   [0:0] trunc_ln8_fu_1269_p1;
reg   [0:0] trunc_ln8_reg_2080;
wire    ap_CS_fsm_state6;
wire   [2:0] zext_ln8_fu_1289_p1;
reg   [2:0] zext_ln8_reg_2086;
wire   [2:0] add_ln16_1_fu_1293_p2;
wire   [0:0] trunc_ln8_1_fu_1304_p1;
reg   [0:0] trunc_ln8_1_reg_2099;
wire    ap_CS_fsm_state7;
wire   [3:0] tmp_18_fu_1327_p3;
reg   [3:0] tmp_18_reg_2106;
wire   [2:0] add_ln18_fu_1335_p2;
wire   [3:0] add_ln23_1_fu_1360_p2;
reg   [3:0] add_ln23_1_reg_2119;
wire    ap_CS_fsm_state8;
wire   [2:0] add_ln19_fu_1377_p2;
wire   [0:0] trunc_ln8_2_fu_1383_p1;
reg   [0:0] trunc_ln8_2_reg_2170;
wire    ap_CS_fsm_state9;
wire   [5:0] add_ln8_fu_1397_p2;
reg   [5:0] add_ln8_reg_2175;
wire   [31:0] q_idx_range_fu_1449_p3;
reg   [31:0] q_idx_range_reg_2180;
wire   [30:0] add_ln24_fu_1465_p2;
reg   [30:0] add_ln24_reg_2188;
wire    ap_CS_fsm_state10;
wire   [0:0] trunc_ln24_fu_1471_p1;
reg   [0:0] trunc_ln24_reg_2193;
reg   [5:0] force_0_0_0_0_addr_reg_2213;
reg   [5:0] force_0_0_0_1_addr_reg_2218;
reg   [5:0] force_0_0_1_0_addr_reg_2223;
reg   [5:0] force_0_0_1_1_addr_reg_2228;
reg   [5:0] force_0_1_0_0_addr_reg_2233;
reg   [5:0] force_0_1_0_1_addr_reg_2238;
reg   [5:0] force_0_1_1_0_addr_reg_2243;
reg   [5:0] force_0_1_1_1_addr_reg_2248;
reg   [5:0] force_1_0_0_0_addr_reg_2253;
reg   [5:0] force_1_0_0_1_addr_reg_2258;
reg   [5:0] force_1_0_1_0_addr_reg_2263;
reg   [5:0] force_1_0_1_1_addr_reg_2268;
reg   [5:0] force_1_1_0_0_addr_reg_2273;
reg   [5:0] force_1_1_0_1_addr_reg_2278;
reg   [5:0] force_1_1_1_0_addr_reg_2283;
reg   [5:0] force_1_1_1_1_addr_reg_2288;
wire   [2:0] add_ln20_fu_1526_p2;
wire   [191:0] select_ln25_6_fu_1574_p3;
reg   [191:0] select_ln25_6_reg_2378;
wire    ap_CS_fsm_state11;
wire   [191:0] select_ln25_13_fu_1623_p3;
reg   [191:0] select_ln25_13_reg_2383;
wire   [191:0] select_ln26_6_fu_1672_p3;
reg   [191:0] select_ln26_6_reg_2388;
wire   [191:0] select_ln26_13_fu_1721_p3;
reg   [191:0] select_ln26_13_reg_2393;
wire   [190:0] trunc_ln25_fu_1733_p1;
reg   [190:0] trunc_ln25_reg_2398;
wire    ap_CS_fsm_state12;
wire   [63:0] p_x_fu_1742_p1;
reg   [63:0] p_x_reg_2403;
wire   [63:0] p_y_fu_1757_p1;
reg   [63:0] p_y_reg_2408;
wire   [63:0] p_z_fu_1772_p1;
reg   [63:0] p_z_reg_2413;
wire   [63:0] sum_x_fu_1786_p1;
reg   [63:0] sum_x_reg_2418;
wire   [63:0] sum_y_fu_1801_p1;
reg   [63:0] sum_y_reg_2423;
wire   [63:0] sum_z_fu_1816_p1;
reg   [63:0] sum_z_reg_2428;
wire   [51:0] trunc_ln34_fu_1821_p1;
reg   [51:0] trunc_ln34_reg_2433;
reg   [51:0] trunc_ln34_3_reg_2438;
reg   [51:0] trunc_ln34_5_reg_2443;
wire    grp_md_Pipeline_loop_q_fu_878_ap_start;
wire    grp_md_Pipeline_loop_q_fu_878_ap_done;
wire    grp_md_Pipeline_loop_q_fu_878_ap_idle;
wire    grp_md_Pipeline_loop_q_fu_878_ap_ready;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_0_0_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_0_0_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_0_0_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_0_0_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_0_0_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_0_0_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_0_0_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_0_0_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_0_1_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_0_1_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_0_1_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_0_1_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_0_1_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_0_1_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_0_1_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_0_1_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_1_0_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_1_0_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_1_0_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_1_0_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_1_0_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_1_0_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_1_0_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_1_0_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_1_1_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_1_1_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_1_1_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_1_1_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_1_1_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_1_1_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_878_position_1_1_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_878_position_1_1_1_1_ce0;
wire   [63:0] grp_md_Pipeline_loop_q_fu_878_sum_z_2_out;
wire    grp_md_Pipeline_loop_q_fu_878_sum_z_2_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_878_sum_y_2_out;
wire    grp_md_Pipeline_loop_q_fu_878_sum_y_2_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_878_sum_x_2_out;
wire    grp_md_Pipeline_loop_q_fu_878_sum_x_2_out_ap_vld;
reg   [2:0] b0_y_reg_790;
wire   [0:0] icmp_ln14_fu_948_p2;
wire   [0:0] icmp_ln16_fu_1095_p2;
reg   [2:0] indvars_iv66_reg_801;
reg   [2:0] b0_z_reg_813;
wire   [0:0] icmp_ln15_fu_1014_p2;
wire   [0:0] icmp_ln18_fu_1264_p2;
reg   [2:0] indvars_iv62_reg_825;
reg   [2:0] b1_x_reg_837;
wire   [0:0] icmp_ln19_fu_1299_p2;
reg   [2:0] b1_y_reg_847;
wire   [0:0] icmp_ln20_fu_1341_p2;
reg   [2:0] b1_z_reg_857;
wire   [0:0] icmp_ln24_fu_1460_p2;
reg   [30:0] p_idx_reg_867;
wire    ap_CS_fsm_state14;
reg    grp_md_Pipeline_loop_q_fu_878_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [63:0] tmp_15_cast5_fu_1123_p1;
wire   [63:0] zext_ln23_2_fu_1365_p1;
wire   [63:0] zext_ln26_1_fu_1490_p1;
reg   [2:0] indvars_iv71_fu_186;
wire   [2:0] add_ln14_1_fu_1080_p2;
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
wire   [191:0] or_ln_fu_1869_p4;
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
wire   [0:0] empty_fu_976_p2;
wire   [1:0] trunc_ln14_fu_960_p1;
wire   [1:0] smax73_fu_982_p3;
wire   [2:0] empty_24_fu_994_p2;
wire   [0:0] cmp18_fu_1000_p2;
wire   [0:0] empty_25_fu_1042_p2;
wire   [1:0] trunc_ln15_fu_1026_p1;
wire   [1:0] smax68_fu_1048_p3;
wire   [2:0] empty_26_fu_1060_p2;
wire   [0:0] cmp41_fu_1066_p2;
wire   [0:0] tmp_13_fu_1107_p3;
wire   [2:0] tmp_14_fu_1115_p4;
wire   [4:0] tmp_15_fu_1139_p5;
wire   [5:0] zext_ln26_fu_1149_p1;
wire   [5:0] tmp_15_cast_fu_1135_p1;
wire   [0:0] empty_27_fu_1173_p2;
wire   [1:0] trunc_ln16_fu_1165_p1;
wire   [1:0] smax_fu_1179_p3;
wire   [2:0] empty_28_fu_1191_p2;
wire   [0:0] cmp64_fu_1197_p2;
wire   [31:0] tmp_8_fu_1219_p3;
wire   [31:0] tmp_7_fu_1211_p3;
wire   [31:0] tmp_6_fu_1242_p3;
wire   [31:0] tmp_s_fu_1234_p3;
wire   [31:0] tmp_10_fu_1250_p3;
wire   [31:0] tmp_9_fu_1227_p3;
wire   [0:0] tmp_17_fu_1273_p3;
wire   [1:0] tmp_16_fu_1281_p3;
wire   [1:0] lshr_ln8_4_fu_1308_p4;
wire   [2:0] zext_ln23_fu_1318_p1;
wire   [2:0] add_ln23_fu_1322_p2;
wire   [1:0] lshr_ln8_5_fu_1346_p4;
wire   [3:0] zext_ln23_1_fu_1356_p1;
wire   [5:0] tmp_19_fu_1390_p3;
wire   [5:0] zext_ln8_1_fu_1387_p1;
wire   [31:0] select_ln23_1_fu_1411_p3;
wire   [31:0] select_ln23_fu_1403_p3;
wire   [31:0] select_ln23_4_fu_1434_p3;
wire   [31:0] select_ln23_3_fu_1426_p3;
wire   [31:0] select_ln23_5_fu_1442_p3;
wire   [31:0] select_ln23_2_fu_1419_p3;
wire   [31:0] zext_ln24_fu_1456_p1;
wire   [5:0] lshr_ln_fu_1475_p4;
wire   [5:0] add_ln26_fu_1485_p2;
wire   [191:0] select_ln25_1_fu_1539_p3;
wire   [191:0] select_ln25_fu_1532_p3;
wire   [191:0] select_ln25_4_fu_1560_p3;
wire   [191:0] select_ln25_3_fu_1553_p3;
wire   [191:0] select_ln25_5_fu_1567_p3;
wire   [191:0] select_ln25_2_fu_1546_p3;
wire   [191:0] select_ln25_8_fu_1588_p3;
wire   [191:0] select_ln25_7_fu_1581_p3;
wire   [191:0] select_ln25_11_fu_1609_p3;
wire   [191:0] select_ln25_10_fu_1602_p3;
wire   [191:0] select_ln25_12_fu_1616_p3;
wire   [191:0] select_ln25_9_fu_1595_p3;
wire   [191:0] select_ln26_1_fu_1637_p3;
wire   [191:0] select_ln26_fu_1630_p3;
wire   [191:0] select_ln26_4_fu_1658_p3;
wire   [191:0] select_ln26_3_fu_1651_p3;
wire   [191:0] select_ln26_5_fu_1665_p3;
wire   [191:0] select_ln26_2_fu_1644_p3;
wire   [191:0] select_ln26_8_fu_1686_p3;
wire   [191:0] select_ln26_7_fu_1679_p3;
wire   [191:0] select_ln26_11_fu_1707_p3;
wire   [191:0] select_ln26_10_fu_1700_p3;
wire   [191:0] select_ln26_12_fu_1714_p3;
wire   [191:0] select_ln26_9_fu_1693_p3;
wire   [191:0] select_ln25_14_fu_1728_p3;
wire   [63:0] trunc_ln25_3_fu_1738_p1;
wire   [63:0] trunc_ln25_1_fu_1747_p4;
wire   [63:0] trunc_ln25_2_fu_1762_p4;
wire   [191:0] select_ln26_14_fu_1777_p3;
wire   [63:0] trunc_ln26_fu_1782_p1;
wire   [63:0] trunc_ln4_fu_1791_p4;
wire   [63:0] trunc_ln5_fu_1806_p4;
wire   [63:0] bitcast_ln51_fu_1865_p1;
wire   [63:0] bitcast_ln50_fu_1861_p1;
wire   [63:0] bitcast_ln49_fu_1857_p1;
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
#0 grp_md_Pipeline_loop_q_fu_878_ap_start_reg = 1'b0;
#0 indvars_iv71_fu_186 = 3'd0;
#0 b0_x_fu_190 = 3'd0;
end
md_md_Pipeline_loop_q grp_md_Pipeline_loop_q_fu_878(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_md_Pipeline_loop_q_fu_878_ap_start),.ap_done(grp_md_Pipeline_loop_q_fu_878_ap_done),.ap_idle(grp_md_Pipeline_loop_q_fu_878_ap_idle),.ap_ready(grp_md_Pipeline_loop_q_fu_878_ap_ready),.sum_z(sum_z_reg_2428),.sum_y(sum_y_reg_2423),.sum_x(sum_x_reg_2418),.q_idx_range(q_idx_range_reg_2180),.mul_ln31(add_ln8_reg_2175),.position_0_0_0_0_address0(grp_md_Pipeline_loop_q_fu_878_position_0_0_0_0_address0),.position_0_0_0_0_ce0(grp_md_Pipeline_loop_q_fu_878_position_0_0_0_0_ce0),.position_0_0_0_0_q0(position_0_0_0_0_q0),.position_0_0_0_1_address0(grp_md_Pipeline_loop_q_fu_878_position_0_0_0_1_address0),.position_0_0_0_1_ce0(grp_md_Pipeline_loop_q_fu_878_position_0_0_0_1_ce0),.position_0_0_0_1_q0(position_0_0_0_1_q0),.position_0_0_1_0_address0(grp_md_Pipeline_loop_q_fu_878_position_0_0_1_0_address0),.position_0_0_1_0_ce0(grp_md_Pipeline_loop_q_fu_878_position_0_0_1_0_ce0),.position_0_0_1_0_q0(position_0_0_1_0_q0),.position_0_0_1_1_address0(grp_md_Pipeline_loop_q_fu_878_position_0_0_1_1_address0),.position_0_0_1_1_ce0(grp_md_Pipeline_loop_q_fu_878_position_0_0_1_1_ce0),.position_0_0_1_1_q0(position_0_0_1_1_q0),.position_0_1_0_0_address0(grp_md_Pipeline_loop_q_fu_878_position_0_1_0_0_address0),.position_0_1_0_0_ce0(grp_md_Pipeline_loop_q_fu_878_position_0_1_0_0_ce0),.position_0_1_0_0_q0(position_0_1_0_0_q0),.position_0_1_0_1_address0(grp_md_Pipeline_loop_q_fu_878_position_0_1_0_1_address0),.position_0_1_0_1_ce0(grp_md_Pipeline_loop_q_fu_878_position_0_1_0_1_ce0),.position_0_1_0_1_q0(position_0_1_0_1_q0),.position_0_1_1_0_address0(grp_md_Pipeline_loop_q_fu_878_position_0_1_1_0_address0),.position_0_1_1_0_ce0(grp_md_Pipeline_loop_q_fu_878_position_0_1_1_0_ce0),.position_0_1_1_0_q0(position_0_1_1_0_q0),.position_0_1_1_1_address0(grp_md_Pipeline_loop_q_fu_878_position_0_1_1_1_address0),.position_0_1_1_1_ce0(grp_md_Pipeline_loop_q_fu_878_position_0_1_1_1_ce0),.position_0_1_1_1_q0(position_0_1_1_1_q0),.position_1_0_0_0_address0(grp_md_Pipeline_loop_q_fu_878_position_1_0_0_0_address0),.position_1_0_0_0_ce0(grp_md_Pipeline_loop_q_fu_878_position_1_0_0_0_ce0),.position_1_0_0_0_q0(position_1_0_0_0_q0),.position_1_0_0_1_address0(grp_md_Pipeline_loop_q_fu_878_position_1_0_0_1_address0),.position_1_0_0_1_ce0(grp_md_Pipeline_loop_q_fu_878_position_1_0_0_1_ce0),.position_1_0_0_1_q0(position_1_0_0_1_q0),.position_1_0_1_0_address0(grp_md_Pipeline_loop_q_fu_878_position_1_0_1_0_address0),.position_1_0_1_0_ce0(grp_md_Pipeline_loop_q_fu_878_position_1_0_1_0_ce0),.position_1_0_1_0_q0(position_1_0_1_0_q0),.position_1_0_1_1_address0(grp_md_Pipeline_loop_q_fu_878_position_1_0_1_1_address0),.position_1_0_1_1_ce0(grp_md_Pipeline_loop_q_fu_878_position_1_0_1_1_ce0),.position_1_0_1_1_q0(position_1_0_1_1_q0),.position_1_1_0_0_address0(grp_md_Pipeline_loop_q_fu_878_position_1_1_0_0_address0),.position_1_1_0_0_ce0(grp_md_Pipeline_loop_q_fu_878_position_1_1_0_0_ce0),.position_1_1_0_0_q0(position_1_1_0_0_q0),.position_1_1_0_1_address0(grp_md_Pipeline_loop_q_fu_878_position_1_1_0_1_address0),.position_1_1_0_1_ce0(grp_md_Pipeline_loop_q_fu_878_position_1_1_0_1_ce0),.position_1_1_0_1_q0(position_1_1_0_1_q0),.position_1_1_1_0_address0(grp_md_Pipeline_loop_q_fu_878_position_1_1_1_0_address0),.position_1_1_1_0_ce0(grp_md_Pipeline_loop_q_fu_878_position_1_1_1_0_ce0),.position_1_1_1_0_q0(position_1_1_1_0_q0),.position_1_1_1_1_address0(grp_md_Pipeline_loop_q_fu_878_position_1_1_1_1_address0),.position_1_1_1_1_ce0(grp_md_Pipeline_loop_q_fu_878_position_1_1_1_1_ce0),.position_1_1_1_1_q0(position_1_1_1_1_q0),.empty_10(trunc_ln8_2_reg_2170),.empty_11(trunc_ln8_1_reg_2099),.empty_12(trunc_ln8_reg_2080),.select_ln25_14(trunc_ln25_reg_2398),.empty(trunc_ln34_reg_2433),.p_x(p_x_reg_2403),.trunc_ln34_3(trunc_ln34_3_reg_2438),.p_y(p_y_reg_2408),.trunc_ln34_5(trunc_ln34_5_reg_2443),.p_z(p_z_reg_2413),.sum_z_2_out(grp_md_Pipeline_loop_q_fu_878_sum_z_2_out),.sum_z_2_out_ap_vld(grp_md_Pipeline_loop_q_fu_878_sum_z_2_out_ap_vld),.sum_y_2_out(grp_md_Pipeline_loop_q_fu_878_sum_y_2_out),.sum_y_2_out_ap_vld(grp_md_Pipeline_loop_q_fu_878_sum_y_2_out_ap_vld),.sum_x_2_out(grp_md_Pipeline_loop_q_fu_878_sum_x_2_out),.sum_x_2_out_ap_vld(grp_md_Pipeline_loop_q_fu_878_sum_x_2_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_md_Pipeline_loop_q_fu_878_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_md_Pipeline_loop_q_fu_878_ap_start_reg <= 1'b1;
        end else if ((grp_md_Pipeline_loop_q_fu_878_ap_ready == 1'b1)) begin
            grp_md_Pipeline_loop_q_fu_878_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b0_x_fu_190 <= 3'd0;
    end else if (((icmp_ln15_fu_1014_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_x_fu_190 <= add_ln14_reg_1930;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_1095_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        b0_y_reg_790 <= add_ln15_reg_1961;
    end else if (((icmp_ln14_fu_948_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b0_y_reg_790 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        b0_z_reg_813 <= add_ln16_reg_1995;
    end else if (((icmp_ln15_fu_1014_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_z_reg_813 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b1_x_reg_837 <= smax73_cast_reg_1948;
    end else if (((icmp_ln19_fu_1299_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_x_reg_837 <= add_ln18_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1264_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        b1_y_reg_847 <= smax68_cast_reg_1982;
    end else if (((icmp_ln20_fu_1341_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        b1_y_reg_847 <= add_ln19_fu_1377_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_1299_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_z_reg_857 <= smax_cast_reg_2062;
    end else if (((icmp_ln24_fu_1460_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        b1_z_reg_857 <= add_ln20_fu_1526_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        indvars_iv62_reg_825 <= add_ln16_1_fu_1293_p2;
    end else if (((icmp_ln15_fu_1014_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv62_reg_825 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_1095_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv66_reg_801 <= add_ln15_1_fu_1159_p2;
    end else if (((icmp_ln14_fu_948_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv66_reg_801 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv71_fu_186 <= 3'd7;
    end else if (((icmp_ln15_fu_1014_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv71_fu_186 <= add_ln14_1_fu_1080_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        p_idx_reg_867 <= add_ln24_reg_2188;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        p_idx_reg_867 <= 31'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln14_reg_1930 <= add_ln14_fu_954_p2;
        cond24_reg_1953 <= cond24_fu_1006_p3;
        smax73_cast_reg_1948[1 : 0] <= smax73_cast_fu_990_p1[1 : 0];
        tmp_reg_1942 <= b0_x_fu_190[32'd1];
        trunc_ln14_1_reg_1935 <= trunc_ln14_1_fu_964_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln15_reg_1961 <= add_ln15_fu_1020_p2;
        cond47_reg_1987 <= cond47_fu_1072_p3;
        smax68_cast_reg_1982[1 : 0] <= smax68_cast_fu_1056_p1[1 : 0];
        tmp_12_reg_1976 <= b0_y_reg_790[32'd1];
        trunc_ln15_1_reg_1966 <= trunc_ln15_1_fu_1030_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_reg_1995 <= add_ln16_fu_1101_p2;
        add_ln26_1_reg_2040 <= add_ln26_1_fu_1153_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln23_1_reg_2119 <= add_ln23_1_fu_1360_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln24_reg_2188 <= add_ln24_fu_1465_p2;
        force_0_0_0_0_addr_reg_2213 <= zext_ln26_1_fu_1490_p1;
        force_0_0_0_1_addr_reg_2218 <= zext_ln26_1_fu_1490_p1;
        force_0_0_1_0_addr_reg_2223 <= zext_ln26_1_fu_1490_p1;
        force_0_0_1_1_addr_reg_2228 <= zext_ln26_1_fu_1490_p1;
        force_0_1_0_0_addr_reg_2233 <= zext_ln26_1_fu_1490_p1;
        force_0_1_0_1_addr_reg_2238 <= zext_ln26_1_fu_1490_p1;
        force_0_1_1_0_addr_reg_2243 <= zext_ln26_1_fu_1490_p1;
        force_0_1_1_1_addr_reg_2248 <= zext_ln26_1_fu_1490_p1;
        force_1_0_0_0_addr_reg_2253 <= zext_ln26_1_fu_1490_p1;
        force_1_0_0_1_addr_reg_2258 <= zext_ln26_1_fu_1490_p1;
        force_1_0_1_0_addr_reg_2263 <= zext_ln26_1_fu_1490_p1;
        force_1_0_1_1_addr_reg_2268 <= zext_ln26_1_fu_1490_p1;
        force_1_1_0_0_addr_reg_2273 <= zext_ln26_1_fu_1490_p1;
        force_1_1_0_1_addr_reg_2278 <= zext_ln26_1_fu_1490_p1;
        force_1_1_1_0_addr_reg_2283 <= zext_ln26_1_fu_1490_p1;
        force_1_1_1_1_addr_reg_2288 <= zext_ln26_1_fu_1490_p1;
        trunc_ln24_reg_2193 <= trunc_ln24_fu_1471_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln8_reg_2175 <= add_ln8_fu_1397_p2;
        q_idx_range_reg_2180 <= q_idx_range_fu_1449_p3;
        trunc_ln8_2_reg_2170 <= trunc_ln8_2_fu_1383_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        cond70_reg_2067 <= cond70_fu_1203_p3;
        smax_cast_reg_2062[1 : 0] <= smax_cast_fu_1187_p1[1 : 0];
        tmp_11_reg_2072 <= tmp_11_fu_1257_p3;
        trunc_ln16_1_reg_2050 <= trunc_ln16_1_fu_1169_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        p_x_reg_2403 <= p_x_fu_1742_p1;
        p_y_reg_2408 <= p_y_fu_1757_p1;
        p_z_reg_2413 <= p_z_fu_1772_p1;
        sum_x_reg_2418 <= sum_x_fu_1786_p1;
        sum_y_reg_2423 <= sum_y_fu_1801_p1;
        sum_z_reg_2428 <= sum_z_fu_1816_p1;
        trunc_ln25_reg_2398 <= trunc_ln25_fu_1733_p1;
        trunc_ln34_3_reg_2438 <= {{select_ln25_14_fu_1728_p3[115:64]}};
        trunc_ln34_5_reg_2443 <= {{select_ln25_14_fu_1728_p3[179:128]}};
        trunc_ln34_reg_2433 <= trunc_ln34_fu_1821_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        select_ln25_13_reg_2383 <= select_ln25_13_fu_1623_p3;
        select_ln25_6_reg_2378 <= select_ln25_6_fu_1574_p3;
        select_ln26_13_reg_2393 <= select_ln26_13_fu_1721_p3;
        select_ln26_6_reg_2388 <= select_ln26_6_fu_1672_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_18_reg_2106[3 : 1] <= tmp_18_fu_1327_p3[3 : 1];
        trunc_ln8_1_reg_2099 <= trunc_ln8_1_fu_1304_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        trunc_ln8_reg_2080 <= trunc_ln8_fu_1269_p1;
        zext_ln8_reg_2086[1] <= zext_ln8_fu_1289_p1[1];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_md_Pipeline_loop_q_fu_878_ap_done == 1'b0)) begin
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
    if (((icmp_ln14_fu_948_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln14_fu_948_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_0_0_address0_local = force_0_0_0_0_addr_reg_2213;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_0_0_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd0) & (trunc_ln16_1_reg_2050 == 1'd0) & (trunc_ln15_1_reg_1966 == 1'd0) & (trunc_ln14_1_reg_1935 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_0_0_we0_local = 1'b1;
    end else begin
        force_0_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_0_1_address0_local = force_0_0_0_1_addr_reg_2218;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_0_1_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd1) & (trunc_ln16_1_reg_2050 == 1'd0) & (trunc_ln15_1_reg_1966 == 1'd0) & (trunc_ln14_1_reg_1935 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_0_1_we0_local = 1'b1;
    end else begin
        force_0_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_1_0_address0_local = force_0_0_1_0_addr_reg_2223;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_1_0_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd0) & (trunc_ln16_1_reg_2050 == 1'd1) & (trunc_ln15_1_reg_1966 == 1'd0) & (trunc_ln14_1_reg_1935 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_1_0_we0_local = 1'b1;
    end else begin
        force_0_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_1_1_address0_local = force_0_0_1_1_addr_reg_2228;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_1_1_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd1) & (trunc_ln16_1_reg_2050 == 1'd1) & (trunc_ln15_1_reg_1966 == 1'd0) & (trunc_ln14_1_reg_1935 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_1_1_we0_local = 1'b1;
    end else begin
        force_0_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_0_0_address0_local = force_0_1_0_0_addr_reg_2233;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_0_0_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd0) & (trunc_ln16_1_reg_2050 == 1'd0) & (trunc_ln15_1_reg_1966 == 1'd1) & (trunc_ln14_1_reg_1935 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_0_0_we0_local = 1'b1;
    end else begin
        force_0_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_0_1_address0_local = force_0_1_0_1_addr_reg_2238;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_0_1_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd1) & (trunc_ln16_1_reg_2050 == 1'd0) & (trunc_ln15_1_reg_1966 == 1'd1) & (trunc_ln14_1_reg_1935 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_0_1_we0_local = 1'b1;
    end else begin
        force_0_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_1_0_address0_local = force_0_1_1_0_addr_reg_2243;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_1_0_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd0) & (trunc_ln16_1_reg_2050 == 1'd1) & (trunc_ln15_1_reg_1966 == 1'd1) & (trunc_ln14_1_reg_1935 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_1_0_we0_local = 1'b1;
    end else begin
        force_0_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_1_1_address0_local = force_0_1_1_1_addr_reg_2248;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_1_1_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd1) & (trunc_ln16_1_reg_2050 == 1'd1) & (trunc_ln15_1_reg_1966 == 1'd1) & (trunc_ln14_1_reg_1935 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_1_1_we0_local = 1'b1;
    end else begin
        force_0_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_0_0_address0_local = force_1_0_0_0_addr_reg_2253;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_0_0_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd0) & (trunc_ln16_1_reg_2050 == 1'd0) & (trunc_ln15_1_reg_1966 == 1'd0) & (trunc_ln14_1_reg_1935 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_0_0_we0_local = 1'b1;
    end else begin
        force_1_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_0_1_address0_local = force_1_0_0_1_addr_reg_2258;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_0_1_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd1) & (trunc_ln16_1_reg_2050 == 1'd0) & (trunc_ln15_1_reg_1966 == 1'd0) & (trunc_ln14_1_reg_1935 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_0_1_we0_local = 1'b1;
    end else begin
        force_1_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_1_0_address0_local = force_1_0_1_0_addr_reg_2263;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_1_0_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd0) & (trunc_ln16_1_reg_2050 == 1'd1) & (trunc_ln15_1_reg_1966 == 1'd0) & (trunc_ln14_1_reg_1935 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_1_0_we0_local = 1'b1;
    end else begin
        force_1_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_1_1_address0_local = force_1_0_1_1_addr_reg_2268;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_1_1_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd1) & (trunc_ln16_1_reg_2050 == 1'd1) & (trunc_ln15_1_reg_1966 == 1'd0) & (trunc_ln14_1_reg_1935 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_1_1_we0_local = 1'b1;
    end else begin
        force_1_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_0_0_address0_local = force_1_1_0_0_addr_reg_2273;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_0_0_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd0) & (trunc_ln16_1_reg_2050 == 1'd0) & (trunc_ln15_1_reg_1966 == 1'd1) & (trunc_ln14_1_reg_1935 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_0_0_we0_local = 1'b1;
    end else begin
        force_1_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_0_1_address0_local = force_1_1_0_1_addr_reg_2278;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_0_1_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd1) & (trunc_ln16_1_reg_2050 == 1'd0) & (trunc_ln15_1_reg_1966 == 1'd1) & (trunc_ln14_1_reg_1935 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_0_1_we0_local = 1'b1;
    end else begin
        force_1_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_1_0_address0_local = force_1_1_1_0_addr_reg_2283;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_1_0_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd0) & (trunc_ln16_1_reg_2050 == 1'd1) & (trunc_ln15_1_reg_1966 == 1'd1) & (trunc_ln14_1_reg_1935 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_1_0_we0_local = 1'b1;
    end else begin
        force_1_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_1_1_address0_local = force_1_1_1_1_addr_reg_2288;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_1_1_address0_local = zext_ln26_1_fu_1490_p1;
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
    if (((trunc_ln24_reg_2193 == 1'd1) & (trunc_ln16_1_reg_2050 == 1'd1) & (trunc_ln15_1_reg_1966 == 1'd1) & (trunc_ln14_1_reg_1935 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_1_1_we0_local = 1'b1;
    end else begin
        force_1_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_0_0_0_address0_local = zext_ln23_2_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_0_0_address0_local = tmp_15_cast5_fu_1123_p1;
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
        n_points_0_0_1_address0_local = zext_ln23_2_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_0_1_address0_local = tmp_15_cast5_fu_1123_p1;
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
        n_points_0_1_0_address0_local = zext_ln23_2_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_1_0_address0_local = tmp_15_cast5_fu_1123_p1;
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
        n_points_0_1_1_address0_local = zext_ln23_2_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_1_1_address0_local = tmp_15_cast5_fu_1123_p1;
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
        n_points_1_0_0_address0_local = zext_ln23_2_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_0_0_address0_local = tmp_15_cast5_fu_1123_p1;
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
        n_points_1_0_1_address0_local = zext_ln23_2_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_0_1_address0_local = tmp_15_cast5_fu_1123_p1;
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
        n_points_1_1_0_address0_local = zext_ln23_2_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_1_0_address0_local = tmp_15_cast5_fu_1123_p1;
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
        n_points_1_1_1_address0_local = zext_ln23_2_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_1_1_address0_local = tmp_15_cast5_fu_1123_p1;
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
        position_0_0_0_0_address0 = grp_md_Pipeline_loop_q_fu_878_position_0_0_0_0_address0;
    end else begin
        position_0_0_0_0_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_0_ce0 = grp_md_Pipeline_loop_q_fu_878_position_0_0_0_0_ce0;
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
        position_0_0_0_1_address0 = grp_md_Pipeline_loop_q_fu_878_position_0_0_0_1_address0;
    end else begin
        position_0_0_0_1_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_1_ce0 = grp_md_Pipeline_loop_q_fu_878_position_0_0_0_1_ce0;
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
        position_0_0_1_0_address0 = grp_md_Pipeline_loop_q_fu_878_position_0_0_1_0_address0;
    end else begin
        position_0_0_1_0_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_0_ce0 = grp_md_Pipeline_loop_q_fu_878_position_0_0_1_0_ce0;
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
        position_0_0_1_1_address0 = grp_md_Pipeline_loop_q_fu_878_position_0_0_1_1_address0;
    end else begin
        position_0_0_1_1_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_1_ce0 = grp_md_Pipeline_loop_q_fu_878_position_0_0_1_1_ce0;
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
        position_0_1_0_0_address0 = grp_md_Pipeline_loop_q_fu_878_position_0_1_0_0_address0;
    end else begin
        position_0_1_0_0_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_0_ce0 = grp_md_Pipeline_loop_q_fu_878_position_0_1_0_0_ce0;
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
        position_0_1_0_1_address0 = grp_md_Pipeline_loop_q_fu_878_position_0_1_0_1_address0;
    end else begin
        position_0_1_0_1_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_1_ce0 = grp_md_Pipeline_loop_q_fu_878_position_0_1_0_1_ce0;
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
        position_0_1_1_0_address0 = grp_md_Pipeline_loop_q_fu_878_position_0_1_1_0_address0;
    end else begin
        position_0_1_1_0_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_0_ce0 = grp_md_Pipeline_loop_q_fu_878_position_0_1_1_0_ce0;
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
        position_0_1_1_1_address0 = grp_md_Pipeline_loop_q_fu_878_position_0_1_1_1_address0;
    end else begin
        position_0_1_1_1_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_1_ce0 = grp_md_Pipeline_loop_q_fu_878_position_0_1_1_1_ce0;
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
        position_1_0_0_0_address0 = grp_md_Pipeline_loop_q_fu_878_position_1_0_0_0_address0;
    end else begin
        position_1_0_0_0_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_0_ce0 = grp_md_Pipeline_loop_q_fu_878_position_1_0_0_0_ce0;
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
        position_1_0_0_1_address0 = grp_md_Pipeline_loop_q_fu_878_position_1_0_0_1_address0;
    end else begin
        position_1_0_0_1_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_1_ce0 = grp_md_Pipeline_loop_q_fu_878_position_1_0_0_1_ce0;
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
        position_1_0_1_0_address0 = grp_md_Pipeline_loop_q_fu_878_position_1_0_1_0_address0;
    end else begin
        position_1_0_1_0_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_0_ce0 = grp_md_Pipeline_loop_q_fu_878_position_1_0_1_0_ce0;
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
        position_1_0_1_1_address0 = grp_md_Pipeline_loop_q_fu_878_position_1_0_1_1_address0;
    end else begin
        position_1_0_1_1_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_1_ce0 = grp_md_Pipeline_loop_q_fu_878_position_1_0_1_1_ce0;
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
        position_1_1_0_0_address0 = grp_md_Pipeline_loop_q_fu_878_position_1_1_0_0_address0;
    end else begin
        position_1_1_0_0_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_0_ce0 = grp_md_Pipeline_loop_q_fu_878_position_1_1_0_0_ce0;
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
        position_1_1_0_1_address0 = grp_md_Pipeline_loop_q_fu_878_position_1_1_0_1_address0;
    end else begin
        position_1_1_0_1_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_1_ce0 = grp_md_Pipeline_loop_q_fu_878_position_1_1_0_1_ce0;
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
        position_1_1_1_0_address0 = grp_md_Pipeline_loop_q_fu_878_position_1_1_1_0_address0;
    end else begin
        position_1_1_1_0_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_0_ce0 = grp_md_Pipeline_loop_q_fu_878_position_1_1_1_0_ce0;
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
        position_1_1_1_1_address0 = grp_md_Pipeline_loop_q_fu_878_position_1_1_1_1_address0;
    end else begin
        position_1_1_1_1_address0 = zext_ln26_1_fu_1490_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_1_ce0 = grp_md_Pipeline_loop_q_fu_878_position_1_1_1_1_ce0;
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
            if (((icmp_ln14_fu_948_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln15_fu_1014_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_1095_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln18_fu_1264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_1299_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln20_fu_1341_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln24_fu_1460_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((grp_md_Pipeline_loop_q_fu_878_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
assign add_ln14_1_fu_1080_p2 = (indvars_iv71_fu_186 + 3'd1);
assign add_ln14_fu_954_p2 = (b0_x_fu_190 + 3'd1);
assign add_ln15_1_fu_1159_p2 = (indvars_iv66_reg_801 + 3'd1);
assign add_ln15_fu_1020_p2 = (b0_y_reg_790 + 3'd1);
assign add_ln16_1_fu_1293_p2 = (indvars_iv62_reg_825 + 3'd1);
assign add_ln16_fu_1101_p2 = (b0_z_reg_813 + 3'd1);
assign add_ln18_fu_1335_p2 = (b1_x_reg_837 + 3'd1);
assign add_ln19_fu_1377_p2 = (b1_y_reg_847 + 3'd1);
assign add_ln20_fu_1526_p2 = (b1_z_reg_857 + 3'd1);
assign add_ln23_1_fu_1360_p2 = (tmp_18_reg_2106 + zext_ln23_1_fu_1356_p1);
assign add_ln23_fu_1322_p2 = (zext_ln8_reg_2086 + zext_ln23_fu_1318_p1);
assign add_ln24_fu_1465_p2 = (p_idx_reg_867 + 31'd1);
assign add_ln26_1_fu_1153_p2 = (zext_ln26_fu_1149_p1 + tmp_15_cast_fu_1135_p1);
assign add_ln26_fu_1485_p2 = (add_ln26_1_reg_2040 + lshr_ln_fu_1475_p4);
assign add_ln8_fu_1397_p2 = (tmp_19_fu_1390_p3 + zext_ln8_1_fu_1387_p1);
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
assign bitcast_ln49_fu_1857_p1 = grp_md_Pipeline_loop_q_fu_878_sum_x_2_out;
assign bitcast_ln50_fu_1861_p1 = grp_md_Pipeline_loop_q_fu_878_sum_y_2_out;
assign bitcast_ln51_fu_1865_p1 = grp_md_Pipeline_loop_q_fu_878_sum_z_2_out;
assign cmp18_fu_1000_p2 = ((empty_24_fu_994_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp41_fu_1066_p2 = ((empty_26_fu_1060_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp64_fu_1197_p2 = ((empty_28_fu_1191_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cond24_fu_1006_p3 = ((cmp18_fu_1000_p2[0:0] == 1'b1) ? 3'd4 : empty_24_fu_994_p2);
assign cond47_fu_1072_p3 = ((cmp41_fu_1066_p2[0:0] == 1'b1) ? 3'd4 : empty_26_fu_1060_p2);
assign cond70_fu_1203_p3 = ((cmp64_fu_1197_p2[0:0] == 1'b1) ? 3'd4 : empty_28_fu_1191_p2);
assign empty_24_fu_994_p2 = (b0_x_fu_190 + 3'd2);
assign empty_25_fu_1042_p2 = (($signed(indvars_iv66_reg_801) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_26_fu_1060_p2 = (b0_y_reg_790 + 3'd2);
assign empty_27_fu_1173_p2 = (($signed(indvars_iv62_reg_825) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_28_fu_1191_p2 = (b0_z_reg_813 + 3'd2);
assign empty_fu_976_p2 = (($signed(indvars_iv71_fu_186) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign force_0_0_0_0_address0 = force_0_0_0_0_address0_local;
assign force_0_0_0_0_ce0 = force_0_0_0_0_ce0_local;
assign force_0_0_0_0_d0 = or_ln_fu_1869_p4;
assign force_0_0_0_0_we0 = force_0_0_0_0_we0_local;
assign force_0_0_0_1_address0 = force_0_0_0_1_address0_local;
assign force_0_0_0_1_ce0 = force_0_0_0_1_ce0_local;
assign force_0_0_0_1_d0 = or_ln_fu_1869_p4;
assign force_0_0_0_1_we0 = force_0_0_0_1_we0_local;
assign force_0_0_1_0_address0 = force_0_0_1_0_address0_local;
assign force_0_0_1_0_ce0 = force_0_0_1_0_ce0_local;
assign force_0_0_1_0_d0 = or_ln_fu_1869_p4;
assign force_0_0_1_0_we0 = force_0_0_1_0_we0_local;
assign force_0_0_1_1_address0 = force_0_0_1_1_address0_local;
assign force_0_0_1_1_ce0 = force_0_0_1_1_ce0_local;
assign force_0_0_1_1_d0 = or_ln_fu_1869_p4;
assign force_0_0_1_1_we0 = force_0_0_1_1_we0_local;
assign force_0_1_0_0_address0 = force_0_1_0_0_address0_local;
assign force_0_1_0_0_ce0 = force_0_1_0_0_ce0_local;
assign force_0_1_0_0_d0 = or_ln_fu_1869_p4;
assign force_0_1_0_0_we0 = force_0_1_0_0_we0_local;
assign force_0_1_0_1_address0 = force_0_1_0_1_address0_local;
assign force_0_1_0_1_ce0 = force_0_1_0_1_ce0_local;
assign force_0_1_0_1_d0 = or_ln_fu_1869_p4;
assign force_0_1_0_1_we0 = force_0_1_0_1_we0_local;
assign force_0_1_1_0_address0 = force_0_1_1_0_address0_local;
assign force_0_1_1_0_ce0 = force_0_1_1_0_ce0_local;
assign force_0_1_1_0_d0 = or_ln_fu_1869_p4;
assign force_0_1_1_0_we0 = force_0_1_1_0_we0_local;
assign force_0_1_1_1_address0 = force_0_1_1_1_address0_local;
assign force_0_1_1_1_ce0 = force_0_1_1_1_ce0_local;
assign force_0_1_1_1_d0 = or_ln_fu_1869_p4;
assign force_0_1_1_1_we0 = force_0_1_1_1_we0_local;
assign force_1_0_0_0_address0 = force_1_0_0_0_address0_local;
assign force_1_0_0_0_ce0 = force_1_0_0_0_ce0_local;
assign force_1_0_0_0_d0 = or_ln_fu_1869_p4;
assign force_1_0_0_0_we0 = force_1_0_0_0_we0_local;
assign force_1_0_0_1_address0 = force_1_0_0_1_address0_local;
assign force_1_0_0_1_ce0 = force_1_0_0_1_ce0_local;
assign force_1_0_0_1_d0 = or_ln_fu_1869_p4;
assign force_1_0_0_1_we0 = force_1_0_0_1_we0_local;
assign force_1_0_1_0_address0 = force_1_0_1_0_address0_local;
assign force_1_0_1_0_ce0 = force_1_0_1_0_ce0_local;
assign force_1_0_1_0_d0 = or_ln_fu_1869_p4;
assign force_1_0_1_0_we0 = force_1_0_1_0_we0_local;
assign force_1_0_1_1_address0 = force_1_0_1_1_address0_local;
assign force_1_0_1_1_ce0 = force_1_0_1_1_ce0_local;
assign force_1_0_1_1_d0 = or_ln_fu_1869_p4;
assign force_1_0_1_1_we0 = force_1_0_1_1_we0_local;
assign force_1_1_0_0_address0 = force_1_1_0_0_address0_local;
assign force_1_1_0_0_ce0 = force_1_1_0_0_ce0_local;
assign force_1_1_0_0_d0 = or_ln_fu_1869_p4;
assign force_1_1_0_0_we0 = force_1_1_0_0_we0_local;
assign force_1_1_0_1_address0 = force_1_1_0_1_address0_local;
assign force_1_1_0_1_ce0 = force_1_1_0_1_ce0_local;
assign force_1_1_0_1_d0 = or_ln_fu_1869_p4;
assign force_1_1_0_1_we0 = force_1_1_0_1_we0_local;
assign force_1_1_1_0_address0 = force_1_1_1_0_address0_local;
assign force_1_1_1_0_ce0 = force_1_1_1_0_ce0_local;
assign force_1_1_1_0_d0 = or_ln_fu_1869_p4;
assign force_1_1_1_0_we0 = force_1_1_1_0_we0_local;
assign force_1_1_1_1_address0 = force_1_1_1_1_address0_local;
assign force_1_1_1_1_ce0 = force_1_1_1_1_ce0_local;
assign force_1_1_1_1_d0 = or_ln_fu_1869_p4;
assign force_1_1_1_1_we0 = force_1_1_1_1_we0_local;
assign grp_md_Pipeline_loop_q_fu_878_ap_start = grp_md_Pipeline_loop_q_fu_878_ap_start_reg;
assign icmp_ln14_fu_948_p2 = ((b0_x_fu_190 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_1014_p2 = ((b0_y_reg_790 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1095_p2 = ((b0_z_reg_813 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_1264_p2 = ((b1_x_reg_837 < cond24_reg_1953) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_1299_p2 = ((b1_y_reg_847 < cond47_reg_1987) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_1341_p2 = ((b1_z_reg_857 < cond70_reg_2067) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_1460_p2 = (($signed(zext_ln24_fu_1456_p1) < $signed(tmp_11_reg_2072)) ? 1'b1 : 1'b0);
assign lshr_ln8_4_fu_1308_p4 = {{b1_y_reg_847[2:1]}};
assign lshr_ln8_5_fu_1346_p4 = {{b1_z_reg_857[2:1]}};
assign lshr_ln_fu_1475_p4 = {{p_idx_reg_867[6:1]}};
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
assign or_ln_fu_1869_p4 = {{{bitcast_ln51_fu_1865_p1}, {bitcast_ln50_fu_1861_p1}}, {bitcast_ln49_fu_1857_p1}};
assign p_x_fu_1742_p1 = trunc_ln25_3_fu_1738_p1;
assign p_y_fu_1757_p1 = trunc_ln25_1_fu_1747_p4;
assign p_z_fu_1772_p1 = trunc_ln25_2_fu_1762_p4;
assign q_idx_range_fu_1449_p3 = ((trunc_ln8_reg_2080[0:0] == 1'b1) ? select_ln23_5_fu_1442_p3 : select_ln23_2_fu_1419_p3);
assign select_ln23_1_fu_1411_p3 = ((trunc_ln8_2_fu_1383_p1[0:0] == 1'b1) ? n_points_0_1_1_q0 : n_points_0_1_0_q0);
assign select_ln23_2_fu_1419_p3 = ((trunc_ln8_1_reg_2099[0:0] == 1'b1) ? select_ln23_1_fu_1411_p3 : select_ln23_fu_1403_p3);
assign select_ln23_3_fu_1426_p3 = ((trunc_ln8_2_fu_1383_p1[0:0] == 1'b1) ? n_points_1_0_1_q0 : n_points_1_0_0_q0);
assign select_ln23_4_fu_1434_p3 = ((trunc_ln8_2_fu_1383_p1[0:0] == 1'b1) ? n_points_1_1_1_q0 : n_points_1_1_0_q0);
assign select_ln23_5_fu_1442_p3 = ((trunc_ln8_1_reg_2099[0:0] == 1'b1) ? select_ln23_4_fu_1434_p3 : select_ln23_3_fu_1426_p3);
assign select_ln23_fu_1403_p3 = ((trunc_ln8_2_fu_1383_p1[0:0] == 1'b1) ? n_points_0_0_1_q0 : n_points_0_0_0_q0);
assign select_ln25_10_fu_1602_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? position_1_1_0_1_q0 : position_1_1_0_0_q0);
assign select_ln25_11_fu_1609_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? position_1_1_1_1_q0 : position_1_1_1_0_q0);
assign select_ln25_12_fu_1616_p3 = ((trunc_ln16_1_reg_2050[0:0] == 1'b1) ? select_ln25_11_fu_1609_p3 : select_ln25_10_fu_1602_p3);
assign select_ln25_13_fu_1623_p3 = ((trunc_ln15_1_reg_1966[0:0] == 1'b1) ? select_ln25_12_fu_1616_p3 : select_ln25_9_fu_1595_p3);
assign select_ln25_14_fu_1728_p3 = ((trunc_ln14_1_reg_1935[0:0] == 1'b1) ? select_ln25_13_reg_2383 : select_ln25_6_reg_2378);
assign select_ln25_1_fu_1539_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? position_0_0_1_1_q0 : position_0_0_1_0_q0);
assign select_ln25_2_fu_1546_p3 = ((trunc_ln16_1_reg_2050[0:0] == 1'b1) ? select_ln25_1_fu_1539_p3 : select_ln25_fu_1532_p3);
assign select_ln25_3_fu_1553_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? position_0_1_0_1_q0 : position_0_1_0_0_q0);
assign select_ln25_4_fu_1560_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? position_0_1_1_1_q0 : position_0_1_1_0_q0);
assign select_ln25_5_fu_1567_p3 = ((trunc_ln16_1_reg_2050[0:0] == 1'b1) ? select_ln25_4_fu_1560_p3 : select_ln25_3_fu_1553_p3);
assign select_ln25_6_fu_1574_p3 = ((trunc_ln15_1_reg_1966[0:0] == 1'b1) ? select_ln25_5_fu_1567_p3 : select_ln25_2_fu_1546_p3);
assign select_ln25_7_fu_1581_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? position_1_0_0_1_q0 : position_1_0_0_0_q0);
assign select_ln25_8_fu_1588_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? position_1_0_1_1_q0 : position_1_0_1_0_q0);
assign select_ln25_9_fu_1595_p3 = ((trunc_ln16_1_reg_2050[0:0] == 1'b1) ? select_ln25_8_fu_1588_p3 : select_ln25_7_fu_1581_p3);
assign select_ln25_fu_1532_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? position_0_0_0_1_q0 : position_0_0_0_0_q0);
assign select_ln26_10_fu_1700_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? force_1_1_0_1_q0 : force_1_1_0_0_q0);
assign select_ln26_11_fu_1707_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? force_1_1_1_1_q0 : force_1_1_1_0_q0);
assign select_ln26_12_fu_1714_p3 = ((trunc_ln16_1_reg_2050[0:0] == 1'b1) ? select_ln26_11_fu_1707_p3 : select_ln26_10_fu_1700_p3);
assign select_ln26_13_fu_1721_p3 = ((trunc_ln15_1_reg_1966[0:0] == 1'b1) ? select_ln26_12_fu_1714_p3 : select_ln26_9_fu_1693_p3);
assign select_ln26_14_fu_1777_p3 = ((trunc_ln14_1_reg_1935[0:0] == 1'b1) ? select_ln26_13_reg_2393 : select_ln26_6_reg_2388);
assign select_ln26_1_fu_1637_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? force_0_0_1_1_q0 : force_0_0_1_0_q0);
assign select_ln26_2_fu_1644_p3 = ((trunc_ln16_1_reg_2050[0:0] == 1'b1) ? select_ln26_1_fu_1637_p3 : select_ln26_fu_1630_p3);
assign select_ln26_3_fu_1651_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? force_0_1_0_1_q0 : force_0_1_0_0_q0);
assign select_ln26_4_fu_1658_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? force_0_1_1_1_q0 : force_0_1_1_0_q0);
assign select_ln26_5_fu_1665_p3 = ((trunc_ln16_1_reg_2050[0:0] == 1'b1) ? select_ln26_4_fu_1658_p3 : select_ln26_3_fu_1651_p3);
assign select_ln26_6_fu_1672_p3 = ((trunc_ln15_1_reg_1966[0:0] == 1'b1) ? select_ln26_5_fu_1665_p3 : select_ln26_2_fu_1644_p3);
assign select_ln26_7_fu_1679_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? force_1_0_0_1_q0 : force_1_0_0_0_q0);
assign select_ln26_8_fu_1686_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? force_1_0_1_1_q0 : force_1_0_1_0_q0);
assign select_ln26_9_fu_1693_p3 = ((trunc_ln16_1_reg_2050[0:0] == 1'b1) ? select_ln26_8_fu_1686_p3 : select_ln26_7_fu_1679_p3);
assign select_ln26_fu_1630_p3 = ((trunc_ln24_reg_2193[0:0] == 1'b1) ? force_0_0_0_1_q0 : force_0_0_0_0_q0);
assign smax68_cast_fu_1056_p1 = smax68_fu_1048_p3;
assign smax68_fu_1048_p3 = ((empty_25_fu_1042_p2[0:0] == 1'b1) ? trunc_ln15_fu_1026_p1 : 2'd0);
assign smax73_cast_fu_990_p1 = smax73_fu_982_p3;
assign smax73_fu_982_p3 = ((empty_fu_976_p2[0:0] == 1'b1) ? trunc_ln14_fu_960_p1 : 2'd0);
assign smax_cast_fu_1187_p1 = smax_fu_1179_p3;
assign smax_fu_1179_p3 = ((empty_27_fu_1173_p2[0:0] == 1'b1) ? trunc_ln16_fu_1165_p1 : 2'd0);
assign sum_x_fu_1786_p1 = trunc_ln26_fu_1782_p1;
assign sum_y_fu_1801_p1 = trunc_ln4_fu_1791_p4;
assign sum_z_fu_1816_p1 = trunc_ln5_fu_1806_p4;
assign tmp_10_fu_1250_p3 = ((trunc_ln15_1_reg_1966[0:0] == 1'b1) ? tmp_6_fu_1242_p3 : tmp_s_fu_1234_p3);
assign tmp_11_fu_1257_p3 = ((trunc_ln14_1_reg_1935[0:0] == 1'b1) ? tmp_10_fu_1250_p3 : tmp_9_fu_1227_p3);
assign tmp_13_fu_1107_p3 = b0_z_reg_813[32'd1];
assign tmp_14_fu_1115_p4 = {{{tmp_reg_1942}, {tmp_12_reg_1976}}, {tmp_13_fu_1107_p3}};
assign tmp_15_cast5_fu_1123_p1 = tmp_14_fu_1115_p4;
assign tmp_15_cast_fu_1135_p1 = tmp_14_fu_1115_p4;
assign tmp_15_fu_1139_p5 = {{{{tmp_reg_1942}, {tmp_12_reg_1976}}, {tmp_13_fu_1107_p3}}, {2'd0}};
assign tmp_16_fu_1281_p3 = {{tmp_17_fu_1273_p3}, {1'd0}};
assign tmp_17_fu_1273_p3 = b1_x_reg_837[32'd1];
assign tmp_18_fu_1327_p3 = {{add_ln23_fu_1322_p2}, {1'd0}};
assign tmp_19_fu_1390_p3 = {{add_ln23_1_reg_2119}, {2'd0}};
assign tmp_6_fu_1242_p3 = ((trunc_ln16_1_fu_1169_p1[0:0] == 1'b1) ? n_points_1_1_1_q0 : n_points_1_1_0_q0);
assign tmp_7_fu_1211_p3 = ((trunc_ln16_1_fu_1169_p1[0:0] == 1'b1) ? n_points_0_0_1_q0 : n_points_0_0_0_q0);
assign tmp_8_fu_1219_p3 = ((trunc_ln16_1_fu_1169_p1[0:0] == 1'b1) ? n_points_0_1_1_q0 : n_points_0_1_0_q0);
assign tmp_9_fu_1227_p3 = ((trunc_ln15_1_reg_1966[0:0] == 1'b1) ? tmp_8_fu_1219_p3 : tmp_7_fu_1211_p3);
assign tmp_s_fu_1234_p3 = ((trunc_ln16_1_fu_1169_p1[0:0] == 1'b1) ? n_points_1_0_1_q0 : n_points_1_0_0_q0);
assign trunc_ln14_1_fu_964_p1 = b0_x_fu_190[0:0];
assign trunc_ln14_fu_960_p1 = indvars_iv71_fu_186[1:0];
assign trunc_ln15_1_fu_1030_p1 = b0_y_reg_790[0:0];
assign trunc_ln15_fu_1026_p1 = indvars_iv66_reg_801[1:0];
assign trunc_ln16_1_fu_1169_p1 = b0_z_reg_813[0:0];
assign trunc_ln16_fu_1165_p1 = indvars_iv62_reg_825[1:0];
assign trunc_ln24_fu_1471_p1 = p_idx_reg_867[0:0];
assign trunc_ln25_1_fu_1747_p4 = {{select_ln25_14_fu_1728_p3[127:64]}};
assign trunc_ln25_2_fu_1762_p4 = {{select_ln25_14_fu_1728_p3[191:128]}};
assign trunc_ln25_3_fu_1738_p1 = select_ln25_14_fu_1728_p3[63:0];
assign trunc_ln25_fu_1733_p1 = select_ln25_14_fu_1728_p3[190:0];
assign trunc_ln26_fu_1782_p1 = select_ln26_14_fu_1777_p3[63:0];
assign trunc_ln34_fu_1821_p1 = select_ln25_14_fu_1728_p3[51:0];
assign trunc_ln4_fu_1791_p4 = {{select_ln26_14_fu_1777_p3[127:64]}};
assign trunc_ln5_fu_1806_p4 = {{select_ln26_14_fu_1777_p3[191:128]}};
assign trunc_ln8_1_fu_1304_p1 = b1_y_reg_847[0:0];
assign trunc_ln8_2_fu_1383_p1 = b1_z_reg_857[0:0];
assign trunc_ln8_fu_1269_p1 = b1_x_reg_837[0:0];
assign zext_ln23_1_fu_1356_p1 = lshr_ln8_5_fu_1346_p4;
assign zext_ln23_2_fu_1365_p1 = add_ln23_1_fu_1360_p2;
assign zext_ln23_fu_1318_p1 = lshr_ln8_4_fu_1308_p4;
assign zext_ln24_fu_1456_p1 = p_idx_reg_867;
assign zext_ln26_1_fu_1490_p1 = add_ln26_fu_1485_p2;
assign zext_ln26_fu_1149_p1 = tmp_15_fu_1139_p5;
assign zext_ln8_1_fu_1387_p1 = add_ln23_1_reg_2119;
assign zext_ln8_fu_1289_p1 = tmp_16_fu_1281_p3;
always @ (posedge ap_clk) begin
    smax73_cast_reg_1948[2] <= 1'b0;
    smax68_cast_reg_1982[2] <= 1'b0;
    smax_cast_reg_2062[2] <= 1'b0;
    zext_ln8_reg_2086[0] <= 1'b0;
    zext_ln8_reg_2086[2] <= 1'b0;
    tmp_18_reg_2106[0] <= 1'b0;
end
endmodule 