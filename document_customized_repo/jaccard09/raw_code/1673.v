module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_2_address0,W_2_ce0,W_2_q0,W_2_address1,W_2_ce1,W_2_q1,W_3_address0,W_3_ce0,W_3_q0,W_3_address1,W_3_ce1,W_3_q1,W_4_address0,W_4_ce0,W_4_q0,W_4_address1,W_4_ce1,W_4_q1,W_5_address0,W_5_ce0,W_5_q0,W_5_address1,W_5_ce1,W_5_q1,W_6_address0,W_6_ce0,W_6_q0,W_6_address1,W_6_ce1,W_6_q1,W_7_address0,W_7_ce0,W_7_q0,W_7_address1,W_7_ce1,W_7_q1,E_55_out,E_55_out_ap_vld,B_55_out,B_55_out_ap_vld,D_59_out,D_59_out_ap_vld,A_59_out,A_59_out_ap_vld,C_78_out,C_78_out_ap_vld); 
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
output  [3:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [3:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [3:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [3:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [3:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [3:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [3:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [3:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [3:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [3:0] W_4_address1;
output   W_4_ce1;
input  [31:0] W_4_q1;
output  [3:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [3:0] W_5_address1;
output   W_5_ce1;
input  [31:0] W_5_q1;
output  [3:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [3:0] W_6_address1;
output   W_6_ce1;
input  [31:0] W_6_q1;
output  [3:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [3:0] W_7_address1;
output   W_7_ce1;
input  [31:0] W_7_q1;
output  [31:0] E_55_out;
output   E_55_out_ap_vld;
output  [31:0] B_55_out;
output   B_55_out_ap_vld;
output  [31:0] D_59_out;
output   D_59_out_ap_vld;
output  [31:0] A_59_out;
output   A_59_out_ap_vld;
output  [31:0] C_78_out;
output   C_78_out_ap_vld;
reg ap_idle;
reg E_55_out_ap_vld;
reg B_55_out_ap_vld;
reg D_59_out_ap_vld;
reg A_59_out_ap_vld;
reg C_78_out_ap_vld;
(* fsm_encoding = "none" *) reg   [29:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln116_reg_1947;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln116_fu_458_p2;
reg   [31:0] W_load_reg_2011;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] W_1_load_reg_2016;
reg   [31:0] W_2_load_reg_2021;
reg   [31:0] W_3_load_reg_2026;
reg   [31:0] W_4_load_reg_2031;
reg   [31:0] W_5_load_reg_2036;
reg   [31:0] W_6_load_reg_2041;
reg   [31:0] W_7_load_reg_2046;
reg   [31:0] W_load_2_reg_2051;
reg   [31:0] W_1_load_2_reg_2056;
reg   [31:0] W_2_load_2_reg_2061;
reg   [31:0] W_3_load_2_reg_2066;
reg   [31:0] W_4_load_2_reg_2071;
reg   [31:0] W_5_load_2_reg_2076;
reg   [31:0] W_6_load_2_reg_2081;
reg   [31:0] W_7_load_2_reg_2086;
reg   [31:0] D_40_reg_2091;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] C_46_reg_2096;
reg   [31:0] A_40_reg_2102;
wire   [31:0] temp_fu_601_p2;
reg   [31:0] temp_reg_2108;
wire   [1:0] trunc_ln118_1_fu_607_p1;
reg   [1:0] trunc_ln118_1_reg_2114;
reg   [29:0] lshr_ln118_1_reg_2119;
wire   [26:0] trunc_ln118_2_fu_621_p1;
reg   [26:0] trunc_ln118_2_reg_2124;
reg   [4:0] lshr_ln118_2_reg_2129;
wire   [31:0] E_62_fu_649_p3;
reg   [31:0] E_62_reg_2134;
wire   [1:0] trunc_ln118_5_fu_657_p1;
reg   [1:0] trunc_ln118_5_reg_2142;
reg   [29:0] lshr_ln118_5_reg_2147;
wire   [31:0] C_47_fu_671_p3;
reg   [31:0] C_47_reg_2152;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] add_ln118_6_fu_689_p2;
reg   [31:0] add_ln118_6_reg_2158;
wire   [31:0] or_ln118_3_fu_709_p2;
reg   [31:0] or_ln118_3_reg_2163;
wire   [31:0] temp_29_fu_740_p2;
reg   [31:0] temp_29_reg_2168;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [26:0] trunc_ln118_4_fu_745_p1;
reg   [26:0] trunc_ln118_4_reg_2174;
reg   [4:0] lshr_ln118_4_reg_2179;
wire   [1:0] trunc_ln118_7_fu_759_p1;
reg   [1:0] trunc_ln118_7_reg_2184;
reg   [29:0] lshr_ln118_7_reg_2189;
wire   [31:0] add_ln118_10_fu_785_p2;
reg   [31:0] add_ln118_10_reg_2194;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] D_41_fu_790_p3;
reg   [31:0] D_41_reg_2199;
wire   [31:0] or_ln118_5_fu_811_p2;
reg   [31:0] or_ln118_5_reg_2206;
wire   [31:0] B_58_fu_821_p2;
reg   [31:0] B_58_reg_2211;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln118_6_fu_826_p1;
reg   [26:0] trunc_ln118_6_reg_2220;
reg   [4:0] lshr_ln118_6_reg_2225;
wire   [31:0] add_ln118_14_fu_852_p2;
reg   [31:0] add_ln118_14_reg_2230;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] A_41_fu_861_p2;
reg   [31:0] A_41_reg_2235;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] C_48_fu_867_p3;
reg   [31:0] C_48_reg_2245;
wire   [31:0] temp_30_fu_930_p2;
reg   [31:0] temp_30_reg_2252;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] C_49_fu_948_p3;
reg   [31:0] C_49_reg_2258;
wire   [26:0] trunc_ln118_10_fu_956_p1;
reg   [26:0] trunc_ln118_10_reg_2265;
reg   [4:0] lshr_ln118_s_reg_2270;
wire   [1:0] trunc_ln118_13_fu_970_p1;
reg   [1:0] trunc_ln118_13_reg_2275;
reg   [29:0] lshr_ln118_12_reg_2280;
wire   [31:0] add_ln118_22_fu_996_p2;
reg   [31:0] add_ln118_22_reg_2285;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] C_50_fu_1043_p3;
reg   [31:0] C_50_reg_2290;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [26:0] trunc_ln118_12_fu_1051_p1;
reg   [26:0] trunc_ln118_12_reg_2296;
reg   [4:0] lshr_ln118_11_reg_2301;
wire   [31:0] C_51_fu_1065_p3;
reg   [31:0] C_51_reg_2306;
wire   [31:0] or_ln118_13_fu_1089_p2;
reg   [31:0] or_ln118_13_reg_2312;
wire   [1:0] trunc_ln118_15_fu_1095_p1;
reg   [1:0] trunc_ln118_15_reg_2317;
reg   [29:0] lshr_ln118_14_reg_2322;
wire   [31:0] add_ln118_26_fu_1121_p2;
reg   [31:0] add_ln118_26_reg_2327;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] temp_32_fu_1151_p2;
reg   [31:0] temp_32_reg_2332;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [26:0] trunc_ln118_14_fu_1156_p1;
reg   [26:0] trunc_ln118_14_reg_2338;
reg   [4:0] lshr_ln118_13_reg_2343;
wire   [1:0] trunc_ln118_17_fu_1170_p1;
reg   [1:0] trunc_ln118_17_reg_2348;
reg   [29:0] lshr_ln118_16_reg_2353;
wire   [31:0] add_ln118_30_fu_1196_p2;
reg   [31:0] add_ln118_30_reg_2358;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] temp_33_fu_1205_p2;
reg   [31:0] temp_33_reg_2363;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [26:0] trunc_ln118_16_fu_1210_p1;
reg   [26:0] trunc_ln118_16_reg_2369;
reg   [4:0] lshr_ln118_15_reg_2374;
wire   [1:0] trunc_ln118_19_fu_1224_p1;
reg   [1:0] trunc_ln118_19_reg_2379;
reg   [29:0] lshr_ln118_18_reg_2384;
wire   [31:0] add_ln118_34_fu_1250_p2;
reg   [31:0] add_ln118_34_reg_2389;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [31:0] C_52_fu_1255_p3;
reg   [31:0] C_52_reg_2394;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [31:0] temp_34_fu_1287_p2;
reg   [31:0] temp_34_reg_2399;
wire   [31:0] C_53_fu_1292_p3;
reg   [31:0] C_53_reg_2405;
wire   [26:0] trunc_ln118_18_fu_1298_p1;
reg   [26:0] trunc_ln118_18_reg_2411;
reg   [4:0] lshr_ln118_17_reg_2416;
wire   [31:0] or_ln118_17_fu_1328_p2;
reg   [31:0] or_ln118_17_reg_2421;
wire   [1:0] trunc_ln118_21_fu_1334_p1;
reg   [1:0] trunc_ln118_21_reg_2426;
reg   [29:0] lshr_ln118_20_reg_2431;
wire   [31:0] add_ln118_38_fu_1360_p2;
reg   [31:0] add_ln118_38_reg_2436;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [31:0] temp_35_fu_1369_p2;
reg   [31:0] temp_35_reg_2441;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [26:0] trunc_ln118_20_fu_1374_p1;
reg   [26:0] trunc_ln118_20_reg_2447;
reg   [4:0] lshr_ln118_19_reg_2452;
wire   [1:0] trunc_ln118_23_fu_1388_p1;
reg   [1:0] trunc_ln118_23_reg_2457;
reg   [29:0] lshr_ln118_22_reg_2462;
wire   [31:0] add_ln118_42_fu_1414_p2;
reg   [31:0] add_ln118_42_reg_2467;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [31:0] C_54_fu_1419_p3;
reg   [31:0] C_54_reg_2472;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [31:0] temp_36_fu_1451_p2;
reg   [31:0] temp_36_reg_2478;
wire   [26:0] trunc_ln118_22_fu_1456_p1;
reg   [26:0] trunc_ln118_22_reg_2484;
reg   [4:0] lshr_ln118_21_reg_2489;
wire   [1:0] trunc_ln118_25_fu_1470_p1;
reg   [1:0] trunc_ln118_25_reg_2494;
reg   [29:0] lshr_ln118_24_reg_2499;
wire   [31:0] add_ln118_46_fu_1496_p2;
reg   [31:0] add_ln118_46_reg_2504;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [31:0] C_55_fu_1501_p3;
reg   [31:0] C_55_reg_2509;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [31:0] temp_37_fu_1533_p2;
reg   [31:0] temp_37_reg_2515;
wire   [26:0] trunc_ln118_24_fu_1538_p1;
reg   [26:0] trunc_ln118_24_reg_2521;
reg   [4:0] lshr_ln118_23_reg_2526;
wire   [1:0] trunc_ln118_27_fu_1552_p1;
reg   [1:0] trunc_ln118_27_reg_2531;
reg   [29:0] lshr_ln118_26_reg_2536;
wire   [31:0] add_ln118_50_fu_1578_p2;
reg   [31:0] add_ln118_50_reg_2541;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [31:0] C_56_fu_1583_p3;
reg   [31:0] C_56_reg_2546;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [31:0] temp_38_fu_1615_p2;
reg   [31:0] temp_38_reg_2552;
wire   [26:0] trunc_ln118_26_fu_1620_p1;
reg   [26:0] trunc_ln118_26_reg_2558;
reg   [4:0] lshr_ln118_25_reg_2563;
wire   [1:0] trunc_ln118_29_fu_1634_p1;
reg   [1:0] trunc_ln118_29_reg_2568;
reg   [29:0] lshr_ln118_28_reg_2573;
wire   [31:0] add_ln118_54_fu_1660_p2;
reg   [31:0] add_ln118_54_reg_2578;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [31:0] C_57_fu_1665_p3;
reg   [31:0] C_57_reg_2583;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [31:0] temp_39_fu_1697_p2;
reg   [31:0] temp_39_reg_2589;
wire   [26:0] trunc_ln118_28_fu_1702_p1;
reg   [26:0] trunc_ln118_28_reg_2595;
reg   [4:0] lshr_ln118_27_reg_2600;
wire   [31:0] add_ln118_58_fu_1755_p2;
reg   [31:0] add_ln118_58_reg_2605;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [26:0] trunc_ln118_30_fu_1803_p1;
reg   [26:0] trunc_ln118_30_reg_2610;
wire    ap_block_pp0_stage29_11001;
reg   [4:0] lshr_ln118_29_reg_2615;
wire   [31:0] or_ln118_29_fu_1833_p2;
reg   [31:0] or_ln118_29_reg_2620;
wire   [31:0] add_ln118_62_fu_1866_p2;
reg   [31:0] add_ln118_62_reg_2625;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln100_fu_432_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_1_fu_480_p1;
reg   [31:0] E_1_fu_100;
wire   [31:0] C_58_fu_1760_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [31:0] E_43_fu_104;
wire   [31:0] C_59_fu_1797_p3;
reg   [31:0] E_44_fu_108;
wire   [31:0] C_45_fu_1730_p3;
reg   [31:0] B_1_fu_112;
wire   [31:0] temp_40_fu_1792_p2;
reg   [31:0] B_40_fu_116;
wire   [31:0] temp_41_fu_1875_p2;
reg   [4:0] i_1_fu_120;
wire   [4:0] xor_ln_fu_510_p3;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage8_01001;
reg    W_ce1_local;
reg    W_ce0_local;
reg    W_1_ce1_local;
reg    W_1_ce0_local;
reg    W_2_ce1_local;
reg    W_2_ce0_local;
reg    W_3_ce1_local;
reg    W_3_ce0_local;
reg    W_4_ce1_local;
reg    W_4_ce0_local;
reg    W_5_ce1_local;
reg    W_5_ce0_local;
reg    W_6_ce1_local;
reg    W_6_ce0_local;
reg    W_7_ce1_local;
reg    W_7_ce0_local;
wire   [1:0] lshr_ln2_fu_422_p4;
wire   [1:0] trunc_ln116_fu_444_p1;
wire   [4:0] or_ln1_fu_448_p4;
wire   [0:0] tmp_fu_464_p3;
wire   [1:0] or_ln2_fu_472_p3;
wire   [0:0] bit_sel_fu_492_p3;
wire   [0:0] xor_ln116_fu_500_p2;
wire   [3:0] trunc_ln116_1_fu_506_p1;
wire   [31:0] xor_ln118_fu_552_p2;
wire   [31:0] and_ln118_1_fu_564_p2;
wire   [31:0] and_ln118_fu_558_p2;
wire   [26:0] trunc_ln118_fu_538_p1;
wire   [4:0] lshr_ln3_fu_542_p4;
wire   [31:0] or_ln118_1_fu_576_p3;
wire   [31:0] add_ln118_1_fu_584_p2;
wire   [31:0] or_ln118_fu_570_p2;
wire   [31:0] add_ln118_fu_596_p2;
wire   [31:0] add_ln118_2_fu_590_p2;
wire   [1:0] trunc_ln118_3_fu_635_p1;
wire   [29:0] lshr_ln118_3_fu_639_p4;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln118_4_fu_677_p3;
wire   [31:0] add_ln118_5_fu_683_p2;
wire   [31:0] xor_ln118_2_fu_694_p2;
wire   [31:0] and_ln118_4_fu_699_p2;
wire   [31:0] and_ln118_5_fu_703_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] xor_ln118_1_fu_715_p2;
wire   [31:0] and_ln118_2_fu_720_p2;
wire   [31:0] and_ln118_3_fu_724_p2;
wire   [31:0] or_ln118_2_fu_729_p2;
wire   [31:0] add_ln118_4_fu_735_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln118_7_fu_773_p3;
wire   [31:0] add_ln118_9_fu_779_p2;
wire   [31:0] xor_ln118_3_fu_796_p2;
wire   [31:0] and_ln118_6_fu_801_p2;
wire   [31:0] and_ln118_7_fu_806_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln118_8_fu_817_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln118_s_fu_840_p3;
wire   [31:0] add_ln118_13_fu_846_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln118_12_fu_857_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln118_4_fu_886_p2;
wire   [31:0] and_ln118_8_fu_891_p2;
wire   [31:0] and_ln118_9_fu_895_p2;
wire   [26:0] trunc_ln118_8_fu_874_p1;
wire   [4:0] lshr_ln118_8_fu_877_p4;
wire   [31:0] add_ln118_17_fu_914_p2;
wire   [31:0] or_ln118_6_fu_900_p2;
wire   [31:0] or_ln118_8_fu_906_p3;
wire   [31:0] add_ln118_16_fu_925_p2;
wire   [31:0] add_ln118_18_fu_919_p2;
wire   [1:0] trunc_ln118_9_fu_936_p1;
wire   [29:0] lshr_ln118_9_fu_939_p4;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln118_10_fu_984_p3;
wire   [31:0] add_ln118_21_fu_990_p2;
wire    ap_block_pp0_stage11;
wire   [31:0] xor_ln118_5_fu_1001_p2;
wire   [31:0] and_ln118_10_fu_1006_p2;
wire   [31:0] and_ln118_11_fu_1010_p2;
wire   [31:0] or_ln118_9_fu_1015_p2;
wire   [31:0] add_ln118_20_fu_1021_p2;
wire   [1:0] trunc_ln118_11_fu_1031_p1;
wire   [29:0] lshr_ln118_10_fu_1034_p4;
wire   [31:0] temp_31_fu_1026_p2;
wire   [31:0] xor_ln118_7_fu_1071_p2;
wire   [31:0] and_ln118_14_fu_1077_p2;
wire   [31:0] and_ln118_15_fu_1083_p2;
wire    ap_block_pp0_stage12;
wire   [31:0] or_ln118_12_fu_1109_p3;
wire   [31:0] add_ln118_25_fu_1115_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] xor_ln118_6_fu_1126_p2;
wire   [31:0] and_ln118_12_fu_1131_p2;
wire   [31:0] and_ln118_13_fu_1135_p2;
wire   [31:0] or_ln118_11_fu_1140_p2;
wire   [31:0] add_ln118_24_fu_1146_p2;
wire    ap_block_pp0_stage14;
wire   [31:0] or_ln118_14_fu_1184_p3;
wire   [31:0] add_ln118_29_fu_1190_p2;
wire    ap_block_pp0_stage15;
wire   [31:0] add_ln118_28_fu_1201_p2;
wire    ap_block_pp0_stage16;
wire   [31:0] or_ln118_16_fu_1238_p3;
wire   [31:0] add_ln118_33_fu_1244_p2;
wire    ap_block_pp0_stage17;
wire   [31:0] xor_ln118_8_fu_1261_p2;
wire   [31:0] and_ln118_16_fu_1266_p2;
wire   [31:0] and_ln118_17_fu_1271_p2;
wire   [31:0] or_ln118_15_fu_1276_p2;
wire   [31:0] add_ln118_32_fu_1282_p2;
wire   [31:0] xor_ln118_9_fu_1312_p2;
wire   [31:0] and_ln118_18_fu_1317_p2;
wire   [31:0] and_ln118_19_fu_1322_p2;
wire    ap_block_pp0_stage18;
wire   [31:0] or_ln118_18_fu_1348_p3;
wire   [31:0] add_ln118_37_fu_1354_p2;
wire    ap_block_pp0_stage19;
wire   [31:0] add_ln118_36_fu_1365_p2;
wire    ap_block_pp0_stage20;
wire   [31:0] or_ln118_20_fu_1402_p3;
wire   [31:0] add_ln118_41_fu_1408_p2;
wire    ap_block_pp0_stage21;
wire   [31:0] xor_ln118_10_fu_1425_p2;
wire   [31:0] and_ln118_20_fu_1430_p2;
wire   [31:0] and_ln118_21_fu_1435_p2;
wire   [31:0] or_ln118_19_fu_1440_p2;
wire   [31:0] add_ln118_40_fu_1446_p2;
wire    ap_block_pp0_stage22;
wire   [31:0] or_ln118_22_fu_1484_p3;
wire   [31:0] add_ln118_45_fu_1490_p2;
wire    ap_block_pp0_stage23;
wire   [31:0] xor_ln118_11_fu_1507_p2;
wire   [31:0] and_ln118_22_fu_1512_p2;
wire   [31:0] and_ln118_23_fu_1517_p2;
wire   [31:0] or_ln118_21_fu_1522_p2;
wire   [31:0] add_ln118_44_fu_1528_p2;
wire    ap_block_pp0_stage24;
wire   [31:0] or_ln118_24_fu_1566_p3;
wire   [31:0] add_ln118_49_fu_1572_p2;
wire    ap_block_pp0_stage25;
wire   [31:0] xor_ln118_12_fu_1589_p2;
wire   [31:0] and_ln118_24_fu_1594_p2;
wire   [31:0] and_ln118_25_fu_1599_p2;
wire   [31:0] or_ln118_23_fu_1604_p2;
wire   [31:0] add_ln118_48_fu_1610_p2;
wire    ap_block_pp0_stage26;
wire   [31:0] or_ln118_26_fu_1648_p3;
wire   [31:0] add_ln118_53_fu_1654_p2;
wire    ap_block_pp0_stage27;
wire   [31:0] xor_ln118_13_fu_1671_p2;
wire   [31:0] and_ln118_26_fu_1676_p2;
wire   [31:0] and_ln118_27_fu_1681_p2;
wire   [31:0] or_ln118_25_fu_1686_p2;
wire   [31:0] add_ln118_52_fu_1692_p2;
wire   [1:0] trunc_ln118_31_fu_1716_p1;
wire   [29:0] lshr_ln118_30_fu_1720_p4;
wire    ap_block_pp0_stage28;
wire   [31:0] or_ln118_28_fu_1743_p3;
wire   [31:0] add_ln118_57_fu_1749_p2;
wire    ap_block_pp0_stage29;
wire   [31:0] xor_ln118_14_fu_1766_p2;
wire   [31:0] and_ln118_28_fu_1771_p2;
wire   [31:0] and_ln118_29_fu_1776_p2;
wire   [31:0] or_ln118_27_fu_1781_p2;
wire   [31:0] add_ln118_56_fu_1787_p2;
wire   [31:0] xor_ln118_15_fu_1817_p2;
wire   [31:0] and_ln118_30_fu_1822_p2;
wire   [31:0] and_ln118_31_fu_1827_p2;
wire   [31:0] or_ln118_30_fu_1854_p3;
wire   [31:0] add_ln118_61_fu_1860_p2;
wire    ap_block_pp0_stage1;
wire   [31:0] add_ln118_60_fu_1871_p2;
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
#0 E_1_fu_100 = 32'd0;
#0 E_43_fu_104 = 32'd0;
#0 E_44_fu_108 = 32'd0;
#0 B_1_fu_112 = 32'd0;
#0 B_40_fu_116 = 32'd0;
#0 i_1_fu_120 = 5'd0;
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
        B_1_fu_112 <= B;
    end else if (((icmp_ln116_reg_1947 == 1'd0) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        B_1_fu_112 <= temp_40_fu_1792_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_40_fu_116 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_40_fu_116 <= temp_41_fu_1875_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_100 <= E;
    end else if (((icmp_ln116_reg_1947 == 1'd0) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        E_1_fu_100 <= C_58_fu_1760_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_43_fu_104 <= D;
    end else if (((icmp_ln116_reg_1947 == 1'd0) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        E_43_fu_104 <= C_59_fu_1797_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_44_fu_108 <= C;
    end else if (((icmp_ln116_reg_1947 == 1'd0) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        E_44_fu_108 <= C_45_fu_1730_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln116_fu_458_p2 == 1'd0))) begin
            i_1_fu_120 <= xor_ln_fu_510_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_120 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        A_40_reg_2102 <= B_40_fu_116;
        C_46_reg_2096 <= E_44_fu_108;
        D_40_reg_2091 <= E_43_fu_104;
        lshr_ln118_1_reg_2119 <= {{B_1_fu_112[31:2]}};
        lshr_ln118_2_reg_2129 <= {{temp_fu_601_p2[31:27]}};
        lshr_ln118_5_reg_2147 <= {{temp_fu_601_p2[31:2]}};
        temp_reg_2108 <= temp_fu_601_p2;
        trunc_ln118_1_reg_2114 <= trunc_ln118_1_fu_607_p1;
        trunc_ln118_2_reg_2124 <= trunc_ln118_2_fu_621_p1;
        trunc_ln118_5_reg_2142 <= trunc_ln118_5_fu_657_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_41_reg_2235 <= A_41_fu_861_p2;
        C_48_reg_2245 <= C_48_fu_867_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        B_58_reg_2211 <= B_58_fu_821_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_47_reg_2152 <= C_47_fu_671_p3;
        add_ln118_6_reg_2158 <= add_ln118_6_fu_689_p2;
        or_ln118_3_reg_2163 <= or_ln118_3_fu_709_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        C_49_reg_2258 <= C_49_fu_948_p3;
        lshr_ln118_12_reg_2280 <= {{temp_30_fu_930_p2[31:2]}};
        lshr_ln118_s_reg_2270 <= {{temp_30_fu_930_p2[31:27]}};
        temp_30_reg_2252 <= temp_30_fu_930_p2;
        trunc_ln118_10_reg_2265 <= trunc_ln118_10_fu_956_p1;
        trunc_ln118_13_reg_2275 <= trunc_ln118_13_fu_970_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_50_reg_2290 <= C_50_fu_1043_p3;
        C_51_reg_2306 <= C_51_fu_1065_p3;
        lshr_ln118_11_reg_2301 <= {{temp_31_fu_1026_p2[31:27]}};
        lshr_ln118_14_reg_2322 <= {{temp_31_fu_1026_p2[31:2]}};
        or_ln118_13_reg_2312 <= or_ln118_13_fu_1089_p2;
        trunc_ln118_12_reg_2296 <= trunc_ln118_12_fu_1051_p1;
        trunc_ln118_15_reg_2317 <= trunc_ln118_15_fu_1095_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        C_52_reg_2394 <= C_52_fu_1255_p3;
        C_53_reg_2405 <= C_53_fu_1292_p3;
        lshr_ln118_17_reg_2416 <= {{temp_34_fu_1287_p2[31:27]}};
        lshr_ln118_20_reg_2431 <= {{temp_34_fu_1287_p2[31:2]}};
        or_ln118_17_reg_2421 <= or_ln118_17_fu_1328_p2;
        temp_34_reg_2399 <= temp_34_fu_1287_p2;
        trunc_ln118_18_reg_2411 <= trunc_ln118_18_fu_1298_p1;
        trunc_ln118_21_reg_2426 <= trunc_ln118_21_fu_1334_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        C_54_reg_2472 <= C_54_fu_1419_p3;
        lshr_ln118_21_reg_2489 <= {{temp_36_fu_1451_p2[31:27]}};
        lshr_ln118_24_reg_2499 <= {{temp_36_fu_1451_p2[31:2]}};
        temp_36_reg_2478 <= temp_36_fu_1451_p2;
        trunc_ln118_22_reg_2484 <= trunc_ln118_22_fu_1456_p1;
        trunc_ln118_25_reg_2494 <= trunc_ln118_25_fu_1470_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        C_55_reg_2509 <= C_55_fu_1501_p3;
        lshr_ln118_23_reg_2526 <= {{temp_37_fu_1533_p2[31:27]}};
        lshr_ln118_26_reg_2536 <= {{temp_37_fu_1533_p2[31:2]}};
        temp_37_reg_2515 <= temp_37_fu_1533_p2;
        trunc_ln118_24_reg_2521 <= trunc_ln118_24_fu_1538_p1;
        trunc_ln118_27_reg_2531 <= trunc_ln118_27_fu_1552_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        C_56_reg_2546 <= C_56_fu_1583_p3;
        lshr_ln118_25_reg_2563 <= {{temp_38_fu_1615_p2[31:27]}};
        lshr_ln118_28_reg_2573 <= {{temp_38_fu_1615_p2[31:2]}};
        temp_38_reg_2552 <= temp_38_fu_1615_p2;
        trunc_ln118_26_reg_2558 <= trunc_ln118_26_fu_1620_p1;
        trunc_ln118_29_reg_2568 <= trunc_ln118_29_fu_1634_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        C_57_reg_2583 <= C_57_fu_1665_p3;
        lshr_ln118_27_reg_2600 <= {{temp_39_fu_1697_p2[31:27]}};
        temp_39_reg_2589 <= temp_39_fu_1697_p2;
        trunc_ln118_28_reg_2595 <= trunc_ln118_28_fu_1702_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        D_41_reg_2199 <= D_41_fu_790_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_62_reg_2134 <= E_62_fu_649_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_load_2_reg_2056 <= W_1_q0;
        W_1_load_reg_2016 <= W_1_q1;
        W_2_load_2_reg_2061 <= W_2_q0;
        W_2_load_reg_2021 <= W_2_q1;
        W_3_load_2_reg_2066 <= W_3_q0;
        W_3_load_reg_2026 <= W_3_q1;
        W_4_load_2_reg_2071 <= W_4_q0;
        W_4_load_reg_2031 <= W_4_q1;
        W_5_load_2_reg_2076 <= W_5_q0;
        W_5_load_reg_2036 <= W_5_q1;
        W_6_load_2_reg_2081 <= W_6_q0;
        W_6_load_reg_2041 <= W_6_q1;
        W_7_load_2_reg_2086 <= W_7_q0;
        W_7_load_reg_2046 <= W_7_q1;
        W_load_2_reg_2051 <= W_q0;
        W_load_reg_2011 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln118_10_reg_2194 <= add_ln118_10_fu_785_p2;
        or_ln118_5_reg_2206 <= or_ln118_5_fu_811_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln118_14_reg_2230 <= add_ln118_14_fu_852_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln118_22_reg_2285 <= add_ln118_22_fu_996_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln118_26_reg_2327 <= add_ln118_26_fu_1121_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln118_30_reg_2358 <= add_ln118_30_fu_1196_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add_ln118_34_reg_2389 <= add_ln118_34_fu_1250_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        add_ln118_38_reg_2436 <= add_ln118_38_fu_1360_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        add_ln118_42_reg_2467 <= add_ln118_42_fu_1414_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        add_ln118_46_reg_2504 <= add_ln118_46_fu_1496_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        add_ln118_50_reg_2541 <= add_ln118_50_fu_1578_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        add_ln118_54_reg_2578 <= add_ln118_54_fu_1660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        add_ln118_58_reg_2605 <= add_ln118_58_fu_1755_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_62_reg_2625 <= add_ln118_62_fu_1866_p2;
        icmp_ln116_reg_1947 <= icmp_ln116_fu_458_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        lshr_ln118_13_reg_2343 <= {{temp_32_fu_1151_p2[31:27]}};
        lshr_ln118_16_reg_2353 <= {{temp_32_fu_1151_p2[31:2]}};
        temp_32_reg_2332 <= temp_32_fu_1151_p2;
        trunc_ln118_14_reg_2338 <= trunc_ln118_14_fu_1156_p1;
        trunc_ln118_17_reg_2348 <= trunc_ln118_17_fu_1170_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        lshr_ln118_15_reg_2374 <= {{temp_33_fu_1205_p2[31:27]}};
        lshr_ln118_18_reg_2384 <= {{temp_33_fu_1205_p2[31:2]}};
        temp_33_reg_2363 <= temp_33_fu_1205_p2;
        trunc_ln118_16_reg_2369 <= trunc_ln118_16_fu_1210_p1;
        trunc_ln118_19_reg_2379 <= trunc_ln118_19_fu_1224_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        lshr_ln118_19_reg_2452 <= {{temp_35_fu_1369_p2[31:27]}};
        lshr_ln118_22_reg_2462 <= {{temp_35_fu_1369_p2[31:2]}};
        temp_35_reg_2441 <= temp_35_fu_1369_p2;
        trunc_ln118_20_reg_2447 <= trunc_ln118_20_fu_1374_p1;
        trunc_ln118_23_reg_2457 <= trunc_ln118_23_fu_1388_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        lshr_ln118_29_reg_2615 <= {{temp_40_fu_1792_p2[31:27]}};
        or_ln118_29_reg_2620 <= or_ln118_29_fu_1833_p2;
        trunc_ln118_30_reg_2610 <= trunc_ln118_30_fu_1803_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln118_4_reg_2179 <= {{temp_29_fu_740_p2[31:27]}};
        lshr_ln118_7_reg_2189 <= {{temp_29_fu_740_p2[31:2]}};
        temp_29_reg_2168 <= temp_29_fu_740_p2;
        trunc_ln118_4_reg_2174 <= trunc_ln118_4_fu_745_p1;
        trunc_ln118_7_reg_2184 <= trunc_ln118_7_fu_759_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln118_6_reg_2225 <= {{B_58_fu_821_p2[31:27]}};
        trunc_ln118_6_reg_2220 <= trunc_ln118_6_fu_826_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1947 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_59_out_ap_vld = 1'b1;
    end else begin
        A_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1947 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        B_55_out_ap_vld = 1'b1;
    end else begin
        B_55_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1947 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_78_out_ap_vld = 1'b1;
    end else begin
        C_78_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1947 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        D_59_out_ap_vld = 1'b1;
    end else begin
        D_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1947 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_55_out_ap_vld = 1'b1;
    end else begin
        E_55_out_ap_vld = 1'b0;
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
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
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
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
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
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
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
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
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
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
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
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
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
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_1947 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_i = i_1_fu_120;
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
assign A_41_fu_861_p2 = (add_ln118_14_reg_2230 + add_ln118_12_fu_857_p2);
assign A_59_out = (add_ln118_14_reg_2230 + add_ln118_12_fu_857_p2);
assign B_55_out = B_58_reg_2211;
assign B_58_fu_821_p2 = (add_ln118_10_reg_2194 + add_ln118_8_fu_817_p2);
assign C_45_fu_1730_p3 = {{trunc_ln118_31_fu_1716_p1}, {lshr_ln118_30_fu_1720_p4}};
assign C_47_fu_671_p3 = {{trunc_ln118_1_reg_2114}, {lshr_ln118_1_reg_2119}};
assign C_48_fu_867_p3 = {{trunc_ln118_7_reg_2184}, {lshr_ln118_7_reg_2189}};
assign C_49_fu_948_p3 = {{trunc_ln118_9_fu_936_p1}, {lshr_ln118_9_fu_939_p4}};
assign C_50_fu_1043_p3 = {{trunc_ln118_11_fu_1031_p1}, {lshr_ln118_10_fu_1034_p4}};
assign C_51_fu_1065_p3 = {{trunc_ln118_13_reg_2275}, {lshr_ln118_12_reg_2280}};
assign C_52_fu_1255_p3 = {{trunc_ln118_15_reg_2317}, {lshr_ln118_14_reg_2322}};
assign C_53_fu_1292_p3 = {{trunc_ln118_17_reg_2348}, {lshr_ln118_16_reg_2353}};
assign C_54_fu_1419_p3 = {{trunc_ln118_19_reg_2379}, {lshr_ln118_18_reg_2384}};
assign C_55_fu_1501_p3 = {{trunc_ln118_21_reg_2426}, {lshr_ln118_20_reg_2431}};
assign C_56_fu_1583_p3 = {{trunc_ln118_23_reg_2457}, {lshr_ln118_22_reg_2462}};
assign C_57_fu_1665_p3 = {{trunc_ln118_25_reg_2494}, {lshr_ln118_24_reg_2499}};
assign C_58_fu_1760_p3 = {{trunc_ln118_27_reg_2531}, {lshr_ln118_26_reg_2536}};
assign C_59_fu_1797_p3 = {{trunc_ln118_29_reg_2568}, {lshr_ln118_28_reg_2573}};
assign C_78_out = {{trunc_ln118_7_reg_2184}, {lshr_ln118_7_reg_2189}};
assign D_41_fu_790_p3 = {{trunc_ln118_5_reg_2142}, {lshr_ln118_5_reg_2147}};
assign D_59_out = D_41_reg_2199;
assign E_55_out = E_62_reg_2134;
assign E_62_fu_649_p3 = {{trunc_ln118_3_fu_635_p1}, {lshr_ln118_3_fu_639_p4}};
assign W_1_address0 = zext_ln100_1_fu_480_p1;
assign W_1_address1 = zext_ln100_fu_432_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_2_address0 = zext_ln100_1_fu_480_p1;
assign W_2_address1 = zext_ln100_fu_432_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_3_address0 = zext_ln100_1_fu_480_p1;
assign W_3_address1 = zext_ln100_fu_432_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_4_address0 = zext_ln100_1_fu_480_p1;
assign W_4_address1 = zext_ln100_fu_432_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_5_address0 = zext_ln100_1_fu_480_p1;
assign W_5_address1 = zext_ln100_fu_432_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_6_address0 = zext_ln100_1_fu_480_p1;
assign W_6_address1 = zext_ln100_fu_432_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_7_address0 = zext_ln100_1_fu_480_p1;
assign W_7_address1 = zext_ln100_fu_432_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_address0 = zext_ln100_1_fu_480_p1;
assign W_address1 = zext_ln100_fu_432_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln118_10_fu_785_p2 = (add_ln118_9_fu_779_p2 + C_46_reg_2096);
assign add_ln118_12_fu_857_p2 = (W_3_load_reg_2026 + or_ln118_5_reg_2206);
assign add_ln118_13_fu_846_p2 = (or_ln118_s_fu_840_p3 + 32'd1518500249);
assign add_ln118_14_fu_852_p2 = (add_ln118_13_fu_846_p2 + C_47_reg_2152);
assign add_ln118_16_fu_925_p2 = (or_ln118_8_fu_906_p3 + W_4_load_reg_2031);
assign add_ln118_17_fu_914_p2 = (E_62_reg_2134 + 32'd1518500249);
assign add_ln118_18_fu_919_p2 = (add_ln118_17_fu_914_p2 + or_ln118_6_fu_900_p2);
assign add_ln118_1_fu_584_p2 = (or_ln118_1_fu_576_p3 + 32'd1518500249);
assign add_ln118_20_fu_1021_p2 = (W_5_load_reg_2036 + or_ln118_9_fu_1015_p2);
assign add_ln118_21_fu_990_p2 = (or_ln118_10_fu_984_p3 + 32'd1518500249);
assign add_ln118_22_fu_996_p2 = (add_ln118_21_fu_990_p2 + D_41_reg_2199);
assign add_ln118_24_fu_1146_p2 = (W_6_load_reg_2041 + or_ln118_11_fu_1140_p2);
assign add_ln118_25_fu_1115_p2 = (or_ln118_12_fu_1109_p3 + 32'd1518500249);
assign add_ln118_26_fu_1121_p2 = (add_ln118_25_fu_1115_p2 + C_48_reg_2245);
assign add_ln118_28_fu_1201_p2 = (W_7_load_reg_2046 + or_ln118_13_reg_2312);
assign add_ln118_29_fu_1190_p2 = (or_ln118_14_fu_1184_p3 + 32'd1518500249);
assign add_ln118_2_fu_590_p2 = (add_ln118_1_fu_584_p2 + E_1_fu_100);
assign add_ln118_30_fu_1196_p2 = (add_ln118_29_fu_1190_p2 + C_49_reg_2258);
assign add_ln118_32_fu_1282_p2 = (W_load_2_reg_2051 + or_ln118_15_fu_1276_p2);
assign add_ln118_33_fu_1244_p2 = (or_ln118_16_fu_1238_p3 + 32'd1518500249);
assign add_ln118_34_fu_1250_p2 = (add_ln118_33_fu_1244_p2 + C_50_reg_2290);
assign add_ln118_36_fu_1365_p2 = (W_1_load_2_reg_2056 + or_ln118_17_reg_2421);
assign add_ln118_37_fu_1354_p2 = (or_ln118_18_fu_1348_p3 + 32'd1518500249);
assign add_ln118_38_fu_1360_p2 = (add_ln118_37_fu_1354_p2 + C_51_reg_2306);
assign add_ln118_40_fu_1446_p2 = (W_2_load_2_reg_2061 + or_ln118_19_fu_1440_p2);
assign add_ln118_41_fu_1408_p2 = (or_ln118_20_fu_1402_p3 + 32'd1518500249);
assign add_ln118_42_fu_1414_p2 = (add_ln118_41_fu_1408_p2 + C_52_reg_2394);
assign add_ln118_44_fu_1528_p2 = (W_3_load_2_reg_2066 + or_ln118_21_fu_1522_p2);
assign add_ln118_45_fu_1490_p2 = (or_ln118_22_fu_1484_p3 + 32'd1518500249);
assign add_ln118_46_fu_1496_p2 = (add_ln118_45_fu_1490_p2 + C_53_reg_2405);
assign add_ln118_48_fu_1610_p2 = (W_4_load_2_reg_2071 + or_ln118_23_fu_1604_p2);
assign add_ln118_49_fu_1572_p2 = (or_ln118_24_fu_1566_p3 + 32'd1518500249);
assign add_ln118_4_fu_735_p2 = (W_1_load_reg_2016 + or_ln118_2_fu_729_p2);
assign add_ln118_50_fu_1578_p2 = (add_ln118_49_fu_1572_p2 + C_54_reg_2472);
assign add_ln118_52_fu_1692_p2 = (W_5_load_2_reg_2076 + or_ln118_25_fu_1686_p2);
assign add_ln118_53_fu_1654_p2 = (or_ln118_26_fu_1648_p3 + 32'd1518500249);
assign add_ln118_54_fu_1660_p2 = (add_ln118_53_fu_1654_p2 + C_55_reg_2509);
assign add_ln118_56_fu_1787_p2 = (W_6_load_2_reg_2081 + or_ln118_27_fu_1781_p2);
assign add_ln118_57_fu_1749_p2 = (or_ln118_28_fu_1743_p3 + 32'd1518500249);
assign add_ln118_58_fu_1755_p2 = (add_ln118_57_fu_1749_p2 + C_56_reg_2546);
assign add_ln118_5_fu_683_p2 = (or_ln118_4_fu_677_p3 + 32'd1518500249);
assign add_ln118_60_fu_1871_p2 = (W_7_load_2_reg_2086 + C_57_reg_2583);
assign add_ln118_61_fu_1860_p2 = (or_ln118_30_fu_1854_p3 + 32'd1518500249);
assign add_ln118_62_fu_1866_p2 = (add_ln118_61_fu_1860_p2 + or_ln118_29_reg_2620);
assign add_ln118_6_fu_689_p2 = (add_ln118_5_fu_683_p2 + D_40_reg_2091);
assign add_ln118_8_fu_817_p2 = (W_2_load_reg_2021 + or_ln118_3_reg_2163);
assign add_ln118_9_fu_779_p2 = (or_ln118_7_fu_773_p3 + 32'd1518500249);
assign add_ln118_fu_596_p2 = (or_ln118_fu_570_p2 + W_load_reg_2011);
assign and_ln118_10_fu_1006_p2 = (C_49_reg_2258 & A_41_reg_2235);
assign and_ln118_11_fu_1010_p2 = (xor_ln118_5_fu_1001_p2 & C_48_reg_2245);
assign and_ln118_12_fu_1131_p2 = (temp_30_reg_2252 & C_50_reg_2290);
assign and_ln118_13_fu_1135_p2 = (xor_ln118_6_fu_1126_p2 & C_49_reg_2258);
assign and_ln118_14_fu_1077_p2 = (temp_31_fu_1026_p2 & C_51_fu_1065_p3);
assign and_ln118_15_fu_1083_p2 = (xor_ln118_7_fu_1071_p2 & C_50_fu_1043_p3);
assign and_ln118_16_fu_1266_p2 = (temp_32_reg_2332 & C_52_fu_1255_p3);
assign and_ln118_17_fu_1271_p2 = (xor_ln118_8_fu_1261_p2 & C_51_reg_2306);
assign and_ln118_18_fu_1317_p2 = (temp_33_reg_2363 & C_53_fu_1292_p3);
assign and_ln118_19_fu_1322_p2 = (xor_ln118_9_fu_1312_p2 & C_52_fu_1255_p3);
assign and_ln118_1_fu_564_p2 = (xor_ln118_fu_552_p2 & E_43_fu_104);
assign and_ln118_20_fu_1430_p2 = (temp_34_reg_2399 & C_54_fu_1419_p3);
assign and_ln118_21_fu_1435_p2 = (xor_ln118_10_fu_1425_p2 & C_53_reg_2405);
assign and_ln118_22_fu_1512_p2 = (temp_35_reg_2441 & C_55_fu_1501_p3);
assign and_ln118_23_fu_1517_p2 = (xor_ln118_11_fu_1507_p2 & C_54_reg_2472);
assign and_ln118_24_fu_1594_p2 = (temp_36_reg_2478 & C_56_fu_1583_p3);
assign and_ln118_25_fu_1599_p2 = (xor_ln118_12_fu_1589_p2 & C_55_reg_2509);
assign and_ln118_26_fu_1676_p2 = (temp_37_reg_2515 & C_57_fu_1665_p3);
assign and_ln118_27_fu_1681_p2 = (xor_ln118_13_fu_1671_p2 & C_56_reg_2546);
assign and_ln118_28_fu_1771_p2 = (temp_38_reg_2552 & C_58_fu_1760_p3);
assign and_ln118_29_fu_1776_p2 = (xor_ln118_14_fu_1766_p2 & C_57_reg_2583);
assign and_ln118_2_fu_720_p2 = (C_47_reg_2152 & A_40_reg_2102);
assign and_ln118_30_fu_1822_p2 = (temp_39_reg_2589 & C_59_fu_1797_p3);
assign and_ln118_31_fu_1827_p2 = (xor_ln118_15_fu_1817_p2 & C_58_fu_1760_p3);
assign and_ln118_3_fu_724_p2 = (xor_ln118_1_fu_715_p2 & C_46_reg_2096);
assign and_ln118_4_fu_699_p2 = (temp_reg_2108 & E_62_reg_2134);
assign and_ln118_5_fu_703_p2 = (xor_ln118_2_fu_694_p2 & C_47_fu_671_p3);
assign and_ln118_6_fu_801_p2 = (temp_29_reg_2168 & D_41_fu_790_p3);
assign and_ln118_7_fu_806_p2 = (xor_ln118_3_fu_796_p2 & E_62_reg_2134);
assign and_ln118_8_fu_891_p2 = (C_48_reg_2245 & B_58_reg_2211);
assign and_ln118_9_fu_895_p2 = (xor_ln118_4_fu_886_p2 & D_41_reg_2199);
assign and_ln118_fu_558_p2 = (E_44_fu_108 & B_1_fu_112);
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
assign bit_sel_fu_492_p3 = ap_sig_allocacmp_i[5'd4];
assign icmp_ln116_fu_458_p2 = ((or_ln1_fu_448_p4 == 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_10_fu_1034_p4 = {{A_41_reg_2235[31:2]}};
assign lshr_ln118_30_fu_1720_p4 = {{temp_39_fu_1697_p2[31:2]}};
assign lshr_ln118_3_fu_639_p4 = {{B_40_fu_116[31:2]}};
assign lshr_ln118_8_fu_877_p4 = {{A_41_reg_2235[31:27]}};
assign lshr_ln118_9_fu_939_p4 = {{B_58_reg_2211[31:2]}};
assign lshr_ln2_fu_422_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign lshr_ln3_fu_542_p4 = {{B_40_fu_116[31:27]}};
assign or_ln118_10_fu_984_p3 = {{trunc_ln118_10_reg_2265}, {lshr_ln118_s_reg_2270}};
assign or_ln118_11_fu_1140_p2 = (and_ln118_13_fu_1135_p2 | and_ln118_12_fu_1131_p2);
assign or_ln118_12_fu_1109_p3 = {{trunc_ln118_12_reg_2296}, {lshr_ln118_11_reg_2301}};
assign or_ln118_13_fu_1089_p2 = (and_ln118_15_fu_1083_p2 | and_ln118_14_fu_1077_p2);
assign or_ln118_14_fu_1184_p3 = {{trunc_ln118_14_reg_2338}, {lshr_ln118_13_reg_2343}};
assign or_ln118_15_fu_1276_p2 = (and_ln118_17_fu_1271_p2 | and_ln118_16_fu_1266_p2);
assign or_ln118_16_fu_1238_p3 = {{trunc_ln118_16_reg_2369}, {lshr_ln118_15_reg_2374}};
assign or_ln118_17_fu_1328_p2 = (and_ln118_19_fu_1322_p2 | and_ln118_18_fu_1317_p2);
assign or_ln118_18_fu_1348_p3 = {{trunc_ln118_18_reg_2411}, {lshr_ln118_17_reg_2416}};
assign or_ln118_19_fu_1440_p2 = (and_ln118_21_fu_1435_p2 | and_ln118_20_fu_1430_p2);
assign or_ln118_1_fu_576_p3 = {{trunc_ln118_fu_538_p1}, {lshr_ln3_fu_542_p4}};
assign or_ln118_20_fu_1402_p3 = {{trunc_ln118_20_reg_2447}, {lshr_ln118_19_reg_2452}};
assign or_ln118_21_fu_1522_p2 = (and_ln118_23_fu_1517_p2 | and_ln118_22_fu_1512_p2);
assign or_ln118_22_fu_1484_p3 = {{trunc_ln118_22_reg_2484}, {lshr_ln118_21_reg_2489}};
assign or_ln118_23_fu_1604_p2 = (and_ln118_25_fu_1599_p2 | and_ln118_24_fu_1594_p2);
assign or_ln118_24_fu_1566_p3 = {{trunc_ln118_24_reg_2521}, {lshr_ln118_23_reg_2526}};
assign or_ln118_25_fu_1686_p2 = (and_ln118_27_fu_1681_p2 | and_ln118_26_fu_1676_p2);
assign or_ln118_26_fu_1648_p3 = {{trunc_ln118_26_reg_2558}, {lshr_ln118_25_reg_2563}};
assign or_ln118_27_fu_1781_p2 = (and_ln118_29_fu_1776_p2 | and_ln118_28_fu_1771_p2);
assign or_ln118_28_fu_1743_p3 = {{trunc_ln118_28_reg_2595}, {lshr_ln118_27_reg_2600}};
assign or_ln118_29_fu_1833_p2 = (and_ln118_31_fu_1827_p2 | and_ln118_30_fu_1822_p2);
assign or_ln118_2_fu_729_p2 = (and_ln118_3_fu_724_p2 | and_ln118_2_fu_720_p2);
assign or_ln118_30_fu_1854_p3 = {{trunc_ln118_30_reg_2610}, {lshr_ln118_29_reg_2615}};
assign or_ln118_3_fu_709_p2 = (and_ln118_5_fu_703_p2 | and_ln118_4_fu_699_p2);
assign or_ln118_4_fu_677_p3 = {{trunc_ln118_2_reg_2124}, {lshr_ln118_2_reg_2129}};
assign or_ln118_5_fu_811_p2 = (and_ln118_7_fu_806_p2 | and_ln118_6_fu_801_p2);
assign or_ln118_6_fu_900_p2 = (and_ln118_9_fu_895_p2 | and_ln118_8_fu_891_p2);
assign or_ln118_7_fu_773_p3 = {{trunc_ln118_4_reg_2174}, {lshr_ln118_4_reg_2179}};
assign or_ln118_8_fu_906_p3 = {{trunc_ln118_8_fu_874_p1}, {lshr_ln118_8_fu_877_p4}};
assign or_ln118_9_fu_1015_p2 = (and_ln118_11_fu_1010_p2 | and_ln118_10_fu_1006_p2);
assign or_ln118_fu_570_p2 = (and_ln118_fu_558_p2 | and_ln118_1_fu_564_p2);
assign or_ln118_s_fu_840_p3 = {{trunc_ln118_6_reg_2220}, {lshr_ln118_6_reg_2225}};
assign or_ln1_fu_448_p4 = {{{lshr_ln2_fu_422_p4}, {1'd1}}, {trunc_ln116_fu_444_p1}};
assign or_ln2_fu_472_p3 = {{tmp_fu_464_p3}, {1'd1}};
assign temp_29_fu_740_p2 = (add_ln118_6_reg_2158 + add_ln118_4_fu_735_p2);
assign temp_30_fu_930_p2 = (add_ln118_16_fu_925_p2 + add_ln118_18_fu_919_p2);
assign temp_31_fu_1026_p2 = (add_ln118_22_reg_2285 + add_ln118_20_fu_1021_p2);
assign temp_32_fu_1151_p2 = (add_ln118_26_reg_2327 + add_ln118_24_fu_1146_p2);
assign temp_33_fu_1205_p2 = (add_ln118_30_reg_2358 + add_ln118_28_fu_1201_p2);
assign temp_34_fu_1287_p2 = (add_ln118_34_reg_2389 + add_ln118_32_fu_1282_p2);
assign temp_35_fu_1369_p2 = (add_ln118_38_reg_2436 + add_ln118_36_fu_1365_p2);
assign temp_36_fu_1451_p2 = (add_ln118_42_reg_2467 + add_ln118_40_fu_1446_p2);
assign temp_37_fu_1533_p2 = (add_ln118_46_reg_2504 + add_ln118_44_fu_1528_p2);
assign temp_38_fu_1615_p2 = (add_ln118_50_reg_2541 + add_ln118_48_fu_1610_p2);
assign temp_39_fu_1697_p2 = (add_ln118_54_reg_2578 + add_ln118_52_fu_1692_p2);
assign temp_40_fu_1792_p2 = (add_ln118_58_reg_2605 + add_ln118_56_fu_1787_p2);
assign temp_41_fu_1875_p2 = (add_ln118_62_reg_2625 + add_ln118_60_fu_1871_p2);
assign temp_fu_601_p2 = (add_ln118_fu_596_p2 + add_ln118_2_fu_590_p2);
assign tmp_fu_464_p3 = ap_sig_allocacmp_i[32'd4];
assign trunc_ln116_1_fu_506_p1 = ap_sig_allocacmp_i[3:0];
assign trunc_ln116_fu_444_p1 = ap_sig_allocacmp_i[1:0];
assign trunc_ln118_10_fu_956_p1 = temp_30_fu_930_p2[26:0];
assign trunc_ln118_11_fu_1031_p1 = A_41_reg_2235[1:0];
assign trunc_ln118_12_fu_1051_p1 = temp_31_fu_1026_p2[26:0];
assign trunc_ln118_13_fu_970_p1 = temp_30_fu_930_p2[1:0];
assign trunc_ln118_14_fu_1156_p1 = temp_32_fu_1151_p2[26:0];
assign trunc_ln118_15_fu_1095_p1 = temp_31_fu_1026_p2[1:0];
assign trunc_ln118_16_fu_1210_p1 = temp_33_fu_1205_p2[26:0];
assign trunc_ln118_17_fu_1170_p1 = temp_32_fu_1151_p2[1:0];
assign trunc_ln118_18_fu_1298_p1 = temp_34_fu_1287_p2[26:0];
assign trunc_ln118_19_fu_1224_p1 = temp_33_fu_1205_p2[1:0];
assign trunc_ln118_1_fu_607_p1 = B_1_fu_112[1:0];
assign trunc_ln118_20_fu_1374_p1 = temp_35_fu_1369_p2[26:0];
assign trunc_ln118_21_fu_1334_p1 = temp_34_fu_1287_p2[1:0];
assign trunc_ln118_22_fu_1456_p1 = temp_36_fu_1451_p2[26:0];
assign trunc_ln118_23_fu_1388_p1 = temp_35_fu_1369_p2[1:0];
assign trunc_ln118_24_fu_1538_p1 = temp_37_fu_1533_p2[26:0];
assign trunc_ln118_25_fu_1470_p1 = temp_36_fu_1451_p2[1:0];
assign trunc_ln118_26_fu_1620_p1 = temp_38_fu_1615_p2[26:0];
assign trunc_ln118_27_fu_1552_p1 = temp_37_fu_1533_p2[1:0];
assign trunc_ln118_28_fu_1702_p1 = temp_39_fu_1697_p2[26:0];
assign trunc_ln118_29_fu_1634_p1 = temp_38_fu_1615_p2[1:0];
assign trunc_ln118_2_fu_621_p1 = temp_fu_601_p2[26:0];
assign trunc_ln118_30_fu_1803_p1 = temp_40_fu_1792_p2[26:0];
assign trunc_ln118_31_fu_1716_p1 = temp_39_fu_1697_p2[1:0];
assign trunc_ln118_3_fu_635_p1 = B_40_fu_116[1:0];
assign trunc_ln118_4_fu_745_p1 = temp_29_fu_740_p2[26:0];
assign trunc_ln118_5_fu_657_p1 = temp_fu_601_p2[1:0];
assign trunc_ln118_6_fu_826_p1 = B_58_fu_821_p2[26:0];
assign trunc_ln118_7_fu_759_p1 = temp_29_fu_740_p2[1:0];
assign trunc_ln118_8_fu_874_p1 = A_41_reg_2235[26:0];
assign trunc_ln118_9_fu_936_p1 = B_58_reg_2211[1:0];
assign trunc_ln118_fu_538_p1 = B_40_fu_116[26:0];
assign xor_ln116_fu_500_p2 = (bit_sel_fu_492_p3 ^ 1'd1);
assign xor_ln118_10_fu_1425_p2 = (temp_34_reg_2399 ^ 32'd4294967295);
assign xor_ln118_11_fu_1507_p2 = (temp_35_reg_2441 ^ 32'd4294967295);
assign xor_ln118_12_fu_1589_p2 = (temp_36_reg_2478 ^ 32'd4294967295);
assign xor_ln118_13_fu_1671_p2 = (temp_37_reg_2515 ^ 32'd4294967295);
assign xor_ln118_14_fu_1766_p2 = (temp_38_reg_2552 ^ 32'd4294967295);
assign xor_ln118_15_fu_1817_p2 = (temp_39_reg_2589 ^ 32'd4294967295);
assign xor_ln118_1_fu_715_p2 = (32'd4294967295 ^ A_40_reg_2102);
assign xor_ln118_2_fu_694_p2 = (temp_reg_2108 ^ 32'd4294967295);
assign xor_ln118_3_fu_796_p2 = (temp_29_reg_2168 ^ 32'd4294967295);
assign xor_ln118_4_fu_886_p2 = (32'd4294967295 ^ B_58_reg_2211);
assign xor_ln118_5_fu_1001_p2 = (32'd4294967295 ^ A_41_reg_2235);
assign xor_ln118_6_fu_1126_p2 = (temp_30_reg_2252 ^ 32'd4294967295);
assign xor_ln118_7_fu_1071_p2 = (temp_31_fu_1026_p2 ^ 32'd4294967295);
assign xor_ln118_8_fu_1261_p2 = (temp_32_reg_2332 ^ 32'd4294967295);
assign xor_ln118_9_fu_1312_p2 = (temp_33_reg_2363 ^ 32'd4294967295);
assign xor_ln118_fu_552_p2 = (32'd4294967295 ^ B_1_fu_112);
assign xor_ln_fu_510_p3 = {{xor_ln116_fu_500_p2}, {trunc_ln116_1_fu_506_p1}};
assign zext_ln100_1_fu_480_p1 = or_ln2_fu_472_p3;
assign zext_ln100_fu_432_p1 = lshr_ln2_fu_422_p4;
endmodule 