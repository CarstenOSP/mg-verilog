module md (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,n_points_0_0_0_address0,n_points_0_0_0_ce0,n_points_0_0_0_q0,n_points_0_0_1_address0,n_points_0_0_1_ce0,n_points_0_0_1_q0,n_points_0_1_0_address0,n_points_0_1_0_ce0,n_points_0_1_0_q0,n_points_0_1_1_address0,n_points_0_1_1_ce0,n_points_0_1_1_q0,n_points_1_0_0_address0,n_points_1_0_0_ce0,n_points_1_0_0_q0,n_points_1_0_1_address0,n_points_1_0_1_ce0,n_points_1_0_1_q0,n_points_1_1_0_address0,n_points_1_1_0_ce0,n_points_1_1_0_q0,n_points_1_1_1_address0,n_points_1_1_1_ce0,n_points_1_1_1_q0,force_0_0_0_0_address0,force_0_0_0_0_ce0,force_0_0_0_0_we0,force_0_0_0_0_d0,force_0_0_0_0_q0,force_0_0_0_1_address0,force_0_0_0_1_ce0,force_0_0_0_1_we0,force_0_0_0_1_d0,force_0_0_0_1_q0,force_0_0_1_0_address0,force_0_0_1_0_ce0,force_0_0_1_0_we0,force_0_0_1_0_d0,force_0_0_1_0_q0,force_0_0_1_1_address0,force_0_0_1_1_ce0,force_0_0_1_1_we0,force_0_0_1_1_d0,force_0_0_1_1_q0,force_0_1_0_0_address0,force_0_1_0_0_ce0,force_0_1_0_0_we0,force_0_1_0_0_d0,force_0_1_0_0_q0,force_0_1_0_1_address0,force_0_1_0_1_ce0,force_0_1_0_1_we0,force_0_1_0_1_d0,force_0_1_0_1_q0,force_0_1_1_0_address0,force_0_1_1_0_ce0,force_0_1_1_0_we0,force_0_1_1_0_d0,force_0_1_1_0_q0,force_0_1_1_1_address0,force_0_1_1_1_ce0,force_0_1_1_1_we0,force_0_1_1_1_d0,force_0_1_1_1_q0,force_1_0_0_0_address0,force_1_0_0_0_ce0,force_1_0_0_0_we0,force_1_0_0_0_d0,force_1_0_0_0_q0,force_1_0_0_1_address0,force_1_0_0_1_ce0,force_1_0_0_1_we0,force_1_0_0_1_d0,force_1_0_0_1_q0,force_1_0_1_0_address0,force_1_0_1_0_ce0,force_1_0_1_0_we0,force_1_0_1_0_d0,force_1_0_1_0_q0,force_1_0_1_1_address0,force_1_0_1_1_ce0,force_1_0_1_1_we0,force_1_0_1_1_d0,force_1_0_1_1_q0,force_1_1_0_0_address0,force_1_1_0_0_ce0,force_1_1_0_0_we0,force_1_1_0_0_d0,force_1_1_0_0_q0,force_1_1_0_1_address0,force_1_1_0_1_ce0,force_1_1_0_1_we0,force_1_1_0_1_d0,force_1_1_0_1_q0,force_1_1_1_0_address0,force_1_1_1_0_ce0,force_1_1_1_0_we0,force_1_1_1_0_d0,force_1_1_1_0_q0,force_1_1_1_1_address0,force_1_1_1_1_ce0,force_1_1_1_1_we0,force_1_1_1_1_d0,force_1_1_1_1_q0,position_0_0_0_0_address0,position_0_0_0_0_ce0,position_0_0_0_0_q0,position_0_0_0_0_address1,position_0_0_0_0_ce1,position_0_0_0_0_q1,position_0_0_0_1_address0,position_0_0_0_1_ce0,position_0_0_0_1_q0,position_0_0_0_1_address1,position_0_0_0_1_ce1,position_0_0_0_1_q1,position_0_0_1_0_address0,position_0_0_1_0_ce0,position_0_0_1_0_q0,position_0_0_1_0_address1,position_0_0_1_0_ce1,position_0_0_1_0_q1,position_0_0_1_1_address0,position_0_0_1_1_ce0,position_0_0_1_1_q0,position_0_0_1_1_address1,position_0_0_1_1_ce1,position_0_0_1_1_q1,position_0_1_0_0_address0,position_0_1_0_0_ce0,position_0_1_0_0_q0,position_0_1_0_0_address1,position_0_1_0_0_ce1,position_0_1_0_0_q1,position_0_1_0_1_address0,position_0_1_0_1_ce0,position_0_1_0_1_q0,position_0_1_0_1_address1,position_0_1_0_1_ce1,position_0_1_0_1_q1,position_0_1_1_0_address0,position_0_1_1_0_ce0,position_0_1_1_0_q0,position_0_1_1_0_address1,position_0_1_1_0_ce1,position_0_1_1_0_q1,position_0_1_1_1_address0,position_0_1_1_1_ce0,position_0_1_1_1_q0,position_0_1_1_1_address1,position_0_1_1_1_ce1,position_0_1_1_1_q1,position_1_0_0_0_address0,position_1_0_0_0_ce0,position_1_0_0_0_q0,position_1_0_0_0_address1,position_1_0_0_0_ce1,position_1_0_0_0_q1,position_1_0_0_1_address0,position_1_0_0_1_ce0,position_1_0_0_1_q0,position_1_0_0_1_address1,position_1_0_0_1_ce1,position_1_0_0_1_q1,position_1_0_1_0_address0,position_1_0_1_0_ce0,position_1_0_1_0_q0,position_1_0_1_0_address1,position_1_0_1_0_ce1,position_1_0_1_0_q1,position_1_0_1_1_address0,position_1_0_1_1_ce0,position_1_0_1_1_q0,position_1_0_1_1_address1,position_1_0_1_1_ce1,position_1_0_1_1_q1,position_1_1_0_0_address0,position_1_1_0_0_ce0,position_1_1_0_0_q0,position_1_1_0_0_address1,position_1_1_0_0_ce1,position_1_1_0_0_q1,position_1_1_0_1_address0,position_1_1_0_1_ce0,position_1_1_0_1_q0,position_1_1_0_1_address1,position_1_1_0_1_ce1,position_1_1_0_1_q1,position_1_1_1_0_address0,position_1_1_1_0_ce0,position_1_1_1_0_q0,position_1_1_1_0_address1,position_1_1_1_0_ce1,position_1_1_1_0_q1,position_1_1_1_1_address0,position_1_1_1_1_ce0,position_1_1_1_1_q0,position_1_1_1_1_address1,position_1_1_1_1_ce1,position_1_1_1_1_q1); 
parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;
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
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] add_ln14_fu_1210_p2;
reg   [2:0] add_ln14_reg_3006;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln14_1_fu_1220_p1;
reg   [0:0] trunc_ln14_1_reg_3011;
reg   [0:0] tmp_reg_3018;
wire   [2:0] smax116_cast_fu_1246_p1;
reg   [2:0] smax116_cast_reg_3024;
wire   [2:0] cond24_fu_1262_p3;
reg   [2:0] cond24_reg_3029;
wire   [2:0] add_ln15_fu_1276_p2;
reg   [2:0] add_ln15_reg_3037;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln15_1_fu_1286_p1;
reg   [0:0] trunc_ln15_1_reg_3042;
reg   [0:0] tmp_76_reg_3052;
wire   [2:0] smax111_cast_fu_1312_p1;
reg   [2:0] smax111_cast_reg_3058;
wire   [2:0] cond47_fu_1328_p3;
reg   [2:0] cond47_reg_3063;
wire   [2:0] add_ln16_fu_1357_p2;
reg   [2:0] add_ln16_reg_3071;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_77_fu_1363_p3;
reg   [0:0] tmp_77_reg_3076;
wire   [2:0] tmp_16_fu_1371_p4;
reg   [2:0] tmp_16_reg_3081;
wire   [2:0] add_ln15_1_fu_1391_p2;
wire   [0:0] trunc_ln16_1_fu_1401_p1;
reg   [0:0] trunc_ln16_1_reg_3131;
wire    ap_CS_fsm_state5;
wire   [5:0] add_ln26_1_fu_1421_p2;
reg   [5:0] add_ln26_1_reg_3143;
wire   [2:0] smax_cast_fu_1441_p1;
reg   [2:0] smax_cast_reg_3148;
wire   [2:0] cond70_fu_1457_p3;
reg   [2:0] cond70_reg_3153;
wire   [31:0] tmp_11_fu_1511_p3;
reg   [31:0] tmp_11_reg_3158;
wire   [0:0] trunc_ln8_fu_1523_p1;
reg   [0:0] trunc_ln8_reg_3166;
wire    ap_CS_fsm_state6;
wire   [2:0] zext_ln8_fu_1543_p1;
reg   [2:0] zext_ln8_reg_3172;
wire   [2:0] add_ln16_1_fu_1547_p2;
wire   [0:0] trunc_ln8_1_fu_1558_p1;
reg   [0:0] trunc_ln8_1_reg_3185;
wire    ap_CS_fsm_state7;
wire   [3:0] tmp_80_fu_1581_p3;
reg   [3:0] tmp_80_reg_3192;
wire   [2:0] add_ln18_fu_1589_p2;
wire   [3:0] add_ln23_1_fu_1614_p2;
reg   [3:0] add_ln23_1_reg_3205;
wire    ap_CS_fsm_state8;
wire   [2:0] add_ln19_fu_1631_p2;
wire   [0:0] trunc_ln8_2_fu_1637_p1;
reg   [0:0] trunc_ln8_2_reg_3256;
wire    ap_CS_fsm_state9;
wire   [5:0] add_ln8_fu_1651_p2;
reg   [5:0] add_ln8_reg_3261;
wire   [31:0] q_idx_range_fu_1703_p3;
reg   [31:0] q_idx_range_reg_3266;
wire   [30:0] add_ln24_fu_1719_p2;
reg   [30:0] add_ln24_reg_3275;
wire    ap_CS_fsm_state10;
wire   [0:0] trunc_ln24_fu_1725_p1;
reg   [0:0] trunc_ln24_reg_3280;
reg   [5:0] force_0_0_0_0_addr_reg_3300;
reg   [5:0] force_0_0_0_1_addr_reg_3305;
reg   [5:0] force_0_0_1_0_addr_reg_3310;
reg   [5:0] force_0_0_1_1_addr_reg_3315;
reg   [5:0] force_0_1_0_0_addr_reg_3320;
reg   [5:0] force_0_1_0_1_addr_reg_3325;
reg   [5:0] force_0_1_1_0_addr_reg_3330;
reg   [5:0] force_0_1_1_1_addr_reg_3335;
reg   [5:0] force_1_0_0_0_addr_reg_3340;
reg   [5:0] force_1_0_0_1_addr_reg_3345;
reg   [5:0] force_1_0_1_0_addr_reg_3350;
reg   [5:0] force_1_0_1_1_addr_reg_3355;
reg   [5:0] force_1_1_0_0_addr_reg_3360;
reg   [5:0] force_1_1_0_1_addr_reg_3365;
reg   [5:0] force_1_1_1_0_addr_reg_3370;
reg   [5:0] force_1_1_1_1_addr_reg_3375;
wire   [2:0] add_ln20_fu_1780_p2;
wire   [191:0] select_ln25_6_fu_1828_p3;
reg   [191:0] select_ln25_6_reg_3465;
wire    ap_CS_fsm_state11;
wire   [191:0] select_ln25_13_fu_1877_p3;
reg   [191:0] select_ln25_13_reg_3470;
wire   [191:0] select_ln26_6_fu_1926_p3;
reg   [191:0] select_ln26_6_reg_3475;
wire   [191:0] select_ln26_13_fu_1975_p3;
reg   [191:0] select_ln26_13_reg_3480;
wire   [190:0] trunc_ln25_fu_1987_p1;
reg   [190:0] trunc_ln25_reg_3485;
wire    ap_CS_fsm_state12;
wire   [63:0] p_x_fu_1996_p1;
reg   [63:0] p_x_reg_3490;
wire   [63:0] p_y_fu_2011_p1;
reg   [63:0] p_y_reg_3495;
wire   [63:0] p_z_fu_2026_p1;
reg   [63:0] p_z_reg_3500;
wire   [63:0] sum_x_fu_2040_p1;
reg   [63:0] sum_x_reg_3505;
wire   [63:0] sum_y_fu_2055_p1;
reg   [63:0] sum_y_reg_3510;
wire   [63:0] sum_z_fu_2070_p1;
reg   [63:0] sum_z_reg_3515;
wire   [51:0] trunc_ln34_fu_2075_p1;
reg   [51:0] trunc_ln34_reg_3520;
reg   [51:0] trunc_ln34_3_reg_3525;
reg   [51:0] trunc_ln34_5_reg_3530;
wire   [3:0] grp_md_Pipeline_loop_q_fu_1088_ap_return;
reg   [3:0] targetBlock_reg_3535;
wire    ap_CS_fsm_state13;
wire   [63:0] empty_50_fu_2323_p3;
reg   [63:0] empty_50_reg_3554;
wire    ap_CS_fsm_state14;
wire   [0:0] empty_51_fu_2331_p2;
reg   [0:0] empty_51_reg_3559;
wire   [0:0] empty_53_fu_2336_p2;
reg   [0:0] empty_53_reg_3566;
wire   [0:0] empty_55_fu_2341_p2;
reg   [0:0] empty_55_reg_3573;
wire   [0:0] empty_57_fu_2346_p2;
reg   [0:0] empty_57_reg_3580;
wire   [0:0] empty_59_fu_2351_p2;
reg   [0:0] empty_59_reg_3587;
wire   [63:0] empty_69_fu_2428_p3;
reg   [63:0] empty_69_reg_3594;
wire   [63:0] empty_83_fu_2508_p3;
reg   [63:0] empty_83_reg_3599;
wire    grp_md_Pipeline_loop_q_fu_1088_ap_start;
wire    grp_md_Pipeline_loop_q_fu_1088_ap_done;
wire    grp_md_Pipeline_loop_q_fu_1088_ap_idle;
wire    grp_md_Pipeline_loop_q_fu_1088_ap_ready;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_ce1;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_address0;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_ce0;
wire   [5:0] grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_address1;
wire    grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_ce1;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_1_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_1_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_1_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_31_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_31_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_31_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_31_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_31_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_31_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_29_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_29_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_29_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_29_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_29_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_29_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_27_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_27_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_27_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_27_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_27_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_27_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_25_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_25_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_25_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_25_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_25_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_25_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_23_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_23_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_23_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_23_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_23_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_23_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_21_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_21_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_21_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_21_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_21_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_21_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_19_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_19_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_19_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_19_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_19_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_19_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_17_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_17_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_17_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_17_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_17_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_17_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_15_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_15_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_15_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_13_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_13_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_13_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_11_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_11_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_11_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_9_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_9_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_9_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_7_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_7_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_7_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_5_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_5_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_5_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_x_3_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_x_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_y_3_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_y_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_1088_sum_z_3_out;
wire    grp_md_Pipeline_loop_q_fu_1088_sum_z_3_out_ap_vld;
reg   [2:0] b0_y_reg_1000;
wire   [0:0] icmp_ln14_fu_1204_p2;
wire   [0:0] icmp_ln16_fu_1351_p2;
reg   [2:0] indvars_iv109_reg_1011;
reg   [2:0] b0_z_reg_1023;
wire   [0:0] icmp_ln15_fu_1270_p2;
wire   [0:0] icmp_ln18_fu_1518_p2;
reg   [2:0] indvars_iv105_reg_1035;
reg   [2:0] b1_x_reg_1047;
wire   [0:0] icmp_ln19_fu_1553_p2;
reg   [2:0] b1_y_reg_1057;
wire   [0:0] icmp_ln20_fu_1595_p2;
reg   [2:0] b1_z_reg_1067;
wire   [0:0] icmp_ln24_fu_1714_p2;
reg   [30:0] p_idx_reg_1077;
wire    ap_CS_fsm_state15;
reg    grp_md_Pipeline_loop_q_fu_1088_ap_start_reg;
reg   [63:0] sum_z_1_loc_fu_412;
reg   [63:0] sum_y_1_loc_fu_408;
reg   [63:0] sum_x_1_loc_fu_404;
reg   [63:0] sum_x_31_loc_fu_400;
reg   [63:0] sum_y_31_loc_fu_396;
reg   [63:0] sum_z_31_loc_fu_392;
reg   [63:0] sum_x_29_loc_fu_388;
reg   [63:0] sum_y_29_loc_fu_384;
reg   [63:0] sum_z_29_loc_fu_380;
reg   [63:0] sum_x_27_loc_fu_376;
reg   [63:0] sum_y_27_loc_fu_372;
reg   [63:0] sum_z_27_loc_fu_368;
reg   [63:0] sum_x_25_loc_fu_364;
reg   [63:0] sum_y_25_loc_fu_360;
reg   [63:0] sum_z_25_loc_fu_356;
reg   [63:0] sum_x_23_loc_fu_352;
reg   [63:0] sum_y_23_loc_fu_348;
reg   [63:0] sum_z_23_loc_fu_344;
reg   [63:0] sum_x_21_loc_fu_340;
reg   [63:0] sum_y_21_loc_fu_336;
reg   [63:0] sum_z_21_loc_fu_332;
reg   [63:0] sum_x_19_loc_fu_328;
reg   [63:0] sum_y_19_loc_fu_324;
reg   [63:0] sum_z_19_loc_fu_320;
reg   [63:0] sum_x_17_loc_fu_316;
reg   [63:0] sum_y_17_loc_fu_312;
reg   [63:0] sum_z_17_loc_fu_308;
reg   [63:0] sum_x_15_loc_fu_304;
reg   [63:0] sum_y_15_loc_fu_300;
reg   [63:0] sum_z_15_loc_fu_296;
reg   [63:0] sum_x_13_loc_fu_292;
reg   [63:0] sum_y_13_loc_fu_288;
reg   [63:0] sum_z_13_loc_fu_284;
reg   [63:0] sum_x_11_loc_fu_280;
reg   [63:0] sum_y_11_loc_fu_276;
reg   [63:0] sum_z_11_loc_fu_272;
reg   [63:0] sum_x_9_loc_fu_268;
reg   [63:0] sum_y_9_loc_fu_264;
reg   [63:0] sum_z_9_loc_fu_260;
reg   [63:0] sum_x_7_loc_fu_256;
reg   [63:0] sum_y_7_loc_fu_252;
reg   [63:0] sum_z_7_loc_fu_248;
reg   [63:0] sum_x_5_loc_fu_244;
reg   [63:0] sum_y_5_loc_fu_240;
reg   [63:0] sum_z_5_loc_fu_236;
reg   [63:0] sum_x_3_loc_fu_232;
reg   [63:0] sum_y_3_loc_fu_228;
reg   [63:0] sum_z_3_loc_fu_224;
wire   [63:0] tmp_16_cast5_fu_1379_p1;
wire   [63:0] zext_ln23_2_fu_1619_p1;
wire   [63:0] zext_ln26_1_fu_1744_p1;
reg   [2:0] indvars_iv114_fu_216;
wire   [2:0] add_ln14_1_fu_1336_p2;
reg   [2:0] b0_x_fu_220;
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
wire   [191:0] or_ln_fu_2675_p4;
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
wire   [0:0] empty_fu_1232_p2;
wire   [1:0] trunc_ln14_fu_1216_p1;
wire   [1:0] smax116_fu_1238_p3;
wire   [2:0] empty_26_fu_1250_p2;
wire   [0:0] cmp18_fu_1256_p2;
wire   [0:0] empty_27_fu_1298_p2;
wire   [1:0] trunc_ln15_fu_1282_p1;
wire   [1:0] smax111_fu_1304_p3;
wire   [2:0] empty_28_fu_1316_p2;
wire   [0:0] cmp41_fu_1322_p2;
wire   [4:0] tmp_78_fu_1408_p5;
wire   [5:0] zext_ln26_fu_1417_p1;
wire   [5:0] tmp_16_cast_fu_1405_p1;
wire   [0:0] empty_29_fu_1427_p2;
wire   [1:0] trunc_ln16_fu_1397_p1;
wire   [1:0] smax_fu_1433_p3;
wire   [2:0] empty_30_fu_1445_p2;
wire   [0:0] cmp64_fu_1451_p2;
wire   [31:0] tmp_8_fu_1473_p3;
wire   [31:0] tmp_7_fu_1465_p3;
wire   [31:0] tmp_6_fu_1496_p3;
wire   [31:0] tmp_s_fu_1488_p3;
wire   [31:0] tmp_10_fu_1504_p3;
wire   [31:0] tmp_9_fu_1481_p3;
wire   [0:0] tmp_79_fu_1527_p3;
wire   [1:0] tmp_19_fu_1535_p3;
wire   [1:0] lshr_ln8_4_fu_1562_p4;
wire   [2:0] zext_ln23_fu_1572_p1;
wire   [2:0] add_ln23_fu_1576_p2;
wire   [1:0] lshr_ln8_5_fu_1600_p4;
wire   [3:0] zext_ln23_1_fu_1610_p1;
wire   [5:0] tmp_81_fu_1644_p3;
wire   [5:0] zext_ln8_1_fu_1641_p1;
wire   [31:0] select_ln23_1_fu_1665_p3;
wire   [31:0] select_ln23_fu_1657_p3;
wire   [31:0] select_ln23_4_fu_1688_p3;
wire   [31:0] select_ln23_3_fu_1680_p3;
wire   [31:0] select_ln23_5_fu_1696_p3;
wire   [31:0] select_ln23_2_fu_1673_p3;
wire   [31:0] zext_ln24_fu_1710_p1;
wire   [5:0] lshr_ln_fu_1729_p4;
wire   [5:0] add_ln26_fu_1739_p2;
wire   [191:0] select_ln25_1_fu_1793_p3;
wire   [191:0] select_ln25_fu_1786_p3;
wire   [191:0] select_ln25_4_fu_1814_p3;
wire   [191:0] select_ln25_3_fu_1807_p3;
wire   [191:0] select_ln25_5_fu_1821_p3;
wire   [191:0] select_ln25_2_fu_1800_p3;
wire   [191:0] select_ln25_8_fu_1842_p3;
wire   [191:0] select_ln25_7_fu_1835_p3;
wire   [191:0] select_ln25_11_fu_1863_p3;
wire   [191:0] select_ln25_10_fu_1856_p3;
wire   [191:0] select_ln25_12_fu_1870_p3;
wire   [191:0] select_ln25_9_fu_1849_p3;
wire   [191:0] select_ln26_1_fu_1891_p3;
wire   [191:0] select_ln26_fu_1884_p3;
wire   [191:0] select_ln26_4_fu_1912_p3;
wire   [191:0] select_ln26_3_fu_1905_p3;
wire   [191:0] select_ln26_5_fu_1919_p3;
wire   [191:0] select_ln26_2_fu_1898_p3;
wire   [191:0] select_ln26_8_fu_1940_p3;
wire   [191:0] select_ln26_7_fu_1933_p3;
wire   [191:0] select_ln26_11_fu_1961_p3;
wire   [191:0] select_ln26_10_fu_1954_p3;
wire   [191:0] select_ln26_12_fu_1968_p3;
wire   [191:0] select_ln26_9_fu_1947_p3;
wire   [191:0] select_ln25_14_fu_1982_p3;
wire   [63:0] trunc_ln25_3_fu_1992_p1;
wire   [63:0] trunc_ln25_1_fu_2001_p4;
wire   [63:0] trunc_ln25_2_fu_2016_p4;
wire   [191:0] select_ln26_14_fu_2031_p3;
wire   [63:0] trunc_ln26_fu_2036_p1;
wire   [63:0] trunc_ln4_fu_2045_p4;
wire   [63:0] trunc_ln5_fu_2060_p4;
wire   [0:0] empty_31_fu_2201_p2;
wire   [0:0] empty_33_fu_2214_p2;
wire   [63:0] empty_32_fu_2206_p3;
wire   [0:0] empty_35_fu_2227_p2;
wire   [63:0] empty_34_fu_2219_p3;
wire   [0:0] empty_37_fu_2240_p2;
wire   [63:0] empty_36_fu_2232_p3;
wire   [0:0] empty_39_fu_2253_p2;
wire   [63:0] empty_38_fu_2245_p3;
wire   [0:0] empty_41_fu_2266_p2;
wire   [63:0] empty_40_fu_2258_p3;
wire   [0:0] empty_43_fu_2279_p2;
wire   [63:0] empty_42_fu_2271_p3;
wire   [0:0] empty_45_fu_2292_p2;
wire   [63:0] empty_44_fu_2284_p3;
wire   [0:0] empty_47_fu_2305_p2;
wire   [63:0] empty_46_fu_2297_p3;
wire   [0:0] empty_49_fu_2318_p2;
wire   [63:0] empty_48_fu_2310_p3;
wire   [63:0] empty_60_fu_2356_p3;
wire   [63:0] empty_61_fu_2364_p3;
wire   [63:0] empty_62_fu_2372_p3;
wire   [63:0] empty_63_fu_2380_p3;
wire   [63:0] empty_64_fu_2388_p3;
wire   [63:0] empty_65_fu_2396_p3;
wire   [63:0] empty_66_fu_2404_p3;
wire   [63:0] empty_67_fu_2412_p3;
wire   [63:0] empty_68_fu_2420_p3;
wire   [63:0] empty_74_fu_2436_p3;
wire   [63:0] empty_75_fu_2444_p3;
wire   [63:0] empty_76_fu_2452_p3;
wire   [63:0] empty_77_fu_2460_p3;
wire   [63:0] empty_78_fu_2468_p3;
wire   [63:0] empty_79_fu_2476_p3;
wire   [63:0] empty_80_fu_2484_p3;
wire   [63:0] empty_81_fu_2492_p3;
wire   [63:0] empty_82_fu_2500_p3;
wire   [63:0] empty_52_fu_2561_p3;
wire   [63:0] empty_54_fu_2567_p3;
wire   [63:0] empty_56_fu_2574_p3;
wire   [63:0] empty_58_fu_2581_p3;
wire   [63:0] empty_70_fu_2595_p3;
wire   [63:0] empty_71_fu_2601_p3;
wire   [63:0] empty_72_fu_2608_p3;
wire   [63:0] empty_73_fu_2615_p3;
wire   [63:0] empty_84_fu_2629_p3;
wire   [63:0] empty_85_fu_2635_p3;
wire   [63:0] empty_86_fu_2642_p3;
wire   [63:0] empty_87_fu_2649_p3;
wire   [63:0] sum_x_0_lcssa_ph_fu_2656_p3;
wire   [63:0] sum_y_0_lcssa_ph_fu_2622_p3;
wire   [63:0] sum_z_0_lcssa_ph_fu_2588_p3;
wire   [63:0] bitcast_ln51_fu_2671_p1;
wire   [63:0] bitcast_ln50_fu_2667_p1;
wire   [63:0] bitcast_ln49_fu_2663_p1;
reg   [14:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state15_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 grp_md_Pipeline_loop_q_fu_1088_ap_start_reg = 1'b0;
#0 indvars_iv114_fu_216 = 3'd0;
#0 b0_x_fu_220 = 3'd0;
end
md_md_Pipeline_loop_q grp_md_Pipeline_loop_q_fu_1088(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_md_Pipeline_loop_q_fu_1088_ap_start),.ap_done(grp_md_Pipeline_loop_q_fu_1088_ap_done),.ap_idle(grp_md_Pipeline_loop_q_fu_1088_ap_idle),.ap_ready(grp_md_Pipeline_loop_q_fu_1088_ap_ready),.sum_z(sum_z_reg_3515),.sum_y(sum_y_reg_3510),.sum_x(sum_x_reg_3505),.sext_ln24(q_idx_range_reg_3266),.empty_10(trunc_ln8_2_reg_3256),.empty_11(trunc_ln8_1_reg_3185),.empty_12(trunc_ln8_reg_3166),.p_x(p_x_reg_3490),.p_y(p_y_reg_3495),.p_z(p_z_reg_3500),.q_idx_range(q_idx_range_reg_3266),.mul_ln31(add_ln8_reg_3261),.position_0_0_0_0_address0(grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_address0),.position_0_0_0_0_ce0(grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_ce0),.position_0_0_0_0_q0(position_0_0_0_0_q0),.position_0_0_0_0_address1(grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_address1),.position_0_0_0_0_ce1(grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_ce1),.position_0_0_0_0_q1(position_0_0_0_0_q1),.position_0_0_0_1_address0(grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_address0),.position_0_0_0_1_ce0(grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_ce0),.position_0_0_0_1_q0(position_0_0_0_1_q0),.position_0_0_0_1_address1(grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_address1),.position_0_0_0_1_ce1(grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_ce1),.position_0_0_0_1_q1(position_0_0_0_1_q1),.position_0_0_1_0_address0(grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_address0),.position_0_0_1_0_ce0(grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_ce0),.position_0_0_1_0_q0(position_0_0_1_0_q0),.position_0_0_1_0_address1(grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_address1),.position_0_0_1_0_ce1(grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_ce1),.position_0_0_1_0_q1(position_0_0_1_0_q1),.position_0_0_1_1_address0(grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_address0),.position_0_0_1_1_ce0(grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_ce0),.position_0_0_1_1_q0(position_0_0_1_1_q0),.position_0_0_1_1_address1(grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_address1),.position_0_0_1_1_ce1(grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_ce1),.position_0_0_1_1_q1(position_0_0_1_1_q1),.position_0_1_0_0_address0(grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_address0),.position_0_1_0_0_ce0(grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_ce0),.position_0_1_0_0_q0(position_0_1_0_0_q0),.position_0_1_0_0_address1(grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_address1),.position_0_1_0_0_ce1(grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_ce1),.position_0_1_0_0_q1(position_0_1_0_0_q1),.position_0_1_0_1_address0(grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_address0),.position_0_1_0_1_ce0(grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_ce0),.position_0_1_0_1_q0(position_0_1_0_1_q0),.position_0_1_0_1_address1(grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_address1),.position_0_1_0_1_ce1(grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_ce1),.position_0_1_0_1_q1(position_0_1_0_1_q1),.position_0_1_1_0_address0(grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_address0),.position_0_1_1_0_ce0(grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_ce0),.position_0_1_1_0_q0(position_0_1_1_0_q0),.position_0_1_1_0_address1(grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_address1),.position_0_1_1_0_ce1(grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_ce1),.position_0_1_1_0_q1(position_0_1_1_0_q1),.position_0_1_1_1_address0(grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_address0),.position_0_1_1_1_ce0(grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_ce0),.position_0_1_1_1_q0(position_0_1_1_1_q0),.position_0_1_1_1_address1(grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_address1),.position_0_1_1_1_ce1(grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_ce1),.position_0_1_1_1_q1(position_0_1_1_1_q1),.position_1_0_0_0_address0(grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_address0),.position_1_0_0_0_ce0(grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_ce0),.position_1_0_0_0_q0(position_1_0_0_0_q0),.position_1_0_0_0_address1(grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_address1),.position_1_0_0_0_ce1(grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_ce1),.position_1_0_0_0_q1(position_1_0_0_0_q1),.position_1_0_0_1_address0(grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_address0),.position_1_0_0_1_ce0(grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_ce0),.position_1_0_0_1_q0(position_1_0_0_1_q0),.position_1_0_0_1_address1(grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_address1),.position_1_0_0_1_ce1(grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_ce1),.position_1_0_0_1_q1(position_1_0_0_1_q1),.position_1_0_1_0_address0(grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_address0),.position_1_0_1_0_ce0(grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_ce0),.position_1_0_1_0_q0(position_1_0_1_0_q0),.position_1_0_1_0_address1(grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_address1),.position_1_0_1_0_ce1(grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_ce1),.position_1_0_1_0_q1(position_1_0_1_0_q1),.position_1_0_1_1_address0(grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_address0),.position_1_0_1_1_ce0(grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_ce0),.position_1_0_1_1_q0(position_1_0_1_1_q0),.position_1_0_1_1_address1(grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_address1),.position_1_0_1_1_ce1(grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_ce1),.position_1_0_1_1_q1(position_1_0_1_1_q1),.position_1_1_0_0_address0(grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_address0),.position_1_1_0_0_ce0(grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_ce0),.position_1_1_0_0_q0(position_1_1_0_0_q0),.position_1_1_0_0_address1(grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_address1),.position_1_1_0_0_ce1(grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_ce1),.position_1_1_0_0_q1(position_1_1_0_0_q1),.position_1_1_0_1_address0(grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_address0),.position_1_1_0_1_ce0(grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_ce0),.position_1_1_0_1_q0(position_1_1_0_1_q0),.position_1_1_0_1_address1(grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_address1),.position_1_1_0_1_ce1(grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_ce1),.position_1_1_0_1_q1(position_1_1_0_1_q1),.position_1_1_1_0_address0(grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_address0),.position_1_1_1_0_ce0(grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_ce0),.position_1_1_1_0_q0(position_1_1_1_0_q0),.position_1_1_1_0_address1(grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_address1),.position_1_1_1_0_ce1(grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_ce1),.position_1_1_1_0_q1(position_1_1_1_0_q1),.position_1_1_1_1_address0(grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_address0),.position_1_1_1_1_ce0(grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_ce0),.position_1_1_1_1_q0(position_1_1_1_1_q0),.position_1_1_1_1_address1(grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_address1),.position_1_1_1_1_ce1(grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_ce1),.position_1_1_1_1_q1(position_1_1_1_1_q1),.select_ln25_14(trunc_ln25_reg_3485),.empty(trunc_ln34_reg_3520),.trunc_ln34_3(trunc_ln34_3_reg_3525),.trunc_ln34_5(trunc_ln34_5_reg_3530),.sum_z_1_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_1_out),.sum_z_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_1_out_ap_vld),.sum_y_1_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_1_out),.sum_y_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_1_out_ap_vld),.sum_x_1_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_1_out),.sum_x_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_1_out_ap_vld),.sum_x_31_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_31_out),.sum_x_31_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_31_out_ap_vld),.sum_y_31_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_31_out),.sum_y_31_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_31_out_ap_vld),.sum_z_31_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_31_out),.sum_z_31_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_31_out_ap_vld),.sum_x_29_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_29_out),.sum_x_29_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_29_out_ap_vld),.sum_y_29_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_29_out),.sum_y_29_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_29_out_ap_vld),.sum_z_29_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_29_out),.sum_z_29_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_29_out_ap_vld),.sum_x_27_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_27_out),.sum_x_27_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_27_out_ap_vld),.sum_y_27_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_27_out),.sum_y_27_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_27_out_ap_vld),.sum_z_27_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_27_out),.sum_z_27_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_27_out_ap_vld),.sum_x_25_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_25_out),.sum_x_25_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_25_out_ap_vld),.sum_y_25_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_25_out),.sum_y_25_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_25_out_ap_vld),.sum_z_25_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_25_out),.sum_z_25_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_25_out_ap_vld),.sum_x_23_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_23_out),.sum_x_23_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_23_out_ap_vld),.sum_y_23_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_23_out),.sum_y_23_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_23_out_ap_vld),.sum_z_23_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_23_out),.sum_z_23_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_23_out_ap_vld),.sum_x_21_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_21_out),.sum_x_21_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_21_out_ap_vld),.sum_y_21_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_21_out),.sum_y_21_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_21_out_ap_vld),.sum_z_21_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_21_out),.sum_z_21_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_21_out_ap_vld),.sum_x_19_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_19_out),.sum_x_19_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_19_out_ap_vld),.sum_y_19_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_19_out),.sum_y_19_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_19_out_ap_vld),.sum_z_19_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_19_out),.sum_z_19_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_19_out_ap_vld),.sum_x_17_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_17_out),.sum_x_17_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_17_out_ap_vld),.sum_y_17_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_17_out),.sum_y_17_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_17_out_ap_vld),.sum_z_17_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_17_out),.sum_z_17_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_17_out_ap_vld),.sum_x_15_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_15_out),.sum_x_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_15_out_ap_vld),.sum_y_15_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_15_out),.sum_y_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_15_out_ap_vld),.sum_z_15_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_15_out),.sum_z_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_15_out_ap_vld),.sum_x_13_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_13_out),.sum_x_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_13_out_ap_vld),.sum_y_13_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_13_out),.sum_y_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_13_out_ap_vld),.sum_z_13_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_13_out),.sum_z_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_13_out_ap_vld),.sum_x_11_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_11_out),.sum_x_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_11_out_ap_vld),.sum_y_11_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_11_out),.sum_y_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_11_out_ap_vld),.sum_z_11_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_11_out),.sum_z_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_11_out_ap_vld),.sum_x_9_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_9_out),.sum_x_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_9_out_ap_vld),.sum_y_9_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_9_out),.sum_y_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_9_out_ap_vld),.sum_z_9_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_9_out),.sum_z_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_9_out_ap_vld),.sum_x_7_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_7_out),.sum_x_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_7_out_ap_vld),.sum_y_7_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_7_out),.sum_y_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_7_out_ap_vld),.sum_z_7_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_7_out),.sum_z_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_7_out_ap_vld),.sum_x_5_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_5_out),.sum_x_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_5_out_ap_vld),.sum_y_5_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_5_out),.sum_y_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_5_out_ap_vld),.sum_z_5_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_5_out),.sum_z_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_5_out_ap_vld),.sum_x_3_out(grp_md_Pipeline_loop_q_fu_1088_sum_x_3_out),.sum_x_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_x_3_out_ap_vld),.sum_y_3_out(grp_md_Pipeline_loop_q_fu_1088_sum_y_3_out),.sum_y_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_y_3_out_ap_vld),.sum_z_3_out(grp_md_Pipeline_loop_q_fu_1088_sum_z_3_out),.sum_z_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_1088_sum_z_3_out_ap_vld),.ap_return(grp_md_Pipeline_loop_q_fu_1088_ap_return));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_md_Pipeline_loop_q_fu_1088_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_md_Pipeline_loop_q_fu_1088_ap_start_reg <= 1'b1;
        end else if ((grp_md_Pipeline_loop_q_fu_1088_ap_ready == 1'b1)) begin
            grp_md_Pipeline_loop_q_fu_1088_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b0_x_fu_220 <= 3'd0;
    end else if (((icmp_ln15_fu_1270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_x_fu_220 <= add_ln14_reg_3006;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_1351_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        b0_y_reg_1000 <= add_ln15_reg_3037;
    end else if (((icmp_ln14_fu_1204_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b0_y_reg_1000 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1518_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        b0_z_reg_1023 <= add_ln16_reg_3071;
    end else if (((icmp_ln15_fu_1270_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_z_reg_1023 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b1_x_reg_1047 <= smax116_cast_reg_3024;
    end else if (((icmp_ln19_fu_1553_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_x_reg_1047 <= add_ln18_fu_1589_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1518_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        b1_y_reg_1057 <= smax111_cast_reg_3058;
    end else if (((icmp_ln20_fu_1595_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        b1_y_reg_1057 <= add_ln19_fu_1631_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_1553_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_z_reg_1067 <= smax_cast_reg_3148;
    end else if (((icmp_ln24_fu_1714_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        b1_z_reg_1067 <= add_ln20_fu_1780_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1518_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        indvars_iv105_reg_1035 <= add_ln16_1_fu_1547_p2;
    end else if (((icmp_ln15_fu_1270_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv105_reg_1035 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_1351_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv109_reg_1011 <= add_ln15_1_fu_1391_p2;
    end else if (((icmp_ln14_fu_1204_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv109_reg_1011 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvars_iv114_fu_216 <= 3'd7;
    end else if (((icmp_ln15_fu_1270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv114_fu_216 <= add_ln14_1_fu_1336_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        p_idx_reg_1077 <= add_ln24_reg_3275;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        p_idx_reg_1077 <= 31'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln14_reg_3006 <= add_ln14_fu_1210_p2;
        cond24_reg_3029 <= cond24_fu_1262_p3;
        smax116_cast_reg_3024[1 : 0] <= smax116_cast_fu_1246_p1[1 : 0];
        tmp_reg_3018 <= b0_x_fu_220[32'd1];
        trunc_ln14_1_reg_3011 <= trunc_ln14_1_fu_1220_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln15_reg_3037 <= add_ln15_fu_1276_p2;
        cond47_reg_3063 <= cond47_fu_1328_p3;
        smax111_cast_reg_3058[1 : 0] <= smax111_cast_fu_1312_p1[1 : 0];
        tmp_76_reg_3052 <= b0_y_reg_1000[32'd1];
        trunc_ln15_1_reg_3042 <= trunc_ln15_1_fu_1286_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_reg_3071 <= add_ln16_fu_1357_p2;
        tmp_16_reg_3081 <= tmp_16_fu_1371_p4;
        tmp_77_reg_3076 <= b0_z_reg_1023[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln23_1_reg_3205 <= add_ln23_1_fu_1614_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln24_reg_3275 <= add_ln24_fu_1719_p2;
        force_0_0_0_0_addr_reg_3300 <= zext_ln26_1_fu_1744_p1;
        force_0_0_0_1_addr_reg_3305 <= zext_ln26_1_fu_1744_p1;
        force_0_0_1_0_addr_reg_3310 <= zext_ln26_1_fu_1744_p1;
        force_0_0_1_1_addr_reg_3315 <= zext_ln26_1_fu_1744_p1;
        force_0_1_0_0_addr_reg_3320 <= zext_ln26_1_fu_1744_p1;
        force_0_1_0_1_addr_reg_3325 <= zext_ln26_1_fu_1744_p1;
        force_0_1_1_0_addr_reg_3330 <= zext_ln26_1_fu_1744_p1;
        force_0_1_1_1_addr_reg_3335 <= zext_ln26_1_fu_1744_p1;
        force_1_0_0_0_addr_reg_3340 <= zext_ln26_1_fu_1744_p1;
        force_1_0_0_1_addr_reg_3345 <= zext_ln26_1_fu_1744_p1;
        force_1_0_1_0_addr_reg_3350 <= zext_ln26_1_fu_1744_p1;
        force_1_0_1_1_addr_reg_3355 <= zext_ln26_1_fu_1744_p1;
        force_1_1_0_0_addr_reg_3360 <= zext_ln26_1_fu_1744_p1;
        force_1_1_0_1_addr_reg_3365 <= zext_ln26_1_fu_1744_p1;
        force_1_1_1_0_addr_reg_3370 <= zext_ln26_1_fu_1744_p1;
        force_1_1_1_1_addr_reg_3375 <= zext_ln26_1_fu_1744_p1;
        trunc_ln24_reg_3280 <= trunc_ln24_fu_1725_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln26_1_reg_3143 <= add_ln26_1_fu_1421_p2;
        cond70_reg_3153 <= cond70_fu_1457_p3;
        smax_cast_reg_3148[1 : 0] <= smax_cast_fu_1441_p1[1 : 0];
        tmp_11_reg_3158 <= tmp_11_fu_1511_p3;
        trunc_ln16_1_reg_3131 <= trunc_ln16_1_fu_1401_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln8_reg_3261 <= add_ln8_fu_1651_p2;
        q_idx_range_reg_3266 <= q_idx_range_fu_1703_p3;
        trunc_ln8_2_reg_3256 <= trunc_ln8_2_fu_1637_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        empty_50_reg_3554 <= empty_50_fu_2323_p3;
        empty_51_reg_3559 <= empty_51_fu_2331_p2;
        empty_53_reg_3566 <= empty_53_fu_2336_p2;
        empty_55_reg_3573 <= empty_55_fu_2341_p2;
        empty_57_reg_3580 <= empty_57_fu_2346_p2;
        empty_59_reg_3587 <= empty_59_fu_2351_p2;
        empty_69_reg_3594 <= empty_69_fu_2428_p3;
        empty_83_reg_3599 <= empty_83_fu_2508_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        p_x_reg_3490 <= p_x_fu_1996_p1;
        p_y_reg_3495 <= p_y_fu_2011_p1;
        p_z_reg_3500 <= p_z_fu_2026_p1;
        sum_x_reg_3505 <= sum_x_fu_2040_p1;
        sum_y_reg_3510 <= sum_y_fu_2055_p1;
        sum_z_reg_3515 <= sum_z_fu_2070_p1;
        trunc_ln25_reg_3485 <= trunc_ln25_fu_1987_p1;
        trunc_ln34_3_reg_3525 <= {{select_ln25_14_fu_1982_p3[115:64]}};
        trunc_ln34_5_reg_3530 <= {{select_ln25_14_fu_1982_p3[179:128]}};
        trunc_ln34_reg_3520 <= trunc_ln34_fu_2075_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        select_ln25_13_reg_3470 <= select_ln25_13_fu_1877_p3;
        select_ln25_6_reg_3465 <= select_ln25_6_fu_1828_p3;
        select_ln26_13_reg_3480 <= select_ln26_13_fu_1975_p3;
        select_ln26_6_reg_3475 <= select_ln26_6_fu_1926_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_11_loc_fu_280 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_13_loc_fu_292 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_15_loc_fu_304 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_17_loc_fu_316 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_19_loc_fu_328 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_1_loc_fu_404 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_21_loc_fu_340 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_23_loc_fu_352 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_25_loc_fu_364 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_27_loc_fu_376 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_29_loc_fu_388 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_31_loc_fu_400 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_3_loc_fu_232 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_5_loc_fu_244 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_7_loc_fu_256 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_x_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_9_loc_fu_268 <= grp_md_Pipeline_loop_q_fu_1088_sum_x_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_11_loc_fu_276 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_13_loc_fu_288 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_15_loc_fu_300 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_17_loc_fu_312 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_19_loc_fu_324 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_1_loc_fu_408 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_21_loc_fu_336 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_23_loc_fu_348 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_25_loc_fu_360 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_27_loc_fu_372 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_29_loc_fu_384 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_31_loc_fu_396 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_3_loc_fu_228 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_5_loc_fu_240 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_7_loc_fu_252 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_y_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_9_loc_fu_264 <= grp_md_Pipeline_loop_q_fu_1088_sum_y_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_11_loc_fu_272 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_13_loc_fu_284 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_15_loc_fu_296 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_17_loc_fu_308 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_19_loc_fu_320 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_1_loc_fu_412 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_21_loc_fu_332 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_23_loc_fu_344 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_25_loc_fu_356 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_27_loc_fu_368 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_29_loc_fu_380 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_31_loc_fu_392 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_3_loc_fu_224 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_5_loc_fu_236 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_7_loc_fu_248 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_1088_sum_z_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_9_loc_fu_260 <= grp_md_Pipeline_loop_q_fu_1088_sum_z_9_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        targetBlock_reg_3535 <= grp_md_Pipeline_loop_q_fu_1088_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_80_reg_3192[3 : 1] <= tmp_80_fu_1581_p3[3 : 1];
        trunc_ln8_1_reg_3185 <= trunc_ln8_1_fu_1558_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        trunc_ln8_reg_3166 <= trunc_ln8_fu_1523_p1;
        zext_ln8_reg_3172[1] <= zext_ln8_fu_1543_p1[1];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_md_Pipeline_loop_q_fu_1088_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
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
    if (((icmp_ln14_fu_1204_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln14_fu_1204_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_0_0_0_0_address0_local = force_0_0_0_0_addr_reg_3300;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_0_0_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_0_0_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_0_0_0_ce0_local = 1'b1;
    end else begin
        force_0_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd0) & (trunc_ln16_1_reg_3131 == 1'd0) & (trunc_ln15_1_reg_3042 == 1'd0) & (trunc_ln14_1_reg_3011 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        force_0_0_0_0_we0_local = 1'b1;
    end else begin
        force_0_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_0_0_0_1_address0_local = force_0_0_0_1_addr_reg_3305;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_0_1_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_0_0_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_0_0_1_ce0_local = 1'b1;
    end else begin
        force_0_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd1) & (trunc_ln16_1_reg_3131 == 1'd0) & (trunc_ln15_1_reg_3042 == 1'd0) & (trunc_ln14_1_reg_3011 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        force_0_0_0_1_we0_local = 1'b1;
    end else begin
        force_0_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_0_0_1_0_address0_local = force_0_0_1_0_addr_reg_3310;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_1_0_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_0_0_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_0_1_0_ce0_local = 1'b1;
    end else begin
        force_0_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd0) & (trunc_ln16_1_reg_3131 == 1'd1) & (trunc_ln15_1_reg_3042 == 1'd0) & (trunc_ln14_1_reg_3011 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        force_0_0_1_0_we0_local = 1'b1;
    end else begin
        force_0_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_0_0_1_1_address0_local = force_0_0_1_1_addr_reg_3315;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_0_1_1_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_0_0_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_0_1_1_ce0_local = 1'b1;
    end else begin
        force_0_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd1) & (trunc_ln16_1_reg_3131 == 1'd1) & (trunc_ln15_1_reg_3042 == 1'd0) & (trunc_ln14_1_reg_3011 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        force_0_0_1_1_we0_local = 1'b1;
    end else begin
        force_0_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_0_1_0_0_address0_local = force_0_1_0_0_addr_reg_3320;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_0_0_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_0_1_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_1_0_0_ce0_local = 1'b1;
    end else begin
        force_0_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd0) & (trunc_ln16_1_reg_3131 == 1'd0) & (trunc_ln15_1_reg_3042 == 1'd1) & (trunc_ln14_1_reg_3011 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        force_0_1_0_0_we0_local = 1'b1;
    end else begin
        force_0_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_0_1_0_1_address0_local = force_0_1_0_1_addr_reg_3325;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_0_1_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_0_1_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_1_0_1_ce0_local = 1'b1;
    end else begin
        force_0_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd1) & (trunc_ln16_1_reg_3131 == 1'd0) & (trunc_ln15_1_reg_3042 == 1'd1) & (trunc_ln14_1_reg_3011 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        force_0_1_0_1_we0_local = 1'b1;
    end else begin
        force_0_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_0_1_1_0_address0_local = force_0_1_1_0_addr_reg_3330;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_1_0_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_0_1_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_1_1_0_ce0_local = 1'b1;
    end else begin
        force_0_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd0) & (trunc_ln16_1_reg_3131 == 1'd1) & (trunc_ln15_1_reg_3042 == 1'd1) & (trunc_ln14_1_reg_3011 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        force_0_1_1_0_we0_local = 1'b1;
    end else begin
        force_0_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_0_1_1_1_address0_local = force_0_1_1_1_addr_reg_3335;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_0_1_1_1_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_0_1_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_0_1_1_1_ce0_local = 1'b1;
    end else begin
        force_0_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd1) & (trunc_ln16_1_reg_3131 == 1'd1) & (trunc_ln15_1_reg_3042 == 1'd1) & (trunc_ln14_1_reg_3011 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        force_0_1_1_1_we0_local = 1'b1;
    end else begin
        force_0_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_1_0_0_0_address0_local = force_1_0_0_0_addr_reg_3340;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_0_0_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_1_0_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_0_0_0_ce0_local = 1'b1;
    end else begin
        force_1_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd0) & (trunc_ln16_1_reg_3131 == 1'd0) & (trunc_ln15_1_reg_3042 == 1'd0) & (trunc_ln14_1_reg_3011 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        force_1_0_0_0_we0_local = 1'b1;
    end else begin
        force_1_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_1_0_0_1_address0_local = force_1_0_0_1_addr_reg_3345;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_0_1_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_1_0_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_0_0_1_ce0_local = 1'b1;
    end else begin
        force_1_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd1) & (trunc_ln16_1_reg_3131 == 1'd0) & (trunc_ln15_1_reg_3042 == 1'd0) & (trunc_ln14_1_reg_3011 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        force_1_0_0_1_we0_local = 1'b1;
    end else begin
        force_1_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_1_0_1_0_address0_local = force_1_0_1_0_addr_reg_3350;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_1_0_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_1_0_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_0_1_0_ce0_local = 1'b1;
    end else begin
        force_1_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd0) & (trunc_ln16_1_reg_3131 == 1'd1) & (trunc_ln15_1_reg_3042 == 1'd0) & (trunc_ln14_1_reg_3011 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        force_1_0_1_0_we0_local = 1'b1;
    end else begin
        force_1_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_1_0_1_1_address0_local = force_1_0_1_1_addr_reg_3355;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_0_1_1_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_1_0_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_0_1_1_ce0_local = 1'b1;
    end else begin
        force_1_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd1) & (trunc_ln16_1_reg_3131 == 1'd1) & (trunc_ln15_1_reg_3042 == 1'd0) & (trunc_ln14_1_reg_3011 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        force_1_0_1_1_we0_local = 1'b1;
    end else begin
        force_1_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_1_1_0_0_address0_local = force_1_1_0_0_addr_reg_3360;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_0_0_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_1_1_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_1_0_0_ce0_local = 1'b1;
    end else begin
        force_1_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd0) & (trunc_ln16_1_reg_3131 == 1'd0) & (trunc_ln15_1_reg_3042 == 1'd1) & (trunc_ln14_1_reg_3011 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        force_1_1_0_0_we0_local = 1'b1;
    end else begin
        force_1_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_1_1_0_1_address0_local = force_1_1_0_1_addr_reg_3365;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_0_1_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_1_1_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_1_0_1_ce0_local = 1'b1;
    end else begin
        force_1_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd1) & (trunc_ln16_1_reg_3131 == 1'd0) & (trunc_ln15_1_reg_3042 == 1'd1) & (trunc_ln14_1_reg_3011 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        force_1_1_0_1_we0_local = 1'b1;
    end else begin
        force_1_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_1_1_1_0_address0_local = force_1_1_1_0_addr_reg_3370;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_1_0_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_1_1_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_1_1_0_ce0_local = 1'b1;
    end else begin
        force_1_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd0) & (trunc_ln16_1_reg_3131 == 1'd1) & (trunc_ln15_1_reg_3042 == 1'd1) & (trunc_ln14_1_reg_3011 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        force_1_1_1_0_we0_local = 1'b1;
    end else begin
        force_1_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_1_1_1_1_address0_local = force_1_1_1_1_addr_reg_3375;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_1_1_1_1_address0_local = zext_ln26_1_fu_1744_p1;
    end else begin
        force_1_1_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        force_1_1_1_1_ce0_local = 1'b1;
    end else begin
        force_1_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln24_reg_3280 == 1'd1) & (trunc_ln16_1_reg_3131 == 1'd1) & (trunc_ln15_1_reg_3042 == 1'd1) & (trunc_ln14_1_reg_3011 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        force_1_1_1_1_we0_local = 1'b1;
    end else begin
        force_1_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_0_0_0_address0_local = zext_ln23_2_fu_1619_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_0_0_address0_local = tmp_16_cast5_fu_1379_p1;
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
        n_points_0_0_1_address0_local = zext_ln23_2_fu_1619_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_0_1_address0_local = tmp_16_cast5_fu_1379_p1;
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
        n_points_0_1_0_address0_local = zext_ln23_2_fu_1619_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_1_0_address0_local = tmp_16_cast5_fu_1379_p1;
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
        n_points_0_1_1_address0_local = zext_ln23_2_fu_1619_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_0_1_1_address0_local = tmp_16_cast5_fu_1379_p1;
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
        n_points_1_0_0_address0_local = zext_ln23_2_fu_1619_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_0_0_address0_local = tmp_16_cast5_fu_1379_p1;
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
        n_points_1_0_1_address0_local = zext_ln23_2_fu_1619_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_0_1_address0_local = tmp_16_cast5_fu_1379_p1;
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
        n_points_1_1_0_address0_local = zext_ln23_2_fu_1619_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_1_0_address0_local = tmp_16_cast5_fu_1379_p1;
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
        n_points_1_1_1_address0_local = zext_ln23_2_fu_1619_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_1_1_1_address0_local = tmp_16_cast5_fu_1379_p1;
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
        position_0_0_0_0_address0 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_address0;
    end else begin
        position_0_0_0_0_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_0_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_ce0;
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
        position_0_0_0_0_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_ce1;
    end else begin
        position_0_0_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_1_address0 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_address0;
    end else begin
        position_0_0_0_1_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_0_1_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_ce0;
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
        position_0_0_0_1_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_ce1;
    end else begin
        position_0_0_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_0_address0 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_address0;
    end else begin
        position_0_0_1_0_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_0_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_ce0;
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
        position_0_0_1_0_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_ce1;
    end else begin
        position_0_0_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_1_address0 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_address0;
    end else begin
        position_0_0_1_1_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_0_1_1_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_ce0;
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
        position_0_0_1_1_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_ce1;
    end else begin
        position_0_0_1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_0_address0 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_address0;
    end else begin
        position_0_1_0_0_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_0_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_ce0;
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
        position_0_1_0_0_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_ce1;
    end else begin
        position_0_1_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_1_address0 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_address0;
    end else begin
        position_0_1_0_1_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_0_1_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_ce0;
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
        position_0_1_0_1_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_ce1;
    end else begin
        position_0_1_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_0_address0 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_address0;
    end else begin
        position_0_1_1_0_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_0_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_ce0;
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
        position_0_1_1_0_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_ce1;
    end else begin
        position_0_1_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_1_address0 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_address0;
    end else begin
        position_0_1_1_1_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_0_1_1_1_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_ce0;
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
        position_0_1_1_1_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_ce1;
    end else begin
        position_0_1_1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_0_address0 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_address0;
    end else begin
        position_1_0_0_0_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_0_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_ce0;
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
        position_1_0_0_0_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_ce1;
    end else begin
        position_1_0_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_1_address0 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_address0;
    end else begin
        position_1_0_0_1_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_0_1_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_ce0;
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
        position_1_0_0_1_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_ce1;
    end else begin
        position_1_0_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_0_address0 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_address0;
    end else begin
        position_1_0_1_0_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_0_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_ce0;
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
        position_1_0_1_0_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_ce1;
    end else begin
        position_1_0_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_1_address0 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_address0;
    end else begin
        position_1_0_1_1_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_0_1_1_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_ce0;
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
        position_1_0_1_1_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_ce1;
    end else begin
        position_1_0_1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_0_address0 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_address0;
    end else begin
        position_1_1_0_0_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_0_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_ce0;
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
        position_1_1_0_0_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_ce1;
    end else begin
        position_1_1_0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_1_address0 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_address0;
    end else begin
        position_1_1_0_1_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_0_1_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_ce0;
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
        position_1_1_0_1_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_ce1;
    end else begin
        position_1_1_0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_0_address0 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_address0;
    end else begin
        position_1_1_1_0_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_0_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_ce0;
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
        position_1_1_1_0_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_ce1;
    end else begin
        position_1_1_1_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_1_address0 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_address0;
    end else begin
        position_1_1_1_1_address0 = zext_ln26_1_fu_1744_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_1_1_1_1_ce0 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_ce0;
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
        position_1_1_1_1_ce1 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_ce1;
    end else begin
        position_1_1_1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln14_fu_1204_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln15_fu_1270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_1351_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln18_fu_1518_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_1553_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln20_fu_1595_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln24_fu_1714_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((grp_md_Pipeline_loop_q_fu_1088_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln14_1_fu_1336_p2 = (indvars_iv114_fu_216 + 3'd1);
assign add_ln14_fu_1210_p2 = (b0_x_fu_220 + 3'd1);
assign add_ln15_1_fu_1391_p2 = (indvars_iv109_reg_1011 + 3'd1);
assign add_ln15_fu_1276_p2 = (b0_y_reg_1000 + 3'd1);
assign add_ln16_1_fu_1547_p2 = (indvars_iv105_reg_1035 + 3'd1);
assign add_ln16_fu_1357_p2 = (b0_z_reg_1023 + 3'd1);
assign add_ln18_fu_1589_p2 = (b1_x_reg_1047 + 3'd1);
assign add_ln19_fu_1631_p2 = (b1_y_reg_1057 + 3'd1);
assign add_ln20_fu_1780_p2 = (b1_z_reg_1067 + 3'd1);
assign add_ln23_1_fu_1614_p2 = (tmp_80_reg_3192 + zext_ln23_1_fu_1610_p1);
assign add_ln23_fu_1576_p2 = (zext_ln8_reg_3172 + zext_ln23_fu_1572_p1);
assign add_ln24_fu_1719_p2 = (p_idx_reg_1077 + 31'd1);
assign add_ln26_1_fu_1421_p2 = (zext_ln26_fu_1417_p1 + tmp_16_cast_fu_1405_p1);
assign add_ln26_fu_1739_p2 = (add_ln26_1_reg_3143 + lshr_ln_fu_1729_p4);
assign add_ln8_fu_1651_p2 = (tmp_81_fu_1644_p3 + zext_ln8_1_fu_1641_p1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln49_fu_2663_p1 = sum_x_0_lcssa_ph_fu_2656_p3;
assign bitcast_ln50_fu_2667_p1 = sum_y_0_lcssa_ph_fu_2622_p3;
assign bitcast_ln51_fu_2671_p1 = sum_z_0_lcssa_ph_fu_2588_p3;
assign cmp18_fu_1256_p2 = ((empty_26_fu_1250_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp41_fu_1322_p2 = ((empty_28_fu_1316_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp64_fu_1451_p2 = ((empty_30_fu_1445_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cond24_fu_1262_p3 = ((cmp18_fu_1256_p2[0:0] == 1'b1) ? 3'd4 : empty_26_fu_1250_p2);
assign cond47_fu_1328_p3 = ((cmp41_fu_1322_p2[0:0] == 1'b1) ? 3'd4 : empty_28_fu_1316_p2);
assign cond70_fu_1457_p3 = ((cmp64_fu_1451_p2[0:0] == 1'b1) ? 3'd4 : empty_30_fu_1445_p2);
assign empty_26_fu_1250_p2 = (b0_x_fu_220 + 3'd2);
assign empty_27_fu_1298_p2 = (($signed(indvars_iv109_reg_1011) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_28_fu_1316_p2 = (b0_y_reg_1000 + 3'd2);
assign empty_29_fu_1427_p2 = (($signed(indvars_iv105_reg_1035) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_30_fu_1445_p2 = (b0_z_reg_1023 + 3'd2);
assign empty_31_fu_2201_p2 = ((targetBlock_reg_3535 == 4'd0) ? 1'b1 : 1'b0);
assign empty_32_fu_2206_p3 = ((empty_31_fu_2201_p2[0:0] == 1'b1) ? sum_z_1_loc_fu_412 : sum_z_3_loc_fu_224);
assign empty_33_fu_2214_p2 = ((targetBlock_reg_3535 == 4'd1) ? 1'b1 : 1'b0);
assign empty_34_fu_2219_p3 = ((empty_33_fu_2214_p2[0:0] == 1'b1) ? sum_z_31_loc_fu_392 : empty_32_fu_2206_p3);
assign empty_35_fu_2227_p2 = ((targetBlock_reg_3535 == 4'd2) ? 1'b1 : 1'b0);
assign empty_36_fu_2232_p3 = ((empty_35_fu_2227_p2[0:0] == 1'b1) ? sum_z_29_loc_fu_380 : empty_34_fu_2219_p3);
assign empty_37_fu_2240_p2 = ((targetBlock_reg_3535 == 4'd3) ? 1'b1 : 1'b0);
assign empty_38_fu_2245_p3 = ((empty_37_fu_2240_p2[0:0] == 1'b1) ? sum_z_27_loc_fu_368 : empty_36_fu_2232_p3);
assign empty_39_fu_2253_p2 = ((targetBlock_reg_3535 == 4'd4) ? 1'b1 : 1'b0);
assign empty_40_fu_2258_p3 = ((empty_39_fu_2253_p2[0:0] == 1'b1) ? sum_z_25_loc_fu_356 : empty_38_fu_2245_p3);
assign empty_41_fu_2266_p2 = ((targetBlock_reg_3535 == 4'd5) ? 1'b1 : 1'b0);
assign empty_42_fu_2271_p3 = ((empty_41_fu_2266_p2[0:0] == 1'b1) ? sum_z_23_loc_fu_344 : empty_40_fu_2258_p3);
assign empty_43_fu_2279_p2 = ((targetBlock_reg_3535 == 4'd6) ? 1'b1 : 1'b0);
assign empty_44_fu_2284_p3 = ((empty_43_fu_2279_p2[0:0] == 1'b1) ? sum_z_21_loc_fu_332 : empty_42_fu_2271_p3);
assign empty_45_fu_2292_p2 = ((targetBlock_reg_3535 == 4'd7) ? 1'b1 : 1'b0);
assign empty_46_fu_2297_p3 = ((empty_45_fu_2292_p2[0:0] == 1'b1) ? sum_z_19_loc_fu_320 : empty_44_fu_2284_p3);
assign empty_47_fu_2305_p2 = ((targetBlock_reg_3535 == 4'd8) ? 1'b1 : 1'b0);
assign empty_48_fu_2310_p3 = ((empty_47_fu_2305_p2[0:0] == 1'b1) ? sum_z_17_loc_fu_308 : empty_46_fu_2297_p3);
assign empty_49_fu_2318_p2 = ((targetBlock_reg_3535 == 4'd9) ? 1'b1 : 1'b0);
assign empty_50_fu_2323_p3 = ((empty_49_fu_2318_p2[0:0] == 1'b1) ? sum_z_15_loc_fu_296 : empty_48_fu_2310_p3);
assign empty_51_fu_2331_p2 = ((targetBlock_reg_3535 == 4'd10) ? 1'b1 : 1'b0);
assign empty_52_fu_2561_p3 = ((empty_51_reg_3559[0:0] == 1'b1) ? sum_z_13_loc_fu_284 : empty_50_reg_3554);
assign empty_53_fu_2336_p2 = ((targetBlock_reg_3535 == 4'd11) ? 1'b1 : 1'b0);
assign empty_54_fu_2567_p3 = ((empty_53_reg_3566[0:0] == 1'b1) ? sum_z_11_loc_fu_272 : empty_52_fu_2561_p3);
assign empty_55_fu_2341_p2 = ((targetBlock_reg_3535 == 4'd12) ? 1'b1 : 1'b0);
assign empty_56_fu_2574_p3 = ((empty_55_reg_3573[0:0] == 1'b1) ? sum_z_9_loc_fu_260 : empty_54_fu_2567_p3);
assign empty_57_fu_2346_p2 = ((targetBlock_reg_3535 == 4'd13) ? 1'b1 : 1'b0);
assign empty_58_fu_2581_p3 = ((empty_57_reg_3580[0:0] == 1'b1) ? sum_z_7_loc_fu_248 : empty_56_fu_2574_p3);
assign empty_59_fu_2351_p2 = ((targetBlock_reg_3535 == 4'd14) ? 1'b1 : 1'b0);
assign empty_60_fu_2356_p3 = ((empty_31_fu_2201_p2[0:0] == 1'b1) ? sum_y_1_loc_fu_408 : sum_y_3_loc_fu_228);
assign empty_61_fu_2364_p3 = ((empty_33_fu_2214_p2[0:0] == 1'b1) ? sum_y_31_loc_fu_396 : empty_60_fu_2356_p3);
assign empty_62_fu_2372_p3 = ((empty_35_fu_2227_p2[0:0] == 1'b1) ? sum_y_29_loc_fu_384 : empty_61_fu_2364_p3);
assign empty_63_fu_2380_p3 = ((empty_37_fu_2240_p2[0:0] == 1'b1) ? sum_y_27_loc_fu_372 : empty_62_fu_2372_p3);
assign empty_64_fu_2388_p3 = ((empty_39_fu_2253_p2[0:0] == 1'b1) ? sum_y_25_loc_fu_360 : empty_63_fu_2380_p3);
assign empty_65_fu_2396_p3 = ((empty_41_fu_2266_p2[0:0] == 1'b1) ? sum_y_23_loc_fu_348 : empty_64_fu_2388_p3);
assign empty_66_fu_2404_p3 = ((empty_43_fu_2279_p2[0:0] == 1'b1) ? sum_y_21_loc_fu_336 : empty_65_fu_2396_p3);
assign empty_67_fu_2412_p3 = ((empty_45_fu_2292_p2[0:0] == 1'b1) ? sum_y_19_loc_fu_324 : empty_66_fu_2404_p3);
assign empty_68_fu_2420_p3 = ((empty_47_fu_2305_p2[0:0] == 1'b1) ? sum_y_17_loc_fu_312 : empty_67_fu_2412_p3);
assign empty_69_fu_2428_p3 = ((empty_49_fu_2318_p2[0:0] == 1'b1) ? sum_y_15_loc_fu_300 : empty_68_fu_2420_p3);
assign empty_70_fu_2595_p3 = ((empty_51_reg_3559[0:0] == 1'b1) ? sum_y_13_loc_fu_288 : empty_69_reg_3594);
assign empty_71_fu_2601_p3 = ((empty_53_reg_3566[0:0] == 1'b1) ? sum_y_11_loc_fu_276 : empty_70_fu_2595_p3);
assign empty_72_fu_2608_p3 = ((empty_55_reg_3573[0:0] == 1'b1) ? sum_y_9_loc_fu_264 : empty_71_fu_2601_p3);
assign empty_73_fu_2615_p3 = ((empty_57_reg_3580[0:0] == 1'b1) ? sum_y_7_loc_fu_252 : empty_72_fu_2608_p3);
assign empty_74_fu_2436_p3 = ((empty_31_fu_2201_p2[0:0] == 1'b1) ? sum_x_1_loc_fu_404 : sum_x_3_loc_fu_232);
assign empty_75_fu_2444_p3 = ((empty_33_fu_2214_p2[0:0] == 1'b1) ? sum_x_31_loc_fu_400 : empty_74_fu_2436_p3);
assign empty_76_fu_2452_p3 = ((empty_35_fu_2227_p2[0:0] == 1'b1) ? sum_x_29_loc_fu_388 : empty_75_fu_2444_p3);
assign empty_77_fu_2460_p3 = ((empty_37_fu_2240_p2[0:0] == 1'b1) ? sum_x_27_loc_fu_376 : empty_76_fu_2452_p3);
assign empty_78_fu_2468_p3 = ((empty_39_fu_2253_p2[0:0] == 1'b1) ? sum_x_25_loc_fu_364 : empty_77_fu_2460_p3);
assign empty_79_fu_2476_p3 = ((empty_41_fu_2266_p2[0:0] == 1'b1) ? sum_x_23_loc_fu_352 : empty_78_fu_2468_p3);
assign empty_80_fu_2484_p3 = ((empty_43_fu_2279_p2[0:0] == 1'b1) ? sum_x_21_loc_fu_340 : empty_79_fu_2476_p3);
assign empty_81_fu_2492_p3 = ((empty_45_fu_2292_p2[0:0] == 1'b1) ? sum_x_19_loc_fu_328 : empty_80_fu_2484_p3);
assign empty_82_fu_2500_p3 = ((empty_47_fu_2305_p2[0:0] == 1'b1) ? sum_x_17_loc_fu_316 : empty_81_fu_2492_p3);
assign empty_83_fu_2508_p3 = ((empty_49_fu_2318_p2[0:0] == 1'b1) ? sum_x_15_loc_fu_304 : empty_82_fu_2500_p3);
assign empty_84_fu_2629_p3 = ((empty_51_reg_3559[0:0] == 1'b1) ? sum_x_13_loc_fu_292 : empty_83_reg_3599);
assign empty_85_fu_2635_p3 = ((empty_53_reg_3566[0:0] == 1'b1) ? sum_x_11_loc_fu_280 : empty_84_fu_2629_p3);
assign empty_86_fu_2642_p3 = ((empty_55_reg_3573[0:0] == 1'b1) ? sum_x_9_loc_fu_268 : empty_85_fu_2635_p3);
assign empty_87_fu_2649_p3 = ((empty_57_reg_3580[0:0] == 1'b1) ? sum_x_7_loc_fu_256 : empty_86_fu_2642_p3);
assign empty_fu_1232_p2 = (($signed(indvars_iv114_fu_216) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign force_0_0_0_0_address0 = force_0_0_0_0_address0_local;
assign force_0_0_0_0_ce0 = force_0_0_0_0_ce0_local;
assign force_0_0_0_0_d0 = or_ln_fu_2675_p4;
assign force_0_0_0_0_we0 = force_0_0_0_0_we0_local;
assign force_0_0_0_1_address0 = force_0_0_0_1_address0_local;
assign force_0_0_0_1_ce0 = force_0_0_0_1_ce0_local;
assign force_0_0_0_1_d0 = or_ln_fu_2675_p4;
assign force_0_0_0_1_we0 = force_0_0_0_1_we0_local;
assign force_0_0_1_0_address0 = force_0_0_1_0_address0_local;
assign force_0_0_1_0_ce0 = force_0_0_1_0_ce0_local;
assign force_0_0_1_0_d0 = or_ln_fu_2675_p4;
assign force_0_0_1_0_we0 = force_0_0_1_0_we0_local;
assign force_0_0_1_1_address0 = force_0_0_1_1_address0_local;
assign force_0_0_1_1_ce0 = force_0_0_1_1_ce0_local;
assign force_0_0_1_1_d0 = or_ln_fu_2675_p4;
assign force_0_0_1_1_we0 = force_0_0_1_1_we0_local;
assign force_0_1_0_0_address0 = force_0_1_0_0_address0_local;
assign force_0_1_0_0_ce0 = force_0_1_0_0_ce0_local;
assign force_0_1_0_0_d0 = or_ln_fu_2675_p4;
assign force_0_1_0_0_we0 = force_0_1_0_0_we0_local;
assign force_0_1_0_1_address0 = force_0_1_0_1_address0_local;
assign force_0_1_0_1_ce0 = force_0_1_0_1_ce0_local;
assign force_0_1_0_1_d0 = or_ln_fu_2675_p4;
assign force_0_1_0_1_we0 = force_0_1_0_1_we0_local;
assign force_0_1_1_0_address0 = force_0_1_1_0_address0_local;
assign force_0_1_1_0_ce0 = force_0_1_1_0_ce0_local;
assign force_0_1_1_0_d0 = or_ln_fu_2675_p4;
assign force_0_1_1_0_we0 = force_0_1_1_0_we0_local;
assign force_0_1_1_1_address0 = force_0_1_1_1_address0_local;
assign force_0_1_1_1_ce0 = force_0_1_1_1_ce0_local;
assign force_0_1_1_1_d0 = or_ln_fu_2675_p4;
assign force_0_1_1_1_we0 = force_0_1_1_1_we0_local;
assign force_1_0_0_0_address0 = force_1_0_0_0_address0_local;
assign force_1_0_0_0_ce0 = force_1_0_0_0_ce0_local;
assign force_1_0_0_0_d0 = or_ln_fu_2675_p4;
assign force_1_0_0_0_we0 = force_1_0_0_0_we0_local;
assign force_1_0_0_1_address0 = force_1_0_0_1_address0_local;
assign force_1_0_0_1_ce0 = force_1_0_0_1_ce0_local;
assign force_1_0_0_1_d0 = or_ln_fu_2675_p4;
assign force_1_0_0_1_we0 = force_1_0_0_1_we0_local;
assign force_1_0_1_0_address0 = force_1_0_1_0_address0_local;
assign force_1_0_1_0_ce0 = force_1_0_1_0_ce0_local;
assign force_1_0_1_0_d0 = or_ln_fu_2675_p4;
assign force_1_0_1_0_we0 = force_1_0_1_0_we0_local;
assign force_1_0_1_1_address0 = force_1_0_1_1_address0_local;
assign force_1_0_1_1_ce0 = force_1_0_1_1_ce0_local;
assign force_1_0_1_1_d0 = or_ln_fu_2675_p4;
assign force_1_0_1_1_we0 = force_1_0_1_1_we0_local;
assign force_1_1_0_0_address0 = force_1_1_0_0_address0_local;
assign force_1_1_0_0_ce0 = force_1_1_0_0_ce0_local;
assign force_1_1_0_0_d0 = or_ln_fu_2675_p4;
assign force_1_1_0_0_we0 = force_1_1_0_0_we0_local;
assign force_1_1_0_1_address0 = force_1_1_0_1_address0_local;
assign force_1_1_0_1_ce0 = force_1_1_0_1_ce0_local;
assign force_1_1_0_1_d0 = or_ln_fu_2675_p4;
assign force_1_1_0_1_we0 = force_1_1_0_1_we0_local;
assign force_1_1_1_0_address0 = force_1_1_1_0_address0_local;
assign force_1_1_1_0_ce0 = force_1_1_1_0_ce0_local;
assign force_1_1_1_0_d0 = or_ln_fu_2675_p4;
assign force_1_1_1_0_we0 = force_1_1_1_0_we0_local;
assign force_1_1_1_1_address0 = force_1_1_1_1_address0_local;
assign force_1_1_1_1_ce0 = force_1_1_1_1_ce0_local;
assign force_1_1_1_1_d0 = or_ln_fu_2675_p4;
assign force_1_1_1_1_we0 = force_1_1_1_1_we0_local;
assign grp_md_Pipeline_loop_q_fu_1088_ap_start = grp_md_Pipeline_loop_q_fu_1088_ap_start_reg;
assign icmp_ln14_fu_1204_p2 = ((b0_x_fu_220 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_1270_p2 = ((b0_y_reg_1000 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1351_p2 = ((b0_z_reg_1023 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_1518_p2 = ((b1_x_reg_1047 < cond24_reg_3029) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_1553_p2 = ((b1_y_reg_1057 < cond47_reg_3063) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_1595_p2 = ((b1_z_reg_1067 < cond70_reg_3153) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_1714_p2 = (($signed(zext_ln24_fu_1710_p1) < $signed(tmp_11_reg_3158)) ? 1'b1 : 1'b0);
assign lshr_ln8_4_fu_1562_p4 = {{b1_y_reg_1057[2:1]}};
assign lshr_ln8_5_fu_1600_p4 = {{b1_z_reg_1067[2:1]}};
assign lshr_ln_fu_1729_p4 = {{p_idx_reg_1077[6:1]}};
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
assign or_ln_fu_2675_p4 = {{{bitcast_ln51_fu_2671_p1}, {bitcast_ln50_fu_2667_p1}}, {bitcast_ln49_fu_2663_p1}};
assign p_x_fu_1996_p1 = trunc_ln25_3_fu_1992_p1;
assign p_y_fu_2011_p1 = trunc_ln25_1_fu_2001_p4;
assign p_z_fu_2026_p1 = trunc_ln25_2_fu_2016_p4;
assign position_0_0_0_0_address1 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_0_address1;
assign position_0_0_0_1_address1 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_0_1_address1;
assign position_0_0_1_0_address1 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_0_address1;
assign position_0_0_1_1_address1 = grp_md_Pipeline_loop_q_fu_1088_position_0_0_1_1_address1;
assign position_0_1_0_0_address1 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_0_address1;
assign position_0_1_0_1_address1 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_0_1_address1;
assign position_0_1_1_0_address1 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_0_address1;
assign position_0_1_1_1_address1 = grp_md_Pipeline_loop_q_fu_1088_position_0_1_1_1_address1;
assign position_1_0_0_0_address1 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_0_address1;
assign position_1_0_0_1_address1 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_0_1_address1;
assign position_1_0_1_0_address1 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_0_address1;
assign position_1_0_1_1_address1 = grp_md_Pipeline_loop_q_fu_1088_position_1_0_1_1_address1;
assign position_1_1_0_0_address1 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_0_address1;
assign position_1_1_0_1_address1 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_0_1_address1;
assign position_1_1_1_0_address1 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_0_address1;
assign position_1_1_1_1_address1 = grp_md_Pipeline_loop_q_fu_1088_position_1_1_1_1_address1;
assign q_idx_range_fu_1703_p3 = ((trunc_ln8_reg_3166[0:0] == 1'b1) ? select_ln23_5_fu_1696_p3 : select_ln23_2_fu_1673_p3);
assign select_ln23_1_fu_1665_p3 = ((trunc_ln8_2_fu_1637_p1[0:0] == 1'b1) ? n_points_0_1_1_q0 : n_points_0_1_0_q0);
assign select_ln23_2_fu_1673_p3 = ((trunc_ln8_1_reg_3185[0:0] == 1'b1) ? select_ln23_1_fu_1665_p3 : select_ln23_fu_1657_p3);
assign select_ln23_3_fu_1680_p3 = ((trunc_ln8_2_fu_1637_p1[0:0] == 1'b1) ? n_points_1_0_1_q0 : n_points_1_0_0_q0);
assign select_ln23_4_fu_1688_p3 = ((trunc_ln8_2_fu_1637_p1[0:0] == 1'b1) ? n_points_1_1_1_q0 : n_points_1_1_0_q0);
assign select_ln23_5_fu_1696_p3 = ((trunc_ln8_1_reg_3185[0:0] == 1'b1) ? select_ln23_4_fu_1688_p3 : select_ln23_3_fu_1680_p3);
assign select_ln23_fu_1657_p3 = ((trunc_ln8_2_fu_1637_p1[0:0] == 1'b1) ? n_points_0_0_1_q0 : n_points_0_0_0_q0);
assign select_ln25_10_fu_1856_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? position_1_1_0_1_q0 : position_1_1_0_0_q0);
assign select_ln25_11_fu_1863_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? position_1_1_1_1_q0 : position_1_1_1_0_q0);
assign select_ln25_12_fu_1870_p3 = ((trunc_ln16_1_reg_3131[0:0] == 1'b1) ? select_ln25_11_fu_1863_p3 : select_ln25_10_fu_1856_p3);
assign select_ln25_13_fu_1877_p3 = ((trunc_ln15_1_reg_3042[0:0] == 1'b1) ? select_ln25_12_fu_1870_p3 : select_ln25_9_fu_1849_p3);
assign select_ln25_14_fu_1982_p3 = ((trunc_ln14_1_reg_3011[0:0] == 1'b1) ? select_ln25_13_reg_3470 : select_ln25_6_reg_3465);
assign select_ln25_1_fu_1793_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? position_0_0_1_1_q0 : position_0_0_1_0_q0);
assign select_ln25_2_fu_1800_p3 = ((trunc_ln16_1_reg_3131[0:0] == 1'b1) ? select_ln25_1_fu_1793_p3 : select_ln25_fu_1786_p3);
assign select_ln25_3_fu_1807_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? position_0_1_0_1_q0 : position_0_1_0_0_q0);
assign select_ln25_4_fu_1814_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? position_0_1_1_1_q0 : position_0_1_1_0_q0);
assign select_ln25_5_fu_1821_p3 = ((trunc_ln16_1_reg_3131[0:0] == 1'b1) ? select_ln25_4_fu_1814_p3 : select_ln25_3_fu_1807_p3);
assign select_ln25_6_fu_1828_p3 = ((trunc_ln15_1_reg_3042[0:0] == 1'b1) ? select_ln25_5_fu_1821_p3 : select_ln25_2_fu_1800_p3);
assign select_ln25_7_fu_1835_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? position_1_0_0_1_q0 : position_1_0_0_0_q0);
assign select_ln25_8_fu_1842_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? position_1_0_1_1_q0 : position_1_0_1_0_q0);
assign select_ln25_9_fu_1849_p3 = ((trunc_ln16_1_reg_3131[0:0] == 1'b1) ? select_ln25_8_fu_1842_p3 : select_ln25_7_fu_1835_p3);
assign select_ln25_fu_1786_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? position_0_0_0_1_q0 : position_0_0_0_0_q0);
assign select_ln26_10_fu_1954_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? force_1_1_0_1_q0 : force_1_1_0_0_q0);
assign select_ln26_11_fu_1961_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? force_1_1_1_1_q0 : force_1_1_1_0_q0);
assign select_ln26_12_fu_1968_p3 = ((trunc_ln16_1_reg_3131[0:0] == 1'b1) ? select_ln26_11_fu_1961_p3 : select_ln26_10_fu_1954_p3);
assign select_ln26_13_fu_1975_p3 = ((trunc_ln15_1_reg_3042[0:0] == 1'b1) ? select_ln26_12_fu_1968_p3 : select_ln26_9_fu_1947_p3);
assign select_ln26_14_fu_2031_p3 = ((trunc_ln14_1_reg_3011[0:0] == 1'b1) ? select_ln26_13_reg_3480 : select_ln26_6_reg_3475);
assign select_ln26_1_fu_1891_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? force_0_0_1_1_q0 : force_0_0_1_0_q0);
assign select_ln26_2_fu_1898_p3 = ((trunc_ln16_1_reg_3131[0:0] == 1'b1) ? select_ln26_1_fu_1891_p3 : select_ln26_fu_1884_p3);
assign select_ln26_3_fu_1905_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? force_0_1_0_1_q0 : force_0_1_0_0_q0);
assign select_ln26_4_fu_1912_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? force_0_1_1_1_q0 : force_0_1_1_0_q0);
assign select_ln26_5_fu_1919_p3 = ((trunc_ln16_1_reg_3131[0:0] == 1'b1) ? select_ln26_4_fu_1912_p3 : select_ln26_3_fu_1905_p3);
assign select_ln26_6_fu_1926_p3 = ((trunc_ln15_1_reg_3042[0:0] == 1'b1) ? select_ln26_5_fu_1919_p3 : select_ln26_2_fu_1898_p3);
assign select_ln26_7_fu_1933_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? force_1_0_0_1_q0 : force_1_0_0_0_q0);
assign select_ln26_8_fu_1940_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? force_1_0_1_1_q0 : force_1_0_1_0_q0);
assign select_ln26_9_fu_1947_p3 = ((trunc_ln16_1_reg_3131[0:0] == 1'b1) ? select_ln26_8_fu_1940_p3 : select_ln26_7_fu_1933_p3);
assign select_ln26_fu_1884_p3 = ((trunc_ln24_reg_3280[0:0] == 1'b1) ? force_0_0_0_1_q0 : force_0_0_0_0_q0);
assign smax111_cast_fu_1312_p1 = smax111_fu_1304_p3;
assign smax111_fu_1304_p3 = ((empty_27_fu_1298_p2[0:0] == 1'b1) ? trunc_ln15_fu_1282_p1 : 2'd0);
assign smax116_cast_fu_1246_p1 = smax116_fu_1238_p3;
assign smax116_fu_1238_p3 = ((empty_fu_1232_p2[0:0] == 1'b1) ? trunc_ln14_fu_1216_p1 : 2'd0);
assign smax_cast_fu_1441_p1 = smax_fu_1433_p3;
assign smax_fu_1433_p3 = ((empty_29_fu_1427_p2[0:0] == 1'b1) ? trunc_ln16_fu_1397_p1 : 2'd0);
assign sum_x_0_lcssa_ph_fu_2656_p3 = ((empty_59_reg_3587[0:0] == 1'b1) ? sum_x_5_loc_fu_244 : empty_87_fu_2649_p3);
assign sum_x_fu_2040_p1 = trunc_ln26_fu_2036_p1;
assign sum_y_0_lcssa_ph_fu_2622_p3 = ((empty_59_reg_3587[0:0] == 1'b1) ? sum_y_5_loc_fu_240 : empty_73_fu_2615_p3);
assign sum_y_fu_2055_p1 = trunc_ln4_fu_2045_p4;
assign sum_z_0_lcssa_ph_fu_2588_p3 = ((empty_59_reg_3587[0:0] == 1'b1) ? sum_z_5_loc_fu_236 : empty_58_fu_2581_p3);
assign sum_z_fu_2070_p1 = trunc_ln5_fu_2060_p4;
assign tmp_10_fu_1504_p3 = ((trunc_ln15_1_reg_3042[0:0] == 1'b1) ? tmp_6_fu_1496_p3 : tmp_s_fu_1488_p3);
assign tmp_11_fu_1511_p3 = ((trunc_ln14_1_reg_3011[0:0] == 1'b1) ? tmp_10_fu_1504_p3 : tmp_9_fu_1481_p3);
assign tmp_16_cast5_fu_1379_p1 = tmp_16_fu_1371_p4;
assign tmp_16_cast_fu_1405_p1 = tmp_16_reg_3081;
assign tmp_16_fu_1371_p4 = {{{tmp_reg_3018}, {tmp_76_reg_3052}}, {tmp_77_fu_1363_p3}};
assign tmp_19_fu_1535_p3 = {{tmp_79_fu_1527_p3}, {1'd0}};
assign tmp_6_fu_1496_p3 = ((trunc_ln16_1_fu_1401_p1[0:0] == 1'b1) ? n_points_1_1_1_q0 : n_points_1_1_0_q0);
assign tmp_77_fu_1363_p3 = b0_z_reg_1023[32'd1];
assign tmp_78_fu_1408_p5 = {{{{tmp_reg_3018}, {tmp_76_reg_3052}}, {tmp_77_reg_3076}}, {2'd0}};
assign tmp_79_fu_1527_p3 = b1_x_reg_1047[32'd1];
assign tmp_7_fu_1465_p3 = ((trunc_ln16_1_fu_1401_p1[0:0] == 1'b1) ? n_points_0_0_1_q0 : n_points_0_0_0_q0);
assign tmp_80_fu_1581_p3 = {{add_ln23_fu_1576_p2}, {1'd0}};
assign tmp_81_fu_1644_p3 = {{add_ln23_1_reg_3205}, {2'd0}};
assign tmp_8_fu_1473_p3 = ((trunc_ln16_1_fu_1401_p1[0:0] == 1'b1) ? n_points_0_1_1_q0 : n_points_0_1_0_q0);
assign tmp_9_fu_1481_p3 = ((trunc_ln15_1_reg_3042[0:0] == 1'b1) ? tmp_8_fu_1473_p3 : tmp_7_fu_1465_p3);
assign tmp_s_fu_1488_p3 = ((trunc_ln16_1_fu_1401_p1[0:0] == 1'b1) ? n_points_1_0_1_q0 : n_points_1_0_0_q0);
assign trunc_ln14_1_fu_1220_p1 = b0_x_fu_220[0:0];
assign trunc_ln14_fu_1216_p1 = indvars_iv114_fu_216[1:0];
assign trunc_ln15_1_fu_1286_p1 = b0_y_reg_1000[0:0];
assign trunc_ln15_fu_1282_p1 = indvars_iv109_reg_1011[1:0];
assign trunc_ln16_1_fu_1401_p1 = b0_z_reg_1023[0:0];
assign trunc_ln16_fu_1397_p1 = indvars_iv105_reg_1035[1:0];
assign trunc_ln24_fu_1725_p1 = p_idx_reg_1077[0:0];
assign trunc_ln25_1_fu_2001_p4 = {{select_ln25_14_fu_1982_p3[127:64]}};
assign trunc_ln25_2_fu_2016_p4 = {{select_ln25_14_fu_1982_p3[191:128]}};
assign trunc_ln25_3_fu_1992_p1 = select_ln25_14_fu_1982_p3[63:0];
assign trunc_ln25_fu_1987_p1 = select_ln25_14_fu_1982_p3[190:0];
assign trunc_ln26_fu_2036_p1 = select_ln26_14_fu_2031_p3[63:0];
assign trunc_ln34_fu_2075_p1 = select_ln25_14_fu_1982_p3[51:0];
assign trunc_ln4_fu_2045_p4 = {{select_ln26_14_fu_2031_p3[127:64]}};
assign trunc_ln5_fu_2060_p4 = {{select_ln26_14_fu_2031_p3[191:128]}};
assign trunc_ln8_1_fu_1558_p1 = b1_y_reg_1057[0:0];
assign trunc_ln8_2_fu_1637_p1 = b1_z_reg_1067[0:0];
assign trunc_ln8_fu_1523_p1 = b1_x_reg_1047[0:0];
assign zext_ln23_1_fu_1610_p1 = lshr_ln8_5_fu_1600_p4;
assign zext_ln23_2_fu_1619_p1 = add_ln23_1_fu_1614_p2;
assign zext_ln23_fu_1572_p1 = lshr_ln8_4_fu_1562_p4;
assign zext_ln24_fu_1710_p1 = p_idx_reg_1077;
assign zext_ln26_1_fu_1744_p1 = add_ln26_fu_1739_p2;
assign zext_ln26_fu_1417_p1 = tmp_78_fu_1408_p5;
assign zext_ln8_1_fu_1641_p1 = add_ln23_1_reg_3205;
assign zext_ln8_fu_1543_p1 = tmp_19_fu_1535_p3;
always @ (posedge ap_clk) begin
    smax116_cast_reg_3024[2] <= 1'b0;
    smax111_cast_reg_3058[2] <= 1'b0;
    smax_cast_reg_3148[2] <= 1'b0;
    zext_ln8_reg_3172[0] <= 1'b0;
    zext_ln8_reg_3172[2] <= 1'b0;
    tmp_80_reg_3192[0] <= 1'b0;
end
endmodule 