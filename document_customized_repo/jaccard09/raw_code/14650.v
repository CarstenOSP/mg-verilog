module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,llike_8_address0,llike_8_ce0,llike_8_we0,llike_8_d0,llike_9_address0,llike_9_ce0,llike_9_we0,llike_9_d0,llike_10_address0,llike_10_ce0,llike_10_we0,llike_10_d0,llike_11_address0,llike_11_ce0,llike_11_we0,llike_11_d0,llike_12_address0,llike_12_ce0,llike_12_we0,llike_12_d0,llike_13_address0,llike_13_ce0,llike_13_we0,llike_13_d0,llike_14_address0,llike_14_ce0,llike_14_we0,llike_14_d0,llike_15_address0,llike_15_ce0,llike_15_we0,llike_15_d0,init_0_address0,init_0_ce0,init_0_q0,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,emission_4_address0,emission_4_ce0,emission_4_q0,emission_4_address1,emission_4_ce1,emission_4_q1,emission_5_address0,emission_5_ce0,emission_5_q0,emission_5_address1,emission_5_ce1,emission_5_q1,emission_6_address0,emission_6_ce0,emission_6_q0,emission_6_address1,emission_6_ce1,emission_6_q1,emission_7_address0,emission_7_ce0,emission_7_q0,emission_7_address1,emission_7_ce1,emission_7_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,init_4_address0,init_4_ce0,init_4_q0,init_5_address0,init_5_ce0,init_5_q0,init_6_address0,init_6_ce0,init_6_q0,init_7_address0,init_7_ce0,init_7_q0,grp_fu_1256_p_din0,grp_fu_1256_p_din1,grp_fu_1256_p_opcode,grp_fu_1256_p_dout0,grp_fu_1256_p_ce); 
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
output  [9:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [9:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [9:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [9:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [9:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [9:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [9:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [9:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [9:0] llike_8_address0;
output   llike_8_ce0;
output   llike_8_we0;
output  [63:0] llike_8_d0;
output  [9:0] llike_9_address0;
output   llike_9_ce0;
output   llike_9_we0;
output  [63:0] llike_9_d0;
output  [9:0] llike_10_address0;
output   llike_10_ce0;
output   llike_10_we0;
output  [63:0] llike_10_d0;
output  [9:0] llike_11_address0;
output   llike_11_ce0;
output   llike_11_we0;
output  [63:0] llike_11_d0;
output  [9:0] llike_12_address0;
output   llike_12_ce0;
output   llike_12_we0;
output  [63:0] llike_12_d0;
output  [9:0] llike_13_address0;
output   llike_13_ce0;
output   llike_13_we0;
output  [63:0] llike_13_d0;
output  [9:0] llike_14_address0;
output   llike_14_ce0;
output   llike_14_we0;
output  [63:0] llike_14_d0;
output  [9:0] llike_15_address0;
output   llike_15_ce0;
output   llike_15_we0;
output  [63:0] llike_15_d0;
output  [2:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
input  [4:0] conv3_udiv;
output  [8:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [8:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [8:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [8:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [8:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [8:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [8:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [8:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
output  [8:0] emission_4_address0;
output   emission_4_ce0;
input  [63:0] emission_4_q0;
output  [8:0] emission_4_address1;
output   emission_4_ce1;
input  [63:0] emission_4_q1;
output  [8:0] emission_5_address0;
output   emission_5_ce0;
input  [63:0] emission_5_q0;
output  [8:0] emission_5_address1;
output   emission_5_ce1;
input  [63:0] emission_5_q1;
output  [8:0] emission_6_address0;
output   emission_6_ce0;
input  [63:0] emission_6_q0;
output  [8:0] emission_6_address1;
output   emission_6_ce1;
input  [63:0] emission_6_q1;
output  [8:0] emission_7_address0;
output   emission_7_ce0;
input  [63:0] emission_7_q0;
output  [8:0] emission_7_address1;
output   emission_7_ce1;
input  [63:0] emission_7_q1;
input  [2:0] empty;
input  [4:0] conv3_udiv_cast;
output  [2:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [2:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [2:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [2:0] init_4_address0;
output   init_4_ce0;
input  [63:0] init_4_q0;
output  [2:0] init_5_address0;
output   init_5_ce0;
input  [63:0] init_5_q0;
output  [2:0] init_6_address0;
output   init_6_ce0;
input  [63:0] init_6_q0;
output  [2:0] init_7_address0;
output   init_7_ce0;
input  [63:0] init_7_q0;
output  [63:0] grp_fu_1256_p_din0;
output  [63:0] grp_fu_1256_p_din1;
output  [1:0] grp_fu_1256_p_opcode;
input  [63:0] grp_fu_1256_p_dout0;
output   grp_fu_1256_p_ce;
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
reg   [0:0] tmp_41_reg_2047;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1088;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_1084_p2;
reg   [63:0] reg_1100;
wire   [8:0] conv3_udiv_cast_cast_fu_1112_p1;
reg   [8:0] conv3_udiv_cast_cast_reg_2031;
reg   [6:0] s_1_reg_2040;
wire   [0:0] tmp_41_fu_1124_p3;
reg   [0:0] tmp_41_reg_2047_pp0_iter1_reg;
reg   [0:0] tmp_41_reg_2047_pp0_iter2_reg;
wire   [2:0] lshr_ln9_fu_1136_p4;
reg   [2:0] lshr_ln9_reg_2051;
wire   [3:0] tmp_s_fu_1158_p4;
reg   [3:0] tmp_s_reg_2064;
wire   [0:0] icmp_ln14_fu_1224_p2;
reg   [0:0] icmp_ln14_reg_2185;
reg   [0:0] icmp_ln14_reg_2185_pp0_iter1_reg;
reg   [0:0] icmp_ln14_reg_2185_pp0_iter2_reg;
reg   [0:0] icmp_ln14_reg_2185_pp0_iter3_reg;
reg   [63:0] init_0_load_reg_2189;
wire   [63:0] tmp_fu_1262_p19;
reg   [63:0] tmp_reg_2194;
wire   [63:0] tmp_1_fu_1333_p19;
reg   [63:0] tmp_1_reg_2199;
reg   [63:0] init_1_load_reg_2284;
reg   [63:0] init_2_load_reg_2289;
reg   [63:0] init_3_load_reg_2294;
reg   [63:0] init_4_load_reg_2299;
reg   [63:0] init_5_load_reg_2304;
reg   [63:0] init_6_load_reg_2309;
reg   [63:0] init_7_load_reg_2314;
wire   [63:0] bitcast_ln14_fu_1420_p1;
wire   [63:0] tmp_2_fu_1456_p19;
reg   [63:0] tmp_2_reg_2324;
wire   [63:0] tmp_3_fu_1527_p19;
reg   [63:0] tmp_3_reg_2329;
wire   [63:0] bitcast_ln14_57_fu_1621_p1;
reg   [1:0] lshr_ln9_1_reg_2419;
reg   [1:0] lshr_ln9_1_reg_2419_pp0_iter1_reg;
wire   [63:0] tmp_4_fu_1666_p19;
reg   [63:0] tmp_4_reg_2424;
wire   [63:0] tmp_5_fu_1737_p19;
reg   [63:0] tmp_5_reg_2429;
wire   [63:0] bitcast_ln14_58_fu_1800_p1;
wire   [63:0] bitcast_ln14_59_fu_1804_p1;
wire   [63:0] tmp_6_fu_1874_p19;
reg   [63:0] tmp_6_reg_2524;
wire   [63:0] bitcast_ln14_60_fu_1913_p1;
wire   [63:0] bitcast_ln14_61_fu_1917_p1;
wire   [63:0] tmp_7_fu_1953_p19;
reg   [63:0] tmp_7_reg_2539;
wire   [63:0] bitcast_ln14_62_fu_1992_p1;
wire   [63:0] bitcast_ln14_63_fu_1996_p1;
wire   [63:0] zext_ln9_1_fu_2000_p1;
reg   [63:0] zext_ln9_1_reg_2554;
reg   [9:0] llike_6_addr_reg_2570;
reg   [9:0] llike_7_addr_reg_2575;
reg   [9:0] llike_14_addr_reg_2580;
reg   [9:0] llike_15_addr_reg_2585;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln9_fu_1146_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1176_p1;
wire   [63:0] zext_ln14_1_fu_1212_p1;
wire   [63:0] zext_ln14_2_fu_1384_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1408_p1;
wire   [63:0] zext_ln14_4_fu_1574_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1609_p1;
wire   [63:0] zext_ln14_6_fu_1788_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1820_p1;
reg   [6:0] s_fu_166;
wire   [6:0] add_ln13_fu_1832_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce0_local;
reg    emission_0_ce1_local;
reg   [8:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [8:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [8:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [8:0] emission_1_address0_local;
reg    emission_2_ce1_local;
reg   [8:0] emission_2_address1_local;
reg    emission_2_ce0_local;
reg   [8:0] emission_2_address0_local;
reg    emission_3_ce1_local;
reg   [8:0] emission_3_address1_local;
reg    emission_3_ce0_local;
reg   [8:0] emission_3_address0_local;
reg    emission_4_ce1_local;
reg   [8:0] emission_4_address1_local;
reg    emission_4_ce0_local;
reg   [8:0] emission_4_address0_local;
reg    emission_5_ce1_local;
reg   [8:0] emission_5_address1_local;
reg    emission_5_ce0_local;
reg   [8:0] emission_5_address0_local;
reg    emission_6_ce1_local;
reg   [8:0] emission_6_address1_local;
reg    emission_6_ce0_local;
reg   [8:0] emission_6_address0_local;
reg    emission_7_ce1_local;
reg   [8:0] emission_7_address1_local;
reg    emission_7_ce0_local;
reg   [8:0] emission_7_address0_local;
reg    init_1_ce0_local;
reg    init_2_ce0_local;
reg    init_3_ce0_local;
reg    init_4_ce0_local;
reg    init_5_ce0_local;
reg    init_6_ce0_local;
reg    init_7_ce0_local;
reg    llike_8_we0_local;
reg    llike_8_ce0_local;
reg    llike_9_we0_local;
reg    llike_9_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_10_we0_local;
reg    llike_10_ce0_local;
reg    llike_11_we0_local;
reg    llike_11_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_12_we0_local;
reg    llike_12_ce0_local;
reg    llike_13_we0_local;
reg    llike_13_ce0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_14_we0_local;
reg    llike_14_ce0_local;
reg    llike_15_we0_local;
reg    llike_15_ce0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg   [63:0] grp_fu_1080_p0;
reg   [63:0] grp_fu_1080_p1;
reg   [63:0] grp_fu_1084_p0;
reg   [63:0] grp_fu_1084_p1;
wire   [8:0] or_ln_fu_1168_p3;
wire   [4:0] tmp_72_fu_1188_p4;
wire   [8:0] or_ln14_1_fu_1198_p3;
wire   [8:0] add_ln14_fu_1206_p2;
wire   [3:0] trunc_ln13_fu_1132_p1;
wire   [63:0] tmp_fu_1262_p2;
wire   [63:0] tmp_fu_1262_p4;
wire   [63:0] tmp_fu_1262_p6;
wire   [63:0] tmp_fu_1262_p8;
wire   [63:0] tmp_fu_1262_p10;
wire   [63:0] tmp_fu_1262_p12;
wire   [63:0] tmp_fu_1262_p14;
wire   [63:0] tmp_fu_1262_p16;
wire   [63:0] tmp_fu_1262_p17;
wire   [63:0] tmp_1_fu_1333_p2;
wire   [63:0] tmp_1_fu_1333_p4;
wire   [63:0] tmp_1_fu_1333_p6;
wire   [63:0] tmp_1_fu_1333_p8;
wire   [63:0] tmp_1_fu_1333_p10;
wire   [63:0] tmp_1_fu_1333_p12;
wire   [63:0] tmp_1_fu_1333_p14;
wire   [63:0] tmp_1_fu_1333_p16;
wire   [63:0] tmp_1_fu_1333_p17;
wire   [8:0] or_ln14_2_fu_1372_p3;
wire   [8:0] add_ln14_1_fu_1379_p2;
wire   [8:0] or_ln14_3_fu_1396_p3;
wire   [8:0] add_ln14_2_fu_1403_p2;
wire   [63:0] tmp_2_fu_1456_p2;
wire   [63:0] tmp_2_fu_1456_p4;
wire   [63:0] tmp_2_fu_1456_p6;
wire   [63:0] tmp_2_fu_1456_p8;
wire   [63:0] tmp_2_fu_1456_p10;
wire   [63:0] tmp_2_fu_1456_p12;
wire   [63:0] tmp_2_fu_1456_p14;
wire   [63:0] tmp_2_fu_1456_p16;
wire   [63:0] tmp_2_fu_1456_p17;
wire   [63:0] tmp_3_fu_1527_p2;
wire   [63:0] tmp_3_fu_1527_p4;
wire   [63:0] tmp_3_fu_1527_p6;
wire   [63:0] tmp_3_fu_1527_p8;
wire   [63:0] tmp_3_fu_1527_p10;
wire   [63:0] tmp_3_fu_1527_p12;
wire   [63:0] tmp_3_fu_1527_p14;
wire   [63:0] tmp_3_fu_1527_p16;
wire   [63:0] tmp_3_fu_1527_p17;
wire   [8:0] or_ln14_4_fu_1566_p4;
wire   [0:0] tmp_42_fu_1586_p3;
wire   [8:0] or_ln14_5_fu_1593_p5;
wire   [8:0] add_ln14_3_fu_1604_p2;
wire   [63:0] tmp_4_fu_1666_p2;
wire   [63:0] tmp_4_fu_1666_p4;
wire   [63:0] tmp_4_fu_1666_p6;
wire   [63:0] tmp_4_fu_1666_p8;
wire   [63:0] tmp_4_fu_1666_p10;
wire   [63:0] tmp_4_fu_1666_p12;
wire   [63:0] tmp_4_fu_1666_p14;
wire   [63:0] tmp_4_fu_1666_p16;
wire   [63:0] tmp_4_fu_1666_p17;
wire   [63:0] tmp_5_fu_1737_p2;
wire   [63:0] tmp_5_fu_1737_p4;
wire   [63:0] tmp_5_fu_1737_p6;
wire   [63:0] tmp_5_fu_1737_p8;
wire   [63:0] tmp_5_fu_1737_p10;
wire   [63:0] tmp_5_fu_1737_p12;
wire   [63:0] tmp_5_fu_1737_p14;
wire   [63:0] tmp_5_fu_1737_p16;
wire   [63:0] tmp_5_fu_1737_p17;
wire   [8:0] or_ln14_6_fu_1776_p3;
wire   [8:0] add_ln14_4_fu_1783_p2;
wire   [8:0] or_ln14_7_fu_1808_p3;
wire   [8:0] add_ln14_5_fu_1815_p2;
wire   [63:0] tmp_6_fu_1874_p2;
wire   [63:0] tmp_6_fu_1874_p4;
wire   [63:0] tmp_6_fu_1874_p6;
wire   [63:0] tmp_6_fu_1874_p8;
wire   [63:0] tmp_6_fu_1874_p10;
wire   [63:0] tmp_6_fu_1874_p12;
wire   [63:0] tmp_6_fu_1874_p14;
wire   [63:0] tmp_6_fu_1874_p16;
wire   [63:0] tmp_6_fu_1874_p17;
wire   [63:0] tmp_7_fu_1953_p2;
wire   [63:0] tmp_7_fu_1953_p4;
wire   [63:0] tmp_7_fu_1953_p6;
wire   [63:0] tmp_7_fu_1953_p8;
wire   [63:0] tmp_7_fu_1953_p10;
wire   [63:0] tmp_7_fu_1953_p12;
wire   [63:0] tmp_7_fu_1953_p14;
wire   [63:0] tmp_7_fu_1953_p16;
wire   [63:0] tmp_7_fu_1953_p17;
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
wire   [2:0] tmp_fu_1262_p1;
wire   [2:0] tmp_fu_1262_p3;
wire   [2:0] tmp_fu_1262_p5;
wire   [2:0] tmp_fu_1262_p7;
wire  signed [2:0] tmp_fu_1262_p9;
wire  signed [2:0] tmp_fu_1262_p11;
wire  signed [2:0] tmp_fu_1262_p13;
wire  signed [2:0] tmp_fu_1262_p15;
wire   [2:0] tmp_1_fu_1333_p1;
wire   [2:0] tmp_1_fu_1333_p3;
wire   [2:0] tmp_1_fu_1333_p5;
wire   [2:0] tmp_1_fu_1333_p7;
wire  signed [2:0] tmp_1_fu_1333_p9;
wire  signed [2:0] tmp_1_fu_1333_p11;
wire  signed [2:0] tmp_1_fu_1333_p13;
wire  signed [2:0] tmp_1_fu_1333_p15;
wire   [2:0] tmp_2_fu_1456_p1;
wire   [2:0] tmp_2_fu_1456_p3;
wire   [2:0] tmp_2_fu_1456_p5;
wire   [2:0] tmp_2_fu_1456_p7;
wire  signed [2:0] tmp_2_fu_1456_p9;
wire  signed [2:0] tmp_2_fu_1456_p11;
wire  signed [2:0] tmp_2_fu_1456_p13;
wire  signed [2:0] tmp_2_fu_1456_p15;
wire   [2:0] tmp_3_fu_1527_p1;
wire   [2:0] tmp_3_fu_1527_p3;
wire   [2:0] tmp_3_fu_1527_p5;
wire   [2:0] tmp_3_fu_1527_p7;
wire  signed [2:0] tmp_3_fu_1527_p9;
wire  signed [2:0] tmp_3_fu_1527_p11;
wire  signed [2:0] tmp_3_fu_1527_p13;
wire  signed [2:0] tmp_3_fu_1527_p15;
wire   [2:0] tmp_4_fu_1666_p1;
wire   [2:0] tmp_4_fu_1666_p3;
wire   [2:0] tmp_4_fu_1666_p5;
wire   [2:0] tmp_4_fu_1666_p7;
wire  signed [2:0] tmp_4_fu_1666_p9;
wire  signed [2:0] tmp_4_fu_1666_p11;
wire  signed [2:0] tmp_4_fu_1666_p13;
wire  signed [2:0] tmp_4_fu_1666_p15;
wire   [2:0] tmp_5_fu_1737_p1;
wire   [2:0] tmp_5_fu_1737_p3;
wire   [2:0] tmp_5_fu_1737_p5;
wire   [2:0] tmp_5_fu_1737_p7;
wire  signed [2:0] tmp_5_fu_1737_p9;
wire  signed [2:0] tmp_5_fu_1737_p11;
wire  signed [2:0] tmp_5_fu_1737_p13;
wire  signed [2:0] tmp_5_fu_1737_p15;
wire   [2:0] tmp_6_fu_1874_p1;
wire   [2:0] tmp_6_fu_1874_p3;
wire   [2:0] tmp_6_fu_1874_p5;
wire   [2:0] tmp_6_fu_1874_p7;
wire  signed [2:0] tmp_6_fu_1874_p9;
wire  signed [2:0] tmp_6_fu_1874_p11;
wire  signed [2:0] tmp_6_fu_1874_p13;
wire  signed [2:0] tmp_6_fu_1874_p15;
wire   [2:0] tmp_7_fu_1953_p1;
wire   [2:0] tmp_7_fu_1953_p3;
wire   [2:0] tmp_7_fu_1953_p5;
wire   [2:0] tmp_7_fu_1953_p7;
wire  signed [2:0] tmp_7_fu_1953_p9;
wire  signed [2:0] tmp_7_fu_1953_p11;
wire  signed [2:0] tmp_7_fu_1953_p13;
wire  signed [2:0] tmp_7_fu_1953_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_166 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1084_p0),.din1(grp_fu_1084_p1),.ce(1'b1),.dout(grp_fu_1084_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(tmp_fu_1262_p2),.din1(tmp_fu_1262_p4),.din2(tmp_fu_1262_p6),.din3(tmp_fu_1262_p8),.din4(tmp_fu_1262_p10),.din5(tmp_fu_1262_p12),.din6(tmp_fu_1262_p14),.din7(tmp_fu_1262_p16),.def(tmp_fu_1262_p17),.sel(empty),.dout(tmp_fu_1262_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_1_fu_1333_p2),.din1(tmp_1_fu_1333_p4),.din2(tmp_1_fu_1333_p6),.din3(tmp_1_fu_1333_p8),.din4(tmp_1_fu_1333_p10),.din5(tmp_1_fu_1333_p12),.din6(tmp_1_fu_1333_p14),.din7(tmp_1_fu_1333_p16),.def(tmp_1_fu_1333_p17),.sel(empty),.dout(tmp_1_fu_1333_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_2_fu_1456_p2),.din1(tmp_2_fu_1456_p4),.din2(tmp_2_fu_1456_p6),.din3(tmp_2_fu_1456_p8),.din4(tmp_2_fu_1456_p10),.din5(tmp_2_fu_1456_p12),.din6(tmp_2_fu_1456_p14),.din7(tmp_2_fu_1456_p16),.def(tmp_2_fu_1456_p17),.sel(empty),.dout(tmp_2_fu_1456_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_3_fu_1527_p2),.din1(tmp_3_fu_1527_p4),.din2(tmp_3_fu_1527_p6),.din3(tmp_3_fu_1527_p8),.din4(tmp_3_fu_1527_p10),.din5(tmp_3_fu_1527_p12),.din6(tmp_3_fu_1527_p14),.din7(tmp_3_fu_1527_p16),.def(tmp_3_fu_1527_p17),.sel(empty),.dout(tmp_3_fu_1527_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U7(.din0(tmp_4_fu_1666_p2),.din1(tmp_4_fu_1666_p4),.din2(tmp_4_fu_1666_p6),.din3(tmp_4_fu_1666_p8),.din4(tmp_4_fu_1666_p10),.din5(tmp_4_fu_1666_p12),.din6(tmp_4_fu_1666_p14),.din7(tmp_4_fu_1666_p16),.def(tmp_4_fu_1666_p17),.sel(empty),.dout(tmp_4_fu_1666_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U8(.din0(tmp_5_fu_1737_p2),.din1(tmp_5_fu_1737_p4),.din2(tmp_5_fu_1737_p6),.din3(tmp_5_fu_1737_p8),.din4(tmp_5_fu_1737_p10),.din5(tmp_5_fu_1737_p12),.din6(tmp_5_fu_1737_p14),.din7(tmp_5_fu_1737_p16),.def(tmp_5_fu_1737_p17),.sel(empty),.dout(tmp_5_fu_1737_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U9(.din0(tmp_6_fu_1874_p2),.din1(tmp_6_fu_1874_p4),.din2(tmp_6_fu_1874_p6),.din3(tmp_6_fu_1874_p8),.din4(tmp_6_fu_1874_p10),.din5(tmp_6_fu_1874_p12),.din6(tmp_6_fu_1874_p14),.din7(tmp_6_fu_1874_p16),.def(tmp_6_fu_1874_p17),.sel(empty),.dout(tmp_6_fu_1874_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U10(.din0(tmp_7_fu_1953_p2),.din1(tmp_7_fu_1953_p4),.din2(tmp_7_fu_1953_p6),.din3(tmp_7_fu_1953_p8),.din4(tmp_7_fu_1953_p10),.din5(tmp_7_fu_1953_p12),.din6(tmp_7_fu_1953_p14),.din7(tmp_7_fu_1953_p16),.def(tmp_7_fu_1953_p17),.sel(empty),.dout(tmp_7_fu_1953_p19));
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
        s_fu_166 <= 7'd0;
    end else if (((tmp_41_reg_2047 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_166 <= add_ln13_fu_1832_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_2031[4 : 0] <= conv3_udiv_cast_cast_fu_1112_p1[4 : 0];
        icmp_ln14_reg_2185 <= icmp_ln14_fu_1224_p2;
        icmp_ln14_reg_2185_pp0_iter1_reg <= icmp_ln14_reg_2185;
        icmp_ln14_reg_2185_pp0_iter2_reg <= icmp_ln14_reg_2185_pp0_iter1_reg;
        icmp_ln14_reg_2185_pp0_iter3_reg <= icmp_ln14_reg_2185_pp0_iter2_reg;
        llike_14_addr_reg_2580[1 : 0] <= zext_ln9_1_reg_2554[1 : 0];
        llike_15_addr_reg_2585[1 : 0] <= zext_ln9_1_reg_2554[1 : 0];
        llike_6_addr_reg_2570[1 : 0] <= zext_ln9_1_reg_2554[1 : 0];
        llike_7_addr_reg_2575[1 : 0] <= zext_ln9_1_reg_2554[1 : 0];
        lshr_ln9_reg_2051 <= {{ap_sig_allocacmp_s_1[5:3]}};
        s_1_reg_2040 <= ap_sig_allocacmp_s_1;
        tmp_41_reg_2047 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_41_reg_2047_pp0_iter1_reg <= tmp_41_reg_2047;
        tmp_41_reg_2047_pp0_iter2_reg <= tmp_41_reg_2047_pp0_iter1_reg;
        tmp_6_reg_2524 <= tmp_6_fu_1874_p19;
        tmp_7_reg_2539 <= tmp_7_fu_1953_p19;
        tmp_s_reg_2064 <= {{ap_sig_allocacmp_s_1[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_reg_2189 <= init_0_q0;
        init_1_load_reg_2284 <= init_1_q0;
        init_2_load_reg_2289 <= init_2_q0;
        init_3_load_reg_2294 <= init_3_q0;
        init_4_load_reg_2299 <= init_4_q0;
        init_5_load_reg_2304 <= init_5_q0;
        init_6_load_reg_2309 <= init_6_q0;
        init_7_load_reg_2314 <= init_7_q0;
        tmp_1_reg_2199 <= tmp_1_fu_1333_p19;
        tmp_reg_2194 <= tmp_fu_1262_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln9_1_reg_2419 <= {{s_1_reg_2040[5:4]}};
        lshr_ln9_1_reg_2419_pp0_iter1_reg <= lshr_ln9_1_reg_2419;
        tmp_4_reg_2424 <= tmp_4_fu_1666_p19;
        tmp_5_reg_2429 <= tmp_5_fu_1737_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1088 <= grp_fu_1256_p_dout0;
        reg_1100 <= grp_fu_1084_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_2324 <= tmp_2_fu_1456_p19;
        tmp_3_reg_2329 <= tmp_3_fu_1527_p19;
        zext_ln9_1_reg_2554[1 : 0] <= zext_ln9_1_fu_2000_p1[1 : 0];
    end
end
always @ (*) begin
    if (((tmp_41_reg_2047 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (tmp_41_reg_2047_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_166;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1820_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1212_p1;
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
            emission_0_address1_local = zext_ln14_6_fu_1788_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1574_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1384_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1176_p1;
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
            emission_1_address0_local = zext_ln14_7_fu_1820_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1212_p1;
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
            emission_1_address1_local = zext_ln14_6_fu_1788_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1574_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1384_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1176_p1;
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
            emission_2_address0_local = zext_ln14_7_fu_1820_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1212_p1;
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
            emission_2_address1_local = zext_ln14_6_fu_1788_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_1574_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1384_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1176_p1;
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
            emission_3_address0_local = zext_ln14_7_fu_1820_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1212_p1;
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
            emission_3_address1_local = zext_ln14_6_fu_1788_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_1574_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1384_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1176_p1;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address0_local = zext_ln14_7_fu_1820_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address0_local = zext_ln14_5_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address0_local = zext_ln14_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address0_local = zext_ln14_1_fu_1212_p1;
        end else begin
            emission_4_address0_local = 'bx;
        end
    end else begin
        emission_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address1_local = zext_ln14_6_fu_1788_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address1_local = zext_ln14_4_fu_1574_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address1_local = zext_ln14_2_fu_1384_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address1_local = zext_ln14_fu_1176_p1;
        end else begin
            emission_4_address1_local = 'bx;
        end
    end else begin
        emission_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_4_ce0_local = 1'b1;
    end else begin
        emission_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_4_ce1_local = 1'b1;
    end else begin
        emission_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address0_local = zext_ln14_7_fu_1820_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address0_local = zext_ln14_5_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address0_local = zext_ln14_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address0_local = zext_ln14_1_fu_1212_p1;
        end else begin
            emission_5_address0_local = 'bx;
        end
    end else begin
        emission_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address1_local = zext_ln14_6_fu_1788_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address1_local = zext_ln14_4_fu_1574_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address1_local = zext_ln14_2_fu_1384_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address1_local = zext_ln14_fu_1176_p1;
        end else begin
            emission_5_address1_local = 'bx;
        end
    end else begin
        emission_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_5_ce0_local = 1'b1;
    end else begin
        emission_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_5_ce1_local = 1'b1;
    end else begin
        emission_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address0_local = zext_ln14_7_fu_1820_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address0_local = zext_ln14_5_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address0_local = zext_ln14_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address0_local = zext_ln14_1_fu_1212_p1;
        end else begin
            emission_6_address0_local = 'bx;
        end
    end else begin
        emission_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address1_local = zext_ln14_6_fu_1788_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address1_local = zext_ln14_4_fu_1574_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address1_local = zext_ln14_2_fu_1384_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address1_local = zext_ln14_fu_1176_p1;
        end else begin
            emission_6_address1_local = 'bx;
        end
    end else begin
        emission_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_6_ce0_local = 1'b1;
    end else begin
        emission_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_6_ce1_local = 1'b1;
    end else begin
        emission_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address0_local = zext_ln14_7_fu_1820_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address0_local = zext_ln14_5_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address0_local = zext_ln14_3_fu_1408_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address0_local = zext_ln14_1_fu_1212_p1;
        end else begin
            emission_7_address0_local = 'bx;
        end
    end else begin
        emission_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address1_local = zext_ln14_6_fu_1788_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address1_local = zext_ln14_4_fu_1574_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address1_local = zext_ln14_2_fu_1384_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address1_local = zext_ln14_fu_1176_p1;
        end else begin
            emission_7_address1_local = 'bx;
        end
    end else begin
        emission_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_7_ce0_local = 1'b1;
    end else begin
        emission_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_7_ce1_local = 1'b1;
    end else begin
        emission_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1080_p0 = bitcast_ln14_62_fu_1992_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1080_p0 = bitcast_ln14_60_fu_1913_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1080_p0 = bitcast_ln14_58_fu_1800_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1080_p0 = bitcast_ln14_fu_1420_p1;
    end else begin
        grp_fu_1080_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1080_p1 = tmp_6_reg_2524;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1080_p1 = tmp_4_reg_2424;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1080_p1 = tmp_2_reg_2324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1080_p1 = tmp_reg_2194;
    end else begin
        grp_fu_1080_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1084_p0 = bitcast_ln14_63_fu_1996_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1084_p0 = bitcast_ln14_61_fu_1917_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1084_p0 = bitcast_ln14_59_fu_1804_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1084_p0 = bitcast_ln14_57_fu_1621_p1;
    end else begin
        grp_fu_1084_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1084_p1 = tmp_7_reg_2539;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1084_p1 = tmp_5_reg_2429;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1084_p1 = tmp_3_reg_2329;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1084_p1 = tmp_1_reg_2199;
    end else begin
        grp_fu_1084_p1 = 'bx;
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
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
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
        init_3_ce0_local = 1'b1;
    end else begin
        init_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_4_ce0_local = 1'b1;
    end else begin
        init_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_5_ce0_local = 1'b1;
    end else begin
        init_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_6_ce0_local = 1'b1;
    end else begin
        init_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_7_ce0_local = 1'b1;
    end else begin
        init_7_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln14_reg_2185_pp0_iter3_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln14_reg_2185_pp0_iter3_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln14_reg_2185_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln14_reg_2185_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln14_reg_2185_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
assign add_ln13_fu_1832_p2 = (s_1_reg_2040 + 7'd8);
assign add_ln14_1_fu_1379_p2 = (or_ln14_2_fu_1372_p3 + conv3_udiv_cast_cast_reg_2031);
assign add_ln14_2_fu_1403_p2 = (or_ln14_3_fu_1396_p3 + conv3_udiv_cast_cast_reg_2031);
assign add_ln14_3_fu_1604_p2 = (or_ln14_5_fu_1593_p5 + conv3_udiv_cast_cast_reg_2031);
assign add_ln14_4_fu_1783_p2 = (or_ln14_6_fu_1776_p3 + conv3_udiv_cast_cast_reg_2031);
assign add_ln14_5_fu_1815_p2 = (or_ln14_7_fu_1808_p3 + conv3_udiv_cast_cast_reg_2031);
assign add_ln14_fu_1206_p2 = (or_ln14_1_fu_1198_p3 + conv3_udiv_cast_cast_fu_1112_p1);
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
assign bitcast_ln14_57_fu_1621_p1 = init_1_load_reg_2284;
assign bitcast_ln14_58_fu_1800_p1 = init_2_load_reg_2289;
assign bitcast_ln14_59_fu_1804_p1 = init_3_load_reg_2294;
assign bitcast_ln14_60_fu_1913_p1 = init_4_load_reg_2299;
assign bitcast_ln14_61_fu_1917_p1 = init_5_load_reg_2304;
assign bitcast_ln14_62_fu_1992_p1 = init_6_load_reg_2309;
assign bitcast_ln14_63_fu_1996_p1 = init_7_load_reg_2314;
assign bitcast_ln14_fu_1420_p1 = init_0_load_reg_2189;
assign conv3_udiv_cast_cast_fu_1112_p1 = conv3_udiv_cast;
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
assign emission_4_address0 = emission_4_address0_local;
assign emission_4_address1 = emission_4_address1_local;
assign emission_4_ce0 = emission_4_ce0_local;
assign emission_4_ce1 = emission_4_ce1_local;
assign emission_5_address0 = emission_5_address0_local;
assign emission_5_address1 = emission_5_address1_local;
assign emission_5_ce0 = emission_5_ce0_local;
assign emission_5_ce1 = emission_5_ce1_local;
assign emission_6_address0 = emission_6_address0_local;
assign emission_6_address1 = emission_6_address1_local;
assign emission_6_ce0 = emission_6_ce0_local;
assign emission_6_ce1 = emission_6_ce1_local;
assign emission_7_address0 = emission_7_address0_local;
assign emission_7_address1 = emission_7_address1_local;
assign emission_7_ce0 = emission_7_ce0_local;
assign emission_7_ce1 = emission_7_ce1_local;
assign grp_fu_1256_p_ce = 1'b1;
assign grp_fu_1256_p_din0 = grp_fu_1080_p0;
assign grp_fu_1256_p_din1 = grp_fu_1080_p1;
assign grp_fu_1256_p_opcode = 2'd0;
assign icmp_ln14_fu_1224_p2 = ((trunc_ln13_fu_1132_p1 == 4'd0) ? 1'b1 : 1'b0);
assign init_0_address0 = zext_ln9_fu_1146_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_1146_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_1146_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_1146_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_4_address0 = zext_ln9_fu_1146_p1;
assign init_4_ce0 = init_4_ce0_local;
assign init_5_address0 = zext_ln9_fu_1146_p1;
assign init_5_ce0 = init_5_ce0_local;
assign init_6_address0 = zext_ln9_fu_1146_p1;
assign init_6_ce0 = init_6_ce0_local;
assign init_7_address0 = zext_ln9_fu_1146_p1;
assign init_7_ce0 = init_7_ce0_local;
assign llike_10_address0 = zext_ln9_1_reg_2554;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_10_d0 = reg_1088;
assign llike_10_we0 = llike_10_we0_local;
assign llike_11_address0 = zext_ln9_1_reg_2554;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_11_d0 = reg_1100;
assign llike_11_we0 = llike_11_we0_local;
assign llike_12_address0 = zext_ln9_1_reg_2554;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_12_d0 = reg_1088;
assign llike_12_we0 = llike_12_we0_local;
assign llike_13_address0 = zext_ln9_1_reg_2554;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_13_d0 = reg_1100;
assign llike_13_we0 = llike_13_we0_local;
assign llike_14_address0 = llike_14_addr_reg_2580;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_14_d0 = reg_1088;
assign llike_14_we0 = llike_14_we0_local;
assign llike_15_address0 = llike_15_addr_reg_2585;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_15_d0 = reg_1100;
assign llike_15_we0 = llike_15_we0_local;
assign llike_1_address0 = zext_ln9_1_fu_2000_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1100;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = zext_ln9_1_reg_2554;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_1088;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = zext_ln9_1_reg_2554;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_1100;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_1_reg_2554;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_1088;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_1_reg_2554;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_1100;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = llike_6_addr_reg_2570;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_1088;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = llike_7_addr_reg_2575;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_1100;
assign llike_7_we0 = llike_7_we0_local;
assign llike_8_address0 = zext_ln9_1_fu_2000_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_8_d0 = reg_1088;
assign llike_8_we0 = llike_8_we0_local;
assign llike_9_address0 = zext_ln9_1_fu_2000_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_9_d0 = reg_1100;
assign llike_9_we0 = llike_9_we0_local;
assign llike_address0 = zext_ln9_1_fu_2000_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1088;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_1136_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign or_ln14_1_fu_1198_p3 = {{tmp_72_fu_1188_p4}, {4'd8}};
assign or_ln14_2_fu_1372_p3 = {{tmp_s_reg_2064}, {5'd16}};
assign or_ln14_3_fu_1396_p3 = {{tmp_s_reg_2064}, {5'd24}};
assign or_ln14_4_fu_1566_p4 = {{{lshr_ln9_reg_2051}, {1'd1}}, {conv3_udiv}};
assign or_ln14_5_fu_1593_p5 = {{{{lshr_ln9_reg_2051}, {1'd1}}, {tmp_42_fu_1586_p3}}, {4'd8}};
assign or_ln14_6_fu_1776_p3 = {{lshr_ln9_reg_2051}, {6'd48}};
assign or_ln14_7_fu_1808_p3 = {{lshr_ln9_reg_2051}, {6'd56}};
assign or_ln_fu_1168_p3 = {{tmp_s_fu_1158_p4}, {conv3_udiv}};
assign tmp_1_fu_1333_p10 = emission_4_q0;
assign tmp_1_fu_1333_p12 = emission_5_q0;
assign tmp_1_fu_1333_p14 = emission_6_q0;
assign tmp_1_fu_1333_p16 = emission_7_q0;
assign tmp_1_fu_1333_p17 = 'bx;
assign tmp_1_fu_1333_p2 = emission_0_q0;
assign tmp_1_fu_1333_p4 = emission_1_q0;
assign tmp_1_fu_1333_p6 = emission_2_q0;
assign tmp_1_fu_1333_p8 = emission_3_q0;
assign tmp_2_fu_1456_p10 = emission_4_q1;
assign tmp_2_fu_1456_p12 = emission_5_q1;
assign tmp_2_fu_1456_p14 = emission_6_q1;
assign tmp_2_fu_1456_p16 = emission_7_q1;
assign tmp_2_fu_1456_p17 = 'bx;
assign tmp_2_fu_1456_p2 = emission_0_q1;
assign tmp_2_fu_1456_p4 = emission_1_q1;
assign tmp_2_fu_1456_p6 = emission_2_q1;
assign tmp_2_fu_1456_p8 = emission_3_q1;
assign tmp_3_fu_1527_p10 = emission_4_q0;
assign tmp_3_fu_1527_p12 = emission_5_q0;
assign tmp_3_fu_1527_p14 = emission_6_q0;
assign tmp_3_fu_1527_p16 = emission_7_q0;
assign tmp_3_fu_1527_p17 = 'bx;
assign tmp_3_fu_1527_p2 = emission_0_q0;
assign tmp_3_fu_1527_p4 = emission_1_q0;
assign tmp_3_fu_1527_p6 = emission_2_q0;
assign tmp_3_fu_1527_p8 = emission_3_q0;
assign tmp_41_fu_1124_p3 = ap_sig_allocacmp_s_1[32'd6];
assign tmp_42_fu_1586_p3 = s_1_reg_2040[32'd1];
assign tmp_4_fu_1666_p10 = emission_4_q1;
assign tmp_4_fu_1666_p12 = emission_5_q1;
assign tmp_4_fu_1666_p14 = emission_6_q1;
assign tmp_4_fu_1666_p16 = emission_7_q1;
assign tmp_4_fu_1666_p17 = 'bx;
assign tmp_4_fu_1666_p2 = emission_0_q1;
assign tmp_4_fu_1666_p4 = emission_1_q1;
assign tmp_4_fu_1666_p6 = emission_2_q1;
assign tmp_4_fu_1666_p8 = emission_3_q1;
assign tmp_5_fu_1737_p10 = emission_4_q0;
assign tmp_5_fu_1737_p12 = emission_5_q0;
assign tmp_5_fu_1737_p14 = emission_6_q0;
assign tmp_5_fu_1737_p16 = emission_7_q0;
assign tmp_5_fu_1737_p17 = 'bx;
assign tmp_5_fu_1737_p2 = emission_0_q0;
assign tmp_5_fu_1737_p4 = emission_1_q0;
assign tmp_5_fu_1737_p6 = emission_2_q0;
assign tmp_5_fu_1737_p8 = emission_3_q0;
assign tmp_6_fu_1874_p10 = emission_4_q1;
assign tmp_6_fu_1874_p12 = emission_5_q1;
assign tmp_6_fu_1874_p14 = emission_6_q1;
assign tmp_6_fu_1874_p16 = emission_7_q1;
assign tmp_6_fu_1874_p17 = 'bx;
assign tmp_6_fu_1874_p2 = emission_0_q1;
assign tmp_6_fu_1874_p4 = emission_1_q1;
assign tmp_6_fu_1874_p6 = emission_2_q1;
assign tmp_6_fu_1874_p8 = emission_3_q1;
assign tmp_72_fu_1188_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_7_fu_1953_p10 = emission_4_q0;
assign tmp_7_fu_1953_p12 = emission_5_q0;
assign tmp_7_fu_1953_p14 = emission_6_q0;
assign tmp_7_fu_1953_p16 = emission_7_q0;
assign tmp_7_fu_1953_p17 = 'bx;
assign tmp_7_fu_1953_p2 = emission_0_q0;
assign tmp_7_fu_1953_p4 = emission_1_q0;
assign tmp_7_fu_1953_p6 = emission_2_q0;
assign tmp_7_fu_1953_p8 = emission_3_q0;
assign tmp_fu_1262_p10 = emission_4_q1;
assign tmp_fu_1262_p12 = emission_5_q1;
assign tmp_fu_1262_p14 = emission_6_q1;
assign tmp_fu_1262_p16 = emission_7_q1;
assign tmp_fu_1262_p17 = 'bx;
assign tmp_fu_1262_p2 = emission_0_q1;
assign tmp_fu_1262_p4 = emission_1_q1;
assign tmp_fu_1262_p6 = emission_2_q1;
assign tmp_fu_1262_p8 = emission_3_q1;
assign tmp_s_fu_1158_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign trunc_ln13_fu_1132_p1 = ap_sig_allocacmp_s_1[3:0];
assign zext_ln14_1_fu_1212_p1 = add_ln14_fu_1206_p2;
assign zext_ln14_2_fu_1384_p1 = add_ln14_1_fu_1379_p2;
assign zext_ln14_3_fu_1408_p1 = add_ln14_2_fu_1403_p2;
assign zext_ln14_4_fu_1574_p1 = or_ln14_4_fu_1566_p4;
assign zext_ln14_5_fu_1609_p1 = add_ln14_3_fu_1604_p2;
assign zext_ln14_6_fu_1788_p1 = add_ln14_4_fu_1783_p2;
assign zext_ln14_7_fu_1820_p1 = add_ln14_5_fu_1815_p2;
assign zext_ln14_fu_1176_p1 = or_ln_fu_1168_p3;
assign zext_ln9_1_fu_2000_p1 = lshr_ln9_1_reg_2419_pp0_iter1_reg;
assign zext_ln9_fu_1146_p1 = lshr_ln9_fu_1136_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_2031[8:5] <= 4'b0000;
    zext_ln9_1_reg_2554[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    llike_6_addr_reg_2570[9:2] <= 8'b00000000;
    llike_7_addr_reg_2575[9:2] <= 8'b00000000;
    llike_14_addr_reg_2580[9:2] <= 8'b00000000;
    llike_15_addr_reg_2585[9:2] <= 8'b00000000;
end
endmodule 