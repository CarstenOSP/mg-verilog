module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_78_reload,B_75_reload,C_128_reload,D_79_reload,E_75_reload,W_4_address0,W_4_ce0,W_4_q0,W_5_address0,W_5_ce0,W_5_q0,W_6_address0,W_6_ce0,W_6_q0,W_7_address0,W_7_ce0,W_7_q0,W_8_address0,W_8_ce0,W_8_q0,W_9_address0,W_9_ce0,W_9_q0,W_10_address0,W_10_ce0,W_10_q0,W_11_address0,W_11_ce0,W_11_q0,W_12_address0,W_12_ce0,W_12_q0,W_13_address0,W_13_ce0,W_13_q0,W_14_address0,W_14_ce0,W_14_q0,W_15_address0,W_15_ce0,W_15_q0,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,E_22_out,E_22_out_ap_vld,B_22_out,B_22_out_ap_vld,D_76_out,D_76_out_ap_vld,A_75_out,A_75_out_ap_vld,C_73_out,C_73_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 31'd1;
parameter    ap_ST_fsm_pp0_stage1 = 31'd2;
parameter    ap_ST_fsm_pp0_stage2 = 31'd4;
parameter    ap_ST_fsm_pp0_stage3 = 31'd8;
parameter    ap_ST_fsm_pp0_stage4 = 31'd16;
parameter    ap_ST_fsm_pp0_stage5 = 31'd32;
parameter    ap_ST_fsm_pp0_stage6 = 31'd64;
parameter    ap_ST_fsm_pp0_stage7 = 31'd128;
parameter    ap_ST_fsm_pp0_stage8 = 31'd256;
parameter    ap_ST_fsm_pp0_stage9 = 31'd512;
parameter    ap_ST_fsm_pp0_stage10 = 31'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 31'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 31'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 31'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 31'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 31'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 31'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 31'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 31'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 31'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 31'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 31'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 31'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 31'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 31'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 31'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 31'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 31'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 31'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 31'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 31'd1073741824;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_78_reload;
input  [31:0] B_75_reload;
input  [31:0] C_128_reload;
input  [31:0] D_79_reload;
input  [31:0] E_75_reload;
output  [2:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [2:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [2:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [2:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [2:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [2:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [2:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [2:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [2:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [2:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [2:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [2:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [2:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [2:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [2:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [2:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [31:0] E_22_out;
output   E_22_out_ap_vld;
output  [31:0] B_22_out;
output   B_22_out_ap_vld;
output  [31:0] D_76_out;
output   D_76_out_ap_vld;
output  [31:0] A_75_out;
output   A_75_out_ap_vld;
output  [31:0] C_73_out;
output   C_73_out_ap_vld;
reg ap_idle;
reg E_22_out_ap_vld;
reg B_22_out_ap_vld;
reg D_76_out_ap_vld;
reg A_75_out_ap_vld;
reg C_73_out_ap_vld;
(* fsm_encoding = "none" *) reg   [30:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln120_reg_1845;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_subdone;
reg   [31:0] A_reg_1805;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] add_ln122_2_fu_504_p2;
reg   [31:0] add_ln122_2_reg_1815;
wire   [1:0] trunc_ln122_3_fu_510_p1;
reg   [1:0] trunc_ln122_3_reg_1825;
reg   [29:0] lshr_ln122_3_reg_1830;
wire   [0:0] icmp_ln120_fu_530_p2;
reg   [31:0] D_reg_1909;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] C_reg_1914;
wire   [31:0] temp_fu_658_p2;
reg   [31:0] temp_reg_1920;
wire   [1:0] trunc_ln122_1_fu_663_p1;
reg   [1:0] trunc_ln122_1_reg_1925;
reg   [29:0] lshr_ln122_1_reg_1930;
wire   [26:0] trunc_ln122_2_fu_677_p1;
reg   [26:0] trunc_ln122_2_reg_1935;
reg   [4:0] lshr_ln122_2_reg_1940;
reg   [31:0] W_5_load_reg_1945;
reg   [31:0] W_6_load_reg_1950;
wire   [1:0] trunc_ln122_5_fu_691_p1;
reg   [1:0] trunc_ln122_5_reg_1955;
reg   [29:0] lshr_ln122_5_reg_1960;
reg   [31:0] W_7_load_reg_1965;
reg   [31:0] W_8_load_reg_1970;
reg   [31:0] W_9_load_reg_1975;
reg   [31:0] W_10_load_reg_1980;
reg   [31:0] W_11_load_reg_1985;
reg   [31:0] W_12_load_reg_1990;
reg   [31:0] W_13_load_reg_1995;
reg   [31:0] W_14_load_reg_2000;
reg   [31:0] W_15_load_reg_2005;
reg   [31:0] W_load_reg_2010;
reg   [31:0] W_1_load_reg_2015;
reg   [31:0] W_2_load_reg_2020;
reg   [31:0] W_3_load_reg_2025;
wire   [31:0] C_3_fu_705_p3;
reg   [31:0] C_3_reg_2030;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] add_ln122_6_fu_723_p2;
reg   [31:0] add_ln122_6_reg_2036;
wire   [31:0] C_4_fu_728_p3;
reg   [31:0] C_4_reg_2041;
wire   [31:0] xor_ln122_5_fu_739_p2;
reg   [31:0] xor_ln122_5_reg_2048;
wire   [26:0] trunc_ln122_4_fu_764_p1;
reg   [26:0] trunc_ln122_4_reg_2053;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln122_4_reg_2058;
wire   [31:0] C_5_fu_778_p3;
reg   [31:0] C_5_reg_2063;
wire   [31:0] xor_ln122_7_fu_789_p2;
reg   [31:0] xor_ln122_7_reg_2070;
wire   [1:0] trunc_ln122_7_fu_795_p1;
reg   [1:0] trunc_ln122_7_reg_2075;
reg   [29:0] lshr_ln122_7_reg_2080;
wire   [31:0] add_ln122_10_fu_821_p2;
reg   [31:0] add_ln122_10_reg_2085;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] temp_2_fu_830_p2;
reg   [31:0] temp_2_reg_2090;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln122_6_fu_835_p1;
reg   [26:0] trunc_ln122_6_reg_2098;
reg   [4:0] lshr_ln122_6_reg_2103;
wire   [31:0] add_ln122_14_fu_861_p2;
reg   [31:0] add_ln122_14_reg_2108;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] temp_3_fu_870_p2;
reg   [31:0] temp_3_reg_2113;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] C_6_fu_876_p3;
reg   [31:0] C_6_reg_2122;
wire   [31:0] temp_4_fu_928_p2;
reg   [31:0] temp_4_reg_2129;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln122_10_fu_934_p1;
reg   [26:0] trunc_ln122_10_reg_2134;
reg   [4:0] lshr_ln122_s_reg_2139;
wire   [1:0] trunc_ln122_13_fu_948_p1;
reg   [1:0] trunc_ln122_13_reg_2144;
reg   [29:0] lshr_ln122_12_reg_2149;
wire   [31:0] add_ln122_22_fu_974_p2;
reg   [31:0] add_ln122_22_reg_2154;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] C_7_fu_991_p3;
reg   [31:0] C_7_reg_2159;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_5_fu_1014_p2;
reg   [31:0] temp_5_reg_2165;
wire   [26:0] trunc_ln122_12_fu_1019_p1;
reg   [26:0] trunc_ln122_12_reg_2170;
reg   [4:0] lshr_ln122_11_reg_2175;
wire   [1:0] trunc_ln122_15_fu_1033_p1;
reg   [1:0] trunc_ln122_15_reg_2180;
reg   [29:0] lshr_ln122_14_reg_2185;
wire   [31:0] add_ln122_26_fu_1059_p2;
reg   [31:0] add_ln122_26_reg_2190;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] C_8_fu_1076_p3;
reg   [31:0] C_8_reg_2195;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [31:0] temp_6_fu_1099_p2;
reg   [31:0] temp_6_reg_2201;
wire   [26:0] trunc_ln122_14_fu_1104_p1;
reg   [26:0] trunc_ln122_14_reg_2206;
reg   [4:0] lshr_ln122_13_reg_2211;
wire   [1:0] trunc_ln122_17_fu_1118_p1;
reg   [1:0] trunc_ln122_17_reg_2216;
reg   [29:0] lshr_ln122_16_reg_2221;
wire   [31:0] add_ln122_30_fu_1144_p2;
reg   [31:0] add_ln122_30_reg_2226;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] C_9_fu_1149_p3;
reg   [31:0] C_9_reg_2231;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [31:0] temp_7_fu_1170_p2;
reg   [31:0] temp_7_reg_2237;
wire   [26:0] trunc_ln122_16_fu_1175_p1;
reg   [26:0] trunc_ln122_16_reg_2242;
reg   [4:0] lshr_ln122_15_reg_2247;
wire   [31:0] C_12_fu_1203_p3;
reg   [31:0] C_12_reg_2252;
wire   [31:0] add_ln122_34_fu_1223_p2;
reg   [31:0] add_ln122_34_reg_2259;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [31:0] C_10_fu_1228_p3;
reg   [31:0] C_10_reg_2264;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [31:0] temp_8_fu_1249_p2;
reg   [31:0] temp_8_reg_2269;
wire   [31:0] C_11_fu_1254_p3;
reg   [31:0] C_11_reg_2274;
wire   [26:0] trunc_ln122_18_fu_1260_p1;
reg   [26:0] trunc_ln122_18_reg_2280;
reg   [4:0] lshr_ln122_17_reg_2285;
wire   [31:0] xor_ln122_19_fu_1279_p2;
reg   [31:0] xor_ln122_19_reg_2290;
wire   [1:0] trunc_ln122_21_fu_1285_p1;
reg   [1:0] trunc_ln122_21_reg_2295;
reg   [29:0] lshr_ln122_20_reg_2300;
wire   [31:0] add_ln122_38_fu_1311_p2;
reg   [31:0] add_ln122_38_reg_2305;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [31:0] temp_9_fu_1320_p2;
reg   [31:0] temp_9_reg_2310;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [26:0] trunc_ln122_20_fu_1325_p1;
reg   [26:0] trunc_ln122_20_reg_2315;
reg   [4:0] lshr_ln122_19_reg_2320;
wire   [1:0] trunc_ln122_23_fu_1339_p1;
reg   [1:0] trunc_ln122_23_reg_2325;
reg   [29:0] lshr_ln122_22_reg_2330;
wire   [31:0] add_ln122_42_fu_1365_p2;
reg   [31:0] add_ln122_42_reg_2335;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [31:0] temp_10_fu_1384_p2;
reg   [31:0] temp_10_reg_2340;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [26:0] trunc_ln122_22_fu_1389_p1;
reg   [26:0] trunc_ln122_22_reg_2345;
reg   [4:0] lshr_ln122_21_reg_2350;
wire   [1:0] trunc_ln122_25_fu_1403_p1;
reg   [1:0] trunc_ln122_25_reg_2355;
reg   [29:0] lshr_ln122_24_reg_2360;
wire   [31:0] add_ln122_46_fu_1429_p2;
reg   [31:0] add_ln122_46_reg_2365;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [31:0] C_13_fu_1434_p3;
reg   [31:0] C_13_reg_2370;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [31:0] temp_11_fu_1455_p2;
reg   [31:0] temp_11_reg_2376;
wire   [26:0] trunc_ln122_24_fu_1460_p1;
reg   [26:0] trunc_ln122_24_reg_2381;
reg   [4:0] lshr_ln122_23_reg_2386;
wire   [1:0] trunc_ln122_27_fu_1474_p1;
reg   [1:0] trunc_ln122_27_reg_2391;
reg   [29:0] lshr_ln122_26_reg_2396;
wire   [31:0] add_ln122_50_fu_1500_p2;
reg   [31:0] add_ln122_50_reg_2401;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [31:0] C_14_fu_1505_p3;
reg   [31:0] C_14_reg_2406;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [31:0] temp_12_fu_1526_p2;
reg   [31:0] temp_12_reg_2412;
wire   [26:0] trunc_ln122_26_fu_1531_p1;
reg   [26:0] trunc_ln122_26_reg_2417;
reg   [4:0] lshr_ln122_25_reg_2422;
wire   [1:0] trunc_ln122_29_fu_1545_p1;
reg   [1:0] trunc_ln122_29_reg_2427;
reg   [29:0] lshr_ln122_28_reg_2432;
wire   [31:0] add_ln122_54_fu_1571_p2;
reg   [31:0] add_ln122_54_reg_2437;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [31:0] C_15_fu_1576_p3;
reg   [31:0] C_15_reg_2442;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [31:0] temp_13_fu_1597_p2;
reg   [31:0] temp_13_reg_2448;
wire   [26:0] trunc_ln122_28_fu_1602_p1;
reg   [26:0] trunc_ln122_28_reg_2453;
reg   [4:0] lshr_ln122_27_reg_2458;
wire   [31:0] add_ln122_58_fu_1655_p2;
reg   [31:0] add_ln122_58_reg_2463;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [26:0] trunc_ln122_30_fu_1692_p1;
reg   [26:0] trunc_ln122_30_reg_2468;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [4:0] lshr_ln122_29_reg_2473;
wire   [31:0] xor_ln122_31_fu_1711_p2;
reg   [31:0] xor_ln122_31_reg_2478;
wire   [31:0] add_ln122_62_fu_1744_p2;
reg   [31:0] add_ln122_62_reg_2483;
wire    ap_block_pp0_stage30_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_fu_460_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln100_1_fu_552_p1;
wire   [63:0] zext_ln100_2_fu_573_p1;
wire   [63:0] zext_ln100_3_fu_594_p1;
wire   [63:0] zext_ln100_4_fu_615_p1;
reg   [31:0] E_fu_114;
wire   [31:0] C_16_fu_1660_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] E_1_fu_118;
wire   [31:0] C_17_fu_1686_p3;
wire    ap_block_pp0_stage2;
reg   [31:0] E_2_fu_122;
wire   [31:0] C_2_fu_1630_p3;
reg   [31:0] B_fu_126;
wire   [31:0] temp_14_fu_1681_p2;
reg   [31:0] B_1_fu_130;
wire   [31:0] temp_15_fu_1753_p2;
reg   [5:0] i_fu_134;
wire   [5:0] add_ln120_5_fu_620_p2;
wire    ap_block_pp0_stage8_01001;
reg    W_4_ce0_local;
reg    W_5_ce0_local;
reg    W_6_ce0_local;
reg    W_7_ce0_local;
reg    W_8_ce0_local;
reg    W_9_ce0_local;
reg    W_10_ce0_local;
reg    W_11_ce0_local;
reg    W_12_ce0_local;
reg    W_13_ce0_local;
reg    W_14_ce0_local;
reg    W_15_ce0_local;
reg    W_ce0_local;
reg    W_1_ce0_local;
reg    W_2_ce0_local;
reg    W_3_ce0_local;
wire    ap_block_pp0_stage0;
wire   [1:0] lshr_ln100_1_fu_450_p4;
wire   [26:0] trunc_ln122_fu_476_p1;
wire   [4:0] lshr_ln3_fu_480_p4;
wire   [31:0] or_ln1_fu_490_p3;
wire   [31:0] add_ln122_1_fu_498_p2;
wire   [5:0] add_ln120_fu_524_p2;
wire   [5:0] add_ln120_1_fu_536_p2;
wire   [1:0] lshr_ln100_2_fu_542_p4;
wire   [5:0] add_ln120_2_fu_557_p2;
wire   [1:0] lshr_ln100_3_fu_563_p4;
wire   [5:0] add_ln120_3_fu_578_p2;
wire   [1:0] lshr_ln100_4_fu_584_p4;
wire   [5:0] add_ln120_4_fu_599_p2;
wire   [1:0] lshr_ln100_5_fu_605_p4;
wire   [31:0] xor_ln122_fu_640_p2;
wire   [31:0] xor_ln122_1_fu_646_p2;
wire   [31:0] add_ln122_fu_652_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln122_2_fu_711_p3;
wire   [31:0] add_ln122_5_fu_717_p2;
wire   [31:0] xor_ln122_4_fu_734_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] xor_ln122_2_fu_745_p2;
wire   [31:0] xor_ln122_3_fu_749_p2;
wire   [31:0] add_ln122_4_fu_754_p2;
wire   [31:0] temp_1_fu_759_p2;
wire   [31:0] xor_ln122_6_fu_784_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln122_4_fu_809_p3;
wire   [31:0] add_ln122_9_fu_815_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln122_8_fu_826_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln122_6_fu_849_p3;
wire   [31:0] add_ln122_13_fu_855_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln122_12_fu_866_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln122_8_fu_895_p2;
wire   [26:0] trunc_ln122_8_fu_883_p1;
wire   [4:0] lshr_ln122_8_fu_886_p4;
wire   [31:0] add_ln122_17_fu_912_p2;
wire   [31:0] xor_ln122_9_fu_899_p2;
wire   [31:0] or_ln122_8_fu_904_p3;
wire   [31:0] add_ln122_16_fu_923_p2;
wire   [31:0] add_ln122_18_fu_917_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln122_s_fu_962_p3;
wire   [31:0] add_ln122_21_fu_968_p2;
wire    ap_block_pp0_stage11;
wire   [1:0] trunc_ln122_9_fu_979_p1;
wire   [29:0] lshr_ln122_9_fu_982_p4;
wire   [31:0] xor_ln122_10_fu_999_p2;
wire   [31:0] xor_ln122_11_fu_1003_p2;
wire   [31:0] add_ln122_20_fu_1009_p2;
wire    ap_block_pp0_stage12;
wire   [31:0] or_ln122_1_fu_1047_p3;
wire   [31:0] add_ln122_25_fu_1053_p2;
wire    ap_block_pp0_stage13;
wire   [1:0] trunc_ln122_11_fu_1064_p1;
wire   [29:0] lshr_ln122_10_fu_1067_p4;
wire   [31:0] xor_ln122_12_fu_1084_p2;
wire   [31:0] xor_ln122_13_fu_1088_p2;
wire   [31:0] add_ln122_24_fu_1094_p2;
wire    ap_block_pp0_stage14;
wire   [31:0] or_ln122_3_fu_1132_p3;
wire   [31:0] add_ln122_29_fu_1138_p2;
wire    ap_block_pp0_stage15;
wire   [31:0] xor_ln122_14_fu_1155_p2;
wire   [31:0] xor_ln122_15_fu_1159_p2;
wire   [31:0] add_ln122_28_fu_1165_p2;
wire   [1:0] trunc_ln122_19_fu_1189_p1;
wire   [29:0] lshr_ln122_18_fu_1193_p4;
wire    ap_block_pp0_stage16;
wire   [31:0] or_ln122_5_fu_1211_p3;
wire   [31:0] add_ln122_33_fu_1217_p2;
wire    ap_block_pp0_stage17;
wire   [31:0] xor_ln122_16_fu_1234_p2;
wire   [31:0] xor_ln122_17_fu_1238_p2;
wire   [31:0] add_ln122_32_fu_1244_p2;
wire   [31:0] xor_ln122_18_fu_1274_p2;
wire    ap_block_pp0_stage18;
wire   [31:0] or_ln122_7_fu_1299_p3;
wire   [31:0] add_ln122_37_fu_1305_p2;
wire    ap_block_pp0_stage19;
wire   [31:0] add_ln122_36_fu_1316_p2;
wire    ap_block_pp0_stage20;
wire   [31:0] or_ln122_9_fu_1353_p3;
wire   [31:0] add_ln122_41_fu_1359_p2;
wire    ap_block_pp0_stage21;
wire   [31:0] xor_ln122_20_fu_1370_p2;
wire   [31:0] xor_ln122_21_fu_1374_p2;
wire   [31:0] add_ln122_40_fu_1379_p2;
wire    ap_block_pp0_stage22;
wire   [31:0] or_ln122_10_fu_1417_p3;
wire   [31:0] add_ln122_45_fu_1423_p2;
wire    ap_block_pp0_stage23;
wire   [31:0] xor_ln122_22_fu_1440_p2;
wire   [31:0] xor_ln122_23_fu_1444_p2;
wire   [31:0] add_ln122_44_fu_1450_p2;
wire    ap_block_pp0_stage24;
wire   [31:0] or_ln122_11_fu_1488_p3;
wire   [31:0] add_ln122_49_fu_1494_p2;
wire    ap_block_pp0_stage25;
wire   [31:0] xor_ln122_24_fu_1511_p2;
wire   [31:0] xor_ln122_25_fu_1515_p2;
wire   [31:0] add_ln122_48_fu_1521_p2;
wire    ap_block_pp0_stage26;
wire   [31:0] or_ln122_12_fu_1559_p3;
wire   [31:0] add_ln122_53_fu_1565_p2;
wire    ap_block_pp0_stage27;
wire   [31:0] xor_ln122_26_fu_1582_p2;
wire   [31:0] xor_ln122_27_fu_1586_p2;
wire   [31:0] add_ln122_52_fu_1592_p2;
wire   [1:0] trunc_ln122_31_fu_1616_p1;
wire   [29:0] lshr_ln122_30_fu_1620_p4;
wire    ap_block_pp0_stage28;
wire   [31:0] or_ln122_13_fu_1643_p3;
wire   [31:0] add_ln122_57_fu_1649_p2;
wire    ap_block_pp0_stage29;
wire   [31:0] xor_ln122_28_fu_1666_p2;
wire   [31:0] xor_ln122_29_fu_1670_p2;
wire   [31:0] add_ln122_56_fu_1676_p2;
wire   [31:0] xor_ln122_30_fu_1706_p2;
wire    ap_block_pp0_stage30;
wire   [31:0] or_ln122_14_fu_1732_p3;
wire   [31:0] add_ln122_61_fu_1738_p2;
wire   [31:0] add_ln122_60_fu_1749_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [30:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 31'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_114 = 32'd0;
#0 E_1_fu_118 = 32'd0;
#0 E_2_fu_122 = 32'd0;
#0 B_fu_126 = 32'd0;
#0 B_1_fu_130 = 32'd0;
#0 i_fu_134 = 6'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage30_subdone) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_1_fu_130 <= A_78_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_130 <= temp_15_fu_1753_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_126 <= B_75_reload;
    end else if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        B_fu_126 <= temp_14_fu_1681_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_118 <= D_79_reload;
    end else if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        E_1_fu_118 <= C_17_fu_1686_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_122 <= C_128_reload;
    end else if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        E_2_fu_122 <= C_2_fu_1630_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_114 <= E_75_reload;
    end else if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        E_fu_114 <= C_16_fu_1660_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_134 <= 6'd20;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln120_fu_530_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_134 <= add_ln120_5_fu_620_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_reg_1805 <= B_1_fu_130;
        add_ln122_2_reg_1815 <= add_ln122_2_fu_504_p2;
        icmp_ln120_reg_1845 <= icmp_ln120_fu_530_p2;
        lshr_ln122_3_reg_1830 <= {{B_1_fu_130[31:2]}};
        trunc_ln122_3_reg_1825 <= trunc_ln122_3_fu_510_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        C_10_reg_2264 <= C_10_fu_1228_p3;
        C_11_reg_2274 <= C_11_fu_1254_p3;
        lshr_ln122_17_reg_2285 <= {{temp_8_fu_1249_p2[31:27]}};
        lshr_ln122_20_reg_2300 <= {{temp_8_fu_1249_p2[31:2]}};
        temp_8_reg_2269 <= temp_8_fu_1249_p2;
        trunc_ln122_18_reg_2280 <= trunc_ln122_18_fu_1260_p1;
        trunc_ln122_21_reg_2295 <= trunc_ln122_21_fu_1285_p1;
        xor_ln122_19_reg_2290 <= xor_ln122_19_fu_1279_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        C_12_reg_2252 <= C_12_fu_1203_p3;
        C_9_reg_2231 <= C_9_fu_1149_p3;
        lshr_ln122_15_reg_2247 <= {{temp_7_fu_1170_p2[31:27]}};
        temp_7_reg_2237 <= temp_7_fu_1170_p2;
        trunc_ln122_16_reg_2242 <= trunc_ln122_16_fu_1175_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        C_13_reg_2370 <= C_13_fu_1434_p3;
        lshr_ln122_23_reg_2386 <= {{temp_11_fu_1455_p2[31:27]}};
        lshr_ln122_26_reg_2396 <= {{temp_11_fu_1455_p2[31:2]}};
        temp_11_reg_2376 <= temp_11_fu_1455_p2;
        trunc_ln122_24_reg_2381 <= trunc_ln122_24_fu_1460_p1;
        trunc_ln122_27_reg_2391 <= trunc_ln122_27_fu_1474_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        C_14_reg_2406 <= C_14_fu_1505_p3;
        lshr_ln122_25_reg_2422 <= {{temp_12_fu_1526_p2[31:27]}};
        lshr_ln122_28_reg_2432 <= {{temp_12_fu_1526_p2[31:2]}};
        temp_12_reg_2412 <= temp_12_fu_1526_p2;
        trunc_ln122_26_reg_2417 <= trunc_ln122_26_fu_1531_p1;
        trunc_ln122_29_reg_2427 <= trunc_ln122_29_fu_1545_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        C_15_reg_2442 <= C_15_fu_1576_p3;
        lshr_ln122_27_reg_2458 <= {{temp_13_fu_1597_p2[31:27]}};
        temp_13_reg_2448 <= temp_13_fu_1597_p2;
        trunc_ln122_28_reg_2453 <= trunc_ln122_28_fu_1602_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_3_reg_2030 <= C_3_fu_705_p3;
        add_ln122_6_reg_2036 <= add_ln122_6_fu_723_p2;
        xor_ln122_5_reg_2048 <= xor_ln122_5_fu_739_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_4_reg_2041 <= C_4_fu_728_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        C_5_reg_2063 <= C_5_fu_778_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_6_reg_2122 <= C_6_fu_876_p3;
        temp_3_reg_2113 <= temp_3_fu_870_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_7_reg_2159 <= C_7_fu_991_p3;
        lshr_ln122_11_reg_2175 <= {{temp_5_fu_1014_p2[31:27]}};
        lshr_ln122_14_reg_2185 <= {{temp_5_fu_1014_p2[31:2]}};
        temp_5_reg_2165 <= temp_5_fu_1014_p2;
        trunc_ln122_12_reg_2170 <= trunc_ln122_12_fu_1019_p1;
        trunc_ln122_15_reg_2180 <= trunc_ln122_15_fu_1033_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        C_8_reg_2195 <= C_8_fu_1076_p3;
        lshr_ln122_13_reg_2211 <= {{temp_6_fu_1099_p2[31:27]}};
        lshr_ln122_16_reg_2221 <= {{temp_6_fu_1099_p2[31:2]}};
        temp_6_reg_2201 <= temp_6_fu_1099_p2;
        trunc_ln122_14_reg_2206 <= trunc_ln122_14_fu_1104_p1;
        trunc_ln122_17_reg_2216 <= trunc_ln122_17_fu_1118_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_reg_1914 <= E_2_fu_122;
        D_reg_1909 <= E_1_fu_118;
        W_10_load_reg_1980 <= W_10_q0;
        W_11_load_reg_1985 <= W_11_q0;
        W_12_load_reg_1990 <= W_12_q0;
        W_13_load_reg_1995 <= W_13_q0;
        W_14_load_reg_2000 <= W_14_q0;
        W_15_load_reg_2005 <= W_15_q0;
        W_1_load_reg_2015 <= W_1_q0;
        W_2_load_reg_2020 <= W_2_q0;
        W_3_load_reg_2025 <= W_3_q0;
        W_5_load_reg_1945 <= W_5_q0;
        W_6_load_reg_1950 <= W_6_q0;
        W_7_load_reg_1965 <= W_7_q0;
        W_8_load_reg_1970 <= W_8_q0;
        W_9_load_reg_1975 <= W_9_q0;
        W_load_reg_2010 <= W_q0;
        lshr_ln122_1_reg_1930 <= {{B_fu_126[31:2]}};
        lshr_ln122_2_reg_1940 <= {{temp_fu_658_p2[31:27]}};
        lshr_ln122_5_reg_1960 <= {{temp_fu_658_p2[31:2]}};
        temp_reg_1920 <= temp_fu_658_p2;
        trunc_ln122_1_reg_1925 <= trunc_ln122_1_fu_663_p1;
        trunc_ln122_2_reg_1935 <= trunc_ln122_2_fu_677_p1;
        trunc_ln122_5_reg_1955 <= trunc_ln122_5_fu_691_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln122_10_reg_2085 <= add_ln122_10_fu_821_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln122_14_reg_2108 <= add_ln122_14_fu_861_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln122_22_reg_2154 <= add_ln122_22_fu_974_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln122_26_reg_2190 <= add_ln122_26_fu_1059_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln122_30_reg_2226 <= add_ln122_30_fu_1144_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add_ln122_34_reg_2259 <= add_ln122_34_fu_1223_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        add_ln122_38_reg_2305 <= add_ln122_38_fu_1311_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        add_ln122_42_reg_2335 <= add_ln122_42_fu_1365_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        add_ln122_46_reg_2365 <= add_ln122_46_fu_1429_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        add_ln122_50_reg_2401 <= add_ln122_50_fu_1500_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        add_ln122_54_reg_2437 <= add_ln122_54_fu_1571_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        add_ln122_58_reg_2463 <= add_ln122_58_fu_1655_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        add_ln122_62_reg_2483 <= add_ln122_62_fu_1744_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln122_12_reg_2149 <= {{temp_4_fu_928_p2[31:2]}};
        lshr_ln122_s_reg_2139 <= {{temp_4_fu_928_p2[31:27]}};
        temp_4_reg_2129 <= temp_4_fu_928_p2;
        trunc_ln122_10_reg_2134 <= trunc_ln122_10_fu_934_p1;
        trunc_ln122_13_reg_2144 <= trunc_ln122_13_fu_948_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        lshr_ln122_19_reg_2320 <= {{temp_9_fu_1320_p2[31:27]}};
        lshr_ln122_22_reg_2330 <= {{temp_9_fu_1320_p2[31:2]}};
        temp_9_reg_2310 <= temp_9_fu_1320_p2;
        trunc_ln122_20_reg_2315 <= trunc_ln122_20_fu_1325_p1;
        trunc_ln122_23_reg_2325 <= trunc_ln122_23_fu_1339_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        lshr_ln122_21_reg_2350 <= {{temp_10_fu_1384_p2[31:27]}};
        lshr_ln122_24_reg_2360 <= {{temp_10_fu_1384_p2[31:2]}};
        temp_10_reg_2340 <= temp_10_fu_1384_p2;
        trunc_ln122_22_reg_2345 <= trunc_ln122_22_fu_1389_p1;
        trunc_ln122_25_reg_2355 <= trunc_ln122_25_fu_1403_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        lshr_ln122_29_reg_2473 <= {{temp_14_fu_1681_p2[31:27]}};
        trunc_ln122_30_reg_2468 <= trunc_ln122_30_fu_1692_p1;
        xor_ln122_31_reg_2478 <= xor_ln122_31_fu_1711_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln122_4_reg_2058 <= {{temp_1_fu_759_p2[31:27]}};
        lshr_ln122_7_reg_2080 <= {{temp_1_fu_759_p2[31:2]}};
        trunc_ln122_4_reg_2053 <= trunc_ln122_4_fu_764_p1;
        trunc_ln122_7_reg_2075 <= trunc_ln122_7_fu_795_p1;
        xor_ln122_7_reg_2070 <= xor_ln122_7_fu_789_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln122_6_reg_2103 <= {{temp_2_fu_830_p2[31:27]}};
        trunc_ln122_6_reg_2098 <= trunc_ln122_6_fu_835_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        temp_2_reg_2090 <= temp_2_fu_830_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_75_out_ap_vld = 1'b1;
    end else begin
        A_75_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        B_22_out_ap_vld = 1'b1;
    end else begin
        B_22_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_73_out_ap_vld = 1'b1;
    end else begin
        C_73_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        D_76_out_ap_vld = 1'b1;
    end else begin
        D_76_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_22_out_ap_vld = 1'b1;
    end else begin
        E_22_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage30_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_75_out = (add_ln122_14_reg_2108 + add_ln122_12_fu_866_p2);
assign B_22_out = temp_2_reg_2090;
assign C_10_fu_1228_p3 = {{trunc_ln122_15_reg_2180}, {lshr_ln122_14_reg_2185}};
assign C_11_fu_1254_p3 = {{trunc_ln122_17_reg_2216}, {lshr_ln122_16_reg_2221}};
assign C_12_fu_1203_p3 = {{trunc_ln122_19_fu_1189_p1}, {lshr_ln122_18_fu_1193_p4}};
assign C_13_fu_1434_p3 = {{trunc_ln122_21_reg_2295}, {lshr_ln122_20_reg_2300}};
assign C_14_fu_1505_p3 = {{trunc_ln122_23_reg_2325}, {lshr_ln122_22_reg_2330}};
assign C_15_fu_1576_p3 = {{trunc_ln122_25_reg_2355}, {lshr_ln122_24_reg_2360}};
assign C_16_fu_1660_p3 = {{trunc_ln122_27_reg_2391}, {lshr_ln122_26_reg_2396}};
assign C_17_fu_1686_p3 = {{trunc_ln122_29_reg_2427}, {lshr_ln122_28_reg_2432}};
assign C_2_fu_1630_p3 = {{trunc_ln122_31_fu_1616_p1}, {lshr_ln122_30_fu_1620_p4}};
assign C_3_fu_705_p3 = {{trunc_ln122_1_reg_1925}, {lshr_ln122_1_reg_1930}};
assign C_4_fu_728_p3 = {{trunc_ln122_3_reg_1825}, {lshr_ln122_3_reg_1830}};
assign C_5_fu_778_p3 = {{trunc_ln122_5_reg_1955}, {lshr_ln122_5_reg_1960}};
assign C_6_fu_876_p3 = {{trunc_ln122_7_reg_2075}, {lshr_ln122_7_reg_2080}};
assign C_73_out = {{trunc_ln122_7_reg_2075}, {lshr_ln122_7_reg_2080}};
assign C_7_fu_991_p3 = {{trunc_ln122_9_fu_979_p1}, {lshr_ln122_9_fu_982_p4}};
assign C_8_fu_1076_p3 = {{trunc_ln122_11_fu_1064_p1}, {lshr_ln122_10_fu_1067_p4}};
assign C_9_fu_1149_p3 = {{trunc_ln122_13_reg_2144}, {lshr_ln122_12_reg_2149}};
assign D_76_out = C_5_reg_2063;
assign E_22_out = C_4_reg_2041;
assign W_10_address0 = zext_ln100_fu_460_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_460_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_460_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_460_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_460_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_460_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_1_address0 = zext_ln100_2_fu_573_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_3_fu_594_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_4_fu_615_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_460_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_460_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_460_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_460_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_460_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_460_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_1_fu_552_p1;
assign W_ce0 = W_ce0_local;
assign add_ln120_1_fu_536_p2 = (i_fu_134 + 6'd12);
assign add_ln120_2_fu_557_p2 = (i_fu_134 + 6'd13);
assign add_ln120_3_fu_578_p2 = (i_fu_134 + 6'd14);
assign add_ln120_4_fu_599_p2 = (i_fu_134 + 6'd15);
assign add_ln120_5_fu_620_p2 = (i_fu_134 + 6'd16);
assign add_ln120_fu_524_p2 = (i_fu_134 + 6'd4);
assign add_ln122_10_fu_821_p2 = (add_ln122_9_fu_815_p2 + C_reg_1914);
assign add_ln122_12_fu_866_p2 = (W_7_load_reg_1965 + xor_ln122_7_reg_2070);
assign add_ln122_13_fu_855_p2 = (or_ln122_6_fu_849_p3 + 32'd1859775393);
assign add_ln122_14_fu_861_p2 = (add_ln122_13_fu_855_p2 + C_3_reg_2030);
assign add_ln122_16_fu_923_p2 = (or_ln122_8_fu_904_p3 + W_8_load_reg_1970);
assign add_ln122_17_fu_912_p2 = (C_4_reg_2041 + 32'd1859775393);
assign add_ln122_18_fu_917_p2 = (add_ln122_17_fu_912_p2 + xor_ln122_9_fu_899_p2);
assign add_ln122_1_fu_498_p2 = (or_ln1_fu_490_p3 + 32'd1859775393);
assign add_ln122_20_fu_1009_p2 = (W_9_load_reg_1975 + xor_ln122_11_fu_1003_p2);
assign add_ln122_21_fu_968_p2 = (or_ln122_s_fu_962_p3 + 32'd1859775393);
assign add_ln122_22_fu_974_p2 = (add_ln122_21_fu_968_p2 + C_5_reg_2063);
assign add_ln122_24_fu_1094_p2 = (W_10_load_reg_1980 + xor_ln122_13_fu_1088_p2);
assign add_ln122_25_fu_1053_p2 = (or_ln122_1_fu_1047_p3 + 32'd1859775393);
assign add_ln122_26_fu_1059_p2 = (add_ln122_25_fu_1053_p2 + C_6_reg_2122);
assign add_ln122_28_fu_1165_p2 = (W_11_load_reg_1985 + xor_ln122_15_fu_1159_p2);
assign add_ln122_29_fu_1138_p2 = (or_ln122_3_fu_1132_p3 + 32'd1859775393);
assign add_ln122_2_fu_504_p2 = (add_ln122_1_fu_498_p2 + E_fu_114);
assign add_ln122_30_fu_1144_p2 = (add_ln122_29_fu_1138_p2 + C_7_reg_2159);
assign add_ln122_32_fu_1244_p2 = (W_12_load_reg_1990 + xor_ln122_17_fu_1238_p2);
assign add_ln122_33_fu_1217_p2 = (or_ln122_5_fu_1211_p3 + 32'd1859775393);
assign add_ln122_34_fu_1223_p2 = (add_ln122_33_fu_1217_p2 + C_8_reg_2195);
assign add_ln122_36_fu_1316_p2 = (W_13_load_reg_1995 + xor_ln122_19_reg_2290);
assign add_ln122_37_fu_1305_p2 = (or_ln122_7_fu_1299_p3 + 32'd1859775393);
assign add_ln122_38_fu_1311_p2 = (add_ln122_37_fu_1305_p2 + C_9_reg_2231);
assign add_ln122_40_fu_1379_p2 = (W_14_load_reg_2000 + xor_ln122_21_fu_1374_p2);
assign add_ln122_41_fu_1359_p2 = (or_ln122_9_fu_1353_p3 + 32'd1859775393);
assign add_ln122_42_fu_1365_p2 = (add_ln122_41_fu_1359_p2 + C_10_reg_2264);
assign add_ln122_44_fu_1450_p2 = (W_15_load_reg_2005 + xor_ln122_23_fu_1444_p2);
assign add_ln122_45_fu_1423_p2 = (or_ln122_10_fu_1417_p3 + 32'd1859775393);
assign add_ln122_46_fu_1429_p2 = (add_ln122_45_fu_1423_p2 + C_11_reg_2274);
assign add_ln122_48_fu_1521_p2 = (W_load_reg_2010 + xor_ln122_25_fu_1515_p2);
assign add_ln122_49_fu_1494_p2 = (or_ln122_11_fu_1488_p3 + 32'd1859775393);
assign add_ln122_4_fu_754_p2 = (W_5_load_reg_1945 + xor_ln122_3_fu_749_p2);
assign add_ln122_50_fu_1500_p2 = (add_ln122_49_fu_1494_p2 + C_12_reg_2252);
assign add_ln122_52_fu_1592_p2 = (W_1_load_reg_2015 + xor_ln122_27_fu_1586_p2);
assign add_ln122_53_fu_1565_p2 = (or_ln122_12_fu_1559_p3 + 32'd1859775393);
assign add_ln122_54_fu_1571_p2 = (add_ln122_53_fu_1565_p2 + C_13_reg_2370);
assign add_ln122_56_fu_1676_p2 = (W_2_load_reg_2020 + xor_ln122_29_fu_1670_p2);
assign add_ln122_57_fu_1649_p2 = (or_ln122_13_fu_1643_p3 + 32'd1859775393);
assign add_ln122_58_fu_1655_p2 = (add_ln122_57_fu_1649_p2 + C_14_reg_2406);
assign add_ln122_5_fu_717_p2 = (or_ln122_2_fu_711_p3 + 32'd1859775393);
assign add_ln122_60_fu_1749_p2 = (W_3_load_reg_2025 + C_15_reg_2442);
assign add_ln122_61_fu_1738_p2 = (or_ln122_14_fu_1732_p3 + 32'd1859775393);
assign add_ln122_62_fu_1744_p2 = (add_ln122_61_fu_1738_p2 + xor_ln122_31_reg_2478);
assign add_ln122_6_fu_723_p2 = (add_ln122_5_fu_717_p2 + D_reg_1909);
assign add_ln122_8_fu_826_p2 = (W_6_load_reg_1950 + xor_ln122_5_reg_2048);
assign add_ln122_9_fu_815_p2 = (or_ln122_4_fu_809_p3 + 32'd1859775393);
assign add_ln122_fu_652_p2 = (W_4_q0 + xor_ln122_1_fu_646_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
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
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign icmp_ln120_fu_530_p2 = ((add_ln120_fu_524_p2 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln100_1_fu_450_p4 = {{i_fu_134[5:4]}};
assign lshr_ln100_2_fu_542_p4 = {{add_ln120_1_fu_536_p2[5:4]}};
assign lshr_ln100_3_fu_563_p4 = {{add_ln120_2_fu_557_p2[5:4]}};
assign lshr_ln100_4_fu_584_p4 = {{add_ln120_3_fu_578_p2[5:4]}};
assign lshr_ln100_5_fu_605_p4 = {{add_ln120_4_fu_599_p2[5:4]}};
assign lshr_ln122_10_fu_1067_p4 = {{temp_3_reg_2113[31:2]}};
assign lshr_ln122_18_fu_1193_p4 = {{temp_7_fu_1170_p2[31:2]}};
assign lshr_ln122_30_fu_1620_p4 = {{temp_13_fu_1597_p2[31:2]}};
assign lshr_ln122_8_fu_886_p4 = {{temp_3_reg_2113[31:27]}};
assign lshr_ln122_9_fu_982_p4 = {{temp_2_reg_2090[31:2]}};
assign lshr_ln3_fu_480_p4 = {{B_1_fu_130[31:27]}};
assign or_ln122_10_fu_1417_p3 = {{trunc_ln122_22_reg_2345}, {lshr_ln122_21_reg_2350}};
assign or_ln122_11_fu_1488_p3 = {{trunc_ln122_24_reg_2381}, {lshr_ln122_23_reg_2386}};
assign or_ln122_12_fu_1559_p3 = {{trunc_ln122_26_reg_2417}, {lshr_ln122_25_reg_2422}};
assign or_ln122_13_fu_1643_p3 = {{trunc_ln122_28_reg_2453}, {lshr_ln122_27_reg_2458}};
assign or_ln122_14_fu_1732_p3 = {{trunc_ln122_30_reg_2468}, {lshr_ln122_29_reg_2473}};
assign or_ln122_1_fu_1047_p3 = {{trunc_ln122_12_reg_2170}, {lshr_ln122_11_reg_2175}};
assign or_ln122_2_fu_711_p3 = {{trunc_ln122_2_reg_1935}, {lshr_ln122_2_reg_1940}};
assign or_ln122_3_fu_1132_p3 = {{trunc_ln122_14_reg_2206}, {lshr_ln122_13_reg_2211}};
assign or_ln122_4_fu_809_p3 = {{trunc_ln122_4_reg_2053}, {lshr_ln122_4_reg_2058}};
assign or_ln122_5_fu_1211_p3 = {{trunc_ln122_16_reg_2242}, {lshr_ln122_15_reg_2247}};
assign or_ln122_6_fu_849_p3 = {{trunc_ln122_6_reg_2098}, {lshr_ln122_6_reg_2103}};
assign or_ln122_7_fu_1299_p3 = {{trunc_ln122_18_reg_2280}, {lshr_ln122_17_reg_2285}};
assign or_ln122_8_fu_904_p3 = {{trunc_ln122_8_fu_883_p1}, {lshr_ln122_8_fu_886_p4}};
assign or_ln122_9_fu_1353_p3 = {{trunc_ln122_20_reg_2315}, {lshr_ln122_19_reg_2320}};
assign or_ln122_s_fu_962_p3 = {{trunc_ln122_10_reg_2134}, {lshr_ln122_s_reg_2139}};
assign or_ln1_fu_490_p3 = {{trunc_ln122_fu_476_p1}, {lshr_ln3_fu_480_p4}};
assign temp_10_fu_1384_p2 = (add_ln122_42_reg_2335 + add_ln122_40_fu_1379_p2);
assign temp_11_fu_1455_p2 = (add_ln122_46_reg_2365 + add_ln122_44_fu_1450_p2);
assign temp_12_fu_1526_p2 = (add_ln122_50_reg_2401 + add_ln122_48_fu_1521_p2);
assign temp_13_fu_1597_p2 = (add_ln122_54_reg_2437 + add_ln122_52_fu_1592_p2);
assign temp_14_fu_1681_p2 = (add_ln122_58_reg_2463 + add_ln122_56_fu_1676_p2);
assign temp_15_fu_1753_p2 = (add_ln122_62_reg_2483 + add_ln122_60_fu_1749_p2);
assign temp_1_fu_759_p2 = (add_ln122_6_reg_2036 + add_ln122_4_fu_754_p2);
assign temp_2_fu_830_p2 = (add_ln122_10_reg_2085 + add_ln122_8_fu_826_p2);
assign temp_3_fu_870_p2 = (add_ln122_14_reg_2108 + add_ln122_12_fu_866_p2);
assign temp_4_fu_928_p2 = (add_ln122_16_fu_923_p2 + add_ln122_18_fu_917_p2);
assign temp_5_fu_1014_p2 = (add_ln122_22_reg_2154 + add_ln122_20_fu_1009_p2);
assign temp_6_fu_1099_p2 = (add_ln122_26_reg_2190 + add_ln122_24_fu_1094_p2);
assign temp_7_fu_1170_p2 = (add_ln122_30_reg_2226 + add_ln122_28_fu_1165_p2);
assign temp_8_fu_1249_p2 = (add_ln122_34_reg_2259 + add_ln122_32_fu_1244_p2);
assign temp_9_fu_1320_p2 = (add_ln122_38_reg_2305 + add_ln122_36_fu_1316_p2);
assign temp_fu_658_p2 = (add_ln122_2_reg_1815 + add_ln122_fu_652_p2);
assign trunc_ln122_10_fu_934_p1 = temp_4_fu_928_p2[26:0];
assign trunc_ln122_11_fu_1064_p1 = temp_3_reg_2113[1:0];
assign trunc_ln122_12_fu_1019_p1 = temp_5_fu_1014_p2[26:0];
assign trunc_ln122_13_fu_948_p1 = temp_4_fu_928_p2[1:0];
assign trunc_ln122_14_fu_1104_p1 = temp_6_fu_1099_p2[26:0];
assign trunc_ln122_15_fu_1033_p1 = temp_5_fu_1014_p2[1:0];
assign trunc_ln122_16_fu_1175_p1 = temp_7_fu_1170_p2[26:0];
assign trunc_ln122_17_fu_1118_p1 = temp_6_fu_1099_p2[1:0];
assign trunc_ln122_18_fu_1260_p1 = temp_8_fu_1249_p2[26:0];
assign trunc_ln122_19_fu_1189_p1 = temp_7_fu_1170_p2[1:0];
assign trunc_ln122_1_fu_663_p1 = B_fu_126[1:0];
assign trunc_ln122_20_fu_1325_p1 = temp_9_fu_1320_p2[26:0];
assign trunc_ln122_21_fu_1285_p1 = temp_8_fu_1249_p2[1:0];
assign trunc_ln122_22_fu_1389_p1 = temp_10_fu_1384_p2[26:0];
assign trunc_ln122_23_fu_1339_p1 = temp_9_fu_1320_p2[1:0];
assign trunc_ln122_24_fu_1460_p1 = temp_11_fu_1455_p2[26:0];
assign trunc_ln122_25_fu_1403_p1 = temp_10_fu_1384_p2[1:0];
assign trunc_ln122_26_fu_1531_p1 = temp_12_fu_1526_p2[26:0];
assign trunc_ln122_27_fu_1474_p1 = temp_11_fu_1455_p2[1:0];
assign trunc_ln122_28_fu_1602_p1 = temp_13_fu_1597_p2[26:0];
assign trunc_ln122_29_fu_1545_p1 = temp_12_fu_1526_p2[1:0];
assign trunc_ln122_2_fu_677_p1 = temp_fu_658_p2[26:0];
assign trunc_ln122_30_fu_1692_p1 = temp_14_fu_1681_p2[26:0];
assign trunc_ln122_31_fu_1616_p1 = temp_13_fu_1597_p2[1:0];
assign trunc_ln122_3_fu_510_p1 = B_1_fu_130[1:0];
assign trunc_ln122_4_fu_764_p1 = temp_1_fu_759_p2[26:0];
assign trunc_ln122_5_fu_691_p1 = temp_fu_658_p2[1:0];
assign trunc_ln122_6_fu_835_p1 = temp_2_fu_830_p2[26:0];
assign trunc_ln122_7_fu_795_p1 = temp_1_fu_759_p2[1:0];
assign trunc_ln122_8_fu_883_p1 = temp_3_reg_2113[26:0];
assign trunc_ln122_9_fu_979_p1 = temp_2_reg_2090[1:0];
assign trunc_ln122_fu_476_p1 = B_1_fu_130[26:0];
assign xor_ln122_10_fu_999_p2 = (temp_3_reg_2113 ^ C_6_reg_2122);
assign xor_ln122_11_fu_1003_p2 = (xor_ln122_10_fu_999_p2 ^ C_7_fu_991_p3);
assign xor_ln122_12_fu_1084_p2 = (temp_4_reg_2129 ^ C_7_reg_2159);
assign xor_ln122_13_fu_1088_p2 = (xor_ln122_12_fu_1084_p2 ^ C_8_fu_1076_p3);
assign xor_ln122_14_fu_1155_p2 = (temp_5_reg_2165 ^ C_8_reg_2195);
assign xor_ln122_15_fu_1159_p2 = (xor_ln122_14_fu_1155_p2 ^ C_9_fu_1149_p3);
assign xor_ln122_16_fu_1234_p2 = (temp_6_reg_2201 ^ C_9_reg_2231);
assign xor_ln122_17_fu_1238_p2 = (xor_ln122_16_fu_1234_p2 ^ C_10_fu_1228_p3);
assign xor_ln122_18_fu_1274_p2 = (temp_7_reg_2237 ^ C_10_fu_1228_p3);
assign xor_ln122_19_fu_1279_p2 = (xor_ln122_18_fu_1274_p2 ^ C_11_fu_1254_p3);
assign xor_ln122_1_fu_646_p2 = (xor_ln122_fu_640_p2 ^ E_2_fu_122);
assign xor_ln122_20_fu_1370_p2 = (temp_8_reg_2269 ^ C_11_reg_2274);
assign xor_ln122_21_fu_1374_p2 = (xor_ln122_20_fu_1370_p2 ^ C_12_reg_2252);
assign xor_ln122_22_fu_1440_p2 = (temp_9_reg_2310 ^ C_12_reg_2252);
assign xor_ln122_23_fu_1444_p2 = (xor_ln122_22_fu_1440_p2 ^ C_13_fu_1434_p3);
assign xor_ln122_24_fu_1511_p2 = (temp_10_reg_2340 ^ C_13_reg_2370);
assign xor_ln122_25_fu_1515_p2 = (xor_ln122_24_fu_1511_p2 ^ C_14_fu_1505_p3);
assign xor_ln122_26_fu_1582_p2 = (temp_11_reg_2376 ^ C_14_reg_2406);
assign xor_ln122_27_fu_1586_p2 = (xor_ln122_26_fu_1582_p2 ^ C_15_fu_1576_p3);
assign xor_ln122_28_fu_1666_p2 = (temp_12_reg_2412 ^ C_15_reg_2442);
assign xor_ln122_29_fu_1670_p2 = (xor_ln122_28_fu_1666_p2 ^ C_16_fu_1660_p3);
assign xor_ln122_2_fu_745_p2 = (C_3_reg_2030 ^ A_reg_1805);
assign xor_ln122_30_fu_1706_p2 = (temp_13_reg_2448 ^ C_16_fu_1660_p3);
assign xor_ln122_31_fu_1711_p2 = (xor_ln122_30_fu_1706_p2 ^ C_17_fu_1686_p3);
assign xor_ln122_3_fu_749_p2 = (xor_ln122_2_fu_745_p2 ^ C_reg_1914);
assign xor_ln122_4_fu_734_p2 = (temp_reg_1920 ^ C_4_fu_728_p3);
assign xor_ln122_5_fu_739_p2 = (xor_ln122_4_fu_734_p2 ^ C_3_fu_705_p3);
assign xor_ln122_6_fu_784_p2 = (temp_1_fu_759_p2 ^ C_4_reg_2041);
assign xor_ln122_7_fu_789_p2 = (xor_ln122_6_fu_784_p2 ^ C_5_fu_778_p3);
assign xor_ln122_8_fu_895_p2 = (temp_2_reg_2090 ^ C_5_reg_2063);
assign xor_ln122_9_fu_899_p2 = (xor_ln122_8_fu_895_p2 ^ C_6_reg_2122);
assign xor_ln122_fu_640_p2 = (E_1_fu_118 ^ B_fu_126);
assign zext_ln100_1_fu_552_p1 = lshr_ln100_2_fu_542_p4;
assign zext_ln100_2_fu_573_p1 = lshr_ln100_3_fu_563_p4;
assign zext_ln100_3_fu_594_p1 = lshr_ln100_4_fu_584_p4;
assign zext_ln100_4_fu_615_p1 = lshr_ln100_5_fu_605_p4;
assign zext_ln100_fu_460_p1 = lshr_ln100_1_fu_450_p4;
endmodule 