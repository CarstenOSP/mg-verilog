module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,W_4_address0,W_4_ce0,W_4_q0,W_5_address0,W_5_ce0,W_5_q0,W_6_address0,W_6_ce0,W_6_q0,W_7_address0,W_7_ce0,W_7_q0,W_8_address0,W_8_ce0,W_8_q0,W_9_address0,W_9_ce0,W_9_q0,W_10_address0,W_10_ce0,W_10_q0,W_11_address0,W_11_ce0,W_11_q0,W_12_address0,W_12_ce0,W_12_q0,W_13_address0,W_13_ce0,W_13_q0,W_14_address0,W_14_ce0,W_14_q0,W_15_address0,W_15_ce0,W_15_q0,E_43_out,E_43_out_ap_vld,B_43_out,B_43_out_ap_vld,D_47_out,D_47_out_ap_vld,A_47_out,A_47_out_ap_vld,C_58_out,C_58_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 30'd1;
parameter    ap_ST_fsm_pp0_stage1 = 30'd2;
parameter    ap_ST_fsm_pp0_stage2 = 30'd4;
parameter    ap_ST_fsm_pp0_stage3 = 30'd8;
parameter    ap_ST_fsm_pp0_stage4 = 30'd16;
parameter    ap_ST_fsm_pp0_stage5 = 30'd32;
parameter    ap_ST_fsm_pp0_stage6 = 30'd64;
parameter    ap_ST_fsm_pp0_stage7 = 30'd128;
parameter    ap_ST_fsm_pp0_stage8 = 30'd256;
parameter    ap_ST_fsm_pp0_stage9 = 30'd512;
parameter    ap_ST_fsm_pp0_stage10 = 30'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 30'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 30'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 30'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 30'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 30'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 30'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 30'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 30'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 30'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 30'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 30'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 30'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 30'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 30'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 30'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 30'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 30'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 30'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 30'd536870912;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A;
input  [31:0] B;
input  [31:0] C;
input  [31:0] D;
input  [31:0] E;
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
output  [31:0] E_43_out;
output   E_43_out_ap_vld;
output  [31:0] B_43_out;
output   B_43_out_ap_vld;
output  [31:0] D_47_out;
output   D_47_out_ap_vld;
output  [31:0] A_47_out;
output   A_47_out_ap_vld;
output  [31:0] C_58_out;
output   C_58_out_ap_vld;
reg ap_idle;
reg E_43_out_ap_vld;
reg B_43_out_ap_vld;
reg D_47_out_ap_vld;
reg A_47_out_ap_vld;
reg C_58_out_ap_vld;
(* fsm_encoding = "none" *) reg   [29:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln116_reg_1961;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln116_fu_496_p2;
reg   [31:0] W_load_reg_2025;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] W_1_load_reg_2030;
reg   [31:0] W_2_load_reg_2035;
reg   [31:0] W_3_load_reg_2040;
reg   [31:0] W_4_load_reg_2045;
reg   [31:0] W_5_load_reg_2050;
reg   [31:0] W_6_load_reg_2055;
reg   [31:0] W_7_load_reg_2060;
reg   [31:0] W_8_load_reg_2065;
reg   [31:0] W_9_load_reg_2070;
reg   [31:0] W_10_load_reg_2075;
reg   [31:0] W_11_load_reg_2080;
reg   [31:0] W_12_load_reg_2085;
reg   [31:0] W_13_load_reg_2090;
reg   [31:0] W_14_load_reg_2095;
reg   [31:0] W_15_load_reg_2100;
reg   [31:0] D_36_reg_2105;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] C_35_reg_2110;
wire   [31:0] temp_fu_611_p2;
reg   [31:0] temp_reg_2115;
wire   [31:0] C_36_fu_631_p3;
reg   [31:0] C_36_reg_2121;
wire   [26:0] trunc_ln118_2_fu_639_p1;
reg   [26:0] trunc_ln118_2_reg_2127;
reg   [4:0] lshr_ln118_2_reg_2132;
wire   [31:0] or_ln118_2_fu_671_p2;
reg   [31:0] or_ln118_2_reg_2137;
wire   [31:0] E_46_fu_691_p3;
reg   [31:0] E_46_reg_2142;
wire   [1:0] trunc_ln118_5_fu_699_p1;
reg   [1:0] trunc_ln118_5_reg_2150;
reg   [29:0] lshr_ln118_5_reg_2155;
wire   [31:0] add_ln118_6_fu_725_p2;
reg   [31:0] add_ln118_6_reg_2160;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] or_ln118_3_fu_744_p2;
reg   [31:0] or_ln118_3_reg_2165;
wire   [31:0] temp_17_fu_754_p2;
reg   [31:0] temp_17_reg_2170;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [26:0] trunc_ln118_4_fu_759_p1;
reg   [26:0] trunc_ln118_4_reg_2176;
reg   [4:0] lshr_ln118_4_reg_2181;
wire   [31:0] C_37_fu_787_p3;
reg   [31:0] C_37_reg_2186;
wire   [31:0] add_ln118_10_fu_807_p2;
reg   [31:0] add_ln118_10_reg_2194;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] D_37_fu_812_p3;
reg   [31:0] D_37_reg_2199;
wire   [31:0] or_ln118_5_fu_833_p2;
reg   [31:0] or_ln118_5_reg_2206;
wire   [31:0] B_43_fu_843_p2;
reg   [31:0] B_43_reg_2211;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln118_6_fu_848_p1;
reg   [26:0] trunc_ln118_6_reg_2220;
reg   [4:0] lshr_ln118_6_reg_2225;
wire   [31:0] add_ln118_14_fu_874_p2;
reg   [31:0] add_ln118_14_reg_2230;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] A_35_fu_883_p2;
reg   [31:0] A_35_reg_2235;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] temp_18_fu_945_p2;
reg   [31:0] temp_18_reg_2245;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln118_10_fu_951_p1;
reg   [26:0] trunc_ln118_10_reg_2251;
reg   [4:0] lshr_ln118_s_reg_2256;
wire   [1:0] trunc_ln118_13_fu_965_p1;
reg   [1:0] trunc_ln118_13_reg_2261;
reg   [29:0] lshr_ln118_12_reg_2266;
wire   [31:0] add_ln118_22_fu_991_p2;
reg   [31:0] add_ln118_22_reg_2271;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] C_38_fu_1008_p3;
reg   [31:0] C_38_reg_2276;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_19_fu_1042_p2;
reg   [31:0] temp_19_reg_2282;
wire   [31:0] C_39_fu_1059_p3;
reg   [31:0] C_39_reg_2288;
wire   [26:0] trunc_ln118_12_fu_1067_p1;
reg   [26:0] trunc_ln118_12_reg_2295;
reg   [4:0] lshr_ln118_11_reg_2300;
wire   [1:0] trunc_ln118_15_fu_1081_p1;
reg   [1:0] trunc_ln118_15_reg_2305;
reg   [29:0] lshr_ln118_14_reg_2310;
wire   [31:0] add_ln118_26_fu_1107_p2;
reg   [31:0] add_ln118_26_reg_2315;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] temp_20_fu_1137_p2;
reg   [31:0] temp_20_reg_2320;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [26:0] trunc_ln118_14_fu_1142_p1;
reg   [26:0] trunc_ln118_14_reg_2326;
reg   [4:0] lshr_ln118_13_reg_2331;
wire   [1:0] trunc_ln118_17_fu_1156_p1;
reg   [1:0] trunc_ln118_17_reg_2336;
reg   [29:0] lshr_ln118_16_reg_2341;
wire   [31:0] add_ln118_30_fu_1182_p2;
reg   [31:0] add_ln118_30_reg_2346;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] C_40_fu_1187_p3;
reg   [31:0] C_40_reg_2351;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [31:0] temp_21_fu_1219_p2;
reg   [31:0] temp_21_reg_2357;
wire   [26:0] trunc_ln118_16_fu_1224_p1;
reg   [26:0] trunc_ln118_16_reg_2363;
reg   [4:0] lshr_ln118_15_reg_2368;
wire   [1:0] trunc_ln118_19_fu_1238_p1;
reg   [1:0] trunc_ln118_19_reg_2373;
reg   [29:0] lshr_ln118_18_reg_2378;
wire   [31:0] add_ln118_34_fu_1264_p2;
reg   [31:0] add_ln118_34_reg_2383;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [31:0] C_41_fu_1269_p3;
reg   [31:0] C_41_reg_2388;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [31:0] temp_22_fu_1301_p2;
reg   [31:0] temp_22_reg_2393;
wire   [31:0] C_42_fu_1306_p3;
reg   [31:0] C_42_reg_2399;
wire   [26:0] trunc_ln118_18_fu_1312_p1;
reg   [26:0] trunc_ln118_18_reg_2405;
reg   [4:0] lshr_ln118_17_reg_2410;
wire   [31:0] or_ln118_17_fu_1342_p2;
reg   [31:0] or_ln118_17_reg_2415;
wire   [1:0] trunc_ln118_21_fu_1348_p1;
reg   [1:0] trunc_ln118_21_reg_2420;
reg   [29:0] lshr_ln118_20_reg_2425;
wire   [31:0] add_ln118_38_fu_1374_p2;
reg   [31:0] add_ln118_38_reg_2430;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [31:0] temp_23_fu_1383_p2;
reg   [31:0] temp_23_reg_2435;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [26:0] trunc_ln118_20_fu_1388_p1;
reg   [26:0] trunc_ln118_20_reg_2441;
reg   [4:0] lshr_ln118_19_reg_2446;
wire   [1:0] trunc_ln118_23_fu_1402_p1;
reg   [1:0] trunc_ln118_23_reg_2451;
reg   [29:0] lshr_ln118_22_reg_2456;
wire   [31:0] add_ln118_42_fu_1428_p2;
reg   [31:0] add_ln118_42_reg_2461;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [31:0] C_43_fu_1433_p3;
reg   [31:0] C_43_reg_2466;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [31:0] temp_24_fu_1465_p2;
reg   [31:0] temp_24_reg_2472;
wire   [26:0] trunc_ln118_22_fu_1470_p1;
reg   [26:0] trunc_ln118_22_reg_2478;
reg   [4:0] lshr_ln118_21_reg_2483;
wire   [1:0] trunc_ln118_25_fu_1484_p1;
reg   [1:0] trunc_ln118_25_reg_2488;
reg   [29:0] lshr_ln118_24_reg_2493;
wire   [31:0] add_ln118_46_fu_1510_p2;
reg   [31:0] add_ln118_46_reg_2498;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [31:0] C_44_fu_1515_p3;
reg   [31:0] C_44_reg_2503;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [31:0] temp_25_fu_1547_p2;
reg   [31:0] temp_25_reg_2509;
wire   [26:0] trunc_ln118_24_fu_1552_p1;
reg   [26:0] trunc_ln118_24_reg_2515;
reg   [4:0] lshr_ln118_23_reg_2520;
wire   [1:0] trunc_ln118_27_fu_1566_p1;
reg   [1:0] trunc_ln118_27_reg_2525;
reg   [29:0] lshr_ln118_26_reg_2530;
wire   [31:0] add_ln118_50_fu_1592_p2;
reg   [31:0] add_ln118_50_reg_2535;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [31:0] C_45_fu_1597_p3;
reg   [31:0] C_45_reg_2540;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [31:0] temp_26_fu_1629_p2;
reg   [31:0] temp_26_reg_2546;
wire   [26:0] trunc_ln118_26_fu_1634_p1;
reg   [26:0] trunc_ln118_26_reg_2552;
reg   [4:0] lshr_ln118_25_reg_2557;
wire   [1:0] trunc_ln118_29_fu_1648_p1;
reg   [1:0] trunc_ln118_29_reg_2562;
reg   [29:0] lshr_ln118_28_reg_2567;
wire   [31:0] add_ln118_54_fu_1674_p2;
reg   [31:0] add_ln118_54_reg_2572;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [31:0] C_46_fu_1679_p3;
reg   [31:0] C_46_reg_2577;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [31:0] temp_27_fu_1711_p2;
reg   [31:0] temp_27_reg_2583;
wire   [26:0] trunc_ln118_28_fu_1716_p1;
reg   [26:0] trunc_ln118_28_reg_2589;
reg   [4:0] lshr_ln118_27_reg_2594;
wire   [31:0] add_ln118_58_fu_1769_p2;
reg   [31:0] add_ln118_58_reg_2599;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [26:0] trunc_ln118_30_fu_1817_p1;
reg   [26:0] trunc_ln118_30_reg_2604;
wire    ap_block_pp0_stage29_11001;
reg   [4:0] lshr_ln118_29_reg_2609;
wire   [31:0] or_ln118_29_fu_1847_p2;
reg   [31:0] or_ln118_29_reg_2614;
wire   [31:0] add_ln118_62_fu_1880_p2;
reg   [31:0] add_ln118_62_reg_2619;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln100_fu_452_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_1_fu_114;
wire   [31:0] C_47_fu_1774_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [31:0] E_27_fu_118;
wire   [31:0] C_48_fu_1811_p3;
reg   [31:0] E_28_fu_122;
wire   [31:0] C_34_fu_1744_p3;
reg   [31:0] B_1_fu_126;
wire   [31:0] temp_28_fu_1806_p2;
reg   [31:0] B_25_fu_130;
wire   [31:0] temp_29_fu_1889_p2;
reg   [4:0] i_1_fu_134;
wire   [4:0] xor_ln_fu_520_p3;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage8_01001;
reg    W_ce0_local;
reg    W_1_ce0_local;
reg    W_2_ce0_local;
reg    W_3_ce0_local;
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
wire   [0:0] tmp_fu_444_p3;
wire   [1:0] tmp_s_fu_472_p4;
wire   [1:0] trunc_ln116_fu_482_p1;
wire   [4:0] or_ln_fu_486_p4;
wire   [0:0] bit_sel_fu_502_p3;
wire   [0:0] xor_ln116_fu_510_p2;
wire   [3:0] trunc_ln116_1_fu_516_p1;
wire   [31:0] xor_ln118_fu_562_p2;
wire   [31:0] and_ln118_1_fu_574_p2;
wire   [31:0] and_ln118_fu_568_p2;
wire   [26:0] trunc_ln118_fu_548_p1;
wire   [4:0] lshr_ln2_fu_552_p4;
wire   [31:0] or_ln118_1_fu_586_p3;
wire   [31:0] add_ln118_1_fu_594_p2;
wire   [31:0] or_ln118_fu_580_p2;
wire   [31:0] add_ln118_fu_606_p2;
wire   [31:0] add_ln118_2_fu_600_p2;
wire   [1:0] trunc_ln118_1_fu_617_p1;
wire   [29:0] lshr_ln118_1_fu_621_p4;
wire   [31:0] xor_ln118_1_fu_653_p2;
wire   [31:0] and_ln118_2_fu_659_p2;
wire   [31:0] and_ln118_3_fu_665_p2;
wire   [1:0] trunc_ln118_3_fu_677_p1;
wire   [29:0] lshr_ln118_3_fu_681_p4;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln118_4_fu_713_p3;
wire   [31:0] add_ln118_5_fu_719_p2;
wire   [31:0] xor_ln118_2_fu_730_p2;
wire   [31:0] and_ln118_4_fu_735_p2;
wire   [31:0] and_ln118_5_fu_739_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln118_4_fu_750_p2;
wire   [1:0] trunc_ln118_7_fu_773_p1;
wire   [29:0] lshr_ln118_7_fu_777_p4;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln118_7_fu_795_p3;
wire   [31:0] add_ln118_9_fu_801_p2;
wire   [31:0] xor_ln118_3_fu_818_p2;
wire   [31:0] and_ln118_6_fu_823_p2;
wire   [31:0] and_ln118_7_fu_828_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln118_8_fu_839_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln118_s_fu_862_p3;
wire   [31:0] add_ln118_13_fu_868_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln118_12_fu_879_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln118_4_fu_901_p2;
wire   [31:0] and_ln118_8_fu_906_p2;
wire   [31:0] and_ln118_9_fu_910_p2;
wire   [26:0] trunc_ln118_8_fu_889_p1;
wire   [4:0] lshr_ln118_8_fu_892_p4;
wire   [31:0] add_ln118_17_fu_929_p2;
wire   [31:0] or_ln118_6_fu_915_p2;
wire   [31:0] or_ln118_8_fu_921_p3;
wire   [31:0] add_ln118_16_fu_940_p2;
wire   [31:0] add_ln118_18_fu_934_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln118_10_fu_979_p3;
wire   [31:0] add_ln118_21_fu_985_p2;
wire    ap_block_pp0_stage11;
wire   [1:0] trunc_ln118_9_fu_996_p1;
wire   [29:0] lshr_ln118_9_fu_999_p4;
wire   [31:0] xor_ln118_5_fu_1016_p2;
wire   [31:0] and_ln118_10_fu_1021_p2;
wire   [31:0] and_ln118_11_fu_1026_p2;
wire   [31:0] or_ln118_9_fu_1031_p2;
wire   [31:0] add_ln118_20_fu_1037_p2;
wire   [1:0] trunc_ln118_11_fu_1047_p1;
wire   [29:0] lshr_ln118_10_fu_1050_p4;
wire    ap_block_pp0_stage12;
wire   [31:0] or_ln118_12_fu_1095_p3;
wire   [31:0] add_ln118_25_fu_1101_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] xor_ln118_6_fu_1112_p2;
wire   [31:0] and_ln118_12_fu_1117_p2;
wire   [31:0] and_ln118_13_fu_1121_p2;
wire   [31:0] or_ln118_11_fu_1126_p2;
wire   [31:0] add_ln118_24_fu_1132_p2;
wire    ap_block_pp0_stage14;
wire   [31:0] or_ln118_14_fu_1170_p3;
wire   [31:0] add_ln118_29_fu_1176_p2;
wire    ap_block_pp0_stage15;
wire   [31:0] xor_ln118_7_fu_1193_p2;
wire   [31:0] and_ln118_14_fu_1198_p2;
wire   [31:0] and_ln118_15_fu_1203_p2;
wire   [31:0] or_ln118_13_fu_1208_p2;
wire   [31:0] add_ln118_28_fu_1214_p2;
wire    ap_block_pp0_stage16;
wire   [31:0] or_ln118_16_fu_1252_p3;
wire   [31:0] add_ln118_33_fu_1258_p2;
wire    ap_block_pp0_stage17;
wire   [31:0] xor_ln118_8_fu_1275_p2;
wire   [31:0] and_ln118_16_fu_1280_p2;
wire   [31:0] and_ln118_17_fu_1285_p2;
wire   [31:0] or_ln118_15_fu_1290_p2;
wire   [31:0] add_ln118_32_fu_1296_p2;
wire   [31:0] xor_ln118_9_fu_1326_p2;
wire   [31:0] and_ln118_18_fu_1331_p2;
wire   [31:0] and_ln118_19_fu_1336_p2;
wire    ap_block_pp0_stage18;
wire   [31:0] or_ln118_18_fu_1362_p3;
wire   [31:0] add_ln118_37_fu_1368_p2;
wire    ap_block_pp0_stage19;
wire   [31:0] add_ln118_36_fu_1379_p2;
wire    ap_block_pp0_stage20;
wire   [31:0] or_ln118_20_fu_1416_p3;
wire   [31:0] add_ln118_41_fu_1422_p2;
wire    ap_block_pp0_stage21;
wire   [31:0] xor_ln118_10_fu_1439_p2;
wire   [31:0] and_ln118_20_fu_1444_p2;
wire   [31:0] and_ln118_21_fu_1449_p2;
wire   [31:0] or_ln118_19_fu_1454_p2;
wire   [31:0] add_ln118_40_fu_1460_p2;
wire    ap_block_pp0_stage22;
wire   [31:0] or_ln118_22_fu_1498_p3;
wire   [31:0] add_ln118_45_fu_1504_p2;
wire    ap_block_pp0_stage23;
wire   [31:0] xor_ln118_11_fu_1521_p2;
wire   [31:0] and_ln118_22_fu_1526_p2;
wire   [31:0] and_ln118_23_fu_1531_p2;
wire   [31:0] or_ln118_21_fu_1536_p2;
wire   [31:0] add_ln118_44_fu_1542_p2;
wire    ap_block_pp0_stage24;
wire   [31:0] or_ln118_24_fu_1580_p3;
wire   [31:0] add_ln118_49_fu_1586_p2;
wire    ap_block_pp0_stage25;
wire   [31:0] xor_ln118_12_fu_1603_p2;
wire   [31:0] and_ln118_24_fu_1608_p2;
wire   [31:0] and_ln118_25_fu_1613_p2;
wire   [31:0] or_ln118_23_fu_1618_p2;
wire   [31:0] add_ln118_48_fu_1624_p2;
wire    ap_block_pp0_stage26;
wire   [31:0] or_ln118_26_fu_1662_p3;
wire   [31:0] add_ln118_53_fu_1668_p2;
wire    ap_block_pp0_stage27;
wire   [31:0] xor_ln118_13_fu_1685_p2;
wire   [31:0] and_ln118_26_fu_1690_p2;
wire   [31:0] and_ln118_27_fu_1695_p2;
wire   [31:0] or_ln118_25_fu_1700_p2;
wire   [31:0] add_ln118_52_fu_1706_p2;
wire   [1:0] trunc_ln118_31_fu_1730_p1;
wire   [29:0] lshr_ln118_30_fu_1734_p4;
wire    ap_block_pp0_stage28;
wire   [31:0] or_ln118_28_fu_1757_p3;
wire   [31:0] add_ln118_57_fu_1763_p2;
wire    ap_block_pp0_stage29;
wire   [31:0] xor_ln118_14_fu_1780_p2;
wire   [31:0] and_ln118_28_fu_1785_p2;
wire   [31:0] and_ln118_29_fu_1790_p2;
wire   [31:0] or_ln118_27_fu_1795_p2;
wire   [31:0] add_ln118_56_fu_1801_p2;
wire   [31:0] xor_ln118_15_fu_1831_p2;
wire   [31:0] and_ln118_30_fu_1836_p2;
wire   [31:0] and_ln118_31_fu_1841_p2;
wire   [31:0] or_ln118_30_fu_1868_p3;
wire   [31:0] add_ln118_61_fu_1874_p2;
wire    ap_block_pp0_stage1;
wire   [31:0] add_ln118_60_fu_1885_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [29:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 30'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_114 = 32'd0;
#0 E_27_fu_118 = 32'd0;
#0 E_28_fu_122 = 32'd0;
#0 B_1_fu_126 = 32'd0;
#0 B_25_fu_130 = 32'd0;
#0 i_1_fu_134 = 5'd0;
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage29_subdone) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_126 <= B;
    end else if (((icmp_ln116_reg_1961 == 1'd0) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        B_1_fu_126 <= temp_28_fu_1806_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_25_fu_130 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_25_fu_130 <= temp_29_fu_1889_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_114 <= E;
    end else if (((icmp_ln116_reg_1961 == 1'd0) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        E_1_fu_114 <= C_47_fu_1774_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_27_fu_118 <= D;
    end else if (((icmp_ln116_reg_1961 == 1'd0) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        E_27_fu_118 <= C_48_fu_1811_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_28_fu_122 <= C;
    end else if (((icmp_ln116_reg_1961 == 1'd0) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        E_28_fu_122 <= C_34_fu_1744_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln116_fu_496_p2 == 1'd0))) begin
            i_1_fu_134 <= xor_ln_fu_520_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_134 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_35_reg_2235 <= A_35_fu_883_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        B_43_reg_2211 <= B_43_fu_843_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_35_reg_2110 <= E_28_fu_122;
        C_36_reg_2121 <= C_36_fu_631_p3;
        D_36_reg_2105 <= E_27_fu_118;
        lshr_ln118_2_reg_2132 <= {{temp_fu_611_p2[31:27]}};
        lshr_ln118_5_reg_2155 <= {{temp_fu_611_p2[31:2]}};
        or_ln118_2_reg_2137 <= or_ln118_2_fu_671_p2;
        temp_reg_2115 <= temp_fu_611_p2;
        trunc_ln118_2_reg_2127 <= trunc_ln118_2_fu_639_p1;
        trunc_ln118_5_reg_2150 <= trunc_ln118_5_fu_699_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        C_37_reg_2186 <= C_37_fu_787_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_38_reg_2276 <= C_38_fu_1008_p3;
        C_39_reg_2288 <= C_39_fu_1059_p3;
        lshr_ln118_11_reg_2300 <= {{temp_19_fu_1042_p2[31:27]}};
        lshr_ln118_14_reg_2310 <= {{temp_19_fu_1042_p2[31:2]}};
        temp_19_reg_2282 <= temp_19_fu_1042_p2;
        trunc_ln118_12_reg_2295 <= trunc_ln118_12_fu_1067_p1;
        trunc_ln118_15_reg_2305 <= trunc_ln118_15_fu_1081_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        C_40_reg_2351 <= C_40_fu_1187_p3;
        lshr_ln118_15_reg_2368 <= {{temp_21_fu_1219_p2[31:27]}};
        lshr_ln118_18_reg_2378 <= {{temp_21_fu_1219_p2[31:2]}};
        temp_21_reg_2357 <= temp_21_fu_1219_p2;
        trunc_ln118_16_reg_2363 <= trunc_ln118_16_fu_1224_p1;
        trunc_ln118_19_reg_2373 <= trunc_ln118_19_fu_1238_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        C_41_reg_2388 <= C_41_fu_1269_p3;
        C_42_reg_2399 <= C_42_fu_1306_p3;
        lshr_ln118_17_reg_2410 <= {{temp_22_fu_1301_p2[31:27]}};
        lshr_ln118_20_reg_2425 <= {{temp_22_fu_1301_p2[31:2]}};
        or_ln118_17_reg_2415 <= or_ln118_17_fu_1342_p2;
        temp_22_reg_2393 <= temp_22_fu_1301_p2;
        trunc_ln118_18_reg_2405 <= trunc_ln118_18_fu_1312_p1;
        trunc_ln118_21_reg_2420 <= trunc_ln118_21_fu_1348_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        C_43_reg_2466 <= C_43_fu_1433_p3;
        lshr_ln118_21_reg_2483 <= {{temp_24_fu_1465_p2[31:27]}};
        lshr_ln118_24_reg_2493 <= {{temp_24_fu_1465_p2[31:2]}};
        temp_24_reg_2472 <= temp_24_fu_1465_p2;
        trunc_ln118_22_reg_2478 <= trunc_ln118_22_fu_1470_p1;
        trunc_ln118_25_reg_2488 <= trunc_ln118_25_fu_1484_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        C_44_reg_2503 <= C_44_fu_1515_p3;
        lshr_ln118_23_reg_2520 <= {{temp_25_fu_1547_p2[31:27]}};
        lshr_ln118_26_reg_2530 <= {{temp_25_fu_1547_p2[31:2]}};
        temp_25_reg_2509 <= temp_25_fu_1547_p2;
        trunc_ln118_24_reg_2515 <= trunc_ln118_24_fu_1552_p1;
        trunc_ln118_27_reg_2525 <= trunc_ln118_27_fu_1566_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        C_45_reg_2540 <= C_45_fu_1597_p3;
        lshr_ln118_25_reg_2557 <= {{temp_26_fu_1629_p2[31:27]}};
        lshr_ln118_28_reg_2567 <= {{temp_26_fu_1629_p2[31:2]}};
        temp_26_reg_2546 <= temp_26_fu_1629_p2;
        trunc_ln118_26_reg_2552 <= trunc_ln118_26_fu_1634_p1;
        trunc_ln118_29_reg_2562 <= trunc_ln118_29_fu_1648_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        C_46_reg_2577 <= C_46_fu_1679_p3;
        lshr_ln118_27_reg_2594 <= {{temp_27_fu_1711_p2[31:27]}};
        temp_27_reg_2583 <= temp_27_fu_1711_p2;
        trunc_ln118_28_reg_2589 <= trunc_ln118_28_fu_1716_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        D_37_reg_2199 <= D_37_fu_812_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_46_reg_2142 <= E_46_fu_691_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_10_load_reg_2075 <= W_10_q0;
        W_11_load_reg_2080 <= W_11_q0;
        W_12_load_reg_2085 <= W_12_q0;
        W_13_load_reg_2090 <= W_13_q0;
        W_14_load_reg_2095 <= W_14_q0;
        W_15_load_reg_2100 <= W_15_q0;
        W_1_load_reg_2030 <= W_1_q0;
        W_2_load_reg_2035 <= W_2_q0;
        W_3_load_reg_2040 <= W_3_q0;
        W_4_load_reg_2045 <= W_4_q0;
        W_5_load_reg_2050 <= W_5_q0;
        W_6_load_reg_2055 <= W_6_q0;
        W_7_load_reg_2060 <= W_7_q0;
        W_8_load_reg_2065 <= W_8_q0;
        W_9_load_reg_2070 <= W_9_q0;
        W_load_reg_2025 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln118_10_reg_2194 <= add_ln118_10_fu_807_p2;
        or_ln118_5_reg_2206 <= or_ln118_5_fu_833_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln118_14_reg_2230 <= add_ln118_14_fu_874_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln118_22_reg_2271 <= add_ln118_22_fu_991_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln118_26_reg_2315 <= add_ln118_26_fu_1107_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln118_30_reg_2346 <= add_ln118_30_fu_1182_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add_ln118_34_reg_2383 <= add_ln118_34_fu_1264_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        add_ln118_38_reg_2430 <= add_ln118_38_fu_1374_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        add_ln118_42_reg_2461 <= add_ln118_42_fu_1428_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        add_ln118_46_reg_2498 <= add_ln118_46_fu_1510_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        add_ln118_50_reg_2535 <= add_ln118_50_fu_1592_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        add_ln118_54_reg_2572 <= add_ln118_54_fu_1674_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        add_ln118_58_reg_2599 <= add_ln118_58_fu_1769_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_62_reg_2619 <= add_ln118_62_fu_1880_p2;
        icmp_ln116_reg_1961 <= icmp_ln116_fu_496_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln118_6_reg_2160 <= add_ln118_6_fu_725_p2;
        or_ln118_3_reg_2165 <= or_ln118_3_fu_744_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln118_12_reg_2266 <= {{temp_18_fu_945_p2[31:2]}};
        lshr_ln118_s_reg_2256 <= {{temp_18_fu_945_p2[31:27]}};
        temp_18_reg_2245 <= temp_18_fu_945_p2;
        trunc_ln118_10_reg_2251 <= trunc_ln118_10_fu_951_p1;
        trunc_ln118_13_reg_2261 <= trunc_ln118_13_fu_965_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        lshr_ln118_13_reg_2331 <= {{temp_20_fu_1137_p2[31:27]}};
        lshr_ln118_16_reg_2341 <= {{temp_20_fu_1137_p2[31:2]}};
        temp_20_reg_2320 <= temp_20_fu_1137_p2;
        trunc_ln118_14_reg_2326 <= trunc_ln118_14_fu_1142_p1;
        trunc_ln118_17_reg_2336 <= trunc_ln118_17_fu_1156_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        lshr_ln118_19_reg_2446 <= {{temp_23_fu_1383_p2[31:27]}};
        lshr_ln118_22_reg_2456 <= {{temp_23_fu_1383_p2[31:2]}};
        temp_23_reg_2435 <= temp_23_fu_1383_p2;
        trunc_ln118_20_reg_2441 <= trunc_ln118_20_fu_1388_p1;
        trunc_ln118_23_reg_2451 <= trunc_ln118_23_fu_1402_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        lshr_ln118_29_reg_2609 <= {{temp_28_fu_1806_p2[31:27]}};
        or_ln118_29_reg_2614 <= or_ln118_29_fu_1847_p2;
        trunc_ln118_30_reg_2604 <= trunc_ln118_30_fu_1817_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln118_4_reg_2181 <= {{temp_17_fu_754_p2[31:27]}};
        temp_17_reg_2170 <= temp_17_fu_754_p2;
        trunc_ln118_4_reg_2176 <= trunc_ln118_4_fu_759_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln118_6_reg_2225 <= {{B_43_fu_843_p2[31:27]}};
        trunc_ln118_6_reg_2220 <= trunc_ln118_6_fu_848_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1961 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_47_out_ap_vld = 1'b1;
    end else begin
        A_47_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1961 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        B_43_out_ap_vld = 1'b1;
    end else begin
        B_43_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1961 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_58_out_ap_vld = 1'b1;
    end else begin
        C_58_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1961 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        D_47_out_ap_vld = 1'b1;
    end else begin
        D_47_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1961 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_43_out_ap_vld = 1'b1;
    end else begin
        E_43_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_1961 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage29_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_134;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_35_fu_883_p2 = (add_ln118_14_reg_2230 + add_ln118_12_fu_879_p2);
assign A_47_out = (add_ln118_14_reg_2230 + add_ln118_12_fu_879_p2);
assign B_43_fu_843_p2 = (add_ln118_10_reg_2194 + add_ln118_8_fu_839_p2);
assign B_43_out = B_43_reg_2211;
assign C_34_fu_1744_p3 = {{trunc_ln118_31_fu_1730_p1}, {lshr_ln118_30_fu_1734_p4}};
assign C_36_fu_631_p3 = {{trunc_ln118_1_fu_617_p1}, {lshr_ln118_1_fu_621_p4}};
assign C_37_fu_787_p3 = {{trunc_ln118_7_fu_773_p1}, {lshr_ln118_7_fu_777_p4}};
assign C_38_fu_1008_p3 = {{trunc_ln118_9_fu_996_p1}, {lshr_ln118_9_fu_999_p4}};
assign C_39_fu_1059_p3 = {{trunc_ln118_11_fu_1047_p1}, {lshr_ln118_10_fu_1050_p4}};
assign C_40_fu_1187_p3 = {{trunc_ln118_13_reg_2261}, {lshr_ln118_12_reg_2266}};
assign C_41_fu_1269_p3 = {{trunc_ln118_15_reg_2305}, {lshr_ln118_14_reg_2310}};
assign C_42_fu_1306_p3 = {{trunc_ln118_17_reg_2336}, {lshr_ln118_16_reg_2341}};
assign C_43_fu_1433_p3 = {{trunc_ln118_19_reg_2373}, {lshr_ln118_18_reg_2378}};
assign C_44_fu_1515_p3 = {{trunc_ln118_21_reg_2420}, {lshr_ln118_20_reg_2425}};
assign C_45_fu_1597_p3 = {{trunc_ln118_23_reg_2451}, {lshr_ln118_22_reg_2456}};
assign C_46_fu_1679_p3 = {{trunc_ln118_25_reg_2488}, {lshr_ln118_24_reg_2493}};
assign C_47_fu_1774_p3 = {{trunc_ln118_27_reg_2525}, {lshr_ln118_26_reg_2530}};
assign C_48_fu_1811_p3 = {{trunc_ln118_29_reg_2562}, {lshr_ln118_28_reg_2567}};
assign C_58_out = C_37_reg_2186;
assign D_37_fu_812_p3 = {{trunc_ln118_5_reg_2150}, {lshr_ln118_5_reg_2155}};
assign D_47_out = D_37_reg_2199;
assign E_43_out = E_46_reg_2142;
assign E_46_fu_691_p3 = {{trunc_ln118_3_fu_677_p1}, {lshr_ln118_3_fu_681_p4}};
assign W_10_address0 = zext_ln100_fu_452_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_452_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_452_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_452_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_452_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_452_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_1_address0 = zext_ln100_fu_452_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_452_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_452_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_452_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_452_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_452_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_452_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_452_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_452_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_452_p1;
assign W_ce0 = W_ce0_local;
assign add_ln118_10_fu_807_p2 = (add_ln118_9_fu_801_p2 + C_35_reg_2110);
assign add_ln118_12_fu_879_p2 = (W_3_load_reg_2040 + or_ln118_5_reg_2206);
assign add_ln118_13_fu_868_p2 = (or_ln118_s_fu_862_p3 + 32'd1518500249);
assign add_ln118_14_fu_874_p2 = (add_ln118_13_fu_868_p2 + C_36_reg_2121);
assign add_ln118_16_fu_940_p2 = (or_ln118_8_fu_921_p3 + W_4_load_reg_2045);
assign add_ln118_17_fu_929_p2 = (E_46_reg_2142 + 32'd1518500249);
assign add_ln118_18_fu_934_p2 = (add_ln118_17_fu_929_p2 + or_ln118_6_fu_915_p2);
assign add_ln118_1_fu_594_p2 = (or_ln118_1_fu_586_p3 + 32'd1518500249);
assign add_ln118_20_fu_1037_p2 = (W_5_load_reg_2050 + or_ln118_9_fu_1031_p2);
assign add_ln118_21_fu_985_p2 = (or_ln118_10_fu_979_p3 + 32'd1518500249);
assign add_ln118_22_fu_991_p2 = (add_ln118_21_fu_985_p2 + D_37_reg_2199);
assign add_ln118_24_fu_1132_p2 = (W_6_load_reg_2055 + or_ln118_11_fu_1126_p2);
assign add_ln118_25_fu_1101_p2 = (or_ln118_12_fu_1095_p3 + 32'd1518500249);
assign add_ln118_26_fu_1107_p2 = (add_ln118_25_fu_1101_p2 + C_37_reg_2186);
assign add_ln118_28_fu_1214_p2 = (W_7_load_reg_2060 + or_ln118_13_fu_1208_p2);
assign add_ln118_29_fu_1176_p2 = (or_ln118_14_fu_1170_p3 + 32'd1518500249);
assign add_ln118_2_fu_600_p2 = (add_ln118_1_fu_594_p2 + E_1_fu_114);
assign add_ln118_30_fu_1182_p2 = (add_ln118_29_fu_1176_p2 + C_38_reg_2276);
assign add_ln118_32_fu_1296_p2 = (W_8_load_reg_2065 + or_ln118_15_fu_1290_p2);
assign add_ln118_33_fu_1258_p2 = (or_ln118_16_fu_1252_p3 + 32'd1518500249);
assign add_ln118_34_fu_1264_p2 = (add_ln118_33_fu_1258_p2 + C_39_reg_2288);
assign add_ln118_36_fu_1379_p2 = (W_9_load_reg_2070 + or_ln118_17_reg_2415);
assign add_ln118_37_fu_1368_p2 = (or_ln118_18_fu_1362_p3 + 32'd1518500249);
assign add_ln118_38_fu_1374_p2 = (add_ln118_37_fu_1368_p2 + C_40_reg_2351);
assign add_ln118_40_fu_1460_p2 = (W_10_load_reg_2075 + or_ln118_19_fu_1454_p2);
assign add_ln118_41_fu_1422_p2 = (or_ln118_20_fu_1416_p3 + 32'd1518500249);
assign add_ln118_42_fu_1428_p2 = (add_ln118_41_fu_1422_p2 + C_41_reg_2388);
assign add_ln118_44_fu_1542_p2 = (W_11_load_reg_2080 + or_ln118_21_fu_1536_p2);
assign add_ln118_45_fu_1504_p2 = (or_ln118_22_fu_1498_p3 + 32'd1518500249);
assign add_ln118_46_fu_1510_p2 = (add_ln118_45_fu_1504_p2 + C_42_reg_2399);
assign add_ln118_48_fu_1624_p2 = (W_12_load_reg_2085 + or_ln118_23_fu_1618_p2);
assign add_ln118_49_fu_1586_p2 = (or_ln118_24_fu_1580_p3 + 32'd1518500249);
assign add_ln118_4_fu_750_p2 = (W_1_load_reg_2030 + or_ln118_2_reg_2137);
assign add_ln118_50_fu_1592_p2 = (add_ln118_49_fu_1586_p2 + C_43_reg_2466);
assign add_ln118_52_fu_1706_p2 = (W_13_load_reg_2090 + or_ln118_25_fu_1700_p2);
assign add_ln118_53_fu_1668_p2 = (or_ln118_26_fu_1662_p3 + 32'd1518500249);
assign add_ln118_54_fu_1674_p2 = (add_ln118_53_fu_1668_p2 + C_44_reg_2503);
assign add_ln118_56_fu_1801_p2 = (W_14_load_reg_2095 + or_ln118_27_fu_1795_p2);
assign add_ln118_57_fu_1763_p2 = (or_ln118_28_fu_1757_p3 + 32'd1518500249);
assign add_ln118_58_fu_1769_p2 = (add_ln118_57_fu_1763_p2 + C_45_reg_2540);
assign add_ln118_5_fu_719_p2 = (or_ln118_4_fu_713_p3 + 32'd1518500249);
assign add_ln118_60_fu_1885_p2 = (W_15_load_reg_2100 + C_46_reg_2577);
assign add_ln118_61_fu_1874_p2 = (or_ln118_30_fu_1868_p3 + 32'd1518500249);
assign add_ln118_62_fu_1880_p2 = (add_ln118_61_fu_1874_p2 + or_ln118_29_reg_2614);
assign add_ln118_6_fu_725_p2 = (add_ln118_5_fu_719_p2 + D_36_reg_2105);
assign add_ln118_8_fu_839_p2 = (W_2_load_reg_2035 + or_ln118_3_reg_2165);
assign add_ln118_9_fu_801_p2 = (or_ln118_7_fu_795_p3 + 32'd1518500249);
assign add_ln118_fu_606_p2 = (or_ln118_fu_580_p2 + W_load_reg_2025);
assign and_ln118_10_fu_1021_p2 = (C_38_fu_1008_p3 & A_35_reg_2235);
assign and_ln118_11_fu_1026_p2 = (xor_ln118_5_fu_1016_p2 & C_37_reg_2186);
assign and_ln118_12_fu_1117_p2 = (temp_18_reg_2245 & C_39_reg_2288);
assign and_ln118_13_fu_1121_p2 = (xor_ln118_6_fu_1112_p2 & C_38_reg_2276);
assign and_ln118_14_fu_1198_p2 = (temp_19_reg_2282 & C_40_fu_1187_p3);
assign and_ln118_15_fu_1203_p2 = (xor_ln118_7_fu_1193_p2 & C_39_reg_2288);
assign and_ln118_16_fu_1280_p2 = (temp_20_reg_2320 & C_41_fu_1269_p3);
assign and_ln118_17_fu_1285_p2 = (xor_ln118_8_fu_1275_p2 & C_40_reg_2351);
assign and_ln118_18_fu_1331_p2 = (temp_21_reg_2357 & C_42_fu_1306_p3);
assign and_ln118_19_fu_1336_p2 = (xor_ln118_9_fu_1326_p2 & C_41_fu_1269_p3);
assign and_ln118_1_fu_574_p2 = (xor_ln118_fu_562_p2 & E_27_fu_118);
assign and_ln118_20_fu_1444_p2 = (temp_22_reg_2393 & C_43_fu_1433_p3);
assign and_ln118_21_fu_1449_p2 = (xor_ln118_10_fu_1439_p2 & C_42_reg_2399);
assign and_ln118_22_fu_1526_p2 = (temp_23_reg_2435 & C_44_fu_1515_p3);
assign and_ln118_23_fu_1531_p2 = (xor_ln118_11_fu_1521_p2 & C_43_reg_2466);
assign and_ln118_24_fu_1608_p2 = (temp_24_reg_2472 & C_45_fu_1597_p3);
assign and_ln118_25_fu_1613_p2 = (xor_ln118_12_fu_1603_p2 & C_44_reg_2503);
assign and_ln118_26_fu_1690_p2 = (temp_25_reg_2509 & C_46_fu_1679_p3);
assign and_ln118_27_fu_1695_p2 = (xor_ln118_13_fu_1685_p2 & C_45_reg_2540);
assign and_ln118_28_fu_1785_p2 = (temp_26_reg_2546 & C_47_fu_1774_p3);
assign and_ln118_29_fu_1790_p2 = (xor_ln118_14_fu_1780_p2 & C_46_reg_2577);
assign and_ln118_2_fu_659_p2 = (C_36_fu_631_p3 & B_25_fu_130);
assign and_ln118_30_fu_1836_p2 = (temp_27_reg_2583 & C_48_fu_1811_p3);
assign and_ln118_31_fu_1841_p2 = (xor_ln118_15_fu_1831_p2 & C_47_fu_1774_p3);
assign and_ln118_3_fu_665_p2 = (xor_ln118_1_fu_653_p2 & E_28_fu_122);
assign and_ln118_4_fu_735_p2 = (temp_reg_2115 & E_46_reg_2142);
assign and_ln118_5_fu_739_p2 = (xor_ln118_2_fu_730_p2 & C_36_reg_2121);
assign and_ln118_6_fu_823_p2 = (temp_17_reg_2170 & D_37_fu_812_p3);
assign and_ln118_7_fu_828_p2 = (xor_ln118_3_fu_818_p2 & E_46_reg_2142);
assign and_ln118_8_fu_906_p2 = (C_37_reg_2186 & B_43_reg_2211);
assign and_ln118_9_fu_910_p2 = (xor_ln118_4_fu_901_p2 & D_37_reg_2199);
assign and_ln118_fu_568_p2 = (E_28_fu_122 & B_1_fu_126);
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
assign bit_sel_fu_502_p3 = ap_sig_allocacmp_i[5'd4];
assign icmp_ln116_fu_496_p2 = ((or_ln_fu_486_p4 == 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_10_fu_1050_p4 = {{A_35_reg_2235[31:2]}};
assign lshr_ln118_1_fu_621_p4 = {{B_1_fu_126[31:2]}};
assign lshr_ln118_30_fu_1734_p4 = {{temp_27_fu_1711_p2[31:2]}};
assign lshr_ln118_3_fu_681_p4 = {{B_25_fu_130[31:2]}};
assign lshr_ln118_7_fu_777_p4 = {{temp_17_fu_754_p2[31:2]}};
assign lshr_ln118_8_fu_892_p4 = {{A_35_reg_2235[31:27]}};
assign lshr_ln118_9_fu_999_p4 = {{B_43_reg_2211[31:2]}};
assign lshr_ln2_fu_552_p4 = {{B_25_fu_130[31:27]}};
assign or_ln118_10_fu_979_p3 = {{trunc_ln118_10_reg_2251}, {lshr_ln118_s_reg_2256}};
assign or_ln118_11_fu_1126_p2 = (and_ln118_13_fu_1121_p2 | and_ln118_12_fu_1117_p2);
assign or_ln118_12_fu_1095_p3 = {{trunc_ln118_12_reg_2295}, {lshr_ln118_11_reg_2300}};
assign or_ln118_13_fu_1208_p2 = (and_ln118_15_fu_1203_p2 | and_ln118_14_fu_1198_p2);
assign or_ln118_14_fu_1170_p3 = {{trunc_ln118_14_reg_2326}, {lshr_ln118_13_reg_2331}};
assign or_ln118_15_fu_1290_p2 = (and_ln118_17_fu_1285_p2 | and_ln118_16_fu_1280_p2);
assign or_ln118_16_fu_1252_p3 = {{trunc_ln118_16_reg_2363}, {lshr_ln118_15_reg_2368}};
assign or_ln118_17_fu_1342_p2 = (and_ln118_19_fu_1336_p2 | and_ln118_18_fu_1331_p2);
assign or_ln118_18_fu_1362_p3 = {{trunc_ln118_18_reg_2405}, {lshr_ln118_17_reg_2410}};
assign or_ln118_19_fu_1454_p2 = (and_ln118_21_fu_1449_p2 | and_ln118_20_fu_1444_p2);
assign or_ln118_1_fu_586_p3 = {{trunc_ln118_fu_548_p1}, {lshr_ln2_fu_552_p4}};
assign or_ln118_20_fu_1416_p3 = {{trunc_ln118_20_reg_2441}, {lshr_ln118_19_reg_2446}};
assign or_ln118_21_fu_1536_p2 = (and_ln118_23_fu_1531_p2 | and_ln118_22_fu_1526_p2);
assign or_ln118_22_fu_1498_p3 = {{trunc_ln118_22_reg_2478}, {lshr_ln118_21_reg_2483}};
assign or_ln118_23_fu_1618_p2 = (and_ln118_25_fu_1613_p2 | and_ln118_24_fu_1608_p2);
assign or_ln118_24_fu_1580_p3 = {{trunc_ln118_24_reg_2515}, {lshr_ln118_23_reg_2520}};
assign or_ln118_25_fu_1700_p2 = (and_ln118_27_fu_1695_p2 | and_ln118_26_fu_1690_p2);
assign or_ln118_26_fu_1662_p3 = {{trunc_ln118_26_reg_2552}, {lshr_ln118_25_reg_2557}};
assign or_ln118_27_fu_1795_p2 = (and_ln118_29_fu_1790_p2 | and_ln118_28_fu_1785_p2);
assign or_ln118_28_fu_1757_p3 = {{trunc_ln118_28_reg_2589}, {lshr_ln118_27_reg_2594}};
assign or_ln118_29_fu_1847_p2 = (and_ln118_31_fu_1841_p2 | and_ln118_30_fu_1836_p2);
assign or_ln118_2_fu_671_p2 = (and_ln118_3_fu_665_p2 | and_ln118_2_fu_659_p2);
assign or_ln118_30_fu_1868_p3 = {{trunc_ln118_30_reg_2604}, {lshr_ln118_29_reg_2609}};
assign or_ln118_3_fu_744_p2 = (and_ln118_5_fu_739_p2 | and_ln118_4_fu_735_p2);
assign or_ln118_4_fu_713_p3 = {{trunc_ln118_2_reg_2127}, {lshr_ln118_2_reg_2132}};
assign or_ln118_5_fu_833_p2 = (and_ln118_7_fu_828_p2 | and_ln118_6_fu_823_p2);
assign or_ln118_6_fu_915_p2 = (and_ln118_9_fu_910_p2 | and_ln118_8_fu_906_p2);
assign or_ln118_7_fu_795_p3 = {{trunc_ln118_4_reg_2176}, {lshr_ln118_4_reg_2181}};
assign or_ln118_8_fu_921_p3 = {{trunc_ln118_8_fu_889_p1}, {lshr_ln118_8_fu_892_p4}};
assign or_ln118_9_fu_1031_p2 = (and_ln118_11_fu_1026_p2 | and_ln118_10_fu_1021_p2);
assign or_ln118_fu_580_p2 = (and_ln118_fu_568_p2 | and_ln118_1_fu_574_p2);
assign or_ln118_s_fu_862_p3 = {{trunc_ln118_6_reg_2220}, {lshr_ln118_6_reg_2225}};
assign or_ln_fu_486_p4 = {{{tmp_s_fu_472_p4}, {1'd1}}, {trunc_ln116_fu_482_p1}};
assign temp_17_fu_754_p2 = (add_ln118_6_reg_2160 + add_ln118_4_fu_750_p2);
assign temp_18_fu_945_p2 = (add_ln118_16_fu_940_p2 + add_ln118_18_fu_934_p2);
assign temp_19_fu_1042_p2 = (add_ln118_22_reg_2271 + add_ln118_20_fu_1037_p2);
assign temp_20_fu_1137_p2 = (add_ln118_26_reg_2315 + add_ln118_24_fu_1132_p2);
assign temp_21_fu_1219_p2 = (add_ln118_30_reg_2346 + add_ln118_28_fu_1214_p2);
assign temp_22_fu_1301_p2 = (add_ln118_34_reg_2383 + add_ln118_32_fu_1296_p2);
assign temp_23_fu_1383_p2 = (add_ln118_38_reg_2430 + add_ln118_36_fu_1379_p2);
assign temp_24_fu_1465_p2 = (add_ln118_42_reg_2461 + add_ln118_40_fu_1460_p2);
assign temp_25_fu_1547_p2 = (add_ln118_46_reg_2498 + add_ln118_44_fu_1542_p2);
assign temp_26_fu_1629_p2 = (add_ln118_50_reg_2535 + add_ln118_48_fu_1624_p2);
assign temp_27_fu_1711_p2 = (add_ln118_54_reg_2572 + add_ln118_52_fu_1706_p2);
assign temp_28_fu_1806_p2 = (add_ln118_58_reg_2599 + add_ln118_56_fu_1801_p2);
assign temp_29_fu_1889_p2 = (add_ln118_62_reg_2619 + add_ln118_60_fu_1885_p2);
assign temp_fu_611_p2 = (add_ln118_fu_606_p2 + add_ln118_2_fu_600_p2);
assign tmp_fu_444_p3 = ap_sig_allocacmp_i[32'd4];
assign tmp_s_fu_472_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign trunc_ln116_1_fu_516_p1 = ap_sig_allocacmp_i[3:0];
assign trunc_ln116_fu_482_p1 = ap_sig_allocacmp_i[1:0];
assign trunc_ln118_10_fu_951_p1 = temp_18_fu_945_p2[26:0];
assign trunc_ln118_11_fu_1047_p1 = A_35_reg_2235[1:0];
assign trunc_ln118_12_fu_1067_p1 = temp_19_fu_1042_p2[26:0];
assign trunc_ln118_13_fu_965_p1 = temp_18_fu_945_p2[1:0];
assign trunc_ln118_14_fu_1142_p1 = temp_20_fu_1137_p2[26:0];
assign trunc_ln118_15_fu_1081_p1 = temp_19_fu_1042_p2[1:0];
assign trunc_ln118_16_fu_1224_p1 = temp_21_fu_1219_p2[26:0];
assign trunc_ln118_17_fu_1156_p1 = temp_20_fu_1137_p2[1:0];
assign trunc_ln118_18_fu_1312_p1 = temp_22_fu_1301_p2[26:0];
assign trunc_ln118_19_fu_1238_p1 = temp_21_fu_1219_p2[1:0];
assign trunc_ln118_1_fu_617_p1 = B_1_fu_126[1:0];
assign trunc_ln118_20_fu_1388_p1 = temp_23_fu_1383_p2[26:0];
assign trunc_ln118_21_fu_1348_p1 = temp_22_fu_1301_p2[1:0];
assign trunc_ln118_22_fu_1470_p1 = temp_24_fu_1465_p2[26:0];
assign trunc_ln118_23_fu_1402_p1 = temp_23_fu_1383_p2[1:0];
assign trunc_ln118_24_fu_1552_p1 = temp_25_fu_1547_p2[26:0];
assign trunc_ln118_25_fu_1484_p1 = temp_24_fu_1465_p2[1:0];
assign trunc_ln118_26_fu_1634_p1 = temp_26_fu_1629_p2[26:0];
assign trunc_ln118_27_fu_1566_p1 = temp_25_fu_1547_p2[1:0];
assign trunc_ln118_28_fu_1716_p1 = temp_27_fu_1711_p2[26:0];
assign trunc_ln118_29_fu_1648_p1 = temp_26_fu_1629_p2[1:0];
assign trunc_ln118_2_fu_639_p1 = temp_fu_611_p2[26:0];
assign trunc_ln118_30_fu_1817_p1 = temp_28_fu_1806_p2[26:0];
assign trunc_ln118_31_fu_1730_p1 = temp_27_fu_1711_p2[1:0];
assign trunc_ln118_3_fu_677_p1 = B_25_fu_130[1:0];
assign trunc_ln118_4_fu_759_p1 = temp_17_fu_754_p2[26:0];
assign trunc_ln118_5_fu_699_p1 = temp_fu_611_p2[1:0];
assign trunc_ln118_6_fu_848_p1 = B_43_fu_843_p2[26:0];
assign trunc_ln118_7_fu_773_p1 = temp_17_fu_754_p2[1:0];
assign trunc_ln118_8_fu_889_p1 = A_35_reg_2235[26:0];
assign trunc_ln118_9_fu_996_p1 = B_43_reg_2211[1:0];
assign trunc_ln118_fu_548_p1 = B_25_fu_130[26:0];
assign xor_ln116_fu_510_p2 = (bit_sel_fu_502_p3 ^ 1'd1);
assign xor_ln118_10_fu_1439_p2 = (temp_22_reg_2393 ^ 32'd4294967295);
assign xor_ln118_11_fu_1521_p2 = (temp_23_reg_2435 ^ 32'd4294967295);
assign xor_ln118_12_fu_1603_p2 = (temp_24_reg_2472 ^ 32'd4294967295);
assign xor_ln118_13_fu_1685_p2 = (temp_25_reg_2509 ^ 32'd4294967295);
assign xor_ln118_14_fu_1780_p2 = (temp_26_reg_2546 ^ 32'd4294967295);
assign xor_ln118_15_fu_1831_p2 = (temp_27_reg_2583 ^ 32'd4294967295);
assign xor_ln118_1_fu_653_p2 = (32'd4294967295 ^ B_25_fu_130);
assign xor_ln118_2_fu_730_p2 = (temp_reg_2115 ^ 32'd4294967295);
assign xor_ln118_3_fu_818_p2 = (temp_17_reg_2170 ^ 32'd4294967295);
assign xor_ln118_4_fu_901_p2 = (32'd4294967295 ^ B_43_reg_2211);
assign xor_ln118_5_fu_1016_p2 = (32'd4294967295 ^ A_35_reg_2235);
assign xor_ln118_6_fu_1112_p2 = (temp_18_reg_2245 ^ 32'd4294967295);
assign xor_ln118_7_fu_1193_p2 = (temp_19_reg_2282 ^ 32'd4294967295);
assign xor_ln118_8_fu_1275_p2 = (temp_20_reg_2320 ^ 32'd4294967295);
assign xor_ln118_9_fu_1326_p2 = (temp_21_reg_2357 ^ 32'd4294967295);
assign xor_ln118_fu_562_p2 = (32'd4294967295 ^ B_1_fu_126);
assign xor_ln_fu_520_p3 = {{xor_ln116_fu_510_p2}, {trunc_ln116_1_fu_516_p1}};
assign zext_ln100_fu_452_p1 = tmp_fu_444_p3;
endmodule 