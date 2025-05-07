module ss_sort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_0_address1,a_0_ce1,a_0_q1,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0,a_1_address1,a_1_ce1,a_1_q1,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_2_q0,a_2_address1,a_2_ce1,a_2_q1,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_3_q0,a_3_address1,a_3_ce1,a_3_q1,b_0_address0,b_0_ce0,b_0_we0,b_0_d0,b_0_q0,b_0_address1,b_0_ce1,b_0_q1,b_1_address0,b_1_ce0,b_1_we0,b_1_d0,b_1_q0,b_1_address1,b_1_ce1,b_1_q1,b_2_address0,b_2_ce0,b_2_we0,b_2_d0,b_2_q0,b_2_address1,b_2_ce1,b_2_q1,b_3_address0,b_3_ce0,b_3_we0,b_3_d0,b_3_q0,b_3_address1,b_3_ce1,b_3_q1,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_0_address1,bucket_0_ce1,bucket_0_we1,bucket_0_d1,bucket_0_q1,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_1_address1,bucket_1_ce1,bucket_1_we1,bucket_1_d1,bucket_1_q1,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_2_address1,bucket_2_ce1,bucket_2_we1,bucket_2_d1,bucket_2_q1,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0,bucket_3_address1,bucket_3_ce1,bucket_3_we1,bucket_3_d1,bucket_3_q1,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,sum_0_address1,sum_0_ce1,sum_0_q1,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_1_q0,sum_1_address1,sum_1_ce1,sum_1_q1,sum_2_address0,sum_2_ce0,sum_2_we0,sum_2_d0,sum_2_q0,sum_2_address1,sum_2_ce1,sum_2_q1,sum_3_address0,sum_3_ce0,sum_3_we0,sum_3_d0,sum_3_q0,sum_3_address1,sum_3_ce1,sum_3_q1); 
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
output  [8:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
input  [31:0] a_0_q0;
output  [8:0] a_0_address1;
output   a_0_ce1;
input  [31:0] a_0_q1;
output  [8:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
input  [31:0] a_1_q0;
output  [8:0] a_1_address1;
output   a_1_ce1;
input  [31:0] a_1_q1;
output  [8:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
input  [31:0] a_2_q0;
output  [8:0] a_2_address1;
output   a_2_ce1;
input  [31:0] a_2_q1;
output  [8:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
input  [31:0] a_3_q0;
output  [8:0] a_3_address1;
output   a_3_ce1;
input  [31:0] a_3_q1;
output  [8:0] b_0_address0;
output   b_0_ce0;
output   b_0_we0;
output  [31:0] b_0_d0;
input  [31:0] b_0_q0;
output  [8:0] b_0_address1;
output   b_0_ce1;
input  [31:0] b_0_q1;
output  [8:0] b_1_address0;
output   b_1_ce0;
output   b_1_we0;
output  [31:0] b_1_d0;
input  [31:0] b_1_q0;
output  [8:0] b_1_address1;
output   b_1_ce1;
input  [31:0] b_1_q1;
output  [8:0] b_2_address0;
output   b_2_ce0;
output   b_2_we0;
output  [31:0] b_2_d0;
input  [31:0] b_2_q0;
output  [8:0] b_2_address1;
output   b_2_ce1;
input  [31:0] b_2_q1;
output  [8:0] b_3_address0;
output   b_3_ce0;
output   b_3_we0;
output  [31:0] b_3_d0;
input  [31:0] b_3_q0;
output  [8:0] b_3_address1;
output   b_3_ce1;
input  [31:0] b_3_q1;
output  [8:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [8:0] bucket_0_address1;
output   bucket_0_ce1;
output   bucket_0_we1;
output  [31:0] bucket_0_d1;
input  [31:0] bucket_0_q1;
output  [8:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [8:0] bucket_1_address1;
output   bucket_1_ce1;
output   bucket_1_we1;
output  [31:0] bucket_1_d1;
input  [31:0] bucket_1_q1;
output  [8:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
input  [31:0] bucket_2_q0;
output  [8:0] bucket_2_address1;
output   bucket_2_ce1;
output   bucket_2_we1;
output  [31:0] bucket_2_d1;
input  [31:0] bucket_2_q1;
output  [8:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
input  [31:0] bucket_3_q0;
output  [8:0] bucket_3_address1;
output   bucket_3_ce1;
output   bucket_3_we1;
output  [31:0] bucket_3_d1;
input  [31:0] bucket_3_q1;
output  [4:0] sum_0_address0;
output   sum_0_ce0;
output   sum_0_we0;
output  [31:0] sum_0_d0;
input  [31:0] sum_0_q0;
output  [4:0] sum_0_address1;
output   sum_0_ce1;
input  [31:0] sum_0_q1;
output  [4:0] sum_1_address0;
output   sum_1_ce0;
output   sum_1_we0;
output  [31:0] sum_1_d0;
input  [31:0] sum_1_q0;
output  [4:0] sum_1_address1;
output   sum_1_ce1;
input  [31:0] sum_1_q1;
output  [4:0] sum_2_address0;
output   sum_2_ce0;
output   sum_2_we0;
output  [31:0] sum_2_d0;
input  [31:0] sum_2_q0;
output  [4:0] sum_2_address1;
output   sum_2_ce1;
input  [31:0] sum_2_q1;
output  [4:0] sum_3_address0;
output   sum_3_ce0;
output   sum_3_we0;
output  [31:0] sum_3_d0;
input  [31:0] sum_3_q0;
output  [4:0] sum_3_address1;
output   sum_3_ce1;
input  [31:0] sum_3_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[8:0] a_0_address0;
reg a_0_ce0;
reg a_0_we0;
reg a_0_ce1;
reg[8:0] a_1_address0;
reg a_1_ce0;
reg a_1_we0;
reg a_1_ce1;
reg[8:0] a_2_address0;
reg a_2_ce0;
reg a_2_we0;
reg a_2_ce1;
reg[8:0] a_3_address0;
reg a_3_ce0;
reg a_3_we0;
reg a_3_ce1;
reg[8:0] b_0_address0;
reg b_0_ce0;
reg b_0_we0;
reg b_0_ce1;
reg[8:0] b_1_address0;
reg b_1_ce0;
reg b_1_we0;
reg b_1_ce1;
reg[8:0] b_2_address0;
reg b_2_ce0;
reg b_2_we0;
reg b_2_ce1;
reg[8:0] b_3_address0;
reg b_3_ce0;
reg b_3_we0;
reg b_3_ce1;
reg[8:0] bucket_0_address0;
reg bucket_0_ce0;
reg bucket_0_we0;
reg[31:0] bucket_0_d0;
reg[8:0] bucket_0_address1;
reg bucket_0_ce1;
reg bucket_0_we1;
reg[31:0] bucket_0_d1;
reg[8:0] bucket_1_address0;
reg bucket_1_ce0;
reg bucket_1_we0;
reg[31:0] bucket_1_d0;
reg[8:0] bucket_1_address1;
reg bucket_1_ce1;
reg bucket_1_we1;
reg[31:0] bucket_1_d1;
reg[8:0] bucket_2_address0;
reg bucket_2_ce0;
reg bucket_2_we0;
reg[31:0] bucket_2_d0;
reg[8:0] bucket_2_address1;
reg bucket_2_ce1;
reg bucket_2_we1;
reg[31:0] bucket_2_d1;
reg[8:0] bucket_3_address0;
reg bucket_3_ce0;
reg bucket_3_we0;
reg[31:0] bucket_3_d0;
reg[8:0] bucket_3_address1;
reg bucket_3_ce1;
reg bucket_3_we1;
reg[31:0] bucket_3_d1;
reg[4:0] sum_0_address0;
reg sum_0_ce0;
reg sum_0_we0;
reg[31:0] sum_0_d0;
reg sum_0_ce1;
reg[4:0] sum_1_address0;
reg sum_1_ce0;
reg sum_1_we0;
reg sum_1_ce1;
reg[4:0] sum_2_address0;
reg sum_2_ce0;
reg sum_2_we0;
reg sum_2_ce1;
reg[4:0] sum_3_address0;
reg sum_3_ce0;
reg sum_3_we0;
reg sum_3_ce1;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] trunc_ln63_fu_286_p1;
reg   [4:0] trunc_ln63_reg_317;
wire    ap_CS_fsm_state3;
wire    grp_ss_sort_Pipeline_init_1_fu_129_ap_start;
wire    grp_ss_sort_Pipeline_init_1_fu_129_ap_done;
wire    grp_ss_sort_Pipeline_init_1_fu_129_ap_idle;
wire    grp_ss_sort_Pipeline_init_1_fu_129_ap_ready;
wire   [8:0] grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_d0;
wire   [8:0] grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_d0;
wire   [8:0] grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_d0;
wire   [8:0] grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_d0;
wire    grp_hist_fu_141_ap_start;
wire    grp_hist_fu_141_ap_done;
wire    grp_hist_fu_141_ap_idle;
wire    grp_hist_fu_141_ap_ready;
wire   [8:0] grp_hist_fu_141_bucket_0_address0;
wire    grp_hist_fu_141_bucket_0_ce0;
wire    grp_hist_fu_141_bucket_0_we0;
wire   [31:0] grp_hist_fu_141_bucket_0_d0;
wire   [8:0] grp_hist_fu_141_bucket_1_address0;
wire    grp_hist_fu_141_bucket_1_ce0;
wire    grp_hist_fu_141_bucket_1_we0;
wire   [31:0] grp_hist_fu_141_bucket_1_d0;
wire   [8:0] grp_hist_fu_141_bucket_2_address0;
wire    grp_hist_fu_141_bucket_2_ce0;
wire    grp_hist_fu_141_bucket_2_we0;
wire   [31:0] grp_hist_fu_141_bucket_2_d0;
wire   [8:0] grp_hist_fu_141_bucket_3_address0;
wire    grp_hist_fu_141_bucket_3_ce0;
wire    grp_hist_fu_141_bucket_3_we0;
wire   [31:0] grp_hist_fu_141_bucket_3_d0;
wire   [8:0] grp_hist_fu_141_b_0_address0;
wire    grp_hist_fu_141_b_0_ce0;
reg   [31:0] grp_hist_fu_141_b_0_q0;
wire   [8:0] grp_hist_fu_141_b_0_address1;
wire    grp_hist_fu_141_b_0_ce1;
reg   [31:0] grp_hist_fu_141_b_0_q1;
wire   [8:0] grp_hist_fu_141_b_1_address0;
wire    grp_hist_fu_141_b_1_ce0;
reg   [31:0] grp_hist_fu_141_b_1_q0;
wire   [8:0] grp_hist_fu_141_b_1_address1;
wire    grp_hist_fu_141_b_1_ce1;
reg   [31:0] grp_hist_fu_141_b_1_q1;
wire   [8:0] grp_hist_fu_141_b_2_address0;
wire    grp_hist_fu_141_b_2_ce0;
reg   [31:0] grp_hist_fu_141_b_2_q0;
wire   [8:0] grp_hist_fu_141_b_2_address1;
wire    grp_hist_fu_141_b_2_ce1;
reg   [31:0] grp_hist_fu_141_b_2_q1;
wire   [8:0] grp_hist_fu_141_b_3_address0;
wire    grp_hist_fu_141_b_3_ce0;
reg   [31:0] grp_hist_fu_141_b_3_q0;
wire   [8:0] grp_hist_fu_141_b_3_address1;
wire    grp_hist_fu_141_b_3_ce1;
reg   [31:0] grp_hist_fu_141_b_3_q1;
wire    grp_local_scan_fu_166_ap_start;
wire    grp_local_scan_fu_166_ap_done;
wire    grp_local_scan_fu_166_ap_idle;
wire    grp_local_scan_fu_166_ap_ready;
wire   [8:0] grp_local_scan_fu_166_bucket_0_address0;
wire    grp_local_scan_fu_166_bucket_0_ce0;
wire    grp_local_scan_fu_166_bucket_0_we0;
wire   [31:0] grp_local_scan_fu_166_bucket_0_d0;
wire   [8:0] grp_local_scan_fu_166_bucket_0_address1;
wire    grp_local_scan_fu_166_bucket_0_ce1;
wire    grp_local_scan_fu_166_bucket_0_we1;
wire   [31:0] grp_local_scan_fu_166_bucket_0_d1;
wire   [8:0] grp_local_scan_fu_166_bucket_1_address0;
wire    grp_local_scan_fu_166_bucket_1_ce0;
wire    grp_local_scan_fu_166_bucket_1_we0;
wire   [31:0] grp_local_scan_fu_166_bucket_1_d0;
wire   [8:0] grp_local_scan_fu_166_bucket_1_address1;
wire    grp_local_scan_fu_166_bucket_1_ce1;
wire    grp_local_scan_fu_166_bucket_1_we1;
wire   [31:0] grp_local_scan_fu_166_bucket_1_d1;
wire   [8:0] grp_local_scan_fu_166_bucket_2_address0;
wire    grp_local_scan_fu_166_bucket_2_ce0;
wire    grp_local_scan_fu_166_bucket_2_we0;
wire   [31:0] grp_local_scan_fu_166_bucket_2_d0;
wire   [8:0] grp_local_scan_fu_166_bucket_2_address1;
wire    grp_local_scan_fu_166_bucket_2_ce1;
wire    grp_local_scan_fu_166_bucket_2_we1;
wire   [31:0] grp_local_scan_fu_166_bucket_2_d1;
wire   [8:0] grp_local_scan_fu_166_bucket_3_address0;
wire    grp_local_scan_fu_166_bucket_3_ce0;
wire    grp_local_scan_fu_166_bucket_3_we0;
wire   [31:0] grp_local_scan_fu_166_bucket_3_d0;
wire   [8:0] grp_local_scan_fu_166_bucket_3_address1;
wire    grp_local_scan_fu_166_bucket_3_ce1;
wire    grp_local_scan_fu_166_bucket_3_we1;
wire   [31:0] grp_local_scan_fu_166_bucket_3_d1;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_ap_start;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_ap_done;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_ap_idle;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_ap_ready;
wire   [4:0] grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_address0;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_ce0;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_we0;
wire   [31:0] grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_d0;
wire   [4:0] grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_address0;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_ce0;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_we0;
wire   [31:0] grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_d0;
wire   [4:0] grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_address0;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_ce0;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_we0;
wire   [31:0] grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_d0;
wire   [4:0] grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_address0;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_ce0;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_we0;
wire   [31:0] grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_d0;
wire   [8:0] grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_address0;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_ce0;
wire   [8:0] grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_address1;
wire    grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_ce1;
wire    grp_last_step_scan_fu_192_ap_start;
wire    grp_last_step_scan_fu_192_ap_done;
wire    grp_last_step_scan_fu_192_ap_idle;
wire    grp_last_step_scan_fu_192_ap_ready;
wire   [8:0] grp_last_step_scan_fu_192_bucket_0_address0;
wire    grp_last_step_scan_fu_192_bucket_0_ce0;
wire    grp_last_step_scan_fu_192_bucket_0_we0;
wire   [31:0] grp_last_step_scan_fu_192_bucket_0_d0;
wire   [8:0] grp_last_step_scan_fu_192_bucket_0_address1;
wire    grp_last_step_scan_fu_192_bucket_0_ce1;
wire    grp_last_step_scan_fu_192_bucket_0_we1;
wire   [31:0] grp_last_step_scan_fu_192_bucket_0_d1;
wire   [8:0] grp_last_step_scan_fu_192_bucket_1_address0;
wire    grp_last_step_scan_fu_192_bucket_1_ce0;
wire    grp_last_step_scan_fu_192_bucket_1_we0;
wire   [31:0] grp_last_step_scan_fu_192_bucket_1_d0;
wire   [8:0] grp_last_step_scan_fu_192_bucket_1_address1;
wire    grp_last_step_scan_fu_192_bucket_1_ce1;
wire    grp_last_step_scan_fu_192_bucket_1_we1;
wire   [31:0] grp_last_step_scan_fu_192_bucket_1_d1;
wire   [8:0] grp_last_step_scan_fu_192_bucket_2_address0;
wire    grp_last_step_scan_fu_192_bucket_2_ce0;
wire    grp_last_step_scan_fu_192_bucket_2_we0;
wire   [31:0] grp_last_step_scan_fu_192_bucket_2_d0;
wire   [8:0] grp_last_step_scan_fu_192_bucket_2_address1;
wire    grp_last_step_scan_fu_192_bucket_2_ce1;
wire    grp_last_step_scan_fu_192_bucket_2_we1;
wire   [31:0] grp_last_step_scan_fu_192_bucket_2_d1;
wire   [8:0] grp_last_step_scan_fu_192_bucket_3_address0;
wire    grp_last_step_scan_fu_192_bucket_3_ce0;
wire    grp_last_step_scan_fu_192_bucket_3_we0;
wire   [31:0] grp_last_step_scan_fu_192_bucket_3_d0;
wire   [8:0] grp_last_step_scan_fu_192_bucket_3_address1;
wire    grp_last_step_scan_fu_192_bucket_3_ce1;
wire    grp_last_step_scan_fu_192_bucket_3_we1;
wire   [31:0] grp_last_step_scan_fu_192_bucket_3_d1;
wire   [4:0] grp_last_step_scan_fu_192_sum_0_address0;
wire    grp_last_step_scan_fu_192_sum_0_ce0;
wire   [4:0] grp_last_step_scan_fu_192_sum_0_address1;
wire    grp_last_step_scan_fu_192_sum_0_ce1;
wire   [4:0] grp_last_step_scan_fu_192_sum_1_address0;
wire    grp_last_step_scan_fu_192_sum_1_ce0;
wire   [4:0] grp_last_step_scan_fu_192_sum_1_address1;
wire    grp_last_step_scan_fu_192_sum_1_ce1;
wire   [4:0] grp_last_step_scan_fu_192_sum_2_address0;
wire    grp_last_step_scan_fu_192_sum_2_ce0;
wire   [4:0] grp_last_step_scan_fu_192_sum_2_address1;
wire    grp_last_step_scan_fu_192_sum_2_ce1;
wire   [4:0] grp_last_step_scan_fu_192_sum_3_address0;
wire    grp_last_step_scan_fu_192_sum_3_ce0;
wire   [4:0] grp_last_step_scan_fu_192_sum_3_address1;
wire    grp_last_step_scan_fu_192_sum_3_ce1;
wire    grp_ss_sort_Pipeline_update_1_fu_212_ap_start;
wire    grp_ss_sort_Pipeline_update_1_fu_212_ap_done;
wire    grp_ss_sort_Pipeline_update_1_fu_212_ap_idle;
wire    grp_ss_sort_Pipeline_update_1_fu_212_ap_ready;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_b_2_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_b_2_ce0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_b_2_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_fu_212_b_2_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_ce0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_ce0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_ce0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_ce0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_b_0_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_b_0_ce0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_b_0_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_fu_212_b_0_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_b_3_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_b_3_ce0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_b_3_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_fu_212_b_3_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_b_1_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_b_1_ce0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_b_1_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_fu_212_b_1_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_a_0_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_a_0_ce0;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_a_1_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_a_1_ce0;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_a_2_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_a_2_ce0;
wire   [8:0] grp_ss_sort_Pipeline_update_1_fu_212_a_3_address0;
wire    grp_ss_sort_Pipeline_update_1_fu_212_a_3_ce0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_ap_start;
wire    grp_ss_sort_Pipeline_update_11_fu_241_ap_done;
wire    grp_ss_sort_Pipeline_update_11_fu_241_ap_idle;
wire    grp_ss_sort_Pipeline_update_11_fu_241_ap_ready;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_a_2_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_a_2_ce0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_a_2_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_11_fu_241_a_2_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_ce0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_ce0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_ce0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_ce0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_a_0_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_a_0_ce0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_a_0_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_11_fu_241_a_0_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_a_3_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_a_3_ce0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_a_3_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_11_fu_241_a_3_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_a_1_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_a_1_ce0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_a_1_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_11_fu_241_a_1_d0;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_b_0_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_b_0_ce0;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_b_1_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_b_1_ce0;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_b_2_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_b_2_ce0;
wire   [8:0] grp_ss_sort_Pipeline_update_11_fu_241_b_3_address0;
wire    grp_ss_sort_Pipeline_update_11_fu_241_b_3_ce0;
reg   [0:0] valid_buffer_reg_104;
reg   [0:0] ap_phi_mux_valid_buffer_1_phi_fu_120_p4;
wire    ap_CS_fsm_state14;
reg    ap_block_state14_on_subcall_done;
reg    grp_ss_sort_Pipeline_init_1_fu_129_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_278_p3;
reg    grp_hist_fu_141_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state5;
reg    grp_local_scan_fu_166_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_ss_sort_Pipeline_sum_1_fu_178_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg    grp_last_step_scan_fu_192_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    grp_ss_sort_Pipeline_update_1_fu_212_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_ss_sort_Pipeline_update_11_fu_241_ap_start_reg;
wire    ap_CS_fsm_state15;
reg   [5:0] exp_fu_86;
wire   [5:0] exp_3_fu_289_p2;
reg    sum_0_we0_local;
reg    ap_block_state5_on_subcall_done;
reg    sum_0_ce0_local;
reg   [14:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 grp_ss_sort_Pipeline_init_1_fu_129_ap_start_reg = 1'b0;
#0 grp_hist_fu_141_ap_start_reg = 1'b0;
#0 grp_local_scan_fu_166_ap_start_reg = 1'b0;
#0 grp_ss_sort_Pipeline_sum_1_fu_178_ap_start_reg = 1'b0;
#0 grp_last_step_scan_fu_192_ap_start_reg = 1'b0;
#0 grp_ss_sort_Pipeline_update_1_fu_212_ap_start_reg = 1'b0;
#0 grp_ss_sort_Pipeline_update_11_fu_241_ap_start_reg = 1'b0;
#0 exp_fu_86 = 6'd0;
end
ss_sort_ss_sort_Pipeline_init_1 grp_ss_sort_Pipeline_init_1_fu_129(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ss_sort_Pipeline_init_1_fu_129_ap_start),.ap_done(grp_ss_sort_Pipeline_init_1_fu_129_ap_done),.ap_idle(grp_ss_sort_Pipeline_init_1_fu_129_ap_idle),.ap_ready(grp_ss_sort_Pipeline_init_1_fu_129_ap_ready),.bucket_0_address0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_address0),.bucket_0_ce0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_ce0),.bucket_0_we0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_we0),.bucket_0_d0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_d0),.bucket_3_address0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_address0),.bucket_3_ce0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_ce0),.bucket_3_we0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_we0),.bucket_3_d0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_d0),.bucket_2_address0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_address0),.bucket_2_ce0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_ce0),.bucket_2_we0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_we0),.bucket_2_d0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_d0),.bucket_1_address0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_address0),.bucket_1_ce0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_ce0),.bucket_1_we0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_we0),.bucket_1_d0(grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_d0));
ss_sort_hist grp_hist_fu_141(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_hist_fu_141_ap_start),.ap_done(grp_hist_fu_141_ap_done),.ap_idle(grp_hist_fu_141_ap_idle),.ap_ready(grp_hist_fu_141_ap_ready),.bucket_0_address0(grp_hist_fu_141_bucket_0_address0),.bucket_0_ce0(grp_hist_fu_141_bucket_0_ce0),.bucket_0_we0(grp_hist_fu_141_bucket_0_we0),.bucket_0_d0(grp_hist_fu_141_bucket_0_d0),.bucket_0_q0(bucket_0_q0),.bucket_1_address0(grp_hist_fu_141_bucket_1_address0),.bucket_1_ce0(grp_hist_fu_141_bucket_1_ce0),.bucket_1_we0(grp_hist_fu_141_bucket_1_we0),.bucket_1_d0(grp_hist_fu_141_bucket_1_d0),.bucket_1_q0(bucket_1_q0),.bucket_2_address0(grp_hist_fu_141_bucket_2_address0),.bucket_2_ce0(grp_hist_fu_141_bucket_2_ce0),.bucket_2_we0(grp_hist_fu_141_bucket_2_we0),.bucket_2_d0(grp_hist_fu_141_bucket_2_d0),.bucket_2_q0(bucket_2_q0),.bucket_3_address0(grp_hist_fu_141_bucket_3_address0),.bucket_3_ce0(grp_hist_fu_141_bucket_3_ce0),.bucket_3_we0(grp_hist_fu_141_bucket_3_we0),.bucket_3_d0(grp_hist_fu_141_bucket_3_d0),.bucket_3_q0(bucket_3_q0),.b_0_address0(grp_hist_fu_141_b_0_address0),.b_0_ce0(grp_hist_fu_141_b_0_ce0),.b_0_q0(grp_hist_fu_141_b_0_q0),.b_0_address1(grp_hist_fu_141_b_0_address1),.b_0_ce1(grp_hist_fu_141_b_0_ce1),.b_0_q1(grp_hist_fu_141_b_0_q1),.b_1_address0(grp_hist_fu_141_b_1_address0),.b_1_ce0(grp_hist_fu_141_b_1_ce0),.b_1_q0(grp_hist_fu_141_b_1_q0),.b_1_address1(grp_hist_fu_141_b_1_address1),.b_1_ce1(grp_hist_fu_141_b_1_ce1),.b_1_q1(grp_hist_fu_141_b_1_q1),.b_2_address0(grp_hist_fu_141_b_2_address0),.b_2_ce0(grp_hist_fu_141_b_2_ce0),.b_2_q0(grp_hist_fu_141_b_2_q0),.b_2_address1(grp_hist_fu_141_b_2_address1),.b_2_ce1(grp_hist_fu_141_b_2_ce1),.b_2_q1(grp_hist_fu_141_b_2_q1),.b_3_address0(grp_hist_fu_141_b_3_address0),.b_3_ce0(grp_hist_fu_141_b_3_ce0),.b_3_q0(grp_hist_fu_141_b_3_q0),.b_3_address1(grp_hist_fu_141_b_3_address1),.b_3_ce1(grp_hist_fu_141_b_3_ce1),.b_3_q1(grp_hist_fu_141_b_3_q1),.exp(trunc_ln63_reg_317));
ss_sort_local_scan grp_local_scan_fu_166(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_local_scan_fu_166_ap_start),.ap_done(grp_local_scan_fu_166_ap_done),.ap_idle(grp_local_scan_fu_166_ap_idle),.ap_ready(grp_local_scan_fu_166_ap_ready),.bucket_0_address0(grp_local_scan_fu_166_bucket_0_address0),.bucket_0_ce0(grp_local_scan_fu_166_bucket_0_ce0),.bucket_0_we0(grp_local_scan_fu_166_bucket_0_we0),.bucket_0_d0(grp_local_scan_fu_166_bucket_0_d0),.bucket_0_q0(bucket_0_q0),.bucket_0_address1(grp_local_scan_fu_166_bucket_0_address1),.bucket_0_ce1(grp_local_scan_fu_166_bucket_0_ce1),.bucket_0_we1(grp_local_scan_fu_166_bucket_0_we1),.bucket_0_d1(grp_local_scan_fu_166_bucket_0_d1),.bucket_0_q1(bucket_0_q1),.bucket_1_address0(grp_local_scan_fu_166_bucket_1_address0),.bucket_1_ce0(grp_local_scan_fu_166_bucket_1_ce0),.bucket_1_we0(grp_local_scan_fu_166_bucket_1_we0),.bucket_1_d0(grp_local_scan_fu_166_bucket_1_d0),.bucket_1_q0(bucket_1_q0),.bucket_1_address1(grp_local_scan_fu_166_bucket_1_address1),.bucket_1_ce1(grp_local_scan_fu_166_bucket_1_ce1),.bucket_1_we1(grp_local_scan_fu_166_bucket_1_we1),.bucket_1_d1(grp_local_scan_fu_166_bucket_1_d1),.bucket_1_q1(bucket_1_q1),.bucket_2_address0(grp_local_scan_fu_166_bucket_2_address0),.bucket_2_ce0(grp_local_scan_fu_166_bucket_2_ce0),.bucket_2_we0(grp_local_scan_fu_166_bucket_2_we0),.bucket_2_d0(grp_local_scan_fu_166_bucket_2_d0),.bucket_2_q0(bucket_2_q0),.bucket_2_address1(grp_local_scan_fu_166_bucket_2_address1),.bucket_2_ce1(grp_local_scan_fu_166_bucket_2_ce1),.bucket_2_we1(grp_local_scan_fu_166_bucket_2_we1),.bucket_2_d1(grp_local_scan_fu_166_bucket_2_d1),.bucket_2_q1(bucket_2_q1),.bucket_3_address0(grp_local_scan_fu_166_bucket_3_address0),.bucket_3_ce0(grp_local_scan_fu_166_bucket_3_ce0),.bucket_3_we0(grp_local_scan_fu_166_bucket_3_we0),.bucket_3_d0(grp_local_scan_fu_166_bucket_3_d0),.bucket_3_q0(bucket_3_q0),.bucket_3_address1(grp_local_scan_fu_166_bucket_3_address1),.bucket_3_ce1(grp_local_scan_fu_166_bucket_3_ce1),.bucket_3_we1(grp_local_scan_fu_166_bucket_3_we1),.bucket_3_d1(grp_local_scan_fu_166_bucket_3_d1),.bucket_3_q1(bucket_3_q1));
ss_sort_ss_sort_Pipeline_sum_1 grp_ss_sort_Pipeline_sum_1_fu_178(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ss_sort_Pipeline_sum_1_fu_178_ap_start),.ap_done(grp_ss_sort_Pipeline_sum_1_fu_178_ap_done),.ap_idle(grp_ss_sort_Pipeline_sum_1_fu_178_ap_idle),.ap_ready(grp_ss_sort_Pipeline_sum_1_fu_178_ap_ready),.sum_3_address0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_address0),.sum_3_ce0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_ce0),.sum_3_we0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_we0),.sum_3_d0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_d0),.sum_2_address0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_address0),.sum_2_ce0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_ce0),.sum_2_we0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_we0),.sum_2_d0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_d0),.sum_1_address0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_address0),.sum_1_ce0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_ce0),.sum_1_we0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_we0),.sum_1_d0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_d0),.sum_0_address0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_address0),.sum_0_ce0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_ce0),.sum_0_we0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_we0),.sum_0_d0(grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_d0),.sum_0_q0(sum_0_q0),.bucket_3_address0(grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_address0),.bucket_3_ce0(grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_ce0),.bucket_3_q0(bucket_3_q0),.bucket_3_address1(grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_address1),.bucket_3_ce1(grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_ce1),.bucket_3_q1(bucket_3_q1));
ss_sort_last_step_scan grp_last_step_scan_fu_192(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_last_step_scan_fu_192_ap_start),.ap_done(grp_last_step_scan_fu_192_ap_done),.ap_idle(grp_last_step_scan_fu_192_ap_idle),.ap_ready(grp_last_step_scan_fu_192_ap_ready),.bucket_0_address0(grp_last_step_scan_fu_192_bucket_0_address0),.bucket_0_ce0(grp_last_step_scan_fu_192_bucket_0_ce0),.bucket_0_we0(grp_last_step_scan_fu_192_bucket_0_we0),.bucket_0_d0(grp_last_step_scan_fu_192_bucket_0_d0),.bucket_0_q0(bucket_0_q0),.bucket_0_address1(grp_last_step_scan_fu_192_bucket_0_address1),.bucket_0_ce1(grp_last_step_scan_fu_192_bucket_0_ce1),.bucket_0_we1(grp_last_step_scan_fu_192_bucket_0_we1),.bucket_0_d1(grp_last_step_scan_fu_192_bucket_0_d1),.bucket_0_q1(bucket_0_q1),.bucket_1_address0(grp_last_step_scan_fu_192_bucket_1_address0),.bucket_1_ce0(grp_last_step_scan_fu_192_bucket_1_ce0),.bucket_1_we0(grp_last_step_scan_fu_192_bucket_1_we0),.bucket_1_d0(grp_last_step_scan_fu_192_bucket_1_d0),.bucket_1_q0(bucket_1_q0),.bucket_1_address1(grp_last_step_scan_fu_192_bucket_1_address1),.bucket_1_ce1(grp_last_step_scan_fu_192_bucket_1_ce1),.bucket_1_we1(grp_last_step_scan_fu_192_bucket_1_we1),.bucket_1_d1(grp_last_step_scan_fu_192_bucket_1_d1),.bucket_1_q1(bucket_1_q1),.bucket_2_address0(grp_last_step_scan_fu_192_bucket_2_address0),.bucket_2_ce0(grp_last_step_scan_fu_192_bucket_2_ce0),.bucket_2_we0(grp_last_step_scan_fu_192_bucket_2_we0),.bucket_2_d0(grp_last_step_scan_fu_192_bucket_2_d0),.bucket_2_q0(bucket_2_q0),.bucket_2_address1(grp_last_step_scan_fu_192_bucket_2_address1),.bucket_2_ce1(grp_last_step_scan_fu_192_bucket_2_ce1),.bucket_2_we1(grp_last_step_scan_fu_192_bucket_2_we1),.bucket_2_d1(grp_last_step_scan_fu_192_bucket_2_d1),.bucket_2_q1(bucket_2_q1),.bucket_3_address0(grp_last_step_scan_fu_192_bucket_3_address0),.bucket_3_ce0(grp_last_step_scan_fu_192_bucket_3_ce0),.bucket_3_we0(grp_last_step_scan_fu_192_bucket_3_we0),.bucket_3_d0(grp_last_step_scan_fu_192_bucket_3_d0),.bucket_3_q0(bucket_3_q0),.bucket_3_address1(grp_last_step_scan_fu_192_bucket_3_address1),.bucket_3_ce1(grp_last_step_scan_fu_192_bucket_3_ce1),.bucket_3_we1(grp_last_step_scan_fu_192_bucket_3_we1),.bucket_3_d1(grp_last_step_scan_fu_192_bucket_3_d1),.bucket_3_q1(bucket_3_q1),.sum_0_address0(grp_last_step_scan_fu_192_sum_0_address0),.sum_0_ce0(grp_last_step_scan_fu_192_sum_0_ce0),.sum_0_q0(sum_0_q0),.sum_0_address1(grp_last_step_scan_fu_192_sum_0_address1),.sum_0_ce1(grp_last_step_scan_fu_192_sum_0_ce1),.sum_0_q1(sum_0_q1),.sum_1_address0(grp_last_step_scan_fu_192_sum_1_address0),.sum_1_ce0(grp_last_step_scan_fu_192_sum_1_ce0),.sum_1_q0(sum_1_q0),.sum_1_address1(grp_last_step_scan_fu_192_sum_1_address1),.sum_1_ce1(grp_last_step_scan_fu_192_sum_1_ce1),.sum_1_q1(sum_1_q1),.sum_2_address0(grp_last_step_scan_fu_192_sum_2_address0),.sum_2_ce0(grp_last_step_scan_fu_192_sum_2_ce0),.sum_2_q0(sum_2_q0),.sum_2_address1(grp_last_step_scan_fu_192_sum_2_address1),.sum_2_ce1(grp_last_step_scan_fu_192_sum_2_ce1),.sum_2_q1(sum_2_q1),.sum_3_address0(grp_last_step_scan_fu_192_sum_3_address0),.sum_3_ce0(grp_last_step_scan_fu_192_sum_3_ce0),.sum_3_q0(sum_3_q0),.sum_3_address1(grp_last_step_scan_fu_192_sum_3_address1),.sum_3_ce1(grp_last_step_scan_fu_192_sum_3_ce1),.sum_3_q1(sum_3_q1));
ss_sort_ss_sort_Pipeline_update_1 grp_ss_sort_Pipeline_update_1_fu_212(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ss_sort_Pipeline_update_1_fu_212_ap_start),.ap_done(grp_ss_sort_Pipeline_update_1_fu_212_ap_done),.ap_idle(grp_ss_sort_Pipeline_update_1_fu_212_ap_idle),.ap_ready(grp_ss_sort_Pipeline_update_1_fu_212_ap_ready),.b_2_address0(grp_ss_sort_Pipeline_update_1_fu_212_b_2_address0),.b_2_ce0(grp_ss_sort_Pipeline_update_1_fu_212_b_2_ce0),.b_2_we0(grp_ss_sort_Pipeline_update_1_fu_212_b_2_we0),.b_2_d0(grp_ss_sort_Pipeline_update_1_fu_212_b_2_d0),.zext_ln63(trunc_ln63_reg_317),.bucket_0_address0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_address0),.bucket_0_ce0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_ce0),.bucket_0_we0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_we0),.bucket_0_d0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_d0),.bucket_0_q0(bucket_0_q0),.bucket_1_address0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_address0),.bucket_1_ce0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_ce0),.bucket_1_we0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_we0),.bucket_1_d0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_d0),.bucket_1_q0(bucket_1_q0),.bucket_2_address0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_address0),.bucket_2_ce0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_ce0),.bucket_2_we0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_we0),.bucket_2_d0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_d0),.bucket_2_q0(bucket_2_q0),.bucket_3_address0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_address0),.bucket_3_ce0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_ce0),.bucket_3_we0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_we0),.bucket_3_d0(grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_d0),.bucket_3_q0(bucket_3_q0),.b_0_address0(grp_ss_sort_Pipeline_update_1_fu_212_b_0_address0),.b_0_ce0(grp_ss_sort_Pipeline_update_1_fu_212_b_0_ce0),.b_0_we0(grp_ss_sort_Pipeline_update_1_fu_212_b_0_we0),.b_0_d0(grp_ss_sort_Pipeline_update_1_fu_212_b_0_d0),.b_3_address0(grp_ss_sort_Pipeline_update_1_fu_212_b_3_address0),.b_3_ce0(grp_ss_sort_Pipeline_update_1_fu_212_b_3_ce0),.b_3_we0(grp_ss_sort_Pipeline_update_1_fu_212_b_3_we0),.b_3_d0(grp_ss_sort_Pipeline_update_1_fu_212_b_3_d0),.b_1_address0(grp_ss_sort_Pipeline_update_1_fu_212_b_1_address0),.b_1_ce0(grp_ss_sort_Pipeline_update_1_fu_212_b_1_ce0),.b_1_we0(grp_ss_sort_Pipeline_update_1_fu_212_b_1_we0),.b_1_d0(grp_ss_sort_Pipeline_update_1_fu_212_b_1_d0),.a_0_address0(grp_ss_sort_Pipeline_update_1_fu_212_a_0_address0),.a_0_ce0(grp_ss_sort_Pipeline_update_1_fu_212_a_0_ce0),.a_0_q0(a_0_q0),.a_1_address0(grp_ss_sort_Pipeline_update_1_fu_212_a_1_address0),.a_1_ce0(grp_ss_sort_Pipeline_update_1_fu_212_a_1_ce0),.a_1_q0(a_1_q0),.a_2_address0(grp_ss_sort_Pipeline_update_1_fu_212_a_2_address0),.a_2_ce0(grp_ss_sort_Pipeline_update_1_fu_212_a_2_ce0),.a_2_q0(a_2_q0),.a_3_address0(grp_ss_sort_Pipeline_update_1_fu_212_a_3_address0),.a_3_ce0(grp_ss_sort_Pipeline_update_1_fu_212_a_3_ce0),.a_3_q0(a_3_q0));
ss_sort_ss_sort_Pipeline_update_11 grp_ss_sort_Pipeline_update_11_fu_241(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ss_sort_Pipeline_update_11_fu_241_ap_start),.ap_done(grp_ss_sort_Pipeline_update_11_fu_241_ap_done),.ap_idle(grp_ss_sort_Pipeline_update_11_fu_241_ap_idle),.ap_ready(grp_ss_sort_Pipeline_update_11_fu_241_ap_ready),.a_2_address0(grp_ss_sort_Pipeline_update_11_fu_241_a_2_address0),.a_2_ce0(grp_ss_sort_Pipeline_update_11_fu_241_a_2_ce0),.a_2_we0(grp_ss_sort_Pipeline_update_11_fu_241_a_2_we0),.a_2_d0(grp_ss_sort_Pipeline_update_11_fu_241_a_2_d0),.zext_ln63(trunc_ln63_reg_317),.bucket_0_address0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_address0),.bucket_0_ce0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_ce0),.bucket_0_we0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_we0),.bucket_0_d0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_d0),.bucket_0_q0(bucket_0_q0),.bucket_1_address0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_address0),.bucket_1_ce0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_ce0),.bucket_1_we0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_we0),.bucket_1_d0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_d0),.bucket_1_q0(bucket_1_q0),.bucket_2_address0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_address0),.bucket_2_ce0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_ce0),.bucket_2_we0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_we0),.bucket_2_d0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_d0),.bucket_2_q0(bucket_2_q0),.bucket_3_address0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_address0),.bucket_3_ce0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_ce0),.bucket_3_we0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_we0),.bucket_3_d0(grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_d0),.bucket_3_q0(bucket_3_q0),.a_0_address0(grp_ss_sort_Pipeline_update_11_fu_241_a_0_address0),.a_0_ce0(grp_ss_sort_Pipeline_update_11_fu_241_a_0_ce0),.a_0_we0(grp_ss_sort_Pipeline_update_11_fu_241_a_0_we0),.a_0_d0(grp_ss_sort_Pipeline_update_11_fu_241_a_0_d0),.a_3_address0(grp_ss_sort_Pipeline_update_11_fu_241_a_3_address0),.a_3_ce0(grp_ss_sort_Pipeline_update_11_fu_241_a_3_ce0),.a_3_we0(grp_ss_sort_Pipeline_update_11_fu_241_a_3_we0),.a_3_d0(grp_ss_sort_Pipeline_update_11_fu_241_a_3_d0),.a_1_address0(grp_ss_sort_Pipeline_update_11_fu_241_a_1_address0),.a_1_ce0(grp_ss_sort_Pipeline_update_11_fu_241_a_1_ce0),.a_1_we0(grp_ss_sort_Pipeline_update_11_fu_241_a_1_we0),.a_1_d0(grp_ss_sort_Pipeline_update_11_fu_241_a_1_d0),.b_0_address0(grp_ss_sort_Pipeline_update_11_fu_241_b_0_address0),.b_0_ce0(grp_ss_sort_Pipeline_update_11_fu_241_b_0_ce0),.b_0_q0(b_0_q0),.b_1_address0(grp_ss_sort_Pipeline_update_11_fu_241_b_1_address0),.b_1_ce0(grp_ss_sort_Pipeline_update_11_fu_241_b_1_ce0),.b_1_q0(b_1_q0),.b_2_address0(grp_ss_sort_Pipeline_update_11_fu_241_b_2_address0),.b_2_ce0(grp_ss_sort_Pipeline_update_11_fu_241_b_2_ce0),.b_2_q0(b_2_q0),.b_3_address0(grp_ss_sort_Pipeline_update_11_fu_241_b_3_address0),.b_3_ce0(grp_ss_sort_Pipeline_update_11_fu_241_b_3_ce0),.b_3_q0(b_3_q0));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_hist_fu_141_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
            grp_hist_fu_141_ap_start_reg <= 1'b1;
        end else if ((grp_hist_fu_141_ap_ready == 1'b1)) begin
            grp_hist_fu_141_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_last_step_scan_fu_192_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_last_step_scan_fu_192_ap_start_reg <= 1'b1;
        end else if ((grp_last_step_scan_fu_192_ap_ready == 1'b1)) begin
            grp_last_step_scan_fu_192_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_local_scan_fu_166_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_local_scan_fu_166_ap_start_reg <= 1'b1;
        end else if ((grp_local_scan_fu_166_ap_ready == 1'b1)) begin
            grp_local_scan_fu_166_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ss_sort_Pipeline_init_1_fu_129_ap_start_reg <= 1'b0;
    end else begin
        if (((tmp_fu_278_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_ss_sort_Pipeline_init_1_fu_129_ap_start_reg <= 1'b1;
        end else if ((grp_ss_sort_Pipeline_init_1_fu_129_ap_ready == 1'b1)) begin
            grp_ss_sort_Pipeline_init_1_fu_129_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ss_sort_Pipeline_sum_1_fu_178_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_ss_sort_Pipeline_sum_1_fu_178_ap_start_reg <= 1'b1;
        end else if ((grp_ss_sort_Pipeline_sum_1_fu_178_ap_ready == 1'b1)) begin
            grp_ss_sort_Pipeline_sum_1_fu_178_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ss_sort_Pipeline_update_11_fu_241_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_ss_sort_Pipeline_update_11_fu_241_ap_start_reg <= 1'b1;
        end else if ((grp_ss_sort_Pipeline_update_11_fu_241_ap_ready == 1'b1)) begin
            grp_ss_sort_Pipeline_update_11_fu_241_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ss_sort_Pipeline_update_1_fu_212_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_ss_sort_Pipeline_update_1_fu_212_ap_start_reg <= 1'b1;
        end else if ((grp_ss_sort_Pipeline_update_1_fu_212_ap_ready == 1'b1)) begin
            grp_ss_sort_Pipeline_update_1_fu_212_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        exp_fu_86 <= 6'd0;
    end else if (((1'b0 == ap_block_state14_on_subcall_done) & (1'b1 == ap_CS_fsm_state14))) begin
        exp_fu_86 <= exp_3_fu_289_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state14_on_subcall_done) & (1'b1 == ap_CS_fsm_state14))) begin
        valid_buffer_reg_104 <= ap_phi_mux_valid_buffer_1_phi_fu_120_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        valid_buffer_reg_104 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln63_reg_317 <= trunc_ln63_fu_286_p1;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_0_address0 = grp_ss_sort_Pipeline_update_11_fu_241_a_0_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        a_0_address0 = grp_ss_sort_Pipeline_update_1_fu_212_a_0_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_0_address0 = grp_hist_fu_141_b_0_address0;
    end else begin
        a_0_address0 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_0_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_a_0_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        a_0_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_a_0_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_0_ce0 = grp_hist_fu_141_b_0_ce0;
    end else begin
        a_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_0_ce1 = grp_hist_fu_141_b_0_ce1;
    end else begin
        a_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_0_we0 = grp_ss_sort_Pipeline_update_11_fu_241_a_0_we0;
    end else begin
        a_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_1_address0 = grp_ss_sort_Pipeline_update_11_fu_241_a_1_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        a_1_address0 = grp_ss_sort_Pipeline_update_1_fu_212_a_1_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_1_address0 = grp_hist_fu_141_b_1_address0;
    end else begin
        a_1_address0 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_1_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_a_1_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        a_1_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_a_1_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_1_ce0 = grp_hist_fu_141_b_1_ce0;
    end else begin
        a_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_1_ce1 = grp_hist_fu_141_b_1_ce1;
    end else begin
        a_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_1_we0 = grp_ss_sort_Pipeline_update_11_fu_241_a_1_we0;
    end else begin
        a_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_2_address0 = grp_ss_sort_Pipeline_update_11_fu_241_a_2_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        a_2_address0 = grp_ss_sort_Pipeline_update_1_fu_212_a_2_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_2_address0 = grp_hist_fu_141_b_2_address0;
    end else begin
        a_2_address0 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_2_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_a_2_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        a_2_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_a_2_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_2_ce0 = grp_hist_fu_141_b_2_ce0;
    end else begin
        a_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_2_ce1 = grp_hist_fu_141_b_2_ce1;
    end else begin
        a_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_2_we0 = grp_ss_sort_Pipeline_update_11_fu_241_a_2_we0;
    end else begin
        a_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_3_address0 = grp_ss_sort_Pipeline_update_11_fu_241_a_3_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        a_3_address0 = grp_ss_sort_Pipeline_update_1_fu_212_a_3_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_3_address0 = grp_hist_fu_141_b_3_address0;
    end else begin
        a_3_address0 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_3_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_a_3_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        a_3_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_a_3_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_3_ce0 = grp_hist_fu_141_b_3_ce0;
    end else begin
        a_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_3_ce1 = grp_hist_fu_141_b_3_ce1;
    end else begin
        a_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_3_we0 = grp_ss_sort_Pipeline_update_11_fu_241_a_3_we0;
    end else begin
        a_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((grp_ss_sort_Pipeline_sum_1_fu_178_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_last_step_scan_fu_192_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state14_on_subcall_done)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((grp_ss_sort_Pipeline_init_1_fu_129_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state5_on_subcall_done)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_local_scan_fu_166_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_fu_278_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((1'b1 == ap_CS_fsm_state14)) begin
        if ((valid_buffer_reg_104 == 1'd0)) begin
            ap_phi_mux_valid_buffer_1_phi_fu_120_p4 = 1'd1;
        end else if ((valid_buffer_reg_104 == 1'd1)) begin
            ap_phi_mux_valid_buffer_1_phi_fu_120_p4 = 1'd0;
        end else begin
            ap_phi_mux_valid_buffer_1_phi_fu_120_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_valid_buffer_1_phi_fu_120_p4 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_fu_278_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        b_0_address0 = grp_ss_sort_Pipeline_update_11_fu_241_b_0_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_0_address0 = grp_ss_sort_Pipeline_update_1_fu_212_b_0_address0;
    end else if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_0_address0 = grp_hist_fu_141_b_0_address0;
    end else begin
        b_0_address0 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        b_0_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_b_0_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_0_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_b_0_ce0;
    end else if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_0_ce0 = grp_hist_fu_141_b_0_ce0;
    end else begin
        b_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_0_ce1 = grp_hist_fu_141_b_0_ce1;
    end else begin
        b_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_0_we0 = grp_ss_sort_Pipeline_update_1_fu_212_b_0_we0;
    end else begin
        b_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        b_1_address0 = grp_ss_sort_Pipeline_update_11_fu_241_b_1_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_1_address0 = grp_ss_sort_Pipeline_update_1_fu_212_b_1_address0;
    end else if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_1_address0 = grp_hist_fu_141_b_1_address0;
    end else begin
        b_1_address0 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        b_1_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_b_1_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_1_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_b_1_ce0;
    end else if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_1_ce0 = grp_hist_fu_141_b_1_ce0;
    end else begin
        b_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_1_ce1 = grp_hist_fu_141_b_1_ce1;
    end else begin
        b_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_1_we0 = grp_ss_sort_Pipeline_update_1_fu_212_b_1_we0;
    end else begin
        b_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        b_2_address0 = grp_ss_sort_Pipeline_update_11_fu_241_b_2_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_2_address0 = grp_ss_sort_Pipeline_update_1_fu_212_b_2_address0;
    end else if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_2_address0 = grp_hist_fu_141_b_2_address0;
    end else begin
        b_2_address0 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        b_2_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_b_2_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_2_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_b_2_ce0;
    end else if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_2_ce0 = grp_hist_fu_141_b_2_ce0;
    end else begin
        b_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_2_ce1 = grp_hist_fu_141_b_2_ce1;
    end else begin
        b_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_2_we0 = grp_ss_sort_Pipeline_update_1_fu_212_b_2_we0;
    end else begin
        b_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        b_3_address0 = grp_ss_sort_Pipeline_update_11_fu_241_b_3_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_3_address0 = grp_ss_sort_Pipeline_update_1_fu_212_b_3_address0;
    end else if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_3_address0 = grp_hist_fu_141_b_3_address0;
    end else begin
        b_3_address0 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        b_3_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_b_3_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_3_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_b_3_ce0;
    end else if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_3_ce0 = grp_hist_fu_141_b_3_ce0;
    end else begin
        b_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_3_ce1 = grp_hist_fu_141_b_3_ce1;
    end else begin
        b_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_3_we0 = grp_ss_sort_Pipeline_update_1_fu_212_b_3_we0;
    end else begin
        b_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_0_address0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_0_address0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_address0 = grp_last_step_scan_fu_192_bucket_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_address0 = grp_local_scan_fu_166_bucket_0_address0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_0_address0 = grp_hist_fu_141_bucket_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_address0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_address0;
    end else begin
        bucket_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_address1 = grp_last_step_scan_fu_192_bucket_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_address1 = grp_local_scan_fu_166_bucket_0_address1;
    end else begin
        bucket_0_address1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_0_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_0_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_ce0 = grp_last_step_scan_fu_192_bucket_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_ce0 = grp_local_scan_fu_166_bucket_0_ce0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_0_ce0 = grp_hist_fu_141_bucket_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_ce0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_ce0;
    end else begin
        bucket_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_ce1 = grp_last_step_scan_fu_192_bucket_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_ce1 = grp_local_scan_fu_166_bucket_0_ce1;
    end else begin
        bucket_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_0_d0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_d0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_0_d0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_d0 = grp_last_step_scan_fu_192_bucket_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_d0 = grp_local_scan_fu_166_bucket_0_d0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_0_d0 = grp_hist_fu_141_bucket_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_d0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_d0;
    end else begin
        bucket_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_d1 = grp_last_step_scan_fu_192_bucket_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_d1 = grp_local_scan_fu_166_bucket_0_d1;
    end else begin
        bucket_0_d1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_0_we0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_0_we0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_0_we0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_we0 = grp_last_step_scan_fu_192_bucket_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_we0 = grp_local_scan_fu_166_bucket_0_we0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_0_we0 = grp_hist_fu_141_bucket_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_we0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_0_we0;
    end else begin
        bucket_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_we1 = grp_last_step_scan_fu_192_bucket_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_we1 = grp_local_scan_fu_166_bucket_0_we1;
    end else begin
        bucket_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_1_address0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_1_address0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_address0 = grp_last_step_scan_fu_192_bucket_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_address0 = grp_local_scan_fu_166_bucket_1_address0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_1_address0 = grp_hist_fu_141_bucket_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_address0;
    end else begin
        bucket_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_address1 = grp_last_step_scan_fu_192_bucket_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_address1 = grp_local_scan_fu_166_bucket_1_address1;
    end else begin
        bucket_1_address1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_1_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_1_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_ce0 = grp_last_step_scan_fu_192_bucket_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_ce0 = grp_local_scan_fu_166_bucket_1_ce0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_1_ce0 = grp_hist_fu_141_bucket_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_ce0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_ce0;
    end else begin
        bucket_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_ce1 = grp_last_step_scan_fu_192_bucket_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_ce1 = grp_local_scan_fu_166_bucket_1_ce1;
    end else begin
        bucket_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_1_d0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_d0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_1_d0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_d0 = grp_last_step_scan_fu_192_bucket_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_d0 = grp_local_scan_fu_166_bucket_1_d0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_1_d0 = grp_hist_fu_141_bucket_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_d0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_d0;
    end else begin
        bucket_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_d1 = grp_last_step_scan_fu_192_bucket_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_d1 = grp_local_scan_fu_166_bucket_1_d1;
    end else begin
        bucket_1_d1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_1_we0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_1_we0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_1_we0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_we0 = grp_last_step_scan_fu_192_bucket_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_we0 = grp_local_scan_fu_166_bucket_1_we0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_1_we0 = grp_hist_fu_141_bucket_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_we0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_1_we0;
    end else begin
        bucket_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_we1 = grp_last_step_scan_fu_192_bucket_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_we1 = grp_local_scan_fu_166_bucket_1_we1;
    end else begin
        bucket_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_2_address0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_2_address0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_address0 = grp_last_step_scan_fu_192_bucket_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_address0 = grp_local_scan_fu_166_bucket_2_address0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_2_address0 = grp_hist_fu_141_bucket_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_address0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_address0;
    end else begin
        bucket_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_address1 = grp_last_step_scan_fu_192_bucket_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_address1 = grp_local_scan_fu_166_bucket_2_address1;
    end else begin
        bucket_2_address1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_2_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_2_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_ce0 = grp_last_step_scan_fu_192_bucket_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_ce0 = grp_local_scan_fu_166_bucket_2_ce0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_2_ce0 = grp_hist_fu_141_bucket_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_ce0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_ce0;
    end else begin
        bucket_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_ce1 = grp_last_step_scan_fu_192_bucket_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_ce1 = grp_local_scan_fu_166_bucket_2_ce1;
    end else begin
        bucket_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_2_d0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_d0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_2_d0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_d0 = grp_last_step_scan_fu_192_bucket_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_d0 = grp_local_scan_fu_166_bucket_2_d0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_2_d0 = grp_hist_fu_141_bucket_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_d0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_d0;
    end else begin
        bucket_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_d1 = grp_last_step_scan_fu_192_bucket_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_d1 = grp_local_scan_fu_166_bucket_2_d1;
    end else begin
        bucket_2_d1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_2_we0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_2_we0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_2_we0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_we0 = grp_last_step_scan_fu_192_bucket_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_we0 = grp_local_scan_fu_166_bucket_2_we0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_2_we0 = grp_hist_fu_141_bucket_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_we0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_2_we0;
    end else begin
        bucket_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_we1 = grp_last_step_scan_fu_192_bucket_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_we1 = grp_local_scan_fu_166_bucket_2_we1;
    end else begin
        bucket_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_3_address0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_address0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_3_address0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_address0 = grp_last_step_scan_fu_192_bucket_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_3_address0 = grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_address0 = grp_local_scan_fu_166_bucket_3_address0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_3_address0 = grp_hist_fu_141_bucket_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_address0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_address0;
    end else begin
        bucket_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_address1 = grp_last_step_scan_fu_192_bucket_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_3_address1 = grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_address1 = grp_local_scan_fu_166_bucket_3_address1;
    end else begin
        bucket_3_address1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_3_ce0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_ce0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_3_ce0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_ce0 = grp_last_step_scan_fu_192_bucket_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_3_ce0 = grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_ce0 = grp_local_scan_fu_166_bucket_3_ce0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_3_ce0 = grp_hist_fu_141_bucket_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_ce0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_ce0;
    end else begin
        bucket_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_ce1 = grp_last_step_scan_fu_192_bucket_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_3_ce1 = grp_ss_sort_Pipeline_sum_1_fu_178_bucket_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_ce1 = grp_local_scan_fu_166_bucket_3_ce1;
    end else begin
        bucket_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_3_d0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_d0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_3_d0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_d0 = grp_last_step_scan_fu_192_bucket_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_d0 = grp_local_scan_fu_166_bucket_3_d0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_3_d0 = grp_hist_fu_141_bucket_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_d0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_d0;
    end else begin
        bucket_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_d1 = grp_last_step_scan_fu_192_bucket_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_d1 = grp_local_scan_fu_166_bucket_3_d1;
    end else begin
        bucket_3_d1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_3_we0 = grp_ss_sort_Pipeline_update_11_fu_241_bucket_3_we0;
    end else if (((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        bucket_3_we0 = grp_ss_sort_Pipeline_update_1_fu_212_bucket_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_we0 = grp_last_step_scan_fu_192_bucket_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_we0 = grp_local_scan_fu_166_bucket_3_we0;
    end else if ((((valid_buffer_reg_104 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_104 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_3_we0 = grp_hist_fu_141_bucket_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_we0 = grp_ss_sort_Pipeline_init_1_fu_129_bucket_3_we0;
    end else begin
        bucket_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_we1 = grp_last_step_scan_fu_192_bucket_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_we1 = grp_local_scan_fu_166_bucket_3_we1;
    end else begin
        bucket_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_104 == 1'd1)) begin
            grp_hist_fu_141_b_0_q0 = b_0_q0;
        end else if ((valid_buffer_reg_104 == 1'd0)) begin
            grp_hist_fu_141_b_0_q0 = a_0_q0;
        end else begin
            grp_hist_fu_141_b_0_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_141_b_0_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_104 == 1'd1)) begin
            grp_hist_fu_141_b_0_q1 = b_0_q1;
        end else if ((valid_buffer_reg_104 == 1'd0)) begin
            grp_hist_fu_141_b_0_q1 = a_0_q1;
        end else begin
            grp_hist_fu_141_b_0_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_141_b_0_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_104 == 1'd1)) begin
            grp_hist_fu_141_b_1_q0 = b_1_q0;
        end else if ((valid_buffer_reg_104 == 1'd0)) begin
            grp_hist_fu_141_b_1_q0 = a_1_q0;
        end else begin
            grp_hist_fu_141_b_1_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_141_b_1_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_104 == 1'd1)) begin
            grp_hist_fu_141_b_1_q1 = b_1_q1;
        end else if ((valid_buffer_reg_104 == 1'd0)) begin
            grp_hist_fu_141_b_1_q1 = a_1_q1;
        end else begin
            grp_hist_fu_141_b_1_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_141_b_1_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_104 == 1'd1)) begin
            grp_hist_fu_141_b_2_q0 = b_2_q0;
        end else if ((valid_buffer_reg_104 == 1'd0)) begin
            grp_hist_fu_141_b_2_q0 = a_2_q0;
        end else begin
            grp_hist_fu_141_b_2_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_141_b_2_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_104 == 1'd1)) begin
            grp_hist_fu_141_b_2_q1 = b_2_q1;
        end else if ((valid_buffer_reg_104 == 1'd0)) begin
            grp_hist_fu_141_b_2_q1 = a_2_q1;
        end else begin
            grp_hist_fu_141_b_2_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_141_b_2_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_104 == 1'd1)) begin
            grp_hist_fu_141_b_3_q0 = b_3_q0;
        end else if ((valid_buffer_reg_104 == 1'd0)) begin
            grp_hist_fu_141_b_3_q0 = a_3_q0;
        end else begin
            grp_hist_fu_141_b_3_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_141_b_3_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_104 == 1'd1)) begin
            grp_hist_fu_141_b_3_q1 = b_3_q1;
        end else if ((valid_buffer_reg_104 == 1'd0)) begin
            grp_hist_fu_141_b_3_q1 = a_3_q1;
        end else begin
            grp_hist_fu_141_b_3_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_141_b_3_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_0_address0 = grp_last_step_scan_fu_192_sum_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_0_address0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_address0;
    end else begin
        sum_0_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_0_ce0 = grp_last_step_scan_fu_192_sum_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_0_ce0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_ce0;
    end else begin
        sum_0_ce0 = sum_0_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_0_ce1 = grp_last_step_scan_fu_192_sum_0_ce1;
    end else begin
        sum_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_0_d0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_d0;
    end else begin
        sum_0_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_0_we0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_0_we0;
    end else begin
        sum_0_we0 = sum_0_we0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_1_address0 = grp_last_step_scan_fu_192_sum_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_1_address0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_address0;
    end else begin
        sum_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_1_ce0 = grp_last_step_scan_fu_192_sum_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_1_ce0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_ce0;
    end else begin
        sum_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_1_ce1 = grp_last_step_scan_fu_192_sum_1_ce1;
    end else begin
        sum_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_1_we0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_we0;
    end else begin
        sum_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_2_address0 = grp_last_step_scan_fu_192_sum_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_2_address0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_address0;
    end else begin
        sum_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_2_ce0 = grp_last_step_scan_fu_192_sum_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_2_ce0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_ce0;
    end else begin
        sum_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_2_ce1 = grp_last_step_scan_fu_192_sum_2_ce1;
    end else begin
        sum_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_2_we0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_we0;
    end else begin
        sum_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_3_address0 = grp_last_step_scan_fu_192_sum_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_3_address0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_address0;
    end else begin
        sum_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_3_ce0 = grp_last_step_scan_fu_192_sum_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_3_ce0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_ce0;
    end else begin
        sum_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_3_ce1 = grp_last_step_scan_fu_192_sum_3_ce1;
    end else begin
        sum_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_3_we0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_we0;
    end else begin
        sum_3_we0 = 1'b0;
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
            if (((tmp_fu_278_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((valid_buffer_reg_104 == 1'd1) & (grp_ss_sort_Pipeline_init_1_fu_129_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((valid_buffer_reg_104 == 1'd0) & (grp_ss_sort_Pipeline_init_1_fu_129_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_local_scan_fu_166_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_ss_sort_Pipeline_sum_1_fu_178_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((valid_buffer_reg_104 == 1'd1) & (grp_last_step_scan_fu_192_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else if (((valid_buffer_reg_104 == 1'd0) & (grp_last_step_scan_fu_192_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b0 == ap_block_state14_on_subcall_done) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_address1 = grp_hist_fu_141_b_0_address1;
assign a_0_d0 = grp_ss_sort_Pipeline_update_11_fu_241_a_0_d0;
assign a_1_address1 = grp_hist_fu_141_b_1_address1;
assign a_1_d0 = grp_ss_sort_Pipeline_update_11_fu_241_a_1_d0;
assign a_2_address1 = grp_hist_fu_141_b_2_address1;
assign a_2_d0 = grp_ss_sort_Pipeline_update_11_fu_241_a_2_d0;
assign a_3_address1 = grp_hist_fu_141_b_3_address1;
assign a_3_d0 = grp_ss_sort_Pipeline_update_11_fu_241_a_3_d0;
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
always @ (*) begin
    ap_block_state14_on_subcall_done = (((valid_buffer_reg_104 == 1'd1) & (grp_ss_sort_Pipeline_update_11_fu_241_ap_done == 1'b0)) | ((valid_buffer_reg_104 == 1'd0) & (grp_ss_sort_Pipeline_update_1_fu_212_ap_done == 1'b0)));
end
always @ (*) begin
    ap_block_state5_on_subcall_done = (((valid_buffer_reg_104 == 1'd1) & (grp_hist_fu_141_ap_done == 1'b0)) | ((valid_buffer_reg_104 == 1'd0) & (grp_hist_fu_141_ap_done == 1'b0)));
end
assign b_0_address1 = grp_hist_fu_141_b_0_address1;
assign b_0_d0 = grp_ss_sort_Pipeline_update_1_fu_212_b_0_d0;
assign b_1_address1 = grp_hist_fu_141_b_1_address1;
assign b_1_d0 = grp_ss_sort_Pipeline_update_1_fu_212_b_1_d0;
assign b_2_address1 = grp_hist_fu_141_b_2_address1;
assign b_2_d0 = grp_ss_sort_Pipeline_update_1_fu_212_b_2_d0;
assign b_3_address1 = grp_hist_fu_141_b_3_address1;
assign b_3_d0 = grp_ss_sort_Pipeline_update_1_fu_212_b_3_d0;
assign exp_3_fu_289_p2 = (exp_fu_86 + 6'd2);
assign grp_hist_fu_141_ap_start = grp_hist_fu_141_ap_start_reg;
assign grp_last_step_scan_fu_192_ap_start = grp_last_step_scan_fu_192_ap_start_reg;
assign grp_local_scan_fu_166_ap_start = grp_local_scan_fu_166_ap_start_reg;
assign grp_ss_sort_Pipeline_init_1_fu_129_ap_start = grp_ss_sort_Pipeline_init_1_fu_129_ap_start_reg;
assign grp_ss_sort_Pipeline_sum_1_fu_178_ap_start = grp_ss_sort_Pipeline_sum_1_fu_178_ap_start_reg;
assign grp_ss_sort_Pipeline_update_11_fu_241_ap_start = grp_ss_sort_Pipeline_update_11_fu_241_ap_start_reg;
assign grp_ss_sort_Pipeline_update_1_fu_212_ap_start = grp_ss_sort_Pipeline_update_1_fu_212_ap_start_reg;
assign sum_0_address1 = grp_last_step_scan_fu_192_sum_0_address1;
assign sum_1_address1 = grp_last_step_scan_fu_192_sum_1_address1;
assign sum_1_d0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_1_d0;
assign sum_2_address1 = grp_last_step_scan_fu_192_sum_2_address1;
assign sum_2_d0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_2_d0;
assign sum_3_address1 = grp_last_step_scan_fu_192_sum_3_address1;
assign sum_3_d0 = grp_ss_sort_Pipeline_sum_1_fu_178_sum_3_d0;
assign tmp_fu_278_p3 = exp_fu_86[32'd5];
assign trunc_ln63_fu_286_p1 = exp_fu_86[4:0];
endmodule 