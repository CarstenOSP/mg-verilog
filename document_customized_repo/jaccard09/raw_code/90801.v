module k3mm_k3mm_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_address1,buff_B_ce1,buff_B_q1,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_1_address1,buff_B_1_ce1,buff_B_1_q1,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_2_address1,buff_B_2_ce1,buff_B_2_q1,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,buff_B_3_address1,buff_B_3_ce1,buff_B_3_q1,buff_B_4_address0,buff_B_4_ce0,buff_B_4_q0,buff_B_4_address1,buff_B_4_ce1,buff_B_4_q1,buff_B_5_address0,buff_B_5_ce0,buff_B_5_q0,buff_B_5_address1,buff_B_5_ce1,buff_B_5_q1,buff_B_6_address0,buff_B_6_ce0,buff_B_6_q0,buff_B_6_address1,buff_B_6_ce1,buff_B_6_q1,buff_B_7_address0,buff_B_7_ce0,buff_B_7_q0,buff_B_7_address1,buff_B_7_ce1,buff_B_7_q1,buff_B_8_address0,buff_B_8_ce0,buff_B_8_q0,buff_B_8_address1,buff_B_8_ce1,buff_B_8_q1,buff_B_9_address0,buff_B_9_ce0,buff_B_9_q0,buff_B_9_address1,buff_B_9_ce1,buff_B_9_q1,buff_B_10_address0,buff_B_10_ce0,buff_B_10_q0,buff_B_10_address1,buff_B_10_ce1,buff_B_10_q1,buff_B_11_address0,buff_B_11_ce0,buff_B_11_q0,buff_B_11_address1,buff_B_11_ce1,buff_B_11_q1,buff_B_12_address0,buff_B_12_ce0,buff_B_12_q0,buff_B_12_address1,buff_B_12_ce1,buff_B_12_q1,buff_B_13_address0,buff_B_13_ce0,buff_B_13_q0,buff_B_13_address1,buff_B_13_ce1,buff_B_13_q1,buff_B_14_address0,buff_B_14_ce0,buff_B_14_q0,buff_B_14_address1,buff_B_14_ce1,buff_B_14_q1,buff_B_15_address0,buff_B_15_ce0,buff_B_15_q0,buff_B_15_address1,buff_B_15_ce1,buff_B_15_q1,buff_B_16_address0,buff_B_16_ce0,buff_B_16_q0,buff_B_16_address1,buff_B_16_ce1,buff_B_16_q1,buff_B_17_address0,buff_B_17_ce0,buff_B_17_q0,buff_B_17_address1,buff_B_17_ce1,buff_B_17_q1,buff_B_18_address0,buff_B_18_ce0,buff_B_18_q0,buff_B_18_address1,buff_B_18_ce1,buff_B_18_q1,buff_B_19_address0,buff_B_19_ce0,buff_B_19_q0,buff_B_19_address1,buff_B_19_ce1,buff_B_19_q1,buff_B_20_address0,buff_B_20_ce0,buff_B_20_q0,buff_B_20_address1,buff_B_20_ce1,buff_B_20_q1,buff_B_21_address0,buff_B_21_ce0,buff_B_21_q0,buff_B_21_address1,buff_B_21_ce1,buff_B_21_q1,buff_B_22_address0,buff_B_22_ce0,buff_B_22_q0,buff_B_22_address1,buff_B_22_ce1,buff_B_22_q1,buff_B_23_address0,buff_B_23_ce0,buff_B_23_q0,buff_B_23_address1,buff_B_23_ce1,buff_B_23_q1,buff_B_24_address0,buff_B_24_ce0,buff_B_24_q0,buff_B_24_address1,buff_B_24_ce1,buff_B_24_q1,buff_B_25_address0,buff_B_25_ce0,buff_B_25_q0,buff_B_25_address1,buff_B_25_ce1,buff_B_25_q1,buff_B_26_address0,buff_B_26_ce0,buff_B_26_q0,buff_B_26_address1,buff_B_26_ce1,buff_B_26_q1,buff_B_27_address0,buff_B_27_ce0,buff_B_27_q0,buff_B_27_address1,buff_B_27_ce1,buff_B_27_q1,buff_B_28_address0,buff_B_28_ce0,buff_B_28_q0,buff_B_28_address1,buff_B_28_ce1,buff_B_28_q1,buff_B_29_address0,buff_B_29_ce0,buff_B_29_q0,buff_B_29_address1,buff_B_29_ce1,buff_B_29_q1,buff_B_30_address0,buff_B_30_ce0,buff_B_30_q0,buff_B_30_address1,buff_B_30_ce1,buff_B_30_q1,buff_B_31_address0,buff_B_31_ce0,buff_B_31_q0,buff_B_31_address1,buff_B_31_ce1,buff_B_31_q1,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_we0,tmp1_4_d0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_we0,tmp1_5_d0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_we0,tmp1_6_d0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_we0,tmp1_7_d0,tmp1_7_q0,grp_fu_8356_p_din0,grp_fu_8356_p_din1,grp_fu_8356_p_opcode,grp_fu_8356_p_dout0,grp_fu_8356_p_ce,grp_fu_8360_p_din0,grp_fu_8360_p_din1,grp_fu_8360_p_dout0,grp_fu_8360_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 57'd1;
parameter    ap_ST_fsm_pp0_stage1 = 57'd2;
parameter    ap_ST_fsm_pp0_stage2 = 57'd4;
parameter    ap_ST_fsm_pp0_stage3 = 57'd8;
parameter    ap_ST_fsm_pp0_stage4 = 57'd16;
parameter    ap_ST_fsm_pp0_stage5 = 57'd32;
parameter    ap_ST_fsm_pp0_stage6 = 57'd64;
parameter    ap_ST_fsm_pp0_stage7 = 57'd128;
parameter    ap_ST_fsm_pp0_stage8 = 57'd256;
parameter    ap_ST_fsm_pp0_stage9 = 57'd512;
parameter    ap_ST_fsm_pp0_stage10 = 57'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 57'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 57'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 57'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 57'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 57'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 57'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 57'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 57'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 57'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 57'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 57'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 57'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 57'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 57'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 57'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 57'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 57'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 57'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 57'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 57'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 57'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 57'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 57'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 57'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 57'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 57'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 57'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 57'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 57'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 57'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 57'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 57'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 57'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 57'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 57'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 57'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 57'd140737488355328;
parameter    ap_ST_fsm_pp0_stage48 = 57'd281474976710656;
parameter    ap_ST_fsm_pp0_stage49 = 57'd562949953421312;
parameter    ap_ST_fsm_pp0_stage50 = 57'd1125899906842624;
parameter    ap_ST_fsm_pp0_stage51 = 57'd2251799813685248;
parameter    ap_ST_fsm_pp0_stage52 = 57'd4503599627370496;
parameter    ap_ST_fsm_pp0_stage53 = 57'd9007199254740992;
parameter    ap_ST_fsm_pp0_stage54 = 57'd18014398509481984;
parameter    ap_ST_fsm_pp0_stage55 = 57'd36028797018963968;
parameter    ap_ST_fsm_pp0_stage56 = 57'd72057594037927936;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [6:0] buff_B_address1;
output   buff_B_ce1;
input  [31:0] buff_B_q1;
output  [6:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [6:0] buff_B_1_address1;
output   buff_B_1_ce1;
input  [31:0] buff_B_1_q1;
output  [6:0] buff_B_2_address0;
output   buff_B_2_ce0;
input  [31:0] buff_B_2_q0;
output  [6:0] buff_B_2_address1;
output   buff_B_2_ce1;
input  [31:0] buff_B_2_q1;
output  [6:0] buff_B_3_address0;
output   buff_B_3_ce0;
input  [31:0] buff_B_3_q0;
output  [6:0] buff_B_3_address1;
output   buff_B_3_ce1;
input  [31:0] buff_B_3_q1;
output  [6:0] buff_B_4_address0;
output   buff_B_4_ce0;
input  [31:0] buff_B_4_q0;
output  [6:0] buff_B_4_address1;
output   buff_B_4_ce1;
input  [31:0] buff_B_4_q1;
output  [6:0] buff_B_5_address0;
output   buff_B_5_ce0;
input  [31:0] buff_B_5_q0;
output  [6:0] buff_B_5_address1;
output   buff_B_5_ce1;
input  [31:0] buff_B_5_q1;
output  [6:0] buff_B_6_address0;
output   buff_B_6_ce0;
input  [31:0] buff_B_6_q0;
output  [6:0] buff_B_6_address1;
output   buff_B_6_ce1;
input  [31:0] buff_B_6_q1;
output  [6:0] buff_B_7_address0;
output   buff_B_7_ce0;
input  [31:0] buff_B_7_q0;
output  [6:0] buff_B_7_address1;
output   buff_B_7_ce1;
input  [31:0] buff_B_7_q1;
output  [6:0] buff_B_8_address0;
output   buff_B_8_ce0;
input  [31:0] buff_B_8_q0;
output  [6:0] buff_B_8_address1;
output   buff_B_8_ce1;
input  [31:0] buff_B_8_q1;
output  [6:0] buff_B_9_address0;
output   buff_B_9_ce0;
input  [31:0] buff_B_9_q0;
output  [6:0] buff_B_9_address1;
output   buff_B_9_ce1;
input  [31:0] buff_B_9_q1;
output  [6:0] buff_B_10_address0;
output   buff_B_10_ce0;
input  [31:0] buff_B_10_q0;
output  [6:0] buff_B_10_address1;
output   buff_B_10_ce1;
input  [31:0] buff_B_10_q1;
output  [6:0] buff_B_11_address0;
output   buff_B_11_ce0;
input  [31:0] buff_B_11_q0;
output  [6:0] buff_B_11_address1;
output   buff_B_11_ce1;
input  [31:0] buff_B_11_q1;
output  [6:0] buff_B_12_address0;
output   buff_B_12_ce0;
input  [31:0] buff_B_12_q0;
output  [6:0] buff_B_12_address1;
output   buff_B_12_ce1;
input  [31:0] buff_B_12_q1;
output  [6:0] buff_B_13_address0;
output   buff_B_13_ce0;
input  [31:0] buff_B_13_q0;
output  [6:0] buff_B_13_address1;
output   buff_B_13_ce1;
input  [31:0] buff_B_13_q1;
output  [6:0] buff_B_14_address0;
output   buff_B_14_ce0;
input  [31:0] buff_B_14_q0;
output  [6:0] buff_B_14_address1;
output   buff_B_14_ce1;
input  [31:0] buff_B_14_q1;
output  [6:0] buff_B_15_address0;
output   buff_B_15_ce0;
input  [31:0] buff_B_15_q0;
output  [6:0] buff_B_15_address1;
output   buff_B_15_ce1;
input  [31:0] buff_B_15_q1;
output  [6:0] buff_B_16_address0;
output   buff_B_16_ce0;
input  [31:0] buff_B_16_q0;
output  [6:0] buff_B_16_address1;
output   buff_B_16_ce1;
input  [31:0] buff_B_16_q1;
output  [6:0] buff_B_17_address0;
output   buff_B_17_ce0;
input  [31:0] buff_B_17_q0;
output  [6:0] buff_B_17_address1;
output   buff_B_17_ce1;
input  [31:0] buff_B_17_q1;
output  [6:0] buff_B_18_address0;
output   buff_B_18_ce0;
input  [31:0] buff_B_18_q0;
output  [6:0] buff_B_18_address1;
output   buff_B_18_ce1;
input  [31:0] buff_B_18_q1;
output  [6:0] buff_B_19_address0;
output   buff_B_19_ce0;
input  [31:0] buff_B_19_q0;
output  [6:0] buff_B_19_address1;
output   buff_B_19_ce1;
input  [31:0] buff_B_19_q1;
output  [6:0] buff_B_20_address0;
output   buff_B_20_ce0;
input  [31:0] buff_B_20_q0;
output  [6:0] buff_B_20_address1;
output   buff_B_20_ce1;
input  [31:0] buff_B_20_q1;
output  [6:0] buff_B_21_address0;
output   buff_B_21_ce0;
input  [31:0] buff_B_21_q0;
output  [6:0] buff_B_21_address1;
output   buff_B_21_ce1;
input  [31:0] buff_B_21_q1;
output  [6:0] buff_B_22_address0;
output   buff_B_22_ce0;
input  [31:0] buff_B_22_q0;
output  [6:0] buff_B_22_address1;
output   buff_B_22_ce1;
input  [31:0] buff_B_22_q1;
output  [6:0] buff_B_23_address0;
output   buff_B_23_ce0;
input  [31:0] buff_B_23_q0;
output  [6:0] buff_B_23_address1;
output   buff_B_23_ce1;
input  [31:0] buff_B_23_q1;
output  [6:0] buff_B_24_address0;
output   buff_B_24_ce0;
input  [31:0] buff_B_24_q0;
output  [6:0] buff_B_24_address1;
output   buff_B_24_ce1;
input  [31:0] buff_B_24_q1;
output  [6:0] buff_B_25_address0;
output   buff_B_25_ce0;
input  [31:0] buff_B_25_q0;
output  [6:0] buff_B_25_address1;
output   buff_B_25_ce1;
input  [31:0] buff_B_25_q1;
output  [6:0] buff_B_26_address0;
output   buff_B_26_ce0;
input  [31:0] buff_B_26_q0;
output  [6:0] buff_B_26_address1;
output   buff_B_26_ce1;
input  [31:0] buff_B_26_q1;
output  [6:0] buff_B_27_address0;
output   buff_B_27_ce0;
input  [31:0] buff_B_27_q0;
output  [6:0] buff_B_27_address1;
output   buff_B_27_ce1;
input  [31:0] buff_B_27_q1;
output  [6:0] buff_B_28_address0;
output   buff_B_28_ce0;
input  [31:0] buff_B_28_q0;
output  [6:0] buff_B_28_address1;
output   buff_B_28_ce1;
input  [31:0] buff_B_28_q1;
output  [6:0] buff_B_29_address0;
output   buff_B_29_ce0;
input  [31:0] buff_B_29_q0;
output  [6:0] buff_B_29_address1;
output   buff_B_29_ce1;
input  [31:0] buff_B_29_q1;
output  [6:0] buff_B_30_address0;
output   buff_B_30_ce0;
input  [31:0] buff_B_30_q0;
output  [6:0] buff_B_30_address1;
output   buff_B_30_ce1;
input  [31:0] buff_B_30_q1;
output  [6:0] buff_B_31_address0;
output   buff_B_31_ce0;
input  [31:0] buff_B_31_q0;
output  [6:0] buff_B_31_address1;
output   buff_B_31_ce1;
input  [31:0] buff_B_31_q1;
output  [8:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [8:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [8:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [8:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [8:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [8:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [8:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [8:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [8:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [8:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
input  [31:0] tmp1_1_q0;
output  [8:0] tmp1_2_address0;
output   tmp1_2_ce0;
output   tmp1_2_we0;
output  [31:0] tmp1_2_d0;
input  [31:0] tmp1_2_q0;
output  [8:0] tmp1_3_address0;
output   tmp1_3_ce0;
output   tmp1_3_we0;
output  [31:0] tmp1_3_d0;
input  [31:0] tmp1_3_q0;
output  [8:0] tmp1_4_address0;
output   tmp1_4_ce0;
output   tmp1_4_we0;
output  [31:0] tmp1_4_d0;
input  [31:0] tmp1_4_q0;
output  [8:0] tmp1_5_address0;
output   tmp1_5_ce0;
output   tmp1_5_we0;
output  [31:0] tmp1_5_d0;
input  [31:0] tmp1_5_q0;
output  [8:0] tmp1_6_address0;
output   tmp1_6_ce0;
output   tmp1_6_we0;
output  [31:0] tmp1_6_d0;
input  [31:0] tmp1_6_q0;
output  [8:0] tmp1_7_address0;
output   tmp1_7_ce0;
output   tmp1_7_we0;
output  [31:0] tmp1_7_d0;
input  [31:0] tmp1_7_q0;
output  [31:0] grp_fu_8356_p_din0;
output  [31:0] grp_fu_8356_p_din1;
output  [1:0] grp_fu_8356_p_opcode;
input  [31:0] grp_fu_8356_p_dout0;
output   grp_fu_8356_p_ce;
output  [31:0] grp_fu_8360_p_din0;
output  [31:0] grp_fu_8360_p_din1;
input  [31:0] grp_fu_8360_p_dout0;
output   grp_fu_8360_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [56:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln32_reg_1993;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage56;
wire    ap_block_pp0_stage56_subdone;
reg   [31:0] reg_1216;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [31:0] reg_1221;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire    ap_CS_fsm_pp0_stage34;
wire    ap_block_pp0_stage34_11001;
wire    ap_CS_fsm_pp0_stage41;
wire    ap_block_pp0_stage41_11001;
wire    ap_CS_fsm_pp0_stage48;
wire    ap_block_pp0_stage48_11001;
wire    ap_CS_fsm_pp0_stage55;
wire    ap_block_pp0_stage55_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln32_fu_1265_p2;
wire   [0:0] icmp_ln33_fu_1277_p2;
reg   [0:0] icmp_ln33_reg_1997;
wire   [0:0] first_iter_1_fu_1388_p2;
reg   [0:0] first_iter_1_reg_2005;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] trunc_ln33_1_fu_1394_p1;
reg   [2:0] trunc_ln33_1_reg_2009;
reg   [2:0] trunc_ln33_1_reg_2009_pp0_iter1_reg;
reg   [8:0] tmp1_addr_1_reg_2022;
reg   [8:0] tmp1_addr_1_reg_2022_pp0_iter1_reg;
reg   [8:0] tmp1_1_addr_1_reg_2027;
reg   [8:0] tmp1_1_addr_1_reg_2027_pp0_iter1_reg;
reg   [8:0] tmp1_2_addr_1_reg_2032;
reg   [8:0] tmp1_2_addr_1_reg_2032_pp0_iter1_reg;
reg   [8:0] tmp1_3_addr_1_reg_2037;
reg   [8:0] tmp1_3_addr_1_reg_2037_pp0_iter1_reg;
reg   [8:0] tmp1_4_addr_1_reg_2042;
reg   [8:0] tmp1_4_addr_1_reg_2042_pp0_iter1_reg;
reg   [8:0] tmp1_5_addr_1_reg_2047;
reg   [8:0] tmp1_5_addr_1_reg_2047_pp0_iter1_reg;
reg   [8:0] tmp1_6_addr_1_reg_2052;
reg   [8:0] tmp1_6_addr_1_reg_2052_pp0_iter1_reg;
reg   [8:0] tmp1_7_addr_reg_2057;
reg   [8:0] tmp1_7_addr_reg_2057_pp0_iter1_reg;
reg   [0:0] tmp_2_reg_2422;
reg   [0:0] tmp_2_reg_2422_pp0_iter1_reg;
wire   [31:0] tmp_fu_1587_p19;
reg   [31:0] tmp_reg_2426;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] buff_A_load_reg_2431;
wire   [31:0] tmp_73_fu_1626_p19;
reg   [31:0] tmp_73_reg_2436;
reg   [31:0] buff_A_1_load_reg_2441;
wire   [31:0] tmp_74_fu_1665_p19;
reg   [31:0] tmp_74_reg_2446;
reg   [31:0] buff_A_2_load_reg_2451;
wire   [31:0] tmp_75_fu_1704_p19;
reg   [31:0] tmp_75_reg_2456;
reg   [31:0] buff_A_3_load_reg_2461;
wire   [31:0] tmp_76_fu_1743_p19;
reg   [31:0] tmp_76_reg_2466;
reg   [31:0] buff_A_4_load_reg_2471;
wire   [31:0] tmp_77_fu_1782_p19;
reg   [31:0] tmp_77_reg_2476;
reg   [31:0] buff_A_5_load_reg_2481;
wire   [31:0] tmp_78_fu_1821_p19;
reg   [31:0] tmp_78_reg_2486;
reg   [31:0] buff_A_6_load_reg_2491;
wire   [31:0] tmp_79_fu_1860_p19;
reg   [31:0] tmp_79_reg_2496;
reg   [31:0] buff_A_7_load_reg_2501;
wire   [31:0] tmp_80_fu_1899_p19;
reg   [31:0] tmp_80_reg_2506;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul_1_reg_2516;
reg   [31:0] mul_2_reg_2521;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [31:0] mul_3_reg_2526;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [31:0] mul_4_reg_2531;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [31:0] mul_5_reg_2536;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] mul_6_reg_2541;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_84_cast_fu_1416_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln35_fu_1446_p1;
wire   [63:0] zext_ln35_1_fu_1500_p1;
wire   [63:0] zext_ln35_2_fu_1522_p1;
reg   [6:0] k_fu_176;
wire   [6:0] add_ln34_fu_1558_p2;
wire    ap_loop_init;
reg   [6:0] j_fu_180;
wire   [6:0] select_ln33_fu_1380_p3;
reg   [10:0] indvar_flatten9_fu_184;
wire   [10:0] select_ln33_1_fu_1289_p3;
reg   [10:0] ap_sig_allocacmp_indvar_flatten9_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_188;
wire   [6:0] select_ln32_fu_1355_p3;
reg   [15:0] indvar_flatten23_fu_192;
wire   [15:0] add_ln32_1_fu_1271_p2;
reg   [15:0] ap_sig_allocacmp_indvar_flatten23_load;
reg   [31:0] empty_fu_196;
wire    ap_block_pp0_stage7;
reg    tmp1_ce0_local;
reg   [8:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage6;
reg    tmp1_1_ce0_local;
reg   [8:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
reg    tmp1_2_ce0_local;
reg   [8:0] tmp1_2_address0_local;
reg    tmp1_2_we0_local;
reg    tmp1_3_ce0_local;
reg   [8:0] tmp1_3_address0_local;
reg    tmp1_3_we0_local;
reg    tmp1_4_ce0_local;
reg   [8:0] tmp1_4_address0_local;
reg    tmp1_4_we0_local;
reg    tmp1_5_ce0_local;
reg   [8:0] tmp1_5_address0_local;
reg    tmp1_5_we0_local;
reg    tmp1_6_ce0_local;
reg   [8:0] tmp1_6_address0_local;
reg    tmp1_6_we0_local;
reg    tmp1_7_ce0_local;
reg   [8:0] tmp1_7_address0_local;
reg    tmp1_7_we0_local;
reg    buff_A_ce0_local;
reg    buff_B_ce1_local;
reg    buff_B_ce0_local;
reg    buff_B_4_ce1_local;
reg    buff_B_4_ce0_local;
reg    buff_B_8_ce1_local;
reg    buff_B_8_ce0_local;
reg    buff_B_12_ce1_local;
reg    buff_B_12_ce0_local;
reg    buff_B_16_ce1_local;
reg    buff_B_16_ce0_local;
reg    buff_B_20_ce1_local;
reg    buff_B_20_ce0_local;
reg    buff_B_24_ce1_local;
reg    buff_B_24_ce0_local;
reg    buff_B_28_ce1_local;
reg    buff_B_28_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_B_1_ce1_local;
reg    buff_B_1_ce0_local;
reg    buff_B_5_ce1_local;
reg    buff_B_5_ce0_local;
reg    buff_B_9_ce1_local;
reg    buff_B_9_ce0_local;
reg    buff_B_13_ce1_local;
reg    buff_B_13_ce0_local;
reg    buff_B_17_ce1_local;
reg    buff_B_17_ce0_local;
reg    buff_B_21_ce1_local;
reg    buff_B_21_ce0_local;
reg    buff_B_25_ce1_local;
reg    buff_B_25_ce0_local;
reg    buff_B_29_ce1_local;
reg    buff_B_29_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_B_2_ce1_local;
reg    buff_B_2_ce0_local;
reg    buff_B_6_ce1_local;
reg    buff_B_6_ce0_local;
reg    buff_B_10_ce1_local;
reg    buff_B_10_ce0_local;
reg    buff_B_14_ce1_local;
reg    buff_B_14_ce0_local;
reg    buff_B_18_ce1_local;
reg    buff_B_18_ce0_local;
reg    buff_B_22_ce1_local;
reg    buff_B_22_ce0_local;
reg    buff_B_26_ce1_local;
reg    buff_B_26_ce0_local;
reg    buff_B_30_ce1_local;
reg    buff_B_30_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_B_3_ce1_local;
reg    buff_B_3_ce0_local;
reg    buff_B_7_ce1_local;
reg    buff_B_7_ce0_local;
reg    buff_B_11_ce1_local;
reg    buff_B_11_ce0_local;
reg    buff_B_15_ce1_local;
reg    buff_B_15_ce0_local;
reg    buff_B_19_ce1_local;
reg    buff_B_19_ce0_local;
reg    buff_B_23_ce1_local;
reg    buff_B_23_ce0_local;
reg    buff_B_27_ce1_local;
reg    buff_B_27_ce0_local;
reg    buff_B_31_ce1_local;
reg    buff_B_31_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce0_local;
reg   [31:0] grp_fu_1208_p0;
reg   [31:0] grp_fu_1208_p1;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28;
wire    ap_CS_fsm_pp0_stage35;
wire    ap_block_pp0_stage35;
wire    ap_CS_fsm_pp0_stage42;
wire    ap_block_pp0_stage42;
wire    ap_CS_fsm_pp0_stage49;
wire    ap_block_pp0_stage49;
wire    ap_block_pp0_stage56;
reg   [31:0] grp_fu_1212_p0;
reg   [31:0] grp_fu_1212_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire   [10:0] add_ln33_1_fu_1283_p2;
wire   [0:0] tmp_1_fu_1336_p3;
wire   [0:0] xor_ln34_fu_1344_p2;
wire   [6:0] add_ln32_fu_1316_p2;
wire   [6:0] select_ln10_fu_1322_p3;
wire   [0:0] or_ln10_fu_1350_p2;
wire   [6:0] select_ln10_1_fu_1329_p3;
wire   [6:0] add_ln33_fu_1366_p2;
wire   [6:0] k_mid2_fu_1372_p3;
wire   [5:0] trunc_ln33_fu_1362_p1;
wire   [2:0] lshr_ln10_2_fu_1398_p4;
wire   [8:0] tmp_s_fu_1408_p3;
wire   [3:0] lshr_ln10_4_fu_1428_p4;
wire   [6:0] tmp_81_fu_1438_p3;
wire   [2:0] lshr_ln10_5_fu_1482_p4;
wire   [8:0] tmp_82_fu_1492_p3;
wire   [6:0] tmp_83_fu_1512_p4;
wire   [31:0] tmp_fu_1587_p17;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_73_fu_1626_p17;
wire   [31:0] tmp_74_fu_1665_p17;
wire   [31:0] tmp_75_fu_1704_p17;
wire   [31:0] tmp_76_fu_1743_p17;
wire   [31:0] tmp_77_fu_1782_p17;
wire   [31:0] tmp_78_fu_1821_p17;
wire   [31:0] tmp_79_fu_1860_p17;
wire   [31:0] tmp_80_fu_1899_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [56:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_block_pp0_stage31_subdone;
wire    ap_block_pp0_stage32_subdone;
wire    ap_block_pp0_stage33_subdone;
wire    ap_block_pp0_stage34_subdone;
wire    ap_block_pp0_stage35_subdone;
wire    ap_block_pp0_stage36_subdone;
wire    ap_block_pp0_stage37_subdone;
wire    ap_block_pp0_stage38_subdone;
wire    ap_block_pp0_stage39_subdone;
wire    ap_block_pp0_stage40_subdone;
wire    ap_block_pp0_stage41_subdone;
wire    ap_block_pp0_stage42_subdone;
wire    ap_block_pp0_stage43_subdone;
wire    ap_block_pp0_stage44_subdone;
wire    ap_block_pp0_stage45_subdone;
wire    ap_block_pp0_stage46_subdone;
wire    ap_block_pp0_stage47_subdone;
wire    ap_block_pp0_stage48_subdone;
wire    ap_block_pp0_stage49_subdone;
wire    ap_block_pp0_stage50_subdone;
wire    ap_block_pp0_stage51_subdone;
wire    ap_block_pp0_stage52_subdone;
wire    ap_block_pp0_stage53_subdone;
wire    ap_block_pp0_stage54_subdone;
wire    ap_block_pp0_stage55_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage21_00001;
wire    ap_block_pp0_stage28_00001;
wire    ap_block_pp0_stage35_00001;
wire    ap_block_pp0_stage42_00001;
wire    ap_block_pp0_stage49_00001;
wire    ap_block_pp0_stage56_00001;
reg    ap_condition_2143;
wire   [2:0] tmp_fu_1587_p1;
wire   [2:0] tmp_fu_1587_p3;
wire   [2:0] tmp_fu_1587_p5;
wire   [2:0] tmp_fu_1587_p7;
wire  signed [2:0] tmp_fu_1587_p9;
wire  signed [2:0] tmp_fu_1587_p11;
wire  signed [2:0] tmp_fu_1587_p13;
wire  signed [2:0] tmp_fu_1587_p15;
wire   [2:0] tmp_73_fu_1626_p1;
wire   [2:0] tmp_73_fu_1626_p3;
wire   [2:0] tmp_73_fu_1626_p5;
wire   [2:0] tmp_73_fu_1626_p7;
wire  signed [2:0] tmp_73_fu_1626_p9;
wire  signed [2:0] tmp_73_fu_1626_p11;
wire  signed [2:0] tmp_73_fu_1626_p13;
wire  signed [2:0] tmp_73_fu_1626_p15;
wire   [2:0] tmp_74_fu_1665_p1;
wire   [2:0] tmp_74_fu_1665_p3;
wire   [2:0] tmp_74_fu_1665_p5;
wire   [2:0] tmp_74_fu_1665_p7;
wire  signed [2:0] tmp_74_fu_1665_p9;
wire  signed [2:0] tmp_74_fu_1665_p11;
wire  signed [2:0] tmp_74_fu_1665_p13;
wire  signed [2:0] tmp_74_fu_1665_p15;
wire   [2:0] tmp_75_fu_1704_p1;
wire   [2:0] tmp_75_fu_1704_p3;
wire   [2:0] tmp_75_fu_1704_p5;
wire   [2:0] tmp_75_fu_1704_p7;
wire  signed [2:0] tmp_75_fu_1704_p9;
wire  signed [2:0] tmp_75_fu_1704_p11;
wire  signed [2:0] tmp_75_fu_1704_p13;
wire  signed [2:0] tmp_75_fu_1704_p15;
wire   [2:0] tmp_76_fu_1743_p1;
wire   [2:0] tmp_76_fu_1743_p3;
wire   [2:0] tmp_76_fu_1743_p5;
wire   [2:0] tmp_76_fu_1743_p7;
wire  signed [2:0] tmp_76_fu_1743_p9;
wire  signed [2:0] tmp_76_fu_1743_p11;
wire  signed [2:0] tmp_76_fu_1743_p13;
wire  signed [2:0] tmp_76_fu_1743_p15;
wire   [2:0] tmp_77_fu_1782_p1;
wire   [2:0] tmp_77_fu_1782_p3;
wire   [2:0] tmp_77_fu_1782_p5;
wire   [2:0] tmp_77_fu_1782_p7;
wire  signed [2:0] tmp_77_fu_1782_p9;
wire  signed [2:0] tmp_77_fu_1782_p11;
wire  signed [2:0] tmp_77_fu_1782_p13;
wire  signed [2:0] tmp_77_fu_1782_p15;
wire   [2:0] tmp_78_fu_1821_p1;
wire   [2:0] tmp_78_fu_1821_p3;
wire   [2:0] tmp_78_fu_1821_p5;
wire   [2:0] tmp_78_fu_1821_p7;
wire  signed [2:0] tmp_78_fu_1821_p9;
wire  signed [2:0] tmp_78_fu_1821_p11;
wire  signed [2:0] tmp_78_fu_1821_p13;
wire  signed [2:0] tmp_78_fu_1821_p15;
wire   [2:0] tmp_79_fu_1860_p1;
wire   [2:0] tmp_79_fu_1860_p3;
wire   [2:0] tmp_79_fu_1860_p5;
wire   [2:0] tmp_79_fu_1860_p7;
wire  signed [2:0] tmp_79_fu_1860_p9;
wire  signed [2:0] tmp_79_fu_1860_p11;
wire  signed [2:0] tmp_79_fu_1860_p13;
wire  signed [2:0] tmp_79_fu_1860_p15;
wire   [2:0] tmp_80_fu_1899_p1;
wire   [2:0] tmp_80_fu_1899_p3;
wire   [2:0] tmp_80_fu_1899_p5;
wire   [2:0] tmp_80_fu_1899_p7;
wire  signed [2:0] tmp_80_fu_1899_p9;
wire  signed [2:0] tmp_80_fu_1899_p11;
wire  signed [2:0] tmp_80_fu_1899_p13;
wire  signed [2:0] tmp_80_fu_1899_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 57'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_176 = 7'd0;
#0 j_fu_180 = 7'd0;
#0 indvar_flatten9_fu_184 = 11'd0;
#0 i_fu_188 = 7'd0;
#0 indvar_flatten23_fu_192 = 16'd0;
#0 empty_fu_196 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1123(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.din4(tmp1_4_q0),.din5(tmp1_5_q0),.din6(tmp1_6_q0),.din7(tmp1_7_q0),.def(tmp_fu_1587_p17),.sel(trunc_ln33_1_reg_2009),.dout(tmp_fu_1587_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1124(.din0(buff_B_q1),.din1(buff_B_4_q1),.din2(buff_B_8_q1),.din3(buff_B_12_q1),.din4(buff_B_16_q1),.din5(buff_B_20_q1),.din6(buff_B_24_q1),.din7(buff_B_28_q1),.def(tmp_73_fu_1626_p17),.sel(trunc_ln33_1_reg_2009),.dout(tmp_73_fu_1626_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1125(.din0(buff_B_1_q1),.din1(buff_B_5_q1),.din2(buff_B_9_q1),.din3(buff_B_13_q1),.din4(buff_B_17_q1),.din5(buff_B_21_q1),.din6(buff_B_25_q1),.din7(buff_B_29_q1),.def(tmp_74_fu_1665_p17),.sel(trunc_ln33_1_reg_2009),.dout(tmp_74_fu_1665_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1126(.din0(buff_B_2_q1),.din1(buff_B_6_q1),.din2(buff_B_10_q1),.din3(buff_B_14_q1),.din4(buff_B_18_q1),.din5(buff_B_22_q1),.din6(buff_B_26_q1),.din7(buff_B_30_q1),.def(tmp_75_fu_1704_p17),.sel(trunc_ln33_1_reg_2009),.dout(tmp_75_fu_1704_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1127(.din0(buff_B_3_q1),.din1(buff_B_7_q1),.din2(buff_B_11_q1),.din3(buff_B_15_q1),.din4(buff_B_19_q1),.din5(buff_B_23_q1),.din6(buff_B_27_q1),.din7(buff_B_31_q1),.def(tmp_76_fu_1743_p17),.sel(trunc_ln33_1_reg_2009),.dout(tmp_76_fu_1743_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1128(.din0(buff_B_q0),.din1(buff_B_4_q0),.din2(buff_B_8_q0),.din3(buff_B_12_q0),.din4(buff_B_16_q0),.din5(buff_B_20_q0),.din6(buff_B_24_q0),.din7(buff_B_28_q0),.def(tmp_77_fu_1782_p17),.sel(trunc_ln33_1_reg_2009),.dout(tmp_77_fu_1782_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1129(.din0(buff_B_1_q0),.din1(buff_B_5_q0),.din2(buff_B_9_q0),.din3(buff_B_13_q0),.din4(buff_B_17_q0),.din5(buff_B_21_q0),.din6(buff_B_25_q0),.din7(buff_B_29_q0),.def(tmp_78_fu_1821_p17),.sel(trunc_ln33_1_reg_2009),.dout(tmp_78_fu_1821_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1130(.din0(buff_B_2_q0),.din1(buff_B_6_q0),.din2(buff_B_10_q0),.din3(buff_B_14_q0),.din4(buff_B_18_q0),.din5(buff_B_22_q0),.din6(buff_B_26_q0),.din7(buff_B_30_q0),.def(tmp_79_fu_1860_p17),.sel(trunc_ln33_1_reg_2009),.dout(tmp_79_fu_1860_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1131(.din0(buff_B_3_q0),.din1(buff_B_7_q0),.din2(buff_B_11_q0),.din3(buff_B_15_q0),.din4(buff_B_19_q0),.din5(buff_B_23_q0),.din6(buff_B_27_q0),.din7(buff_B_31_q0),.def(tmp_80_fu_1899_p17),.sel(trunc_ln33_1_reg_2009),.dout(tmp_80_fu_1899_p19));
k3mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_loop_exit_ready == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage56_subdone) & (1'b1 == ap_CS_fsm_pp0_stage56))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_2143)) begin
            empty_fu_196 <= tmp_reg_2426;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_196 <= reg_1221;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_188 <= 7'd0;
    end else if (((icmp_ln32_reg_1993 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_188 <= select_ln32_fu_1355_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_1265_p2 == 1'd0))) begin
            indvar_flatten23_fu_192 <= add_ln32_1_fu_1271_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_fu_192 <= 16'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_1265_p2 == 1'd0))) begin
            indvar_flatten9_fu_184 <= select_ln33_1_fu_1289_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten9_fu_184 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_180 <= 7'd0;
    end else if (((icmp_ln32_reg_1993 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_180 <= select_ln33_fu_1380_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        k_fu_176 <= 7'd0;
    end else if (((icmp_ln32_reg_1993 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_176 <= add_ln34_fu_1558_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A_1_load_reg_2441 <= buff_A_1_q0;
        buff_A_2_load_reg_2451 <= buff_A_2_q0;
        buff_A_3_load_reg_2461 <= buff_A_3_q0;
        buff_A_4_load_reg_2471 <= buff_A_4_q0;
        buff_A_5_load_reg_2481 <= buff_A_5_q0;
        buff_A_6_load_reg_2491 <= buff_A_6_q0;
        buff_A_7_load_reg_2501 <= buff_A_7_q0;
        buff_A_load_reg_2431 <= buff_A_q0;
        tmp_73_reg_2436 <= tmp_73_fu_1626_p19;
        tmp_74_reg_2446 <= tmp_74_fu_1665_p19;
        tmp_75_reg_2456 <= tmp_75_fu_1704_p19;
        tmp_76_reg_2466 <= tmp_76_fu_1743_p19;
        tmp_77_reg_2476 <= tmp_77_fu_1782_p19;
        tmp_78_reg_2486 <= tmp_78_fu_1821_p19;
        tmp_79_reg_2496 <= tmp_79_fu_1860_p19;
        tmp_80_reg_2506 <= tmp_80_fu_1899_p19;
        tmp_reg_2426 <= tmp_fu_1587_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        first_iter_1_reg_2005 <= first_iter_1_fu_1388_p2;
        tmp1_1_addr_1_reg_2027 <= tmp_84_cast_fu_1416_p1;
        tmp1_1_addr_1_reg_2027_pp0_iter1_reg <= tmp1_1_addr_1_reg_2027;
        tmp1_2_addr_1_reg_2032 <= tmp_84_cast_fu_1416_p1;
        tmp1_2_addr_1_reg_2032_pp0_iter1_reg <= tmp1_2_addr_1_reg_2032;
        tmp1_3_addr_1_reg_2037 <= tmp_84_cast_fu_1416_p1;
        tmp1_3_addr_1_reg_2037_pp0_iter1_reg <= tmp1_3_addr_1_reg_2037;
        tmp1_4_addr_1_reg_2042 <= tmp_84_cast_fu_1416_p1;
        tmp1_4_addr_1_reg_2042_pp0_iter1_reg <= tmp1_4_addr_1_reg_2042;
        tmp1_5_addr_1_reg_2047 <= tmp_84_cast_fu_1416_p1;
        tmp1_5_addr_1_reg_2047_pp0_iter1_reg <= tmp1_5_addr_1_reg_2047;
        tmp1_6_addr_1_reg_2052 <= tmp_84_cast_fu_1416_p1;
        tmp1_6_addr_1_reg_2052_pp0_iter1_reg <= tmp1_6_addr_1_reg_2052;
        tmp1_7_addr_reg_2057 <= tmp_84_cast_fu_1416_p1;
        tmp1_7_addr_reg_2057_pp0_iter1_reg <= tmp1_7_addr_reg_2057;
        tmp1_addr_1_reg_2022 <= tmp_84_cast_fu_1416_p1;
        tmp1_addr_1_reg_2022_pp0_iter1_reg <= tmp1_addr_1_reg_2022;
        tmp_2_reg_2422 <= add_ln34_fu_1558_p2[32'd6];
        tmp_2_reg_2422_pp0_iter1_reg <= tmp_2_reg_2422;
        trunc_ln33_1_reg_2009 <= trunc_ln33_1_fu_1394_p1;
        trunc_ln33_1_reg_2009_pp0_iter1_reg <= trunc_ln33_1_reg_2009;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln32_reg_1993 <= icmp_ln32_fu_1265_p2;
        icmp_ln33_reg_1997 <= icmp_ln33_fu_1277_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_1_reg_2516 <= grp_fu_8360_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_2_reg_2521 <= grp_fu_8360_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul_3_reg_2526 <= grp_fu_8360_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul_4_reg_2531 <= grp_fu_8360_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul_5_reg_2536 <= grp_fu_8360_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul_6_reg_2541 <= grp_fu_8360_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1216 <= grp_fu_8360_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage55_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage55)) | ((1'b0 == ap_block_pp0_stage48_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_1221 <= grp_fu_8356_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln32_reg_1993 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_loop_exit_ready == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage56_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten23_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_load = indvar_flatten23_fu_192;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten9_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten9_load = indvar_flatten9_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_10_ce0_local = 1'b1;
    end else begin
        buff_B_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_10_ce1_local = 1'b1;
    end else begin
        buff_B_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_11_ce0_local = 1'b1;
    end else begin
        buff_B_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_11_ce1_local = 1'b1;
    end else begin
        buff_B_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_12_ce0_local = 1'b1;
    end else begin
        buff_B_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_12_ce1_local = 1'b1;
    end else begin
        buff_B_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_13_ce0_local = 1'b1;
    end else begin
        buff_B_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_13_ce1_local = 1'b1;
    end else begin
        buff_B_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_14_ce0_local = 1'b1;
    end else begin
        buff_B_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_14_ce1_local = 1'b1;
    end else begin
        buff_B_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_15_ce0_local = 1'b1;
    end else begin
        buff_B_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_15_ce1_local = 1'b1;
    end else begin
        buff_B_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_16_ce0_local = 1'b1;
    end else begin
        buff_B_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_16_ce1_local = 1'b1;
    end else begin
        buff_B_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_17_ce0_local = 1'b1;
    end else begin
        buff_B_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_17_ce1_local = 1'b1;
    end else begin
        buff_B_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_18_ce0_local = 1'b1;
    end else begin
        buff_B_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_18_ce1_local = 1'b1;
    end else begin
        buff_B_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_19_ce0_local = 1'b1;
    end else begin
        buff_B_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_19_ce1_local = 1'b1;
    end else begin
        buff_B_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce1_local = 1'b1;
    end else begin
        buff_B_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_20_ce0_local = 1'b1;
    end else begin
        buff_B_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_20_ce1_local = 1'b1;
    end else begin
        buff_B_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_21_ce0_local = 1'b1;
    end else begin
        buff_B_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_21_ce1_local = 1'b1;
    end else begin
        buff_B_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_22_ce0_local = 1'b1;
    end else begin
        buff_B_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_22_ce1_local = 1'b1;
    end else begin
        buff_B_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_23_ce0_local = 1'b1;
    end else begin
        buff_B_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_23_ce1_local = 1'b1;
    end else begin
        buff_B_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_24_ce0_local = 1'b1;
    end else begin
        buff_B_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_24_ce1_local = 1'b1;
    end else begin
        buff_B_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_25_ce0_local = 1'b1;
    end else begin
        buff_B_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_25_ce1_local = 1'b1;
    end else begin
        buff_B_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_26_ce0_local = 1'b1;
    end else begin
        buff_B_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_26_ce1_local = 1'b1;
    end else begin
        buff_B_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_27_ce0_local = 1'b1;
    end else begin
        buff_B_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_27_ce1_local = 1'b1;
    end else begin
        buff_B_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_28_ce0_local = 1'b1;
    end else begin
        buff_B_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_28_ce1_local = 1'b1;
    end else begin
        buff_B_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_29_ce0_local = 1'b1;
    end else begin
        buff_B_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_29_ce1_local = 1'b1;
    end else begin
        buff_B_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_2_ce1_local = 1'b1;
    end else begin
        buff_B_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_30_ce0_local = 1'b1;
    end else begin
        buff_B_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_30_ce1_local = 1'b1;
    end else begin
        buff_B_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_31_ce0_local = 1'b1;
    end else begin
        buff_B_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_31_ce1_local = 1'b1;
    end else begin
        buff_B_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_3_ce1_local = 1'b1;
    end else begin
        buff_B_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_4_ce0_local = 1'b1;
    end else begin
        buff_B_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_4_ce1_local = 1'b1;
    end else begin
        buff_B_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_5_ce0_local = 1'b1;
    end else begin
        buff_B_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_5_ce1_local = 1'b1;
    end else begin
        buff_B_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_6_ce0_local = 1'b1;
    end else begin
        buff_B_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_6_ce1_local = 1'b1;
    end else begin
        buff_B_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_7_ce0_local = 1'b1;
    end else begin
        buff_B_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_7_ce1_local = 1'b1;
    end else begin
        buff_B_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_8_ce0_local = 1'b1;
    end else begin
        buff_B_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_8_ce1_local = 1'b1;
    end else begin
        buff_B_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_9_ce0_local = 1'b1;
    end else begin
        buff_B_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_9_ce1_local = 1'b1;
    end else begin
        buff_B_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce1_local = 1'b1;
    end else begin
        buff_B_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)) | ((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_1208_p0 = reg_1221;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1208_p0 = empty_fu_196;
    end else begin
        grp_fu_1208_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49))) begin
        grp_fu_1208_p1 = mul_6_reg_2541;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        grp_fu_1208_p1 = mul_5_reg_2536;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        grp_fu_1208_p1 = mul_4_reg_2531;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_1208_p1 = mul_3_reg_2526;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1208_p1 = mul_2_reg_2521;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1208_p1 = mul_1_reg_2516;
    end else if ((((1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1208_p1 = reg_1216;
    end else begin
        grp_fu_1208_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_1212_p0 = buff_A_7_load_reg_2501;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1212_p0 = buff_A_6_load_reg_2491;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1212_p0 = buff_A_5_load_reg_2481;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1212_p0 = buff_A_4_load_reg_2471;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1212_p0 = buff_A_3_load_reg_2461;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1212_p0 = buff_A_2_load_reg_2451;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1212_p0 = buff_A_1_load_reg_2441;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1212_p0 = buff_A_load_reg_2431;
        end else begin
            grp_fu_1212_p0 = 'bx;
        end
    end else begin
        grp_fu_1212_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_1212_p1 = tmp_80_reg_2506;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1212_p1 = tmp_79_reg_2496;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1212_p1 = tmp_78_reg_2486;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1212_p1 = tmp_77_reg_2476;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1212_p1 = tmp_76_reg_2466;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1212_p1 = tmp_75_reg_2456;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1212_p1 = tmp_74_reg_2446;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1212_p1 = tmp_73_reg_2436;
        end else begin
            grp_fu_1212_p1 = 'bx;
        end
    end else begin
        grp_fu_1212_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_1_address0_local = tmp1_1_addr_1_reg_2027_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_1_address0_local = tmp_84_cast_fu_1416_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_2422_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln33_1_reg_2009_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_2_address0_local = tmp1_2_addr_1_reg_2032_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_2_address0_local = tmp_84_cast_fu_1416_p1;
    end else begin
        tmp1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_2422_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln33_1_reg_2009_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_3_address0_local = tmp1_3_addr_1_reg_2037_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_3_address0_local = tmp_84_cast_fu_1416_p1;
    end else begin
        tmp1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_2422_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln33_1_reg_2009_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_4_address0_local = tmp1_4_addr_1_reg_2042_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_4_address0_local = tmp_84_cast_fu_1416_p1;
    end else begin
        tmp1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_2422_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln33_1_reg_2009_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_4_we0_local = 1'b1;
    end else begin
        tmp1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_5_address0_local = tmp1_5_addr_1_reg_2047_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_5_address0_local = tmp_84_cast_fu_1416_p1;
    end else begin
        tmp1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_2422_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln33_1_reg_2009_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_5_we0_local = 1'b1;
    end else begin
        tmp1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_6_address0_local = tmp1_6_addr_1_reg_2052_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_6_address0_local = tmp_84_cast_fu_1416_p1;
    end else begin
        tmp1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_2422_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln33_1_reg_2009_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_6_we0_local = 1'b1;
    end else begin
        tmp1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_7_address0_local = tmp1_7_addr_reg_2057_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_7_address0_local = tmp_84_cast_fu_1416_p1;
    end else begin
        tmp1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_2422_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln33_1_reg_2009_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_7_we0_local = 1'b1;
    end else begin
        tmp1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_address0_local = tmp1_addr_1_reg_2022_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_address0_local = tmp_84_cast_fu_1416_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_2422_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln33_1_reg_2009_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_pp0_stage32 : begin
            if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        ap_ST_fsm_pp0_stage33 : begin
            if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end
        end
        ap_ST_fsm_pp0_stage34 : begin
            if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end
        end
        ap_ST_fsm_pp0_stage35 : begin
            if ((1'b0 == ap_block_pp0_stage35_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end
        end
        ap_ST_fsm_pp0_stage36 : begin
            if ((1'b0 == ap_block_pp0_stage36_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end
        end
        ap_ST_fsm_pp0_stage37 : begin
            if ((1'b0 == ap_block_pp0_stage37_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end
        end
        ap_ST_fsm_pp0_stage38 : begin
            if ((1'b0 == ap_block_pp0_stage38_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end
        end
        ap_ST_fsm_pp0_stage39 : begin
            if ((1'b0 == ap_block_pp0_stage39_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end
        end
        ap_ST_fsm_pp0_stage40 : begin
            if ((1'b0 == ap_block_pp0_stage40_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end
        end
        ap_ST_fsm_pp0_stage41 : begin
            if ((1'b0 == ap_block_pp0_stage41_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end
        end
        ap_ST_fsm_pp0_stage42 : begin
            if ((1'b0 == ap_block_pp0_stage42_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end
        end
        ap_ST_fsm_pp0_stage43 : begin
            if ((1'b0 == ap_block_pp0_stage43_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end
        end
        ap_ST_fsm_pp0_stage44 : begin
            if ((1'b0 == ap_block_pp0_stage44_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end
        end
        ap_ST_fsm_pp0_stage45 : begin
            if ((1'b0 == ap_block_pp0_stage45_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end
        end
        ap_ST_fsm_pp0_stage46 : begin
            if ((1'b0 == ap_block_pp0_stage46_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end
        end
        ap_ST_fsm_pp0_stage47 : begin
            if ((1'b0 == ap_block_pp0_stage47_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        ap_ST_fsm_pp0_stage48 : begin
            if ((1'b0 == ap_block_pp0_stage48_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end
        end
        ap_ST_fsm_pp0_stage49 : begin
            if ((1'b0 == ap_block_pp0_stage49_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end
        end
        ap_ST_fsm_pp0_stage50 : begin
            if ((1'b0 == ap_block_pp0_stage50_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end
        end
        ap_ST_fsm_pp0_stage51 : begin
            if ((1'b0 == ap_block_pp0_stage51_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end
        end
        ap_ST_fsm_pp0_stage52 : begin
            if ((1'b0 == ap_block_pp0_stage52_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end
        end
        ap_ST_fsm_pp0_stage53 : begin
            if ((1'b0 == ap_block_pp0_stage53_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end
        end
        ap_ST_fsm_pp0_stage54 : begin
            if ((1'b0 == ap_block_pp0_stage54_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end
        end
        ap_ST_fsm_pp0_stage55 : begin
            if ((1'b0 == ap_block_pp0_stage55_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end
        end
        ap_ST_fsm_pp0_stage56 : begin
            if ((1'b0 == ap_block_pp0_stage56_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln32_1_fu_1271_p2 = (ap_sig_allocacmp_indvar_flatten23_load + 16'd1);
assign add_ln32_fu_1316_p2 = (i_fu_188 + 7'd1);
assign add_ln33_1_fu_1283_p2 = (ap_sig_allocacmp_indvar_flatten9_load + 11'd1);
assign add_ln33_fu_1366_p2 = (select_ln10_fu_1322_p3 + 7'd1);
assign add_ln34_fu_1558_p2 = (k_mid2_fu_1372_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage34 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_pp0_stage35 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage41 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_pp0_stage42 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_pp0_stage48 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_pp0_stage49 = ap_CS_fsm[32'd49];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage55 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_pp0_stage56 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_2143 = ((icmp_ln32_reg_1993 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_2005 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln35_1_fu_1500_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln35_1_fu_1500_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln35_1_fu_1500_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln35_1_fu_1500_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln35_1_fu_1500_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln35_1_fu_1500_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln35_1_fu_1500_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_address0 = zext_ln35_1_fu_1500_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_B_10_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_10_address1 = zext_ln35_fu_1446_p1;
assign buff_B_10_ce0 = buff_B_10_ce0_local;
assign buff_B_10_ce1 = buff_B_10_ce1_local;
assign buff_B_11_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_11_address1 = zext_ln35_fu_1446_p1;
assign buff_B_11_ce0 = buff_B_11_ce0_local;
assign buff_B_11_ce1 = buff_B_11_ce1_local;
assign buff_B_12_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_12_address1 = zext_ln35_fu_1446_p1;
assign buff_B_12_ce0 = buff_B_12_ce0_local;
assign buff_B_12_ce1 = buff_B_12_ce1_local;
assign buff_B_13_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_13_address1 = zext_ln35_fu_1446_p1;
assign buff_B_13_ce0 = buff_B_13_ce0_local;
assign buff_B_13_ce1 = buff_B_13_ce1_local;
assign buff_B_14_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_14_address1 = zext_ln35_fu_1446_p1;
assign buff_B_14_ce0 = buff_B_14_ce0_local;
assign buff_B_14_ce1 = buff_B_14_ce1_local;
assign buff_B_15_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_15_address1 = zext_ln35_fu_1446_p1;
assign buff_B_15_ce0 = buff_B_15_ce0_local;
assign buff_B_15_ce1 = buff_B_15_ce1_local;
assign buff_B_16_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_16_address1 = zext_ln35_fu_1446_p1;
assign buff_B_16_ce0 = buff_B_16_ce0_local;
assign buff_B_16_ce1 = buff_B_16_ce1_local;
assign buff_B_17_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_17_address1 = zext_ln35_fu_1446_p1;
assign buff_B_17_ce0 = buff_B_17_ce0_local;
assign buff_B_17_ce1 = buff_B_17_ce1_local;
assign buff_B_18_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_18_address1 = zext_ln35_fu_1446_p1;
assign buff_B_18_ce0 = buff_B_18_ce0_local;
assign buff_B_18_ce1 = buff_B_18_ce1_local;
assign buff_B_19_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_19_address1 = zext_ln35_fu_1446_p1;
assign buff_B_19_ce0 = buff_B_19_ce0_local;
assign buff_B_19_ce1 = buff_B_19_ce1_local;
assign buff_B_1_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_1_address1 = zext_ln35_fu_1446_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_ce1 = buff_B_1_ce1_local;
assign buff_B_20_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_20_address1 = zext_ln35_fu_1446_p1;
assign buff_B_20_ce0 = buff_B_20_ce0_local;
assign buff_B_20_ce1 = buff_B_20_ce1_local;
assign buff_B_21_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_21_address1 = zext_ln35_fu_1446_p1;
assign buff_B_21_ce0 = buff_B_21_ce0_local;
assign buff_B_21_ce1 = buff_B_21_ce1_local;
assign buff_B_22_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_22_address1 = zext_ln35_fu_1446_p1;
assign buff_B_22_ce0 = buff_B_22_ce0_local;
assign buff_B_22_ce1 = buff_B_22_ce1_local;
assign buff_B_23_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_23_address1 = zext_ln35_fu_1446_p1;
assign buff_B_23_ce0 = buff_B_23_ce0_local;
assign buff_B_23_ce1 = buff_B_23_ce1_local;
assign buff_B_24_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_24_address1 = zext_ln35_fu_1446_p1;
assign buff_B_24_ce0 = buff_B_24_ce0_local;
assign buff_B_24_ce1 = buff_B_24_ce1_local;
assign buff_B_25_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_25_address1 = zext_ln35_fu_1446_p1;
assign buff_B_25_ce0 = buff_B_25_ce0_local;
assign buff_B_25_ce1 = buff_B_25_ce1_local;
assign buff_B_26_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_26_address1 = zext_ln35_fu_1446_p1;
assign buff_B_26_ce0 = buff_B_26_ce0_local;
assign buff_B_26_ce1 = buff_B_26_ce1_local;
assign buff_B_27_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_27_address1 = zext_ln35_fu_1446_p1;
assign buff_B_27_ce0 = buff_B_27_ce0_local;
assign buff_B_27_ce1 = buff_B_27_ce1_local;
assign buff_B_28_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_28_address1 = zext_ln35_fu_1446_p1;
assign buff_B_28_ce0 = buff_B_28_ce0_local;
assign buff_B_28_ce1 = buff_B_28_ce1_local;
assign buff_B_29_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_29_address1 = zext_ln35_fu_1446_p1;
assign buff_B_29_ce0 = buff_B_29_ce0_local;
assign buff_B_29_ce1 = buff_B_29_ce1_local;
assign buff_B_2_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_2_address1 = zext_ln35_fu_1446_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_2_ce1 = buff_B_2_ce1_local;
assign buff_B_30_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_30_address1 = zext_ln35_fu_1446_p1;
assign buff_B_30_ce0 = buff_B_30_ce0_local;
assign buff_B_30_ce1 = buff_B_30_ce1_local;
assign buff_B_31_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_31_address1 = zext_ln35_fu_1446_p1;
assign buff_B_31_ce0 = buff_B_31_ce0_local;
assign buff_B_31_ce1 = buff_B_31_ce1_local;
assign buff_B_3_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_3_address1 = zext_ln35_fu_1446_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_3_ce1 = buff_B_3_ce1_local;
assign buff_B_4_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_4_address1 = zext_ln35_fu_1446_p1;
assign buff_B_4_ce0 = buff_B_4_ce0_local;
assign buff_B_4_ce1 = buff_B_4_ce1_local;
assign buff_B_5_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_5_address1 = zext_ln35_fu_1446_p1;
assign buff_B_5_ce0 = buff_B_5_ce0_local;
assign buff_B_5_ce1 = buff_B_5_ce1_local;
assign buff_B_6_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_6_address1 = zext_ln35_fu_1446_p1;
assign buff_B_6_ce0 = buff_B_6_ce0_local;
assign buff_B_6_ce1 = buff_B_6_ce1_local;
assign buff_B_7_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_7_address1 = zext_ln35_fu_1446_p1;
assign buff_B_7_ce0 = buff_B_7_ce0_local;
assign buff_B_7_ce1 = buff_B_7_ce1_local;
assign buff_B_8_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_8_address1 = zext_ln35_fu_1446_p1;
assign buff_B_8_ce0 = buff_B_8_ce0_local;
assign buff_B_8_ce1 = buff_B_8_ce1_local;
assign buff_B_9_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_9_address1 = zext_ln35_fu_1446_p1;
assign buff_B_9_ce0 = buff_B_9_ce0_local;
assign buff_B_9_ce1 = buff_B_9_ce1_local;
assign buff_B_address0 = zext_ln35_2_fu_1522_p1;
assign buff_B_address1 = zext_ln35_fu_1446_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_ce1 = buff_B_ce1_local;
assign first_iter_1_fu_1388_p2 = ((k_mid2_fu_1372_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_8356_p_ce = 1'b1;
assign grp_fu_8356_p_din0 = grp_fu_1208_p0;
assign grp_fu_8356_p_din1 = grp_fu_1208_p1;
assign grp_fu_8356_p_opcode = 2'd0;
assign grp_fu_8360_p_ce = 1'b1;
assign grp_fu_8360_p_din0 = grp_fu_1212_p0;
assign grp_fu_8360_p_din1 = grp_fu_1212_p1;
assign icmp_ln32_fu_1265_p2 = ((ap_sig_allocacmp_indvar_flatten23_load == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_1277_p2 = ((ap_sig_allocacmp_indvar_flatten9_load == 11'd512) ? 1'b1 : 1'b0);
assign k_mid2_fu_1372_p3 = ((or_ln10_fu_1350_p2[0:0] == 1'b1) ? select_ln10_1_fu_1329_p3 : 7'd0);
assign lshr_ln10_2_fu_1398_p4 = {{select_ln33_fu_1380_p3[5:3]}};
assign lshr_ln10_4_fu_1428_p4 = {{k_mid2_fu_1372_p3[5:2]}};
assign lshr_ln10_5_fu_1482_p4 = {{k_mid2_fu_1372_p3[5:3]}};
assign or_ln10_fu_1350_p2 = (xor_ln34_fu_1344_p2 | icmp_ln33_reg_1997);
assign select_ln10_1_fu_1329_p3 = ((icmp_ln33_reg_1997[0:0] == 1'b1) ? 7'd0 : k_fu_176);
assign select_ln10_fu_1322_p3 = ((icmp_ln33_reg_1997[0:0] == 1'b1) ? 7'd0 : j_fu_180);
assign select_ln32_fu_1355_p3 = ((icmp_ln33_reg_1997[0:0] == 1'b1) ? add_ln32_fu_1316_p2 : i_fu_188);
assign select_ln33_1_fu_1289_p3 = ((icmp_ln33_fu_1277_p2[0:0] == 1'b1) ? 11'd1 : add_ln33_1_fu_1283_p2);
assign select_ln33_fu_1380_p3 = ((or_ln10_fu_1350_p2[0:0] == 1'b1) ? select_ln10_fu_1322_p3 : add_ln33_fu_1366_p2);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = reg_1221;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = tmp1_2_address0_local;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = reg_1221;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = tmp1_3_address0_local;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = reg_1221;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_4_address0 = tmp1_4_address0_local;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_4_d0 = reg_1221;
assign tmp1_4_we0 = tmp1_4_we0_local;
assign tmp1_5_address0 = tmp1_5_address0_local;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_5_d0 = reg_1221;
assign tmp1_5_we0 = tmp1_5_we0_local;
assign tmp1_6_address0 = tmp1_6_address0_local;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_6_d0 = reg_1221;
assign tmp1_6_we0 = tmp1_6_we0_local;
assign tmp1_7_address0 = tmp1_7_address0_local;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_7_d0 = reg_1221;
assign tmp1_7_we0 = tmp1_7_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = reg_1221;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_1_fu_1336_p3 = k_fu_176[32'd6];
assign tmp_73_fu_1626_p17 = 'bx;
assign tmp_74_fu_1665_p17 = 'bx;
assign tmp_75_fu_1704_p17 = 'bx;
assign tmp_76_fu_1743_p17 = 'bx;
assign tmp_77_fu_1782_p17 = 'bx;
assign tmp_78_fu_1821_p17 = 'bx;
assign tmp_79_fu_1860_p17 = 'bx;
assign tmp_80_fu_1899_p17 = 'bx;
assign tmp_81_fu_1438_p3 = {{lshr_ln10_4_fu_1428_p4}, {lshr_ln10_2_fu_1398_p4}};
assign tmp_82_fu_1492_p3 = {{trunc_ln33_fu_1362_p1}, {lshr_ln10_5_fu_1482_p4}};
assign tmp_83_fu_1512_p4 = {{{lshr_ln10_5_fu_1482_p4}, {1'd1}}, {lshr_ln10_2_fu_1398_p4}};
assign tmp_84_cast_fu_1416_p1 = tmp_s_fu_1408_p3;
assign tmp_fu_1587_p17 = 'bx;
assign tmp_s_fu_1408_p3 = {{trunc_ln33_fu_1362_p1}, {lshr_ln10_2_fu_1398_p4}};
assign trunc_ln33_1_fu_1394_p1 = select_ln33_fu_1380_p3[2:0];
assign trunc_ln33_fu_1362_p1 = select_ln32_fu_1355_p3[5:0];
assign xor_ln34_fu_1344_p2 = (tmp_1_fu_1336_p3 ^ 1'd1);
assign zext_ln35_1_fu_1500_p1 = tmp_82_fu_1492_p3;
assign zext_ln35_2_fu_1522_p1 = tmp_83_fu_1512_p4;
assign zext_ln35_fu_1446_p1 = tmp_81_fu_1438_p3;
endmodule 