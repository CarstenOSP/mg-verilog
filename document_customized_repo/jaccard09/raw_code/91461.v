module mvt (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,A_4_address0,A_4_ce0,A_4_q0,A_5_address0,A_5_ce0,A_5_q0,A_6_address0,A_6_ce0,A_6_q0,A_7_address0,A_7_ce0,A_7_q0,x1_address0,x1_ce0,x1_q0,x2_address0,x2_ce0,x2_q0,y1_address0,y1_ce0,y1_q0,y2_dout,y2_empty_n,y2_read,x1_out_din,x1_out_full_n,x1_out_write,x2_out_din,x2_out_full_n,x2_out_write); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [8:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [8:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [8:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
output  [8:0] A_4_address0;
output   A_4_ce0;
input  [31:0] A_4_q0;
output  [8:0] A_5_address0;
output   A_5_ce0;
input  [31:0] A_5_q0;
output  [8:0] A_6_address0;
output   A_6_ce0;
input  [31:0] A_6_q0;
output  [8:0] A_7_address0;
output   A_7_ce0;
input  [31:0] A_7_q0;
output  [5:0] x1_address0;
output   x1_ce0;
input  [31:0] x1_q0;
output  [5:0] x2_address0;
output   x2_ce0;
input  [31:0] x2_q0;
output  [5:0] y1_address0;
output   y1_ce0;
input  [31:0] y1_q0;
input  [31:0] y2_dout;
input   y2_empty_n;
output   y2_read;
output  [31:0] x1_out_din;
input   x1_out_full_n;
output   x1_out_write;
output  [31:0] x2_out_din;
input   x2_out_full_n;
output   x2_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg x1_out_write;
reg x2_out_write;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    y2_blk_n;
wire    ap_CS_fsm_state3;
wire   [6:0] add_ln13_fu_814_p2;
reg   [6:0] add_ln13_reg_943;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_827_p1;
reg   [5:0] trunc_ln13_reg_963;
reg   [8:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [8:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [8:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg   [8:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg   [8:0] buff_A_4_address0;
reg    buff_A_4_ce0;
reg    buff_A_4_we0;
wire   [31:0] buff_A_4_q0;
reg   [8:0] buff_A_5_address0;
reg    buff_A_5_ce0;
reg    buff_A_5_we0;
wire   [31:0] buff_A_5_q0;
reg   [8:0] buff_A_6_address0;
reg    buff_A_6_ce0;
reg    buff_A_6_we0;
wire   [31:0] buff_A_6_q0;
reg   [8:0] buff_A_7_address0;
reg    buff_A_7_ce0;
reg    buff_A_7_we0;
wire   [31:0] buff_A_7_q0;
reg   [2:0] buff_x1_address0;
reg    buff_x1_ce0;
reg    buff_x1_we0;
reg   [31:0] buff_x1_d0;
wire   [31:0] buff_x1_q0;
reg   [2:0] buff_x1_1_address0;
reg    buff_x1_1_ce0;
reg    buff_x1_1_we0;
reg   [31:0] buff_x1_1_d0;
wire   [31:0] buff_x1_1_q0;
reg   [2:0] buff_x1_2_address0;
reg    buff_x1_2_ce0;
reg    buff_x1_2_we0;
reg   [31:0] buff_x1_2_d0;
wire   [31:0] buff_x1_2_q0;
reg   [2:0] buff_x1_3_address0;
reg    buff_x1_3_ce0;
reg    buff_x1_3_we0;
reg   [31:0] buff_x1_3_d0;
wire   [31:0] buff_x1_3_q0;
reg   [2:0] buff_x1_4_address0;
reg    buff_x1_4_ce0;
reg    buff_x1_4_we0;
reg   [31:0] buff_x1_4_d0;
wire   [31:0] buff_x1_4_q0;
reg   [2:0] buff_x1_5_address0;
reg    buff_x1_5_ce0;
reg    buff_x1_5_we0;
reg   [31:0] buff_x1_5_d0;
wire   [31:0] buff_x1_5_q0;
reg   [2:0] buff_x1_6_address0;
reg    buff_x1_6_ce0;
reg    buff_x1_6_we0;
reg   [31:0] buff_x1_6_d0;
wire   [31:0] buff_x1_6_q0;
reg   [2:0] buff_x1_7_address0;
reg    buff_x1_7_ce0;
reg    buff_x1_7_we0;
reg   [31:0] buff_x1_7_d0;
wire   [31:0] buff_x1_7_q0;
reg   [2:0] buff_x2_address0;
reg    buff_x2_ce0;
reg    buff_x2_we0;
reg   [31:0] buff_x2_d0;
wire   [31:0] buff_x2_q0;
reg   [2:0] buff_x2_1_address0;
reg    buff_x2_1_ce0;
reg    buff_x2_1_we0;
reg   [31:0] buff_x2_1_d0;
wire   [31:0] buff_x2_1_q0;
reg   [2:0] buff_x2_2_address0;
reg    buff_x2_2_ce0;
reg    buff_x2_2_we0;
reg   [31:0] buff_x2_2_d0;
wire   [31:0] buff_x2_2_q0;
reg   [2:0] buff_x2_3_address0;
reg    buff_x2_3_ce0;
reg    buff_x2_3_we0;
reg   [31:0] buff_x2_3_d0;
wire   [31:0] buff_x2_3_q0;
reg   [2:0] buff_x2_4_address0;
reg    buff_x2_4_ce0;
reg    buff_x2_4_we0;
reg   [31:0] buff_x2_4_d0;
wire   [31:0] buff_x2_4_q0;
reg   [2:0] buff_x2_5_address0;
reg    buff_x2_5_ce0;
reg    buff_x2_5_we0;
reg   [31:0] buff_x2_5_d0;
wire   [31:0] buff_x2_5_q0;
reg   [2:0] buff_x2_6_address0;
reg    buff_x2_6_ce0;
reg    buff_x2_6_we0;
reg   [31:0] buff_x2_6_d0;
wire   [31:0] buff_x2_6_q0;
reg   [2:0] buff_x2_7_address0;
reg    buff_x2_7_ce0;
reg    buff_x2_7_we0;
reg   [31:0] buff_x2_7_d0;
wire   [31:0] buff_x2_7_q0;
reg   [2:0] buff_y1_address0;
reg    buff_y1_ce0;
wire   [31:0] buff_y1_q0;
reg   [2:0] buff_y1_1_address0;
reg    buff_y1_1_ce0;
wire   [31:0] buff_y1_1_q0;
reg   [2:0] buff_y1_2_address0;
reg    buff_y1_2_ce0;
wire   [31:0] buff_y1_2_q0;
reg   [2:0] buff_y1_3_address0;
reg    buff_y1_3_ce0;
wire   [31:0] buff_y1_3_q0;
reg   [2:0] buff_y1_4_address0;
reg    buff_y1_4_ce0;
wire   [31:0] buff_y1_4_q0;
reg   [2:0] buff_y1_5_address0;
reg    buff_y1_5_ce0;
wire   [31:0] buff_y1_5_q0;
reg   [2:0] buff_y1_6_address0;
reg    buff_y1_6_ce0;
wire   [31:0] buff_y1_6_q0;
reg   [2:0] buff_y1_7_address0;
reg    buff_y1_7_ce0;
wire   [31:0] buff_y1_7_q0;
reg   [2:0] buff_y2_address0;
reg    buff_y2_ce0;
wire   [31:0] buff_y2_q0;
reg   [2:0] buff_y2_1_address0;
reg    buff_y2_1_ce0;
wire   [31:0] buff_y2_1_q0;
reg   [2:0] buff_y2_2_address0;
reg    buff_y2_2_ce0;
wire   [31:0] buff_y2_2_q0;
reg   [2:0] buff_y2_3_address0;
reg    buff_y2_3_ce0;
wire   [31:0] buff_y2_3_q0;
reg   [2:0] buff_y2_4_address0;
reg    buff_y2_4_ce0;
wire   [31:0] buff_y2_4_q0;
reg   [2:0] buff_y2_5_address0;
reg    buff_y2_5_ce0;
wire   [31:0] buff_y2_5_q0;
reg   [2:0] buff_y2_6_address0;
reg    buff_y2_6_ce0;
wire   [31:0] buff_y2_6_q0;
reg   [2:0] buff_y2_7_address0;
reg    buff_y2_7_ce0;
wire   [31:0] buff_y2_7_q0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_ap_start;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_ap_done;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_ap_idle;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_ap_ready;
wire   [8:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_ce0;
wire   [8:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_1_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_1_ce0;
wire   [8:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_2_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_2_ce0;
wire   [8:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_3_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_3_ce0;
wire   [8:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_4_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_4_ce0;
wire   [8:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_5_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_5_ce0;
wire   [8:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_6_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_6_ce0;
wire   [8:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_7_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_7_ce0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_ce0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_2_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_2_ce0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_4_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_4_ce0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_6_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_6_ce0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_1_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_1_ce0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_3_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_3_ce0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_5_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_5_ce0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_7_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_7_ce0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_ce0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_d0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_ce0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_d0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_ce0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_d0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_ce0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_d0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_ce0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_d0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_ce0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_d0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_ce0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_d0;
wire   [2:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_ce0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_d0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_971_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_971_p_din1;
wire   [1:0] grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_971_p_opcode;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_971_p_ce;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_975_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_975_p_din1;
wire    grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_975_p_ce;
wire    grp_mvt_Pipeline_lprd_2_fu_719_ap_start;
wire    grp_mvt_Pipeline_lprd_2_fu_719_ap_done;
wire    grp_mvt_Pipeline_lprd_2_fu_719_ap_idle;
wire    grp_mvt_Pipeline_lprd_2_fu_719_ap_ready;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_A_0_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_A_0_ce0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_A_1_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_A_1_ce0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_A_2_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_A_2_ce0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_A_3_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_A_3_ce0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_A_4_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_A_4_ce0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_A_5_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_A_5_ce0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_A_6_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_A_6_ce0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_A_7_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_A_7_ce0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_d0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_d0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_d0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_d0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_d0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_d0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_d0;
wire   [8:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_d0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_ap_start;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_ap_done;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_ap_idle;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_ap_ready;
wire   [8:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_ce0;
wire   [8:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_1_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_1_ce0;
wire   [8:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_2_ce0;
wire   [8:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_3_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_3_ce0;
wire   [8:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_4_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_4_ce0;
wire   [8:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_5_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_5_ce0;
wire   [8:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_6_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_6_ce0;
wire   [8:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_7_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_7_ce0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_ce0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_1_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_1_ce0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_2_ce0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_3_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_3_ce0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_4_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_4_ce0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_5_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_5_ce0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_6_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_6_ce0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_7_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_7_ce0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_d0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_d0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_d0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_d0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_d0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_d0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_d0;
wire   [2:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_d0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_971_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_971_p_din1;
wire   [1:0] grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_971_p_opcode;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_971_p_ce;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_975_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_975_p_din1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_975_p_ce;
wire    grp_mvt_Pipeline_lpwr_fu_776_ap_start;
wire    grp_mvt_Pipeline_lpwr_fu_776_ap_done;
wire    grp_mvt_Pipeline_lpwr_fu_776_ap_idle;
wire    grp_mvt_Pipeline_lpwr_fu_776_ap_ready;
wire   [31:0] grp_mvt_Pipeline_lpwr_fu_776_x1_out_din;
wire    grp_mvt_Pipeline_lpwr_fu_776_x1_out_write;
wire   [31:0] grp_mvt_Pipeline_lpwr_fu_776_x2_out_din;
wire    grp_mvt_Pipeline_lpwr_fu_776_x2_out_write;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x1_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x1_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x2_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x2_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x1_1_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x1_1_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x2_1_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x2_1_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x1_2_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x1_2_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x2_2_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x2_2_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x1_3_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x1_3_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x2_3_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x2_3_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x1_4_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x1_4_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x2_4_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x2_4_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x1_5_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x1_5_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x2_5_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x2_5_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x1_6_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x1_6_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x2_6_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x2_6_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x1_7_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x1_7_ce0;
wire   [2:0] grp_mvt_Pipeline_lpwr_fu_776_buff_x2_7_address0;
wire    grp_mvt_Pipeline_lpwr_fu_776_buff_x2_7_ce0;
reg    grp_mvt_Pipeline_lp1_lp2_fu_691_ap_start_reg;
wire   [0:0] icmp_ln13_fu_808_p2;
wire    ap_CS_fsm_state6;
reg    grp_mvt_Pipeline_lprd_2_fu_719_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_mvt_Pipeline_lp3_lp4_fu_748_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_mvt_Pipeline_lpwr_fu_776_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire   [63:0] zext_ln13_fu_820_p1;
wire   [63:0] zext_ln6_fu_842_p1;
reg   [6:0] i_fu_98;
reg    y2_read_local;
reg    x1_ce0_local;
reg    x2_ce0_local;
reg    y1_ce0_local;
reg    buff_x1_6_we0_local;
wire   [2:0] trunc_ln13_1_fu_830_p1;
wire   [31:0] bitcast_ln14_fu_878_p1;
reg    buff_x1_6_ce0_local;
reg    buff_x2_6_we0_local;
wire   [31:0] bitcast_ln15_fu_890_p1;
reg    buff_x2_6_ce0_local;
reg    buff_y1_6_we0_local;
wire   [31:0] bitcast_ln16_fu_902_p1;
reg    buff_y1_6_ce0_local;
reg    buff_y2_6_we0_local;
wire   [31:0] bitcast_ln17_fu_914_p1;
reg    buff_y2_6_ce0_local;
reg    buff_x1_5_we0_local;
reg    buff_x1_5_ce0_local;
reg    buff_x2_5_we0_local;
reg    buff_x2_5_ce0_local;
reg    buff_y1_5_we0_local;
reg    buff_y1_5_ce0_local;
reg    buff_y2_5_we0_local;
reg    buff_y2_5_ce0_local;
reg    buff_x1_4_we0_local;
reg    buff_x1_4_ce0_local;
reg    buff_x2_4_we0_local;
reg    buff_x2_4_ce0_local;
reg    buff_y1_4_we0_local;
reg    buff_y1_4_ce0_local;
reg    buff_y2_4_we0_local;
reg    buff_y2_4_ce0_local;
reg    buff_x1_3_we0_local;
reg    buff_x1_3_ce0_local;
reg    buff_x2_3_we0_local;
reg    buff_x2_3_ce0_local;
reg    buff_y1_3_we0_local;
reg    buff_y1_3_ce0_local;
reg    buff_y2_3_we0_local;
reg    buff_y2_3_ce0_local;
reg    buff_x1_2_we0_local;
reg    buff_x1_2_ce0_local;
reg    buff_x2_2_we0_local;
reg    buff_x2_2_ce0_local;
reg    buff_y1_2_we0_local;
reg    buff_y1_2_ce0_local;
reg    buff_y2_2_we0_local;
reg    buff_y2_2_ce0_local;
reg    buff_x1_1_we0_local;
reg    buff_x1_1_ce0_local;
reg    buff_x2_1_we0_local;
reg    buff_x2_1_ce0_local;
reg    buff_y1_1_we0_local;
reg    buff_y1_1_ce0_local;
reg    buff_y2_1_we0_local;
reg    buff_y2_1_ce0_local;
reg    buff_x1_we0_local;
reg    buff_x1_ce0_local;
reg    buff_x2_we0_local;
reg    buff_x2_ce0_local;
reg    buff_y1_we0_local;
reg    buff_y1_ce0_local;
reg    buff_y2_we0_local;
reg    buff_y2_ce0_local;
reg    buff_x1_7_we0_local;
reg    buff_x1_7_ce0_local;
reg    buff_x2_7_we0_local;
reg    buff_x2_7_ce0_local;
reg    buff_y1_7_we0_local;
reg    buff_y1_7_ce0_local;
reg    buff_y2_7_we0_local;
reg    buff_y2_7_ce0_local;
wire   [2:0] lshr_ln6_fu_833_p4;
wire   [31:0] grp_fu_971_p2;
reg   [31:0] grp_fu_971_p0;
reg   [31:0] grp_fu_971_p1;
reg    grp_fu_971_ce;
wire   [31:0] grp_fu_975_p2;
reg   [31:0] grp_fu_975_p0;
reg   [31:0] grp_fu_975_p1;
reg    grp_fu_975_ce;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_mvt_Pipeline_lp1_lp2_fu_691_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lprd_2_fu_719_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lp3_lp4_fu_748_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lpwr_fu_776_ap_start_reg = 1'b0;
#0 i_fu_98 = 7'd0;
end
mvt_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_d0),.q0(buff_A_q0));
mvt_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_d0),.q0(buff_A_1_q0));
mvt_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_d0),.q0(buff_A_2_q0));
mvt_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_d0),.q0(buff_A_3_q0));
mvt_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_d0),.q0(buff_A_4_q0));
mvt_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_d0),.q0(buff_A_5_q0));
mvt_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_d0),.q0(buff_A_6_q0));
mvt_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_d0),.q0(buff_A_7_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_address0),.ce0(buff_x1_ce0),.we0(buff_x1_we0),.d0(buff_x1_d0),.q0(buff_x1_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_1_address0),.ce0(buff_x1_1_ce0),.we0(buff_x1_1_we0),.d0(buff_x1_1_d0),.q0(buff_x1_1_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_2_address0),.ce0(buff_x1_2_ce0),.we0(buff_x1_2_we0),.d0(buff_x1_2_d0),.q0(buff_x1_2_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_3_address0),.ce0(buff_x1_3_ce0),.we0(buff_x1_3_we0),.d0(buff_x1_3_d0),.q0(buff_x1_3_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x1_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_4_address0),.ce0(buff_x1_4_ce0),.we0(buff_x1_4_we0),.d0(buff_x1_4_d0),.q0(buff_x1_4_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x1_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_5_address0),.ce0(buff_x1_5_ce0),.we0(buff_x1_5_we0),.d0(buff_x1_5_d0),.q0(buff_x1_5_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x1_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_6_address0),.ce0(buff_x1_6_ce0),.we0(buff_x1_6_we0),.d0(buff_x1_6_d0),.q0(buff_x1_6_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x1_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_7_address0),.ce0(buff_x1_7_ce0),.we0(buff_x1_7_we0),.d0(buff_x1_7_d0),.q0(buff_x1_7_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_address0),.ce0(buff_x2_ce0),.we0(buff_x2_we0),.d0(buff_x2_d0),.q0(buff_x2_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_1_address0),.ce0(buff_x2_1_ce0),.we0(buff_x2_1_we0),.d0(buff_x2_1_d0),.q0(buff_x2_1_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x2_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_2_address0),.ce0(buff_x2_2_ce0),.we0(buff_x2_2_we0),.d0(buff_x2_2_d0),.q0(buff_x2_2_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x2_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_3_address0),.ce0(buff_x2_3_ce0),.we0(buff_x2_3_we0),.d0(buff_x2_3_d0),.q0(buff_x2_3_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x2_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_4_address0),.ce0(buff_x2_4_ce0),.we0(buff_x2_4_we0),.d0(buff_x2_4_d0),.q0(buff_x2_4_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x2_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_5_address0),.ce0(buff_x2_5_ce0),.we0(buff_x2_5_we0),.d0(buff_x2_5_d0),.q0(buff_x2_5_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x2_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_6_address0),.ce0(buff_x2_6_ce0),.we0(buff_x2_6_we0),.d0(buff_x2_6_d0),.q0(buff_x2_6_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x2_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_7_address0),.ce0(buff_x2_7_ce0),.we0(buff_x2_7_we0),.d0(buff_x2_7_d0),.q0(buff_x2_7_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_address0),.ce0(buff_y1_ce0),.we0(buff_y1_we0_local),.d0(bitcast_ln16_fu_902_p1),.q0(buff_y1_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_1_address0),.ce0(buff_y1_1_ce0),.we0(buff_y1_1_we0_local),.d0(bitcast_ln16_fu_902_p1),.q0(buff_y1_1_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_2_address0),.ce0(buff_y1_2_ce0),.we0(buff_y1_2_we0_local),.d0(bitcast_ln16_fu_902_p1),.q0(buff_y1_2_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_3_address0),.ce0(buff_y1_3_ce0),.we0(buff_y1_3_we0_local),.d0(bitcast_ln16_fu_902_p1),.q0(buff_y1_3_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y1_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_4_address0),.ce0(buff_y1_4_ce0),.we0(buff_y1_4_we0_local),.d0(bitcast_ln16_fu_902_p1),.q0(buff_y1_4_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y1_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_5_address0),.ce0(buff_y1_5_ce0),.we0(buff_y1_5_we0_local),.d0(bitcast_ln16_fu_902_p1),.q0(buff_y1_5_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y1_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_6_address0),.ce0(buff_y1_6_ce0),.we0(buff_y1_6_we0_local),.d0(bitcast_ln16_fu_902_p1),.q0(buff_y1_6_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y1_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_7_address0),.ce0(buff_y1_7_ce0),.we0(buff_y1_7_we0_local),.d0(bitcast_ln16_fu_902_p1),.q0(buff_y1_7_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_address0),.ce0(buff_y2_ce0),.we0(buff_y2_we0_local),.d0(bitcast_ln17_fu_914_p1),.q0(buff_y2_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_1_address0),.ce0(buff_y2_1_ce0),.we0(buff_y2_1_we0_local),.d0(bitcast_ln17_fu_914_p1),.q0(buff_y2_1_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y2_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_2_address0),.ce0(buff_y2_2_ce0),.we0(buff_y2_2_we0_local),.d0(bitcast_ln17_fu_914_p1),.q0(buff_y2_2_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y2_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_3_address0),.ce0(buff_y2_3_ce0),.we0(buff_y2_3_we0_local),.d0(bitcast_ln17_fu_914_p1),.q0(buff_y2_3_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y2_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_4_address0),.ce0(buff_y2_4_ce0),.we0(buff_y2_4_we0_local),.d0(bitcast_ln17_fu_914_p1),.q0(buff_y2_4_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y2_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_5_address0),.ce0(buff_y2_5_ce0),.we0(buff_y2_5_we0_local),.d0(bitcast_ln17_fu_914_p1),.q0(buff_y2_5_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y2_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_6_address0),.ce0(buff_y2_6_ce0),.we0(buff_y2_6_we0_local),.d0(bitcast_ln17_fu_914_p1),.q0(buff_y2_6_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y2_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_7_address0),.ce0(buff_y2_7_ce0),.we0(buff_y2_7_we0_local),.d0(bitcast_ln17_fu_914_p1),.q0(buff_y2_7_q0));
mvt_mvt_Pipeline_lp1_lp2 grp_mvt_Pipeline_lp1_lp2_fu_691(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lp1_lp2_fu_691_ap_start),.ap_done(grp_mvt_Pipeline_lp1_lp2_fu_691_ap_done),.ap_idle(grp_mvt_Pipeline_lp1_lp2_fu_691_ap_idle),.ap_ready(grp_mvt_Pipeline_lp1_lp2_fu_691_ap_ready),.buff_A_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_2_address0),.buff_A_2_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_3_address0),.buff_A_3_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_4_address0),.buff_A_4_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_5_address0),.buff_A_5_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_6_address0),.buff_A_6_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_7_address0),.buff_A_7_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_y1_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_address0),.buff_y1_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_ce0),.buff_y1_q0(buff_y1_q0),.buff_y1_2_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_2_address0),.buff_y1_2_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_2_ce0),.buff_y1_2_q0(buff_y1_2_q0),.buff_y1_4_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_4_address0),.buff_y1_4_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_4_ce0),.buff_y1_4_q0(buff_y1_4_q0),.buff_y1_6_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_6_address0),.buff_y1_6_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_6_ce0),.buff_y1_6_q0(buff_y1_6_q0),.buff_y1_1_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_1_address0),.buff_y1_1_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_1_ce0),.buff_y1_1_q0(buff_y1_1_q0),.buff_y1_3_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_3_address0),.buff_y1_3_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_3_ce0),.buff_y1_3_q0(buff_y1_3_q0),.buff_y1_5_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_5_address0),.buff_y1_5_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_5_ce0),.buff_y1_5_q0(buff_y1_5_q0),.buff_y1_7_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_7_address0),.buff_y1_7_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_7_ce0),.buff_y1_7_q0(buff_y1_7_q0),.buff_x1_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_address0),.buff_x1_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_ce0),.buff_x1_we0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_we0),.buff_x1_d0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_d0),.buff_x1_q0(buff_x1_q0),.buff_x1_1_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_address0),.buff_x1_1_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_ce0),.buff_x1_1_we0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_we0),.buff_x1_1_d0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_d0),.buff_x1_1_q0(buff_x1_1_q0),.buff_x1_2_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_address0),.buff_x1_2_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_ce0),.buff_x1_2_we0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_we0),.buff_x1_2_d0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_d0),.buff_x1_2_q0(buff_x1_2_q0),.buff_x1_3_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_address0),.buff_x1_3_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_ce0),.buff_x1_3_we0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_we0),.buff_x1_3_d0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_d0),.buff_x1_3_q0(buff_x1_3_q0),.buff_x1_4_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_address0),.buff_x1_4_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_ce0),.buff_x1_4_we0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_we0),.buff_x1_4_d0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_d0),.buff_x1_4_q0(buff_x1_4_q0),.buff_x1_5_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_address0),.buff_x1_5_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_ce0),.buff_x1_5_we0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_we0),.buff_x1_5_d0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_d0),.buff_x1_5_q0(buff_x1_5_q0),.buff_x1_6_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_address0),.buff_x1_6_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_ce0),.buff_x1_6_we0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_we0),.buff_x1_6_d0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_d0),.buff_x1_6_q0(buff_x1_6_q0),.buff_x1_7_address0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_address0),.buff_x1_7_ce0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_ce0),.buff_x1_7_we0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_we0),.buff_x1_7_d0(grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_d0),.buff_x1_7_q0(buff_x1_7_q0),.grp_fu_971_p_din0(grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_971_p_din0),.grp_fu_971_p_din1(grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_971_p_din1),.grp_fu_971_p_opcode(grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_971_p_opcode),.grp_fu_971_p_dout0(grp_fu_971_p2),.grp_fu_971_p_ce(grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_971_p_ce),.grp_fu_975_p_din0(grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_975_p_din0),.grp_fu_975_p_din1(grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_975_p_din1),.grp_fu_975_p_dout0(grp_fu_975_p2),.grp_fu_975_p_ce(grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_975_p_ce));
mvt_mvt_Pipeline_lprd_2 grp_mvt_Pipeline_lprd_2_fu_719(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lprd_2_fu_719_ap_start),.ap_done(grp_mvt_Pipeline_lprd_2_fu_719_ap_done),.ap_idle(grp_mvt_Pipeline_lprd_2_fu_719_ap_idle),.ap_ready(grp_mvt_Pipeline_lprd_2_fu_719_ap_ready),.i(trunc_ln13_reg_963),.A_0_address0(grp_mvt_Pipeline_lprd_2_fu_719_A_0_address0),.A_0_ce0(grp_mvt_Pipeline_lprd_2_fu_719_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_mvt_Pipeline_lprd_2_fu_719_A_1_address0),.A_1_ce0(grp_mvt_Pipeline_lprd_2_fu_719_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_mvt_Pipeline_lprd_2_fu_719_A_2_address0),.A_2_ce0(grp_mvt_Pipeline_lprd_2_fu_719_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_mvt_Pipeline_lprd_2_fu_719_A_3_address0),.A_3_ce0(grp_mvt_Pipeline_lprd_2_fu_719_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_mvt_Pipeline_lprd_2_fu_719_A_4_address0),.A_4_ce0(grp_mvt_Pipeline_lprd_2_fu_719_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_mvt_Pipeline_lprd_2_fu_719_A_5_address0),.A_5_ce0(grp_mvt_Pipeline_lprd_2_fu_719_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_mvt_Pipeline_lprd_2_fu_719_A_6_address0),.A_6_ce0(grp_mvt_Pipeline_lprd_2_fu_719_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_mvt_Pipeline_lprd_2_fu_719_A_7_address0),.A_7_ce0(grp_mvt_Pipeline_lprd_2_fu_719_A_7_ce0),.A_7_q0(A_7_q0),.buff_A_address0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_ce0),.buff_A_we0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_we0),.buff_A_d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_d0),.buff_A_1_address0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_ce0),.buff_A_1_we0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_we0),.buff_A_1_d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_d0),.buff_A_2_address0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_address0),.buff_A_2_ce0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_ce0),.buff_A_2_we0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_we0),.buff_A_2_d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_d0),.buff_A_3_address0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_address0),.buff_A_3_ce0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_ce0),.buff_A_3_we0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_we0),.buff_A_3_d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_d0),.buff_A_4_address0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_address0),.buff_A_4_ce0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_ce0),.buff_A_4_we0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_we0),.buff_A_4_d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_d0),.buff_A_5_address0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_address0),.buff_A_5_ce0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_ce0),.buff_A_5_we0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_we0),.buff_A_5_d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_d0),.buff_A_6_address0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_address0),.buff_A_6_ce0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_ce0),.buff_A_6_we0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_we0),.buff_A_6_d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_d0),.buff_A_7_address0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_address0),.buff_A_7_ce0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_ce0),.buff_A_7_we0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_we0),.buff_A_7_d0(grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_d0));
mvt_mvt_Pipeline_lp3_lp4 grp_mvt_Pipeline_lp3_lp4_fu_748(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lp3_lp4_fu_748_ap_start),.ap_done(grp_mvt_Pipeline_lp3_lp4_fu_748_ap_done),.ap_idle(grp_mvt_Pipeline_lp3_lp4_fu_748_ap_idle),.ap_ready(grp_mvt_Pipeline_lp3_lp4_fu_748_ap_ready),.buff_A_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_2_address0),.buff_A_2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_3_address0),.buff_A_3_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_4_address0),.buff_A_4_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_5_address0),.buff_A_5_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_6_address0),.buff_A_6_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_7_address0),.buff_A_7_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_y2_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_address0),.buff_y2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_ce0),.buff_y2_q0(buff_y2_q0),.buff_y2_1_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_1_address0),.buff_y2_1_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_1_ce0),.buff_y2_1_q0(buff_y2_1_q0),.buff_y2_2_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_2_address0),.buff_y2_2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_2_ce0),.buff_y2_2_q0(buff_y2_2_q0),.buff_y2_3_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_3_address0),.buff_y2_3_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_3_ce0),.buff_y2_3_q0(buff_y2_3_q0),.buff_y2_4_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_4_address0),.buff_y2_4_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_4_ce0),.buff_y2_4_q0(buff_y2_4_q0),.buff_y2_5_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_5_address0),.buff_y2_5_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_5_ce0),.buff_y2_5_q0(buff_y2_5_q0),.buff_y2_6_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_6_address0),.buff_y2_6_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_6_ce0),.buff_y2_6_q0(buff_y2_6_q0),.buff_y2_7_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_7_address0),.buff_y2_7_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_7_ce0),.buff_y2_7_q0(buff_y2_7_q0),.buff_x2_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_address0),.buff_x2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_ce0),.buff_x2_we0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_we0),.buff_x2_d0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_d0),.buff_x2_q0(buff_x2_q0),.buff_x2_1_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_address0),.buff_x2_1_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_ce0),.buff_x2_1_we0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_we0),.buff_x2_1_d0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_d0),.buff_x2_1_q0(buff_x2_1_q0),.buff_x2_2_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_address0),.buff_x2_2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_ce0),.buff_x2_2_we0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_we0),.buff_x2_2_d0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_d0),.buff_x2_2_q0(buff_x2_2_q0),.buff_x2_3_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_address0),.buff_x2_3_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_ce0),.buff_x2_3_we0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_we0),.buff_x2_3_d0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_d0),.buff_x2_3_q0(buff_x2_3_q0),.buff_x2_4_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_address0),.buff_x2_4_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_ce0),.buff_x2_4_we0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_we0),.buff_x2_4_d0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_d0),.buff_x2_4_q0(buff_x2_4_q0),.buff_x2_5_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_address0),.buff_x2_5_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_ce0),.buff_x2_5_we0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_we0),.buff_x2_5_d0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_d0),.buff_x2_5_q0(buff_x2_5_q0),.buff_x2_6_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_address0),.buff_x2_6_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_ce0),.buff_x2_6_we0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_we0),.buff_x2_6_d0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_d0),.buff_x2_6_q0(buff_x2_6_q0),.buff_x2_7_address0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_address0),.buff_x2_7_ce0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_ce0),.buff_x2_7_we0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_we0),.buff_x2_7_d0(grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_d0),.buff_x2_7_q0(buff_x2_7_q0),.grp_fu_971_p_din0(grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_971_p_din0),.grp_fu_971_p_din1(grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_971_p_din1),.grp_fu_971_p_opcode(grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_971_p_opcode),.grp_fu_971_p_dout0(grp_fu_971_p2),.grp_fu_971_p_ce(grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_971_p_ce),.grp_fu_975_p_din0(grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_975_p_din0),.grp_fu_975_p_din1(grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_975_p_din1),.grp_fu_975_p_dout0(grp_fu_975_p2),.grp_fu_975_p_ce(grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_975_p_ce));
mvt_mvt_Pipeline_lpwr grp_mvt_Pipeline_lpwr_fu_776(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lpwr_fu_776_ap_start),.ap_done(grp_mvt_Pipeline_lpwr_fu_776_ap_done),.ap_idle(grp_mvt_Pipeline_lpwr_fu_776_ap_idle),.ap_ready(grp_mvt_Pipeline_lpwr_fu_776_ap_ready),.x1_out_din(grp_mvt_Pipeline_lpwr_fu_776_x1_out_din),.x1_out_full_n(x1_out_full_n),.x1_out_write(grp_mvt_Pipeline_lpwr_fu_776_x1_out_write),.x2_out_din(grp_mvt_Pipeline_lpwr_fu_776_x2_out_din),.x2_out_full_n(x2_out_full_n),.x2_out_write(grp_mvt_Pipeline_lpwr_fu_776_x2_out_write),.buff_x1_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_address0),.buff_x1_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_ce0),.buff_x1_q0(buff_x1_q0),.buff_x2_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_address0),.buff_x2_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_ce0),.buff_x2_q0(buff_x2_q0),.buff_x1_1_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_1_address0),.buff_x1_1_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_1_ce0),.buff_x1_1_q0(buff_x1_1_q0),.buff_x2_1_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_1_address0),.buff_x2_1_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_1_ce0),.buff_x2_1_q0(buff_x2_1_q0),.buff_x1_2_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_2_address0),.buff_x1_2_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_2_ce0),.buff_x1_2_q0(buff_x1_2_q0),.buff_x2_2_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_2_address0),.buff_x2_2_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_2_ce0),.buff_x2_2_q0(buff_x2_2_q0),.buff_x1_3_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_3_address0),.buff_x1_3_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_3_ce0),.buff_x1_3_q0(buff_x1_3_q0),.buff_x2_3_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_3_address0),.buff_x2_3_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_3_ce0),.buff_x2_3_q0(buff_x2_3_q0),.buff_x1_4_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_4_address0),.buff_x1_4_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_4_ce0),.buff_x1_4_q0(buff_x1_4_q0),.buff_x2_4_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_4_address0),.buff_x2_4_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_4_ce0),.buff_x2_4_q0(buff_x2_4_q0),.buff_x1_5_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_5_address0),.buff_x1_5_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_5_ce0),.buff_x1_5_q0(buff_x1_5_q0),.buff_x2_5_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_5_address0),.buff_x2_5_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_5_ce0),.buff_x2_5_q0(buff_x2_5_q0),.buff_x1_6_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_6_address0),.buff_x1_6_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_6_ce0),.buff_x1_6_q0(buff_x1_6_q0),.buff_x2_6_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_6_address0),.buff_x2_6_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_6_ce0),.buff_x2_6_q0(buff_x2_6_q0),.buff_x1_7_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_7_address0),.buff_x1_7_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x1_7_ce0),.buff_x1_7_q0(buff_x1_7_q0),.buff_x2_7_address0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_7_address0),.buff_x2_7_ce0(grp_mvt_Pipeline_lpwr_fu_776_buff_x2_7_ce0),.buff_x2_7_q0(buff_x2_7_q0));
mvt_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_971_p0),.din1(grp_fu_971_p1),.ce(grp_fu_971_ce),.dout(grp_fu_971_p2));
mvt_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_975_p0),.din1(grp_fu_975_p1),.ce(grp_fu_975_ce),.dout(grp_fu_975_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lp1_lp2_fu_691_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln13_fu_808_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_mvt_Pipeline_lp1_lp2_fu_691_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lp1_lp2_fu_691_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lp1_lp2_fu_691_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lp3_lp4_fu_748_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_mvt_Pipeline_lp3_lp4_fu_748_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lp3_lp4_fu_748_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lp3_lp4_fu_748_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lprd_2_fu_719_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_mvt_Pipeline_lprd_2_fu_719_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lprd_2_fu_719_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lprd_2_fu_719_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lpwr_fu_776_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_mvt_Pipeline_lpwr_fu_776_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lpwr_fu_776_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lpwr_fu_776_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_98 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_98 <= add_ln13_reg_943;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_943 <= add_ln13_fu_814_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_963 <= trunc_ln13_fu_827_p1;
    end
end
always @ (*) begin
    if ((grp_mvt_Pipeline_lpwr_fu_776_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((y2_empty_n == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_mvt_Pipeline_lprd_2_fu_719_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_mvt_Pipeline_lp1_lp2_fu_691_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_mvt_Pipeline_lp3_lp4_fu_748_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_mvt_Pipeline_lpwr_fu_776_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
    if (((grp_mvt_Pipeline_lpwr_fu_776_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_we0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_we0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_3_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_3_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_we0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_4_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_4_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_we0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_5_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_5_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_we0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_6_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_6_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_we0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_7_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_7_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_we0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_we0 = grp_mvt_Pipeline_lprd_2_fu_719_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_1_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_1_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_address0;
    end else begin
        buff_x1_1_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_1_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_1_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_ce0;
    end else begin
        buff_x1_1_ce0 = buff_x1_1_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_1_ce0_local = 1'b1;
    end else begin
        buff_x1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_1_d0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_d0;
    end else begin
        buff_x1_1_d0 = bitcast_ln14_fu_878_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_1_we0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_1_we0;
    end else begin
        buff_x1_1_we0 = buff_x1_1_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_1_we0_local = 1'b1;
    end else begin
        buff_x1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_2_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_2_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_address0;
    end else begin
        buff_x1_2_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_2_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_2_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_ce0;
    end else begin
        buff_x1_2_ce0 = buff_x1_2_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_2_ce0_local = 1'b1;
    end else begin
        buff_x1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_2_d0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_d0;
    end else begin
        buff_x1_2_d0 = bitcast_ln14_fu_878_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_2_we0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_2_we0;
    end else begin
        buff_x1_2_we0 = buff_x1_2_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_2_we0_local = 1'b1;
    end else begin
        buff_x1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_3_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_3_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_address0;
    end else begin
        buff_x1_3_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_3_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_3_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_ce0;
    end else begin
        buff_x1_3_ce0 = buff_x1_3_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_3_ce0_local = 1'b1;
    end else begin
        buff_x1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_3_d0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_d0;
    end else begin
        buff_x1_3_d0 = bitcast_ln14_fu_878_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_3_we0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_3_we0;
    end else begin
        buff_x1_3_we0 = buff_x1_3_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_3_we0_local = 1'b1;
    end else begin
        buff_x1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_4_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_4_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_address0;
    end else begin
        buff_x1_4_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_4_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_4_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_ce0;
    end else begin
        buff_x1_4_ce0 = buff_x1_4_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_4_ce0_local = 1'b1;
    end else begin
        buff_x1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_4_d0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_d0;
    end else begin
        buff_x1_4_d0 = bitcast_ln14_fu_878_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_4_we0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_4_we0;
    end else begin
        buff_x1_4_we0 = buff_x1_4_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_4_we0_local = 1'b1;
    end else begin
        buff_x1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_5_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_5_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_address0;
    end else begin
        buff_x1_5_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_5_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_5_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_ce0;
    end else begin
        buff_x1_5_ce0 = buff_x1_5_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_5_ce0_local = 1'b1;
    end else begin
        buff_x1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_5_d0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_d0;
    end else begin
        buff_x1_5_d0 = bitcast_ln14_fu_878_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_5_we0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_5_we0;
    end else begin
        buff_x1_5_we0 = buff_x1_5_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_5_we0_local = 1'b1;
    end else begin
        buff_x1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_6_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_6_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_address0;
    end else begin
        buff_x1_6_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_6_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_6_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_ce0;
    end else begin
        buff_x1_6_ce0 = buff_x1_6_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_6_ce0_local = 1'b1;
    end else begin
        buff_x1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_6_d0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_d0;
    end else begin
        buff_x1_6_d0 = bitcast_ln14_fu_878_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_6_we0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_6_we0;
    end else begin
        buff_x1_6_we0 = buff_x1_6_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_6_we0_local = 1'b1;
    end else begin
        buff_x1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_7_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_7_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_address0;
    end else begin
        buff_x1_7_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_7_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_7_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_ce0;
    end else begin
        buff_x1_7_ce0 = buff_x1_7_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_7_ce0_local = 1'b1;
    end else begin
        buff_x1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_7_d0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_d0;
    end else begin
        buff_x1_7_d0 = bitcast_ln14_fu_878_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_7_we0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_7_we0;
    end else begin
        buff_x1_7_we0 = buff_x1_7_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_7_we0_local = 1'b1;
    end else begin
        buff_x1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_address0;
    end else begin
        buff_x1_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x1_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_ce0;
    end else begin
        buff_x1_ce0 = buff_x1_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_ce0_local = 1'b1;
    end else begin
        buff_x1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_d0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_d0;
    end else begin
        buff_x1_d0 = bitcast_ln14_fu_878_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x1_we0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_x1_we0;
    end else begin
        buff_x1_we0 = buff_x1_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_we0_local = 1'b1;
    end else begin
        buff_x1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_1_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_1_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_address0;
    end else begin
        buff_x2_1_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_1_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_1_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_ce0;
    end else begin
        buff_x2_1_ce0 = buff_x2_1_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_1_ce0_local = 1'b1;
    end else begin
        buff_x2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_1_d0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_d0;
    end else begin
        buff_x2_1_d0 = bitcast_ln15_fu_890_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_1_we0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_1_we0;
    end else begin
        buff_x2_1_we0 = buff_x2_1_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_1_we0_local = 1'b1;
    end else begin
        buff_x2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_2_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_address0;
    end else begin
        buff_x2_2_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_2_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_ce0;
    end else begin
        buff_x2_2_ce0 = buff_x2_2_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_2_ce0_local = 1'b1;
    end else begin
        buff_x2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_2_d0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_d0;
    end else begin
        buff_x2_2_d0 = bitcast_ln15_fu_890_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_2_we0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_2_we0;
    end else begin
        buff_x2_2_we0 = buff_x2_2_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_2_we0_local = 1'b1;
    end else begin
        buff_x2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_3_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_3_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_address0;
    end else begin
        buff_x2_3_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_3_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_3_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_ce0;
    end else begin
        buff_x2_3_ce0 = buff_x2_3_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_3_ce0_local = 1'b1;
    end else begin
        buff_x2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_3_d0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_d0;
    end else begin
        buff_x2_3_d0 = bitcast_ln15_fu_890_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_3_we0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_3_we0;
    end else begin
        buff_x2_3_we0 = buff_x2_3_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_3_we0_local = 1'b1;
    end else begin
        buff_x2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_4_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_4_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_address0;
    end else begin
        buff_x2_4_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_4_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_4_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_ce0;
    end else begin
        buff_x2_4_ce0 = buff_x2_4_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_4_ce0_local = 1'b1;
    end else begin
        buff_x2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_4_d0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_d0;
    end else begin
        buff_x2_4_d0 = bitcast_ln15_fu_890_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_4_we0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_4_we0;
    end else begin
        buff_x2_4_we0 = buff_x2_4_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_4_we0_local = 1'b1;
    end else begin
        buff_x2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_5_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_5_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_address0;
    end else begin
        buff_x2_5_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_5_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_5_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_ce0;
    end else begin
        buff_x2_5_ce0 = buff_x2_5_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_5_ce0_local = 1'b1;
    end else begin
        buff_x2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_5_d0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_d0;
    end else begin
        buff_x2_5_d0 = bitcast_ln15_fu_890_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_5_we0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_5_we0;
    end else begin
        buff_x2_5_we0 = buff_x2_5_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_5_we0_local = 1'b1;
    end else begin
        buff_x2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_6_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_6_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_address0;
    end else begin
        buff_x2_6_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_6_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_6_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_ce0;
    end else begin
        buff_x2_6_ce0 = buff_x2_6_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_6_ce0_local = 1'b1;
    end else begin
        buff_x2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_6_d0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_d0;
    end else begin
        buff_x2_6_d0 = bitcast_ln15_fu_890_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_6_we0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_6_we0;
    end else begin
        buff_x2_6_we0 = buff_x2_6_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_6_we0_local = 1'b1;
    end else begin
        buff_x2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_7_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_7_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_address0;
    end else begin
        buff_x2_7_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_7_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_7_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_ce0;
    end else begin
        buff_x2_7_ce0 = buff_x2_7_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_7_ce0_local = 1'b1;
    end else begin
        buff_x2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_7_d0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_d0;
    end else begin
        buff_x2_7_d0 = bitcast_ln15_fu_890_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_7_we0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_7_we0;
    end else begin
        buff_x2_7_we0 = buff_x2_7_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_7_we0_local = 1'b1;
    end else begin
        buff_x2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_address0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_address0;
    end else begin
        buff_x2_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x2_ce0 = grp_mvt_Pipeline_lpwr_fu_776_buff_x2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_ce0;
    end else begin
        buff_x2_ce0 = buff_x2_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_ce0_local = 1'b1;
    end else begin
        buff_x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_d0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_d0;
    end else begin
        buff_x2_d0 = bitcast_ln15_fu_890_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_we0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_x2_we0;
    end else begin
        buff_x2_we0 = buff_x2_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_we0_local = 1'b1;
    end else begin
        buff_x2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_1_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_1_address0;
    end else begin
        buff_y1_1_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_1_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_1_ce0;
    end else begin
        buff_y1_1_ce0 = buff_y1_1_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_1_ce0_local = 1'b1;
    end else begin
        buff_y1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_1_we0_local = 1'b1;
    end else begin
        buff_y1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_2_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_2_address0;
    end else begin
        buff_y1_2_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_2_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_2_ce0;
    end else begin
        buff_y1_2_ce0 = buff_y1_2_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_2_ce0_local = 1'b1;
    end else begin
        buff_y1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_2_we0_local = 1'b1;
    end else begin
        buff_y1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_3_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_3_address0;
    end else begin
        buff_y1_3_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_3_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_3_ce0;
    end else begin
        buff_y1_3_ce0 = buff_y1_3_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_3_ce0_local = 1'b1;
    end else begin
        buff_y1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_3_we0_local = 1'b1;
    end else begin
        buff_y1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_4_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_4_address0;
    end else begin
        buff_y1_4_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_4_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_4_ce0;
    end else begin
        buff_y1_4_ce0 = buff_y1_4_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_4_ce0_local = 1'b1;
    end else begin
        buff_y1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_4_we0_local = 1'b1;
    end else begin
        buff_y1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_5_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_5_address0;
    end else begin
        buff_y1_5_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_5_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_5_ce0;
    end else begin
        buff_y1_5_ce0 = buff_y1_5_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_5_ce0_local = 1'b1;
    end else begin
        buff_y1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_5_we0_local = 1'b1;
    end else begin
        buff_y1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_6_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_6_address0;
    end else begin
        buff_y1_6_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_6_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_6_ce0;
    end else begin
        buff_y1_6_ce0 = buff_y1_6_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_6_ce0_local = 1'b1;
    end else begin
        buff_y1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_6_we0_local = 1'b1;
    end else begin
        buff_y1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_7_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_7_address0;
    end else begin
        buff_y1_7_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_7_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_7_ce0;
    end else begin
        buff_y1_7_ce0 = buff_y1_7_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_7_ce0_local = 1'b1;
    end else begin
        buff_y1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_7_we0_local = 1'b1;
    end else begin
        buff_y1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_address0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_address0;
    end else begin
        buff_y1_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_691_buff_y1_ce0;
    end else begin
        buff_y1_ce0 = buff_y1_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_ce0_local = 1'b1;
    end else begin
        buff_y1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y1_we0_local = 1'b1;
    end else begin
        buff_y1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_1_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_1_address0;
    end else begin
        buff_y2_1_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_1_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_1_ce0;
    end else begin
        buff_y2_1_ce0 = buff_y2_1_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_1_ce0_local = 1'b1;
    end else begin
        buff_y2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_1_we0_local = 1'b1;
    end else begin
        buff_y2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_2_address0;
    end else begin
        buff_y2_2_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_2_ce0;
    end else begin
        buff_y2_2_ce0 = buff_y2_2_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_2_ce0_local = 1'b1;
    end else begin
        buff_y2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_2_we0_local = 1'b1;
    end else begin
        buff_y2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_3_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_3_address0;
    end else begin
        buff_y2_3_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_3_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_3_ce0;
    end else begin
        buff_y2_3_ce0 = buff_y2_3_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_3_ce0_local = 1'b1;
    end else begin
        buff_y2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_3_we0_local = 1'b1;
    end else begin
        buff_y2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_4_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_4_address0;
    end else begin
        buff_y2_4_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_4_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_4_ce0;
    end else begin
        buff_y2_4_ce0 = buff_y2_4_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_4_ce0_local = 1'b1;
    end else begin
        buff_y2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_4_we0_local = 1'b1;
    end else begin
        buff_y2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_5_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_5_address0;
    end else begin
        buff_y2_5_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_5_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_5_ce0;
    end else begin
        buff_y2_5_ce0 = buff_y2_5_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_5_ce0_local = 1'b1;
    end else begin
        buff_y2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_5_we0_local = 1'b1;
    end else begin
        buff_y2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_6_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_6_address0;
    end else begin
        buff_y2_6_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_6_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_6_ce0;
    end else begin
        buff_y2_6_ce0 = buff_y2_6_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_6_ce0_local = 1'b1;
    end else begin
        buff_y2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_6_we0_local = 1'b1;
    end else begin
        buff_y2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_7_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_7_address0;
    end else begin
        buff_y2_7_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_7_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_7_ce0;
    end else begin
        buff_y2_7_ce0 = buff_y2_7_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_7_ce0_local = 1'b1;
    end else begin
        buff_y2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_7_we0_local = 1'b1;
    end else begin
        buff_y2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_address0;
    end else begin
        buff_y2_address0 = zext_ln6_fu_842_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_748_buff_y2_ce0;
    end else begin
        buff_y2_ce0 = buff_y2_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_ce0_local = 1'b1;
    end else begin
        buff_y2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (trunc_ln13_1_fu_830_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_we0_local = 1'b1;
    end else begin
        buff_y2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_971_ce = grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_971_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_971_ce = grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_971_p_ce;
    end else begin
        grp_fu_971_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_971_p0 = grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_971_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_971_p0 = grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_971_p_din0;
    end else begin
        grp_fu_971_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_971_p1 = grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_971_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_971_p1 = grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_971_p_din1;
    end else begin
        grp_fu_971_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_975_ce = grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_975_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_975_ce = grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_975_p_ce;
    end else begin
        grp_fu_975_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_975_p0 = grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_975_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_975_p0 = grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_975_p_din0;
    end else begin
        grp_fu_975_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_975_p1 = grp_mvt_Pipeline_lp3_lp4_fu_748_grp_fu_975_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_975_p1 = grp_mvt_Pipeline_lp1_lp2_fu_691_grp_fu_975_p_din1;
    end else begin
        grp_fu_975_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        x1_ce0_local = 1'b1;
    end else begin
        x1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        x1_out_write = grp_mvt_Pipeline_lpwr_fu_776_x1_out_write;
    end else begin
        x1_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        x2_ce0_local = 1'b1;
    end else begin
        x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        x2_out_write = grp_mvt_Pipeline_lpwr_fu_776_x2_out_write;
    end else begin
        x2_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y1_ce0_local = 1'b1;
    end else begin
        y1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        y2_blk_n = y2_empty_n;
    end else begin
        y2_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        y2_read_local = 1'b1;
    end else begin
        y2_read_local = 1'b0;
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
            if (((icmp_ln13_fu_808_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_mvt_Pipeline_lprd_2_fu_719_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((grp_mvt_Pipeline_lp1_lp2_fu_691_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_mvt_Pipeline_lp3_lp4_fu_748_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_mvt_Pipeline_lpwr_fu_776_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_mvt_Pipeline_lprd_2_fu_719_A_0_address0;
assign A_0_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_A_0_ce0;
assign A_1_address0 = grp_mvt_Pipeline_lprd_2_fu_719_A_1_address0;
assign A_1_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_A_1_ce0;
assign A_2_address0 = grp_mvt_Pipeline_lprd_2_fu_719_A_2_address0;
assign A_2_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_A_2_ce0;
assign A_3_address0 = grp_mvt_Pipeline_lprd_2_fu_719_A_3_address0;
assign A_3_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_A_3_ce0;
assign A_4_address0 = grp_mvt_Pipeline_lprd_2_fu_719_A_4_address0;
assign A_4_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_A_4_ce0;
assign A_5_address0 = grp_mvt_Pipeline_lprd_2_fu_719_A_5_address0;
assign A_5_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_A_5_ce0;
assign A_6_address0 = grp_mvt_Pipeline_lprd_2_fu_719_A_6_address0;
assign A_6_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_A_6_ce0;
assign A_7_address0 = grp_mvt_Pipeline_lprd_2_fu_719_A_7_address0;
assign A_7_ce0 = grp_mvt_Pipeline_lprd_2_fu_719_A_7_ce0;
assign add_ln13_fu_814_p2 = (i_fu_98 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln14_fu_878_p1 = x1_q0;
assign bitcast_ln15_fu_890_p1 = x2_q0;
assign bitcast_ln16_fu_902_p1 = y1_q0;
assign bitcast_ln17_fu_914_p1 = y2_dout;
assign grp_mvt_Pipeline_lp1_lp2_fu_691_ap_start = grp_mvt_Pipeline_lp1_lp2_fu_691_ap_start_reg;
assign grp_mvt_Pipeline_lp3_lp4_fu_748_ap_start = grp_mvt_Pipeline_lp3_lp4_fu_748_ap_start_reg;
assign grp_mvt_Pipeline_lprd_2_fu_719_ap_start = grp_mvt_Pipeline_lprd_2_fu_719_ap_start_reg;
assign grp_mvt_Pipeline_lpwr_fu_776_ap_start = grp_mvt_Pipeline_lpwr_fu_776_ap_start_reg;
assign icmp_ln13_fu_808_p2 = ((i_fu_98 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_833_p4 = {{i_fu_98[5:3]}};
assign trunc_ln13_1_fu_830_p1 = i_fu_98[2:0];
assign trunc_ln13_fu_827_p1 = i_fu_98[5:0];
assign x1_address0 = zext_ln13_fu_820_p1;
assign x1_ce0 = x1_ce0_local;
assign x1_out_din = grp_mvt_Pipeline_lpwr_fu_776_x1_out_din;
assign x2_address0 = zext_ln13_fu_820_p1;
assign x2_ce0 = x2_ce0_local;
assign x2_out_din = grp_mvt_Pipeline_lpwr_fu_776_x2_out_din;
assign y1_address0 = zext_ln13_fu_820_p1;
assign y1_ce0 = y1_ce0_local;
assign y2_read = y2_read_local;
assign zext_ln13_fu_820_p1 = i_fu_98;
assign zext_ln6_fu_842_p1 = lshr_ln6_fu_833_p4;
endmodule 