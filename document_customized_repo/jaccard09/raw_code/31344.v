module ellpack (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nzval_0_address0,nzval_0_ce0,nzval_0_q0,nzval_0_address1,nzval_0_ce1,nzval_0_q1,nzval_1_address0,nzval_1_ce0,nzval_1_q0,nzval_1_address1,nzval_1_ce1,nzval_1_q1,cols_0_address0,cols_0_ce0,cols_0_q0,cols_0_address1,cols_0_ce1,cols_0_q1,cols_1_address0,cols_1_ce0,cols_1_q0,cols_1_address1,cols_1_ce1,cols_1_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_0_q0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0,out_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 10'd1;
parameter    ap_ST_fsm_pp0_stage1 = 10'd2;
parameter    ap_ST_fsm_pp0_stage2 = 10'd4;
parameter    ap_ST_fsm_pp0_stage3 = 10'd8;
parameter    ap_ST_fsm_pp0_stage4 = 10'd16;
parameter    ap_ST_fsm_pp0_stage5 = 10'd32;
parameter    ap_ST_fsm_pp0_stage6 = 10'd64;
parameter    ap_ST_fsm_pp0_stage7 = 10'd128;
parameter    ap_ST_fsm_pp0_stage8 = 10'd256;
parameter    ap_ST_fsm_pp0_stage9 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] nzval_0_address0;
output   nzval_0_ce0;
input  [63:0] nzval_0_q0;
output  [11:0] nzval_0_address1;
output   nzval_0_ce1;
input  [63:0] nzval_0_q1;
output  [11:0] nzval_1_address0;
output   nzval_1_ce0;
input  [63:0] nzval_1_q0;
output  [11:0] nzval_1_address1;
output   nzval_1_ce1;
input  [63:0] nzval_1_q1;
output  [11:0] cols_0_address0;
output   cols_0_ce0;
input  [31:0] cols_0_q0;
output  [11:0] cols_0_address1;
output   cols_0_ce1;
input  [31:0] cols_0_q1;
output  [11:0] cols_1_address0;
output   cols_1_ce0;
input  [31:0] cols_1_q0;
output  [11:0] cols_1_address1;
output   cols_1_ce1;
input  [31:0] cols_1_q1;
output  [7:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [7:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [7:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [7:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [7:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
input  [63:0] out_0_q0;
output  [7:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
input  [63:0] out_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
wire   [0:0] icmp_ln13_fu_1549_p2;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_864;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_868;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [7:0] reg_872;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_876;
reg   [63:0] reg_880;
reg   [7:0] reg_884;
reg   [63:0] reg_888;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] grp_fu_824_p4;
reg   [7:0] reg_892;
reg   [63:0] reg_896;
wire   [7:0] grp_fu_844_p4;
reg   [7:0] reg_900;
wire   [63:0] grp_fu_808_p2;
reg   [63:0] reg_904;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_812_p2;
reg   [63:0] reg_909;
reg   [8:0] i1_load_reg_1675;
reg   [7:0] out_0_addr_reg_1680;
reg   [7:0] out_0_addr_reg_1680_pp0_iter1_reg;
reg   [7:0] out_0_addr_reg_1680_pp0_iter2_reg;
reg   [7:0] out_0_addr_reg_1680_pp0_iter3_reg;
reg   [7:0] out_0_addr_reg_1680_pp0_iter4_reg;
reg   [7:0] out_0_addr_reg_1680_pp0_iter5_reg;
reg   [7:0] out_0_addr_reg_1680_pp0_iter6_reg;
reg   [7:0] out_0_addr_reg_1680_pp0_iter7_reg;
reg   [7:0] out_0_addr_reg_1680_pp0_iter8_reg;
reg   [7:0] out_0_addr_reg_1680_pp0_iter9_reg;
wire   [11:0] add_ln14_fu_962_p2;
reg   [11:0] add_ln14_reg_1685;
reg   [10:0] tmp_reg_1712;
wire   [11:0] add_ln14_1_fu_1010_p2;
reg   [11:0] add_ln14_1_reg_1717;
reg   [7:0] out_1_addr_reg_1745;
reg   [7:0] out_1_addr_reg_1745_pp0_iter1_reg;
reg   [7:0] out_1_addr_reg_1745_pp0_iter2_reg;
reg   [7:0] out_1_addr_reg_1745_pp0_iter3_reg;
reg   [7:0] out_1_addr_reg_1745_pp0_iter4_reg;
reg   [7:0] out_1_addr_reg_1745_pp0_iter5_reg;
reg   [7:0] out_1_addr_reg_1745_pp0_iter6_reg;
reg   [7:0] out_1_addr_reg_1745_pp0_iter7_reg;
reg   [7:0] out_1_addr_reg_1745_pp0_iter8_reg;
reg   [7:0] out_1_addr_reg_1745_pp0_iter9_reg;
reg   [63:0] out_0_load_reg_1750;
wire   [0:0] trunc_ln16_fu_1024_p1;
reg   [0:0] trunc_ln16_reg_1755;
wire   [0:0] trunc_ln16_1_fu_1034_p1;
reg   [0:0] trunc_ln16_1_reg_1770;
wire   [0:0] trunc_ln16_10_fu_1053_p1;
reg   [0:0] trunc_ln16_10_reg_1795;
wire   [0:0] trunc_ln16_11_fu_1063_p1;
reg   [0:0] trunc_ln16_11_reg_1800;
reg   [63:0] out_1_load_reg_1835;
wire   [63:0] select_ln16_fu_1080_p3;
reg   [63:0] select_ln16_reg_1840;
wire   [0:0] trunc_ln16_2_fu_1093_p1;
reg   [0:0] trunc_ln16_2_reg_1855;
reg   [63:0] nzval_1_load_1_reg_1860;
wire   [0:0] trunc_ln16_3_fu_1097_p1;
reg   [0:0] trunc_ln16_3_reg_1865;
wire   [0:0] trunc_ln16_12_fu_1120_p1;
reg   [0:0] trunc_ln16_12_reg_1890;
reg   [63:0] nzval_1_load_6_reg_1895;
wire   [0:0] trunc_ln16_13_fu_1124_p1;
reg   [0:0] trunc_ln16_13_reg_1900;
wire   [63:0] select_ln16_10_fu_1141_p3;
reg   [63:0] select_ln16_10_reg_1925;
wire   [63:0] bitcast_ln16_fu_1148_p1;
wire   [63:0] bitcast_ln16_1_fu_1153_p1;
wire   [63:0] select_ln16_1_fu_1157_p3;
reg   [63:0] select_ln16_1_reg_1950;
wire   [0:0] trunc_ln16_4_fu_1170_p1;
reg   [0:0] trunc_ln16_4_reg_1965;
reg   [63:0] nzval_1_load_2_reg_1970;
wire   [0:0] trunc_ln16_5_fu_1174_p1;
reg   [0:0] trunc_ln16_5_reg_1975;
reg   [7:0] lshr_ln16_5_reg_1980;
wire   [11:0] add_ln16_2_fu_1191_p2;
reg   [11:0] add_ln16_2_reg_2005;
wire   [63:0] bitcast_ln16_20_fu_1196_p1;
wire   [0:0] trunc_ln16_14_fu_1207_p1;
reg   [0:0] trunc_ln16_14_reg_2015;
reg   [63:0] nzval_1_load_7_reg_2020;
wire   [0:0] trunc_ln16_15_fu_1211_p1;
reg   [0:0] trunc_ln16_15_reg_2025;
reg   [7:0] lshr_ln16_14_reg_2030;
wire   [11:0] add_ln16_6_fu_1228_p2;
reg   [11:0] add_ln16_6_reg_2055;
wire   [63:0] bitcast_ln16_30_fu_1233_p1;
wire   [63:0] select_ln16_11_fu_1237_p3;
reg   [63:0] select_ln16_11_reg_2065;
wire   [63:0] bitcast_ln16_2_fu_1244_p1;
wire   [63:0] bitcast_ln16_3_fu_1249_p1;
wire   [63:0] select_ln16_2_fu_1253_p3;
reg   [63:0] select_ln16_2_reg_2090;
reg   [63:0] nzval_0_load_3_reg_2105;
wire   [0:0] trunc_ln16_6_fu_1266_p1;
reg   [0:0] trunc_ln16_6_reg_2110;
reg   [7:0] lshr_ln16_6_reg_2115;
wire   [0:0] trunc_ln16_7_fu_1270_p1;
reg   [0:0] trunc_ln16_7_reg_2120;
wire   [63:0] bitcast_ln16_21_fu_1281_p1;
reg   [63:0] nzval_0_load_8_reg_2150;
wire   [0:0] trunc_ln16_16_fu_1292_p1;
reg   [0:0] trunc_ln16_16_reg_2155;
reg   [7:0] lshr_ln16_15_reg_2160;
wire   [0:0] trunc_ln16_17_fu_1296_p1;
reg   [0:0] trunc_ln16_17_reg_2165;
wire   [63:0] bitcast_ln16_31_fu_1307_p1;
wire   [63:0] select_ln16_12_fu_1311_p3;
reg   [63:0] select_ln16_12_reg_2195;
wire   [63:0] bitcast_ln16_4_fu_1318_p1;
wire   [63:0] bitcast_ln16_5_fu_1323_p1;
wire   [63:0] select_ln16_3_fu_1327_p3;
reg   [63:0] select_ln16_3_reg_2220;
wire   [0:0] trunc_ln16_8_fu_1340_p1;
reg   [0:0] trunc_ln16_8_reg_2235;
reg   [63:0] nzval_1_load_4_reg_2240;
wire   [0:0] trunc_ln16_9_fu_1344_p1;
reg   [0:0] trunc_ln16_9_reg_2245;
reg   [7:0] lshr_ln16_9_reg_2250;
wire   [63:0] bitcast_ln16_22_fu_1348_p1;
wire   [0:0] trunc_ln16_18_fu_1359_p1;
reg   [0:0] trunc_ln16_18_reg_2260;
reg   [63:0] nzval_1_load_9_reg_2265;
wire   [0:0] trunc_ln16_19_fu_1363_p1;
reg   [0:0] trunc_ln16_19_reg_2270;
reg   [7:0] lshr_ln16_18_reg_2275;
wire   [63:0] bitcast_ln16_32_fu_1367_p1;
wire   [63:0] select_ln16_13_fu_1371_p3;
reg   [63:0] select_ln16_13_reg_2285;
wire   [63:0] bitcast_ln16_6_fu_1378_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln16_7_fu_1382_p1;
wire   [63:0] select_ln16_4_fu_1386_p3;
reg   [63:0] select_ln16_4_reg_2310;
wire   [63:0] bitcast_ln16_23_fu_1398_p1;
wire   [63:0] bitcast_ln16_33_fu_1407_p1;
wire   [63:0] select_ln16_14_fu_1411_p3;
reg   [63:0] select_ln16_14_reg_2335;
wire   [63:0] bitcast_ln16_8_fu_1418_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln16_9_fu_1423_p1;
wire   [63:0] select_ln16_5_fu_1427_p3;
reg   [63:0] select_ln16_5_reg_2360;
wire   [63:0] bitcast_ln16_24_fu_1439_p1;
wire   [63:0] bitcast_ln16_34_fu_1449_p1;
wire   [63:0] select_ln16_15_fu_1453_p3;
reg   [63:0] select_ln16_15_reg_2385;
wire   [63:0] bitcast_ln16_10_fu_1460_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln16_11_fu_1464_p1;
wire   [63:0] select_ln16_6_fu_1468_p3;
reg   [63:0] select_ln16_6_reg_2410;
wire   [63:0] bitcast_ln16_25_fu_1481_p1;
wire   [63:0] bitcast_ln16_35_fu_1491_p1;
wire   [63:0] select_ln16_16_fu_1495_p3;
reg   [63:0] select_ln16_16_reg_2435;
wire   [63:0] grp_fu_816_p2;
reg   [63:0] Si_reg_2450;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] bitcast_ln16_12_fu_1502_p1;
wire   [63:0] bitcast_ln16_13_fu_1506_p1;
wire   [63:0] select_ln16_7_fu_1510_p3;
reg   [63:0] select_ln16_7_reg_2465;
wire   [63:0] bitcast_ln16_26_fu_1523_p1;
wire   [63:0] grp_fu_820_p2;
reg   [63:0] Si_20_reg_2485;
wire   [63:0] bitcast_ln16_36_fu_1533_p1;
wire   [63:0] select_ln16_17_fu_1537_p3;
reg   [63:0] select_ln16_17_reg_2495;
reg   [0:0] icmp_ln13_reg_2510;
reg   [0:0] icmp_ln13_reg_2510_pp0_iter1_reg;
reg   [0:0] icmp_ln13_reg_2510_pp0_iter2_reg;
reg   [0:0] icmp_ln13_reg_2510_pp0_iter3_reg;
reg   [0:0] icmp_ln13_reg_2510_pp0_iter4_reg;
reg   [0:0] icmp_ln13_reg_2510_pp0_iter5_reg;
reg   [0:0] icmp_ln13_reg_2510_pp0_iter6_reg;
reg   [0:0] icmp_ln13_reg_2510_pp0_iter7_reg;
reg   [0:0] icmp_ln13_reg_2510_pp0_iter8_reg;
wire   [63:0] sum_fu_1560_p1;
reg   [63:0] Si_1_reg_2519;
wire   [63:0] bitcast_ln16_14_fu_1564_p1;
wire   [63:0] bitcast_ln16_15_fu_1569_p1;
wire   [63:0] select_ln16_8_fu_1573_p3;
reg   [63:0] select_ln16_8_reg_2534;
wire   [63:0] bitcast_ln16_27_fu_1585_p1;
reg   [63:0] Si_10_reg_2554;
wire   [63:0] bitcast_ln16_37_fu_1595_p1;
wire   [63:0] select_ln16_18_fu_1599_p3;
reg   [63:0] select_ln16_18_reg_2564;
wire   [63:0] sum_22_fu_1606_p1;
reg   [63:0] Si_2_reg_2584;
reg   [63:0] Si_2_reg_2584_pp0_iter2_reg;
wire   [63:0] bitcast_ln16_16_fu_1610_p1;
wire   [63:0] bitcast_ln16_17_fu_1615_p1;
wire   [63:0] select_ln16_9_fu_1619_p3;
reg   [63:0] select_ln16_9_reg_2599;
wire   [63:0] bitcast_ln16_28_fu_1626_p1;
reg   [63:0] Si_11_reg_2609;
reg   [63:0] Si_11_reg_2609_pp0_iter2_reg;
wire   [63:0] bitcast_ln16_38_fu_1631_p1;
wire   [63:0] select_ln16_19_fu_1635_p3;
reg   [63:0] select_ln16_19_reg_2619;
reg   [63:0] Si_3_reg_2624;
reg   [63:0] Si_3_reg_2624_pp0_iter2_reg;
reg   [63:0] Si_3_reg_2624_pp0_iter3_reg;
wire   [63:0] bitcast_ln16_18_fu_1642_p1;
wire   [63:0] bitcast_ln16_19_fu_1646_p1;
wire   [63:0] bitcast_ln16_29_fu_1650_p1;
reg   [63:0] Si_12_reg_2644;
reg   [63:0] Si_12_reg_2644_pp0_iter2_reg;
reg   [63:0] Si_12_reg_2644_pp0_iter3_reg;
wire   [63:0] bitcast_ln16_39_fu_1654_p1;
reg   [63:0] Si_4_reg_2654;
reg   [63:0] Si_4_reg_2654_pp0_iter2_reg;
reg   [63:0] Si_4_reg_2654_pp0_iter3_reg;
reg   [63:0] Si_13_reg_2659;
reg   [63:0] Si_13_reg_2659_pp0_iter2_reg;
reg   [63:0] Si_13_reg_2659_pp0_iter3_reg;
reg   [63:0] Si_5_reg_2664;
reg   [63:0] Si_5_reg_2664_pp0_iter2_reg;
reg   [63:0] Si_5_reg_2664_pp0_iter3_reg;
reg   [63:0] Si_5_reg_2664_pp0_iter4_reg;
reg   [63:0] Si_14_reg_2669;
reg   [63:0] Si_14_reg_2669_pp0_iter2_reg;
reg   [63:0] Si_14_reg_2669_pp0_iter3_reg;
reg   [63:0] Si_14_reg_2669_pp0_iter4_reg;
reg   [63:0] Si_6_reg_2674;
reg   [63:0] Si_6_reg_2674_pp0_iter2_reg;
reg   [63:0] Si_6_reg_2674_pp0_iter3_reg;
reg   [63:0] Si_6_reg_2674_pp0_iter4_reg;
reg   [63:0] Si_6_reg_2674_pp0_iter5_reg;
reg   [63:0] Si_15_reg_2679;
reg   [63:0] Si_15_reg_2679_pp0_iter2_reg;
reg   [63:0] Si_15_reg_2679_pp0_iter3_reg;
reg   [63:0] Si_15_reg_2679_pp0_iter4_reg;
reg   [63:0] Si_15_reg_2679_pp0_iter5_reg;
reg   [63:0] Si_7_reg_2684;
reg   [63:0] Si_7_reg_2684_pp0_iter2_reg;
reg   [63:0] Si_7_reg_2684_pp0_iter3_reg;
reg   [63:0] Si_7_reg_2684_pp0_iter4_reg;
reg   [63:0] Si_7_reg_2684_pp0_iter5_reg;
reg   [63:0] Si_7_reg_2684_pp0_iter6_reg;
reg   [63:0] Si_16_reg_2689;
reg   [63:0] Si_16_reg_2689_pp0_iter2_reg;
reg   [63:0] Si_16_reg_2689_pp0_iter3_reg;
reg   [63:0] Si_16_reg_2689_pp0_iter4_reg;
reg   [63:0] Si_16_reg_2689_pp0_iter5_reg;
reg   [63:0] Si_16_reg_2689_pp0_iter6_reg;
reg   [63:0] sum_1_reg_2694;
reg   [63:0] Si_8_reg_2699;
reg   [63:0] Si_8_reg_2699_pp0_iter2_reg;
reg   [63:0] Si_8_reg_2699_pp0_iter3_reg;
reg   [63:0] Si_8_reg_2699_pp0_iter4_reg;
reg   [63:0] Si_8_reg_2699_pp0_iter5_reg;
reg   [63:0] Si_8_reg_2699_pp0_iter6_reg;
reg   [63:0] Si_17_reg_2704;
reg   [63:0] Si_17_reg_2704_pp0_iter2_reg;
reg   [63:0] Si_17_reg_2704_pp0_iter3_reg;
reg   [63:0] Si_17_reg_2704_pp0_iter4_reg;
reg   [63:0] Si_17_reg_2704_pp0_iter5_reg;
reg   [63:0] Si_17_reg_2704_pp0_iter6_reg;
reg   [63:0] sum_23_reg_2709;
reg   [63:0] Si_9_reg_2714;
reg   [63:0] Si_9_reg_2714_pp0_iter2_reg;
reg   [63:0] Si_9_reg_2714_pp0_iter3_reg;
reg   [63:0] Si_9_reg_2714_pp0_iter4_reg;
reg   [63:0] Si_9_reg_2714_pp0_iter5_reg;
reg   [63:0] Si_9_reg_2714_pp0_iter6_reg;
reg   [63:0] Si_9_reg_2714_pp0_iter7_reg;
reg   [63:0] Si_18_reg_2719;
reg   [63:0] Si_18_reg_2719_pp0_iter2_reg;
reg   [63:0] Si_18_reg_2719_pp0_iter3_reg;
reg   [63:0] Si_18_reg_2719_pp0_iter4_reg;
reg   [63:0] Si_18_reg_2719_pp0_iter5_reg;
reg   [63:0] Si_18_reg_2719_pp0_iter6_reg;
reg   [63:0] Si_18_reg_2719_pp0_iter7_reg;
reg   [63:0] sum_2_reg_2724;
reg   [63:0] sum_11_reg_2729;
reg   [63:0] sum_3_reg_2734;
reg   [63:0] sum_12_reg_2739;
reg   [63:0] sum_5_reg_2744;
reg   [63:0] sum_14_reg_2749;
reg   [63:0] sum_6_reg_2754;
reg   [63:0] sum_15_reg_2759;
reg   [63:0] sum_7_reg_2764;
reg   [63:0] sum_16_reg_2769;
reg   [63:0] sum_8_reg_2774;
reg   [63:0] sum_17_reg_2779;
reg   [63:0] sum_9_reg_2784;
reg   [63:0] sum_18_reg_2789;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln10_fu_932_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_20_fu_968_p1;
wire   [63:0] zext_ln16_25_fu_1016_p1;
wire   [63:0] zext_ln16_fu_1028_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_21_fu_1045_p1;
wire   [63:0] zext_ln16_26_fu_1072_p1;
wire   [63:0] zext_ln16_10_fu_1057_p1;
wire   [63:0] zext_ln16_1_fu_1087_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln16_22_fu_1106_p1;
wire   [63:0] zext_ln16_27_fu_1133_p1;
wire   [63:0] zext_ln16_11_fu_1114_p1;
wire   [63:0] zext_ln16_2_fu_1164_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln16_23_fu_1183_p1;
wire   [63:0] zext_ln16_28_fu_1220_p1;
wire   [63:0] zext_ln16_12_fu_1201_p1;
wire   [63:0] zext_ln16_3_fu_1260_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln16_24_fu_1274_p1;
wire   [63:0] zext_ln16_29_fu_1300_p1;
wire   [63:0] zext_ln16_13_fu_1286_p1;
wire   [63:0] zext_ln16_4_fu_1334_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln16_14_fu_1353_p1;
wire   [63:0] zext_ln16_5_fu_1393_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln16_15_fu_1402_p1;
wire   [63:0] zext_ln16_6_fu_1434_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln16_16_fu_1444_p1;
wire   [63:0] zext_ln16_7_fu_1475_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln16_17_fu_1485_p1;
wire   [63:0] zext_ln16_8_fu_1517_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln16_18_fu_1527_p1;
wire   [63:0] zext_ln16_9_fu_1580_p1;
wire   [63:0] zext_ln16_19_fu_1590_p1;
reg   [8:0] i1_fu_84;
wire   [8:0] i_fu_1544_p2;
wire    ap_loop_init;
reg   [8:0] ap_sig_allocacmp_i1_load;
reg    out_0_ce0_local;
reg   [7:0] out_0_address0_local;
reg    out_0_we0_local;
wire   [63:0] bitcast_ln19_fu_1658_p1;
reg    nzval_0_ce1_local;
reg   [11:0] nzval_0_address1_local;
reg    nzval_0_ce0_local;
reg   [11:0] nzval_0_address0_local;
reg    cols_0_ce1_local;
reg   [11:0] cols_0_address1_local;
reg    cols_0_ce0_local;
reg   [11:0] cols_0_address0_local;
reg    nzval_1_ce1_local;
reg   [11:0] nzval_1_address1_local;
reg    nzval_1_ce0_local;
reg   [11:0] nzval_1_address0_local;
reg    cols_1_ce1_local;
reg   [11:0] cols_1_address1_local;
reg    cols_1_ce0_local;
reg   [11:0] cols_1_address0_local;
reg    out_1_ce0_local;
reg   [7:0] out_1_address0_local;
reg    out_1_we0_local;
wire   [63:0] bitcast_ln19_1_fu_1663_p1;
reg    vec_0_ce1_local;
reg   [7:0] vec_0_address1_local;
reg    vec_0_ce0_local;
reg   [7:0] vec_0_address0_local;
reg    vec_1_ce1_local;
reg   [7:0] vec_1_address1_local;
reg    vec_1_ce0_local;
reg   [7:0] vec_1_address0_local;
reg   [63:0] grp_fu_808_p0;
reg   [63:0] grp_fu_808_p1;
reg   [63:0] grp_fu_812_p0;
reg   [63:0] grp_fu_812_p1;
reg   [63:0] grp_fu_816_p0;
reg   [63:0] grp_fu_816_p1;
reg   [63:0] grp_fu_820_p0;
reg   [63:0] grp_fu_820_p1;
wire   [7:0] lshr_ln_fu_922_p4;
wire   [10:0] tmp_1_fu_938_p3;
wire   [8:0] tmp_2_fu_950_p3;
wire   [11:0] zext_ln14_1_fu_946_p1;
wire   [11:0] zext_ln14_2_fu_958_p1;
wire   [8:0] or_ln1_fu_986_p3;
wire   [10:0] tmp_3_fu_998_p3;
wire   [11:0] zext_ln14_3_fu_1006_p1;
wire   [11:0] zext_ln14_fu_994_p1;
wire   [11:0] or_ln_fu_1038_p3;
wire   [11:0] add_ln16_3_fu_1067_p2;
wire   [11:0] add_ln16_fu_1101_p2;
wire   [11:0] add_ln16_4_fu_1128_p2;
wire   [11:0] add_ln16_1_fu_1178_p2;
wire   [11:0] add_ln16_5_fu_1215_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter9_stage1;
reg    ap_idle_pp0_0to8;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [9:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to9;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1577;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i1_fu_84 = 9'd0;
#0 ap_done_reg = 1'b0;
end
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_808_p0),.din1(grp_fu_808_p1),.ce(1'b1),.dout(grp_fu_808_p2));
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_812_p0),.din1(grp_fu_812_p1),.ce(1'b1),.dout(grp_fu_812_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_816_p0),.din1(grp_fu_816_p1),.ce(1'b1),.dout(grp_fu_816_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_820_p0),.din1(grp_fu_820_p1),.ce(1'b1),.dout(grp_fu_820_p2));
ellpack_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1577)) begin
            i1_fu_84 <= 9'd0;
        end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            i1_fu_84 <= i_fu_1544_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Si_10_reg_2554 <= grp_fu_820_p2;
        Si_1_reg_2519 <= grp_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        Si_11_reg_2609 <= grp_fu_820_p2;
        Si_2_reg_2584 <= grp_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        Si_11_reg_2609_pp0_iter2_reg <= Si_11_reg_2609;
        Si_2_reg_2584_pp0_iter2_reg <= Si_2_reg_2584;
        select_ln16_19_reg_2619 <= select_ln16_19_fu_1635_p3;
        select_ln16_9_reg_2599 <= select_ln16_9_fu_1619_p3;
        trunc_ln16_10_reg_1795 <= trunc_ln16_10_fu_1053_p1;
        trunc_ln16_11_reg_1800 <= trunc_ln16_11_fu_1063_p1;
        trunc_ln16_1_reg_1770 <= trunc_ln16_1_fu_1034_p1;
        trunc_ln16_reg_1755 <= trunc_ln16_fu_1024_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        Si_12_reg_2644 <= grp_fu_820_p2;
        Si_3_reg_2624 <= grp_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        Si_12_reg_2644_pp0_iter2_reg <= Si_12_reg_2644;
        Si_12_reg_2644_pp0_iter3_reg <= Si_12_reg_2644_pp0_iter2_reg;
        Si_3_reg_2624_pp0_iter2_reg <= Si_3_reg_2624;
        Si_3_reg_2624_pp0_iter3_reg <= Si_3_reg_2624_pp0_iter2_reg;
        select_ln16_10_reg_1925 <= select_ln16_10_fu_1141_p3;
        select_ln16_reg_1840 <= select_ln16_fu_1080_p3;
        trunc_ln16_12_reg_1890 <= trunc_ln16_12_fu_1120_p1;
        trunc_ln16_13_reg_1900 <= trunc_ln16_13_fu_1124_p1;
        trunc_ln16_2_reg_1855 <= trunc_ln16_2_fu_1093_p1;
        trunc_ln16_3_reg_1865 <= trunc_ln16_3_fu_1097_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        Si_13_reg_2659 <= grp_fu_820_p2;
        Si_4_reg_2654 <= grp_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        Si_13_reg_2659_pp0_iter2_reg <= Si_13_reg_2659;
        Si_13_reg_2659_pp0_iter3_reg <= Si_13_reg_2659_pp0_iter2_reg;
        Si_4_reg_2654_pp0_iter2_reg <= Si_4_reg_2654;
        Si_4_reg_2654_pp0_iter3_reg <= Si_4_reg_2654_pp0_iter2_reg;
        add_ln16_2_reg_2005[11 : 1] <= add_ln16_2_fu_1191_p2[11 : 1];
        add_ln16_6_reg_2055[11 : 1] <= add_ln16_6_fu_1228_p2[11 : 1];
        select_ln16_11_reg_2065 <= select_ln16_11_fu_1237_p3;
        select_ln16_1_reg_1950 <= select_ln16_1_fu_1157_p3;
        trunc_ln16_14_reg_2015 <= trunc_ln16_14_fu_1207_p1;
        trunc_ln16_15_reg_2025 <= trunc_ln16_15_fu_1211_p1;
        trunc_ln16_4_reg_1965 <= trunc_ln16_4_fu_1170_p1;
        trunc_ln16_5_reg_1975 <= trunc_ln16_5_fu_1174_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        Si_14_reg_2669 <= grp_fu_820_p2;
        Si_5_reg_2664 <= grp_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        Si_14_reg_2669_pp0_iter2_reg <= Si_14_reg_2669;
        Si_14_reg_2669_pp0_iter3_reg <= Si_14_reg_2669_pp0_iter2_reg;
        Si_14_reg_2669_pp0_iter4_reg <= Si_14_reg_2669_pp0_iter3_reg;
        Si_5_reg_2664_pp0_iter2_reg <= Si_5_reg_2664;
        Si_5_reg_2664_pp0_iter3_reg <= Si_5_reg_2664_pp0_iter2_reg;
        Si_5_reg_2664_pp0_iter4_reg <= Si_5_reg_2664_pp0_iter3_reg;
        select_ln16_12_reg_2195 <= select_ln16_12_fu_1311_p3;
        select_ln16_2_reg_2090 <= select_ln16_2_fu_1253_p3;
        trunc_ln16_16_reg_2155 <= trunc_ln16_16_fu_1292_p1;
        trunc_ln16_17_reg_2165 <= trunc_ln16_17_fu_1296_p1;
        trunc_ln16_6_reg_2110 <= trunc_ln16_6_fu_1266_p1;
        trunc_ln16_7_reg_2120 <= trunc_ln16_7_fu_1270_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        Si_15_reg_2679 <= grp_fu_820_p2;
        Si_6_reg_2674 <= grp_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        Si_15_reg_2679_pp0_iter2_reg <= Si_15_reg_2679;
        Si_15_reg_2679_pp0_iter3_reg <= Si_15_reg_2679_pp0_iter2_reg;
        Si_15_reg_2679_pp0_iter4_reg <= Si_15_reg_2679_pp0_iter3_reg;
        Si_15_reg_2679_pp0_iter5_reg <= Si_15_reg_2679_pp0_iter4_reg;
        Si_6_reg_2674_pp0_iter2_reg <= Si_6_reg_2674;
        Si_6_reg_2674_pp0_iter3_reg <= Si_6_reg_2674_pp0_iter2_reg;
        Si_6_reg_2674_pp0_iter4_reg <= Si_6_reg_2674_pp0_iter3_reg;
        Si_6_reg_2674_pp0_iter5_reg <= Si_6_reg_2674_pp0_iter4_reg;
        select_ln16_13_reg_2285 <= select_ln16_13_fu_1371_p3;
        select_ln16_3_reg_2220 <= select_ln16_3_fu_1327_p3;
        trunc_ln16_18_reg_2260 <= trunc_ln16_18_fu_1359_p1;
        trunc_ln16_19_reg_2270 <= trunc_ln16_19_fu_1363_p1;
        trunc_ln16_8_reg_2235 <= trunc_ln16_8_fu_1340_p1;
        trunc_ln16_9_reg_2245 <= trunc_ln16_9_fu_1344_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        Si_16_reg_2689 <= grp_fu_820_p2;
        Si_7_reg_2684 <= grp_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        Si_16_reg_2689_pp0_iter2_reg <= Si_16_reg_2689;
        Si_16_reg_2689_pp0_iter3_reg <= Si_16_reg_2689_pp0_iter2_reg;
        Si_16_reg_2689_pp0_iter4_reg <= Si_16_reg_2689_pp0_iter3_reg;
        Si_16_reg_2689_pp0_iter5_reg <= Si_16_reg_2689_pp0_iter4_reg;
        Si_16_reg_2689_pp0_iter6_reg <= Si_16_reg_2689_pp0_iter5_reg;
        Si_7_reg_2684_pp0_iter2_reg <= Si_7_reg_2684;
        Si_7_reg_2684_pp0_iter3_reg <= Si_7_reg_2684_pp0_iter2_reg;
        Si_7_reg_2684_pp0_iter4_reg <= Si_7_reg_2684_pp0_iter3_reg;
        Si_7_reg_2684_pp0_iter5_reg <= Si_7_reg_2684_pp0_iter4_reg;
        Si_7_reg_2684_pp0_iter6_reg <= Si_7_reg_2684_pp0_iter5_reg;
        select_ln16_14_reg_2335 <= select_ln16_14_fu_1411_p3;
        select_ln16_4_reg_2310 <= select_ln16_4_fu_1386_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        Si_17_reg_2704 <= grp_fu_820_p2;
        Si_8_reg_2699 <= grp_fu_816_p2;
        sum_1_reg_2694 <= grp_fu_808_p2;
        sum_23_reg_2709 <= grp_fu_812_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        Si_17_reg_2704_pp0_iter2_reg <= Si_17_reg_2704;
        Si_17_reg_2704_pp0_iter3_reg <= Si_17_reg_2704_pp0_iter2_reg;
        Si_17_reg_2704_pp0_iter4_reg <= Si_17_reg_2704_pp0_iter3_reg;
        Si_17_reg_2704_pp0_iter5_reg <= Si_17_reg_2704_pp0_iter4_reg;
        Si_17_reg_2704_pp0_iter6_reg <= Si_17_reg_2704_pp0_iter5_reg;
        Si_8_reg_2699_pp0_iter2_reg <= Si_8_reg_2699;
        Si_8_reg_2699_pp0_iter3_reg <= Si_8_reg_2699_pp0_iter2_reg;
        Si_8_reg_2699_pp0_iter4_reg <= Si_8_reg_2699_pp0_iter3_reg;
        Si_8_reg_2699_pp0_iter5_reg <= Si_8_reg_2699_pp0_iter4_reg;
        Si_8_reg_2699_pp0_iter6_reg <= Si_8_reg_2699_pp0_iter5_reg;
        select_ln16_15_reg_2385 <= select_ln16_15_fu_1453_p3;
        select_ln16_5_reg_2360 <= select_ln16_5_fu_1427_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        Si_18_reg_2719 <= grp_fu_820_p2;
        Si_9_reg_2714 <= grp_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        Si_18_reg_2719_pp0_iter2_reg <= Si_18_reg_2719;
        Si_18_reg_2719_pp0_iter3_reg <= Si_18_reg_2719_pp0_iter2_reg;
        Si_18_reg_2719_pp0_iter4_reg <= Si_18_reg_2719_pp0_iter3_reg;
        Si_18_reg_2719_pp0_iter5_reg <= Si_18_reg_2719_pp0_iter4_reg;
        Si_18_reg_2719_pp0_iter6_reg <= Si_18_reg_2719_pp0_iter5_reg;
        Si_18_reg_2719_pp0_iter7_reg <= Si_18_reg_2719_pp0_iter6_reg;
        Si_9_reg_2714_pp0_iter2_reg <= Si_9_reg_2714;
        Si_9_reg_2714_pp0_iter3_reg <= Si_9_reg_2714_pp0_iter2_reg;
        Si_9_reg_2714_pp0_iter4_reg <= Si_9_reg_2714_pp0_iter3_reg;
        Si_9_reg_2714_pp0_iter5_reg <= Si_9_reg_2714_pp0_iter4_reg;
        Si_9_reg_2714_pp0_iter6_reg <= Si_9_reg_2714_pp0_iter5_reg;
        Si_9_reg_2714_pp0_iter7_reg <= Si_9_reg_2714_pp0_iter6_reg;
        select_ln16_16_reg_2435 <= select_ln16_16_fu_1495_p3;
        select_ln16_6_reg_2410 <= select_ln16_6_fu_1468_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        Si_20_reg_2485 <= grp_fu_820_p2;
        Si_reg_2450 <= grp_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln14_1_reg_1717[11 : 1] <= add_ln14_1_fu_1010_p2[11 : 1];
        add_ln14_reg_1685[11 : 1] <= add_ln14_fu_962_p2[11 : 1];
        i1_load_reg_1675 <= ap_sig_allocacmp_i1_load;
        out_0_addr_reg_1680 <= zext_ln10_fu_932_p1;
        out_0_addr_reg_1680_pp0_iter1_reg <= out_0_addr_reg_1680;
        out_0_addr_reg_1680_pp0_iter2_reg <= out_0_addr_reg_1680_pp0_iter1_reg;
        out_0_addr_reg_1680_pp0_iter3_reg <= out_0_addr_reg_1680_pp0_iter2_reg;
        out_0_addr_reg_1680_pp0_iter4_reg <= out_0_addr_reg_1680_pp0_iter3_reg;
        out_0_addr_reg_1680_pp0_iter5_reg <= out_0_addr_reg_1680_pp0_iter4_reg;
        out_0_addr_reg_1680_pp0_iter6_reg <= out_0_addr_reg_1680_pp0_iter5_reg;
        out_0_addr_reg_1680_pp0_iter7_reg <= out_0_addr_reg_1680_pp0_iter6_reg;
        out_0_addr_reg_1680_pp0_iter8_reg <= out_0_addr_reg_1680_pp0_iter7_reg;
        out_0_addr_reg_1680_pp0_iter9_reg <= out_0_addr_reg_1680_pp0_iter8_reg;
        out_1_addr_reg_1745 <= zext_ln10_fu_932_p1;
        out_1_addr_reg_1745_pp0_iter1_reg <= out_1_addr_reg_1745;
        out_1_addr_reg_1745_pp0_iter2_reg <= out_1_addr_reg_1745_pp0_iter1_reg;
        out_1_addr_reg_1745_pp0_iter3_reg <= out_1_addr_reg_1745_pp0_iter2_reg;
        out_1_addr_reg_1745_pp0_iter4_reg <= out_1_addr_reg_1745_pp0_iter3_reg;
        out_1_addr_reg_1745_pp0_iter5_reg <= out_1_addr_reg_1745_pp0_iter4_reg;
        out_1_addr_reg_1745_pp0_iter6_reg <= out_1_addr_reg_1745_pp0_iter5_reg;
        out_1_addr_reg_1745_pp0_iter7_reg <= out_1_addr_reg_1745_pp0_iter6_reg;
        out_1_addr_reg_1745_pp0_iter8_reg <= out_1_addr_reg_1745_pp0_iter7_reg;
        out_1_addr_reg_1745_pp0_iter9_reg <= out_1_addr_reg_1745_pp0_iter8_reg;
        select_ln16_18_reg_2564 <= select_ln16_18_fu_1599_p3;
        select_ln16_8_reg_2534 <= select_ln16_8_fu_1573_p3;
        tmp_reg_1712 <= {{add_ln14_fu_962_p2[11:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        icmp_ln13_reg_2510 <= icmp_ln13_fu_1549_p2;
        icmp_ln13_reg_2510_pp0_iter1_reg <= icmp_ln13_reg_2510;
        icmp_ln13_reg_2510_pp0_iter2_reg <= icmp_ln13_reg_2510_pp0_iter1_reg;
        icmp_ln13_reg_2510_pp0_iter3_reg <= icmp_ln13_reg_2510_pp0_iter2_reg;
        icmp_ln13_reg_2510_pp0_iter4_reg <= icmp_ln13_reg_2510_pp0_iter3_reg;
        icmp_ln13_reg_2510_pp0_iter5_reg <= icmp_ln13_reg_2510_pp0_iter4_reg;
        icmp_ln13_reg_2510_pp0_iter6_reg <= icmp_ln13_reg_2510_pp0_iter5_reg;
        icmp_ln13_reg_2510_pp0_iter7_reg <= icmp_ln13_reg_2510_pp0_iter6_reg;
        icmp_ln13_reg_2510_pp0_iter8_reg <= icmp_ln13_reg_2510_pp0_iter7_reg;
        select_ln16_17_reg_2495 <= select_ln16_17_fu_1537_p3;
        select_ln16_7_reg_2465 <= select_ln16_7_fu_1510_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln16_14_reg_2030 <= {{cols_1_q0[8:1]}};
        lshr_ln16_5_reg_1980 <= {{cols_1_q1[8:1]}};
        nzval_1_load_2_reg_1970 <= nzval_1_q1;
        nzval_1_load_7_reg_2020 <= nzval_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln16_15_reg_2160 <= {{cols_0_q0[8:1]}};
        lshr_ln16_6_reg_2115 <= {{cols_0_q1[8:1]}};
        nzval_0_load_3_reg_2105 <= nzval_0_q1;
        nzval_0_load_8_reg_2150 <= nzval_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln16_18_reg_2275 <= {{cols_1_q0[8:1]}};
        lshr_ln16_9_reg_2250 <= {{cols_1_q1[8:1]}};
        nzval_1_load_4_reg_2240 <= nzval_1_q1;
        nzval_1_load_9_reg_2265 <= nzval_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        nzval_1_load_1_reg_1860 <= nzval_1_q1;
        nzval_1_load_6_reg_1895 <= nzval_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_0_load_reg_1750 <= out_0_q0;
        out_1_load_reg_1835 <= out_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_864 <= nzval_0_q1;
        reg_876 <= nzval_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_868 <= nzval_1_q1;
        reg_880 <= nzval_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_872 <= {{cols_1_q1[8:1]}};
        reg_884 <= {{cols_1_q0[8:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_888 <= nzval_0_q1;
        reg_896 <= nzval_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_892 <= {{cols_0_q1[8:1]}};
        reg_900 <= {{cols_0_q0[8:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_904 <= grp_fu_808_p2;
        reg_909 <= grp_fu_812_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sum_11_reg_2729 <= grp_fu_812_p2;
        sum_2_reg_2724 <= grp_fu_808_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_12_reg_2739 <= grp_fu_812_p2;
        sum_3_reg_2734 <= grp_fu_808_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        sum_14_reg_2749 <= grp_fu_812_p2;
        sum_5_reg_2744 <= grp_fu_808_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        sum_15_reg_2759 <= grp_fu_812_p2;
        sum_6_reg_2754 <= grp_fu_808_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        sum_16_reg_2769 <= grp_fu_812_p2;
        sum_7_reg_2764 <= grp_fu_808_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sum_17_reg_2779 <= grp_fu_812_p2;
        sum_8_reg_2774 <= grp_fu_808_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_18_reg_2789 <= grp_fu_812_p2;
        sum_9_reg_2784 <= grp_fu_808_p2;
    end
end
always @ (*) begin
    if (((icmp_ln13_fu_1549_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (icmp_ln13_reg_2510_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter9_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter9_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to8 = 1'b1;
    end else begin
        ap_idle_pp0_0to8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to9 = 1'b1;
    end else begin
        ap_idle_pp0_1to9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i1_load = 9'd0;
    end else begin
        ap_sig_allocacmp_i1_load = i1_fu_84;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            cols_0_address0_local = zext_ln16_29_fu_1300_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            cols_0_address0_local = zext_ln16_28_fu_1220_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_0_address0_local = zext_ln16_27_fu_1133_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_0_address0_local = zext_ln16_26_fu_1072_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_0_address0_local = zext_ln16_25_fu_1016_p1;
        end else begin
            cols_0_address0_local = 'bx;
        end
    end else begin
        cols_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            cols_0_address1_local = zext_ln16_24_fu_1274_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            cols_0_address1_local = zext_ln16_23_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_0_address1_local = zext_ln16_22_fu_1106_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_0_address1_local = zext_ln16_21_fu_1045_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_0_address1_local = zext_ln16_20_fu_968_p1;
        end else begin
            cols_0_address1_local = 'bx;
        end
    end else begin
        cols_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_0_ce0_local = 1'b1;
    end else begin
        cols_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_0_ce1_local = 1'b1;
    end else begin
        cols_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            cols_1_address0_local = zext_ln16_29_fu_1300_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            cols_1_address0_local = zext_ln16_28_fu_1220_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_1_address0_local = zext_ln16_27_fu_1133_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_1_address0_local = zext_ln16_26_fu_1072_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_1_address0_local = zext_ln16_25_fu_1016_p1;
        end else begin
            cols_1_address0_local = 'bx;
        end
    end else begin
        cols_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            cols_1_address1_local = zext_ln16_24_fu_1274_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            cols_1_address1_local = zext_ln16_23_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_1_address1_local = zext_ln16_22_fu_1106_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_1_address1_local = zext_ln16_21_fu_1045_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_1_address1_local = zext_ln16_20_fu_968_p1;
        end else begin
            cols_1_address1_local = 'bx;
        end
    end else begin
        cols_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_1_ce0_local = 1'b1;
    end else begin
        cols_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_1_ce1_local = 1'b1;
    end else begin
        cols_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_808_p0 = sum_9_reg_2784;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_808_p0 = sum_8_reg_2774;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_808_p0 = sum_7_reg_2764;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_808_p0 = sum_6_reg_2754;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_808_p0 = sum_5_reg_2744;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_808_p0 = reg_904;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_808_p0 = sum_3_reg_2734;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_808_p0 = sum_2_reg_2724;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_808_p0 = sum_1_reg_2694;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_808_p0 = sum_fu_1560_p1;
    end else begin
        grp_fu_808_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_808_p1 = Si_9_reg_2714_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_808_p1 = Si_8_reg_2699_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_808_p1 = Si_7_reg_2684_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_808_p1 = Si_6_reg_2674_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_808_p1 = Si_5_reg_2664_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_808_p1 = Si_4_reg_2654_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_808_p1 = Si_3_reg_2624_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_808_p1 = Si_2_reg_2584_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_808_p1 = Si_1_reg_2519;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_808_p1 = Si_reg_2450;
    end else begin
        grp_fu_808_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_812_p0 = sum_18_reg_2789;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_812_p0 = sum_17_reg_2779;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_812_p0 = sum_16_reg_2769;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_812_p0 = sum_15_reg_2759;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_812_p0 = sum_14_reg_2749;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_812_p0 = reg_909;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_812_p0 = sum_12_reg_2739;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_812_p0 = sum_11_reg_2729;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_812_p0 = sum_23_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_812_p0 = sum_22_fu_1606_p1;
    end else begin
        grp_fu_812_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_812_p1 = Si_18_reg_2719_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_812_p1 = Si_17_reg_2704_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_812_p1 = Si_16_reg_2689_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_812_p1 = Si_15_reg_2679_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_812_p1 = Si_14_reg_2669_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_812_p1 = Si_13_reg_2659_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_812_p1 = Si_12_reg_2644_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_812_p1 = Si_11_reg_2609_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_812_p1 = Si_10_reg_2554;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_812_p1 = Si_20_reg_2485;
    end else begin
        grp_fu_812_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_816_p0 = bitcast_ln16_18_fu_1642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_816_p0 = bitcast_ln16_16_fu_1610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_816_p0 = bitcast_ln16_14_fu_1564_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_816_p0 = bitcast_ln16_12_fu_1502_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_816_p0 = bitcast_ln16_10_fu_1460_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_816_p0 = bitcast_ln16_8_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_816_p0 = bitcast_ln16_6_fu_1378_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_816_p0 = bitcast_ln16_4_fu_1318_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_816_p0 = bitcast_ln16_2_fu_1244_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_816_p0 = bitcast_ln16_fu_1148_p1;
    end else begin
        grp_fu_816_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_816_p1 = bitcast_ln16_19_fu_1646_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_816_p1 = bitcast_ln16_17_fu_1615_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_816_p1 = bitcast_ln16_15_fu_1569_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_816_p1 = bitcast_ln16_13_fu_1506_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_816_p1 = bitcast_ln16_11_fu_1464_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_816_p1 = bitcast_ln16_9_fu_1423_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_816_p1 = bitcast_ln16_7_fu_1382_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_816_p1 = bitcast_ln16_5_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_816_p1 = bitcast_ln16_3_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_816_p1 = bitcast_ln16_1_fu_1153_p1;
    end else begin
        grp_fu_816_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_820_p0 = bitcast_ln16_29_fu_1650_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_820_p0 = bitcast_ln16_28_fu_1626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_820_p0 = bitcast_ln16_27_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_820_p0 = bitcast_ln16_26_fu_1523_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_820_p0 = bitcast_ln16_25_fu_1481_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_820_p0 = bitcast_ln16_24_fu_1439_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_820_p0 = bitcast_ln16_23_fu_1398_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_820_p0 = bitcast_ln16_22_fu_1348_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_820_p0 = bitcast_ln16_21_fu_1281_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_820_p0 = bitcast_ln16_20_fu_1196_p1;
    end else begin
        grp_fu_820_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_820_p1 = bitcast_ln16_39_fu_1654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_820_p1 = bitcast_ln16_38_fu_1631_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_820_p1 = bitcast_ln16_37_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_820_p1 = bitcast_ln16_36_fu_1533_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_820_p1 = bitcast_ln16_35_fu_1491_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_820_p1 = bitcast_ln16_34_fu_1449_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_820_p1 = bitcast_ln16_33_fu_1407_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_820_p1 = bitcast_ln16_32_fu_1367_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_820_p1 = bitcast_ln16_31_fu_1307_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_820_p1 = bitcast_ln16_30_fu_1233_p1;
    end else begin
        grp_fu_820_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            nzval_0_address0_local = zext_ln16_29_fu_1300_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            nzval_0_address0_local = zext_ln16_28_fu_1220_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_0_address0_local = zext_ln16_27_fu_1133_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_0_address0_local = zext_ln16_26_fu_1072_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            nzval_0_address0_local = zext_ln16_25_fu_1016_p1;
        end else begin
            nzval_0_address0_local = 'bx;
        end
    end else begin
        nzval_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            nzval_0_address1_local = zext_ln16_24_fu_1274_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            nzval_0_address1_local = zext_ln16_23_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_0_address1_local = zext_ln16_22_fu_1106_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_0_address1_local = zext_ln16_21_fu_1045_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            nzval_0_address1_local = zext_ln16_20_fu_968_p1;
        end else begin
            nzval_0_address1_local = 'bx;
        end
    end else begin
        nzval_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_0_ce0_local = 1'b1;
    end else begin
        nzval_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_0_ce1_local = 1'b1;
    end else begin
        nzval_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            nzval_1_address0_local = zext_ln16_29_fu_1300_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            nzval_1_address0_local = zext_ln16_28_fu_1220_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_1_address0_local = zext_ln16_27_fu_1133_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_1_address0_local = zext_ln16_26_fu_1072_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            nzval_1_address0_local = zext_ln16_25_fu_1016_p1;
        end else begin
            nzval_1_address0_local = 'bx;
        end
    end else begin
        nzval_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            nzval_1_address1_local = zext_ln16_24_fu_1274_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            nzval_1_address1_local = zext_ln16_23_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_1_address1_local = zext_ln16_22_fu_1106_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_1_address1_local = zext_ln16_21_fu_1045_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            nzval_1_address1_local = zext_ln16_20_fu_968_p1;
        end else begin
            nzval_1_address1_local = 'bx;
        end
    end else begin
        nzval_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_1_ce0_local = 1'b1;
    end else begin
        nzval_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_1_ce1_local = 1'b1;
    end else begin
        nzval_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_0_address0_local = out_0_addr_reg_1680_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_0_address0_local = zext_ln10_fu_932_p1;
    end else begin
        out_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_1_address0_local = out_1_addr_reg_1745_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_1_address0_local = zext_ln10_fu_932_p1;
    end else begin
        out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_0_address0_local = zext_ln16_19_fu_1590_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        vec_0_address0_local = zext_ln16_18_fu_1527_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        vec_0_address0_local = zext_ln16_17_fu_1485_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        vec_0_address0_local = zext_ln16_16_fu_1444_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        vec_0_address0_local = zext_ln16_15_fu_1402_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        vec_0_address0_local = zext_ln16_14_fu_1353_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_0_address0_local = zext_ln16_13_fu_1286_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_0_address0_local = zext_ln16_12_fu_1201_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_0_address0_local = zext_ln16_11_fu_1114_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_0_address0_local = zext_ln16_10_fu_1057_p1;
    end else begin
        vec_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_0_address1_local = zext_ln16_9_fu_1580_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        vec_0_address1_local = zext_ln16_8_fu_1517_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        vec_0_address1_local = zext_ln16_7_fu_1475_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        vec_0_address1_local = zext_ln16_6_fu_1434_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        vec_0_address1_local = zext_ln16_5_fu_1393_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        vec_0_address1_local = zext_ln16_4_fu_1334_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_0_address1_local = zext_ln16_3_fu_1260_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_0_address1_local = zext_ln16_2_fu_1164_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_0_address1_local = zext_ln16_1_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_0_address1_local = zext_ln16_fu_1028_p1;
    end else begin
        vec_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_0_ce0_local = 1'b1;
    end else begin
        vec_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_0_ce1_local = 1'b1;
    end else begin
        vec_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_1_address0_local = zext_ln16_19_fu_1590_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        vec_1_address0_local = zext_ln16_18_fu_1527_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        vec_1_address0_local = zext_ln16_17_fu_1485_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        vec_1_address0_local = zext_ln16_16_fu_1444_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        vec_1_address0_local = zext_ln16_15_fu_1402_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        vec_1_address0_local = zext_ln16_14_fu_1353_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_1_address0_local = zext_ln16_13_fu_1286_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_1_address0_local = zext_ln16_12_fu_1201_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_1_address0_local = zext_ln16_11_fu_1114_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_1_address0_local = zext_ln16_10_fu_1057_p1;
    end else begin
        vec_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_1_address1_local = zext_ln16_9_fu_1580_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        vec_1_address1_local = zext_ln16_8_fu_1517_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        vec_1_address1_local = zext_ln16_7_fu_1475_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        vec_1_address1_local = zext_ln16_6_fu_1434_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        vec_1_address1_local = zext_ln16_5_fu_1393_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        vec_1_address1_local = zext_ln16_4_fu_1334_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_1_address1_local = zext_ln16_3_fu_1260_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_1_address1_local = zext_ln16_2_fu_1164_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_1_address1_local = zext_ln16_1_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_1_address1_local = zext_ln16_fu_1028_p1;
    end else begin
        vec_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_1_ce0_local = 1'b1;
    end else begin
        vec_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_1_ce1_local = 1'b1;
    end else begin
        vec_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to9 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln14_1_fu_1010_p2 = (zext_ln14_3_fu_1006_p1 + zext_ln14_fu_994_p1);
assign add_ln14_fu_962_p2 = (zext_ln14_1_fu_946_p1 + zext_ln14_2_fu_958_p1);
assign add_ln16_1_fu_1178_p2 = (add_ln14_reg_1685 + 12'd3);
assign add_ln16_2_fu_1191_p2 = (add_ln14_reg_1685 + 12'd4);
assign add_ln16_3_fu_1067_p2 = (add_ln14_1_reg_1717 + 12'd1);
assign add_ln16_4_fu_1128_p2 = (add_ln14_1_reg_1717 + 12'd2);
assign add_ln16_5_fu_1215_p2 = (add_ln14_1_reg_1717 + 12'd3);
assign add_ln16_6_fu_1228_p2 = (add_ln14_1_reg_1717 + 12'd4);
assign add_ln16_fu_1101_p2 = (add_ln14_reg_1685 + 12'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1577 = ((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln16_10_fu_1460_p1 = nzval_1_load_2_reg_1970;
assign bitcast_ln16_11_fu_1464_p1 = select_ln16_5_reg_2360;
assign bitcast_ln16_12_fu_1502_p1 = nzval_0_load_3_reg_2105;
assign bitcast_ln16_13_fu_1506_p1 = select_ln16_6_reg_2410;
assign bitcast_ln16_14_fu_1564_p1 = reg_868;
assign bitcast_ln16_15_fu_1569_p1 = select_ln16_7_reg_2465;
assign bitcast_ln16_16_fu_1610_p1 = reg_888;
assign bitcast_ln16_17_fu_1615_p1 = select_ln16_8_reg_2534;
assign bitcast_ln16_18_fu_1642_p1 = nzval_1_load_4_reg_2240;
assign bitcast_ln16_19_fu_1646_p1 = select_ln16_9_reg_2599;
assign bitcast_ln16_1_fu_1153_p1 = select_ln16_reg_1840;
assign bitcast_ln16_20_fu_1196_p1 = reg_876;
assign bitcast_ln16_21_fu_1281_p1 = reg_880;
assign bitcast_ln16_22_fu_1348_p1 = reg_896;
assign bitcast_ln16_23_fu_1398_p1 = nzval_1_load_6_reg_1895;
assign bitcast_ln16_24_fu_1439_p1 = reg_876;
assign bitcast_ln16_25_fu_1481_p1 = nzval_1_load_7_reg_2020;
assign bitcast_ln16_26_fu_1523_p1 = nzval_0_load_8_reg_2150;
assign bitcast_ln16_27_fu_1585_p1 = reg_880;
assign bitcast_ln16_28_fu_1626_p1 = reg_896;
assign bitcast_ln16_29_fu_1650_p1 = nzval_1_load_9_reg_2265;
assign bitcast_ln16_2_fu_1244_p1 = reg_868;
assign bitcast_ln16_30_fu_1233_p1 = select_ln16_10_reg_1925;
assign bitcast_ln16_31_fu_1307_p1 = select_ln16_11_reg_2065;
assign bitcast_ln16_32_fu_1367_p1 = select_ln16_12_reg_2195;
assign bitcast_ln16_33_fu_1407_p1 = select_ln16_13_reg_2285;
assign bitcast_ln16_34_fu_1449_p1 = select_ln16_14_reg_2335;
assign bitcast_ln16_35_fu_1491_p1 = select_ln16_15_reg_2385;
assign bitcast_ln16_36_fu_1533_p1 = select_ln16_16_reg_2435;
assign bitcast_ln16_37_fu_1595_p1 = select_ln16_17_reg_2495;
assign bitcast_ln16_38_fu_1631_p1 = select_ln16_18_reg_2564;
assign bitcast_ln16_39_fu_1654_p1 = select_ln16_19_reg_2619;
assign bitcast_ln16_3_fu_1249_p1 = select_ln16_1_reg_1950;
assign bitcast_ln16_4_fu_1318_p1 = reg_888;
assign bitcast_ln16_5_fu_1323_p1 = select_ln16_2_reg_2090;
assign bitcast_ln16_6_fu_1378_p1 = nzval_1_load_1_reg_1860;
assign bitcast_ln16_7_fu_1382_p1 = select_ln16_3_reg_2220;
assign bitcast_ln16_8_fu_1418_p1 = reg_864;
assign bitcast_ln16_9_fu_1423_p1 = select_ln16_4_reg_2310;
assign bitcast_ln16_fu_1148_p1 = reg_864;
assign bitcast_ln19_1_fu_1663_p1 = reg_909;
assign bitcast_ln19_fu_1658_p1 = reg_904;
assign cols_0_address0 = cols_0_address0_local;
assign cols_0_address1 = cols_0_address1_local;
assign cols_0_ce0 = cols_0_ce0_local;
assign cols_0_ce1 = cols_0_ce1_local;
assign cols_1_address0 = cols_1_address0_local;
assign cols_1_address1 = cols_1_address1_local;
assign cols_1_ce0 = cols_1_ce0_local;
assign cols_1_ce1 = cols_1_ce1_local;
assign grp_fu_824_p4 = {{cols_0_q1[8:1]}};
assign grp_fu_844_p4 = {{cols_0_q0[8:1]}};
assign i_fu_1544_p2 = (i1_load_reg_1675 + 9'd2);
assign icmp_ln13_fu_1549_p2 = ((i_fu_1544_p2 < 9'd494) ? 1'b1 : 1'b0);
assign lshr_ln_fu_922_p4 = {{ap_sig_allocacmp_i1_load[8:1]}};
assign nzval_0_address0 = nzval_0_address0_local;
assign nzval_0_address1 = nzval_0_address1_local;
assign nzval_0_ce0 = nzval_0_ce0_local;
assign nzval_0_ce1 = nzval_0_ce1_local;
assign nzval_1_address0 = nzval_1_address0_local;
assign nzval_1_address1 = nzval_1_address1_local;
assign nzval_1_ce0 = nzval_1_ce0_local;
assign nzval_1_ce1 = nzval_1_ce1_local;
assign or_ln1_fu_986_p3 = {{lshr_ln_fu_922_p4}, {1'd1}};
assign or_ln_fu_1038_p3 = {{tmp_reg_1712}, {1'd1}};
assign out_0_address0 = out_0_address0_local;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln19_fu_1658_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = out_1_address0_local;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln19_1_fu_1663_p1;
assign out_1_we0 = out_1_we0_local;
assign select_ln16_10_fu_1141_p3 = ((trunc_ln16_10_reg_1795[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_11_fu_1237_p3 = ((trunc_ln16_11_reg_1800[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_12_fu_1311_p3 = ((trunc_ln16_12_reg_1890[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_13_fu_1371_p3 = ((trunc_ln16_13_reg_1900[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_14_fu_1411_p3 = ((trunc_ln16_14_reg_2015[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_15_fu_1453_p3 = ((trunc_ln16_15_reg_2025[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_16_fu_1495_p3 = ((trunc_ln16_16_reg_2155[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_17_fu_1537_p3 = ((trunc_ln16_17_reg_2165[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_18_fu_1599_p3 = ((trunc_ln16_18_reg_2260[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_19_fu_1635_p3 = ((trunc_ln16_19_reg_2270[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_1_fu_1157_p3 = ((trunc_ln16_1_reg_1770[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_2_fu_1253_p3 = ((trunc_ln16_2_reg_1855[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_3_fu_1327_p3 = ((trunc_ln16_3_reg_1865[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_4_fu_1386_p3 = ((trunc_ln16_4_reg_1965[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_5_fu_1427_p3 = ((trunc_ln16_5_reg_1975[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_6_fu_1468_p3 = ((trunc_ln16_6_reg_2110[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_7_fu_1510_p3 = ((trunc_ln16_7_reg_2120[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_8_fu_1573_p3 = ((trunc_ln16_8_reg_2235[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_9_fu_1619_p3 = ((trunc_ln16_9_reg_2245[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_fu_1080_p3 = ((trunc_ln16_reg_1755[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign sum_22_fu_1606_p1 = out_1_load_reg_1835;
assign sum_fu_1560_p1 = out_0_load_reg_1750;
assign tmp_1_fu_938_p3 = {{lshr_ln_fu_922_p4}, {3'd0}};
assign tmp_2_fu_950_p3 = {{lshr_ln_fu_922_p4}, {1'd0}};
assign tmp_3_fu_998_p3 = {{lshr_ln_fu_922_p4}, {3'd4}};
assign trunc_ln16_10_fu_1053_p1 = cols_0_q0[0:0];
assign trunc_ln16_11_fu_1063_p1 = cols_1_q0[0:0];
assign trunc_ln16_12_fu_1120_p1 = cols_0_q0[0:0];
assign trunc_ln16_13_fu_1124_p1 = cols_1_q0[0:0];
assign trunc_ln16_14_fu_1207_p1 = cols_0_q0[0:0];
assign trunc_ln16_15_fu_1211_p1 = cols_1_q0[0:0];
assign trunc_ln16_16_fu_1292_p1 = cols_0_q0[0:0];
assign trunc_ln16_17_fu_1296_p1 = cols_1_q0[0:0];
assign trunc_ln16_18_fu_1359_p1 = cols_0_q0[0:0];
assign trunc_ln16_19_fu_1363_p1 = cols_1_q0[0:0];
assign trunc_ln16_1_fu_1034_p1 = cols_1_q1[0:0];
assign trunc_ln16_2_fu_1093_p1 = cols_0_q1[0:0];
assign trunc_ln16_3_fu_1097_p1 = cols_1_q1[0:0];
assign trunc_ln16_4_fu_1170_p1 = cols_0_q1[0:0];
assign trunc_ln16_5_fu_1174_p1 = cols_1_q1[0:0];
assign trunc_ln16_6_fu_1266_p1 = cols_0_q1[0:0];
assign trunc_ln16_7_fu_1270_p1 = cols_1_q1[0:0];
assign trunc_ln16_8_fu_1340_p1 = cols_0_q1[0:0];
assign trunc_ln16_9_fu_1344_p1 = cols_1_q1[0:0];
assign trunc_ln16_fu_1024_p1 = cols_0_q1[0:0];
assign vec_0_address0 = vec_0_address0_local;
assign vec_0_address1 = vec_0_address1_local;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_0_ce1 = vec_0_ce1_local;
assign vec_1_address0 = vec_1_address0_local;
assign vec_1_address1 = vec_1_address1_local;
assign vec_1_ce0 = vec_1_ce0_local;
assign vec_1_ce1 = vec_1_ce1_local;
assign zext_ln10_fu_932_p1 = lshr_ln_fu_922_p4;
assign zext_ln14_1_fu_946_p1 = tmp_1_fu_938_p3;
assign zext_ln14_2_fu_958_p1 = tmp_2_fu_950_p3;
assign zext_ln14_3_fu_1006_p1 = tmp_3_fu_998_p3;
assign zext_ln14_fu_994_p1 = or_ln1_fu_986_p3;
assign zext_ln16_10_fu_1057_p1 = grp_fu_844_p4;
assign zext_ln16_11_fu_1114_p1 = reg_884;
assign zext_ln16_12_fu_1201_p1 = reg_900;
assign zext_ln16_13_fu_1286_p1 = reg_884;
assign zext_ln16_14_fu_1353_p1 = reg_900;
assign zext_ln16_15_fu_1402_p1 = lshr_ln16_14_reg_2030;
assign zext_ln16_16_fu_1444_p1 = lshr_ln16_15_reg_2160;
assign zext_ln16_17_fu_1485_p1 = reg_884;
assign zext_ln16_18_fu_1527_p1 = reg_900;
assign zext_ln16_19_fu_1590_p1 = lshr_ln16_18_reg_2275;
assign zext_ln16_1_fu_1087_p1 = reg_872;
assign zext_ln16_20_fu_968_p1 = add_ln14_fu_962_p2;
assign zext_ln16_21_fu_1045_p1 = or_ln_fu_1038_p3;
assign zext_ln16_22_fu_1106_p1 = add_ln16_fu_1101_p2;
assign zext_ln16_23_fu_1183_p1 = add_ln16_1_fu_1178_p2;
assign zext_ln16_24_fu_1274_p1 = add_ln16_2_reg_2005;
assign zext_ln16_25_fu_1016_p1 = add_ln14_1_fu_1010_p2;
assign zext_ln16_26_fu_1072_p1 = add_ln16_3_fu_1067_p2;
assign zext_ln16_27_fu_1133_p1 = add_ln16_4_fu_1128_p2;
assign zext_ln16_28_fu_1220_p1 = add_ln16_5_fu_1215_p2;
assign zext_ln16_29_fu_1300_p1 = add_ln16_6_reg_2055;
assign zext_ln16_2_fu_1164_p1 = reg_892;
assign zext_ln16_3_fu_1260_p1 = reg_872;
assign zext_ln16_4_fu_1334_p1 = reg_892;
assign zext_ln16_5_fu_1393_p1 = lshr_ln16_5_reg_1980;
assign zext_ln16_6_fu_1434_p1 = lshr_ln16_6_reg_2115;
assign zext_ln16_7_fu_1475_p1 = reg_872;
assign zext_ln16_8_fu_1517_p1 = reg_892;
assign zext_ln16_9_fu_1580_p1 = lshr_ln16_9_reg_2250;
assign zext_ln16_fu_1028_p1 = grp_fu_824_p4;
always @ (posedge ap_clk) begin
    add_ln14_reg_1685[0] <= 1'b0;
    add_ln14_1_reg_1717[0] <= 1'b1;
    add_ln16_2_reg_2005[0] <= 1'b0;
    add_ln16_6_reg_2055[0] <= 1'b1;
end
endmodule 