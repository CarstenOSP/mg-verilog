module stencil_stencil_Pipeline_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,tmp,tmp_2,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,tmp_1,tmp_3,empty,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,r,indvars_iv_next93); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [9:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [12:0] tmp;
input  [9:0] tmp_2;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [9:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [9:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
input  [12:0] tmp_1;
input  [9:0] tmp_3;
input  [12:0] empty;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
output  [9:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [9:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
input  [6:0] r;
input  [6:0] indvars_iv_next93;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln8_reg_1936;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_802_p2;
reg   [31:0] reg_892;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_806_p2;
reg   [31:0] reg_896;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_818_p2;
reg   [31:0] reg_900;
wire   [31:0] grp_fu_822_p2;
reg   [31:0] reg_904;
wire   [31:0] grp_fu_826_p2;
reg   [31:0] reg_908;
wire   [31:0] grp_fu_830_p2;
reg   [31:0] reg_912;
wire   [31:0] grp_fu_834_p2;
reg   [31:0] reg_916;
wire   [31:0] grp_fu_838_p2;
reg   [31:0] reg_920;
wire   [31:0] grp_fu_842_p2;
reg   [31:0] reg_924;
wire   [31:0] grp_fu_846_p2;
reg   [31:0] reg_928;
wire   [31:0] grp_fu_814_p2;
reg   [31:0] reg_932;
wire   [63:0] zext_ln12_fu_972_p1;
reg   [63:0] zext_ln12_reg_1794;
reg   [63:0] zext_ln12_reg_1794_pp0_iter1_reg;
reg   [63:0] zext_ln12_reg_1794_pp0_iter2_reg;
wire   [0:0] icmp_ln12_fu_978_p2;
reg   [0:0] icmp_ln12_reg_1818;
wire   [63:0] zext_ln12_2_fu_1012_p1;
reg   [63:0] zext_ln12_2_reg_1860;
wire   [9:0] add_ln5_1_fu_1047_p2;
reg   [9:0] add_ln5_1_reg_1896;
reg   [9:0] lshr_ln12_3_reg_1901;
wire   [0:0] icmp_ln16_fu_1062_p2;
reg   [0:0] icmp_ln16_reg_1906;
reg   [0:0] icmp_ln16_reg_1906_pp0_iter1_reg;
reg   [0:0] icmp_ln16_reg_1906_pp0_iter2_reg;
wire   [12:0] or_ln8_fu_1078_p3;
reg   [12:0] or_ln8_reg_1910;
wire   [10:0] tmp_7_fu_1125_p4;
reg   [10:0] tmp_7_reg_1926;
wire   [12:0] or_ln8_3_fu_1135_p3;
reg   [12:0] or_ln8_3_reg_1931;
wire   [0:0] icmp_ln8_fu_1143_p2;
reg   [0:0] icmp_ln8_reg_1936_pp0_iter1_reg;
reg   [0:0] icmp_ln8_reg_1936_pp0_iter2_reg;
reg   [9:0] lshr_ln12_7_reg_1940;
reg   [9:0] lshr_ln12_8_reg_1945;
reg   [9:0] lshr_ln12_s_reg_1960;
wire  signed [31:0] select_ln12_fu_1228_p3;
reg  signed [31:0] select_ln12_reg_1965;
wire  signed [31:0] select_ln12_1_fu_1235_p3;
reg  signed [31:0] select_ln12_1_reg_1970;
wire  signed [31:0] select_ln12_2_fu_1242_p3;
reg  signed [31:0] select_ln12_2_reg_1976;
wire  signed [31:0] select_ln12_3_fu_1249_p3;
reg  signed [31:0] select_ln12_3_reg_1982;
wire  signed [31:0] select_ln12_4_fu_1256_p3;
reg  signed [31:0] select_ln12_4_reg_1987;
wire  signed [31:0] select_ln12_5_fu_1263_p3;
reg  signed [31:0] select_ln12_5_reg_1993;
reg   [9:0] lshr_ln12_5_reg_2029;
wire  signed [31:0] select_ln12_11_fu_1311_p3;
reg  signed [31:0] select_ln12_11_reg_2034;
wire  signed [31:0] select_ln12_16_fu_1328_p3;
reg  signed [31:0] select_ln12_16_reg_2069;
reg   [9:0] lshr_ln12_10_reg_2085;
reg   [9:0] lshr_ln12_11_reg_2090;
wire   [12:0] or_ln8_2_fu_1370_p3;
reg   [12:0] or_ln8_2_reg_2095;
wire  signed [31:0] select_ln12_7_fu_1411_p3;
reg  signed [31:0] select_ln12_7_reg_2121;
wire  signed [31:0] grp_fu_850_p3;
reg  signed [31:0] select_ln12_8_reg_2127;
wire  signed [31:0] grp_fu_857_p3;
reg  signed [31:0] select_ln12_9_reg_2133;
wire  signed [31:0] grp_fu_864_p3;
reg  signed [31:0] select_ln12_13_reg_2158;
wire  signed [31:0] grp_fu_871_p3;
reg  signed [31:0] select_ln12_14_reg_2164;
wire  signed [31:0] grp_fu_878_p3;
reg  signed [31:0] select_ln12_15_reg_2170;
wire  signed [31:0] select_ln12_17_fu_1423_p3;
reg  signed [31:0] select_ln12_17_reg_2175;
wire  signed [31:0] grp_fu_885_p3;
reg  signed [31:0] select_ln12_23_reg_2231;
wire  signed [31:0] select_ln12_6_fu_1496_p3;
reg  signed [31:0] select_ln12_6_reg_2236;
wire   [31:0] grp_fu_810_p2;
reg   [31:0] mul_ln13_2_reg_2241;
reg   [31:0] mul_ln13_4_reg_2246;
reg  signed [31:0] select_ln12_10_reg_2251;
reg  signed [31:0] select_ln12_12_reg_2256;
reg  signed [31:0] select_ln12_18_reg_2261;
reg  signed [31:0] select_ln12_19_reg_2266;
reg  signed [31:0] select_ln12_20_reg_2272;
wire  signed [31:0] select_ln12_21_fu_1503_p3;
reg  signed [31:0] select_ln12_21_reg_2278;
reg  signed [31:0] select_ln12_22_reg_2283;
reg   [31:0] mul_ln13_3_reg_2288;
wire   [31:0] add_ln13_1_fu_1510_p2;
reg   [31:0] add_ln13_1_reg_2293;
reg   [31:0] mul_ln13_9_reg_2298;
wire   [31:0] add_ln13_13_fu_1522_p2;
reg   [31:0] add_ln13_13_reg_2303;
reg   [31:0] mul_ln13_18_reg_2308;
reg   [31:0] mul_ln13_20_reg_2313;
reg   [31:0] mul_ln13_29_reg_2318;
reg   [31:0] mul_ln13_33_reg_2323;
wire   [31:0] add_ln13_5_fu_1533_p2;
reg   [31:0] add_ln13_5_reg_2328;
reg   [31:0] mul_ln13_10_reg_2333;
wire   [31:0] add_ln13_9_fu_1539_p2;
reg   [31:0] add_ln13_9_reg_2338;
wire   [31:0] add_ln13_14_fu_1551_p2;
reg   [31:0] add_ln13_14_reg_2343;
reg   [31:0] mul_ln13_19_reg_2348;
reg   [31:0] mul_ln13_22_reg_2353;
reg   [31:0] mul_ln13_26_reg_2358;
reg   [31:0] mul_ln13_32_reg_2363;
wire   [31:0] add_ln13_29_fu_1562_p2;
reg   [31:0] add_ln13_29_reg_2368;
wire   [31:0] add_ln13_fu_1567_p2;
reg   [31:0] add_ln13_reg_2373;
wire   [31:0] add_ln13_6_fu_1577_p2;
reg   [31:0] add_ln13_6_reg_2378;
wire   [31:0] temp_1_fu_1591_p2;
reg   [31:0] temp_1_reg_2383;
wire   [31:0] add_ln13_16_fu_1596_p2;
reg   [31:0] add_ln13_16_reg_2389;
wire   [31:0] add_ln13_17_fu_1601_p2;
reg   [31:0] add_ln13_17_reg_2394;
wire   [31:0] add_ln13_21_fu_1611_p2;
reg   [31:0] add_ln13_21_reg_2399;
wire   [31:0] add_ln13_24_fu_1617_p2;
reg   [31:0] add_ln13_24_reg_2404;
wire   [31:0] add_ln13_25_fu_1623_p2;
reg   [31:0] add_ln13_25_reg_2409;
wire   [31:0] add_ln13_30_fu_1633_p2;
reg   [31:0] add_ln13_30_reg_2414;
wire   [31:0] temp_fu_1642_p2;
reg   [31:0] temp_reg_2419;
wire   [31:0] add_ln13_22_fu_1651_p2;
reg   [31:0] add_ln13_22_reg_2425;
wire   [31:0] temp_3_fu_1660_p2;
reg   [31:0] temp_3_reg_2430;
wire   [31:0] temp_2_fu_1669_p2;
reg   [31:0] temp_2_reg_2436;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_994_p1;
wire   [63:0] zext_ln12_3_fu_1028_p1;
wire   [63:0] zext_ln12_8_fu_1101_p1;
wire   [63:0] zext_ln12_11_fu_1195_p1;
wire   [63:0] zext_ln12_5_fu_1270_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_6_fu_1291_p1;
wire   [63:0] zext_ln12_9_fu_1318_p1;
wire   [63:0] zext_ln12_10_fu_1323_p1;
wire   [63:0] zext_ln12_12_fu_1335_p1;
wire   [63:0] zext_ln12_17_fu_1398_p1;
wire   [63:0] zext_ln12_4_fu_1404_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_7_fu_1418_p1;
wire   [63:0] zext_ln12_13_fu_1430_p1;
wire   [63:0] zext_ln12_14_fu_1435_p1;
wire   [63:0] zext_ln12_15_fu_1462_p1;
wire   [63:0] zext_ln12_16_fu_1490_p1;
reg   [63:0] c_fu_142;
wire   [63:0] add_ln8_fu_1217_p2;
wire    ap_loop_init;
reg    orig_0_ce1_local;
reg   [9:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [9:0] orig_0_address0_local;
reg    orig_4_ce1_local;
reg   [9:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [9:0] orig_4_address0_local;
reg    orig_1_ce1_local;
reg   [9:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [9:0] orig_1_address0_local;
reg    orig_5_ce1_local;
reg   [9:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [9:0] orig_5_address0_local;
reg    orig_2_ce1_local;
reg   [9:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [9:0] orig_2_address0_local;
reg    orig_6_ce1_local;
reg   [9:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [9:0] orig_6_address0_local;
reg    orig_3_ce1_local;
reg   [9:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [9:0] orig_3_address0_local;
reg    orig_7_ce1_local;
reg   [9:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [9:0] orig_7_address0_local;
reg    sol_5_we0_local;
reg    sol_5_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_4_we0_local;
reg    sol_4_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_7_we0_local;
reg    sol_7_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg    sol_6_we0_local;
reg    sol_6_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg  signed [31:0] grp_fu_802_p0;
reg  signed [31:0] grp_fu_802_p1;
reg  signed [31:0] grp_fu_806_p0;
reg  signed [31:0] grp_fu_806_p1;
reg  signed [31:0] grp_fu_810_p0;
reg  signed [31:0] grp_fu_810_p1;
reg  signed [31:0] grp_fu_814_p0;
reg  signed [31:0] grp_fu_814_p1;
reg  signed [31:0] grp_fu_818_p0;
reg  signed [31:0] grp_fu_818_p1;
reg  signed [31:0] grp_fu_822_p0;
reg  signed [31:0] grp_fu_822_p1;
reg  signed [31:0] grp_fu_826_p0;
reg  signed [31:0] grp_fu_826_p1;
reg  signed [31:0] grp_fu_830_p0;
reg  signed [31:0] grp_fu_830_p1;
reg  signed [31:0] grp_fu_834_p0;
reg  signed [31:0] grp_fu_834_p1;
reg  signed [31:0] grp_fu_838_p0;
reg  signed [31:0] grp_fu_838_p1;
reg  signed [31:0] grp_fu_842_p0;
reg  signed [31:0] grp_fu_842_p1;
reg  signed [31:0] grp_fu_846_p0;
reg  signed [31:0] grp_fu_846_p1;
wire   [12:0] trunc_ln8_1_fu_948_p1;
wire   [9:0] trunc_ln_fu_957_p4;
wire   [9:0] add_ln12_fu_967_p2;
wire   [2:0] trunc_ln8_fu_944_p1;
wire   [12:0] empty_11_fu_952_p2;
wire   [9:0] lshr_ln12_1_fu_984_p4;
wire   [9:0] add_ln5_fu_1007_p2;
wire   [12:0] empty_12_fu_1002_p2;
wire   [9:0] lshr_ln12_2_fu_1018_p4;
wire   [9:0] add_ln5_2_fu_1041_p2;
wire   [12:0] empty_13_fu_1036_p2;
wire   [11:0] tmp_4_fu_1068_p4;
wire   [12:0] empty_16_fu_1086_p2;
wire   [9:0] lshr_ln12_6_fu_1091_p4;
wire   [61:0] tmp_5_fu_1107_p4;
wire   [63:0] or_ln8_1_fu_1117_p3;
wire   [12:0] empty_17_fu_1149_p2;
wire   [12:0] add_ln12_1_fu_1164_p2;
wire   [12:0] empty_18_fu_1180_p2;
wire   [9:0] lshr_ln12_9_fu_1185_p4;
wire   [12:0] add_ln12_2_fu_1201_p2;
wire   [12:0] empty_14_fu_1277_p2;
wire   [9:0] lshr_ln12_4_fu_1281_p4;
wire   [12:0] empty_15_fu_1297_p2;
wire   [12:0] empty_19_fu_1340_p2;
wire   [12:0] add_ln12_3_fu_1354_p2;
wire   [12:0] add_ln12_7_fu_1377_p2;
wire   [12:0] add_ln12_6_fu_1383_p2;
wire   [9:0] lshr_ln12_14_fu_1388_p4;
wire   [12:0] tmp_s_fu_1440_p3;
wire   [12:0] add_ln12_4_fu_1447_p2;
wire   [9:0] lshr_ln12_12_fu_1452_p4;
wire   [12:0] tmp_8_fu_1468_p3;
wire   [12:0] add_ln12_5_fu_1475_p2;
wire   [9:0] lshr_ln12_13_fu_1480_p4;
wire   [31:0] add_ln13_12_fu_1516_p2;
wire   [31:0] add_ln13_4_fu_1528_p2;
wire   [31:0] add_ln13_11_fu_1545_p2;
wire   [31:0] add_ln13_28_fu_1556_p2;
wire   [31:0] add_ln13_3_fu_1573_p2;
wire   [31:0] add_ln13_8_fu_1582_p2;
wire   [31:0] add_ln13_10_fu_1586_p2;
wire   [31:0] add_ln13_20_fu_1606_p2;
wire   [31:0] add_ln13_27_fu_1628_p2;
wire   [31:0] add_ln13_2_fu_1638_p2;
wire   [31:0] add_ln13_19_fu_1647_p2;
wire   [31:0] add_ln13_26_fu_1656_p2;
wire   [31:0] add_ln13_18_fu_1665_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 c_fu_142 = 64'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_802_p0),.din1(grp_fu_802_p1),.ce(1'b1),.dout(grp_fu_802_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_806_p0),.din1(grp_fu_806_p1),.ce(1'b1),.dout(grp_fu_806_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_810_p0),.din1(grp_fu_810_p1),.ce(1'b1),.dout(grp_fu_810_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_814_p0),.din1(grp_fu_814_p1),.ce(1'b1),.dout(grp_fu_814_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_818_p0),.din1(grp_fu_818_p1),.ce(1'b1),.dout(grp_fu_818_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_822_p0),.din1(grp_fu_822_p1),.ce(1'b1),.dout(grp_fu_822_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_826_p0),.din1(grp_fu_826_p1),.ce(1'b1),.dout(grp_fu_826_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_830_p0),.din1(grp_fu_830_p1),.ce(1'b1),.dout(grp_fu_830_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_834_p0),.din1(grp_fu_834_p1),.ce(1'b1),.dout(grp_fu_834_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_838_p0),.din1(grp_fu_838_p1),.ce(1'b1),.dout(grp_fu_838_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_842_p0),.din1(grp_fu_842_p1),.ce(1'b1),.dout(grp_fu_842_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_846_p0),.din1(grp_fu_846_p1),.ce(1'b1),.dout(grp_fu_846_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fu_142 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln8_fu_1143_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c_fu_142 <= add_ln8_fu_1217_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_13_reg_2303 <= add_ln13_13_fu_1522_p2;
        add_ln13_1_reg_2293 <= add_ln13_1_fu_1510_p2;
        add_ln13_22_reg_2425 <= add_ln13_22_fu_1651_p2;
        lshr_ln12_10_reg_2085 <= {{empty_19_fu_1340_p2[12:3]}};
        lshr_ln12_11_reg_2090 <= {{add_ln12_3_fu_1354_p2[12:3]}};
        lshr_ln12_5_reg_2029 <= {{empty_15_fu_1297_p2[12:3]}};
        or_ln8_2_reg_2095[12 : 2] <= or_ln8_2_fu_1370_p3[12 : 2];
        select_ln12_11_reg_2034 <= select_ln12_11_fu_1311_p3;
        select_ln12_16_reg_2069 <= select_ln12_16_fu_1328_p3;
        select_ln12_1_reg_1970 <= select_ln12_1_fu_1235_p3;
        select_ln12_2_reg_1976 <= select_ln12_2_fu_1242_p3;
        select_ln12_3_reg_1982 <= select_ln12_3_fu_1249_p3;
        select_ln12_4_reg_1987 <= select_ln12_4_fu_1256_p3;
        select_ln12_5_reg_1993 <= select_ln12_5_fu_1263_p3;
        select_ln12_reg_1965 <= select_ln12_fu_1228_p3;
        temp_3_reg_2430 <= temp_3_fu_1660_p2;
        temp_reg_2419 <= temp_fu_1642_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_14_reg_2343 <= add_ln13_14_fu_1551_p2;
        add_ln13_29_reg_2368 <= add_ln13_29_fu_1562_p2;
        add_ln13_5_reg_2328 <= add_ln13_5_fu_1533_p2;
        add_ln13_9_reg_2338 <= add_ln13_9_fu_1539_p2;
        select_ln12_17_reg_2175 <= select_ln12_17_fu_1423_p3;
        select_ln12_7_reg_2121 <= select_ln12_7_fu_1411_p3;
        temp_2_reg_2436 <= temp_2_fu_1669_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_16_reg_2389 <= add_ln13_16_fu_1596_p2;
        add_ln13_17_reg_2394 <= add_ln13_17_fu_1601_p2;
        add_ln13_21_reg_2399 <= add_ln13_21_fu_1611_p2;
        add_ln13_24_reg_2404 <= add_ln13_24_fu_1617_p2;
        add_ln13_25_reg_2409 <= add_ln13_25_fu_1623_p2;
        add_ln13_30_reg_2414 <= add_ln13_30_fu_1633_p2;
        add_ln13_6_reg_2378 <= add_ln13_6_fu_1577_p2;
        add_ln13_reg_2373 <= add_ln13_fu_1567_p2;
        add_ln5_1_reg_1896 <= add_ln5_1_fu_1047_p2;
        icmp_ln12_reg_1818 <= icmp_ln12_fu_978_p2;
        icmp_ln16_reg_1906 <= icmp_ln16_fu_1062_p2;
        icmp_ln16_reg_1906_pp0_iter1_reg <= icmp_ln16_reg_1906;
        icmp_ln16_reg_1906_pp0_iter2_reg <= icmp_ln16_reg_1906_pp0_iter1_reg;
        icmp_ln8_reg_1936 <= icmp_ln8_fu_1143_p2;
        icmp_ln8_reg_1936_pp0_iter1_reg <= icmp_ln8_reg_1936;
        icmp_ln8_reg_1936_pp0_iter2_reg <= icmp_ln8_reg_1936_pp0_iter1_reg;
        lshr_ln12_3_reg_1901 <= {{empty_13_fu_1036_p2[12:3]}};
        lshr_ln12_7_reg_1940 <= {{empty_17_fu_1149_p2[12:3]}};
        lshr_ln12_8_reg_1945 <= {{add_ln12_1_fu_1164_p2[12:3]}};
        lshr_ln12_s_reg_1960 <= {{add_ln12_2_fu_1201_p2[12:3]}};
        or_ln8_3_reg_1931[12 : 2] <= or_ln8_3_fu_1135_p3[12 : 2];
        or_ln8_reg_1910[12 : 1] <= or_ln8_fu_1078_p3[12 : 1];
        select_ln12_21_reg_2278 <= select_ln12_21_fu_1503_p3;
        select_ln12_6_reg_2236 <= select_ln12_6_fu_1496_p3;
        temp_1_reg_2383 <= temp_1_fu_1591_p2;
        tmp_7_reg_1926 <= {{c_fu_142[12:2]}};
        zext_ln12_2_reg_1860[9 : 0] <= zext_ln12_2_fu_1012_p1[9 : 0];
        zext_ln12_reg_1794[9 : 0] <= zext_ln12_fu_972_p1[9 : 0];
        zext_ln12_reg_1794_pp0_iter1_reg[9 : 0] <= zext_ln12_reg_1794[9 : 0];
        zext_ln12_reg_1794_pp0_iter2_reg[9 : 0] <= zext_ln12_reg_1794_pp0_iter1_reg[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_10_reg_2333 <= grp_fu_806_p2;
        mul_ln13_19_reg_2348 <= grp_fu_810_p2;
        mul_ln13_22_reg_2353 <= grp_fu_818_p2;
        mul_ln13_26_reg_2358 <= grp_fu_830_p2;
        mul_ln13_32_reg_2363 <= grp_fu_842_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_18_reg_2308 <= grp_fu_822_p2;
        mul_ln13_20_reg_2313 <= grp_fu_826_p2;
        mul_ln13_29_reg_2318 <= grp_fu_834_p2;
        mul_ln13_33_reg_2323 <= grp_fu_846_p2;
        mul_ln13_3_reg_2288 <= grp_fu_802_p2;
        mul_ln13_9_reg_2298 <= grp_fu_810_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_2_reg_2241 <= grp_fu_810_p2;
        mul_ln13_4_reg_2246 <= grp_fu_814_p2;
        select_ln12_10_reg_2251 <= grp_fu_857_p3;
        select_ln12_12_reg_2256 <= grp_fu_850_p3;
        select_ln12_18_reg_2261 <= grp_fu_878_p3;
        select_ln12_19_reg_2266 <= grp_fu_864_p3;
        select_ln12_20_reg_2272 <= grp_fu_871_p3;
        select_ln12_22_reg_2283 <= grp_fu_885_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_892 <= grp_fu_802_p2;
        reg_904 <= grp_fu_822_p2;
        reg_908 <= grp_fu_826_p2;
        reg_916 <= grp_fu_834_p2;
        reg_928 <= grp_fu_846_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_896 <= grp_fu_806_p2;
        reg_900 <= grp_fu_818_p2;
        reg_912 <= grp_fu_830_p2;
        reg_924 <= grp_fu_842_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_920 <= grp_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_932 <= grp_fu_814_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln12_13_reg_2158 <= grp_fu_864_p3;
        select_ln12_14_reg_2164 <= grp_fu_871_p3;
        select_ln12_15_reg_2170 <= grp_fu_878_p3;
        select_ln12_23_reg_2231 <= grp_fu_885_p3;
        select_ln12_8_reg_2127 <= grp_fu_850_p3;
        select_ln12_9_reg_2133 <= grp_fu_857_p3;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_1936 == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln8_reg_1936_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_802_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_802_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_802_p0 = filter_load_2;
        end else begin
            grp_fu_802_p0 = 'bx;
        end
    end else begin
        grp_fu_802_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_802_p1 = select_ln12_6_reg_2236;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_802_p1 = select_ln12_8_reg_2127;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_802_p1 = select_ln12_2_reg_1976;
        end else begin
            grp_fu_802_p1 = 'bx;
        end
    end else begin
        grp_fu_802_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_806_p0 = filter_load_7;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_806_p0 = filter_load_5;
    end else begin
        grp_fu_806_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_806_p1 = select_ln12_10_reg_2251;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_806_p1 = select_ln12_7_reg_2121;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_806_p1 = select_ln12_5_reg_1993;
        end else begin
            grp_fu_806_p1 = 'bx;
        end
    end else begin
        grp_fu_806_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_810_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_810_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_810_p0 = filter_load_1;
        end else begin
            grp_fu_810_p0 = 'bx;
        end
    end else begin
        grp_fu_810_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_810_p1 = select_ln12_17_reg_2175;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_810_p1 = select_ln12_9_reg_2133;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_810_p1 = select_ln12_1_reg_1970;
        end else begin
            grp_fu_810_p1 = 'bx;
        end
    end else begin
        grp_fu_810_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_814_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_814_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_814_p0 = filter_load;
        end else begin
            grp_fu_814_p0 = 'bx;
        end
    end else begin
        grp_fu_814_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_814_p1 = select_ln12_20_reg_2272;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_814_p1 = select_ln12_7_reg_2121;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_814_p1 = select_ln12_reg_1965;
        end else begin
            grp_fu_814_p1 = 'bx;
        end
    end else begin
        grp_fu_814_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_818_p0 = filter_load;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_818_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_818_p0 = filter_load_4;
        end else begin
            grp_fu_818_p0 = 'bx;
        end
    end else begin
        grp_fu_818_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_818_p1 = select_ln12_12_reg_2256;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_818_p1 = select_ln12_8_reg_2127;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_818_p1 = select_ln12_4_reg_1987;
        end else begin
            grp_fu_818_p1 = 'bx;
        end
    end else begin
        grp_fu_818_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_822_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_822_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_822_p0 = filter_load_3;
        end else begin
            grp_fu_822_p0 = 'bx;
        end
    end else begin
        grp_fu_822_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_822_p1 = select_ln12_18_reg_2261;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_822_p1 = select_ln12_14_reg_2164;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_822_p1 = select_ln12_3_reg_1982;
        end else begin
            grp_fu_822_p1 = 'bx;
        end
    end else begin
        grp_fu_822_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_826_p0 = filter_load_4;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_826_p0 = filter_load_1;
    end else begin
        grp_fu_826_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_826_p1 = select_ln12_16_reg_2069;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_826_p1 = select_ln12_13_reg_2158;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_826_p1 = select_ln12_2_reg_1976;
        end else begin
            grp_fu_826_p1 = 'bx;
        end
    end else begin
        grp_fu_826_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_830_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_830_p0 = filter_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_830_p0 = filter_load_8;
        end else begin
            grp_fu_830_p0 = 'bx;
        end
    end else begin
        grp_fu_830_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_830_p1 = select_ln12_19_reg_2266;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_830_p1 = select_ln12_15_reg_2170;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_830_p1 = select_ln12_11_reg_2034;
        end else begin
            grp_fu_830_p1 = 'bx;
        end
    end else begin
        grp_fu_830_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_834_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_834_p0 = filter_load_1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_834_p0 = filter_load;
        end else begin
            grp_fu_834_p0 = 'bx;
        end
    end else begin
        grp_fu_834_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_834_p1 = select_ln12_21_reg_2278;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_834_p1 = select_ln12_14_reg_2164;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_834_p1 = select_ln12_1_reg_1970;
        end else begin
            grp_fu_834_p1 = 'bx;
        end
    end else begin
        grp_fu_834_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_838_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_838_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_838_p0 = filter_load_4;
        end else begin
            grp_fu_838_p0 = 'bx;
        end
    end else begin
        grp_fu_838_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_838_p1 = select_ln12_22_reg_2283;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_838_p1 = select_ln12_23_reg_2231;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_838_p1 = select_ln12_5_reg_1993;
        end else begin
            grp_fu_838_p1 = 'bx;
        end
    end else begin
        grp_fu_838_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_842_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_842_p0 = filter_load;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_842_p0 = filter_load_3;
        end else begin
            grp_fu_842_p0 = 'bx;
        end
    end else begin
        grp_fu_842_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_842_p1 = select_ln12_19_reg_2266;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_842_p1 = select_ln12_13_reg_2158;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_842_p1 = select_ln12_4_reg_1987;
        end else begin
            grp_fu_842_p1 = 'bx;
        end
    end else begin
        grp_fu_842_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_846_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_846_p0 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_846_p0 = filter_load_3;
        end else begin
            grp_fu_846_p0 = 'bx;
        end
    end else begin
        grp_fu_846_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_846_p1 = select_ln12_20_reg_2272;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_846_p1 = select_ln12_17_reg_2175;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_846_p1 = select_ln12_16_reg_2069;
        end else begin
            grp_fu_846_p1 = 'bx;
        end
    end else begin
        grp_fu_846_p1 = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_1936 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln12_reg_1818 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_14_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln12_reg_1818 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_4_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln12_10_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_2_fu_1012_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln12_12_fu_1335_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln12_fu_972_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_1936 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln12_reg_1818 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln12_reg_1818 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_16_fu_1490_p1;
    end else if (((icmp_ln8_reg_1936 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln12_reg_1818 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln12_17_fu_1398_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln12_reg_1818 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln12_5_fu_1270_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_3_fu_1028_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address1_local = zext_ln12_15_fu_1462_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address1_local = zext_ln12_1_fu_994_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_1936 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln12_reg_1818 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln12_reg_1818 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_4_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = zext_ln12_2_reg_1860;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_3_fu_1028_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address1_local = zext_ln12_reg_1794;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address1_local = zext_ln12_5_fu_1270_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address1_local = zext_ln12_1_fu_994_p1;
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_13_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln12_9_fu_1318_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_11_fu_1195_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address1_local = zext_ln12_7_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address1_local = zext_ln12_6_fu_1291_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address1_local = zext_ln12_8_fu_1101_p1;
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_1936 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln12_reg_1818 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_14_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln12_reg_1818 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_4_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address0_local = zext_ln12_10_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_2_fu_1012_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_4_address1_local = zext_ln12_12_fu_1335_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_4_address1_local = zext_ln12_fu_972_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_1936 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln12_reg_1818 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln12_reg_1818 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_16_fu_1490_p1;
    end else if (((icmp_ln8_reg_1936 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln12_reg_1818 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln12_17_fu_1398_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln12_reg_1818 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln12_5_fu_1270_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_3_fu_1028_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address1_local = zext_ln12_15_fu_1462_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address1_local = zext_ln12_1_fu_994_p1;
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_1936 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln12_reg_1818 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln12_reg_1818 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_4_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = zext_ln12_2_reg_1860;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_3_fu_1028_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address1_local = zext_ln12_reg_1794;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address1_local = zext_ln12_5_fu_1270_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address1_local = zext_ln12_1_fu_994_p1;
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_13_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln12_9_fu_1318_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_11_fu_1195_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address1_local = zext_ln12_7_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address1_local = zext_ln12_6_fu_1291_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address1_local = zext_ln12_8_fu_1101_p1;
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln16_reg_1906_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln16_reg_1906_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln16_reg_1906_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln8_reg_1936_pp0_iter2_reg == 1'd1) & (icmp_ln16_reg_1906_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln16_reg_1906_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln16_reg_1906_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln16_reg_1906_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln8_reg_1936_pp0_iter2_reg == 1'd1) & (icmp_ln16_reg_1906_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln12_1_fu_1164_p2 = (empty_17_fu_1149_p2 + 13'd2);
assign add_ln12_2_fu_1201_p2 = (empty_18_fu_1180_p2 + 13'd2);
assign add_ln12_3_fu_1354_p2 = (empty_19_fu_1340_p2 + 13'd2);
assign add_ln12_4_fu_1447_p2 = (or_ln8_2_reg_2095 + tmp_s_fu_1440_p3);
assign add_ln12_5_fu_1475_p2 = (or_ln8_2_reg_2095 + tmp_8_fu_1468_p3);
assign add_ln12_6_fu_1383_p2 = (add_ln12_7_fu_1377_p2 + tmp);
assign add_ln12_7_fu_1377_p2 = (or_ln8_2_fu_1370_p3 + 13'd130);
assign add_ln12_fu_967_p2 = (trunc_ln_fu_957_p4 + tmp_2);
assign add_ln13_10_fu_1586_p2 = (add_ln13_9_reg_2338 + add_ln13_8_fu_1582_p2);
assign add_ln13_11_fu_1545_p2 = (reg_916 + reg_908);
assign add_ln13_12_fu_1516_p2 = (reg_924 + reg_912);
assign add_ln13_13_fu_1522_p2 = (add_ln13_12_fu_1516_p2 + reg_920);
assign add_ln13_14_fu_1551_p2 = (add_ln13_13_reg_2303 + add_ln13_11_fu_1545_p2);
assign add_ln13_16_fu_1596_p2 = (reg_904 + mul_ln13_26_reg_2358);
assign add_ln13_17_fu_1601_p2 = (mul_ln13_19_reg_2348 + reg_908);
assign add_ln13_18_fu_1665_p2 = (add_ln13_17_reg_2394 + add_ln13_16_reg_2389);
assign add_ln13_19_fu_1647_p2 = (mul_ln13_22_reg_2353 + mul_ln13_20_reg_2313);
assign add_ln13_1_fu_1510_p2 = (reg_896 + reg_900);
assign add_ln13_20_fu_1606_p2 = (mul_ln13_18_reg_2308 + reg_932);
assign add_ln13_21_fu_1611_p2 = (add_ln13_20_fu_1606_p2 + reg_912);
assign add_ln13_22_fu_1651_p2 = (add_ln13_21_reg_2399 + add_ln13_19_fu_1647_p2);
assign add_ln13_24_fu_1617_p2 = (reg_916 + reg_920);
assign add_ln13_25_fu_1623_p2 = (reg_928 + mul_ln13_32_reg_2363);
assign add_ln13_26_fu_1656_p2 = (add_ln13_25_reg_2409 + add_ln13_24_reg_2404);
assign add_ln13_27_fu_1628_p2 = (reg_924 + mul_ln13_29_reg_2318);
assign add_ln13_28_fu_1556_p2 = (reg_928 + reg_920);
assign add_ln13_29_fu_1562_p2 = (add_ln13_28_fu_1556_p2 + mul_ln13_33_reg_2323);
assign add_ln13_2_fu_1638_p2 = (add_ln13_1_reg_2293 + add_ln13_reg_2373);
assign add_ln13_30_fu_1633_p2 = (add_ln13_29_reg_2368 + add_ln13_27_fu_1628_p2);
assign add_ln13_3_fu_1573_p2 = (mul_ln13_4_reg_2246 + mul_ln13_2_reg_2241);
assign add_ln13_4_fu_1528_p2 = (reg_892 + mul_ln13_3_reg_2288);
assign add_ln13_5_fu_1533_p2 = (add_ln13_4_fu_1528_p2 + reg_904);
assign add_ln13_6_fu_1577_p2 = (add_ln13_5_reg_2328 + add_ln13_3_fu_1573_p2);
assign add_ln13_8_fu_1582_p2 = (mul_ln13_9_reg_2298 + mul_ln13_10_reg_2333);
assign add_ln13_9_fu_1539_p2 = (reg_900 + reg_932);
assign add_ln13_fu_1567_p2 = (reg_892 + reg_896);
assign add_ln5_1_fu_1047_p2 = (add_ln5_2_fu_1041_p2 + tmp_2);
assign add_ln5_2_fu_1041_p2 = (trunc_ln_fu_957_p4 + 10'd16);
assign add_ln5_fu_1007_p2 = (trunc_ln_fu_957_p4 + tmp_3);
assign add_ln8_fu_1217_p2 = (c_fu_142 + 64'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_11_fu_952_p2 = (trunc_ln8_1_fu_948_p1 + tmp);
assign empty_12_fu_1002_p2 = (trunc_ln8_1_fu_948_p1 + tmp_1);
assign empty_13_fu_1036_p2 = (trunc_ln8_1_fu_948_p1 + empty);
assign empty_14_fu_1277_p2 = (or_ln8_reg_1910 + tmp);
assign empty_15_fu_1297_p2 = (or_ln8_reg_1910 + tmp_1);
assign empty_16_fu_1086_p2 = (or_ln8_fu_1078_p3 + empty);
assign empty_17_fu_1149_p2 = (or_ln8_3_fu_1135_p3 + tmp);
assign empty_18_fu_1180_p2 = (or_ln8_3_fu_1135_p3 + tmp_1);
assign empty_19_fu_1340_p2 = (or_ln8_3_reg_1931 + empty);
assign grp_fu_850_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_6_q1 : orig_2_q1);
assign grp_fu_857_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_7_q1 : orig_3_q1);
assign grp_fu_864_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_7_q0 : orig_3_q0);
assign grp_fu_871_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_0_q0 : orig_4_q0);
assign grp_fu_878_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_6_q0 : orig_2_q0);
assign grp_fu_885_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_1_q0 : orig_5_q0);
assign icmp_ln12_fu_978_p2 = ((trunc_ln8_fu_944_p1 != 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1062_p2 = ((trunc_ln8_fu_944_p1 == 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_1143_p2 = (($signed(or_ln8_1_fu_1117_p3) < $signed(64'd62)) ? 1'b1 : 1'b0);
assign lshr_ln12_12_fu_1452_p4 = {{add_ln12_4_fu_1447_p2[12:3]}};
assign lshr_ln12_13_fu_1480_p4 = {{add_ln12_5_fu_1475_p2[12:3]}};
assign lshr_ln12_14_fu_1388_p4 = {{add_ln12_6_fu_1383_p2[12:3]}};
assign lshr_ln12_1_fu_984_p4 = {{empty_11_fu_952_p2[12:3]}};
assign lshr_ln12_2_fu_1018_p4 = {{empty_12_fu_1002_p2[12:3]}};
assign lshr_ln12_4_fu_1281_p4 = {{empty_14_fu_1277_p2[12:3]}};
assign lshr_ln12_6_fu_1091_p4 = {{empty_16_fu_1086_p2[12:3]}};
assign lshr_ln12_9_fu_1185_p4 = {{empty_18_fu_1180_p2[12:3]}};
assign or_ln8_1_fu_1117_p3 = {{tmp_5_fu_1107_p4}, {2'd2}};
assign or_ln8_2_fu_1370_p3 = {{tmp_7_reg_1926}, {2'd3}};
assign or_ln8_3_fu_1135_p3 = {{tmp_7_fu_1125_p4}, {2'd2}};
assign or_ln8_fu_1078_p3 = {{tmp_4_fu_1068_p4}, {1'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = orig_4_address1_local;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = orig_5_address1_local;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = orig_6_address1_local;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = orig_7_address1_local;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign select_ln12_11_fu_1311_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_7_q1 : orig_3_q1);
assign select_ln12_16_fu_1328_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_7_q0 : orig_3_q0);
assign select_ln12_17_fu_1423_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_0_q1 : orig_4_q1);
assign select_ln12_1_fu_1235_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_5_q1 : orig_1_q1);
assign select_ln12_21_fu_1503_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_1_q1 : orig_5_q1);
assign select_ln12_2_fu_1242_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_6_q1 : orig_2_q1);
assign select_ln12_3_fu_1249_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_4_q0 : orig_0_q0);
assign select_ln12_4_fu_1256_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_5_q0 : orig_1_q0);
assign select_ln12_5_fu_1263_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_6_q0 : orig_2_q0);
assign select_ln12_6_fu_1496_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_4_q0 : orig_0_q0);
assign select_ln12_7_fu_1411_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_5_q0 : orig_1_q0);
assign select_ln12_fu_1228_p3 = ((icmp_ln12_reg_1818[0:0] == 1'b1) ? orig_4_q1 : orig_0_q1);
assign sol_0_address0 = zext_ln12_reg_1794_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_2419;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln12_reg_1794_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_1_reg_2383;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln12_reg_1794_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_2_reg_2436;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln12_reg_1794_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_3_reg_2430;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = zext_ln12_reg_1794_pp0_iter2_reg;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = temp_reg_2419;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = zext_ln12_reg_1794_pp0_iter2_reg;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = temp_1_reg_2383;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = zext_ln12_reg_1794_pp0_iter2_reg;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = temp_2_reg_2436;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = zext_ln12_reg_1794_pp0_iter2_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = temp_3_reg_2430;
assign sol_7_we0 = sol_7_we0_local;
assign temp_1_fu_1591_p2 = (add_ln13_14_reg_2343 + add_ln13_10_fu_1586_p2);
assign temp_2_fu_1669_p2 = (add_ln13_22_reg_2425 + add_ln13_18_fu_1665_p2);
assign temp_3_fu_1660_p2 = (add_ln13_30_reg_2414 + add_ln13_26_fu_1656_p2);
assign temp_fu_1642_p2 = (add_ln13_6_reg_2378 + add_ln13_2_fu_1638_p2);
assign tmp_4_fu_1068_p4 = {{c_fu_142[12:1]}};
assign tmp_5_fu_1107_p4 = {{c_fu_142[63:2]}};
assign tmp_7_fu_1125_p4 = {{c_fu_142[12:2]}};
assign tmp_8_fu_1468_p3 = {{indvars_iv_next93}, {6'd2}};
assign tmp_s_fu_1440_p3 = {{r}, {6'd2}};
assign trunc_ln8_1_fu_948_p1 = c_fu_142[12:0];
assign trunc_ln8_fu_944_p1 = c_fu_142[2:0];
assign trunc_ln_fu_957_p4 = {{c_fu_142[12:3]}};
assign zext_ln12_10_fu_1323_p1 = lshr_ln12_8_reg_1945;
assign zext_ln12_11_fu_1195_p1 = lshr_ln12_9_fu_1185_p4;
assign zext_ln12_12_fu_1335_p1 = lshr_ln12_s_reg_1960;
assign zext_ln12_13_fu_1430_p1 = lshr_ln12_10_reg_2085;
assign zext_ln12_14_fu_1435_p1 = lshr_ln12_11_reg_2090;
assign zext_ln12_15_fu_1462_p1 = lshr_ln12_12_fu_1452_p4;
assign zext_ln12_16_fu_1490_p1 = lshr_ln12_13_fu_1480_p4;
assign zext_ln12_17_fu_1398_p1 = lshr_ln12_14_fu_1388_p4;
assign zext_ln12_1_fu_994_p1 = lshr_ln12_1_fu_984_p4;
assign zext_ln12_2_fu_1012_p1 = add_ln5_fu_1007_p2;
assign zext_ln12_3_fu_1028_p1 = lshr_ln12_2_fu_1018_p4;
assign zext_ln12_4_fu_1404_p1 = add_ln5_1_reg_1896;
assign zext_ln12_5_fu_1270_p1 = lshr_ln12_3_reg_1901;
assign zext_ln12_6_fu_1291_p1 = lshr_ln12_4_fu_1281_p4;
assign zext_ln12_7_fu_1418_p1 = lshr_ln12_5_reg_2029;
assign zext_ln12_8_fu_1101_p1 = lshr_ln12_6_fu_1091_p4;
assign zext_ln12_9_fu_1318_p1 = lshr_ln12_7_reg_1940;
assign zext_ln12_fu_972_p1 = add_ln12_fu_967_p2;
always @ (posedge ap_clk) begin
    zext_ln12_reg_1794[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1794_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1794_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_2_reg_1860[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    or_ln8_reg_1910[0] <= 1'b1;
    or_ln8_3_reg_1931[1:0] <= 2'b10;
    or_ln8_2_reg_2095[1:0] <= 2'b11;
end
endmodule 