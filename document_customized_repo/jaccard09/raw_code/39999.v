module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_address1,llike_ce1,llike_we1,llike_d1,init_0_address0,init_0_ce0,init_0_q0,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,emission_4_address0,emission_4_ce0,emission_4_q0,emission_4_address1,emission_4_ce1,emission_4_q1,emission_5_address0,emission_5_ce0,emission_5_q0,emission_5_address1,emission_5_ce1,emission_5_q1,emission_6_address0,emission_6_ce0,emission_6_q0,emission_6_address1,emission_6_ce1,emission_6_q1,emission_7_address0,emission_7_ce0,emission_7_q0,emission_7_address1,emission_7_ce1,emission_7_q1,empty,init_1_address0,init_1_ce0,init_1_q0,conv3_udiv_cast,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,init_4_address0,init_4_ce0,init_4_q0,init_5_address0,init_5_ce0,init_5_q0,init_6_address0,init_6_ce0,init_6_q0,init_7_address0,init_7_ce0,init_7_q0,grp_fu_677_p_din0,grp_fu_677_p_din1,grp_fu_677_p_opcode,grp_fu_677_p_dout0,grp_fu_677_p_ce); 
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
output  [13:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [13:0] llike_address1;
output   llike_ce1;
output   llike_we1;
output  [63:0] llike_d1;
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
output  [2:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
input  [4:0] conv3_udiv_cast;
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
output  [63:0] grp_fu_677_p_din0;
output  [63:0] grp_fu_677_p_din1;
output  [1:0] grp_fu_677_p_opcode;
input  [63:0] grp_fu_677_p_dout0;
output   grp_fu_677_p_ce;
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
reg   [0:0] tmp_40_reg_1943;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_933;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_929_p2;
reg   [63:0] reg_938;
wire   [8:0] conv3_udiv_cast_cast_fu_943_p1;
reg   [8:0] conv3_udiv_cast_cast_reg_1927;
reg   [6:0] s_1_reg_1936;
reg   [6:0] s_1_reg_1936_pp0_iter1_reg;
reg   [6:0] s_1_reg_1936_pp0_iter2_reg;
reg   [0:0] tmp_40_reg_1943_pp0_iter1_reg;
reg   [0:0] tmp_40_reg_1943_pp0_iter2_reg;
wire   [2:0] lshr_ln9_fu_963_p4;
reg   [2:0] lshr_ln9_reg_1947;
reg   [2:0] lshr_ln9_reg_1947_pp0_iter1_reg;
reg   [2:0] lshr_ln9_reg_1947_pp0_iter2_reg;
reg   [2:0] lshr_ln9_reg_1947_pp0_iter3_reg;
wire   [3:0] tmp_s_fu_985_p4;
reg   [3:0] tmp_s_reg_1964;
reg   [3:0] tmp_s_reg_1964_pp0_iter1_reg;
reg   [3:0] tmp_s_reg_1964_pp0_iter2_reg;
wire   [4:0] tmp_43_fu_1015_p4;
reg   [4:0] tmp_43_reg_2012;
reg   [4:0] tmp_43_reg_2012_pp0_iter1_reg;
reg   [4:0] tmp_43_reg_2012_pp0_iter2_reg;
reg   [63:0] init_0_load_reg_2092;
wire   [63:0] tmp_fu_1083_p19;
reg   [63:0] tmp_reg_2097;
reg   [63:0] init_1_load_reg_2102;
wire   [63:0] tmp_1_fu_1154_p19;
reg   [63:0] tmp_1_reg_2107;
reg   [63:0] init_2_load_reg_2112;
reg   [63:0] init_3_load_reg_2157;
reg   [63:0] init_4_load_reg_2202;
reg   [63:0] init_5_load_reg_2207;
reg   [63:0] init_6_load_reg_2212;
reg   [63:0] init_7_load_reg_2217;
wire   [63:0] bitcast_ln14_fu_1241_p1;
wire   [63:0] bitcast_ln14_9_fu_1245_p1;
wire   [63:0] tmp_2_fu_1281_p19;
reg   [63:0] tmp_2_reg_2232;
wire   [63:0] tmp_3_fu_1352_p19;
reg   [63:0] tmp_3_reg_2237;
wire   [0:0] tmp_41_fu_1411_p3;
reg   [0:0] tmp_41_reg_2282;
reg   [0:0] tmp_41_reg_2282_pp0_iter1_reg;
reg   [0:0] tmp_41_reg_2282_pp0_iter2_reg;
wire   [63:0] bitcast_ln14_18_fu_1446_p1;
wire   [63:0] bitcast_ln14_27_fu_1450_p1;
wire   [63:0] tmp_4_fu_1486_p19;
reg   [63:0] tmp_4_reg_2337;
wire   [63:0] tmp_5_fu_1557_p19;
reg   [63:0] tmp_5_reg_2342;
wire   [63:0] bitcast_ln14_36_fu_1654_p1;
wire   [63:0] bitcast_ln14_45_fu_1658_p1;
wire   [63:0] tmp_6_fu_1694_p19;
reg   [63:0] tmp_6_reg_2437;
wire   [63:0] tmp_7_fu_1765_p19;
reg   [63:0] tmp_7_reg_2442;
wire   [63:0] bitcast_ln14_54_fu_1804_p1;
wire   [63:0] bitcast_ln14_63_fu_1808_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln9_fu_973_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1003_p1;
wire   [63:0] zext_ln14_1_fu_1039_p1;
wire   [63:0] zext_ln14_2_fu_1205_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1229_p1;
wire   [63:0] zext_ln14_4_fu_1399_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1434_p1;
wire   [63:0] zext_ln14_6_fu_1608_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1632_p1;
wire   [63:0] zext_ln13_fu_1812_p1;
wire   [63:0] zext_ln14_8_fu_1823_p1;
wire   [63:0] zext_ln14_9_fu_1835_p1;
wire   [63:0] zext_ln14_10_fu_1847_p1;
wire   [63:0] zext_ln14_11_fu_1859_p1;
wire   [63:0] zext_ln14_12_fu_1874_p1;
wire   [63:0] zext_ln14_13_fu_1886_p1;
wire   [63:0] zext_ln14_14_fu_1898_p1;
reg   [6:0] s_fu_142;
wire   [6:0] add_ln13_fu_1644_p2;
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
reg    llike_we1_local;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg   [63:0] grp_fu_925_p0;
reg   [63:0] grp_fu_925_p1;
reg   [63:0] grp_fu_929_p0;
reg   [63:0] grp_fu_929_p1;
wire   [8:0] or_ln_fu_995_p3;
wire   [8:0] shl_ln14_2_fu_1025_p3;
wire   [8:0] add_ln14_fu_1033_p2;
wire   [63:0] tmp_fu_1083_p2;
wire   [63:0] tmp_fu_1083_p4;
wire   [63:0] tmp_fu_1083_p6;
wire   [63:0] tmp_fu_1083_p8;
wire   [63:0] tmp_fu_1083_p10;
wire   [63:0] tmp_fu_1083_p12;
wire   [63:0] tmp_fu_1083_p14;
wire   [63:0] tmp_fu_1083_p16;
wire   [63:0] tmp_fu_1083_p17;
wire   [63:0] tmp_1_fu_1154_p2;
wire   [63:0] tmp_1_fu_1154_p4;
wire   [63:0] tmp_1_fu_1154_p6;
wire   [63:0] tmp_1_fu_1154_p8;
wire   [63:0] tmp_1_fu_1154_p10;
wire   [63:0] tmp_1_fu_1154_p12;
wire   [63:0] tmp_1_fu_1154_p14;
wire   [63:0] tmp_1_fu_1154_p16;
wire   [63:0] tmp_1_fu_1154_p17;
wire   [8:0] shl_ln14_3_fu_1193_p3;
wire   [8:0] add_ln14_1_fu_1200_p2;
wire   [8:0] shl_ln14_4_fu_1217_p3;
wire   [8:0] add_ln14_2_fu_1224_p2;
wire   [63:0] tmp_2_fu_1281_p2;
wire   [63:0] tmp_2_fu_1281_p4;
wire   [63:0] tmp_2_fu_1281_p6;
wire   [63:0] tmp_2_fu_1281_p8;
wire   [63:0] tmp_2_fu_1281_p10;
wire   [63:0] tmp_2_fu_1281_p12;
wire   [63:0] tmp_2_fu_1281_p14;
wire   [63:0] tmp_2_fu_1281_p16;
wire   [63:0] tmp_2_fu_1281_p17;
wire   [63:0] tmp_3_fu_1352_p2;
wire   [63:0] tmp_3_fu_1352_p4;
wire   [63:0] tmp_3_fu_1352_p6;
wire   [63:0] tmp_3_fu_1352_p8;
wire   [63:0] tmp_3_fu_1352_p10;
wire   [63:0] tmp_3_fu_1352_p12;
wire   [63:0] tmp_3_fu_1352_p14;
wire   [63:0] tmp_3_fu_1352_p16;
wire   [63:0] tmp_3_fu_1352_p17;
wire   [8:0] or_ln14_1_fu_1391_p4;
wire   [8:0] shl_ln14_5_fu_1418_p5;
wire   [8:0] add_ln14_3_fu_1429_p2;
wire   [63:0] tmp_4_fu_1486_p2;
wire   [63:0] tmp_4_fu_1486_p4;
wire   [63:0] tmp_4_fu_1486_p6;
wire   [63:0] tmp_4_fu_1486_p8;
wire   [63:0] tmp_4_fu_1486_p10;
wire   [63:0] tmp_4_fu_1486_p12;
wire   [63:0] tmp_4_fu_1486_p14;
wire   [63:0] tmp_4_fu_1486_p16;
wire   [63:0] tmp_4_fu_1486_p17;
wire   [63:0] tmp_5_fu_1557_p2;
wire   [63:0] tmp_5_fu_1557_p4;
wire   [63:0] tmp_5_fu_1557_p6;
wire   [63:0] tmp_5_fu_1557_p8;
wire   [63:0] tmp_5_fu_1557_p10;
wire   [63:0] tmp_5_fu_1557_p12;
wire   [63:0] tmp_5_fu_1557_p14;
wire   [63:0] tmp_5_fu_1557_p16;
wire   [63:0] tmp_5_fu_1557_p17;
wire   [8:0] shl_ln14_6_fu_1596_p3;
wire   [8:0] add_ln14_4_fu_1603_p2;
wire   [8:0] shl_ln14_7_fu_1620_p3;
wire   [8:0] add_ln14_5_fu_1627_p2;
wire   [63:0] tmp_6_fu_1694_p2;
wire   [63:0] tmp_6_fu_1694_p4;
wire   [63:0] tmp_6_fu_1694_p6;
wire   [63:0] tmp_6_fu_1694_p8;
wire   [63:0] tmp_6_fu_1694_p10;
wire   [63:0] tmp_6_fu_1694_p12;
wire   [63:0] tmp_6_fu_1694_p14;
wire   [63:0] tmp_6_fu_1694_p16;
wire   [63:0] tmp_6_fu_1694_p17;
wire   [63:0] tmp_7_fu_1765_p2;
wire   [63:0] tmp_7_fu_1765_p4;
wire   [63:0] tmp_7_fu_1765_p6;
wire   [63:0] tmp_7_fu_1765_p8;
wire   [63:0] tmp_7_fu_1765_p10;
wire   [63:0] tmp_7_fu_1765_p12;
wire   [63:0] tmp_7_fu_1765_p14;
wire   [63:0] tmp_7_fu_1765_p16;
wire   [63:0] tmp_7_fu_1765_p17;
wire   [5:0] or_ln1_fu_1816_p3;
wire   [5:0] or_ln13_1_fu_1828_p3;
wire   [5:0] or_ln13_2_fu_1840_p3;
wire   [5:0] or_ln13_3_fu_1852_p3;
wire   [5:0] or_ln13_4_fu_1864_p5;
wire   [5:0] or_ln13_5_fu_1879_p3;
wire   [5:0] or_ln13_6_fu_1891_p3;
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
wire   [2:0] tmp_fu_1083_p1;
wire   [2:0] tmp_fu_1083_p3;
wire   [2:0] tmp_fu_1083_p5;
wire   [2:0] tmp_fu_1083_p7;
wire  signed [2:0] tmp_fu_1083_p9;
wire  signed [2:0] tmp_fu_1083_p11;
wire  signed [2:0] tmp_fu_1083_p13;
wire  signed [2:0] tmp_fu_1083_p15;
wire   [2:0] tmp_1_fu_1154_p1;
wire   [2:0] tmp_1_fu_1154_p3;
wire   [2:0] tmp_1_fu_1154_p5;
wire   [2:0] tmp_1_fu_1154_p7;
wire  signed [2:0] tmp_1_fu_1154_p9;
wire  signed [2:0] tmp_1_fu_1154_p11;
wire  signed [2:0] tmp_1_fu_1154_p13;
wire  signed [2:0] tmp_1_fu_1154_p15;
wire   [2:0] tmp_2_fu_1281_p1;
wire   [2:0] tmp_2_fu_1281_p3;
wire   [2:0] tmp_2_fu_1281_p5;
wire   [2:0] tmp_2_fu_1281_p7;
wire  signed [2:0] tmp_2_fu_1281_p9;
wire  signed [2:0] tmp_2_fu_1281_p11;
wire  signed [2:0] tmp_2_fu_1281_p13;
wire  signed [2:0] tmp_2_fu_1281_p15;
wire   [2:0] tmp_3_fu_1352_p1;
wire   [2:0] tmp_3_fu_1352_p3;
wire   [2:0] tmp_3_fu_1352_p5;
wire   [2:0] tmp_3_fu_1352_p7;
wire  signed [2:0] tmp_3_fu_1352_p9;
wire  signed [2:0] tmp_3_fu_1352_p11;
wire  signed [2:0] tmp_3_fu_1352_p13;
wire  signed [2:0] tmp_3_fu_1352_p15;
wire   [2:0] tmp_4_fu_1486_p1;
wire   [2:0] tmp_4_fu_1486_p3;
wire   [2:0] tmp_4_fu_1486_p5;
wire   [2:0] tmp_4_fu_1486_p7;
wire  signed [2:0] tmp_4_fu_1486_p9;
wire  signed [2:0] tmp_4_fu_1486_p11;
wire  signed [2:0] tmp_4_fu_1486_p13;
wire  signed [2:0] tmp_4_fu_1486_p15;
wire   [2:0] tmp_5_fu_1557_p1;
wire   [2:0] tmp_5_fu_1557_p3;
wire   [2:0] tmp_5_fu_1557_p5;
wire   [2:0] tmp_5_fu_1557_p7;
wire  signed [2:0] tmp_5_fu_1557_p9;
wire  signed [2:0] tmp_5_fu_1557_p11;
wire  signed [2:0] tmp_5_fu_1557_p13;
wire  signed [2:0] tmp_5_fu_1557_p15;
wire   [2:0] tmp_6_fu_1694_p1;
wire   [2:0] tmp_6_fu_1694_p3;
wire   [2:0] tmp_6_fu_1694_p5;
wire   [2:0] tmp_6_fu_1694_p7;
wire  signed [2:0] tmp_6_fu_1694_p9;
wire  signed [2:0] tmp_6_fu_1694_p11;
wire  signed [2:0] tmp_6_fu_1694_p13;
wire  signed [2:0] tmp_6_fu_1694_p15;
wire   [2:0] tmp_7_fu_1765_p1;
wire   [2:0] tmp_7_fu_1765_p3;
wire   [2:0] tmp_7_fu_1765_p5;
wire   [2:0] tmp_7_fu_1765_p7;
wire  signed [2:0] tmp_7_fu_1765_p9;
wire  signed [2:0] tmp_7_fu_1765_p11;
wire  signed [2:0] tmp_7_fu_1765_p13;
wire  signed [2:0] tmp_7_fu_1765_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_142 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_929_p0),.din1(grp_fu_929_p1),.ce(1'b1),.dout(grp_fu_929_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(tmp_fu_1083_p2),.din1(tmp_fu_1083_p4),.din2(tmp_fu_1083_p6),.din3(tmp_fu_1083_p8),.din4(tmp_fu_1083_p10),.din5(tmp_fu_1083_p12),.din6(tmp_fu_1083_p14),.din7(tmp_fu_1083_p16),.def(tmp_fu_1083_p17),.sel(empty),.dout(tmp_fu_1083_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_1_fu_1154_p2),.din1(tmp_1_fu_1154_p4),.din2(tmp_1_fu_1154_p6),.din3(tmp_1_fu_1154_p8),.din4(tmp_1_fu_1154_p10),.din5(tmp_1_fu_1154_p12),.din6(tmp_1_fu_1154_p14),.din7(tmp_1_fu_1154_p16),.def(tmp_1_fu_1154_p17),.sel(empty),.dout(tmp_1_fu_1154_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_2_fu_1281_p2),.din1(tmp_2_fu_1281_p4),.din2(tmp_2_fu_1281_p6),.din3(tmp_2_fu_1281_p8),.din4(tmp_2_fu_1281_p10),.din5(tmp_2_fu_1281_p12),.din6(tmp_2_fu_1281_p14),.din7(tmp_2_fu_1281_p16),.def(tmp_2_fu_1281_p17),.sel(empty),.dout(tmp_2_fu_1281_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_3_fu_1352_p2),.din1(tmp_3_fu_1352_p4),.din2(tmp_3_fu_1352_p6),.din3(tmp_3_fu_1352_p8),.din4(tmp_3_fu_1352_p10),.din5(tmp_3_fu_1352_p12),.din6(tmp_3_fu_1352_p14),.din7(tmp_3_fu_1352_p16),.def(tmp_3_fu_1352_p17),.sel(empty),.dout(tmp_3_fu_1352_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U7(.din0(tmp_4_fu_1486_p2),.din1(tmp_4_fu_1486_p4),.din2(tmp_4_fu_1486_p6),.din3(tmp_4_fu_1486_p8),.din4(tmp_4_fu_1486_p10),.din5(tmp_4_fu_1486_p12),.din6(tmp_4_fu_1486_p14),.din7(tmp_4_fu_1486_p16),.def(tmp_4_fu_1486_p17),.sel(empty),.dout(tmp_4_fu_1486_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U8(.din0(tmp_5_fu_1557_p2),.din1(tmp_5_fu_1557_p4),.din2(tmp_5_fu_1557_p6),.din3(tmp_5_fu_1557_p8),.din4(tmp_5_fu_1557_p10),.din5(tmp_5_fu_1557_p12),.din6(tmp_5_fu_1557_p14),.din7(tmp_5_fu_1557_p16),.def(tmp_5_fu_1557_p17),.sel(empty),.dout(tmp_5_fu_1557_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U9(.din0(tmp_6_fu_1694_p2),.din1(tmp_6_fu_1694_p4),.din2(tmp_6_fu_1694_p6),.din3(tmp_6_fu_1694_p8),.din4(tmp_6_fu_1694_p10),.din5(tmp_6_fu_1694_p12),.din6(tmp_6_fu_1694_p14),.din7(tmp_6_fu_1694_p16),.def(tmp_6_fu_1694_p17),.sel(empty),.dout(tmp_6_fu_1694_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U10(.din0(tmp_7_fu_1765_p2),.din1(tmp_7_fu_1765_p4),.din2(tmp_7_fu_1765_p6),.din3(tmp_7_fu_1765_p8),.din4(tmp_7_fu_1765_p10),.din5(tmp_7_fu_1765_p12),.din6(tmp_7_fu_1765_p14),.din7(tmp_7_fu_1765_p16),.def(tmp_7_fu_1765_p17),.sel(empty),.dout(tmp_7_fu_1765_p19));
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
        s_fu_142 <= 7'd0;
    end else if (((tmp_40_reg_1943 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_142 <= add_ln13_fu_1644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_1927[4 : 0] <= conv3_udiv_cast_cast_fu_943_p1[4 : 0];
        lshr_ln9_reg_1947 <= {{ap_sig_allocacmp_s_1[5:3]}};
        lshr_ln9_reg_1947_pp0_iter1_reg <= lshr_ln9_reg_1947;
        lshr_ln9_reg_1947_pp0_iter2_reg <= lshr_ln9_reg_1947_pp0_iter1_reg;
        lshr_ln9_reg_1947_pp0_iter3_reg <= lshr_ln9_reg_1947_pp0_iter2_reg;
        s_1_reg_1936 <= ap_sig_allocacmp_s_1;
        s_1_reg_1936_pp0_iter1_reg <= s_1_reg_1936;
        s_1_reg_1936_pp0_iter2_reg <= s_1_reg_1936_pp0_iter1_reg;
        tmp_40_reg_1943 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_40_reg_1943_pp0_iter1_reg <= tmp_40_reg_1943;
        tmp_40_reg_1943_pp0_iter2_reg <= tmp_40_reg_1943_pp0_iter1_reg;
        tmp_43_reg_2012 <= {{ap_sig_allocacmp_s_1[5:1]}};
        tmp_43_reg_2012_pp0_iter1_reg <= tmp_43_reg_2012;
        tmp_43_reg_2012_pp0_iter2_reg <= tmp_43_reg_2012_pp0_iter1_reg;
        tmp_6_reg_2437 <= tmp_6_fu_1694_p19;
        tmp_7_reg_2442 <= tmp_7_fu_1765_p19;
        tmp_s_reg_1964 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_s_reg_1964_pp0_iter1_reg <= tmp_s_reg_1964;
        tmp_s_reg_1964_pp0_iter2_reg <= tmp_s_reg_1964_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_reg_2092 <= init_0_q0;
        init_1_load_reg_2102 <= init_1_q0;
        init_2_load_reg_2112 <= init_2_q0;
        init_3_load_reg_2157 <= init_3_q0;
        init_4_load_reg_2202 <= init_4_q0;
        init_5_load_reg_2207 <= init_5_q0;
        init_6_load_reg_2212 <= init_6_q0;
        init_7_load_reg_2217 <= init_7_q0;
        tmp_1_reg_2107 <= tmp_1_fu_1154_p19;
        tmp_reg_2097 <= tmp_fu_1083_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_933 <= grp_fu_677_p_dout0;
        reg_938 <= grp_fu_929_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_2232 <= tmp_2_fu_1281_p19;
        tmp_3_reg_2237 <= tmp_3_fu_1352_p19;
        tmp_41_reg_2282 <= s_1_reg_1936[32'd1];
        tmp_41_reg_2282_pp0_iter1_reg <= tmp_41_reg_2282;
        tmp_41_reg_2282_pp0_iter2_reg <= tmp_41_reg_2282_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_2337 <= tmp_4_fu_1486_p19;
        tmp_5_reg_2342 <= tmp_5_fu_1557_p19;
    end
end
always @ (*) begin
    if (((tmp_40_reg_1943 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_40_reg_1943_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_142;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1632_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1434_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1039_p1;
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
            emission_0_address1_local = zext_ln14_6_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1399_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1003_p1;
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
            emission_1_address0_local = zext_ln14_7_fu_1632_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1434_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1039_p1;
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
            emission_1_address1_local = zext_ln14_6_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1399_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1003_p1;
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
            emission_2_address0_local = zext_ln14_7_fu_1632_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_1434_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1039_p1;
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
            emission_2_address1_local = zext_ln14_6_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_1399_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1003_p1;
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
            emission_3_address0_local = zext_ln14_7_fu_1632_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_1434_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1039_p1;
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
            emission_3_address1_local = zext_ln14_6_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_1399_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1003_p1;
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
            emission_4_address0_local = zext_ln14_7_fu_1632_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address0_local = zext_ln14_5_fu_1434_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address0_local = zext_ln14_3_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address0_local = zext_ln14_1_fu_1039_p1;
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
            emission_4_address1_local = zext_ln14_6_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address1_local = zext_ln14_4_fu_1399_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address1_local = zext_ln14_2_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address1_local = zext_ln14_fu_1003_p1;
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
            emission_5_address0_local = zext_ln14_7_fu_1632_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address0_local = zext_ln14_5_fu_1434_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address0_local = zext_ln14_3_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address0_local = zext_ln14_1_fu_1039_p1;
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
            emission_5_address1_local = zext_ln14_6_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address1_local = zext_ln14_4_fu_1399_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address1_local = zext_ln14_2_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address1_local = zext_ln14_fu_1003_p1;
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
            emission_6_address0_local = zext_ln14_7_fu_1632_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address0_local = zext_ln14_5_fu_1434_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address0_local = zext_ln14_3_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address0_local = zext_ln14_1_fu_1039_p1;
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
            emission_6_address1_local = zext_ln14_6_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address1_local = zext_ln14_4_fu_1399_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address1_local = zext_ln14_2_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address1_local = zext_ln14_fu_1003_p1;
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
            emission_7_address0_local = zext_ln14_7_fu_1632_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address0_local = zext_ln14_5_fu_1434_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address0_local = zext_ln14_3_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address0_local = zext_ln14_1_fu_1039_p1;
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
            emission_7_address1_local = zext_ln14_6_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address1_local = zext_ln14_4_fu_1399_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address1_local = zext_ln14_2_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address1_local = zext_ln14_fu_1003_p1;
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
        grp_fu_925_p0 = bitcast_ln14_54_fu_1804_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_925_p0 = bitcast_ln14_36_fu_1654_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_925_p0 = bitcast_ln14_18_fu_1446_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_925_p0 = bitcast_ln14_fu_1241_p1;
    end else begin
        grp_fu_925_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_925_p1 = tmp_6_reg_2437;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_925_p1 = tmp_4_reg_2337;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_925_p1 = tmp_2_reg_2232;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_925_p1 = tmp_reg_2097;
    end else begin
        grp_fu_925_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_929_p0 = bitcast_ln14_63_fu_1808_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_929_p0 = bitcast_ln14_45_fu_1658_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_929_p0 = bitcast_ln14_27_fu_1450_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_929_p0 = bitcast_ln14_9_fu_1245_p1;
    end else begin
        grp_fu_929_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_929_p1 = tmp_7_reg_2442;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_929_p1 = tmp_5_reg_2342;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_929_p1 = tmp_3_reg_2237;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_929_p1 = tmp_1_reg_2107;
    end else begin
        grp_fu_929_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_14_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_12_fu_1874_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_10_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln14_8_fu_1823_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address1_local = zext_ln14_13_fu_1886_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address1_local = zext_ln14_11_fu_1859_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address1_local = zext_ln14_9_fu_1835_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address1_local = zext_ln13_fu_1812_p1;
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we1_local = 1'b1;
    end else begin
        llike_we1_local = 1'b0;
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
assign add_ln13_fu_1644_p2 = (s_1_reg_1936 + 7'd8);
assign add_ln14_1_fu_1200_p2 = (shl_ln14_3_fu_1193_p3 + conv3_udiv_cast_cast_reg_1927);
assign add_ln14_2_fu_1224_p2 = (shl_ln14_4_fu_1217_p3 + conv3_udiv_cast_cast_reg_1927);
assign add_ln14_3_fu_1429_p2 = (shl_ln14_5_fu_1418_p5 + conv3_udiv_cast_cast_reg_1927);
assign add_ln14_4_fu_1603_p2 = (shl_ln14_6_fu_1596_p3 + conv3_udiv_cast_cast_reg_1927);
assign add_ln14_5_fu_1627_p2 = (shl_ln14_7_fu_1620_p3 + conv3_udiv_cast_cast_reg_1927);
assign add_ln14_fu_1033_p2 = (shl_ln14_2_fu_1025_p3 + conv3_udiv_cast_cast_fu_943_p1);
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
assign bitcast_ln14_18_fu_1446_p1 = init_2_load_reg_2112;
assign bitcast_ln14_27_fu_1450_p1 = init_3_load_reg_2157;
assign bitcast_ln14_36_fu_1654_p1 = init_4_load_reg_2202;
assign bitcast_ln14_45_fu_1658_p1 = init_5_load_reg_2207;
assign bitcast_ln14_54_fu_1804_p1 = init_6_load_reg_2212;
assign bitcast_ln14_63_fu_1808_p1 = init_7_load_reg_2217;
assign bitcast_ln14_9_fu_1245_p1 = init_1_load_reg_2102;
assign bitcast_ln14_fu_1241_p1 = init_0_load_reg_2092;
assign conv3_udiv_cast_cast_fu_943_p1 = conv3_udiv_cast;
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
assign grp_fu_677_p_ce = 1'b1;
assign grp_fu_677_p_din0 = grp_fu_925_p0;
assign grp_fu_677_p_din1 = grp_fu_925_p1;
assign grp_fu_677_p_opcode = 2'd0;
assign init_0_address0 = zext_ln9_fu_973_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_973_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_973_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_973_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_4_address0 = zext_ln9_fu_973_p1;
assign init_4_ce0 = init_4_ce0_local;
assign init_5_address0 = zext_ln9_fu_973_p1;
assign init_5_ce0 = init_5_ce0_local;
assign init_6_address0 = zext_ln9_fu_973_p1;
assign init_6_ce0 = init_6_ce0_local;
assign init_7_address0 = zext_ln9_fu_973_p1;
assign init_7_ce0 = init_7_ce0_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign llike_d0 = reg_938;
assign llike_d1 = reg_933;
assign llike_we0 = llike_we0_local;
assign llike_we1 = llike_we1_local;
assign lshr_ln9_fu_963_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign or_ln13_1_fu_1828_p3 = {{tmp_s_reg_1964_pp0_iter2_reg}, {2'd2}};
assign or_ln13_2_fu_1840_p3 = {{tmp_s_reg_1964_pp0_iter2_reg}, {2'd3}};
assign or_ln13_3_fu_1852_p3 = {{lshr_ln9_reg_1947_pp0_iter2_reg}, {3'd4}};
assign or_ln13_4_fu_1864_p5 = {{{{lshr_ln9_reg_1947_pp0_iter2_reg}, {1'd1}}, {tmp_41_reg_2282_pp0_iter2_reg}}, {1'd1}};
assign or_ln13_5_fu_1879_p3 = {{lshr_ln9_reg_1947_pp0_iter3_reg}, {3'd6}};
assign or_ln13_6_fu_1891_p3 = {{lshr_ln9_reg_1947_pp0_iter3_reg}, {3'd7}};
assign or_ln14_1_fu_1391_p4 = {{{lshr_ln9_reg_1947}, {1'd1}}, {conv3_udiv}};
assign or_ln1_fu_1816_p3 = {{tmp_43_reg_2012_pp0_iter2_reg}, {1'd1}};
assign or_ln_fu_995_p3 = {{tmp_s_fu_985_p4}, {conv3_udiv}};
assign shl_ln14_2_fu_1025_p3 = {{tmp_43_fu_1015_p4}, {4'd8}};
assign shl_ln14_3_fu_1193_p3 = {{tmp_s_reg_1964}, {5'd16}};
assign shl_ln14_4_fu_1217_p3 = {{tmp_s_reg_1964}, {5'd24}};
assign shl_ln14_5_fu_1418_p5 = {{{{lshr_ln9_reg_1947}, {1'd1}}, {tmp_41_fu_1411_p3}}, {4'd8}};
assign shl_ln14_6_fu_1596_p3 = {{lshr_ln9_reg_1947}, {6'd48}};
assign shl_ln14_7_fu_1620_p3 = {{lshr_ln9_reg_1947}, {6'd56}};
assign tmp_1_fu_1154_p10 = emission_4_q0;
assign tmp_1_fu_1154_p12 = emission_5_q0;
assign tmp_1_fu_1154_p14 = emission_6_q0;
assign tmp_1_fu_1154_p16 = emission_7_q0;
assign tmp_1_fu_1154_p17 = 'bx;
assign tmp_1_fu_1154_p2 = emission_0_q0;
assign tmp_1_fu_1154_p4 = emission_1_q0;
assign tmp_1_fu_1154_p6 = emission_2_q0;
assign tmp_1_fu_1154_p8 = emission_3_q0;
assign tmp_2_fu_1281_p10 = emission_4_q1;
assign tmp_2_fu_1281_p12 = emission_5_q1;
assign tmp_2_fu_1281_p14 = emission_6_q1;
assign tmp_2_fu_1281_p16 = emission_7_q1;
assign tmp_2_fu_1281_p17 = 'bx;
assign tmp_2_fu_1281_p2 = emission_0_q1;
assign tmp_2_fu_1281_p4 = emission_1_q1;
assign tmp_2_fu_1281_p6 = emission_2_q1;
assign tmp_2_fu_1281_p8 = emission_3_q1;
assign tmp_3_fu_1352_p10 = emission_4_q0;
assign tmp_3_fu_1352_p12 = emission_5_q0;
assign tmp_3_fu_1352_p14 = emission_6_q0;
assign tmp_3_fu_1352_p16 = emission_7_q0;
assign tmp_3_fu_1352_p17 = 'bx;
assign tmp_3_fu_1352_p2 = emission_0_q0;
assign tmp_3_fu_1352_p4 = emission_1_q0;
assign tmp_3_fu_1352_p6 = emission_2_q0;
assign tmp_3_fu_1352_p8 = emission_3_q0;
assign tmp_41_fu_1411_p3 = s_1_reg_1936[32'd1];
assign tmp_43_fu_1015_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_4_fu_1486_p10 = emission_4_q1;
assign tmp_4_fu_1486_p12 = emission_5_q1;
assign tmp_4_fu_1486_p14 = emission_6_q1;
assign tmp_4_fu_1486_p16 = emission_7_q1;
assign tmp_4_fu_1486_p17 = 'bx;
assign tmp_4_fu_1486_p2 = emission_0_q1;
assign tmp_4_fu_1486_p4 = emission_1_q1;
assign tmp_4_fu_1486_p6 = emission_2_q1;
assign tmp_4_fu_1486_p8 = emission_3_q1;
assign tmp_5_fu_1557_p10 = emission_4_q0;
assign tmp_5_fu_1557_p12 = emission_5_q0;
assign tmp_5_fu_1557_p14 = emission_6_q0;
assign tmp_5_fu_1557_p16 = emission_7_q0;
assign tmp_5_fu_1557_p17 = 'bx;
assign tmp_5_fu_1557_p2 = emission_0_q0;
assign tmp_5_fu_1557_p4 = emission_1_q0;
assign tmp_5_fu_1557_p6 = emission_2_q0;
assign tmp_5_fu_1557_p8 = emission_3_q0;
assign tmp_6_fu_1694_p10 = emission_4_q1;
assign tmp_6_fu_1694_p12 = emission_5_q1;
assign tmp_6_fu_1694_p14 = emission_6_q1;
assign tmp_6_fu_1694_p16 = emission_7_q1;
assign tmp_6_fu_1694_p17 = 'bx;
assign tmp_6_fu_1694_p2 = emission_0_q1;
assign tmp_6_fu_1694_p4 = emission_1_q1;
assign tmp_6_fu_1694_p6 = emission_2_q1;
assign tmp_6_fu_1694_p8 = emission_3_q1;
assign tmp_7_fu_1765_p10 = emission_4_q0;
assign tmp_7_fu_1765_p12 = emission_5_q0;
assign tmp_7_fu_1765_p14 = emission_6_q0;
assign tmp_7_fu_1765_p16 = emission_7_q0;
assign tmp_7_fu_1765_p17 = 'bx;
assign tmp_7_fu_1765_p2 = emission_0_q0;
assign tmp_7_fu_1765_p4 = emission_1_q0;
assign tmp_7_fu_1765_p6 = emission_2_q0;
assign tmp_7_fu_1765_p8 = emission_3_q0;
assign tmp_fu_1083_p10 = emission_4_q1;
assign tmp_fu_1083_p12 = emission_5_q1;
assign tmp_fu_1083_p14 = emission_6_q1;
assign tmp_fu_1083_p16 = emission_7_q1;
assign tmp_fu_1083_p17 = 'bx;
assign tmp_fu_1083_p2 = emission_0_q1;
assign tmp_fu_1083_p4 = emission_1_q1;
assign tmp_fu_1083_p6 = emission_2_q1;
assign tmp_fu_1083_p8 = emission_3_q1;
assign tmp_s_fu_985_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign zext_ln13_fu_1812_p1 = s_1_reg_1936_pp0_iter2_reg;
assign zext_ln14_10_fu_1847_p1 = or_ln13_2_fu_1840_p3;
assign zext_ln14_11_fu_1859_p1 = or_ln13_3_fu_1852_p3;
assign zext_ln14_12_fu_1874_p1 = or_ln13_4_fu_1864_p5;
assign zext_ln14_13_fu_1886_p1 = or_ln13_5_fu_1879_p3;
assign zext_ln14_14_fu_1898_p1 = or_ln13_6_fu_1891_p3;
assign zext_ln14_1_fu_1039_p1 = add_ln14_fu_1033_p2;
assign zext_ln14_2_fu_1205_p1 = add_ln14_1_fu_1200_p2;
assign zext_ln14_3_fu_1229_p1 = add_ln14_2_fu_1224_p2;
assign zext_ln14_4_fu_1399_p1 = or_ln14_1_fu_1391_p4;
assign zext_ln14_5_fu_1434_p1 = add_ln14_3_fu_1429_p2;
assign zext_ln14_6_fu_1608_p1 = add_ln14_4_fu_1603_p2;
assign zext_ln14_7_fu_1632_p1 = add_ln14_5_fu_1627_p2;
assign zext_ln14_8_fu_1823_p1 = or_ln1_fu_1816_p3;
assign zext_ln14_9_fu_1835_p1 = or_ln13_1_fu_1828_p3;
assign zext_ln14_fu_1003_p1 = or_ln_fu_995_p3;
assign zext_ln9_fu_973_p1 = lshr_ln9_fu_963_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_1927[8:5] <= 4'b0000;
end
endmodule 