module syr2k_syr2k_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_q0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_q0,buff_A0_4_address0,buff_A0_4_ce0,buff_A0_4_q0,buff_A0_5_address0,buff_A0_5_ce0,buff_A0_5_q0,buff_A0_6_address0,buff_A0_6_ce0,buff_A0_6_q0,buff_A0_7_address0,buff_A0_7_ce0,buff_A0_7_q0,buff_B0_address0,buff_B0_ce0,buff_B0_q0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_q0,buff_B0_2_address0,buff_B0_2_ce0,buff_B0_2_q0,buff_B0_3_address0,buff_B0_3_ce0,buff_B0_3_q0,buff_B0_4_address0,buff_B0_4_ce0,buff_B0_4_q0,buff_B0_5_address0,buff_B0_5_ce0,buff_B0_5_q0,buff_B0_6_address0,buff_B0_6_ce0,buff_B0_6_q0,buff_B0_7_address0,buff_B0_7_ce0,buff_B0_7_q0,alpha,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_we0,tmp1_4_d0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_we0,tmp1_5_d0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_we0,tmp1_6_d0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_we0,tmp1_7_d0,tmp1_7_q0,tmp1_8_address0,tmp1_8_ce0,tmp1_8_we0,tmp1_8_d0,tmp1_8_q0,tmp1_9_address0,tmp1_9_ce0,tmp1_9_we0,tmp1_9_d0,tmp1_9_q0,tmp1_10_address0,tmp1_10_ce0,tmp1_10_we0,tmp1_10_d0,tmp1_10_q0,tmp1_11_address0,tmp1_11_ce0,tmp1_11_we0,tmp1_11_d0,tmp1_11_q0,tmp1_12_address0,tmp1_12_ce0,tmp1_12_we0,tmp1_12_d0,tmp1_12_q0,tmp1_13_address0,tmp1_13_ce0,tmp1_13_we0,tmp1_13_d0,tmp1_13_q0,tmp1_14_address0,tmp1_14_ce0,tmp1_14_we0,tmp1_14_d0,tmp1_14_q0,tmp1_15_address0,tmp1_15_ce0,tmp1_15_we0,tmp1_15_d0,tmp1_15_q0,grp_fu_888_p_din0,grp_fu_888_p_din1,grp_fu_888_p_opcode,grp_fu_888_p_dout0,grp_fu_888_p_ce,grp_fu_892_p_din0,grp_fu_892_p_din1,grp_fu_892_p_dout0,grp_fu_892_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [8:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [8:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
input  [31:0] buff_A0_2_q0;
output  [8:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
input  [31:0] buff_A0_3_q0;
output  [8:0] buff_A0_4_address0;
output   buff_A0_4_ce0;
input  [31:0] buff_A0_4_q0;
output  [8:0] buff_A0_5_address0;
output   buff_A0_5_ce0;
input  [31:0] buff_A0_5_q0;
output  [8:0] buff_A0_6_address0;
output   buff_A0_6_ce0;
input  [31:0] buff_A0_6_q0;
output  [8:0] buff_A0_7_address0;
output   buff_A0_7_ce0;
input  [31:0] buff_A0_7_q0;
output  [8:0] buff_B0_address0;
output   buff_B0_ce0;
input  [31:0] buff_B0_q0;
output  [8:0] buff_B0_1_address0;
output   buff_B0_1_ce0;
input  [31:0] buff_B0_1_q0;
output  [8:0] buff_B0_2_address0;
output   buff_B0_2_ce0;
input  [31:0] buff_B0_2_q0;
output  [8:0] buff_B0_3_address0;
output   buff_B0_3_ce0;
input  [31:0] buff_B0_3_q0;
output  [8:0] buff_B0_4_address0;
output   buff_B0_4_ce0;
input  [31:0] buff_B0_4_q0;
output  [8:0] buff_B0_5_address0;
output   buff_B0_5_ce0;
input  [31:0] buff_B0_5_q0;
output  [8:0] buff_B0_6_address0;
output   buff_B0_6_ce0;
input  [31:0] buff_B0_6_q0;
output  [8:0] buff_B0_7_address0;
output   buff_B0_7_ce0;
input  [31:0] buff_B0_7_q0;
input  [31:0] alpha;
output  [7:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [7:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
input  [31:0] tmp1_1_q0;
output  [7:0] tmp1_2_address0;
output   tmp1_2_ce0;
output   tmp1_2_we0;
output  [31:0] tmp1_2_d0;
input  [31:0] tmp1_2_q0;
output  [7:0] tmp1_3_address0;
output   tmp1_3_ce0;
output   tmp1_3_we0;
output  [31:0] tmp1_3_d0;
input  [31:0] tmp1_3_q0;
output  [7:0] tmp1_4_address0;
output   tmp1_4_ce0;
output   tmp1_4_we0;
output  [31:0] tmp1_4_d0;
input  [31:0] tmp1_4_q0;
output  [7:0] tmp1_5_address0;
output   tmp1_5_ce0;
output   tmp1_5_we0;
output  [31:0] tmp1_5_d0;
input  [31:0] tmp1_5_q0;
output  [7:0] tmp1_6_address0;
output   tmp1_6_ce0;
output   tmp1_6_we0;
output  [31:0] tmp1_6_d0;
input  [31:0] tmp1_6_q0;
output  [7:0] tmp1_7_address0;
output   tmp1_7_ce0;
output   tmp1_7_we0;
output  [31:0] tmp1_7_d0;
input  [31:0] tmp1_7_q0;
output  [7:0] tmp1_8_address0;
output   tmp1_8_ce0;
output   tmp1_8_we0;
output  [31:0] tmp1_8_d0;
input  [31:0] tmp1_8_q0;
output  [7:0] tmp1_9_address0;
output   tmp1_9_ce0;
output   tmp1_9_we0;
output  [31:0] tmp1_9_d0;
input  [31:0] tmp1_9_q0;
output  [7:0] tmp1_10_address0;
output   tmp1_10_ce0;
output   tmp1_10_we0;
output  [31:0] tmp1_10_d0;
input  [31:0] tmp1_10_q0;
output  [7:0] tmp1_11_address0;
output   tmp1_11_ce0;
output   tmp1_11_we0;
output  [31:0] tmp1_11_d0;
input  [31:0] tmp1_11_q0;
output  [7:0] tmp1_12_address0;
output   tmp1_12_ce0;
output   tmp1_12_we0;
output  [31:0] tmp1_12_d0;
input  [31:0] tmp1_12_q0;
output  [7:0] tmp1_13_address0;
output   tmp1_13_ce0;
output   tmp1_13_we0;
output  [31:0] tmp1_13_d0;
input  [31:0] tmp1_13_q0;
output  [7:0] tmp1_14_address0;
output   tmp1_14_ce0;
output   tmp1_14_we0;
output  [31:0] tmp1_14_d0;
input  [31:0] tmp1_14_q0;
output  [7:0] tmp1_15_address0;
output   tmp1_15_ce0;
output   tmp1_15_we0;
output  [31:0] tmp1_15_d0;
input  [31:0] tmp1_15_q0;
output  [31:0] grp_fu_888_p_din0;
output  [31:0] grp_fu_888_p_din1;
output  [1:0] grp_fu_888_p_opcode;
input  [31:0] grp_fu_888_p_dout0;
output   grp_fu_888_p_ce;
output  [31:0] grp_fu_892_p_din0;
output  [31:0] grp_fu_892_p_din1;
input  [31:0] grp_fu_892_p_dout0;
output   grp_fu_892_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln27_reg_1177;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_600;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage10_11001;
reg   [31:0] reg_606;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_658_p2;
wire   [0:0] icmp_ln28_fu_670_p2;
reg   [0:0] icmp_ln28_reg_1181;
wire   [0:0] first_iter_1_fu_785_p2;
reg   [0:0] first_iter_1_reg_1189;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] trunc_ln27_fu_791_p1;
reg   [0:0] trunc_ln27_reg_1193;
reg   [0:0] trunc_ln27_reg_1193_pp0_iter1_reg;
wire   [2:0] trunc_ln28_1_fu_795_p1;
reg   [2:0] trunc_ln28_1_reg_1205;
reg   [2:0] trunc_ln28_1_reg_1205_pp0_iter1_reg;
reg   [7:0] tmp1_addr_1_reg_1210;
reg   [7:0] tmp1_addr_1_reg_1210_pp0_iter1_reg;
reg   [7:0] tmp1_1_addr_1_reg_1215;
reg   [7:0] tmp1_1_addr_1_reg_1215_pp0_iter1_reg;
reg   [7:0] tmp1_2_addr_1_reg_1220;
reg   [7:0] tmp1_2_addr_1_reg_1220_pp0_iter1_reg;
reg   [7:0] tmp1_3_addr_1_reg_1225;
reg   [7:0] tmp1_3_addr_1_reg_1225_pp0_iter1_reg;
reg   [7:0] tmp1_4_addr_1_reg_1230;
reg   [7:0] tmp1_4_addr_1_reg_1230_pp0_iter1_reg;
reg   [7:0] tmp1_5_addr_1_reg_1235;
reg   [7:0] tmp1_5_addr_1_reg_1235_pp0_iter1_reg;
reg   [7:0] tmp1_6_addr_1_reg_1240;
reg   [7:0] tmp1_6_addr_1_reg_1240_pp0_iter1_reg;
reg   [7:0] tmp1_7_addr_1_reg_1245;
reg   [7:0] tmp1_7_addr_1_reg_1245_pp0_iter1_reg;
reg   [7:0] tmp1_8_addr_1_reg_1250;
reg   [7:0] tmp1_8_addr_1_reg_1250_pp0_iter1_reg;
reg   [7:0] tmp1_9_addr_1_reg_1255;
reg   [7:0] tmp1_9_addr_1_reg_1255_pp0_iter1_reg;
reg   [7:0] tmp1_10_addr_1_reg_1260;
reg   [7:0] tmp1_10_addr_1_reg_1260_pp0_iter1_reg;
reg   [7:0] tmp1_11_addr_1_reg_1265;
reg   [7:0] tmp1_11_addr_1_reg_1265_pp0_iter1_reg;
reg   [7:0] tmp1_12_addr_1_reg_1270;
reg   [7:0] tmp1_12_addr_1_reg_1270_pp0_iter1_reg;
reg   [7:0] tmp1_13_addr_1_reg_1275;
reg   [7:0] tmp1_13_addr_1_reg_1275_pp0_iter1_reg;
reg   [7:0] tmp1_14_addr_1_reg_1280;
reg   [7:0] tmp1_14_addr_1_reg_1280_pp0_iter1_reg;
reg   [7:0] tmp1_15_addr_1_reg_1285;
reg   [7:0] tmp1_15_addr_1_reg_1285_pp0_iter1_reg;
wire   [2:0] trunc_ln30_fu_847_p1;
reg   [2:0] trunc_ln30_reg_1290;
reg   [0:0] tmp_12_reg_1378;
reg   [0:0] tmp_12_reg_1378_pp0_iter1_reg;
wire   [31:0] tmp_8_fu_986_p19;
reg   [31:0] tmp_8_reg_1382;
wire   [31:0] tmp_1_fu_1025_p11;
reg   [31:0] tmp_1_reg_1387;
wire   [31:0] tmp_2_fu_1048_p11;
reg   [31:0] tmp_2_reg_1392;
wire   [31:0] tmp_3_fu_1071_p11;
reg   [31:0] tmp_3_reg_1397;
wire   [31:0] tmp_4_fu_1094_p11;
reg   [31:0] tmp_4_reg_1402;
reg   [31:0] mul_1_reg_1407;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] mul74_1_reg_1417;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_9_cast_fu_827_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln31_fu_869_p1;
wire   [63:0] zext_ln31_1_fu_889_p1;
reg   [6:0] k_fu_146;
wire   [6:0] add_ln30_fu_901_p2;
wire    ap_loop_init;
reg   [6:0] j_fu_150;
wire   [6:0] select_ln28_fu_773_p3;
reg   [12:0] indvar_flatten7_fu_154;
wire   [12:0] select_ln28_1_fu_682_p3;
reg   [12:0] ap_sig_allocacmp_indvar_flatten7_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_1_fu_158;
wire   [6:0] select_ln27_fu_748_p3;
reg   [17:0] indvar_flatten21_fu_162;
wire   [17:0] add_ln27_1_fu_664_p2;
reg   [17:0] ap_sig_allocacmp_indvar_flatten21_load;
reg   [31:0] empty_fu_166;
wire    ap_block_pp0_stage11;
reg    tmp1_ce0_local;
reg   [7:0] tmp1_address0_local;
reg    tmp1_we0_local;
reg    ap_predicate_pred945_state26;
wire    ap_block_pp0_stage10;
reg    tmp1_1_ce0_local;
reg   [7:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
reg    ap_predicate_pred961_state26;
reg    tmp1_2_ce0_local;
reg   [7:0] tmp1_2_address0_local;
reg    tmp1_2_we0_local;
reg    ap_predicate_pred973_state26;
reg    tmp1_3_ce0_local;
reg   [7:0] tmp1_3_address0_local;
reg    tmp1_3_we0_local;
reg    ap_predicate_pred982_state26;
reg    tmp1_4_ce0_local;
reg   [7:0] tmp1_4_address0_local;
reg    tmp1_4_we0_local;
reg    ap_predicate_pred994_state26;
reg    tmp1_5_ce0_local;
reg   [7:0] tmp1_5_address0_local;
reg    tmp1_5_we0_local;
reg    ap_predicate_pred1003_state26;
reg    tmp1_6_ce0_local;
reg   [7:0] tmp1_6_address0_local;
reg    tmp1_6_we0_local;
reg    ap_predicate_pred1015_state26;
reg    tmp1_7_ce0_local;
reg   [7:0] tmp1_7_address0_local;
reg    tmp1_7_we0_local;
reg    ap_predicate_pred1024_state26;
reg    tmp1_8_ce0_local;
reg   [7:0] tmp1_8_address0_local;
reg    tmp1_8_we0_local;
reg    ap_predicate_pred1036_state26;
reg    tmp1_9_ce0_local;
reg   [7:0] tmp1_9_address0_local;
reg    tmp1_9_we0_local;
reg    ap_predicate_pred1045_state26;
reg    tmp1_10_ce0_local;
reg   [7:0] tmp1_10_address0_local;
reg    tmp1_10_we0_local;
reg    ap_predicate_pred1057_state26;
reg    tmp1_11_ce0_local;
reg   [7:0] tmp1_11_address0_local;
reg    tmp1_11_we0_local;
reg    ap_predicate_pred1066_state26;
reg    tmp1_12_ce0_local;
reg   [7:0] tmp1_12_address0_local;
reg    tmp1_12_we0_local;
reg    ap_predicate_pred1078_state26;
reg    tmp1_13_ce0_local;
reg   [7:0] tmp1_13_address0_local;
reg    tmp1_13_we0_local;
reg    ap_predicate_pred1087_state26;
reg    tmp1_14_ce0_local;
reg   [7:0] tmp1_14_address0_local;
reg    tmp1_14_we0_local;
reg    ap_predicate_pred1099_state26;
reg    tmp1_15_ce0_local;
reg   [7:0] tmp1_15_address0_local;
reg    tmp1_15_we0_local;
reg    ap_predicate_pred1108_state26;
reg    buff_A0_ce0_local;
reg    buff_A0_2_ce0_local;
reg    buff_A0_4_ce0_local;
reg    buff_A0_6_ce0_local;
reg    buff_B0_ce0_local;
reg    buff_B0_2_ce0_local;
reg    buff_B0_4_ce0_local;
reg    buff_B0_6_ce0_local;
reg    buff_A0_1_ce0_local;
reg    buff_A0_3_ce0_local;
reg    buff_A0_5_ce0_local;
reg    buff_A0_7_ce0_local;
reg    buff_B0_1_ce0_local;
reg    buff_B0_3_ce0_local;
reg    buff_B0_5_ce0_local;
reg    buff_B0_7_ce0_local;
reg   [31:0] grp_fu_592_p0;
reg   [31:0] grp_fu_592_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [31:0] grp_fu_596_p0;
reg   [31:0] grp_fu_596_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage7;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8;
wire   [12:0] add_ln28_1_fu_676_p2;
wire   [0:0] tmp_fu_729_p3;
wire   [0:0] xor_ln30_fu_737_p2;
wire   [6:0] add_ln27_fu_709_p2;
wire   [6:0] select_ln5_fu_715_p3;
wire   [0:0] or_ln5_fu_743_p2;
wire   [6:0] select_ln5_1_fu_722_p3;
wire   [6:0] add_ln28_fu_759_p2;
wire   [6:0] k_mid2_fu_765_p3;
wire   [4:0] tmp_7_fu_809_p4;
wire   [2:0] lshr_ln5_4_fu_799_p4;
wire   [7:0] tmp_9_fu_819_p3;
wire   [5:0] trunc_ln28_fu_755_p1;
wire   [2:0] lshr_ln5_7_fu_851_p4;
wire   [8:0] tmp_10_fu_861_p3;
wire   [5:0] empty_11_fu_781_p1;
wire   [8:0] tmp_11_fu_881_p3;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_8_fu_986_p2;
wire   [31:0] tmp_8_fu_986_p4;
wire   [31:0] tmp_8_fu_986_p6;
wire   [31:0] tmp_8_fu_986_p8;
wire   [31:0] tmp_8_fu_986_p10;
wire   [31:0] tmp_8_fu_986_p12;
wire   [31:0] tmp_8_fu_986_p14;
wire   [31:0] tmp_8_fu_986_p16;
wire   [31:0] tmp_8_fu_986_p17;
wire   [31:0] tmp_1_fu_1025_p9;
wire   [31:0] tmp_2_fu_1048_p9;
wire   [31:0] tmp_3_fu_1071_p9;
wire   [31:0] tmp_4_fu_1094_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [14:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_condition_1554;
wire   [2:0] tmp_8_fu_986_p1;
wire   [2:0] tmp_8_fu_986_p3;
wire   [2:0] tmp_8_fu_986_p5;
wire   [2:0] tmp_8_fu_986_p7;
wire  signed [2:0] tmp_8_fu_986_p9;
wire  signed [2:0] tmp_8_fu_986_p11;
wire  signed [2:0] tmp_8_fu_986_p13;
wire  signed [2:0] tmp_8_fu_986_p15;
wire   [2:0] tmp_1_fu_1025_p1;
wire   [2:0] tmp_1_fu_1025_p3;
wire  signed [2:0] tmp_1_fu_1025_p5;
wire  signed [2:0] tmp_1_fu_1025_p7;
wire   [2:0] tmp_2_fu_1048_p1;
wire   [2:0] tmp_2_fu_1048_p3;
wire  signed [2:0] tmp_2_fu_1048_p5;
wire  signed [2:0] tmp_2_fu_1048_p7;
wire   [2:0] tmp_3_fu_1071_p1;
wire   [2:0] tmp_3_fu_1071_p3;
wire  signed [2:0] tmp_3_fu_1071_p5;
wire  signed [2:0] tmp_3_fu_1071_p7;
wire   [2:0] tmp_4_fu_1094_p1;
wire   [2:0] tmp_4_fu_1094_p3;
wire  signed [2:0] tmp_4_fu_1094_p5;
wire  signed [2:0] tmp_4_fu_1094_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_146 = 7'd0;
#0 j_fu_150 = 7'd0;
#0 indvar_flatten7_fu_154 = 13'd0;
#0 i_1_fu_158 = 7'd0;
#0 indvar_flatten21_fu_162 = 18'd0;
#0 empty_fu_166 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U115(.din0(tmp_8_fu_986_p2),.din1(tmp_8_fu_986_p4),.din2(tmp_8_fu_986_p6),.din3(tmp_8_fu_986_p8),.din4(tmp_8_fu_986_p10),.din5(tmp_8_fu_986_p12),.din6(tmp_8_fu_986_p14),.din7(tmp_8_fu_986_p16),.def(tmp_8_fu_986_p17),.sel(trunc_ln28_1_reg_1205),.dout(tmp_8_fu_986_p19));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U116(.din0(buff_A0_q0),.din1(buff_A0_2_q0),.din2(buff_A0_4_q0),.din3(buff_A0_6_q0),.def(tmp_1_fu_1025_p9),.sel(trunc_ln30_reg_1290),.dout(tmp_1_fu_1025_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U117(.din0(buff_B0_q0),.din1(buff_B0_2_q0),.din2(buff_B0_4_q0),.din3(buff_B0_6_q0),.def(tmp_2_fu_1048_p9),.sel(trunc_ln30_reg_1290),.dout(tmp_2_fu_1048_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U118(.din0(buff_A0_1_q0),.din1(buff_A0_3_q0),.din2(buff_A0_5_q0),.din3(buff_A0_7_q0),.def(tmp_3_fu_1071_p9),.sel(trunc_ln30_reg_1290),.dout(tmp_3_fu_1071_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U119(.din0(buff_B0_1_q0),.din1(buff_B0_3_q0),.din2(buff_B0_5_q0),.din3(buff_B0_7_q0),.def(tmp_4_fu_1094_p9),.sel(trunc_ln30_reg_1290),.dout(tmp_4_fu_1094_p11));
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        if ((1'b1 == ap_condition_1554)) begin
            empty_fu_166 <= tmp_8_reg_1382;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_166 <= reg_606;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_158 <= 7'd0;
    end else if (((icmp_ln27_reg_1177 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_1_fu_158 <= select_ln27_fu_748_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_658_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten21_fu_162 <= add_ln27_1_fu_664_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten21_fu_162 <= 18'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_658_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten7_fu_154 <= select_ln28_1_fu_682_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten7_fu_154 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_150 <= 7'd0;
    end else if (((icmp_ln27_reg_1177 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_150 <= select_ln28_fu_773_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_146 <= 7'd0;
    end else if (((icmp_ln27_reg_1177 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_146 <= add_ln30_fu_901_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_predicate_pred1003_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd2) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd1));
        ap_predicate_pred1015_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd3) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd0));
        ap_predicate_pred1024_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd3) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd1));
        ap_predicate_pred1036_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd4) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd0));
        ap_predicate_pred1045_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd4) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd1));
        ap_predicate_pred1057_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd5) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd0));
        ap_predicate_pred1066_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd5) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd1));
        ap_predicate_pred1078_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd6) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd0));
        ap_predicate_pred1087_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd6) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd1));
        ap_predicate_pred1099_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd7) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd0));
        ap_predicate_pred1108_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd7) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd1));
        ap_predicate_pred945_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd0) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd0));
        ap_predicate_pred961_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd0) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd1));
        ap_predicate_pred973_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd1) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd0));
        ap_predicate_pred982_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd1) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd1));
        ap_predicate_pred994_state26 <= ((tmp_12_reg_1378_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1205_pp0_iter1_reg == 3'd2) & (trunc_ln27_reg_1193_pp0_iter1_reg == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        first_iter_1_reg_1189 <= first_iter_1_fu_785_p2;
        tmp1_10_addr_1_reg_1260 <= tmp_9_cast_fu_827_p1;
        tmp1_10_addr_1_reg_1260_pp0_iter1_reg <= tmp1_10_addr_1_reg_1260;
        tmp1_11_addr_1_reg_1265 <= tmp_9_cast_fu_827_p1;
        tmp1_11_addr_1_reg_1265_pp0_iter1_reg <= tmp1_11_addr_1_reg_1265;
        tmp1_12_addr_1_reg_1270 <= tmp_9_cast_fu_827_p1;
        tmp1_12_addr_1_reg_1270_pp0_iter1_reg <= tmp1_12_addr_1_reg_1270;
        tmp1_13_addr_1_reg_1275 <= tmp_9_cast_fu_827_p1;
        tmp1_13_addr_1_reg_1275_pp0_iter1_reg <= tmp1_13_addr_1_reg_1275;
        tmp1_14_addr_1_reg_1280 <= tmp_9_cast_fu_827_p1;
        tmp1_14_addr_1_reg_1280_pp0_iter1_reg <= tmp1_14_addr_1_reg_1280;
        tmp1_15_addr_1_reg_1285 <= tmp_9_cast_fu_827_p1;
        tmp1_15_addr_1_reg_1285_pp0_iter1_reg <= tmp1_15_addr_1_reg_1285;
        tmp1_1_addr_1_reg_1215 <= tmp_9_cast_fu_827_p1;
        tmp1_1_addr_1_reg_1215_pp0_iter1_reg <= tmp1_1_addr_1_reg_1215;
        tmp1_2_addr_1_reg_1220 <= tmp_9_cast_fu_827_p1;
        tmp1_2_addr_1_reg_1220_pp0_iter1_reg <= tmp1_2_addr_1_reg_1220;
        tmp1_3_addr_1_reg_1225 <= tmp_9_cast_fu_827_p1;
        tmp1_3_addr_1_reg_1225_pp0_iter1_reg <= tmp1_3_addr_1_reg_1225;
        tmp1_4_addr_1_reg_1230 <= tmp_9_cast_fu_827_p1;
        tmp1_4_addr_1_reg_1230_pp0_iter1_reg <= tmp1_4_addr_1_reg_1230;
        tmp1_5_addr_1_reg_1235 <= tmp_9_cast_fu_827_p1;
        tmp1_5_addr_1_reg_1235_pp0_iter1_reg <= tmp1_5_addr_1_reg_1235;
        tmp1_6_addr_1_reg_1240 <= tmp_9_cast_fu_827_p1;
        tmp1_6_addr_1_reg_1240_pp0_iter1_reg <= tmp1_6_addr_1_reg_1240;
        tmp1_7_addr_1_reg_1245 <= tmp_9_cast_fu_827_p1;
        tmp1_7_addr_1_reg_1245_pp0_iter1_reg <= tmp1_7_addr_1_reg_1245;
        tmp1_8_addr_1_reg_1250 <= tmp_9_cast_fu_827_p1;
        tmp1_8_addr_1_reg_1250_pp0_iter1_reg <= tmp1_8_addr_1_reg_1250;
        tmp1_9_addr_1_reg_1255 <= tmp_9_cast_fu_827_p1;
        tmp1_9_addr_1_reg_1255_pp0_iter1_reg <= tmp1_9_addr_1_reg_1255;
        tmp1_addr_1_reg_1210 <= tmp_9_cast_fu_827_p1;
        tmp1_addr_1_reg_1210_pp0_iter1_reg <= tmp1_addr_1_reg_1210;
        tmp_12_reg_1378 <= add_ln30_fu_901_p2[32'd6];
        tmp_12_reg_1378_pp0_iter1_reg <= tmp_12_reg_1378;
        trunc_ln27_reg_1193 <= trunc_ln27_fu_791_p1;
        trunc_ln27_reg_1193_pp0_iter1_reg <= trunc_ln27_reg_1193;
        trunc_ln28_1_reg_1205 <= trunc_ln28_1_fu_795_p1;
        trunc_ln28_1_reg_1205_pp0_iter1_reg <= trunc_ln28_1_reg_1205;
        trunc_ln30_reg_1290 <= trunc_ln30_fu_847_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_1177 <= icmp_ln27_fu_658_p2;
        icmp_ln28_reg_1181 <= icmp_ln28_fu_670_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul74_1_reg_1417 <= grp_fu_892_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_1_reg_1407 <= grp_fu_892_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_600 <= grp_fu_892_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_606 <= grp_fu_888_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_1_reg_1387 <= tmp_1_fu_1025_p11;
        tmp_2_reg_1392 <= tmp_2_fu_1048_p11;
        tmp_3_reg_1397 <= tmp_3_fu_1071_p11;
        tmp_4_reg_1402 <= tmp_4_fu_1094_p11;
        tmp_8_reg_1382 <= tmp_8_fu_986_p19;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_1177 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten21_load = 18'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten21_load = indvar_flatten21_fu_162;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten7_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten7_load = indvar_flatten7_fu_154;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_2_ce0_local = 1'b1;
    end else begin
        buff_A0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_3_ce0_local = 1'b1;
    end else begin
        buff_A0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_4_ce0_local = 1'b1;
    end else begin
        buff_A0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_5_ce0_local = 1'b1;
    end else begin
        buff_A0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_6_ce0_local = 1'b1;
    end else begin
        buff_A0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_7_ce0_local = 1'b1;
    end else begin
        buff_A0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B0_1_ce0_local = 1'b1;
    end else begin
        buff_B0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B0_2_ce0_local = 1'b1;
    end else begin
        buff_B0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B0_3_ce0_local = 1'b1;
    end else begin
        buff_B0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B0_4_ce0_local = 1'b1;
    end else begin
        buff_B0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B0_5_ce0_local = 1'b1;
    end else begin
        buff_B0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B0_6_ce0_local = 1'b1;
    end else begin
        buff_B0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B0_7_ce0_local = 1'b1;
    end else begin
        buff_B0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B0_ce0_local = 1'b1;
    end else begin
        buff_B0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_592_p0 = reg_606;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_592_p0 = empty_fu_166;
    end else begin
        grp_fu_592_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_592_p1 = mul74_1_reg_1417;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_592_p1 = reg_600;
    end else begin
        grp_fu_592_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_596_p0 = mul_1_reg_1407;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_596_p0 = reg_600;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_596_p0 = tmp_3_reg_1397;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_596_p0 = tmp_1_reg_1387;
        end else begin
            grp_fu_596_p0 = 'bx;
        end
    end else begin
        grp_fu_596_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_596_p1 = tmp_4_reg_1402;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_596_p1 = tmp_2_reg_1392;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_596_p1 = alpha;
    end else begin
        grp_fu_596_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_10_address0_local = tmp1_10_addr_1_reg_1260_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_10_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_10_ce0_local = 1'b1;
    end else begin
        tmp1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_predicate_pred1057_state26 == 1'b1))) begin
        tmp1_10_we0_local = 1'b1;
    end else begin
        tmp1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_11_address0_local = tmp1_11_addr_1_reg_1265_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_11_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_11_ce0_local = 1'b1;
    end else begin
        tmp1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_predicate_pred1066_state26 == 1'b1))) begin
        tmp1_11_we0_local = 1'b1;
    end else begin
        tmp1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_12_address0_local = tmp1_12_addr_1_reg_1270_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_12_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_12_ce0_local = 1'b1;
    end else begin
        tmp1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_predicate_pred1078_state26 == 1'b1))) begin
        tmp1_12_we0_local = 1'b1;
    end else begin
        tmp1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_13_address0_local = tmp1_13_addr_1_reg_1275_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_13_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_13_ce0_local = 1'b1;
    end else begin
        tmp1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_predicate_pred1087_state26 == 1'b1))) begin
        tmp1_13_we0_local = 1'b1;
    end else begin
        tmp1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_14_address0_local = tmp1_14_addr_1_reg_1280_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_14_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_14_ce0_local = 1'b1;
    end else begin
        tmp1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_predicate_pred1099_state26 == 1'b1))) begin
        tmp1_14_we0_local = 1'b1;
    end else begin
        tmp1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_15_address0_local = tmp1_15_addr_1_reg_1285_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_15_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_15_ce0_local = 1'b1;
    end else begin
        tmp1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_predicate_pred1108_state26 == 1'b1))) begin
        tmp1_15_we0_local = 1'b1;
    end else begin
        tmp1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_1_address0_local = tmp1_1_addr_1_reg_1215_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_1_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred961_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_2_address0_local = tmp1_2_addr_1_reg_1220_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_2_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred973_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_3_address0_local = tmp1_3_addr_1_reg_1225_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_3_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred982_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_4_address0_local = tmp1_4_addr_1_reg_1230_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_4_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred994_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_4_we0_local = 1'b1;
    end else begin
        tmp1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_5_address0_local = tmp1_5_addr_1_reg_1235_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_5_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_predicate_pred1003_state26 == 1'b1))) begin
        tmp1_5_we0_local = 1'b1;
    end else begin
        tmp1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_6_address0_local = tmp1_6_addr_1_reg_1240_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_6_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_predicate_pred1015_state26 == 1'b1))) begin
        tmp1_6_we0_local = 1'b1;
    end else begin
        tmp1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_7_address0_local = tmp1_7_addr_1_reg_1245_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_7_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_predicate_pred1024_state26 == 1'b1))) begin
        tmp1_7_we0_local = 1'b1;
    end else begin
        tmp1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_8_address0_local = tmp1_8_addr_1_reg_1250_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_8_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_8_ce0_local = 1'b1;
    end else begin
        tmp1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_predicate_pred1036_state26 == 1'b1))) begin
        tmp1_8_we0_local = 1'b1;
    end else begin
        tmp1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_9_address0_local = tmp1_9_addr_1_reg_1255_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_9_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_9_ce0_local = 1'b1;
    end else begin
        tmp1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_predicate_pred1045_state26 == 1'b1))) begin
        tmp1_9_we0_local = 1'b1;
    end else begin
        tmp1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_address0_local = tmp1_addr_1_reg_1210_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_address0_local = tmp_9_cast_fu_827_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred945_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_664_p2 = (ap_sig_allocacmp_indvar_flatten21_load + 18'd1);
assign add_ln27_fu_709_p2 = (i_1_fu_158 + 7'd1);
assign add_ln28_1_fu_676_p2 = (ap_sig_allocacmp_indvar_flatten7_load + 13'd1);
assign add_ln28_fu_759_p2 = (select_ln5_fu_715_p3 + 7'd1);
assign add_ln30_fu_901_p2 = (k_mid2_fu_765_p3 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1554 = ((first_iter_1_reg_1189 == 1'd1) & (icmp_ln27_reg_1177 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign buff_A0_1_address0 = zext_ln31_fu_869_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_2_address0 = zext_ln31_fu_869_p1;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_3_address0 = zext_ln31_fu_869_p1;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_4_address0 = zext_ln31_fu_869_p1;
assign buff_A0_4_ce0 = buff_A0_4_ce0_local;
assign buff_A0_5_address0 = zext_ln31_fu_869_p1;
assign buff_A0_5_ce0 = buff_A0_5_ce0_local;
assign buff_A0_6_address0 = zext_ln31_fu_869_p1;
assign buff_A0_6_ce0 = buff_A0_6_ce0_local;
assign buff_A0_7_address0 = zext_ln31_fu_869_p1;
assign buff_A0_7_ce0 = buff_A0_7_ce0_local;
assign buff_A0_address0 = zext_ln31_fu_869_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_B0_1_address0 = zext_ln31_1_fu_889_p1;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_2_address0 = zext_ln31_1_fu_889_p1;
assign buff_B0_2_ce0 = buff_B0_2_ce0_local;
assign buff_B0_3_address0 = zext_ln31_1_fu_889_p1;
assign buff_B0_3_ce0 = buff_B0_3_ce0_local;
assign buff_B0_4_address0 = zext_ln31_1_fu_889_p1;
assign buff_B0_4_ce0 = buff_B0_4_ce0_local;
assign buff_B0_5_address0 = zext_ln31_1_fu_889_p1;
assign buff_B0_5_ce0 = buff_B0_5_ce0_local;
assign buff_B0_6_address0 = zext_ln31_1_fu_889_p1;
assign buff_B0_6_ce0 = buff_B0_6_ce0_local;
assign buff_B0_7_address0 = zext_ln31_1_fu_889_p1;
assign buff_B0_7_ce0 = buff_B0_7_ce0_local;
assign buff_B0_address0 = zext_ln31_1_fu_889_p1;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign empty_11_fu_781_p1 = select_ln28_fu_773_p3[5:0];
assign first_iter_1_fu_785_p2 = ((k_mid2_fu_765_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_888_p_ce = 1'b1;
assign grp_fu_888_p_din0 = grp_fu_592_p0;
assign grp_fu_888_p_din1 = grp_fu_592_p1;
assign grp_fu_888_p_opcode = 2'd0;
assign grp_fu_892_p_ce = 1'b1;
assign grp_fu_892_p_din0 = grp_fu_596_p0;
assign grp_fu_892_p_din1 = grp_fu_596_p1;
assign icmp_ln27_fu_658_p2 = ((ap_sig_allocacmp_indvar_flatten21_load == 18'd131072) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_670_p2 = ((ap_sig_allocacmp_indvar_flatten7_load == 13'd2048) ? 1'b1 : 1'b0);
assign k_mid2_fu_765_p3 = ((or_ln5_fu_743_p2[0:0] == 1'b1) ? select_ln5_1_fu_722_p3 : 7'd0);
assign lshr_ln5_4_fu_799_p4 = {{select_ln28_fu_773_p3[5:3]}};
assign lshr_ln5_7_fu_851_p4 = {{k_mid2_fu_765_p3[5:3]}};
assign or_ln5_fu_743_p2 = (xor_ln30_fu_737_p2 | icmp_ln28_reg_1181);
assign select_ln27_fu_748_p3 = ((icmp_ln28_reg_1181[0:0] == 1'b1) ? add_ln27_fu_709_p2 : i_1_fu_158);
assign select_ln28_1_fu_682_p3 = ((icmp_ln28_fu_670_p2[0:0] == 1'b1) ? 13'd1 : add_ln28_1_fu_676_p2);
assign select_ln28_fu_773_p3 = ((or_ln5_fu_743_p2[0:0] == 1'b1) ? select_ln5_fu_715_p3 : add_ln28_fu_759_p2);
assign select_ln5_1_fu_722_p3 = ((icmp_ln28_reg_1181[0:0] == 1'b1) ? 7'd0 : k_fu_146);
assign select_ln5_fu_715_p3 = ((icmp_ln28_reg_1181[0:0] == 1'b1) ? 7'd0 : j_fu_150);
assign tmp1_10_address0 = tmp1_10_address0_local;
assign tmp1_10_ce0 = tmp1_10_ce0_local;
assign tmp1_10_d0 = reg_606;
assign tmp1_10_we0 = tmp1_10_we0_local;
assign tmp1_11_address0 = tmp1_11_address0_local;
assign tmp1_11_ce0 = tmp1_11_ce0_local;
assign tmp1_11_d0 = reg_606;
assign tmp1_11_we0 = tmp1_11_we0_local;
assign tmp1_12_address0 = tmp1_12_address0_local;
assign tmp1_12_ce0 = tmp1_12_ce0_local;
assign tmp1_12_d0 = reg_606;
assign tmp1_12_we0 = tmp1_12_we0_local;
assign tmp1_13_address0 = tmp1_13_address0_local;
assign tmp1_13_ce0 = tmp1_13_ce0_local;
assign tmp1_13_d0 = reg_606;
assign tmp1_13_we0 = tmp1_13_we0_local;
assign tmp1_14_address0 = tmp1_14_address0_local;
assign tmp1_14_ce0 = tmp1_14_ce0_local;
assign tmp1_14_d0 = reg_606;
assign tmp1_14_we0 = tmp1_14_we0_local;
assign tmp1_15_address0 = tmp1_15_address0_local;
assign tmp1_15_ce0 = tmp1_15_ce0_local;
assign tmp1_15_d0 = reg_606;
assign tmp1_15_we0 = tmp1_15_we0_local;
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = reg_606;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = tmp1_2_address0_local;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = reg_606;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = tmp1_3_address0_local;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = reg_606;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_4_address0 = tmp1_4_address0_local;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_4_d0 = reg_606;
assign tmp1_4_we0 = tmp1_4_we0_local;
assign tmp1_5_address0 = tmp1_5_address0_local;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_5_d0 = reg_606;
assign tmp1_5_we0 = tmp1_5_we0_local;
assign tmp1_6_address0 = tmp1_6_address0_local;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_6_d0 = reg_606;
assign tmp1_6_we0 = tmp1_6_we0_local;
assign tmp1_7_address0 = tmp1_7_address0_local;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_7_d0 = reg_606;
assign tmp1_7_we0 = tmp1_7_we0_local;
assign tmp1_8_address0 = tmp1_8_address0_local;
assign tmp1_8_ce0 = tmp1_8_ce0_local;
assign tmp1_8_d0 = reg_606;
assign tmp1_8_we0 = tmp1_8_we0_local;
assign tmp1_9_address0 = tmp1_9_address0_local;
assign tmp1_9_ce0 = tmp1_9_ce0_local;
assign tmp1_9_d0 = reg_606;
assign tmp1_9_we0 = tmp1_9_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = reg_606;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_10_fu_861_p3 = {{trunc_ln28_fu_755_p1}, {lshr_ln5_7_fu_851_p4}};
assign tmp_11_fu_881_p3 = {{empty_11_fu_781_p1}, {lshr_ln5_7_fu_851_p4}};
assign tmp_1_fu_1025_p9 = 'bx;
assign tmp_2_fu_1048_p9 = 'bx;
assign tmp_3_fu_1071_p9 = 'bx;
assign tmp_4_fu_1094_p9 = 'bx;
assign tmp_7_fu_809_p4 = {{select_ln27_fu_748_p3[5:1]}};
assign tmp_8_fu_986_p10 = ((trunc_ln27_reg_1193[0:0] == 1'b1) ? tmp1_9_q0 : tmp1_8_q0);
assign tmp_8_fu_986_p12 = ((trunc_ln27_reg_1193[0:0] == 1'b1) ? tmp1_11_q0 : tmp1_10_q0);
assign tmp_8_fu_986_p14 = ((trunc_ln27_reg_1193[0:0] == 1'b1) ? tmp1_13_q0 : tmp1_12_q0);
assign tmp_8_fu_986_p16 = ((trunc_ln27_reg_1193[0:0] == 1'b1) ? tmp1_15_q0 : tmp1_14_q0);
assign tmp_8_fu_986_p17 = 'bx;
assign tmp_8_fu_986_p2 = ((trunc_ln27_reg_1193[0:0] == 1'b1) ? tmp1_1_q0 : tmp1_q0);
assign tmp_8_fu_986_p4 = ((trunc_ln27_reg_1193[0:0] == 1'b1) ? tmp1_3_q0 : tmp1_2_q0);
assign tmp_8_fu_986_p6 = ((trunc_ln27_reg_1193[0:0] == 1'b1) ? tmp1_5_q0 : tmp1_4_q0);
assign tmp_8_fu_986_p8 = ((trunc_ln27_reg_1193[0:0] == 1'b1) ? tmp1_7_q0 : tmp1_6_q0);
assign tmp_9_cast_fu_827_p1 = tmp_9_fu_819_p3;
assign tmp_9_fu_819_p3 = {{tmp_7_fu_809_p4}, {lshr_ln5_4_fu_799_p4}};
assign tmp_fu_729_p3 = k_fu_146[32'd6];
assign trunc_ln27_fu_791_p1 = select_ln27_fu_748_p3[0:0];
assign trunc_ln28_1_fu_795_p1 = select_ln28_fu_773_p3[2:0];
assign trunc_ln28_fu_755_p1 = select_ln27_fu_748_p3[5:0];
assign trunc_ln30_fu_847_p1 = k_mid2_fu_765_p3[2:0];
assign xor_ln30_fu_737_p2 = (tmp_fu_729_p3 ^ 1'd1);
assign zext_ln31_1_fu_889_p1 = tmp_11_fu_881_p3;
assign zext_ln31_fu_869_p1 = tmp_10_fu_861_p3;
endmodule 