
module syrk (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alpha,beta,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,A_4_address0,A_4_ce0,A_4_q0,A_5_address0,A_5_ce0,A_5_q0,A_6_address0,A_6_ce0,A_6_q0,A_7_address0,A_7_ce0,A_7_q0,B_0_address0,B_0_ce0,B_0_q0,B_1_address0,B_1_ce0,B_1_q0,B_2_address0,B_2_ce0,B_2_q0,B_3_address0,B_3_ce0,B_3_q0,B_4_address0,B_4_ce0,B_4_q0,B_5_address0,B_5_ce0,B_5_q0,B_6_address0,B_6_ce0,B_6_q0,B_7_address0,B_7_ce0,B_7_q0,C_out_0_din,C_out_0_full_n,C_out_0_write,C_out_1_din,C_out_1_full_n,C_out_1_write,C_out_2_din,C_out_2_full_n,C_out_2_write,C_out_3_din,C_out_3_full_n,C_out_3_write,C_out_4_din,C_out_4_full_n,C_out_4_write,C_out_5_din,C_out_5_full_n,C_out_5_write,C_out_6_din,C_out_6_full_n,C_out_6_write,C_out_7_din,C_out_7_full_n,C_out_7_write);  
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
output  [8:0] B_0_address0;
output   B_0_ce0;
input  [31:0] B_0_q0;
output  [8:0] B_1_address0;
output   B_1_ce0;
input  [31:0] B_1_q0;
output  [8:0] B_2_address0;
output   B_2_ce0;
input  [31:0] B_2_q0;
output  [8:0] B_3_address0;
output   B_3_ce0;
input  [31:0] B_3_q0;
output  [8:0] B_4_address0;
output   B_4_ce0;
input  [31:0] B_4_q0;
output  [8:0] B_5_address0;
output   B_5_ce0;
input  [31:0] B_5_q0;
output  [8:0] B_6_address0;
output   B_6_ce0;
input  [31:0] B_6_q0;
output  [8:0] B_7_address0;
output   B_7_ce0;
input  [31:0] B_7_q0;
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
output  [31:0] C_out_4_din;
input   C_out_4_full_n;
output   C_out_4_write;
output  [31:0] C_out_5_din;
input   C_out_5_full_n;
output   C_out_5_write;
output  [31:0] C_out_6_din;
input   C_out_6_full_n;
output   C_out_6_write;
output  [31:0] C_out_7_din;
input   C_out_7_full_n;
output   C_out_7_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg C_out_0_write;
reg C_out_1_write;
reg C_out_2_write;
reg C_out_3_write;
reg C_out_4_write;
reg C_out_5_write;
reg C_out_6_write;
reg C_out_7_write;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
reg   [8:0] buff_A0_address0;
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
reg   [8:0] buff_A0_1_address0;
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
reg   [8:0] buff_A0_2_address0;
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
reg   [8:0] buff_A0_3_address0;
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
reg   [8:0] buff_A0_4_address0;
reg    buff_A0_4_ce0;
reg    buff_A0_4_we0;
wire   [31:0] buff_A0_4_q0;
reg    buff_A0_4_ce1;
wire   [31:0] buff_A0_4_q1;
reg    buff_A0_4_ce2;
wire   [31:0] buff_A0_4_q2;
reg    buff_A0_4_ce3;
wire   [31:0] buff_A0_4_q3;
reg    buff_A0_4_ce4;
wire   [31:0] buff_A0_4_q4;
reg    buff_A0_4_ce5;
wire   [31:0] buff_A0_4_q5;
reg    buff_A0_4_ce6;
wire   [31:0] buff_A0_4_q6;
reg    buff_A0_4_ce7;
wire   [31:0] buff_A0_4_q7;
reg   [8:0] buff_A0_5_address0;
reg    buff_A0_5_ce0;
reg    buff_A0_5_we0;
wire   [31:0] buff_A0_5_q0;
reg    buff_A0_5_ce1;
wire   [31:0] buff_A0_5_q1;
reg    buff_A0_5_ce2;
wire   [31:0] buff_A0_5_q2;
reg    buff_A0_5_ce3;
wire   [31:0] buff_A0_5_q3;
reg    buff_A0_5_ce4;
wire   [31:0] buff_A0_5_q4;
reg    buff_A0_5_ce5;
wire   [31:0] buff_A0_5_q5;
reg    buff_A0_5_ce6;
wire   [31:0] buff_A0_5_q6;
reg    buff_A0_5_ce7;
wire   [31:0] buff_A0_5_q7;
reg   [8:0] buff_A0_6_address0;
reg    buff_A0_6_ce0;
reg    buff_A0_6_we0;
wire   [31:0] buff_A0_6_q0;
reg    buff_A0_6_ce1;
wire   [31:0] buff_A0_6_q1;
reg    buff_A0_6_ce2;
wire   [31:0] buff_A0_6_q2;
reg    buff_A0_6_ce3;
wire   [31:0] buff_A0_6_q3;
reg    buff_A0_6_ce4;
wire   [31:0] buff_A0_6_q4;
reg    buff_A0_6_ce5;
wire   [31:0] buff_A0_6_q5;
reg    buff_A0_6_ce6;
wire   [31:0] buff_A0_6_q6;
reg    buff_A0_6_ce7;
wire   [31:0] buff_A0_6_q7;
reg   [8:0] buff_A0_7_address0;
reg    buff_A0_7_ce0;
reg    buff_A0_7_we0;
wire   [31:0] buff_A0_7_q0;
reg    buff_A0_7_ce1;
wire   [31:0] buff_A0_7_q1;
reg    buff_A0_7_ce2;
wire   [31:0] buff_A0_7_q2;
reg    buff_A0_7_ce3;
wire   [31:0] buff_A0_7_q3;
reg    buff_A0_7_ce4;
wire   [31:0] buff_A0_7_q4;
reg    buff_A0_7_ce5;
wire   [31:0] buff_A0_7_q5;
reg    buff_A0_7_ce6;
wire   [31:0] buff_A0_7_q6;
reg    buff_A0_7_ce7;
wire   [31:0] buff_A0_7_q7;
reg   [8:0] buff_A1_address0;
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
reg   [8:0] buff_A1_1_address0;
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
reg   [8:0] buff_A1_2_address0;
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
reg   [8:0] buff_A1_3_address0;
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
reg   [8:0] buff_A1_4_address0;
reg    buff_A1_4_ce0;
reg    buff_A1_4_we0;
wire   [31:0] buff_A1_4_q0;
reg    buff_A1_4_ce1;
wire   [31:0] buff_A1_4_q1;
reg    buff_A1_4_ce2;
wire   [31:0] buff_A1_4_q2;
reg    buff_A1_4_ce3;
wire   [31:0] buff_A1_4_q3;
reg    buff_A1_4_ce4;
wire   [31:0] buff_A1_4_q4;
reg    buff_A1_4_ce5;
wire   [31:0] buff_A1_4_q5;
reg    buff_A1_4_ce6;
wire   [31:0] buff_A1_4_q6;
reg    buff_A1_4_ce7;
wire   [31:0] buff_A1_4_q7;
reg   [8:0] buff_A1_5_address0;
reg    buff_A1_5_ce0;
reg    buff_A1_5_we0;
wire   [31:0] buff_A1_5_q0;
reg    buff_A1_5_ce1;
wire   [31:0] buff_A1_5_q1;
reg    buff_A1_5_ce2;
wire   [31:0] buff_A1_5_q2;
reg    buff_A1_5_ce3;
wire   [31:0] buff_A1_5_q3;
reg    buff_A1_5_ce4;
wire   [31:0] buff_A1_5_q4;
reg    buff_A1_5_ce5;
wire   [31:0] buff_A1_5_q5;
reg    buff_A1_5_ce6;
wire   [31:0] buff_A1_5_q6;
reg    buff_A1_5_ce7;
wire   [31:0] buff_A1_5_q7;
reg   [8:0] buff_A1_6_address0;
reg    buff_A1_6_ce0;
reg    buff_A1_6_we0;
wire   [31:0] buff_A1_6_q0;
reg    buff_A1_6_ce1;
wire   [31:0] buff_A1_6_q1;
reg    buff_A1_6_ce2;
wire   [31:0] buff_A1_6_q2;
reg    buff_A1_6_ce3;
wire   [31:0] buff_A1_6_q3;
reg    buff_A1_6_ce4;
wire   [31:0] buff_A1_6_q4;
reg    buff_A1_6_ce5;
wire   [31:0] buff_A1_6_q5;
reg    buff_A1_6_ce6;
wire   [31:0] buff_A1_6_q6;
reg    buff_A1_6_ce7;
wire   [31:0] buff_A1_6_q7;
reg   [8:0] buff_A1_7_address0;
reg    buff_A1_7_ce0;
reg    buff_A1_7_we0;
wire   [31:0] buff_A1_7_q0;
reg    buff_A1_7_ce1;
wire   [31:0] buff_A1_7_q1;
reg    buff_A1_7_ce2;
wire   [31:0] buff_A1_7_q2;
reg    buff_A1_7_ce3;
wire   [31:0] buff_A1_7_q3;
reg    buff_A1_7_ce4;
wire   [31:0] buff_A1_7_q4;
reg    buff_A1_7_ce5;
wire   [31:0] buff_A1_7_q5;
reg    buff_A1_7_ce6;
wire   [31:0] buff_A1_7_q6;
reg    buff_A1_7_ce7;
wire   [31:0] buff_A1_7_q7;
reg   [8:0] buff_B_address0;
reg    buff_B_ce0;
reg    buff_B_we0;
wire   [31:0] buff_B_q0;
reg    buff_B_ce1;
wire   [31:0] buff_B_q1;
reg   [8:0] buff_B_1_address0;
reg    buff_B_1_ce0;
reg    buff_B_1_we0;
wire   [31:0] buff_B_1_q0;
reg    buff_B_1_ce1;
wire   [31:0] buff_B_1_q1;
reg   [8:0] buff_B_2_address0;
reg    buff_B_2_ce0;
reg    buff_B_2_we0;
wire   [31:0] buff_B_2_q0;
reg    buff_B_2_ce1;
wire   [31:0] buff_B_2_q1;
reg   [8:0] buff_B_3_address0;
reg    buff_B_3_ce0;
reg    buff_B_3_we0;
wire   [31:0] buff_B_3_q0;
reg    buff_B_3_ce1;
wire   [31:0] buff_B_3_q1;
reg   [8:0] buff_B_4_address0;
reg    buff_B_4_ce0;
reg    buff_B_4_we0;
wire   [31:0] buff_B_4_q0;
reg    buff_B_4_ce1;
wire   [31:0] buff_B_4_q1;
reg   [8:0] buff_B_5_address0;
reg    buff_B_5_ce0;
reg    buff_B_5_we0;
wire   [31:0] buff_B_5_q0;
reg    buff_B_5_ce1;
wire   [31:0] buff_B_5_q1;
reg   [8:0] buff_B_6_address0;
reg    buff_B_6_ce0;
reg    buff_B_6_we0;
wire   [31:0] buff_B_6_q0;
reg    buff_B_6_ce1;
wire   [31:0] buff_B_6_q1;
reg   [8:0] buff_B_7_address0;
reg    buff_B_7_ce0;
reg    buff_B_7_we0;
wire   [31:0] buff_B_7_q0;
reg    buff_B_7_ce1;
wire   [31:0] buff_B_7_q1;
reg   [8:0] buff_C_out_address0;
reg    buff_C_out_ce0;
reg    buff_C_out_we0;
reg   [31:0] buff_C_out_d0;
wire   [31:0] buff_C_out_q0;
reg   [8:0] buff_C_out_address1;
reg    buff_C_out_ce1;
reg    buff_C_out_we1;
wire   [31:0] buff_C_out_q1;
reg   [8:0] buff_C_out_1_address0;
reg    buff_C_out_1_ce0;
reg    buff_C_out_1_we0;
reg   [31:0] buff_C_out_1_d0;
wire   [31:0] buff_C_out_1_q0;
reg   [8:0] buff_C_out_1_address1;
reg    buff_C_out_1_ce1;
reg    buff_C_out_1_we1;
wire   [31:0] buff_C_out_1_q1;
reg   [8:0] buff_C_out_2_address0;
reg    buff_C_out_2_ce0;
reg    buff_C_out_2_we0;
reg   [31:0] buff_C_out_2_d0;
wire   [31:0] buff_C_out_2_q0;
reg   [8:0] buff_C_out_2_address1;
reg    buff_C_out_2_ce1;
reg    buff_C_out_2_we1;
wire   [31:0] buff_C_out_2_q1;
reg   [8:0] buff_C_out_3_address0;
reg    buff_C_out_3_ce0;
reg    buff_C_out_3_we0;
reg   [31:0] buff_C_out_3_d0;
wire   [31:0] buff_C_out_3_q0;
reg   [8:0] buff_C_out_3_address1;
reg    buff_C_out_3_ce1;
reg    buff_C_out_3_we1;
wire   [31:0] buff_C_out_3_q1;
reg   [8:0] buff_C_out_4_address0;
reg    buff_C_out_4_ce0;
reg    buff_C_out_4_we0;
reg   [31:0] buff_C_out_4_d0;
wire   [31:0] buff_C_out_4_q0;
reg   [8:0] buff_C_out_4_address1;
reg    buff_C_out_4_ce1;
reg    buff_C_out_4_we1;
wire   [31:0] buff_C_out_4_q1;
reg   [8:0] buff_C_out_5_address0;
reg    buff_C_out_5_ce0;
reg    buff_C_out_5_we0;
reg   [31:0] buff_C_out_5_d0;
wire   [31:0] buff_C_out_5_q0;
reg   [8:0] buff_C_out_5_address1;
reg    buff_C_out_5_ce1;
reg    buff_C_out_5_we1;
wire   [31:0] buff_C_out_5_q1;
reg   [8:0] buff_C_out_6_address0;
reg    buff_C_out_6_ce0;
reg    buff_C_out_6_we0;
reg   [31:0] buff_C_out_6_d0;
wire   [31:0] buff_C_out_6_q0;
reg   [8:0] buff_C_out_6_address1;
reg    buff_C_out_6_ce1;
reg    buff_C_out_6_we1;
wire   [31:0] buff_C_out_6_q1;
reg   [8:0] buff_C_out_7_address0;
reg    buff_C_out_7_ce0;
reg    buff_C_out_7_we0;
reg   [31:0] buff_C_out_7_d0;
wire   [31:0] buff_C_out_7_q0;
reg   [8:0] buff_C_out_7_address1;
reg    buff_C_out_7_ce1;
reg    buff_C_out_7_we1;
wire   [31:0] buff_C_out_7_q1;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_start;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_done;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_idle;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_ready;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_0_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_0_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_1_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_2_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_3_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_4_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_4_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_5_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_5_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_6_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_6_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_7_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_7_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_0_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_0_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_1_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_2_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_3_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_4_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_4_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_5_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_5_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_6_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_6_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_7_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_7_ce0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_d0;
wire   [8:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_d0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_ap_start;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_ap_done;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_ap_idle;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_ap_ready;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address2;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce2;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address3;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce3;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address4;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce4;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address5;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce5;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address6;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce6;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address7;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce7;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_d0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_d0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_d0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_d0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_d0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_d0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_d0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_ce1;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_address0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_d0;
wire   [8:0] grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_address1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_ce1;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_416_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_416_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_416_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_416_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_420_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_420_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_420_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_420_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_424_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_424_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_424_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_424_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_428_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_428_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_428_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_428_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_432_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_432_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_432_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_432_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_436_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_436_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_436_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_436_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_440_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_440_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_440_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_440_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_444_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_444_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_444_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_444_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_448_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_448_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_448_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_452_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_452_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_452_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_456_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_456_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_456_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_460_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_460_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_460_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_464_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_464_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_464_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_468_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_468_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_468_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_472_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_472_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_472_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_476_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_476_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_476_p_ce;
wire    grp_syrk_Pipeline_lp4_fu_356_ap_start;
wire    grp_syrk_Pipeline_lp4_fu_356_ap_done;
wire    grp_syrk_Pipeline_lp4_fu_356_ap_idle;
wire    grp_syrk_Pipeline_lp4_fu_356_ap_ready;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_ce0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_ce1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_1_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_1_ce0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_1_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_1_ce1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_2_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_2_ce0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_2_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_2_ce1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_3_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_3_ce0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_3_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_3_ce1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_4_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_4_ce0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_4_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_4_ce1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_5_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_5_ce0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_5_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_5_ce1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_6_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_6_ce0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_6_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_6_ce1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_7_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_7_ce0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_B_7_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_B_7_ce1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_ce0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_d0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_ce1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_we1;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_d1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_ce0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_d0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_ce1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_we1;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_d1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_ce0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_d0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_ce1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_we1;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_d1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_ce0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_d0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_ce1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_we1;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_d1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_ce0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_d0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_ce1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_we1;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_d1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_ce0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_d0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_ce1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_we1;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_d1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_ce0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_d0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_ce1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_we1;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_d1;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_address0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_ce0;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_d0;
wire   [8:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_address1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_ce1;
wire    grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_we1;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_d1;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_416_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_416_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_416_p_opcode;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_416_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_420_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_420_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_420_p_opcode;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_420_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_424_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_424_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_424_p_opcode;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_424_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_428_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_428_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_428_p_opcode;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_428_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_432_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_432_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_432_p_opcode;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_432_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_436_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_436_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_436_p_opcode;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_436_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_440_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_440_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_440_p_opcode;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_440_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_444_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_444_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_444_p_opcode;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_444_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_448_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_448_p_din1;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_448_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_452_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_452_p_din1;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_452_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_456_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_456_p_din1;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_456_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_460_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_460_p_din1;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_460_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_464_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_464_p_din1;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_464_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_468_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_468_p_din1;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_468_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_472_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_472_p_din1;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_472_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_476_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_fu_356_grp_fu_476_p_din1;
wire    grp_syrk_Pipeline_lp4_fu_356_grp_fu_476_p_ce;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_start;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_done;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_idle;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_ready;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_0_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_0_write;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_1_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_1_write;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_2_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_2_write;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_3_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_3_write;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_4_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_4_write;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_5_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_5_write;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_6_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_6_write;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_7_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_7_write;
wire   [8:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_ce0;
wire   [8:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_1_ce0;
wire   [8:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_2_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_2_ce0;
wire   [8:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_3_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_3_ce0;
wire   [8:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_4_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_4_ce0;
wire   [8:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_5_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_5_ce0;
wire   [8:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_6_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_6_ce0;
wire   [8:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_7_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_7_ce0;
reg    grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_syrk_Pipeline_lp1_lp2_fu_326_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_syrk_Pipeline_lp4_fu_356_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire   [31:0] grp_fu_416_p2;
reg   [31:0] grp_fu_416_p0;
reg   [31:0] grp_fu_416_p1;
reg    grp_fu_416_ce;
wire   [31:0] grp_fu_420_p2;
reg   [31:0] grp_fu_420_p0;
reg   [31:0] grp_fu_420_p1;
reg    grp_fu_420_ce;
wire   [31:0] grp_fu_424_p2;
reg   [31:0] grp_fu_424_p0;
reg   [31:0] grp_fu_424_p1;
reg    grp_fu_424_ce;
wire   [31:0] grp_fu_428_p2;
reg   [31:0] grp_fu_428_p0;
reg   [31:0] grp_fu_428_p1;
reg    grp_fu_428_ce;
wire   [31:0] grp_fu_432_p2;
reg   [31:0] grp_fu_432_p0;
reg   [31:0] grp_fu_432_p1;
reg    grp_fu_432_ce;
wire   [31:0] grp_fu_436_p2;
reg   [31:0] grp_fu_436_p0;
reg   [31:0] grp_fu_436_p1;
reg    grp_fu_436_ce;
wire   [31:0] grp_fu_440_p2;
reg   [31:0] grp_fu_440_p0;
reg   [31:0] grp_fu_440_p1;
reg    grp_fu_440_ce;
wire   [31:0] grp_fu_444_p2;
reg   [31:0] grp_fu_444_p0;
reg   [31:0] grp_fu_444_p1;
reg    grp_fu_444_ce;
wire   [31:0] grp_fu_448_p2;
reg   [31:0] grp_fu_448_p0;
reg   [31:0] grp_fu_448_p1;
reg    grp_fu_448_ce;
wire   [31:0] grp_fu_452_p2;
reg   [31:0] grp_fu_452_p0;
reg   [31:0] grp_fu_452_p1;
reg    grp_fu_452_ce;
wire   [31:0] grp_fu_456_p2;
reg   [31:0] grp_fu_456_p0;
reg   [31:0] grp_fu_456_p1;
reg    grp_fu_456_ce;
wire   [31:0] grp_fu_460_p2;
reg   [31:0] grp_fu_460_p0;
reg   [31:0] grp_fu_460_p1;
reg    grp_fu_460_ce;
wire   [31:0] grp_fu_464_p2;
reg   [31:0] grp_fu_464_p0;
reg   [31:0] grp_fu_464_p1;
reg    grp_fu_464_ce;
wire   [31:0] grp_fu_468_p2;
reg   [31:0] grp_fu_468_p0;
reg   [31:0] grp_fu_468_p1;
reg    grp_fu_468_ce;
wire   [31:0] grp_fu_472_p2;
reg   [31:0] grp_fu_472_p0;
reg   [31:0] grp_fu_472_p1;
reg    grp_fu_472_ce;
wire   [31:0] grp_fu_476_p2;
reg   [31:0] grp_fu_476_p0;
reg   [31:0] grp_fu_476_p1;
reg    grp_fu_476_ce;
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
#0 grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_start_reg = 1'b0;
#0 grp_syrk_Pipeline_lp1_lp2_fu_326_ap_start_reg = 1'b0;
#0 grp_syrk_Pipeline_lp4_fu_356_ap_start_reg = 1'b0;
#0 grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_start_reg = 1'b0;
end
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A0_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_address0),.ce0(buff_A0_ce0),.we0(buff_A0_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_d0),.q0(buff_A0_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address1),.ce1(buff_A0_ce1),.q1(buff_A0_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address2),.ce2(buff_A0_ce2),.q2(buff_A0_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address3),.ce3(buff_A0_ce3),.q3(buff_A0_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address4),.ce4(buff_A0_ce4),.q4(buff_A0_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address5),.ce5(buff_A0_ce5),.q5(buff_A0_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address6),.ce6(buff_A0_ce6),.q6(buff_A0_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address7),.ce7(buff_A0_ce7),.q7(buff_A0_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A0_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_1_address0),.ce0(buff_A0_1_ce0),.we0(buff_A0_1_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_d0),.q0(buff_A0_1_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address1),.ce1(buff_A0_1_ce1),.q1(buff_A0_1_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address2),.ce2(buff_A0_1_ce2),.q2(buff_A0_1_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address3),.ce3(buff_A0_1_ce3),.q3(buff_A0_1_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address4),.ce4(buff_A0_1_ce4),.q4(buff_A0_1_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address5),.ce5(buff_A0_1_ce5),.q5(buff_A0_1_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address6),.ce6(buff_A0_1_ce6),.q6(buff_A0_1_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address7),.ce7(buff_A0_1_ce7),.q7(buff_A0_1_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A0_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_2_address0),.ce0(buff_A0_2_ce0),.we0(buff_A0_2_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_d0),.q0(buff_A0_2_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address1),.ce1(buff_A0_2_ce1),.q1(buff_A0_2_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address2),.ce2(buff_A0_2_ce2),.q2(buff_A0_2_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address3),.ce3(buff_A0_2_ce3),.q3(buff_A0_2_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address4),.ce4(buff_A0_2_ce4),.q4(buff_A0_2_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address5),.ce5(buff_A0_2_ce5),.q5(buff_A0_2_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address6),.ce6(buff_A0_2_ce6),.q6(buff_A0_2_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address7),.ce7(buff_A0_2_ce7),.q7(buff_A0_2_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A0_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_3_address0),.ce0(buff_A0_3_ce0),.we0(buff_A0_3_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_d0),.q0(buff_A0_3_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address1),.ce1(buff_A0_3_ce1),.q1(buff_A0_3_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address2),.ce2(buff_A0_3_ce2),.q2(buff_A0_3_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address3),.ce3(buff_A0_3_ce3),.q3(buff_A0_3_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address4),.ce4(buff_A0_3_ce4),.q4(buff_A0_3_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address5),.ce5(buff_A0_3_ce5),.q5(buff_A0_3_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address6),.ce6(buff_A0_3_ce6),.q6(buff_A0_3_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address7),.ce7(buff_A0_3_ce7),.q7(buff_A0_3_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A0_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_4_address0),.ce0(buff_A0_4_ce0),.we0(buff_A0_4_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_d0),.q0(buff_A0_4_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address1),.ce1(buff_A0_4_ce1),.q1(buff_A0_4_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address2),.ce2(buff_A0_4_ce2),.q2(buff_A0_4_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address3),.ce3(buff_A0_4_ce3),.q3(buff_A0_4_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address4),.ce4(buff_A0_4_ce4),.q4(buff_A0_4_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address5),.ce5(buff_A0_4_ce5),.q5(buff_A0_4_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address6),.ce6(buff_A0_4_ce6),.q6(buff_A0_4_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address7),.ce7(buff_A0_4_ce7),.q7(buff_A0_4_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A0_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_5_address0),.ce0(buff_A0_5_ce0),.we0(buff_A0_5_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_d0),.q0(buff_A0_5_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address1),.ce1(buff_A0_5_ce1),.q1(buff_A0_5_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address2),.ce2(buff_A0_5_ce2),.q2(buff_A0_5_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address3),.ce3(buff_A0_5_ce3),.q3(buff_A0_5_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address4),.ce4(buff_A0_5_ce4),.q4(buff_A0_5_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address5),.ce5(buff_A0_5_ce5),.q5(buff_A0_5_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address6),.ce6(buff_A0_5_ce6),.q6(buff_A0_5_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address7),.ce7(buff_A0_5_ce7),.q7(buff_A0_5_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A0_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_6_address0),.ce0(buff_A0_6_ce0),.we0(buff_A0_6_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_d0),.q0(buff_A0_6_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address1),.ce1(buff_A0_6_ce1),.q1(buff_A0_6_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address2),.ce2(buff_A0_6_ce2),.q2(buff_A0_6_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address3),.ce3(buff_A0_6_ce3),.q3(buff_A0_6_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address4),.ce4(buff_A0_6_ce4),.q4(buff_A0_6_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address5),.ce5(buff_A0_6_ce5),.q5(buff_A0_6_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address6),.ce6(buff_A0_6_ce6),.q6(buff_A0_6_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address7),.ce7(buff_A0_6_ce7),.q7(buff_A0_6_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A0_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_7_address0),.ce0(buff_A0_7_ce0),.we0(buff_A0_7_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_d0),.q0(buff_A0_7_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address1),.ce1(buff_A0_7_ce1),.q1(buff_A0_7_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address2),.ce2(buff_A0_7_ce2),.q2(buff_A0_7_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address3),.ce3(buff_A0_7_ce3),.q3(buff_A0_7_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address4),.ce4(buff_A0_7_ce4),.q4(buff_A0_7_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address5),.ce5(buff_A0_7_ce5),.q5(buff_A0_7_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address6),.ce6(buff_A0_7_ce6),.q6(buff_A0_7_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address7),.ce7(buff_A0_7_ce7),.q7(buff_A0_7_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_address0),.ce0(buff_A1_ce0),.we0(buff_A1_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_d0),.q0(buff_A1_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address1),.ce1(buff_A1_ce1),.q1(buff_A1_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address2),.ce2(buff_A1_ce2),.q2(buff_A1_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address3),.ce3(buff_A1_ce3),.q3(buff_A1_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address4),.ce4(buff_A1_ce4),.q4(buff_A1_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address5),.ce5(buff_A1_ce5),.q5(buff_A1_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address6),.ce6(buff_A1_ce6),.q6(buff_A1_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address7),.ce7(buff_A1_ce7),.q7(buff_A1_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_1_address0),.ce0(buff_A1_1_ce0),.we0(buff_A1_1_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_d0),.q0(buff_A1_1_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address1),.ce1(buff_A1_1_ce1),.q1(buff_A1_1_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address2),.ce2(buff_A1_1_ce2),.q2(buff_A1_1_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address3),.ce3(buff_A1_1_ce3),.q3(buff_A1_1_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address4),.ce4(buff_A1_1_ce4),.q4(buff_A1_1_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address5),.ce5(buff_A1_1_ce5),.q5(buff_A1_1_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address6),.ce6(buff_A1_1_ce6),.q6(buff_A1_1_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address7),.ce7(buff_A1_1_ce7),.q7(buff_A1_1_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_2_address0),.ce0(buff_A1_2_ce0),.we0(buff_A1_2_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_d0),.q0(buff_A1_2_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address1),.ce1(buff_A1_2_ce1),.q1(buff_A1_2_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address2),.ce2(buff_A1_2_ce2),.q2(buff_A1_2_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address3),.ce3(buff_A1_2_ce3),.q3(buff_A1_2_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address4),.ce4(buff_A1_2_ce4),.q4(buff_A1_2_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address5),.ce5(buff_A1_2_ce5),.q5(buff_A1_2_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address6),.ce6(buff_A1_2_ce6),.q6(buff_A1_2_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address7),.ce7(buff_A1_2_ce7),.q7(buff_A1_2_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_3_address0),.ce0(buff_A1_3_ce0),.we0(buff_A1_3_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_d0),.q0(buff_A1_3_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address1),.ce1(buff_A1_3_ce1),.q1(buff_A1_3_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address2),.ce2(buff_A1_3_ce2),.q2(buff_A1_3_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address3),.ce3(buff_A1_3_ce3),.q3(buff_A1_3_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address4),.ce4(buff_A1_3_ce4),.q4(buff_A1_3_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address5),.ce5(buff_A1_3_ce5),.q5(buff_A1_3_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address6),.ce6(buff_A1_3_ce6),.q6(buff_A1_3_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address7),.ce7(buff_A1_3_ce7),.q7(buff_A1_3_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A1_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_4_address0),.ce0(buff_A1_4_ce0),.we0(buff_A1_4_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_d0),.q0(buff_A1_4_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address1),.ce1(buff_A1_4_ce1),.q1(buff_A1_4_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address2),.ce2(buff_A1_4_ce2),.q2(buff_A1_4_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address3),.ce3(buff_A1_4_ce3),.q3(buff_A1_4_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address4),.ce4(buff_A1_4_ce4),.q4(buff_A1_4_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address5),.ce5(buff_A1_4_ce5),.q5(buff_A1_4_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address6),.ce6(buff_A1_4_ce6),.q6(buff_A1_4_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address7),.ce7(buff_A1_4_ce7),.q7(buff_A1_4_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A1_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_5_address0),.ce0(buff_A1_5_ce0),.we0(buff_A1_5_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_d0),.q0(buff_A1_5_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address1),.ce1(buff_A1_5_ce1),.q1(buff_A1_5_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address2),.ce2(buff_A1_5_ce2),.q2(buff_A1_5_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address3),.ce3(buff_A1_5_ce3),.q3(buff_A1_5_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address4),.ce4(buff_A1_5_ce4),.q4(buff_A1_5_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address5),.ce5(buff_A1_5_ce5),.q5(buff_A1_5_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address6),.ce6(buff_A1_5_ce6),.q6(buff_A1_5_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address7),.ce7(buff_A1_5_ce7),.q7(buff_A1_5_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A1_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_6_address0),.ce0(buff_A1_6_ce0),.we0(buff_A1_6_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_d0),.q0(buff_A1_6_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address1),.ce1(buff_A1_6_ce1),.q1(buff_A1_6_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address2),.ce2(buff_A1_6_ce2),.q2(buff_A1_6_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address3),.ce3(buff_A1_6_ce3),.q3(buff_A1_6_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address4),.ce4(buff_A1_6_ce4),.q4(buff_A1_6_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address5),.ce5(buff_A1_6_ce5),.q5(buff_A1_6_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address6),.ce6(buff_A1_6_ce6),.q6(buff_A1_6_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address7),.ce7(buff_A1_6_ce7),.q7(buff_A1_6_q7));
syrk_buff_A0_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A1_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_7_address0),.ce0(buff_A1_7_ce0),.we0(buff_A1_7_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_d0),.q0(buff_A1_7_q0),.address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address1),.ce1(buff_A1_7_ce1),.q1(buff_A1_7_q1),.address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address2),.ce2(buff_A1_7_ce2),.q2(buff_A1_7_q2),.address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address3),.ce3(buff_A1_7_ce3),.q3(buff_A1_7_q3),.address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address4),.ce4(buff_A1_7_ce4),.q4(buff_A1_7_q4),.address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address5),.ce5(buff_A1_7_ce5),.q5(buff_A1_7_q5),.address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address6),.ce6(buff_A1_7_ce6),.q6(buff_A1_7_q6),.address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address7),.ce7(buff_A1_7_ce7),.q7(buff_A1_7_q7));
syrk_buff_B_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_B_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_address0),.ce0(buff_B_ce0),.we0(buff_B_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_d0),.q0(buff_B_q0),.address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_address1),.ce1(buff_B_ce1),.q1(buff_B_q1));
syrk_buff_B_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_B_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_1_address0),.ce0(buff_B_1_ce0),.we0(buff_B_1_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_d0),.q0(buff_B_1_q0),.address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_1_address1),.ce1(buff_B_1_ce1),.q1(buff_B_1_q1));
syrk_buff_B_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_B_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_2_address0),.ce0(buff_B_2_ce0),.we0(buff_B_2_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_d0),.q0(buff_B_2_q0),.address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_2_address1),.ce1(buff_B_2_ce1),.q1(buff_B_2_q1));
syrk_buff_B_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_B_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_3_address0),.ce0(buff_B_3_ce0),.we0(buff_B_3_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_d0),.q0(buff_B_3_q0),.address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_3_address1),.ce1(buff_B_3_ce1),.q1(buff_B_3_q1));
syrk_buff_B_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_B_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_4_address0),.ce0(buff_B_4_ce0),.we0(buff_B_4_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_d0),.q0(buff_B_4_q0),.address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_4_address1),.ce1(buff_B_4_ce1),.q1(buff_B_4_q1));
syrk_buff_B_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_B_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_5_address0),.ce0(buff_B_5_ce0),.we0(buff_B_5_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_d0),.q0(buff_B_5_q0),.address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_5_address1),.ce1(buff_B_5_ce1),.q1(buff_B_5_q1));
syrk_buff_B_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_B_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_6_address0),.ce0(buff_B_6_ce0),.we0(buff_B_6_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_d0),.q0(buff_B_6_q0),.address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_6_address1),.ce1(buff_B_6_ce1),.q1(buff_B_6_q1));
syrk_buff_B_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_B_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_7_address0),.ce0(buff_B_7_ce0),.we0(buff_B_7_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_d0),.q0(buff_B_7_q0),.address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_7_address1),.ce1(buff_B_7_ce1),.q1(buff_B_7_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_C_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_address0),.ce0(buff_C_out_ce0),.we0(buff_C_out_we0),.d0(buff_C_out_d0),.q0(buff_C_out_q0),.address1(buff_C_out_address1),.ce1(buff_C_out_ce1),.we1(buff_C_out_we1),.d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_d1),.q1(buff_C_out_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_C_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_1_address0),.ce0(buff_C_out_1_ce0),.we0(buff_C_out_1_we0),.d0(buff_C_out_1_d0),.q0(buff_C_out_1_q0),.address1(buff_C_out_1_address1),.ce1(buff_C_out_1_ce1),.we1(buff_C_out_1_we1),.d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_d1),.q1(buff_C_out_1_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_C_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_2_address0),.ce0(buff_C_out_2_ce0),.we0(buff_C_out_2_we0),.d0(buff_C_out_2_d0),.q0(buff_C_out_2_q0),.address1(buff_C_out_2_address1),.ce1(buff_C_out_2_ce1),.we1(buff_C_out_2_we1),.d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_d1),.q1(buff_C_out_2_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_C_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_3_address0),.ce0(buff_C_out_3_ce0),.we0(buff_C_out_3_we0),.d0(buff_C_out_3_d0),.q0(buff_C_out_3_q0),.address1(buff_C_out_3_address1),.ce1(buff_C_out_3_ce1),.we1(buff_C_out_3_we1),.d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_d1),.q1(buff_C_out_3_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_C_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_4_address0),.ce0(buff_C_out_4_ce0),.we0(buff_C_out_4_we0),.d0(buff_C_out_4_d0),.q0(buff_C_out_4_q0),.address1(buff_C_out_4_address1),.ce1(buff_C_out_4_ce1),.we1(buff_C_out_4_we1),.d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_d1),.q1(buff_C_out_4_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_C_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_5_address0),.ce0(buff_C_out_5_ce0),.we0(buff_C_out_5_we0),.d0(buff_C_out_5_d0),.q0(buff_C_out_5_q0),.address1(buff_C_out_5_address1),.ce1(buff_C_out_5_ce1),.we1(buff_C_out_5_we1),.d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_d1),.q1(buff_C_out_5_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_C_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_6_address0),.ce0(buff_C_out_6_ce0),.we0(buff_C_out_6_we0),.d0(buff_C_out_6_d0),.q0(buff_C_out_6_q0),.address1(buff_C_out_6_address1),.ce1(buff_C_out_6_ce1),.we1(buff_C_out_6_we1),.d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_d1),.q1(buff_C_out_6_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_C_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_7_address0),.ce0(buff_C_out_7_ce0),.we0(buff_C_out_7_we0),.d0(buff_C_out_7_d0),.q0(buff_C_out_7_q0),.address1(buff_C_out_7_address1),.ce1(buff_C_out_7_ce1),.we1(buff_C_out_7_we1),.d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_d1),.q1(buff_C_out_7_q1));
syrk_syrk_Pipeline_lprd_1_lprd_2 grp_syrk_Pipeline_lprd_1_lprd_2_fu_226(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_start),.ap_done(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_done),.ap_idle(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_idle),.ap_ready(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_ready),.A_0_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_0_address0),.A_0_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_1_address0),.A_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_2_address0),.A_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_3_address0),.A_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_4_address0),.A_4_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_5_address0),.A_5_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_6_address0),.A_6_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_7_address0),.A_7_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_7_ce0),.A_7_q0(A_7_q0),.B_0_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_0_address0),.B_0_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_0_ce0),.B_0_q0(B_0_q0),.B_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_1_address0),.B_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_1_ce0),.B_1_q0(B_1_q0),.B_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_2_address0),.B_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_2_ce0),.B_2_q0(B_2_q0),.B_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_3_address0),.B_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_3_ce0),.B_3_q0(B_3_q0),.B_4_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_4_address0),.B_4_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_4_ce0),.B_4_q0(B_4_q0),.B_5_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_5_address0),.B_5_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_5_ce0),.B_5_q0(B_5_q0),.B_6_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_6_address0),.B_6_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_6_ce0),.B_6_q0(B_6_q0),.B_7_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_7_address0),.B_7_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_7_ce0),.B_7_q0(B_7_q0),.buff_A0_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_address0),.buff_A0_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_ce0),.buff_A0_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_we0),.buff_A0_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_d0),.buff_A0_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_address0),.buff_A0_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_ce0),.buff_A0_1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_we0),.buff_A0_1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_d0),.buff_A0_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_address0),.buff_A0_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_ce0),.buff_A0_2_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_we0),.buff_A0_2_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_d0),.buff_A0_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_address0),.buff_A0_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_ce0),.buff_A0_3_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_we0),.buff_A0_3_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_d0),.buff_A0_4_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_address0),.buff_A0_4_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_ce0),.buff_A0_4_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_we0),.buff_A0_4_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_d0),.buff_A0_5_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_address0),.buff_A0_5_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_ce0),.buff_A0_5_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_we0),.buff_A0_5_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_d0),.buff_A0_6_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_address0),.buff_A0_6_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_ce0),.buff_A0_6_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_we0),.buff_A0_6_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_d0),.buff_A0_7_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_address0),.buff_A0_7_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_ce0),.buff_A0_7_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_we0),.buff_A0_7_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_d0),.buff_A1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_address0),.buff_A1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_ce0),.buff_A1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_we0),.buff_A1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_d0),.buff_A1_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_address0),.buff_A1_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_ce0),.buff_A1_1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_we0),.buff_A1_1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_d0),.buff_A1_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_address0),.buff_A1_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_ce0),.buff_A1_2_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_we0),.buff_A1_2_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_d0),.buff_A1_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_address0),.buff_A1_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_ce0),.buff_A1_3_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_we0),.buff_A1_3_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_d0),.buff_A1_4_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_address0),.buff_A1_4_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_ce0),.buff_A1_4_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_we0),.buff_A1_4_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_d0),.buff_A1_5_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_address0),.buff_A1_5_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_ce0),.buff_A1_5_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_we0),.buff_A1_5_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_d0),.buff_A1_6_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_address0),.buff_A1_6_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_ce0),.buff_A1_6_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_we0),.buff_A1_6_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_d0),.buff_A1_7_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_address0),.buff_A1_7_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_ce0),.buff_A1_7_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_we0),.buff_A1_7_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_d0),.buff_B_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_address0),.buff_B_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_ce0),.buff_B_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_we0),.buff_B_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_d0),.buff_B_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_address0),.buff_B_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_ce0),.buff_B_1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_we0),.buff_B_1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_d0),.buff_B_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_address0),.buff_B_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_ce0),.buff_B_2_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_we0),.buff_B_2_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_d0),.buff_B_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_address0),.buff_B_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_ce0),.buff_B_3_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_we0),.buff_B_3_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_d0),.buff_B_4_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_address0),.buff_B_4_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_ce0),.buff_B_4_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_we0),.buff_B_4_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_d0),.buff_B_5_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_address0),.buff_B_5_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_ce0),.buff_B_5_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_we0),.buff_B_5_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_d0),.buff_B_6_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_address0),.buff_B_6_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_ce0),.buff_B_6_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_we0),.buff_B_6_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_d0),.buff_B_7_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_address0),.buff_B_7_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_ce0),.buff_B_7_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_we0),.buff_B_7_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_d0),.buff_C_out_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_ce0),.buff_C_out_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_we0),.buff_C_out_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_d0),.buff_C_out_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_ce0),.buff_C_out_1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_we0),.buff_C_out_1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_d0),.buff_C_out_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_address0),.buff_C_out_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_ce0),.buff_C_out_2_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_we0),.buff_C_out_2_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_d0),.buff_C_out_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_address0),.buff_C_out_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_ce0),.buff_C_out_3_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_we0),.buff_C_out_3_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_d0),.buff_C_out_4_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_address0),.buff_C_out_4_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_ce0),.buff_C_out_4_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_we0),.buff_C_out_4_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_d0),.buff_C_out_5_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_address0),.buff_C_out_5_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_ce0),.buff_C_out_5_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_we0),.buff_C_out_5_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_d0),.buff_C_out_6_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_address0),.buff_C_out_6_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_ce0),.buff_C_out_6_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_we0),.buff_C_out_6_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_d0),.buff_C_out_7_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_address0),.buff_C_out_7_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_ce0),.buff_C_out_7_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_we0),.buff_C_out_7_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_d0));
syrk_syrk_Pipeline_lp1_lp2 grp_syrk_Pipeline_lp1_lp2_fu_326(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lp1_lp2_fu_326_ap_start),.ap_done(grp_syrk_Pipeline_lp1_lp2_fu_326_ap_done),.ap_idle(grp_syrk_Pipeline_lp1_lp2_fu_326_ap_idle),.ap_ready(grp_syrk_Pipeline_lp1_lp2_fu_326_ap_ready),.buff_A0_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address0),.buff_A0_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce0),.buff_A0_q0(buff_A0_q0),.buff_A0_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address1),.buff_A0_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce1),.buff_A0_q1(buff_A0_q1),.buff_A0_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address2),.buff_A0_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce2),.buff_A0_q2(buff_A0_q2),.buff_A0_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address3),.buff_A0_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce3),.buff_A0_q3(buff_A0_q3),.buff_A0_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address4),.buff_A0_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce4),.buff_A0_q4(buff_A0_q4),.buff_A0_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address5),.buff_A0_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce5),.buff_A0_q5(buff_A0_q5),.buff_A0_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address6),.buff_A0_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce6),.buff_A0_q6(buff_A0_q6),.buff_A0_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address7),.buff_A0_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce7),.buff_A0_q7(buff_A0_q7),.buff_A0_1_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address0),.buff_A0_1_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce0),.buff_A0_1_q0(buff_A0_1_q0),.buff_A0_1_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address1),.buff_A0_1_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce1),.buff_A0_1_q1(buff_A0_1_q1),.buff_A0_1_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address2),.buff_A0_1_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce2),.buff_A0_1_q2(buff_A0_1_q2),.buff_A0_1_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address3),.buff_A0_1_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce3),.buff_A0_1_q3(buff_A0_1_q3),.buff_A0_1_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address4),.buff_A0_1_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce4),.buff_A0_1_q4(buff_A0_1_q4),.buff_A0_1_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address5),.buff_A0_1_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce5),.buff_A0_1_q5(buff_A0_1_q5),.buff_A0_1_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address6),.buff_A0_1_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce6),.buff_A0_1_q6(buff_A0_1_q6),.buff_A0_1_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address7),.buff_A0_1_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce7),.buff_A0_1_q7(buff_A0_1_q7),.buff_A0_2_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address0),.buff_A0_2_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce0),.buff_A0_2_q0(buff_A0_2_q0),.buff_A0_2_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address1),.buff_A0_2_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce1),.buff_A0_2_q1(buff_A0_2_q1),.buff_A0_2_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address2),.buff_A0_2_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce2),.buff_A0_2_q2(buff_A0_2_q2),.buff_A0_2_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address3),.buff_A0_2_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce3),.buff_A0_2_q3(buff_A0_2_q3),.buff_A0_2_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address4),.buff_A0_2_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce4),.buff_A0_2_q4(buff_A0_2_q4),.buff_A0_2_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address5),.buff_A0_2_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce5),.buff_A0_2_q5(buff_A0_2_q5),.buff_A0_2_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address6),.buff_A0_2_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce6),.buff_A0_2_q6(buff_A0_2_q6),.buff_A0_2_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address7),.buff_A0_2_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce7),.buff_A0_2_q7(buff_A0_2_q7),.buff_A0_3_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address0),.buff_A0_3_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce0),.buff_A0_3_q0(buff_A0_3_q0),.buff_A0_3_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address1),.buff_A0_3_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce1),.buff_A0_3_q1(buff_A0_3_q1),.buff_A0_3_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address2),.buff_A0_3_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce2),.buff_A0_3_q2(buff_A0_3_q2),.buff_A0_3_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address3),.buff_A0_3_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce3),.buff_A0_3_q3(buff_A0_3_q3),.buff_A0_3_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address4),.buff_A0_3_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce4),.buff_A0_3_q4(buff_A0_3_q4),.buff_A0_3_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address5),.buff_A0_3_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce5),.buff_A0_3_q5(buff_A0_3_q5),.buff_A0_3_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address6),.buff_A0_3_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce6),.buff_A0_3_q6(buff_A0_3_q6),.buff_A0_3_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address7),.buff_A0_3_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce7),.buff_A0_3_q7(buff_A0_3_q7),.buff_A0_4_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address0),.buff_A0_4_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce0),.buff_A0_4_q0(buff_A0_4_q0),.buff_A0_4_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address1),.buff_A0_4_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce1),.buff_A0_4_q1(buff_A0_4_q1),.buff_A0_4_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address2),.buff_A0_4_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce2),.buff_A0_4_q2(buff_A0_4_q2),.buff_A0_4_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address3),.buff_A0_4_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce3),.buff_A0_4_q3(buff_A0_4_q3),.buff_A0_4_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address4),.buff_A0_4_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce4),.buff_A0_4_q4(buff_A0_4_q4),.buff_A0_4_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address5),.buff_A0_4_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce5),.buff_A0_4_q5(buff_A0_4_q5),.buff_A0_4_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address6),.buff_A0_4_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce6),.buff_A0_4_q6(buff_A0_4_q6),.buff_A0_4_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address7),.buff_A0_4_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce7),.buff_A0_4_q7(buff_A0_4_q7),.buff_A0_5_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address0),.buff_A0_5_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce0),.buff_A0_5_q0(buff_A0_5_q0),.buff_A0_5_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address1),.buff_A0_5_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce1),.buff_A0_5_q1(buff_A0_5_q1),.buff_A0_5_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address2),.buff_A0_5_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce2),.buff_A0_5_q2(buff_A0_5_q2),.buff_A0_5_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address3),.buff_A0_5_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce3),.buff_A0_5_q3(buff_A0_5_q3),.buff_A0_5_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address4),.buff_A0_5_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce4),.buff_A0_5_q4(buff_A0_5_q4),.buff_A0_5_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address5),.buff_A0_5_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce5),.buff_A0_5_q5(buff_A0_5_q5),.buff_A0_5_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address6),.buff_A0_5_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce6),.buff_A0_5_q6(buff_A0_5_q6),.buff_A0_5_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address7),.buff_A0_5_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce7),.buff_A0_5_q7(buff_A0_5_q7),.buff_A0_6_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address0),.buff_A0_6_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce0),.buff_A0_6_q0(buff_A0_6_q0),.buff_A0_6_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address1),.buff_A0_6_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce1),.buff_A0_6_q1(buff_A0_6_q1),.buff_A0_6_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address2),.buff_A0_6_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce2),.buff_A0_6_q2(buff_A0_6_q2),.buff_A0_6_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address3),.buff_A0_6_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce3),.buff_A0_6_q3(buff_A0_6_q3),.buff_A0_6_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address4),.buff_A0_6_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce4),.buff_A0_6_q4(buff_A0_6_q4),.buff_A0_6_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address5),.buff_A0_6_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce5),.buff_A0_6_q5(buff_A0_6_q5),.buff_A0_6_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address6),.buff_A0_6_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce6),.buff_A0_6_q6(buff_A0_6_q6),.buff_A0_6_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address7),.buff_A0_6_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce7),.buff_A0_6_q7(buff_A0_6_q7),.buff_A0_7_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address0),.buff_A0_7_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce0),.buff_A0_7_q0(buff_A0_7_q0),.buff_A0_7_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address1),.buff_A0_7_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce1),.buff_A0_7_q1(buff_A0_7_q1),.buff_A0_7_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address2),.buff_A0_7_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce2),.buff_A0_7_q2(buff_A0_7_q2),.buff_A0_7_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address3),.buff_A0_7_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce3),.buff_A0_7_q3(buff_A0_7_q3),.buff_A0_7_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address4),.buff_A0_7_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce4),.buff_A0_7_q4(buff_A0_7_q4),.buff_A0_7_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address5),.buff_A0_7_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce5),.buff_A0_7_q5(buff_A0_7_q5),.buff_A0_7_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address6),.buff_A0_7_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce6),.buff_A0_7_q6(buff_A0_7_q6),.buff_A0_7_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address7),.buff_A0_7_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce7),.buff_A0_7_q7(buff_A0_7_q7),.alpha(alpha),.buff_A1_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address0),.buff_A1_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce0),.buff_A1_q0(buff_A1_q0),.buff_A1_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address1),.buff_A1_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce1),.buff_A1_q1(buff_A1_q1),.buff_A1_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address2),.buff_A1_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce2),.buff_A1_q2(buff_A1_q2),.buff_A1_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address3),.buff_A1_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce3),.buff_A1_q3(buff_A1_q3),.buff_A1_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address4),.buff_A1_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce4),.buff_A1_q4(buff_A1_q4),.buff_A1_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address5),.buff_A1_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce5),.buff_A1_q5(buff_A1_q5),.buff_A1_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address6),.buff_A1_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce6),.buff_A1_q6(buff_A1_q6),.buff_A1_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address7),.buff_A1_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce7),.buff_A1_q7(buff_A1_q7),.buff_A1_1_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address0),.buff_A1_1_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce0),.buff_A1_1_q0(buff_A1_1_q0),.buff_A1_1_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address1),.buff_A1_1_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce1),.buff_A1_1_q1(buff_A1_1_q1),.buff_A1_1_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address2),.buff_A1_1_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce2),.buff_A1_1_q2(buff_A1_1_q2),.buff_A1_1_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address3),.buff_A1_1_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce3),.buff_A1_1_q3(buff_A1_1_q3),.buff_A1_1_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address4),.buff_A1_1_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce4),.buff_A1_1_q4(buff_A1_1_q4),.buff_A1_1_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address5),.buff_A1_1_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce5),.buff_A1_1_q5(buff_A1_1_q5),.buff_A1_1_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address6),.buff_A1_1_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce6),.buff_A1_1_q6(buff_A1_1_q6),.buff_A1_1_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address7),.buff_A1_1_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce7),.buff_A1_1_q7(buff_A1_1_q7),.buff_A1_2_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address0),.buff_A1_2_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce0),.buff_A1_2_q0(buff_A1_2_q0),.buff_A1_2_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address1),.buff_A1_2_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce1),.buff_A1_2_q1(buff_A1_2_q1),.buff_A1_2_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address2),.buff_A1_2_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce2),.buff_A1_2_q2(buff_A1_2_q2),.buff_A1_2_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address3),.buff_A1_2_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce3),.buff_A1_2_q3(buff_A1_2_q3),.buff_A1_2_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address4),.buff_A1_2_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce4),.buff_A1_2_q4(buff_A1_2_q4),.buff_A1_2_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address5),.buff_A1_2_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce5),.buff_A1_2_q5(buff_A1_2_q5),.buff_A1_2_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address6),.buff_A1_2_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce6),.buff_A1_2_q6(buff_A1_2_q6),.buff_A1_2_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address7),.buff_A1_2_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce7),.buff_A1_2_q7(buff_A1_2_q7),.buff_A1_3_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address0),.buff_A1_3_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce0),.buff_A1_3_q0(buff_A1_3_q0),.buff_A1_3_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address1),.buff_A1_3_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce1),.buff_A1_3_q1(buff_A1_3_q1),.buff_A1_3_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address2),.buff_A1_3_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce2),.buff_A1_3_q2(buff_A1_3_q2),.buff_A1_3_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address3),.buff_A1_3_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce3),.buff_A1_3_q3(buff_A1_3_q3),.buff_A1_3_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address4),.buff_A1_3_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce4),.buff_A1_3_q4(buff_A1_3_q4),.buff_A1_3_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address5),.buff_A1_3_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce5),.buff_A1_3_q5(buff_A1_3_q5),.buff_A1_3_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address6),.buff_A1_3_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce6),.buff_A1_3_q6(buff_A1_3_q6),.buff_A1_3_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address7),.buff_A1_3_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce7),.buff_A1_3_q7(buff_A1_3_q7),.buff_A1_4_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address0),.buff_A1_4_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce0),.buff_A1_4_q0(buff_A1_4_q0),.buff_A1_4_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address1),.buff_A1_4_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce1),.buff_A1_4_q1(buff_A1_4_q1),.buff_A1_4_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address2),.buff_A1_4_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce2),.buff_A1_4_q2(buff_A1_4_q2),.buff_A1_4_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address3),.buff_A1_4_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce3),.buff_A1_4_q3(buff_A1_4_q3),.buff_A1_4_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address4),.buff_A1_4_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce4),.buff_A1_4_q4(buff_A1_4_q4),.buff_A1_4_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address5),.buff_A1_4_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce5),.buff_A1_4_q5(buff_A1_4_q5),.buff_A1_4_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address6),.buff_A1_4_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce6),.buff_A1_4_q6(buff_A1_4_q6),.buff_A1_4_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address7),.buff_A1_4_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce7),.buff_A1_4_q7(buff_A1_4_q7),.buff_A1_5_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address0),.buff_A1_5_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce0),.buff_A1_5_q0(buff_A1_5_q0),.buff_A1_5_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address1),.buff_A1_5_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce1),.buff_A1_5_q1(buff_A1_5_q1),.buff_A1_5_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address2),.buff_A1_5_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce2),.buff_A1_5_q2(buff_A1_5_q2),.buff_A1_5_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address3),.buff_A1_5_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce3),.buff_A1_5_q3(buff_A1_5_q3),.buff_A1_5_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address4),.buff_A1_5_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce4),.buff_A1_5_q4(buff_A1_5_q4),.buff_A1_5_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address5),.buff_A1_5_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce5),.buff_A1_5_q5(buff_A1_5_q5),.buff_A1_5_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address6),.buff_A1_5_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce6),.buff_A1_5_q6(buff_A1_5_q6),.buff_A1_5_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address7),.buff_A1_5_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce7),.buff_A1_5_q7(buff_A1_5_q7),.buff_A1_6_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address0),.buff_A1_6_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce0),.buff_A1_6_q0(buff_A1_6_q0),.buff_A1_6_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address1),.buff_A1_6_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce1),.buff_A1_6_q1(buff_A1_6_q1),.buff_A1_6_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address2),.buff_A1_6_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce2),.buff_A1_6_q2(buff_A1_6_q2),.buff_A1_6_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address3),.buff_A1_6_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce3),.buff_A1_6_q3(buff_A1_6_q3),.buff_A1_6_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address4),.buff_A1_6_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce4),.buff_A1_6_q4(buff_A1_6_q4),.buff_A1_6_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address5),.buff_A1_6_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce5),.buff_A1_6_q5(buff_A1_6_q5),.buff_A1_6_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address6),.buff_A1_6_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce6),.buff_A1_6_q6(buff_A1_6_q6),.buff_A1_6_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address7),.buff_A1_6_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce7),.buff_A1_6_q7(buff_A1_6_q7),.buff_A1_7_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address0),.buff_A1_7_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce0),.buff_A1_7_q0(buff_A1_7_q0),.buff_A1_7_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address1),.buff_A1_7_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce1),.buff_A1_7_q1(buff_A1_7_q1),.buff_A1_7_address2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address2),.buff_A1_7_ce2(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce2),.buff_A1_7_q2(buff_A1_7_q2),.buff_A1_7_address3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address3),.buff_A1_7_ce3(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce3),.buff_A1_7_q3(buff_A1_7_q3),.buff_A1_7_address4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address4),.buff_A1_7_ce4(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce4),.buff_A1_7_q4(buff_A1_7_q4),.buff_A1_7_address5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address5),.buff_A1_7_ce5(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce5),.buff_A1_7_q5(buff_A1_7_q5),.buff_A1_7_address6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address6),.buff_A1_7_ce6(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce6),.buff_A1_7_q6(buff_A1_7_q6),.buff_A1_7_address7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address7),.buff_A1_7_ce7(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce7),.buff_A1_7_q7(buff_A1_7_q7),.buff_C_out_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_ce0),.buff_C_out_we0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_we0),.buff_C_out_d0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_d0),.buff_C_out_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_address1),.buff_C_out_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_ce1),.buff_C_out_q1(buff_C_out_q1),.buff_C_out_1_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_ce0),.buff_C_out_1_we0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_we0),.buff_C_out_1_d0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_d0),.buff_C_out_1_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_address1),.buff_C_out_1_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_ce1),.buff_C_out_1_q1(buff_C_out_1_q1),.buff_C_out_2_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_address0),.buff_C_out_2_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_ce0),.buff_C_out_2_we0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_we0),.buff_C_out_2_d0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_d0),.buff_C_out_2_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_address1),.buff_C_out_2_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_ce1),.buff_C_out_2_q1(buff_C_out_2_q1),.buff_C_out_3_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_address0),.buff_C_out_3_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_ce0),.buff_C_out_3_we0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_we0),.buff_C_out_3_d0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_d0),.buff_C_out_3_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_address1),.buff_C_out_3_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_ce1),.buff_C_out_3_q1(buff_C_out_3_q1),.buff_C_out_4_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_address0),.buff_C_out_4_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_ce0),.buff_C_out_4_we0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_we0),.buff_C_out_4_d0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_d0),.buff_C_out_4_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_address1),.buff_C_out_4_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_ce1),.buff_C_out_4_q1(buff_C_out_4_q1),.buff_C_out_5_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_address0),.buff_C_out_5_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_ce0),.buff_C_out_5_we0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_we0),.buff_C_out_5_d0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_d0),.buff_C_out_5_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_address1),.buff_C_out_5_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_ce1),.buff_C_out_5_q1(buff_C_out_5_q1),.buff_C_out_6_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_address0),.buff_C_out_6_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_ce0),.buff_C_out_6_we0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_we0),.buff_C_out_6_d0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_d0),.buff_C_out_6_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_address1),.buff_C_out_6_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_ce1),.buff_C_out_6_q1(buff_C_out_6_q1),.buff_C_out_7_address0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_address0),.buff_C_out_7_ce0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_ce0),.buff_C_out_7_we0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_we0),.buff_C_out_7_d0(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_d0),.buff_C_out_7_address1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_address1),.buff_C_out_7_ce1(grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_ce1),.buff_C_out_7_q1(buff_C_out_7_q1),.grp_fu_416_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_416_p_din0),.grp_fu_416_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_416_p_din1),.grp_fu_416_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_416_p_opcode),.grp_fu_416_p_dout0(grp_fu_416_p2),.grp_fu_416_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_416_p_ce),.grp_fu_420_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_420_p_din0),.grp_fu_420_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_420_p_din1),.grp_fu_420_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_420_p_opcode),.grp_fu_420_p_dout0(grp_fu_420_p2),.grp_fu_420_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_420_p_ce),.grp_fu_424_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_424_p_din0),.grp_fu_424_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_424_p_din1),.grp_fu_424_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_424_p_opcode),.grp_fu_424_p_dout0(grp_fu_424_p2),.grp_fu_424_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_424_p_ce),.grp_fu_428_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_428_p_din0),.grp_fu_428_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_428_p_din1),.grp_fu_428_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_428_p_opcode),.grp_fu_428_p_dout0(grp_fu_428_p2),.grp_fu_428_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_428_p_ce),.grp_fu_432_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_432_p_din0),.grp_fu_432_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_432_p_din1),.grp_fu_432_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_432_p_opcode),.grp_fu_432_p_dout0(grp_fu_432_p2),.grp_fu_432_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_432_p_ce),.grp_fu_436_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_436_p_din0),.grp_fu_436_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_436_p_din1),.grp_fu_436_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_436_p_opcode),.grp_fu_436_p_dout0(grp_fu_436_p2),.grp_fu_436_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_436_p_ce),.grp_fu_440_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_440_p_din0),.grp_fu_440_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_440_p_din1),.grp_fu_440_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_440_p_opcode),.grp_fu_440_p_dout0(grp_fu_440_p2),.grp_fu_440_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_440_p_ce),.grp_fu_444_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_444_p_din0),.grp_fu_444_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_444_p_din1),.grp_fu_444_p_opcode(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_444_p_opcode),.grp_fu_444_p_dout0(grp_fu_444_p2),.grp_fu_444_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_444_p_ce),.grp_fu_448_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_448_p_din0),.grp_fu_448_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_448_p_din1),.grp_fu_448_p_dout0(grp_fu_448_p2),.grp_fu_448_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_448_p_ce),.grp_fu_452_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_452_p_din0),.grp_fu_452_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_452_p_din1),.grp_fu_452_p_dout0(grp_fu_452_p2),.grp_fu_452_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_452_p_ce),.grp_fu_456_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_456_p_din0),.grp_fu_456_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_456_p_din1),.grp_fu_456_p_dout0(grp_fu_456_p2),.grp_fu_456_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_456_p_ce),.grp_fu_460_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_460_p_din0),.grp_fu_460_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_460_p_din1),.grp_fu_460_p_dout0(grp_fu_460_p2),.grp_fu_460_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_460_p_ce),.grp_fu_464_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_464_p_din0),.grp_fu_464_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_464_p_din1),.grp_fu_464_p_dout0(grp_fu_464_p2),.grp_fu_464_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_464_p_ce),.grp_fu_468_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_468_p_din0),.grp_fu_468_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_468_p_din1),.grp_fu_468_p_dout0(grp_fu_468_p2),.grp_fu_468_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_468_p_ce),.grp_fu_472_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_472_p_din0),.grp_fu_472_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_472_p_din1),.grp_fu_472_p_dout0(grp_fu_472_p2),.grp_fu_472_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_472_p_ce),.grp_fu_476_p_din0(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_476_p_din0),.grp_fu_476_p_din1(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_476_p_din1),.grp_fu_476_p_dout0(grp_fu_476_p2),.grp_fu_476_p_ce(grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_476_p_ce));
syrk_syrk_Pipeline_lp4 grp_syrk_Pipeline_lp4_fu_356(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lp4_fu_356_ap_start),.ap_done(grp_syrk_Pipeline_lp4_fu_356_ap_done),.ap_idle(grp_syrk_Pipeline_lp4_fu_356_ap_idle),.ap_ready(grp_syrk_Pipeline_lp4_fu_356_ap_ready),.buff_B_address0(grp_syrk_Pipeline_lp4_fu_356_buff_B_address0),.buff_B_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_B_ce0),.buff_B_q0(buff_B_q0),.buff_B_address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_address1),.buff_B_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_B_ce1),.buff_B_q1(buff_B_q1),.buff_B_1_address0(grp_syrk_Pipeline_lp4_fu_356_buff_B_1_address0),.buff_B_1_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_B_1_ce0),.buff_B_1_q0(buff_B_1_q0),.buff_B_1_address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_1_address1),.buff_B_1_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_B_1_ce1),.buff_B_1_q1(buff_B_1_q1),.buff_B_2_address0(grp_syrk_Pipeline_lp4_fu_356_buff_B_2_address0),.buff_B_2_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_B_2_ce0),.buff_B_2_q0(buff_B_2_q0),.buff_B_2_address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_2_address1),.buff_B_2_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_B_2_ce1),.buff_B_2_q1(buff_B_2_q1),.buff_B_3_address0(grp_syrk_Pipeline_lp4_fu_356_buff_B_3_address0),.buff_B_3_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_B_3_ce0),.buff_B_3_q0(buff_B_3_q0),.buff_B_3_address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_3_address1),.buff_B_3_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_B_3_ce1),.buff_B_3_q1(buff_B_3_q1),.buff_B_4_address0(grp_syrk_Pipeline_lp4_fu_356_buff_B_4_address0),.buff_B_4_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_B_4_ce0),.buff_B_4_q0(buff_B_4_q0),.buff_B_4_address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_4_address1),.buff_B_4_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_B_4_ce1),.buff_B_4_q1(buff_B_4_q1),.buff_B_5_address0(grp_syrk_Pipeline_lp4_fu_356_buff_B_5_address0),.buff_B_5_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_B_5_ce0),.buff_B_5_q0(buff_B_5_q0),.buff_B_5_address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_5_address1),.buff_B_5_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_B_5_ce1),.buff_B_5_q1(buff_B_5_q1),.buff_B_6_address0(grp_syrk_Pipeline_lp4_fu_356_buff_B_6_address0),.buff_B_6_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_B_6_ce0),.buff_B_6_q0(buff_B_6_q0),.buff_B_6_address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_6_address1),.buff_B_6_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_B_6_ce1),.buff_B_6_q1(buff_B_6_q1),.buff_B_7_address0(grp_syrk_Pipeline_lp4_fu_356_buff_B_7_address0),.buff_B_7_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_B_7_ce0),.buff_B_7_q0(buff_B_7_q0),.buff_B_7_address1(grp_syrk_Pipeline_lp4_fu_356_buff_B_7_address1),.buff_B_7_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_B_7_ce1),.buff_B_7_q1(buff_B_7_q1),.buff_C_out_address0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_ce0),.buff_C_out_we0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_we0),.buff_C_out_d0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_d0),.buff_C_out_q0(buff_C_out_q0),.buff_C_out_address1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_address1),.buff_C_out_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_ce1),.buff_C_out_we1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_we1),.buff_C_out_d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_d1),.buff_C_out_q1(buff_C_out_q1),.buff_C_out_1_address0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_ce0),.buff_C_out_1_we0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_we0),.buff_C_out_1_d0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_d0),.buff_C_out_1_q0(buff_C_out_1_q0),.buff_C_out_1_address1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_address1),.buff_C_out_1_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_ce1),.buff_C_out_1_we1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_we1),.buff_C_out_1_d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_d1),.buff_C_out_1_q1(buff_C_out_1_q1),.buff_C_out_2_address0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_address0),.buff_C_out_2_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_ce0),.buff_C_out_2_we0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_we0),.buff_C_out_2_d0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_d0),.buff_C_out_2_q0(buff_C_out_2_q0),.buff_C_out_2_address1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_address1),.buff_C_out_2_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_ce1),.buff_C_out_2_we1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_we1),.buff_C_out_2_d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_d1),.buff_C_out_2_q1(buff_C_out_2_q1),.buff_C_out_3_address0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_address0),.buff_C_out_3_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_ce0),.buff_C_out_3_we0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_we0),.buff_C_out_3_d0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_d0),.buff_C_out_3_q0(buff_C_out_3_q0),.buff_C_out_3_address1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_address1),.buff_C_out_3_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_ce1),.buff_C_out_3_we1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_we1),.buff_C_out_3_d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_d1),.buff_C_out_3_q1(buff_C_out_3_q1),.buff_C_out_4_address0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_address0),.buff_C_out_4_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_ce0),.buff_C_out_4_we0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_we0),.buff_C_out_4_d0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_d0),.buff_C_out_4_q0(buff_C_out_4_q0),.buff_C_out_4_address1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_address1),.buff_C_out_4_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_ce1),.buff_C_out_4_we1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_we1),.buff_C_out_4_d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_d1),.buff_C_out_4_q1(buff_C_out_4_q1),.buff_C_out_5_address0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_address0),.buff_C_out_5_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_ce0),.buff_C_out_5_we0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_we0),.buff_C_out_5_d0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_d0),.buff_C_out_5_q0(buff_C_out_5_q0),.buff_C_out_5_address1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_address1),.buff_C_out_5_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_ce1),.buff_C_out_5_we1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_we1),.buff_C_out_5_d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_d1),.buff_C_out_5_q1(buff_C_out_5_q1),.buff_C_out_6_address0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_address0),.buff_C_out_6_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_ce0),.buff_C_out_6_we0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_we0),.buff_C_out_6_d0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_d0),.buff_C_out_6_q0(buff_C_out_6_q0),.buff_C_out_6_address1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_address1),.buff_C_out_6_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_ce1),.buff_C_out_6_we1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_we1),.buff_C_out_6_d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_d1),.buff_C_out_6_q1(buff_C_out_6_q1),.buff_C_out_7_address0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_address0),.buff_C_out_7_ce0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_ce0),.buff_C_out_7_we0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_we0),.buff_C_out_7_d0(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_d0),.buff_C_out_7_q0(buff_C_out_7_q0),.buff_C_out_7_address1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_address1),.buff_C_out_7_ce1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_ce1),.buff_C_out_7_we1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_we1),.buff_C_out_7_d1(grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_d1),.buff_C_out_7_q1(buff_C_out_7_q1),.beta(beta),.grp_fu_416_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_416_p_din0),.grp_fu_416_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_416_p_din1),.grp_fu_416_p_opcode(grp_syrk_Pipeline_lp4_fu_356_grp_fu_416_p_opcode),.grp_fu_416_p_dout0(grp_fu_416_p2),.grp_fu_416_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_416_p_ce),.grp_fu_420_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_420_p_din0),.grp_fu_420_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_420_p_din1),.grp_fu_420_p_opcode(grp_syrk_Pipeline_lp4_fu_356_grp_fu_420_p_opcode),.grp_fu_420_p_dout0(grp_fu_420_p2),.grp_fu_420_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_420_p_ce),.grp_fu_424_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_424_p_din0),.grp_fu_424_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_424_p_din1),.grp_fu_424_p_opcode(grp_syrk_Pipeline_lp4_fu_356_grp_fu_424_p_opcode),.grp_fu_424_p_dout0(grp_fu_424_p2),.grp_fu_424_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_424_p_ce),.grp_fu_428_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_428_p_din0),.grp_fu_428_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_428_p_din1),.grp_fu_428_p_opcode(grp_syrk_Pipeline_lp4_fu_356_grp_fu_428_p_opcode),.grp_fu_428_p_dout0(grp_fu_428_p2),.grp_fu_428_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_428_p_ce),.grp_fu_432_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_432_p_din0),.grp_fu_432_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_432_p_din1),.grp_fu_432_p_opcode(grp_syrk_Pipeline_lp4_fu_356_grp_fu_432_p_opcode),.grp_fu_432_p_dout0(grp_fu_432_p2),.grp_fu_432_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_432_p_ce),.grp_fu_436_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_436_p_din0),.grp_fu_436_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_436_p_din1),.grp_fu_436_p_opcode(grp_syrk_Pipeline_lp4_fu_356_grp_fu_436_p_opcode),.grp_fu_436_p_dout0(grp_fu_436_p2),.grp_fu_436_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_436_p_ce),.grp_fu_440_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_440_p_din0),.grp_fu_440_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_440_p_din1),.grp_fu_440_p_opcode(grp_syrk_Pipeline_lp4_fu_356_grp_fu_440_p_opcode),.grp_fu_440_p_dout0(grp_fu_440_p2),.grp_fu_440_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_440_p_ce),.grp_fu_444_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_444_p_din0),.grp_fu_444_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_444_p_din1),.grp_fu_444_p_opcode(grp_syrk_Pipeline_lp4_fu_356_grp_fu_444_p_opcode),.grp_fu_444_p_dout0(grp_fu_444_p2),.grp_fu_444_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_444_p_ce),.grp_fu_448_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_448_p_din0),.grp_fu_448_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_448_p_din1),.grp_fu_448_p_dout0(grp_fu_448_p2),.grp_fu_448_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_448_p_ce),.grp_fu_452_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_452_p_din0),.grp_fu_452_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_452_p_din1),.grp_fu_452_p_dout0(grp_fu_452_p2),.grp_fu_452_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_452_p_ce),.grp_fu_456_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_456_p_din0),.grp_fu_456_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_456_p_din1),.grp_fu_456_p_dout0(grp_fu_456_p2),.grp_fu_456_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_456_p_ce),.grp_fu_460_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_460_p_din0),.grp_fu_460_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_460_p_din1),.grp_fu_460_p_dout0(grp_fu_460_p2),.grp_fu_460_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_460_p_ce),.grp_fu_464_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_464_p_din0),.grp_fu_464_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_464_p_din1),.grp_fu_464_p_dout0(grp_fu_464_p2),.grp_fu_464_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_464_p_ce),.grp_fu_468_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_468_p_din0),.grp_fu_468_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_468_p_din1),.grp_fu_468_p_dout0(grp_fu_468_p2),.grp_fu_468_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_468_p_ce),.grp_fu_472_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_472_p_din0),.grp_fu_472_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_472_p_din1),.grp_fu_472_p_dout0(grp_fu_472_p2),.grp_fu_472_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_472_p_ce),.grp_fu_476_p_din0(grp_syrk_Pipeline_lp4_fu_356_grp_fu_476_p_din0),.grp_fu_476_p_din1(grp_syrk_Pipeline_lp4_fu_356_grp_fu_476_p_din1),.grp_fu_476_p_dout0(grp_fu_476_p2),.grp_fu_476_p_ce(grp_syrk_Pipeline_lp4_fu_356_grp_fu_476_p_ce));
syrk_syrk_Pipeline_lpwr_1_lpwr_2 grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_start),.ap_done(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_done),.ap_idle(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_idle),.ap_ready(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_ready),.C_out_0_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_0_din),.C_out_0_full_n(C_out_0_full_n),.C_out_0_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_0_write),.C_out_1_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_1_din),.C_out_1_full_n(C_out_1_full_n),.C_out_1_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_1_write),.C_out_2_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_2_din),.C_out_2_full_n(C_out_2_full_n),.C_out_2_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_2_write),.C_out_3_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_3_din),.C_out_3_full_n(C_out_3_full_n),.C_out_3_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_3_write),.C_out_4_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_4_din),.C_out_4_full_n(C_out_4_full_n),.C_out_4_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_4_write),.C_out_5_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_5_din),.C_out_5_full_n(C_out_5_full_n),.C_out_5_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_5_write),.C_out_6_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_6_din),.C_out_6_full_n(C_out_6_full_n),.C_out_6_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_6_write),.C_out_7_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_7_din),.C_out_7_full_n(C_out_7_full_n),.C_out_7_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_7_write),.buff_C_out_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_ce0),.buff_C_out_q0(buff_C_out_q0),.buff_C_out_1_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_1_ce0),.buff_C_out_1_q0(buff_C_out_1_q0),.buff_C_out_2_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_2_address0),.buff_C_out_2_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_2_ce0),.buff_C_out_2_q0(buff_C_out_2_q0),.buff_C_out_3_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_3_address0),.buff_C_out_3_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_3_ce0),.buff_C_out_3_q0(buff_C_out_3_q0),.buff_C_out_4_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_4_address0),.buff_C_out_4_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_4_ce0),.buff_C_out_4_q0(buff_C_out_4_q0),.buff_C_out_5_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_5_address0),.buff_C_out_5_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_5_ce0),.buff_C_out_5_q0(buff_C_out_5_q0),.buff_C_out_6_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_6_address0),.buff_C_out_6_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_6_ce0),.buff_C_out_6_q0(buff_C_out_6_q0),.buff_C_out_7_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_7_address0),.buff_C_out_7_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_7_ce0),.buff_C_out_7_q0(buff_C_out_7_q0));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U319(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_416_p0),.din1(grp_fu_416_p1),.ce(grp_fu_416_ce),.dout(grp_fu_416_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U320(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_420_p0),.din1(grp_fu_420_p1),.ce(grp_fu_420_ce),.dout(grp_fu_420_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U321(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_424_p0),.din1(grp_fu_424_p1),.ce(grp_fu_424_ce),.dout(grp_fu_424_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U322(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_428_p0),.din1(grp_fu_428_p1),.ce(grp_fu_428_ce),.dout(grp_fu_428_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U323(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_432_p0),.din1(grp_fu_432_p1),.ce(grp_fu_432_ce),.dout(grp_fu_432_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U324(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_436_p0),.din1(grp_fu_436_p1),.ce(grp_fu_436_ce),.dout(grp_fu_436_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U325(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_440_p0),.din1(grp_fu_440_p1),.ce(grp_fu_440_ce),.dout(grp_fu_440_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U326(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_444_p0),.din1(grp_fu_444_p1),.ce(grp_fu_444_ce),.dout(grp_fu_444_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U327(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_448_p0),.din1(grp_fu_448_p1),.ce(grp_fu_448_ce),.dout(grp_fu_448_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U328(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_452_p0),.din1(grp_fu_452_p1),.ce(grp_fu_452_ce),.dout(grp_fu_452_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U329(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_456_p0),.din1(grp_fu_456_p1),.ce(grp_fu_456_ce),.dout(grp_fu_456_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U330(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_460_p0),.din1(grp_fu_460_p1),.ce(grp_fu_460_ce),.dout(grp_fu_460_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U331(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_464_p0),.din1(grp_fu_464_p1),.ce(grp_fu_464_ce),.dout(grp_fu_464_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U332(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_468_p0),.din1(grp_fu_468_p1),.ce(grp_fu_468_ce),.dout(grp_fu_468_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U333(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_472_p0),.din1(grp_fu_472_p1),.ce(grp_fu_472_ce),.dout(grp_fu_472_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U334(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_476_p0),.din1(grp_fu_476_p1),.ce(grp_fu_476_ce),.dout(grp_fu_476_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lp1_lp2_fu_326_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_syrk_Pipeline_lp1_lp2_fu_326_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lp1_lp2_fu_326_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lp1_lp2_fu_326_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lp4_fu_356_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_syrk_Pipeline_lp4_fu_356_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lp4_fu_356_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lp4_fu_356_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_start_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_0_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_0_write;
    end else begin
        C_out_0_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_1_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_1_write;
    end else begin
        C_out_1_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_2_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_2_write;
    end else begin
        C_out_2_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_3_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_3_write;
    end else begin
        C_out_3_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_4_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_4_write;
    end else begin
        C_out_4_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_5_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_5_write;
    end else begin
        C_out_5_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_6_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_6_write;
    end else begin
        C_out_6_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_7_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_7_write;
    end else begin
        C_out_7_write = 1'b0;
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
    if ((grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_syrk_Pipeline_lp1_lp2_fu_326_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_syrk_Pipeline_lp4_fu_356_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
    if (((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_address0;
    end else begin
        buff_A0_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_ce0;
    end else begin
        buff_A0_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce1;
    end else begin
        buff_A0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce2;
    end else begin
        buff_A0_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce3;
    end else begin
        buff_A0_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce4;
    end else begin
        buff_A0_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce5;
    end else begin
        buff_A0_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce6;
    end else begin
        buff_A0_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_1_ce7;
    end else begin
        buff_A0_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_1_we0;
    end else begin
        buff_A0_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_address0;
    end else begin
        buff_A0_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_ce0;
    end else begin
        buff_A0_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce1;
    end else begin
        buff_A0_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce2;
    end else begin
        buff_A0_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce3;
    end else begin
        buff_A0_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce4;
    end else begin
        buff_A0_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce5;
    end else begin
        buff_A0_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce6;
    end else begin
        buff_A0_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_2_ce7;
    end else begin
        buff_A0_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_2_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_2_we0;
    end else begin
        buff_A0_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_address0;
    end else begin
        buff_A0_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_ce0;
    end else begin
        buff_A0_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce1;
    end else begin
        buff_A0_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce2;
    end else begin
        buff_A0_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce3;
    end else begin
        buff_A0_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce4;
    end else begin
        buff_A0_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce5;
    end else begin
        buff_A0_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce6;
    end else begin
        buff_A0_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_3_ce7;
    end else begin
        buff_A0_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_3_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_3_we0;
    end else begin
        buff_A0_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_4_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_4_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_address0;
    end else begin
        buff_A0_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_4_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_4_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_ce0;
    end else begin
        buff_A0_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_4_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce1;
    end else begin
        buff_A0_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_4_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce2;
    end else begin
        buff_A0_4_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_4_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce3;
    end else begin
        buff_A0_4_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_4_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce4;
    end else begin
        buff_A0_4_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_4_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce5;
    end else begin
        buff_A0_4_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_4_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce6;
    end else begin
        buff_A0_4_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_4_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_4_ce7;
    end else begin
        buff_A0_4_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_4_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_4_we0;
    end else begin
        buff_A0_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_5_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_5_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_address0;
    end else begin
        buff_A0_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_5_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_5_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_ce0;
    end else begin
        buff_A0_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_5_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce1;
    end else begin
        buff_A0_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_5_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce2;
    end else begin
        buff_A0_5_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_5_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce3;
    end else begin
        buff_A0_5_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_5_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce4;
    end else begin
        buff_A0_5_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_5_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce5;
    end else begin
        buff_A0_5_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_5_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce6;
    end else begin
        buff_A0_5_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_5_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_5_ce7;
    end else begin
        buff_A0_5_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_5_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_5_we0;
    end else begin
        buff_A0_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_6_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_6_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_address0;
    end else begin
        buff_A0_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_6_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_6_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_ce0;
    end else begin
        buff_A0_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_6_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce1;
    end else begin
        buff_A0_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_6_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce2;
    end else begin
        buff_A0_6_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_6_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce3;
    end else begin
        buff_A0_6_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_6_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce4;
    end else begin
        buff_A0_6_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_6_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce5;
    end else begin
        buff_A0_6_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_6_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce6;
    end else begin
        buff_A0_6_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_6_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_6_ce7;
    end else begin
        buff_A0_6_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_6_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_6_we0;
    end else begin
        buff_A0_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_7_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_7_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_address0;
    end else begin
        buff_A0_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_7_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_7_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_ce0;
    end else begin
        buff_A0_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_7_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce1;
    end else begin
        buff_A0_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_7_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce2;
    end else begin
        buff_A0_7_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_7_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce3;
    end else begin
        buff_A0_7_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_7_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce4;
    end else begin
        buff_A0_7_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_7_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce5;
    end else begin
        buff_A0_7_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_7_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce6;
    end else begin
        buff_A0_7_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_7_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_7_ce7;
    end else begin
        buff_A0_7_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_7_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_7_we0;
    end else begin
        buff_A0_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_address0;
    end else begin
        buff_A0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_ce0;
    end else begin
        buff_A0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce1;
    end else begin
        buff_A0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce2;
    end else begin
        buff_A0_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce3;
    end else begin
        buff_A0_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce4;
    end else begin
        buff_A0_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce5;
    end else begin
        buff_A0_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce6;
    end else begin
        buff_A0_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A0_ce7;
    end else begin
        buff_A0_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A0_we0;
    end else begin
        buff_A0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_address0;
    end else begin
        buff_A1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_ce0;
    end else begin
        buff_A1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce1;
    end else begin
        buff_A1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce2;
    end else begin
        buff_A1_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce3;
    end else begin
        buff_A1_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce4;
    end else begin
        buff_A1_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce5;
    end else begin
        buff_A1_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce6;
    end else begin
        buff_A1_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_1_ce7;
    end else begin
        buff_A1_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_1_we0;
    end else begin
        buff_A1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_address0;
    end else begin
        buff_A1_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_ce0;
    end else begin
        buff_A1_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce1;
    end else begin
        buff_A1_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce2;
    end else begin
        buff_A1_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce3;
    end else begin
        buff_A1_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce4;
    end else begin
        buff_A1_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce5;
    end else begin
        buff_A1_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce6;
    end else begin
        buff_A1_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_2_ce7;
    end else begin
        buff_A1_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_2_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_2_we0;
    end else begin
        buff_A1_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_address0;
    end else begin
        buff_A1_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_ce0;
    end else begin
        buff_A1_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce1;
    end else begin
        buff_A1_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce2;
    end else begin
        buff_A1_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce3;
    end else begin
        buff_A1_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce4;
    end else begin
        buff_A1_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce5;
    end else begin
        buff_A1_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce6;
    end else begin
        buff_A1_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_3_ce7;
    end else begin
        buff_A1_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_3_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_3_we0;
    end else begin
        buff_A1_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_4_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_4_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_address0;
    end else begin
        buff_A1_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_4_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_4_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_ce0;
    end else begin
        buff_A1_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_4_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce1;
    end else begin
        buff_A1_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_4_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce2;
    end else begin
        buff_A1_4_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_4_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce3;
    end else begin
        buff_A1_4_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_4_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce4;
    end else begin
        buff_A1_4_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_4_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce5;
    end else begin
        buff_A1_4_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_4_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce6;
    end else begin
        buff_A1_4_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_4_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_4_ce7;
    end else begin
        buff_A1_4_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_4_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_4_we0;
    end else begin
        buff_A1_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_5_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_5_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_address0;
    end else begin
        buff_A1_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_5_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_5_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_ce0;
    end else begin
        buff_A1_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_5_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce1;
    end else begin
        buff_A1_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_5_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce2;
    end else begin
        buff_A1_5_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_5_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce3;
    end else begin
        buff_A1_5_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_5_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce4;
    end else begin
        buff_A1_5_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_5_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce5;
    end else begin
        buff_A1_5_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_5_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce6;
    end else begin
        buff_A1_5_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_5_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_5_ce7;
    end else begin
        buff_A1_5_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_5_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_5_we0;
    end else begin
        buff_A1_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_6_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_6_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_address0;
    end else begin
        buff_A1_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_6_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_6_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_ce0;
    end else begin
        buff_A1_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_6_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce1;
    end else begin
        buff_A1_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_6_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce2;
    end else begin
        buff_A1_6_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_6_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce3;
    end else begin
        buff_A1_6_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_6_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce4;
    end else begin
        buff_A1_6_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_6_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce5;
    end else begin
        buff_A1_6_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_6_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce6;
    end else begin
        buff_A1_6_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_6_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_6_ce7;
    end else begin
        buff_A1_6_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_6_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_6_we0;
    end else begin
        buff_A1_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_7_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_7_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_address0;
    end else begin
        buff_A1_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_7_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_7_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_ce0;
    end else begin
        buff_A1_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_7_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce1;
    end else begin
        buff_A1_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_7_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce2;
    end else begin
        buff_A1_7_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_7_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce3;
    end else begin
        buff_A1_7_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_7_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce4;
    end else begin
        buff_A1_7_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_7_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce5;
    end else begin
        buff_A1_7_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_7_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce6;
    end else begin
        buff_A1_7_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_7_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_7_ce7;
    end else begin
        buff_A1_7_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_7_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_7_we0;
    end else begin
        buff_A1_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_address0;
    end else begin
        buff_A1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_ce0;
    end else begin
        buff_A1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce1;
    end else begin
        buff_A1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce2 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce2;
    end else begin
        buff_A1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce3 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce3;
    end else begin
        buff_A1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce4 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce4;
    end else begin
        buff_A1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce5 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce5;
    end else begin
        buff_A1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce6 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce6;
    end else begin
        buff_A1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce7 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_A1_ce7;
    end else begin
        buff_A1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_A1_we0;
    end else begin
        buff_A1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_1_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_address0;
    end else begin
        buff_B_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_1_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_ce0;
    end else begin
        buff_B_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_1_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_B_1_ce1;
    end else begin
        buff_B_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_1_we0;
    end else begin
        buff_B_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_2_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_address0;
    end else begin
        buff_B_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_2_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_ce0;
    end else begin
        buff_B_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_2_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_B_2_ce1;
    end else begin
        buff_B_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_2_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_2_we0;
    end else begin
        buff_B_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_3_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_address0;
    end else begin
        buff_B_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_3_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_ce0;
    end else begin
        buff_B_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_3_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_B_3_ce1;
    end else begin
        buff_B_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_3_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_3_we0;
    end else begin
        buff_B_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_4_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_4_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_address0;
    end else begin
        buff_B_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_4_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_4_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_ce0;
    end else begin
        buff_B_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_4_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_B_4_ce1;
    end else begin
        buff_B_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_4_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_4_we0;
    end else begin
        buff_B_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_5_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_5_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_address0;
    end else begin
        buff_B_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_5_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_5_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_ce0;
    end else begin
        buff_B_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_5_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_B_5_ce1;
    end else begin
        buff_B_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_5_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_5_we0;
    end else begin
        buff_B_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_6_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_6_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_address0;
    end else begin
        buff_B_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_6_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_6_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_ce0;
    end else begin
        buff_B_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_6_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_B_6_ce1;
    end else begin
        buff_B_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_6_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_6_we0;
    end else begin
        buff_B_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_7_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_7_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_address0;
    end else begin
        buff_B_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_7_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_7_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_ce0;
    end else begin
        buff_B_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_7_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_B_7_ce1;
    end else begin
        buff_B_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_7_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_7_we0;
    end else begin
        buff_B_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_address0;
    end else begin
        buff_B_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_B_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_ce0;
    end else begin
        buff_B_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_B_ce1;
    end else begin
        buff_B_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_B_we0;
    end else begin
        buff_B_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_address0;
    end else begin
        buff_C_out_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_address1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_address1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_address1;
    end else begin
        buff_C_out_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_ce0;
    end else begin
        buff_C_out_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_ce1;
    end else begin
        buff_C_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_d0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_d0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_d0;
    end else begin
        buff_C_out_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_we0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_we0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_1_we0;
    end else begin
        buff_C_out_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_we1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_1_we1;
    end else begin
        buff_C_out_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_2_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_address0;
    end else begin
        buff_C_out_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_address1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_address1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_address1;
    end else begin
        buff_C_out_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_2_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_ce0;
    end else begin
        buff_C_out_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_ce1;
    end else begin
        buff_C_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_d0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_d0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_2_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_d0;
    end else begin
        buff_C_out_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_we0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_2_we0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_2_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_2_we0;
    end else begin
        buff_C_out_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_2_we1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_2_we1;
    end else begin
        buff_C_out_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_3_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_address0;
    end else begin
        buff_C_out_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_address1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_address1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_address1;
    end else begin
        buff_C_out_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_3_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_ce0;
    end else begin
        buff_C_out_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_ce1;
    end else begin
        buff_C_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_d0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_d0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_3_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_d0;
    end else begin
        buff_C_out_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_we0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_3_we0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_3_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_3_we0;
    end else begin
        buff_C_out_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_3_we1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_3_we1;
    end else begin
        buff_C_out_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_4_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_4_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_4_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_4_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_address0;
    end else begin
        buff_C_out_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_4_address1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_4_address1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_address1;
    end else begin
        buff_C_out_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_4_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_4_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_4_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_4_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_ce0;
    end else begin
        buff_C_out_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_4_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_4_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_ce1;
    end else begin
        buff_C_out_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_4_d0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_4_d0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_4_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_d0;
    end else begin
        buff_C_out_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_4_we0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_4_we0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_4_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_4_we0;
    end else begin
        buff_C_out_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_4_we1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_4_we1;
    end else begin
        buff_C_out_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_5_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_5_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_5_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_5_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_address0;
    end else begin
        buff_C_out_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_5_address1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_5_address1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_address1;
    end else begin
        buff_C_out_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_5_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_5_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_5_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_5_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_ce0;
    end else begin
        buff_C_out_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_5_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_5_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_ce1;
    end else begin
        buff_C_out_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_5_d0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_5_d0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_5_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_d0;
    end else begin
        buff_C_out_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_5_we0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_5_we0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_5_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_5_we0;
    end else begin
        buff_C_out_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_5_we1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_5_we1;
    end else begin
        buff_C_out_5_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_6_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_6_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_6_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_6_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_address0;
    end else begin
        buff_C_out_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_6_address1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_6_address1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_address1;
    end else begin
        buff_C_out_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_6_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_6_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_6_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_6_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_ce0;
    end else begin
        buff_C_out_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_6_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_6_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_ce1;
    end else begin
        buff_C_out_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_6_d0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_6_d0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_6_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_d0;
    end else begin
        buff_C_out_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_6_we0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_6_we0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_6_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_6_we0;
    end else begin
        buff_C_out_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_6_we1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_6_we1;
    end else begin
        buff_C_out_6_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_7_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_7_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_7_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_7_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_address0;
    end else begin
        buff_C_out_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_7_address1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_7_address1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_address1;
    end else begin
        buff_C_out_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_7_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_7_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_7_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_7_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_ce0;
    end else begin
        buff_C_out_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_7_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_7_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_ce1;
    end else begin
        buff_C_out_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_7_d0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_7_d0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_7_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_d0;
    end else begin
        buff_C_out_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_7_we0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_7_we0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_7_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_7_we0;
    end else begin
        buff_C_out_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_7_we1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_7_we1;
    end else begin
        buff_C_out_7_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_address0;
    end else begin
        buff_C_out_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_address1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_address1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_address1;
    end else begin
        buff_C_out_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_buff_C_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_ce0;
    end else begin
        buff_C_out_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_ce1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_ce1 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_ce1;
    end else begin
        buff_C_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_d0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_d0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_d0;
    end else begin
        buff_C_out_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_we0 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_we0 = grp_syrk_Pipeline_lp1_lp2_fu_326_buff_C_out_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_buff_C_out_we0;
    end else begin
        buff_C_out_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_we1 = grp_syrk_Pipeline_lp4_fu_356_buff_C_out_we1;
    end else begin
        buff_C_out_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_416_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_416_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_416_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_416_p_ce;
    end else begin
        grp_fu_416_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_416_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_416_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_416_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_416_p_din0;
    end else begin
        grp_fu_416_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_416_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_416_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_416_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_416_p_din1;
    end else begin
        grp_fu_416_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_420_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_420_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_420_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_420_p_ce;
    end else begin
        grp_fu_420_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_420_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_420_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_420_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_420_p_din0;
    end else begin
        grp_fu_420_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_420_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_420_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_420_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_420_p_din1;
    end else begin
        grp_fu_420_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_424_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_424_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_424_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_424_p_ce;
    end else begin
        grp_fu_424_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_424_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_424_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_424_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_424_p_din0;
    end else begin
        grp_fu_424_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_424_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_424_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_424_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_424_p_din1;
    end else begin
        grp_fu_424_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_428_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_428_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_428_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_428_p_ce;
    end else begin
        grp_fu_428_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_428_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_428_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_428_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_428_p_din0;
    end else begin
        grp_fu_428_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_428_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_428_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_428_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_428_p_din1;
    end else begin
        grp_fu_428_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_432_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_432_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_432_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_432_p_ce;
    end else begin
        grp_fu_432_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_432_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_432_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_432_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_432_p_din0;
    end else begin
        grp_fu_432_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_432_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_432_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_432_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_432_p_din1;
    end else begin
        grp_fu_432_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_436_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_436_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_436_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_436_p_ce;
    end else begin
        grp_fu_436_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_436_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_436_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_436_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_436_p_din0;
    end else begin
        grp_fu_436_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_436_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_436_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_436_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_436_p_din1;
    end else begin
        grp_fu_436_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_440_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_440_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_440_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_440_p_ce;
    end else begin
        grp_fu_440_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_440_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_440_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_440_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_440_p_din0;
    end else begin
        grp_fu_440_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_440_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_440_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_440_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_440_p_din1;
    end else begin
        grp_fu_440_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_444_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_444_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_444_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_444_p_ce;
    end else begin
        grp_fu_444_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_444_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_444_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_444_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_444_p_din0;
    end else begin
        grp_fu_444_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_444_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_444_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_444_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_444_p_din1;
    end else begin
        grp_fu_444_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_448_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_448_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_448_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_448_p_ce;
    end else begin
        grp_fu_448_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_448_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_448_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_448_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_448_p_din0;
    end else begin
        grp_fu_448_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_448_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_448_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_448_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_448_p_din1;
    end else begin
        grp_fu_448_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_452_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_452_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_452_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_452_p_ce;
    end else begin
        grp_fu_452_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_452_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_452_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_452_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_452_p_din0;
    end else begin
        grp_fu_452_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_452_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_452_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_452_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_452_p_din1;
    end else begin
        grp_fu_452_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_456_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_456_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_456_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_456_p_ce;
    end else begin
        grp_fu_456_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_456_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_456_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_456_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_456_p_din0;
    end else begin
        grp_fu_456_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_456_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_456_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_456_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_456_p_din1;
    end else begin
        grp_fu_456_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_460_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_460_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_460_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_460_p_ce;
    end else begin
        grp_fu_460_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_460_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_460_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_460_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_460_p_din0;
    end else begin
        grp_fu_460_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_460_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_460_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_460_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_460_p_din1;
    end else begin
        grp_fu_460_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_464_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_464_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_464_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_464_p_ce;
    end else begin
        grp_fu_464_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_464_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_464_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_464_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_464_p_din0;
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_464_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_464_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_464_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_464_p_din1;
    end else begin
        grp_fu_464_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_468_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_468_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_468_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_468_p_ce;
    end else begin
        grp_fu_468_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_468_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_468_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_468_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_468_p_din0;
    end else begin
        grp_fu_468_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_468_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_468_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_468_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_468_p_din1;
    end else begin
        grp_fu_468_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_472_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_472_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_472_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_472_p_ce;
    end else begin
        grp_fu_472_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_472_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_472_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_472_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_472_p_din0;
    end else begin
        grp_fu_472_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_472_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_472_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_472_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_472_p_din1;
    end else begin
        grp_fu_472_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_476_ce = grp_syrk_Pipeline_lp4_fu_356_grp_fu_476_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_476_ce = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_476_p_ce;
    end else begin
        grp_fu_476_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_476_p0 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_476_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_476_p0 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_476_p_din0;
    end else begin
        grp_fu_476_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_476_p1 = grp_syrk_Pipeline_lp4_fu_356_grp_fu_476_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_476_p1 = grp_syrk_Pipeline_lp1_lp2_fu_326_grp_fu_476_p_din1;
    end else begin
        grp_fu_476_p1 = 'bx;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_syrk_Pipeline_lp1_lp2_fu_326_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_syrk_Pipeline_lp4_fu_356_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
assign A_0_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_0_address0;
assign A_0_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_0_ce0;
assign A_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_1_address0;
assign A_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_1_ce0;
assign A_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_2_address0;
assign A_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_2_ce0;
assign A_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_3_address0;
assign A_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_3_ce0;
assign A_4_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_4_address0;
assign A_4_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_4_ce0;
assign A_5_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_5_address0;
assign A_5_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_5_ce0;
assign A_6_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_6_address0;
assign A_6_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_6_ce0;
assign A_7_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_7_address0;
assign A_7_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_A_7_ce0;
assign B_0_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_0_address0;
assign B_0_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_0_ce0;
assign B_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_1_address0;
assign B_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_1_ce0;
assign B_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_2_address0;
assign B_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_2_ce0;
assign B_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_3_address0;
assign B_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_3_ce0;
assign B_4_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_4_address0;
assign B_4_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_4_ce0;
assign B_5_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_5_address0;
assign B_5_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_5_ce0;
assign B_6_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_6_address0;
assign B_6_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_6_ce0;
assign B_7_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_7_address0;
assign B_7_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_B_7_ce0;
assign C_out_0_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_0_din;
assign C_out_1_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_1_din;
assign C_out_2_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_2_din;
assign C_out_3_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_3_din;
assign C_out_4_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_4_din;
assign C_out_5_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_5_din;
assign C_out_6_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_6_din;
assign C_out_7_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_C_out_7_din;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign grp_syrk_Pipeline_lp1_lp2_fu_326_ap_start = grp_syrk_Pipeline_lp1_lp2_fu_326_ap_start_reg;
assign grp_syrk_Pipeline_lp4_fu_356_ap_start = grp_syrk_Pipeline_lp4_fu_356_ap_start_reg;
assign grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_start = grp_syrk_Pipeline_lprd_1_lprd_2_fu_226_ap_start_reg;
assign grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_start = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_378_ap_start_reg;
endmodule 
