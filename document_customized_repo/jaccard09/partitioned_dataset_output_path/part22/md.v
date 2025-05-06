
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
wire   [2:0] add_ln14_fu_1066_p2;
reg   [2:0] add_ln14_reg_2426;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln14_1_fu_1076_p1;
reg   [0:0] trunc_ln14_1_reg_2431;
reg   [0:0] tmp_reg_2438;
wire   [2:0] smax92_cast_fu_1102_p1;
reg   [2:0] smax92_cast_reg_2444;
wire   [2:0] cond24_fu_1118_p3;
reg   [2:0] cond24_reg_2449;
wire   [2:0] add_ln15_fu_1132_p2;
reg   [2:0] add_ln15_reg_2457;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln15_1_fu_1142_p1;
reg   [0:0] trunc_ln15_1_reg_2462;
reg   [0:0] tmp_36_reg_2472;
wire   [2:0] smax87_cast_fu_1168_p1;
reg   [2:0] smax87_cast_reg_2478;
wire   [2:0] cond47_fu_1184_p3;
reg   [2:0] cond47_reg_2483;
wire   [2:0] add_ln16_fu_1213_p2;
reg   [2:0] add_ln16_reg_2491;
wire    ap_CS_fsm_state4;
wire   [5:0] add_ln26_1_fu_1265_p2;
reg   [5:0] add_ln26_1_reg_2536;
wire   [2:0] add_ln15_1_fu_1271_p2;
wire   [0:0] trunc_ln16_1_fu_1281_p1;
reg   [0:0] trunc_ln16_1_reg_2546;
wire    ap_CS_fsm_state5;
wire   [2:0] smax_cast_fu_1299_p1;
reg   [2:0] smax_cast_reg_2558;
wire   [2:0] cond70_fu_1315_p3;
reg   [2:0] cond70_reg_2563;
wire   [31:0] tmp_11_fu_1369_p3;
reg   [31:0] tmp_11_reg_2568;
wire   [0:0] trunc_ln8_fu_1381_p1;
reg   [0:0] trunc_ln8_reg_2576;
wire    ap_CS_fsm_state6;
wire   [2:0] zext_ln8_fu_1401_p1;
reg   [2:0] zext_ln8_reg_2582;
wire   [2:0] add_ln16_1_fu_1405_p2;
wire   [0:0] trunc_ln8_1_fu_1416_p1;
reg   [0:0] trunc_ln8_1_reg_2595;
wire    ap_CS_fsm_state7;
wire   [3:0] tmp_40_fu_1439_p3;
reg   [3:0] tmp_40_reg_2602;
wire   [2:0] add_ln18_fu_1447_p2;
wire   [3:0] add_ln23_1_fu_1472_p2;
reg   [3:0] add_ln23_1_reg_2615;
wire    ap_CS_fsm_state8;
wire   [2:0] add_ln19_fu_1489_p2;
wire   [0:0] trunc_ln8_2_fu_1495_p1;
reg   [0:0] trunc_ln8_2_reg_2666;
wire    ap_CS_fsm_state9;
wire   [5:0] add_ln8_fu_1509_p2;
reg   [5:0] add_ln8_reg_2671;
wire   [31:0] q_idx_range_fu_1561_p3;
reg   [31:0] q_idx_range_reg_2676;
wire   [30:0] add_ln24_fu_1577_p2;
reg   [30:0] add_ln24_reg_2685;
wire    ap_CS_fsm_state10;
wire   [0:0] trunc_ln24_fu_1583_p1;
reg   [0:0] trunc_ln24_reg_2690;
reg   [5:0] force_0_0_0_0_addr_reg_2710;
reg   [5:0] force_0_0_0_1_addr_reg_2715;
reg   [5:0] force_0_0_1_0_addr_reg_2720;
reg   [5:0] force_0_0_1_1_addr_reg_2725;
reg   [5:0] force_0_1_0_0_addr_reg_2730;
reg   [5:0] force_0_1_0_1_addr_reg_2735;
reg   [5:0] force_0_1_1_0_addr_reg_2740;
reg   [5:0] force_0_1_1_1_addr_reg_2745;
reg   [5:0] force_1_0_0_0_addr_reg_2750;
reg   [5:0] force_1_0_0_1_addr_reg_2755;
reg   [5:0] force_1_0_1_0_addr_reg_2760;
reg   [5:0] force_1_0_1_1_addr_reg_2765;
reg   [5:0] force_1_1_0_0_addr_reg_2770;
reg   [5:0] force_1_1_0_1_addr_reg_2775;
reg   [5:0] force_1_1_1_0_addr_reg_2780;
reg   [5:0] force_1_1_1_1_addr_reg_2785;
wire   [2:0] add_ln20_fu_1638_p2;
wire   [191:0] select_ln25_6_fu_1686_p3;
reg   [191:0] select_ln25_6_reg_2875;
wire    ap_CS_fsm_state11;
wire   [191:0] select_ln25_13_fu_1735_p3;
reg   [191:0] select_ln25_13_reg_2880;
wire   [191:0] select_ln26_6_fu_1784_p3;
reg   [191:0] select_ln26_6_reg_2885;
wire   [191:0] select_ln26_13_fu_1833_p3;
reg   [191:0] select_ln26_13_reg_2890;
wire   [190:0] trunc_ln25_fu_1845_p1;
reg   [190:0] trunc_ln25_reg_2895;
wire    ap_CS_fsm_state12;
wire   [63:0] p_x_fu_1854_p1;
reg   [63:0] p_x_reg_2900;
wire   [63:0] p_y_fu_1869_p1;
reg   [63:0] p_y_reg_2905;
wire   [63:0] p_z_fu_1884_p1;
reg   [63:0] p_z_reg_2910;
wire   [63:0] sum_x_fu_1898_p1;
reg   [63:0] sum_x_reg_2915;
wire   [63:0] sum_y_fu_1913_p1;
reg   [63:0] sum_y_reg_2920;
wire   [63:0] sum_z_fu_1928_p1;
reg   [63:0] sum_z_reg_2925;
wire   [51:0] trunc_ln34_fu_1933_p1;
reg   [51:0] trunc_ln34_reg_2930;
reg   [51:0] trunc_ln34_3_reg_2935;
reg   [51:0] trunc_ln34_5_reg_2940;
wire   [2:0] grp_md_Pipeline_loop_q_fu_968_ap_return;
reg   [2:0] targetBlock_reg_2945;
wire    ap_CS_fsm_state13;
wire   [0:0] empty_31_fu_1960_p2;
reg   [0:0] empty_31_reg_2952;
wire   [0:0] empty_33_fu_1966_p2;
reg   [0:0] empty_33_reg_2959;
wire   [0:0] empty_35_fu_1972_p2;
reg   [0:0] empty_35_reg_2966;
wire   [0:0] empty_37_fu_1978_p2;
reg   [0:0] empty_37_reg_2973;
wire    grp_md_Pipeline_loop_q_fu_968_ap_start;
wire    grp_md_Pipeline_loop_q_fu_968_ap_done;
wire    grp_md_Pipeline_loop_q_fu_968_ap_idle;
wire    grp_md_Pipeline_loop_q_fu_968_ap_ready;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_ce1;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_z_1_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_z_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_y_1_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_y_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_x_1_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_x_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_x_15_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_x_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_y_15_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_y_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_z_15_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_z_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_x_13_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_x_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_y_13_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_y_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_z_13_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_z_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_x_11_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_x_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_y_11_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_y_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_z_11_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_z_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_x_9_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_x_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_y_9_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_y_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_z_9_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_z_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_x_7_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_x_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_y_7_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_y_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_z_7_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_z_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_x_5_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_x_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_y_5_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_y_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_z_5_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_z_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_x_3_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_x_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_y_3_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_y_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_968_sum_z_3_out;
wire    grp_md_Pipeline_loop_q_fu_968_sum_z_3_out_ap_vld;
reg   [2:0] b0_y_reg_880;
wire   [0:0] icmp_ln14_fu_1060_p2;
wire   [0:0] icmp_ln16_fu_1207_p2;
reg   [2:0] indvars_iv85_reg_891;
reg   [2:0] b0_z_reg_903;
wire   [0:0] icmp_ln15_fu_1126_p2;
wire   [0:0] icmp_ln18_fu_1376_p2;
reg   [2:0] indvars_iv81_reg_915;
reg   [2:0] b1_x_reg_927;
wire   [0:0] icmp_ln19_fu_1411_p2;
reg   [2:0] b1_y_reg_937;
wire   [0:0] icmp_ln20_fu_1453_p2;
reg   [2:0] b1_z_reg_947;
wire   [0:0] icmp_ln24_fu_1572_p2;
reg   [30:0] p_idx_reg_957;
wire    ap_CS_fsm_state14;
reg    grp_md_Pipeline_loop_q_fu_968_ap_start_reg;
reg   [63:0] sum_z_1_loc_fu_292;
reg   [63:0] sum_y_1_loc_fu_288;
reg   [63:0] sum_x_1_loc_fu_284;
reg   [63:0] sum_x_15_loc_fu_280;
reg   [63:0] sum_y_15_loc_fu_276;
reg   [63:0] sum_z_15_loc_fu_272;
reg   [63:0] sum_x_13_loc_fu_268;
reg   [63:0] sum_y_13_loc_fu_264;
reg   [63:0] sum_z_13_loc_fu_260;
reg   [63:0] sum_x_11_loc_fu_256;
reg   [63:0] sum_y_11_loc_fu_252;
reg   [63:0] sum_z_11_loc_fu_248;
reg   [63:0] sum_x_9_loc_fu_244;
reg   [63:0] sum_y_9_loc_fu_240;
reg   [63:0] sum_z_9_loc_fu_236;
reg   [63:0] sum_x_7_loc_fu_232;
reg   [63:0] sum_y_7_loc_fu_228;
reg   [63:0] sum_z_7_loc_fu_224;
reg   [63:0] sum_x_5_loc_fu_220;
reg   [63:0] sum_y_5_loc_fu_216;
reg   [63:0] sum_z_5_loc_fu_212;
reg   [63:0] sum_x_3_loc_fu_208;
reg   [63:0] sum_y_3_loc_fu_204;
reg   [63:0] sum_z_3_loc_fu_200;
wire   [63:0] tmp_16_cast5_fu_1235_p1;
wire   [63:0] zext_ln23_2_fu_1477_p1;
wire   [63:0] zext_ln26_1_fu_1602_p1;
reg   [2:0] indvars_iv90_fu_192;
wire   [2:0] add_ln14_1_fu_1192_p2;
reg   [2:0] b0_x_fu_196;
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
wire   [191:0] or_ln_fu_2239_p4;
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
wire   [0:0] empty_fu_1088_p2;
wire   [1:0] trunc_ln14_fu_1072_p1;
wire   [1:0] smax92_fu_1094_p3;
wire   [2:0] empty_26_fu_1106_p2;
wire   [0:0] cmp18_fu_1112_p2;
wire   [0:0] empty_27_fu_1154_p2;
wire   [1:0] trunc_ln15_fu_1138_p1;
wire   [1:0] smax87_fu_1160_p3;
wire   [2:0] empty_28_fu_1172_p2;
wire   [0:0] cmp41_fu_1178_p2;
wire   [0:0] tmp_37_fu_1219_p3;
wire   [2:0] tmp_16_fu_1227_p4;
wire   [4:0] tmp_38_fu_1251_p5;
wire   [5:0] zext_ln26_fu_1261_p1;
wire   [5:0] tmp_16_cast_fu_1247_p1;
wire   [0:0] empty_29_fu_1285_p2;
wire   [1:0] trunc_ln16_fu_1277_p1;
wire   [1:0] smax_fu_1291_p3;
wire   [2:0] empty_30_fu_1303_p2;
wire   [0:0] cmp64_fu_1309_p2;
wire   [31:0] tmp_8_fu_1331_p3;
wire   [31:0] tmp_7_fu_1323_p3;
wire   [31:0] tmp_6_fu_1354_p3;
wire   [31:0] tmp_s_fu_1346_p3;
wire   [31:0] tmp_10_fu_1362_p3;
wire   [31:0] tmp_9_fu_1339_p3;
wire   [0:0] tmp_39_fu_1385_p3;
wire   [1:0] tmp_19_fu_1393_p3;
wire   [1:0] lshr_ln8_4_fu_1420_p4;
wire   [2:0] zext_ln23_fu_1430_p1;
wire   [2:0] add_ln23_fu_1434_p2;
wire   [1:0] lshr_ln8_5_fu_1458_p4;
wire   [3:0] zext_ln23_1_fu_1468_p1;
wire   [5:0] tmp_41_fu_1502_p3;
wire   [5:0] zext_ln8_1_fu_1499_p1;
wire   [31:0] select_ln23_1_fu_1523_p3;
wire   [31:0] select_ln23_fu_1515_p3;
wire   [31:0] select_ln23_4_fu_1546_p3;
wire   [31:0] select_ln23_3_fu_1538_p3;
wire   [31:0] select_ln23_5_fu_1554_p3;
wire   [31:0] select_ln23_2_fu_1531_p3;
wire   [31:0] zext_ln24_fu_1568_p1;
wire   [5:0] lshr_ln_fu_1587_p4;
wire   [5:0] add_ln26_fu_1597_p2;
wire   [191:0] select_ln25_1_fu_1651_p3;
wire   [191:0] select_ln25_fu_1644_p3;
wire   [191:0] select_ln25_4_fu_1672_p3;
wire   [191:0] select_ln25_3_fu_1665_p3;
wire   [191:0] select_ln25_5_fu_1679_p3;
wire   [191:0] select_ln25_2_fu_1658_p3;
wire   [191:0] select_ln25_8_fu_1700_p3;
wire   [191:0] select_ln25_7_fu_1693_p3;
wire   [191:0] select_ln25_11_fu_1721_p3;
wire   [191:0] select_ln25_10_fu_1714_p3;
wire   [191:0] select_ln25_12_fu_1728_p3;
wire   [191:0] select_ln25_9_fu_1707_p3;
wire   [191:0] select_ln26_1_fu_1749_p3;
wire   [191:0] select_ln26_fu_1742_p3;
wire   [191:0] select_ln26_4_fu_1770_p3;
wire   [191:0] select_ln26_3_fu_1763_p3;
wire   [191:0] select_ln26_5_fu_1777_p3;
wire   [191:0] select_ln26_2_fu_1756_p3;
wire   [191:0] select_ln26_8_fu_1798_p3;
wire   [191:0] select_ln26_7_fu_1791_p3;
wire   [191:0] select_ln26_11_fu_1819_p3;
wire   [191:0] select_ln26_10_fu_1812_p3;
wire   [191:0] select_ln26_12_fu_1826_p3;
wire   [191:0] select_ln26_9_fu_1805_p3;
wire   [191:0] select_ln25_14_fu_1840_p3;
wire   [63:0] trunc_ln25_3_fu_1850_p1;
wire   [63:0] trunc_ln25_1_fu_1859_p4;
wire   [63:0] trunc_ln25_2_fu_1874_p4;
wire   [191:0] select_ln26_14_fu_1889_p3;
wire   [63:0] trunc_ln26_fu_1894_p1;
wire   [63:0] trunc_ln4_fu_1903_p4;
wire   [63:0] trunc_ln5_fu_1918_p4;
wire   [63:0] empty_32_fu_2056_p3;
wire   [63:0] empty_34_fu_2063_p3;
wire   [63:0] empty_36_fu_2070_p3;
wire   [0:0] empty_39_fu_2084_p2;
wire   [63:0] empty_38_fu_2077_p3;
wire   [0:0] empty_41_fu_2097_p2;
wire   [63:0] empty_40_fu_2089_p3;
wire   [0:0] empty_43_fu_2110_p2;
wire   [63:0] empty_42_fu_2102_p3;
wire   [63:0] empty_44_fu_2123_p3;
wire   [63:0] empty_45_fu_2130_p3;
wire   [63:0] empty_46_fu_2137_p3;
wire   [63:0] empty_47_fu_2144_p3;
wire   [63:0] empty_48_fu_2151_p3;
wire   [63:0] empty_49_fu_2159_p3;
wire   [63:0] empty_50_fu_2175_p3;
wire   [63:0] empty_51_fu_2182_p3;
wire   [63:0] empty_52_fu_2189_p3;
wire   [63:0] empty_53_fu_2196_p3;
wire   [63:0] empty_54_fu_2203_p3;
wire   [63:0] empty_55_fu_2211_p3;
wire   [63:0] sum_x_0_lcssa_ph_fu_2219_p3;
wire   [63:0] sum_y_0_lcssa_ph_fu_2167_p3;
wire   [63:0] sum_z_0_lcssa_ph_fu_2115_p3;
wire   [63:0] bitcast_ln51_fu_2235_p1;
wire   [63:0] bitcast_ln50_fu_2231_p1;
wire   [63:0] bitcast_ln49_fu_2227_p1;
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
#0 grp_md_Pipeline_loop_q_fu_968_ap_start_reg = 1'b0;
#0 indvars_iv90_fu_192 = 3'd0;
#0 b0_x_fu_196 = 3'd0;
end
md_md_Pipeline_loop_q grp_md_Pipeline_loop_q_fu_968(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_md_Pipeline_loop_q_fu_968_ap_start),.ap_done(grp_md_Pipeline_loop_q_fu_968_ap_done),.ap_idle(grp_md_Pipeline_loop_q_fu_968_ap_idle),.ap_ready(grp_md_Pipeline_loop_q_fu_968_ap_ready),.sum_z(sum_z_reg_2925),.sum_y(sum_y_reg_2920),.sum_x(sum_x_reg_2915),.sext_ln24(q_idx_range_reg_2676),.empty_10(trunc_ln8_2_reg_2666),.empty_11(trunc_ln8_1_reg_2595),.empty_12(trunc_ln8_reg_2576),.p_x(p_x_reg_2900),.p_y(p_y_reg_2905),.p_z(p_z_reg_2910),.q_idx_range(q_idx_range_reg_2676),.mul_ln31(add_ln8_reg_2671),.position_0_0_0_0_address0(grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_address0),.position_0_0_0_0_ce0(grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_ce0),.position_0_0_0_0_q0(position_0_0_0_0_q0),.position_0_0_0_0_address1(grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_address1),.position_0_0_0_0_ce1(grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_ce1),.position_0_0_0_0_q1(position_0_0_0_0_q1),.position_0_0_0_1_address0(grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_address0),.position_0_0_0_1_ce0(grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_ce0),.position_0_0_0_1_q0(position_0_0_0_1_q0),.position_0_0_0_1_address1(grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_address1),.position_0_0_0_1_ce1(grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_ce1),.position_0_0_0_1_q1(position_0_0_0_1_q1),.position_0_0_1_0_address0(grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_address0),.position_0_0_1_0_ce0(grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_ce0),.position_0_0_1_0_q0(position_0_0_1_0_q0),.position_0_0_1_0_address1(grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_address1),.position_0_0_1_0_ce1(grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_ce1),.position_0_0_1_0_q1(position_0_0_1_0_q1),.position_0_0_1_1_address0(grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_address0),.position_0_0_1_1_ce0(grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_ce0),.position_0_0_1_1_q0(position_0_0_1_1_q0),.position_0_0_1_1_address1(grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_address1),.position_0_0_1_1_ce1(grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_ce1),.position_0_0_1_1_q1(position_0_0_1_1_q1),.position_0_1_0_0_address0(grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_address0),.position_0_1_0_0_ce0(grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_ce0),.position_0_1_0_0_q0(position_0_1_0_0_q0),.position_0_1_0_0_address1(grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_address1),.position_0_1_0_0_ce1(grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_ce1),.position_0_1_0_0_q1(position_0_1_0_0_q1),.position_0_1_0_1_address0(grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_address0),.position_0_1_0_1_ce0(grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_ce0),.position_0_1_0_1_q0(position_0_1_0_1_q0),.position_0_1_0_1_address1(grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_address1),.position_0_1_0_1_ce1(grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_ce1),.position_0_1_0_1_q1(position_0_1_0_1_q1),.position_0_1_1_0_address0(grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_address0),.position_0_1_1_0_ce0(grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_ce0),.position_0_1_1_0_q0(position_0_1_1_0_q0),.position_0_1_1_0_address1(grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_address1),.position_0_1_1_0_ce1(grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_ce1),.position_0_1_1_0_q1(position_0_1_1_0_q1),.position_0_1_1_1_address0(grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_address0),.position_0_1_1_1_ce0(grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_ce0),.position_0_1_1_1_q0(position_0_1_1_1_q0),.position_0_1_1_1_address1(grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_address1),.position_0_1_1_1_ce1(grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_ce1),.position_0_1_1_1_q1(position_0_1_1_1_q1),.position_1_0_0_0_address0(grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_address0),.position_1_0_0_0_ce0(grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_ce0),.position_1_0_0_0_q0(position_1_0_0_0_q0),.position_1_0_0_0_address1(grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_address1),.position_1_0_0_0_ce1(grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_ce1),.position_1_0_0_0_q1(position_1_0_0_0_q1),.position_1_0_0_1_address0(grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_address0),.position_1_0_0_1_ce0(grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_ce0),.position_1_0_0_1_q0(position_1_0_0_1_q0),.position_1_0_0_1_address1(grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_address1),.position_1_0_0_1_ce1(grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_ce1),.position_1_0_0_1_q1(position_1_0_0_1_q1),.position_1_0_1_0_address0(grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_address0),.position_1_0_1_0_ce0(grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_ce0),.position_1_0_1_0_q0(position_1_0_1_0_q0),.position_1_0_1_0_address1(grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_address1),.position_1_0_1_0_ce1(grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_ce1),.position_1_0_1_0_q1(position_1_0_1_0_q1),.position_1_0_1_1_address0(grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_address0),.position_1_0_1_1_ce0(grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_ce0),.position_1_0_1_1_q0(position_1_0_1_1_q0),.position_1_0_1_1_address1(grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_address1),.position_1_0_1_1_ce1(grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_ce1),.position_1_0_1_1_q1(position_1_0_1_1_q1),.position_1_1_0_0_address0(grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_address0),.position_1_1_0_0_ce0(grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_ce0),.position_1_1_0_0_q0(position_1_1_0_0_q0),.position_1_1_0_0_address1(grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_address1),.position_1_1_0_0_ce1(grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_ce1),.position_1_1_0_0_q1(position_1_1_0_0_q1),.position_1_1_0_1_address0(grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_address0),.position_1_1_0_1_ce0(grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_ce0),.position_1_1_0_1_q0(position_1_1_0_1_q0),.position_1_1_0_1_address1(grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_address1),.position_1_1_0_1_ce1(grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_ce1),.position_1_1_0_1_q1(position_1_1_0_1_q1),.position_1_1_1_0_address0(grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_address0),.position_1_1_1_0_ce0(grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_ce0),.position_1_1_1_0_q0(position_1_1_1_0_q0),.position_1_1_1_0_address1(grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_address1),.position_1_1_1_0_ce1(grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_ce1),.position_1_1_1_0_q1(position_1_1_1_0_q1),.position_1_1_1_1_address0(grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_address0),.position_1_1_1_1_ce0(grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_ce0),.position_1_1_1_1_q0(position_1_1_1_1_q0),.position_1_1_1_1_address1(grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_address1),.position_1_1_1_1_ce1(grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_ce1),.position_1_1_1_1_q1(position_1_1_1_1_q1),.select_ln25_14(trunc_ln25_reg_2895),.empty(trunc_ln34_reg_2930),.trunc_ln34_3(trunc_ln34_3_reg_2935),.trunc_ln34_5(trunc_ln34_5_reg_2940),.sum_z_1_out(grp_md_Pipeline_loop_q_fu_968_sum_z_1_out),.sum_z_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_z_1_out_ap_vld),.sum_y_1_out(grp_md_Pipeline_loop_q_fu_968_sum_y_1_out),.sum_y_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_y_1_out_ap_vld),.sum_x_1_out(grp_md_Pipeline_loop_q_fu_968_sum_x_1_out),.sum_x_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_x_1_out_ap_vld),.sum_x_15_out(grp_md_Pipeline_loop_q_fu_968_sum_x_15_out),.sum_x_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_x_15_out_ap_vld),.sum_y_15_out(grp_md_Pipeline_loop_q_fu_968_sum_y_15_out),.sum_y_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_y_15_out_ap_vld),.sum_z_15_out(grp_md_Pipeline_loop_q_fu_968_sum_z_15_out),.sum_z_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_z_15_out_ap_vld),.sum_x_13_out(grp_md_Pipeline_loop_q_fu_968_sum_x_13_out),.sum_x_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_x_13_out_ap_vld),.sum_y_13_out(grp_md_Pipeline_loop_q_fu_968_sum_y_13_out),.sum_y_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_y_13_out_ap_vld),.sum_z_13_out(grp_md_Pipeline_loop_q_fu_968_sum_z_13_out),.sum_z_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_z_13_out_ap_vld),.sum_x_11_out(grp_md_Pipeline_loop_q_fu_968_sum_x_11_out),.sum_x_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_x_11_out_ap_vld),.sum_y_11_out(grp_md_Pipeline_loop_q_fu_968_sum_y_11_out),.sum_y_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_y_11_out_ap_vld),.sum_z_11_out(grp_md_Pipeline_loop_q_fu_968_sum_z_11_out),.sum_z_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_z_11_out_ap_vld),.sum_x_9_out(grp_md_Pipeline_loop_q_fu_968_sum_x_9_out),.sum_x_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_x_9_out_ap_vld),.sum_y_9_out(grp_md_Pipeline_loop_q_fu_968_sum_y_9_out),.sum_y_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_y_9_out_ap_vld),.sum_z_9_out(grp_md_Pipeline_loop_q_fu_968_sum_z_9_out),.sum_z_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_z_9_out_ap_vld),.sum_x_7_out(grp_md_Pipeline_loop_q_fu_968_sum_x_7_out),.sum_x_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_x_7_out_ap_vld),.sum_y_7_out(grp_md_Pipeline_loop_q_fu_968_sum_y_7_out),.sum_y_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_y_7_out_ap_vld),.sum_z_7_out(grp_md_Pipeline_loop_q_fu_968_sum_z_7_out),.sum_z_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_z_7_out_ap_vld),.sum_x_5_out(grp_md_Pipeline_loop_q_fu_968_sum_x_5_out),.sum_x_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_x_5_out_ap_vld),.sum_y_5_out(grp_md_Pipeline_loop_q_fu_968_sum_y_5_out),.sum_y_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_y_5_out_ap_vld),.sum_z_5_out(grp_md_Pipeline_loop_q_fu_968_sum_z_5_out),.sum_z_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_z_5_out_ap_vld),.sum_x_3_out(grp_md_Pipeline_loop_q_fu_968_sum_x_3_out),.sum_x_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_x_3_out_ap_vld),.sum_y_3_out(grp_md_Pipeline_loop_q_fu_968_sum_y_3_out),.sum_y_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_y_3_out_ap_vld),.sum_z_3_out(grp_md_Pipeline_loop_q_fu_968_sum_z_3_out),.sum_z_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_968_sum_z_3_out_ap_vld),.ap_return(grp_md_Pipeline_loop_q_fu_968_ap_return));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_md_Pipeline_loop_q_fu_968_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_md_Pipeline_loop_q_fu_968_ap_start_reg <= 1'b1;
        end else if ((grp_md_Pipeline_loop_q_fu_968_ap_ready == 1'b1)) begin
            grp_md_Pipeline_loop_q_fu_968_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b0_x_fu_196 <= 3'd0;
    end else if (((icmp_ln15_fu_1126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_x_fu_196 <= add_ln14_reg_2426;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_1207_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        b0_y_reg_880 <= add_ln15_reg_2457;
    end else if (((icmp_ln14_fu_1060_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b0_y_reg_880 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1376_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        b0_z_reg_903 <= add_ln16_reg_2491;
    end else if (((icmp_ln15_fu_1126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_z_reg_903 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b1_x_reg_927 <= smax92_cast_reg_2444;
    end else if (((icmp_ln19_fu_1411_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_x_reg_927 <= add_ln18_fu_1447_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1376_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        b1_y_reg_937 <= smax87_cast_reg_2478;
    end else if (((icmp_ln20_fu_1453_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        b1_y_reg_937 <= add_ln19_fu_1489_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_1411_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_z_reg_947 <= smax_cast_reg_2558;
    end else if (((icmp_ln24_fu_1572_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        b1_z_reg_947 <= add_ln20_fu_1638_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1376_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        indvars_iv81_reg_915 <= add_ln16_1_fu_1405_p2;
    end else if (((icmp_ln15_fu_1126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv81_reg_915 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_1207_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv85_reg_891 <= add_ln15_1_fu_1271_p2;
    end else if (((icmp_ln14_fu_1060_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv85_reg_891 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv90_fu_192 <= 3'd7;
    end else if (((icmp_ln15_fu_1126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv90_fu_192 <= add_ln14_1_fu_1192_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        p_idx_reg_957 <= add_ln24_reg_2685;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        p_idx_reg_957 <= 31'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln14_reg_2426 <= add_ln14_fu_1066_p2;
        cond24_reg_2449 <= cond24_fu_1118_p3;
        smax92_cast_reg_2444[1 : 0] <= smax92_cast_fu_1102_p1[1 : 0];
        tmp_reg_2438 <= b0_x_fu_196[32'd1];
        trunc_ln14_1_reg_2431 <= trunc_ln14_1_fu_1076_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln15_reg_2457 <= add_ln15_fu_1132_p2;
        cond47_reg_2483 <= cond47_fu_1184_p3;
        smax87_cast_reg_2478[1 : 0] <= smax87_cast_fu_1168_p1[1 : 0];
        tmp_36_reg_2472 <= b0_y_reg_880[32'd1];
        trunc_ln15_1_reg_2462 <= trunc_ln15_1_fu_1142_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_reg_2491 <= add_ln16_fu_1213_p2;
        add_ln26_1_reg_2536 <= add_ln26_1_fu_1265_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln23_1_reg_2615 <= add_ln23_1_fu_1472_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln24_reg_2685 <= add_ln24_fu_1577_p2;
        force_0_0_0_0_addr_reg_2710 <= zext_ln26_1_fu_1602_p1;
        force_0_0_0_1_addr_reg_2715 <= zext_ln26_1_fu_1602_p1;
        force_0_0_1_0_addr_reg_2720 <= zext_ln26_1_fu_1602_p1;
        force_0_0_1_1_addr_reg_2725 <= zext_ln26_1_fu_1602_p1;
        force_0_1_0_0_addr_reg_2730 <= zext_ln26_1_fu_1602_p1;
        force_0_1_0_1_addr_reg_2735 <= zext_ln26_1_fu_1602_p1;
        force_0_1_1_0_addr_reg_2740 <= zext_ln26_1_fu_1602_p1;
        force_0_1_1_1_addr_reg_2745 <= zext_ln26_1_fu_1602_p1;
        force_1_0_0_0_addr_reg_2750 <= zext_ln26_1_fu_1602_p1;
        force_1_0_0_1_addr_reg_2755 <= zext_ln26_1_fu_1602_p1;
        force_1_0_1_0_addr_reg_2760 <= zext_ln26_1_fu_1602_p1;
        force_1_0_1_1_addr_reg_2765 <= zext_ln26_1_fu_1602_p1;
        force_1_1_0_0_addr_reg_2770 <= zext_ln26_1_fu_1602_p1;
        force_1_1_0_1_addr_reg_2775 <= zext_ln26_1_fu_1602_p1;
        force_1_1_1_0_addr_reg_2780 <= zext_ln26_1_fu_1602_p1;
        force_1_1_1_1_addr_reg_2785 <= zext_ln26_1_fu_1602_p1;
        trunc_ln24_reg_2690 <= trunc_ln24_fu_1583_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln8_reg_2671 <= add_ln8_fu_1509_p2;
        q_idx_range_reg_2676 <= q_idx_range_fu_1561_p3;
        trunc_ln8_2_reg_2666 <= trunc_ln8_2_fu_1495_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        cond70_reg_2563 <= cond70_fu_1315_p3;
        smax_cast_reg_2558[1 : 0] <= smax_cast_fu_1299_p1[1 : 0];
        tmp_11_reg_2568 <= tmp_11_fu_1369_p3;
        trunc_ln16_1_reg_2546 <= trunc_ln16_1_fu_1281_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        empty_31_reg_2952 <= empty_31_fu_1960_p2;
        empty_33_reg_2959 <= empty_33_fu_1966_p2;
        empty_35_reg_2966 <= empty_35_fu_1972_p2;
        empty_37_reg_2973 <= empty_37_fu_1978_p2;
        targetBlock_reg_2945 <= grp_md_Pipeline_loop_q_fu_968_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        p_x_reg_2900 <= p_x_fu_1854_p1;
        p_y_reg_2905 <= p_y_fu_1869_p1;
        p_z_reg_2910 <= p_z_fu_1884_p1;
        sum_x_reg_2915 <= sum_x_fu_1898_p1;
        sum_y_reg_2920 <= sum_y_fu_1913_p1;
        sum_z_reg_2925 <= sum_z_fu_1928_p1;
        trunc_ln25_reg_2895 <= trunc_ln25_fu_1845_p1;
        trunc_ln34_3_reg_2935 <= {{select_ln25_14_fu_1840_p3[115:64]}};
        trunc_ln34_5_reg_2940 <= {{select_ln25_14_fu_1840_p3[179:128]}};
        trunc_ln34_reg_2930 <= trunc_ln34_fu_1933_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        select_ln25_13_reg_2880 <= select_ln25_13_fu_1735_p3;
        select_ln25_6_reg_2875 <= select_ln25_6_fu_1686_p3;
        select_ln26_13_reg_2890 <= select_ln26_13_fu_1833_p3;
        select_ln26_6_reg_2885 <= select_ln26_6_fu_1784_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_x_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_11_loc_fu_256 <= grp_md_Pipeline_loop_q_fu_968_sum_x_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_x_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_13_loc_fu_268 <= grp_md_Pipeline_loop_q_fu_968_sum_x_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_x_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_15_loc_fu_280 <= grp_md_Pipeline_loop_q_fu_968_sum_x_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_x_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_1_loc_fu_284 <= grp_md_Pipeline_loop_q_fu_968_sum_x_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_x_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_3_loc_fu_208 <= grp_md_Pipeline_loop_q_fu_968_sum_x_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_x_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_5_loc_fu_220 <= grp_md_Pipeline_loop_q_fu_968_sum_x_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_x_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_7_loc_fu_232 <= grp_md_Pipeline_loop_q_fu_968_sum_x_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_x_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_9_loc_fu_244 <= grp_md_Pipeline_loop_q_fu_968_sum_x_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_y_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_11_loc_fu_252 <= grp_md_Pipeline_loop_q_fu_968_sum_y_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_y_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_13_loc_fu_264 <= grp_md_Pipeline_loop_q_fu_968_sum_y_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_y_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_15_loc_fu_276 <= grp_md_Pipeline_loop_q_fu_968_sum_y_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_y_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_1_loc_fu_288 <= grp_md_Pipeline_loop_q_fu_968_sum_y_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_y_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_3_loc_fu_204 <= grp_md_Pipeline_loop_q_fu_968_sum_y_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_y_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_5_loc_fu_216 <= grp_md_Pipeline_loop_q_fu_968_sum_y_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_y_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_7_loc_fu_228 <= grp_md_Pipeline_loop_q_fu_968_sum_y_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_y_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_9_loc_fu_240 <= grp_md_Pipeline_loop_q_fu_968_sum_y_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_z_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_11_loc_fu_248 <= grp_md_Pipeline_loop_q_fu_968_sum_z_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_z_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_13_loc_fu_260 <= grp_md_Pipeline_loop_q_fu_968_sum_z_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_z_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_15_loc_fu_272 <= grp_md_Pipeline_loop_q_fu_968_sum_z_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_z_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_1_loc_fu_292 <= grp_md_Pipeline_loop_q_fu_968_sum_z_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_z_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_3_loc_fu_200 <= grp_md_Pipeline_loop_q_fu_968_sum_z_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_z_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_5_loc_fu_212 <= grp_md_Pipeline_loop_q_fu_968_sum_z_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_z_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_7_loc_fu_224 <= grp_md_Pipeline_loop_q_fu_968_sum_z_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_968_sum_z_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_9_loc_fu_236 <= grp_md_Pipeline_loop_q_fu_968_sum_z_9_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_40_reg_2602[3 : 1] <= tmp_40_fu_1439_p3[3 : 1];
        trunc_ln8_1_reg_2595 <= trunc_ln8_1_fu_1416_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        trunc_ln8_reg_2576 <= trunc_ln8_fu_1381_p1;
        zext_ln8_reg_2582[1] <= zext_ln8_fu_1401_p1[1];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_md_Pipeline_loop_q_fu_968_ap_done == 1'b0)) begin
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
    if (((icmp_ln14_fu_1060_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln14_fu_1060_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_0_0_address0_local = force_0_0_0_0_addr_reg_2710;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_0_0_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd0) & (trunc_ln16_1_reg_2546 == 1'd0) & (trunc_ln15_1_reg_2462 == 1'd0) & (trunc_ln14_1_reg_2431 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_0_0_we0_local = 1'b1;
    end else begin
        force_0_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_0_1_address0_local = force_0_0_0_1_addr_reg_2715;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_0_1_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd1) & (trunc_ln16_1_reg_2546 == 1'd0) & (trunc_ln15_1_reg_2462 == 1'd0) & (trunc_ln14_1_reg_2431 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_0_1_we0_local = 1'b1;
    end else begin
        force_0_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_1_0_address0_local = force_0_0_1_0_addr_reg_2720;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_1_0_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd0) & (trunc_ln16_1_reg_2546 == 1'd1) & (trunc_ln15_1_reg_2462 == 1'd0) & (trunc_ln14_1_reg_2431 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_1_0_we0_local = 1'b1;
    end else begin
        force_0_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_0_1_1_address0_local = force_0_0_1_1_addr_reg_2725;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_1_1_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd1) & (trunc_ln16_1_reg_2546 == 1'd1) & (trunc_ln15_1_reg_2462 == 1'd0) & (trunc_ln14_1_reg_2431 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_0_1_1_we0_local = 1'b1;
    end else begin
        force_0_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_0_0_address0_local = force_0_1_0_0_addr_reg_2730;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_0_0_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd0) & (trunc_ln16_1_reg_2546 == 1'd0) & (trunc_ln15_1_reg_2462 == 1'd1) & (trunc_ln14_1_reg_2431 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_0_0_we0_local = 1'b1;
    end else begin
        force_0_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_0_1_address0_local = force_0_1_0_1_addr_reg_2735;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_0_1_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd1) & (trunc_ln16_1_reg_2546 == 1'd0) & (trunc_ln15_1_reg_2462 == 1'd1) & (trunc_ln14_1_reg_2431 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_0_1_we0_local = 1'b1;
    end else begin
        force_0_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_1_0_address0_local = force_0_1_1_0_addr_reg_2740;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_1_0_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd0) & (trunc_ln16_1_reg_2546 == 1'd1) & (trunc_ln15_1_reg_2462 == 1'd1) & (trunc_ln14_1_reg_2431 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_1_0_we0_local = 1'b1;
    end else begin
        force_0_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_0_1_1_1_address0_local = force_0_1_1_1_addr_reg_2745;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_1_1_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd1) & (trunc_ln16_1_reg_2546 == 1'd1) & (trunc_ln15_1_reg_2462 == 1'd1) & (trunc_ln14_1_reg_2431 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        force_0_1_1_1_we0_local = 1'b1;
    end else begin
        force_0_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_0_0_address0_local = force_1_0_0_0_addr_reg_2750;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_0_0_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd0) & (trunc_ln16_1_reg_2546 == 1'd0) & (trunc_ln15_1_reg_2462 == 1'd0) & (trunc_ln14_1_reg_2431 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_0_0_we0_local = 1'b1;
    end else begin
        force_1_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_0_1_address0_local = force_1_0_0_1_addr_reg_2755;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_0_1_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd1) & (trunc_ln16_1_reg_2546 == 1'd0) & (trunc_ln15_1_reg_2462 == 1'd0) & (trunc_ln14_1_reg_2431 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_0_1_we0_local = 1'b1;
    end else begin
        force_1_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_1_0_address0_local = force_1_0_1_0_addr_reg_2760;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_1_0_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd0) & (trunc_ln16_1_reg_2546 == 1'd1) & (trunc_ln15_1_reg_2462 == 1'd0) & (trunc_ln14_1_reg_2431 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_1_0_we0_local = 1'b1;
    end else begin
        force_1_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_0_1_1_address0_local = force_1_0_1_1_addr_reg_2765;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_1_1_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd1) & (trunc_ln16_1_reg_2546 == 1'd1) & (trunc_ln15_1_reg_2462 == 1'd0) & (trunc_ln14_1_reg_2431 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_0_1_1_we0_local = 1'b1;
    end else begin
        force_1_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_0_0_address0_local = force_1_1_0_0_addr_reg_2770;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_0_0_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd0) & (trunc_ln16_1_reg_2546 == 1'd0) & (trunc_ln15_1_reg_2462 == 1'd1) & (trunc_ln14_1_reg_2431 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_0_0_we0_local = 1'b1;
    end else begin
        force_1_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_0_1_address0_local = force_1_1_0_1_addr_reg_2775;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_0_1_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd1) & (trunc_ln16_1_reg_2546 == 1'd0) & (trunc_ln15_1_reg_2462 == 1'd1) & (trunc_ln14_1_reg_2431 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_0_1_we0_local = 1'b1;
    end else begin
        force_1_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_1_0_address0_local = force_1_1_1_0_addr_reg_2780;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_1_0_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd0) & (trunc_ln16_1_reg_2546 == 1'd1) & (trunc_ln15_1_reg_2462 == 1'd1) & (trunc_ln14_1_reg_2431 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_1_0_we0_local = 1'b1;
    end else begin
        force_1_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_1_1_1_1_address0_local = force_1_1_1_1_addr_reg_2785;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_1_1_address0_local = zext_ln26_1_fu_1602_p1;
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
    if (((trunc_ln24_reg_2690 == 1'd1) & (trunc_ln16_1_reg_2546 == 1'd1) & (trunc_ln15_1_reg_2462 == 1'd1) & (trunc_ln14_1_reg_2431 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        force_1_1_1_1_we0_local = 1'b1;
    end else begin
        force_1_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_0_0_0_address0_local = zext_ln23_2_fu_1477_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_0_0_address0_local = tmp_16_cast5_fu_1235_p1;
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
        n_points_0_0_1_address0_local = zext_ln23_2_fu_1477_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_0_1_address0_local = tmp_16_cast5_fu_1235_p1;
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
        n_points_0_1_0_address0_local = zext_ln23_2_fu_1477_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_1_0_address0_local = tmp_16_cast5_fu_1235_p1;
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
        n_points_0_1_1_address0_local = zext_ln23_2_fu_1477_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_1_1_address0_local = tmp_16_cast5_fu_1235_p1;
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
        n_points_1_0_0_address0_local = zext_ln23_2_fu_1477_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_0_0_address0_local = tmp_16_cast5_fu_1235_p1;
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
        n_points_1_0_1_address0_local = zext_ln23_2_fu_1477_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_0_1_address0_local = tmp_16_cast5_fu_1235_p1;
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
        n_points_1_1_0_address0_local = zext_ln23_2_fu_1477_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_1_0_address0_local = tmp_16_cast5_fu_1235_p1;
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
        n_points_1_1_1_address0_local = zext_ln23_2_fu_1477_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_1_1_address0_local = tmp_16_cast5_fu_1235_p1;
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
        position_0_0_0_0_address0 = grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_address0;
    end else begin
        position_0_0_0_0_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_0_ce0 = grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_ce0;
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
        position_0_0_0_0_ce1 = grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_ce1;
    end else begin
        position_0_0_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_1_address0 = grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_address0;
    end else begin
        position_0_0_0_1_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_1_ce0 = grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_ce0;
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
        position_0_0_0_1_ce1 = grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_ce1;
    end else begin
        position_0_0_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_0_address0 = grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_address0;
    end else begin
        position_0_0_1_0_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_0_ce0 = grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_ce0;
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
        position_0_0_1_0_ce1 = grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_ce1;
    end else begin
        position_0_0_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_1_address0 = grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_address0;
    end else begin
        position_0_0_1_1_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_1_ce0 = grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_ce0;
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
        position_0_0_1_1_ce1 = grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_ce1;
    end else begin
        position_0_0_1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_0_address0 = grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_address0;
    end else begin
        position_0_1_0_0_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_0_ce0 = grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_ce0;
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
        position_0_1_0_0_ce1 = grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_ce1;
    end else begin
        position_0_1_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_1_address0 = grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_address0;
    end else begin
        position_0_1_0_1_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_1_ce0 = grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_ce0;
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
        position_0_1_0_1_ce1 = grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_ce1;
    end else begin
        position_0_1_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_0_address0 = grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_address0;
    end else begin
        position_0_1_1_0_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_0_ce0 = grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_ce0;
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
        position_0_1_1_0_ce1 = grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_ce1;
    end else begin
        position_0_1_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_1_address0 = grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_address0;
    end else begin
        position_0_1_1_1_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_1_ce0 = grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_ce0;
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
        position_0_1_1_1_ce1 = grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_ce1;
    end else begin
        position_0_1_1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_0_address0 = grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_address0;
    end else begin
        position_1_0_0_0_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_0_ce0 = grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_ce0;
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
        position_1_0_0_0_ce1 = grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_ce1;
    end else begin
        position_1_0_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_1_address0 = grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_address0;
    end else begin
        position_1_0_0_1_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_1_ce0 = grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_ce0;
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
        position_1_0_0_1_ce1 = grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_ce1;
    end else begin
        position_1_0_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_0_address0 = grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_address0;
    end else begin
        position_1_0_1_0_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_0_ce0 = grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_ce0;
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
        position_1_0_1_0_ce1 = grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_ce1;
    end else begin
        position_1_0_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_1_address0 = grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_address0;
    end else begin
        position_1_0_1_1_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_1_ce0 = grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_ce0;
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
        position_1_0_1_1_ce1 = grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_ce1;
    end else begin
        position_1_0_1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_0_address0 = grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_address0;
    end else begin
        position_1_1_0_0_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_0_ce0 = grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_ce0;
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
        position_1_1_0_0_ce1 = grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_ce1;
    end else begin
        position_1_1_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_1_address0 = grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_address0;
    end else begin
        position_1_1_0_1_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_1_ce0 = grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_ce0;
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
        position_1_1_0_1_ce1 = grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_ce1;
    end else begin
        position_1_1_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_0_address0 = grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_address0;
    end else begin
        position_1_1_1_0_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_0_ce0 = grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_ce0;
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
        position_1_1_1_0_ce1 = grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_ce1;
    end else begin
        position_1_1_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_1_address0 = grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_address0;
    end else begin
        position_1_1_1_1_address0 = zext_ln26_1_fu_1602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_1_ce0 = grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_ce0;
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
        position_1_1_1_1_ce1 = grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_ce1;
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
            if (((icmp_ln14_fu_1060_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln15_fu_1126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_1207_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln18_fu_1376_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_1411_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln20_fu_1453_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln24_fu_1572_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((grp_md_Pipeline_loop_q_fu_968_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
assign add_ln14_1_fu_1192_p2 = (indvars_iv90_fu_192 + 3'd1);
assign add_ln14_fu_1066_p2 = (b0_x_fu_196 + 3'd1);
assign add_ln15_1_fu_1271_p2 = (indvars_iv85_reg_891 + 3'd1);
assign add_ln15_fu_1132_p2 = (b0_y_reg_880 + 3'd1);
assign add_ln16_1_fu_1405_p2 = (indvars_iv81_reg_915 + 3'd1);
assign add_ln16_fu_1213_p2 = (b0_z_reg_903 + 3'd1);
assign add_ln18_fu_1447_p2 = (b1_x_reg_927 + 3'd1);
assign add_ln19_fu_1489_p2 = (b1_y_reg_937 + 3'd1);
assign add_ln20_fu_1638_p2 = (b1_z_reg_947 + 3'd1);
assign add_ln23_1_fu_1472_p2 = (tmp_40_reg_2602 + zext_ln23_1_fu_1468_p1);
assign add_ln23_fu_1434_p2 = (zext_ln8_reg_2582 + zext_ln23_fu_1430_p1);
assign add_ln24_fu_1577_p2 = (p_idx_reg_957 + 31'd1);
assign add_ln26_1_fu_1265_p2 = (zext_ln26_fu_1261_p1 + tmp_16_cast_fu_1247_p1);
assign add_ln26_fu_1597_p2 = (add_ln26_1_reg_2536 + lshr_ln_fu_1587_p4);
assign add_ln8_fu_1509_p2 = (tmp_41_fu_1502_p3 + zext_ln8_1_fu_1499_p1);
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
assign bitcast_ln49_fu_2227_p1 = sum_x_0_lcssa_ph_fu_2219_p3;
assign bitcast_ln50_fu_2231_p1 = sum_y_0_lcssa_ph_fu_2167_p3;
assign bitcast_ln51_fu_2235_p1 = sum_z_0_lcssa_ph_fu_2115_p3;
assign cmp18_fu_1112_p2 = ((empty_26_fu_1106_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp41_fu_1178_p2 = ((empty_28_fu_1172_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp64_fu_1309_p2 = ((empty_30_fu_1303_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cond24_fu_1118_p3 = ((cmp18_fu_1112_p2[0:0] == 1'b1) ? 3'd4 : empty_26_fu_1106_p2);
assign cond47_fu_1184_p3 = ((cmp41_fu_1178_p2[0:0] == 1'b1) ? 3'd4 : empty_28_fu_1172_p2);
assign cond70_fu_1315_p3 = ((cmp64_fu_1309_p2[0:0] == 1'b1) ? 3'd4 : empty_30_fu_1303_p2);
assign empty_26_fu_1106_p2 = (b0_x_fu_196 + 3'd2);
assign empty_27_fu_1154_p2 = (($signed(indvars_iv85_reg_891) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_28_fu_1172_p2 = (b0_y_reg_880 + 3'd2);
assign empty_29_fu_1285_p2 = (($signed(indvars_iv81_reg_915) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_30_fu_1303_p2 = (b0_z_reg_903 + 3'd2);
assign empty_31_fu_1960_p2 = ((grp_md_Pipeline_loop_q_fu_968_ap_return == 3'd0) ? 1'b1 : 1'b0);
assign empty_32_fu_2056_p3 = ((empty_31_reg_2952[0:0] == 1'b1) ? sum_z_1_loc_fu_292 : sum_z_3_loc_fu_200);
assign empty_33_fu_1966_p2 = ((grp_md_Pipeline_loop_q_fu_968_ap_return == 3'd1) ? 1'b1 : 1'b0);
assign empty_34_fu_2063_p3 = ((empty_33_reg_2959[0:0] == 1'b1) ? sum_z_15_loc_fu_272 : empty_32_fu_2056_p3);
assign empty_35_fu_1972_p2 = ((grp_md_Pipeline_loop_q_fu_968_ap_return == 3'd2) ? 1'b1 : 1'b0);
assign empty_36_fu_2070_p3 = ((empty_35_reg_2966[0:0] == 1'b1) ? sum_z_13_loc_fu_260 : empty_34_fu_2063_p3);
assign empty_37_fu_1978_p2 = ((grp_md_Pipeline_loop_q_fu_968_ap_return == 3'd3) ? 1'b1 : 1'b0);
assign empty_38_fu_2077_p3 = ((empty_37_reg_2973[0:0] == 1'b1) ? sum_z_11_loc_fu_248 : empty_36_fu_2070_p3);
assign empty_39_fu_2084_p2 = ((targetBlock_reg_2945 == 3'd4) ? 1'b1 : 1'b0);
assign empty_40_fu_2089_p3 = ((empty_39_fu_2084_p2[0:0] == 1'b1) ? sum_z_9_loc_fu_236 : empty_38_fu_2077_p3);
assign empty_41_fu_2097_p2 = ((targetBlock_reg_2945 == 3'd5) ? 1'b1 : 1'b0);
assign empty_42_fu_2102_p3 = ((empty_41_fu_2097_p2[0:0] == 1'b1) ? sum_z_7_loc_fu_224 : empty_40_fu_2089_p3);
assign empty_43_fu_2110_p2 = ((targetBlock_reg_2945 == 3'd6) ? 1'b1 : 1'b0);
assign empty_44_fu_2123_p3 = ((empty_31_reg_2952[0:0] == 1'b1) ? sum_y_1_loc_fu_288 : sum_y_3_loc_fu_204);
assign empty_45_fu_2130_p3 = ((empty_33_reg_2959[0:0] == 1'b1) ? sum_y_15_loc_fu_276 : empty_44_fu_2123_p3);
assign empty_46_fu_2137_p3 = ((empty_35_reg_2966[0:0] == 1'b1) ? sum_y_13_loc_fu_264 : empty_45_fu_2130_p3);
assign empty_47_fu_2144_p3 = ((empty_37_reg_2973[0:0] == 1'b1) ? sum_y_11_loc_fu_252 : empty_46_fu_2137_p3);
assign empty_48_fu_2151_p3 = ((empty_39_fu_2084_p2[0:0] == 1'b1) ? sum_y_9_loc_fu_240 : empty_47_fu_2144_p3);
assign empty_49_fu_2159_p3 = ((empty_41_fu_2097_p2[0:0] == 1'b1) ? sum_y_7_loc_fu_228 : empty_48_fu_2151_p3);
assign empty_50_fu_2175_p3 = ((empty_31_reg_2952[0:0] == 1'b1) ? sum_x_1_loc_fu_284 : sum_x_3_loc_fu_208);
assign empty_51_fu_2182_p3 = ((empty_33_reg_2959[0:0] == 1'b1) ? sum_x_15_loc_fu_280 : empty_50_fu_2175_p3);
assign empty_52_fu_2189_p3 = ((empty_35_reg_2966[0:0] == 1'b1) ? sum_x_13_loc_fu_268 : empty_51_fu_2182_p3);
assign empty_53_fu_2196_p3 = ((empty_37_reg_2973[0:0] == 1'b1) ? sum_x_11_loc_fu_256 : empty_52_fu_2189_p3);
assign empty_54_fu_2203_p3 = ((empty_39_fu_2084_p2[0:0] == 1'b1) ? sum_x_9_loc_fu_244 : empty_53_fu_2196_p3);
assign empty_55_fu_2211_p3 = ((empty_41_fu_2097_p2[0:0] == 1'b1) ? sum_x_7_loc_fu_232 : empty_54_fu_2203_p3);
assign empty_fu_1088_p2 = (($signed(indvars_iv90_fu_192) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign force_0_0_0_0_address0 = force_0_0_0_0_address0_local;
assign force_0_0_0_0_ce0 = force_0_0_0_0_ce0_local;
assign force_0_0_0_0_d0 = or_ln_fu_2239_p4;
assign force_0_0_0_0_we0 = force_0_0_0_0_we0_local;
assign force_0_0_0_1_address0 = force_0_0_0_1_address0_local;
assign force_0_0_0_1_ce0 = force_0_0_0_1_ce0_local;
assign force_0_0_0_1_d0 = or_ln_fu_2239_p4;
assign force_0_0_0_1_we0 = force_0_0_0_1_we0_local;
assign force_0_0_1_0_address0 = force_0_0_1_0_address0_local;
assign force_0_0_1_0_ce0 = force_0_0_1_0_ce0_local;
assign force_0_0_1_0_d0 = or_ln_fu_2239_p4;
assign force_0_0_1_0_we0 = force_0_0_1_0_we0_local;
assign force_0_0_1_1_address0 = force_0_0_1_1_address0_local;
assign force_0_0_1_1_ce0 = force_0_0_1_1_ce0_local;
assign force_0_0_1_1_d0 = or_ln_fu_2239_p4;
assign force_0_0_1_1_we0 = force_0_0_1_1_we0_local;
assign force_0_1_0_0_address0 = force_0_1_0_0_address0_local;
assign force_0_1_0_0_ce0 = force_0_1_0_0_ce0_local;
assign force_0_1_0_0_d0 = or_ln_fu_2239_p4;
assign force_0_1_0_0_we0 = force_0_1_0_0_we0_local;
assign force_0_1_0_1_address0 = force_0_1_0_1_address0_local;
assign force_0_1_0_1_ce0 = force_0_1_0_1_ce0_local;
assign force_0_1_0_1_d0 = or_ln_fu_2239_p4;
assign force_0_1_0_1_we0 = force_0_1_0_1_we0_local;
assign force_0_1_1_0_address0 = force_0_1_1_0_address0_local;
assign force_0_1_1_0_ce0 = force_0_1_1_0_ce0_local;
assign force_0_1_1_0_d0 = or_ln_fu_2239_p4;
assign force_0_1_1_0_we0 = force_0_1_1_0_we0_local;
assign force_0_1_1_1_address0 = force_0_1_1_1_address0_local;
assign force_0_1_1_1_ce0 = force_0_1_1_1_ce0_local;
assign force_0_1_1_1_d0 = or_ln_fu_2239_p4;
assign force_0_1_1_1_we0 = force_0_1_1_1_we0_local;
assign force_1_0_0_0_address0 = force_1_0_0_0_address0_local;
assign force_1_0_0_0_ce0 = force_1_0_0_0_ce0_local;
assign force_1_0_0_0_d0 = or_ln_fu_2239_p4;
assign force_1_0_0_0_we0 = force_1_0_0_0_we0_local;
assign force_1_0_0_1_address0 = force_1_0_0_1_address0_local;
assign force_1_0_0_1_ce0 = force_1_0_0_1_ce0_local;
assign force_1_0_0_1_d0 = or_ln_fu_2239_p4;
assign force_1_0_0_1_we0 = force_1_0_0_1_we0_local;
assign force_1_0_1_0_address0 = force_1_0_1_0_address0_local;
assign force_1_0_1_0_ce0 = force_1_0_1_0_ce0_local;
assign force_1_0_1_0_d0 = or_ln_fu_2239_p4;
assign force_1_0_1_0_we0 = force_1_0_1_0_we0_local;
assign force_1_0_1_1_address0 = force_1_0_1_1_address0_local;
assign force_1_0_1_1_ce0 = force_1_0_1_1_ce0_local;
assign force_1_0_1_1_d0 = or_ln_fu_2239_p4;
assign force_1_0_1_1_we0 = force_1_0_1_1_we0_local;
assign force_1_1_0_0_address0 = force_1_1_0_0_address0_local;
assign force_1_1_0_0_ce0 = force_1_1_0_0_ce0_local;
assign force_1_1_0_0_d0 = or_ln_fu_2239_p4;
assign force_1_1_0_0_we0 = force_1_1_0_0_we0_local;
assign force_1_1_0_1_address0 = force_1_1_0_1_address0_local;
assign force_1_1_0_1_ce0 = force_1_1_0_1_ce0_local;
assign force_1_1_0_1_d0 = or_ln_fu_2239_p4;
assign force_1_1_0_1_we0 = force_1_1_0_1_we0_local;
assign force_1_1_1_0_address0 = force_1_1_1_0_address0_local;
assign force_1_1_1_0_ce0 = force_1_1_1_0_ce0_local;
assign force_1_1_1_0_d0 = or_ln_fu_2239_p4;
assign force_1_1_1_0_we0 = force_1_1_1_0_we0_local;
assign force_1_1_1_1_address0 = force_1_1_1_1_address0_local;
assign force_1_1_1_1_ce0 = force_1_1_1_1_ce0_local;
assign force_1_1_1_1_d0 = or_ln_fu_2239_p4;
assign force_1_1_1_1_we0 = force_1_1_1_1_we0_local;
assign grp_md_Pipeline_loop_q_fu_968_ap_start = grp_md_Pipeline_loop_q_fu_968_ap_start_reg;
assign icmp_ln14_fu_1060_p2 = ((b0_x_fu_196 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_1126_p2 = ((b0_y_reg_880 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1207_p2 = ((b0_z_reg_903 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_1376_p2 = ((b1_x_reg_927 < cond24_reg_2449) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_1411_p2 = ((b1_y_reg_937 < cond47_reg_2483) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_1453_p2 = ((b1_z_reg_947 < cond70_reg_2563) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_1572_p2 = (($signed(zext_ln24_fu_1568_p1) < $signed(tmp_11_reg_2568)) ? 1'b1 : 1'b0);
assign lshr_ln8_4_fu_1420_p4 = {{b1_y_reg_937[2:1]}};
assign lshr_ln8_5_fu_1458_p4 = {{b1_z_reg_947[2:1]}};
assign lshr_ln_fu_1587_p4 = {{p_idx_reg_957[6:1]}};
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
assign or_ln_fu_2239_p4 = {{{bitcast_ln51_fu_2235_p1}, {bitcast_ln50_fu_2231_p1}}, {bitcast_ln49_fu_2227_p1}};
assign p_x_fu_1854_p1 = trunc_ln25_3_fu_1850_p1;
assign p_y_fu_1869_p1 = trunc_ln25_1_fu_1859_p4;
assign p_z_fu_1884_p1 = trunc_ln25_2_fu_1874_p4;
assign position_0_0_0_0_address1 = grp_md_Pipeline_loop_q_fu_968_position_0_0_0_0_address1;
assign position_0_0_0_1_address1 = grp_md_Pipeline_loop_q_fu_968_position_0_0_0_1_address1;
assign position_0_0_1_0_address1 = grp_md_Pipeline_loop_q_fu_968_position_0_0_1_0_address1;
assign position_0_0_1_1_address1 = grp_md_Pipeline_loop_q_fu_968_position_0_0_1_1_address1;
assign position_0_1_0_0_address1 = grp_md_Pipeline_loop_q_fu_968_position_0_1_0_0_address1;
assign position_0_1_0_1_address1 = grp_md_Pipeline_loop_q_fu_968_position_0_1_0_1_address1;
assign position_0_1_1_0_address1 = grp_md_Pipeline_loop_q_fu_968_position_0_1_1_0_address1;
assign position_0_1_1_1_address1 = grp_md_Pipeline_loop_q_fu_968_position_0_1_1_1_address1;
assign position_1_0_0_0_address1 = grp_md_Pipeline_loop_q_fu_968_position_1_0_0_0_address1;
assign position_1_0_0_1_address1 = grp_md_Pipeline_loop_q_fu_968_position_1_0_0_1_address1;
assign position_1_0_1_0_address1 = grp_md_Pipeline_loop_q_fu_968_position_1_0_1_0_address1;
assign position_1_0_1_1_address1 = grp_md_Pipeline_loop_q_fu_968_position_1_0_1_1_address1;
assign position_1_1_0_0_address1 = grp_md_Pipeline_loop_q_fu_968_position_1_1_0_0_address1;
assign position_1_1_0_1_address1 = grp_md_Pipeline_loop_q_fu_968_position_1_1_0_1_address1;
assign position_1_1_1_0_address1 = grp_md_Pipeline_loop_q_fu_968_position_1_1_1_0_address1;
assign position_1_1_1_1_address1 = grp_md_Pipeline_loop_q_fu_968_position_1_1_1_1_address1;
assign q_idx_range_fu_1561_p3 = ((trunc_ln8_reg_2576[0:0] == 1'b1) ? select_ln23_5_fu_1554_p3 : select_ln23_2_fu_1531_p3);
assign select_ln23_1_fu_1523_p3 = ((trunc_ln8_2_fu_1495_p1[0:0] == 1'b1) ? n_points_0_1_1_q0 : n_points_0_1_0_q0);
assign select_ln23_2_fu_1531_p3 = ((trunc_ln8_1_reg_2595[0:0] == 1'b1) ? select_ln23_1_fu_1523_p3 : select_ln23_fu_1515_p3);
assign select_ln23_3_fu_1538_p3 = ((trunc_ln8_2_fu_1495_p1[0:0] == 1'b1) ? n_points_1_0_1_q0 : n_points_1_0_0_q0);
assign select_ln23_4_fu_1546_p3 = ((trunc_ln8_2_fu_1495_p1[0:0] == 1'b1) ? n_points_1_1_1_q0 : n_points_1_1_0_q0);
assign select_ln23_5_fu_1554_p3 = ((trunc_ln8_1_reg_2595[0:0] == 1'b1) ? select_ln23_4_fu_1546_p3 : select_ln23_3_fu_1538_p3);
assign select_ln23_fu_1515_p3 = ((trunc_ln8_2_fu_1495_p1[0:0] == 1'b1) ? n_points_0_0_1_q0 : n_points_0_0_0_q0);
assign select_ln25_10_fu_1714_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? position_1_1_0_1_q0 : position_1_1_0_0_q0);
assign select_ln25_11_fu_1721_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? position_1_1_1_1_q0 : position_1_1_1_0_q0);
assign select_ln25_12_fu_1728_p3 = ((trunc_ln16_1_reg_2546[0:0] == 1'b1) ? select_ln25_11_fu_1721_p3 : select_ln25_10_fu_1714_p3);
assign select_ln25_13_fu_1735_p3 = ((trunc_ln15_1_reg_2462[0:0] == 1'b1) ? select_ln25_12_fu_1728_p3 : select_ln25_9_fu_1707_p3);
assign select_ln25_14_fu_1840_p3 = ((trunc_ln14_1_reg_2431[0:0] == 1'b1) ? select_ln25_13_reg_2880 : select_ln25_6_reg_2875);
assign select_ln25_1_fu_1651_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? position_0_0_1_1_q0 : position_0_0_1_0_q0);
assign select_ln25_2_fu_1658_p3 = ((trunc_ln16_1_reg_2546[0:0] == 1'b1) ? select_ln25_1_fu_1651_p3 : select_ln25_fu_1644_p3);
assign select_ln25_3_fu_1665_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? position_0_1_0_1_q0 : position_0_1_0_0_q0);
assign select_ln25_4_fu_1672_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? position_0_1_1_1_q0 : position_0_1_1_0_q0);
assign select_ln25_5_fu_1679_p3 = ((trunc_ln16_1_reg_2546[0:0] == 1'b1) ? select_ln25_4_fu_1672_p3 : select_ln25_3_fu_1665_p3);
assign select_ln25_6_fu_1686_p3 = ((trunc_ln15_1_reg_2462[0:0] == 1'b1) ? select_ln25_5_fu_1679_p3 : select_ln25_2_fu_1658_p3);
assign select_ln25_7_fu_1693_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? position_1_0_0_1_q0 : position_1_0_0_0_q0);
assign select_ln25_8_fu_1700_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? position_1_0_1_1_q0 : position_1_0_1_0_q0);
assign select_ln25_9_fu_1707_p3 = ((trunc_ln16_1_reg_2546[0:0] == 1'b1) ? select_ln25_8_fu_1700_p3 : select_ln25_7_fu_1693_p3);
assign select_ln25_fu_1644_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? position_0_0_0_1_q0 : position_0_0_0_0_q0);
assign select_ln26_10_fu_1812_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? force_1_1_0_1_q0 : force_1_1_0_0_q0);
assign select_ln26_11_fu_1819_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? force_1_1_1_1_q0 : force_1_1_1_0_q0);
assign select_ln26_12_fu_1826_p3 = ((trunc_ln16_1_reg_2546[0:0] == 1'b1) ? select_ln26_11_fu_1819_p3 : select_ln26_10_fu_1812_p3);
assign select_ln26_13_fu_1833_p3 = ((trunc_ln15_1_reg_2462[0:0] == 1'b1) ? select_ln26_12_fu_1826_p3 : select_ln26_9_fu_1805_p3);
assign select_ln26_14_fu_1889_p3 = ((trunc_ln14_1_reg_2431[0:0] == 1'b1) ? select_ln26_13_reg_2890 : select_ln26_6_reg_2885);
assign select_ln26_1_fu_1749_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? force_0_0_1_1_q0 : force_0_0_1_0_q0);
assign select_ln26_2_fu_1756_p3 = ((trunc_ln16_1_reg_2546[0:0] == 1'b1) ? select_ln26_1_fu_1749_p3 : select_ln26_fu_1742_p3);
assign select_ln26_3_fu_1763_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? force_0_1_0_1_q0 : force_0_1_0_0_q0);
assign select_ln26_4_fu_1770_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? force_0_1_1_1_q0 : force_0_1_1_0_q0);
assign select_ln26_5_fu_1777_p3 = ((trunc_ln16_1_reg_2546[0:0] == 1'b1) ? select_ln26_4_fu_1770_p3 : select_ln26_3_fu_1763_p3);
assign select_ln26_6_fu_1784_p3 = ((trunc_ln15_1_reg_2462[0:0] == 1'b1) ? select_ln26_5_fu_1777_p3 : select_ln26_2_fu_1756_p3);
assign select_ln26_7_fu_1791_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? force_1_0_0_1_q0 : force_1_0_0_0_q0);
assign select_ln26_8_fu_1798_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? force_1_0_1_1_q0 : force_1_0_1_0_q0);
assign select_ln26_9_fu_1805_p3 = ((trunc_ln16_1_reg_2546[0:0] == 1'b1) ? select_ln26_8_fu_1798_p3 : select_ln26_7_fu_1791_p3);
assign select_ln26_fu_1742_p3 = ((trunc_ln24_reg_2690[0:0] == 1'b1) ? force_0_0_0_1_q0 : force_0_0_0_0_q0);
assign smax87_cast_fu_1168_p1 = smax87_fu_1160_p3;
assign smax87_fu_1160_p3 = ((empty_27_fu_1154_p2[0:0] == 1'b1) ? trunc_ln15_fu_1138_p1 : 2'd0);
assign smax92_cast_fu_1102_p1 = smax92_fu_1094_p3;
assign smax92_fu_1094_p3 = ((empty_fu_1088_p2[0:0] == 1'b1) ? trunc_ln14_fu_1072_p1 : 2'd0);
assign smax_cast_fu_1299_p1 = smax_fu_1291_p3;
assign smax_fu_1291_p3 = ((empty_29_fu_1285_p2[0:0] == 1'b1) ? trunc_ln16_fu_1277_p1 : 2'd0);
assign sum_x_0_lcssa_ph_fu_2219_p3 = ((empty_43_fu_2110_p2[0:0] == 1'b1) ? sum_x_5_loc_fu_220 : empty_55_fu_2211_p3);
assign sum_x_fu_1898_p1 = trunc_ln26_fu_1894_p1;
assign sum_y_0_lcssa_ph_fu_2167_p3 = ((empty_43_fu_2110_p2[0:0] == 1'b1) ? sum_y_5_loc_fu_216 : empty_49_fu_2159_p3);
assign sum_y_fu_1913_p1 = trunc_ln4_fu_1903_p4;
assign sum_z_0_lcssa_ph_fu_2115_p3 = ((empty_43_fu_2110_p2[0:0] == 1'b1) ? sum_z_5_loc_fu_212 : empty_42_fu_2102_p3);
assign sum_z_fu_1928_p1 = trunc_ln5_fu_1918_p4;
assign tmp_10_fu_1362_p3 = ((trunc_ln15_1_reg_2462[0:0] == 1'b1) ? tmp_6_fu_1354_p3 : tmp_s_fu_1346_p3);
assign tmp_11_fu_1369_p3 = ((trunc_ln14_1_reg_2431[0:0] == 1'b1) ? tmp_10_fu_1362_p3 : tmp_9_fu_1339_p3);
assign tmp_16_cast5_fu_1235_p1 = tmp_16_fu_1227_p4;
assign tmp_16_cast_fu_1247_p1 = tmp_16_fu_1227_p4;
assign tmp_16_fu_1227_p4 = {{{tmp_reg_2438}, {tmp_36_reg_2472}}, {tmp_37_fu_1219_p3}};
assign tmp_19_fu_1393_p3 = {{tmp_39_fu_1385_p3}, {1'd0}};
assign tmp_37_fu_1219_p3 = b0_z_reg_903[32'd1];
assign tmp_38_fu_1251_p5 = {{{{tmp_reg_2438}, {tmp_36_reg_2472}}, {tmp_37_fu_1219_p3}}, {2'd0}};
assign tmp_39_fu_1385_p3 = b1_x_reg_927[32'd1];
assign tmp_40_fu_1439_p3 = {{add_ln23_fu_1434_p2}, {1'd0}};
assign tmp_41_fu_1502_p3 = {{add_ln23_1_reg_2615}, {2'd0}};
assign tmp_6_fu_1354_p3 = ((trunc_ln16_1_fu_1281_p1[0:0] == 1'b1) ? n_points_1_1_1_q0 : n_points_1_1_0_q0);
assign tmp_7_fu_1323_p3 = ((trunc_ln16_1_fu_1281_p1[0:0] == 1'b1) ? n_points_0_0_1_q0 : n_points_0_0_0_q0);
assign tmp_8_fu_1331_p3 = ((trunc_ln16_1_fu_1281_p1[0:0] == 1'b1) ? n_points_0_1_1_q0 : n_points_0_1_0_q0);
assign tmp_9_fu_1339_p3 = ((trunc_ln15_1_reg_2462[0:0] == 1'b1) ? tmp_8_fu_1331_p3 : tmp_7_fu_1323_p3);
assign tmp_s_fu_1346_p3 = ((trunc_ln16_1_fu_1281_p1[0:0] == 1'b1) ? n_points_1_0_1_q0 : n_points_1_0_0_q0);
assign trunc_ln14_1_fu_1076_p1 = b0_x_fu_196[0:0];
assign trunc_ln14_fu_1072_p1 = indvars_iv90_fu_192[1:0];
assign trunc_ln15_1_fu_1142_p1 = b0_y_reg_880[0:0];
assign trunc_ln15_fu_1138_p1 = indvars_iv85_reg_891[1:0];
assign trunc_ln16_1_fu_1281_p1 = b0_z_reg_903[0:0];
assign trunc_ln16_fu_1277_p1 = indvars_iv81_reg_915[1:0];
assign trunc_ln24_fu_1583_p1 = p_idx_reg_957[0:0];
assign trunc_ln25_1_fu_1859_p4 = {{select_ln25_14_fu_1840_p3[127:64]}};
assign trunc_ln25_2_fu_1874_p4 = {{select_ln25_14_fu_1840_p3[191:128]}};
assign trunc_ln25_3_fu_1850_p1 = select_ln25_14_fu_1840_p3[63:0];
assign trunc_ln25_fu_1845_p1 = select_ln25_14_fu_1840_p3[190:0];
assign trunc_ln26_fu_1894_p1 = select_ln26_14_fu_1889_p3[63:0];
assign trunc_ln34_fu_1933_p1 = select_ln25_14_fu_1840_p3[51:0];
assign trunc_ln4_fu_1903_p4 = {{select_ln26_14_fu_1889_p3[127:64]}};
assign trunc_ln5_fu_1918_p4 = {{select_ln26_14_fu_1889_p3[191:128]}};
assign trunc_ln8_1_fu_1416_p1 = b1_y_reg_937[0:0];
assign trunc_ln8_2_fu_1495_p1 = b1_z_reg_947[0:0];
assign trunc_ln8_fu_1381_p1 = b1_x_reg_927[0:0];
assign zext_ln23_1_fu_1468_p1 = lshr_ln8_5_fu_1458_p4;
assign zext_ln23_2_fu_1477_p1 = add_ln23_1_fu_1472_p2;
assign zext_ln23_fu_1430_p1 = lshr_ln8_4_fu_1420_p4;
assign zext_ln24_fu_1568_p1 = p_idx_reg_957;
assign zext_ln26_1_fu_1602_p1 = add_ln26_fu_1597_p2;
assign zext_ln26_fu_1261_p1 = tmp_38_fu_1251_p5;
assign zext_ln8_1_fu_1499_p1 = add_ln23_1_reg_2615;
assign zext_ln8_fu_1401_p1 = tmp_19_fu_1393_p3;
always @ (posedge ap_clk) begin
    smax92_cast_reg_2444[2] <= 1'b0;
    smax87_cast_reg_2478[2] <= 1'b0;
    smax_cast_reg_2558[2] <= 1'b0;
    zext_ln8_reg_2582[0] <= 1'b0;
    zext_ln8_reg_2582[2] <= 1'b0;
    tmp_40_reg_2602[0] <= 1'b0;
end
endmodule 
