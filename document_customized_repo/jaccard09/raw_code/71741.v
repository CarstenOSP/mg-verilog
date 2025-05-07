module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_20,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty,zext_ln52_3,llike_address0,llike_ce0,llike_q0,min_s_18_out,min_s_18_out_ap_vld,grp_fu_727_p_din0,grp_fu_727_p_din1,grp_fu_727_p_opcode,grp_fu_727_p_dout0,grp_fu_727_p_ce,grp_fu_1495_p_din0,grp_fu_1495_p_din1,grp_fu_1495_p_opcode,grp_fu_1495_p_dout0,grp_fu_1495_p_ce); 
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
output  [10:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
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
input  [10:0] zext_ln52_3;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_727_p_din0;
output  [63:0] grp_fu_727_p_din1;
output  [1:0] grp_fu_727_p_opcode;
input  [63:0] grp_fu_727_p_dout0;
output   grp_fu_727_p_ce;
output  [63:0] grp_fu_1495_p_din0;
output  [63:0] grp_fu_1495_p_din1;
output  [4:0] grp_fu_1495_p_opcode;
input  [0:0] grp_fu_1495_p_dout0;
output   grp_fu_1495_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_30_reg_2152;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_583;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_588;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_593;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln52_2_cast_fu_598_p1;
reg   [9:0] zext_ln52_2_cast_reg_2058;
reg   [5:0] s_reg_2069;
wire   [5:0] add_ln53_fu_675_p2;
reg   [5:0] add_ln53_reg_2134;
wire   [5:0] add_ln53_1_fu_681_p2;
reg   [5:0] add_ln53_1_reg_2140;
reg   [5:0] add_ln53_1_reg_2140_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_687_p2;
reg   [6:0] add_ln53_6_reg_2146;
reg   [0:0] tmp_30_reg_2152_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2156;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_717_p11;
reg   [63:0] tmp_1_reg_2161;
reg   [63:0] llike_2_load_reg_2166;
reg   [63:0] llike_3_load_reg_2191;
wire   [5:0] add_ln53_2_fu_780_p2;
reg   [5:0] add_ln53_2_reg_2216;
reg   [63:0] llike_4_load_reg_2222;
wire   [5:0] add_ln53_3_fu_785_p2;
reg   [5:0] add_ln53_3_reg_2227;
reg   [5:0] add_ln53_3_reg_2227_pp0_iter1_reg;
reg   [63:0] llike_5_load_reg_2233;
reg   [63:0] llike_6_load_reg_2238;
reg   [63:0] llike_7_load_reg_2243;
wire   [63:0] tmp_5_fu_829_p11;
reg   [63:0] tmp_5_reg_2253;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_9_fu_868_p11;
reg   [63:0] tmp_9_reg_2258;
wire   [5:0] add_ln53_4_fu_931_p2;
reg   [5:0] add_ln53_4_reg_2303;
reg   [5:0] add_ln53_4_reg_2303_pp0_iter1_reg;
wire   [5:0] add_ln53_5_fu_936_p2;
reg   [5:0] add_ln53_5_reg_2309;
reg   [5:0] add_ln53_5_reg_2309_pp0_iter1_reg;
reg   [63:0] llike_load_reg_2315;
wire   [63:0] tmp_13_fu_957_p11;
reg   [63:0] tmp_13_reg_2320;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_15_fu_996_p11;
reg   [63:0] tmp_15_reg_2325;
wire   [63:0] tmp_16_fu_1075_p11;
reg   [63:0] tmp_16_reg_2370;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_17_fu_1114_p11;
reg   [63:0] tmp_17_reg_2375;
wire   [5:0] trunc_ln54_fu_1137_p1;
reg   [5:0] trunc_ln54_reg_2380;
reg   [5:0] trunc_ln54_reg_2380_pp0_iter1_reg;
wire   [63:0] tmp_18_fu_1177_p11;
reg   [63:0] tmp_18_reg_2405;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_2410;
wire   [0:0] and_ln55_1_fu_1281_p2;
reg   [0:0] and_ln55_1_reg_2417;
wire   [63:0] min_p_3_fu_1287_p3;
reg   [63:0] min_p_3_reg_2423;
wire   [0:0] and_ln55_3_fu_1371_p2;
reg   [0:0] and_ln55_3_reg_2430;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_4_reg_2436;
wire   [63:0] min_p_5_fu_1390_p3;
reg   [63:0] min_p_5_reg_2443;
wire   [7:0] min_s_5_fu_1400_p3;
reg   [7:0] min_s_5_reg_2450;
wire   [0:0] and_ln55_5_fu_1484_p2;
reg   [0:0] and_ln55_5_reg_2455;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_6_reg_2461;
wire   [63:0] min_p_7_fu_1490_p3;
reg   [63:0] min_p_7_reg_2468;
wire   [0:0] icmp_ln55_14_fu_1515_p2;
reg   [0:0] icmp_ln55_14_reg_2474;
wire   [0:0] icmp_ln55_15_fu_1521_p2;
reg   [0:0] icmp_ln55_15_reg_2479;
wire   [0:0] and_ln55_7_fu_1583_p2;
reg   [0:0] and_ln55_7_reg_2484;
wire   [63:0] min_p_9_fu_1598_p3;
reg   [63:0] min_p_9_reg_2490;
wire   [7:0] min_s_7_fu_1608_p3;
reg   [7:0] min_s_7_reg_2497;
wire   [0:0] and_ln55_9_fu_1691_p2;
reg   [0:0] and_ln55_9_reg_2502;
wire   [63:0] min_p_11_fu_1697_p3;
reg   [63:0] min_p_11_reg_2508;
wire   [0:0] and_ln55_11_fu_1780_p2;
reg   [0:0] and_ln55_11_reg_2515;
wire   [63:0] min_p_13_fu_1786_p3;
reg   [63:0] min_p_13_reg_2521;
wire   [0:0] and_ln55_13_fu_1869_p2;
reg   [0:0] and_ln55_13_reg_2528;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_10_fu_1897_p3;
reg   [7:0] min_s_10_reg_2534;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_15_fu_1905_p3;
reg   [63:0] min_p_15_reg_2539;
reg   [0:0] tmp_33_reg_2546;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_642_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_667_p1;
wire   [63:0] zext_ln54_1_fu_752_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_772_p1;
wire   [63:0] zext_ln54_10_fu_808_p1;
wire   [63:0] zext_ln54_3_fu_903_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_923_p1;
wire   [63:0] zext_ln54_5_fu_1031_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1051_p1;
wire   [63:0] zext_ln54_7_fu_1153_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_130;
wire   [63:0] min_p_17_fu_1993_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_134;
wire   [7:0] min_s_11_fu_2003_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_138;
wire   [5:0] add_ln53_7_fu_1527_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
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
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_4_ce0_local;
reg    llike_5_ce0_local;
reg    llike_6_ce0_local;
reg    llike_7_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_575_p0;
reg   [63:0] grp_fu_575_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_579_p0;
reg   [63:0] grp_fu_579_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [2:0] lshr_ln8_2_fu_624_p4;
wire   [10:0] tmp_s_fu_634_p3;
wire   [9:0] shl_ln2_fu_653_p3;
wire   [9:0] add_ln54_fu_661_p2;
wire   [6:0] zext_ln21_fu_620_p1;
wire   [63:0] tmp_1_fu_717_p2;
wire   [63:0] tmp_1_fu_717_p4;
wire   [63:0] tmp_1_fu_717_p6;
wire   [63:0] tmp_1_fu_717_p8;
wire   [63:0] tmp_1_fu_717_p9;
wire   [9:0] shl_ln54_1_fu_740_p3;
wire   [9:0] add_ln54_1_fu_747_p2;
wire   [9:0] shl_ln54_2_fu_760_p3;
wire   [9:0] add_ln54_2_fu_767_p2;
wire   [3:0] lshr_ln9_3_fu_790_p4;
wire   [10:0] zext_ln54_9_fu_799_p1;
wire   [10:0] add_ln54_8_fu_803_p2;
wire   [63:0] tmp_5_fu_829_p2;
wire   [63:0] tmp_5_fu_829_p4;
wire   [63:0] tmp_5_fu_829_p6;
wire   [63:0] tmp_5_fu_829_p8;
wire   [63:0] tmp_5_fu_829_p9;
wire   [63:0] tmp_9_fu_868_p2;
wire   [63:0] tmp_9_fu_868_p4;
wire   [63:0] tmp_9_fu_868_p6;
wire   [63:0] tmp_9_fu_868_p8;
wire   [63:0] tmp_9_fu_868_p9;
wire   [9:0] shl_ln54_3_fu_891_p3;
wire   [9:0] add_ln54_3_fu_898_p2;
wire   [9:0] shl_ln54_4_fu_911_p3;
wire   [9:0] add_ln54_4_fu_918_p2;
wire   [63:0] tmp_13_fu_957_p2;
wire   [63:0] tmp_13_fu_957_p4;
wire   [63:0] tmp_13_fu_957_p6;
wire   [63:0] tmp_13_fu_957_p8;
wire   [63:0] tmp_13_fu_957_p9;
wire   [63:0] tmp_15_fu_996_p2;
wire   [63:0] tmp_15_fu_996_p4;
wire   [63:0] tmp_15_fu_996_p6;
wire   [63:0] tmp_15_fu_996_p8;
wire   [63:0] tmp_15_fu_996_p9;
wire   [9:0] shl_ln54_5_fu_1019_p3;
wire   [9:0] add_ln54_5_fu_1026_p2;
wire   [9:0] shl_ln54_6_fu_1039_p3;
wire   [9:0] add_ln54_6_fu_1046_p2;
wire   [63:0] tmp_16_fu_1075_p2;
wire   [63:0] tmp_16_fu_1075_p4;
wire   [63:0] tmp_16_fu_1075_p6;
wire   [63:0] tmp_16_fu_1075_p8;
wire   [63:0] tmp_16_fu_1075_p9;
wire   [63:0] tmp_17_fu_1114_p2;
wire   [63:0] tmp_17_fu_1114_p4;
wire   [63:0] tmp_17_fu_1114_p6;
wire   [63:0] tmp_17_fu_1114_p8;
wire   [63:0] tmp_17_fu_1114_p9;
wire   [9:0] shl_ln54_7_fu_1140_p3;
wire   [9:0] add_ln54_7_fu_1148_p2;
wire   [63:0] tmp_18_fu_1177_p2;
wire   [63:0] tmp_18_fu_1177_p4;
wire   [63:0] tmp_18_fu_1177_p6;
wire   [63:0] tmp_18_fu_1177_p8;
wire   [63:0] tmp_18_fu_1177_p9;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_1204_p1;
wire   [63:0] bitcast_ln55_1_fu_1222_p1;
wire   [10:0] tmp_2_fu_1208_p4;
wire   [51:0] trunc_ln55_fu_1218_p1;
wire   [0:0] icmp_ln55_1_fu_1245_p2;
wire   [0:0] icmp_ln55_fu_1239_p2;
wire   [10:0] tmp_3_fu_1225_p4;
wire   [51:0] trunc_ln55_1_fu_1235_p1;
wire   [0:0] icmp_ln55_3_fu_1263_p2;
wire   [0:0] icmp_ln55_2_fu_1257_p2;
wire   [0:0] or_ln55_fu_1251_p2;
wire   [0:0] and_ln55_fu_1275_p2;
wire   [0:0] or_ln55_1_fu_1269_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_1294_p1;
wire   [63:0] bitcast_ln55_3_fu_1312_p1;
wire   [10:0] tmp_6_fu_1298_p4;
wire   [51:0] trunc_ln55_2_fu_1308_p1;
wire   [0:0] icmp_ln55_5_fu_1335_p2;
wire   [0:0] icmp_ln55_4_fu_1329_p2;
wire   [10:0] tmp_7_fu_1315_p4;
wire   [51:0] trunc_ln55_3_fu_1325_p1;
wire   [0:0] icmp_ln55_7_fu_1353_p2;
wire   [0:0] icmp_ln55_6_fu_1347_p2;
wire   [0:0] or_ln55_3_fu_1359_p2;
wire   [0:0] or_ln55_2_fu_1341_p2;
wire   [0:0] and_ln55_2_fu_1365_p2;
wire   [7:0] zext_ln55_fu_1380_p1;
wire   [7:0] zext_ln55_1_fu_1397_p1;
wire   [7:0] min_s_4_fu_1383_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_1407_p1;
wire   [63:0] bitcast_ln55_5_fu_1425_p1;
wire   [10:0] tmp_10_fu_1411_p4;
wire   [51:0] trunc_ln55_4_fu_1421_p1;
wire   [0:0] icmp_ln55_9_fu_1448_p2;
wire   [0:0] icmp_ln55_8_fu_1442_p2;
wire   [10:0] tmp_11_fu_1428_p4;
wire   [51:0] trunc_ln55_5_fu_1438_p1;
wire   [0:0] icmp_ln55_11_fu_1466_p2;
wire   [0:0] icmp_ln55_10_fu_1460_p2;
wire   [0:0] or_ln55_5_fu_1472_p2;
wire   [0:0] or_ln55_4_fu_1454_p2;
wire   [0:0] and_ln55_4_fu_1478_p2;
wire   [63:0] bitcast_ln55_7_fu_1497_p1;
wire   [10:0] tmp_19_fu_1501_p4;
wire   [51:0] trunc_ln55_7_fu_1511_p1;
wire   [63:0] bitcast_ln55_6_fu_1537_p1;
wire   [10:0] tmp_14_fu_1541_p4;
wire   [51:0] trunc_ln55_6_fu_1551_p1;
wire   [0:0] icmp_ln55_13_fu_1561_p2;
wire   [0:0] icmp_ln55_12_fu_1555_p2;
wire   [0:0] or_ln55_7_fu_1573_p2;
wire   [0:0] or_ln55_6_fu_1567_p2;
wire   [0:0] and_ln55_6_fu_1577_p2;
wire   [7:0] zext_ln55_2_fu_1589_p1;
wire   [7:0] zext_ln55_3_fu_1605_p1;
wire   [7:0] min_s_6_fu_1592_p3;
wire   [63:0] bitcast_ln55_8_fu_1615_p1;
wire   [63:0] bitcast_ln55_9_fu_1632_p1;
wire   [10:0] tmp_21_fu_1618_p4;
wire   [51:0] trunc_ln55_8_fu_1628_p1;
wire   [0:0] icmp_ln55_17_fu_1655_p2;
wire   [0:0] icmp_ln55_16_fu_1649_p2;
wire   [10:0] tmp_22_fu_1635_p4;
wire   [51:0] trunc_ln55_9_fu_1645_p1;
wire   [0:0] icmp_ln55_19_fu_1673_p2;
wire   [0:0] icmp_ln55_18_fu_1667_p2;
wire   [0:0] or_ln55_9_fu_1679_p2;
wire   [0:0] or_ln55_8_fu_1661_p2;
wire   [0:0] and_ln55_8_fu_1685_p2;
wire   [63:0] bitcast_ln55_10_fu_1703_p1;
wire   [63:0] bitcast_ln55_11_fu_1721_p1;
wire   [10:0] tmp_24_fu_1707_p4;
wire   [51:0] trunc_ln55_10_fu_1717_p1;
wire   [0:0] icmp_ln55_21_fu_1744_p2;
wire   [0:0] icmp_ln55_20_fu_1738_p2;
wire   [10:0] tmp_25_fu_1724_p4;
wire   [51:0] trunc_ln55_11_fu_1734_p1;
wire   [0:0] icmp_ln55_23_fu_1762_p2;
wire   [0:0] icmp_ln55_22_fu_1756_p2;
wire   [0:0] or_ln55_11_fu_1768_p2;
wire   [0:0] or_ln55_10_fu_1750_p2;
wire   [0:0] and_ln55_10_fu_1774_p2;
wire   [63:0] bitcast_ln55_12_fu_1793_p1;
wire   [63:0] bitcast_ln55_13_fu_1810_p1;
wire   [10:0] tmp_27_fu_1796_p4;
wire   [51:0] trunc_ln55_12_fu_1806_p1;
wire   [0:0] icmp_ln55_25_fu_1833_p2;
wire   [0:0] icmp_ln55_24_fu_1827_p2;
wire   [10:0] tmp_28_fu_1813_p4;
wire   [51:0] trunc_ln55_13_fu_1823_p1;
wire   [0:0] icmp_ln55_27_fu_1851_p2;
wire   [0:0] icmp_ln55_26_fu_1845_p2;
wire   [0:0] or_ln55_13_fu_1857_p2;
wire   [0:0] or_ln55_12_fu_1839_p2;
wire   [0:0] and_ln55_12_fu_1863_p2;
wire   [7:0] zext_ln55_4_fu_1875_p1;
wire   [7:0] zext_ln55_5_fu_1884_p1;
wire   [7:0] min_s_8_fu_1878_p3;
wire   [7:0] zext_ln55_6_fu_1894_p1;
wire   [7:0] min_s_9_fu_1887_p3;
wire   [63:0] bitcast_ln55_14_fu_1911_p1;
wire   [63:0] bitcast_ln55_15_fu_1929_p1;
wire   [10:0] tmp_31_fu_1915_p4;
wire   [51:0] trunc_ln55_14_fu_1925_p1;
wire   [0:0] icmp_ln55_29_fu_1952_p2;
wire   [0:0] icmp_ln55_28_fu_1946_p2;
wire   [10:0] tmp_32_fu_1932_p4;
wire   [51:0] trunc_ln55_15_fu_1942_p1;
wire   [0:0] icmp_ln55_31_fu_1970_p2;
wire   [0:0] icmp_ln55_30_fu_1964_p2;
wire   [0:0] or_ln55_15_fu_1976_p2;
wire   [0:0] or_ln55_14_fu_1958_p2;
wire   [0:0] and_ln55_14_fu_1982_p2;
wire   [0:0] and_ln55_15_fu_1988_p2;
wire   [7:0] zext_ln55_7_fu_2000_p1;
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
wire   [1:0] tmp_1_fu_717_p1;
wire   [1:0] tmp_1_fu_717_p3;
wire  signed [1:0] tmp_1_fu_717_p5;
wire  signed [1:0] tmp_1_fu_717_p7;
wire   [1:0] tmp_5_fu_829_p1;
wire   [1:0] tmp_5_fu_829_p3;
wire  signed [1:0] tmp_5_fu_829_p5;
wire  signed [1:0] tmp_5_fu_829_p7;
wire   [1:0] tmp_9_fu_868_p1;
wire   [1:0] tmp_9_fu_868_p3;
wire  signed [1:0] tmp_9_fu_868_p5;
wire  signed [1:0] tmp_9_fu_868_p7;
wire   [1:0] tmp_13_fu_957_p1;
wire   [1:0] tmp_13_fu_957_p3;
wire  signed [1:0] tmp_13_fu_957_p5;
wire  signed [1:0] tmp_13_fu_957_p7;
wire   [1:0] tmp_15_fu_996_p1;
wire   [1:0] tmp_15_fu_996_p3;
wire  signed [1:0] tmp_15_fu_996_p5;
wire  signed [1:0] tmp_15_fu_996_p7;
wire   [1:0] tmp_16_fu_1075_p1;
wire   [1:0] tmp_16_fu_1075_p3;
wire  signed [1:0] tmp_16_fu_1075_p5;
wire  signed [1:0] tmp_16_fu_1075_p7;
wire   [1:0] tmp_17_fu_1114_p1;
wire   [1:0] tmp_17_fu_1114_p3;
wire  signed [1:0] tmp_17_fu_1114_p5;
wire  signed [1:0] tmp_17_fu_1114_p7;
wire   [1:0] tmp_18_fu_1177_p1;
wire   [1:0] tmp_18_fu_1177_p3;
wire  signed [1:0] tmp_18_fu_1177_p5;
wire  signed [1:0] tmp_18_fu_1177_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_130 = 64'd0;
#0 min_s_fu_134 = 8'd0;
#0 min_s_1_fu_138 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U65(.din0(tmp_1_fu_717_p2),.din1(tmp_1_fu_717_p4),.din2(tmp_1_fu_717_p6),.din3(tmp_1_fu_717_p8),.def(tmp_1_fu_717_p9),.sel(empty),.dout(tmp_1_fu_717_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U66(.din0(tmp_5_fu_829_p2),.din1(tmp_5_fu_829_p4),.din2(tmp_5_fu_829_p6),.din3(tmp_5_fu_829_p8),.def(tmp_5_fu_829_p9),.sel(empty),.dout(tmp_5_fu_829_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U67(.din0(tmp_9_fu_868_p2),.din1(tmp_9_fu_868_p4),.din2(tmp_9_fu_868_p6),.din3(tmp_9_fu_868_p8),.def(tmp_9_fu_868_p9),.sel(empty),.dout(tmp_9_fu_868_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U68(.din0(tmp_13_fu_957_p2),.din1(tmp_13_fu_957_p4),.din2(tmp_13_fu_957_p6),.din3(tmp_13_fu_957_p8),.def(tmp_13_fu_957_p9),.sel(empty),.dout(tmp_13_fu_957_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U69(.din0(tmp_15_fu_996_p2),.din1(tmp_15_fu_996_p4),.din2(tmp_15_fu_996_p6),.din3(tmp_15_fu_996_p8),.def(tmp_15_fu_996_p9),.sel(empty),.dout(tmp_15_fu_996_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U70(.din0(tmp_16_fu_1075_p2),.din1(tmp_16_fu_1075_p4),.din2(tmp_16_fu_1075_p6),.din3(tmp_16_fu_1075_p8),.def(tmp_16_fu_1075_p9),.sel(empty),.dout(tmp_16_fu_1075_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U71(.din0(tmp_17_fu_1114_p2),.din1(tmp_17_fu_1114_p4),.din2(tmp_17_fu_1114_p6),.din3(tmp_17_fu_1114_p8),.def(tmp_17_fu_1114_p9),.sel(empty),.dout(tmp_17_fu_1114_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U72(.din0(tmp_18_fu_1177_p2),.din1(tmp_18_fu_1177_p4),.din2(tmp_18_fu_1177_p6),.din3(tmp_18_fu_1177_p8),.def(tmp_18_fu_1177_p9),.sel(empty),.dout(tmp_18_fu_1177_p11));
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
        min_p_fu_130 <= min_p_20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_30_reg_2152_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_130 <= min_p_17_fu_1993_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_138 <= 6'd1;
    end else if (((tmp_30_reg_2152 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_138 <= add_ln53_7_fu_1527_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_134 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_30_reg_2152_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_134 <= min_s_11_fu_2003_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_2140 <= add_ln53_1_fu_681_p2;
        add_ln53_1_reg_2140_pp0_iter1_reg <= add_ln53_1_reg_2140;
        add_ln53_6_reg_2146 <= add_ln53_6_fu_687_p2;
        add_ln53_reg_2134 <= add_ln53_fu_675_p2;
        and_ln55_7_reg_2484 <= and_ln55_7_fu_1583_p2;
        s_reg_2069 <= ap_sig_allocacmp_s;
        tmp_30_reg_2152 <= add_ln53_6_fu_687_p2[32'd6];
        tmp_30_reg_2152_pp0_iter1_reg <= tmp_30_reg_2152;
        zext_ln52_2_cast_reg_2058[5 : 0] <= zext_ln52_2_cast_fu_598_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_2216 <= add_ln53_2_fu_780_p2;
        add_ln53_3_reg_2227 <= add_ln53_3_fu_785_p2;
        add_ln53_3_reg_2227_pp0_iter1_reg <= add_ln53_3_reg_2227;
        llike_1_load_reg_2156 <= llike_1_q0;
        llike_2_load_reg_2166 <= llike_2_q0;
        llike_3_load_reg_2191 <= llike_3_q0;
        llike_4_load_reg_2222 <= llike_4_q0;
        llike_5_load_reg_2233 <= llike_5_q0;
        llike_6_load_reg_2238 <= llike_6_q0;
        llike_7_load_reg_2243 <= llike_7_q0;
        min_p_9_reg_2490 <= min_p_9_fu_1598_p3;
        min_s_7_reg_2497 <= min_s_7_fu_1608_p3;
        tmp_1_reg_2161 <= tmp_1_fu_717_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_2303 <= add_ln53_4_fu_931_p2;
        add_ln53_4_reg_2303_pp0_iter1_reg <= add_ln53_4_reg_2303;
        add_ln53_5_reg_2309 <= add_ln53_5_fu_936_p2;
        add_ln53_5_reg_2309_pp0_iter1_reg <= add_ln53_5_reg_2309;
        and_ln55_9_reg_2502 <= and_ln55_9_fu_1691_p2;
        llike_load_reg_2315 <= llike_q0;
        tmp_5_reg_2253 <= tmp_5_fu_829_p11;
        tmp_9_reg_2258 <= tmp_9_fu_868_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_2515 <= and_ln55_11_fu_1780_p2;
        tmp_16_reg_2370 <= tmp_16_fu_1075_p11;
        tmp_17_reg_2375 <= tmp_17_fu_1114_p11;
        trunc_ln54_reg_2380 <= trunc_ln54_fu_1137_p1;
        trunc_ln54_reg_2380_pp0_iter1_reg <= trunc_ln54_reg_2380;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_2528 <= and_ln55_13_fu_1869_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_2417 <= and_ln55_1_fu_1281_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_2430 <= and_ln55_3_fu_1371_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_2455 <= and_ln55_5_fu_1484_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_2474 <= icmp_ln55_14_fu_1515_p2;
        icmp_ln55_15_reg_2479 <= icmp_ln55_15_fu_1521_p2;
        min_p_7_reg_2468 <= min_p_7_fu_1490_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_2508 <= min_p_11_fu_1697_p3;
        tmp_13_reg_2320 <= tmp_13_fu_957_p11;
        tmp_15_reg_2325 <= tmp_15_fu_996_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_2521 <= min_p_13_fu_1786_p3;
        tmp_18_reg_2405 <= tmp_18_fu_1177_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_2539 <= min_p_15_fu_1905_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_2410 <= min_p_fu_130;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_2423 <= min_p_3_fu_1287_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_2443 <= min_p_5_fu_1390_p3;
        min_s_5_reg_2450 <= min_s_5_fu_1400_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_2534 <= min_s_10_fu_1897_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_4_reg_2436 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_6_reg_2461 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_583 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_588 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_593 <= grp_fu_727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_33_reg_2546 <= grp_fu_1495_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_30_reg_2152 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_30_reg_2152_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_138;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_575_p0 = llike_load_reg_2315;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_575_p0 = llike_7_load_reg_2243;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_575_p0 = llike_6_load_reg_2238;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_575_p0 = llike_5_load_reg_2233;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_575_p0 = llike_4_load_reg_2222;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_575_p0 = llike_3_load_reg_2191;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_575_p0 = llike_2_load_reg_2166;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_575_p0 = llike_1_load_reg_2156;
        end else begin
            grp_fu_575_p0 = 'bx;
        end
    end else begin
        grp_fu_575_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_575_p1 = tmp_18_reg_2405;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_575_p1 = tmp_17_reg_2375;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_575_p1 = tmp_16_reg_2370;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_575_p1 = tmp_15_reg_2325;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_575_p1 = tmp_13_reg_2320;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_575_p1 = tmp_9_reg_2258;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_575_p1 = tmp_5_reg_2253;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_575_p1 = tmp_1_reg_2161;
        end else begin
            grp_fu_575_p1 = 'bx;
        end
    end else begin
        grp_fu_575_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_579_p0 = p_6_reg_2461;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_579_p0 = p_4_reg_2436;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_579_p0 = reg_593;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_579_p0 = reg_588;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_579_p0 = reg_583;
    end else begin
        grp_fu_579_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_579_p1 = min_p_15_fu_1905_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_579_p1 = min_p_13_fu_1786_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_579_p1 = min_p_11_fu_1697_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_579_p1 = min_p_9_fu_1598_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_579_p1 = min_p_7_fu_1490_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_579_p1 = min_p_5_fu_1390_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_579_p1 = min_p_3_fu_1287_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_579_p1 = min_p_fu_130;
    end else begin
        grp_fu_579_p1 = 'bx;
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
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
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
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_30_reg_2152_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1031_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_772_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_667_p1;
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
            transition_0_address1_local = zext_ln54_7_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1051_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_923_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_752_p1;
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
            transition_1_address0_local = zext_ln54_5_fu_1031_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_772_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_667_p1;
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
            transition_1_address1_local = zext_ln54_7_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1051_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_923_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_752_p1;
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
            transition_2_address0_local = zext_ln54_5_fu_1031_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln54_3_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_772_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_667_p1;
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
            transition_2_address1_local = zext_ln54_7_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln54_6_fu_1051_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_4_fu_923_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_752_p1;
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
            transition_3_address0_local = zext_ln54_5_fu_1031_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln54_3_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_772_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_667_p1;
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
            transition_3_address1_local = zext_ln54_7_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln54_6_fu_1051_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_4_fu_923_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_752_p1;
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
assign add_ln53_1_fu_681_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_780_p2 = (s_reg_2069 + 6'd3);
assign add_ln53_3_fu_785_p2 = (s_reg_2069 + 6'd4);
assign add_ln53_4_fu_931_p2 = (s_reg_2069 + 6'd5);
assign add_ln53_5_fu_936_p2 = (s_reg_2069 + 6'd6);
assign add_ln53_6_fu_687_p2 = (zext_ln21_fu_620_p1 + 7'd7);
assign add_ln53_7_fu_1527_p2 = (s_reg_2069 + 6'd8);
assign add_ln53_fu_675_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_747_p2 = (shl_ln54_1_fu_740_p3 + zext_ln52_2_cast_reg_2058);
assign add_ln54_2_fu_767_p2 = (shl_ln54_2_fu_760_p3 + zext_ln52_2_cast_reg_2058);
assign add_ln54_3_fu_898_p2 = (shl_ln54_3_fu_891_p3 + zext_ln52_2_cast_reg_2058);
assign add_ln54_4_fu_918_p2 = (shl_ln54_4_fu_911_p3 + zext_ln52_2_cast_reg_2058);
assign add_ln54_5_fu_1026_p2 = (shl_ln54_5_fu_1019_p3 + zext_ln52_2_cast_reg_2058);
assign add_ln54_6_fu_1046_p2 = (shl_ln54_6_fu_1039_p3 + zext_ln52_2_cast_reg_2058);
assign add_ln54_7_fu_1148_p2 = (shl_ln54_7_fu_1140_p3 + zext_ln52_2_cast_reg_2058);
assign add_ln54_8_fu_803_p2 = (zext_ln52_3 + zext_ln54_9_fu_799_p1);
assign add_ln54_fu_661_p2 = (shl_ln2_fu_653_p3 + zext_ln52_2_cast_fu_598_p1);
assign and_ln55_10_fu_1774_p2 = (or_ln55_11_fu_1768_p2 & or_ln55_10_fu_1750_p2);
assign and_ln55_11_fu_1780_p2 = (grp_fu_1495_p_dout0 & and_ln55_10_fu_1774_p2);
assign and_ln55_12_fu_1863_p2 = (or_ln55_13_fu_1857_p2 & or_ln55_12_fu_1839_p2);
assign and_ln55_13_fu_1869_p2 = (grp_fu_1495_p_dout0 & and_ln55_12_fu_1863_p2);
assign and_ln55_14_fu_1982_p2 = (or_ln55_15_fu_1976_p2 & or_ln55_14_fu_1958_p2);
assign and_ln55_15_fu_1988_p2 = (tmp_33_reg_2546 & and_ln55_14_fu_1982_p2);
assign and_ln55_1_fu_1281_p2 = (or_ln55_1_fu_1269_p2 & and_ln55_fu_1275_p2);
assign and_ln55_2_fu_1365_p2 = (or_ln55_3_fu_1359_p2 & or_ln55_2_fu_1341_p2);
assign and_ln55_3_fu_1371_p2 = (grp_fu_1495_p_dout0 & and_ln55_2_fu_1365_p2);
assign and_ln55_4_fu_1478_p2 = (or_ln55_5_fu_1472_p2 & or_ln55_4_fu_1454_p2);
assign and_ln55_5_fu_1484_p2 = (grp_fu_1495_p_dout0 & and_ln55_4_fu_1478_p2);
assign and_ln55_6_fu_1577_p2 = (or_ln55_7_fu_1573_p2 & or_ln55_6_fu_1567_p2);
assign and_ln55_7_fu_1583_p2 = (grp_fu_1495_p_dout0 & and_ln55_6_fu_1577_p2);
assign and_ln55_8_fu_1685_p2 = (or_ln55_9_fu_1679_p2 & or_ln55_8_fu_1661_p2);
assign and_ln55_9_fu_1691_p2 = (grp_fu_1495_p_dout0 & and_ln55_8_fu_1685_p2);
assign and_ln55_fu_1275_p2 = (or_ln55_fu_1251_p2 & grp_fu_1495_p_dout0);
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
assign bitcast_ln55_10_fu_1703_p1 = reg_588;
assign bitcast_ln55_11_fu_1721_p1 = min_p_11_reg_2508;
assign bitcast_ln55_12_fu_1793_p1 = p_6_reg_2461;
assign bitcast_ln55_13_fu_1810_p1 = min_p_13_reg_2521;
assign bitcast_ln55_14_fu_1911_p1 = reg_593;
assign bitcast_ln55_15_fu_1929_p1 = min_p_15_reg_2539;
assign bitcast_ln55_1_fu_1222_p1 = min_p_1_reg_2410;
assign bitcast_ln55_2_fu_1294_p1 = reg_588;
assign bitcast_ln55_3_fu_1312_p1 = min_p_3_reg_2423;
assign bitcast_ln55_4_fu_1407_p1 = reg_593;
assign bitcast_ln55_5_fu_1425_p1 = min_p_5_reg_2443;
assign bitcast_ln55_6_fu_1537_p1 = reg_583;
assign bitcast_ln55_7_fu_1497_p1 = min_p_7_fu_1490_p3;
assign bitcast_ln55_8_fu_1615_p1 = p_4_reg_2436;
assign bitcast_ln55_9_fu_1632_p1 = min_p_9_reg_2490;
assign bitcast_ln55_fu_1204_p1 = reg_583;
assign grp_fu_1495_p_ce = 1'b1;
assign grp_fu_1495_p_din0 = grp_fu_579_p0;
assign grp_fu_1495_p_din1 = grp_fu_579_p1;
assign grp_fu_1495_p_opcode = 5'd4;
assign grp_fu_727_p_ce = 1'b1;
assign grp_fu_727_p_din0 = grp_fu_575_p0;
assign grp_fu_727_p_din1 = grp_fu_575_p1;
assign grp_fu_727_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1460_p2 = ((tmp_11_fu_1428_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1466_p2 = ((trunc_ln55_5_fu_1438_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1555_p2 = ((tmp_14_fu_1541_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1561_p2 = ((trunc_ln55_6_fu_1551_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1515_p2 = ((tmp_19_fu_1501_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1521_p2 = ((trunc_ln55_7_fu_1511_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1649_p2 = ((tmp_21_fu_1618_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1655_p2 = ((trunc_ln55_8_fu_1628_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1667_p2 = ((tmp_22_fu_1635_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1673_p2 = ((trunc_ln55_9_fu_1645_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1245_p2 = ((trunc_ln55_fu_1218_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1738_p2 = ((tmp_24_fu_1707_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1744_p2 = ((trunc_ln55_10_fu_1717_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1756_p2 = ((tmp_25_fu_1724_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1762_p2 = ((trunc_ln55_11_fu_1734_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1827_p2 = ((tmp_27_fu_1796_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1833_p2 = ((trunc_ln55_12_fu_1806_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1845_p2 = ((tmp_28_fu_1813_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1851_p2 = ((trunc_ln55_13_fu_1823_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_1946_p2 = ((tmp_31_fu_1915_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_1952_p2 = ((trunc_ln55_14_fu_1925_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1257_p2 = ((tmp_3_fu_1225_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_1964_p2 = ((tmp_32_fu_1932_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_1970_p2 = ((trunc_ln55_15_fu_1942_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1263_p2 = ((trunc_ln55_1_fu_1235_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1329_p2 = ((tmp_6_fu_1298_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1335_p2 = ((trunc_ln55_2_fu_1308_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1347_p2 = ((tmp_7_fu_1315_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1353_p2 = ((trunc_ln55_3_fu_1325_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1442_p2 = ((tmp_10_fu_1411_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1448_p2 = ((trunc_ln55_4_fu_1421_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1239_p2 = ((tmp_2_fu_1208_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_8_fu_642_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln54_8_fu_642_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln54_8_fu_642_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln54_8_fu_642_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln54_8_fu_642_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln54_8_fu_642_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln54_8_fu_642_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = zext_ln54_10_fu_808_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_2_fu_624_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign lshr_ln9_3_fu_790_p4 = {{add_ln53_6_reg_2146[6:3]}};
assign min_p_11_fu_1697_p3 = ((and_ln55_9_reg_2502[0:0] == 1'b1) ? p_4_reg_2436 : min_p_9_reg_2490);
assign min_p_13_fu_1786_p3 = ((and_ln55_11_reg_2515[0:0] == 1'b1) ? reg_588 : min_p_11_reg_2508);
assign min_p_15_fu_1905_p3 = ((and_ln55_13_reg_2528[0:0] == 1'b1) ? p_6_reg_2461 : min_p_13_reg_2521);
assign min_p_17_fu_1993_p3 = ((and_ln55_15_fu_1988_p2[0:0] == 1'b1) ? reg_593 : min_p_15_reg_2539);
assign min_p_3_fu_1287_p3 = ((and_ln55_1_reg_2417[0:0] == 1'b1) ? reg_583 : min_p_1_reg_2410);
assign min_p_5_fu_1390_p3 = ((and_ln55_3_reg_2430[0:0] == 1'b1) ? reg_588 : min_p_3_reg_2423);
assign min_p_7_fu_1490_p3 = ((and_ln55_5_reg_2455[0:0] == 1'b1) ? reg_593 : min_p_5_reg_2443);
assign min_p_9_fu_1598_p3 = ((and_ln55_7_reg_2484[0:0] == 1'b1) ? reg_583 : min_p_7_reg_2468);
assign min_s_10_fu_1897_p3 = ((and_ln55_13_reg_2528[0:0] == 1'b1) ? zext_ln55_6_fu_1894_p1 : min_s_9_fu_1887_p3);
assign min_s_11_fu_2003_p3 = ((and_ln55_15_fu_1988_p2[0:0] == 1'b1) ? zext_ln55_7_fu_2000_p1 : min_s_10_reg_2534);
assign min_s_18_out = ((and_ln55_13_reg_2528[0:0] == 1'b1) ? zext_ln55_6_fu_1894_p1 : min_s_9_fu_1887_p3);
assign min_s_4_fu_1383_p3 = ((and_ln55_1_reg_2417[0:0] == 1'b1) ? zext_ln55_fu_1380_p1 : min_s_fu_134);
assign min_s_5_fu_1400_p3 = ((and_ln55_3_reg_2430[0:0] == 1'b1) ? zext_ln55_1_fu_1397_p1 : min_s_4_fu_1383_p3);
assign min_s_6_fu_1592_p3 = ((and_ln55_5_reg_2455[0:0] == 1'b1) ? zext_ln55_2_fu_1589_p1 : min_s_5_reg_2450);
assign min_s_7_fu_1608_p3 = ((and_ln55_7_reg_2484[0:0] == 1'b1) ? zext_ln55_3_fu_1605_p1 : min_s_6_fu_1592_p3);
assign min_s_8_fu_1878_p3 = ((and_ln55_9_reg_2502[0:0] == 1'b1) ? zext_ln55_4_fu_1875_p1 : min_s_7_reg_2497);
assign min_s_9_fu_1887_p3 = ((and_ln55_11_reg_2515[0:0] == 1'b1) ? zext_ln55_5_fu_1884_p1 : min_s_8_fu_1878_p3);
assign or_ln55_10_fu_1750_p2 = (icmp_ln55_21_fu_1744_p2 | icmp_ln55_20_fu_1738_p2);
assign or_ln55_11_fu_1768_p2 = (icmp_ln55_23_fu_1762_p2 | icmp_ln55_22_fu_1756_p2);
assign or_ln55_12_fu_1839_p2 = (icmp_ln55_25_fu_1833_p2 | icmp_ln55_24_fu_1827_p2);
assign or_ln55_13_fu_1857_p2 = (icmp_ln55_27_fu_1851_p2 | icmp_ln55_26_fu_1845_p2);
assign or_ln55_14_fu_1958_p2 = (icmp_ln55_29_fu_1952_p2 | icmp_ln55_28_fu_1946_p2);
assign or_ln55_15_fu_1976_p2 = (icmp_ln55_31_fu_1970_p2 | icmp_ln55_30_fu_1964_p2);
assign or_ln55_1_fu_1269_p2 = (icmp_ln55_3_fu_1263_p2 | icmp_ln55_2_fu_1257_p2);
assign or_ln55_2_fu_1341_p2 = (icmp_ln55_5_fu_1335_p2 | icmp_ln55_4_fu_1329_p2);
assign or_ln55_3_fu_1359_p2 = (icmp_ln55_7_fu_1353_p2 | icmp_ln55_6_fu_1347_p2);
assign or_ln55_4_fu_1454_p2 = (icmp_ln55_9_fu_1448_p2 | icmp_ln55_8_fu_1442_p2);
assign or_ln55_5_fu_1472_p2 = (icmp_ln55_11_fu_1466_p2 | icmp_ln55_10_fu_1460_p2);
assign or_ln55_6_fu_1567_p2 = (icmp_ln55_13_fu_1561_p2 | icmp_ln55_12_fu_1555_p2);
assign or_ln55_7_fu_1573_p2 = (icmp_ln55_15_reg_2479 | icmp_ln55_14_reg_2474);
assign or_ln55_8_fu_1661_p2 = (icmp_ln55_17_fu_1655_p2 | icmp_ln55_16_fu_1649_p2);
assign or_ln55_9_fu_1679_p2 = (icmp_ln55_19_fu_1673_p2 | icmp_ln55_18_fu_1667_p2);
assign or_ln55_fu_1251_p2 = (icmp_ln55_fu_1239_p2 | icmp_ln55_1_fu_1245_p2);
assign shl_ln2_fu_653_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_1_fu_740_p3 = {{add_ln53_reg_2134}, {4'd0}};
assign shl_ln54_2_fu_760_p3 = {{add_ln53_1_reg_2140}, {4'd0}};
assign shl_ln54_3_fu_891_p3 = {{add_ln53_2_reg_2216}, {4'd0}};
assign shl_ln54_4_fu_911_p3 = {{add_ln53_3_reg_2227}, {4'd0}};
assign shl_ln54_5_fu_1019_p3 = {{add_ln53_4_reg_2303}, {4'd0}};
assign shl_ln54_6_fu_1039_p3 = {{add_ln53_5_reg_2309}, {4'd0}};
assign shl_ln54_7_fu_1140_p3 = {{trunc_ln54_fu_1137_p1}, {4'd0}};
assign tmp_10_fu_1411_p4 = {{bitcast_ln55_4_fu_1407_p1[62:52]}};
assign tmp_11_fu_1428_p4 = {{bitcast_ln55_5_fu_1425_p1[62:52]}};
assign tmp_13_fu_957_p2 = transition_0_q0;
assign tmp_13_fu_957_p4 = transition_1_q0;
assign tmp_13_fu_957_p6 = transition_2_q0;
assign tmp_13_fu_957_p8 = transition_3_q0;
assign tmp_13_fu_957_p9 = 'bx;
assign tmp_14_fu_1541_p4 = {{bitcast_ln55_6_fu_1537_p1[62:52]}};
assign tmp_15_fu_996_p2 = transition_0_q1;
assign tmp_15_fu_996_p4 = transition_1_q1;
assign tmp_15_fu_996_p6 = transition_2_q1;
assign tmp_15_fu_996_p8 = transition_3_q1;
assign tmp_15_fu_996_p9 = 'bx;
assign tmp_16_fu_1075_p2 = transition_0_q0;
assign tmp_16_fu_1075_p4 = transition_1_q0;
assign tmp_16_fu_1075_p6 = transition_2_q0;
assign tmp_16_fu_1075_p8 = transition_3_q0;
assign tmp_16_fu_1075_p9 = 'bx;
assign tmp_17_fu_1114_p2 = transition_0_q1;
assign tmp_17_fu_1114_p4 = transition_1_q1;
assign tmp_17_fu_1114_p6 = transition_2_q1;
assign tmp_17_fu_1114_p8 = transition_3_q1;
assign tmp_17_fu_1114_p9 = 'bx;
assign tmp_18_fu_1177_p2 = transition_0_q1;
assign tmp_18_fu_1177_p4 = transition_1_q1;
assign tmp_18_fu_1177_p6 = transition_2_q1;
assign tmp_18_fu_1177_p8 = transition_3_q1;
assign tmp_18_fu_1177_p9 = 'bx;
assign tmp_19_fu_1501_p4 = {{bitcast_ln55_7_fu_1497_p1[62:52]}};
assign tmp_1_fu_717_p2 = transition_0_q0;
assign tmp_1_fu_717_p4 = transition_1_q0;
assign tmp_1_fu_717_p6 = transition_2_q0;
assign tmp_1_fu_717_p8 = transition_3_q0;
assign tmp_1_fu_717_p9 = 'bx;
assign tmp_21_fu_1618_p4 = {{bitcast_ln55_8_fu_1615_p1[62:52]}};
assign tmp_22_fu_1635_p4 = {{bitcast_ln55_9_fu_1632_p1[62:52]}};
assign tmp_24_fu_1707_p4 = {{bitcast_ln55_10_fu_1703_p1[62:52]}};
assign tmp_25_fu_1724_p4 = {{bitcast_ln55_11_fu_1721_p1[62:52]}};
assign tmp_27_fu_1796_p4 = {{bitcast_ln55_12_fu_1793_p1[62:52]}};
assign tmp_28_fu_1813_p4 = {{bitcast_ln55_13_fu_1810_p1[62:52]}};
assign tmp_2_fu_1208_p4 = {{bitcast_ln55_fu_1204_p1[62:52]}};
assign tmp_31_fu_1915_p4 = {{bitcast_ln55_14_fu_1911_p1[62:52]}};
assign tmp_32_fu_1932_p4 = {{bitcast_ln55_15_fu_1929_p1[62:52]}};
assign tmp_3_fu_1225_p4 = {{bitcast_ln55_1_fu_1222_p1[62:52]}};
assign tmp_5_fu_829_p2 = transition_0_q1;
assign tmp_5_fu_829_p4 = transition_1_q1;
assign tmp_5_fu_829_p6 = transition_2_q1;
assign tmp_5_fu_829_p8 = transition_3_q1;
assign tmp_5_fu_829_p9 = 'bx;
assign tmp_6_fu_1298_p4 = {{bitcast_ln55_2_fu_1294_p1[62:52]}};
assign tmp_7_fu_1315_p4 = {{bitcast_ln55_3_fu_1312_p1[62:52]}};
assign tmp_9_fu_868_p2 = transition_0_q0;
assign tmp_9_fu_868_p4 = transition_1_q0;
assign tmp_9_fu_868_p6 = transition_2_q0;
assign tmp_9_fu_868_p8 = transition_3_q0;
assign tmp_9_fu_868_p9 = 'bx;
assign tmp_s_fu_634_p3 = {{t_1}, {lshr_ln8_2_fu_624_p4}};
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
assign trunc_ln54_fu_1137_p1 = add_ln53_6_reg_2146[5:0];
assign trunc_ln55_10_fu_1717_p1 = bitcast_ln55_10_fu_1703_p1[51:0];
assign trunc_ln55_11_fu_1734_p1 = bitcast_ln55_11_fu_1721_p1[51:0];
assign trunc_ln55_12_fu_1806_p1 = bitcast_ln55_12_fu_1793_p1[51:0];
assign trunc_ln55_13_fu_1823_p1 = bitcast_ln55_13_fu_1810_p1[51:0];
assign trunc_ln55_14_fu_1925_p1 = bitcast_ln55_14_fu_1911_p1[51:0];
assign trunc_ln55_15_fu_1942_p1 = bitcast_ln55_15_fu_1929_p1[51:0];
assign trunc_ln55_1_fu_1235_p1 = bitcast_ln55_1_fu_1222_p1[51:0];
assign trunc_ln55_2_fu_1308_p1 = bitcast_ln55_2_fu_1294_p1[51:0];
assign trunc_ln55_3_fu_1325_p1 = bitcast_ln55_3_fu_1312_p1[51:0];
assign trunc_ln55_4_fu_1421_p1 = bitcast_ln55_4_fu_1407_p1[51:0];
assign trunc_ln55_5_fu_1438_p1 = bitcast_ln55_5_fu_1425_p1[51:0];
assign trunc_ln55_6_fu_1551_p1 = bitcast_ln55_6_fu_1537_p1[51:0];
assign trunc_ln55_7_fu_1511_p1 = bitcast_ln55_7_fu_1497_p1[51:0];
assign trunc_ln55_8_fu_1628_p1 = bitcast_ln55_8_fu_1615_p1[51:0];
assign trunc_ln55_9_fu_1645_p1 = bitcast_ln55_9_fu_1632_p1[51:0];
assign trunc_ln55_fu_1218_p1 = bitcast_ln55_fu_1204_p1[51:0];
assign zext_ln21_fu_620_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_598_p1 = zext_ln52_2;
assign zext_ln54_10_fu_808_p1 = add_ln54_8_fu_803_p2;
assign zext_ln54_1_fu_752_p1 = add_ln54_1_fu_747_p2;
assign zext_ln54_2_fu_772_p1 = add_ln54_2_fu_767_p2;
assign zext_ln54_3_fu_903_p1 = add_ln54_3_fu_898_p2;
assign zext_ln54_4_fu_923_p1 = add_ln54_4_fu_918_p2;
assign zext_ln54_5_fu_1031_p1 = add_ln54_5_fu_1026_p2;
assign zext_ln54_6_fu_1051_p1 = add_ln54_6_fu_1046_p2;
assign zext_ln54_7_fu_1153_p1 = add_ln54_7_fu_1148_p2;
assign zext_ln54_8_fu_642_p1 = tmp_s_fu_634_p3;
assign zext_ln54_9_fu_799_p1 = lshr_ln9_3_fu_790_p4;
assign zext_ln54_fu_667_p1 = add_ln54_fu_661_p2;
assign zext_ln55_1_fu_1397_p1 = add_ln53_reg_2134;
assign zext_ln55_2_fu_1589_p1 = add_ln53_1_reg_2140_pp0_iter1_reg;
assign zext_ln55_3_fu_1605_p1 = add_ln53_2_reg_2216;
assign zext_ln55_4_fu_1875_p1 = add_ln53_3_reg_2227_pp0_iter1_reg;
assign zext_ln55_5_fu_1884_p1 = add_ln53_4_reg_2303_pp0_iter1_reg;
assign zext_ln55_6_fu_1894_p1 = add_ln53_5_reg_2309_pp0_iter1_reg;
assign zext_ln55_7_fu_2000_p1 = trunc_ln54_reg_2380_pp0_iter1_reg;
assign zext_ln55_fu_1380_p1 = s_reg_2069;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_2058[9:6] <= 4'b0000;
end
endmodule 