module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_32_reload,W,W_33_reload,W_1,W_34_reload,W_2,W_35_reload,W_3,W_36_reload,W_4,W_37_reload,W_5,W_38_reload,W_6,W_39_reload,W_7,W_40_reload,W_8,W_41_reload,W_9,W_42_reload,W_10,W_43_reload,W_11,W_44_reload,W_12,W_45_reload,W_13,W_46_reload,W_14,W_47_reload,W_15,E_43_out,E_43_out_ap_vld,B_43_out,B_43_out_ap_vld,D_47_out,D_47_out_ap_vld,A_47_out,A_47_out_ap_vld,C_58_out,C_58_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 28'd1;
parameter    ap_ST_fsm_pp0_stage1 = 28'd2;
parameter    ap_ST_fsm_pp0_stage2 = 28'd4;
parameter    ap_ST_fsm_pp0_stage3 = 28'd8;
parameter    ap_ST_fsm_pp0_stage4 = 28'd16;
parameter    ap_ST_fsm_pp0_stage5 = 28'd32;
parameter    ap_ST_fsm_pp0_stage6 = 28'd64;
parameter    ap_ST_fsm_pp0_stage7 = 28'd128;
parameter    ap_ST_fsm_pp0_stage8 = 28'd256;
parameter    ap_ST_fsm_pp0_stage9 = 28'd512;
parameter    ap_ST_fsm_pp0_stage10 = 28'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 28'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 28'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 28'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 28'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 28'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 28'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 28'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 28'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 28'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 28'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 28'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 28'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 28'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 28'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 28'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 28'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 28'd134217728;
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
input  [31:0] W_32_reload;
input  [31:0] W;
input  [31:0] W_33_reload;
input  [31:0] W_1;
input  [31:0] W_34_reload;
input  [31:0] W_2;
input  [31:0] W_35_reload;
input  [31:0] W_3;
input  [31:0] W_36_reload;
input  [31:0] W_4;
input  [31:0] W_37_reload;
input  [31:0] W_5;
input  [31:0] W_38_reload;
input  [31:0] W_6;
input  [31:0] W_39_reload;
input  [31:0] W_7;
input  [31:0] W_40_reload;
input  [31:0] W_8;
input  [31:0] W_41_reload;
input  [31:0] W_9;
input  [31:0] W_42_reload;
input  [31:0] W_10;
input  [31:0] W_43_reload;
input  [31:0] W_11;
input  [31:0] W_44_reload;
input  [31:0] W_12;
input  [31:0] W_45_reload;
input  [31:0] W_13;
input  [31:0] W_46_reload;
input  [31:0] W_14;
input  [31:0] W_47_reload;
input  [31:0] W_15;
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
(* fsm_encoding = "none" *) reg   [27:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln116_reg_2109;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln118_fu_458_p2;
reg   [0:0] icmp_ln118_reg_2083;
wire   [31:0] add_ln118_1_fu_472_p2;
reg   [31:0] add_ln118_1_reg_2089;
wire   [31:0] select_ln118_1_fu_478_p3;
reg   [31:0] select_ln118_1_reg_2094;
wire   [31:0] select_ln118_2_fu_486_p3;
reg   [31:0] select_ln118_2_reg_2099;
wire   [31:0] select_ln118_3_fu_494_p3;
reg   [31:0] select_ln118_3_reg_2104;
wire   [0:0] icmp_ln116_fu_526_p2;
wire   [31:0] add_ln118_17_fu_540_p2;
reg   [31:0] add_ln118_17_reg_2113;
wire   [31:0] select_ln118_5_fu_546_p3;
reg   [31:0] select_ln118_5_reg_2118;
wire   [31:0] select_ln118_6_fu_554_p3;
reg   [31:0] select_ln118_6_reg_2123;
wire   [31:0] select_ln118_7_fu_562_p3;
reg   [31:0] select_ln118_7_reg_2128;
wire   [31:0] select_ln118_8_fu_570_p3;
reg   [31:0] select_ln118_8_reg_2133;
wire   [31:0] select_ln118_10_fu_578_p3;
reg   [31:0] select_ln118_10_reg_2138;
wire   [31:0] select_ln118_11_fu_586_p3;
reg   [31:0] select_ln118_11_reg_2143;
wire   [31:0] select_ln118_12_fu_594_p3;
reg   [31:0] select_ln118_12_reg_2148;
wire   [31:0] select_ln118_13_fu_602_p3;
reg   [31:0] select_ln118_13_reg_2153;
wire   [31:0] select_ln118_14_fu_610_p3;
reg   [31:0] select_ln118_14_reg_2158;
reg   [31:0] D_36_reg_2163;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_35_reg_2168;
reg   [31:0] A_34_reg_2174;
wire   [31:0] temp_fu_721_p2;
reg   [31:0] temp_reg_2180;
wire   [1:0] trunc_ln118_1_fu_727_p1;
reg   [1:0] trunc_ln118_1_reg_2186;
reg   [29:0] lshr_ln118_1_reg_2191;
wire   [26:0] trunc_ln118_2_fu_741_p1;
reg   [26:0] trunc_ln118_2_reg_2196;
reg   [4:0] lshr_ln118_2_reg_2201;
wire   [31:0] E_46_fu_769_p3;
reg   [31:0] E_46_reg_2206;
wire   [1:0] trunc_ln118_5_fu_777_p1;
reg   [1:0] trunc_ln118_5_reg_2214;
reg   [29:0] lshr_ln118_5_reg_2219;
wire   [31:0] add_ln118_6_fu_802_p2;
reg   [31:0] add_ln118_6_reg_2224;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_36_fu_808_p3;
reg   [31:0] C_36_reg_2229;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [26:0] trunc_ln118_4_fu_845_p1;
reg   [26:0] trunc_ln118_4_reg_2235;
reg   [4:0] lshr_ln118_4_reg_2240;
wire   [31:0] D_37_fu_859_p3;
reg   [31:0] D_37_reg_2245;
wire   [31:0] or_ln118_5_fu_882_p2;
reg   [31:0] or_ln118_5_reg_2252;
wire   [31:0] C_37_fu_902_p3;
reg   [31:0] C_37_reg_2257;
wire   [31:0] add_ln118_10_fu_922_p2;
reg   [31:0] add_ln118_10_reg_2265;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] B_43_fu_952_p2;
reg   [31:0] B_43_reg_2270;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [26:0] trunc_ln118_6_fu_957_p1;
reg   [26:0] trunc_ln118_6_reg_2279;
reg   [4:0] lshr_ln118_6_reg_2284;
wire   [31:0] add_ln118_14_fu_983_p2;
reg   [31:0] add_ln118_14_reg_2289;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] A_35_fu_992_p2;
reg   [31:0] A_35_reg_2294;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] add_ln118_16_fu_1040_p2;
reg   [31:0] add_ln118_16_reg_2302;
wire   [31:0] C_38_fu_1067_p3;
reg   [31:0] C_38_reg_2307;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [26:0] trunc_ln118_10_fu_1075_p1;
reg   [26:0] trunc_ln118_10_reg_2313;
reg   [4:0] lshr_ln118_s_reg_2318;
wire   [31:0] C_39_fu_1101_p3;
reg   [31:0] C_39_reg_2323;
wire   [31:0] or_ln118_11_fu_1127_p2;
reg   [31:0] or_ln118_11_reg_2329;
wire   [1:0] trunc_ln118_13_fu_1133_p1;
reg   [1:0] trunc_ln118_13_reg_2334;
reg   [29:0] lshr_ln118_12_reg_2339;
wire   [31:0] add_ln118_22_fu_1159_p2;
reg   [31:0] add_ln118_22_reg_2344;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] temp_19_fu_1189_p2;
reg   [31:0] temp_19_reg_2349;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [26:0] trunc_ln118_12_fu_1194_p1;
reg   [26:0] trunc_ln118_12_reg_2355;
reg   [4:0] lshr_ln118_11_reg_2360;
wire   [1:0] trunc_ln118_15_fu_1208_p1;
reg   [1:0] trunc_ln118_15_reg_2365;
reg   [29:0] lshr_ln118_14_reg_2370;
wire   [31:0] add_ln118_26_fu_1234_p2;
reg   [31:0] add_ln118_26_reg_2375;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_20_fu_1243_p2;
reg   [31:0] temp_20_reg_2380;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [26:0] trunc_ln118_14_fu_1248_p1;
reg   [26:0] trunc_ln118_14_reg_2386;
reg   [4:0] lshr_ln118_13_reg_2391;
wire   [31:0] C_42_fu_1276_p3;
reg   [31:0] C_42_reg_2396;
wire   [31:0] add_ln118_30_fu_1296_p2;
reg   [31:0] add_ln118_30_reg_2403;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [31:0] C_40_fu_1301_p3;
reg   [31:0] C_40_reg_2408;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] temp_21_fu_1333_p2;
reg   [31:0] temp_21_reg_2414;
wire   [26:0] trunc_ln118_16_fu_1338_p1;
reg   [26:0] trunc_ln118_16_reg_2420;
reg   [4:0] lshr_ln118_15_reg_2425;
wire   [1:0] trunc_ln118_19_fu_1352_p1;
reg   [1:0] trunc_ln118_19_reg_2430;
reg   [29:0] lshr_ln118_18_reg_2435;
wire   [31:0] C_41_fu_1366_p3;
reg   [31:0] C_41_reg_2440;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [31:0] add_ln118_34_fu_1384_p2;
reg   [31:0] add_ln118_34_reg_2446;
wire   [31:0] add_ln118_36_fu_1415_p2;
reg   [31:0] add_ln118_36_reg_2451;
wire   [31:0] temp_22_fu_1446_p2;
reg   [31:0] temp_22_reg_2456;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [26:0] trunc_ln118_18_fu_1451_p1;
reg   [26:0] trunc_ln118_18_reg_2462;
reg   [4:0] lshr_ln118_17_reg_2467;
wire   [1:0] trunc_ln118_21_fu_1465_p1;
reg   [1:0] trunc_ln118_21_reg_2472;
reg   [29:0] lshr_ln118_20_reg_2477;
wire   [31:0] temp_23_fu_1495_p2;
reg   [31:0] temp_23_reg_2482;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [26:0] trunc_ln118_20_fu_1501_p1;
reg   [26:0] trunc_ln118_20_reg_2488;
reg   [4:0] lshr_ln118_19_reg_2493;
wire   [1:0] trunc_ln118_23_fu_1515_p1;
reg   [1:0] trunc_ln118_23_reg_2498;
reg   [29:0] lshr_ln118_22_reg_2503;
wire   [31:0] C_43_fu_1529_p3;
reg   [31:0] C_43_reg_2508;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [31:0] or_ln118_19_fu_1550_p2;
reg   [31:0] or_ln118_19_reg_2514;
wire   [31:0] add_ln118_42_fu_1567_p2;
reg   [31:0] add_ln118_42_reg_2519;
wire   [31:0] temp_24_fu_1577_p2;
reg   [31:0] temp_24_reg_2524;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [26:0] trunc_ln118_22_fu_1582_p1;
reg   [26:0] trunc_ln118_22_reg_2530;
reg   [4:0] lshr_ln118_21_reg_2535;
wire   [31:0] C_46_fu_1610_p3;
reg   [31:0] C_46_reg_2540;
wire   [31:0] add_ln118_60_fu_1623_p2;
reg   [31:0] add_ln118_60_reg_2546;
wire   [31:0] add_ln118_46_fu_1640_p2;
reg   [31:0] add_ln118_46_reg_2551;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [31:0] C_44_fu_1646_p3;
reg   [31:0] C_44_reg_2556;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [31:0] temp_25_fu_1678_p2;
reg   [31:0] temp_25_reg_2562;
wire   [26:0] trunc_ln118_24_fu_1683_p1;
reg   [26:0] trunc_ln118_24_reg_2568;
reg   [4:0] lshr_ln118_23_reg_2573;
wire   [1:0] trunc_ln118_27_fu_1697_p1;
reg   [1:0] trunc_ln118_27_reg_2578;
reg   [29:0] lshr_ln118_26_reg_2583;
wire   [31:0] add_ln118_50_fu_1722_p2;
reg   [31:0] add_ln118_50_reg_2588;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [31:0] C_45_fu_1728_p3;
reg   [31:0] C_45_reg_2593;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [31:0] temp_26_fu_1760_p2;
reg   [31:0] temp_26_reg_2599;
wire   [26:0] trunc_ln118_26_fu_1765_p1;
reg   [26:0] trunc_ln118_26_reg_2605;
reg   [4:0] lshr_ln118_25_reg_2610;
wire   [1:0] trunc_ln118_29_fu_1779_p1;
reg   [1:0] trunc_ln118_29_reg_2615;
reg   [29:0] lshr_ln118_28_reg_2620;
wire   [31:0] add_ln118_54_fu_1804_p2;
reg   [31:0] add_ln118_54_reg_2625;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [26:0] trunc_ln118_28_fu_1846_p1;
reg   [26:0] trunc_ln118_28_reg_2630;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [4:0] lshr_ln118_27_reg_2635;
wire   [31:0] or_ln118_27_fu_1875_p2;
reg   [31:0] or_ln118_27_reg_2640;
wire   [31:0] or_ln118_29_fu_1905_p2;
reg   [31:0] or_ln118_29_reg_2645;
wire   [31:0] add_ln118_58_fu_1959_p2;
reg   [31:0] add_ln118_58_reg_2650;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [31:0] add_ln118_61_fu_1996_p2;
reg   [31:0] add_ln118_61_reg_2655;
wire    ap_block_pp0_stage27_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [31:0] E_1_fu_144;
wire   [31:0] C_47_fu_1840_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_27_fu_148;
wire   [31:0] C_48_fu_1881_p3;
reg   [31:0] E_28_fu_152;
wire   [31:0] C_34_fu_1925_p3;
reg   [31:0] B_1_fu_156;
wire   [31:0] temp_28_fu_1969_p2;
reg   [31:0] B_25_fu_160;
wire   [31:0] temp_29_fu_2011_p2;
reg   [4:0] i_1_fu_164;
wire   [4:0] xor_ln_fu_636_p3;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage7_01001;
wire   [31:0] select_ln118_fu_464_p3;
wire   [1:0] tmp_s_fu_502_p4;
wire   [1:0] trunc_ln116_fu_512_p1;
wire   [4:0] or_ln_fu_516_p4;
wire   [31:0] select_ln118_4_fu_532_p3;
wire   [0:0] bit_sel_fu_618_p3;
wire   [0:0] xor_ln116_fu_626_p2;
wire   [3:0] trunc_ln116_1_fu_632_p1;
wire   [31:0] xor_ln118_fu_678_p2;
wire   [31:0] and_ln118_1_fu_690_p2;
wire   [31:0] and_ln118_fu_684_p2;
wire   [26:0] trunc_ln118_fu_664_p1;
wire   [4:0] lshr_ln_fu_668_p4;
wire   [31:0] or_ln118_1_fu_702_p3;
wire   [31:0] or_ln118_fu_696_p2;
wire   [31:0] add_ln118_fu_715_p2;
wire   [31:0] add_ln118_2_fu_710_p2;
wire   [1:0] trunc_ln118_3_fu_755_p1;
wire   [29:0] lshr_ln118_3_fu_759_p4;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln118_4_fu_791_p3;
wire   [31:0] add_ln118_5_fu_797_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] xor_ln118_1_fu_814_p2;
wire   [31:0] and_ln118_2_fu_819_p2;
wire   [31:0] and_ln118_3_fu_824_p2;
wire   [31:0] or_ln118_2_fu_829_p2;
wire   [31:0] add_ln118_4_fu_835_p2;
wire   [31:0] temp_17_fu_840_p2;
wire   [31:0] xor_ln118_3_fu_865_p2;
wire   [31:0] and_ln118_6_fu_871_p2;
wire   [31:0] and_ln118_7_fu_877_p2;
wire   [1:0] trunc_ln118_7_fu_888_p1;
wire   [29:0] lshr_ln118_7_fu_892_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln118_7_fu_910_p3;
wire   [31:0] add_ln118_9_fu_916_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] xor_ln118_2_fu_927_p2;
wire   [31:0] and_ln118_4_fu_932_p2;
wire   [31:0] and_ln118_5_fu_936_p2;
wire   [31:0] or_ln118_3_fu_941_p2;
wire   [31:0] add_ln118_8_fu_947_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln118_s_fu_971_p3;
wire   [31:0] add_ln118_13_fu_977_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln118_12_fu_988_p2;
wire   [31:0] xor_ln118_4_fu_1012_p2;
wire   [31:0] and_ln118_8_fu_1017_p2;
wire   [31:0] and_ln118_9_fu_1021_p2;
wire   [26:0] trunc_ln118_8_fu_998_p1;
wire   [4:0] lshr_ln118_8_fu_1002_p4;
wire   [31:0] or_ln118_8_fu_1032_p3;
wire   [31:0] or_ln118_6_fu_1026_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln118_18_fu_1046_p2;
wire   [1:0] trunc_ln118_9_fu_1055_p1;
wire   [29:0] lshr_ln118_9_fu_1058_p4;
wire   [31:0] temp_18_fu_1050_p2;
wire   [1:0] trunc_ln118_11_fu_1089_p1;
wire   [29:0] lshr_ln118_10_fu_1092_p4;
wire   [31:0] xor_ln118_6_fu_1109_p2;
wire   [31:0] and_ln118_12_fu_1115_p2;
wire   [31:0] and_ln118_13_fu_1121_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] or_ln118_10_fu_1147_p3;
wire   [31:0] add_ln118_21_fu_1153_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] xor_ln118_5_fu_1164_p2;
wire   [31:0] and_ln118_10_fu_1169_p2;
wire   [31:0] and_ln118_11_fu_1173_p2;
wire   [31:0] or_ln118_9_fu_1178_p2;
wire   [31:0] add_ln118_20_fu_1184_p2;
wire    ap_block_pp0_stage11;
wire   [31:0] or_ln118_12_fu_1222_p3;
wire   [31:0] add_ln118_25_fu_1228_p2;
wire    ap_block_pp0_stage12;
wire   [31:0] add_ln118_24_fu_1239_p2;
wire   [1:0] trunc_ln118_17_fu_1262_p1;
wire   [29:0] lshr_ln118_16_fu_1266_p4;
wire    ap_block_pp0_stage13;
wire   [31:0] or_ln118_14_fu_1284_p3;
wire   [31:0] add_ln118_29_fu_1290_p2;
wire    ap_block_pp0_stage14;
wire   [31:0] xor_ln118_7_fu_1307_p2;
wire   [31:0] and_ln118_14_fu_1312_p2;
wire   [31:0] and_ln118_15_fu_1317_p2;
wire   [31:0] or_ln118_13_fu_1322_p2;
wire   [31:0] add_ln118_28_fu_1328_p2;
wire    ap_block_pp0_stage15;
wire   [31:0] or_ln118_16_fu_1372_p3;
wire   [31:0] add_ln118_33_fu_1378_p2;
wire   [31:0] xor_ln118_9_fu_1394_p2;
wire   [31:0] and_ln118_18_fu_1399_p2;
wire   [31:0] and_ln118_19_fu_1403_p2;
wire   [31:0] or_ln118_17_fu_1409_p2;
wire   [31:0] select_ln118_9_fu_1389_p3;
wire    ap_block_pp0_stage16;
wire   [31:0] xor_ln118_8_fu_1421_p2;
wire   [31:0] and_ln118_16_fu_1426_p2;
wire   [31:0] and_ln118_17_fu_1430_p2;
wire   [31:0] or_ln118_15_fu_1435_p2;
wire   [31:0] add_ln118_32_fu_1441_p2;
wire    ap_block_pp0_stage17;
wire   [31:0] or_ln118_18_fu_1479_p3;
wire   [31:0] add_ln118_37_fu_1489_p2;
wire   [31:0] add_ln118_38_fu_1485_p2;
wire    ap_block_pp0_stage18;
wire   [31:0] xor_ln118_10_fu_1535_p2;
wire   [31:0] and_ln118_20_fu_1540_p2;
wire   [31:0] and_ln118_21_fu_1545_p2;
wire   [31:0] or_ln118_20_fu_1556_p3;
wire   [31:0] add_ln118_41_fu_1562_p2;
wire    ap_block_pp0_stage19;
wire   [31:0] add_ln118_40_fu_1573_p2;
wire   [1:0] trunc_ln118_25_fu_1596_p1;
wire   [29:0] lshr_ln118_24_fu_1600_p4;
wire   [31:0] select_ln118_15_fu_1618_p3;
wire    ap_block_pp0_stage20;
wire   [31:0] or_ln118_22_fu_1629_p3;
wire   [31:0] add_ln118_45_fu_1635_p2;
wire    ap_block_pp0_stage21;
wire   [31:0] xor_ln118_11_fu_1652_p2;
wire   [31:0] and_ln118_22_fu_1657_p2;
wire   [31:0] and_ln118_23_fu_1662_p2;
wire   [31:0] or_ln118_21_fu_1667_p2;
wire   [31:0] add_ln118_44_fu_1673_p2;
wire    ap_block_pp0_stage22;
wire   [31:0] or_ln118_24_fu_1711_p3;
wire   [31:0] add_ln118_49_fu_1717_p2;
wire    ap_block_pp0_stage23;
wire   [31:0] xor_ln118_12_fu_1734_p2;
wire   [31:0] and_ln118_24_fu_1739_p2;
wire   [31:0] and_ln118_25_fu_1744_p2;
wire   [31:0] or_ln118_23_fu_1749_p2;
wire   [31:0] add_ln118_48_fu_1755_p2;
wire    ap_block_pp0_stage24;
wire   [31:0] or_ln118_26_fu_1793_p3;
wire   [31:0] add_ln118_53_fu_1799_p2;
wire    ap_block_pp0_stage25;
wire   [31:0] xor_ln118_13_fu_1810_p2;
wire   [31:0] and_ln118_26_fu_1815_p2;
wire   [31:0] and_ln118_27_fu_1819_p2;
wire   [31:0] or_ln118_25_fu_1824_p2;
wire   [31:0] add_ln118_52_fu_1830_p2;
wire   [31:0] temp_27_fu_1835_p2;
wire   [31:0] xor_ln118_14_fu_1860_p2;
wire   [31:0] and_ln118_28_fu_1865_p2;
wire   [31:0] and_ln118_29_fu_1870_p2;
wire   [31:0] xor_ln118_15_fu_1887_p2;
wire   [31:0] and_ln118_30_fu_1893_p2;
wire   [31:0] and_ln118_31_fu_1899_p2;
wire   [1:0] trunc_ln118_31_fu_1911_p1;
wire   [29:0] lshr_ln118_30_fu_1915_p4;
wire    ap_block_pp0_stage26;
wire   [31:0] or_ln118_28_fu_1948_p3;
wire   [31:0] add_ln118_57_fu_1954_p2;
wire    ap_block_pp0_stage27;
wire   [31:0] add_ln118_56_fu_1965_p2;
wire   [26:0] trunc_ln118_30_fu_1974_p1;
wire   [4:0] lshr_ln118_29_fu_1978_p4;
wire   [31:0] or_ln118_30_fu_1988_p3;
wire   [31:0] add_ln118_62_fu_2007_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [27:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 28'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_144 = 32'd0;
#0 E_27_fu_148 = 32'd0;
#0 E_28_fu_152 = 32'd0;
#0 B_1_fu_156 = 32'd0;
#0 B_25_fu_160 = 32'd0;
#0 i_1_fu_164 = 5'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage27_subdone) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_156 <= B;
    end else if (((icmp_ln116_reg_2109 == 1'd0) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        B_1_fu_156 <= temp_28_fu_1969_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_25_fu_160 <= A;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_25_fu_160 <= temp_29_fu_2011_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_144 <= E;
    end else if (((icmp_ln116_reg_2109 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        E_1_fu_144 <= C_47_fu_1840_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_27_fu_148 <= D;
    end else if (((icmp_ln116_reg_2109 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        E_27_fu_148 <= C_48_fu_1881_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_28_fu_152 <= C;
    end else if (((icmp_ln116_reg_2109 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        E_28_fu_152 <= C_34_fu_1925_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln116_fu_526_p2 == 1'd0))) begin
            i_1_fu_164 <= xor_ln_fu_636_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_164 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_34_reg_2174 <= B_25_fu_160;
        C_35_reg_2168 <= E_28_fu_152;
        D_36_reg_2163 <= E_27_fu_148;
        lshr_ln118_1_reg_2191 <= {{B_1_fu_156[31:2]}};
        lshr_ln118_2_reg_2201 <= {{temp_fu_721_p2[31:27]}};
        lshr_ln118_5_reg_2219 <= {{temp_fu_721_p2[31:2]}};
        temp_reg_2180 <= temp_fu_721_p2;
        trunc_ln118_1_reg_2186 <= trunc_ln118_1_fu_727_p1;
        trunc_ln118_2_reg_2196 <= trunc_ln118_2_fu_741_p1;
        trunc_ln118_5_reg_2214 <= trunc_ln118_5_fu_777_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        A_35_reg_2294 <= A_35_fu_992_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_43_reg_2270 <= B_43_fu_952_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_36_reg_2229 <= C_36_fu_808_p3;
        lshr_ln118_4_reg_2240 <= {{temp_17_fu_840_p2[31:27]}};
        or_ln118_5_reg_2252 <= or_ln118_5_fu_882_p2;
        trunc_ln118_4_reg_2235 <= trunc_ln118_4_fu_845_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_37_reg_2257 <= C_37_fu_902_p3;
        D_37_reg_2245 <= D_37_fu_859_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_38_reg_2307 <= C_38_fu_1067_p3;
        C_39_reg_2323 <= C_39_fu_1101_p3;
        lshr_ln118_12_reg_2339 <= {{temp_18_fu_1050_p2[31:2]}};
        lshr_ln118_s_reg_2318 <= {{temp_18_fu_1050_p2[31:27]}};
        or_ln118_11_reg_2329 <= or_ln118_11_fu_1127_p2;
        trunc_ln118_10_reg_2313 <= trunc_ln118_10_fu_1075_p1;
        trunc_ln118_13_reg_2334 <= trunc_ln118_13_fu_1133_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        C_40_reg_2408 <= C_40_fu_1301_p3;
        lshr_ln118_15_reg_2425 <= {{temp_21_fu_1333_p2[31:27]}};
        lshr_ln118_18_reg_2435 <= {{temp_21_fu_1333_p2[31:2]}};
        temp_21_reg_2414 <= temp_21_fu_1333_p2;
        trunc_ln118_16_reg_2420 <= trunc_ln118_16_fu_1338_p1;
        trunc_ln118_19_reg_2430 <= trunc_ln118_19_fu_1352_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        C_41_reg_2440 <= C_41_fu_1366_p3;
        add_ln118_34_reg_2446 <= add_ln118_34_fu_1384_p2;
        add_ln118_36_reg_2451 <= add_ln118_36_fu_1415_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        C_42_reg_2396 <= C_42_fu_1276_p3;
        lshr_ln118_13_reg_2391 <= {{temp_20_fu_1243_p2[31:27]}};
        temp_20_reg_2380 <= temp_20_fu_1243_p2;
        trunc_ln118_14_reg_2386 <= trunc_ln118_14_fu_1248_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        C_43_reg_2508 <= C_43_fu_1529_p3;
        add_ln118_42_reg_2519 <= add_ln118_42_fu_1567_p2;
        or_ln118_19_reg_2514 <= or_ln118_19_fu_1550_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        C_44_reg_2556 <= C_44_fu_1646_p3;
        lshr_ln118_23_reg_2573 <= {{temp_25_fu_1678_p2[31:27]}};
        lshr_ln118_26_reg_2583 <= {{temp_25_fu_1678_p2[31:2]}};
        temp_25_reg_2562 <= temp_25_fu_1678_p2;
        trunc_ln118_24_reg_2568 <= trunc_ln118_24_fu_1683_p1;
        trunc_ln118_27_reg_2578 <= trunc_ln118_27_fu_1697_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        C_45_reg_2593 <= C_45_fu_1728_p3;
        lshr_ln118_25_reg_2610 <= {{temp_26_fu_1760_p2[31:27]}};
        lshr_ln118_28_reg_2620 <= {{temp_26_fu_1760_p2[31:2]}};
        temp_26_reg_2599 <= temp_26_fu_1760_p2;
        trunc_ln118_26_reg_2605 <= trunc_ln118_26_fu_1765_p1;
        trunc_ln118_29_reg_2615 <= trunc_ln118_29_fu_1779_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        C_46_reg_2540 <= C_46_fu_1610_p3;
        add_ln118_60_reg_2546 <= add_ln118_60_fu_1623_p2;
        lshr_ln118_21_reg_2535 <= {{temp_24_fu_1577_p2[31:27]}};
        temp_24_reg_2524 <= temp_24_fu_1577_p2;
        trunc_ln118_22_reg_2530 <= trunc_ln118_22_fu_1582_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_46_reg_2206 <= E_46_fu_769_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln118_10_reg_2265 <= add_ln118_10_fu_922_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln118_14_reg_2289 <= add_ln118_14_fu_983_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln118_16_reg_2302 <= add_ln118_16_fu_1040_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_17_reg_2113 <= add_ln118_17_fu_540_p2;
        add_ln118_1_reg_2089 <= add_ln118_1_fu_472_p2;
        icmp_ln116_reg_2109 <= icmp_ln116_fu_526_p2;
        icmp_ln118_reg_2083 <= icmp_ln118_fu_458_p2;
        select_ln118_10_reg_2138 <= select_ln118_10_fu_578_p3;
        select_ln118_11_reg_2143 <= select_ln118_11_fu_586_p3;
        select_ln118_12_reg_2148 <= select_ln118_12_fu_594_p3;
        select_ln118_13_reg_2153 <= select_ln118_13_fu_602_p3;
        select_ln118_14_reg_2158 <= select_ln118_14_fu_610_p3;
        select_ln118_1_reg_2094 <= select_ln118_1_fu_478_p3;
        select_ln118_2_reg_2099 <= select_ln118_2_fu_486_p3;
        select_ln118_3_reg_2104 <= select_ln118_3_fu_494_p3;
        select_ln118_5_reg_2118 <= select_ln118_5_fu_546_p3;
        select_ln118_6_reg_2123 <= select_ln118_6_fu_554_p3;
        select_ln118_7_reg_2128 <= select_ln118_7_fu_562_p3;
        select_ln118_8_reg_2133 <= select_ln118_8_fu_570_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln118_22_reg_2344 <= add_ln118_22_fu_1159_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln118_26_reg_2375 <= add_ln118_26_fu_1234_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln118_30_reg_2403 <= add_ln118_30_fu_1296_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        add_ln118_46_reg_2551 <= add_ln118_46_fu_1640_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        add_ln118_50_reg_2588 <= add_ln118_50_fu_1722_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        add_ln118_54_reg_2625 <= add_ln118_54_fu_1804_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        add_ln118_58_reg_2650 <= add_ln118_58_fu_1959_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        add_ln118_61_reg_2655 <= add_ln118_61_fu_1996_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln118_6_reg_2224 <= add_ln118_6_fu_802_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        lshr_ln118_11_reg_2360 <= {{temp_19_fu_1189_p2[31:27]}};
        lshr_ln118_14_reg_2370 <= {{temp_19_fu_1189_p2[31:2]}};
        temp_19_reg_2349 <= temp_19_fu_1189_p2;
        trunc_ln118_12_reg_2355 <= trunc_ln118_12_fu_1194_p1;
        trunc_ln118_15_reg_2365 <= trunc_ln118_15_fu_1208_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        lshr_ln118_17_reg_2467 <= {{temp_22_fu_1446_p2[31:27]}};
        lshr_ln118_20_reg_2477 <= {{temp_22_fu_1446_p2[31:2]}};
        temp_22_reg_2456 <= temp_22_fu_1446_p2;
        trunc_ln118_18_reg_2462 <= trunc_ln118_18_fu_1451_p1;
        trunc_ln118_21_reg_2472 <= trunc_ln118_21_fu_1465_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        lshr_ln118_19_reg_2493 <= {{temp_23_fu_1495_p2[31:27]}};
        lshr_ln118_22_reg_2503 <= {{temp_23_fu_1495_p2[31:2]}};
        temp_23_reg_2482 <= temp_23_fu_1495_p2;
        trunc_ln118_20_reg_2488 <= trunc_ln118_20_fu_1501_p1;
        trunc_ln118_23_reg_2498 <= trunc_ln118_23_fu_1515_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        lshr_ln118_27_reg_2635 <= {{temp_27_fu_1835_p2[31:27]}};
        or_ln118_27_reg_2640 <= or_ln118_27_fu_1875_p2;
        or_ln118_29_reg_2645 <= or_ln118_29_fu_1905_p2;
        trunc_ln118_28_reg_2630 <= trunc_ln118_28_fu_1846_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln118_6_reg_2284 <= {{B_43_fu_952_p2[31:27]}};
        trunc_ln118_6_reg_2279 <= trunc_ln118_6_fu_957_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_2109 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        A_47_out_ap_vld = 1'b1;
    end else begin
        A_47_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_2109 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        B_43_out_ap_vld = 1'b1;
    end else begin
        B_43_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_2109 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        C_58_out_ap_vld = 1'b1;
    end else begin
        C_58_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_2109 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        D_47_out_ap_vld = 1'b1;
    end else begin
        D_47_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_2109 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_43_out_ap_vld = 1'b1;
    end else begin
        E_43_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_2109 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((1'b0 == ap_block_pp0_stage27_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_164;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_35_fu_992_p2 = (add_ln118_14_reg_2289 + add_ln118_12_fu_988_p2);
assign A_47_out = A_35_fu_992_p2;
assign B_43_fu_952_p2 = (add_ln118_10_reg_2265 + add_ln118_8_fu_947_p2);
assign B_43_out = B_43_reg_2270;
assign C_34_fu_1925_p3 = {{trunc_ln118_31_fu_1911_p1}, {lshr_ln118_30_fu_1915_p4}};
assign C_36_fu_808_p3 = {{trunc_ln118_1_reg_2186}, {lshr_ln118_1_reg_2191}};
assign C_37_fu_902_p3 = {{trunc_ln118_7_fu_888_p1}, {lshr_ln118_7_fu_892_p4}};
assign C_38_fu_1067_p3 = {{trunc_ln118_9_fu_1055_p1}, {lshr_ln118_9_fu_1058_p4}};
assign C_39_fu_1101_p3 = {{trunc_ln118_11_fu_1089_p1}, {lshr_ln118_10_fu_1092_p4}};
assign C_40_fu_1301_p3 = {{trunc_ln118_13_reg_2334}, {lshr_ln118_12_reg_2339}};
assign C_41_fu_1366_p3 = {{trunc_ln118_15_reg_2365}, {lshr_ln118_14_reg_2370}};
assign C_42_fu_1276_p3 = {{trunc_ln118_17_fu_1262_p1}, {lshr_ln118_16_fu_1266_p4}};
assign C_43_fu_1529_p3 = {{trunc_ln118_19_reg_2430}, {lshr_ln118_18_reg_2435}};
assign C_44_fu_1646_p3 = {{trunc_ln118_21_reg_2472}, {lshr_ln118_20_reg_2477}};
assign C_45_fu_1728_p3 = {{trunc_ln118_23_reg_2498}, {lshr_ln118_22_reg_2503}};
assign C_46_fu_1610_p3 = {{trunc_ln118_25_fu_1596_p1}, {lshr_ln118_24_fu_1600_p4}};
assign C_47_fu_1840_p3 = {{trunc_ln118_27_reg_2578}, {lshr_ln118_26_reg_2583}};
assign C_48_fu_1881_p3 = {{trunc_ln118_29_reg_2615}, {lshr_ln118_28_reg_2620}};
assign C_58_out = C_37_reg_2257;
assign D_37_fu_859_p3 = {{trunc_ln118_5_reg_2214}, {lshr_ln118_5_reg_2219}};
assign D_47_out = D_37_reg_2245;
assign E_43_out = E_46_reg_2206;
assign E_46_fu_769_p3 = {{trunc_ln118_3_fu_755_p1}, {lshr_ln118_3_fu_759_p4}};
assign add_ln118_10_fu_922_p2 = (add_ln118_9_fu_916_p2 + C_35_reg_2168);
assign add_ln118_12_fu_988_p2 = (or_ln118_5_reg_2252 + select_ln118_3_reg_2104);
assign add_ln118_13_fu_977_p2 = (or_ln118_s_fu_971_p3 + 32'd1518500249);
assign add_ln118_14_fu_983_p2 = (add_ln118_13_fu_977_p2 + C_36_reg_2229);
assign add_ln118_16_fu_1040_p2 = (or_ln118_8_fu_1032_p3 + or_ln118_6_fu_1026_p2);
assign add_ln118_17_fu_540_p2 = (select_ln118_4_fu_532_p3 + 32'd1518500249);
assign add_ln118_18_fu_1046_p2 = (add_ln118_17_reg_2113 + E_46_reg_2206);
assign add_ln118_1_fu_472_p2 = (select_ln118_fu_464_p3 + 32'd1518500249);
assign add_ln118_20_fu_1184_p2 = (select_ln118_5_reg_2118 + or_ln118_9_fu_1178_p2);
assign add_ln118_21_fu_1153_p2 = (or_ln118_10_fu_1147_p3 + 32'd1518500249);
assign add_ln118_22_fu_1159_p2 = (add_ln118_21_fu_1153_p2 + D_37_reg_2245);
assign add_ln118_24_fu_1239_p2 = (or_ln118_11_reg_2329 + select_ln118_6_reg_2123);
assign add_ln118_25_fu_1228_p2 = (or_ln118_12_fu_1222_p3 + 32'd1518500249);
assign add_ln118_26_fu_1234_p2 = (add_ln118_25_fu_1228_p2 + C_37_reg_2257);
assign add_ln118_28_fu_1328_p2 = (or_ln118_13_fu_1322_p2 + select_ln118_7_reg_2128);
assign add_ln118_29_fu_1290_p2 = (or_ln118_14_fu_1284_p3 + 32'd1518500249);
assign add_ln118_2_fu_710_p2 = (add_ln118_1_reg_2089 + or_ln118_1_fu_702_p3);
assign add_ln118_30_fu_1296_p2 = (add_ln118_29_fu_1290_p2 + C_38_reg_2307);
assign add_ln118_32_fu_1441_p2 = (or_ln118_15_fu_1435_p2 + select_ln118_8_reg_2133);
assign add_ln118_33_fu_1378_p2 = (or_ln118_16_fu_1372_p3 + 32'd1518500249);
assign add_ln118_34_fu_1384_p2 = (add_ln118_33_fu_1378_p2 + C_39_reg_2323);
assign add_ln118_36_fu_1415_p2 = (or_ln118_17_fu_1409_p2 + select_ln118_9_fu_1389_p3);
assign add_ln118_37_fu_1489_p2 = (or_ln118_18_fu_1479_p3 + 32'd1518500249);
assign add_ln118_38_fu_1485_p2 = (add_ln118_36_reg_2451 + C_40_reg_2408);
assign add_ln118_40_fu_1573_p2 = (or_ln118_19_reg_2514 + select_ln118_10_reg_2138);
assign add_ln118_41_fu_1562_p2 = (C_41_reg_2440 + 32'd1518500249);
assign add_ln118_42_fu_1567_p2 = (or_ln118_20_fu_1556_p3 + add_ln118_41_fu_1562_p2);
assign add_ln118_44_fu_1673_p2 = (or_ln118_21_fu_1667_p2 + C_42_reg_2396);
assign add_ln118_45_fu_1635_p2 = (select_ln118_11_reg_2143 + 32'd1518500249);
assign add_ln118_46_fu_1640_p2 = (or_ln118_22_fu_1629_p3 + add_ln118_45_fu_1635_p2);
assign add_ln118_48_fu_1755_p2 = (or_ln118_23_fu_1749_p2 + C_43_reg_2508);
assign add_ln118_49_fu_1717_p2 = (select_ln118_12_reg_2148 + 32'd1518500249);
assign add_ln118_4_fu_835_p2 = (select_ln118_1_reg_2094 + or_ln118_2_fu_829_p2);
assign add_ln118_50_fu_1722_p2 = (or_ln118_24_fu_1711_p3 + add_ln118_49_fu_1717_p2);
assign add_ln118_52_fu_1830_p2 = (or_ln118_25_fu_1824_p2 + C_44_reg_2556);
assign add_ln118_53_fu_1799_p2 = (select_ln118_13_reg_2153 + 32'd1518500249);
assign add_ln118_54_fu_1804_p2 = (or_ln118_26_fu_1793_p3 + add_ln118_53_fu_1799_p2);
assign add_ln118_56_fu_1965_p2 = (or_ln118_27_reg_2640 + C_45_reg_2593);
assign add_ln118_57_fu_1954_p2 = (select_ln118_14_reg_2158 + 32'd1518500249);
assign add_ln118_58_fu_1959_p2 = (or_ln118_28_fu_1948_p3 + add_ln118_57_fu_1954_p2);
assign add_ln118_5_fu_797_p2 = (D_36_reg_2163 + 32'd1518500249);
assign add_ln118_60_fu_1623_p2 = (select_ln118_15_fu_1618_p3 + C_46_fu_1610_p3);
assign add_ln118_61_fu_1996_p2 = (or_ln118_30_fu_1988_p3 + 32'd1518500249);
assign add_ln118_62_fu_2007_p2 = (add_ln118_60_reg_2546 + or_ln118_29_reg_2645);
assign add_ln118_6_fu_802_p2 = (or_ln118_4_fu_791_p3 + add_ln118_5_fu_797_p2);
assign add_ln118_8_fu_947_p2 = (or_ln118_3_fu_941_p2 + select_ln118_2_reg_2099);
assign add_ln118_9_fu_916_p2 = (or_ln118_7_fu_910_p3 + 32'd1518500249);
assign add_ln118_fu_715_p2 = (or_ln118_fu_696_p2 + E_1_fu_144);
assign and_ln118_10_fu_1169_p2 = (C_38_reg_2307 & A_35_reg_2294);
assign and_ln118_11_fu_1173_p2 = (xor_ln118_5_fu_1164_p2 & C_37_reg_2257);
assign and_ln118_12_fu_1115_p2 = (temp_18_fu_1050_p2 & C_39_fu_1101_p3);
assign and_ln118_13_fu_1121_p2 = (xor_ln118_6_fu_1109_p2 & C_38_fu_1067_p3);
assign and_ln118_14_fu_1312_p2 = (temp_19_reg_2349 & C_40_fu_1301_p3);
assign and_ln118_15_fu_1317_p2 = (xor_ln118_7_fu_1307_p2 & C_39_reg_2323);
assign and_ln118_16_fu_1426_p2 = (temp_20_reg_2380 & C_41_reg_2440);
assign and_ln118_17_fu_1430_p2 = (xor_ln118_8_fu_1421_p2 & C_40_reg_2408);
assign and_ln118_18_fu_1399_p2 = (temp_21_reg_2414 & C_42_reg_2396);
assign and_ln118_19_fu_1403_p2 = (xor_ln118_9_fu_1394_p2 & C_41_fu_1366_p3);
assign and_ln118_1_fu_690_p2 = (xor_ln118_fu_678_p2 & E_27_fu_148);
assign and_ln118_20_fu_1540_p2 = (temp_22_reg_2456 & C_43_fu_1529_p3);
assign and_ln118_21_fu_1545_p2 = (xor_ln118_10_fu_1535_p2 & C_42_reg_2396);
assign and_ln118_22_fu_1657_p2 = (temp_23_reg_2482 & C_44_fu_1646_p3);
assign and_ln118_23_fu_1662_p2 = (xor_ln118_11_fu_1652_p2 & C_43_reg_2508);
assign and_ln118_24_fu_1739_p2 = (temp_24_reg_2524 & C_45_fu_1728_p3);
assign and_ln118_25_fu_1744_p2 = (xor_ln118_12_fu_1734_p2 & C_44_reg_2556);
assign and_ln118_26_fu_1815_p2 = (temp_25_reg_2562 & C_46_reg_2540);
assign and_ln118_27_fu_1819_p2 = (xor_ln118_13_fu_1810_p2 & C_45_reg_2593);
assign and_ln118_28_fu_1865_p2 = (temp_26_reg_2599 & C_47_fu_1840_p3);
assign and_ln118_29_fu_1870_p2 = (xor_ln118_14_fu_1860_p2 & C_46_reg_2540);
assign and_ln118_2_fu_819_p2 = (C_36_fu_808_p3 & A_34_reg_2174);
assign and_ln118_30_fu_1893_p2 = (temp_27_fu_1835_p2 & C_48_fu_1881_p3);
assign and_ln118_31_fu_1899_p2 = (xor_ln118_15_fu_1887_p2 & C_47_fu_1840_p3);
assign and_ln118_3_fu_824_p2 = (xor_ln118_1_fu_814_p2 & C_35_reg_2168);
assign and_ln118_4_fu_932_p2 = (temp_reg_2180 & E_46_reg_2206);
assign and_ln118_5_fu_936_p2 = (xor_ln118_2_fu_927_p2 & C_36_reg_2229);
assign and_ln118_6_fu_871_p2 = (temp_17_fu_840_p2 & D_37_fu_859_p3);
assign and_ln118_7_fu_877_p2 = (xor_ln118_3_fu_865_p2 & E_46_reg_2206);
assign and_ln118_8_fu_1017_p2 = (C_37_reg_2257 & B_43_reg_2270);
assign and_ln118_9_fu_1021_p2 = (xor_ln118_4_fu_1012_p2 & D_37_reg_2245);
assign and_ln118_fu_684_p2 = (E_28_fu_152 & B_1_fu_156);
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
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_618_p3 = ap_sig_allocacmp_i[5'd4];
assign icmp_ln116_fu_526_p2 = ((or_ln_fu_516_p4 == 5'd20) ? 1'b1 : 1'b0);
assign icmp_ln118_fu_458_p2 = ((ap_sig_allocacmp_i == 5'd16) ? 1'b1 : 1'b0);
assign lshr_ln118_10_fu_1092_p4 = {{A_35_reg_2294[31:2]}};
assign lshr_ln118_16_fu_1266_p4 = {{temp_20_fu_1243_p2[31:2]}};
assign lshr_ln118_24_fu_1600_p4 = {{temp_24_fu_1577_p2[31:2]}};
assign lshr_ln118_29_fu_1978_p4 = {{temp_28_fu_1969_p2[31:27]}};
assign lshr_ln118_30_fu_1915_p4 = {{temp_27_fu_1835_p2[31:2]}};
assign lshr_ln118_3_fu_759_p4 = {{B_25_fu_160[31:2]}};
assign lshr_ln118_7_fu_892_p4 = {{temp_17_fu_840_p2[31:2]}};
assign lshr_ln118_8_fu_1002_p4 = {{A_35_fu_992_p2[31:27]}};
assign lshr_ln118_9_fu_1058_p4 = {{B_43_reg_2270[31:2]}};
assign lshr_ln_fu_668_p4 = {{B_25_fu_160[31:27]}};
assign or_ln118_10_fu_1147_p3 = {{trunc_ln118_10_reg_2313}, {lshr_ln118_s_reg_2318}};
assign or_ln118_11_fu_1127_p2 = (and_ln118_13_fu_1121_p2 | and_ln118_12_fu_1115_p2);
assign or_ln118_12_fu_1222_p3 = {{trunc_ln118_12_reg_2355}, {lshr_ln118_11_reg_2360}};
assign or_ln118_13_fu_1322_p2 = (and_ln118_15_fu_1317_p2 | and_ln118_14_fu_1312_p2);
assign or_ln118_14_fu_1284_p3 = {{trunc_ln118_14_reg_2386}, {lshr_ln118_13_reg_2391}};
assign or_ln118_15_fu_1435_p2 = (and_ln118_17_fu_1430_p2 | and_ln118_16_fu_1426_p2);
assign or_ln118_16_fu_1372_p3 = {{trunc_ln118_16_reg_2420}, {lshr_ln118_15_reg_2425}};
assign or_ln118_17_fu_1409_p2 = (and_ln118_19_fu_1403_p2 | and_ln118_18_fu_1399_p2);
assign or_ln118_18_fu_1479_p3 = {{trunc_ln118_18_reg_2462}, {lshr_ln118_17_reg_2467}};
assign or_ln118_19_fu_1550_p2 = (and_ln118_21_fu_1545_p2 | and_ln118_20_fu_1540_p2);
assign or_ln118_1_fu_702_p3 = {{trunc_ln118_fu_664_p1}, {lshr_ln_fu_668_p4}};
assign or_ln118_20_fu_1556_p3 = {{trunc_ln118_20_reg_2488}, {lshr_ln118_19_reg_2493}};
assign or_ln118_21_fu_1667_p2 = (and_ln118_23_fu_1662_p2 | and_ln118_22_fu_1657_p2);
assign or_ln118_22_fu_1629_p3 = {{trunc_ln118_22_reg_2530}, {lshr_ln118_21_reg_2535}};
assign or_ln118_23_fu_1749_p2 = (and_ln118_25_fu_1744_p2 | and_ln118_24_fu_1739_p2);
assign or_ln118_24_fu_1711_p3 = {{trunc_ln118_24_reg_2568}, {lshr_ln118_23_reg_2573}};
assign or_ln118_25_fu_1824_p2 = (and_ln118_27_fu_1819_p2 | and_ln118_26_fu_1815_p2);
assign or_ln118_26_fu_1793_p3 = {{trunc_ln118_26_reg_2605}, {lshr_ln118_25_reg_2610}};
assign or_ln118_27_fu_1875_p2 = (and_ln118_29_fu_1870_p2 | and_ln118_28_fu_1865_p2);
assign or_ln118_28_fu_1948_p3 = {{trunc_ln118_28_reg_2630}, {lshr_ln118_27_reg_2635}};
assign or_ln118_29_fu_1905_p2 = (and_ln118_31_fu_1899_p2 | and_ln118_30_fu_1893_p2);
assign or_ln118_2_fu_829_p2 = (and_ln118_3_fu_824_p2 | and_ln118_2_fu_819_p2);
assign or_ln118_30_fu_1988_p3 = {{trunc_ln118_30_fu_1974_p1}, {lshr_ln118_29_fu_1978_p4}};
assign or_ln118_3_fu_941_p2 = (and_ln118_5_fu_936_p2 | and_ln118_4_fu_932_p2);
assign or_ln118_4_fu_791_p3 = {{trunc_ln118_2_reg_2196}, {lshr_ln118_2_reg_2201}};
assign or_ln118_5_fu_882_p2 = (and_ln118_7_fu_877_p2 | and_ln118_6_fu_871_p2);
assign or_ln118_6_fu_1026_p2 = (and_ln118_9_fu_1021_p2 | and_ln118_8_fu_1017_p2);
assign or_ln118_7_fu_910_p3 = {{trunc_ln118_4_reg_2235}, {lshr_ln118_4_reg_2240}};
assign or_ln118_8_fu_1032_p3 = {{trunc_ln118_8_fu_998_p1}, {lshr_ln118_8_fu_1002_p4}};
assign or_ln118_9_fu_1178_p2 = (and_ln118_11_fu_1173_p2 | and_ln118_10_fu_1169_p2);
assign or_ln118_fu_696_p2 = (and_ln118_fu_684_p2 | and_ln118_1_fu_690_p2);
assign or_ln118_s_fu_971_p3 = {{trunc_ln118_6_reg_2279}, {lshr_ln118_6_reg_2284}};
assign or_ln_fu_516_p4 = {{{tmp_s_fu_502_p4}, {1'd1}}, {trunc_ln116_fu_512_p1}};
assign select_ln118_10_fu_578_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_42_reload : W_10);
assign select_ln118_11_fu_586_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_43_reload : W_11);
assign select_ln118_12_fu_594_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_44_reload : W_12);
assign select_ln118_13_fu_602_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_45_reload : W_13);
assign select_ln118_14_fu_610_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_46_reload : W_14);
assign select_ln118_15_fu_1618_p3 = ((icmp_ln118_reg_2083[0:0] == 1'b1) ? W_47_reload : W_15);
assign select_ln118_1_fu_478_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_33_reload : W_1);
assign select_ln118_2_fu_486_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_34_reload : W_2);
assign select_ln118_3_fu_494_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_35_reload : W_3);
assign select_ln118_4_fu_532_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_36_reload : W_4);
assign select_ln118_5_fu_546_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_37_reload : W_5);
assign select_ln118_6_fu_554_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_38_reload : W_6);
assign select_ln118_7_fu_562_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_39_reload : W_7);
assign select_ln118_8_fu_570_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_40_reload : W_8);
assign select_ln118_9_fu_1389_p3 = ((icmp_ln118_reg_2083[0:0] == 1'b1) ? W_41_reload : W_9);
assign select_ln118_fu_464_p3 = ((icmp_ln118_fu_458_p2[0:0] == 1'b1) ? W_32_reload : W);
assign temp_17_fu_840_p2 = (add_ln118_6_reg_2224 + add_ln118_4_fu_835_p2);
assign temp_18_fu_1050_p2 = (add_ln118_16_reg_2302 + add_ln118_18_fu_1046_p2);
assign temp_19_fu_1189_p2 = (add_ln118_22_reg_2344 + add_ln118_20_fu_1184_p2);
assign temp_20_fu_1243_p2 = (add_ln118_26_reg_2375 + add_ln118_24_fu_1239_p2);
assign temp_21_fu_1333_p2 = (add_ln118_30_reg_2403 + add_ln118_28_fu_1328_p2);
assign temp_22_fu_1446_p2 = (add_ln118_34_reg_2446 + add_ln118_32_fu_1441_p2);
assign temp_23_fu_1495_p2 = (add_ln118_37_fu_1489_p2 + add_ln118_38_fu_1485_p2);
assign temp_24_fu_1577_p2 = (add_ln118_42_reg_2519 + add_ln118_40_fu_1573_p2);
assign temp_25_fu_1678_p2 = (add_ln118_46_reg_2551 + add_ln118_44_fu_1673_p2);
assign temp_26_fu_1760_p2 = (add_ln118_50_reg_2588 + add_ln118_48_fu_1755_p2);
assign temp_27_fu_1835_p2 = (add_ln118_54_reg_2625 + add_ln118_52_fu_1830_p2);
assign temp_28_fu_1969_p2 = (add_ln118_58_reg_2650 + add_ln118_56_fu_1965_p2);
assign temp_29_fu_2011_p2 = (add_ln118_61_reg_2655 + add_ln118_62_fu_2007_p2);
assign temp_fu_721_p2 = (add_ln118_fu_715_p2 + add_ln118_2_fu_710_p2);
assign tmp_s_fu_502_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign trunc_ln116_1_fu_632_p1 = ap_sig_allocacmp_i[3:0];
assign trunc_ln116_fu_512_p1 = ap_sig_allocacmp_i[1:0];
assign trunc_ln118_10_fu_1075_p1 = temp_18_fu_1050_p2[26:0];
assign trunc_ln118_11_fu_1089_p1 = A_35_reg_2294[1:0];
assign trunc_ln118_12_fu_1194_p1 = temp_19_fu_1189_p2[26:0];
assign trunc_ln118_13_fu_1133_p1 = temp_18_fu_1050_p2[1:0];
assign trunc_ln118_14_fu_1248_p1 = temp_20_fu_1243_p2[26:0];
assign trunc_ln118_15_fu_1208_p1 = temp_19_fu_1189_p2[1:0];
assign trunc_ln118_16_fu_1338_p1 = temp_21_fu_1333_p2[26:0];
assign trunc_ln118_17_fu_1262_p1 = temp_20_fu_1243_p2[1:0];
assign trunc_ln118_18_fu_1451_p1 = temp_22_fu_1446_p2[26:0];
assign trunc_ln118_19_fu_1352_p1 = temp_21_fu_1333_p2[1:0];
assign trunc_ln118_1_fu_727_p1 = B_1_fu_156[1:0];
assign trunc_ln118_20_fu_1501_p1 = temp_23_fu_1495_p2[26:0];
assign trunc_ln118_21_fu_1465_p1 = temp_22_fu_1446_p2[1:0];
assign trunc_ln118_22_fu_1582_p1 = temp_24_fu_1577_p2[26:0];
assign trunc_ln118_23_fu_1515_p1 = temp_23_fu_1495_p2[1:0];
assign trunc_ln118_24_fu_1683_p1 = temp_25_fu_1678_p2[26:0];
assign trunc_ln118_25_fu_1596_p1 = temp_24_fu_1577_p2[1:0];
assign trunc_ln118_26_fu_1765_p1 = temp_26_fu_1760_p2[26:0];
assign trunc_ln118_27_fu_1697_p1 = temp_25_fu_1678_p2[1:0];
assign trunc_ln118_28_fu_1846_p1 = temp_27_fu_1835_p2[26:0];
assign trunc_ln118_29_fu_1779_p1 = temp_26_fu_1760_p2[1:0];
assign trunc_ln118_2_fu_741_p1 = temp_fu_721_p2[26:0];
assign trunc_ln118_30_fu_1974_p1 = temp_28_fu_1969_p2[26:0];
assign trunc_ln118_31_fu_1911_p1 = temp_27_fu_1835_p2[1:0];
assign trunc_ln118_3_fu_755_p1 = B_25_fu_160[1:0];
assign trunc_ln118_4_fu_845_p1 = temp_17_fu_840_p2[26:0];
assign trunc_ln118_5_fu_777_p1 = temp_fu_721_p2[1:0];
assign trunc_ln118_6_fu_957_p1 = B_43_fu_952_p2[26:0];
assign trunc_ln118_7_fu_888_p1 = temp_17_fu_840_p2[1:0];
assign trunc_ln118_8_fu_998_p1 = A_35_fu_992_p2[26:0];
assign trunc_ln118_9_fu_1055_p1 = B_43_reg_2270[1:0];
assign trunc_ln118_fu_664_p1 = B_25_fu_160[26:0];
assign xor_ln116_fu_626_p2 = (bit_sel_fu_618_p3 ^ 1'd1);
assign xor_ln118_10_fu_1535_p2 = (temp_22_reg_2456 ^ 32'd4294967295);
assign xor_ln118_11_fu_1652_p2 = (temp_23_reg_2482 ^ 32'd4294967295);
assign xor_ln118_12_fu_1734_p2 = (temp_24_reg_2524 ^ 32'd4294967295);
assign xor_ln118_13_fu_1810_p2 = (temp_25_reg_2562 ^ 32'd4294967295);
assign xor_ln118_14_fu_1860_p2 = (temp_26_reg_2599 ^ 32'd4294967295);
assign xor_ln118_15_fu_1887_p2 = (temp_27_fu_1835_p2 ^ 32'd4294967295);
assign xor_ln118_1_fu_814_p2 = (32'd4294967295 ^ A_34_reg_2174);
assign xor_ln118_2_fu_927_p2 = (temp_reg_2180 ^ 32'd4294967295);
assign xor_ln118_3_fu_865_p2 = (temp_17_fu_840_p2 ^ 32'd4294967295);
assign xor_ln118_4_fu_1012_p2 = (32'd4294967295 ^ B_43_reg_2270);
assign xor_ln118_5_fu_1164_p2 = (32'd4294967295 ^ A_35_reg_2294);
assign xor_ln118_6_fu_1109_p2 = (temp_18_fu_1050_p2 ^ 32'd4294967295);
assign xor_ln118_7_fu_1307_p2 = (temp_19_reg_2349 ^ 32'd4294967295);
assign xor_ln118_8_fu_1421_p2 = (temp_20_reg_2380 ^ 32'd4294967295);
assign xor_ln118_9_fu_1394_p2 = (temp_21_reg_2414 ^ 32'd4294967295);
assign xor_ln118_fu_678_p2 = (32'd4294967295 ^ B_1_fu_156);
assign xor_ln_fu_636_p3 = {{xor_ln116_fu_626_p2}, {trunc_ln116_1_fu_632_p1}};
endmodule 