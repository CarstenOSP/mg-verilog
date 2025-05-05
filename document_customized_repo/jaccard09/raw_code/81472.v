module md (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,n_points_0_0_0_address0,n_points_0_0_0_ce0,n_points_0_0_0_q0,n_points_0_0_1_address0,n_points_0_0_1_ce0,n_points_0_0_1_q0,n_points_0_1_0_address0,n_points_0_1_0_ce0,n_points_0_1_0_q0,n_points_0_1_1_address0,n_points_0_1_1_ce0,n_points_0_1_1_q0,n_points_1_0_0_address0,n_points_1_0_0_ce0,n_points_1_0_0_q0,n_points_1_0_1_address0,n_points_1_0_1_ce0,n_points_1_0_1_q0,n_points_1_1_0_address0,n_points_1_1_0_ce0,n_points_1_1_0_q0,n_points_1_1_1_address0,n_points_1_1_1_ce0,n_points_1_1_1_q0,force_0_0_0_0_address0,force_0_0_0_0_ce0,force_0_0_0_0_we0,force_0_0_0_0_d0,force_0_0_0_0_q0,force_0_0_0_1_address0,force_0_0_0_1_ce0,force_0_0_0_1_we0,force_0_0_0_1_d0,force_0_0_0_1_q0,force_0_0_1_0_address0,force_0_0_1_0_ce0,force_0_0_1_0_we0,force_0_0_1_0_d0,force_0_0_1_0_q0,force_0_0_1_1_address0,force_0_0_1_1_ce0,force_0_0_1_1_we0,force_0_0_1_1_d0,force_0_0_1_1_q0,force_0_1_0_0_address0,force_0_1_0_0_ce0,force_0_1_0_0_we0,force_0_1_0_0_d0,force_0_1_0_0_q0,force_0_1_0_1_address0,force_0_1_0_1_ce0,force_0_1_0_1_we0,force_0_1_0_1_d0,force_0_1_0_1_q0,force_0_1_1_0_address0,force_0_1_1_0_ce0,force_0_1_1_0_we0,force_0_1_1_0_d0,force_0_1_1_0_q0,force_0_1_1_1_address0,force_0_1_1_1_ce0,force_0_1_1_1_we0,force_0_1_1_1_d0,force_0_1_1_1_q0,force_1_0_0_0_address0,force_1_0_0_0_ce0,force_1_0_0_0_we0,force_1_0_0_0_d0,force_1_0_0_0_q0,force_1_0_0_1_address0,force_1_0_0_1_ce0,force_1_0_0_1_we0,force_1_0_0_1_d0,force_1_0_0_1_q0,force_1_0_1_0_address0,force_1_0_1_0_ce0,force_1_0_1_0_we0,force_1_0_1_0_d0,force_1_0_1_0_q0,force_1_0_1_1_address0,force_1_0_1_1_ce0,force_1_0_1_1_we0,force_1_0_1_1_d0,force_1_0_1_1_q0,force_1_1_0_0_address0,force_1_1_0_0_ce0,force_1_1_0_0_we0,force_1_1_0_0_d0,force_1_1_0_0_q0,force_1_1_0_1_address0,force_1_1_0_1_ce0,force_1_1_0_1_we0,force_1_1_0_1_d0,force_1_1_0_1_q0,force_1_1_1_0_address0,force_1_1_1_0_ce0,force_1_1_1_0_we0,force_1_1_1_0_d0,force_1_1_1_0_q0,force_1_1_1_1_address0,force_1_1_1_1_ce0,force_1_1_1_1_we0,force_1_1_1_1_d0,force_1_1_1_1_q0,position_0_0_0_0_address0,position_0_0_0_0_ce0,position_0_0_0_0_q0,position_0_0_0_0_address1,position_0_0_0_0_ce1,position_0_0_0_0_q1,position_0_0_0_1_address0,position_0_0_0_1_ce0,position_0_0_0_1_q0,position_0_0_0_1_address1,position_0_0_0_1_ce1,position_0_0_0_1_q1,position_0_0_1_0_address0,position_0_0_1_0_ce0,position_0_0_1_0_q0,position_0_0_1_0_address1,position_0_0_1_0_ce1,position_0_0_1_0_q1,position_0_0_1_1_address0,position_0_0_1_1_ce0,position_0_0_1_1_q0,position_0_0_1_1_address1,position_0_0_1_1_ce1,position_0_0_1_1_q1,position_0_1_0_0_address0,position_0_1_0_0_ce0,position_0_1_0_0_q0,position_0_1_0_0_address1,position_0_1_0_0_ce1,position_0_1_0_0_q1,position_0_1_0_1_address0,position_0_1_0_1_ce0,position_0_1_0_1_q0,position_0_1_0_1_address1,position_0_1_0_1_ce1,position_0_1_0_1_q1,position_0_1_1_0_address0,position_0_1_1_0_ce0,position_0_1_1_0_q0,position_0_1_1_0_address1,position_0_1_1_0_ce1,position_0_1_1_0_q1,position_0_1_1_1_address0,position_0_1_1_1_ce0,position_0_1_1_1_q0,position_0_1_1_1_address1,position_0_1_1_1_ce1,position_0_1_1_1_q1,position_1_0_0_0_address0,position_1_0_0_0_ce0,position_1_0_0_0_q0,position_1_0_0_0_address1,position_1_0_0_0_ce1,position_1_0_0_0_q1,position_1_0_0_1_address0,position_1_0_0_1_ce0,position_1_0_0_1_q0,position_1_0_0_1_address1,position_1_0_0_1_ce1,position_1_0_0_1_q1,position_1_0_1_0_address0,position_1_0_1_0_ce0,position_1_0_1_0_q0,position_1_0_1_0_address1,position_1_0_1_0_ce1,position_1_0_1_0_q1,position_1_0_1_1_address0,position_1_0_1_1_ce0,position_1_0_1_1_q0,position_1_0_1_1_address1,position_1_0_1_1_ce1,position_1_0_1_1_q1,position_1_1_0_0_address0,position_1_1_0_0_ce0,position_1_1_0_0_q0,position_1_1_0_0_address1,position_1_1_0_0_ce1,position_1_1_0_0_q1,position_1_1_0_1_address0,position_1_1_0_1_ce0,position_1_1_0_1_q0,position_1_1_0_1_address1,position_1_1_0_1_ce1,position_1_1_0_1_q1,position_1_1_1_0_address0,position_1_1_1_0_ce0,position_1_1_1_0_q0,position_1_1_1_0_address1,position_1_1_1_0_ce1,position_1_1_1_0_q1,position_1_1_1_1_address0,position_1_1_1_1_ce0,position_1_1_1_1_q0,position_1_1_1_1_address1,position_1_1_1_1_ce1,position_1_1_1_1_q1); 
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
output  [5:0] position_0_0_0_0_address1;
output   position_0_0_0_0_ce1;
input  [191:0] position_0_0_0_0_q1;
output  [5:0] position_0_0_0_1_address0;
output   position_0_0_0_1_ce0;
input  [191:0] position_0_0_0_1_q0;
output  [5:0] position_0_0_0_1_address1;
output   position_0_0_0_1_ce1;
input  [191:0] position_0_0_0_1_q1;
output  [5:0] position_0_0_1_0_address0;
output   position_0_0_1_0_ce0;
input  [191:0] position_0_0_1_0_q0;
output  [5:0] position_0_0_1_0_address1;
output   position_0_0_1_0_ce1;
input  [191:0] position_0_0_1_0_q1;
output  [5:0] position_0_0_1_1_address0;
output   position_0_0_1_1_ce0;
input  [191:0] position_0_0_1_1_q0;
output  [5:0] position_0_0_1_1_address1;
output   position_0_0_1_1_ce1;
input  [191:0] position_0_0_1_1_q1;
output  [5:0] position_0_1_0_0_address0;
output   position_0_1_0_0_ce0;
input  [191:0] position_0_1_0_0_q0;
output  [5:0] position_0_1_0_0_address1;
output   position_0_1_0_0_ce1;
input  [191:0] position_0_1_0_0_q1;
output  [5:0] position_0_1_0_1_address0;
output   position_0_1_0_1_ce0;
input  [191:0] position_0_1_0_1_q0;
output  [5:0] position_0_1_0_1_address1;
output   position_0_1_0_1_ce1;
input  [191:0] position_0_1_0_1_q1;
output  [5:0] position_0_1_1_0_address0;
output   position_0_1_1_0_ce0;
input  [191:0] position_0_1_1_0_q0;
output  [5:0] position_0_1_1_0_address1;
output   position_0_1_1_0_ce1;
input  [191:0] position_0_1_1_0_q1;
output  [5:0] position_0_1_1_1_address0;
output   position_0_1_1_1_ce0;
input  [191:0] position_0_1_1_1_q0;
output  [5:0] position_0_1_1_1_address1;
output   position_0_1_1_1_ce1;
input  [191:0] position_0_1_1_1_q1;
output  [5:0] position_1_0_0_0_address0;
output   position_1_0_0_0_ce0;
input  [191:0] position_1_0_0_0_q0;
output  [5:0] position_1_0_0_0_address1;
output   position_1_0_0_0_ce1;
input  [191:0] position_1_0_0_0_q1;
output  [5:0] position_1_0_0_1_address0;
output   position_1_0_0_1_ce0;
input  [191:0] position_1_0_0_1_q0;
output  [5:0] position_1_0_0_1_address1;
output   position_1_0_0_1_ce1;
input  [191:0] position_1_0_0_1_q1;
output  [5:0] position_1_0_1_0_address0;
output   position_1_0_1_0_ce0;
input  [191:0] position_1_0_1_0_q0;
output  [5:0] position_1_0_1_0_address1;
output   position_1_0_1_0_ce1;
input  [191:0] position_1_0_1_0_q1;
output  [5:0] position_1_0_1_1_address0;
output   position_1_0_1_1_ce0;
input  [191:0] position_1_0_1_1_q0;
output  [5:0] position_1_0_1_1_address1;
output   position_1_0_1_1_ce1;
input  [191:0] position_1_0_1_1_q1;
output  [5:0] position_1_1_0_0_address0;
output   position_1_1_0_0_ce0;
input  [191:0] position_1_1_0_0_q0;
output  [5:0] position_1_1_0_0_address1;
output   position_1_1_0_0_ce1;
input  [191:0] position_1_1_0_0_q1;
output  [5:0] position_1_1_0_1_address0;
output   position_1_1_0_1_ce0;
input  [191:0] position_1_1_0_1_q0;
output  [5:0] position_1_1_0_1_address1;
output   position_1_1_0_1_ce1;
input  [191:0] position_1_1_0_1_q1;
output  [5:0] position_1_1_1_0_address0;
output   position_1_1_1_0_ce0;
input  [191:0] position_1_1_1_0_q0;
output  [5:0] position_1_1_1_0_address1;
output   position_1_1_1_0_ce1;
input  [191:0] position_1_1_1_0_q1;
output  [5:0] position_1_1_1_1_address0;
output   position_1_1_1_1_ce0;
input  [191:0] position_1_1_1_1_q0;
output  [5:0] position_1_1_1_1_address1;
output   position_1_1_1_1_ce1;
input  [191:0] position_1_1_1_1_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] position_0_0_0_0_address0;
reg position_0_0_0_0_ce0;
reg position_0_0_0_0_ce1;
reg[5:0] position_0_0_0_1_address0;
reg position_0_0_0_1_ce0;
reg position_0_0_0_1_ce1;
reg[5:0] position_0_0_1_0_address0;
reg position_0_0_1_0_ce0;
reg position_0_0_1_0_ce1;
reg[5:0] position_0_0_1_1_address0;
reg position_0_0_1_1_ce0;
reg position_0_0_1_1_ce1;
reg[5:0] position_0_1_0_0_address0;
reg position_0_1_0_0_ce0;
reg position_0_1_0_0_ce1;
reg[5:0] position_0_1_0_1_address0;
reg position_0_1_0_1_ce0;
reg position_0_1_0_1_ce1;
reg[5:0] position_0_1_1_0_address0;
reg position_0_1_1_0_ce0;
reg position_0_1_1_0_ce1;
reg[5:0] position_0_1_1_1_address0;
reg position_0_1_1_1_ce0;
reg position_0_1_1_1_ce1;
reg[5:0] position_1_0_0_0_address0;
reg position_1_0_0_0_ce0;
reg position_1_0_0_0_ce1;
reg[5:0] position_1_0_0_1_address0;
reg position_1_0_0_1_ce0;
reg position_1_0_0_1_ce1;
reg[5:0] position_1_0_1_0_address0;
reg position_1_0_1_0_ce0;
reg position_1_0_1_0_ce1;
reg[5:0] position_1_0_1_1_address0;
reg position_1_0_1_1_ce0;
reg position_1_0_1_1_ce1;
reg[5:0] position_1_1_0_0_address0;
reg position_1_1_0_0_ce0;
reg position_1_1_0_0_ce1;
reg[5:0] position_1_1_0_1_address0;
reg position_1_1_0_1_ce0;
reg position_1_1_0_1_ce1;
reg[5:0] position_1_1_1_0_address0;
reg position_1_1_1_0_ce0;
reg position_1_1_1_0_ce1;
reg[5:0] position_1_1_1_1_address0;
reg position_1_1_1_1_ce0;
reg position_1_1_1_1_ce1;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] add_ln14_fu_1004_p2;
reg   [2:0] add_ln14_reg_2146;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln14_1_fu_1014_p1;
reg   [0:0] trunc_ln14_1_reg_2151;
reg   [0:0] tmp_reg_2158;
wire   [2:0] smax80_cast_fu_1040_p1;
reg   [2:0] smax80_cast_reg_2164;
wire   [2:0] cond24_fu_1056_p3;
reg   [2:0] cond24_reg_2169;
wire   [2:0] add_ln15_fu_1070_p2;
reg   [2:0] add_ln15_reg_2177;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln15_1_fu_1080_p1;
reg   [0:0] trunc_ln15_1_reg_2182;
reg   [0:0] tmp_12_reg_2192;
wire   [2:0] smax75_cast_fu_1106_p1;
reg   [2:0] smax75_cast_reg_2198;
wire   [2:0] cond47_fu_1122_p3;
reg   [2:0] cond47_reg_2203;
wire   [2:0] add_ln16_fu_1151_p2;
reg   [2:0] add_ln16_reg_2211;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_13_fu_1157_p3;
reg   [0:0] tmp_13_reg_2216;
wire   [2:0] tmp_16_fu_1165_p4;
reg   [2:0] tmp_16_reg_2221;
wire   [2:0] add_ln15_1_fu_1185_p2;
wire   [0:0] trunc_ln16_1_fu_1195_p1;
reg   [0:0] trunc_ln16_1_reg_2271;
wire    ap_CS_fsm_state5;
wire   [5:0] add_ln26_1_fu_1215_p2;
reg   [5:0] add_ln26_1_reg_2283;
wire   [2:0] smax_cast_fu_1235_p1;
reg   [2:0] smax_cast_reg_2288;
wire   [2:0] cond70_fu_1251_p3;
reg   [2:0] cond70_reg_2293;
wire   [31:0] tmp_11_fu_1305_p3;
reg   [31:0] tmp_11_reg_2298;
wire   [0:0] trunc_ln8_fu_1317_p1;
reg   [0:0] trunc_ln8_reg_2306;
wire    ap_CS_fsm_state6;
wire   [2:0] zext_ln8_fu_1337_p1;
reg   [2:0] zext_ln8_reg_2312;
wire   [2:0] add_ln16_1_fu_1341_p2;
wire   [0:0] trunc_ln8_1_fu_1352_p1;
reg   [0:0] trunc_ln8_1_reg_2325;
wire    ap_CS_fsm_state7;
wire   [3:0] tmp_17_fu_1375_p3;
reg   [3:0] tmp_17_reg_2332;
wire   [2:0] add_ln18_fu_1383_p2;
wire   [3:0] add_ln23_1_fu_1408_p2;
reg   [3:0] add_ln23_1_reg_2345;
wire    ap_CS_fsm_state8;
wire   [2:0] add_ln19_fu_1425_p2;
wire   [0:0] trunc_ln8_2_fu_1431_p1;
reg   [0:0] trunc_ln8_2_reg_2396;
wire    ap_CS_fsm_state9;
wire   [5:0] add_ln8_fu_1445_p2;
reg   [5:0] add_ln8_reg_2401;
wire   [31:0] q_idx_range_fu_1497_p3;
reg   [31:0] q_idx_range_reg_2406;
wire   [30:0] add_ln24_fu_1513_p2;
reg   [30:0] add_ln24_reg_2415;
wire    ap_CS_fsm_state10;
wire   [0:0] trunc_ln24_fu_1519_p1;
reg   [0:0] trunc_ln24_reg_2420;
reg   [5:0] force_0_0_0_0_addr_reg_2440;
reg   [5:0] force_0_0_0_1_addr_reg_2445;
reg   [5:0] force_0_0_1_0_addr_reg_2450;
reg   [5:0] force_0_0_1_1_addr_reg_2455;
reg   [5:0] force_0_1_0_0_addr_reg_2460;
reg   [5:0] force_0_1_0_1_addr_reg_2465;
reg   [5:0] force_0_1_1_0_addr_reg_2470;
reg   [5:0] force_0_1_1_1_addr_reg_2475;
reg   [5:0] force_1_0_0_0_addr_reg_2480;
reg   [5:0] force_1_0_0_1_addr_reg_2485;
reg   [5:0] force_1_0_1_0_addr_reg_2490;
reg   [5:0] force_1_0_1_1_addr_reg_2495;
reg   [5:0] force_1_1_0_0_addr_reg_2500;
reg   [5:0] force_1_1_0_1_addr_reg_2505;
reg   [5:0] force_1_1_1_0_addr_reg_2510;
reg   [5:0] force_1_1_1_1_addr_reg_2515;
wire   [2:0] add_ln20_fu_1574_p2;
wire   [191:0] select_ln25_6_fu_1622_p3;
reg   [191:0] select_ln25_6_reg_2605;
wire    ap_CS_fsm_state11;
wire   [191:0] select_ln25_13_fu_1671_p3;
reg   [191:0] select_ln25_13_reg_2610;
wire   [191:0] select_ln26_6_fu_1720_p3;
reg   [191:0] select_ln26_6_reg_2615;
wire   [191:0] select_ln26_13_fu_1769_p3;
reg   [191:0] select_ln26_13_reg_2620;
wire   [190:0] trunc_ln25_fu_1781_p1;
reg   [190:0] trunc_ln25_reg_2625;
wire    ap_CS_fsm_state12;
wire   [63:0] p_x_fu_1790_p1;
reg   [63:0] p_x_reg_2630;
wire   [63:0] p_y_fu_1805_p1;
reg   [63:0] p_y_reg_2635;
wire   [63:0] p_z_fu_1820_p1;
reg   [63:0] p_z_reg_2640;
wire   [63:0] sum_x_fu_1834_p1;
reg   [63:0] sum_x_reg_2645;
wire   [63:0] sum_y_fu_1849_p1;
reg   [63:0] sum_y_reg_2650;
wire   [63:0] sum_z_fu_1864_p1;
reg   [63:0] sum_z_reg_2655;
wire   [51:0] trunc_ln34_fu_1869_p1;
reg   [51:0] trunc_ln34_reg_2660;
reg   [51:0] trunc_ln34_3_reg_2665;
reg   [51:0] trunc_ln34_5_reg_2670;
wire   [1:0] grp_md_Pipeline_loop_q_fu_918_ap_return;
reg   [1:0] targetBlock_reg_2675;
wire    ap_CS_fsm_state13;
wire    grp_md_Pipeline_loop_q_fu_918_ap_start;
wire    grp_md_Pipeline_loop_q_fu_918_ap_done;
wire    grp_md_Pipeline_loop_q_fu_918_ap_idle;
wire    grp_md_Pipeline_loop_q_fu_918_ap_ready;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_ce1;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_z_1_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_z_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_y_1_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_y_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_x_1_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_x_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_x_7_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_x_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_y_7_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_y_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_z_7_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_z_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_x_5_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_x_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_y_5_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_y_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_z_5_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_z_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_x_3_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_x_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_y_3_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_y_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_918_sum_z_3_out;
wire    grp_md_Pipeline_loop_q_fu_918_sum_z_3_out_ap_vld;
reg   [2:0] b0_y_reg_830;
wire   [0:0] icmp_ln14_fu_998_p2;
wire   [0:0] icmp_ln16_fu_1145_p2;
reg   [2:0] indvars_iv73_reg_841;
reg   [2:0] b0_z_reg_853;
wire   [0:0] icmp_ln15_fu_1064_p2;
wire   [0:0] icmp_ln18_fu_1312_p2;
reg   [2:0] indvars_iv69_reg_865;
reg   [2:0] b1_x_reg_877;
wire   [0:0] icmp_ln19_fu_1347_p2;
reg   [2:0] b1_y_reg_887;
wire   [0:0] icmp_ln20_fu_1389_p2;
reg   [2:0] b1_z_reg_897;
wire   [0:0] icmp_ln24_fu_1508_p2;
reg   [30:0] p_idx_reg_907;
wire    ap_CS_fsm_state14;
reg    grp_md_Pipeline_loop_q_fu_918_ap_start_reg;
reg   [63:0] sum_z_1_loc_fu_242;
reg   [63:0] sum_y_1_loc_fu_238;
reg   [63:0] sum_x_1_loc_fu_234;
reg   [63:0] sum_x_7_loc_fu_230;
reg   [63:0] sum_y_7_loc_fu_226;
reg   [63:0] sum_z_7_loc_fu_222;
reg   [63:0] sum_x_5_loc_fu_218;
reg   [63:0] sum_y_5_loc_fu_214;
reg   [63:0] sum_z_5_loc_fu_210;
reg   [63:0] sum_x_3_loc_fu_206;
reg   [63:0] sum_y_3_loc_fu_202;
reg   [63:0] sum_z_3_loc_fu_198;
wire   [63:0] tmp_16_cast5_fu_1173_p1;
wire   [63:0] zext_ln23_2_fu_1413_p1;
wire   [63:0] zext_ln26_1_fu_1538_p1;
reg   [2:0] indvars_iv78_fu_190;
wire   [2:0] add_ln14_1_fu_1130_p2;
reg   [2:0] b0_x_fu_194;
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
wire   [191:0] or_ln_fu_2031_p4;
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
wire   [0:0] empty_fu_1026_p2;
wire   [1:0] trunc_ln14_fu_1010_p1;
wire   [1:0] smax80_fu_1032_p3;
wire   [2:0] empty_26_fu_1044_p2;
wire   [0:0] cmp18_fu_1050_p2;
wire   [0:0] empty_27_fu_1092_p2;
wire   [1:0] trunc_ln15_fu_1076_p1;
wire   [1:0] smax75_fu_1098_p3;
wire   [2:0] empty_28_fu_1110_p2;
wire   [0:0] cmp41_fu_1116_p2;
wire   [4:0] tmp_14_fu_1202_p5;
wire   [5:0] zext_ln26_fu_1211_p1;
wire   [5:0] tmp_16_cast_fu_1199_p1;
wire   [0:0] empty_29_fu_1221_p2;
wire   [1:0] trunc_ln16_fu_1191_p1;
wire   [1:0] smax_fu_1227_p3;
wire   [2:0] empty_30_fu_1239_p2;
wire   [0:0] cmp64_fu_1245_p2;
wire   [31:0] tmp_8_fu_1267_p3;
wire   [31:0] tmp_7_fu_1259_p3;
wire   [31:0] tmp_6_fu_1290_p3;
wire   [31:0] tmp_s_fu_1282_p3;
wire   [31:0] tmp_10_fu_1298_p3;
wire   [31:0] tmp_9_fu_1275_p3;
wire   [0:0] tmp_15_fu_1321_p3;
wire   [1:0] tmp_19_fu_1329_p3;
wire   [1:0] lshr_ln8_4_fu_1356_p4;
wire   [2:0] zext_ln23_fu_1366_p1;
wire   [2:0] add_ln23_fu_1370_p2;
wire   [1:0] lshr_ln8_5_fu_1394_p4;
wire   [3:0] zext_ln23_1_fu_1404_p1;
wire   [5:0] tmp_18_fu_1438_p3;
wire   [5:0] zext_ln8_1_fu_1435_p1;
wire   [31:0] select_ln23_1_fu_1459_p3;
wire   [31:0] select_ln23_fu_1451_p3;
wire   [31:0] select_ln23_4_fu_1482_p3;
wire   [31:0] select_ln23_3_fu_1474_p3;
wire   [31:0] select_ln23_5_fu_1490_p3;
wire   [31:0] select_ln23_2_fu_1467_p3;
wire   [31:0] zext_ln24_fu_1504_p1;
wire   [5:0] lshr_ln_fu_1523_p4;
wire   [5:0] add_ln26_fu_1533_p2;
wire   [191:0] select_ln25_1_fu_1587_p3;
wire   [191:0] select_ln25_fu_1580_p3;
wire   [191:0] select_ln25_4_fu_1608_p3;
wire   [191:0] select_ln25_3_fu_1601_p3;
wire   [191:0] select_ln25_5_fu_1615_p3;
wire   [191:0] select_ln25_2_fu_1594_p3;
wire   [191:0] select_ln25_8_fu_1636_p3;
wire   [191:0] select_ln25_7_fu_1629_p3;
wire   [191:0] select_ln25_11_fu_1657_p3;
wire   [191:0] select_ln25_10_fu_1650_p3;
wire   [191:0] select_ln25_12_fu_1664_p3;
wire   [191:0] select_ln25_9_fu_1643_p3;
wire   [191:0] select_ln26_1_fu_1685_p3;
wire   [191:0] select_ln26_fu_1678_p3;
wire   [191:0] select_ln26_4_fu_1706_p3;
wire   [191:0] select_ln26_3_fu_1699_p3;
wire   [191:0] select_ln26_5_fu_1713_p3;
wire   [191:0] select_ln26_2_fu_1692_p3;
wire   [191:0] select_ln26_8_fu_1734_p3;
wire   [191:0] select_ln26_7_fu_1727_p3;
wire   [191:0] select_ln26_11_fu_1755_p3;
wire   [191:0] select_ln26_10_fu_1748_p3;
wire   [191:0] select_ln26_12_fu_1762_p3;
wire   [191:0] select_ln26_9_fu_1741_p3;
wire   [191:0] select_ln25_14_fu_1776_p3;
wire   [63:0] trunc_ln25_3_fu_1786_p1;
wire   [63:0] trunc_ln25_1_fu_1795_p4;
wire   [63:0] trunc_ln25_2_fu_1810_p4;
wire   [191:0] select_ln26_14_fu_1825_p3;
wire   [63:0] trunc_ln26_fu_1830_p1;
wire   [63:0] trunc_ln4_fu_1839_p4;
wire   [63:0] trunc_ln5_fu_1854_p4;
wire   [0:0] empty_31_fu_1932_p2;
wire   [0:0] empty_33_fu_1945_p2;
wire   [63:0] empty_32_fu_1937_p3;
wire   [0:0] empty_35_fu_1958_p2;
wire   [63:0] empty_34_fu_1950_p3;
wire   [63:0] empty_36_fu_1971_p3;
wire   [63:0] empty_37_fu_1979_p3;
wire   [63:0] empty_38_fu_1995_p3;
wire   [63:0] empty_39_fu_2003_p3;
wire   [63:0] sum_x_0_lcssa_ph_fu_2011_p3;
wire   [63:0] sum_y_0_lcssa_ph_fu_1987_p3;
wire   [63:0] sum_z_0_lcssa_ph_fu_1963_p3;
wire   [63:0] bitcast_ln51_fu_2027_p1;
wire   [63:0] bitcast_ln50_fu_2023_p1;
wire   [63:0] bitcast_ln49_fu_2019_p1;
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
#0 grp_md_Pipeline_loop_q_fu_918_ap_start_reg = 1'b0;
#0 indvars_iv78_fu_190 = 3'd0;
#0 b0_x_fu_194 = 3'd0;
end
md_md_Pipeline_loop_q grp_md_Pipeline_loop_q_fu_918(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_md_Pipeline_loop_q_fu_918_ap_start),.ap_done(grp_md_Pipeline_loop_q_fu_918_ap_done),.ap_idle(grp_md_Pipeline_loop_q_fu_918_ap_idle),.ap_ready(grp_md_Pipeline_loop_q_fu_918_ap_ready),.sum_z(sum_z_reg_2655),.sum_y(sum_y_reg_2650),.sum_x(sum_x_reg_2645),.sext_ln24(q_idx_range_reg_2406),.empty_10(trunc_ln8_2_reg_2396),.empty_11(trunc_ln8_1_reg_2325),.empty_12(trunc_ln8_reg_2306),.p_x(p_x_reg_2630),.p_y(p_y_reg_2635),.p_z(p_z_reg_2640),.q_idx_range(q_idx_range_reg_2406),.mul_ln31(add_ln8_reg_2401),.position_0_0_0_0_address0(grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_address0),.position_0_0_0_0_ce0(grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_ce0),.position_0_0_0_0_q0(position_0_0_0_0_q0),.position_0_0_0_0_address1(grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_address1),.position_0_0_0_0_ce1(grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_ce1),.position_0_0_0_0_q1(position_0_0_0_0_q1),.position_0_0_0_1_address0(grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_address0),.position_0_0_0_1_ce0(grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_ce0),.position_0_0_0_1_q0(position_0_0_0_1_q0),.position_0_0_0_1_address1(grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_address1),.position_0_0_0_1_ce1(grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_ce1),.position_0_0_0_1_q1(position_0_0_0_1_q1),.position_0_0_1_0_address0(grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_address0),.position_0_0_1_0_ce0(grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_ce0),.position_0_0_1_0_q0(position_0_0_1_0_q0),.position_0_0_1_0_address1(grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_address1),.position_0_0_1_0_ce1(grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_ce1),.position_0_0_1_0_q1(position_0_0_1_0_q1),.position_0_0_1_1_address0(grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_address0),.position_0_0_1_1_ce0(grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_ce0),.position_0_0_1_1_q0(position_0_0_1_1_q0),.position_0_0_1_1_address1(grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_address1),.position_0_0_1_1_ce1(grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_ce1),.position_0_0_1_1_q1(position_0_0_1_1_q1),.position_0_1_0_0_address0(grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_address0),.position_0_1_0_0_ce0(grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_ce0),.position_0_1_0_0_q0(position_0_1_0_0_q0),.position_0_1_0_0_address1(grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_address1),.position_0_1_0_0_ce1(grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_ce1),.position_0_1_0_0_q1(position_0_1_0_0_q1),.position_0_1_0_1_address0(grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_address0),.position_0_1_0_1_ce0(grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_ce0),.position_0_1_0_1_q0(position_0_1_0_1_q0),.position_0_1_0_1_address1(grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_address1),.position_0_1_0_1_ce1(grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_ce1),.position_0_1_0_1_q1(position_0_1_0_1_q1),.position_0_1_1_0_address0(grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_address0),.position_0_1_1_0_ce0(grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_ce0),.position_0_1_1_0_q0(position_0_1_1_0_q0),.position_0_1_1_0_address1(grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_address1),.position_0_1_1_0_ce1(grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_ce1),.position_0_1_1_0_q1(position_0_1_1_0_q1),.position_0_1_1_1_address0(grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_address0),.position_0_1_1_1_ce0(grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_ce0),.position_0_1_1_1_q0(position_0_1_1_1_q0),.position_0_1_1_1_address1(grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_address1),.position_0_1_1_1_ce1(grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_ce1),.position_0_1_1_1_q1(position_0_1_1_1_q1),.position_1_0_0_0_address0(grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_address0),.position_1_0_0_0_ce0(grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_ce0),.position_1_0_0_0_q0(position_1_0_0_0_q0),.position_1_0_0_0_address1(grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_address1),.position_1_0_0_0_ce1(grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_ce1),.position_1_0_0_0_q1(position_1_0_0_0_q1),.position_1_0_0_1_address0(grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_address0),.position_1_0_0_1_ce0(grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_ce0),.position_1_0_0_1_q0(position_1_0_0_1_q0),.position_1_0_0_1_address1(grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_address1),.position_1_0_0_1_ce1(grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_ce1),.position_1_0_0_1_q1(position_1_0_0_1_q1),.position_1_0_1_0_address0(grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_address0),.position_1_0_1_0_ce0(grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_ce0),.position_1_0_1_0_q0(position_1_0_1_0_q0),.position_1_0_1_0_address1(grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_address1),.position_1_0_1_0_ce1(grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_ce1),.position_1_0_1_0_q1(position_1_0_1_0_q1),.position_1_0_1_1_address0(grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_address0),.position_1_0_1_1_ce0(grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_ce0),.position_1_0_1_1_q0(position_1_0_1_1_q0),.position_1_0_1_1_address1(grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_address1),.position_1_0_1_1_ce1(grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_ce1),.position_1_0_1_1_q1(position_1_0_1_1_q1),.position_1_1_0_0_address0(grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_address0),.position_1_1_0_0_ce0(grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_ce0),.position_1_1_0_0_q0(position_1_1_0_0_q0),.position_1_1_0_0_address1(grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_address1),.position_1_1_0_0_ce1(grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_ce1),.position_1_1_0_0_q1(position_1_1_0_0_q1),.position_1_1_0_1_address0(grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_address0),.position_1_1_0_1_ce0(grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_ce0),.position_1_1_0_1_q0(position_1_1_0_1_q0),.position_1_1_0_1_address1(grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_address1),.position_1_1_0_1_ce1(grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_ce1),.position_1_1_0_1_q1(position_1_1_0_1_q1),.position_1_1_1_0_address0(grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_address0),.position_1_1_1_0_ce0(grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_ce0),.position_1_1_1_0_q0(position_1_1_1_0_q0),.position_1_1_1_0_address1(grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_address1),.position_1_1_1_0_ce1(grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_ce1),.position_1_1_1_0_q1(position_1_1_1_0_q1),.position_1_1_1_1_address0(grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_address0),.position_1_1_1_1_ce0(grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_ce0),.position_1_1_1_1_q0(position_1_1_1_1_q0),.position_1_1_1_1_address1(grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_address1),.position_1_1_1_1_ce1(grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_ce1),.position_1_1_1_1_q1(position_1_1_1_1_q1),.select_ln25_14(trunc_ln25_reg_2625),.empty(trunc_ln34_reg_2660),.trunc_ln34_3(trunc_ln34_3_reg_2665),.trunc_ln34_5(trunc_ln34_5_reg_2670),.sum_z_1_out(grp_md_Pipeline_loop_q_fu_918_sum_z_1_out),.sum_z_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_z_1_out_ap_vld),.sum_y_1_out(grp_md_Pipeline_loop_q_fu_918_sum_y_1_out),.sum_y_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_y_1_out_ap_vld),.sum_x_1_out(grp_md_Pipeline_loop_q_fu_918_sum_x_1_out),.sum_x_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_x_1_out_ap_vld),.sum_x_7_out(grp_md_Pipeline_loop_q_fu_918_sum_x_7_out),.sum_x_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_x_7_out_ap_vld),.sum_y_7_out(grp_md_Pipeline_loop_q_fu_918_sum_y_7_out),.sum_y_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_y_7_out_ap_vld),.sum_z_7_out(grp_md_Pipeline_loop_q_fu_918_sum_z_7_out),.sum_z_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_z_7_out_ap_vld),.sum_x_5_out(grp_md_Pipeline_loop_q_fu_918_sum_x_5_out),.sum_x_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_x_5_out_ap_vld),.sum_y_5_out(grp_md_Pipeline_loop_q_fu_918_sum_y_5_out),.sum_y_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_y_5_out_ap_vld),.sum_z_5_out(grp_md_Pipeline_loop_q_fu_918_sum_z_5_out),.sum_z_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_z_5_out_ap_vld),.sum_x_3_out(grp_md_Pipeline_loop_q_fu_918_sum_x_3_out),.sum_x_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_x_3_out_ap_vld),.sum_y_3_out(grp_md_Pipeline_loop_q_fu_918_sum_y_3_out),.sum_y_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_y_3_out_ap_vld),.sum_z_3_out(grp_md_Pipeline_loop_q_fu_918_sum_z_3_out),.sum_z_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_918_sum_z_3_out_ap_vld),.ap_return(grp_md_Pipeline_loop_q_fu_918_ap_return));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_md_Pipeline_loop_q_fu_918_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_md_Pipeline_loop_q_fu_918_ap_start_reg <= 1'b1;
        end else if ((grp_md_Pipeline_loop_q_fu_918_ap_ready == 1'b1)) begin
            grp_md_Pipeline_loop_q_fu_918_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b0_x_fu_194 <= 3'd0;
    end else if (((icmp_ln15_fu_1064_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_x_fu_194 <= add_ln14_reg_2146;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_1145_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        b0_y_reg_830 <= add_ln15_reg_2177;
    end else if (((icmp_ln14_fu_998_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b0_y_reg_830 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1312_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        b0_z_reg_853 <= add_ln16_reg_2211;
    end else if (((icmp_ln15_fu_1064_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_z_reg_853 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b1_x_reg_877 <= smax80_cast_reg_2164;
    end else if (((icmp_ln19_fu_1347_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_x_reg_877 <= add_ln18_fu_1383_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1312_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        b1_y_reg_887 <= smax75_cast_reg_2198;
    end else if (((icmp_ln20_fu_1389_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        b1_y_reg_887 <= add_ln19_fu_1425_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_1347_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_z_reg_897 <= smax_cast_reg_2288;
    end else if (((icmp_ln24_fu_1508_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        b1_z_reg_897 <= add_ln20_fu_1574_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1312_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        indvars_iv69_reg_865 <= add_ln16_1_fu_1341_p2;
    end else if (((icmp_ln15_fu_1064_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv69_reg_865 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_1145_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv73_reg_841 <= add_ln15_1_fu_1185_p2;
    end else if (((icmp_ln14_fu_998_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv73_reg_841 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv78_fu_190 <= 3'd7;
    end else if (((icmp_ln15_fu_1064_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv78_fu_190 <= add_ln14_1_fu_1130_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        p_idx_reg_907 <= add_ln24_reg_2415;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        p_idx_reg_907 <= 31'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln14_reg_2146 <= add_ln14_fu_1004_p2;
        cond24_reg_2169 <= cond24_fu_1056_p3;
        smax80_cast_reg_2164[1 : 0] <= smax80_cast_fu_1040_p1[1 : 0];
        tmp_reg_2158 <= b0_x_fu_194[32'd1];
        trunc_ln14_1_reg_2151 <= trunc_ln14_1_fu_1014_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln15_reg_2177 <= add_ln15_fu_1070_p2;
        cond47_reg_2203 <= cond47_fu_1122_p3;
        smax75_cast_reg_2198[1 : 0] <= smax75_cast_fu_1106_p1[1 : 0];
        tmp_12_reg_2192 <= b0_y_reg_830[32'd1];
        trunc_ln15_1_reg_2182 <= trunc_ln15_1_fu_1080_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_reg_2211 <= add_ln16_fu_1151_p2;
        tmp_13_reg_2216 <= b0_z_reg_853[32'd1];
        tmp_16_reg_2221 <= tmp_16_fu_1165_p4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln23_1_reg_2345 <= add_ln23_1_fu_1408_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln24_reg_2415 <= add_ln24_fu_1513_p2;
        force_0_0_0_0_addr_reg_2440 <= zext_ln26_1_fu_1538_p1;
        force_0_0_0_1_addr_reg_2445 <= zext_ln26_1_fu_1538_p1;
        force_0_0_1_0_addr_reg_2450 <= zext_ln26_1_fu_1538_p1;
        force_0_0_1_1_addr_reg_2455 <= zext_ln26_1_fu_1538_p1;
        force_0_1_0_0_addr_reg_2460 <= zext_ln26_1_fu_1538_p1;
        force_0_1_0_1_addr_reg_2465 <= zext_ln26_1_fu_1538_p1;
        force_0_1_1_0_addr_reg_2470 <= zext_ln26_1_fu_1538_p1;
        force_0_1_1_1_addr_reg_2475 <= zext_ln26_1_fu_1538_p1;
        force_1_0_0_0_addr_reg_2480 <= zext_ln26_1_fu_1538_p1;
        force_1_0_0_1_addr_reg_2485 <= zext_ln26_1_fu_1538_p1;
        force_1_0_1_0_addr_reg_2490 <= zext_ln26_1_fu_1538_p1;
        force_1_0_1_1_addr_reg_2495 <= zext_ln26_1_fu_1538_p1;
        force_1_1_0_0_addr_reg_2500 <= zext_ln26_1_fu_1538_p1;
        force_1_1_0_1_addr_reg_2505 <= zext_ln26_1_fu_1538_p1;
        force_1_1_1_0_addr_reg_2510 <= zext_ln26_1_fu_1538_p1;
        force_1_1_1_1_addr_reg_2515 <= zext_ln26_1_fu_1538_p1;
        trunc_ln24_reg_2420 <= trunc_ln24_fu_1519_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln26_1_reg_2283 <= add_ln26_1_fu_1215_p2;
        cond70_reg_2293 <= cond70_fu_1251_p3;
        smax_cast_reg_2288[1 : 0] <= smax_cast_fu_1235_p1[1 : 0];
        tmp_11_reg_2298 <= tmp_11_fu_1305_p3;
        trunc_ln16_1_reg_2271 <= trunc_ln16_1_fu_1195_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln8_reg_2401 <= add_ln8_fu_1445_p2;
        q_idx_range_reg_2406 <= q_idx_range_fu_1497_p3;
        trunc_ln8_2_reg_2396 <= trunc_ln8_2_fu_1431_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        p_x_reg_2630 <= p_x_fu_1790_p1;
        p_y_reg_2635 <= p_y_fu_1805_p1;
        p_z_reg_2640 <= p_z_fu_1820_p1;
        sum_x_reg_2645 <= sum_x_fu_1834_p1;
        sum_y_reg_2650 <= sum_y_fu_1849_p1;
        sum_z_reg_2655 <= sum_z_fu_1864_p1;
        trunc_ln25_reg_2625 <= trunc_ln25_fu_1781_p1;
        trunc_ln34_3_reg_2665 <= {{select_ln25_14_fu_1776_p3[115:64]}};
        trunc_ln34_5_reg_2670 <= {{select_ln25_14_fu_1776_p3[179:128]}};
        trunc_ln34_reg_2660 <= trunc_ln34_fu_1869_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        select_ln25_13_reg_2610 <= select_ln25_13_fu_1671_p3;
        select_ln25_6_reg_2605 <= select_ln25_6_fu_1622_p3;
        select_ln26_13_reg_2620 <= select_ln26_13_fu_1769_p3;
        select_ln26_6_reg_2615 <= select_ln26_6_fu_1720_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_x_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_1_loc_fu_234 <= grp_md_Pipeline_loop_q_fu_918_sum_x_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_x_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_3_loc_fu_206 <= grp_md_Pipeline_loop_q_fu_918_sum_x_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_x_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_5_loc_fu_218 <= grp_md_Pipeline_loop_q_fu_918_sum_x_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_x_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_7_loc_fu_230 <= grp_md_Pipeline_loop_q_fu_918_sum_x_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_y_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_1_loc_fu_238 <= grp_md_Pipeline_loop_q_fu_918_sum_y_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_y_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_3_loc_fu_202 <= grp_md_Pipeline_loop_q_fu_918_sum_y_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_y_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_5_loc_fu_214 <= grp_md_Pipeline_loop_q_fu_918_sum_y_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_y_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_7_loc_fu_226 <= grp_md_Pipeline_loop_q_fu_918_sum_y_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_z_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_1_loc_fu_242 <= grp_md_Pipeline_loop_q_fu_918_sum_z_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_z_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_3_loc_fu_198 <= grp_md_Pipeline_loop_q_fu_918_sum_z_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_z_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_5_loc_fu_210 <= grp_md_Pipeline_loop_q_fu_918_sum_z_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_918_sum_z_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_7_loc_fu_222 <= grp_md_Pipeline_loop_q_fu_918_sum_z_7_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        targetBlock_reg_2675 <= grp_md_Pipeline_loop_q_fu_918_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_17_reg_2332[3 : 1] <= tmp_17_fu_1375_p3[3 : 1];
        trunc_ln8_1_reg_2325 <= trunc_ln8_1_fu_1352_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        trunc_ln8_reg_2306 <= trunc_ln8_fu_1317_p1;
        zext_ln8_reg_2312[1] <= zext_ln8_fu_1337_p1[1];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_md_Pipeline_loop_q_fu_918_ap_done == 1'b0)) begin
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
    if (((icmp_ln14_fu_998_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln14_fu_998_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_0_0_address0_local = force_0_0_0_0_addr_reg_2440;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_0_0_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd0) & (trunc_ln16_1_reg_2271 == 1'd0) & (trunc_ln15_1_reg_2182 == 1'd0) & (trunc_ln14_1_reg_2151 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_0_0_we0_local = 1'b1;
    end else begin
        force_0_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_0_1_address0_local = force_0_0_0_1_addr_reg_2445;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_0_1_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd1) & (trunc_ln16_1_reg_2271 == 1'd0) & (trunc_ln15_1_reg_2182 == 1'd0) & (trunc_ln14_1_reg_2151 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_0_1_we0_local = 1'b1;
    end else begin
        force_0_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_1_0_address0_local = force_0_0_1_0_addr_reg_2450;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_1_0_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd0) & (trunc_ln16_1_reg_2271 == 1'd1) & (trunc_ln15_1_reg_2182 == 1'd0) & (trunc_ln14_1_reg_2151 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_1_0_we0_local = 1'b1;
    end else begin
        force_0_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_1_1_address0_local = force_0_0_1_1_addr_reg_2455;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_1_1_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd1) & (trunc_ln16_1_reg_2271 == 1'd1) & (trunc_ln15_1_reg_2182 == 1'd0) & (trunc_ln14_1_reg_2151 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_1_1_we0_local = 1'b1;
    end else begin
        force_0_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_0_0_address0_local = force_0_1_0_0_addr_reg_2460;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_0_0_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd0) & (trunc_ln16_1_reg_2271 == 1'd0) & (trunc_ln15_1_reg_2182 == 1'd1) & (trunc_ln14_1_reg_2151 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_0_0_we0_local = 1'b1;
    end else begin
        force_0_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_0_1_address0_local = force_0_1_0_1_addr_reg_2465;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_0_1_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd1) & (trunc_ln16_1_reg_2271 == 1'd0) & (trunc_ln15_1_reg_2182 == 1'd1) & (trunc_ln14_1_reg_2151 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_0_1_we0_local = 1'b1;
    end else begin
        force_0_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_1_0_address0_local = force_0_1_1_0_addr_reg_2470;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_1_0_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd0) & (trunc_ln16_1_reg_2271 == 1'd1) & (trunc_ln15_1_reg_2182 == 1'd1) & (trunc_ln14_1_reg_2151 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_1_0_we0_local = 1'b1;
    end else begin
        force_0_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_1_1_address0_local = force_0_1_1_1_addr_reg_2475;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_1_1_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd1) & (trunc_ln16_1_reg_2271 == 1'd1) & (trunc_ln15_1_reg_2182 == 1'd1) & (trunc_ln14_1_reg_2151 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_1_1_we0_local = 1'b1;
    end else begin
        force_0_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_0_0_address0_local = force_1_0_0_0_addr_reg_2480;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_0_0_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd0) & (trunc_ln16_1_reg_2271 == 1'd0) & (trunc_ln15_1_reg_2182 == 1'd0) & (trunc_ln14_1_reg_2151 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_0_0_we0_local = 1'b1;
    end else begin
        force_1_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_0_1_address0_local = force_1_0_0_1_addr_reg_2485;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_0_1_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd1) & (trunc_ln16_1_reg_2271 == 1'd0) & (trunc_ln15_1_reg_2182 == 1'd0) & (trunc_ln14_1_reg_2151 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_0_1_we0_local = 1'b1;
    end else begin
        force_1_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_1_0_address0_local = force_1_0_1_0_addr_reg_2490;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_1_0_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd0) & (trunc_ln16_1_reg_2271 == 1'd1) & (trunc_ln15_1_reg_2182 == 1'd0) & (trunc_ln14_1_reg_2151 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_1_0_we0_local = 1'b1;
    end else begin
        force_1_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_1_1_address0_local = force_1_0_1_1_addr_reg_2495;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_1_1_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd1) & (trunc_ln16_1_reg_2271 == 1'd1) & (trunc_ln15_1_reg_2182 == 1'd0) & (trunc_ln14_1_reg_2151 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_1_1_we0_local = 1'b1;
    end else begin
        force_1_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_0_0_address0_local = force_1_1_0_0_addr_reg_2500;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_0_0_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd0) & (trunc_ln16_1_reg_2271 == 1'd0) & (trunc_ln15_1_reg_2182 == 1'd1) & (trunc_ln14_1_reg_2151 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_0_0_we0_local = 1'b1;
    end else begin
        force_1_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_0_1_address0_local = force_1_1_0_1_addr_reg_2505;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_0_1_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd1) & (trunc_ln16_1_reg_2271 == 1'd0) & (trunc_ln15_1_reg_2182 == 1'd1) & (trunc_ln14_1_reg_2151 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_0_1_we0_local = 1'b1;
    end else begin
        force_1_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_1_0_address0_local = force_1_1_1_0_addr_reg_2510;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_1_0_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd0) & (trunc_ln16_1_reg_2271 == 1'd1) & (trunc_ln15_1_reg_2182 == 1'd1) & (trunc_ln14_1_reg_2151 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_1_0_we0_local = 1'b1;
    end else begin
        force_1_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_1_1_address0_local = force_1_1_1_1_addr_reg_2515;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_1_1_address0_local = zext_ln26_1_fu_1538_p1;
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
    if (((trunc_ln24_reg_2420 == 1'd1) & (trunc_ln16_1_reg_2271 == 1'd1) & (trunc_ln15_1_reg_2182 == 1'd1) & (trunc_ln14_1_reg_2151 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_1_1_we0_local = 1'b1;
    end else begin
        force_1_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_0_0_0_address0_local = zext_ln23_2_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_0_0_address0_local = tmp_16_cast5_fu_1173_p1;
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
        n_points_0_0_1_address0_local = zext_ln23_2_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_0_1_address0_local = tmp_16_cast5_fu_1173_p1;
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
        n_points_0_1_0_address0_local = zext_ln23_2_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_1_0_address0_local = tmp_16_cast5_fu_1173_p1;
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
        n_points_0_1_1_address0_local = zext_ln23_2_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_1_1_address0_local = tmp_16_cast5_fu_1173_p1;
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
        n_points_1_0_0_address0_local = zext_ln23_2_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_0_0_address0_local = tmp_16_cast5_fu_1173_p1;
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
        n_points_1_0_1_address0_local = zext_ln23_2_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_0_1_address0_local = tmp_16_cast5_fu_1173_p1;
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
        n_points_1_1_0_address0_local = zext_ln23_2_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_1_0_address0_local = tmp_16_cast5_fu_1173_p1;
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
        n_points_1_1_1_address0_local = zext_ln23_2_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_1_1_address0_local = tmp_16_cast5_fu_1173_p1;
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
        position_0_0_0_0_address0 = grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_address0;
    end else begin
        position_0_0_0_0_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_0_ce0 = grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_ce0;
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
        position_0_0_0_0_ce1 = grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_ce1;
    end else begin
        position_0_0_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_1_address0 = grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_address0;
    end else begin
        position_0_0_0_1_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_1_ce0 = grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_ce0;
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
        position_0_0_0_1_ce1 = grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_ce1;
    end else begin
        position_0_0_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_0_address0 = grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_address0;
    end else begin
        position_0_0_1_0_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_0_ce0 = grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_ce0;
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
        position_0_0_1_0_ce1 = grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_ce1;
    end else begin
        position_0_0_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_1_address0 = grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_address0;
    end else begin
        position_0_0_1_1_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_1_ce0 = grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_ce0;
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
        position_0_0_1_1_ce1 = grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_ce1;
    end else begin
        position_0_0_1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_0_address0 = grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_address0;
    end else begin
        position_0_1_0_0_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_0_ce0 = grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_ce0;
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
        position_0_1_0_0_ce1 = grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_ce1;
    end else begin
        position_0_1_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_1_address0 = grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_address0;
    end else begin
        position_0_1_0_1_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_1_ce0 = grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_ce0;
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
        position_0_1_0_1_ce1 = grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_ce1;
    end else begin
        position_0_1_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_0_address0 = grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_address0;
    end else begin
        position_0_1_1_0_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_0_ce0 = grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_ce0;
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
        position_0_1_1_0_ce1 = grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_ce1;
    end else begin
        position_0_1_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_1_address0 = grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_address0;
    end else begin
        position_0_1_1_1_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_1_ce0 = grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_ce0;
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
        position_0_1_1_1_ce1 = grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_ce1;
    end else begin
        position_0_1_1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_0_address0 = grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_address0;
    end else begin
        position_1_0_0_0_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_0_ce0 = grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_ce0;
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
        position_1_0_0_0_ce1 = grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_ce1;
    end else begin
        position_1_0_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_1_address0 = grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_address0;
    end else begin
        position_1_0_0_1_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_1_ce0 = grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_ce0;
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
        position_1_0_0_1_ce1 = grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_ce1;
    end else begin
        position_1_0_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_0_address0 = grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_address0;
    end else begin
        position_1_0_1_0_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_0_ce0 = grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_ce0;
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
        position_1_0_1_0_ce1 = grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_ce1;
    end else begin
        position_1_0_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_1_address0 = grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_address0;
    end else begin
        position_1_0_1_1_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_1_ce0 = grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_ce0;
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
        position_1_0_1_1_ce1 = grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_ce1;
    end else begin
        position_1_0_1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_0_address0 = grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_address0;
    end else begin
        position_1_1_0_0_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_0_ce0 = grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_ce0;
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
        position_1_1_0_0_ce1 = grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_ce1;
    end else begin
        position_1_1_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_1_address0 = grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_address0;
    end else begin
        position_1_1_0_1_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_1_ce0 = grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_ce0;
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
        position_1_1_0_1_ce1 = grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_ce1;
    end else begin
        position_1_1_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_0_address0 = grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_address0;
    end else begin
        position_1_1_1_0_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_0_ce0 = grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_ce0;
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
        position_1_1_1_0_ce1 = grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_ce1;
    end else begin
        position_1_1_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_1_address0 = grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_address0;
    end else begin
        position_1_1_1_1_address0 = zext_ln26_1_fu_1538_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_1_ce0 = grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_1_ce1 = grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_ce1;
    end else begin
        position_1_1_1_1_ce1 = 1'b0;
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
            if (((icmp_ln14_fu_998_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln15_fu_1064_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_1145_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln18_fu_1312_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_1347_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln20_fu_1389_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln24_fu_1508_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((grp_md_Pipeline_loop_q_fu_918_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
assign add_ln14_1_fu_1130_p2 = (indvars_iv78_fu_190 + 3'd1);
assign add_ln14_fu_1004_p2 = (b0_x_fu_194 + 3'd1);
assign add_ln15_1_fu_1185_p2 = (indvars_iv73_reg_841 + 3'd1);
assign add_ln15_fu_1070_p2 = (b0_y_reg_830 + 3'd1);
assign add_ln16_1_fu_1341_p2 = (indvars_iv69_reg_865 + 3'd1);
assign add_ln16_fu_1151_p2 = (b0_z_reg_853 + 3'd1);
assign add_ln18_fu_1383_p2 = (b1_x_reg_877 + 3'd1);
assign add_ln19_fu_1425_p2 = (b1_y_reg_887 + 3'd1);
assign add_ln20_fu_1574_p2 = (b1_z_reg_897 + 3'd1);
assign add_ln23_1_fu_1408_p2 = (tmp_17_reg_2332 + zext_ln23_1_fu_1404_p1);
assign add_ln23_fu_1370_p2 = (zext_ln8_reg_2312 + zext_ln23_fu_1366_p1);
assign add_ln24_fu_1513_p2 = (p_idx_reg_907 + 31'd1);
assign add_ln26_1_fu_1215_p2 = (zext_ln26_fu_1211_p1 + tmp_16_cast_fu_1199_p1);
assign add_ln26_fu_1533_p2 = (add_ln26_1_reg_2283 + lshr_ln_fu_1523_p4);
assign add_ln8_fu_1445_p2 = (tmp_18_fu_1438_p3 + zext_ln8_1_fu_1435_p1);
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
assign bitcast_ln49_fu_2019_p1 = sum_x_0_lcssa_ph_fu_2011_p3;
assign bitcast_ln50_fu_2023_p1 = sum_y_0_lcssa_ph_fu_1987_p3;
assign bitcast_ln51_fu_2027_p1 = sum_z_0_lcssa_ph_fu_1963_p3;
assign cmp18_fu_1050_p2 = ((empty_26_fu_1044_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp41_fu_1116_p2 = ((empty_28_fu_1110_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp64_fu_1245_p2 = ((empty_30_fu_1239_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cond24_fu_1056_p3 = ((cmp18_fu_1050_p2[0:0] == 1'b1) ? 3'd4 : empty_26_fu_1044_p2);
assign cond47_fu_1122_p3 = ((cmp41_fu_1116_p2[0:0] == 1'b1) ? 3'd4 : empty_28_fu_1110_p2);
assign cond70_fu_1251_p3 = ((cmp64_fu_1245_p2[0:0] == 1'b1) ? 3'd4 : empty_30_fu_1239_p2);
assign empty_26_fu_1044_p2 = (b0_x_fu_194 + 3'd2);
assign empty_27_fu_1092_p2 = (($signed(indvars_iv73_reg_841) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_28_fu_1110_p2 = (b0_y_reg_830 + 3'd2);
assign empty_29_fu_1221_p2 = (($signed(indvars_iv69_reg_865) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_30_fu_1239_p2 = (b0_z_reg_853 + 3'd2);
assign empty_31_fu_1932_p2 = ((targetBlock_reg_2675 == 2'd0) ? 1'b1 : 1'b0);
assign empty_32_fu_1937_p3 = ((empty_31_fu_1932_p2[0:0] == 1'b1) ? sum_z_1_loc_fu_242 : sum_z_3_loc_fu_198);
assign empty_33_fu_1945_p2 = ((targetBlock_reg_2675 == 2'd1) ? 1'b1 : 1'b0);
assign empty_34_fu_1950_p3 = ((empty_33_fu_1945_p2[0:0] == 1'b1) ? sum_z_7_loc_fu_222 : empty_32_fu_1937_p3);
assign empty_35_fu_1958_p2 = ((targetBlock_reg_2675 == 2'd2) ? 1'b1 : 1'b0);
assign empty_36_fu_1971_p3 = ((empty_31_fu_1932_p2[0:0] == 1'b1) ? sum_y_1_loc_fu_238 : sum_y_3_loc_fu_202);
assign empty_37_fu_1979_p3 = ((empty_33_fu_1945_p2[0:0] == 1'b1) ? sum_y_7_loc_fu_226 : empty_36_fu_1971_p3);
assign empty_38_fu_1995_p3 = ((empty_31_fu_1932_p2[0:0] == 1'b1) ? sum_x_1_loc_fu_234 : sum_x_3_loc_fu_206);
assign empty_39_fu_2003_p3 = ((empty_33_fu_1945_p2[0:0] == 1'b1) ? sum_x_7_loc_fu_230 : empty_38_fu_1995_p3);
assign empty_fu_1026_p2 = (($signed(indvars_iv78_fu_190) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign force_0_0_0_0_address0 = force_0_0_0_0_address0_local;
assign force_0_0_0_0_ce0 = force_0_0_0_0_ce0_local;
assign force_0_0_0_0_d0 = or_ln_fu_2031_p4;
assign force_0_0_0_0_we0 = force_0_0_0_0_we0_local;
assign force_0_0_0_1_address0 = force_0_0_0_1_address0_local;
assign force_0_0_0_1_ce0 = force_0_0_0_1_ce0_local;
assign force_0_0_0_1_d0 = or_ln_fu_2031_p4;
assign force_0_0_0_1_we0 = force_0_0_0_1_we0_local;
assign force_0_0_1_0_address0 = force_0_0_1_0_address0_local;
assign force_0_0_1_0_ce0 = force_0_0_1_0_ce0_local;
assign force_0_0_1_0_d0 = or_ln_fu_2031_p4;
assign force_0_0_1_0_we0 = force_0_0_1_0_we0_local;
assign force_0_0_1_1_address0 = force_0_0_1_1_address0_local;
assign force_0_0_1_1_ce0 = force_0_0_1_1_ce0_local;
assign force_0_0_1_1_d0 = or_ln_fu_2031_p4;
assign force_0_0_1_1_we0 = force_0_0_1_1_we0_local;
assign force_0_1_0_0_address0 = force_0_1_0_0_address0_local;
assign force_0_1_0_0_ce0 = force_0_1_0_0_ce0_local;
assign force_0_1_0_0_d0 = or_ln_fu_2031_p4;
assign force_0_1_0_0_we0 = force_0_1_0_0_we0_local;
assign force_0_1_0_1_address0 = force_0_1_0_1_address0_local;
assign force_0_1_0_1_ce0 = force_0_1_0_1_ce0_local;
assign force_0_1_0_1_d0 = or_ln_fu_2031_p4;
assign force_0_1_0_1_we0 = force_0_1_0_1_we0_local;
assign force_0_1_1_0_address0 = force_0_1_1_0_address0_local;
assign force_0_1_1_0_ce0 = force_0_1_1_0_ce0_local;
assign force_0_1_1_0_d0 = or_ln_fu_2031_p4;
assign force_0_1_1_0_we0 = force_0_1_1_0_we0_local;
assign force_0_1_1_1_address0 = force_0_1_1_1_address0_local;
assign force_0_1_1_1_ce0 = force_0_1_1_1_ce0_local;
assign force_0_1_1_1_d0 = or_ln_fu_2031_p4;
assign force_0_1_1_1_we0 = force_0_1_1_1_we0_local;
assign force_1_0_0_0_address0 = force_1_0_0_0_address0_local;
assign force_1_0_0_0_ce0 = force_1_0_0_0_ce0_local;
assign force_1_0_0_0_d0 = or_ln_fu_2031_p4;
assign force_1_0_0_0_we0 = force_1_0_0_0_we0_local;
assign force_1_0_0_1_address0 = force_1_0_0_1_address0_local;
assign force_1_0_0_1_ce0 = force_1_0_0_1_ce0_local;
assign force_1_0_0_1_d0 = or_ln_fu_2031_p4;
assign force_1_0_0_1_we0 = force_1_0_0_1_we0_local;
assign force_1_0_1_0_address0 = force_1_0_1_0_address0_local;
assign force_1_0_1_0_ce0 = force_1_0_1_0_ce0_local;
assign force_1_0_1_0_d0 = or_ln_fu_2031_p4;
assign force_1_0_1_0_we0 = force_1_0_1_0_we0_local;
assign force_1_0_1_1_address0 = force_1_0_1_1_address0_local;
assign force_1_0_1_1_ce0 = force_1_0_1_1_ce0_local;
assign force_1_0_1_1_d0 = or_ln_fu_2031_p4;
assign force_1_0_1_1_we0 = force_1_0_1_1_we0_local;
assign force_1_1_0_0_address0 = force_1_1_0_0_address0_local;
assign force_1_1_0_0_ce0 = force_1_1_0_0_ce0_local;
assign force_1_1_0_0_d0 = or_ln_fu_2031_p4;
assign force_1_1_0_0_we0 = force_1_1_0_0_we0_local;
assign force_1_1_0_1_address0 = force_1_1_0_1_address0_local;
assign force_1_1_0_1_ce0 = force_1_1_0_1_ce0_local;
assign force_1_1_0_1_d0 = or_ln_fu_2031_p4;
assign force_1_1_0_1_we0 = force_1_1_0_1_we0_local;
assign force_1_1_1_0_address0 = force_1_1_1_0_address0_local;
assign force_1_1_1_0_ce0 = force_1_1_1_0_ce0_local;
assign force_1_1_1_0_d0 = or_ln_fu_2031_p4;
assign force_1_1_1_0_we0 = force_1_1_1_0_we0_local;
assign force_1_1_1_1_address0 = force_1_1_1_1_address0_local;
assign force_1_1_1_1_ce0 = force_1_1_1_1_ce0_local;
assign force_1_1_1_1_d0 = or_ln_fu_2031_p4;
assign force_1_1_1_1_we0 = force_1_1_1_1_we0_local;
assign grp_md_Pipeline_loop_q_fu_918_ap_start = grp_md_Pipeline_loop_q_fu_918_ap_start_reg;
assign icmp_ln14_fu_998_p2 = ((b0_x_fu_194 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_1064_p2 = ((b0_y_reg_830 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1145_p2 = ((b0_z_reg_853 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_1312_p2 = ((b1_x_reg_877 < cond24_reg_2169) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_1347_p2 = ((b1_y_reg_887 < cond47_reg_2203) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_1389_p2 = ((b1_z_reg_897 < cond70_reg_2293) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_1508_p2 = (($signed(zext_ln24_fu_1504_p1) < $signed(tmp_11_reg_2298)) ? 1'b1 : 1'b0);
assign lshr_ln8_4_fu_1356_p4 = {{b1_y_reg_887[2:1]}};
assign lshr_ln8_5_fu_1394_p4 = {{b1_z_reg_897[2:1]}};
assign lshr_ln_fu_1523_p4 = {{p_idx_reg_907[6:1]}};
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
assign or_ln_fu_2031_p4 = {{{bitcast_ln51_fu_2027_p1}, {bitcast_ln50_fu_2023_p1}}, {bitcast_ln49_fu_2019_p1}};
assign p_x_fu_1790_p1 = trunc_ln25_3_fu_1786_p1;
assign p_y_fu_1805_p1 = trunc_ln25_1_fu_1795_p4;
assign p_z_fu_1820_p1 = trunc_ln25_2_fu_1810_p4;
assign position_0_0_0_0_address1 = grp_md_Pipeline_loop_q_fu_918_position_0_0_0_0_address1;
assign position_0_0_0_1_address1 = grp_md_Pipeline_loop_q_fu_918_position_0_0_0_1_address1;
assign position_0_0_1_0_address1 = grp_md_Pipeline_loop_q_fu_918_position_0_0_1_0_address1;
assign position_0_0_1_1_address1 = grp_md_Pipeline_loop_q_fu_918_position_0_0_1_1_address1;
assign position_0_1_0_0_address1 = grp_md_Pipeline_loop_q_fu_918_position_0_1_0_0_address1;
assign position_0_1_0_1_address1 = grp_md_Pipeline_loop_q_fu_918_position_0_1_0_1_address1;
assign position_0_1_1_0_address1 = grp_md_Pipeline_loop_q_fu_918_position_0_1_1_0_address1;
assign position_0_1_1_1_address1 = grp_md_Pipeline_loop_q_fu_918_position_0_1_1_1_address1;
assign position_1_0_0_0_address1 = grp_md_Pipeline_loop_q_fu_918_position_1_0_0_0_address1;
assign position_1_0_0_1_address1 = grp_md_Pipeline_loop_q_fu_918_position_1_0_0_1_address1;
assign position_1_0_1_0_address1 = grp_md_Pipeline_loop_q_fu_918_position_1_0_1_0_address1;
assign position_1_0_1_1_address1 = grp_md_Pipeline_loop_q_fu_918_position_1_0_1_1_address1;
assign position_1_1_0_0_address1 = grp_md_Pipeline_loop_q_fu_918_position_1_1_0_0_address1;
assign position_1_1_0_1_address1 = grp_md_Pipeline_loop_q_fu_918_position_1_1_0_1_address1;
assign position_1_1_1_0_address1 = grp_md_Pipeline_loop_q_fu_918_position_1_1_1_0_address1;
assign position_1_1_1_1_address1 = grp_md_Pipeline_loop_q_fu_918_position_1_1_1_1_address1;
assign q_idx_range_fu_1497_p3 = ((trunc_ln8_reg_2306[0:0] == 1'b1) ? select_ln23_5_fu_1490_p3 : select_ln23_2_fu_1467_p3);
assign select_ln23_1_fu_1459_p3 = ((trunc_ln8_2_fu_1431_p1[0:0] == 1'b1) ? n_points_0_1_1_q0 : n_points_0_1_0_q0);
assign select_ln23_2_fu_1467_p3 = ((trunc_ln8_1_reg_2325[0:0] == 1'b1) ? select_ln23_1_fu_1459_p3 : select_ln23_fu_1451_p3);
assign select_ln23_3_fu_1474_p3 = ((trunc_ln8_2_fu_1431_p1[0:0] == 1'b1) ? n_points_1_0_1_q0 : n_points_1_0_0_q0);
assign select_ln23_4_fu_1482_p3 = ((trunc_ln8_2_fu_1431_p1[0:0] == 1'b1) ? n_points_1_1_1_q0 : n_points_1_1_0_q0);
assign select_ln23_5_fu_1490_p3 = ((trunc_ln8_1_reg_2325[0:0] == 1'b1) ? select_ln23_4_fu_1482_p3 : select_ln23_3_fu_1474_p3);
assign select_ln23_fu_1451_p3 = ((trunc_ln8_2_fu_1431_p1[0:0] == 1'b1) ? n_points_0_0_1_q0 : n_points_0_0_0_q0);
assign select_ln25_10_fu_1650_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? position_1_1_0_1_q0 : position_1_1_0_0_q0);
assign select_ln25_11_fu_1657_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? position_1_1_1_1_q0 : position_1_1_1_0_q0);
assign select_ln25_12_fu_1664_p3 = ((trunc_ln16_1_reg_2271[0:0] == 1'b1) ? select_ln25_11_fu_1657_p3 : select_ln25_10_fu_1650_p3);
assign select_ln25_13_fu_1671_p3 = ((trunc_ln15_1_reg_2182[0:0] == 1'b1) ? select_ln25_12_fu_1664_p3 : select_ln25_9_fu_1643_p3);
assign select_ln25_14_fu_1776_p3 = ((trunc_ln14_1_reg_2151[0:0] == 1'b1) ? select_ln25_13_reg_2610 : select_ln25_6_reg_2605);
assign select_ln25_1_fu_1587_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? position_0_0_1_1_q0 : position_0_0_1_0_q0);
assign select_ln25_2_fu_1594_p3 = ((trunc_ln16_1_reg_2271[0:0] == 1'b1) ? select_ln25_1_fu_1587_p3 : select_ln25_fu_1580_p3);
assign select_ln25_3_fu_1601_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? position_0_1_0_1_q0 : position_0_1_0_0_q0);
assign select_ln25_4_fu_1608_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? position_0_1_1_1_q0 : position_0_1_1_0_q0);
assign select_ln25_5_fu_1615_p3 = ((trunc_ln16_1_reg_2271[0:0] == 1'b1) ? select_ln25_4_fu_1608_p3 : select_ln25_3_fu_1601_p3);
assign select_ln25_6_fu_1622_p3 = ((trunc_ln15_1_reg_2182[0:0] == 1'b1) ? select_ln25_5_fu_1615_p3 : select_ln25_2_fu_1594_p3);
assign select_ln25_7_fu_1629_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? position_1_0_0_1_q0 : position_1_0_0_0_q0);
assign select_ln25_8_fu_1636_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? position_1_0_1_1_q0 : position_1_0_1_0_q0);
assign select_ln25_9_fu_1643_p3 = ((trunc_ln16_1_reg_2271[0:0] == 1'b1) ? select_ln25_8_fu_1636_p3 : select_ln25_7_fu_1629_p3);
assign select_ln25_fu_1580_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? position_0_0_0_1_q0 : position_0_0_0_0_q0);
assign select_ln26_10_fu_1748_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? force_1_1_0_1_q0 : force_1_1_0_0_q0);
assign select_ln26_11_fu_1755_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? force_1_1_1_1_q0 : force_1_1_1_0_q0);
assign select_ln26_12_fu_1762_p3 = ((trunc_ln16_1_reg_2271[0:0] == 1'b1) ? select_ln26_11_fu_1755_p3 : select_ln26_10_fu_1748_p3);
assign select_ln26_13_fu_1769_p3 = ((trunc_ln15_1_reg_2182[0:0] == 1'b1) ? select_ln26_12_fu_1762_p3 : select_ln26_9_fu_1741_p3);
assign select_ln26_14_fu_1825_p3 = ((trunc_ln14_1_reg_2151[0:0] == 1'b1) ? select_ln26_13_reg_2620 : select_ln26_6_reg_2615);
assign select_ln26_1_fu_1685_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? force_0_0_1_1_q0 : force_0_0_1_0_q0);
assign select_ln26_2_fu_1692_p3 = ((trunc_ln16_1_reg_2271[0:0] == 1'b1) ? select_ln26_1_fu_1685_p3 : select_ln26_fu_1678_p3);
assign select_ln26_3_fu_1699_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? force_0_1_0_1_q0 : force_0_1_0_0_q0);
assign select_ln26_4_fu_1706_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? force_0_1_1_1_q0 : force_0_1_1_0_q0);
assign select_ln26_5_fu_1713_p3 = ((trunc_ln16_1_reg_2271[0:0] == 1'b1) ? select_ln26_4_fu_1706_p3 : select_ln26_3_fu_1699_p3);
assign select_ln26_6_fu_1720_p3 = ((trunc_ln15_1_reg_2182[0:0] == 1'b1) ? select_ln26_5_fu_1713_p3 : select_ln26_2_fu_1692_p3);
assign select_ln26_7_fu_1727_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? force_1_0_0_1_q0 : force_1_0_0_0_q0);
assign select_ln26_8_fu_1734_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? force_1_0_1_1_q0 : force_1_0_1_0_q0);
assign select_ln26_9_fu_1741_p3 = ((trunc_ln16_1_reg_2271[0:0] == 1'b1) ? select_ln26_8_fu_1734_p3 : select_ln26_7_fu_1727_p3);
assign select_ln26_fu_1678_p3 = ((trunc_ln24_reg_2420[0:0] == 1'b1) ? force_0_0_0_1_q0 : force_0_0_0_0_q0);
assign smax75_cast_fu_1106_p1 = smax75_fu_1098_p3;
assign smax75_fu_1098_p3 = ((empty_27_fu_1092_p2[0:0] == 1'b1) ? trunc_ln15_fu_1076_p1 : 2'd0);
assign smax80_cast_fu_1040_p1 = smax80_fu_1032_p3;
assign smax80_fu_1032_p3 = ((empty_fu_1026_p2[0:0] == 1'b1) ? trunc_ln14_fu_1010_p1 : 2'd0);
assign smax_cast_fu_1235_p1 = smax_fu_1227_p3;
assign smax_fu_1227_p3 = ((empty_29_fu_1221_p2[0:0] == 1'b1) ? trunc_ln16_fu_1191_p1 : 2'd0);
assign sum_x_0_lcssa_ph_fu_2011_p3 = ((empty_35_fu_1958_p2[0:0] == 1'b1) ? sum_x_5_loc_fu_218 : empty_39_fu_2003_p3);
assign sum_x_fu_1834_p1 = trunc_ln26_fu_1830_p1;
assign sum_y_0_lcssa_ph_fu_1987_p3 = ((empty_35_fu_1958_p2[0:0] == 1'b1) ? sum_y_5_loc_fu_214 : empty_37_fu_1979_p3);
assign sum_y_fu_1849_p1 = trunc_ln4_fu_1839_p4;
assign sum_z_0_lcssa_ph_fu_1963_p3 = ((empty_35_fu_1958_p2[0:0] == 1'b1) ? sum_z_5_loc_fu_210 : empty_34_fu_1950_p3);
assign sum_z_fu_1864_p1 = trunc_ln5_fu_1854_p4;
assign tmp_10_fu_1298_p3 = ((trunc_ln15_1_reg_2182[0:0] == 1'b1) ? tmp_6_fu_1290_p3 : tmp_s_fu_1282_p3);
assign tmp_11_fu_1305_p3 = ((trunc_ln14_1_reg_2151[0:0] == 1'b1) ? tmp_10_fu_1298_p3 : tmp_9_fu_1275_p3);
assign tmp_13_fu_1157_p3 = b0_z_reg_853[32'd1];
assign tmp_14_fu_1202_p5 = {{{{tmp_reg_2158}, {tmp_12_reg_2192}}, {tmp_13_reg_2216}}, {2'd0}};
assign tmp_15_fu_1321_p3 = b1_x_reg_877[32'd1];
assign tmp_16_cast5_fu_1173_p1 = tmp_16_fu_1165_p4;
assign tmp_16_cast_fu_1199_p1 = tmp_16_reg_2221;
assign tmp_16_fu_1165_p4 = {{{tmp_reg_2158}, {tmp_12_reg_2192}}, {tmp_13_fu_1157_p3}};
assign tmp_17_fu_1375_p3 = {{add_ln23_fu_1370_p2}, {1'd0}};
assign tmp_18_fu_1438_p3 = {{add_ln23_1_reg_2345}, {2'd0}};
assign tmp_19_fu_1329_p3 = {{tmp_15_fu_1321_p3}, {1'd0}};
assign tmp_6_fu_1290_p3 = ((trunc_ln16_1_fu_1195_p1[0:0] == 1'b1) ? n_points_1_1_1_q0 : n_points_1_1_0_q0);
assign tmp_7_fu_1259_p3 = ((trunc_ln16_1_fu_1195_p1[0:0] == 1'b1) ? n_points_0_0_1_q0 : n_points_0_0_0_q0);
assign tmp_8_fu_1267_p3 = ((trunc_ln16_1_fu_1195_p1[0:0] == 1'b1) ? n_points_0_1_1_q0 : n_points_0_1_0_q0);
assign tmp_9_fu_1275_p3 = ((trunc_ln15_1_reg_2182[0:0] == 1'b1) ? tmp_8_fu_1267_p3 : tmp_7_fu_1259_p3);
assign tmp_s_fu_1282_p3 = ((trunc_ln16_1_fu_1195_p1[0:0] == 1'b1) ? n_points_1_0_1_q0 : n_points_1_0_0_q0);
assign trunc_ln14_1_fu_1014_p1 = b0_x_fu_194[0:0];
assign trunc_ln14_fu_1010_p1 = indvars_iv78_fu_190[1:0];
assign trunc_ln15_1_fu_1080_p1 = b0_y_reg_830[0:0];
assign trunc_ln15_fu_1076_p1 = indvars_iv73_reg_841[1:0];
assign trunc_ln16_1_fu_1195_p1 = b0_z_reg_853[0:0];
assign trunc_ln16_fu_1191_p1 = indvars_iv69_reg_865[1:0];
assign trunc_ln24_fu_1519_p1 = p_idx_reg_907[0:0];
assign trunc_ln25_1_fu_1795_p4 = {{select_ln25_14_fu_1776_p3[127:64]}};
assign trunc_ln25_2_fu_1810_p4 = {{select_ln25_14_fu_1776_p3[191:128]}};
assign trunc_ln25_3_fu_1786_p1 = select_ln25_14_fu_1776_p3[63:0];
assign trunc_ln25_fu_1781_p1 = select_ln25_14_fu_1776_p3[190:0];
assign trunc_ln26_fu_1830_p1 = select_ln26_14_fu_1825_p3[63:0];
assign trunc_ln34_fu_1869_p1 = select_ln25_14_fu_1776_p3[51:0];
assign trunc_ln4_fu_1839_p4 = {{select_ln26_14_fu_1825_p3[127:64]}};
assign trunc_ln5_fu_1854_p4 = {{select_ln26_14_fu_1825_p3[191:128]}};
assign trunc_ln8_1_fu_1352_p1 = b1_y_reg_887[0:0];
assign trunc_ln8_2_fu_1431_p1 = b1_z_reg_897[0:0];
assign trunc_ln8_fu_1317_p1 = b1_x_reg_877[0:0];
assign zext_ln23_1_fu_1404_p1 = lshr_ln8_5_fu_1394_p4;
assign zext_ln23_2_fu_1413_p1 = add_ln23_1_fu_1408_p2;
assign zext_ln23_fu_1366_p1 = lshr_ln8_4_fu_1356_p4;
assign zext_ln24_fu_1504_p1 = p_idx_reg_907;
assign zext_ln26_1_fu_1538_p1 = add_ln26_fu_1533_p2;
assign zext_ln26_fu_1211_p1 = tmp_14_fu_1202_p5;
assign zext_ln8_1_fu_1435_p1 = add_ln23_1_reg_2345;
assign zext_ln8_fu_1337_p1 = tmp_19_fu_1329_p3;
always @ (posedge ap_clk) begin
    smax80_cast_reg_2164[2] <= 1'b0;
    smax75_cast_reg_2198[2] <= 1'b0;
    smax_cast_reg_2288[2] <= 1'b0;
    zext_ln8_reg_2312[0] <= 1'b0;
    zext_ln8_reg_2312[2] <= 1'b0;
    tmp_17_reg_2332[0] <= 1'b0;
end
endmodule 