
module mvt_mvt_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_A_16_address0,buff_A_16_ce0,buff_A_16_q0,buff_A_17_address0,buff_A_17_ce0,buff_A_17_q0,buff_A_18_address0,buff_A_18_ce0,buff_A_18_q0,buff_A_19_address0,buff_A_19_ce0,buff_A_19_q0,buff_A_20_address0,buff_A_20_ce0,buff_A_20_q0,buff_A_21_address0,buff_A_21_ce0,buff_A_21_q0,buff_A_22_address0,buff_A_22_ce0,buff_A_22_q0,buff_A_23_address0,buff_A_23_ce0,buff_A_23_q0,buff_A_24_address0,buff_A_24_ce0,buff_A_24_q0,buff_A_25_address0,buff_A_25_ce0,buff_A_25_q0,buff_A_26_address0,buff_A_26_ce0,buff_A_26_q0,buff_A_27_address0,buff_A_27_ce0,buff_A_27_q0,buff_A_28_address0,buff_A_28_ce0,buff_A_28_q0,buff_A_29_address0,buff_A_29_ce0,buff_A_29_q0,buff_A_30_address0,buff_A_30_ce0,buff_A_30_q0,buff_A_31_address0,buff_A_31_ce0,buff_A_31_q0,buff_y2_address0,buff_y2_ce0,buff_y2_q0,buff_y2_2_address0,buff_y2_2_ce0,buff_y2_2_q0,buff_y2_4_address0,buff_y2_4_ce0,buff_y2_4_q0,buff_y2_6_address0,buff_y2_6_ce0,buff_y2_6_q0,buff_y2_1_address0,buff_y2_1_ce0,buff_y2_1_q0,buff_y2_3_address0,buff_y2_3_ce0,buff_y2_3_q0,buff_y2_5_address0,buff_y2_5_ce0,buff_y2_5_q0,buff_y2_7_address0,buff_y2_7_ce0,buff_y2_7_q0,buff_x2_address0,buff_x2_ce0,buff_x2_we0,buff_x2_d0,buff_x2_q0,buff_x2_1_address0,buff_x2_1_ce0,buff_x2_1_we0,buff_x2_1_d0,buff_x2_1_q0,buff_x2_2_address0,buff_x2_2_ce0,buff_x2_2_we0,buff_x2_2_d0,buff_x2_2_q0,buff_x2_3_address0,buff_x2_3_ce0,buff_x2_3_we0,buff_x2_3_d0,buff_x2_3_q0,buff_x2_4_address0,buff_x2_4_ce0,buff_x2_4_we0,buff_x2_4_d0,buff_x2_4_q0,buff_x2_5_address0,buff_x2_5_ce0,buff_x2_5_we0,buff_x2_5_d0,buff_x2_5_q0,buff_x2_6_address0,buff_x2_6_ce0,buff_x2_6_we0,buff_x2_6_d0,buff_x2_6_q0,buff_x2_7_address0,buff_x2_7_ce0,buff_x2_7_we0,buff_x2_7_d0,buff_x2_7_q0,grp_fu_2435_p_din0,grp_fu_2435_p_din1,grp_fu_2435_p_opcode,grp_fu_2435_p_dout0,grp_fu_2435_p_ce,grp_fu_2431_p_din0,grp_fu_2431_p_din1,grp_fu_2431_p_dout0,grp_fu_2431_p_ce);  
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
output  [6:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [6:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [6:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [6:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [6:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [6:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [6:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [6:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [6:0] buff_A_8_address0;
output   buff_A_8_ce0;
input  [31:0] buff_A_8_q0;
output  [6:0] buff_A_9_address0;
output   buff_A_9_ce0;
input  [31:0] buff_A_9_q0;
output  [6:0] buff_A_10_address0;
output   buff_A_10_ce0;
input  [31:0] buff_A_10_q0;
output  [6:0] buff_A_11_address0;
output   buff_A_11_ce0;
input  [31:0] buff_A_11_q0;
output  [6:0] buff_A_12_address0;
output   buff_A_12_ce0;
input  [31:0] buff_A_12_q0;
output  [6:0] buff_A_13_address0;
output   buff_A_13_ce0;
input  [31:0] buff_A_13_q0;
output  [6:0] buff_A_14_address0;
output   buff_A_14_ce0;
input  [31:0] buff_A_14_q0;
output  [6:0] buff_A_15_address0;
output   buff_A_15_ce0;
input  [31:0] buff_A_15_q0;
output  [6:0] buff_A_16_address0;
output   buff_A_16_ce0;
input  [31:0] buff_A_16_q0;
output  [6:0] buff_A_17_address0;
output   buff_A_17_ce0;
input  [31:0] buff_A_17_q0;
output  [6:0] buff_A_18_address0;
output   buff_A_18_ce0;
input  [31:0] buff_A_18_q0;
output  [6:0] buff_A_19_address0;
output   buff_A_19_ce0;
input  [31:0] buff_A_19_q0;
output  [6:0] buff_A_20_address0;
output   buff_A_20_ce0;
input  [31:0] buff_A_20_q0;
output  [6:0] buff_A_21_address0;
output   buff_A_21_ce0;
input  [31:0] buff_A_21_q0;
output  [6:0] buff_A_22_address0;
output   buff_A_22_ce0;
input  [31:0] buff_A_22_q0;
output  [6:0] buff_A_23_address0;
output   buff_A_23_ce0;
input  [31:0] buff_A_23_q0;
output  [6:0] buff_A_24_address0;
output   buff_A_24_ce0;
input  [31:0] buff_A_24_q0;
output  [6:0] buff_A_25_address0;
output   buff_A_25_ce0;
input  [31:0] buff_A_25_q0;
output  [6:0] buff_A_26_address0;
output   buff_A_26_ce0;
input  [31:0] buff_A_26_q0;
output  [6:0] buff_A_27_address0;
output   buff_A_27_ce0;
input  [31:0] buff_A_27_q0;
output  [6:0] buff_A_28_address0;
output   buff_A_28_ce0;
input  [31:0] buff_A_28_q0;
output  [6:0] buff_A_29_address0;
output   buff_A_29_ce0;
input  [31:0] buff_A_29_q0;
output  [6:0] buff_A_30_address0;
output   buff_A_30_ce0;
input  [31:0] buff_A_30_q0;
output  [6:0] buff_A_31_address0;
output   buff_A_31_ce0;
input  [31:0] buff_A_31_q0;
output  [2:0] buff_y2_address0;
output   buff_y2_ce0;
input  [31:0] buff_y2_q0;
output  [2:0] buff_y2_2_address0;
output   buff_y2_2_ce0;
input  [31:0] buff_y2_2_q0;
output  [2:0] buff_y2_4_address0;
output   buff_y2_4_ce0;
input  [31:0] buff_y2_4_q0;
output  [2:0] buff_y2_6_address0;
output   buff_y2_6_ce0;
input  [31:0] buff_y2_6_q0;
output  [2:0] buff_y2_1_address0;
output   buff_y2_1_ce0;
input  [31:0] buff_y2_1_q0;
output  [2:0] buff_y2_3_address0;
output   buff_y2_3_ce0;
input  [31:0] buff_y2_3_q0;
output  [2:0] buff_y2_5_address0;
output   buff_y2_5_ce0;
input  [31:0] buff_y2_5_q0;
output  [2:0] buff_y2_7_address0;
output   buff_y2_7_ce0;
input  [31:0] buff_y2_7_q0;
output  [2:0] buff_x2_address0;
output   buff_x2_ce0;
output   buff_x2_we0;
output  [31:0] buff_x2_d0;
input  [31:0] buff_x2_q0;
output  [2:0] buff_x2_1_address0;
output   buff_x2_1_ce0;
output   buff_x2_1_we0;
output  [31:0] buff_x2_1_d0;
input  [31:0] buff_x2_1_q0;
output  [2:0] buff_x2_2_address0;
output   buff_x2_2_ce0;
output   buff_x2_2_we0;
output  [31:0] buff_x2_2_d0;
input  [31:0] buff_x2_2_q0;
output  [2:0] buff_x2_3_address0;
output   buff_x2_3_ce0;
output   buff_x2_3_we0;
output  [31:0] buff_x2_3_d0;
input  [31:0] buff_x2_3_q0;
output  [2:0] buff_x2_4_address0;
output   buff_x2_4_ce0;
output   buff_x2_4_we0;
output  [31:0] buff_x2_4_d0;
input  [31:0] buff_x2_4_q0;
output  [2:0] buff_x2_5_address0;
output   buff_x2_5_ce0;
output   buff_x2_5_we0;
output  [31:0] buff_x2_5_d0;
input  [31:0] buff_x2_5_q0;
output  [2:0] buff_x2_6_address0;
output   buff_x2_6_ce0;
output   buff_x2_6_we0;
output  [31:0] buff_x2_6_d0;
input  [31:0] buff_x2_6_q0;
output  [2:0] buff_x2_7_address0;
output   buff_x2_7_ce0;
output   buff_x2_7_we0;
output  [31:0] buff_x2_7_d0;
input  [31:0] buff_x2_7_q0;
output  [31:0] grp_fu_2435_p_din0;
output  [31:0] grp_fu_2435_p_din1;
output  [1:0] grp_fu_2435_p_opcode;
input  [31:0] grp_fu_2435_p_dout0;
output   grp_fu_2435_p_ce;
output  [31:0] grp_fu_2431_p_din0;
output  [31:0] grp_fu_2431_p_din1;
input  [31:0] grp_fu_2431_p_dout0;
output   grp_fu_2431_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln29_reg_1375;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_816;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln29_fu_847_p2;
wire   [6:0] select_ln6_fu_879_p3;
reg   [6:0] select_ln6_reg_1379;
wire   [0:0] first_iter_0_fu_895_p2;
reg   [0:0] first_iter_0_reg_1387;
wire   [2:0] trunc_ln29_fu_901_p1;
reg   [2:0] trunc_ln29_reg_1391;
reg   [2:0] trunc_ln29_reg_1391_pp0_iter1_reg;
wire   [2:0] lshr_ln6_4_fu_905_p4;
reg   [2:0] lshr_ln6_4_reg_1398;
reg   [2:0] buff_x2_addr_reg_1403;
reg   [2:0] buff_x2_addr_reg_1403_pp0_iter1_reg;
reg   [2:0] buff_x2_1_addr_reg_1408;
reg   [2:0] buff_x2_1_addr_reg_1408_pp0_iter1_reg;
reg   [2:0] buff_x2_2_addr_reg_1413;
reg   [2:0] buff_x2_2_addr_reg_1413_pp0_iter1_reg;
reg   [2:0] buff_x2_3_addr_reg_1418;
reg   [2:0] buff_x2_3_addr_reg_1418_pp0_iter1_reg;
reg   [2:0] buff_x2_4_addr_reg_1423;
reg   [2:0] buff_x2_4_addr_reg_1423_pp0_iter1_reg;
reg   [2:0] buff_x2_5_addr_reg_1428;
reg   [2:0] buff_x2_5_addr_reg_1428_pp0_iter1_reg;
reg   [2:0] buff_x2_6_addr_reg_1433;
reg   [2:0] buff_x2_6_addr_reg_1433_pp0_iter1_reg;
reg   [2:0] buff_x2_7_addr_reg_1438;
reg   [2:0] buff_x2_7_addr_reg_1438_pp0_iter1_reg;
wire   [31:0] tmp_fu_959_p19;
reg   [31:0] tmp_reg_1483;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_s_fu_1053_p11;
reg   [31:0] tmp_s_reg_1648;
wire   [31:0] tmp_2_fu_1077_p11;
reg   [31:0] tmp_2_reg_1653;
wire   [31:0] tmp_9_fu_1174_p19;
reg   [31:0] tmp_9_reg_1658;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_1_fu_1277_p19;
reg   [31:0] tmp_1_reg_1663;
reg   [31:0] mul1_reg_1668;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul65_1_reg_1678;
reg   [0:0] tmp_6_reg_1683;
wire    ap_block_pp0_stage14_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln6_fu_915_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6_1_fu_937_p1;
wire   [63:0] zext_ln31_fu_1017_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_1_fu_168;
wire   [6:0] add_ln30_fu_1324_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1_load;
reg   [6:0] i_fu_172;
wire   [6:0] select_ln29_fu_887_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [11:0] indvar_flatten_fu_176;
wire   [11:0] add_ln29_1_fu_853_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [31:0] empty_fu_180;
wire    ap_block_pp0_stage7;
reg    buff_x2_ce0_local;
reg   [2:0] buff_x2_address0_local;
reg    buff_x2_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_x2_1_ce0_local;
reg   [2:0] buff_x2_1_address0_local;
reg    buff_x2_1_we0_local;
reg    buff_x2_2_ce0_local;
reg   [2:0] buff_x2_2_address0_local;
reg    buff_x2_2_we0_local;
reg    buff_x2_3_ce0_local;
reg   [2:0] buff_x2_3_address0_local;
reg    buff_x2_3_we0_local;
reg    buff_x2_4_ce0_local;
reg   [2:0] buff_x2_4_address0_local;
reg    buff_x2_4_we0_local;
reg    buff_x2_5_ce0_local;
reg   [2:0] buff_x2_5_address0_local;
reg    buff_x2_5_we0_local;
reg    buff_x2_6_ce0_local;
reg   [2:0] buff_x2_6_address0_local;
reg    buff_x2_6_we0_local;
reg    buff_x2_7_ce0_local;
reg   [2:0] buff_x2_7_address0_local;
reg    buff_x2_7_we0_local;
reg    buff_y2_ce0_local;
reg    buff_y2_2_ce0_local;
reg    buff_y2_4_ce0_local;
reg    buff_y2_6_ce0_local;
reg    buff_y2_1_ce0_local;
reg    buff_y2_3_ce0_local;
reg    buff_y2_5_ce0_local;
reg    buff_y2_7_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_8_ce0_local;
reg    buff_A_10_ce0_local;
reg    buff_A_12_ce0_local;
reg    buff_A_14_ce0_local;
reg    buff_A_16_ce0_local;
reg    buff_A_18_ce0_local;
reg    buff_A_20_ce0_local;
reg    buff_A_22_ce0_local;
reg    buff_A_24_ce0_local;
reg    buff_A_26_ce0_local;
reg    buff_A_28_ce0_local;
reg    buff_A_30_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_A_9_ce0_local;
reg    buff_A_11_ce0_local;
reg    buff_A_13_ce0_local;
reg    buff_A_15_ce0_local;
reg    buff_A_17_ce0_local;
reg    buff_A_19_ce0_local;
reg    buff_A_21_ce0_local;
reg    buff_A_23_ce0_local;
reg    buff_A_25_ce0_local;
reg    buff_A_27_ce0_local;
reg    buff_A_29_ce0_local;
reg    buff_A_31_ce0_local;
reg   [31:0] grp_fu_808_p0;
reg   [31:0] grp_fu_808_p1;
wire    ap_block_pp0_stage14;
reg   [31:0] grp_fu_812_p0;
reg   [31:0] grp_fu_812_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [0:0] tmp_4_fu_871_p3;
wire   [6:0] add_ln29_fu_865_p2;
wire   [2:0] lshr_ln6_8_fu_927_p4;
wire   [31:0] tmp_fu_959_p17;
wire   [3:0] lshr_ln6_7_fu_1001_p4;
wire   [6:0] tmp_5_fu_1010_p3;
wire   [31:0] tmp_s_fu_1053_p9;
wire   [2:0] trunc_ln30_fu_998_p1;
wire   [31:0] tmp_2_fu_1077_p9;
wire    ap_block_pp0_stage2;
wire   [1:0] trunc_ln30_1_fu_1101_p1;
wire   [0:0] icmp_ln31_1_fu_1104_p2;
wire   [31:0] tmp_9_fu_1174_p2;
wire   [31:0] tmp_9_fu_1174_p4;
wire   [31:0] tmp_9_fu_1174_p6;
wire   [31:0] tmp_9_fu_1174_p8;
wire   [31:0] tmp_9_fu_1174_p10;
wire   [31:0] tmp_9_fu_1174_p12;
wire   [31:0] tmp_9_fu_1174_p14;
wire   [31:0] tmp_9_fu_1174_p16;
wire   [31:0] tmp_9_fu_1174_p17;
wire   [31:0] tmp_1_fu_1277_p2;
wire   [31:0] tmp_1_fu_1277_p4;
wire   [31:0] tmp_1_fu_1277_p6;
wire   [31:0] tmp_1_fu_1277_p8;
wire   [31:0] tmp_1_fu_1277_p10;
wire   [31:0] tmp_1_fu_1277_p12;
wire   [31:0] tmp_1_fu_1277_p14;
wire   [31:0] tmp_1_fu_1277_p16;
wire   [31:0] tmp_1_fu_1277_p17;
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
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage14_00001;
reg    ap_condition_1732;
wire   [2:0] tmp_fu_959_p1;
wire   [2:0] tmp_fu_959_p3;
wire   [2:0] tmp_fu_959_p5;
wire   [2:0] tmp_fu_959_p7;
wire  signed [2:0] tmp_fu_959_p9;
wire  signed [2:0] tmp_fu_959_p11;
wire  signed [2:0] tmp_fu_959_p13;
wire  signed [2:0] tmp_fu_959_p15;
wire   [2:0] tmp_s_fu_1053_p1;
wire   [2:0] tmp_s_fu_1053_p3;
wire  signed [2:0] tmp_s_fu_1053_p5;
wire  signed [2:0] tmp_s_fu_1053_p7;
wire   [2:0] tmp_2_fu_1077_p1;
wire   [2:0] tmp_2_fu_1077_p3;
wire  signed [2:0] tmp_2_fu_1077_p5;
wire  signed [2:0] tmp_2_fu_1077_p7;
wire   [2:0] tmp_9_fu_1174_p1;
wire   [2:0] tmp_9_fu_1174_p3;
wire   [2:0] tmp_9_fu_1174_p5;
wire   [2:0] tmp_9_fu_1174_p7;
wire  signed [2:0] tmp_9_fu_1174_p9;
wire  signed [2:0] tmp_9_fu_1174_p11;
wire  signed [2:0] tmp_9_fu_1174_p13;
wire  signed [2:0] tmp_9_fu_1174_p15;
wire   [2:0] tmp_1_fu_1277_p1;
wire   [2:0] tmp_1_fu_1277_p3;
wire   [2:0] tmp_1_fu_1277_p5;
wire   [2:0] tmp_1_fu_1277_p7;
wire  signed [2:0] tmp_1_fu_1277_p9;
wire  signed [2:0] tmp_1_fu_1277_p11;
wire  signed [2:0] tmp_1_fu_1277_p13;
wire  signed [2:0] tmp_1_fu_1277_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_1_fu_168 = 7'd0;
#0 i_fu_172 = 7'd0;
#0 indvar_flatten_fu_176 = 12'd0;
#0 empty_fu_180 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1176(.din0(buff_x2_q0),.din1(buff_x2_1_q0),.din2(buff_x2_2_q0),.din3(buff_x2_3_q0),.din4(buff_x2_4_q0),.din5(buff_x2_5_q0),.din6(buff_x2_6_q0),.din7(buff_x2_7_q0),.def(tmp_fu_959_p17),.sel(trunc_ln29_reg_1391),.dout(tmp_fu_959_p19));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U1177(.din0(buff_y2_q0),.din1(buff_y2_2_q0),.din2(buff_y2_4_q0),.din3(buff_y2_6_q0),.def(tmp_s_fu_1053_p9),.sel(trunc_ln30_fu_998_p1),.dout(tmp_s_fu_1053_p11));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U1178(.din0(buff_y2_1_q0),.din1(buff_y2_3_q0),.din2(buff_y2_5_q0),.din3(buff_y2_7_q0),.def(tmp_2_fu_1077_p9),.sel(trunc_ln30_fu_998_p1),.dout(tmp_2_fu_1077_p11));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1179(.din0(tmp_9_fu_1174_p2),.din1(tmp_9_fu_1174_p4),.din2(tmp_9_fu_1174_p6),.din3(tmp_9_fu_1174_p8),.din4(tmp_9_fu_1174_p10),.din5(tmp_9_fu_1174_p12),.din6(tmp_9_fu_1174_p14),.din7(tmp_9_fu_1174_p16),.def(tmp_9_fu_1174_p17),.sel(trunc_ln29_reg_1391),.dout(tmp_9_fu_1174_p19));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1180(.din0(tmp_1_fu_1277_p2),.din1(tmp_1_fu_1277_p4),.din2(tmp_1_fu_1277_p6),.din3(tmp_1_fu_1277_p8),.din4(tmp_1_fu_1277_p10),.din5(tmp_1_fu_1277_p12),.din6(tmp_1_fu_1277_p14),.din7(tmp_1_fu_1277_p16),.def(tmp_1_fu_1277_p17),.sel(trunc_ln29_reg_1391),.dout(tmp_1_fu_1277_p19));
mvt_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_1732)) begin
            empty_fu_180 <= tmp_reg_1483;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_180 <= reg_816;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_847_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_172 <= select_ln29_fu_887_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_172 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_847_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_176 <= add_ln29_1_fu_853_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_176 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_1_fu_168 <= 7'd0;
    end else if (((icmp_ln29_reg_1375 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        j_1_fu_168 <= add_ln30_fu_1324_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_1_addr_reg_1408 <= zext_ln6_fu_915_p1;
        buff_x2_1_addr_reg_1408_pp0_iter1_reg <= buff_x2_1_addr_reg_1408;
        buff_x2_2_addr_reg_1413 <= zext_ln6_fu_915_p1;
        buff_x2_2_addr_reg_1413_pp0_iter1_reg <= buff_x2_2_addr_reg_1413;
        buff_x2_3_addr_reg_1418 <= zext_ln6_fu_915_p1;
        buff_x2_3_addr_reg_1418_pp0_iter1_reg <= buff_x2_3_addr_reg_1418;
        buff_x2_4_addr_reg_1423 <= zext_ln6_fu_915_p1;
        buff_x2_4_addr_reg_1423_pp0_iter1_reg <= buff_x2_4_addr_reg_1423;
        buff_x2_5_addr_reg_1428 <= zext_ln6_fu_915_p1;
        buff_x2_5_addr_reg_1428_pp0_iter1_reg <= buff_x2_5_addr_reg_1428;
        buff_x2_6_addr_reg_1433 <= zext_ln6_fu_915_p1;
        buff_x2_6_addr_reg_1433_pp0_iter1_reg <= buff_x2_6_addr_reg_1433;
        buff_x2_7_addr_reg_1438 <= zext_ln6_fu_915_p1;
        buff_x2_7_addr_reg_1438_pp0_iter1_reg <= buff_x2_7_addr_reg_1438;
        buff_x2_addr_reg_1403 <= zext_ln6_fu_915_p1;
        buff_x2_addr_reg_1403_pp0_iter1_reg <= buff_x2_addr_reg_1403;
        first_iter_0_reg_1387 <= first_iter_0_fu_895_p2;
        icmp_ln29_reg_1375 <= icmp_ln29_fu_847_p2;
        lshr_ln6_4_reg_1398 <= {{select_ln29_fu_887_p3[5:3]}};
        select_ln6_reg_1379 <= select_ln6_fu_879_p3;
        trunc_ln29_reg_1391 <= trunc_ln29_fu_901_p1;
        trunc_ln29_reg_1391_pp0_iter1_reg <= trunc_ln29_reg_1391;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_1668 <= grp_fu_2431_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul65_1_reg_1678 <= grp_fu_2431_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_816 <= grp_fu_2435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_1_reg_1663 <= tmp_1_fu_1277_p19;
        tmp_9_reg_1658 <= tmp_9_fu_1174_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_2_reg_1653 <= tmp_2_fu_1077_p11;
        tmp_reg_1483 <= tmp_fu_959_p19;
        tmp_s_reg_1648 <= tmp_s_fu_1053_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        tmp_6_reg_1683 <= add_ln30_fu_1324_p2[32'd6];
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_1375 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_172;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_176;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1_load = j_1_fu_168;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_10_ce0_local = 1'b1;
    end else begin
        buff_A_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_11_ce0_local = 1'b1;
    end else begin
        buff_A_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_12_ce0_local = 1'b1;
    end else begin
        buff_A_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_13_ce0_local = 1'b1;
    end else begin
        buff_A_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_14_ce0_local = 1'b1;
    end else begin
        buff_A_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_15_ce0_local = 1'b1;
    end else begin
        buff_A_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_16_ce0_local = 1'b1;
    end else begin
        buff_A_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_17_ce0_local = 1'b1;
    end else begin
        buff_A_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_18_ce0_local = 1'b1;
    end else begin
        buff_A_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_19_ce0_local = 1'b1;
    end else begin
        buff_A_19_ce0_local = 1'b0;
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
        buff_A_20_ce0_local = 1'b1;
    end else begin
        buff_A_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_21_ce0_local = 1'b1;
    end else begin
        buff_A_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_22_ce0_local = 1'b1;
    end else begin
        buff_A_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_23_ce0_local = 1'b1;
    end else begin
        buff_A_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_24_ce0_local = 1'b1;
    end else begin
        buff_A_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_25_ce0_local = 1'b1;
    end else begin
        buff_A_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_26_ce0_local = 1'b1;
    end else begin
        buff_A_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_27_ce0_local = 1'b1;
    end else begin
        buff_A_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_28_ce0_local = 1'b1;
    end else begin
        buff_A_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_29_ce0_local = 1'b1;
    end else begin
        buff_A_29_ce0_local = 1'b0;
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
        buff_A_30_ce0_local = 1'b1;
    end else begin
        buff_A_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_31_ce0_local = 1'b1;
    end else begin
        buff_A_31_ce0_local = 1'b0;
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
        buff_A_8_ce0_local = 1'b1;
    end else begin
        buff_A_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_9_ce0_local = 1'b1;
    end else begin
        buff_A_9_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_1_address0_local = buff_x2_1_addr_reg_1408_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_1_address0_local = zext_ln6_fu_915_p1;
    end else begin
        buff_x2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        buff_x2_1_ce0_local = 1'b1;
    end else begin
        buff_x2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln29_reg_1391_pp0_iter1_reg == 3'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_6_reg_1683 == 1'd1))) begin
        buff_x2_1_we0_local = 1'b1;
    end else begin
        buff_x2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_2_address0_local = buff_x2_2_addr_reg_1413_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_2_address0_local = zext_ln6_fu_915_p1;
    end else begin
        buff_x2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        buff_x2_2_ce0_local = 1'b1;
    end else begin
        buff_x2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln29_reg_1391_pp0_iter1_reg == 3'd2) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_6_reg_1683 == 1'd1))) begin
        buff_x2_2_we0_local = 1'b1;
    end else begin
        buff_x2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_3_address0_local = buff_x2_3_addr_reg_1418_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_3_address0_local = zext_ln6_fu_915_p1;
    end else begin
        buff_x2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        buff_x2_3_ce0_local = 1'b1;
    end else begin
        buff_x2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln29_reg_1391_pp0_iter1_reg == 3'd3) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_6_reg_1683 == 1'd1))) begin
        buff_x2_3_we0_local = 1'b1;
    end else begin
        buff_x2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_4_address0_local = buff_x2_4_addr_reg_1423_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_4_address0_local = zext_ln6_fu_915_p1;
    end else begin
        buff_x2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        buff_x2_4_ce0_local = 1'b1;
    end else begin
        buff_x2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln29_reg_1391_pp0_iter1_reg == 3'd4) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_6_reg_1683 == 1'd1))) begin
        buff_x2_4_we0_local = 1'b1;
    end else begin
        buff_x2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_5_address0_local = buff_x2_5_addr_reg_1428_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_5_address0_local = zext_ln6_fu_915_p1;
    end else begin
        buff_x2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        buff_x2_5_ce0_local = 1'b1;
    end else begin
        buff_x2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln29_reg_1391_pp0_iter1_reg == 3'd5) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_6_reg_1683 == 1'd1))) begin
        buff_x2_5_we0_local = 1'b1;
    end else begin
        buff_x2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_6_address0_local = buff_x2_6_addr_reg_1433_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_6_address0_local = zext_ln6_fu_915_p1;
    end else begin
        buff_x2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        buff_x2_6_ce0_local = 1'b1;
    end else begin
        buff_x2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln29_reg_1391_pp0_iter1_reg == 3'd6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_6_reg_1683 == 1'd1))) begin
        buff_x2_6_we0_local = 1'b1;
    end else begin
        buff_x2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_7_address0_local = buff_x2_7_addr_reg_1438_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_7_address0_local = zext_ln6_fu_915_p1;
    end else begin
        buff_x2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        buff_x2_7_ce0_local = 1'b1;
    end else begin
        buff_x2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln29_reg_1391_pp0_iter1_reg == 3'd7) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_6_reg_1683 == 1'd1))) begin
        buff_x2_7_we0_local = 1'b1;
    end else begin
        buff_x2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_address0_local = buff_x2_addr_reg_1403_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_address0_local = zext_ln6_fu_915_p1;
    end else begin
        buff_x2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        buff_x2_ce0_local = 1'b1;
    end else begin
        buff_x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln29_reg_1391_pp0_iter1_reg == 3'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_6_reg_1683 == 1'd1))) begin
        buff_x2_we0_local = 1'b1;
    end else begin
        buff_x2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_1_ce0_local = 1'b1;
    end else begin
        buff_y2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_2_ce0_local = 1'b1;
    end else begin
        buff_y2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_3_ce0_local = 1'b1;
    end else begin
        buff_y2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_4_ce0_local = 1'b1;
    end else begin
        buff_y2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_5_ce0_local = 1'b1;
    end else begin
        buff_y2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_6_ce0_local = 1'b1;
    end else begin
        buff_y2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_7_ce0_local = 1'b1;
    end else begin
        buff_y2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_ce0_local = 1'b1;
    end else begin
        buff_y2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_808_p0 = reg_816;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_808_p0 = empty_fu_180;
        end else begin
            grp_fu_808_p0 = 'bx;
        end
    end else begin
        grp_fu_808_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_808_p1 = mul65_1_reg_1678;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_808_p1 = mul1_reg_1668;
        end else begin
            grp_fu_808_p1 = 'bx;
        end
    end else begin
        grp_fu_808_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_812_p0 = tmp_1_reg_1663;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_812_p0 = tmp_9_reg_1658;
        end else begin
            grp_fu_812_p0 = 'bx;
        end
    end else begin
        grp_fu_812_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_812_p1 = tmp_2_reg_1653;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_812_p1 = tmp_s_reg_1648;
        end else begin
            grp_fu_812_p1 = 'bx;
        end
    end else begin
        grp_fu_812_p1 = 'bx;
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
assign add_ln29_1_fu_853_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln29_fu_865_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln30_fu_1324_p2 = (select_ln6_reg_1379 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1732 = ((first_iter_0_reg_1387 == 1'd1) & (icmp_ln29_reg_1375 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_10_address0 = zext_ln31_fu_1017_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_11_address0 = zext_ln31_fu_1017_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_12_address0 = zext_ln31_fu_1017_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln31_fu_1017_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln31_fu_1017_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln31_fu_1017_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_16_address0 = zext_ln31_fu_1017_p1;
assign buff_A_16_ce0 = buff_A_16_ce0_local;
assign buff_A_17_address0 = zext_ln31_fu_1017_p1;
assign buff_A_17_ce0 = buff_A_17_ce0_local;
assign buff_A_18_address0 = zext_ln31_fu_1017_p1;
assign buff_A_18_ce0 = buff_A_18_ce0_local;
assign buff_A_19_address0 = zext_ln31_fu_1017_p1;
assign buff_A_19_ce0 = buff_A_19_ce0_local;
assign buff_A_1_address0 = zext_ln31_fu_1017_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_20_address0 = zext_ln31_fu_1017_p1;
assign buff_A_20_ce0 = buff_A_20_ce0_local;
assign buff_A_21_address0 = zext_ln31_fu_1017_p1;
assign buff_A_21_ce0 = buff_A_21_ce0_local;
assign buff_A_22_address0 = zext_ln31_fu_1017_p1;
assign buff_A_22_ce0 = buff_A_22_ce0_local;
assign buff_A_23_address0 = zext_ln31_fu_1017_p1;
assign buff_A_23_ce0 = buff_A_23_ce0_local;
assign buff_A_24_address0 = zext_ln31_fu_1017_p1;
assign buff_A_24_ce0 = buff_A_24_ce0_local;
assign buff_A_25_address0 = zext_ln31_fu_1017_p1;
assign buff_A_25_ce0 = buff_A_25_ce0_local;
assign buff_A_26_address0 = zext_ln31_fu_1017_p1;
assign buff_A_26_ce0 = buff_A_26_ce0_local;
assign buff_A_27_address0 = zext_ln31_fu_1017_p1;
assign buff_A_27_ce0 = buff_A_27_ce0_local;
assign buff_A_28_address0 = zext_ln31_fu_1017_p1;
assign buff_A_28_ce0 = buff_A_28_ce0_local;
assign buff_A_29_address0 = zext_ln31_fu_1017_p1;
assign buff_A_29_ce0 = buff_A_29_ce0_local;
assign buff_A_2_address0 = zext_ln31_fu_1017_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_30_address0 = zext_ln31_fu_1017_p1;
assign buff_A_30_ce0 = buff_A_30_ce0_local;
assign buff_A_31_address0 = zext_ln31_fu_1017_p1;
assign buff_A_31_ce0 = buff_A_31_ce0_local;
assign buff_A_3_address0 = zext_ln31_fu_1017_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln31_fu_1017_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln31_fu_1017_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln31_fu_1017_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln31_fu_1017_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_8_address0 = zext_ln31_fu_1017_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_9_address0 = zext_ln31_fu_1017_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln31_fu_1017_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_x2_1_address0 = buff_x2_1_address0_local;
assign buff_x2_1_ce0 = buff_x2_1_ce0_local;
assign buff_x2_1_d0 = reg_816;
assign buff_x2_1_we0 = buff_x2_1_we0_local;
assign buff_x2_2_address0 = buff_x2_2_address0_local;
assign buff_x2_2_ce0 = buff_x2_2_ce0_local;
assign buff_x2_2_d0 = reg_816;
assign buff_x2_2_we0 = buff_x2_2_we0_local;
assign buff_x2_3_address0 = buff_x2_3_address0_local;
assign buff_x2_3_ce0 = buff_x2_3_ce0_local;
assign buff_x2_3_d0 = reg_816;
assign buff_x2_3_we0 = buff_x2_3_we0_local;
assign buff_x2_4_address0 = buff_x2_4_address0_local;
assign buff_x2_4_ce0 = buff_x2_4_ce0_local;
assign buff_x2_4_d0 = reg_816;
assign buff_x2_4_we0 = buff_x2_4_we0_local;
assign buff_x2_5_address0 = buff_x2_5_address0_local;
assign buff_x2_5_ce0 = buff_x2_5_ce0_local;
assign buff_x2_5_d0 = reg_816;
assign buff_x2_5_we0 = buff_x2_5_we0_local;
assign buff_x2_6_address0 = buff_x2_6_address0_local;
assign buff_x2_6_ce0 = buff_x2_6_ce0_local;
assign buff_x2_6_d0 = reg_816;
assign buff_x2_6_we0 = buff_x2_6_we0_local;
assign buff_x2_7_address0 = buff_x2_7_address0_local;
assign buff_x2_7_ce0 = buff_x2_7_ce0_local;
assign buff_x2_7_d0 = reg_816;
assign buff_x2_7_we0 = buff_x2_7_we0_local;
assign buff_x2_address0 = buff_x2_address0_local;
assign buff_x2_ce0 = buff_x2_ce0_local;
assign buff_x2_d0 = reg_816;
assign buff_x2_we0 = buff_x2_we0_local;
assign buff_y2_1_address0 = zext_ln6_1_fu_937_p1;
assign buff_y2_1_ce0 = buff_y2_1_ce0_local;
assign buff_y2_2_address0 = zext_ln6_1_fu_937_p1;
assign buff_y2_2_ce0 = buff_y2_2_ce0_local;
assign buff_y2_3_address0 = zext_ln6_1_fu_937_p1;
assign buff_y2_3_ce0 = buff_y2_3_ce0_local;
assign buff_y2_4_address0 = zext_ln6_1_fu_937_p1;
assign buff_y2_4_ce0 = buff_y2_4_ce0_local;
assign buff_y2_5_address0 = zext_ln6_1_fu_937_p1;
assign buff_y2_5_ce0 = buff_y2_5_ce0_local;
assign buff_y2_6_address0 = zext_ln6_1_fu_937_p1;
assign buff_y2_6_ce0 = buff_y2_6_ce0_local;
assign buff_y2_7_address0 = zext_ln6_1_fu_937_p1;
assign buff_y2_7_ce0 = buff_y2_7_ce0_local;
assign buff_y2_address0 = zext_ln6_1_fu_937_p1;
assign buff_y2_ce0 = buff_y2_ce0_local;
assign first_iter_0_fu_895_p2 = ((select_ln6_fu_879_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_2431_p_ce = 1'b1;
assign grp_fu_2431_p_din0 = grp_fu_812_p0;
assign grp_fu_2431_p_din1 = grp_fu_812_p1;
assign grp_fu_2435_p_ce = 1'b1;
assign grp_fu_2435_p_din0 = grp_fu_808_p0;
assign grp_fu_2435_p_din1 = grp_fu_808_p1;
assign grp_fu_2435_p_opcode = 2'd0;
assign icmp_ln29_fu_847_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln31_1_fu_1104_p2 = ((trunc_ln30_1_fu_1101_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln6_4_fu_905_p4 = {{select_ln29_fu_887_p3[5:3]}};
assign lshr_ln6_7_fu_1001_p4 = {{select_ln6_reg_1379[5:2]}};
assign lshr_ln6_8_fu_927_p4 = {{select_ln6_fu_879_p3[5:3]}};
assign select_ln29_fu_887_p3 = ((tmp_4_fu_871_p3[0:0] == 1'b1) ? add_ln29_fu_865_p2 : ap_sig_allocacmp_i_load);
assign select_ln6_fu_879_p3 = ((tmp_4_fu_871_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_1_load);
assign tmp_1_fu_1277_p10 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_19_q0 : buff_A_17_q0);
assign tmp_1_fu_1277_p12 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_23_q0 : buff_A_21_q0);
assign tmp_1_fu_1277_p14 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_27_q0 : buff_A_25_q0);
assign tmp_1_fu_1277_p16 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_31_q0 : buff_A_29_q0);
assign tmp_1_fu_1277_p17 = 'bx;
assign tmp_1_fu_1277_p2 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_3_q0 : buff_A_1_q0);
assign tmp_1_fu_1277_p4 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_7_q0 : buff_A_5_q0);
assign tmp_1_fu_1277_p6 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_11_q0 : buff_A_9_q0);
assign tmp_1_fu_1277_p8 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_15_q0 : buff_A_13_q0);
assign tmp_2_fu_1077_p9 = 'bx;
assign tmp_4_fu_871_p3 = ap_sig_allocacmp_j_1_load[32'd6];
assign tmp_5_fu_1010_p3 = {{lshr_ln6_7_fu_1001_p4}, {lshr_ln6_4_reg_1398}};
assign tmp_9_fu_1174_p10 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_18_q0 : buff_A_16_q0);
assign tmp_9_fu_1174_p12 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_22_q0 : buff_A_20_q0);
assign tmp_9_fu_1174_p14 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_26_q0 : buff_A_24_q0);
assign tmp_9_fu_1174_p16 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_30_q0 : buff_A_28_q0);
assign tmp_9_fu_1174_p17 = 'bx;
assign tmp_9_fu_1174_p2 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_2_q0 : buff_A_q0);
assign tmp_9_fu_1174_p4 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_6_q0 : buff_A_4_q0);
assign tmp_9_fu_1174_p6 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_10_q0 : buff_A_8_q0);
assign tmp_9_fu_1174_p8 = ((icmp_ln31_1_fu_1104_p2[0:0] == 1'b1) ? buff_A_14_q0 : buff_A_12_q0);
assign tmp_fu_959_p17 = 'bx;
assign tmp_s_fu_1053_p9 = 'bx;
assign trunc_ln29_fu_901_p1 = select_ln29_fu_887_p3[2:0];
assign trunc_ln30_1_fu_1101_p1 = select_ln6_reg_1379[1:0];
assign trunc_ln30_fu_998_p1 = select_ln6_reg_1379[2:0];
assign zext_ln31_fu_1017_p1 = tmp_5_fu_1010_p3;
assign zext_ln6_1_fu_937_p1 = lshr_ln6_8_fu_927_p4;
assign zext_ln6_fu_915_p1 = lshr_ln6_4_fu_905_p4;
endmodule 
