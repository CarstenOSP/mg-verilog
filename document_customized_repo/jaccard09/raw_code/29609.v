module ss_sort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_0_address1,a_0_ce1,a_0_q1,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0,a_1_address1,a_1_ce1,a_1_q1,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_2_q0,a_2_address1,a_2_ce1,a_2_q1,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_3_q0,a_3_address1,a_3_ce1,a_3_q1,a_4_address0,a_4_ce0,a_4_we0,a_4_d0,a_4_q0,a_4_address1,a_4_ce1,a_4_q1,a_5_address0,a_5_ce0,a_5_we0,a_5_d0,a_5_q0,a_5_address1,a_5_ce1,a_5_q1,a_6_address0,a_6_ce0,a_6_we0,a_6_d0,a_6_q0,a_6_address1,a_6_ce1,a_6_q1,a_7_address0,a_7_ce0,a_7_we0,a_7_d0,a_7_q0,a_7_address1,a_7_ce1,a_7_q1,b_0_address0,b_0_ce0,b_0_we0,b_0_d0,b_0_q0,b_0_address1,b_0_ce1,b_0_q1,b_1_address0,b_1_ce0,b_1_we0,b_1_d0,b_1_q0,b_1_address1,b_1_ce1,b_1_q1,b_2_address0,b_2_ce0,b_2_we0,b_2_d0,b_2_q0,b_2_address1,b_2_ce1,b_2_q1,b_3_address0,b_3_ce0,b_3_we0,b_3_d0,b_3_q0,b_3_address1,b_3_ce1,b_3_q1,b_4_address0,b_4_ce0,b_4_we0,b_4_d0,b_4_q0,b_4_address1,b_4_ce1,b_4_q1,b_5_address0,b_5_ce0,b_5_we0,b_5_d0,b_5_q0,b_5_address1,b_5_ce1,b_5_q1,b_6_address0,b_6_ce0,b_6_we0,b_6_d0,b_6_q0,b_6_address1,b_6_ce1,b_6_q1,b_7_address0,b_7_ce0,b_7_we0,b_7_d0,b_7_q0,b_7_address1,b_7_ce1,b_7_q1,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_0_address1,bucket_0_ce1,bucket_0_we1,bucket_0_d1,bucket_0_q1,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_1_address1,bucket_1_ce1,bucket_1_we1,bucket_1_d1,bucket_1_q1,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_2_address1,bucket_2_ce1,bucket_2_we1,bucket_2_d1,bucket_2_q1,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0,bucket_3_address1,bucket_3_ce1,bucket_3_we1,bucket_3_d1,bucket_3_q1,bucket_4_address0,bucket_4_ce0,bucket_4_we0,bucket_4_d0,bucket_4_q0,bucket_4_address1,bucket_4_ce1,bucket_4_we1,bucket_4_d1,bucket_4_q1,bucket_5_address0,bucket_5_ce0,bucket_5_we0,bucket_5_d0,bucket_5_q0,bucket_5_address1,bucket_5_ce1,bucket_5_we1,bucket_5_d1,bucket_5_q1,bucket_6_address0,bucket_6_ce0,bucket_6_we0,bucket_6_d0,bucket_6_q0,bucket_6_address1,bucket_6_ce1,bucket_6_we1,bucket_6_d1,bucket_6_q1,bucket_7_address0,bucket_7_ce0,bucket_7_we0,bucket_7_d0,bucket_7_q0,bucket_7_address1,bucket_7_ce1,bucket_7_we1,bucket_7_d1,bucket_7_q1,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,sum_0_address1,sum_0_ce1,sum_0_q1,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_1_q0,sum_1_address1,sum_1_ce1,sum_1_q1,sum_2_address0,sum_2_ce0,sum_2_we0,sum_2_d0,sum_2_q0,sum_2_address1,sum_2_ce1,sum_2_q1,sum_3_address0,sum_3_ce0,sum_3_we0,sum_3_d0,sum_3_q0,sum_3_address1,sum_3_ce1,sum_3_q1,sum_4_address0,sum_4_ce0,sum_4_we0,sum_4_d0,sum_4_q0,sum_4_address1,sum_4_ce1,sum_4_q1,sum_5_address0,sum_5_ce0,sum_5_we0,sum_5_d0,sum_5_q0,sum_5_address1,sum_5_ce1,sum_5_q1,sum_6_address0,sum_6_ce0,sum_6_we0,sum_6_d0,sum_6_q0,sum_6_address1,sum_6_ce1,sum_6_q1,sum_7_address0,sum_7_ce0,sum_7_we0,sum_7_d0,sum_7_q0,sum_7_address1,sum_7_ce1,sum_7_q1); 
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
output  [7:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
input  [31:0] a_0_q0;
output  [7:0] a_0_address1;
output   a_0_ce1;
input  [31:0] a_0_q1;
output  [7:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
input  [31:0] a_1_q0;
output  [7:0] a_1_address1;
output   a_1_ce1;
input  [31:0] a_1_q1;
output  [7:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
input  [31:0] a_2_q0;
output  [7:0] a_2_address1;
output   a_2_ce1;
input  [31:0] a_2_q1;
output  [7:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
input  [31:0] a_3_q0;
output  [7:0] a_3_address1;
output   a_3_ce1;
input  [31:0] a_3_q1;
output  [7:0] a_4_address0;
output   a_4_ce0;
output   a_4_we0;
output  [31:0] a_4_d0;
input  [31:0] a_4_q0;
output  [7:0] a_4_address1;
output   a_4_ce1;
input  [31:0] a_4_q1;
output  [7:0] a_5_address0;
output   a_5_ce0;
output   a_5_we0;
output  [31:0] a_5_d0;
input  [31:0] a_5_q0;
output  [7:0] a_5_address1;
output   a_5_ce1;
input  [31:0] a_5_q1;
output  [7:0] a_6_address0;
output   a_6_ce0;
output   a_6_we0;
output  [31:0] a_6_d0;
input  [31:0] a_6_q0;
output  [7:0] a_6_address1;
output   a_6_ce1;
input  [31:0] a_6_q1;
output  [7:0] a_7_address0;
output   a_7_ce0;
output   a_7_we0;
output  [31:0] a_7_d0;
input  [31:0] a_7_q0;
output  [7:0] a_7_address1;
output   a_7_ce1;
input  [31:0] a_7_q1;
output  [7:0] b_0_address0;
output   b_0_ce0;
output   b_0_we0;
output  [31:0] b_0_d0;
input  [31:0] b_0_q0;
output  [7:0] b_0_address1;
output   b_0_ce1;
input  [31:0] b_0_q1;
output  [7:0] b_1_address0;
output   b_1_ce0;
output   b_1_we0;
output  [31:0] b_1_d0;
input  [31:0] b_1_q0;
output  [7:0] b_1_address1;
output   b_1_ce1;
input  [31:0] b_1_q1;
output  [7:0] b_2_address0;
output   b_2_ce0;
output   b_2_we0;
output  [31:0] b_2_d0;
input  [31:0] b_2_q0;
output  [7:0] b_2_address1;
output   b_2_ce1;
input  [31:0] b_2_q1;
output  [7:0] b_3_address0;
output   b_3_ce0;
output   b_3_we0;
output  [31:0] b_3_d0;
input  [31:0] b_3_q0;
output  [7:0] b_3_address1;
output   b_3_ce1;
input  [31:0] b_3_q1;
output  [7:0] b_4_address0;
output   b_4_ce0;
output   b_4_we0;
output  [31:0] b_4_d0;
input  [31:0] b_4_q0;
output  [7:0] b_4_address1;
output   b_4_ce1;
input  [31:0] b_4_q1;
output  [7:0] b_5_address0;
output   b_5_ce0;
output   b_5_we0;
output  [31:0] b_5_d0;
input  [31:0] b_5_q0;
output  [7:0] b_5_address1;
output   b_5_ce1;
input  [31:0] b_5_q1;
output  [7:0] b_6_address0;
output   b_6_ce0;
output   b_6_we0;
output  [31:0] b_6_d0;
input  [31:0] b_6_q0;
output  [7:0] b_6_address1;
output   b_6_ce1;
input  [31:0] b_6_q1;
output  [7:0] b_7_address0;
output   b_7_ce0;
output   b_7_we0;
output  [31:0] b_7_d0;
input  [31:0] b_7_q0;
output  [7:0] b_7_address1;
output   b_7_ce1;
input  [31:0] b_7_q1;
output  [7:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [7:0] bucket_0_address1;
output   bucket_0_ce1;
output   bucket_0_we1;
output  [31:0] bucket_0_d1;
input  [31:0] bucket_0_q1;
output  [7:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [7:0] bucket_1_address1;
output   bucket_1_ce1;
output   bucket_1_we1;
output  [31:0] bucket_1_d1;
input  [31:0] bucket_1_q1;
output  [7:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
input  [31:0] bucket_2_q0;
output  [7:0] bucket_2_address1;
output   bucket_2_ce1;
output   bucket_2_we1;
output  [31:0] bucket_2_d1;
input  [31:0] bucket_2_q1;
output  [7:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
input  [31:0] bucket_3_q0;
output  [7:0] bucket_3_address1;
output   bucket_3_ce1;
output   bucket_3_we1;
output  [31:0] bucket_3_d1;
input  [31:0] bucket_3_q1;
output  [7:0] bucket_4_address0;
output   bucket_4_ce0;
output   bucket_4_we0;
output  [31:0] bucket_4_d0;
input  [31:0] bucket_4_q0;
output  [7:0] bucket_4_address1;
output   bucket_4_ce1;
output   bucket_4_we1;
output  [31:0] bucket_4_d1;
input  [31:0] bucket_4_q1;
output  [7:0] bucket_5_address0;
output   bucket_5_ce0;
output   bucket_5_we0;
output  [31:0] bucket_5_d0;
input  [31:0] bucket_5_q0;
output  [7:0] bucket_5_address1;
output   bucket_5_ce1;
output   bucket_5_we1;
output  [31:0] bucket_5_d1;
input  [31:0] bucket_5_q1;
output  [7:0] bucket_6_address0;
output   bucket_6_ce0;
output   bucket_6_we0;
output  [31:0] bucket_6_d0;
input  [31:0] bucket_6_q0;
output  [7:0] bucket_6_address1;
output   bucket_6_ce1;
output   bucket_6_we1;
output  [31:0] bucket_6_d1;
input  [31:0] bucket_6_q1;
output  [7:0] bucket_7_address0;
output   bucket_7_ce0;
output   bucket_7_we0;
output  [31:0] bucket_7_d0;
input  [31:0] bucket_7_q0;
output  [7:0] bucket_7_address1;
output   bucket_7_ce1;
output   bucket_7_we1;
output  [31:0] bucket_7_d1;
input  [31:0] bucket_7_q1;
output  [3:0] sum_0_address0;
output   sum_0_ce0;
output   sum_0_we0;
output  [31:0] sum_0_d0;
input  [31:0] sum_0_q0;
output  [3:0] sum_0_address1;
output   sum_0_ce1;
input  [31:0] sum_0_q1;
output  [3:0] sum_1_address0;
output   sum_1_ce0;
output   sum_1_we0;
output  [31:0] sum_1_d0;
input  [31:0] sum_1_q0;
output  [3:0] sum_1_address1;
output   sum_1_ce1;
input  [31:0] sum_1_q1;
output  [3:0] sum_2_address0;
output   sum_2_ce0;
output   sum_2_we0;
output  [31:0] sum_2_d0;
input  [31:0] sum_2_q0;
output  [3:0] sum_2_address1;
output   sum_2_ce1;
input  [31:0] sum_2_q1;
output  [3:0] sum_3_address0;
output   sum_3_ce0;
output   sum_3_we0;
output  [31:0] sum_3_d0;
input  [31:0] sum_3_q0;
output  [3:0] sum_3_address1;
output   sum_3_ce1;
input  [31:0] sum_3_q1;
output  [3:0] sum_4_address0;
output   sum_4_ce0;
output   sum_4_we0;
output  [31:0] sum_4_d0;
input  [31:0] sum_4_q0;
output  [3:0] sum_4_address1;
output   sum_4_ce1;
input  [31:0] sum_4_q1;
output  [3:0] sum_5_address0;
output   sum_5_ce0;
output   sum_5_we0;
output  [31:0] sum_5_d0;
input  [31:0] sum_5_q0;
output  [3:0] sum_5_address1;
output   sum_5_ce1;
input  [31:0] sum_5_q1;
output  [3:0] sum_6_address0;
output   sum_6_ce0;
output   sum_6_we0;
output  [31:0] sum_6_d0;
input  [31:0] sum_6_q0;
output  [3:0] sum_6_address1;
output   sum_6_ce1;
input  [31:0] sum_6_q1;
output  [3:0] sum_7_address0;
output   sum_7_ce0;
output   sum_7_we0;
output  [31:0] sum_7_d0;
input  [31:0] sum_7_q0;
output  [3:0] sum_7_address1;
output   sum_7_ce1;
input  [31:0] sum_7_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] a_0_address0;
reg a_0_ce0;
reg a_0_we0;
reg a_0_ce1;
reg[7:0] a_1_address0;
reg a_1_ce0;
reg a_1_we0;
reg a_1_ce1;
reg[7:0] a_2_address0;
reg a_2_ce0;
reg a_2_we0;
reg a_2_ce1;
reg[7:0] a_3_address0;
reg a_3_ce0;
reg a_3_we0;
reg a_3_ce1;
reg[7:0] a_4_address0;
reg a_4_ce0;
reg a_4_we0;
reg a_4_ce1;
reg[7:0] a_5_address0;
reg a_5_ce0;
reg a_5_we0;
reg a_5_ce1;
reg[7:0] a_6_address0;
reg a_6_ce0;
reg a_6_we0;
reg a_6_ce1;
reg[7:0] a_7_address0;
reg a_7_ce0;
reg a_7_we0;
reg a_7_ce1;
reg[7:0] b_0_address0;
reg b_0_ce0;
reg b_0_we0;
reg b_0_ce1;
reg[7:0] b_1_address0;
reg b_1_ce0;
reg b_1_we0;
reg b_1_ce1;
reg[7:0] b_2_address0;
reg b_2_ce0;
reg b_2_we0;
reg b_2_ce1;
reg[7:0] b_3_address0;
reg b_3_ce0;
reg b_3_we0;
reg b_3_ce1;
reg[7:0] b_4_address0;
reg b_4_ce0;
reg b_4_we0;
reg b_4_ce1;
reg[7:0] b_5_address0;
reg b_5_ce0;
reg b_5_we0;
reg b_5_ce1;
reg[7:0] b_6_address0;
reg b_6_ce0;
reg b_6_we0;
reg b_6_ce1;
reg[7:0] b_7_address0;
reg b_7_ce0;
reg b_7_we0;
reg b_7_ce1;
reg[7:0] bucket_0_address0;
reg bucket_0_ce0;
reg bucket_0_we0;
reg[31:0] bucket_0_d0;
reg[7:0] bucket_0_address1;
reg bucket_0_ce1;
reg bucket_0_we1;
reg[31:0] bucket_0_d1;
reg[7:0] bucket_1_address0;
reg bucket_1_ce0;
reg bucket_1_we0;
reg[31:0] bucket_1_d0;
reg[7:0] bucket_1_address1;
reg bucket_1_ce1;
reg bucket_1_we1;
reg[31:0] bucket_1_d1;
reg[7:0] bucket_2_address0;
reg bucket_2_ce0;
reg bucket_2_we0;
reg[31:0] bucket_2_d0;
reg[7:0] bucket_2_address1;
reg bucket_2_ce1;
reg bucket_2_we1;
reg[31:0] bucket_2_d1;
reg[7:0] bucket_3_address0;
reg bucket_3_ce0;
reg bucket_3_we0;
reg[31:0] bucket_3_d0;
reg[7:0] bucket_3_address1;
reg bucket_3_ce1;
reg bucket_3_we1;
reg[31:0] bucket_3_d1;
reg[7:0] bucket_4_address0;
reg bucket_4_ce0;
reg bucket_4_we0;
reg[31:0] bucket_4_d0;
reg[7:0] bucket_4_address1;
reg bucket_4_ce1;
reg bucket_4_we1;
reg[31:0] bucket_4_d1;
reg[7:0] bucket_5_address0;
reg bucket_5_ce0;
reg bucket_5_we0;
reg[31:0] bucket_5_d0;
reg[7:0] bucket_5_address1;
reg bucket_5_ce1;
reg bucket_5_we1;
reg[31:0] bucket_5_d1;
reg[7:0] bucket_6_address0;
reg bucket_6_ce0;
reg bucket_6_we0;
reg[31:0] bucket_6_d0;
reg[7:0] bucket_6_address1;
reg bucket_6_ce1;
reg bucket_6_we1;
reg[31:0] bucket_6_d1;
reg[7:0] bucket_7_address0;
reg bucket_7_ce0;
reg bucket_7_we0;
reg[31:0] bucket_7_d0;
reg[7:0] bucket_7_address1;
reg bucket_7_ce1;
reg bucket_7_we1;
reg[31:0] bucket_7_d1;
reg[3:0] sum_0_address0;
reg sum_0_ce0;
reg sum_0_we0;
reg sum_0_ce1;
reg[3:0] sum_1_address0;
reg sum_1_ce0;
reg sum_1_we0;
reg sum_1_ce1;
reg[3:0] sum_2_address0;
reg sum_2_ce0;
reg sum_2_we0;
reg sum_2_ce1;
reg[3:0] sum_3_address0;
reg sum_3_ce0;
reg sum_3_we0;
reg sum_3_ce1;
reg[3:0] sum_4_address0;
reg sum_4_ce0;
reg sum_4_we0;
reg sum_4_ce1;
reg[3:0] sum_5_address0;
reg sum_5_ce0;
reg sum_5_we0;
reg sum_5_ce1;
reg[3:0] sum_6_address0;
reg sum_6_ce0;
reg sum_6_we0;
reg sum_6_ce1;
reg[3:0] sum_7_address0;
reg sum_7_ce0;
reg sum_7_we0;
reg sum_7_ce1;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] trunc_ln63_fu_410_p1;
reg   [4:0] trunc_ln63_reg_436;
wire    ap_CS_fsm_state3;
wire    grp_ss_sort_Pipeline_init_1_fu_145_ap_start;
wire    grp_ss_sort_Pipeline_init_1_fu_145_ap_done;
wire    grp_ss_sort_Pipeline_init_1_fu_145_ap_idle;
wire    grp_ss_sort_Pipeline_init_1_fu_145_ap_ready;
wire   [7:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_d0;
wire   [7:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_d0;
wire   [7:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_d0;
wire   [7:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_d0;
wire   [7:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_d0;
wire   [7:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_d0;
wire   [7:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_d0;
wire   [7:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_d0;
wire    grp_hist_fu_165_ap_start;
wire    grp_hist_fu_165_ap_done;
wire    grp_hist_fu_165_ap_idle;
wire    grp_hist_fu_165_ap_ready;
wire   [7:0] grp_hist_fu_165_bucket_0_address0;
wire    grp_hist_fu_165_bucket_0_ce0;
wire    grp_hist_fu_165_bucket_0_we0;
wire   [31:0] grp_hist_fu_165_bucket_0_d0;
wire   [7:0] grp_hist_fu_165_bucket_0_address1;
wire    grp_hist_fu_165_bucket_0_ce1;
wire    grp_hist_fu_165_bucket_0_we1;
wire   [31:0] grp_hist_fu_165_bucket_0_d1;
wire   [7:0] grp_hist_fu_165_bucket_1_address0;
wire    grp_hist_fu_165_bucket_1_ce0;
wire    grp_hist_fu_165_bucket_1_we0;
wire   [31:0] grp_hist_fu_165_bucket_1_d0;
wire   [7:0] grp_hist_fu_165_bucket_1_address1;
wire    grp_hist_fu_165_bucket_1_ce1;
wire    grp_hist_fu_165_bucket_1_we1;
wire   [31:0] grp_hist_fu_165_bucket_1_d1;
wire   [7:0] grp_hist_fu_165_bucket_2_address0;
wire    grp_hist_fu_165_bucket_2_ce0;
wire    grp_hist_fu_165_bucket_2_we0;
wire   [31:0] grp_hist_fu_165_bucket_2_d0;
wire   [7:0] grp_hist_fu_165_bucket_2_address1;
wire    grp_hist_fu_165_bucket_2_ce1;
wire    grp_hist_fu_165_bucket_2_we1;
wire   [31:0] grp_hist_fu_165_bucket_2_d1;
wire   [7:0] grp_hist_fu_165_bucket_3_address0;
wire    grp_hist_fu_165_bucket_3_ce0;
wire    grp_hist_fu_165_bucket_3_we0;
wire   [31:0] grp_hist_fu_165_bucket_3_d0;
wire   [7:0] grp_hist_fu_165_bucket_3_address1;
wire    grp_hist_fu_165_bucket_3_ce1;
wire    grp_hist_fu_165_bucket_3_we1;
wire   [31:0] grp_hist_fu_165_bucket_3_d1;
wire   [7:0] grp_hist_fu_165_bucket_4_address0;
wire    grp_hist_fu_165_bucket_4_ce0;
wire    grp_hist_fu_165_bucket_4_we0;
wire   [31:0] grp_hist_fu_165_bucket_4_d0;
wire   [7:0] grp_hist_fu_165_bucket_4_address1;
wire    grp_hist_fu_165_bucket_4_ce1;
wire    grp_hist_fu_165_bucket_4_we1;
wire   [31:0] grp_hist_fu_165_bucket_4_d1;
wire   [7:0] grp_hist_fu_165_bucket_5_address0;
wire    grp_hist_fu_165_bucket_5_ce0;
wire    grp_hist_fu_165_bucket_5_we0;
wire   [31:0] grp_hist_fu_165_bucket_5_d0;
wire   [7:0] grp_hist_fu_165_bucket_5_address1;
wire    grp_hist_fu_165_bucket_5_ce1;
wire    grp_hist_fu_165_bucket_5_we1;
wire   [31:0] grp_hist_fu_165_bucket_5_d1;
wire   [7:0] grp_hist_fu_165_bucket_6_address0;
wire    grp_hist_fu_165_bucket_6_ce0;
wire    grp_hist_fu_165_bucket_6_we0;
wire   [31:0] grp_hist_fu_165_bucket_6_d0;
wire   [7:0] grp_hist_fu_165_bucket_6_address1;
wire    grp_hist_fu_165_bucket_6_ce1;
wire    grp_hist_fu_165_bucket_6_we1;
wire   [31:0] grp_hist_fu_165_bucket_6_d1;
wire   [7:0] grp_hist_fu_165_bucket_7_address0;
wire    grp_hist_fu_165_bucket_7_ce0;
wire    grp_hist_fu_165_bucket_7_we0;
wire   [31:0] grp_hist_fu_165_bucket_7_d0;
wire   [7:0] grp_hist_fu_165_bucket_7_address1;
wire    grp_hist_fu_165_bucket_7_ce1;
wire    grp_hist_fu_165_bucket_7_we1;
wire   [31:0] grp_hist_fu_165_bucket_7_d1;
wire   [7:0] grp_hist_fu_165_b_0_address0;
wire    grp_hist_fu_165_b_0_ce0;
reg   [31:0] grp_hist_fu_165_b_0_q0;
wire   [7:0] grp_hist_fu_165_b_0_address1;
wire    grp_hist_fu_165_b_0_ce1;
reg   [31:0] grp_hist_fu_165_b_0_q1;
wire   [7:0] grp_hist_fu_165_b_1_address0;
wire    grp_hist_fu_165_b_1_ce0;
reg   [31:0] grp_hist_fu_165_b_1_q0;
wire   [7:0] grp_hist_fu_165_b_1_address1;
wire    grp_hist_fu_165_b_1_ce1;
reg   [31:0] grp_hist_fu_165_b_1_q1;
wire   [7:0] grp_hist_fu_165_b_2_address0;
wire    grp_hist_fu_165_b_2_ce0;
reg   [31:0] grp_hist_fu_165_b_2_q0;
wire   [7:0] grp_hist_fu_165_b_2_address1;
wire    grp_hist_fu_165_b_2_ce1;
reg   [31:0] grp_hist_fu_165_b_2_q1;
wire   [7:0] grp_hist_fu_165_b_3_address0;
wire    grp_hist_fu_165_b_3_ce0;
reg   [31:0] grp_hist_fu_165_b_3_q0;
wire   [7:0] grp_hist_fu_165_b_3_address1;
wire    grp_hist_fu_165_b_3_ce1;
reg   [31:0] grp_hist_fu_165_b_3_q1;
wire   [7:0] grp_hist_fu_165_b_4_address0;
wire    grp_hist_fu_165_b_4_ce0;
reg   [31:0] grp_hist_fu_165_b_4_q0;
wire   [7:0] grp_hist_fu_165_b_4_address1;
wire    grp_hist_fu_165_b_4_ce1;
reg   [31:0] grp_hist_fu_165_b_4_q1;
wire   [7:0] grp_hist_fu_165_b_5_address0;
wire    grp_hist_fu_165_b_5_ce0;
reg   [31:0] grp_hist_fu_165_b_5_q0;
wire   [7:0] grp_hist_fu_165_b_5_address1;
wire    grp_hist_fu_165_b_5_ce1;
reg   [31:0] grp_hist_fu_165_b_5_q1;
wire   [7:0] grp_hist_fu_165_b_6_address0;
wire    grp_hist_fu_165_b_6_ce0;
reg   [31:0] grp_hist_fu_165_b_6_q0;
wire   [7:0] grp_hist_fu_165_b_6_address1;
wire    grp_hist_fu_165_b_6_ce1;
reg   [31:0] grp_hist_fu_165_b_6_q1;
wire   [7:0] grp_hist_fu_165_b_7_address0;
wire    grp_hist_fu_165_b_7_ce0;
reg   [31:0] grp_hist_fu_165_b_7_q0;
wire   [7:0] grp_hist_fu_165_b_7_address1;
wire    grp_hist_fu_165_b_7_ce1;
reg   [31:0] grp_hist_fu_165_b_7_q1;
wire    grp_local_scan_fu_210_ap_start;
wire    grp_local_scan_fu_210_ap_done;
wire    grp_local_scan_fu_210_ap_idle;
wire    grp_local_scan_fu_210_ap_ready;
wire   [7:0] grp_local_scan_fu_210_bucket_0_address0;
wire    grp_local_scan_fu_210_bucket_0_ce0;
wire    grp_local_scan_fu_210_bucket_0_we0;
wire   [31:0] grp_local_scan_fu_210_bucket_0_d0;
wire   [7:0] grp_local_scan_fu_210_bucket_0_address1;
wire    grp_local_scan_fu_210_bucket_0_ce1;
wire    grp_local_scan_fu_210_bucket_0_we1;
wire   [31:0] grp_local_scan_fu_210_bucket_0_d1;
wire   [7:0] grp_local_scan_fu_210_bucket_1_address0;
wire    grp_local_scan_fu_210_bucket_1_ce0;
wire    grp_local_scan_fu_210_bucket_1_we0;
wire   [31:0] grp_local_scan_fu_210_bucket_1_d0;
wire   [7:0] grp_local_scan_fu_210_bucket_1_address1;
wire    grp_local_scan_fu_210_bucket_1_ce1;
wire    grp_local_scan_fu_210_bucket_1_we1;
wire   [31:0] grp_local_scan_fu_210_bucket_1_d1;
wire   [7:0] grp_local_scan_fu_210_bucket_2_address0;
wire    grp_local_scan_fu_210_bucket_2_ce0;
wire    grp_local_scan_fu_210_bucket_2_we0;
wire   [31:0] grp_local_scan_fu_210_bucket_2_d0;
wire   [7:0] grp_local_scan_fu_210_bucket_2_address1;
wire    grp_local_scan_fu_210_bucket_2_ce1;
wire    grp_local_scan_fu_210_bucket_2_we1;
wire   [31:0] grp_local_scan_fu_210_bucket_2_d1;
wire   [7:0] grp_local_scan_fu_210_bucket_3_address0;
wire    grp_local_scan_fu_210_bucket_3_ce0;
wire    grp_local_scan_fu_210_bucket_3_we0;
wire   [31:0] grp_local_scan_fu_210_bucket_3_d0;
wire   [7:0] grp_local_scan_fu_210_bucket_3_address1;
wire    grp_local_scan_fu_210_bucket_3_ce1;
wire    grp_local_scan_fu_210_bucket_3_we1;
wire   [31:0] grp_local_scan_fu_210_bucket_3_d1;
wire   [7:0] grp_local_scan_fu_210_bucket_4_address0;
wire    grp_local_scan_fu_210_bucket_4_ce0;
wire    grp_local_scan_fu_210_bucket_4_we0;
wire   [31:0] grp_local_scan_fu_210_bucket_4_d0;
wire   [7:0] grp_local_scan_fu_210_bucket_4_address1;
wire    grp_local_scan_fu_210_bucket_4_ce1;
wire    grp_local_scan_fu_210_bucket_4_we1;
wire   [31:0] grp_local_scan_fu_210_bucket_4_d1;
wire   [7:0] grp_local_scan_fu_210_bucket_5_address0;
wire    grp_local_scan_fu_210_bucket_5_ce0;
wire    grp_local_scan_fu_210_bucket_5_we0;
wire   [31:0] grp_local_scan_fu_210_bucket_5_d0;
wire   [7:0] grp_local_scan_fu_210_bucket_5_address1;
wire    grp_local_scan_fu_210_bucket_5_ce1;
wire    grp_local_scan_fu_210_bucket_5_we1;
wire   [31:0] grp_local_scan_fu_210_bucket_5_d1;
wire   [7:0] grp_local_scan_fu_210_bucket_6_address0;
wire    grp_local_scan_fu_210_bucket_6_ce0;
wire    grp_local_scan_fu_210_bucket_6_we0;
wire   [31:0] grp_local_scan_fu_210_bucket_6_d0;
wire   [7:0] grp_local_scan_fu_210_bucket_6_address1;
wire    grp_local_scan_fu_210_bucket_6_ce1;
wire    grp_local_scan_fu_210_bucket_6_we1;
wire   [31:0] grp_local_scan_fu_210_bucket_6_d1;
wire   [7:0] grp_local_scan_fu_210_bucket_7_address0;
wire    grp_local_scan_fu_210_bucket_7_ce0;
wire    grp_local_scan_fu_210_bucket_7_we0;
wire   [31:0] grp_local_scan_fu_210_bucket_7_d0;
wire   [7:0] grp_local_scan_fu_210_bucket_7_address1;
wire    grp_local_scan_fu_210_bucket_7_ce1;
wire    grp_local_scan_fu_210_bucket_7_we1;
wire   [31:0] grp_local_scan_fu_210_bucket_7_d1;
wire    grp_sum_scan_fu_230_ap_start;
wire    grp_sum_scan_fu_230_ap_done;
wire    grp_sum_scan_fu_230_ap_idle;
wire    grp_sum_scan_fu_230_ap_ready;
wire   [3:0] grp_sum_scan_fu_230_sum_0_address0;
wire    grp_sum_scan_fu_230_sum_0_ce0;
wire    grp_sum_scan_fu_230_sum_0_we0;
wire   [31:0] grp_sum_scan_fu_230_sum_0_d0;
wire   [3:0] grp_sum_scan_fu_230_sum_1_address0;
wire    grp_sum_scan_fu_230_sum_1_ce0;
wire    grp_sum_scan_fu_230_sum_1_we0;
wire   [31:0] grp_sum_scan_fu_230_sum_1_d0;
wire   [3:0] grp_sum_scan_fu_230_sum_2_address0;
wire    grp_sum_scan_fu_230_sum_2_ce0;
wire    grp_sum_scan_fu_230_sum_2_we0;
wire   [31:0] grp_sum_scan_fu_230_sum_2_d0;
wire   [3:0] grp_sum_scan_fu_230_sum_3_address0;
wire    grp_sum_scan_fu_230_sum_3_ce0;
wire    grp_sum_scan_fu_230_sum_3_we0;
wire   [31:0] grp_sum_scan_fu_230_sum_3_d0;
wire   [3:0] grp_sum_scan_fu_230_sum_4_address0;
wire    grp_sum_scan_fu_230_sum_4_ce0;
wire    grp_sum_scan_fu_230_sum_4_we0;
wire   [31:0] grp_sum_scan_fu_230_sum_4_d0;
wire   [3:0] grp_sum_scan_fu_230_sum_5_address0;
wire    grp_sum_scan_fu_230_sum_5_ce0;
wire    grp_sum_scan_fu_230_sum_5_we0;
wire   [31:0] grp_sum_scan_fu_230_sum_5_d0;
wire   [3:0] grp_sum_scan_fu_230_sum_6_address0;
wire    grp_sum_scan_fu_230_sum_6_ce0;
wire    grp_sum_scan_fu_230_sum_6_we0;
wire   [31:0] grp_sum_scan_fu_230_sum_6_d0;
wire   [3:0] grp_sum_scan_fu_230_sum_7_address0;
wire    grp_sum_scan_fu_230_sum_7_ce0;
wire    grp_sum_scan_fu_230_sum_7_we0;
wire   [31:0] grp_sum_scan_fu_230_sum_7_d0;
wire   [7:0] grp_sum_scan_fu_230_bucket_7_address0;
wire    grp_sum_scan_fu_230_bucket_7_ce0;
wire   [7:0] grp_sum_scan_fu_230_bucket_7_address1;
wire    grp_sum_scan_fu_230_bucket_7_ce1;
wire    grp_last_step_scan_fu_252_ap_start;
wire    grp_last_step_scan_fu_252_ap_done;
wire    grp_last_step_scan_fu_252_ap_idle;
wire    grp_last_step_scan_fu_252_ap_ready;
wire   [7:0] grp_last_step_scan_fu_252_bucket_0_address0;
wire    grp_last_step_scan_fu_252_bucket_0_ce0;
wire    grp_last_step_scan_fu_252_bucket_0_we0;
wire   [31:0] grp_last_step_scan_fu_252_bucket_0_d0;
wire   [7:0] grp_last_step_scan_fu_252_bucket_0_address1;
wire    grp_last_step_scan_fu_252_bucket_0_ce1;
wire    grp_last_step_scan_fu_252_bucket_0_we1;
wire   [31:0] grp_last_step_scan_fu_252_bucket_0_d1;
wire   [7:0] grp_last_step_scan_fu_252_bucket_1_address0;
wire    grp_last_step_scan_fu_252_bucket_1_ce0;
wire    grp_last_step_scan_fu_252_bucket_1_we0;
wire   [31:0] grp_last_step_scan_fu_252_bucket_1_d0;
wire   [7:0] grp_last_step_scan_fu_252_bucket_1_address1;
wire    grp_last_step_scan_fu_252_bucket_1_ce1;
wire    grp_last_step_scan_fu_252_bucket_1_we1;
wire   [31:0] grp_last_step_scan_fu_252_bucket_1_d1;
wire   [7:0] grp_last_step_scan_fu_252_bucket_2_address0;
wire    grp_last_step_scan_fu_252_bucket_2_ce0;
wire    grp_last_step_scan_fu_252_bucket_2_we0;
wire   [31:0] grp_last_step_scan_fu_252_bucket_2_d0;
wire   [7:0] grp_last_step_scan_fu_252_bucket_2_address1;
wire    grp_last_step_scan_fu_252_bucket_2_ce1;
wire    grp_last_step_scan_fu_252_bucket_2_we1;
wire   [31:0] grp_last_step_scan_fu_252_bucket_2_d1;
wire   [7:0] grp_last_step_scan_fu_252_bucket_3_address0;
wire    grp_last_step_scan_fu_252_bucket_3_ce0;
wire    grp_last_step_scan_fu_252_bucket_3_we0;
wire   [31:0] grp_last_step_scan_fu_252_bucket_3_d0;
wire   [7:0] grp_last_step_scan_fu_252_bucket_3_address1;
wire    grp_last_step_scan_fu_252_bucket_3_ce1;
wire    grp_last_step_scan_fu_252_bucket_3_we1;
wire   [31:0] grp_last_step_scan_fu_252_bucket_3_d1;
wire   [7:0] grp_last_step_scan_fu_252_bucket_4_address0;
wire    grp_last_step_scan_fu_252_bucket_4_ce0;
wire    grp_last_step_scan_fu_252_bucket_4_we0;
wire   [31:0] grp_last_step_scan_fu_252_bucket_4_d0;
wire   [7:0] grp_last_step_scan_fu_252_bucket_4_address1;
wire    grp_last_step_scan_fu_252_bucket_4_ce1;
wire    grp_last_step_scan_fu_252_bucket_4_we1;
wire   [31:0] grp_last_step_scan_fu_252_bucket_4_d1;
wire   [7:0] grp_last_step_scan_fu_252_bucket_5_address0;
wire    grp_last_step_scan_fu_252_bucket_5_ce0;
wire    grp_last_step_scan_fu_252_bucket_5_we0;
wire   [31:0] grp_last_step_scan_fu_252_bucket_5_d0;
wire   [7:0] grp_last_step_scan_fu_252_bucket_5_address1;
wire    grp_last_step_scan_fu_252_bucket_5_ce1;
wire    grp_last_step_scan_fu_252_bucket_5_we1;
wire   [31:0] grp_last_step_scan_fu_252_bucket_5_d1;
wire   [7:0] grp_last_step_scan_fu_252_bucket_6_address0;
wire    grp_last_step_scan_fu_252_bucket_6_ce0;
wire    grp_last_step_scan_fu_252_bucket_6_we0;
wire   [31:0] grp_last_step_scan_fu_252_bucket_6_d0;
wire   [7:0] grp_last_step_scan_fu_252_bucket_6_address1;
wire    grp_last_step_scan_fu_252_bucket_6_ce1;
wire    grp_last_step_scan_fu_252_bucket_6_we1;
wire   [31:0] grp_last_step_scan_fu_252_bucket_6_d1;
wire   [7:0] grp_last_step_scan_fu_252_bucket_7_address0;
wire    grp_last_step_scan_fu_252_bucket_7_ce0;
wire    grp_last_step_scan_fu_252_bucket_7_we0;
wire   [31:0] grp_last_step_scan_fu_252_bucket_7_d0;
wire   [7:0] grp_last_step_scan_fu_252_bucket_7_address1;
wire    grp_last_step_scan_fu_252_bucket_7_ce1;
wire    grp_last_step_scan_fu_252_bucket_7_we1;
wire   [31:0] grp_last_step_scan_fu_252_bucket_7_d1;
wire   [3:0] grp_last_step_scan_fu_252_sum_0_address0;
wire    grp_last_step_scan_fu_252_sum_0_ce0;
wire   [3:0] grp_last_step_scan_fu_252_sum_0_address1;
wire    grp_last_step_scan_fu_252_sum_0_ce1;
wire   [3:0] grp_last_step_scan_fu_252_sum_1_address0;
wire    grp_last_step_scan_fu_252_sum_1_ce0;
wire   [3:0] grp_last_step_scan_fu_252_sum_1_address1;
wire    grp_last_step_scan_fu_252_sum_1_ce1;
wire   [3:0] grp_last_step_scan_fu_252_sum_2_address0;
wire    grp_last_step_scan_fu_252_sum_2_ce0;
wire   [3:0] grp_last_step_scan_fu_252_sum_2_address1;
wire    grp_last_step_scan_fu_252_sum_2_ce1;
wire   [3:0] grp_last_step_scan_fu_252_sum_3_address0;
wire    grp_last_step_scan_fu_252_sum_3_ce0;
wire   [3:0] grp_last_step_scan_fu_252_sum_3_address1;
wire    grp_last_step_scan_fu_252_sum_3_ce1;
wire   [3:0] grp_last_step_scan_fu_252_sum_4_address0;
wire    grp_last_step_scan_fu_252_sum_4_ce0;
wire   [3:0] grp_last_step_scan_fu_252_sum_4_address1;
wire    grp_last_step_scan_fu_252_sum_4_ce1;
wire   [3:0] grp_last_step_scan_fu_252_sum_5_address0;
wire    grp_last_step_scan_fu_252_sum_5_ce0;
wire   [3:0] grp_last_step_scan_fu_252_sum_5_address1;
wire    grp_last_step_scan_fu_252_sum_5_ce1;
wire   [3:0] grp_last_step_scan_fu_252_sum_6_address0;
wire    grp_last_step_scan_fu_252_sum_6_ce0;
wire   [3:0] grp_last_step_scan_fu_252_sum_6_address1;
wire    grp_last_step_scan_fu_252_sum_6_ce1;
wire   [3:0] grp_last_step_scan_fu_252_sum_7_address0;
wire    grp_last_step_scan_fu_252_sum_7_ce0;
wire   [3:0] grp_last_step_scan_fu_252_sum_7_address1;
wire    grp_last_step_scan_fu_252_sum_7_ce1;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_start;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_done;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_idle;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_ready;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_0_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_0_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_1_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_1_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_2_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_2_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_3_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_3_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_4_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_4_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_5_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_5_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_6_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_6_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_7_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_7_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_address0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_d0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_start;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_done;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_idle;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_ready;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_0_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_0_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_1_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_1_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_2_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_2_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_3_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_3_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_4_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_4_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_5_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_5_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_6_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_6_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_7_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_7_ce0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_d0;
wire   [7:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_address0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_ce0;
wire    grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_we0;
wire   [31:0] grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_d0;
reg   [0:0] valid_buffer_reg_120;
reg   [0:0] ap_phi_mux_valid_buffer_1_phi_fu_136_p4;
wire    ap_CS_fsm_state14;
reg    ap_block_state14_on_subcall_done;
reg    grp_ss_sort_Pipeline_init_1_fu_145_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_402_p3;
reg    grp_hist_fu_165_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state5;
reg    grp_local_scan_fu_210_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_sum_scan_fu_230_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg    grp_last_step_scan_fu_252_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_start_reg;
wire    ap_CS_fsm_state15;
reg   [5:0] exp_fu_116;
wire   [5:0] exp_3_fu_413_p2;
reg   [14:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_block_state5_on_subcall_done;
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
#0 grp_ss_sort_Pipeline_init_1_fu_145_ap_start_reg = 1'b0;
#0 grp_hist_fu_165_ap_start_reg = 1'b0;
#0 grp_local_scan_fu_210_ap_start_reg = 1'b0;
#0 grp_sum_scan_fu_230_ap_start_reg = 1'b0;
#0 grp_last_step_scan_fu_252_ap_start_reg = 1'b0;
#0 grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_start_reg = 1'b0;
#0 grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_start_reg = 1'b0;
#0 exp_fu_116 = 6'd0;
end
ss_sort_ss_sort_Pipeline_init_1 grp_ss_sort_Pipeline_init_1_fu_145(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ss_sort_Pipeline_init_1_fu_145_ap_start),.ap_done(grp_ss_sort_Pipeline_init_1_fu_145_ap_done),.ap_idle(grp_ss_sort_Pipeline_init_1_fu_145_ap_idle),.ap_ready(grp_ss_sort_Pipeline_init_1_fu_145_ap_ready),.bucket_0_address0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_address0),.bucket_0_ce0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_ce0),.bucket_0_we0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_we0),.bucket_0_d0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_d0),.bucket_7_address0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_address0),.bucket_7_ce0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_ce0),.bucket_7_we0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_we0),.bucket_7_d0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_d0),.bucket_6_address0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_address0),.bucket_6_ce0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_ce0),.bucket_6_we0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_we0),.bucket_6_d0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_d0),.bucket_5_address0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_address0),.bucket_5_ce0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_ce0),.bucket_5_we0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_we0),.bucket_5_d0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_d0),.bucket_4_address0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_address0),.bucket_4_ce0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_ce0),.bucket_4_we0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_we0),.bucket_4_d0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_d0),.bucket_3_address0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_address0),.bucket_3_ce0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_ce0),.bucket_3_we0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_we0),.bucket_3_d0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_d0),.bucket_2_address0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_address0),.bucket_2_ce0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_ce0),.bucket_2_we0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_we0),.bucket_2_d0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_d0),.bucket_1_address0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_address0),.bucket_1_ce0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_ce0),.bucket_1_we0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_we0),.bucket_1_d0(grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_d0));
ss_sort_hist grp_hist_fu_165(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_hist_fu_165_ap_start),.ap_done(grp_hist_fu_165_ap_done),.ap_idle(grp_hist_fu_165_ap_idle),.ap_ready(grp_hist_fu_165_ap_ready),.bucket_0_address0(grp_hist_fu_165_bucket_0_address0),.bucket_0_ce0(grp_hist_fu_165_bucket_0_ce0),.bucket_0_we0(grp_hist_fu_165_bucket_0_we0),.bucket_0_d0(grp_hist_fu_165_bucket_0_d0),.bucket_0_q0(bucket_0_q0),.bucket_0_address1(grp_hist_fu_165_bucket_0_address1),.bucket_0_ce1(grp_hist_fu_165_bucket_0_ce1),.bucket_0_we1(grp_hist_fu_165_bucket_0_we1),.bucket_0_d1(grp_hist_fu_165_bucket_0_d1),.bucket_0_q1(bucket_0_q1),.bucket_1_address0(grp_hist_fu_165_bucket_1_address0),.bucket_1_ce0(grp_hist_fu_165_bucket_1_ce0),.bucket_1_we0(grp_hist_fu_165_bucket_1_we0),.bucket_1_d0(grp_hist_fu_165_bucket_1_d0),.bucket_1_q0(bucket_1_q0),.bucket_1_address1(grp_hist_fu_165_bucket_1_address1),.bucket_1_ce1(grp_hist_fu_165_bucket_1_ce1),.bucket_1_we1(grp_hist_fu_165_bucket_1_we1),.bucket_1_d1(grp_hist_fu_165_bucket_1_d1),.bucket_1_q1(bucket_1_q1),.bucket_2_address0(grp_hist_fu_165_bucket_2_address0),.bucket_2_ce0(grp_hist_fu_165_bucket_2_ce0),.bucket_2_we0(grp_hist_fu_165_bucket_2_we0),.bucket_2_d0(grp_hist_fu_165_bucket_2_d0),.bucket_2_q0(bucket_2_q0),.bucket_2_address1(grp_hist_fu_165_bucket_2_address1),.bucket_2_ce1(grp_hist_fu_165_bucket_2_ce1),.bucket_2_we1(grp_hist_fu_165_bucket_2_we1),.bucket_2_d1(grp_hist_fu_165_bucket_2_d1),.bucket_2_q1(bucket_2_q1),.bucket_3_address0(grp_hist_fu_165_bucket_3_address0),.bucket_3_ce0(grp_hist_fu_165_bucket_3_ce0),.bucket_3_we0(grp_hist_fu_165_bucket_3_we0),.bucket_3_d0(grp_hist_fu_165_bucket_3_d0),.bucket_3_q0(bucket_3_q0),.bucket_3_address1(grp_hist_fu_165_bucket_3_address1),.bucket_3_ce1(grp_hist_fu_165_bucket_3_ce1),.bucket_3_we1(grp_hist_fu_165_bucket_3_we1),.bucket_3_d1(grp_hist_fu_165_bucket_3_d1),.bucket_3_q1(bucket_3_q1),.bucket_4_address0(grp_hist_fu_165_bucket_4_address0),.bucket_4_ce0(grp_hist_fu_165_bucket_4_ce0),.bucket_4_we0(grp_hist_fu_165_bucket_4_we0),.bucket_4_d0(grp_hist_fu_165_bucket_4_d0),.bucket_4_q0(bucket_4_q0),.bucket_4_address1(grp_hist_fu_165_bucket_4_address1),.bucket_4_ce1(grp_hist_fu_165_bucket_4_ce1),.bucket_4_we1(grp_hist_fu_165_bucket_4_we1),.bucket_4_d1(grp_hist_fu_165_bucket_4_d1),.bucket_4_q1(bucket_4_q1),.bucket_5_address0(grp_hist_fu_165_bucket_5_address0),.bucket_5_ce0(grp_hist_fu_165_bucket_5_ce0),.bucket_5_we0(grp_hist_fu_165_bucket_5_we0),.bucket_5_d0(grp_hist_fu_165_bucket_5_d0),.bucket_5_q0(bucket_5_q0),.bucket_5_address1(grp_hist_fu_165_bucket_5_address1),.bucket_5_ce1(grp_hist_fu_165_bucket_5_ce1),.bucket_5_we1(grp_hist_fu_165_bucket_5_we1),.bucket_5_d1(grp_hist_fu_165_bucket_5_d1),.bucket_5_q1(bucket_5_q1),.bucket_6_address0(grp_hist_fu_165_bucket_6_address0),.bucket_6_ce0(grp_hist_fu_165_bucket_6_ce0),.bucket_6_we0(grp_hist_fu_165_bucket_6_we0),.bucket_6_d0(grp_hist_fu_165_bucket_6_d0),.bucket_6_q0(bucket_6_q0),.bucket_6_address1(grp_hist_fu_165_bucket_6_address1),.bucket_6_ce1(grp_hist_fu_165_bucket_6_ce1),.bucket_6_we1(grp_hist_fu_165_bucket_6_we1),.bucket_6_d1(grp_hist_fu_165_bucket_6_d1),.bucket_6_q1(bucket_6_q1),.bucket_7_address0(grp_hist_fu_165_bucket_7_address0),.bucket_7_ce0(grp_hist_fu_165_bucket_7_ce0),.bucket_7_we0(grp_hist_fu_165_bucket_7_we0),.bucket_7_d0(grp_hist_fu_165_bucket_7_d0),.bucket_7_q0(bucket_7_q0),.bucket_7_address1(grp_hist_fu_165_bucket_7_address1),.bucket_7_ce1(grp_hist_fu_165_bucket_7_ce1),.bucket_7_we1(grp_hist_fu_165_bucket_7_we1),.bucket_7_d1(grp_hist_fu_165_bucket_7_d1),.bucket_7_q1(bucket_7_q1),.b_0_address0(grp_hist_fu_165_b_0_address0),.b_0_ce0(grp_hist_fu_165_b_0_ce0),.b_0_q0(grp_hist_fu_165_b_0_q0),.b_0_address1(grp_hist_fu_165_b_0_address1),.b_0_ce1(grp_hist_fu_165_b_0_ce1),.b_0_q1(grp_hist_fu_165_b_0_q1),.b_1_address0(grp_hist_fu_165_b_1_address0),.b_1_ce0(grp_hist_fu_165_b_1_ce0),.b_1_q0(grp_hist_fu_165_b_1_q0),.b_1_address1(grp_hist_fu_165_b_1_address1),.b_1_ce1(grp_hist_fu_165_b_1_ce1),.b_1_q1(grp_hist_fu_165_b_1_q1),.b_2_address0(grp_hist_fu_165_b_2_address0),.b_2_ce0(grp_hist_fu_165_b_2_ce0),.b_2_q0(grp_hist_fu_165_b_2_q0),.b_2_address1(grp_hist_fu_165_b_2_address1),.b_2_ce1(grp_hist_fu_165_b_2_ce1),.b_2_q1(grp_hist_fu_165_b_2_q1),.b_3_address0(grp_hist_fu_165_b_3_address0),.b_3_ce0(grp_hist_fu_165_b_3_ce0),.b_3_q0(grp_hist_fu_165_b_3_q0),.b_3_address1(grp_hist_fu_165_b_3_address1),.b_3_ce1(grp_hist_fu_165_b_3_ce1),.b_3_q1(grp_hist_fu_165_b_3_q1),.b_4_address0(grp_hist_fu_165_b_4_address0),.b_4_ce0(grp_hist_fu_165_b_4_ce0),.b_4_q0(grp_hist_fu_165_b_4_q0),.b_4_address1(grp_hist_fu_165_b_4_address1),.b_4_ce1(grp_hist_fu_165_b_4_ce1),.b_4_q1(grp_hist_fu_165_b_4_q1),.b_5_address0(grp_hist_fu_165_b_5_address0),.b_5_ce0(grp_hist_fu_165_b_5_ce0),.b_5_q0(grp_hist_fu_165_b_5_q0),.b_5_address1(grp_hist_fu_165_b_5_address1),.b_5_ce1(grp_hist_fu_165_b_5_ce1),.b_5_q1(grp_hist_fu_165_b_5_q1),.b_6_address0(grp_hist_fu_165_b_6_address0),.b_6_ce0(grp_hist_fu_165_b_6_ce0),.b_6_q0(grp_hist_fu_165_b_6_q0),.b_6_address1(grp_hist_fu_165_b_6_address1),.b_6_ce1(grp_hist_fu_165_b_6_ce1),.b_6_q1(grp_hist_fu_165_b_6_q1),.b_7_address0(grp_hist_fu_165_b_7_address0),.b_7_ce0(grp_hist_fu_165_b_7_ce0),.b_7_q0(grp_hist_fu_165_b_7_q0),.b_7_address1(grp_hist_fu_165_b_7_address1),.b_7_ce1(grp_hist_fu_165_b_7_ce1),.b_7_q1(grp_hist_fu_165_b_7_q1),.exp(trunc_ln63_reg_436));
ss_sort_local_scan grp_local_scan_fu_210(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_local_scan_fu_210_ap_start),.ap_done(grp_local_scan_fu_210_ap_done),.ap_idle(grp_local_scan_fu_210_ap_idle),.ap_ready(grp_local_scan_fu_210_ap_ready),.bucket_0_address0(grp_local_scan_fu_210_bucket_0_address0),.bucket_0_ce0(grp_local_scan_fu_210_bucket_0_ce0),.bucket_0_we0(grp_local_scan_fu_210_bucket_0_we0),.bucket_0_d0(grp_local_scan_fu_210_bucket_0_d0),.bucket_0_q0(bucket_0_q0),.bucket_0_address1(grp_local_scan_fu_210_bucket_0_address1),.bucket_0_ce1(grp_local_scan_fu_210_bucket_0_ce1),.bucket_0_we1(grp_local_scan_fu_210_bucket_0_we1),.bucket_0_d1(grp_local_scan_fu_210_bucket_0_d1),.bucket_0_q1(bucket_0_q1),.bucket_1_address0(grp_local_scan_fu_210_bucket_1_address0),.bucket_1_ce0(grp_local_scan_fu_210_bucket_1_ce0),.bucket_1_we0(grp_local_scan_fu_210_bucket_1_we0),.bucket_1_d0(grp_local_scan_fu_210_bucket_1_d0),.bucket_1_q0(bucket_1_q0),.bucket_1_address1(grp_local_scan_fu_210_bucket_1_address1),.bucket_1_ce1(grp_local_scan_fu_210_bucket_1_ce1),.bucket_1_we1(grp_local_scan_fu_210_bucket_1_we1),.bucket_1_d1(grp_local_scan_fu_210_bucket_1_d1),.bucket_1_q1(bucket_1_q1),.bucket_2_address0(grp_local_scan_fu_210_bucket_2_address0),.bucket_2_ce0(grp_local_scan_fu_210_bucket_2_ce0),.bucket_2_we0(grp_local_scan_fu_210_bucket_2_we0),.bucket_2_d0(grp_local_scan_fu_210_bucket_2_d0),.bucket_2_q0(bucket_2_q0),.bucket_2_address1(grp_local_scan_fu_210_bucket_2_address1),.bucket_2_ce1(grp_local_scan_fu_210_bucket_2_ce1),.bucket_2_we1(grp_local_scan_fu_210_bucket_2_we1),.bucket_2_d1(grp_local_scan_fu_210_bucket_2_d1),.bucket_2_q1(bucket_2_q1),.bucket_3_address0(grp_local_scan_fu_210_bucket_3_address0),.bucket_3_ce0(grp_local_scan_fu_210_bucket_3_ce0),.bucket_3_we0(grp_local_scan_fu_210_bucket_3_we0),.bucket_3_d0(grp_local_scan_fu_210_bucket_3_d0),.bucket_3_q0(bucket_3_q0),.bucket_3_address1(grp_local_scan_fu_210_bucket_3_address1),.bucket_3_ce1(grp_local_scan_fu_210_bucket_3_ce1),.bucket_3_we1(grp_local_scan_fu_210_bucket_3_we1),.bucket_3_d1(grp_local_scan_fu_210_bucket_3_d1),.bucket_3_q1(bucket_3_q1),.bucket_4_address0(grp_local_scan_fu_210_bucket_4_address0),.bucket_4_ce0(grp_local_scan_fu_210_bucket_4_ce0),.bucket_4_we0(grp_local_scan_fu_210_bucket_4_we0),.bucket_4_d0(grp_local_scan_fu_210_bucket_4_d0),.bucket_4_q0(bucket_4_q0),.bucket_4_address1(grp_local_scan_fu_210_bucket_4_address1),.bucket_4_ce1(grp_local_scan_fu_210_bucket_4_ce1),.bucket_4_we1(grp_local_scan_fu_210_bucket_4_we1),.bucket_4_d1(grp_local_scan_fu_210_bucket_4_d1),.bucket_4_q1(bucket_4_q1),.bucket_5_address0(grp_local_scan_fu_210_bucket_5_address0),.bucket_5_ce0(grp_local_scan_fu_210_bucket_5_ce0),.bucket_5_we0(grp_local_scan_fu_210_bucket_5_we0),.bucket_5_d0(grp_local_scan_fu_210_bucket_5_d0),.bucket_5_q0(bucket_5_q0),.bucket_5_address1(grp_local_scan_fu_210_bucket_5_address1),.bucket_5_ce1(grp_local_scan_fu_210_bucket_5_ce1),.bucket_5_we1(grp_local_scan_fu_210_bucket_5_we1),.bucket_5_d1(grp_local_scan_fu_210_bucket_5_d1),.bucket_5_q1(bucket_5_q1),.bucket_6_address0(grp_local_scan_fu_210_bucket_6_address0),.bucket_6_ce0(grp_local_scan_fu_210_bucket_6_ce0),.bucket_6_we0(grp_local_scan_fu_210_bucket_6_we0),.bucket_6_d0(grp_local_scan_fu_210_bucket_6_d0),.bucket_6_q0(bucket_6_q0),.bucket_6_address1(grp_local_scan_fu_210_bucket_6_address1),.bucket_6_ce1(grp_local_scan_fu_210_bucket_6_ce1),.bucket_6_we1(grp_local_scan_fu_210_bucket_6_we1),.bucket_6_d1(grp_local_scan_fu_210_bucket_6_d1),.bucket_6_q1(bucket_6_q1),.bucket_7_address0(grp_local_scan_fu_210_bucket_7_address0),.bucket_7_ce0(grp_local_scan_fu_210_bucket_7_ce0),.bucket_7_we0(grp_local_scan_fu_210_bucket_7_we0),.bucket_7_d0(grp_local_scan_fu_210_bucket_7_d0),.bucket_7_q0(bucket_7_q0),.bucket_7_address1(grp_local_scan_fu_210_bucket_7_address1),.bucket_7_ce1(grp_local_scan_fu_210_bucket_7_ce1),.bucket_7_we1(grp_local_scan_fu_210_bucket_7_we1),.bucket_7_d1(grp_local_scan_fu_210_bucket_7_d1),.bucket_7_q1(bucket_7_q1));
ss_sort_sum_scan grp_sum_scan_fu_230(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sum_scan_fu_230_ap_start),.ap_done(grp_sum_scan_fu_230_ap_done),.ap_idle(grp_sum_scan_fu_230_ap_idle),.ap_ready(grp_sum_scan_fu_230_ap_ready),.sum_0_address0(grp_sum_scan_fu_230_sum_0_address0),.sum_0_ce0(grp_sum_scan_fu_230_sum_0_ce0),.sum_0_we0(grp_sum_scan_fu_230_sum_0_we0),.sum_0_d0(grp_sum_scan_fu_230_sum_0_d0),.sum_0_q0(sum_0_q0),.sum_1_address0(grp_sum_scan_fu_230_sum_1_address0),.sum_1_ce0(grp_sum_scan_fu_230_sum_1_ce0),.sum_1_we0(grp_sum_scan_fu_230_sum_1_we0),.sum_1_d0(grp_sum_scan_fu_230_sum_1_d0),.sum_2_address0(grp_sum_scan_fu_230_sum_2_address0),.sum_2_ce0(grp_sum_scan_fu_230_sum_2_ce0),.sum_2_we0(grp_sum_scan_fu_230_sum_2_we0),.sum_2_d0(grp_sum_scan_fu_230_sum_2_d0),.sum_3_address0(grp_sum_scan_fu_230_sum_3_address0),.sum_3_ce0(grp_sum_scan_fu_230_sum_3_ce0),.sum_3_we0(grp_sum_scan_fu_230_sum_3_we0),.sum_3_d0(grp_sum_scan_fu_230_sum_3_d0),.sum_4_address0(grp_sum_scan_fu_230_sum_4_address0),.sum_4_ce0(grp_sum_scan_fu_230_sum_4_ce0),.sum_4_we0(grp_sum_scan_fu_230_sum_4_we0),.sum_4_d0(grp_sum_scan_fu_230_sum_4_d0),.sum_5_address0(grp_sum_scan_fu_230_sum_5_address0),.sum_5_ce0(grp_sum_scan_fu_230_sum_5_ce0),.sum_5_we0(grp_sum_scan_fu_230_sum_5_we0),.sum_5_d0(grp_sum_scan_fu_230_sum_5_d0),.sum_6_address0(grp_sum_scan_fu_230_sum_6_address0),.sum_6_ce0(grp_sum_scan_fu_230_sum_6_ce0),.sum_6_we0(grp_sum_scan_fu_230_sum_6_we0),.sum_6_d0(grp_sum_scan_fu_230_sum_6_d0),.sum_7_address0(grp_sum_scan_fu_230_sum_7_address0),.sum_7_ce0(grp_sum_scan_fu_230_sum_7_ce0),.sum_7_we0(grp_sum_scan_fu_230_sum_7_we0),.sum_7_d0(grp_sum_scan_fu_230_sum_7_d0),.bucket_7_address0(grp_sum_scan_fu_230_bucket_7_address0),.bucket_7_ce0(grp_sum_scan_fu_230_bucket_7_ce0),.bucket_7_q0(bucket_7_q0),.bucket_7_address1(grp_sum_scan_fu_230_bucket_7_address1),.bucket_7_ce1(grp_sum_scan_fu_230_bucket_7_ce1),.bucket_7_q1(bucket_7_q1));
ss_sort_last_step_scan grp_last_step_scan_fu_252(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_last_step_scan_fu_252_ap_start),.ap_done(grp_last_step_scan_fu_252_ap_done),.ap_idle(grp_last_step_scan_fu_252_ap_idle),.ap_ready(grp_last_step_scan_fu_252_ap_ready),.bucket_0_address0(grp_last_step_scan_fu_252_bucket_0_address0),.bucket_0_ce0(grp_last_step_scan_fu_252_bucket_0_ce0),.bucket_0_we0(grp_last_step_scan_fu_252_bucket_0_we0),.bucket_0_d0(grp_last_step_scan_fu_252_bucket_0_d0),.bucket_0_q0(bucket_0_q0),.bucket_0_address1(grp_last_step_scan_fu_252_bucket_0_address1),.bucket_0_ce1(grp_last_step_scan_fu_252_bucket_0_ce1),.bucket_0_we1(grp_last_step_scan_fu_252_bucket_0_we1),.bucket_0_d1(grp_last_step_scan_fu_252_bucket_0_d1),.bucket_0_q1(bucket_0_q1),.bucket_1_address0(grp_last_step_scan_fu_252_bucket_1_address0),.bucket_1_ce0(grp_last_step_scan_fu_252_bucket_1_ce0),.bucket_1_we0(grp_last_step_scan_fu_252_bucket_1_we0),.bucket_1_d0(grp_last_step_scan_fu_252_bucket_1_d0),.bucket_1_q0(bucket_1_q0),.bucket_1_address1(grp_last_step_scan_fu_252_bucket_1_address1),.bucket_1_ce1(grp_last_step_scan_fu_252_bucket_1_ce1),.bucket_1_we1(grp_last_step_scan_fu_252_bucket_1_we1),.bucket_1_d1(grp_last_step_scan_fu_252_bucket_1_d1),.bucket_1_q1(bucket_1_q1),.bucket_2_address0(grp_last_step_scan_fu_252_bucket_2_address0),.bucket_2_ce0(grp_last_step_scan_fu_252_bucket_2_ce0),.bucket_2_we0(grp_last_step_scan_fu_252_bucket_2_we0),.bucket_2_d0(grp_last_step_scan_fu_252_bucket_2_d0),.bucket_2_q0(bucket_2_q0),.bucket_2_address1(grp_last_step_scan_fu_252_bucket_2_address1),.bucket_2_ce1(grp_last_step_scan_fu_252_bucket_2_ce1),.bucket_2_we1(grp_last_step_scan_fu_252_bucket_2_we1),.bucket_2_d1(grp_last_step_scan_fu_252_bucket_2_d1),.bucket_2_q1(bucket_2_q1),.bucket_3_address0(grp_last_step_scan_fu_252_bucket_3_address0),.bucket_3_ce0(grp_last_step_scan_fu_252_bucket_3_ce0),.bucket_3_we0(grp_last_step_scan_fu_252_bucket_3_we0),.bucket_3_d0(grp_last_step_scan_fu_252_bucket_3_d0),.bucket_3_q0(bucket_3_q0),.bucket_3_address1(grp_last_step_scan_fu_252_bucket_3_address1),.bucket_3_ce1(grp_last_step_scan_fu_252_bucket_3_ce1),.bucket_3_we1(grp_last_step_scan_fu_252_bucket_3_we1),.bucket_3_d1(grp_last_step_scan_fu_252_bucket_3_d1),.bucket_3_q1(bucket_3_q1),.bucket_4_address0(grp_last_step_scan_fu_252_bucket_4_address0),.bucket_4_ce0(grp_last_step_scan_fu_252_bucket_4_ce0),.bucket_4_we0(grp_last_step_scan_fu_252_bucket_4_we0),.bucket_4_d0(grp_last_step_scan_fu_252_bucket_4_d0),.bucket_4_q0(bucket_4_q0),.bucket_4_address1(grp_last_step_scan_fu_252_bucket_4_address1),.bucket_4_ce1(grp_last_step_scan_fu_252_bucket_4_ce1),.bucket_4_we1(grp_last_step_scan_fu_252_bucket_4_we1),.bucket_4_d1(grp_last_step_scan_fu_252_bucket_4_d1),.bucket_4_q1(bucket_4_q1),.bucket_5_address0(grp_last_step_scan_fu_252_bucket_5_address0),.bucket_5_ce0(grp_last_step_scan_fu_252_bucket_5_ce0),.bucket_5_we0(grp_last_step_scan_fu_252_bucket_5_we0),.bucket_5_d0(grp_last_step_scan_fu_252_bucket_5_d0),.bucket_5_q0(bucket_5_q0),.bucket_5_address1(grp_last_step_scan_fu_252_bucket_5_address1),.bucket_5_ce1(grp_last_step_scan_fu_252_bucket_5_ce1),.bucket_5_we1(grp_last_step_scan_fu_252_bucket_5_we1),.bucket_5_d1(grp_last_step_scan_fu_252_bucket_5_d1),.bucket_5_q1(bucket_5_q1),.bucket_6_address0(grp_last_step_scan_fu_252_bucket_6_address0),.bucket_6_ce0(grp_last_step_scan_fu_252_bucket_6_ce0),.bucket_6_we0(grp_last_step_scan_fu_252_bucket_6_we0),.bucket_6_d0(grp_last_step_scan_fu_252_bucket_6_d0),.bucket_6_q0(bucket_6_q0),.bucket_6_address1(grp_last_step_scan_fu_252_bucket_6_address1),.bucket_6_ce1(grp_last_step_scan_fu_252_bucket_6_ce1),.bucket_6_we1(grp_last_step_scan_fu_252_bucket_6_we1),.bucket_6_d1(grp_last_step_scan_fu_252_bucket_6_d1),.bucket_6_q1(bucket_6_q1),.bucket_7_address0(grp_last_step_scan_fu_252_bucket_7_address0),.bucket_7_ce0(grp_last_step_scan_fu_252_bucket_7_ce0),.bucket_7_we0(grp_last_step_scan_fu_252_bucket_7_we0),.bucket_7_d0(grp_last_step_scan_fu_252_bucket_7_d0),.bucket_7_q0(bucket_7_q0),.bucket_7_address1(grp_last_step_scan_fu_252_bucket_7_address1),.bucket_7_ce1(grp_last_step_scan_fu_252_bucket_7_ce1),.bucket_7_we1(grp_last_step_scan_fu_252_bucket_7_we1),.bucket_7_d1(grp_last_step_scan_fu_252_bucket_7_d1),.bucket_7_q1(bucket_7_q1),.sum_0_address0(grp_last_step_scan_fu_252_sum_0_address0),.sum_0_ce0(grp_last_step_scan_fu_252_sum_0_ce0),.sum_0_q0(sum_0_q0),.sum_0_address1(grp_last_step_scan_fu_252_sum_0_address1),.sum_0_ce1(grp_last_step_scan_fu_252_sum_0_ce1),.sum_0_q1(sum_0_q1),.sum_1_address0(grp_last_step_scan_fu_252_sum_1_address0),.sum_1_ce0(grp_last_step_scan_fu_252_sum_1_ce0),.sum_1_q0(sum_1_q0),.sum_1_address1(grp_last_step_scan_fu_252_sum_1_address1),.sum_1_ce1(grp_last_step_scan_fu_252_sum_1_ce1),.sum_1_q1(sum_1_q1),.sum_2_address0(grp_last_step_scan_fu_252_sum_2_address0),.sum_2_ce0(grp_last_step_scan_fu_252_sum_2_ce0),.sum_2_q0(sum_2_q0),.sum_2_address1(grp_last_step_scan_fu_252_sum_2_address1),.sum_2_ce1(grp_last_step_scan_fu_252_sum_2_ce1),.sum_2_q1(sum_2_q1),.sum_3_address0(grp_last_step_scan_fu_252_sum_3_address0),.sum_3_ce0(grp_last_step_scan_fu_252_sum_3_ce0),.sum_3_q0(sum_3_q0),.sum_3_address1(grp_last_step_scan_fu_252_sum_3_address1),.sum_3_ce1(grp_last_step_scan_fu_252_sum_3_ce1),.sum_3_q1(sum_3_q1),.sum_4_address0(grp_last_step_scan_fu_252_sum_4_address0),.sum_4_ce0(grp_last_step_scan_fu_252_sum_4_ce0),.sum_4_q0(sum_4_q0),.sum_4_address1(grp_last_step_scan_fu_252_sum_4_address1),.sum_4_ce1(grp_last_step_scan_fu_252_sum_4_ce1),.sum_4_q1(sum_4_q1),.sum_5_address0(grp_last_step_scan_fu_252_sum_5_address0),.sum_5_ce0(grp_last_step_scan_fu_252_sum_5_ce0),.sum_5_q0(sum_5_q0),.sum_5_address1(grp_last_step_scan_fu_252_sum_5_address1),.sum_5_ce1(grp_last_step_scan_fu_252_sum_5_ce1),.sum_5_q1(sum_5_q1),.sum_6_address0(grp_last_step_scan_fu_252_sum_6_address0),.sum_6_ce0(grp_last_step_scan_fu_252_sum_6_ce0),.sum_6_q0(sum_6_q0),.sum_6_address1(grp_last_step_scan_fu_252_sum_6_address1),.sum_6_ce1(grp_last_step_scan_fu_252_sum_6_ce1),.sum_6_q1(sum_6_q1),.sum_7_address0(grp_last_step_scan_fu_252_sum_7_address0),.sum_7_ce0(grp_last_step_scan_fu_252_sum_7_ce0),.sum_7_q0(sum_7_q0),.sum_7_address1(grp_last_step_scan_fu_252_sum_7_address1),.sum_7_ce1(grp_last_step_scan_fu_252_sum_7_ce1),.sum_7_q1(sum_7_q1));
ss_sort_ss_sort_Pipeline_update_1_update_2 grp_ss_sort_Pipeline_update_1_update_2_fu_288(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_start),.ap_done(grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_done),.ap_idle(grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_idle),.ap_ready(grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_ready),.b_0_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_address0),.b_0_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_ce0),.b_0_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_we0),.b_0_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_d0),.b_7_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_address0),.b_7_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_ce0),.b_7_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_we0),.b_7_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_d0),.b_6_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_address0),.b_6_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_ce0),.b_6_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_we0),.b_6_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_d0),.b_5_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_address0),.b_5_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_ce0),.b_5_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_we0),.b_5_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_d0),.b_4_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_address0),.b_4_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_ce0),.b_4_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_we0),.b_4_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_d0),.b_3_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_address0),.b_3_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_ce0),.b_3_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_we0),.b_3_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_d0),.b_2_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_address0),.b_2_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_ce0),.b_2_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_we0),.b_2_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_d0),.b_1_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_address0),.b_1_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_ce0),.b_1_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_we0),.b_1_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_d0),.a_0_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_0_address0),.a_0_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_0_ce0),.a_0_q0(a_0_q0),.a_1_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_1_address0),.a_1_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_1_ce0),.a_1_q0(a_1_q0),.a_2_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_2_address0),.a_2_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_2_ce0),.a_2_q0(a_2_q0),.a_3_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_3_address0),.a_3_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_3_ce0),.a_3_q0(a_3_q0),.a_4_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_4_address0),.a_4_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_4_ce0),.a_4_q0(a_4_q0),.a_5_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_5_address0),.a_5_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_5_ce0),.a_5_q0(a_5_q0),.a_6_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_6_address0),.a_6_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_6_ce0),.a_6_q0(a_6_q0),.a_7_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_7_address0),.a_7_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_7_ce0),.a_7_q0(a_7_q0),.zext_ln63(trunc_ln63_reg_436),.bucket_0_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_address0),.bucket_0_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_ce0),.bucket_0_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_we0),.bucket_0_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_d0),.bucket_0_q0(bucket_0_q0),.bucket_1_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_address0),.bucket_1_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_ce0),.bucket_1_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_we0),.bucket_1_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_d0),.bucket_1_q0(bucket_1_q0),.bucket_2_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_address0),.bucket_2_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_ce0),.bucket_2_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_we0),.bucket_2_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_d0),.bucket_2_q0(bucket_2_q0),.bucket_3_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_address0),.bucket_3_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_ce0),.bucket_3_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_we0),.bucket_3_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_d0),.bucket_3_q0(bucket_3_q0),.bucket_4_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_address0),.bucket_4_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_ce0),.bucket_4_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_we0),.bucket_4_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_d0),.bucket_4_q0(bucket_4_q0),.bucket_5_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_address0),.bucket_5_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_ce0),.bucket_5_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_we0),.bucket_5_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_d0),.bucket_5_q0(bucket_5_q0),.bucket_6_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_address0),.bucket_6_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_ce0),.bucket_6_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_we0),.bucket_6_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_d0),.bucket_6_q0(bucket_6_q0),.bucket_7_address0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_address0),.bucket_7_ce0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_ce0),.bucket_7_we0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_we0),.bucket_7_d0(grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_d0),.bucket_7_q0(bucket_7_q0));
ss_sort_ss_sort_Pipeline_update_1_update_21 grp_ss_sort_Pipeline_update_1_update_21_fu_341(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_start),.ap_done(grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_done),.ap_idle(grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_idle),.ap_ready(grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_ready),.a_0_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_address0),.a_0_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_ce0),.a_0_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_we0),.a_0_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_d0),.a_7_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_address0),.a_7_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_ce0),.a_7_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_we0),.a_7_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_d0),.a_6_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_address0),.a_6_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_ce0),.a_6_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_we0),.a_6_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_d0),.a_5_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_address0),.a_5_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_ce0),.a_5_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_we0),.a_5_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_d0),.a_4_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_address0),.a_4_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_ce0),.a_4_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_we0),.a_4_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_d0),.a_3_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_address0),.a_3_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_ce0),.a_3_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_we0),.a_3_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_d0),.a_2_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_address0),.a_2_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_ce0),.a_2_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_we0),.a_2_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_d0),.a_1_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_address0),.a_1_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_ce0),.a_1_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_we0),.a_1_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_d0),.b_0_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_0_address0),.b_0_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_0_ce0),.b_0_q0(b_0_q0),.b_1_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_1_address0),.b_1_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_1_ce0),.b_1_q0(b_1_q0),.b_2_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_2_address0),.b_2_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_2_ce0),.b_2_q0(b_2_q0),.b_3_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_3_address0),.b_3_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_3_ce0),.b_3_q0(b_3_q0),.b_4_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_4_address0),.b_4_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_4_ce0),.b_4_q0(b_4_q0),.b_5_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_5_address0),.b_5_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_5_ce0),.b_5_q0(b_5_q0),.b_6_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_6_address0),.b_6_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_6_ce0),.b_6_q0(b_6_q0),.b_7_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_7_address0),.b_7_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_7_ce0),.b_7_q0(b_7_q0),.zext_ln63(trunc_ln63_reg_436),.bucket_0_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_address0),.bucket_0_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_ce0),.bucket_0_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_we0),.bucket_0_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_d0),.bucket_0_q0(bucket_0_q0),.bucket_1_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_address0),.bucket_1_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_ce0),.bucket_1_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_we0),.bucket_1_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_d0),.bucket_1_q0(bucket_1_q0),.bucket_2_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_address0),.bucket_2_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_ce0),.bucket_2_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_we0),.bucket_2_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_d0),.bucket_2_q0(bucket_2_q0),.bucket_3_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_address0),.bucket_3_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_ce0),.bucket_3_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_we0),.bucket_3_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_d0),.bucket_3_q0(bucket_3_q0),.bucket_4_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_address0),.bucket_4_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_ce0),.bucket_4_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_we0),.bucket_4_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_d0),.bucket_4_q0(bucket_4_q0),.bucket_5_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_address0),.bucket_5_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_ce0),.bucket_5_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_we0),.bucket_5_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_d0),.bucket_5_q0(bucket_5_q0),.bucket_6_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_address0),.bucket_6_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_ce0),.bucket_6_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_we0),.bucket_6_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_d0),.bucket_6_q0(bucket_6_q0),.bucket_7_address0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_address0),.bucket_7_ce0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_ce0),.bucket_7_we0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_we0),.bucket_7_d0(grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_d0),.bucket_7_q0(bucket_7_q0));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_hist_fu_165_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
            grp_hist_fu_165_ap_start_reg <= 1'b1;
        end else if ((grp_hist_fu_165_ap_ready == 1'b1)) begin
            grp_hist_fu_165_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_last_step_scan_fu_252_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_last_step_scan_fu_252_ap_start_reg <= 1'b1;
        end else if ((grp_last_step_scan_fu_252_ap_ready == 1'b1)) begin
            grp_last_step_scan_fu_252_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_local_scan_fu_210_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_local_scan_fu_210_ap_start_reg <= 1'b1;
        end else if ((grp_local_scan_fu_210_ap_ready == 1'b1)) begin
            grp_local_scan_fu_210_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ss_sort_Pipeline_init_1_fu_145_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_402_p3 == 1'd0))) begin
            grp_ss_sort_Pipeline_init_1_fu_145_ap_start_reg <= 1'b1;
        end else if ((grp_ss_sort_Pipeline_init_1_fu_145_ap_ready == 1'b1)) begin
            grp_ss_sort_Pipeline_init_1_fu_145_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_start_reg <= 1'b1;
        end else if ((grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_ready == 1'b1)) begin
            grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_start_reg <= 1'b1;
        end else if ((grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_ready == 1'b1)) begin
            grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sum_scan_fu_230_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_sum_scan_fu_230_ap_start_reg <= 1'b1;
        end else if ((grp_sum_scan_fu_230_ap_ready == 1'b1)) begin
            grp_sum_scan_fu_230_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        exp_fu_116 <= 6'd0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (1'b0 == ap_block_state14_on_subcall_done))) begin
        exp_fu_116 <= exp_3_fu_413_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (1'b0 == ap_block_state14_on_subcall_done))) begin
        valid_buffer_reg_120 <= ap_phi_mux_valid_buffer_1_phi_fu_136_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        valid_buffer_reg_120 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln63_reg_436 <= trunc_ln63_fu_410_p1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_0_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_0_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_0_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_0_address0 = grp_hist_fu_165_b_0_address0;
    end else begin
        a_0_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_0_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_0_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_0_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_0_ce0 = grp_hist_fu_165_b_0_ce0;
    end else begin
        a_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_0_ce1 = grp_hist_fu_165_b_0_ce1;
    end else begin
        a_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_0_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_we0;
    end else begin
        a_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_1_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_1_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_1_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_1_address0 = grp_hist_fu_165_b_1_address0;
    end else begin
        a_1_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_1_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_1_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_1_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_1_ce0 = grp_hist_fu_165_b_1_ce0;
    end else begin
        a_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_1_ce1 = grp_hist_fu_165_b_1_ce1;
    end else begin
        a_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_1_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_we0;
    end else begin
        a_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_2_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_2_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_2_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_2_address0 = grp_hist_fu_165_b_2_address0;
    end else begin
        a_2_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_2_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_2_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_2_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_2_ce0 = grp_hist_fu_165_b_2_ce0;
    end else begin
        a_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_2_ce1 = grp_hist_fu_165_b_2_ce1;
    end else begin
        a_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_2_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_we0;
    end else begin
        a_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_3_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_3_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_3_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_3_address0 = grp_hist_fu_165_b_3_address0;
    end else begin
        a_3_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_3_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_3_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_3_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_3_ce0 = grp_hist_fu_165_b_3_ce0;
    end else begin
        a_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_3_ce1 = grp_hist_fu_165_b_3_ce1;
    end else begin
        a_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_3_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_we0;
    end else begin
        a_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_4_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_4_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_4_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_4_address0 = grp_hist_fu_165_b_4_address0;
    end else begin
        a_4_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_4_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_4_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_4_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_4_ce0 = grp_hist_fu_165_b_4_ce0;
    end else begin
        a_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_4_ce1 = grp_hist_fu_165_b_4_ce1;
    end else begin
        a_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_4_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_we0;
    end else begin
        a_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_5_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_5_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_5_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_5_address0 = grp_hist_fu_165_b_5_address0;
    end else begin
        a_5_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_5_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_5_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_5_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_5_ce0 = grp_hist_fu_165_b_5_ce0;
    end else begin
        a_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_5_ce1 = grp_hist_fu_165_b_5_ce1;
    end else begin
        a_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_5_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_we0;
    end else begin
        a_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_6_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_6_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_6_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_6_address0 = grp_hist_fu_165_b_6_address0;
    end else begin
        a_6_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_6_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_6_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_6_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_6_ce0 = grp_hist_fu_165_b_6_ce0;
    end else begin
        a_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_6_ce1 = grp_hist_fu_165_b_6_ce1;
    end else begin
        a_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_6_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_we0;
    end else begin
        a_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_7_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_7_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_7_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_7_address0 = grp_hist_fu_165_b_7_address0;
    end else begin
        a_7_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_7_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        a_7_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_a_7_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_7_ce0 = grp_hist_fu_165_b_7_ce0;
    end else begin
        a_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0))) begin
        a_7_ce1 = grp_hist_fu_165_b_7_ce1;
    end else begin
        a_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        a_7_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_we0;
    end else begin
        a_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((grp_sum_scan_fu_230_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_last_step_scan_fu_252_ap_done == 1'b0)) begin
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
    if ((grp_ss_sort_Pipeline_init_1_fu_145_ap_done == 1'b0)) begin
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
    if ((grp_local_scan_fu_210_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_402_p3 == 1'd1))) begin
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
        if ((valid_buffer_reg_120 == 1'd0)) begin
            ap_phi_mux_valid_buffer_1_phi_fu_136_p4 = 1'd1;
        end else if ((valid_buffer_reg_120 == 1'd1)) begin
            ap_phi_mux_valid_buffer_1_phi_fu_136_p4 = 1'd0;
        end else begin
            ap_phi_mux_valid_buffer_1_phi_fu_136_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_valid_buffer_1_phi_fu_136_p4 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_402_p3 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_0_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_0_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_0_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_0_address0 = grp_hist_fu_165_b_0_address0;
    end else begin
        b_0_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_0_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_0_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_0_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_0_ce0 = grp_hist_fu_165_b_0_ce0;
    end else begin
        b_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_0_ce1 = grp_hist_fu_165_b_0_ce1;
    end else begin
        b_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_0_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_we0;
    end else begin
        b_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_1_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_1_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_1_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_1_address0 = grp_hist_fu_165_b_1_address0;
    end else begin
        b_1_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_1_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_1_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_1_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_1_ce0 = grp_hist_fu_165_b_1_ce0;
    end else begin
        b_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_1_ce1 = grp_hist_fu_165_b_1_ce1;
    end else begin
        b_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_1_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_we0;
    end else begin
        b_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_2_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_2_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_2_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_2_address0 = grp_hist_fu_165_b_2_address0;
    end else begin
        b_2_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_2_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_2_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_2_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_2_ce0 = grp_hist_fu_165_b_2_ce0;
    end else begin
        b_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_2_ce1 = grp_hist_fu_165_b_2_ce1;
    end else begin
        b_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_2_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_we0;
    end else begin
        b_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_3_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_3_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_3_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_3_address0 = grp_hist_fu_165_b_3_address0;
    end else begin
        b_3_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_3_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_3_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_3_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_3_ce0 = grp_hist_fu_165_b_3_ce0;
    end else begin
        b_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_3_ce1 = grp_hist_fu_165_b_3_ce1;
    end else begin
        b_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_3_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_we0;
    end else begin
        b_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_4_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_4_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_4_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_4_address0 = grp_hist_fu_165_b_4_address0;
    end else begin
        b_4_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_4_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_4_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_4_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_4_ce0 = grp_hist_fu_165_b_4_ce0;
    end else begin
        b_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_4_ce1 = grp_hist_fu_165_b_4_ce1;
    end else begin
        b_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_4_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_we0;
    end else begin
        b_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_5_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_5_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_5_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_5_address0 = grp_hist_fu_165_b_5_address0;
    end else begin
        b_5_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_5_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_5_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_5_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_5_ce0 = grp_hist_fu_165_b_5_ce0;
    end else begin
        b_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_5_ce1 = grp_hist_fu_165_b_5_ce1;
    end else begin
        b_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_5_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_we0;
    end else begin
        b_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_6_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_6_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_6_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_6_address0 = grp_hist_fu_165_b_6_address0;
    end else begin
        b_6_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_6_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_6_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_6_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_6_ce0 = grp_hist_fu_165_b_6_ce0;
    end else begin
        b_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_6_ce1 = grp_hist_fu_165_b_6_ce1;
    end else begin
        b_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_6_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_we0;
    end else begin
        b_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_7_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_7_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_7_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_7_address0 = grp_hist_fu_165_b_7_address0;
    end else begin
        b_7_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        b_7_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_b_7_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_7_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_7_ce0 = grp_hist_fu_165_b_7_ce0;
    end else begin
        b_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1))) begin
        b_7_ce1 = grp_hist_fu_165_b_7_ce1;
    end else begin
        b_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        b_7_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_we0;
    end else begin
        b_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_0_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_0_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_address0 = grp_last_step_scan_fu_252_bucket_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_address0 = grp_local_scan_fu_210_bucket_0_address0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_0_address0 = grp_hist_fu_165_bucket_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_address0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_address0;
    end else begin
        bucket_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_address1 = grp_last_step_scan_fu_252_bucket_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_address1 = grp_local_scan_fu_210_bucket_0_address1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_0_address1 = grp_hist_fu_165_bucket_0_address1;
    end else begin
        bucket_0_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_0_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_0_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_ce0 = grp_last_step_scan_fu_252_bucket_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_ce0 = grp_local_scan_fu_210_bucket_0_ce0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_0_ce0 = grp_hist_fu_165_bucket_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_ce0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_ce0;
    end else begin
        bucket_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_ce1 = grp_last_step_scan_fu_252_bucket_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_ce1 = grp_local_scan_fu_210_bucket_0_ce1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_0_ce1 = grp_hist_fu_165_bucket_0_ce1;
    end else begin
        bucket_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_0_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_d0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_0_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_d0 = grp_last_step_scan_fu_252_bucket_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_d0 = grp_local_scan_fu_210_bucket_0_d0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_0_d0 = grp_hist_fu_165_bucket_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_d0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_d0;
    end else begin
        bucket_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_d1 = grp_last_step_scan_fu_252_bucket_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_d1 = grp_local_scan_fu_210_bucket_0_d1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_0_d1 = grp_hist_fu_165_bucket_0_d1;
    end else begin
        bucket_0_d1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_0_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_0_we0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_0_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_we0 = grp_last_step_scan_fu_252_bucket_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_we0 = grp_local_scan_fu_210_bucket_0_we0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_0_we0 = grp_hist_fu_165_bucket_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_we0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_0_we0;
    end else begin
        bucket_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_we1 = grp_last_step_scan_fu_252_bucket_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_we1 = grp_local_scan_fu_210_bucket_0_we1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_0_we1 = grp_hist_fu_165_bucket_0_we1;
    end else begin
        bucket_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_1_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_1_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_address0 = grp_last_step_scan_fu_252_bucket_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_address0 = grp_local_scan_fu_210_bucket_1_address0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_1_address0 = grp_hist_fu_165_bucket_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_address0;
    end else begin
        bucket_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_address1 = grp_last_step_scan_fu_252_bucket_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_address1 = grp_local_scan_fu_210_bucket_1_address1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_1_address1 = grp_hist_fu_165_bucket_1_address1;
    end else begin
        bucket_1_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_1_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_1_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_ce0 = grp_last_step_scan_fu_252_bucket_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_ce0 = grp_local_scan_fu_210_bucket_1_ce0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_1_ce0 = grp_hist_fu_165_bucket_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_ce0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_ce0;
    end else begin
        bucket_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_ce1 = grp_last_step_scan_fu_252_bucket_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_ce1 = grp_local_scan_fu_210_bucket_1_ce1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_1_ce1 = grp_hist_fu_165_bucket_1_ce1;
    end else begin
        bucket_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_1_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_d0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_1_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_d0 = grp_last_step_scan_fu_252_bucket_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_d0 = grp_local_scan_fu_210_bucket_1_d0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_1_d0 = grp_hist_fu_165_bucket_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_d0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_d0;
    end else begin
        bucket_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_d1 = grp_last_step_scan_fu_252_bucket_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_d1 = grp_local_scan_fu_210_bucket_1_d1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_1_d1 = grp_hist_fu_165_bucket_1_d1;
    end else begin
        bucket_1_d1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_1_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_1_we0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_1_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_we0 = grp_last_step_scan_fu_252_bucket_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_we0 = grp_local_scan_fu_210_bucket_1_we0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_1_we0 = grp_hist_fu_165_bucket_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_we0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_1_we0;
    end else begin
        bucket_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_we1 = grp_last_step_scan_fu_252_bucket_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_we1 = grp_local_scan_fu_210_bucket_1_we1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_1_we1 = grp_hist_fu_165_bucket_1_we1;
    end else begin
        bucket_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_2_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_2_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_address0 = grp_last_step_scan_fu_252_bucket_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_address0 = grp_local_scan_fu_210_bucket_2_address0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_2_address0 = grp_hist_fu_165_bucket_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_address0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_address0;
    end else begin
        bucket_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_address1 = grp_last_step_scan_fu_252_bucket_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_address1 = grp_local_scan_fu_210_bucket_2_address1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_2_address1 = grp_hist_fu_165_bucket_2_address1;
    end else begin
        bucket_2_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_2_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_2_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_ce0 = grp_last_step_scan_fu_252_bucket_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_ce0 = grp_local_scan_fu_210_bucket_2_ce0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_2_ce0 = grp_hist_fu_165_bucket_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_ce0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_ce0;
    end else begin
        bucket_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_ce1 = grp_last_step_scan_fu_252_bucket_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_ce1 = grp_local_scan_fu_210_bucket_2_ce1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_2_ce1 = grp_hist_fu_165_bucket_2_ce1;
    end else begin
        bucket_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_2_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_d0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_2_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_d0 = grp_last_step_scan_fu_252_bucket_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_d0 = grp_local_scan_fu_210_bucket_2_d0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_2_d0 = grp_hist_fu_165_bucket_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_d0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_d0;
    end else begin
        bucket_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_d1 = grp_last_step_scan_fu_252_bucket_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_d1 = grp_local_scan_fu_210_bucket_2_d1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_2_d1 = grp_hist_fu_165_bucket_2_d1;
    end else begin
        bucket_2_d1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_2_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_2_we0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_2_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_we0 = grp_last_step_scan_fu_252_bucket_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_we0 = grp_local_scan_fu_210_bucket_2_we0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_2_we0 = grp_hist_fu_165_bucket_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_we0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_2_we0;
    end else begin
        bucket_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_2_we1 = grp_last_step_scan_fu_252_bucket_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_2_we1 = grp_local_scan_fu_210_bucket_2_we1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_2_we1 = grp_hist_fu_165_bucket_2_we1;
    end else begin
        bucket_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_3_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_3_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_address0 = grp_last_step_scan_fu_252_bucket_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_address0 = grp_local_scan_fu_210_bucket_3_address0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_3_address0 = grp_hist_fu_165_bucket_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_address0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_address0;
    end else begin
        bucket_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_address1 = grp_last_step_scan_fu_252_bucket_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_address1 = grp_local_scan_fu_210_bucket_3_address1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_3_address1 = grp_hist_fu_165_bucket_3_address1;
    end else begin
        bucket_3_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_3_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_3_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_ce0 = grp_last_step_scan_fu_252_bucket_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_ce0 = grp_local_scan_fu_210_bucket_3_ce0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_3_ce0 = grp_hist_fu_165_bucket_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_ce0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_ce0;
    end else begin
        bucket_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_ce1 = grp_last_step_scan_fu_252_bucket_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_ce1 = grp_local_scan_fu_210_bucket_3_ce1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_3_ce1 = grp_hist_fu_165_bucket_3_ce1;
    end else begin
        bucket_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_3_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_d0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_3_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_d0 = grp_last_step_scan_fu_252_bucket_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_d0 = grp_local_scan_fu_210_bucket_3_d0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_3_d0 = grp_hist_fu_165_bucket_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_d0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_d0;
    end else begin
        bucket_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_d1 = grp_last_step_scan_fu_252_bucket_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_d1 = grp_local_scan_fu_210_bucket_3_d1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_3_d1 = grp_hist_fu_165_bucket_3_d1;
    end else begin
        bucket_3_d1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_3_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_3_we0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_3_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_we0 = grp_last_step_scan_fu_252_bucket_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_we0 = grp_local_scan_fu_210_bucket_3_we0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_3_we0 = grp_hist_fu_165_bucket_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_we0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_3_we0;
    end else begin
        bucket_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_3_we1 = grp_last_step_scan_fu_252_bucket_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_we1 = grp_local_scan_fu_210_bucket_3_we1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_3_we1 = grp_hist_fu_165_bucket_3_we1;
    end else begin
        bucket_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_4_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_4_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_4_address0 = grp_last_step_scan_fu_252_bucket_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_4_address0 = grp_local_scan_fu_210_bucket_4_address0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_4_address0 = grp_hist_fu_165_bucket_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_4_address0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_address0;
    end else begin
        bucket_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_4_address1 = grp_last_step_scan_fu_252_bucket_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_4_address1 = grp_local_scan_fu_210_bucket_4_address1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_4_address1 = grp_hist_fu_165_bucket_4_address1;
    end else begin
        bucket_4_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_4_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_4_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_4_ce0 = grp_last_step_scan_fu_252_bucket_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_4_ce0 = grp_local_scan_fu_210_bucket_4_ce0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_4_ce0 = grp_hist_fu_165_bucket_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_4_ce0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_ce0;
    end else begin
        bucket_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_4_ce1 = grp_last_step_scan_fu_252_bucket_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_4_ce1 = grp_local_scan_fu_210_bucket_4_ce1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_4_ce1 = grp_hist_fu_165_bucket_4_ce1;
    end else begin
        bucket_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_4_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_d0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_4_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_4_d0 = grp_last_step_scan_fu_252_bucket_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_4_d0 = grp_local_scan_fu_210_bucket_4_d0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_4_d0 = grp_hist_fu_165_bucket_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_4_d0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_d0;
    end else begin
        bucket_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_4_d1 = grp_last_step_scan_fu_252_bucket_4_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_4_d1 = grp_local_scan_fu_210_bucket_4_d1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_4_d1 = grp_hist_fu_165_bucket_4_d1;
    end else begin
        bucket_4_d1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_4_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_4_we0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_4_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_4_we0 = grp_last_step_scan_fu_252_bucket_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_4_we0 = grp_local_scan_fu_210_bucket_4_we0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_4_we0 = grp_hist_fu_165_bucket_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_4_we0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_4_we0;
    end else begin
        bucket_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_4_we1 = grp_last_step_scan_fu_252_bucket_4_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_4_we1 = grp_local_scan_fu_210_bucket_4_we1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_4_we1 = grp_hist_fu_165_bucket_4_we1;
    end else begin
        bucket_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_5_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_5_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_5_address0 = grp_last_step_scan_fu_252_bucket_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_5_address0 = grp_local_scan_fu_210_bucket_5_address0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_5_address0 = grp_hist_fu_165_bucket_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_5_address0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_address0;
    end else begin
        bucket_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_5_address1 = grp_last_step_scan_fu_252_bucket_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_5_address1 = grp_local_scan_fu_210_bucket_5_address1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_5_address1 = grp_hist_fu_165_bucket_5_address1;
    end else begin
        bucket_5_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_5_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_5_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_5_ce0 = grp_last_step_scan_fu_252_bucket_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_5_ce0 = grp_local_scan_fu_210_bucket_5_ce0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_5_ce0 = grp_hist_fu_165_bucket_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_5_ce0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_ce0;
    end else begin
        bucket_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_5_ce1 = grp_last_step_scan_fu_252_bucket_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_5_ce1 = grp_local_scan_fu_210_bucket_5_ce1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_5_ce1 = grp_hist_fu_165_bucket_5_ce1;
    end else begin
        bucket_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_5_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_d0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_5_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_5_d0 = grp_last_step_scan_fu_252_bucket_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_5_d0 = grp_local_scan_fu_210_bucket_5_d0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_5_d0 = grp_hist_fu_165_bucket_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_5_d0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_d0;
    end else begin
        bucket_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_5_d1 = grp_last_step_scan_fu_252_bucket_5_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_5_d1 = grp_local_scan_fu_210_bucket_5_d1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_5_d1 = grp_hist_fu_165_bucket_5_d1;
    end else begin
        bucket_5_d1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_5_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_5_we0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_5_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_5_we0 = grp_last_step_scan_fu_252_bucket_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_5_we0 = grp_local_scan_fu_210_bucket_5_we0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_5_we0 = grp_hist_fu_165_bucket_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_5_we0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_5_we0;
    end else begin
        bucket_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_5_we1 = grp_last_step_scan_fu_252_bucket_5_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_5_we1 = grp_local_scan_fu_210_bucket_5_we1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_5_we1 = grp_hist_fu_165_bucket_5_we1;
    end else begin
        bucket_5_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_6_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_6_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_6_address0 = grp_last_step_scan_fu_252_bucket_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_6_address0 = grp_local_scan_fu_210_bucket_6_address0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_6_address0 = grp_hist_fu_165_bucket_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_6_address0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_address0;
    end else begin
        bucket_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_6_address1 = grp_last_step_scan_fu_252_bucket_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_6_address1 = grp_local_scan_fu_210_bucket_6_address1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_6_address1 = grp_hist_fu_165_bucket_6_address1;
    end else begin
        bucket_6_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_6_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_6_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_6_ce0 = grp_last_step_scan_fu_252_bucket_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_6_ce0 = grp_local_scan_fu_210_bucket_6_ce0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_6_ce0 = grp_hist_fu_165_bucket_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_6_ce0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_ce0;
    end else begin
        bucket_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_6_ce1 = grp_last_step_scan_fu_252_bucket_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_6_ce1 = grp_local_scan_fu_210_bucket_6_ce1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_6_ce1 = grp_hist_fu_165_bucket_6_ce1;
    end else begin
        bucket_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_6_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_d0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_6_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_6_d0 = grp_last_step_scan_fu_252_bucket_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_6_d0 = grp_local_scan_fu_210_bucket_6_d0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_6_d0 = grp_hist_fu_165_bucket_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_6_d0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_d0;
    end else begin
        bucket_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_6_d1 = grp_last_step_scan_fu_252_bucket_6_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_6_d1 = grp_local_scan_fu_210_bucket_6_d1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_6_d1 = grp_hist_fu_165_bucket_6_d1;
    end else begin
        bucket_6_d1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_6_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_6_we0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_6_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_6_we0 = grp_last_step_scan_fu_252_bucket_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_6_we0 = grp_local_scan_fu_210_bucket_6_we0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_6_we0 = grp_hist_fu_165_bucket_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_6_we0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_6_we0;
    end else begin
        bucket_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_6_we1 = grp_last_step_scan_fu_252_bucket_6_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_6_we1 = grp_local_scan_fu_210_bucket_6_we1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_6_we1 = grp_hist_fu_165_bucket_6_we1;
    end else begin
        bucket_6_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_7_address0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_address0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_7_address0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_7_address0 = grp_last_step_scan_fu_252_bucket_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_7_address0 = grp_sum_scan_fu_230_bucket_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_7_address0 = grp_local_scan_fu_210_bucket_7_address0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_7_address0 = grp_hist_fu_165_bucket_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_7_address0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_address0;
    end else begin
        bucket_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_7_address1 = grp_last_step_scan_fu_252_bucket_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_7_address1 = grp_sum_scan_fu_230_bucket_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_7_address1 = grp_local_scan_fu_210_bucket_7_address1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_7_address1 = grp_hist_fu_165_bucket_7_address1;
    end else begin
        bucket_7_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_7_ce0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_ce0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_7_ce0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_7_ce0 = grp_last_step_scan_fu_252_bucket_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_7_ce0 = grp_sum_scan_fu_230_bucket_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_7_ce0 = grp_local_scan_fu_210_bucket_7_ce0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_7_ce0 = grp_hist_fu_165_bucket_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_7_ce0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_ce0;
    end else begin
        bucket_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_7_ce1 = grp_last_step_scan_fu_252_bucket_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_7_ce1 = grp_sum_scan_fu_230_bucket_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_7_ce1 = grp_local_scan_fu_210_bucket_7_ce1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_7_ce1 = grp_hist_fu_165_bucket_7_ce1;
    end else begin
        bucket_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_7_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_d0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_7_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_7_d0 = grp_last_step_scan_fu_252_bucket_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_7_d0 = grp_local_scan_fu_210_bucket_7_d0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_7_d0 = grp_hist_fu_165_bucket_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_7_d0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_d0;
    end else begin
        bucket_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_7_d1 = grp_last_step_scan_fu_252_bucket_7_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_7_d1 = grp_local_scan_fu_210_bucket_7_d1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_7_d1 = grp_hist_fu_165_bucket_7_d1;
    end else begin
        bucket_7_d1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd1))) begin
        bucket_7_we0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_bucket_7_we0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (valid_buffer_reg_120 == 1'd0))) begin
        bucket_7_we0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_bucket_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_7_we0 = grp_last_step_scan_fu_252_bucket_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_7_we0 = grp_local_scan_fu_210_bucket_7_we0;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_7_we0 = grp_hist_fu_165_bucket_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_7_we0 = grp_ss_sort_Pipeline_init_1_fu_145_bucket_7_we0;
    end else begin
        bucket_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_7_we1 = grp_last_step_scan_fu_252_bucket_7_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_7_we1 = grp_local_scan_fu_210_bucket_7_we1;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (valid_buffer_reg_120 == 1'd0)))) begin
        bucket_7_we1 = grp_hist_fu_165_bucket_7_we1;
    end else begin
        bucket_7_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_0_q0 = b_0_q0;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_0_q0 = a_0_q0;
        end else begin
            grp_hist_fu_165_b_0_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_0_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_0_q1 = b_0_q1;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_0_q1 = a_0_q1;
        end else begin
            grp_hist_fu_165_b_0_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_0_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_1_q0 = b_1_q0;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_1_q0 = a_1_q0;
        end else begin
            grp_hist_fu_165_b_1_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_1_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_1_q1 = b_1_q1;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_1_q1 = a_1_q1;
        end else begin
            grp_hist_fu_165_b_1_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_1_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_2_q0 = b_2_q0;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_2_q0 = a_2_q0;
        end else begin
            grp_hist_fu_165_b_2_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_2_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_2_q1 = b_2_q1;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_2_q1 = a_2_q1;
        end else begin
            grp_hist_fu_165_b_2_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_2_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_3_q0 = b_3_q0;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_3_q0 = a_3_q0;
        end else begin
            grp_hist_fu_165_b_3_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_3_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_3_q1 = b_3_q1;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_3_q1 = a_3_q1;
        end else begin
            grp_hist_fu_165_b_3_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_3_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_4_q0 = b_4_q0;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_4_q0 = a_4_q0;
        end else begin
            grp_hist_fu_165_b_4_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_4_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_4_q1 = b_4_q1;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_4_q1 = a_4_q1;
        end else begin
            grp_hist_fu_165_b_4_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_4_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_5_q0 = b_5_q0;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_5_q0 = a_5_q0;
        end else begin
            grp_hist_fu_165_b_5_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_5_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_5_q1 = b_5_q1;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_5_q1 = a_5_q1;
        end else begin
            grp_hist_fu_165_b_5_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_5_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_6_q0 = b_6_q0;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_6_q0 = a_6_q0;
        end else begin
            grp_hist_fu_165_b_6_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_6_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_6_q1 = b_6_q1;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_6_q1 = a_6_q1;
        end else begin
            grp_hist_fu_165_b_6_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_6_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_7_q0 = b_7_q0;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_7_q0 = a_7_q0;
        end else begin
            grp_hist_fu_165_b_7_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_7_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_120 == 1'd1)) begin
            grp_hist_fu_165_b_7_q1 = b_7_q1;
        end else if ((valid_buffer_reg_120 == 1'd0)) begin
            grp_hist_fu_165_b_7_q1 = a_7_q1;
        end else begin
            grp_hist_fu_165_b_7_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_165_b_7_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_0_address0 = grp_last_step_scan_fu_252_sum_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_0_address0 = grp_sum_scan_fu_230_sum_0_address0;
    end else begin
        sum_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_0_ce0 = grp_last_step_scan_fu_252_sum_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_0_ce0 = grp_sum_scan_fu_230_sum_0_ce0;
    end else begin
        sum_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_0_ce1 = grp_last_step_scan_fu_252_sum_0_ce1;
    end else begin
        sum_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_0_we0 = grp_sum_scan_fu_230_sum_0_we0;
    end else begin
        sum_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_1_address0 = grp_last_step_scan_fu_252_sum_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_1_address0 = grp_sum_scan_fu_230_sum_1_address0;
    end else begin
        sum_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_1_ce0 = grp_last_step_scan_fu_252_sum_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_1_ce0 = grp_sum_scan_fu_230_sum_1_ce0;
    end else begin
        sum_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_1_ce1 = grp_last_step_scan_fu_252_sum_1_ce1;
    end else begin
        sum_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_1_we0 = grp_sum_scan_fu_230_sum_1_we0;
    end else begin
        sum_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_2_address0 = grp_last_step_scan_fu_252_sum_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_2_address0 = grp_sum_scan_fu_230_sum_2_address0;
    end else begin
        sum_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_2_ce0 = grp_last_step_scan_fu_252_sum_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_2_ce0 = grp_sum_scan_fu_230_sum_2_ce0;
    end else begin
        sum_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_2_ce1 = grp_last_step_scan_fu_252_sum_2_ce1;
    end else begin
        sum_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_2_we0 = grp_sum_scan_fu_230_sum_2_we0;
    end else begin
        sum_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_3_address0 = grp_last_step_scan_fu_252_sum_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_3_address0 = grp_sum_scan_fu_230_sum_3_address0;
    end else begin
        sum_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_3_ce0 = grp_last_step_scan_fu_252_sum_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_3_ce0 = grp_sum_scan_fu_230_sum_3_ce0;
    end else begin
        sum_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_3_ce1 = grp_last_step_scan_fu_252_sum_3_ce1;
    end else begin
        sum_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_3_we0 = grp_sum_scan_fu_230_sum_3_we0;
    end else begin
        sum_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_4_address0 = grp_last_step_scan_fu_252_sum_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_4_address0 = grp_sum_scan_fu_230_sum_4_address0;
    end else begin
        sum_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_4_ce0 = grp_last_step_scan_fu_252_sum_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_4_ce0 = grp_sum_scan_fu_230_sum_4_ce0;
    end else begin
        sum_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_4_ce1 = grp_last_step_scan_fu_252_sum_4_ce1;
    end else begin
        sum_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_4_we0 = grp_sum_scan_fu_230_sum_4_we0;
    end else begin
        sum_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_5_address0 = grp_last_step_scan_fu_252_sum_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_5_address0 = grp_sum_scan_fu_230_sum_5_address0;
    end else begin
        sum_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_5_ce0 = grp_last_step_scan_fu_252_sum_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_5_ce0 = grp_sum_scan_fu_230_sum_5_ce0;
    end else begin
        sum_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_5_ce1 = grp_last_step_scan_fu_252_sum_5_ce1;
    end else begin
        sum_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_5_we0 = grp_sum_scan_fu_230_sum_5_we0;
    end else begin
        sum_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_6_address0 = grp_last_step_scan_fu_252_sum_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_6_address0 = grp_sum_scan_fu_230_sum_6_address0;
    end else begin
        sum_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_6_ce0 = grp_last_step_scan_fu_252_sum_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_6_ce0 = grp_sum_scan_fu_230_sum_6_ce0;
    end else begin
        sum_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_6_ce1 = grp_last_step_scan_fu_252_sum_6_ce1;
    end else begin
        sum_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_6_we0 = grp_sum_scan_fu_230_sum_6_we0;
    end else begin
        sum_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_7_address0 = grp_last_step_scan_fu_252_sum_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_7_address0 = grp_sum_scan_fu_230_sum_7_address0;
    end else begin
        sum_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_7_ce0 = grp_last_step_scan_fu_252_sum_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_7_ce0 = grp_sum_scan_fu_230_sum_7_ce0;
    end else begin
        sum_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_7_ce1 = grp_last_step_scan_fu_252_sum_7_ce1;
    end else begin
        sum_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_7_we0 = grp_sum_scan_fu_230_sum_7_we0;
    end else begin
        sum_7_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_402_p3 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_ss_sort_Pipeline_init_1_fu_145_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (valid_buffer_reg_120 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((grp_ss_sort_Pipeline_init_1_fu_145_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (valid_buffer_reg_120 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
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
            if (((grp_local_scan_fu_210_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_sum_scan_fu_230_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((grp_last_step_scan_fu_252_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12) & (valid_buffer_reg_120 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else if (((grp_last_step_scan_fu_252_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12) & (valid_buffer_reg_120 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (1'b0 == ap_block_state14_on_subcall_done))) begin
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
assign a_0_address1 = grp_hist_fu_165_b_0_address1;
assign a_0_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_0_d0;
assign a_1_address1 = grp_hist_fu_165_b_1_address1;
assign a_1_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_1_d0;
assign a_2_address1 = grp_hist_fu_165_b_2_address1;
assign a_2_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_2_d0;
assign a_3_address1 = grp_hist_fu_165_b_3_address1;
assign a_3_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_3_d0;
assign a_4_address1 = grp_hist_fu_165_b_4_address1;
assign a_4_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_4_d0;
assign a_5_address1 = grp_hist_fu_165_b_5_address1;
assign a_5_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_5_d0;
assign a_6_address1 = grp_hist_fu_165_b_6_address1;
assign a_6_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_6_d0;
assign a_7_address1 = grp_hist_fu_165_b_7_address1;
assign a_7_d0 = grp_ss_sort_Pipeline_update_1_update_21_fu_341_a_7_d0;
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
    ap_block_state14_on_subcall_done = (((grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_done == 1'b0) & (valid_buffer_reg_120 == 1'd1)) | ((grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_done == 1'b0) & (valid_buffer_reg_120 == 1'd0)));
end
always @ (*) begin
    ap_block_state5_on_subcall_done = (((grp_hist_fu_165_ap_done == 1'b0) & (valid_buffer_reg_120 == 1'd1)) | ((grp_hist_fu_165_ap_done == 1'b0) & (valid_buffer_reg_120 == 1'd0)));
end
assign b_0_address1 = grp_hist_fu_165_b_0_address1;
assign b_0_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_0_d0;
assign b_1_address1 = grp_hist_fu_165_b_1_address1;
assign b_1_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_1_d0;
assign b_2_address1 = grp_hist_fu_165_b_2_address1;
assign b_2_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_2_d0;
assign b_3_address1 = grp_hist_fu_165_b_3_address1;
assign b_3_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_3_d0;
assign b_4_address1 = grp_hist_fu_165_b_4_address1;
assign b_4_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_4_d0;
assign b_5_address1 = grp_hist_fu_165_b_5_address1;
assign b_5_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_5_d0;
assign b_6_address1 = grp_hist_fu_165_b_6_address1;
assign b_6_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_6_d0;
assign b_7_address1 = grp_hist_fu_165_b_7_address1;
assign b_7_d0 = grp_ss_sort_Pipeline_update_1_update_2_fu_288_b_7_d0;
assign exp_3_fu_413_p2 = (exp_fu_116 + 6'd2);
assign grp_hist_fu_165_ap_start = grp_hist_fu_165_ap_start_reg;
assign grp_last_step_scan_fu_252_ap_start = grp_last_step_scan_fu_252_ap_start_reg;
assign grp_local_scan_fu_210_ap_start = grp_local_scan_fu_210_ap_start_reg;
assign grp_ss_sort_Pipeline_init_1_fu_145_ap_start = grp_ss_sort_Pipeline_init_1_fu_145_ap_start_reg;
assign grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_start = grp_ss_sort_Pipeline_update_1_update_21_fu_341_ap_start_reg;
assign grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_start = grp_ss_sort_Pipeline_update_1_update_2_fu_288_ap_start_reg;
assign grp_sum_scan_fu_230_ap_start = grp_sum_scan_fu_230_ap_start_reg;
assign sum_0_address1 = grp_last_step_scan_fu_252_sum_0_address1;
assign sum_0_d0 = grp_sum_scan_fu_230_sum_0_d0;
assign sum_1_address1 = grp_last_step_scan_fu_252_sum_1_address1;
assign sum_1_d0 = grp_sum_scan_fu_230_sum_1_d0;
assign sum_2_address1 = grp_last_step_scan_fu_252_sum_2_address1;
assign sum_2_d0 = grp_sum_scan_fu_230_sum_2_d0;
assign sum_3_address1 = grp_last_step_scan_fu_252_sum_3_address1;
assign sum_3_d0 = grp_sum_scan_fu_230_sum_3_d0;
assign sum_4_address1 = grp_last_step_scan_fu_252_sum_4_address1;
assign sum_4_d0 = grp_sum_scan_fu_230_sum_4_d0;
assign sum_5_address1 = grp_last_step_scan_fu_252_sum_5_address1;
assign sum_5_d0 = grp_sum_scan_fu_230_sum_5_d0;
assign sum_6_address1 = grp_last_step_scan_fu_252_sum_6_address1;
assign sum_6_d0 = grp_sum_scan_fu_230_sum_6_d0;
assign sum_7_address1 = grp_last_step_scan_fu_252_sum_7_address1;
assign sum_7_d0 = grp_sum_scan_fu_230_sum_7_d0;
assign tmp_fu_402_p3 = exp_fu_116[32'd5];
assign trunc_ln63_fu_410_p1 = exp_fu_116[4:0];
endmodule 