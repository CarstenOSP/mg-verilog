
module syrk (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alpha,beta,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,B_0_address0,B_0_ce0,B_0_q0,B_1_address0,B_1_ce0,B_1_q0,B_2_address0,B_2_ce0,B_2_q0,B_3_address0,B_3_ce0,B_3_q0,C_out_0_din,C_out_0_full_n,C_out_0_write,C_out_1_din,C_out_1_full_n,C_out_1_write,C_out_2_din,C_out_2_full_n,C_out_2_write,C_out_3_din,C_out_3_full_n,C_out_3_write);  
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] alpha;
input  [31:0] beta;
output  [9:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [9:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [9:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [9:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
output  [9:0] B_0_address0;
output   B_0_ce0;
input  [31:0] B_0_q0;
output  [9:0] B_1_address0;
output   B_1_ce0;
input  [31:0] B_1_q0;
output  [9:0] B_2_address0;
output   B_2_ce0;
input  [31:0] B_2_q0;
output  [9:0] B_3_address0;
output   B_3_ce0;
input  [31:0] B_3_q0;
output  [31:0] C_out_0_din;
input   C_out_0_full_n;
output   C_out_0_write;
output  [31:0] C_out_1_din;
input   C_out_1_full_n;
output   C_out_1_write;
output  [31:0] C_out_2_din;
input   C_out_2_full_n;
output   C_out_2_write;
output  [31:0] C_out_3_din;
input   C_out_3_full_n;
output   C_out_3_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg C_out_0_write;
reg C_out_1_write;
reg C_out_2_write;
reg C_out_3_write;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
reg   [9:0] buff_A0_address0;
reg    buff_A0_ce0;
reg    buff_A0_we0;
wire   [31:0] buff_A0_q0;
reg    buff_A0_ce1;
wire   [31:0] buff_A0_q1;
reg    buff_A0_ce2;
wire   [31:0] buff_A0_q2;
reg    buff_A0_ce3;
wire   [31:0] buff_A0_q3;
reg    buff_A0_ce4;
wire   [31:0] buff_A0_q4;
reg    buff_A0_ce5;
wire   [31:0] buff_A0_q5;
reg    buff_A0_ce6;
wire   [31:0] buff_A0_q6;
reg    buff_A0_ce7;
wire   [31:0] buff_A0_q7;
reg   [9:0] buff_A0_1_address0;
reg    buff_A0_1_ce0;
reg    buff_A0_1_we0;
wire   [31:0] buff_A0_1_q0;
reg    buff_A0_1_ce1;
wire   [31:0] buff_A0_1_q1;
reg    buff_A0_1_ce2;
wire   [31:0] buff_A0_1_q2;
reg    buff_A0_1_ce3;
wire   [31:0] buff_A0_1_q3;
reg    buff_A0_1_ce4;
wire   [31:0] buff_A0_1_q4;
reg    buff_A0_1_ce5;
wire   [31:0] buff_A0_1_q5;
reg    buff_A0_1_ce6;
wire   [31:0] buff_A0_1_q6;
reg    buff_A0_1_ce7;
wire   [31:0] buff_A0_1_q7;
reg   [9:0] buff_A0_2_address0;
reg    buff_A0_2_ce0;
reg    buff_A0_2_we0;
wire   [31:0] buff_A0_2_q0;
reg    buff_A0_2_ce1;
wire   [31:0] buff_A0_2_q1;
reg    buff_A0_2_ce2;
wire   [31:0] buff_A0_2_q2;
reg    buff_A0_2_ce3;
wire   [31:0] buff_A0_2_q3;
reg    buff_A0_2_ce4;
wire   [31:0] buff_A0_2_q4;
reg    buff_A0_2_ce5;
wire   [31:0] buff_A0_2_q5;
reg    buff_A0_2_ce6;
wire   [31:0] buff_A0_2_q6;
reg    buff_A0_2_ce7;
wire   [31:0] buff_A0_2_q7;
reg   [9:0] buff_A0_3_address0;
reg    buff_A0_3_ce0;
reg    buff_A0_3_we0;
wire   [31:0] buff_A0_3_q0;
reg    buff_A0_3_ce1;
wire   [31:0] buff_A0_3_q1;
reg    buff_A0_3_ce2;
wire   [31:0] buff_A0_3_q2;
reg    buff_A0_3_ce3;
wire   [31:0] buff_A0_3_q3;
reg    buff_A0_3_ce4;
wire   [31:0] buff_A0_3_q4;
reg    buff_A0_3_ce5;
wire   [31:0] buff_A0_3_q5;
reg    buff_A0_3_ce6;
wire   [31:0] buff_A0_3_q6;
reg    buff_A0_3_ce7;
wire   [31:0] buff_A0_3_q7;
reg   [9:0] buff_A1_address0;
reg    buff_A1_ce0;
reg    buff_A1_we0;
wire   [31:0] buff_A1_q0;
reg    buff_A1_ce1;
wire   [31:0] buff_A1_q1;
reg    buff_A1_ce2;
wire   [31:0] buff_A1_q2;
reg    buff_A1_ce3;
wire   [31:0] buff_A1_q3;
reg    buff_A1_ce4;
wire   [31:0] buff_A1_q4;
reg    buff_A1_ce5;
wire   [31:0] buff_A1_q5;
reg    buff_A1_ce6;
wire   [31:0] buff_A1_q6;
reg    buff_A1_ce7;
wire   [31:0] buff_A1_q7;
reg    buff_A1_ce8;
wire   [31:0] buff_A1_q8;
reg    buff_A1_ce9;
wire   [31:0] buff_A1_q9;
reg    buff_A1_ce10;
wire   [31:0] buff_A1_q10;
reg    buff_A1_ce11;
wire   [31:0] buff_A1_q11;
reg    buff_A1_ce12;
wire   [31:0] buff_A1_q12;
reg    buff_A1_ce13;
wire   [31:0] buff_A1_q13;
reg    buff_A1_ce14;
wire   [31:0] buff_A1_q14;
reg    buff_A1_ce15;
wire   [31:0] buff_A1_q15;
reg   [9:0] buff_A1_1_address0;
reg    buff_A1_1_ce0;
reg    buff_A1_1_we0;
wire   [31:0] buff_A1_1_q0;
reg    buff_A1_1_ce1;
wire   [31:0] buff_A1_1_q1;
reg    buff_A1_1_ce2;
wire   [31:0] buff_A1_1_q2;
reg    buff_A1_1_ce3;
wire   [31:0] buff_A1_1_q3;
reg    buff_A1_1_ce4;
wire   [31:0] buff_A1_1_q4;
reg    buff_A1_1_ce5;
wire   [31:0] buff_A1_1_q5;
reg    buff_A1_1_ce6;
wire   [31:0] buff_A1_1_q6;
reg    buff_A1_1_ce7;
wire   [31:0] buff_A1_1_q7;
reg    buff_A1_1_ce8;
wire   [31:0] buff_A1_1_q8;
reg    buff_A1_1_ce9;
wire   [31:0] buff_A1_1_q9;
reg    buff_A1_1_ce10;
wire   [31:0] buff_A1_1_q10;
reg    buff_A1_1_ce11;
wire   [31:0] buff_A1_1_q11;
reg    buff_A1_1_ce12;
wire   [31:0] buff_A1_1_q12;
reg    buff_A1_1_ce13;
wire   [31:0] buff_A1_1_q13;
reg    buff_A1_1_ce14;
wire   [31:0] buff_A1_1_q14;
reg    buff_A1_1_ce15;
wire   [31:0] buff_A1_1_q15;
reg   [9:0] buff_A1_2_address0;
reg    buff_A1_2_ce0;
reg    buff_A1_2_we0;
wire   [31:0] buff_A1_2_q0;
reg    buff_A1_2_ce1;
wire   [31:0] buff_A1_2_q1;
reg    buff_A1_2_ce2;
wire   [31:0] buff_A1_2_q2;
reg    buff_A1_2_ce3;
wire   [31:0] buff_A1_2_q3;
reg    buff_A1_2_ce4;
wire   [31:0] buff_A1_2_q4;
reg    buff_A1_2_ce5;
wire   [31:0] buff_A1_2_q5;
reg    buff_A1_2_ce6;
wire   [31:0] buff_A1_2_q6;
reg    buff_A1_2_ce7;
wire   [31:0] buff_A1_2_q7;
reg    buff_A1_2_ce8;
wire   [31:0] buff_A1_2_q8;
reg    buff_A1_2_ce9;
wire   [31:0] buff_A1_2_q9;
reg    buff_A1_2_ce10;
wire   [31:0] buff_A1_2_q10;
reg    buff_A1_2_ce11;
wire   [31:0] buff_A1_2_q11;
reg    buff_A1_2_ce12;
wire   [31:0] buff_A1_2_q12;
reg    buff_A1_2_ce13;
wire   [31:0] buff_A1_2_q13;
reg    buff_A1_2_ce14;
wire   [31:0] buff_A1_2_q14;
reg    buff_A1_2_ce15;
wire   [31:0] buff_A1_2_q15;
reg   [9:0] buff_A1_3_address0;
reg    buff_A1_3_ce0;
reg    buff_A1_3_we0;
wire   [31:0] buff_A1_3_q0;
reg    buff_A1_3_ce1;
wire   [31:0] buff_A1_3_q1;
reg    buff_A1_3_ce2;
wire   [31:0] buff_A1_3_q2;
reg    buff_A1_3_ce3;
wire   [31:0] buff_A1_3_q3;
reg    buff_A1_3_ce4;
wire   [31:0] buff_A1_3_q4;
reg    buff_A1_3_ce5;
wire   [31:0] buff_A1_3_q5;
reg    buff_A1_3_ce6;
wire   [31:0] buff_A1_3_q6;
reg    buff_A1_3_ce7;
wire   [31:0] buff_A1_3_q7;
reg    buff_A1_3_ce8;
wire   [31:0] buff_A1_3_q8;
reg    buff_A1_3_ce9;
wire   [31:0] buff_A1_3_q9;
reg    buff_A1_3_ce10;
wire   [31:0] buff_A1_3_q10;
reg    buff_A1_3_ce11;
wire   [31:0] buff_A1_3_q11;
reg    buff_A1_3_ce12;
wire   [31:0] buff_A1_3_q12;
reg    buff_A1_3_ce13;
wire   [31:0] buff_A1_3_q13;
reg    buff_A1_3_ce14;
wire   [31:0] buff_A1_3_q14;
reg    buff_A1_3_ce15;
wire   [31:0] buff_A1_3_q15;
reg   [9:0] buff_B_address0;
reg    buff_B_ce0;
reg    buff_B_we0;
wire   [31:0] buff_B_q0;
reg   [9:0] buff_B_1_address0;
reg    buff_B_1_ce0;
reg    buff_B_1_we0;
wire   [31:0] buff_B_1_q0;
reg   [9:0] buff_B_2_address0;
reg    buff_B_2_ce0;
reg    buff_B_2_we0;
wire   [31:0] buff_B_2_q0;
reg   [9:0] buff_B_3_address0;
reg    buff_B_3_ce0;
reg    buff_B_3_we0;
wire   [31:0] buff_B_3_q0;
reg   [9:0] buff_C_out_address0;
reg    buff_C_out_ce0;
reg    buff_C_out_we0;
reg   [31:0] buff_C_out_d0;
wire   [31:0] buff_C_out_q0;
reg   [9:0] buff_C_out_address1;
reg    buff_C_out_ce1;
wire   [31:0] buff_C_out_q1;
reg   [9:0] buff_C_out_1_address0;
reg    buff_C_out_1_ce0;
reg    buff_C_out_1_we0;
reg   [31:0] buff_C_out_1_d0;
wire   [31:0] buff_C_out_1_q0;
reg   [9:0] buff_C_out_1_address1;
reg    buff_C_out_1_ce1;
wire   [31:0] buff_C_out_1_q1;
reg   [9:0] buff_C_out_2_address0;
reg    buff_C_out_2_ce0;
reg    buff_C_out_2_we0;
reg   [31:0] buff_C_out_2_d0;
wire   [31:0] buff_C_out_2_q0;
reg   [9:0] buff_C_out_2_address1;
reg    buff_C_out_2_ce1;
wire   [31:0] buff_C_out_2_q1;
reg   [9:0] buff_C_out_3_address0;
reg    buff_C_out_3_ce0;
reg    buff_C_out_3_we0;
reg   [31:0] buff_C_out_3_d0;
wire   [31:0] buff_C_out_3_q0;
reg   [9:0] buff_C_out_3_address1;
reg    buff_C_out_3_ce1;
wire   [31:0] buff_C_out_3_q1;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_start;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_done;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_idle;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_ready;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_0_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_0_ce0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_1_ce0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_2_ce0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_3_ce0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_0_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_0_ce0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_1_ce0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_2_ce0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_3_ce0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_d0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_ap_start;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_ap_done;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_ap_idle;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_ap_ready;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce2;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce3;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce4;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce5;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce6;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce7;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce2;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce3;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce4;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce5;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce6;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce7;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce2;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce3;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce4;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce5;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce6;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce7;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce2;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce3;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce4;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce5;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce6;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce7;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce2;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce3;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce4;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce5;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce6;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce7;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address8;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce8;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address9;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce9;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address10;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce10;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address11;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce11;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address12;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce12;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address13;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce13;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address14;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce14;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address15;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce15;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce2;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce3;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce4;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce5;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce6;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce7;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address8;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce8;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address9;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce9;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address10;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce10;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address11;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce11;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address12;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce12;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address13;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce13;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address14;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce14;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address15;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce15;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce2;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce3;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce4;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce5;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce6;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce7;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address8;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce8;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address9;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce9;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address10;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce10;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address11;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce11;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address12;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce12;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address13;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce13;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address14;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce14;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address15;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce15;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce2;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce3;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce4;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce5;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce6;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce7;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address8;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce8;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address9;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce9;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address10;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce10;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address11;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce11;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address12;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce12;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address13;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce13;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address14;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce14;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address15;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce15;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_d0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_d0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_d0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_d0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_ce1;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_248_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_248_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_248_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_248_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_252_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_252_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_252_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_252_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_256_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_256_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_256_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_256_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_260_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_260_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_260_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_260_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_264_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_264_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_264_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_268_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_268_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_268_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_272_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_272_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_272_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_276_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_276_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_276_p_ce;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_ap_start;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_ap_done;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_ap_idle;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_ap_ready;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_address0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_ce0;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_1_address0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_1_ce0;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_2_address0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_2_ce0;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_3_address0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_3_ce0;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_address0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_ce0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_d0;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_address1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_ce1;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_ce0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_d0;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_address1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_ce1;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_address0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_ce0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_d0;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_address1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_ce1;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_address0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_ce0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_d0;
wire   [9:0] grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_address1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_ce1;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_248_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_248_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_248_p_opcode;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_248_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_252_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_252_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_252_p_opcode;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_252_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_256_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_256_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_256_p_opcode;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_256_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_260_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_260_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_260_p_opcode;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_260_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_264_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_264_p_din1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_264_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_268_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_268_p_din1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_268_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_272_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_272_p_din1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_272_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_276_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_276_p_din1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_276_p_ce;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_start;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_done;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_idle;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_ready;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_0_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_0_write;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_1_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_1_write;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_2_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_2_write;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_3_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_3_write;
wire   [9:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_ce0;
wire   [9:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_1_ce0;
wire   [9:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_2_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_2_ce0;
wire   [9:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_3_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_3_ce0;
reg    grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_syrk_Pipeline_lp1_lp2_fu_190_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_syrk_Pipeline_lp4_lp5_fu_208_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire   [31:0] grp_fu_248_p2;
reg   [31:0] grp_fu_248_p0;
reg   [31:0] grp_fu_248_p1;
reg    grp_fu_248_ce;
wire   [31:0] grp_fu_252_p2;
reg   [31:0] grp_fu_252_p0;
reg   [31:0] grp_fu_252_p1;
reg    grp_fu_252_ce;
wire   [31:0] grp_fu_256_p2;
reg   [31:0] grp_fu_256_p0;
reg   [31:0] grp_fu_256_p1;
reg    grp_fu_256_ce;
wire   [31:0] grp_fu_260_p2;
reg   [31:0] grp_fu_260_p0;
reg   [31:0] grp_fu_260_p1;
reg    grp_fu_260_ce;
wire   [31:0] grp_fu_264_p2;
reg   [31:0] grp_fu_264_p0;
reg   [31:0] grp_fu_264_p1;
reg    grp_fu_264_ce;
wire   [31:0] grp_fu_268_p2;
reg   [31:0] grp_fu_268_p0;
reg   [31:0] grp_fu_268_p1;
reg    grp_fu_268_ce;
wire   [31:0] grp_fu_272_p2;
reg   [31:0] grp_fu_272_p0;
reg   [31:0] grp_fu_272_p1;
reg    grp_fu_272_ce;
wire   [31:0] grp_fu_276_p2;
reg   [31:0] grp_fu_276_p0;
reg   [31:0] grp_fu_276_p1;
reg    grp_fu_276_ce;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_start_reg = 1'b0;
#0 grp_syrk_Pipeline_lp1_lp2_fu_190_ap_start_reg = 1'b0;
#0 grp_syrk_Pipeline_lp4_lp5_fu_208_ap_start_reg = 1'b0;
#0 grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_start_reg = 1'b0;
end
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A0_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_address0),.ce0(buff_A0_ce0),.we0(buff_A0_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_d0),.q0(buff_A0_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address1),.ce1(buff_A0_ce1),.q1(buff_A0_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address2),.ce2(buff_A0_ce2),.q2(buff_A0_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address3),.ce3(buff_A0_ce3),.q3(buff_A0_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address4),.ce4(buff_A0_ce4),.q4(buff_A0_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address5),.ce5(buff_A0_ce5),.q5(buff_A0_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address6),.ce6(buff_A0_ce6),.q6(buff_A0_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address7),.ce7(buff_A0_ce7),.q7(buff_A0_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A0_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_1_address0),.ce0(buff_A0_1_ce0),.we0(buff_A0_1_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_d0),.q0(buff_A0_1_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address1),.ce1(buff_A0_1_ce1),.q1(buff_A0_1_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address2),.ce2(buff_A0_1_ce2),.q2(buff_A0_1_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address3),.ce3(buff_A0_1_ce3),.q3(buff_A0_1_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address4),.ce4(buff_A0_1_ce4),.q4(buff_A0_1_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address5),.ce5(buff_A0_1_ce5),.q5(buff_A0_1_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address6),.ce6(buff_A0_1_ce6),.q6(buff_A0_1_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address7),.ce7(buff_A0_1_ce7),.q7(buff_A0_1_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A0_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_2_address0),.ce0(buff_A0_2_ce0),.we0(buff_A0_2_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_d0),.q0(buff_A0_2_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address1),.ce1(buff_A0_2_ce1),.q1(buff_A0_2_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address2),.ce2(buff_A0_2_ce2),.q2(buff_A0_2_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address3),.ce3(buff_A0_2_ce3),.q3(buff_A0_2_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address4),.ce4(buff_A0_2_ce4),.q4(buff_A0_2_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address5),.ce5(buff_A0_2_ce5),.q5(buff_A0_2_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address6),.ce6(buff_A0_2_ce6),.q6(buff_A0_2_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address7),.ce7(buff_A0_2_ce7),.q7(buff_A0_2_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A0_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_3_address0),.ce0(buff_A0_3_ce0),.we0(buff_A0_3_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_d0),.q0(buff_A0_3_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address1),.ce1(buff_A0_3_ce1),.q1(buff_A0_3_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address2),.ce2(buff_A0_3_ce2),.q2(buff_A0_3_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address3),.ce3(buff_A0_3_ce3),.q3(buff_A0_3_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address4),.ce4(buff_A0_3_ce4),.q4(buff_A0_3_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address5),.ce5(buff_A0_3_ce5),.q5(buff_A0_3_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address6),.ce6(buff_A0_3_ce6),.q6(buff_A0_3_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address7),.ce7(buff_A0_3_ce7),.q7(buff_A0_3_q7));
syrk_buff_A1_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_address0),.ce0(buff_A1_ce0),.we0(buff_A1_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_d0),.q0(buff_A1_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address1),.ce1(buff_A1_ce1),.q1(buff_A1_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address2),.ce2(buff_A1_ce2),.q2(buff_A1_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address3),.ce3(buff_A1_ce3),.q3(buff_A1_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address4),.ce4(buff_A1_ce4),.q4(buff_A1_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address5),.ce5(buff_A1_ce5),.q5(buff_A1_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address6),.ce6(buff_A1_ce6),.q6(buff_A1_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address7),.ce7(buff_A1_ce7),.q7(buff_A1_q7),.address8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address8),.ce8(buff_A1_ce8),.q8(buff_A1_q8),.address9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address9),.ce9(buff_A1_ce9),.q9(buff_A1_q9),.address10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address10),.ce10(buff_A1_ce10),.q10(buff_A1_q10),.address11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address11),.ce11(buff_A1_ce11),.q11(buff_A1_q11),.address12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address12),.ce12(buff_A1_ce12),.q12(buff_A1_q12),.address13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address13),.ce13(buff_A1_ce13),.q13(buff_A1_q13),.address14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address14),.ce14(buff_A1_ce14),.q14(buff_A1_q14),.address15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address15),.ce15(buff_A1_ce15),.q15(buff_A1_q15));
syrk_buff_A1_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_1_address0),.ce0(buff_A1_1_ce0),.we0(buff_A1_1_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_d0),.q0(buff_A1_1_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address1),.ce1(buff_A1_1_ce1),.q1(buff_A1_1_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address2),.ce2(buff_A1_1_ce2),.q2(buff_A1_1_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address3),.ce3(buff_A1_1_ce3),.q3(buff_A1_1_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address4),.ce4(buff_A1_1_ce4),.q4(buff_A1_1_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address5),.ce5(buff_A1_1_ce5),.q5(buff_A1_1_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address6),.ce6(buff_A1_1_ce6),.q6(buff_A1_1_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address7),.ce7(buff_A1_1_ce7),.q7(buff_A1_1_q7),.address8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address8),.ce8(buff_A1_1_ce8),.q8(buff_A1_1_q8),.address9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address9),.ce9(buff_A1_1_ce9),.q9(buff_A1_1_q9),.address10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address10),.ce10(buff_A1_1_ce10),.q10(buff_A1_1_q10),.address11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address11),.ce11(buff_A1_1_ce11),.q11(buff_A1_1_q11),.address12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address12),.ce12(buff_A1_1_ce12),.q12(buff_A1_1_q12),.address13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address13),.ce13(buff_A1_1_ce13),.q13(buff_A1_1_q13),.address14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address14),.ce14(buff_A1_1_ce14),.q14(buff_A1_1_q14),.address15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address15),.ce15(buff_A1_1_ce15),.q15(buff_A1_1_q15));
syrk_buff_A1_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_2_address0),.ce0(buff_A1_2_ce0),.we0(buff_A1_2_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_d0),.q0(buff_A1_2_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address1),.ce1(buff_A1_2_ce1),.q1(buff_A1_2_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address2),.ce2(buff_A1_2_ce2),.q2(buff_A1_2_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address3),.ce3(buff_A1_2_ce3),.q3(buff_A1_2_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address4),.ce4(buff_A1_2_ce4),.q4(buff_A1_2_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address5),.ce5(buff_A1_2_ce5),.q5(buff_A1_2_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address6),.ce6(buff_A1_2_ce6),.q6(buff_A1_2_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address7),.ce7(buff_A1_2_ce7),.q7(buff_A1_2_q7),.address8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address8),.ce8(buff_A1_2_ce8),.q8(buff_A1_2_q8),.address9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address9),.ce9(buff_A1_2_ce9),.q9(buff_A1_2_q9),.address10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address10),.ce10(buff_A1_2_ce10),.q10(buff_A1_2_q10),.address11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address11),.ce11(buff_A1_2_ce11),.q11(buff_A1_2_q11),.address12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address12),.ce12(buff_A1_2_ce12),.q12(buff_A1_2_q12),.address13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address13),.ce13(buff_A1_2_ce13),.q13(buff_A1_2_q13),.address14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address14),.ce14(buff_A1_2_ce14),.q14(buff_A1_2_q14),.address15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address15),.ce15(buff_A1_2_ce15),.q15(buff_A1_2_q15));
syrk_buff_A1_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_3_address0),.ce0(buff_A1_3_ce0),.we0(buff_A1_3_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_d0),.q0(buff_A1_3_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address1),.ce1(buff_A1_3_ce1),.q1(buff_A1_3_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address2),.ce2(buff_A1_3_ce2),.q2(buff_A1_3_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address3),.ce3(buff_A1_3_ce3),.q3(buff_A1_3_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address4),.ce4(buff_A1_3_ce4),.q4(buff_A1_3_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address5),.ce5(buff_A1_3_ce5),.q5(buff_A1_3_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address6),.ce6(buff_A1_3_ce6),.q6(buff_A1_3_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address7),.ce7(buff_A1_3_ce7),.q7(buff_A1_3_q7),.address8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address8),.ce8(buff_A1_3_ce8),.q8(buff_A1_3_q8),.address9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address9),.ce9(buff_A1_3_ce9),.q9(buff_A1_3_q9),.address10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address10),.ce10(buff_A1_3_ce10),.q10(buff_A1_3_q10),.address11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address11),.ce11(buff_A1_3_ce11),.q11(buff_A1_3_q11),.address12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address12),.ce12(buff_A1_3_ce12),.q12(buff_A1_3_q12),.address13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address13),.ce13(buff_A1_3_ce13),.q13(buff_A1_3_q13),.address14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address14),.ce14(buff_A1_3_ce14),.q14(buff_A1_3_q14),.address15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address15),.ce15(buff_A1_3_ce15),.q15(buff_A1_3_q15));
syrk_buff_B_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_B_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_address0),.ce0(buff_B_ce0),.we0(buff_B_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_d0),.q0(buff_B_q0));
syrk_buff_B_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_B_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_1_address0),.ce0(buff_B_1_ce0),.we0(buff_B_1_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_d0),.q0(buff_B_1_q0));
syrk_buff_B_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_B_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_2_address0),.ce0(buff_B_2_ce0),.we0(buff_B_2_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_d0),.q0(buff_B_2_q0));
syrk_buff_B_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_B_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_3_address0),.ce0(buff_B_3_ce0),.we0(buff_B_3_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_d0),.q0(buff_B_3_q0));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_C_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_address0),.ce0(buff_C_out_ce0),.we0(buff_C_out_we0),.d0(buff_C_out_d0),.q0(buff_C_out_q0),.address1(buff_C_out_address1),.ce1(buff_C_out_ce1),.q1(buff_C_out_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_C_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_1_address0),.ce0(buff_C_out_1_ce0),.we0(buff_C_out_1_we0),.d0(buff_C_out_1_d0),.q0(buff_C_out_1_q0),.address1(buff_C_out_1_address1),.ce1(buff_C_out_1_ce1),.q1(buff_C_out_1_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_C_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_2_address0),.ce0(buff_C_out_2_ce0),.we0(buff_C_out_2_we0),.d0(buff_C_out_2_d0),.q0(buff_C_out_2_q0),.address1(buff_C_out_2_address1),.ce1(buff_C_out_2_ce1),.q1(buff_C_out_2_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_C_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_3_address0),.ce0(buff_C_out_3_ce0),.we0(buff_C_out_3_we0),.d0(buff_C_out_3_d0),.q0(buff_C_out_3_q0),.address1(buff_C_out_3_address1),.ce1(buff_C_out_3_ce1),.q1(buff_C_out_3_q1));
syrk_syrk_Pipeline_lprd_1_lprd_2 grp_syrk_Pipeline_lprd_1_lprd_2_fu_138(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_start),.ap_done(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_done),.ap_idle(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_idle),.ap_ready(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_ready),.A_0_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_0_address0),.A_0_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_1_address0),.A_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_2_address0),.A_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_3_address0),.A_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_3_ce0),.A_3_q0(A_3_q0),.B_0_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_0_address0),.B_0_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_0_ce0),.B_0_q0(B_0_q0),.B_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_1_address0),.B_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_1_ce0),.B_1_q0(B_1_q0),.B_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_2_address0),.B_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_2_ce0),.B_2_q0(B_2_q0),.B_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_3_address0),.B_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_3_ce0),.B_3_q0(B_3_q0),.buff_A0_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_address0),.buff_A0_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_ce0),.buff_A0_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_we0),.buff_A0_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_d0),.buff_A0_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_address0),.buff_A0_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_ce0),.buff_A0_1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_we0),.buff_A0_1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_d0),.buff_A0_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_address0),.buff_A0_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_ce0),.buff_A0_2_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_we0),.buff_A0_2_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_d0),.buff_A0_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_address0),.buff_A0_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_ce0),.buff_A0_3_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_we0),.buff_A0_3_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_d0),.buff_A1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_address0),.buff_A1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_ce0),.buff_A1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_we0),.buff_A1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_d0),.buff_A1_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_address0),.buff_A1_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_ce0),.buff_A1_1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_we0),.buff_A1_1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_d0),.buff_A1_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_address0),.buff_A1_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_ce0),.buff_A1_2_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_we0),.buff_A1_2_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_d0),.buff_A1_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_address0),.buff_A1_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_ce0),.buff_A1_3_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_we0),.buff_A1_3_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_d0),.buff_B_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_address0),.buff_B_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_ce0),.buff_B_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_we0),.buff_B_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_d0),.buff_B_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_address0),.buff_B_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_ce0),.buff_B_1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_we0),.buff_B_1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_d0),.buff_B_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_address0),.buff_B_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_ce0),.buff_B_2_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_we0),.buff_B_2_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_d0),.buff_B_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_address0),.buff_B_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_ce0),.buff_B_3_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_we0),.buff_B_3_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_d0),.buff_C_out_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_ce0),.buff_C_out_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_we0),.buff_C_out_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_d0),.buff_C_out_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_ce0),.buff_C_out_1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_we0),.buff_C_out_1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_d0),.buff_C_out_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_address0),.buff_C_out_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_ce0),.buff_C_out_2_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_we0),.buff_C_out_2_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_d0),.buff_C_out_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_address0),.buff_C_out_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_ce0),.buff_C_out_3_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_we0),.buff_C_out_3_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_d0));
syrk_syrk_Pipeline_lp1_lp2 grp_syrk_Pipeline_lp1_lp2_fu_190(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lp1_lp2_fu_190_ap_start),.ap_done(grp_syrk_Pipeline_lp1_lp2_fu_190_ap_done),.ap_idle(grp_syrk_Pipeline_lp1_lp2_fu_190_ap_idle),.ap_ready(grp_syrk_Pipeline_lp1_lp2_fu_190_ap_ready),.buff_A0_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address0),.buff_A0_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce0),.buff_A0_q0(buff_A0_q0),.buff_A0_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address1),.buff_A0_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce1),.buff_A0_q1(buff_A0_q1),.buff_A0_address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address2),.buff_A0_ce2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce2),.buff_A0_q2(buff_A0_q2),.buff_A0_address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address3),.buff_A0_ce3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce3),.buff_A0_q3(buff_A0_q3),.buff_A0_address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address4),.buff_A0_ce4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce4),.buff_A0_q4(buff_A0_q4),.buff_A0_address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address5),.buff_A0_ce5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce5),.buff_A0_q5(buff_A0_q5),.buff_A0_address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address6),.buff_A0_ce6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce6),.buff_A0_q6(buff_A0_q6),.buff_A0_address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address7),.buff_A0_ce7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce7),.buff_A0_q7(buff_A0_q7),.buff_A0_1_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address0),.buff_A0_1_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce0),.buff_A0_1_q0(buff_A0_1_q0),.buff_A0_1_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address1),.buff_A0_1_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce1),.buff_A0_1_q1(buff_A0_1_q1),.buff_A0_1_address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address2),.buff_A0_1_ce2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce2),.buff_A0_1_q2(buff_A0_1_q2),.buff_A0_1_address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address3),.buff_A0_1_ce3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce3),.buff_A0_1_q3(buff_A0_1_q3),.buff_A0_1_address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address4),.buff_A0_1_ce4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce4),.buff_A0_1_q4(buff_A0_1_q4),.buff_A0_1_address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address5),.buff_A0_1_ce5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce5),.buff_A0_1_q5(buff_A0_1_q5),.buff_A0_1_address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address6),.buff_A0_1_ce6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce6),.buff_A0_1_q6(buff_A0_1_q6),.buff_A0_1_address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address7),.buff_A0_1_ce7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce7),.buff_A0_1_q7(buff_A0_1_q7),.buff_A0_2_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address0),.buff_A0_2_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce0),.buff_A0_2_q0(buff_A0_2_q0),.buff_A0_2_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address1),.buff_A0_2_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce1),.buff_A0_2_q1(buff_A0_2_q1),.buff_A0_2_address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address2),.buff_A0_2_ce2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce2),.buff_A0_2_q2(buff_A0_2_q2),.buff_A0_2_address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address3),.buff_A0_2_ce3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce3),.buff_A0_2_q3(buff_A0_2_q3),.buff_A0_2_address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address4),.buff_A0_2_ce4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce4),.buff_A0_2_q4(buff_A0_2_q4),.buff_A0_2_address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address5),.buff_A0_2_ce5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce5),.buff_A0_2_q5(buff_A0_2_q5),.buff_A0_2_address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address6),.buff_A0_2_ce6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce6),.buff_A0_2_q6(buff_A0_2_q6),.buff_A0_2_address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address7),.buff_A0_2_ce7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce7),.buff_A0_2_q7(buff_A0_2_q7),.buff_A0_3_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address0),.buff_A0_3_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce0),.buff_A0_3_q0(buff_A0_3_q0),.buff_A0_3_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address1),.buff_A0_3_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce1),.buff_A0_3_q1(buff_A0_3_q1),.buff_A0_3_address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address2),.buff_A0_3_ce2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce2),.buff_A0_3_q2(buff_A0_3_q2),.buff_A0_3_address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address3),.buff_A0_3_ce3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce3),.buff_A0_3_q3(buff_A0_3_q3),.buff_A0_3_address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address4),.buff_A0_3_ce4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce4),.buff_A0_3_q4(buff_A0_3_q4),.buff_A0_3_address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address5),.buff_A0_3_ce5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce5),.buff_A0_3_q5(buff_A0_3_q5),.buff_A0_3_address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address6),.buff_A0_3_ce6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce6),.buff_A0_3_q6(buff_A0_3_q6),.buff_A0_3_address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address7),.buff_A0_3_ce7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce7),.buff_A0_3_q7(buff_A0_3_q7),.alpha(alpha),.buff_A1_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address0),.buff_A1_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce0),.buff_A1_q0(buff_A1_q0),.buff_A1_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address1),.buff_A1_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce1),.buff_A1_q1(buff_A1_q1),.buff_A1_address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address2),.buff_A1_ce2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce2),.buff_A1_q2(buff_A1_q2),.buff_A1_address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address3),.buff_A1_ce3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce3),.buff_A1_q3(buff_A1_q3),.buff_A1_address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address4),.buff_A1_ce4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce4),.buff_A1_q4(buff_A1_q4),.buff_A1_address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address5),.buff_A1_ce5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce5),.buff_A1_q5(buff_A1_q5),.buff_A1_address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address6),.buff_A1_ce6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce6),.buff_A1_q6(buff_A1_q6),.buff_A1_address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address7),.buff_A1_ce7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce7),.buff_A1_q7(buff_A1_q7),.buff_A1_address8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address8),.buff_A1_ce8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce8),.buff_A1_q8(buff_A1_q8),.buff_A1_address9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address9),.buff_A1_ce9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce9),.buff_A1_q9(buff_A1_q9),.buff_A1_address10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address10),.buff_A1_ce10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce10),.buff_A1_q10(buff_A1_q10),.buff_A1_address11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address11),.buff_A1_ce11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce11),.buff_A1_q11(buff_A1_q11),.buff_A1_address12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address12),.buff_A1_ce12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce12),.buff_A1_q12(buff_A1_q12),.buff_A1_address13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address13),.buff_A1_ce13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce13),.buff_A1_q13(buff_A1_q13),.buff_A1_address14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address14),.buff_A1_ce14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce14),.buff_A1_q14(buff_A1_q14),.buff_A1_address15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address15),.buff_A1_ce15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce15),.buff_A1_q15(buff_A1_q15),.buff_A1_1_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address0),.buff_A1_1_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce0),.buff_A1_1_q0(buff_A1_1_q0),.buff_A1_1_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address1),.buff_A1_1_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce1),.buff_A1_1_q1(buff_A1_1_q1),.buff_A1_1_address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address2),.buff_A1_1_ce2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce2),.buff_A1_1_q2(buff_A1_1_q2),.buff_A1_1_address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address3),.buff_A1_1_ce3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce3),.buff_A1_1_q3(buff_A1_1_q3),.buff_A1_1_address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address4),.buff_A1_1_ce4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce4),.buff_A1_1_q4(buff_A1_1_q4),.buff_A1_1_address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address5),.buff_A1_1_ce5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce5),.buff_A1_1_q5(buff_A1_1_q5),.buff_A1_1_address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address6),.buff_A1_1_ce6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce6),.buff_A1_1_q6(buff_A1_1_q6),.buff_A1_1_address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address7),.buff_A1_1_ce7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce7),.buff_A1_1_q7(buff_A1_1_q7),.buff_A1_1_address8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address8),.buff_A1_1_ce8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce8),.buff_A1_1_q8(buff_A1_1_q8),.buff_A1_1_address9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address9),.buff_A1_1_ce9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce9),.buff_A1_1_q9(buff_A1_1_q9),.buff_A1_1_address10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address10),.buff_A1_1_ce10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce10),.buff_A1_1_q10(buff_A1_1_q10),.buff_A1_1_address11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address11),.buff_A1_1_ce11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce11),.buff_A1_1_q11(buff_A1_1_q11),.buff_A1_1_address12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address12),.buff_A1_1_ce12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce12),.buff_A1_1_q12(buff_A1_1_q12),.buff_A1_1_address13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address13),.buff_A1_1_ce13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce13),.buff_A1_1_q13(buff_A1_1_q13),.buff_A1_1_address14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address14),.buff_A1_1_ce14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce14),.buff_A1_1_q14(buff_A1_1_q14),.buff_A1_1_address15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address15),.buff_A1_1_ce15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce15),.buff_A1_1_q15(buff_A1_1_q15),.buff_A1_2_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address0),.buff_A1_2_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce0),.buff_A1_2_q0(buff_A1_2_q0),.buff_A1_2_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address1),.buff_A1_2_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce1),.buff_A1_2_q1(buff_A1_2_q1),.buff_A1_2_address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address2),.buff_A1_2_ce2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce2),.buff_A1_2_q2(buff_A1_2_q2),.buff_A1_2_address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address3),.buff_A1_2_ce3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce3),.buff_A1_2_q3(buff_A1_2_q3),.buff_A1_2_address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address4),.buff_A1_2_ce4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce4),.buff_A1_2_q4(buff_A1_2_q4),.buff_A1_2_address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address5),.buff_A1_2_ce5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce5),.buff_A1_2_q5(buff_A1_2_q5),.buff_A1_2_address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address6),.buff_A1_2_ce6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce6),.buff_A1_2_q6(buff_A1_2_q6),.buff_A1_2_address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address7),.buff_A1_2_ce7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce7),.buff_A1_2_q7(buff_A1_2_q7),.buff_A1_2_address8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address8),.buff_A1_2_ce8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce8),.buff_A1_2_q8(buff_A1_2_q8),.buff_A1_2_address9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address9),.buff_A1_2_ce9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce9),.buff_A1_2_q9(buff_A1_2_q9),.buff_A1_2_address10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address10),.buff_A1_2_ce10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce10),.buff_A1_2_q10(buff_A1_2_q10),.buff_A1_2_address11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address11),.buff_A1_2_ce11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce11),.buff_A1_2_q11(buff_A1_2_q11),.buff_A1_2_address12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address12),.buff_A1_2_ce12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce12),.buff_A1_2_q12(buff_A1_2_q12),.buff_A1_2_address13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address13),.buff_A1_2_ce13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce13),.buff_A1_2_q13(buff_A1_2_q13),.buff_A1_2_address14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address14),.buff_A1_2_ce14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce14),.buff_A1_2_q14(buff_A1_2_q14),.buff_A1_2_address15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address15),.buff_A1_2_ce15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce15),.buff_A1_2_q15(buff_A1_2_q15),.buff_A1_3_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address0),.buff_A1_3_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce0),.buff_A1_3_q0(buff_A1_3_q0),.buff_A1_3_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address1),.buff_A1_3_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce1),.buff_A1_3_q1(buff_A1_3_q1),.buff_A1_3_address2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address2),.buff_A1_3_ce2(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce2),.buff_A1_3_q2(buff_A1_3_q2),.buff_A1_3_address3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address3),.buff_A1_3_ce3(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce3),.buff_A1_3_q3(buff_A1_3_q3),.buff_A1_3_address4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address4),.buff_A1_3_ce4(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce4),.buff_A1_3_q4(buff_A1_3_q4),.buff_A1_3_address5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address5),.buff_A1_3_ce5(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce5),.buff_A1_3_q5(buff_A1_3_q5),.buff_A1_3_address6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address6),.buff_A1_3_ce6(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce6),.buff_A1_3_q6(buff_A1_3_q6),.buff_A1_3_address7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address7),.buff_A1_3_ce7(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce7),.buff_A1_3_q7(buff_A1_3_q7),.buff_A1_3_address8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address8),.buff_A1_3_ce8(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce8),.buff_A1_3_q8(buff_A1_3_q8),.buff_A1_3_address9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address9),.buff_A1_3_ce9(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce9),.buff_A1_3_q9(buff_A1_3_q9),.buff_A1_3_address10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address10),.buff_A1_3_ce10(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce10),.buff_A1_3_q10(buff_A1_3_q10),.buff_A1_3_address11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address11),.buff_A1_3_ce11(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce11),.buff_A1_3_q11(buff_A1_3_q11),.buff_A1_3_address12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address12),.buff_A1_3_ce12(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce12),.buff_A1_3_q12(buff_A1_3_q12),.buff_A1_3_address13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address13),.buff_A1_3_ce13(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce13),.buff_A1_3_q13(buff_A1_3_q13),.buff_A1_3_address14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address14),.buff_A1_3_ce14(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce14),.buff_A1_3_q14(buff_A1_3_q14),.buff_A1_3_address15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address15),.buff_A1_3_ce15(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce15),.buff_A1_3_q15(buff_A1_3_q15),.buff_C_out_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_ce0),.buff_C_out_we0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_we0),.buff_C_out_d0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_d0),.buff_C_out_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_address1),.buff_C_out_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_ce1),.buff_C_out_q1(buff_C_out_q1),.buff_C_out_1_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_ce0),.buff_C_out_1_we0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_we0),.buff_C_out_1_d0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_d0),.buff_C_out_1_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_address1),.buff_C_out_1_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_ce1),.buff_C_out_1_q1(buff_C_out_1_q1),.buff_C_out_2_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_address0),.buff_C_out_2_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_ce0),.buff_C_out_2_we0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_we0),.buff_C_out_2_d0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_d0),.buff_C_out_2_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_address1),.buff_C_out_2_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_ce1),.buff_C_out_2_q1(buff_C_out_2_q1),.buff_C_out_3_address0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_address0),.buff_C_out_3_ce0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_ce0),.buff_C_out_3_we0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_we0),.buff_C_out_3_d0(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_d0),.buff_C_out_3_address1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_address1),.buff_C_out_3_ce1(grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_ce1),.buff_C_out_3_q1(buff_C_out_3_q1),.grp_fu_248_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_248_p_din0),.grp_fu_248_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_248_p_din1),.grp_fu_248_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_248_p_opcode),.grp_fu_248_p_dout0(grp_fu_248_p2),.grp_fu_248_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_248_p_ce),.grp_fu_252_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_252_p_din0),.grp_fu_252_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_252_p_din1),.grp_fu_252_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_252_p_opcode),.grp_fu_252_p_dout0(grp_fu_252_p2),.grp_fu_252_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_252_p_ce),.grp_fu_256_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_256_p_din0),.grp_fu_256_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_256_p_din1),.grp_fu_256_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_256_p_opcode),.grp_fu_256_p_dout0(grp_fu_256_p2),.grp_fu_256_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_256_p_ce),.grp_fu_260_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_260_p_din0),.grp_fu_260_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_260_p_din1),.grp_fu_260_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_260_p_opcode),.grp_fu_260_p_dout0(grp_fu_260_p2),.grp_fu_260_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_260_p_ce),.grp_fu_264_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_264_p_din0),.grp_fu_264_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_264_p_din1),.grp_fu_264_p_dout0(grp_fu_264_p2),.grp_fu_264_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_264_p_ce),.grp_fu_268_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_268_p_din0),.grp_fu_268_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_268_p_din1),.grp_fu_268_p_dout0(grp_fu_268_p2),.grp_fu_268_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_268_p_ce),.grp_fu_272_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_272_p_din0),.grp_fu_272_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_272_p_din1),.grp_fu_272_p_dout0(grp_fu_272_p2),.grp_fu_272_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_272_p_ce),.grp_fu_276_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_276_p_din0),.grp_fu_276_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_276_p_din1),.grp_fu_276_p_dout0(grp_fu_276_p2),.grp_fu_276_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_276_p_ce));
syrk_syrk_Pipeline_lp4_lp5 grp_syrk_Pipeline_lp4_lp5_fu_208(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lp4_lp5_fu_208_ap_start),.ap_done(grp_syrk_Pipeline_lp4_lp5_fu_208_ap_done),.ap_idle(grp_syrk_Pipeline_lp4_lp5_fu_208_ap_idle),.ap_ready(grp_syrk_Pipeline_lp4_lp5_fu_208_ap_ready),.buff_B_address0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_address0),.buff_B_ce0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_ce0),.buff_B_q0(buff_B_q0),.buff_B_1_address0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_1_address0),.buff_B_1_ce0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_1_ce0),.buff_B_1_q0(buff_B_1_q0),.buff_B_2_address0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_2_address0),.buff_B_2_ce0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_2_ce0),.buff_B_2_q0(buff_B_2_q0),.buff_B_3_address0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_3_address0),.buff_B_3_ce0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_3_ce0),.buff_B_3_q0(buff_B_3_q0),.buff_C_out_address0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_ce0),.buff_C_out_we0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_we0),.buff_C_out_d0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_d0),.buff_C_out_address1(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_address1),.buff_C_out_ce1(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_ce1),.buff_C_out_q1(buff_C_out_q1),.buff_C_out_1_address0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_ce0),.buff_C_out_1_we0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_we0),.buff_C_out_1_d0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_d0),.buff_C_out_1_address1(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_address1),.buff_C_out_1_ce1(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_ce1),.buff_C_out_1_q1(buff_C_out_1_q1),.buff_C_out_2_address0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_address0),.buff_C_out_2_ce0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_ce0),.buff_C_out_2_we0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_we0),.buff_C_out_2_d0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_d0),.buff_C_out_2_address1(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_address1),.buff_C_out_2_ce1(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_ce1),.buff_C_out_2_q1(buff_C_out_2_q1),.buff_C_out_3_address0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_address0),.buff_C_out_3_ce0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_ce0),.buff_C_out_3_we0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_we0),.buff_C_out_3_d0(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_d0),.buff_C_out_3_address1(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_address1),.buff_C_out_3_ce1(grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_ce1),.buff_C_out_3_q1(buff_C_out_3_q1),.beta(beta),.grp_fu_248_p_din0(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_248_p_din0),.grp_fu_248_p_din1(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_248_p_din1),.grp_fu_248_p_opcode(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_248_p_opcode),.grp_fu_248_p_dout0(grp_fu_248_p2),.grp_fu_248_p_ce(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_248_p_ce),.grp_fu_252_p_din0(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_252_p_din0),.grp_fu_252_p_din1(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_252_p_din1),.grp_fu_252_p_opcode(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_252_p_opcode),.grp_fu_252_p_dout0(grp_fu_252_p2),.grp_fu_252_p_ce(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_252_p_ce),.grp_fu_256_p_din0(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_256_p_din0),.grp_fu_256_p_din1(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_256_p_din1),.grp_fu_256_p_opcode(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_256_p_opcode),.grp_fu_256_p_dout0(grp_fu_256_p2),.grp_fu_256_p_ce(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_256_p_ce),.grp_fu_260_p_din0(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_260_p_din0),.grp_fu_260_p_din1(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_260_p_din1),.grp_fu_260_p_opcode(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_260_p_opcode),.grp_fu_260_p_dout0(grp_fu_260_p2),.grp_fu_260_p_ce(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_260_p_ce),.grp_fu_264_p_din0(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_264_p_din0),.grp_fu_264_p_din1(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_264_p_din1),.grp_fu_264_p_dout0(grp_fu_264_p2),.grp_fu_264_p_ce(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_264_p_ce),.grp_fu_268_p_din0(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_268_p_din0),.grp_fu_268_p_din1(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_268_p_din1),.grp_fu_268_p_dout0(grp_fu_268_p2),.grp_fu_268_p_ce(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_268_p_ce),.grp_fu_272_p_din0(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_272_p_din0),.grp_fu_272_p_din1(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_272_p_din1),.grp_fu_272_p_dout0(grp_fu_272_p2),.grp_fu_272_p_ce(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_272_p_ce),.grp_fu_276_p_din0(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_276_p_din0),.grp_fu_276_p_din1(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_276_p_din1),.grp_fu_276_p_dout0(grp_fu_276_p2),.grp_fu_276_p_ce(grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_276_p_ce));
syrk_syrk_Pipeline_lpwr_1_lpwr_2 grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_start),.ap_done(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_done),.ap_idle(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_idle),.ap_ready(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_ready),.C_out_0_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_0_din),.C_out_0_full_n(C_out_0_full_n),.C_out_0_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_0_write),.C_out_1_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_1_din),.C_out_1_full_n(C_out_1_full_n),.C_out_1_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_1_write),.C_out_2_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_2_din),.C_out_2_full_n(C_out_2_full_n),.C_out_2_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_2_write),.C_out_3_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_3_din),.C_out_3_full_n(C_out_3_full_n),.C_out_3_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_3_write),.buff_C_out_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_ce0),.buff_C_out_q0(buff_C_out_q0),.buff_C_out_1_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_1_ce0),.buff_C_out_1_q0(buff_C_out_1_q0),.buff_C_out_2_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_2_address0),.buff_C_out_2_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_2_ce0),.buff_C_out_2_q0(buff_C_out_2_q0),.buff_C_out_3_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_3_address0),.buff_C_out_3_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_3_ce0),.buff_C_out_3_q0(buff_C_out_3_q0));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U225(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_248_p0),.din1(grp_fu_248_p1),.ce(grp_fu_248_ce),.dout(grp_fu_248_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U226(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_252_p0),.din1(grp_fu_252_p1),.ce(grp_fu_252_ce),.dout(grp_fu_252_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U227(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_256_p0),.din1(grp_fu_256_p1),.ce(grp_fu_256_ce),.dout(grp_fu_256_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U228(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_260_p0),.din1(grp_fu_260_p1),.ce(grp_fu_260_ce),.dout(grp_fu_260_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U229(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_264_p0),.din1(grp_fu_264_p1),.ce(grp_fu_264_ce),.dout(grp_fu_264_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U230(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_268_p0),.din1(grp_fu_268_p1),.ce(grp_fu_268_ce),.dout(grp_fu_268_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U231(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_272_p0),.din1(grp_fu_272_p1),.ce(grp_fu_272_ce),.dout(grp_fu_272_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U232(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_276_p0),.din1(grp_fu_276_p1),.ce(grp_fu_276_ce),.dout(grp_fu_276_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lp1_lp2_fu_190_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_syrk_Pipeline_lp1_lp2_fu_190_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lp1_lp2_fu_190_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lp1_lp2_fu_190_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lp4_lp5_fu_208_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_syrk_Pipeline_lp4_lp5_fu_208_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lp4_lp5_fu_208_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lp4_lp5_fu_208_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_start_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_0_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_0_write;
    end else begin
        C_out_0_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_1_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_1_write;
    end else begin
        C_out_1_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_2_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_2_write;
    end else begin
        C_out_2_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_3_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_3_write;
    end else begin
        C_out_3_write = 1'b0;
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
    if ((grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_syrk_Pipeline_lp1_lp2_fu_190_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_syrk_Pipeline_lp4_lp5_fu_208_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state8) & (grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_address0;
    end else begin
        buff_A0_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_ce0;
    end else begin
        buff_A0_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce1;
    end else begin
        buff_A0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce2;
    end else begin
        buff_A0_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce3;
    end else begin
        buff_A0_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce4;
    end else begin
        buff_A0_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce5;
    end else begin
        buff_A0_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce6;
    end else begin
        buff_A0_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_1_ce7;
    end else begin
        buff_A0_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_1_we0;
    end else begin
        buff_A0_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_address0;
    end else begin
        buff_A0_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_ce0;
    end else begin
        buff_A0_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce1;
    end else begin
        buff_A0_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce2;
    end else begin
        buff_A0_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce3;
    end else begin
        buff_A0_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce4;
    end else begin
        buff_A0_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce5;
    end else begin
        buff_A0_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce6;
    end else begin
        buff_A0_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_2_ce7;
    end else begin
        buff_A0_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_2_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_2_we0;
    end else begin
        buff_A0_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_address0;
    end else begin
        buff_A0_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_ce0;
    end else begin
        buff_A0_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce1;
    end else begin
        buff_A0_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce2;
    end else begin
        buff_A0_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce3;
    end else begin
        buff_A0_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce4;
    end else begin
        buff_A0_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce5;
    end else begin
        buff_A0_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce6;
    end else begin
        buff_A0_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_3_ce7;
    end else begin
        buff_A0_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_3_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_3_we0;
    end else begin
        buff_A0_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_address0;
    end else begin
        buff_A0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_ce0;
    end else begin
        buff_A0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce1;
    end else begin
        buff_A0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce2;
    end else begin
        buff_A0_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce3;
    end else begin
        buff_A0_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce4;
    end else begin
        buff_A0_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce5;
    end else begin
        buff_A0_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce6;
    end else begin
        buff_A0_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A0_ce7;
    end else begin
        buff_A0_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A0_we0;
    end else begin
        buff_A0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_address0;
    end else begin
        buff_A1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_ce0;
    end else begin
        buff_A1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce1;
    end else begin
        buff_A1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce10 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce10;
    end else begin
        buff_A1_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce11 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce11;
    end else begin
        buff_A1_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce12 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce12;
    end else begin
        buff_A1_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce13 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce13;
    end else begin
        buff_A1_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce14 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce14;
    end else begin
        buff_A1_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce15 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce15;
    end else begin
        buff_A1_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce2;
    end else begin
        buff_A1_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce3;
    end else begin
        buff_A1_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce4;
    end else begin
        buff_A1_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce5;
    end else begin
        buff_A1_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce6;
    end else begin
        buff_A1_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce7;
    end else begin
        buff_A1_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce8 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce8;
    end else begin
        buff_A1_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce9 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_1_ce9;
    end else begin
        buff_A1_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_1_we0;
    end else begin
        buff_A1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_address0;
    end else begin
        buff_A1_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_ce0;
    end else begin
        buff_A1_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce1;
    end else begin
        buff_A1_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce10 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce10;
    end else begin
        buff_A1_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce11 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce11;
    end else begin
        buff_A1_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce12 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce12;
    end else begin
        buff_A1_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce13 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce13;
    end else begin
        buff_A1_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce14 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce14;
    end else begin
        buff_A1_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce15 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce15;
    end else begin
        buff_A1_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce2;
    end else begin
        buff_A1_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce3;
    end else begin
        buff_A1_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce4;
    end else begin
        buff_A1_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce5;
    end else begin
        buff_A1_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce6;
    end else begin
        buff_A1_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce7;
    end else begin
        buff_A1_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce8 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce8;
    end else begin
        buff_A1_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce9 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_2_ce9;
    end else begin
        buff_A1_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_2_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_2_we0;
    end else begin
        buff_A1_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_address0;
    end else begin
        buff_A1_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_ce0;
    end else begin
        buff_A1_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce1;
    end else begin
        buff_A1_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce10 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce10;
    end else begin
        buff_A1_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce11 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce11;
    end else begin
        buff_A1_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce12 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce12;
    end else begin
        buff_A1_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce13 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce13;
    end else begin
        buff_A1_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce14 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce14;
    end else begin
        buff_A1_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce15 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce15;
    end else begin
        buff_A1_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce2;
    end else begin
        buff_A1_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce3;
    end else begin
        buff_A1_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce4;
    end else begin
        buff_A1_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce5;
    end else begin
        buff_A1_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce6;
    end else begin
        buff_A1_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce7;
    end else begin
        buff_A1_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce8 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce8;
    end else begin
        buff_A1_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce9 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_3_ce9;
    end else begin
        buff_A1_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_3_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_3_we0;
    end else begin
        buff_A1_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_address0;
    end else begin
        buff_A1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_ce0;
    end else begin
        buff_A1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce1;
    end else begin
        buff_A1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce10 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce10;
    end else begin
        buff_A1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce11 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce11;
    end else begin
        buff_A1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce12 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce12;
    end else begin
        buff_A1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce13 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce13;
    end else begin
        buff_A1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce14 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce14;
    end else begin
        buff_A1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce15 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce15;
    end else begin
        buff_A1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce2;
    end else begin
        buff_A1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce3;
    end else begin
        buff_A1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce4;
    end else begin
        buff_A1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce5;
    end else begin
        buff_A1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce6;
    end else begin
        buff_A1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce7;
    end else begin
        buff_A1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce8 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce8;
    end else begin
        buff_A1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce9 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_A1_ce9;
    end else begin
        buff_A1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_A1_we0;
    end else begin
        buff_A1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_1_address0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_address0;
    end else begin
        buff_B_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_1_ce0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_ce0;
    end else begin
        buff_B_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_1_we0;
    end else begin
        buff_B_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_2_address0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_address0;
    end else begin
        buff_B_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_2_ce0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_ce0;
    end else begin
        buff_B_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_2_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_2_we0;
    end else begin
        buff_B_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_3_address0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_address0;
    end else begin
        buff_B_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_3_ce0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_ce0;
    end else begin
        buff_B_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_3_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_3_we0;
    end else begin
        buff_B_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_address0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_address0;
    end else begin
        buff_B_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_ce0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_B_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_ce0;
    end else begin
        buff_B_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_B_we0;
    end else begin
        buff_B_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_address0;
    end else begin
        buff_C_out_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_address1 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_address1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_address1;
    end else begin
        buff_C_out_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_ce0;
    end else begin
        buff_C_out_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_ce1 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_ce1;
    end else begin
        buff_C_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_d0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_d0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_d0;
    end else begin
        buff_C_out_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_we0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_we0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_1_we0;
    end else begin
        buff_C_out_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_2_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_address0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_address0;
    end else begin
        buff_C_out_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_address1 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_address1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_address1;
    end else begin
        buff_C_out_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_2_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_ce0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_ce0;
    end else begin
        buff_C_out_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_ce1 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_ce1;
    end else begin
        buff_C_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_d0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_d0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_2_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_d0;
    end else begin
        buff_C_out_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_we0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_we0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_2_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_2_we0;
    end else begin
        buff_C_out_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_3_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_address0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_address0;
    end else begin
        buff_C_out_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_address1 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_address1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_address1;
    end else begin
        buff_C_out_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_3_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_ce0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_ce0;
    end else begin
        buff_C_out_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_ce1 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_ce1;
    end else begin
        buff_C_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_d0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_d0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_3_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_d0;
    end else begin
        buff_C_out_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_we0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_we0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_3_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_3_we0;
    end else begin
        buff_C_out_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_address0;
    end else begin
        buff_C_out_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_address1 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_address1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_address1;
    end else begin
        buff_C_out_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_buff_C_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_ce0;
    end else begin
        buff_C_out_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_ce1 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_ce1;
    end else begin
        buff_C_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_d0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_d0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_d0;
    end else begin
        buff_C_out_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_we0 = grp_syrk_Pipeline_lp4_lp5_fu_208_buff_C_out_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_we0 = grp_syrk_Pipeline_lp1_lp2_fu_190_buff_C_out_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_buff_C_out_we0;
    end else begin
        buff_C_out_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_248_ce = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_248_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_248_ce = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_248_p_ce;
    end else begin
        grp_fu_248_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_248_p0 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_248_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_248_p0 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_248_p_din0;
    end else begin
        grp_fu_248_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_248_p1 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_248_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_248_p1 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_248_p_din1;
    end else begin
        grp_fu_248_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_252_ce = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_252_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_252_ce = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_252_p_ce;
    end else begin
        grp_fu_252_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_252_p0 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_252_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_252_p0 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_252_p_din0;
    end else begin
        grp_fu_252_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_252_p1 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_252_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_252_p1 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_252_p_din1;
    end else begin
        grp_fu_252_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_ce = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_256_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_ce = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_256_p_ce;
    end else begin
        grp_fu_256_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_p0 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_256_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_p0 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_256_p_din0;
    end else begin
        grp_fu_256_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_p1 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_256_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_p1 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_256_p_din1;
    end else begin
        grp_fu_256_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_260_ce = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_260_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_ce = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_260_p_ce;
    end else begin
        grp_fu_260_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_260_p0 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_260_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_p0 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_260_p_din0;
    end else begin
        grp_fu_260_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_260_p1 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_260_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_p1 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_260_p_din1;
    end else begin
        grp_fu_260_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_264_ce = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_264_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_ce = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_264_p_ce;
    end else begin
        grp_fu_264_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_264_p0 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_264_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_p0 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_264_p_din0;
    end else begin
        grp_fu_264_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_264_p1 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_264_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_p1 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_264_p_din1;
    end else begin
        grp_fu_264_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_268_ce = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_268_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_268_ce = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_268_p_ce;
    end else begin
        grp_fu_268_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_268_p0 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_268_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_268_p0 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_268_p_din0;
    end else begin
        grp_fu_268_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_268_p1 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_268_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_268_p1 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_268_p_din1;
    end else begin
        grp_fu_268_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_272_ce = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_272_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_272_ce = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_272_p_ce;
    end else begin
        grp_fu_272_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_272_p0 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_272_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_272_p0 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_272_p_din0;
    end else begin
        grp_fu_272_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_272_p1 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_272_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_272_p1 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_272_p_din1;
    end else begin
        grp_fu_272_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_276_ce = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_276_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_276_ce = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_276_p_ce;
    end else begin
        grp_fu_276_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_276_p0 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_276_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_276_p0 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_276_p_din0;
    end else begin
        grp_fu_276_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_276_p1 = grp_syrk_Pipeline_lp4_lp5_fu_208_grp_fu_276_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_276_p1 = grp_syrk_Pipeline_lp1_lp2_fu_190_grp_fu_276_p_din1;
    end else begin
        grp_fu_276_p1 = 'bx;
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
            if (((grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_syrk_Pipeline_lp1_lp2_fu_190_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_syrk_Pipeline_lp4_lp5_fu_208_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_0_address0;
assign A_0_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_0_ce0;
assign A_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_1_address0;
assign A_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_1_ce0;
assign A_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_2_address0;
assign A_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_2_ce0;
assign A_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_3_address0;
assign A_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_A_3_ce0;
assign B_0_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_0_address0;
assign B_0_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_0_ce0;
assign B_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_1_address0;
assign B_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_1_ce0;
assign B_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_2_address0;
assign B_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_2_ce0;
assign B_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_3_address0;
assign B_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_B_3_ce0;
assign C_out_0_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_0_din;
assign C_out_1_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_1_din;
assign C_out_2_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_2_din;
assign C_out_3_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_C_out_3_din;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign grp_syrk_Pipeline_lp1_lp2_fu_190_ap_start = grp_syrk_Pipeline_lp1_lp2_fu_190_ap_start_reg;
assign grp_syrk_Pipeline_lp4_lp5_fu_208_ap_start = grp_syrk_Pipeline_lp4_lp5_fu_208_ap_start_reg;
assign grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_start = grp_syrk_Pipeline_lprd_1_lprd_2_fu_138_ap_start_reg;
assign grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_start = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_222_ap_start_reg;
endmodule 
