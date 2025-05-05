module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,llike_8_address0,llike_8_ce0,llike_8_we0,llike_8_d0,llike_9_address0,llike_9_ce0,llike_9_we0,llike_9_d0,llike_10_address0,llike_10_ce0,llike_10_we0,llike_10_d0,llike_11_address0,llike_11_ce0,llike_11_we0,llike_11_d0,llike_12_address0,llike_12_ce0,llike_12_we0,llike_12_d0,llike_13_address0,llike_13_ce0,llike_13_we0,llike_13_d0,llike_14_address0,llike_14_ce0,llike_14_we0,llike_14_d0,llike_15_address0,llike_15_ce0,llike_15_we0,llike_15_d0,llike_16_address0,llike_16_ce0,llike_16_we0,llike_16_d0,llike_17_address0,llike_17_ce0,llike_17_we0,llike_17_d0,llike_18_address0,llike_18_ce0,llike_18_we0,llike_18_d0,llike_19_address0,llike_19_ce0,llike_19_we0,llike_19_d0,llike_20_address0,llike_20_ce0,llike_20_we0,llike_20_d0,llike_21_address0,llike_21_ce0,llike_21_we0,llike_21_d0,llike_22_address0,llike_22_ce0,llike_22_we0,llike_22_d0,llike_23_address0,llike_23_ce0,llike_23_we0,llike_23_d0,llike_24_address0,llike_24_ce0,llike_24_we0,llike_24_d0,llike_25_address0,llike_25_ce0,llike_25_we0,llike_25_d0,llike_26_address0,llike_26_ce0,llike_26_we0,llike_26_d0,llike_27_address0,llike_27_ce0,llike_27_we0,llike_27_d0,llike_28_address0,llike_28_ce0,llike_28_we0,llike_28_d0,llike_29_address0,llike_29_ce0,llike_29_we0,llike_29_d0,llike_30_address0,llike_30_ce0,llike_30_we0,llike_30_d0,llike_31_address0,llike_31_ce0,llike_31_we0,llike_31_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,grp_fu_1120_p_din0,grp_fu_1120_p_din1,grp_fu_1120_p_opcode,grp_fu_1120_p_dout0,grp_fu_1120_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [8:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [8:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [8:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [8:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [8:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [8:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [8:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [8:0] llike_8_address0;
output   llike_8_ce0;
output   llike_8_we0;
output  [63:0] llike_8_d0;
output  [8:0] llike_9_address0;
output   llike_9_ce0;
output   llike_9_we0;
output  [63:0] llike_9_d0;
output  [8:0] llike_10_address0;
output   llike_10_ce0;
output   llike_10_we0;
output  [63:0] llike_10_d0;
output  [8:0] llike_11_address0;
output   llike_11_ce0;
output   llike_11_we0;
output  [63:0] llike_11_d0;
output  [8:0] llike_12_address0;
output   llike_12_ce0;
output   llike_12_we0;
output  [63:0] llike_12_d0;
output  [8:0] llike_13_address0;
output   llike_13_ce0;
output   llike_13_we0;
output  [63:0] llike_13_d0;
output  [8:0] llike_14_address0;
output   llike_14_ce0;
output   llike_14_we0;
output  [63:0] llike_14_d0;
output  [8:0] llike_15_address0;
output   llike_15_ce0;
output   llike_15_we0;
output  [63:0] llike_15_d0;
output  [8:0] llike_16_address0;
output   llike_16_ce0;
output   llike_16_we0;
output  [63:0] llike_16_d0;
output  [8:0] llike_17_address0;
output   llike_17_ce0;
output   llike_17_we0;
output  [63:0] llike_17_d0;
output  [8:0] llike_18_address0;
output   llike_18_ce0;
output   llike_18_we0;
output  [63:0] llike_18_d0;
output  [8:0] llike_19_address0;
output   llike_19_ce0;
output   llike_19_we0;
output  [63:0] llike_19_d0;
output  [8:0] llike_20_address0;
output   llike_20_ce0;
output   llike_20_we0;
output  [63:0] llike_20_d0;
output  [8:0] llike_21_address0;
output   llike_21_ce0;
output   llike_21_we0;
output  [63:0] llike_21_d0;
output  [8:0] llike_22_address0;
output   llike_22_ce0;
output   llike_22_we0;
output  [63:0] llike_22_d0;
output  [8:0] llike_23_address0;
output   llike_23_ce0;
output   llike_23_we0;
output  [63:0] llike_23_d0;
output  [8:0] llike_24_address0;
output   llike_24_ce0;
output   llike_24_we0;
output  [63:0] llike_24_d0;
output  [8:0] llike_25_address0;
output   llike_25_ce0;
output   llike_25_we0;
output  [63:0] llike_25_d0;
output  [8:0] llike_26_address0;
output   llike_26_ce0;
output   llike_26_we0;
output  [63:0] llike_26_d0;
output  [8:0] llike_27_address0;
output   llike_27_ce0;
output   llike_27_we0;
output  [63:0] llike_27_d0;
output  [8:0] llike_28_address0;
output   llike_28_ce0;
output   llike_28_we0;
output  [63:0] llike_28_d0;
output  [8:0] llike_29_address0;
output   llike_29_ce0;
output   llike_29_we0;
output  [63:0] llike_29_d0;
output  [8:0] llike_30_address0;
output   llike_30_ce0;
output   llike_30_we0;
output  [63:0] llike_30_d0;
output  [8:0] llike_31_address0;
output   llike_31_ce0;
output   llike_31_we0;
output  [63:0] llike_31_d0;
output  [3:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [3:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [5:0] conv3_udiv;
output  [9:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [9:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [9:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [9:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [9:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [9:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [9:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [9:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
input  [1:0] empty;
input  [5:0] conv3_udiv_cast;
output  [3:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [3:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [3:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [3:0] init_2_address1;
output   init_2_ce1;
input  [63:0] init_2_q1;
output  [3:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [3:0] init_3_address1;
output   init_3_ce1;
input  [63:0] init_3_q1;
output  [63:0] grp_fu_1120_p_din0;
output  [63:0] grp_fu_1120_p_din1;
output  [1:0] grp_fu_1120_p_opcode;
input  [63:0] grp_fu_1120_p_dout0;
output   grp_fu_1120_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_48_reg_1707;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1012;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_1008_p2;
reg   [63:0] reg_1032;
wire   [9:0] conv3_udiv_cast_cast_fu_1052_p1;
reg   [9:0] conv3_udiv_cast_cast_reg_1691;
reg   [6:0] s_1_reg_1700;
reg   [0:0] tmp_48_reg_1707_pp0_iter1_reg;
reg   [0:0] tmp_48_reg_1707_pp0_iter2_reg;
wire   [4:0] trunc_ln13_fu_1072_p1;
reg   [4:0] trunc_ln13_reg_1711;
reg   [4:0] trunc_ln13_reg_1711_pp0_iter1_reg;
reg   [4:0] trunc_ln13_reg_1711_pp0_iter2_reg;
wire   [3:0] lshr_ln9_fu_1076_p4;
reg   [3:0] lshr_ln9_reg_1715;
wire   [2:0] tmp_52_fu_1142_p4;
reg   [2:0] tmp_52_reg_1766;
reg   [63:0] init_0_load_reg_1809;
wire   [63:0] tmp_fu_1184_p11;
reg   [63:0] tmp_reg_1814;
wire   [63:0] tmp_1_fu_1223_p11;
reg   [63:0] tmp_1_reg_1819;
reg   [63:0] init_1_load_reg_1864;
reg   [63:0] init_2_load_reg_1869;
reg   [63:0] init_3_load_reg_1874;
reg   [63:0] init_0_load_1_reg_1879;
reg   [63:0] init_1_load_1_reg_1884;
reg   [63:0] init_2_load_1_reg_1889;
reg   [63:0] init_3_load_1_reg_1894;
wire   [63:0] bitcast_ln14_fu_1286_p1;
wire   [63:0] tmp_2_fu_1306_p11;
reg   [63:0] tmp_2_reg_1904;
wire   [63:0] tmp_3_fu_1345_p11;
reg   [63:0] tmp_3_reg_1909;
wire   [63:0] bitcast_ln14_29_fu_1415_p1;
reg   [0:0] tmp_49_reg_1959;
reg   [0:0] tmp_49_reg_1959_pp0_iter1_reg;
wire   [63:0] tmp_4_fu_1442_p11;
reg   [63:0] tmp_4_reg_1964;
wire   [63:0] tmp_5_fu_1481_p11;
reg   [63:0] tmp_5_reg_1969;
wire   [63:0] bitcast_ln14_30_fu_1524_p1;
wire   [63:0] bitcast_ln14_31_fu_1528_p1;
wire   [63:0] tmp_6_fu_1578_p11;
reg   [63:0] tmp_6_reg_2024;
wire   [63:0] bitcast_ln14_32_fu_1601_p1;
wire   [63:0] bitcast_ln14_33_fu_1605_p1;
wire   [63:0] tmp_7_fu_1625_p11;
reg   [63:0] tmp_7_reg_2039;
wire   [63:0] bitcast_ln14_34_fu_1648_p1;
wire   [63:0] bitcast_ln14_35_fu_1652_p1;
wire   [63:0] zext_ln9_1_fu_1656_p1;
reg   [63:0] zext_ln9_1_reg_2054;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln9_fu_1086_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1102_p1;
wire   [63:0] zext_ln14_1_fu_1134_p1;
wire   [63:0] zext_ln14_8_fu_1160_p1;
wire   [63:0] zext_ln14_2_fu_1258_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1278_p1;
wire   [63:0] zext_ln14_4_fu_1376_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1407_p1;
wire   [63:0] zext_ln14_6_fu_1516_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1544_p1;
reg   [6:0] s_fu_174;
wire   [6:0] add_ln13_fu_1552_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce1_local;
reg    init_0_ce0_local;
reg    emission_0_ce1_local;
reg   [9:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [9:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [9:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [9:0] emission_1_address0_local;
reg    emission_2_ce1_local;
reg   [9:0] emission_2_address1_local;
reg    emission_2_ce0_local;
reg   [9:0] emission_2_address0_local;
reg    emission_3_ce1_local;
reg   [9:0] emission_3_address1_local;
reg    emission_3_ce0_local;
reg   [9:0] emission_3_address0_local;
reg    init_1_ce1_local;
reg    init_1_ce0_local;
reg    init_2_ce1_local;
reg    init_2_ce0_local;
reg    init_3_ce1_local;
reg    init_3_ce0_local;
reg    llike_16_we0_local;
reg    ap_predicate_pred762_state11;
reg    llike_16_ce0_local;
reg    llike_17_we0_local;
reg    llike_17_ce0_local;
reg    llike_8_we0_local;
reg    ap_predicate_pred775_state11;
reg    llike_8_ce0_local;
reg    llike_9_we0_local;
reg    llike_9_ce0_local;
reg    llike_we0_local;
reg    ap_predicate_pred788_state11;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_24_we0_local;
reg    ap_predicate_pred804_state11;
reg    llike_24_ce0_local;
reg    llike_25_we0_local;
reg    llike_25_ce0_local;
reg    llike_18_we0_local;
reg    ap_predicate_pred762_state12;
reg    llike_18_ce0_local;
reg    llike_19_we0_local;
reg    llike_19_ce0_local;
reg    llike_10_we0_local;
reg    ap_predicate_pred775_state12;
reg    llike_10_ce0_local;
reg    llike_11_we0_local;
reg    llike_11_ce0_local;
reg    llike_2_we0_local;
reg    ap_predicate_pred788_state12;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_26_we0_local;
reg    ap_predicate_pred804_state12;
reg    llike_26_ce0_local;
reg    llike_27_we0_local;
reg    llike_27_ce0_local;
reg    llike_20_we0_local;
reg    ap_predicate_pred762_state13;
reg    llike_20_ce0_local;
reg    llike_21_we0_local;
reg    llike_21_ce0_local;
reg    llike_12_we0_local;
reg    ap_predicate_pred775_state13;
reg    llike_12_ce0_local;
reg    llike_13_we0_local;
reg    llike_13_ce0_local;
reg    llike_4_we0_local;
reg    ap_predicate_pred788_state13;
reg    llike_4_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_28_we0_local;
reg    ap_predicate_pred804_state13;
reg    llike_28_ce0_local;
reg    llike_29_we0_local;
reg    llike_29_ce0_local;
reg    llike_22_we0_local;
reg    ap_predicate_pred762_state14;
reg    llike_22_ce0_local;
reg    llike_23_we0_local;
reg    llike_23_ce0_local;
reg    llike_14_we0_local;
reg    ap_predicate_pred775_state14;
reg    llike_14_ce0_local;
reg    llike_15_we0_local;
reg    llike_15_ce0_local;
reg    llike_6_we0_local;
reg    ap_predicate_pred788_state14;
reg    llike_6_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg    llike_30_we0_local;
reg    ap_predicate_pred804_state14;
reg    llike_30_ce0_local;
reg    llike_31_we0_local;
reg    llike_31_ce0_local;
reg   [63:0] grp_fu_1004_p0;
reg   [63:0] grp_fu_1004_p1;
reg   [63:0] grp_fu_1008_p0;
reg   [63:0] grp_fu_1008_p1;
wire   [9:0] or_ln_fu_1094_p3;
wire   [4:0] tmp_s_fu_1110_p4;
wire   [9:0] or_ln14_1_fu_1120_p3;
wire   [9:0] add_ln14_fu_1128_p2;
wire   [3:0] or_ln14_4_fu_1152_p3;
wire   [63:0] tmp_fu_1184_p2;
wire   [63:0] tmp_fu_1184_p4;
wire   [63:0] tmp_fu_1184_p6;
wire   [63:0] tmp_fu_1184_p8;
wire   [63:0] tmp_fu_1184_p9;
wire   [63:0] tmp_1_fu_1223_p2;
wire   [63:0] tmp_1_fu_1223_p4;
wire   [63:0] tmp_1_fu_1223_p6;
wire   [63:0] tmp_1_fu_1223_p8;
wire   [63:0] tmp_1_fu_1223_p9;
wire   [9:0] or_ln14_2_fu_1246_p3;
wire   [9:0] add_ln14_1_fu_1253_p2;
wire   [9:0] or_ln14_3_fu_1266_p3;
wire   [9:0] add_ln14_2_fu_1273_p2;
wire   [63:0] tmp_2_fu_1306_p2;
wire   [63:0] tmp_2_fu_1306_p4;
wire   [63:0] tmp_2_fu_1306_p6;
wire   [63:0] tmp_2_fu_1306_p8;
wire   [63:0] tmp_2_fu_1306_p9;
wire   [63:0] tmp_3_fu_1345_p2;
wire   [63:0] tmp_3_fu_1345_p4;
wire   [63:0] tmp_3_fu_1345_p6;
wire   [63:0] tmp_3_fu_1345_p8;
wire   [63:0] tmp_3_fu_1345_p9;
wire   [9:0] or_ln14_5_fu_1368_p4;
wire   [0:0] tmp_50_fu_1384_p3;
wire   [9:0] or_ln14_6_fu_1391_p5;
wire   [9:0] add_ln14_3_fu_1402_p2;
wire   [63:0] tmp_4_fu_1442_p2;
wire   [63:0] tmp_4_fu_1442_p4;
wire   [63:0] tmp_4_fu_1442_p6;
wire   [63:0] tmp_4_fu_1442_p8;
wire   [63:0] tmp_4_fu_1442_p9;
wire   [63:0] tmp_5_fu_1481_p2;
wire   [63:0] tmp_5_fu_1481_p4;
wire   [63:0] tmp_5_fu_1481_p6;
wire   [63:0] tmp_5_fu_1481_p8;
wire   [63:0] tmp_5_fu_1481_p9;
wire   [9:0] or_ln14_7_fu_1504_p3;
wire   [9:0] add_ln14_4_fu_1511_p2;
wire   [9:0] or_ln14_8_fu_1532_p3;
wire   [9:0] add_ln14_5_fu_1539_p2;
wire   [63:0] tmp_6_fu_1578_p2;
wire   [63:0] tmp_6_fu_1578_p4;
wire   [63:0] tmp_6_fu_1578_p6;
wire   [63:0] tmp_6_fu_1578_p8;
wire   [63:0] tmp_6_fu_1578_p9;
wire   [63:0] tmp_7_fu_1625_p2;
wire   [63:0] tmp_7_fu_1625_p4;
wire   [63:0] tmp_7_fu_1625_p6;
wire   [63:0] tmp_7_fu_1625_p8;
wire   [63:0] tmp_7_fu_1625_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [1:0] tmp_fu_1184_p1;
wire   [1:0] tmp_fu_1184_p3;
wire  signed [1:0] tmp_fu_1184_p5;
wire  signed [1:0] tmp_fu_1184_p7;
wire   [1:0] tmp_1_fu_1223_p1;
wire   [1:0] tmp_1_fu_1223_p3;
wire  signed [1:0] tmp_1_fu_1223_p5;
wire  signed [1:0] tmp_1_fu_1223_p7;
wire   [1:0] tmp_2_fu_1306_p1;
wire   [1:0] tmp_2_fu_1306_p3;
wire  signed [1:0] tmp_2_fu_1306_p5;
wire  signed [1:0] tmp_2_fu_1306_p7;
wire   [1:0] tmp_3_fu_1345_p1;
wire   [1:0] tmp_3_fu_1345_p3;
wire  signed [1:0] tmp_3_fu_1345_p5;
wire  signed [1:0] tmp_3_fu_1345_p7;
wire   [1:0] tmp_4_fu_1442_p1;
wire   [1:0] tmp_4_fu_1442_p3;
wire  signed [1:0] tmp_4_fu_1442_p5;
wire  signed [1:0] tmp_4_fu_1442_p7;
wire   [1:0] tmp_5_fu_1481_p1;
wire   [1:0] tmp_5_fu_1481_p3;
wire  signed [1:0] tmp_5_fu_1481_p5;
wire  signed [1:0] tmp_5_fu_1481_p7;
wire   [1:0] tmp_6_fu_1578_p1;
wire   [1:0] tmp_6_fu_1578_p3;
wire  signed [1:0] tmp_6_fu_1578_p5;
wire  signed [1:0] tmp_6_fu_1578_p7;
wire   [1:0] tmp_7_fu_1625_p1;
wire   [1:0] tmp_7_fu_1625_p3;
wire  signed [1:0] tmp_7_fu_1625_p5;
wire  signed [1:0] tmp_7_fu_1625_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_174 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1008_p0),.din1(grp_fu_1008_p1),.ce(1'b1),.dout(grp_fu_1008_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_fu_1184_p2),.din1(tmp_fu_1184_p4),.din2(tmp_fu_1184_p6),.din3(tmp_fu_1184_p8),.def(tmp_fu_1184_p9),.sel(empty),.dout(tmp_fu_1184_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_1_fu_1223_p2),.din1(tmp_1_fu_1223_p4),.din2(tmp_1_fu_1223_p6),.din3(tmp_1_fu_1223_p8),.def(tmp_1_fu_1223_p9),.sel(empty),.dout(tmp_1_fu_1223_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_2_fu_1306_p2),.din1(tmp_2_fu_1306_p4),.din2(tmp_2_fu_1306_p6),.din3(tmp_2_fu_1306_p8),.def(tmp_2_fu_1306_p9),.sel(empty),.dout(tmp_2_fu_1306_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(tmp_3_fu_1345_p2),.din1(tmp_3_fu_1345_p4),.din2(tmp_3_fu_1345_p6),.din3(tmp_3_fu_1345_p8),.def(tmp_3_fu_1345_p9),.sel(empty),.dout(tmp_3_fu_1345_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U7(.din0(tmp_4_fu_1442_p2),.din1(tmp_4_fu_1442_p4),.din2(tmp_4_fu_1442_p6),.din3(tmp_4_fu_1442_p8),.def(tmp_4_fu_1442_p9),.sel(empty),.dout(tmp_4_fu_1442_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U8(.din0(tmp_5_fu_1481_p2),.din1(tmp_5_fu_1481_p4),.din2(tmp_5_fu_1481_p6),.din3(tmp_5_fu_1481_p8),.def(tmp_5_fu_1481_p9),.sel(empty),.dout(tmp_5_fu_1481_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U9(.din0(tmp_6_fu_1578_p2),.din1(tmp_6_fu_1578_p4),.din2(tmp_6_fu_1578_p6),.din3(tmp_6_fu_1578_p8),.def(tmp_6_fu_1578_p9),.sel(empty),.dout(tmp_6_fu_1578_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U10(.din0(tmp_7_fu_1625_p2),.din1(tmp_7_fu_1625_p4),.din2(tmp_7_fu_1625_p6),.din3(tmp_7_fu_1625_p8),.def(tmp_7_fu_1625_p9),.sel(empty),.dout(tmp_7_fu_1625_p11));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_174 <= 7'd0;
    end else if (((tmp_48_reg_1707 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_174 <= add_ln13_fu_1552_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred762_state11 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd16);
        ap_predicate_pred775_state11 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd8);
        ap_predicate_pred788_state11 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd0);
        ap_predicate_pred804_state11 <= (~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd0) & ~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd8) & ~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd16));
        tmp_1_reg_1819 <= tmp_1_fu_1223_p11;
        tmp_reg_1814 <= tmp_fu_1184_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred762_state12 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd16);
        ap_predicate_pred775_state12 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd8);
        ap_predicate_pred788_state12 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd0);
        ap_predicate_pred804_state12 <= (~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd0) & ~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd8) & ~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd16));
        tmp_2_reg_1904 <= tmp_2_fu_1306_p11;
        tmp_3_reg_1909 <= tmp_3_fu_1345_p11;
        zext_ln9_1_reg_2054[0] <= zext_ln9_1_fu_1656_p1[0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred762_state13 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd16);
        ap_predicate_pred775_state13 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd8);
        ap_predicate_pred788_state13 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd0);
        ap_predicate_pred804_state13 <= (~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd0) & ~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd8) & ~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd16));
        tmp_49_reg_1959 <= s_1_reg_1700[32'd5];
        tmp_49_reg_1959_pp0_iter1_reg <= tmp_49_reg_1959;
        tmp_4_reg_1964 <= tmp_4_fu_1442_p11;
        tmp_5_reg_1969 <= tmp_5_fu_1481_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred762_state14 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd16);
        ap_predicate_pred775_state14 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd8);
        ap_predicate_pred788_state14 <= (trunc_ln13_reg_1711_pp0_iter2_reg == 5'd0);
        ap_predicate_pred804_state14 <= (~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd0) & ~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd8) & ~(trunc_ln13_reg_1711_pp0_iter2_reg == 5'd16));
        conv3_udiv_cast_cast_reg_1691[5 : 0] <= conv3_udiv_cast_cast_fu_1052_p1[5 : 0];
        lshr_ln9_reg_1715 <= {{ap_sig_allocacmp_s_1[5:2]}};
        s_1_reg_1700 <= ap_sig_allocacmp_s_1;
        tmp_48_reg_1707 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_48_reg_1707_pp0_iter1_reg <= tmp_48_reg_1707;
        tmp_48_reg_1707_pp0_iter2_reg <= tmp_48_reg_1707_pp0_iter1_reg;
        tmp_52_reg_1766 <= {{ap_sig_allocacmp_s_1[5:3]}};
        tmp_6_reg_2024 <= tmp_6_fu_1578_p11;
        tmp_7_reg_2039 <= tmp_7_fu_1625_p11;
        trunc_ln13_reg_1711 <= trunc_ln13_fu_1072_p1;
        trunc_ln13_reg_1711_pp0_iter1_reg <= trunc_ln13_reg_1711;
        trunc_ln13_reg_1711_pp0_iter2_reg <= trunc_ln13_reg_1711_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_1879 <= init_0_q0;
        init_0_load_reg_1809 <= init_0_q1;
        init_1_load_1_reg_1884 <= init_1_q0;
        init_1_load_reg_1864 <= init_1_q1;
        init_2_load_1_reg_1889 <= init_2_q0;
        init_2_load_reg_1869 <= init_2_q1;
        init_3_load_1_reg_1894 <= init_3_q0;
        init_3_load_reg_1874 <= init_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1012 <= grp_fu_1120_p_dout0;
        reg_1032 <= grp_fu_1008_p2;
    end
end
always @ (*) begin
    if (((tmp_48_reg_1707 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (tmp_48_reg_1707_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_174;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1544_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1407_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1134_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1376_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1258_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1102_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1544_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1407_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1134_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1376_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1258_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1102_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address0_local = zext_ln14_7_fu_1544_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_1407_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1134_p1;
        end else begin
            emission_2_address0_local = 'bx;
        end
    end else begin
        emission_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address1_local = zext_ln14_6_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_1376_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1258_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1102_p1;
        end else begin
            emission_2_address1_local = 'bx;
        end
    end else begin
        emission_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address0_local = zext_ln14_7_fu_1544_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_1407_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1134_p1;
        end else begin
            emission_3_address0_local = 'bx;
        end
    end else begin
        emission_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address1_local = zext_ln14_6_fu_1516_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_1376_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1258_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1102_p1;
        end else begin
            emission_3_address1_local = 'bx;
        end
    end else begin
        emission_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1004_p0 = bitcast_ln14_34_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1004_p0 = bitcast_ln14_32_fu_1601_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1004_p0 = bitcast_ln14_30_fu_1524_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1004_p0 = bitcast_ln14_fu_1286_p1;
    end else begin
        grp_fu_1004_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1004_p1 = tmp_6_reg_2024;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1004_p1 = tmp_4_reg_1964;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1004_p1 = tmp_2_reg_1904;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1004_p1 = tmp_reg_1814;
    end else begin
        grp_fu_1004_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1008_p0 = bitcast_ln14_35_fu_1652_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1008_p0 = bitcast_ln14_33_fu_1605_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1008_p0 = bitcast_ln14_31_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1008_p0 = bitcast_ln14_29_fu_1415_p1;
    end else begin
        grp_fu_1008_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1008_p1 = tmp_7_reg_2039;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1008_p1 = tmp_5_reg_1969;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1008_p1 = tmp_3_reg_1909;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1008_p1 = tmp_1_reg_1819;
    end else begin
        grp_fu_1008_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_2_ce0_local = 1'b1;
    end else begin
        init_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_2_ce1_local = 1'b1;
    end else begin
        init_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_3_ce0_local = 1'b1;
    end else begin
        init_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_3_ce1_local = 1'b1;
    end else begin
        init_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred775_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_10_we0_local = 1'b1;
    end else begin
        llike_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred775_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_11_we0_local = 1'b1;
    end else begin
        llike_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred775_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_we0_local = 1'b1;
    end else begin
        llike_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred775_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_we0_local = 1'b1;
    end else begin
        llike_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred775_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_we0_local = 1'b1;
    end else begin
        llike_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred775_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_16_ce0_local = 1'b1;
    end else begin
        llike_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred762_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_16_we0_local = 1'b1;
    end else begin
        llike_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_17_ce0_local = 1'b1;
    end else begin
        llike_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred762_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_17_we0_local = 1'b1;
    end else begin
        llike_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_18_ce0_local = 1'b1;
    end else begin
        llike_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred762_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_18_we0_local = 1'b1;
    end else begin
        llike_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_19_ce0_local = 1'b1;
    end else begin
        llike_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred762_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_19_we0_local = 1'b1;
    end else begin
        llike_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred788_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_20_ce0_local = 1'b1;
    end else begin
        llike_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred762_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_20_we0_local = 1'b1;
    end else begin
        llike_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_21_ce0_local = 1'b1;
    end else begin
        llike_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred762_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_21_we0_local = 1'b1;
    end else begin
        llike_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_22_ce0_local = 1'b1;
    end else begin
        llike_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred762_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_22_we0_local = 1'b1;
    end else begin
        llike_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_23_ce0_local = 1'b1;
    end else begin
        llike_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred762_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_23_we0_local = 1'b1;
    end else begin
        llike_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_24_ce0_local = 1'b1;
    end else begin
        llike_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred804_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_24_we0_local = 1'b1;
    end else begin
        llike_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_25_ce0_local = 1'b1;
    end else begin
        llike_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred804_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_25_we0_local = 1'b1;
    end else begin
        llike_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_26_ce0_local = 1'b1;
    end else begin
        llike_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred804_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_26_we0_local = 1'b1;
    end else begin
        llike_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_27_ce0_local = 1'b1;
    end else begin
        llike_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred804_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_27_we0_local = 1'b1;
    end else begin
        llike_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_28_ce0_local = 1'b1;
    end else begin
        llike_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred804_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_28_we0_local = 1'b1;
    end else begin
        llike_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_29_ce0_local = 1'b1;
    end else begin
        llike_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred804_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_29_we0_local = 1'b1;
    end else begin
        llike_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred788_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_30_ce0_local = 1'b1;
    end else begin
        llike_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred804_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_30_we0_local = 1'b1;
    end else begin
        llike_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_31_ce0_local = 1'b1;
    end else begin
        llike_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred804_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_31_we0_local = 1'b1;
    end else begin
        llike_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred788_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred788_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred788_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred788_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred788_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred775_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_8_we0_local = 1'b1;
    end else begin
        llike_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred775_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_9_we0_local = 1'b1;
    end else begin
        llike_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred788_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_1552_p2 = (s_1_reg_1700 + 7'd8);
assign add_ln14_1_fu_1253_p2 = (or_ln14_2_fu_1246_p3 + conv3_udiv_cast_cast_reg_1691);
assign add_ln14_2_fu_1273_p2 = (or_ln14_3_fu_1266_p3 + conv3_udiv_cast_cast_reg_1691);
assign add_ln14_3_fu_1402_p2 = (or_ln14_6_fu_1391_p5 + conv3_udiv_cast_cast_reg_1691);
assign add_ln14_4_fu_1511_p2 = (or_ln14_7_fu_1504_p3 + conv3_udiv_cast_cast_reg_1691);
assign add_ln14_5_fu_1539_p2 = (or_ln14_8_fu_1532_p3 + conv3_udiv_cast_cast_reg_1691);
assign add_ln14_fu_1128_p2 = (or_ln14_1_fu_1120_p3 + conv3_udiv_cast_cast_fu_1052_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_29_fu_1415_p1 = init_1_load_reg_1864;
assign bitcast_ln14_30_fu_1524_p1 = init_2_load_reg_1869;
assign bitcast_ln14_31_fu_1528_p1 = init_3_load_reg_1874;
assign bitcast_ln14_32_fu_1601_p1 = init_0_load_1_reg_1879;
assign bitcast_ln14_33_fu_1605_p1 = init_1_load_1_reg_1884;
assign bitcast_ln14_34_fu_1648_p1 = init_2_load_1_reg_1889;
assign bitcast_ln14_35_fu_1652_p1 = init_3_load_1_reg_1894;
assign bitcast_ln14_fu_1286_p1 = init_0_load_reg_1809;
assign conv3_udiv_cast_cast_fu_1052_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign emission_2_address0 = emission_2_address0_local;
assign emission_2_address1 = emission_2_address1_local;
assign emission_2_ce0 = emission_2_ce0_local;
assign emission_2_ce1 = emission_2_ce1_local;
assign emission_3_address0 = emission_3_address0_local;
assign emission_3_address1 = emission_3_address1_local;
assign emission_3_ce0 = emission_3_ce0_local;
assign emission_3_ce1 = emission_3_ce1_local;
assign grp_fu_1120_p_ce = 1'b1;
assign grp_fu_1120_p_din0 = grp_fu_1004_p0;
assign grp_fu_1120_p_din1 = grp_fu_1004_p1;
assign grp_fu_1120_p_opcode = 2'd0;
assign init_0_address0 = zext_ln14_8_fu_1160_p1;
assign init_0_address1 = zext_ln9_fu_1086_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = zext_ln14_8_fu_1160_p1;
assign init_1_address1 = zext_ln9_fu_1086_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign init_2_address0 = zext_ln14_8_fu_1160_p1;
assign init_2_address1 = zext_ln9_fu_1086_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_2_ce1 = init_2_ce1_local;
assign init_3_address0 = zext_ln14_8_fu_1160_p1;
assign init_3_address1 = zext_ln9_fu_1086_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_3_ce1 = init_3_ce1_local;
assign llike_10_address0 = zext_ln9_1_reg_2054;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_10_d0 = reg_1012;
assign llike_10_we0 = llike_10_we0_local;
assign llike_11_address0 = zext_ln9_1_reg_2054;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_11_d0 = reg_1032;
assign llike_11_we0 = llike_11_we0_local;
assign llike_12_address0 = zext_ln9_1_reg_2054;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_12_d0 = reg_1012;
assign llike_12_we0 = llike_12_we0_local;
assign llike_13_address0 = zext_ln9_1_reg_2054;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_13_d0 = reg_1032;
assign llike_13_we0 = llike_13_we0_local;
assign llike_14_address0 = zext_ln9_1_reg_2054;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_14_d0 = reg_1012;
assign llike_14_we0 = llike_14_we0_local;
assign llike_15_address0 = zext_ln9_1_reg_2054;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_15_d0 = reg_1032;
assign llike_15_we0 = llike_15_we0_local;
assign llike_16_address0 = zext_ln9_1_fu_1656_p1;
assign llike_16_ce0 = llike_16_ce0_local;
assign llike_16_d0 = reg_1012;
assign llike_16_we0 = llike_16_we0_local;
assign llike_17_address0 = zext_ln9_1_fu_1656_p1;
assign llike_17_ce0 = llike_17_ce0_local;
assign llike_17_d0 = reg_1032;
assign llike_17_we0 = llike_17_we0_local;
assign llike_18_address0 = zext_ln9_1_reg_2054;
assign llike_18_ce0 = llike_18_ce0_local;
assign llike_18_d0 = reg_1012;
assign llike_18_we0 = llike_18_we0_local;
assign llike_19_address0 = zext_ln9_1_reg_2054;
assign llike_19_ce0 = llike_19_ce0_local;
assign llike_19_d0 = reg_1032;
assign llike_19_we0 = llike_19_we0_local;
assign llike_1_address0 = zext_ln9_1_fu_1656_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1032;
assign llike_1_we0 = llike_1_we0_local;
assign llike_20_address0 = zext_ln9_1_reg_2054;
assign llike_20_ce0 = llike_20_ce0_local;
assign llike_20_d0 = reg_1012;
assign llike_20_we0 = llike_20_we0_local;
assign llike_21_address0 = zext_ln9_1_reg_2054;
assign llike_21_ce0 = llike_21_ce0_local;
assign llike_21_d0 = reg_1032;
assign llike_21_we0 = llike_21_we0_local;
assign llike_22_address0 = zext_ln9_1_reg_2054;
assign llike_22_ce0 = llike_22_ce0_local;
assign llike_22_d0 = reg_1012;
assign llike_22_we0 = llike_22_we0_local;
assign llike_23_address0 = zext_ln9_1_reg_2054;
assign llike_23_ce0 = llike_23_ce0_local;
assign llike_23_d0 = reg_1032;
assign llike_23_we0 = llike_23_we0_local;
assign llike_24_address0 = zext_ln9_1_fu_1656_p1;
assign llike_24_ce0 = llike_24_ce0_local;
assign llike_24_d0 = reg_1012;
assign llike_24_we0 = llike_24_we0_local;
assign llike_25_address0 = zext_ln9_1_fu_1656_p1;
assign llike_25_ce0 = llike_25_ce0_local;
assign llike_25_d0 = reg_1032;
assign llike_25_we0 = llike_25_we0_local;
assign llike_26_address0 = zext_ln9_1_reg_2054;
assign llike_26_ce0 = llike_26_ce0_local;
assign llike_26_d0 = reg_1012;
assign llike_26_we0 = llike_26_we0_local;
assign llike_27_address0 = zext_ln9_1_reg_2054;
assign llike_27_ce0 = llike_27_ce0_local;
assign llike_27_d0 = reg_1032;
assign llike_27_we0 = llike_27_we0_local;
assign llike_28_address0 = zext_ln9_1_reg_2054;
assign llike_28_ce0 = llike_28_ce0_local;
assign llike_28_d0 = reg_1012;
assign llike_28_we0 = llike_28_we0_local;
assign llike_29_address0 = zext_ln9_1_reg_2054;
assign llike_29_ce0 = llike_29_ce0_local;
assign llike_29_d0 = reg_1032;
assign llike_29_we0 = llike_29_we0_local;
assign llike_2_address0 = zext_ln9_1_reg_2054;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_1012;
assign llike_2_we0 = llike_2_we0_local;
assign llike_30_address0 = zext_ln9_1_reg_2054;
assign llike_30_ce0 = llike_30_ce0_local;
assign llike_30_d0 = reg_1012;
assign llike_30_we0 = llike_30_we0_local;
assign llike_31_address0 = zext_ln9_1_reg_2054;
assign llike_31_ce0 = llike_31_ce0_local;
assign llike_31_d0 = reg_1032;
assign llike_31_we0 = llike_31_we0_local;
assign llike_3_address0 = zext_ln9_1_reg_2054;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_1032;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_1_reg_2054;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_1012;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_1_reg_2054;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_1032;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = zext_ln9_1_reg_2054;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_1012;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = zext_ln9_1_reg_2054;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_1032;
assign llike_7_we0 = llike_7_we0_local;
assign llike_8_address0 = zext_ln9_1_fu_1656_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_8_d0 = reg_1012;
assign llike_8_we0 = llike_8_we0_local;
assign llike_9_address0 = zext_ln9_1_fu_1656_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_9_d0 = reg_1032;
assign llike_9_we0 = llike_9_we0_local;
assign llike_address0 = zext_ln9_1_fu_1656_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1012;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_1076_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln14_1_fu_1120_p3 = {{tmp_s_fu_1110_p4}, {5'd16}};
assign or_ln14_2_fu_1246_p3 = {{lshr_ln9_reg_1715}, {6'd32}};
assign or_ln14_3_fu_1266_p3 = {{lshr_ln9_reg_1715}, {6'd48}};
assign or_ln14_4_fu_1152_p3 = {{tmp_52_fu_1142_p4}, {1'd1}};
assign or_ln14_5_fu_1368_p4 = {{{tmp_52_reg_1766}, {1'd1}}, {conv3_udiv}};
assign or_ln14_6_fu_1391_p5 = {{{{tmp_52_reg_1766}, {1'd1}}, {tmp_50_fu_1384_p3}}, {5'd16}};
assign or_ln14_7_fu_1504_p3 = {{tmp_52_reg_1766}, {7'd96}};
assign or_ln14_8_fu_1532_p3 = {{tmp_52_reg_1766}, {7'd112}};
assign or_ln_fu_1094_p3 = {{lshr_ln9_fu_1076_p4}, {conv3_udiv}};
assign tmp_1_fu_1223_p2 = emission_0_q0;
assign tmp_1_fu_1223_p4 = emission_1_q0;
assign tmp_1_fu_1223_p6 = emission_2_q0;
assign tmp_1_fu_1223_p8 = emission_3_q0;
assign tmp_1_fu_1223_p9 = 'bx;
assign tmp_2_fu_1306_p2 = emission_0_q1;
assign tmp_2_fu_1306_p4 = emission_1_q1;
assign tmp_2_fu_1306_p6 = emission_2_q1;
assign tmp_2_fu_1306_p8 = emission_3_q1;
assign tmp_2_fu_1306_p9 = 'bx;
assign tmp_3_fu_1345_p2 = emission_0_q0;
assign tmp_3_fu_1345_p4 = emission_1_q0;
assign tmp_3_fu_1345_p6 = emission_2_q0;
assign tmp_3_fu_1345_p8 = emission_3_q0;
assign tmp_3_fu_1345_p9 = 'bx;
assign tmp_4_fu_1442_p2 = emission_0_q1;
assign tmp_4_fu_1442_p4 = emission_1_q1;
assign tmp_4_fu_1442_p6 = emission_2_q1;
assign tmp_4_fu_1442_p8 = emission_3_q1;
assign tmp_4_fu_1442_p9 = 'bx;
assign tmp_50_fu_1384_p3 = s_1_reg_1700[32'd1];
assign tmp_52_fu_1142_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_5_fu_1481_p2 = emission_0_q0;
assign tmp_5_fu_1481_p4 = emission_1_q0;
assign tmp_5_fu_1481_p6 = emission_2_q0;
assign tmp_5_fu_1481_p8 = emission_3_q0;
assign tmp_5_fu_1481_p9 = 'bx;
assign tmp_6_fu_1578_p2 = emission_0_q1;
assign tmp_6_fu_1578_p4 = emission_1_q1;
assign tmp_6_fu_1578_p6 = emission_2_q1;
assign tmp_6_fu_1578_p8 = emission_3_q1;
assign tmp_6_fu_1578_p9 = 'bx;
assign tmp_7_fu_1625_p2 = emission_0_q0;
assign tmp_7_fu_1625_p4 = emission_1_q0;
assign tmp_7_fu_1625_p6 = emission_2_q0;
assign tmp_7_fu_1625_p8 = emission_3_q0;
assign tmp_7_fu_1625_p9 = 'bx;
assign tmp_fu_1184_p2 = emission_0_q1;
assign tmp_fu_1184_p4 = emission_1_q1;
assign tmp_fu_1184_p6 = emission_2_q1;
assign tmp_fu_1184_p8 = emission_3_q1;
assign tmp_fu_1184_p9 = 'bx;
assign tmp_s_fu_1110_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign trunc_ln13_fu_1072_p1 = ap_sig_allocacmp_s_1[4:0];
assign zext_ln14_1_fu_1134_p1 = add_ln14_fu_1128_p2;
assign zext_ln14_2_fu_1258_p1 = add_ln14_1_fu_1253_p2;
assign zext_ln14_3_fu_1278_p1 = add_ln14_2_fu_1273_p2;
assign zext_ln14_4_fu_1376_p1 = or_ln14_5_fu_1368_p4;
assign zext_ln14_5_fu_1407_p1 = add_ln14_3_fu_1402_p2;
assign zext_ln14_6_fu_1516_p1 = add_ln14_4_fu_1511_p2;
assign zext_ln14_7_fu_1544_p1 = add_ln14_5_fu_1539_p2;
assign zext_ln14_8_fu_1160_p1 = or_ln14_4_fu_1152_p3;
assign zext_ln14_fu_1102_p1 = or_ln_fu_1094_p3;
assign zext_ln9_1_fu_1656_p1 = tmp_49_reg_1959_pp0_iter1_reg;
assign zext_ln9_fu_1086_p1 = lshr_ln9_fu_1076_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_1691[9:6] <= 4'b0000;
    zext_ln9_1_reg_2054[63:1] <= 63'b000000000000000000000000000000000000000000000000000000000000000;
end
endmodule 