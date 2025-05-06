
module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_10,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,empty,conv3_udiv_cast,conv3_udiv,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,grp_fu_494_p_din0,grp_fu_494_p_din1,grp_fu_494_p_opcode,grp_fu_494_p_dout0,grp_fu_494_p_ce,grp_fu_960_p_din0,grp_fu_960_p_din1,grp_fu_960_p_opcode,grp_fu_960_p_dout0,grp_fu_960_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [3:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [3:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [5:0] empty_10;
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
input  [5:0] conv3_udiv;
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
output  [63:0] grp_fu_494_p_din0;
output  [63:0] grp_fu_494_p_din1;
output  [1:0] grp_fu_494_p_opcode;
input  [63:0] grp_fu_494_p_dout0;
output   grp_fu_494_p_ce;
output  [63:0] grp_fu_960_p_din0;
output  [63:0] grp_fu_960_p_din1;
output  [1:0] grp_fu_960_p_opcode;
input  [63:0] grp_fu_960_p_dout0;
output   grp_fu_960_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_84_reg_2283;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1034;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_1038;
reg   [63:0] reg_1042;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1048;
wire   [9:0] conv3_udiv_cast_cast_fu_1054_p1;
reg   [9:0] conv3_udiv_cast_cast_reg_2260;
reg   [6:0] s_1_reg_2275;
reg   [0:0] tmp_84_reg_2283_pp0_iter1_reg;
wire   [3:0] lshr_ln9_fu_1078_p4;
reg   [3:0] lshr_ln9_reg_2287;
wire   [63:0] zext_ln9_fu_1088_p1;
reg   [63:0] zext_ln9_reg_2293;
reg   [63:0] zext_ln9_reg_2293_pp0_iter1_reg;
wire   [1:0] tmp_86_fu_1096_p4;
reg   [1:0] tmp_86_reg_2306;
wire   [2:0] tmp_88_fu_1154_p4;
reg   [2:0] tmp_88_reg_2361;
wire   [63:0] zext_ln14_16_fu_1172_p1;
reg   [63:0] zext_ln14_16_reg_2368;
reg   [63:0] zext_ln14_16_reg_2368_pp0_iter1_reg;
wire   [63:0] tmp_fu_1196_p11;
reg   [63:0] tmp_reg_2411;
wire   [63:0] tmp_1_fu_1235_p11;
reg   [63:0] tmp_1_reg_2416;
wire   [0:0] tmp_89_fu_1298_p3;
reg   [0:0] tmp_89_reg_2461;
wire   [63:0] zext_ln14_17_fu_1314_p1;
reg   [63:0] zext_ln14_17_reg_2467;
reg   [63:0] zext_ln14_17_reg_2467_pp0_iter1_reg;
wire   [63:0] zext_ln14_19_fu_1329_p1;
reg   [63:0] zext_ln14_19_reg_2475;
reg   [63:0] zext_ln14_19_reg_2475_pp0_iter1_reg;
reg   [63:0] init_2_load_reg_2483;
reg   [63:0] init_3_load_reg_2488;
reg   [63:0] init_0_load_1_reg_2493;
reg   [63:0] init_1_load_1_reg_2498;
reg   [63:0] init_2_load_1_reg_2503;
reg   [63:0] init_3_load_1_reg_2508;
wire   [63:0] bitcast_ln14_fu_1337_p1;
wire   [63:0] tmp_2_fu_1358_p11;
reg   [63:0] tmp_2_reg_2558;
wire   [63:0] tmp_3_fu_1397_p11;
reg   [63:0] tmp_3_reg_2563;
wire   [0:0] tmp_85_fu_1436_p3;
reg   [0:0] tmp_85_reg_2588;
wire   [63:0] bitcast_ln14_61_fu_1467_p1;
reg   [63:0] init_2_load_2_reg_2618;
reg   [63:0] init_3_load_2_reg_2623;
reg   [63:0] init_0_load_3_reg_2628;
reg   [63:0] init_1_load_3_reg_2633;
reg   [63:0] init_2_load_3_reg_2638;
reg   [63:0] init_3_load_3_reg_2643;
wire   [63:0] tmp_4_fu_1488_p11;
reg   [63:0] tmp_4_reg_2648;
wire   [63:0] tmp_5_fu_1527_p11;
reg   [63:0] tmp_5_reg_2653;
wire   [63:0] bitcast_ln14_62_fu_1590_p1;
wire   [63:0] bitcast_ln14_63_fu_1594_p1;
wire   [63:0] tmp_6_fu_1614_p11;
reg   [63:0] tmp_6_reg_2708;
wire   [63:0] tmp_7_fu_1653_p11;
reg   [63:0] tmp_7_reg_2713;
wire   [63:0] bitcast_ln14_64_fu_1729_p1;
wire   [63:0] bitcast_ln14_65_fu_1733_p1;
wire   [63:0] tmp_8_fu_1753_p11;
reg   [63:0] tmp_8_reg_2768;
wire   [63:0] tmp_9_fu_1792_p11;
reg   [63:0] tmp_9_reg_2773;
wire   [63:0] bitcast_ln14_66_fu_1861_p1;
wire   [63:0] bitcast_ln14_67_fu_1865_p1;
wire   [63:0] tmp_s_fu_1885_p11;
reg   [63:0] tmp_s_reg_2828;
wire   [63:0] tmp_10_fu_1924_p11;
reg   [63:0] tmp_10_reg_2833;
wire   [63:0] bitcast_ln14_68_fu_1986_p1;
wire   [63:0] bitcast_ln14_69_fu_1991_p1;
wire   [63:0] tmp_11_fu_2012_p11;
reg   [63:0] tmp_11_reg_2888;
wire   [63:0] tmp_12_fu_2051_p11;
reg   [63:0] tmp_12_reg_2893;
wire   [63:0] bitcast_ln14_70_fu_2094_p1;
wire   [63:0] bitcast_ln14_71_fu_2098_p1;
wire   [63:0] tmp_13_fu_2148_p11;
reg   [63:0] tmp_13_reg_2948;
wire   [63:0] bitcast_ln14_72_fu_2171_p1;
wire   [63:0] bitcast_ln14_73_fu_2175_p1;
wire   [63:0] tmp_14_fu_2195_p11;
reg   [63:0] tmp_14_reg_2963;
wire   [63:0] bitcast_ln14_74_fu_2218_p1;
wire   [63:0] bitcast_ln14_75_fu_2222_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1114_p1;
wire   [63:0] zext_ln14_1_fu_1146_p1;
wire   [63:0] zext_ln14_2_fu_1270_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1290_p1;
wire   [63:0] zext_ln14_4_fu_1428_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1459_p1;
wire   [63:0] zext_ln14_6_fu_1562_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1582_p1;
wire   [63:0] zext_ln14_8_fu_1688_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_1721_p1;
wire   [63:0] zext_ln14_10_fu_1830_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_1853_p1;
wire   [63:0] zext_ln14_12_fu_1955_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_1978_p1;
wire   [63:0] zext_ln14_14_fu_2086_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_2114_p1;
reg   [6:0] s_fu_138;
wire   [6:0] add_ln13_fu_2122_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce1_local;
reg   [3:0] init_0_address1_local;
reg    init_0_ce0_local;
reg   [3:0] init_0_address0_local;
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
reg   [3:0] init_1_address1_local;
reg    init_1_ce0_local;
reg   [3:0] init_1_address0_local;
reg    init_2_ce1_local;
reg   [3:0] init_2_address1_local;
reg    init_2_ce0_local;
reg   [3:0] init_2_address0_local;
reg    init_3_ce1_local;
reg   [3:0] init_3_address1_local;
reg    init_3_ce0_local;
reg   [3:0] init_3_address0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg   [11:0] llike_2_address0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [11:0] llike_3_address0_local;
reg   [63:0] grp_fu_1026_p0;
reg   [63:0] grp_fu_1026_p1;
reg   [63:0] grp_fu_1030_p0;
reg   [63:0] grp_fu_1030_p1;
wire   [7:0] p_cast_fu_1058_p1;
wire   [9:0] or_ln_fu_1106_p3;
wire   [4:0] tmp_87_fu_1122_p4;
wire   [9:0] or_ln1_fu_1132_p3;
wire   [9:0] add_ln14_fu_1140_p2;
wire   [3:0] or_ln14_3_fu_1164_p3;
wire   [63:0] tmp_fu_1196_p2;
wire   [63:0] tmp_fu_1196_p4;
wire   [63:0] tmp_fu_1196_p6;
wire   [63:0] tmp_fu_1196_p8;
wire   [63:0] tmp_fu_1196_p9;
wire   [63:0] tmp_1_fu_1235_p2;
wire   [63:0] tmp_1_fu_1235_p4;
wire   [63:0] tmp_1_fu_1235_p6;
wire   [63:0] tmp_1_fu_1235_p8;
wire   [63:0] tmp_1_fu_1235_p9;
wire   [9:0] or_ln14_1_fu_1258_p3;
wire   [9:0] add_ln14_1_fu_1265_p2;
wire   [9:0] or_ln14_2_fu_1278_p3;
wire   [9:0] add_ln14_2_fu_1285_p2;
wire   [3:0] or_ln14_8_fu_1305_p4;
wire   [3:0] or_ln14_12_fu_1322_p3;
wire   [63:0] tmp_2_fu_1358_p2;
wire   [63:0] tmp_2_fu_1358_p4;
wire   [63:0] tmp_2_fu_1358_p6;
wire   [63:0] tmp_2_fu_1358_p8;
wire   [63:0] tmp_2_fu_1358_p9;
wire   [63:0] tmp_3_fu_1397_p2;
wire   [63:0] tmp_3_fu_1397_p4;
wire   [63:0] tmp_3_fu_1397_p6;
wire   [63:0] tmp_3_fu_1397_p8;
wire   [63:0] tmp_3_fu_1397_p9;
wire   [9:0] or_ln14_4_fu_1420_p4;
wire   [9:0] or_ln14_5_fu_1443_p5;
wire   [9:0] add_ln14_3_fu_1454_p2;
wire   [63:0] tmp_4_fu_1488_p2;
wire   [63:0] tmp_4_fu_1488_p4;
wire   [63:0] tmp_4_fu_1488_p6;
wire   [63:0] tmp_4_fu_1488_p8;
wire   [63:0] tmp_4_fu_1488_p9;
wire   [63:0] tmp_5_fu_1527_p2;
wire   [63:0] tmp_5_fu_1527_p4;
wire   [63:0] tmp_5_fu_1527_p6;
wire   [63:0] tmp_5_fu_1527_p8;
wire   [63:0] tmp_5_fu_1527_p9;
wire   [9:0] or_ln14_6_fu_1550_p3;
wire   [9:0] add_ln14_4_fu_1557_p2;
wire   [9:0] or_ln14_7_fu_1570_p3;
wire   [9:0] add_ln14_5_fu_1577_p2;
wire   [63:0] tmp_6_fu_1614_p2;
wire   [63:0] tmp_6_fu_1614_p4;
wire   [63:0] tmp_6_fu_1614_p6;
wire   [63:0] tmp_6_fu_1614_p8;
wire   [63:0] tmp_6_fu_1614_p9;
wire   [63:0] tmp_7_fu_1653_p2;
wire   [63:0] tmp_7_fu_1653_p4;
wire   [63:0] tmp_7_fu_1653_p6;
wire   [63:0] tmp_7_fu_1653_p8;
wire   [63:0] tmp_7_fu_1653_p9;
wire   [6:0] zext_ln14_18_fu_1676_p1;
wire   [9:0] or_ln14_9_fu_1679_p4;
wire   [1:0] tmp_90_fu_1696_p4;
wire   [9:0] or_ln14_s_fu_1705_p5;
wire   [9:0] add_ln14_6_fu_1716_p2;
wire   [63:0] tmp_8_fu_1753_p2;
wire   [63:0] tmp_8_fu_1753_p4;
wire   [63:0] tmp_8_fu_1753_p6;
wire   [63:0] tmp_8_fu_1753_p8;
wire   [63:0] tmp_8_fu_1753_p9;
wire   [63:0] tmp_9_fu_1792_p2;
wire   [63:0] tmp_9_fu_1792_p4;
wire   [63:0] tmp_9_fu_1792_p6;
wire   [63:0] tmp_9_fu_1792_p8;
wire   [63:0] tmp_9_fu_1792_p9;
wire   [9:0] or_ln14_10_fu_1815_p5;
wire   [9:0] add_ln14_7_fu_1825_p2;
wire   [9:0] or_ln14_11_fu_1838_p5;
wire   [9:0] add_ln14_8_fu_1848_p2;
wire   [63:0] tmp_s_fu_1885_p2;
wire   [63:0] tmp_s_fu_1885_p4;
wire   [63:0] tmp_s_fu_1885_p6;
wire   [63:0] tmp_s_fu_1885_p8;
wire   [63:0] tmp_s_fu_1885_p9;
wire   [63:0] tmp_10_fu_1924_p2;
wire   [63:0] tmp_10_fu_1924_p4;
wire   [63:0] tmp_10_fu_1924_p6;
wire   [63:0] tmp_10_fu_1924_p8;
wire   [63:0] tmp_10_fu_1924_p9;
wire   [9:0] or_ln14_13_fu_1947_p4;
wire   [9:0] or_ln14_14_fu_1963_p5;
wire   [9:0] add_ln14_9_fu_1973_p2;
wire   [63:0] tmp_11_fu_2012_p2;
wire   [63:0] tmp_11_fu_2012_p4;
wire   [63:0] tmp_11_fu_2012_p6;
wire   [63:0] tmp_11_fu_2012_p8;
wire   [63:0] tmp_11_fu_2012_p9;
wire   [63:0] tmp_12_fu_2051_p2;
wire   [63:0] tmp_12_fu_2051_p4;
wire   [63:0] tmp_12_fu_2051_p6;
wire   [63:0] tmp_12_fu_2051_p8;
wire   [63:0] tmp_12_fu_2051_p9;
wire   [9:0] or_ln14_15_fu_2074_p3;
wire   [9:0] add_ln14_10_fu_2081_p2;
wire   [9:0] or_ln14_16_fu_2102_p3;
wire   [9:0] add_ln14_11_fu_2109_p2;
wire   [63:0] tmp_13_fu_2148_p2;
wire   [63:0] tmp_13_fu_2148_p4;
wire   [63:0] tmp_13_fu_2148_p6;
wire   [63:0] tmp_13_fu_2148_p8;
wire   [63:0] tmp_13_fu_2148_p9;
wire   [63:0] tmp_14_fu_2195_p2;
wire   [63:0] tmp_14_fu_2195_p4;
wire   [63:0] tmp_14_fu_2195_p6;
wire   [63:0] tmp_14_fu_2195_p8;
wire   [63:0] tmp_14_fu_2195_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [1:0] tmp_fu_1196_p1;
wire   [1:0] tmp_fu_1196_p3;
wire  signed [1:0] tmp_fu_1196_p5;
wire  signed [1:0] tmp_fu_1196_p7;
wire   [1:0] tmp_1_fu_1235_p1;
wire   [1:0] tmp_1_fu_1235_p3;
wire  signed [1:0] tmp_1_fu_1235_p5;
wire  signed [1:0] tmp_1_fu_1235_p7;
wire   [1:0] tmp_2_fu_1358_p1;
wire   [1:0] tmp_2_fu_1358_p3;
wire  signed [1:0] tmp_2_fu_1358_p5;
wire  signed [1:0] tmp_2_fu_1358_p7;
wire   [1:0] tmp_3_fu_1397_p1;
wire   [1:0] tmp_3_fu_1397_p3;
wire  signed [1:0] tmp_3_fu_1397_p5;
wire  signed [1:0] tmp_3_fu_1397_p7;
wire   [1:0] tmp_4_fu_1488_p1;
wire   [1:0] tmp_4_fu_1488_p3;
wire  signed [1:0] tmp_4_fu_1488_p5;
wire  signed [1:0] tmp_4_fu_1488_p7;
wire   [1:0] tmp_5_fu_1527_p1;
wire   [1:0] tmp_5_fu_1527_p3;
wire  signed [1:0] tmp_5_fu_1527_p5;
wire  signed [1:0] tmp_5_fu_1527_p7;
wire   [1:0] tmp_6_fu_1614_p1;
wire   [1:0] tmp_6_fu_1614_p3;
wire  signed [1:0] tmp_6_fu_1614_p5;
wire  signed [1:0] tmp_6_fu_1614_p7;
wire   [1:0] tmp_7_fu_1653_p1;
wire   [1:0] tmp_7_fu_1653_p3;
wire  signed [1:0] tmp_7_fu_1653_p5;
wire  signed [1:0] tmp_7_fu_1653_p7;
wire   [1:0] tmp_8_fu_1753_p1;
wire   [1:0] tmp_8_fu_1753_p3;
wire  signed [1:0] tmp_8_fu_1753_p5;
wire  signed [1:0] tmp_8_fu_1753_p7;
wire   [1:0] tmp_9_fu_1792_p1;
wire   [1:0] tmp_9_fu_1792_p3;
wire  signed [1:0] tmp_9_fu_1792_p5;
wire  signed [1:0] tmp_9_fu_1792_p7;
wire   [1:0] tmp_s_fu_1885_p1;
wire   [1:0] tmp_s_fu_1885_p3;
wire  signed [1:0] tmp_s_fu_1885_p5;
wire  signed [1:0] tmp_s_fu_1885_p7;
wire   [1:0] tmp_10_fu_1924_p1;
wire   [1:0] tmp_10_fu_1924_p3;
wire  signed [1:0] tmp_10_fu_1924_p5;
wire  signed [1:0] tmp_10_fu_1924_p7;
wire   [1:0] tmp_11_fu_2012_p1;
wire   [1:0] tmp_11_fu_2012_p3;
wire  signed [1:0] tmp_11_fu_2012_p5;
wire  signed [1:0] tmp_11_fu_2012_p7;
wire   [1:0] tmp_12_fu_2051_p1;
wire   [1:0] tmp_12_fu_2051_p3;
wire  signed [1:0] tmp_12_fu_2051_p5;
wire  signed [1:0] tmp_12_fu_2051_p7;
wire   [1:0] tmp_13_fu_2148_p1;
wire   [1:0] tmp_13_fu_2148_p3;
wire  signed [1:0] tmp_13_fu_2148_p5;
wire  signed [1:0] tmp_13_fu_2148_p7;
wire   [1:0] tmp_14_fu_2195_p1;
wire   [1:0] tmp_14_fu_2195_p3;
wire  signed [1:0] tmp_14_fu_2195_p5;
wire  signed [1:0] tmp_14_fu_2195_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_138 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_fu_1196_p2),.din1(tmp_fu_1196_p4),.din2(tmp_fu_1196_p6),.din3(tmp_fu_1196_p8),.def(tmp_fu_1196_p9),.sel(empty),.dout(tmp_fu_1196_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_1_fu_1235_p2),.din1(tmp_1_fu_1235_p4),.din2(tmp_1_fu_1235_p6),.din3(tmp_1_fu_1235_p8),.def(tmp_1_fu_1235_p9),.sel(empty),.dout(tmp_1_fu_1235_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_2_fu_1358_p2),.din1(tmp_2_fu_1358_p4),.din2(tmp_2_fu_1358_p6),.din3(tmp_2_fu_1358_p8),.def(tmp_2_fu_1358_p9),.sel(empty),.dout(tmp_2_fu_1358_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(tmp_3_fu_1397_p2),.din1(tmp_3_fu_1397_p4),.din2(tmp_3_fu_1397_p6),.din3(tmp_3_fu_1397_p8),.def(tmp_3_fu_1397_p9),.sel(empty),.dout(tmp_3_fu_1397_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U7(.din0(tmp_4_fu_1488_p2),.din1(tmp_4_fu_1488_p4),.din2(tmp_4_fu_1488_p6),.din3(tmp_4_fu_1488_p8),.def(tmp_4_fu_1488_p9),.sel(empty),.dout(tmp_4_fu_1488_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U8(.din0(tmp_5_fu_1527_p2),.din1(tmp_5_fu_1527_p4),.din2(tmp_5_fu_1527_p6),.din3(tmp_5_fu_1527_p8),.def(tmp_5_fu_1527_p9),.sel(empty),.dout(tmp_5_fu_1527_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U9(.din0(tmp_6_fu_1614_p2),.din1(tmp_6_fu_1614_p4),.din2(tmp_6_fu_1614_p6),.din3(tmp_6_fu_1614_p8),.def(tmp_6_fu_1614_p9),.sel(empty),.dout(tmp_6_fu_1614_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U10(.din0(tmp_7_fu_1653_p2),.din1(tmp_7_fu_1653_p4),.din2(tmp_7_fu_1653_p6),.din3(tmp_7_fu_1653_p8),.def(tmp_7_fu_1653_p9),.sel(empty),.dout(tmp_7_fu_1653_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U11(.din0(tmp_8_fu_1753_p2),.din1(tmp_8_fu_1753_p4),.din2(tmp_8_fu_1753_p6),.din3(tmp_8_fu_1753_p8),.def(tmp_8_fu_1753_p9),.sel(empty),.dout(tmp_8_fu_1753_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U12(.din0(tmp_9_fu_1792_p2),.din1(tmp_9_fu_1792_p4),.din2(tmp_9_fu_1792_p6),.din3(tmp_9_fu_1792_p8),.def(tmp_9_fu_1792_p9),.sel(empty),.dout(tmp_9_fu_1792_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U13(.din0(tmp_s_fu_1885_p2),.din1(tmp_s_fu_1885_p4),.din2(tmp_s_fu_1885_p6),.din3(tmp_s_fu_1885_p8),.def(tmp_s_fu_1885_p9),.sel(empty),.dout(tmp_s_fu_1885_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U14(.din0(tmp_10_fu_1924_p2),.din1(tmp_10_fu_1924_p4),.din2(tmp_10_fu_1924_p6),.din3(tmp_10_fu_1924_p8),.def(tmp_10_fu_1924_p9),.sel(empty),.dout(tmp_10_fu_1924_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U15(.din0(tmp_11_fu_2012_p2),.din1(tmp_11_fu_2012_p4),.din2(tmp_11_fu_2012_p6),.din3(tmp_11_fu_2012_p8),.def(tmp_11_fu_2012_p9),.sel(empty),.dout(tmp_11_fu_2012_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U16(.din0(tmp_12_fu_2051_p2),.din1(tmp_12_fu_2051_p4),.din2(tmp_12_fu_2051_p6),.din3(tmp_12_fu_2051_p8),.def(tmp_12_fu_2051_p9),.sel(empty),.dout(tmp_12_fu_2051_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U17(.din0(tmp_13_fu_2148_p2),.din1(tmp_13_fu_2148_p4),.din2(tmp_13_fu_2148_p6),.din3(tmp_13_fu_2148_p8),.def(tmp_13_fu_2148_p9),.sel(empty),.dout(tmp_13_fu_2148_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U18(.din0(tmp_14_fu_2195_p2),.din1(tmp_14_fu_2195_p4),.din2(tmp_14_fu_2195_p6),.din3(tmp_14_fu_2195_p8),.def(tmp_14_fu_2195_p9),.sel(empty),.dout(tmp_14_fu_2195_p11));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage1) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_138 <= 7'd0;
    end else if (((tmp_84_reg_2283 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_138 <= add_ln13_fu_2122_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_2260[5 : 0] <= conv3_udiv_cast_cast_fu_1054_p1[5 : 0];
        lshr_ln9_reg_2287 <= {{ap_sig_allocacmp_s_1[5:2]}};
        s_1_reg_2275 <= ap_sig_allocacmp_s_1;
        tmp_13_reg_2948 <= tmp_13_fu_2148_p11;
        tmp_14_reg_2963 <= tmp_14_fu_2195_p11;
        tmp_84_reg_2283 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_84_reg_2283_pp0_iter1_reg <= tmp_84_reg_2283;
        tmp_86_reg_2306 <= {{ap_sig_allocacmp_s_1[5:4]}};
        tmp_88_reg_2361 <= {{ap_sig_allocacmp_s_1[5:3]}};
        zext_ln14_16_reg_2368[3 : 1] <= zext_ln14_16_fu_1172_p1[3 : 1];
        zext_ln14_16_reg_2368_pp0_iter1_reg[3 : 1] <= zext_ln14_16_reg_2368[3 : 1];
        zext_ln9_reg_2293[3 : 0] <= zext_ln9_fu_1088_p1[3 : 0];
        zext_ln9_reg_2293_pp0_iter1_reg[3 : 0] <= zext_ln9_reg_2293[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_2493 <= init_0_q0;
        init_1_load_1_reg_2498 <= init_1_q0;
        init_2_load_1_reg_2503 <= init_2_q0;
        init_2_load_reg_2483 <= init_2_q1;
        init_3_load_1_reg_2508 <= init_3_q0;
        init_3_load_reg_2488 <= init_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        init_0_load_3_reg_2628 <= init_0_q0;
        init_1_load_3_reg_2633 <= init_1_q0;
        init_2_load_2_reg_2618 <= init_2_q1;
        init_2_load_3_reg_2638 <= init_2_q0;
        init_3_load_2_reg_2623 <= init_3_q1;
        init_3_load_3_reg_2643 <= init_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1034 <= init_0_q1;
        reg_1038 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1042 <= grp_fu_494_p_dout0;
        reg_1048 <= grp_fu_960_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_10_reg_2833 <= tmp_10_fu_1924_p11;
        tmp_s_reg_2828 <= tmp_s_fu_1885_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_11_reg_2888 <= tmp_11_fu_2012_p11;
        tmp_12_reg_2893 <= tmp_12_fu_2051_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_2416 <= tmp_1_fu_1235_p11;
        tmp_89_reg_2461 <= s_1_reg_2275[32'd2];
        tmp_reg_2411 <= tmp_fu_1196_p11;
        zext_ln14_17_reg_2467[0] <= zext_ln14_17_fu_1314_p1[0];
zext_ln14_17_reg_2467[3 : 2] <= zext_ln14_17_fu_1314_p1[3 : 2];
        zext_ln14_17_reg_2467_pp0_iter1_reg[0] <= zext_ln14_17_reg_2467[0];
zext_ln14_17_reg_2467_pp0_iter1_reg[3 : 2] <= zext_ln14_17_reg_2467[3 : 2];
        zext_ln14_19_reg_2475[3 : 2] <= zext_ln14_19_fu_1329_p1[3 : 2];
        zext_ln14_19_reg_2475_pp0_iter1_reg[3 : 2] <= zext_ln14_19_reg_2475[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_2558 <= tmp_2_fu_1358_p11;
        tmp_3_reg_2563 <= tmp_3_fu_1397_p11;
        tmp_85_reg_2588 <= s_1_reg_2275[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_2648 <= tmp_4_fu_1488_p11;
        tmp_5_reg_2653 <= tmp_5_fu_1527_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_6_reg_2708 <= tmp_6_fu_1614_p11;
        tmp_7_reg_2713 <= tmp_7_fu_1653_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_8_reg_2768 <= tmp_8_fu_1753_p11;
        tmp_9_reg_2773 <= tmp_9_fu_1792_p11;
    end
end
always @ (*) begin
    if (((tmp_84_reg_2283 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_84_reg_2283_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_138;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_2114_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_1978_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_1853_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_1721_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1582_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1459_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1290_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1146_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address1_local = zext_ln14_14_fu_2086_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_1955_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_1830_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_1688_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1562_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1428_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1114_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_2114_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_1978_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_1853_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_1721_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1582_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1459_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1290_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1146_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address1_local = zext_ln14_14_fu_2086_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_1955_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_1830_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_1688_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1562_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1428_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1114_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_2_address0_local = zext_ln14_15_fu_2114_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address0_local = zext_ln14_13_fu_1978_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address0_local = zext_ln14_11_fu_1853_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address0_local = zext_ln14_9_fu_1721_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address0_local = zext_ln14_7_fu_1582_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_1459_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1290_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1146_p1;
        end else begin
            emission_2_address0_local = 'bx;
        end
    end else begin
        emission_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_2_address1_local = zext_ln14_14_fu_2086_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address1_local = zext_ln14_12_fu_1955_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address1_local = zext_ln14_10_fu_1830_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address1_local = zext_ln14_8_fu_1688_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address1_local = zext_ln14_6_fu_1562_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_1428_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1114_p1;
        end else begin
            emission_2_address1_local = 'bx;
        end
    end else begin
        emission_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_3_address0_local = zext_ln14_15_fu_2114_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address0_local = zext_ln14_13_fu_1978_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address0_local = zext_ln14_11_fu_1853_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address0_local = zext_ln14_9_fu_1721_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address0_local = zext_ln14_7_fu_1582_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_1459_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1290_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1146_p1;
        end else begin
            emission_3_address0_local = 'bx;
        end
    end else begin
        emission_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_3_address1_local = zext_ln14_14_fu_2086_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address1_local = zext_ln14_12_fu_1955_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address1_local = zext_ln14_10_fu_1830_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address1_local = zext_ln14_8_fu_1688_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address1_local = zext_ln14_6_fu_1562_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_1428_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1114_p1;
        end else begin
            emission_3_address1_local = 'bx;
        end
    end else begin
        emission_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1026_p0 = bitcast_ln14_74_fu_2218_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1026_p0 = bitcast_ln14_72_fu_2171_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1026_p0 = bitcast_ln14_70_fu_2094_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1026_p0 = bitcast_ln14_68_fu_1986_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1026_p0 = bitcast_ln14_66_fu_1861_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1026_p0 = bitcast_ln14_64_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1026_p0 = bitcast_ln14_62_fu_1590_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1026_p0 = bitcast_ln14_fu_1337_p1;
    end else begin
        grp_fu_1026_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1026_p1 = tmp_13_reg_2948;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1026_p1 = tmp_11_reg_2888;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1026_p1 = tmp_s_reg_2828;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1026_p1 = tmp_8_reg_2768;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1026_p1 = tmp_6_reg_2708;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1026_p1 = tmp_4_reg_2648;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1026_p1 = tmp_2_reg_2558;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1026_p1 = tmp_reg_2411;
    end else begin
        grp_fu_1026_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1030_p0 = bitcast_ln14_75_fu_2222_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1030_p0 = bitcast_ln14_73_fu_2175_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1030_p0 = bitcast_ln14_71_fu_2098_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1030_p0 = bitcast_ln14_69_fu_1991_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1030_p0 = bitcast_ln14_67_fu_1865_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1030_p0 = bitcast_ln14_65_fu_1733_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1030_p0 = bitcast_ln14_63_fu_1594_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1030_p0 = bitcast_ln14_61_fu_1467_p1;
    end else begin
        grp_fu_1030_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1030_p1 = tmp_14_reg_2963;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1030_p1 = tmp_12_reg_2893;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1030_p1 = tmp_10_reg_2833;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1030_p1 = tmp_9_reg_2773;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1030_p1 = tmp_7_reg_2713;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1030_p1 = tmp_5_reg_2653;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1030_p1 = tmp_3_reg_2563;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1030_p1 = tmp_1_reg_2416;
    end else begin
        grp_fu_1030_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_19_fu_1329_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_16_fu_1172_p1;
        end else begin
            init_0_address0_local = 'bx;
        end
    end else begin
        init_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_17_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_1088_p1;
        end else begin
            init_0_address1_local = 'bx;
        end
    end else begin
        init_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_19_fu_1329_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_16_fu_1172_p1;
        end else begin
            init_1_address0_local = 'bx;
        end
    end else begin
        init_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_17_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_1088_p1;
        end else begin
            init_1_address1_local = 'bx;
        end
    end else begin
        init_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_2_address0_local = zext_ln14_19_fu_1329_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_2_address0_local = zext_ln14_16_fu_1172_p1;
        end else begin
            init_2_address0_local = 'bx;
        end
    end else begin
        init_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_2_address1_local = zext_ln14_17_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_2_address1_local = zext_ln9_fu_1088_p1;
        end else begin
            init_2_address1_local = 'bx;
        end
    end else begin
        init_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_2_ce0_local = 1'b1;
    end else begin
        init_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_2_ce1_local = 1'b1;
    end else begin
        init_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_3_address0_local = zext_ln14_19_fu_1329_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_3_address0_local = zext_ln14_16_fu_1172_p1;
        end else begin
            init_3_address0_local = 'bx;
        end
    end else begin
        init_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_3_address1_local = zext_ln14_17_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_3_address1_local = zext_ln9_fu_1088_p1;
        end else begin
            init_3_address1_local = 'bx;
        end
    end else begin
        init_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_3_ce0_local = 1'b1;
    end else begin
        init_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_3_ce1_local = 1'b1;
    end else begin
        init_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_19_reg_2475_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_1_address0_local = zext_ln14_17_reg_2467_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_address0_local = zext_ln14_16_reg_2368_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln9_reg_2293_pp0_iter1_reg;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_address0_local = zext_ln14_19_reg_2475_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_2_address0_local = zext_ln14_17_reg_2467_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_2_address0_local = zext_ln14_16_reg_2368_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_address0_local = zext_ln9_reg_2293_pp0_iter1_reg;
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_address0_local = zext_ln14_19_reg_2475_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_3_address0_local = zext_ln14_17_reg_2467_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_3_address0_local = zext_ln14_16_reg_2368_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_address0_local = zext_ln9_reg_2293_pp0_iter1_reg;
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_19_reg_2475_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_17_reg_2467_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_16_reg_2368_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln9_reg_2293_pp0_iter1_reg;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage1) & (ap_idle_pp0_0to0 == 1'b1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_2122_p2 = (s_1_reg_2275 + 7'd16);
assign add_ln14_10_fu_2081_p2 = (or_ln14_15_fu_2074_p3 + conv3_udiv_cast_cast_reg_2260);
assign add_ln14_11_fu_2109_p2 = (or_ln14_16_fu_2102_p3 + conv3_udiv_cast_cast_reg_2260);
assign add_ln14_1_fu_1265_p2 = (or_ln14_1_fu_1258_p3 + conv3_udiv_cast_cast_reg_2260);
assign add_ln14_2_fu_1285_p2 = (or_ln14_2_fu_1278_p3 + conv3_udiv_cast_cast_reg_2260);
assign add_ln14_3_fu_1454_p2 = (or_ln14_5_fu_1443_p5 + conv3_udiv_cast_cast_reg_2260);
assign add_ln14_4_fu_1557_p2 = (or_ln14_6_fu_1550_p3 + conv3_udiv_cast_cast_reg_2260);
assign add_ln14_5_fu_1577_p2 = (or_ln14_7_fu_1570_p3 + conv3_udiv_cast_cast_reg_2260);
assign add_ln14_6_fu_1716_p2 = (or_ln14_s_fu_1705_p5 + conv3_udiv_cast_cast_reg_2260);
assign add_ln14_7_fu_1825_p2 = (or_ln14_10_fu_1815_p5 + conv3_udiv_cast_cast_reg_2260);
assign add_ln14_8_fu_1848_p2 = (or_ln14_11_fu_1838_p5 + conv3_udiv_cast_cast_reg_2260);
assign add_ln14_9_fu_1973_p2 = (or_ln14_14_fu_1963_p5 + conv3_udiv_cast_cast_reg_2260);
assign add_ln14_fu_1140_p2 = (or_ln1_fu_1132_p3 + conv3_udiv_cast_cast_fu_1054_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_61_fu_1467_p1 = reg_1038;
assign bitcast_ln14_62_fu_1590_p1 = init_2_load_reg_2483;
assign bitcast_ln14_63_fu_1594_p1 = init_3_load_reg_2488;
assign bitcast_ln14_64_fu_1729_p1 = init_0_load_1_reg_2493;
assign bitcast_ln14_65_fu_1733_p1 = init_1_load_1_reg_2498;
assign bitcast_ln14_66_fu_1861_p1 = init_2_load_1_reg_2503;
assign bitcast_ln14_67_fu_1865_p1 = init_3_load_1_reg_2508;
assign bitcast_ln14_68_fu_1986_p1 = reg_1034;
assign bitcast_ln14_69_fu_1991_p1 = reg_1038;
assign bitcast_ln14_70_fu_2094_p1 = init_2_load_2_reg_2618;
assign bitcast_ln14_71_fu_2098_p1 = init_3_load_2_reg_2623;
assign bitcast_ln14_72_fu_2171_p1 = init_0_load_3_reg_2628;
assign bitcast_ln14_73_fu_2175_p1 = init_1_load_3_reg_2633;
assign bitcast_ln14_74_fu_2218_p1 = init_2_load_3_reg_2638;
assign bitcast_ln14_75_fu_2222_p1 = init_3_load_3_reg_2643;
assign bitcast_ln14_fu_1337_p1 = reg_1034;
assign conv3_udiv_cast_cast_fu_1054_p1 = conv3_udiv_cast;
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
assign grp_fu_494_p_ce = 1'b1;
assign grp_fu_494_p_din0 = grp_fu_1026_p0;
assign grp_fu_494_p_din1 = grp_fu_1026_p1;
assign grp_fu_494_p_opcode = 2'd0;
assign grp_fu_960_p_ce = 1'b1;
assign grp_fu_960_p_din0 = grp_fu_1030_p0;
assign grp_fu_960_p_din1 = grp_fu_1030_p1;
assign grp_fu_960_p_opcode = 2'd0;
assign init_0_address0 = init_0_address0_local;
assign init_0_address1 = init_0_address1_local;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = init_1_address0_local;
assign init_1_address1 = init_1_address1_local;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign init_2_address0 = init_2_address0_local;
assign init_2_address1 = init_2_address1_local;
assign init_2_ce0 = init_2_ce0_local;
assign init_2_ce1 = init_2_ce1_local;
assign init_3_address0 = init_3_address0_local;
assign init_3_address1 = init_3_address1_local;
assign init_3_ce0 = init_3_ce0_local;
assign init_3_ce1 = init_3_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1048;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_1042;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_1048;
assign llike_3_we0 = llike_3_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1042;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_1078_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln14_10_fu_1815_p5 = {{{{tmp_86_reg_2306}, {1'd1}}, {tmp_89_reg_2461}}, {6'd32}};
assign or_ln14_11_fu_1838_p5 = {{{{tmp_86_reg_2306}, {1'd1}}, {tmp_89_reg_2461}}, {6'd48}};
assign or_ln14_12_fu_1322_p3 = {{tmp_86_reg_2306}, {2'd3}};
assign or_ln14_13_fu_1947_p4 = {{{tmp_86_reg_2306}, {2'd3}}, {conv3_udiv}};
assign or_ln14_14_fu_1963_p5 = {{{{tmp_86_reg_2306}, {2'd3}}, {tmp_85_reg_2588}}, {5'd16}};
assign or_ln14_15_fu_2074_p3 = {{tmp_86_reg_2306}, {8'd224}};
assign or_ln14_16_fu_2102_p3 = {{tmp_86_reg_2306}, {8'd240}};
assign or_ln14_1_fu_1258_p3 = {{lshr_ln9_reg_2287}, {6'd32}};
assign or_ln14_2_fu_1278_p3 = {{lshr_ln9_reg_2287}, {6'd48}};
assign or_ln14_3_fu_1164_p3 = {{tmp_88_fu_1154_p4}, {1'd1}};
assign or_ln14_4_fu_1420_p4 = {{{tmp_86_reg_2306}, {2'd1}}, {conv3_udiv}};
assign or_ln14_5_fu_1443_p5 = {{{{tmp_88_reg_2361}, {1'd1}}, {tmp_85_fu_1436_p3}}, {5'd16}};
assign or_ln14_6_fu_1550_p3 = {{tmp_88_reg_2361}, {7'd96}};
assign or_ln14_7_fu_1570_p3 = {{tmp_88_reg_2361}, {7'd112}};
assign or_ln14_8_fu_1305_p4 = {{{tmp_86_reg_2306}, {1'd1}}, {tmp_89_fu_1298_p3}};
assign or_ln14_9_fu_1679_p4 = {{{tmp_86_reg_2306}, {1'd1}}, {zext_ln14_18_fu_1676_p1}};
assign or_ln14_s_fu_1705_p5 = {{{{tmp_86_reg_2306}, {1'd1}}, {tmp_90_fu_1696_p4}}, {5'd16}};
assign or_ln1_fu_1132_p3 = {{tmp_87_fu_1122_p4}, {5'd16}};
assign or_ln_fu_1106_p3 = {{tmp_86_fu_1096_p4}, {p_cast_fu_1058_p1}};
assign p_cast_fu_1058_p1 = empty_10;
assign tmp_10_fu_1924_p2 = emission_0_q0;
assign tmp_10_fu_1924_p4 = emission_1_q0;
assign tmp_10_fu_1924_p6 = emission_2_q0;
assign tmp_10_fu_1924_p8 = emission_3_q0;
assign tmp_10_fu_1924_p9 = 'bx;
assign tmp_11_fu_2012_p2 = emission_0_q1;
assign tmp_11_fu_2012_p4 = emission_1_q1;
assign tmp_11_fu_2012_p6 = emission_2_q1;
assign tmp_11_fu_2012_p8 = emission_3_q1;
assign tmp_11_fu_2012_p9 = 'bx;
assign tmp_12_fu_2051_p2 = emission_0_q0;
assign tmp_12_fu_2051_p4 = emission_1_q0;
assign tmp_12_fu_2051_p6 = emission_2_q0;
assign tmp_12_fu_2051_p8 = emission_3_q0;
assign tmp_12_fu_2051_p9 = 'bx;
assign tmp_13_fu_2148_p2 = emission_0_q1;
assign tmp_13_fu_2148_p4 = emission_1_q1;
assign tmp_13_fu_2148_p6 = emission_2_q1;
assign tmp_13_fu_2148_p8 = emission_3_q1;
assign tmp_13_fu_2148_p9 = 'bx;
assign tmp_14_fu_2195_p2 = emission_0_q0;
assign tmp_14_fu_2195_p4 = emission_1_q0;
assign tmp_14_fu_2195_p6 = emission_2_q0;
assign tmp_14_fu_2195_p8 = emission_3_q0;
assign tmp_14_fu_2195_p9 = 'bx;
assign tmp_1_fu_1235_p2 = emission_0_q0;
assign tmp_1_fu_1235_p4 = emission_1_q0;
assign tmp_1_fu_1235_p6 = emission_2_q0;
assign tmp_1_fu_1235_p8 = emission_3_q0;
assign tmp_1_fu_1235_p9 = 'bx;
assign tmp_2_fu_1358_p2 = emission_0_q1;
assign tmp_2_fu_1358_p4 = emission_1_q1;
assign tmp_2_fu_1358_p6 = emission_2_q1;
assign tmp_2_fu_1358_p8 = emission_3_q1;
assign tmp_2_fu_1358_p9 = 'bx;
assign tmp_3_fu_1397_p2 = emission_0_q0;
assign tmp_3_fu_1397_p4 = emission_1_q0;
assign tmp_3_fu_1397_p6 = emission_2_q0;
assign tmp_3_fu_1397_p8 = emission_3_q0;
assign tmp_3_fu_1397_p9 = 'bx;
assign tmp_4_fu_1488_p2 = emission_0_q1;
assign tmp_4_fu_1488_p4 = emission_1_q1;
assign tmp_4_fu_1488_p6 = emission_2_q1;
assign tmp_4_fu_1488_p8 = emission_3_q1;
assign tmp_4_fu_1488_p9 = 'bx;
assign tmp_5_fu_1527_p2 = emission_0_q0;
assign tmp_5_fu_1527_p4 = emission_1_q0;
assign tmp_5_fu_1527_p6 = emission_2_q0;
assign tmp_5_fu_1527_p8 = emission_3_q0;
assign tmp_5_fu_1527_p9 = 'bx;
assign tmp_6_fu_1614_p2 = emission_0_q1;
assign tmp_6_fu_1614_p4 = emission_1_q1;
assign tmp_6_fu_1614_p6 = emission_2_q1;
assign tmp_6_fu_1614_p8 = emission_3_q1;
assign tmp_6_fu_1614_p9 = 'bx;
assign tmp_7_fu_1653_p2 = emission_0_q0;
assign tmp_7_fu_1653_p4 = emission_1_q0;
assign tmp_7_fu_1653_p6 = emission_2_q0;
assign tmp_7_fu_1653_p8 = emission_3_q0;
assign tmp_7_fu_1653_p9 = 'bx;
assign tmp_85_fu_1436_p3 = s_1_reg_2275[32'd1];
assign tmp_86_fu_1096_p4 = {{ap_sig_allocacmp_s_1[5:4]}};
assign tmp_87_fu_1122_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_88_fu_1154_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_89_fu_1298_p3 = s_1_reg_2275[32'd2];
assign tmp_8_fu_1753_p2 = emission_0_q1;
assign tmp_8_fu_1753_p4 = emission_1_q1;
assign tmp_8_fu_1753_p6 = emission_2_q1;
assign tmp_8_fu_1753_p8 = emission_3_q1;
assign tmp_8_fu_1753_p9 = 'bx;
assign tmp_90_fu_1696_p4 = {{s_1_reg_2275[2:1]}};
assign tmp_9_fu_1792_p2 = emission_0_q0;
assign tmp_9_fu_1792_p4 = emission_1_q0;
assign tmp_9_fu_1792_p6 = emission_2_q0;
assign tmp_9_fu_1792_p8 = emission_3_q0;
assign tmp_9_fu_1792_p9 = 'bx;
assign tmp_fu_1196_p2 = emission_0_q1;
assign tmp_fu_1196_p4 = emission_1_q1;
assign tmp_fu_1196_p6 = emission_2_q1;
assign tmp_fu_1196_p8 = emission_3_q1;
assign tmp_fu_1196_p9 = 'bx;
assign tmp_s_fu_1885_p2 = emission_0_q1;
assign tmp_s_fu_1885_p4 = emission_1_q1;
assign tmp_s_fu_1885_p6 = emission_2_q1;
assign tmp_s_fu_1885_p8 = emission_3_q1;
assign tmp_s_fu_1885_p9 = 'bx;
assign zext_ln14_10_fu_1830_p1 = add_ln14_7_fu_1825_p2;
assign zext_ln14_11_fu_1853_p1 = add_ln14_8_fu_1848_p2;
assign zext_ln14_12_fu_1955_p1 = or_ln14_13_fu_1947_p4;
assign zext_ln14_13_fu_1978_p1 = add_ln14_9_fu_1973_p2;
assign zext_ln14_14_fu_2086_p1 = add_ln14_10_fu_2081_p2;
assign zext_ln14_15_fu_2114_p1 = add_ln14_11_fu_2109_p2;
assign zext_ln14_16_fu_1172_p1 = or_ln14_3_fu_1164_p3;
assign zext_ln14_17_fu_1314_p1 = or_ln14_8_fu_1305_p4;
assign zext_ln14_18_fu_1676_p1 = conv3_udiv;
assign zext_ln14_19_fu_1329_p1 = or_ln14_12_fu_1322_p3;
assign zext_ln14_1_fu_1146_p1 = add_ln14_fu_1140_p2;
assign zext_ln14_2_fu_1270_p1 = add_ln14_1_fu_1265_p2;
assign zext_ln14_3_fu_1290_p1 = add_ln14_2_fu_1285_p2;
assign zext_ln14_4_fu_1428_p1 = or_ln14_4_fu_1420_p4;
assign zext_ln14_5_fu_1459_p1 = add_ln14_3_fu_1454_p2;
assign zext_ln14_6_fu_1562_p1 = add_ln14_4_fu_1557_p2;
assign zext_ln14_7_fu_1582_p1 = add_ln14_5_fu_1577_p2;
assign zext_ln14_8_fu_1688_p1 = or_ln14_9_fu_1679_p4;
assign zext_ln14_9_fu_1721_p1 = add_ln14_6_fu_1716_p2;
assign zext_ln14_fu_1114_p1 = or_ln_fu_1106_p3;
assign zext_ln9_fu_1088_p1 = lshr_ln9_fu_1078_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_2260[9:6] <= 4'b0000;
    zext_ln9_reg_2293[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln9_reg_2293_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_16_reg_2368[0] <= 1'b1;
    zext_ln14_16_reg_2368[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_16_reg_2368_pp0_iter1_reg[0] <= 1'b1;
    zext_ln14_16_reg_2368_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_17_reg_2467[1] <= 1'b1;
    zext_ln14_17_reg_2467[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_17_reg_2467_pp0_iter1_reg[1] <= 1'b1;
    zext_ln14_17_reg_2467_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_19_reg_2475[1:0] <= 2'b11;
    zext_ln14_19_reg_2475[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_19_reg_2475_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln14_19_reg_2475_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
