module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,A_4_address0,A_4_ce0,A_4_q0,A_5_address0,A_5_ce0,A_5_q0,A_6_address0,A_6_ce0,A_6_q0,A_7_address0,A_7_ce0,A_7_q0,p_address0,p_ce0,p_q0,r_address0,r_ce0,r_q0,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write); 
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
output  [5:0] p_address0;
output   p_ce0;
input  [31:0] p_q0;
output  [5:0] r_address0;
output   r_ce0;
input  [31:0] r_q0;
output  [31:0] s_out_din;
input   s_out_full_n;
output   s_out_write;
output  [31:0] q_out_din;
input   q_out_full_n;
output   q_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_out_write;
reg q_out_write;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln13_fu_807_p2;
reg   [6:0] add_ln13_reg_911;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_819_p1;
reg   [5:0] trunc_ln13_reg_926;
wire    ap_CS_fsm_state3;
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
reg   [2:0] buff_p_address0;
reg    buff_p_ce0;
wire   [31:0] buff_p_q0;
reg   [2:0] buff_p_1_address0;
reg    buff_p_1_ce0;
wire   [31:0] buff_p_1_q0;
reg   [2:0] buff_p_2_address0;
reg    buff_p_2_ce0;
wire   [31:0] buff_p_2_q0;
reg   [2:0] buff_p_3_address0;
reg    buff_p_3_ce0;
wire   [31:0] buff_p_3_q0;
reg   [2:0] buff_p_4_address0;
reg    buff_p_4_ce0;
wire   [31:0] buff_p_4_q0;
reg   [2:0] buff_p_5_address0;
reg    buff_p_5_ce0;
wire   [31:0] buff_p_5_q0;
reg   [2:0] buff_p_6_address0;
reg    buff_p_6_ce0;
wire   [31:0] buff_p_6_q0;
reg   [2:0] buff_p_7_address0;
reg    buff_p_7_ce0;
wire   [31:0] buff_p_7_q0;
reg   [2:0] buff_r_address0;
reg    buff_r_ce0;
wire   [31:0] buff_r_q0;
reg   [2:0] buff_r_1_address0;
reg    buff_r_1_ce0;
wire   [31:0] buff_r_1_q0;
reg   [2:0] buff_r_2_address0;
reg    buff_r_2_ce0;
wire   [31:0] buff_r_2_q0;
reg   [2:0] buff_r_3_address0;
reg    buff_r_3_ce0;
wire   [31:0] buff_r_3_q0;
reg   [2:0] buff_r_4_address0;
reg    buff_r_4_ce0;
wire   [31:0] buff_r_4_q0;
reg   [2:0] buff_r_5_address0;
reg    buff_r_5_ce0;
wire   [31:0] buff_r_5_q0;
reg   [2:0] buff_r_6_address0;
reg    buff_r_6_ce0;
wire   [31:0] buff_r_6_q0;
reg   [2:0] buff_r_7_address0;
reg    buff_r_7_ce0;
wire   [31:0] buff_r_7_q0;
reg   [2:0] buff_s_out_address0;
reg    buff_s_out_ce0;
reg    buff_s_out_we0;
reg   [31:0] buff_s_out_d0;
wire   [31:0] buff_s_out_q0;
reg   [2:0] buff_s_out_1_address0;
reg    buff_s_out_1_ce0;
reg    buff_s_out_1_we0;
reg   [31:0] buff_s_out_1_d0;
wire   [31:0] buff_s_out_1_q0;
reg   [2:0] buff_s_out_2_address0;
reg    buff_s_out_2_ce0;
reg    buff_s_out_2_we0;
reg   [31:0] buff_s_out_2_d0;
wire   [31:0] buff_s_out_2_q0;
reg   [2:0] buff_s_out_3_address0;
reg    buff_s_out_3_ce0;
reg    buff_s_out_3_we0;
reg   [31:0] buff_s_out_3_d0;
wire   [31:0] buff_s_out_3_q0;
reg   [2:0] buff_s_out_4_address0;
reg    buff_s_out_4_ce0;
reg    buff_s_out_4_we0;
reg   [31:0] buff_s_out_4_d0;
wire   [31:0] buff_s_out_4_q0;
reg   [2:0] buff_s_out_5_address0;
reg    buff_s_out_5_ce0;
reg    buff_s_out_5_we0;
reg   [31:0] buff_s_out_5_d0;
wire   [31:0] buff_s_out_5_q0;
reg   [2:0] buff_s_out_6_address0;
reg    buff_s_out_6_ce0;
reg    buff_s_out_6_we0;
reg   [31:0] buff_s_out_6_d0;
wire   [31:0] buff_s_out_6_q0;
reg   [2:0] buff_s_out_7_address0;
reg    buff_s_out_7_ce0;
reg    buff_s_out_7_we0;
reg   [31:0] buff_s_out_7_d0;
wire   [31:0] buff_s_out_7_q0;
reg   [2:0] buff_q_out_address0;
reg    buff_q_out_ce0;
reg    buff_q_out_we0;
reg   [31:0] buff_q_out_d0;
wire   [31:0] buff_q_out_q0;
reg   [2:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
reg   [2:0] buff_q_out_2_address0;
reg    buff_q_out_2_ce0;
reg    buff_q_out_2_we0;
reg   [31:0] buff_q_out_2_d0;
wire   [31:0] buff_q_out_2_q0;
reg   [2:0] buff_q_out_3_address0;
reg    buff_q_out_3_ce0;
reg    buff_q_out_3_we0;
reg   [31:0] buff_q_out_3_d0;
wire   [31:0] buff_q_out_3_q0;
reg   [2:0] buff_q_out_4_address0;
reg    buff_q_out_4_ce0;
reg    buff_q_out_4_we0;
reg   [31:0] buff_q_out_4_d0;
wire   [31:0] buff_q_out_4_q0;
reg   [2:0] buff_q_out_5_address0;
reg    buff_q_out_5_ce0;
reg    buff_q_out_5_we0;
reg   [31:0] buff_q_out_5_d0;
wire   [31:0] buff_q_out_5_q0;
reg   [2:0] buff_q_out_6_address0;
reg    buff_q_out_6_ce0;
reg    buff_q_out_6_we0;
reg   [31:0] buff_q_out_6_d0;
wire   [31:0] buff_q_out_6_q0;
reg   [2:0] buff_q_out_7_address0;
reg    buff_q_out_7_ce0;
reg    buff_q_out_7_we0;
reg   [31:0] buff_q_out_7_d0;
wire   [31:0] buff_q_out_7_q0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_ap_start;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_ap_done;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_ap_idle;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_ap_ready;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_4_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_5_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_6_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_7_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_d0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_934_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_934_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_934_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_934_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_938_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_938_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_938_p_ce;
wire    grp_bicg_Pipeline_lprd_2_fu_712_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_712_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_712_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_712_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_A_0_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_A_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_d0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_ap_start;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_ap_done;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_ap_idle;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_d0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_934_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_934_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_934_p_opcode;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_934_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_938_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_938_p_din1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_938_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_769_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_769_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_769_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_769_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_769_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_769_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_769_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_769_q_out_write;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_7_ce0;
reg    grp_bicg_Pipeline_lp1_lp2_fu_684_ap_start_reg;
wire   [0:0] icmp_ln13_fu_801_p2;
wire    ap_CS_fsm_state6;
reg    grp_bicg_Pipeline_lprd_2_fu_712_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_bicg_Pipeline_lp3_lp4_fu_741_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_bicg_Pipeline_lpwr_fu_769_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire   [63:0] zext_ln13_fu_813_p1;
wire   [63:0] zext_ln5_fu_834_p1;
reg   [6:0] i_fu_94;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_p_6_we0_local;
wire   [2:0] trunc_ln13_1_fu_822_p1;
wire   [31:0] bitcast_ln14_fu_870_p1;
reg    buff_p_6_ce0_local;
reg    buff_r_6_we0_local;
wire   [31:0] bitcast_ln15_fu_882_p1;
reg    buff_r_6_ce0_local;
reg    buff_s_out_6_we0_local;
reg    buff_s_out_6_ce0_local;
reg    buff_q_out_6_we0_local;
reg    buff_q_out_6_ce0_local;
reg    buff_p_5_we0_local;
reg    buff_p_5_ce0_local;
reg    buff_r_5_we0_local;
reg    buff_r_5_ce0_local;
reg    buff_s_out_5_we0_local;
reg    buff_s_out_5_ce0_local;
reg    buff_q_out_5_we0_local;
reg    buff_q_out_5_ce0_local;
reg    buff_p_4_we0_local;
reg    buff_p_4_ce0_local;
reg    buff_r_4_we0_local;
reg    buff_r_4_ce0_local;
reg    buff_s_out_4_we0_local;
reg    buff_s_out_4_ce0_local;
reg    buff_q_out_4_we0_local;
reg    buff_q_out_4_ce0_local;
reg    buff_p_3_we0_local;
reg    buff_p_3_ce0_local;
reg    buff_r_3_we0_local;
reg    buff_r_3_ce0_local;
reg    buff_s_out_3_we0_local;
reg    buff_s_out_3_ce0_local;
reg    buff_q_out_3_we0_local;
reg    buff_q_out_3_ce0_local;
reg    buff_p_2_we0_local;
reg    buff_p_2_ce0_local;
reg    buff_r_2_we0_local;
reg    buff_r_2_ce0_local;
reg    buff_s_out_2_we0_local;
reg    buff_s_out_2_ce0_local;
reg    buff_q_out_2_we0_local;
reg    buff_q_out_2_ce0_local;
reg    buff_p_1_we0_local;
reg    buff_p_1_ce0_local;
reg    buff_r_1_we0_local;
reg    buff_r_1_ce0_local;
reg    buff_s_out_1_we0_local;
reg    buff_s_out_1_ce0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_1_ce0_local;
reg    buff_p_we0_local;
reg    buff_p_ce0_local;
reg    buff_r_we0_local;
reg    buff_r_ce0_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_q_out_we0_local;
reg    buff_q_out_ce0_local;
reg    buff_p_7_we0_local;
reg    buff_p_7_ce0_local;
reg    buff_r_7_we0_local;
reg    buff_r_7_ce0_local;
reg    buff_s_out_7_we0_local;
reg    buff_s_out_7_ce0_local;
reg    buff_q_out_7_we0_local;
reg    buff_q_out_7_ce0_local;
wire   [2:0] lshr_ln5_fu_825_p4;
wire   [31:0] grp_fu_934_p2;
reg   [31:0] grp_fu_934_p0;
reg   [31:0] grp_fu_934_p1;
reg    grp_fu_934_ce;
wire   [31:0] grp_fu_938_p2;
reg   [31:0] grp_fu_938_p0;
reg   [31:0] grp_fu_938_p1;
reg    grp_fu_938_ce;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
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
#0 grp_bicg_Pipeline_lp1_lp2_fu_684_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lprd_2_fu_712_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_lp4_fu_741_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_769_ap_start_reg = 1'b0;
#0 i_fu_94 = 7'd0;
end
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_d0),.q0(buff_A_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_d0),.q0(buff_A_1_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_d0),.q0(buff_A_2_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_d0),.q0(buff_A_3_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_d0),.q0(buff_A_4_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_d0),.q0(buff_A_5_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_d0),.q0(buff_A_6_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_d0),.q0(buff_A_7_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0),.ce0(buff_p_ce0),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_870_p1),.q0(buff_p_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0),.ce0(buff_p_1_ce0),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_870_p1),.q0(buff_p_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0),.ce0(buff_p_2_ce0),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_870_p1),.q0(buff_p_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0),.ce0(buff_p_3_ce0),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_870_p1),.q0(buff_p_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_4_address0),.ce0(buff_p_4_ce0),.we0(buff_p_4_we0_local),.d0(bitcast_ln14_fu_870_p1),.q0(buff_p_4_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_5_address0),.ce0(buff_p_5_ce0),.we0(buff_p_5_we0_local),.d0(bitcast_ln14_fu_870_p1),.q0(buff_p_5_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_6_address0),.ce0(buff_p_6_ce0),.we0(buff_p_6_we0_local),.d0(bitcast_ln14_fu_870_p1),.q0(buff_p_6_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_7_address0),.ce0(buff_p_7_ce0),.we0(buff_p_7_we0_local),.d0(bitcast_ln14_fu_870_p1),.q0(buff_p_7_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_882_p1),.q0(buff_r_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_882_p1),.q0(buff_r_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_882_p1),.q0(buff_r_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_882_p1),.q0(buff_r_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_4_address0),.ce0(buff_r_4_ce0),.we0(buff_r_4_we0_local),.d0(bitcast_ln15_fu_882_p1),.q0(buff_r_4_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_5_address0),.ce0(buff_r_5_ce0),.we0(buff_r_5_we0_local),.d0(bitcast_ln15_fu_882_p1),.q0(buff_r_5_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_6_address0),.ce0(buff_r_6_ce0),.we0(buff_r_6_we0_local),.d0(bitcast_ln15_fu_882_p1),.q0(buff_r_6_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_7_address0),.ce0(buff_r_7_ce0),.we0(buff_r_7_we0_local),.d0(bitcast_ln15_fu_882_p1),.q0(buff_r_7_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0),.d0(buff_s_out_d0),.q0(buff_s_out_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0),.d0(buff_s_out_1_d0),.q0(buff_s_out_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_2_address0),.ce0(buff_s_out_2_ce0),.we0(buff_s_out_2_we0),.d0(buff_s_out_2_d0),.q0(buff_s_out_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_3_address0),.ce0(buff_s_out_3_ce0),.we0(buff_s_out_3_we0),.d0(buff_s_out_3_d0),.q0(buff_s_out_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_4_address0),.ce0(buff_s_out_4_ce0),.we0(buff_s_out_4_we0),.d0(buff_s_out_4_d0),.q0(buff_s_out_4_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_5_address0),.ce0(buff_s_out_5_ce0),.we0(buff_s_out_5_we0),.d0(buff_s_out_5_d0),.q0(buff_s_out_5_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_6_address0),.ce0(buff_s_out_6_ce0),.we0(buff_s_out_6_we0),.d0(buff_s_out_6_d0),.q0(buff_s_out_6_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_7_address0),.ce0(buff_s_out_7_ce0),.we0(buff_s_out_7_we0),.d0(buff_s_out_7_d0),.q0(buff_s_out_7_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_2_address0),.ce0(buff_q_out_2_ce0),.we0(buff_q_out_2_we0),.d0(buff_q_out_2_d0),.q0(buff_q_out_2_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_3_address0),.ce0(buff_q_out_3_ce0),.we0(buff_q_out_3_we0),.d0(buff_q_out_3_d0),.q0(buff_q_out_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_4_address0),.ce0(buff_q_out_4_ce0),.we0(buff_q_out_4_we0),.d0(buff_q_out_4_d0),.q0(buff_q_out_4_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_5_address0),.ce0(buff_q_out_5_ce0),.we0(buff_q_out_5_we0),.d0(buff_q_out_5_d0),.q0(buff_q_out_5_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_6_address0),.ce0(buff_q_out_6_ce0),.we0(buff_q_out_6_we0),.d0(buff_q_out_6_d0),.q0(buff_q_out_6_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_7_address0),.ce0(buff_q_out_7_ce0),.we0(buff_q_out_7_we0),.d0(buff_q_out_7_d0),.q0(buff_q_out_7_q0));
bicg_bicg_Pipeline_lp1_lp2 grp_bicg_Pipeline_lp1_lp2_fu_684(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_lp2_fu_684_ap_start),.ap_done(grp_bicg_Pipeline_lp1_lp2_fu_684_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_lp2_fu_684_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_lp2_fu_684_ap_ready),.buff_r_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.buff_r_4_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_4_address0),.buff_r_4_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_4_ce0),.buff_r_4_q0(buff_r_4_q0),.buff_r_5_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_5_address0),.buff_r_5_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_5_ce0),.buff_r_5_q0(buff_r_5_q0),.buff_r_6_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_6_address0),.buff_r_6_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_6_ce0),.buff_r_6_q0(buff_r_6_q0),.buff_r_7_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_7_address0),.buff_r_7_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_7_ce0),.buff_r_7_q0(buff_r_7_q0),.buff_A_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_s_out_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_ce0),.buff_s_out_we0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_we0),.buff_s_out_d0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_d0),.buff_s_out_q0(buff_s_out_q0),.buff_s_out_4_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_address0),.buff_s_out_4_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_ce0),.buff_s_out_4_we0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_we0),.buff_s_out_4_d0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_d0),.buff_s_out_4_q0(buff_s_out_4_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_ce0),.buff_s_out_1_we0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_we0),.buff_s_out_1_d0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_d0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_s_out_5_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_address0),.buff_s_out_5_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_ce0),.buff_s_out_5_we0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_we0),.buff_s_out_5_d0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_d0),.buff_s_out_5_q0(buff_s_out_5_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_ce0),.buff_s_out_2_we0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_we0),.buff_s_out_2_d0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_d0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_s_out_6_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_address0),.buff_s_out_6_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_ce0),.buff_s_out_6_we0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_we0),.buff_s_out_6_d0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_d0),.buff_s_out_6_q0(buff_s_out_6_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_ce0),.buff_s_out_3_we0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_we0),.buff_s_out_3_d0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_d0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_s_out_7_address0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_address0),.buff_s_out_7_ce0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_ce0),.buff_s_out_7_we0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_we0),.buff_s_out_7_d0(grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_d0),.buff_s_out_7_q0(buff_s_out_7_q0),.grp_fu_934_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_934_p_din0),.grp_fu_934_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_934_p_din1),.grp_fu_934_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_934_p_opcode),.grp_fu_934_p_dout0(grp_fu_934_p2),.grp_fu_934_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_934_p_ce),.grp_fu_938_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_938_p_din0),.grp_fu_938_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_938_p_din1),.grp_fu_938_p_dout0(grp_fu_938_p2),.grp_fu_938_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_938_p_ce));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_712(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_712_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_712_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_712_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_712_ap_ready),.i(trunc_ln13_reg_926),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_712_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_712_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_712_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_712_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_712_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_712_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_712_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_712_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_bicg_Pipeline_lprd_2_fu_712_A_4_address0),.A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_712_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_bicg_Pipeline_lprd_2_fu_712_A_5_address0),.A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_712_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_bicg_Pipeline_lprd_2_fu_712_A_6_address0),.A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_712_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_bicg_Pipeline_lprd_2_fu_712_A_7_address0),.A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_712_A_7_ce0),.A_7_q0(A_7_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_d0),.buff_A_4_address0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_ce0),.buff_A_4_we0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_we0),.buff_A_4_d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_d0),.buff_A_5_address0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_ce0),.buff_A_5_we0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_we0),.buff_A_5_d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_d0),.buff_A_6_address0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_ce0),.buff_A_6_we0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_we0),.buff_A_6_d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_d0),.buff_A_7_address0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_ce0),.buff_A_7_we0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_we0),.buff_A_7_d0(grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_d0));
bicg_bicg_Pipeline_lp3_lp4 grp_bicg_Pipeline_lp3_lp4_fu_741(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_lp4_fu_741_ap_start),.ap_done(grp_bicg_Pipeline_lp3_lp4_fu_741_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_lp4_fu_741_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_lp4_fu_741_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_p_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_address0),.buff_p_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_ce0),.buff_p_q0(buff_p_q0),.buff_p_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_1_address0),.buff_p_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_1_ce0),.buff_p_1_q0(buff_p_1_q0),.buff_p_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_2_address0),.buff_p_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_2_ce0),.buff_p_2_q0(buff_p_2_q0),.buff_p_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_3_address0),.buff_p_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_3_ce0),.buff_p_3_q0(buff_p_3_q0),.buff_p_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_4_address0),.buff_p_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_4_ce0),.buff_p_4_q0(buff_p_4_q0),.buff_p_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_5_address0),.buff_p_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_5_ce0),.buff_p_5_q0(buff_p_5_q0),.buff_p_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_6_address0),.buff_p_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_6_ce0),.buff_p_6_q0(buff_p_6_q0),.buff_p_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_7_address0),.buff_p_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_7_ce0),.buff_p_7_q0(buff_p_7_q0),.buff_q_out_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_d0),.buff_q_out_q0(buff_q_out_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_d0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_d0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_d0),.buff_q_out_3_q0(buff_q_out_3_q0),.buff_q_out_4_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_ce0),.buff_q_out_4_we0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_we0),.buff_q_out_4_d0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_d0),.buff_q_out_4_q0(buff_q_out_4_q0),.buff_q_out_5_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_ce0),.buff_q_out_5_we0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_we0),.buff_q_out_5_d0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_d0),.buff_q_out_5_q0(buff_q_out_5_q0),.buff_q_out_6_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_ce0),.buff_q_out_6_we0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_we0),.buff_q_out_6_d0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_d0),.buff_q_out_6_q0(buff_q_out_6_q0),.buff_q_out_7_address0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_ce0),.buff_q_out_7_we0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_we0),.buff_q_out_7_d0(grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_d0),.buff_q_out_7_q0(buff_q_out_7_q0),.grp_fu_934_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_934_p_din0),.grp_fu_934_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_934_p_din1),.grp_fu_934_p_opcode(grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_934_p_opcode),.grp_fu_934_p_dout0(grp_fu_934_p2),.grp_fu_934_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_934_p_ce),.grp_fu_938_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_938_p_din0),.grp_fu_938_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_938_p_din1),.grp_fu_938_p_dout0(grp_fu_938_p2),.grp_fu_938_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_938_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_769(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_769_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_769_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_769_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_769_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_769_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_769_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_769_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_769_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0),.buff_s_out_4_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_4_address0),.buff_s_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_4_ce0),.buff_s_out_4_q0(buff_s_out_4_q0),.buff_q_out_4_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_4_ce0),.buff_q_out_4_q0(buff_q_out_4_q0),.buff_s_out_5_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_5_address0),.buff_s_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_5_ce0),.buff_s_out_5_q0(buff_s_out_5_q0),.buff_q_out_5_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_5_ce0),.buff_q_out_5_q0(buff_q_out_5_q0),.buff_s_out_6_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_6_address0),.buff_s_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_6_ce0),.buff_s_out_6_q0(buff_s_out_6_q0),.buff_q_out_6_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_6_ce0),.buff_q_out_6_q0(buff_q_out_6_q0),.buff_s_out_7_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_7_address0),.buff_s_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_7_ce0),.buff_s_out_7_q0(buff_s_out_7_q0),.buff_q_out_7_address0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_7_ce0),.buff_q_out_7_q0(buff_q_out_7_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_934_p0),.din1(grp_fu_934_p1),.ce(grp_fu_934_ce),.dout(grp_fu_934_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U94(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_938_p0),.din1(grp_fu_938_p1),.ce(grp_fu_938_ce),.dout(grp_fu_938_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_lp2_fu_684_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln13_fu_801_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_bicg_Pipeline_lp1_lp2_fu_684_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_lp2_fu_684_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_lp2_fu_684_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_lp4_fu_741_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_741_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_lp4_fu_741_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_741_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_712_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_bicg_Pipeline_lprd_2_fu_712_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_712_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_712_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_769_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_bicg_Pipeline_lpwr_fu_769_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_769_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_769_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_94 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_94 <= add_ln13_reg_911;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_911 <= add_ln13_fu_807_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_926 <= trunc_ln13_fu_819_p1;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_769_ap_done == 1'b0)) begin
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
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_712_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_lp2_fu_684_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_lp4_fu_741_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_bicg_Pipeline_lpwr_fu_769_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_769_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_we0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_we0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_we0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_we0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_712_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_1_address0;
    end else begin
        buff_p_1_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_1_ce0;
    end else begin
        buff_p_1_ce0 = buff_p_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_2_address0;
    end else begin
        buff_p_2_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_2_ce0;
    end else begin
        buff_p_2_ce0 = buff_p_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_2_ce0_local = 1'b1;
    end else begin
        buff_p_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_2_we0_local = 1'b1;
    end else begin
        buff_p_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_3_address0;
    end else begin
        buff_p_3_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_3_ce0;
    end else begin
        buff_p_3_ce0 = buff_p_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_3_ce0_local = 1'b1;
    end else begin
        buff_p_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_3_we0_local = 1'b1;
    end else begin
        buff_p_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_4_address0;
    end else begin
        buff_p_4_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_4_ce0;
    end else begin
        buff_p_4_ce0 = buff_p_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_4_ce0_local = 1'b1;
    end else begin
        buff_p_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_4_we0_local = 1'b1;
    end else begin
        buff_p_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_5_address0;
    end else begin
        buff_p_5_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_5_ce0;
    end else begin
        buff_p_5_ce0 = buff_p_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_5_ce0_local = 1'b1;
    end else begin
        buff_p_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_5_we0_local = 1'b1;
    end else begin
        buff_p_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_6_address0;
    end else begin
        buff_p_6_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_6_ce0;
    end else begin
        buff_p_6_ce0 = buff_p_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_6_ce0_local = 1'b1;
    end else begin
        buff_p_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_6_we0_local = 1'b1;
    end else begin
        buff_p_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_7_address0;
    end else begin
        buff_p_7_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_7_ce0;
    end else begin
        buff_p_7_ce0 = buff_p_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_7_ce0_local = 1'b1;
    end else begin
        buff_p_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_7_we0_local = 1'b1;
    end else begin
        buff_p_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_address0;
    end else begin
        buff_p_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_p_ce0;
    end else begin
        buff_p_ce0 = buff_p_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_ce0;
    end else begin
        buff_q_out_1_ce0 = buff_q_out_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_1_ce0_local = 1'b1;
    end else begin
        buff_q_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_ce0;
    end else begin
        buff_q_out_2_ce0 = buff_q_out_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_2_ce0_local = 1'b1;
    end else begin
        buff_q_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_ce0;
    end else begin
        buff_q_out_3_ce0 = buff_q_out_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_3_ce0_local = 1'b1;
    end else begin
        buff_q_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_address0;
    end else begin
        buff_q_out_4_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_ce0;
    end else begin
        buff_q_out_4_ce0 = buff_q_out_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_4_ce0_local = 1'b1;
    end else begin
        buff_q_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_4_d0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_d0;
    end else begin
        buff_q_out_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_4_we0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_4_we0;
    end else begin
        buff_q_out_4_we0 = buff_q_out_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_4_we0_local = 1'b1;
    end else begin
        buff_q_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_address0;
    end else begin
        buff_q_out_5_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_ce0;
    end else begin
        buff_q_out_5_ce0 = buff_q_out_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_5_ce0_local = 1'b1;
    end else begin
        buff_q_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_5_d0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_d0;
    end else begin
        buff_q_out_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_5_we0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_5_we0;
    end else begin
        buff_q_out_5_we0 = buff_q_out_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_5_we0_local = 1'b1;
    end else begin
        buff_q_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_address0;
    end else begin
        buff_q_out_6_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_ce0;
    end else begin
        buff_q_out_6_ce0 = buff_q_out_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_6_ce0_local = 1'b1;
    end else begin
        buff_q_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_6_d0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_d0;
    end else begin
        buff_q_out_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_6_we0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_6_we0;
    end else begin
        buff_q_out_6_we0 = buff_q_out_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_6_we0_local = 1'b1;
    end else begin
        buff_q_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_address0;
    end else begin
        buff_q_out_7_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_ce0;
    end else begin
        buff_q_out_7_ce0 = buff_q_out_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_7_ce0_local = 1'b1;
    end else begin
        buff_q_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_7_d0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_d0;
    end else begin
        buff_q_out_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_7_we0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_7_we0;
    end else begin
        buff_q_out_7_we0 = buff_q_out_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_7_we0_local = 1'b1;
    end else begin
        buff_q_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_ce0;
    end else begin
        buff_q_out_ce0 = buff_q_out_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_ce0_local = 1'b1;
    end else begin
        buff_q_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_lp4_fu_741_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_1_ce0;
    end else begin
        buff_r_1_ce0 = buff_r_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_1_ce0_local = 1'b1;
    end else begin
        buff_r_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_2_ce0;
    end else begin
        buff_r_2_ce0 = buff_r_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_2_ce0_local = 1'b1;
    end else begin
        buff_r_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_3_ce0;
    end else begin
        buff_r_3_ce0 = buff_r_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_3_ce0_local = 1'b1;
    end else begin
        buff_r_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_4_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_4_address0;
    end else begin
        buff_r_4_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_4_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_4_ce0;
    end else begin
        buff_r_4_ce0 = buff_r_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_4_ce0_local = 1'b1;
    end else begin
        buff_r_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_4_we0_local = 1'b1;
    end else begin
        buff_r_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_5_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_5_address0;
    end else begin
        buff_r_5_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_5_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_5_ce0;
    end else begin
        buff_r_5_ce0 = buff_r_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_5_ce0_local = 1'b1;
    end else begin
        buff_r_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_5_we0_local = 1'b1;
    end else begin
        buff_r_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_6_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_6_address0;
    end else begin
        buff_r_6_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_6_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_6_ce0;
    end else begin
        buff_r_6_ce0 = buff_r_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_6_ce0_local = 1'b1;
    end else begin
        buff_r_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_6_we0_local = 1'b1;
    end else begin
        buff_r_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_7_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_7_address0;
    end else begin
        buff_r_7_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_7_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_7_ce0;
    end else begin
        buff_r_7_ce0 = buff_r_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_7_ce0_local = 1'b1;
    end else begin
        buff_r_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_7_we0_local = 1'b1;
    end else begin
        buff_r_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_r_ce0;
    end else begin
        buff_r_ce0 = buff_r_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_d0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_d0;
    end else begin
        buff_s_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_we0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_1_we0;
    end else begin
        buff_s_out_1_we0 = buff_s_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_d0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_d0;
    end else begin
        buff_s_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_we0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_2_we0;
    end else begin
        buff_s_out_2_we0 = buff_s_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_d0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_d0;
    end else begin
        buff_s_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_we0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_3_we0;
    end else begin
        buff_s_out_3_we0 = buff_s_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_address0;
    end else begin
        buff_s_out_4_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_ce0;
    end else begin
        buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_d0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_d0;
    end else begin
        buff_s_out_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_we0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_4_we0;
    end else begin
        buff_s_out_4_we0 = buff_s_out_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_4_we0_local = 1'b1;
    end else begin
        buff_s_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_address0;
    end else begin
        buff_s_out_5_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_ce0;
    end else begin
        buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_d0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_d0;
    end else begin
        buff_s_out_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_we0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_5_we0;
    end else begin
        buff_s_out_5_we0 = buff_s_out_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_5_we0_local = 1'b1;
    end else begin
        buff_s_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_address0;
    end else begin
        buff_s_out_6_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_ce0;
    end else begin
        buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_d0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_d0;
    end else begin
        buff_s_out_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_we0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_6_we0;
    end else begin
        buff_s_out_6_we0 = buff_s_out_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_6_we0_local = 1'b1;
    end else begin
        buff_s_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_address0;
    end else begin
        buff_s_out_7_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_ce0;
    end else begin
        buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_d0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_d0;
    end else begin
        buff_s_out_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_we0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_7_we0;
    end else begin
        buff_s_out_7_we0 = buff_s_out_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_7_we0_local = 1'b1;
    end else begin
        buff_s_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = zext_ln5_fu_834_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_769_buff_s_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_d0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_d0;
    end else begin
        buff_s_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_we0 = grp_bicg_Pipeline_lp1_lp2_fu_684_buff_s_out_we0;
    end else begin
        buff_s_out_we0 = buff_s_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_822_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_934_ce = grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_934_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_934_ce = grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_934_p_ce;
    end else begin
        grp_fu_934_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_934_p0 = grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_934_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_934_p0 = grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_934_p_din0;
    end else begin
        grp_fu_934_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_934_p1 = grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_934_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_934_p1 = grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_934_p_din1;
    end else begin
        grp_fu_934_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_938_ce = grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_938_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_938_ce = grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_938_p_ce;
    end else begin
        grp_fu_938_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_938_p0 = grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_938_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_938_p0 = grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_938_p_din0;
    end else begin
        grp_fu_938_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_938_p1 = grp_bicg_Pipeline_lp3_lp4_fu_741_grp_fu_938_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_938_p1 = grp_bicg_Pipeline_lp1_lp2_fu_684_grp_fu_938_p_din1;
    end else begin
        grp_fu_938_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_ce0_local = 1'b1;
    end else begin
        p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        q_out_write = grp_bicg_Pipeline_lpwr_fu_769_q_out_write;
    end else begin
        q_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        r_ce0_local = 1'b1;
    end else begin
        r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        s_out_write = grp_bicg_Pipeline_lpwr_fu_769_s_out_write;
    end else begin
        s_out_write = 1'b0;
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
            if (((icmp_ln13_fu_801_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_bicg_Pipeline_lprd_2_fu_712_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((grp_bicg_Pipeline_lp1_lp2_fu_684_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_bicg_Pipeline_lp3_lp4_fu_741_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_bicg_Pipeline_lpwr_fu_769_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_712_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_712_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_712_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_712_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_A_3_ce0;
assign A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_712_A_4_address0;
assign A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_A_4_ce0;
assign A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_712_A_5_address0;
assign A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_A_5_ce0;
assign A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_712_A_6_address0;
assign A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_A_6_ce0;
assign A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_712_A_7_address0;
assign A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_712_A_7_ce0;
assign add_ln13_fu_807_p2 = (i_fu_94 + 7'd1);
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
assign bitcast_ln14_fu_870_p1 = p_q0;
assign bitcast_ln15_fu_882_p1 = r_q0;
assign grp_bicg_Pipeline_lp1_lp2_fu_684_ap_start = grp_bicg_Pipeline_lp1_lp2_fu_684_ap_start_reg;
assign grp_bicg_Pipeline_lp3_lp4_fu_741_ap_start = grp_bicg_Pipeline_lp3_lp4_fu_741_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_712_ap_start = grp_bicg_Pipeline_lprd_2_fu_712_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_769_ap_start = grp_bicg_Pipeline_lpwr_fu_769_ap_start_reg;
assign icmp_ln13_fu_801_p2 = ((i_fu_94 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_825_p4 = {{i_fu_94[5:3]}};
assign p_address0 = zext_ln13_fu_813_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_769_q_out_din;
assign r_address0 = zext_ln13_fu_813_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_769_s_out_din;
assign trunc_ln13_1_fu_822_p1 = i_fu_94[2:0];
assign trunc_ln13_fu_819_p1 = i_fu_94[5:0];
assign zext_ln13_fu_813_p1 = i_fu_94;
assign zext_ln5_fu_834_p1 = lshr_ln5_fu_825_p4;
endmodule 