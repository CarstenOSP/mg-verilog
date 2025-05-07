module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_20,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty,llike_address0,llike_ce0,llike_q0,zext_ln52_3,min_s_18_out,min_s_18_out_ap_vld,grp_fu_630_p_din0,grp_fu_630_p_din1,grp_fu_630_p_opcode,grp_fu_630_p_dout0,grp_fu_630_p_ce,grp_fu_1374_p_din0,grp_fu_1374_p_din1,grp_fu_1374_p_opcode,grp_fu_1374_p_dout0,grp_fu_1374_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 17'd1;
parameter    ap_ST_fsm_pp0_stage1 = 17'd2;
parameter    ap_ST_fsm_pp0_stage2 = 17'd4;
parameter    ap_ST_fsm_pp0_stage3 = 17'd8;
parameter    ap_ST_fsm_pp0_stage4 = 17'd16;
parameter    ap_ST_fsm_pp0_stage5 = 17'd32;
parameter    ap_ST_fsm_pp0_stage6 = 17'd64;
parameter    ap_ST_fsm_pp0_stage7 = 17'd128;
parameter    ap_ST_fsm_pp0_stage8 = 17'd256;
parameter    ap_ST_fsm_pp0_stage9 = 17'd512;
parameter    ap_ST_fsm_pp0_stage10 = 17'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 17'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 17'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 17'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 17'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 17'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_20;
input  [7:0] t_1;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_2_address1;
output   llike_2_ce1;
input  [63:0] llike_2_q1;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [11:0] llike_3_address1;
output   llike_3_ce1;
input  [63:0] llike_3_q1;
input  [5:0] zext_ln52_2;
output  [9:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [9:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [9:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [9:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [9:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [9:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [9:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [9:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
input  [1:0] empty;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [11:0] zext_ln52_3;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_630_p_din0;
output  [63:0] grp_fu_630_p_din1;
output  [1:0] grp_fu_630_p_opcode;
input  [63:0] grp_fu_630_p_dout0;
output   grp_fu_630_p_ce;
output  [63:0] grp_fu_1374_p_din0;
output  [63:0] grp_fu_1374_p_din1;
output  [4:0] grp_fu_1374_p_opcode;
input  [0:0] grp_fu_1374_p_dout0;
output   grp_fu_1374_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_33_reg_2240;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_569;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_574;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_579;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln52_2_cast_fu_584_p1;
reg   [9:0] zext_ln52_2_cast_reg_2131;
reg   [5:0] s_reg_2142;
wire   [5:0] add_ln53_fu_657_p2;
reg   [5:0] add_ln53_reg_2184;
wire   [5:0] add_ln53_1_fu_663_p2;
reg   [5:0] add_ln53_1_reg_2190;
reg   [5:0] add_ln53_1_reg_2190_pp0_iter1_reg;
wire   [5:0] add_ln53_2_fu_669_p2;
reg   [5:0] add_ln53_2_reg_2196;
reg   [5:0] add_ln53_2_reg_2196_pp0_iter1_reg;
wire   [5:0] add_ln53_4_fu_717_p2;
reg   [5:0] add_ln53_4_reg_2212;
reg   [5:0] add_ln53_4_reg_2212_pp0_iter1_reg;
wire   [5:0] add_ln53_5_fu_746_p2;
reg   [5:0] add_ln53_5_reg_2223;
reg   [5:0] add_ln53_5_reg_2223_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_775_p2;
reg   [6:0] add_ln53_6_reg_2234;
reg   [0:0] tmp_33_reg_2240_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2244;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_805_p11;
reg   [63:0] tmp_1_reg_2249;
reg   [63:0] llike_2_load_reg_2254;
reg   [63:0] llike_3_load_reg_2279;
reg   [63:0] llike_load_reg_2304;
wire   [5:0] add_ln53_3_fu_868_p2;
reg   [5:0] add_ln53_3_reg_2309;
reg   [5:0] add_ln53_3_reg_2309_pp0_iter1_reg;
reg   [63:0] llike_1_load_1_reg_2315;
reg   [63:0] llike_2_load_1_reg_2320;
reg   [63:0] llike_3_load_1_reg_2325;
wire   [63:0] tmp_5_fu_912_p11;
reg   [63:0] tmp_5_reg_2335;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_9_fu_951_p11;
reg   [63:0] tmp_9_reg_2340;
reg   [63:0] llike_load_1_reg_2385;
wire   [63:0] tmp_14_fu_1030_p11;
reg   [63:0] tmp_14_reg_2390;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_19_fu_1069_p11;
reg   [63:0] tmp_19_reg_2395;
wire   [63:0] tmp_24_fu_1148_p11;
reg   [63:0] tmp_24_reg_2440;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_29_fu_1187_p11;
reg   [63:0] tmp_29_reg_2445;
wire   [5:0] trunc_ln54_fu_1210_p1;
reg   [5:0] trunc_ln54_reg_2450;
reg   [5:0] trunc_ln54_reg_2450_pp0_iter1_reg;
wire   [63:0] tmp_34_fu_1250_p11;
reg   [63:0] tmp_34_reg_2475;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_2480;
wire   [0:0] and_ln55_1_fu_1354_p2;
reg   [0:0] and_ln55_1_reg_2487;
wire   [63:0] min_p_3_fu_1360_p3;
reg   [63:0] min_p_3_reg_2493;
wire   [0:0] and_ln55_3_fu_1444_p2;
reg   [0:0] and_ln55_3_reg_2500;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_4_reg_2506;
wire   [63:0] min_p_5_fu_1463_p3;
reg   [63:0] min_p_5_reg_2513;
wire   [7:0] min_s_5_fu_1473_p3;
reg   [7:0] min_s_5_reg_2520;
wire   [0:0] and_ln55_5_fu_1557_p2;
reg   [0:0] and_ln55_5_reg_2525;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_6_reg_2531;
wire   [63:0] min_p_7_fu_1563_p3;
reg   [63:0] min_p_7_reg_2538;
wire   [0:0] icmp_ln55_14_fu_1588_p2;
reg   [0:0] icmp_ln55_14_reg_2544;
wire   [0:0] icmp_ln55_15_fu_1594_p2;
reg   [0:0] icmp_ln55_15_reg_2549;
wire   [0:0] and_ln55_7_fu_1656_p2;
reg   [0:0] and_ln55_7_reg_2554;
wire   [63:0] min_p_9_fu_1671_p3;
reg   [63:0] min_p_9_reg_2560;
wire   [7:0] min_s_7_fu_1681_p3;
reg   [7:0] min_s_7_reg_2567;
wire   [0:0] and_ln55_9_fu_1764_p2;
reg   [0:0] and_ln55_9_reg_2572;
wire   [63:0] min_p_11_fu_1770_p3;
reg   [63:0] min_p_11_reg_2578;
wire   [0:0] and_ln55_11_fu_1853_p2;
reg   [0:0] and_ln55_11_reg_2585;
wire   [63:0] min_p_13_fu_1859_p3;
reg   [63:0] min_p_13_reg_2591;
wire   [0:0] and_ln55_13_fu_1942_p2;
reg   [0:0] and_ln55_13_reg_2598;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_10_fu_1970_p3;
reg   [7:0] min_s_10_reg_2604;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_15_fu_1978_p3;
reg   [63:0] min_p_15_reg_2609;
reg   [0:0] tmp_37_reg_2616;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_628_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_649_p1;
wire   [63:0] zext_ln54_9_fu_693_p1;
wire   [63:0] zext_ln54_10_fu_712_p1;
wire   [63:0] zext_ln54_11_fu_741_p1;
wire   [63:0] zext_ln54_12_fu_770_p1;
wire   [63:0] zext_ln54_1_fu_840_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_860_p1;
wire   [63:0] zext_ln54_14_fu_891_p1;
wire   [63:0] zext_ln54_3_fu_986_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1006_p1;
wire   [63:0] zext_ln54_5_fu_1104_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1124_p1;
wire   [63:0] zext_ln54_7_fu_1226_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_124;
wire   [63:0] min_p_17_fu_2066_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_128;
wire   [7:0] min_s_11_fu_2076_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_132;
wire   [5:0] add_ln53_7_fu_1600_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [9:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [9:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [9:0] transition_1_address1_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_2_ce1_local;
reg   [9:0] transition_2_address1_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
reg    transition_3_ce1_local;
reg   [9:0] transition_3_address1_local;
reg    llike_2_ce1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce1_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg   [63:0] grp_fu_561_p0;
reg   [63:0] grp_fu_561_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_565_p0;
reg   [63:0] grp_fu_565_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [3:0] lshr_ln8_s_fu_610_p4;
wire   [11:0] tmp_s_fu_620_p3;
wire   [9:0] shl_ln2_fu_635_p3;
wire   [9:0] add_ln54_fu_643_p2;
wire   [3:0] lshr_ln8_1_fu_675_p4;
wire   [11:0] tmp_13_fu_685_p3;
wire   [3:0] add_ln8_fu_698_p2;
wire   [11:0] tmp_18_fu_704_p3;
wire   [3:0] lshr_ln8_2_fu_723_p4;
wire   [11:0] tmp_23_fu_733_p3;
wire   [3:0] lshr_ln8_3_fu_752_p4;
wire   [11:0] tmp_28_fu_762_p3;
wire   [6:0] zext_ln20_fu_606_p1;
wire   [63:0] tmp_1_fu_805_p2;
wire   [63:0] tmp_1_fu_805_p4;
wire   [63:0] tmp_1_fu_805_p6;
wire   [63:0] tmp_1_fu_805_p8;
wire   [63:0] tmp_1_fu_805_p9;
wire   [9:0] shl_ln54_1_fu_828_p3;
wire   [9:0] add_ln54_1_fu_835_p2;
wire   [9:0] shl_ln54_2_fu_848_p3;
wire   [9:0] add_ln54_2_fu_855_p2;
wire   [4:0] lshr_ln9_2_fu_873_p4;
wire   [11:0] zext_ln54_13_fu_882_p1;
wire   [11:0] add_ln54_8_fu_886_p2;
wire   [63:0] tmp_5_fu_912_p2;
wire   [63:0] tmp_5_fu_912_p4;
wire   [63:0] tmp_5_fu_912_p6;
wire   [63:0] tmp_5_fu_912_p8;
wire   [63:0] tmp_5_fu_912_p9;
wire   [63:0] tmp_9_fu_951_p2;
wire   [63:0] tmp_9_fu_951_p4;
wire   [63:0] tmp_9_fu_951_p6;
wire   [63:0] tmp_9_fu_951_p8;
wire   [63:0] tmp_9_fu_951_p9;
wire   [9:0] shl_ln54_3_fu_974_p3;
wire   [9:0] add_ln54_3_fu_981_p2;
wire   [9:0] shl_ln54_4_fu_994_p3;
wire   [9:0] add_ln54_4_fu_1001_p2;
wire   [63:0] tmp_14_fu_1030_p2;
wire   [63:0] tmp_14_fu_1030_p4;
wire   [63:0] tmp_14_fu_1030_p6;
wire   [63:0] tmp_14_fu_1030_p8;
wire   [63:0] tmp_14_fu_1030_p9;
wire   [63:0] tmp_19_fu_1069_p2;
wire   [63:0] tmp_19_fu_1069_p4;
wire   [63:0] tmp_19_fu_1069_p6;
wire   [63:0] tmp_19_fu_1069_p8;
wire   [63:0] tmp_19_fu_1069_p9;
wire   [9:0] shl_ln54_5_fu_1092_p3;
wire   [9:0] add_ln54_5_fu_1099_p2;
wire   [9:0] shl_ln54_6_fu_1112_p3;
wire   [9:0] add_ln54_6_fu_1119_p2;
wire   [63:0] tmp_24_fu_1148_p2;
wire   [63:0] tmp_24_fu_1148_p4;
wire   [63:0] tmp_24_fu_1148_p6;
wire   [63:0] tmp_24_fu_1148_p8;
wire   [63:0] tmp_24_fu_1148_p9;
wire   [63:0] tmp_29_fu_1187_p2;
wire   [63:0] tmp_29_fu_1187_p4;
wire   [63:0] tmp_29_fu_1187_p6;
wire   [63:0] tmp_29_fu_1187_p8;
wire   [63:0] tmp_29_fu_1187_p9;
wire   [9:0] shl_ln54_7_fu_1213_p3;
wire   [9:0] add_ln54_7_fu_1221_p2;
wire   [63:0] tmp_34_fu_1250_p2;
wire   [63:0] tmp_34_fu_1250_p4;
wire   [63:0] tmp_34_fu_1250_p6;
wire   [63:0] tmp_34_fu_1250_p8;
wire   [63:0] tmp_34_fu_1250_p9;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_1277_p1;
wire   [63:0] bitcast_ln55_1_fu_1295_p1;
wire   [10:0] tmp_2_fu_1281_p4;
wire   [51:0] trunc_ln55_fu_1291_p1;
wire   [0:0] icmp_ln55_1_fu_1318_p2;
wire   [0:0] icmp_ln55_fu_1312_p2;
wire   [10:0] tmp_3_fu_1298_p4;
wire   [51:0] trunc_ln55_1_fu_1308_p1;
wire   [0:0] icmp_ln55_3_fu_1336_p2;
wire   [0:0] icmp_ln55_2_fu_1330_p2;
wire   [0:0] or_ln55_fu_1324_p2;
wire   [0:0] and_ln55_fu_1348_p2;
wire   [0:0] or_ln55_1_fu_1342_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_1367_p1;
wire   [63:0] bitcast_ln55_3_fu_1385_p1;
wire   [10:0] tmp_6_fu_1371_p4;
wire   [51:0] trunc_ln55_2_fu_1381_p1;
wire   [0:0] icmp_ln55_5_fu_1408_p2;
wire   [0:0] icmp_ln55_4_fu_1402_p2;
wire   [10:0] tmp_7_fu_1388_p4;
wire   [51:0] trunc_ln55_3_fu_1398_p1;
wire   [0:0] icmp_ln55_7_fu_1426_p2;
wire   [0:0] icmp_ln55_6_fu_1420_p2;
wire   [0:0] or_ln55_3_fu_1432_p2;
wire   [0:0] or_ln55_2_fu_1414_p2;
wire   [0:0] and_ln55_2_fu_1438_p2;
wire   [7:0] zext_ln55_fu_1453_p1;
wire   [7:0] zext_ln55_1_fu_1470_p1;
wire   [7:0] min_s_4_fu_1456_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_1480_p1;
wire   [63:0] bitcast_ln55_5_fu_1498_p1;
wire   [10:0] tmp_10_fu_1484_p4;
wire   [51:0] trunc_ln55_4_fu_1494_p1;
wire   [0:0] icmp_ln55_9_fu_1521_p2;
wire   [0:0] icmp_ln55_8_fu_1515_p2;
wire   [10:0] tmp_11_fu_1501_p4;
wire   [51:0] trunc_ln55_5_fu_1511_p1;
wire   [0:0] icmp_ln55_11_fu_1539_p2;
wire   [0:0] icmp_ln55_10_fu_1533_p2;
wire   [0:0] or_ln55_5_fu_1545_p2;
wire   [0:0] or_ln55_4_fu_1527_p2;
wire   [0:0] and_ln55_4_fu_1551_p2;
wire   [63:0] bitcast_ln55_7_fu_1570_p1;
wire   [10:0] tmp_16_fu_1574_p4;
wire   [51:0] trunc_ln55_7_fu_1584_p1;
wire   [63:0] bitcast_ln55_6_fu_1610_p1;
wire   [10:0] tmp_15_fu_1614_p4;
wire   [51:0] trunc_ln55_6_fu_1624_p1;
wire   [0:0] icmp_ln55_13_fu_1634_p2;
wire   [0:0] icmp_ln55_12_fu_1628_p2;
wire   [0:0] or_ln55_7_fu_1646_p2;
wire   [0:0] or_ln55_6_fu_1640_p2;
wire   [0:0] and_ln55_6_fu_1650_p2;
wire   [7:0] zext_ln55_2_fu_1662_p1;
wire   [7:0] zext_ln55_3_fu_1678_p1;
wire   [7:0] min_s_6_fu_1665_p3;
wire   [63:0] bitcast_ln55_8_fu_1688_p1;
wire   [63:0] bitcast_ln55_9_fu_1705_p1;
wire   [10:0] tmp_20_fu_1691_p4;
wire   [51:0] trunc_ln55_8_fu_1701_p1;
wire   [0:0] icmp_ln55_17_fu_1728_p2;
wire   [0:0] icmp_ln55_16_fu_1722_p2;
wire   [10:0] tmp_21_fu_1708_p4;
wire   [51:0] trunc_ln55_9_fu_1718_p1;
wire   [0:0] icmp_ln55_19_fu_1746_p2;
wire   [0:0] icmp_ln55_18_fu_1740_p2;
wire   [0:0] or_ln55_9_fu_1752_p2;
wire   [0:0] or_ln55_8_fu_1734_p2;
wire   [0:0] and_ln55_8_fu_1758_p2;
wire   [63:0] bitcast_ln55_10_fu_1776_p1;
wire   [63:0] bitcast_ln55_11_fu_1794_p1;
wire   [10:0] tmp_25_fu_1780_p4;
wire   [51:0] trunc_ln55_10_fu_1790_p1;
wire   [0:0] icmp_ln55_21_fu_1817_p2;
wire   [0:0] icmp_ln55_20_fu_1811_p2;
wire   [10:0] tmp_26_fu_1797_p4;
wire   [51:0] trunc_ln55_11_fu_1807_p1;
wire   [0:0] icmp_ln55_23_fu_1835_p2;
wire   [0:0] icmp_ln55_22_fu_1829_p2;
wire   [0:0] or_ln55_11_fu_1841_p2;
wire   [0:0] or_ln55_10_fu_1823_p2;
wire   [0:0] and_ln55_10_fu_1847_p2;
wire   [63:0] bitcast_ln55_12_fu_1866_p1;
wire   [63:0] bitcast_ln55_13_fu_1883_p1;
wire   [10:0] tmp_30_fu_1869_p4;
wire   [51:0] trunc_ln55_12_fu_1879_p1;
wire   [0:0] icmp_ln55_25_fu_1906_p2;
wire   [0:0] icmp_ln55_24_fu_1900_p2;
wire   [10:0] tmp_31_fu_1886_p4;
wire   [51:0] trunc_ln55_13_fu_1896_p1;
wire   [0:0] icmp_ln55_27_fu_1924_p2;
wire   [0:0] icmp_ln55_26_fu_1918_p2;
wire   [0:0] or_ln55_13_fu_1930_p2;
wire   [0:0] or_ln55_12_fu_1912_p2;
wire   [0:0] and_ln55_12_fu_1936_p2;
wire   [7:0] zext_ln55_4_fu_1948_p1;
wire   [7:0] zext_ln55_5_fu_1957_p1;
wire   [7:0] min_s_8_fu_1951_p3;
wire   [7:0] zext_ln55_6_fu_1967_p1;
wire   [7:0] min_s_9_fu_1960_p3;
wire   [63:0] bitcast_ln55_14_fu_1984_p1;
wire   [63:0] bitcast_ln55_15_fu_2002_p1;
wire   [10:0] tmp_35_fu_1988_p4;
wire   [51:0] trunc_ln55_14_fu_1998_p1;
wire   [0:0] icmp_ln55_29_fu_2025_p2;
wire   [0:0] icmp_ln55_28_fu_2019_p2;
wire   [10:0] tmp_36_fu_2005_p4;
wire   [51:0] trunc_ln55_15_fu_2015_p1;
wire   [0:0] icmp_ln55_31_fu_2043_p2;
wire   [0:0] icmp_ln55_30_fu_2037_p2;
wire   [0:0] or_ln55_15_fu_2049_p2;
wire   [0:0] or_ln55_14_fu_2031_p2;
wire   [0:0] and_ln55_14_fu_2055_p2;
wire   [0:0] and_ln55_15_fu_2061_p2;
wire   [7:0] zext_ln55_7_fu_2073_p1;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [16:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire   [1:0] tmp_1_fu_805_p1;
wire   [1:0] tmp_1_fu_805_p3;
wire  signed [1:0] tmp_1_fu_805_p5;
wire  signed [1:0] tmp_1_fu_805_p7;
wire   [1:0] tmp_5_fu_912_p1;
wire   [1:0] tmp_5_fu_912_p3;
wire  signed [1:0] tmp_5_fu_912_p5;
wire  signed [1:0] tmp_5_fu_912_p7;
wire   [1:0] tmp_9_fu_951_p1;
wire   [1:0] tmp_9_fu_951_p3;
wire  signed [1:0] tmp_9_fu_951_p5;
wire  signed [1:0] tmp_9_fu_951_p7;
wire   [1:0] tmp_14_fu_1030_p1;
wire   [1:0] tmp_14_fu_1030_p3;
wire  signed [1:0] tmp_14_fu_1030_p5;
wire  signed [1:0] tmp_14_fu_1030_p7;
wire   [1:0] tmp_19_fu_1069_p1;
wire   [1:0] tmp_19_fu_1069_p3;
wire  signed [1:0] tmp_19_fu_1069_p5;
wire  signed [1:0] tmp_19_fu_1069_p7;
wire   [1:0] tmp_24_fu_1148_p1;
wire   [1:0] tmp_24_fu_1148_p3;
wire  signed [1:0] tmp_24_fu_1148_p5;
wire  signed [1:0] tmp_24_fu_1148_p7;
wire   [1:0] tmp_29_fu_1187_p1;
wire   [1:0] tmp_29_fu_1187_p3;
wire  signed [1:0] tmp_29_fu_1187_p5;
wire  signed [1:0] tmp_29_fu_1187_p7;
wire   [1:0] tmp_34_fu_1250_p1;
wire   [1:0] tmp_34_fu_1250_p3;
wire  signed [1:0] tmp_34_fu_1250_p5;
wire  signed [1:0] tmp_34_fu_1250_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_124 = 64'd0;
#0 min_s_fu_128 = 8'd0;
#0 min_s_1_fu_132 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U79(.din0(tmp_1_fu_805_p2),.din1(tmp_1_fu_805_p4),.din2(tmp_1_fu_805_p6),.din3(tmp_1_fu_805_p8),.def(tmp_1_fu_805_p9),.sel(empty),.dout(tmp_1_fu_805_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U80(.din0(tmp_5_fu_912_p2),.din1(tmp_5_fu_912_p4),.din2(tmp_5_fu_912_p6),.din3(tmp_5_fu_912_p8),.def(tmp_5_fu_912_p9),.sel(empty),.dout(tmp_5_fu_912_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U81(.din0(tmp_9_fu_951_p2),.din1(tmp_9_fu_951_p4),.din2(tmp_9_fu_951_p6),.din3(tmp_9_fu_951_p8),.def(tmp_9_fu_951_p9),.sel(empty),.dout(tmp_9_fu_951_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U82(.din0(tmp_14_fu_1030_p2),.din1(tmp_14_fu_1030_p4),.din2(tmp_14_fu_1030_p6),.din3(tmp_14_fu_1030_p8),.def(tmp_14_fu_1030_p9),.sel(empty),.dout(tmp_14_fu_1030_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U83(.din0(tmp_19_fu_1069_p2),.din1(tmp_19_fu_1069_p4),.din2(tmp_19_fu_1069_p6),.din3(tmp_19_fu_1069_p8),.def(tmp_19_fu_1069_p9),.sel(empty),.dout(tmp_19_fu_1069_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U84(.din0(tmp_24_fu_1148_p2),.din1(tmp_24_fu_1148_p4),.din2(tmp_24_fu_1148_p6),.din3(tmp_24_fu_1148_p8),.def(tmp_24_fu_1148_p9),.sel(empty),.dout(tmp_24_fu_1148_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U85(.din0(tmp_29_fu_1187_p2),.din1(tmp_29_fu_1187_p4),.din2(tmp_29_fu_1187_p6),.din3(tmp_29_fu_1187_p8),.def(tmp_29_fu_1187_p9),.sel(empty),.dout(tmp_29_fu_1187_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U86(.din0(tmp_34_fu_1250_p2),.din1(tmp_34_fu_1250_p4),.din2(tmp_34_fu_1250_p6),.din3(tmp_34_fu_1250_p8),.def(tmp_34_fu_1250_p9),.sel(empty),.dout(tmp_34_fu_1250_p11));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage7) | ((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_124 <= min_p_20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_33_reg_2240_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_124 <= min_p_17_fu_2066_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_132 <= 6'd1;
    end else if (((tmp_33_reg_2240 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_132 <= add_ln53_7_fu_1600_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_128 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_33_reg_2240_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_128 <= min_s_11_fu_2076_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_2190 <= add_ln53_1_fu_663_p2;
        add_ln53_1_reg_2190_pp0_iter1_reg <= add_ln53_1_reg_2190;
        add_ln53_2_reg_2196 <= add_ln53_2_fu_669_p2;
        add_ln53_2_reg_2196_pp0_iter1_reg <= add_ln53_2_reg_2196;
        add_ln53_4_reg_2212 <= add_ln53_4_fu_717_p2;
        add_ln53_4_reg_2212_pp0_iter1_reg <= add_ln53_4_reg_2212;
        add_ln53_5_reg_2223 <= add_ln53_5_fu_746_p2;
        add_ln53_5_reg_2223_pp0_iter1_reg <= add_ln53_5_reg_2223;
        add_ln53_6_reg_2234 <= add_ln53_6_fu_775_p2;
        add_ln53_reg_2184 <= add_ln53_fu_657_p2;
        and_ln55_7_reg_2554 <= and_ln55_7_fu_1656_p2;
        s_reg_2142 <= ap_sig_allocacmp_s;
        tmp_33_reg_2240 <= add_ln53_6_fu_775_p2[32'd6];
        tmp_33_reg_2240_pp0_iter1_reg <= tmp_33_reg_2240;
        zext_ln52_2_cast_reg_2131[5 : 0] <= zext_ln52_2_cast_fu_584_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_3_reg_2309 <= add_ln53_3_fu_868_p2;
        add_ln53_3_reg_2309_pp0_iter1_reg <= add_ln53_3_reg_2309;
        min_p_9_reg_2560 <= min_p_9_fu_1671_p3;
        min_s_7_reg_2567 <= min_s_7_fu_1681_p3;
        tmp_1_reg_2249 <= tmp_1_fu_805_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_2585 <= and_ln55_11_fu_1853_p2;
        tmp_24_reg_2440 <= tmp_24_fu_1148_p11;
        tmp_29_reg_2445 <= tmp_29_fu_1187_p11;
        trunc_ln54_reg_2450 <= trunc_ln54_fu_1210_p1;
        trunc_ln54_reg_2450_pp0_iter1_reg <= trunc_ln54_reg_2450;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_2598 <= and_ln55_13_fu_1942_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_2487 <= and_ln55_1_fu_1354_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_2500 <= and_ln55_3_fu_1444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_2525 <= and_ln55_5_fu_1557_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_9_reg_2572 <= and_ln55_9_fu_1764_p2;
        tmp_5_reg_2335 <= tmp_5_fu_912_p11;
        tmp_9_reg_2340 <= tmp_9_fu_951_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_2544 <= icmp_ln55_14_fu_1588_p2;
        icmp_ln55_15_reg_2549 <= icmp_ln55_15_fu_1594_p2;
        min_p_7_reg_2538 <= min_p_7_fu_1563_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_2315 <= llike_1_q0;
        llike_1_load_reg_2244 <= llike_1_q1;
        llike_2_load_1_reg_2320 <= llike_2_q0;
        llike_2_load_reg_2254 <= llike_2_q1;
        llike_3_load_1_reg_2325 <= llike_3_q0;
        llike_3_load_reg_2279 <= llike_3_q1;
        llike_load_reg_2304 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_1_reg_2385 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_2578 <= min_p_11_fu_1770_p3;
        tmp_14_reg_2390 <= tmp_14_fu_1030_p11;
        tmp_19_reg_2395 <= tmp_19_fu_1069_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_2591 <= min_p_13_fu_1859_p3;
        tmp_34_reg_2475 <= tmp_34_fu_1250_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_2609 <= min_p_15_fu_1978_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_2480 <= min_p_fu_124;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_2493 <= min_p_3_fu_1360_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_2513 <= min_p_5_fu_1463_p3;
        min_s_5_reg_2520 <= min_s_5_fu_1473_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_2604 <= min_s_10_fu_1970_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_4_reg_2506 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_6_reg_2531 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_569 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_574 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_579 <= grp_fu_630_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_37_reg_2616 <= grp_fu_1374_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_33_reg_2240 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_33_reg_2240_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_132;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_561_p0 = llike_load_1_reg_2385;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_561_p0 = llike_3_load_1_reg_2325;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_561_p0 = llike_2_load_1_reg_2320;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_561_p0 = llike_1_load_1_reg_2315;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_561_p0 = llike_load_reg_2304;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_561_p0 = llike_3_load_reg_2279;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_561_p0 = llike_2_load_reg_2254;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_561_p0 = llike_1_load_reg_2244;
        end else begin
            grp_fu_561_p0 = 'bx;
        end
    end else begin
        grp_fu_561_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_561_p1 = tmp_34_reg_2475;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_561_p1 = tmp_29_reg_2445;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_561_p1 = tmp_24_reg_2440;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_561_p1 = tmp_19_reg_2395;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_561_p1 = tmp_14_reg_2390;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_561_p1 = tmp_9_reg_2340;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_561_p1 = tmp_5_reg_2335;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_561_p1 = tmp_1_reg_2249;
        end else begin
            grp_fu_561_p1 = 'bx;
        end
    end else begin
        grp_fu_561_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_565_p0 = p_6_reg_2531;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_565_p0 = p_4_reg_2506;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_565_p0 = reg_579;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_565_p0 = reg_574;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_565_p0 = reg_569;
    end else begin
        grp_fu_565_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_565_p1 = min_p_15_fu_1978_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_565_p1 = min_p_13_fu_1859_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_565_p1 = min_p_11_fu_1770_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_565_p1 = min_p_9_fu_1671_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_565_p1 = min_p_7_fu_1563_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_565_p1 = min_p_5_fu_1463_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_565_p1 = min_p_3_fu_1360_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_565_p1 = min_p_fu_124;
    end else begin
        grp_fu_565_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_2_ce1_local = 1'b1;
    end else begin
        llike_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce1_local = 1'b1;
    end else begin
        llike_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_14_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_9_fu_693_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_33_reg_2240_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1104_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_986_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_860_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_649_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln54_7_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1124_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_840_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln54_5_fu_1104_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_986_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_860_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_649_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln54_7_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1124_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_840_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address0_local = zext_ln54_5_fu_1104_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln54_3_fu_986_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_860_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_649_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_2_address1_local = zext_ln54_7_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln54_6_fu_1124_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_4_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_840_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address0_local = zext_ln54_5_fu_1104_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln54_3_fu_986_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_860_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_649_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_3_address1_local = zext_ln54_7_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln54_6_fu_1124_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_4_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_840_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_1_fu_663_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_669_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_868_p2 = (s_reg_2142 + 6'd4);
assign add_ln53_4_fu_717_p2 = (ap_sig_allocacmp_s + 6'd5);
assign add_ln53_5_fu_746_p2 = (ap_sig_allocacmp_s + 6'd6);
assign add_ln53_6_fu_775_p2 = (zext_ln20_fu_606_p1 + 7'd7);
assign add_ln53_7_fu_1600_p2 = (s_reg_2142 + 6'd8);
assign add_ln53_fu_657_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_835_p2 = (shl_ln54_1_fu_828_p3 + zext_ln52_2_cast_reg_2131);
assign add_ln54_2_fu_855_p2 = (shl_ln54_2_fu_848_p3 + zext_ln52_2_cast_reg_2131);
assign add_ln54_3_fu_981_p2 = (shl_ln54_3_fu_974_p3 + zext_ln52_2_cast_reg_2131);
assign add_ln54_4_fu_1001_p2 = (shl_ln54_4_fu_994_p3 + zext_ln52_2_cast_reg_2131);
assign add_ln54_5_fu_1099_p2 = (shl_ln54_5_fu_1092_p3 + zext_ln52_2_cast_reg_2131);
assign add_ln54_6_fu_1119_p2 = (shl_ln54_6_fu_1112_p3 + zext_ln52_2_cast_reg_2131);
assign add_ln54_7_fu_1221_p2 = (shl_ln54_7_fu_1213_p3 + zext_ln52_2_cast_reg_2131);
assign add_ln54_8_fu_886_p2 = (zext_ln52_3 + zext_ln54_13_fu_882_p1);
assign add_ln54_fu_643_p2 = (shl_ln2_fu_635_p3 + zext_ln52_2_cast_fu_584_p1);
assign add_ln8_fu_698_p2 = (lshr_ln8_s_fu_610_p4 + 4'd1);
assign and_ln55_10_fu_1847_p2 = (or_ln55_11_fu_1841_p2 & or_ln55_10_fu_1823_p2);
assign and_ln55_11_fu_1853_p2 = (grp_fu_1374_p_dout0 & and_ln55_10_fu_1847_p2);
assign and_ln55_12_fu_1936_p2 = (or_ln55_13_fu_1930_p2 & or_ln55_12_fu_1912_p2);
assign and_ln55_13_fu_1942_p2 = (grp_fu_1374_p_dout0 & and_ln55_12_fu_1936_p2);
assign and_ln55_14_fu_2055_p2 = (or_ln55_15_fu_2049_p2 & or_ln55_14_fu_2031_p2);
assign and_ln55_15_fu_2061_p2 = (tmp_37_reg_2616 & and_ln55_14_fu_2055_p2);
assign and_ln55_1_fu_1354_p2 = (or_ln55_1_fu_1342_p2 & and_ln55_fu_1348_p2);
assign and_ln55_2_fu_1438_p2 = (or_ln55_3_fu_1432_p2 & or_ln55_2_fu_1414_p2);
assign and_ln55_3_fu_1444_p2 = (grp_fu_1374_p_dout0 & and_ln55_2_fu_1438_p2);
assign and_ln55_4_fu_1551_p2 = (or_ln55_5_fu_1545_p2 & or_ln55_4_fu_1527_p2);
assign and_ln55_5_fu_1557_p2 = (grp_fu_1374_p_dout0 & and_ln55_4_fu_1551_p2);
assign and_ln55_6_fu_1650_p2 = (or_ln55_7_fu_1646_p2 & or_ln55_6_fu_1640_p2);
assign and_ln55_7_fu_1656_p2 = (grp_fu_1374_p_dout0 & and_ln55_6_fu_1650_p2);
assign and_ln55_8_fu_1758_p2 = (or_ln55_9_fu_1752_p2 & or_ln55_8_fu_1734_p2);
assign and_ln55_9_fu_1764_p2 = (grp_fu_1374_p_dout0 & and_ln55_8_fu_1758_p2);
assign and_ln55_fu_1348_p2 = (or_ln55_fu_1324_p2 & grp_fu_1374_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign bitcast_ln55_10_fu_1776_p1 = reg_574;
assign bitcast_ln55_11_fu_1794_p1 = min_p_11_reg_2578;
assign bitcast_ln55_12_fu_1866_p1 = p_6_reg_2531;
assign bitcast_ln55_13_fu_1883_p1 = min_p_13_reg_2591;
assign bitcast_ln55_14_fu_1984_p1 = reg_579;
assign bitcast_ln55_15_fu_2002_p1 = min_p_15_reg_2609;
assign bitcast_ln55_1_fu_1295_p1 = min_p_1_reg_2480;
assign bitcast_ln55_2_fu_1367_p1 = reg_574;
assign bitcast_ln55_3_fu_1385_p1 = min_p_3_reg_2493;
assign bitcast_ln55_4_fu_1480_p1 = reg_579;
assign bitcast_ln55_5_fu_1498_p1 = min_p_5_reg_2513;
assign bitcast_ln55_6_fu_1610_p1 = reg_569;
assign bitcast_ln55_7_fu_1570_p1 = min_p_7_fu_1563_p3;
assign bitcast_ln55_8_fu_1688_p1 = p_4_reg_2506;
assign bitcast_ln55_9_fu_1705_p1 = min_p_9_reg_2560;
assign bitcast_ln55_fu_1277_p1 = reg_569;
assign grp_fu_1374_p_ce = 1'b1;
assign grp_fu_1374_p_din0 = grp_fu_565_p0;
assign grp_fu_1374_p_din1 = grp_fu_565_p1;
assign grp_fu_1374_p_opcode = 5'd4;
assign grp_fu_630_p_ce = 1'b1;
assign grp_fu_630_p_din0 = grp_fu_561_p0;
assign grp_fu_630_p_din1 = grp_fu_561_p1;
assign grp_fu_630_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1533_p2 = ((tmp_11_fu_1501_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1539_p2 = ((trunc_ln55_5_fu_1511_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1628_p2 = ((tmp_15_fu_1614_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1634_p2 = ((trunc_ln55_6_fu_1624_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1588_p2 = ((tmp_16_fu_1574_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1594_p2 = ((trunc_ln55_7_fu_1584_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1722_p2 = ((tmp_20_fu_1691_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1728_p2 = ((trunc_ln55_8_fu_1701_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1740_p2 = ((tmp_21_fu_1708_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1746_p2 = ((trunc_ln55_9_fu_1718_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1318_p2 = ((trunc_ln55_fu_1291_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1811_p2 = ((tmp_25_fu_1780_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1817_p2 = ((trunc_ln55_10_fu_1790_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1829_p2 = ((tmp_26_fu_1797_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1835_p2 = ((trunc_ln55_11_fu_1807_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1900_p2 = ((tmp_30_fu_1869_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1906_p2 = ((trunc_ln55_12_fu_1879_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1918_p2 = ((tmp_31_fu_1886_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1924_p2 = ((trunc_ln55_13_fu_1896_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2019_p2 = ((tmp_35_fu_1988_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2025_p2 = ((trunc_ln55_14_fu_1998_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1330_p2 = ((tmp_3_fu_1298_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2037_p2 = ((tmp_36_fu_2005_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2043_p2 = ((trunc_ln55_15_fu_2015_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1336_p2 = ((trunc_ln55_1_fu_1308_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1402_p2 = ((tmp_6_fu_1371_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1408_p2 = ((trunc_ln55_2_fu_1381_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1420_p2 = ((tmp_7_fu_1388_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1426_p2 = ((trunc_ln55_3_fu_1398_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1515_p2 = ((tmp_10_fu_1484_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1521_p2 = ((trunc_ln55_4_fu_1494_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1312_p2 = ((tmp_2_fu_1281_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_10_fu_712_p1;
assign llike_1_address1 = zext_ln54_8_fu_628_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = zext_ln54_11_fu_741_p1;
assign llike_2_address1 = zext_ln54_8_fu_628_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = zext_ln54_12_fu_770_p1;
assign llike_3_address1 = zext_ln54_8_fu_628_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_675_p4 = {{add_ln53_2_fu_669_p2[5:2]}};
assign lshr_ln8_2_fu_723_p4 = {{add_ln53_4_fu_717_p2[5:2]}};
assign lshr_ln8_3_fu_752_p4 = {{add_ln53_5_fu_746_p2[5:2]}};
assign lshr_ln8_s_fu_610_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln9_2_fu_873_p4 = {{add_ln53_6_reg_2234[6:2]}};
assign min_p_11_fu_1770_p3 = ((and_ln55_9_reg_2572[0:0] == 1'b1) ? p_4_reg_2506 : min_p_9_reg_2560);
assign min_p_13_fu_1859_p3 = ((and_ln55_11_reg_2585[0:0] == 1'b1) ? reg_574 : min_p_11_reg_2578);
assign min_p_15_fu_1978_p3 = ((and_ln55_13_reg_2598[0:0] == 1'b1) ? p_6_reg_2531 : min_p_13_reg_2591);
assign min_p_17_fu_2066_p3 = ((and_ln55_15_fu_2061_p2[0:0] == 1'b1) ? reg_579 : min_p_15_reg_2609);
assign min_p_3_fu_1360_p3 = ((and_ln55_1_reg_2487[0:0] == 1'b1) ? reg_569 : min_p_1_reg_2480);
assign min_p_5_fu_1463_p3 = ((and_ln55_3_reg_2500[0:0] == 1'b1) ? reg_574 : min_p_3_reg_2493);
assign min_p_7_fu_1563_p3 = ((and_ln55_5_reg_2525[0:0] == 1'b1) ? reg_579 : min_p_5_reg_2513);
assign min_p_9_fu_1671_p3 = ((and_ln55_7_reg_2554[0:0] == 1'b1) ? reg_569 : min_p_7_reg_2538);
assign min_s_10_fu_1970_p3 = ((and_ln55_13_reg_2598[0:0] == 1'b1) ? zext_ln55_6_fu_1967_p1 : min_s_9_fu_1960_p3);
assign min_s_11_fu_2076_p3 = ((and_ln55_15_fu_2061_p2[0:0] == 1'b1) ? zext_ln55_7_fu_2073_p1 : min_s_10_reg_2604);
assign min_s_18_out = ((and_ln55_13_reg_2598[0:0] == 1'b1) ? zext_ln55_6_fu_1967_p1 : min_s_9_fu_1960_p3);
assign min_s_4_fu_1456_p3 = ((and_ln55_1_reg_2487[0:0] == 1'b1) ? zext_ln55_fu_1453_p1 : min_s_fu_128);
assign min_s_5_fu_1473_p3 = ((and_ln55_3_reg_2500[0:0] == 1'b1) ? zext_ln55_1_fu_1470_p1 : min_s_4_fu_1456_p3);
assign min_s_6_fu_1665_p3 = ((and_ln55_5_reg_2525[0:0] == 1'b1) ? zext_ln55_2_fu_1662_p1 : min_s_5_reg_2520);
assign min_s_7_fu_1681_p3 = ((and_ln55_7_reg_2554[0:0] == 1'b1) ? zext_ln55_3_fu_1678_p1 : min_s_6_fu_1665_p3);
assign min_s_8_fu_1951_p3 = ((and_ln55_9_reg_2572[0:0] == 1'b1) ? zext_ln55_4_fu_1948_p1 : min_s_7_reg_2567);
assign min_s_9_fu_1960_p3 = ((and_ln55_11_reg_2585[0:0] == 1'b1) ? zext_ln55_5_fu_1957_p1 : min_s_8_fu_1951_p3);
assign or_ln55_10_fu_1823_p2 = (icmp_ln55_21_fu_1817_p2 | icmp_ln55_20_fu_1811_p2);
assign or_ln55_11_fu_1841_p2 = (icmp_ln55_23_fu_1835_p2 | icmp_ln55_22_fu_1829_p2);
assign or_ln55_12_fu_1912_p2 = (icmp_ln55_25_fu_1906_p2 | icmp_ln55_24_fu_1900_p2);
assign or_ln55_13_fu_1930_p2 = (icmp_ln55_27_fu_1924_p2 | icmp_ln55_26_fu_1918_p2);
assign or_ln55_14_fu_2031_p2 = (icmp_ln55_29_fu_2025_p2 | icmp_ln55_28_fu_2019_p2);
assign or_ln55_15_fu_2049_p2 = (icmp_ln55_31_fu_2043_p2 | icmp_ln55_30_fu_2037_p2);
assign or_ln55_1_fu_1342_p2 = (icmp_ln55_3_fu_1336_p2 | icmp_ln55_2_fu_1330_p2);
assign or_ln55_2_fu_1414_p2 = (icmp_ln55_5_fu_1408_p2 | icmp_ln55_4_fu_1402_p2);
assign or_ln55_3_fu_1432_p2 = (icmp_ln55_7_fu_1426_p2 | icmp_ln55_6_fu_1420_p2);
assign or_ln55_4_fu_1527_p2 = (icmp_ln55_9_fu_1521_p2 | icmp_ln55_8_fu_1515_p2);
assign or_ln55_5_fu_1545_p2 = (icmp_ln55_11_fu_1539_p2 | icmp_ln55_10_fu_1533_p2);
assign or_ln55_6_fu_1640_p2 = (icmp_ln55_13_fu_1634_p2 | icmp_ln55_12_fu_1628_p2);
assign or_ln55_7_fu_1646_p2 = (icmp_ln55_15_reg_2549 | icmp_ln55_14_reg_2544);
assign or_ln55_8_fu_1734_p2 = (icmp_ln55_17_fu_1728_p2 | icmp_ln55_16_fu_1722_p2);
assign or_ln55_9_fu_1752_p2 = (icmp_ln55_19_fu_1746_p2 | icmp_ln55_18_fu_1740_p2);
assign or_ln55_fu_1324_p2 = (icmp_ln55_fu_1312_p2 | icmp_ln55_1_fu_1318_p2);
assign shl_ln2_fu_635_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_1_fu_828_p3 = {{add_ln53_reg_2184}, {4'd0}};
assign shl_ln54_2_fu_848_p3 = {{add_ln53_1_reg_2190}, {4'd0}};
assign shl_ln54_3_fu_974_p3 = {{add_ln53_2_reg_2196}, {4'd0}};
assign shl_ln54_4_fu_994_p3 = {{add_ln53_3_reg_2309}, {4'd0}};
assign shl_ln54_5_fu_1092_p3 = {{add_ln53_4_reg_2212}, {4'd0}};
assign shl_ln54_6_fu_1112_p3 = {{add_ln53_5_reg_2223}, {4'd0}};
assign shl_ln54_7_fu_1213_p3 = {{trunc_ln54_fu_1210_p1}, {4'd0}};
assign tmp_10_fu_1484_p4 = {{bitcast_ln55_4_fu_1480_p1[62:52]}};
assign tmp_11_fu_1501_p4 = {{bitcast_ln55_5_fu_1498_p1[62:52]}};
assign tmp_13_fu_685_p3 = {{t_1}, {lshr_ln8_1_fu_675_p4}};
assign tmp_14_fu_1030_p2 = transition_0_q0;
assign tmp_14_fu_1030_p4 = transition_1_q0;
assign tmp_14_fu_1030_p6 = transition_2_q0;
assign tmp_14_fu_1030_p8 = transition_3_q0;
assign tmp_14_fu_1030_p9 = 'bx;
assign tmp_15_fu_1614_p4 = {{bitcast_ln55_6_fu_1610_p1[62:52]}};
assign tmp_16_fu_1574_p4 = {{bitcast_ln55_7_fu_1570_p1[62:52]}};
assign tmp_18_fu_704_p3 = {{t_1}, {add_ln8_fu_698_p2}};
assign tmp_19_fu_1069_p2 = transition_0_q1;
assign tmp_19_fu_1069_p4 = transition_1_q1;
assign tmp_19_fu_1069_p6 = transition_2_q1;
assign tmp_19_fu_1069_p8 = transition_3_q1;
assign tmp_19_fu_1069_p9 = 'bx;
assign tmp_1_fu_805_p2 = transition_0_q0;
assign tmp_1_fu_805_p4 = transition_1_q0;
assign tmp_1_fu_805_p6 = transition_2_q0;
assign tmp_1_fu_805_p8 = transition_3_q0;
assign tmp_1_fu_805_p9 = 'bx;
assign tmp_20_fu_1691_p4 = {{bitcast_ln55_8_fu_1688_p1[62:52]}};
assign tmp_21_fu_1708_p4 = {{bitcast_ln55_9_fu_1705_p1[62:52]}};
assign tmp_23_fu_733_p3 = {{t_1}, {lshr_ln8_2_fu_723_p4}};
assign tmp_24_fu_1148_p2 = transition_0_q0;
assign tmp_24_fu_1148_p4 = transition_1_q0;
assign tmp_24_fu_1148_p6 = transition_2_q0;
assign tmp_24_fu_1148_p8 = transition_3_q0;
assign tmp_24_fu_1148_p9 = 'bx;
assign tmp_25_fu_1780_p4 = {{bitcast_ln55_10_fu_1776_p1[62:52]}};
assign tmp_26_fu_1797_p4 = {{bitcast_ln55_11_fu_1794_p1[62:52]}};
assign tmp_28_fu_762_p3 = {{t_1}, {lshr_ln8_3_fu_752_p4}};
assign tmp_29_fu_1187_p2 = transition_0_q1;
assign tmp_29_fu_1187_p4 = transition_1_q1;
assign tmp_29_fu_1187_p6 = transition_2_q1;
assign tmp_29_fu_1187_p8 = transition_3_q1;
assign tmp_29_fu_1187_p9 = 'bx;
assign tmp_2_fu_1281_p4 = {{bitcast_ln55_fu_1277_p1[62:52]}};
assign tmp_30_fu_1869_p4 = {{bitcast_ln55_12_fu_1866_p1[62:52]}};
assign tmp_31_fu_1886_p4 = {{bitcast_ln55_13_fu_1883_p1[62:52]}};
assign tmp_34_fu_1250_p2 = transition_0_q1;
assign tmp_34_fu_1250_p4 = transition_1_q1;
assign tmp_34_fu_1250_p6 = transition_2_q1;
assign tmp_34_fu_1250_p8 = transition_3_q1;
assign tmp_34_fu_1250_p9 = 'bx;
assign tmp_35_fu_1988_p4 = {{bitcast_ln55_14_fu_1984_p1[62:52]}};
assign tmp_36_fu_2005_p4 = {{bitcast_ln55_15_fu_2002_p1[62:52]}};
assign tmp_3_fu_1298_p4 = {{bitcast_ln55_1_fu_1295_p1[62:52]}};
assign tmp_5_fu_912_p2 = transition_0_q1;
assign tmp_5_fu_912_p4 = transition_1_q1;
assign tmp_5_fu_912_p6 = transition_2_q1;
assign tmp_5_fu_912_p8 = transition_3_q1;
assign tmp_5_fu_912_p9 = 'bx;
assign tmp_6_fu_1371_p4 = {{bitcast_ln55_2_fu_1367_p1[62:52]}};
assign tmp_7_fu_1388_p4 = {{bitcast_ln55_3_fu_1385_p1[62:52]}};
assign tmp_9_fu_951_p2 = transition_0_q0;
assign tmp_9_fu_951_p4 = transition_1_q0;
assign tmp_9_fu_951_p6 = transition_2_q0;
assign tmp_9_fu_951_p8 = transition_3_q0;
assign tmp_9_fu_951_p9 = 'bx;
assign tmp_s_fu_620_p3 = {{t_1}, {lshr_ln8_s_fu_610_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign transition_2_address0 = transition_2_address0_local;
assign transition_2_address1 = transition_2_address1_local;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_2_ce1 = transition_2_ce1_local;
assign transition_3_address0 = transition_3_address0_local;
assign transition_3_address1 = transition_3_address1_local;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_3_ce1 = transition_3_ce1_local;
assign trunc_ln54_fu_1210_p1 = add_ln53_6_reg_2234[5:0];
assign trunc_ln55_10_fu_1790_p1 = bitcast_ln55_10_fu_1776_p1[51:0];
assign trunc_ln55_11_fu_1807_p1 = bitcast_ln55_11_fu_1794_p1[51:0];
assign trunc_ln55_12_fu_1879_p1 = bitcast_ln55_12_fu_1866_p1[51:0];
assign trunc_ln55_13_fu_1896_p1 = bitcast_ln55_13_fu_1883_p1[51:0];
assign trunc_ln55_14_fu_1998_p1 = bitcast_ln55_14_fu_1984_p1[51:0];
assign trunc_ln55_15_fu_2015_p1 = bitcast_ln55_15_fu_2002_p1[51:0];
assign trunc_ln55_1_fu_1308_p1 = bitcast_ln55_1_fu_1295_p1[51:0];
assign trunc_ln55_2_fu_1381_p1 = bitcast_ln55_2_fu_1367_p1[51:0];
assign trunc_ln55_3_fu_1398_p1 = bitcast_ln55_3_fu_1385_p1[51:0];
assign trunc_ln55_4_fu_1494_p1 = bitcast_ln55_4_fu_1480_p1[51:0];
assign trunc_ln55_5_fu_1511_p1 = bitcast_ln55_5_fu_1498_p1[51:0];
assign trunc_ln55_6_fu_1624_p1 = bitcast_ln55_6_fu_1610_p1[51:0];
assign trunc_ln55_7_fu_1584_p1 = bitcast_ln55_7_fu_1570_p1[51:0];
assign trunc_ln55_8_fu_1701_p1 = bitcast_ln55_8_fu_1688_p1[51:0];
assign trunc_ln55_9_fu_1718_p1 = bitcast_ln55_9_fu_1705_p1[51:0];
assign trunc_ln55_fu_1291_p1 = bitcast_ln55_fu_1277_p1[51:0];
assign zext_ln20_fu_606_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_584_p1 = zext_ln52_2;
assign zext_ln54_10_fu_712_p1 = tmp_18_fu_704_p3;
assign zext_ln54_11_fu_741_p1 = tmp_23_fu_733_p3;
assign zext_ln54_12_fu_770_p1 = tmp_28_fu_762_p3;
assign zext_ln54_13_fu_882_p1 = lshr_ln9_2_fu_873_p4;
assign zext_ln54_14_fu_891_p1 = add_ln54_8_fu_886_p2;
assign zext_ln54_1_fu_840_p1 = add_ln54_1_fu_835_p2;
assign zext_ln54_2_fu_860_p1 = add_ln54_2_fu_855_p2;
assign zext_ln54_3_fu_986_p1 = add_ln54_3_fu_981_p2;
assign zext_ln54_4_fu_1006_p1 = add_ln54_4_fu_1001_p2;
assign zext_ln54_5_fu_1104_p1 = add_ln54_5_fu_1099_p2;
assign zext_ln54_6_fu_1124_p1 = add_ln54_6_fu_1119_p2;
assign zext_ln54_7_fu_1226_p1 = add_ln54_7_fu_1221_p2;
assign zext_ln54_8_fu_628_p1 = tmp_s_fu_620_p3;
assign zext_ln54_9_fu_693_p1 = tmp_13_fu_685_p3;
assign zext_ln54_fu_649_p1 = add_ln54_fu_643_p2;
assign zext_ln55_1_fu_1470_p1 = add_ln53_reg_2184;
assign zext_ln55_2_fu_1662_p1 = add_ln53_1_reg_2190_pp0_iter1_reg;
assign zext_ln55_3_fu_1678_p1 = add_ln53_2_reg_2196_pp0_iter1_reg;
assign zext_ln55_4_fu_1948_p1 = add_ln53_3_reg_2309_pp0_iter1_reg;
assign zext_ln55_5_fu_1957_p1 = add_ln53_4_reg_2212_pp0_iter1_reg;
assign zext_ln55_6_fu_1967_p1 = add_ln53_5_reg_2223_pp0_iter1_reg;
assign zext_ln55_7_fu_2073_p1 = trunc_ln54_reg_2450_pp0_iter1_reg;
assign zext_ln55_fu_1453_p1 = s_reg_2142;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_2131[9:6] <= 4'b0000;
end
endmodule 