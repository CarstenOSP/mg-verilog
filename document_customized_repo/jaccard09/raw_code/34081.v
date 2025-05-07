module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_20,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,zext_ln52_3,min_s_18_out,min_s_18_out_ap_vld,grp_fu_595_p_din0,grp_fu_595_p_din1,grp_fu_595_p_opcode,grp_fu_595_p_dout0,grp_fu_595_p_ce,grp_fu_1357_p_din0,grp_fu_1357_p_din1,grp_fu_1357_p_opcode,grp_fu_1357_p_dout0,grp_fu_1357_p_ce); 
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
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
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
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [12:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [12:0] zext_ln52_3;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_595_p_din0;
output  [63:0] grp_fu_595_p_din1;
output  [1:0] grp_fu_595_p_opcode;
input  [63:0] grp_fu_595_p_dout0;
output   grp_fu_595_p_ce;
output  [63:0] grp_fu_1357_p_din0;
output  [63:0] grp_fu_1357_p_din1;
output  [4:0] grp_fu_1357_p_opcode;
input  [0:0] grp_fu_1357_p_dout0;
output   grp_fu_1357_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_35_reg_2241;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_553;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_558;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_563;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln52_2_cast_fu_568_p1;
reg   [9:0] zext_ln52_2_cast_reg_2151;
reg   [5:0] s_reg_2162;
wire   [4:0] lshr_ln8_2_fu_594_p4;
reg   [4:0] lshr_ln8_2_reg_2171;
wire   [5:0] add_ln53_fu_639_p2;
reg   [5:0] add_ln53_reg_2202;
wire   [5:0] add_ln53_1_fu_668_p2;
reg   [5:0] add_ln53_1_reg_2213;
reg   [5:0] add_ln53_1_reg_2213_pp0_iter1_reg;
wire   [5:0] add_ln53_2_fu_693_p2;
reg   [5:0] add_ln53_2_reg_2224;
reg   [5:0] add_ln53_2_reg_2224_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_722_p2;
reg   [6:0] add_ln53_6_reg_2235;
reg   [0:0] tmp_35_reg_2241_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2245;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_752_p11;
reg   [63:0] tmp_1_reg_2250;
reg   [63:0] llike_load_reg_2255;
reg   [63:0] llike_1_load_1_reg_2280;
reg   [63:0] llike_load_1_reg_2305;
wire   [5:0] add_ln53_3_fu_815_p2;
reg   [5:0] add_ln53_3_reg_2310;
reg   [5:0] add_ln53_3_reg_2310_pp0_iter1_reg;
wire   [5:0] add_ln53_4_fu_837_p2;
reg   [5:0] add_ln53_4_reg_2321;
reg   [5:0] add_ln53_4_reg_2321_pp0_iter1_reg;
wire   [63:0] tmp_6_fu_920_p11;
reg   [63:0] tmp_6_reg_2342;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_11_fu_959_p11;
reg   [63:0] tmp_11_reg_2347;
reg   [63:0] llike_1_load_2_reg_2372;
reg   [63:0] llike_load_2_reg_2397;
wire   [5:0] add_ln53_5_fu_1022_p2;
reg   [5:0] add_ln53_5_reg_2402;
reg   [5:0] add_ln53_5_reg_2402_pp0_iter1_reg;
reg   [63:0] llike_1_load_3_reg_2408;
reg   [63:0] llike_load_3_reg_2413;
wire   [63:0] tmp_16_fu_1043_p11;
reg   [63:0] tmp_16_reg_2418;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_21_fu_1082_p11;
reg   [63:0] tmp_21_reg_2423;
wire   [63:0] tmp_26_fu_1161_p11;
reg   [63:0] tmp_26_reg_2468;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_31_fu_1200_p11;
reg   [63:0] tmp_31_reg_2473;
wire   [5:0] trunc_ln54_fu_1223_p1;
reg   [5:0] trunc_ln54_reg_2478;
reg   [5:0] trunc_ln54_reg_2478_pp0_iter1_reg;
wire   [63:0] tmp_36_fu_1263_p11;
reg   [63:0] tmp_36_reg_2503;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_2508;
wire   [0:0] and_ln55_1_fu_1367_p2;
reg   [0:0] and_ln55_1_reg_2515;
wire   [63:0] min_p_3_fu_1373_p3;
reg   [63:0] min_p_3_reg_2521;
wire   [0:0] and_ln55_3_fu_1457_p2;
reg   [0:0] and_ln55_3_reg_2528;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_4_reg_2534;
wire   [63:0] min_p_5_fu_1476_p3;
reg   [63:0] min_p_5_reg_2541;
wire   [7:0] min_s_5_fu_1486_p3;
reg   [7:0] min_s_5_reg_2548;
wire   [0:0] and_ln55_5_fu_1570_p2;
reg   [0:0] and_ln55_5_reg_2553;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_6_reg_2559;
wire   [63:0] min_p_7_fu_1576_p3;
reg   [63:0] min_p_7_reg_2566;
wire   [0:0] icmp_ln55_14_fu_1601_p2;
reg   [0:0] icmp_ln55_14_reg_2572;
wire   [0:0] icmp_ln55_15_fu_1607_p2;
reg   [0:0] icmp_ln55_15_reg_2577;
wire   [0:0] and_ln55_7_fu_1669_p2;
reg   [0:0] and_ln55_7_reg_2582;
wire   [63:0] min_p_9_fu_1684_p3;
reg   [63:0] min_p_9_reg_2588;
wire   [7:0] min_s_7_fu_1694_p3;
reg   [7:0] min_s_7_reg_2595;
wire   [0:0] and_ln55_9_fu_1777_p2;
reg   [0:0] and_ln55_9_reg_2600;
wire   [63:0] min_p_11_fu_1783_p3;
reg   [63:0] min_p_11_reg_2606;
wire   [0:0] and_ln55_11_fu_1866_p2;
reg   [0:0] and_ln55_11_reg_2613;
wire   [63:0] min_p_13_fu_1872_p3;
reg   [63:0] min_p_13_reg_2619;
wire   [0:0] and_ln55_13_fu_1955_p2;
reg   [0:0] and_ln55_13_reg_2626;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_10_fu_1983_p3;
reg   [7:0] min_s_10_reg_2632;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_15_fu_1991_p3;
reg   [63:0] min_p_15_reg_2637;
reg   [0:0] tmp_39_reg_2644;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_612_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_631_p1;
wire   [63:0] zext_ln54_9_fu_663_p1;
wire   [63:0] zext_ln54_10_fu_688_p1;
wire   [63:0] zext_ln54_11_fu_717_p1;
wire   [63:0] zext_ln54_1_fu_787_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_807_p1;
wire   [63:0] zext_ln54_12_fu_832_p1;
wire   [63:0] zext_ln54_13_fu_859_p1;
wire   [63:0] zext_ln54_14_fu_876_p1;
wire   [63:0] zext_ln54_16_fu_899_p1;
wire   [63:0] zext_ln54_3_fu_994_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1014_p1;
wire   [63:0] zext_ln54_5_fu_1117_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1137_p1;
wire   [63:0] zext_ln54_7_fu_1239_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_122;
wire   [63:0] min_p_17_fu_2079_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_126;
wire   [7:0] min_s_11_fu_2089_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_130;
wire   [5:0] add_ln53_7_fu_1613_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
reg   [12:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
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
reg    llike_ce1_local;
reg   [12:0] llike_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_545_p0;
reg   [63:0] grp_fu_545_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_549_p0;
reg   [63:0] grp_fu_549_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [12:0] tmp_s_fu_604_p3;
wire   [9:0] shl_ln2_fu_617_p3;
wire   [9:0] add_ln54_fu_625_p2;
wire   [4:0] lshr_ln8_3_fu_645_p4;
wire   [12:0] tmp_5_fu_655_p3;
wire   [4:0] add_ln8_fu_674_p2;
wire   [12:0] tmp_10_fu_680_p3;
wire   [4:0] lshr_ln8_s_fu_699_p4;
wire   [12:0] tmp_15_fu_709_p3;
wire   [6:0] zext_ln21_fu_590_p1;
wire   [63:0] tmp_1_fu_752_p2;
wire   [63:0] tmp_1_fu_752_p4;
wire   [63:0] tmp_1_fu_752_p6;
wire   [63:0] tmp_1_fu_752_p8;
wire   [63:0] tmp_1_fu_752_p9;
wire   [9:0] shl_ln54_1_fu_775_p3;
wire   [9:0] add_ln54_1_fu_782_p2;
wire   [9:0] shl_ln54_2_fu_795_p3;
wire   [9:0] add_ln54_2_fu_802_p2;
wire   [4:0] add_ln8_1_fu_820_p2;
wire   [12:0] tmp_20_fu_825_p3;
wire   [4:0] lshr_ln8_1_fu_842_p4;
wire   [12:0] tmp_25_fu_852_p3;
wire   [4:0] add_ln8_2_fu_864_p2;
wire   [12:0] tmp_30_fu_869_p3;
wire   [5:0] lshr_ln9_3_fu_881_p4;
wire   [12:0] zext_ln54_15_fu_890_p1;
wire   [12:0] add_ln54_8_fu_894_p2;
wire   [63:0] tmp_6_fu_920_p2;
wire   [63:0] tmp_6_fu_920_p4;
wire   [63:0] tmp_6_fu_920_p6;
wire   [63:0] tmp_6_fu_920_p8;
wire   [63:0] tmp_6_fu_920_p9;
wire   [63:0] tmp_11_fu_959_p2;
wire   [63:0] tmp_11_fu_959_p4;
wire   [63:0] tmp_11_fu_959_p6;
wire   [63:0] tmp_11_fu_959_p8;
wire   [63:0] tmp_11_fu_959_p9;
wire   [9:0] shl_ln54_3_fu_982_p3;
wire   [9:0] add_ln54_3_fu_989_p2;
wire   [9:0] shl_ln54_4_fu_1002_p3;
wire   [9:0] add_ln54_4_fu_1009_p2;
wire   [63:0] tmp_16_fu_1043_p2;
wire   [63:0] tmp_16_fu_1043_p4;
wire   [63:0] tmp_16_fu_1043_p6;
wire   [63:0] tmp_16_fu_1043_p8;
wire   [63:0] tmp_16_fu_1043_p9;
wire   [63:0] tmp_21_fu_1082_p2;
wire   [63:0] tmp_21_fu_1082_p4;
wire   [63:0] tmp_21_fu_1082_p6;
wire   [63:0] tmp_21_fu_1082_p8;
wire   [63:0] tmp_21_fu_1082_p9;
wire   [9:0] shl_ln54_5_fu_1105_p3;
wire   [9:0] add_ln54_5_fu_1112_p2;
wire   [9:0] shl_ln54_6_fu_1125_p3;
wire   [9:0] add_ln54_6_fu_1132_p2;
wire   [63:0] tmp_26_fu_1161_p2;
wire   [63:0] tmp_26_fu_1161_p4;
wire   [63:0] tmp_26_fu_1161_p6;
wire   [63:0] tmp_26_fu_1161_p8;
wire   [63:0] tmp_26_fu_1161_p9;
wire   [63:0] tmp_31_fu_1200_p2;
wire   [63:0] tmp_31_fu_1200_p4;
wire   [63:0] tmp_31_fu_1200_p6;
wire   [63:0] tmp_31_fu_1200_p8;
wire   [63:0] tmp_31_fu_1200_p9;
wire   [9:0] shl_ln54_7_fu_1226_p3;
wire   [9:0] add_ln54_7_fu_1234_p2;
wire   [63:0] tmp_36_fu_1263_p2;
wire   [63:0] tmp_36_fu_1263_p4;
wire   [63:0] tmp_36_fu_1263_p6;
wire   [63:0] tmp_36_fu_1263_p8;
wire   [63:0] tmp_36_fu_1263_p9;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_1290_p1;
wire   [63:0] bitcast_ln55_1_fu_1308_p1;
wire   [10:0] tmp_2_fu_1294_p4;
wire   [51:0] trunc_ln55_fu_1304_p1;
wire   [0:0] icmp_ln55_1_fu_1331_p2;
wire   [0:0] icmp_ln55_fu_1325_p2;
wire   [10:0] tmp_3_fu_1311_p4;
wire   [51:0] trunc_ln55_1_fu_1321_p1;
wire   [0:0] icmp_ln55_3_fu_1349_p2;
wire   [0:0] icmp_ln55_2_fu_1343_p2;
wire   [0:0] or_ln55_fu_1337_p2;
wire   [0:0] and_ln55_fu_1361_p2;
wire   [0:0] or_ln55_1_fu_1355_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_1380_p1;
wire   [63:0] bitcast_ln55_3_fu_1398_p1;
wire   [10:0] tmp_7_fu_1384_p4;
wire   [51:0] trunc_ln55_2_fu_1394_p1;
wire   [0:0] icmp_ln55_5_fu_1421_p2;
wire   [0:0] icmp_ln55_4_fu_1415_p2;
wire   [10:0] tmp_8_fu_1401_p4;
wire   [51:0] trunc_ln55_3_fu_1411_p1;
wire   [0:0] icmp_ln55_7_fu_1439_p2;
wire   [0:0] icmp_ln55_6_fu_1433_p2;
wire   [0:0] or_ln55_3_fu_1445_p2;
wire   [0:0] or_ln55_2_fu_1427_p2;
wire   [0:0] and_ln55_2_fu_1451_p2;
wire   [7:0] zext_ln55_fu_1466_p1;
wire   [7:0] zext_ln55_1_fu_1483_p1;
wire   [7:0] min_s_4_fu_1469_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_1493_p1;
wire   [63:0] bitcast_ln55_5_fu_1511_p1;
wire   [10:0] tmp_12_fu_1497_p4;
wire   [51:0] trunc_ln55_4_fu_1507_p1;
wire   [0:0] icmp_ln55_9_fu_1534_p2;
wire   [0:0] icmp_ln55_8_fu_1528_p2;
wire   [10:0] tmp_13_fu_1514_p4;
wire   [51:0] trunc_ln55_5_fu_1524_p1;
wire   [0:0] icmp_ln55_11_fu_1552_p2;
wire   [0:0] icmp_ln55_10_fu_1546_p2;
wire   [0:0] or_ln55_5_fu_1558_p2;
wire   [0:0] or_ln55_4_fu_1540_p2;
wire   [0:0] and_ln55_4_fu_1564_p2;
wire   [63:0] bitcast_ln55_7_fu_1583_p1;
wire   [10:0] tmp_18_fu_1587_p4;
wire   [51:0] trunc_ln55_7_fu_1597_p1;
wire   [63:0] bitcast_ln55_6_fu_1623_p1;
wire   [10:0] tmp_17_fu_1627_p4;
wire   [51:0] trunc_ln55_6_fu_1637_p1;
wire   [0:0] icmp_ln55_13_fu_1647_p2;
wire   [0:0] icmp_ln55_12_fu_1641_p2;
wire   [0:0] or_ln55_7_fu_1659_p2;
wire   [0:0] or_ln55_6_fu_1653_p2;
wire   [0:0] and_ln55_6_fu_1663_p2;
wire   [7:0] zext_ln55_2_fu_1675_p1;
wire   [7:0] zext_ln55_3_fu_1691_p1;
wire   [7:0] min_s_6_fu_1678_p3;
wire   [63:0] bitcast_ln55_8_fu_1701_p1;
wire   [63:0] bitcast_ln55_9_fu_1718_p1;
wire   [10:0] tmp_22_fu_1704_p4;
wire   [51:0] trunc_ln55_8_fu_1714_p1;
wire   [0:0] icmp_ln55_17_fu_1741_p2;
wire   [0:0] icmp_ln55_16_fu_1735_p2;
wire   [10:0] tmp_23_fu_1721_p4;
wire   [51:0] trunc_ln55_9_fu_1731_p1;
wire   [0:0] icmp_ln55_19_fu_1759_p2;
wire   [0:0] icmp_ln55_18_fu_1753_p2;
wire   [0:0] or_ln55_9_fu_1765_p2;
wire   [0:0] or_ln55_8_fu_1747_p2;
wire   [0:0] and_ln55_8_fu_1771_p2;
wire   [63:0] bitcast_ln55_10_fu_1789_p1;
wire   [63:0] bitcast_ln55_11_fu_1807_p1;
wire   [10:0] tmp_27_fu_1793_p4;
wire   [51:0] trunc_ln55_10_fu_1803_p1;
wire   [0:0] icmp_ln55_21_fu_1830_p2;
wire   [0:0] icmp_ln55_20_fu_1824_p2;
wire   [10:0] tmp_28_fu_1810_p4;
wire   [51:0] trunc_ln55_11_fu_1820_p1;
wire   [0:0] icmp_ln55_23_fu_1848_p2;
wire   [0:0] icmp_ln55_22_fu_1842_p2;
wire   [0:0] or_ln55_11_fu_1854_p2;
wire   [0:0] or_ln55_10_fu_1836_p2;
wire   [0:0] and_ln55_10_fu_1860_p2;
wire   [63:0] bitcast_ln55_12_fu_1879_p1;
wire   [63:0] bitcast_ln55_13_fu_1896_p1;
wire   [10:0] tmp_32_fu_1882_p4;
wire   [51:0] trunc_ln55_12_fu_1892_p1;
wire   [0:0] icmp_ln55_25_fu_1919_p2;
wire   [0:0] icmp_ln55_24_fu_1913_p2;
wire   [10:0] tmp_33_fu_1899_p4;
wire   [51:0] trunc_ln55_13_fu_1909_p1;
wire   [0:0] icmp_ln55_27_fu_1937_p2;
wire   [0:0] icmp_ln55_26_fu_1931_p2;
wire   [0:0] or_ln55_13_fu_1943_p2;
wire   [0:0] or_ln55_12_fu_1925_p2;
wire   [0:0] and_ln55_12_fu_1949_p2;
wire   [7:0] zext_ln55_4_fu_1961_p1;
wire   [7:0] zext_ln55_5_fu_1970_p1;
wire   [7:0] min_s_8_fu_1964_p3;
wire   [7:0] zext_ln55_6_fu_1980_p1;
wire   [7:0] min_s_9_fu_1973_p3;
wire   [63:0] bitcast_ln55_14_fu_1997_p1;
wire   [63:0] bitcast_ln55_15_fu_2015_p1;
wire   [10:0] tmp_37_fu_2001_p4;
wire   [51:0] trunc_ln55_14_fu_2011_p1;
wire   [0:0] icmp_ln55_29_fu_2038_p2;
wire   [0:0] icmp_ln55_28_fu_2032_p2;
wire   [10:0] tmp_38_fu_2018_p4;
wire   [51:0] trunc_ln55_15_fu_2028_p1;
wire   [0:0] icmp_ln55_31_fu_2056_p2;
wire   [0:0] icmp_ln55_30_fu_2050_p2;
wire   [0:0] or_ln55_15_fu_2062_p2;
wire   [0:0] or_ln55_14_fu_2044_p2;
wire   [0:0] and_ln55_14_fu_2068_p2;
wire   [0:0] and_ln55_15_fu_2074_p2;
wire   [7:0] zext_ln55_7_fu_2086_p1;
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
wire   [1:0] tmp_1_fu_752_p1;
wire   [1:0] tmp_1_fu_752_p3;
wire  signed [1:0] tmp_1_fu_752_p5;
wire  signed [1:0] tmp_1_fu_752_p7;
wire   [1:0] tmp_6_fu_920_p1;
wire   [1:0] tmp_6_fu_920_p3;
wire  signed [1:0] tmp_6_fu_920_p5;
wire  signed [1:0] tmp_6_fu_920_p7;
wire   [1:0] tmp_11_fu_959_p1;
wire   [1:0] tmp_11_fu_959_p3;
wire  signed [1:0] tmp_11_fu_959_p5;
wire  signed [1:0] tmp_11_fu_959_p7;
wire   [1:0] tmp_16_fu_1043_p1;
wire   [1:0] tmp_16_fu_1043_p3;
wire  signed [1:0] tmp_16_fu_1043_p5;
wire  signed [1:0] tmp_16_fu_1043_p7;
wire   [1:0] tmp_21_fu_1082_p1;
wire   [1:0] tmp_21_fu_1082_p3;
wire  signed [1:0] tmp_21_fu_1082_p5;
wire  signed [1:0] tmp_21_fu_1082_p7;
wire   [1:0] tmp_26_fu_1161_p1;
wire   [1:0] tmp_26_fu_1161_p3;
wire  signed [1:0] tmp_26_fu_1161_p5;
wire  signed [1:0] tmp_26_fu_1161_p7;
wire   [1:0] tmp_31_fu_1200_p1;
wire   [1:0] tmp_31_fu_1200_p3;
wire  signed [1:0] tmp_31_fu_1200_p5;
wire  signed [1:0] tmp_31_fu_1200_p7;
wire   [1:0] tmp_36_fu_1263_p1;
wire   [1:0] tmp_36_fu_1263_p3;
wire  signed [1:0] tmp_36_fu_1263_p5;
wire  signed [1:0] tmp_36_fu_1263_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_122 = 64'd0;
#0 min_s_fu_126 = 8'd0;
#0 min_s_1_fu_130 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U73(.din0(tmp_1_fu_752_p2),.din1(tmp_1_fu_752_p4),.din2(tmp_1_fu_752_p6),.din3(tmp_1_fu_752_p8),.def(tmp_1_fu_752_p9),.sel(empty),.dout(tmp_1_fu_752_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U74(.din0(tmp_6_fu_920_p2),.din1(tmp_6_fu_920_p4),.din2(tmp_6_fu_920_p6),.din3(tmp_6_fu_920_p8),.def(tmp_6_fu_920_p9),.sel(empty),.dout(tmp_6_fu_920_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U75(.din0(tmp_11_fu_959_p2),.din1(tmp_11_fu_959_p4),.din2(tmp_11_fu_959_p6),.din3(tmp_11_fu_959_p8),.def(tmp_11_fu_959_p9),.sel(empty),.dout(tmp_11_fu_959_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U76(.din0(tmp_16_fu_1043_p2),.din1(tmp_16_fu_1043_p4),.din2(tmp_16_fu_1043_p6),.din3(tmp_16_fu_1043_p8),.def(tmp_16_fu_1043_p9),.sel(empty),.dout(tmp_16_fu_1043_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U77(.din0(tmp_21_fu_1082_p2),.din1(tmp_21_fu_1082_p4),.din2(tmp_21_fu_1082_p6),.din3(tmp_21_fu_1082_p8),.def(tmp_21_fu_1082_p9),.sel(empty),.dout(tmp_21_fu_1082_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U78(.din0(tmp_26_fu_1161_p2),.din1(tmp_26_fu_1161_p4),.din2(tmp_26_fu_1161_p6),.din3(tmp_26_fu_1161_p8),.def(tmp_26_fu_1161_p9),.sel(empty),.dout(tmp_26_fu_1161_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U79(.din0(tmp_31_fu_1200_p2),.din1(tmp_31_fu_1200_p4),.din2(tmp_31_fu_1200_p6),.din3(tmp_31_fu_1200_p8),.def(tmp_31_fu_1200_p9),.sel(empty),.dout(tmp_31_fu_1200_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U80(.din0(tmp_36_fu_1263_p2),.din1(tmp_36_fu_1263_p4),.din2(tmp_36_fu_1263_p6),.din3(tmp_36_fu_1263_p8),.def(tmp_36_fu_1263_p9),.sel(empty),.dout(tmp_36_fu_1263_p11));
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
        min_p_fu_122 <= min_p_20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_35_reg_2241_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_122 <= min_p_17_fu_2079_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_130 <= 6'd1;
    end else if (((tmp_35_reg_2241 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_130 <= add_ln53_7_fu_1613_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_126 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_35_reg_2241_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_126 <= min_s_11_fu_2089_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_2213 <= add_ln53_1_fu_668_p2;
        add_ln53_1_reg_2213_pp0_iter1_reg <= add_ln53_1_reg_2213;
        add_ln53_2_reg_2224 <= add_ln53_2_fu_693_p2;
        add_ln53_2_reg_2224_pp0_iter1_reg <= add_ln53_2_reg_2224;
        add_ln53_6_reg_2235 <= add_ln53_6_fu_722_p2;
        add_ln53_reg_2202 <= add_ln53_fu_639_p2;
        and_ln55_7_reg_2582 <= and_ln55_7_fu_1669_p2;
        lshr_ln8_2_reg_2171 <= {{ap_sig_allocacmp_s[5:1]}};
        s_reg_2162 <= ap_sig_allocacmp_s;
        tmp_35_reg_2241 <= add_ln53_6_fu_722_p2[32'd6];
        tmp_35_reg_2241_pp0_iter1_reg <= tmp_35_reg_2241;
        zext_ln52_2_cast_reg_2151[5 : 0] <= zext_ln52_2_cast_fu_568_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_3_reg_2310 <= add_ln53_3_fu_815_p2;
        add_ln53_3_reg_2310_pp0_iter1_reg <= add_ln53_3_reg_2310;
        add_ln53_4_reg_2321 <= add_ln53_4_fu_837_p2;
        add_ln53_4_reg_2321_pp0_iter1_reg <= add_ln53_4_reg_2321;
        min_p_9_reg_2588 <= min_p_9_fu_1684_p3;
        min_s_7_reg_2595 <= min_s_7_fu_1694_p3;
        tmp_1_reg_2250 <= tmp_1_fu_752_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_5_reg_2402 <= add_ln53_5_fu_1022_p2;
        add_ln53_5_reg_2402_pp0_iter1_reg <= add_ln53_5_reg_2402;
        and_ln55_9_reg_2600 <= and_ln55_9_fu_1777_p2;
        tmp_11_reg_2347 <= tmp_11_fu_959_p11;
        tmp_6_reg_2342 <= tmp_6_fu_920_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_2613 <= and_ln55_11_fu_1866_p2;
        tmp_26_reg_2468 <= tmp_26_fu_1161_p11;
        tmp_31_reg_2473 <= tmp_31_fu_1200_p11;
        trunc_ln54_reg_2478 <= trunc_ln54_fu_1223_p1;
        trunc_ln54_reg_2478_pp0_iter1_reg <= trunc_ln54_reg_2478;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_2626 <= and_ln55_13_fu_1955_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_2515 <= and_ln55_1_fu_1367_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_2528 <= and_ln55_3_fu_1457_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_2553 <= and_ln55_5_fu_1570_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_2572 <= icmp_ln55_14_fu_1601_p2;
        icmp_ln55_15_reg_2577 <= icmp_ln55_15_fu_1607_p2;
        min_p_7_reg_2566 <= min_p_7_fu_1576_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_2280 <= llike_1_q0;
        llike_1_load_reg_2245 <= llike_1_q1;
        llike_load_1_reg_2305 <= llike_q0;
        llike_load_reg_2255 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_2372 <= llike_1_q1;
        llike_1_load_3_reg_2408 <= llike_1_q0;
        llike_load_2_reg_2397 <= llike_q1;
        llike_load_3_reg_2413 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_2606 <= min_p_11_fu_1783_p3;
        tmp_16_reg_2418 <= tmp_16_fu_1043_p11;
        tmp_21_reg_2423 <= tmp_21_fu_1082_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_2619 <= min_p_13_fu_1872_p3;
        tmp_36_reg_2503 <= tmp_36_fu_1263_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_2637 <= min_p_15_fu_1991_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_2508 <= min_p_fu_122;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_2521 <= min_p_3_fu_1373_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_2541 <= min_p_5_fu_1476_p3;
        min_s_5_reg_2548 <= min_s_5_fu_1486_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_2632 <= min_s_10_fu_1983_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_4_reg_2534 <= grp_fu_595_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_6_reg_2559 <= grp_fu_595_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_553 <= grp_fu_595_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_558 <= grp_fu_595_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_563 <= grp_fu_595_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_39_reg_2644 <= grp_fu_1357_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_35_reg_2241 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_35_reg_2241_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_130;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_545_p0 = llike_load_3_reg_2413;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_545_p0 = llike_1_load_3_reg_2408;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_545_p0 = llike_load_2_reg_2397;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_545_p0 = llike_1_load_2_reg_2372;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_545_p0 = llike_load_1_reg_2305;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_545_p0 = llike_1_load_1_reg_2280;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_545_p0 = llike_load_reg_2255;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_545_p0 = llike_1_load_reg_2245;
        end else begin
            grp_fu_545_p0 = 'bx;
        end
    end else begin
        grp_fu_545_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_545_p1 = tmp_36_reg_2503;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_545_p1 = tmp_31_reg_2473;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_545_p1 = tmp_26_reg_2468;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_545_p1 = tmp_21_reg_2423;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_545_p1 = tmp_16_reg_2418;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_545_p1 = tmp_11_reg_2347;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_545_p1 = tmp_6_reg_2342;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_545_p1 = tmp_1_reg_2250;
        end else begin
            grp_fu_545_p1 = 'bx;
        end
    end else begin
        grp_fu_545_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_549_p0 = p_6_reg_2559;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_549_p0 = p_4_reg_2534;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_549_p0 = reg_563;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_549_p0 = reg_558;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_549_p0 = reg_553;
    end else begin
        grp_fu_549_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_549_p1 = min_p_15_fu_1991_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_549_p1 = min_p_13_fu_1872_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_549_p1 = min_p_11_fu_1783_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_549_p1 = min_p_9_fu_1684_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_549_p1 = min_p_7_fu_1576_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_549_p1 = min_p_5_fu_1476_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_549_p1 = min_p_3_fu_1373_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_549_p1 = min_p_fu_122;
    end else begin
        grp_fu_549_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_14_fu_876_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_10_fu_688_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address1_local = zext_ln54_12_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln54_8_fu_612_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_16_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_11_fu_717_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln54_13_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln54_9_fu_663_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_35_reg_2241_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_994_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_807_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_631_p1;
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
            transition_0_address1_local = zext_ln54_7_fu_1239_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1137_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1014_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_787_p1;
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
            transition_1_address0_local = zext_ln54_5_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_994_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_807_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_631_p1;
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
            transition_1_address1_local = zext_ln54_7_fu_1239_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1137_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1014_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_787_p1;
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
            transition_2_address0_local = zext_ln54_5_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln54_3_fu_994_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_807_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_631_p1;
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
            transition_2_address1_local = zext_ln54_7_fu_1239_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln54_6_fu_1137_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_4_fu_1014_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_787_p1;
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
            transition_3_address0_local = zext_ln54_5_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln54_3_fu_994_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_807_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_631_p1;
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
            transition_3_address1_local = zext_ln54_7_fu_1239_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln54_6_fu_1137_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_4_fu_1014_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_787_p1;
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
assign add_ln53_1_fu_668_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_693_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_815_p2 = (s_reg_2162 + 6'd4);
assign add_ln53_4_fu_837_p2 = (s_reg_2162 + 6'd5);
assign add_ln53_5_fu_1022_p2 = (s_reg_2162 + 6'd6);
assign add_ln53_6_fu_722_p2 = (zext_ln21_fu_590_p1 + 7'd7);
assign add_ln53_7_fu_1613_p2 = (s_reg_2162 + 6'd8);
assign add_ln53_fu_639_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_782_p2 = (shl_ln54_1_fu_775_p3 + zext_ln52_2_cast_reg_2151);
assign add_ln54_2_fu_802_p2 = (shl_ln54_2_fu_795_p3 + zext_ln52_2_cast_reg_2151);
assign add_ln54_3_fu_989_p2 = (shl_ln54_3_fu_982_p3 + zext_ln52_2_cast_reg_2151);
assign add_ln54_4_fu_1009_p2 = (shl_ln54_4_fu_1002_p3 + zext_ln52_2_cast_reg_2151);
assign add_ln54_5_fu_1112_p2 = (shl_ln54_5_fu_1105_p3 + zext_ln52_2_cast_reg_2151);
assign add_ln54_6_fu_1132_p2 = (shl_ln54_6_fu_1125_p3 + zext_ln52_2_cast_reg_2151);
assign add_ln54_7_fu_1234_p2 = (shl_ln54_7_fu_1226_p3 + zext_ln52_2_cast_reg_2151);
assign add_ln54_8_fu_894_p2 = (zext_ln52_3 + zext_ln54_15_fu_890_p1);
assign add_ln54_fu_625_p2 = (shl_ln2_fu_617_p3 + zext_ln52_2_cast_fu_568_p1);
assign add_ln8_1_fu_820_p2 = (lshr_ln8_2_reg_2171 + 5'd2);
assign add_ln8_2_fu_864_p2 = (lshr_ln8_2_reg_2171 + 5'd3);
assign add_ln8_fu_674_p2 = (lshr_ln8_2_fu_594_p4 + 5'd1);
assign and_ln55_10_fu_1860_p2 = (or_ln55_11_fu_1854_p2 & or_ln55_10_fu_1836_p2);
assign and_ln55_11_fu_1866_p2 = (grp_fu_1357_p_dout0 & and_ln55_10_fu_1860_p2);
assign and_ln55_12_fu_1949_p2 = (or_ln55_13_fu_1943_p2 & or_ln55_12_fu_1925_p2);
assign and_ln55_13_fu_1955_p2 = (grp_fu_1357_p_dout0 & and_ln55_12_fu_1949_p2);
assign and_ln55_14_fu_2068_p2 = (or_ln55_15_fu_2062_p2 & or_ln55_14_fu_2044_p2);
assign and_ln55_15_fu_2074_p2 = (tmp_39_reg_2644 & and_ln55_14_fu_2068_p2);
assign and_ln55_1_fu_1367_p2 = (or_ln55_1_fu_1355_p2 & and_ln55_fu_1361_p2);
assign and_ln55_2_fu_1451_p2 = (or_ln55_3_fu_1445_p2 & or_ln55_2_fu_1427_p2);
assign and_ln55_3_fu_1457_p2 = (grp_fu_1357_p_dout0 & and_ln55_2_fu_1451_p2);
assign and_ln55_4_fu_1564_p2 = (or_ln55_5_fu_1558_p2 & or_ln55_4_fu_1540_p2);
assign and_ln55_5_fu_1570_p2 = (grp_fu_1357_p_dout0 & and_ln55_4_fu_1564_p2);
assign and_ln55_6_fu_1663_p2 = (or_ln55_7_fu_1659_p2 & or_ln55_6_fu_1653_p2);
assign and_ln55_7_fu_1669_p2 = (grp_fu_1357_p_dout0 & and_ln55_6_fu_1663_p2);
assign and_ln55_8_fu_1771_p2 = (or_ln55_9_fu_1765_p2 & or_ln55_8_fu_1747_p2);
assign and_ln55_9_fu_1777_p2 = (grp_fu_1357_p_dout0 & and_ln55_8_fu_1771_p2);
assign and_ln55_fu_1361_p2 = (or_ln55_fu_1337_p2 & grp_fu_1357_p_dout0);
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
assign bitcast_ln55_10_fu_1789_p1 = reg_558;
assign bitcast_ln55_11_fu_1807_p1 = min_p_11_reg_2606;
assign bitcast_ln55_12_fu_1879_p1 = p_6_reg_2559;
assign bitcast_ln55_13_fu_1896_p1 = min_p_13_reg_2619;
assign bitcast_ln55_14_fu_1997_p1 = reg_563;
assign bitcast_ln55_15_fu_2015_p1 = min_p_15_reg_2637;
assign bitcast_ln55_1_fu_1308_p1 = min_p_1_reg_2508;
assign bitcast_ln55_2_fu_1380_p1 = reg_558;
assign bitcast_ln55_3_fu_1398_p1 = min_p_3_reg_2521;
assign bitcast_ln55_4_fu_1493_p1 = reg_563;
assign bitcast_ln55_5_fu_1511_p1 = min_p_5_reg_2541;
assign bitcast_ln55_6_fu_1623_p1 = reg_553;
assign bitcast_ln55_7_fu_1583_p1 = min_p_7_fu_1576_p3;
assign bitcast_ln55_8_fu_1701_p1 = p_4_reg_2534;
assign bitcast_ln55_9_fu_1718_p1 = min_p_9_reg_2588;
assign bitcast_ln55_fu_1290_p1 = reg_553;
assign grp_fu_1357_p_ce = 1'b1;
assign grp_fu_1357_p_din0 = grp_fu_549_p0;
assign grp_fu_1357_p_din1 = grp_fu_549_p1;
assign grp_fu_1357_p_opcode = 5'd4;
assign grp_fu_595_p_ce = 1'b1;
assign grp_fu_595_p_din0 = grp_fu_545_p0;
assign grp_fu_595_p_din1 = grp_fu_545_p1;
assign grp_fu_595_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1546_p2 = ((tmp_13_fu_1514_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1552_p2 = ((trunc_ln55_5_fu_1524_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1641_p2 = ((tmp_17_fu_1627_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1647_p2 = ((trunc_ln55_6_fu_1637_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1601_p2 = ((tmp_18_fu_1587_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1607_p2 = ((trunc_ln55_7_fu_1597_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1735_p2 = ((tmp_22_fu_1704_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1741_p2 = ((trunc_ln55_8_fu_1714_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1753_p2 = ((tmp_23_fu_1721_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1759_p2 = ((trunc_ln55_9_fu_1731_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1331_p2 = ((trunc_ln55_fu_1304_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1824_p2 = ((tmp_27_fu_1793_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1830_p2 = ((trunc_ln55_10_fu_1803_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1842_p2 = ((tmp_28_fu_1810_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1848_p2 = ((trunc_ln55_11_fu_1820_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1913_p2 = ((tmp_32_fu_1882_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1919_p2 = ((trunc_ln55_12_fu_1892_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1931_p2 = ((tmp_33_fu_1899_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1937_p2 = ((trunc_ln55_13_fu_1909_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2032_p2 = ((tmp_37_fu_2001_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2038_p2 = ((trunc_ln55_14_fu_2011_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1343_p2 = ((tmp_3_fu_1311_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2050_p2 = ((tmp_38_fu_2018_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2056_p2 = ((trunc_ln55_15_fu_2028_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1349_p2 = ((trunc_ln55_1_fu_1321_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1415_p2 = ((tmp_7_fu_1384_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1421_p2 = ((trunc_ln55_2_fu_1394_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1433_p2 = ((tmp_8_fu_1401_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1439_p2 = ((trunc_ln55_3_fu_1411_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1528_p2 = ((tmp_12_fu_1497_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1534_p2 = ((trunc_ln55_4_fu_1507_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1325_p2 = ((tmp_2_fu_1294_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln8_1_fu_842_p4 = {{add_ln53_4_fu_837_p2[5:1]}};
assign lshr_ln8_2_fu_594_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign lshr_ln8_3_fu_645_p4 = {{add_ln53_fu_639_p2[5:1]}};
assign lshr_ln8_s_fu_699_p4 = {{add_ln53_2_fu_693_p2[5:1]}};
assign lshr_ln9_3_fu_881_p4 = {{add_ln53_6_reg_2235[6:1]}};
assign min_p_11_fu_1783_p3 = ((and_ln55_9_reg_2600[0:0] == 1'b1) ? p_4_reg_2534 : min_p_9_reg_2588);
assign min_p_13_fu_1872_p3 = ((and_ln55_11_reg_2613[0:0] == 1'b1) ? reg_558 : min_p_11_reg_2606);
assign min_p_15_fu_1991_p3 = ((and_ln55_13_reg_2626[0:0] == 1'b1) ? p_6_reg_2559 : min_p_13_reg_2619);
assign min_p_17_fu_2079_p3 = ((and_ln55_15_fu_2074_p2[0:0] == 1'b1) ? reg_563 : min_p_15_reg_2637);
assign min_p_3_fu_1373_p3 = ((and_ln55_1_reg_2515[0:0] == 1'b1) ? reg_553 : min_p_1_reg_2508);
assign min_p_5_fu_1476_p3 = ((and_ln55_3_reg_2528[0:0] == 1'b1) ? reg_558 : min_p_3_reg_2521);
assign min_p_7_fu_1576_p3 = ((and_ln55_5_reg_2553[0:0] == 1'b1) ? reg_563 : min_p_5_reg_2541);
assign min_p_9_fu_1684_p3 = ((and_ln55_7_reg_2582[0:0] == 1'b1) ? reg_553 : min_p_7_reg_2566);
assign min_s_10_fu_1983_p3 = ((and_ln55_13_reg_2626[0:0] == 1'b1) ? zext_ln55_6_fu_1980_p1 : min_s_9_fu_1973_p3);
assign min_s_11_fu_2089_p3 = ((and_ln55_15_fu_2074_p2[0:0] == 1'b1) ? zext_ln55_7_fu_2086_p1 : min_s_10_reg_2632);
assign min_s_18_out = ((and_ln55_13_reg_2626[0:0] == 1'b1) ? zext_ln55_6_fu_1980_p1 : min_s_9_fu_1973_p3);
assign min_s_4_fu_1469_p3 = ((and_ln55_1_reg_2515[0:0] == 1'b1) ? zext_ln55_fu_1466_p1 : min_s_fu_126);
assign min_s_5_fu_1486_p3 = ((and_ln55_3_reg_2528[0:0] == 1'b1) ? zext_ln55_1_fu_1483_p1 : min_s_4_fu_1469_p3);
assign min_s_6_fu_1678_p3 = ((and_ln55_5_reg_2553[0:0] == 1'b1) ? zext_ln55_2_fu_1675_p1 : min_s_5_reg_2548);
assign min_s_7_fu_1694_p3 = ((and_ln55_7_reg_2582[0:0] == 1'b1) ? zext_ln55_3_fu_1691_p1 : min_s_6_fu_1678_p3);
assign min_s_8_fu_1964_p3 = ((and_ln55_9_reg_2600[0:0] == 1'b1) ? zext_ln55_4_fu_1961_p1 : min_s_7_reg_2595);
assign min_s_9_fu_1973_p3 = ((and_ln55_11_reg_2613[0:0] == 1'b1) ? zext_ln55_5_fu_1970_p1 : min_s_8_fu_1964_p3);
assign or_ln55_10_fu_1836_p2 = (icmp_ln55_21_fu_1830_p2 | icmp_ln55_20_fu_1824_p2);
assign or_ln55_11_fu_1854_p2 = (icmp_ln55_23_fu_1848_p2 | icmp_ln55_22_fu_1842_p2);
assign or_ln55_12_fu_1925_p2 = (icmp_ln55_25_fu_1919_p2 | icmp_ln55_24_fu_1913_p2);
assign or_ln55_13_fu_1943_p2 = (icmp_ln55_27_fu_1937_p2 | icmp_ln55_26_fu_1931_p2);
assign or_ln55_14_fu_2044_p2 = (icmp_ln55_29_fu_2038_p2 | icmp_ln55_28_fu_2032_p2);
assign or_ln55_15_fu_2062_p2 = (icmp_ln55_31_fu_2056_p2 | icmp_ln55_30_fu_2050_p2);
assign or_ln55_1_fu_1355_p2 = (icmp_ln55_3_fu_1349_p2 | icmp_ln55_2_fu_1343_p2);
assign or_ln55_2_fu_1427_p2 = (icmp_ln55_5_fu_1421_p2 | icmp_ln55_4_fu_1415_p2);
assign or_ln55_3_fu_1445_p2 = (icmp_ln55_7_fu_1439_p2 | icmp_ln55_6_fu_1433_p2);
assign or_ln55_4_fu_1540_p2 = (icmp_ln55_9_fu_1534_p2 | icmp_ln55_8_fu_1528_p2);
assign or_ln55_5_fu_1558_p2 = (icmp_ln55_11_fu_1552_p2 | icmp_ln55_10_fu_1546_p2);
assign or_ln55_6_fu_1653_p2 = (icmp_ln55_13_fu_1647_p2 | icmp_ln55_12_fu_1641_p2);
assign or_ln55_7_fu_1659_p2 = (icmp_ln55_15_reg_2577 | icmp_ln55_14_reg_2572);
assign or_ln55_8_fu_1747_p2 = (icmp_ln55_17_fu_1741_p2 | icmp_ln55_16_fu_1735_p2);
assign or_ln55_9_fu_1765_p2 = (icmp_ln55_19_fu_1759_p2 | icmp_ln55_18_fu_1753_p2);
assign or_ln55_fu_1337_p2 = (icmp_ln55_fu_1325_p2 | icmp_ln55_1_fu_1331_p2);
assign shl_ln2_fu_617_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_1_fu_775_p3 = {{add_ln53_reg_2202}, {4'd0}};
assign shl_ln54_2_fu_795_p3 = {{add_ln53_1_reg_2213}, {4'd0}};
assign shl_ln54_3_fu_982_p3 = {{add_ln53_2_reg_2224}, {4'd0}};
assign shl_ln54_4_fu_1002_p3 = {{add_ln53_3_reg_2310}, {4'd0}};
assign shl_ln54_5_fu_1105_p3 = {{add_ln53_4_reg_2321}, {4'd0}};
assign shl_ln54_6_fu_1125_p3 = {{add_ln53_5_reg_2402}, {4'd0}};
assign shl_ln54_7_fu_1226_p3 = {{trunc_ln54_fu_1223_p1}, {4'd0}};
assign tmp_10_fu_680_p3 = {{t_1}, {add_ln8_fu_674_p2}};
assign tmp_11_fu_959_p2 = transition_0_q0;
assign tmp_11_fu_959_p4 = transition_1_q0;
assign tmp_11_fu_959_p6 = transition_2_q0;
assign tmp_11_fu_959_p8 = transition_3_q0;
assign tmp_11_fu_959_p9 = 'bx;
assign tmp_12_fu_1497_p4 = {{bitcast_ln55_4_fu_1493_p1[62:52]}};
assign tmp_13_fu_1514_p4 = {{bitcast_ln55_5_fu_1511_p1[62:52]}};
assign tmp_15_fu_709_p3 = {{t_1}, {lshr_ln8_s_fu_699_p4}};
assign tmp_16_fu_1043_p2 = transition_0_q0;
assign tmp_16_fu_1043_p4 = transition_1_q0;
assign tmp_16_fu_1043_p6 = transition_2_q0;
assign tmp_16_fu_1043_p8 = transition_3_q0;
assign tmp_16_fu_1043_p9 = 'bx;
assign tmp_17_fu_1627_p4 = {{bitcast_ln55_6_fu_1623_p1[62:52]}};
assign tmp_18_fu_1587_p4 = {{bitcast_ln55_7_fu_1583_p1[62:52]}};
assign tmp_1_fu_752_p2 = transition_0_q0;
assign tmp_1_fu_752_p4 = transition_1_q0;
assign tmp_1_fu_752_p6 = transition_2_q0;
assign tmp_1_fu_752_p8 = transition_3_q0;
assign tmp_1_fu_752_p9 = 'bx;
assign tmp_20_fu_825_p3 = {{t_1}, {add_ln8_1_fu_820_p2}};
assign tmp_21_fu_1082_p2 = transition_0_q1;
assign tmp_21_fu_1082_p4 = transition_1_q1;
assign tmp_21_fu_1082_p6 = transition_2_q1;
assign tmp_21_fu_1082_p8 = transition_3_q1;
assign tmp_21_fu_1082_p9 = 'bx;
assign tmp_22_fu_1704_p4 = {{bitcast_ln55_8_fu_1701_p1[62:52]}};
assign tmp_23_fu_1721_p4 = {{bitcast_ln55_9_fu_1718_p1[62:52]}};
assign tmp_25_fu_852_p3 = {{t_1}, {lshr_ln8_1_fu_842_p4}};
assign tmp_26_fu_1161_p2 = transition_0_q0;
assign tmp_26_fu_1161_p4 = transition_1_q0;
assign tmp_26_fu_1161_p6 = transition_2_q0;
assign tmp_26_fu_1161_p8 = transition_3_q0;
assign tmp_26_fu_1161_p9 = 'bx;
assign tmp_27_fu_1793_p4 = {{bitcast_ln55_10_fu_1789_p1[62:52]}};
assign tmp_28_fu_1810_p4 = {{bitcast_ln55_11_fu_1807_p1[62:52]}};
assign tmp_2_fu_1294_p4 = {{bitcast_ln55_fu_1290_p1[62:52]}};
assign tmp_30_fu_869_p3 = {{t_1}, {add_ln8_2_fu_864_p2}};
assign tmp_31_fu_1200_p2 = transition_0_q1;
assign tmp_31_fu_1200_p4 = transition_1_q1;
assign tmp_31_fu_1200_p6 = transition_2_q1;
assign tmp_31_fu_1200_p8 = transition_3_q1;
assign tmp_31_fu_1200_p9 = 'bx;
assign tmp_32_fu_1882_p4 = {{bitcast_ln55_12_fu_1879_p1[62:52]}};
assign tmp_33_fu_1899_p4 = {{bitcast_ln55_13_fu_1896_p1[62:52]}};
assign tmp_36_fu_1263_p2 = transition_0_q1;
assign tmp_36_fu_1263_p4 = transition_1_q1;
assign tmp_36_fu_1263_p6 = transition_2_q1;
assign tmp_36_fu_1263_p8 = transition_3_q1;
assign tmp_36_fu_1263_p9 = 'bx;
assign tmp_37_fu_2001_p4 = {{bitcast_ln55_14_fu_1997_p1[62:52]}};
assign tmp_38_fu_2018_p4 = {{bitcast_ln55_15_fu_2015_p1[62:52]}};
assign tmp_3_fu_1311_p4 = {{bitcast_ln55_1_fu_1308_p1[62:52]}};
assign tmp_5_fu_655_p3 = {{t_1}, {lshr_ln8_3_fu_645_p4}};
assign tmp_6_fu_920_p2 = transition_0_q1;
assign tmp_6_fu_920_p4 = transition_1_q1;
assign tmp_6_fu_920_p6 = transition_2_q1;
assign tmp_6_fu_920_p8 = transition_3_q1;
assign tmp_6_fu_920_p9 = 'bx;
assign tmp_7_fu_1384_p4 = {{bitcast_ln55_2_fu_1380_p1[62:52]}};
assign tmp_8_fu_1401_p4 = {{bitcast_ln55_3_fu_1398_p1[62:52]}};
assign tmp_s_fu_604_p3 = {{t_1}, {lshr_ln8_2_fu_594_p4}};
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
assign trunc_ln54_fu_1223_p1 = add_ln53_6_reg_2235[5:0];
assign trunc_ln55_10_fu_1803_p1 = bitcast_ln55_10_fu_1789_p1[51:0];
assign trunc_ln55_11_fu_1820_p1 = bitcast_ln55_11_fu_1807_p1[51:0];
assign trunc_ln55_12_fu_1892_p1 = bitcast_ln55_12_fu_1879_p1[51:0];
assign trunc_ln55_13_fu_1909_p1 = bitcast_ln55_13_fu_1896_p1[51:0];
assign trunc_ln55_14_fu_2011_p1 = bitcast_ln55_14_fu_1997_p1[51:0];
assign trunc_ln55_15_fu_2028_p1 = bitcast_ln55_15_fu_2015_p1[51:0];
assign trunc_ln55_1_fu_1321_p1 = bitcast_ln55_1_fu_1308_p1[51:0];
assign trunc_ln55_2_fu_1394_p1 = bitcast_ln55_2_fu_1380_p1[51:0];
assign trunc_ln55_3_fu_1411_p1 = bitcast_ln55_3_fu_1398_p1[51:0];
assign trunc_ln55_4_fu_1507_p1 = bitcast_ln55_4_fu_1493_p1[51:0];
assign trunc_ln55_5_fu_1524_p1 = bitcast_ln55_5_fu_1511_p1[51:0];
assign trunc_ln55_6_fu_1637_p1 = bitcast_ln55_6_fu_1623_p1[51:0];
assign trunc_ln55_7_fu_1597_p1 = bitcast_ln55_7_fu_1583_p1[51:0];
assign trunc_ln55_8_fu_1714_p1 = bitcast_ln55_8_fu_1701_p1[51:0];
assign trunc_ln55_9_fu_1731_p1 = bitcast_ln55_9_fu_1718_p1[51:0];
assign trunc_ln55_fu_1304_p1 = bitcast_ln55_fu_1290_p1[51:0];
assign zext_ln21_fu_590_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_568_p1 = zext_ln52_2;
assign zext_ln54_10_fu_688_p1 = tmp_10_fu_680_p3;
assign zext_ln54_11_fu_717_p1 = tmp_15_fu_709_p3;
assign zext_ln54_12_fu_832_p1 = tmp_20_fu_825_p3;
assign zext_ln54_13_fu_859_p1 = tmp_25_fu_852_p3;
assign zext_ln54_14_fu_876_p1 = tmp_30_fu_869_p3;
assign zext_ln54_15_fu_890_p1 = lshr_ln9_3_fu_881_p4;
assign zext_ln54_16_fu_899_p1 = add_ln54_8_fu_894_p2;
assign zext_ln54_1_fu_787_p1 = add_ln54_1_fu_782_p2;
assign zext_ln54_2_fu_807_p1 = add_ln54_2_fu_802_p2;
assign zext_ln54_3_fu_994_p1 = add_ln54_3_fu_989_p2;
assign zext_ln54_4_fu_1014_p1 = add_ln54_4_fu_1009_p2;
assign zext_ln54_5_fu_1117_p1 = add_ln54_5_fu_1112_p2;
assign zext_ln54_6_fu_1137_p1 = add_ln54_6_fu_1132_p2;
assign zext_ln54_7_fu_1239_p1 = add_ln54_7_fu_1234_p2;
assign zext_ln54_8_fu_612_p1 = tmp_s_fu_604_p3;
assign zext_ln54_9_fu_663_p1 = tmp_5_fu_655_p3;
assign zext_ln54_fu_631_p1 = add_ln54_fu_625_p2;
assign zext_ln55_1_fu_1483_p1 = add_ln53_reg_2202;
assign zext_ln55_2_fu_1675_p1 = add_ln53_1_reg_2213_pp0_iter1_reg;
assign zext_ln55_3_fu_1691_p1 = add_ln53_2_reg_2224_pp0_iter1_reg;
assign zext_ln55_4_fu_1961_p1 = add_ln53_3_reg_2310_pp0_iter1_reg;
assign zext_ln55_5_fu_1970_p1 = add_ln53_4_reg_2321_pp0_iter1_reg;
assign zext_ln55_6_fu_1980_p1 = add_ln53_5_reg_2402_pp0_iter1_reg;
assign zext_ln55_7_fu_2086_p1 = trunc_ln54_reg_2478_pp0_iter1_reg;
assign zext_ln55_fu_1466_p1 = s_reg_2162;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_2151[9:6] <= 4'b0000;
end
endmodule 