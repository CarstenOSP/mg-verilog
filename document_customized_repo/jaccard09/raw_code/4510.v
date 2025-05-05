module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_32_reload,zext_ln104,W_33_reload,zext_ln104_1,W_34_reload,zext_ln104_2,W_35_reload,zext_ln104_3,W_36_reload,zext_ln104_4,W_37_reload,zext_ln104_5,W_38_reload,zext_ln104_6,W_39_reload,zext_ln104_7,W_40_reload,zext_ln104_8,W_41_reload,zext_ln104_9,W_42_reload,zext_ln104_10,W_43_reload,zext_ln104_11,W_44_reload,zext_ln104_12,W_45_reload,zext_ln104_13,W_46_reload,zext_ln104_14,W_47_reload,zext_ln100,E_71_out,E_71_out_ap_vld,B_71_out,B_71_out_ap_vld,D_75_out,D_75_out_ap_vld,A_75_out,A_75_out_ap_vld,C_110_out,C_110_out_ap_vld); 
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
input  [30:0] zext_ln104;
input  [31:0] W_33_reload;
input  [30:0] zext_ln104_1;
input  [31:0] W_34_reload;
input  [30:0] zext_ln104_2;
input  [31:0] W_35_reload;
input  [30:0] zext_ln104_3;
input  [31:0] W_36_reload;
input  [30:0] zext_ln104_4;
input  [31:0] W_37_reload;
input  [30:0] zext_ln104_5;
input  [31:0] W_38_reload;
input  [30:0] zext_ln104_6;
input  [31:0] W_39_reload;
input  [30:0] zext_ln104_7;
input  [31:0] W_40_reload;
input  [30:0] zext_ln104_8;
input  [31:0] W_41_reload;
input  [30:0] zext_ln104_9;
input  [31:0] W_42_reload;
input  [30:0] zext_ln104_10;
input  [31:0] W_43_reload;
input  [30:0] zext_ln104_11;
input  [31:0] W_44_reload;
input  [30:0] zext_ln104_12;
input  [31:0] W_45_reload;
input  [30:0] zext_ln104_13;
input  [31:0] W_46_reload;
input  [30:0] zext_ln104_14;
input  [31:0] W_47_reload;
input  [30:0] zext_ln100;
output  [31:0] E_71_out;
output   E_71_out_ap_vld;
output  [31:0] B_71_out;
output   B_71_out_ap_vld;
output  [31:0] D_75_out;
output   D_75_out_ap_vld;
output  [31:0] A_75_out;
output   A_75_out_ap_vld;
output  [31:0] C_110_out;
output   C_110_out_ap_vld;
reg ap_idle;
reg E_71_out_ap_vld;
reg B_71_out_ap_vld;
reg D_75_out_ap_vld;
reg A_75_out_ap_vld;
reg C_110_out_ap_vld;
(* fsm_encoding = "none" *) reg   [27:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln116_reg_2175;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] zext_ln100_cast_fu_427_p1;
reg   [31:0] zext_ln100_cast_reg_2139;
wire   [31:0] zext_ln104_9_cast_fu_451_p1;
reg   [31:0] zext_ln104_9_cast_reg_2144;
wire   [0:0] icmp_ln118_fu_524_p2;
reg   [0:0] icmp_ln118_reg_2149;
wire   [31:0] add_ln118_1_fu_538_p2;
reg   [31:0] add_ln118_1_reg_2155;
wire   [31:0] select_ln118_1_fu_544_p3;
reg   [31:0] select_ln118_1_reg_2160;
wire   [31:0] select_ln118_2_fu_552_p3;
reg   [31:0] select_ln118_2_reg_2165;
wire   [31:0] select_ln118_3_fu_560_p3;
reg   [31:0] select_ln118_3_reg_2170;
wire   [0:0] icmp_ln116_fu_592_p2;
wire   [31:0] add_ln118_17_fu_606_p2;
reg   [31:0] add_ln118_17_reg_2179;
wire   [31:0] select_ln118_5_fu_612_p3;
reg   [31:0] select_ln118_5_reg_2184;
wire   [31:0] select_ln118_6_fu_620_p3;
reg   [31:0] select_ln118_6_reg_2189;
wire   [31:0] select_ln118_7_fu_628_p3;
reg   [31:0] select_ln118_7_reg_2194;
wire   [31:0] select_ln118_8_fu_636_p3;
reg   [31:0] select_ln118_8_reg_2199;
wire   [31:0] select_ln118_10_fu_644_p3;
reg   [31:0] select_ln118_10_reg_2204;
wire   [31:0] select_ln118_11_fu_652_p3;
reg   [31:0] select_ln118_11_reg_2209;
wire   [31:0] select_ln118_12_fu_660_p3;
reg   [31:0] select_ln118_12_reg_2214;
wire   [31:0] select_ln118_13_fu_668_p3;
reg   [31:0] select_ln118_13_reg_2219;
wire   [31:0] select_ln118_14_fu_676_p3;
reg   [31:0] select_ln118_14_reg_2224;
reg   [31:0] D_48_reg_2229;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_62_reg_2234;
reg   [31:0] A_48_reg_2240;
wire   [31:0] temp_fu_787_p2;
reg   [31:0] temp_reg_2246;
wire   [1:0] trunc_ln118_1_fu_793_p1;
reg   [1:0] trunc_ln118_1_reg_2252;
reg   [29:0] lshr_ln118_1_reg_2257;
wire   [26:0] trunc_ln118_2_fu_807_p1;
reg   [26:0] trunc_ln118_2_reg_2262;
reg   [4:0] lshr_ln118_2_reg_2267;
wire   [31:0] E_78_fu_835_p3;
reg   [31:0] E_78_reg_2272;
wire   [1:0] trunc_ln118_5_fu_843_p1;
reg   [1:0] trunc_ln118_5_reg_2280;
reg   [29:0] lshr_ln118_5_reg_2285;
wire   [31:0] add_ln118_6_fu_868_p2;
reg   [31:0] add_ln118_6_reg_2290;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_63_fu_874_p3;
reg   [31:0] C_63_reg_2295;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [26:0] trunc_ln118_4_fu_911_p1;
reg   [26:0] trunc_ln118_4_reg_2301;
reg   [4:0] lshr_ln118_4_reg_2306;
wire   [31:0] D_49_fu_925_p3;
reg   [31:0] D_49_reg_2311;
wire   [31:0] or_ln118_5_fu_948_p2;
reg   [31:0] or_ln118_5_reg_2318;
wire   [31:0] C_64_fu_968_p3;
reg   [31:0] C_64_reg_2323;
wire   [31:0] add_ln118_10_fu_988_p2;
reg   [31:0] add_ln118_10_reg_2331;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] B_74_fu_1018_p2;
reg   [31:0] B_74_reg_2336;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [26:0] trunc_ln118_6_fu_1023_p1;
reg   [26:0] trunc_ln118_6_reg_2345;
reg   [4:0] lshr_ln118_6_reg_2350;
wire   [31:0] add_ln118_14_fu_1049_p2;
reg   [31:0] add_ln118_14_reg_2355;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] A_49_fu_1058_p2;
reg   [31:0] A_49_reg_2360;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] add_ln118_16_fu_1106_p2;
reg   [31:0] add_ln118_16_reg_2368;
wire   [31:0] C_65_fu_1133_p3;
reg   [31:0] C_65_reg_2373;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [26:0] trunc_ln118_10_fu_1141_p1;
reg   [26:0] trunc_ln118_10_reg_2379;
reg   [4:0] lshr_ln118_s_reg_2384;
wire   [31:0] C_66_fu_1167_p3;
reg   [31:0] C_66_reg_2389;
wire   [31:0] or_ln118_11_fu_1193_p2;
reg   [31:0] or_ln118_11_reg_2395;
wire   [1:0] trunc_ln118_13_fu_1199_p1;
reg   [1:0] trunc_ln118_13_reg_2400;
reg   [29:0] lshr_ln118_12_reg_2405;
wire   [31:0] add_ln118_22_fu_1225_p2;
reg   [31:0] add_ln118_22_reg_2410;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] temp_47_fu_1255_p2;
reg   [31:0] temp_47_reg_2415;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [26:0] trunc_ln118_12_fu_1260_p1;
reg   [26:0] trunc_ln118_12_reg_2421;
reg   [4:0] lshr_ln118_11_reg_2426;
wire   [1:0] trunc_ln118_15_fu_1274_p1;
reg   [1:0] trunc_ln118_15_reg_2431;
reg   [29:0] lshr_ln118_14_reg_2436;
wire   [31:0] add_ln118_26_fu_1300_p2;
reg   [31:0] add_ln118_26_reg_2441;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_48_fu_1309_p2;
reg   [31:0] temp_48_reg_2446;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [26:0] trunc_ln118_14_fu_1314_p1;
reg   [26:0] trunc_ln118_14_reg_2452;
reg   [4:0] lshr_ln118_13_reg_2457;
wire   [31:0] C_69_fu_1342_p3;
reg   [31:0] C_69_reg_2462;
wire   [31:0] add_ln118_30_fu_1362_p2;
reg   [31:0] add_ln118_30_reg_2469;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [31:0] C_67_fu_1367_p3;
reg   [31:0] C_67_reg_2474;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] temp_49_fu_1399_p2;
reg   [31:0] temp_49_reg_2480;
wire   [26:0] trunc_ln118_16_fu_1404_p1;
reg   [26:0] trunc_ln118_16_reg_2486;
reg   [4:0] lshr_ln118_15_reg_2491;
wire   [1:0] trunc_ln118_19_fu_1418_p1;
reg   [1:0] trunc_ln118_19_reg_2496;
reg   [29:0] lshr_ln118_18_reg_2501;
wire   [31:0] C_68_fu_1432_p3;
reg   [31:0] C_68_reg_2506;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [31:0] add_ln118_34_fu_1450_p2;
reg   [31:0] add_ln118_34_reg_2512;
wire   [31:0] add_ln118_36_fu_1481_p2;
reg   [31:0] add_ln118_36_reg_2517;
wire   [31:0] temp_50_fu_1512_p2;
reg   [31:0] temp_50_reg_2522;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [26:0] trunc_ln118_18_fu_1517_p1;
reg   [26:0] trunc_ln118_18_reg_2528;
reg   [4:0] lshr_ln118_17_reg_2533;
wire   [1:0] trunc_ln118_21_fu_1531_p1;
reg   [1:0] trunc_ln118_21_reg_2538;
reg   [29:0] lshr_ln118_20_reg_2543;
wire   [31:0] temp_51_fu_1561_p2;
reg   [31:0] temp_51_reg_2548;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [26:0] trunc_ln118_20_fu_1567_p1;
reg   [26:0] trunc_ln118_20_reg_2554;
reg   [4:0] lshr_ln118_19_reg_2559;
wire   [1:0] trunc_ln118_23_fu_1581_p1;
reg   [1:0] trunc_ln118_23_reg_2564;
reg   [29:0] lshr_ln118_22_reg_2569;
wire   [31:0] C_70_fu_1595_p3;
reg   [31:0] C_70_reg_2574;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [31:0] or_ln118_19_fu_1616_p2;
reg   [31:0] or_ln118_19_reg_2580;
wire   [31:0] add_ln118_42_fu_1633_p2;
reg   [31:0] add_ln118_42_reg_2585;
wire   [31:0] temp_52_fu_1643_p2;
reg   [31:0] temp_52_reg_2590;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [26:0] trunc_ln118_22_fu_1648_p1;
reg   [26:0] trunc_ln118_22_reg_2596;
reg   [4:0] lshr_ln118_21_reg_2601;
wire   [31:0] C_73_fu_1676_p3;
reg   [31:0] C_73_reg_2606;
wire   [31:0] add_ln118_60_fu_1689_p2;
reg   [31:0] add_ln118_60_reg_2612;
wire   [31:0] add_ln118_46_fu_1706_p2;
reg   [31:0] add_ln118_46_reg_2617;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [31:0] C_71_fu_1712_p3;
reg   [31:0] C_71_reg_2622;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [31:0] temp_53_fu_1744_p2;
reg   [31:0] temp_53_reg_2628;
wire   [26:0] trunc_ln118_24_fu_1749_p1;
reg   [26:0] trunc_ln118_24_reg_2634;
reg   [4:0] lshr_ln118_23_reg_2639;
wire   [1:0] trunc_ln118_27_fu_1763_p1;
reg   [1:0] trunc_ln118_27_reg_2644;
reg   [29:0] lshr_ln118_26_reg_2649;
wire   [31:0] add_ln118_50_fu_1788_p2;
reg   [31:0] add_ln118_50_reg_2654;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [31:0] C_72_fu_1794_p3;
reg   [31:0] C_72_reg_2659;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [31:0] temp_54_fu_1826_p2;
reg   [31:0] temp_54_reg_2665;
wire   [26:0] trunc_ln118_26_fu_1831_p1;
reg   [26:0] trunc_ln118_26_reg_2671;
reg   [4:0] lshr_ln118_25_reg_2676;
wire   [1:0] trunc_ln118_29_fu_1845_p1;
reg   [1:0] trunc_ln118_29_reg_2681;
reg   [29:0] lshr_ln118_28_reg_2686;
wire   [31:0] add_ln118_54_fu_1870_p2;
reg   [31:0] add_ln118_54_reg_2691;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [26:0] trunc_ln118_28_fu_1912_p1;
reg   [26:0] trunc_ln118_28_reg_2696;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [4:0] lshr_ln118_27_reg_2701;
wire   [31:0] or_ln118_27_fu_1941_p2;
reg   [31:0] or_ln118_27_reg_2706;
wire   [31:0] or_ln118_29_fu_1971_p2;
reg   [31:0] or_ln118_29_reg_2711;
wire   [31:0] add_ln118_58_fu_2025_p2;
reg   [31:0] add_ln118_58_reg_2716;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [31:0] add_ln118_61_fu_2062_p2;
reg   [31:0] add_ln118_61_reg_2721;
wire    ap_block_pp0_stage27_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [31:0] E_1_fu_146;
wire   [31:0] C_74_fu_1906_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_59_fu_150;
wire   [31:0] C_75_fu_1947_p3;
reg   [31:0] E_60_fu_154;
wire   [31:0] C_61_fu_1991_p3;
reg   [31:0] B_1_fu_158;
wire   [31:0] temp_56_fu_2035_p2;
reg   [31:0] B_56_fu_162;
wire   [31:0] temp_57_fu_2077_p2;
reg   [4:0] i_1_fu_166;
wire   [4:0] xor_ln_fu_702_p3;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage7_01001;
wire   [31:0] zext_ln104_cast_fu_487_p1;
wire   [31:0] select_ln118_fu_530_p3;
wire   [31:0] zext_ln104_1_cast_fu_483_p1;
wire   [31:0] zext_ln104_2_cast_fu_479_p1;
wire   [31:0] zext_ln104_3_cast_fu_475_p1;
wire   [1:0] tmp_s_fu_568_p4;
wire   [1:0] trunc_ln116_fu_578_p1;
wire   [4:0] or_ln_fu_582_p4;
wire   [31:0] zext_ln104_4_cast_fu_471_p1;
wire   [31:0] select_ln118_4_fu_598_p3;
wire   [31:0] zext_ln104_5_cast_fu_467_p1;
wire   [31:0] zext_ln104_6_cast_fu_463_p1;
wire   [31:0] zext_ln104_7_cast_fu_459_p1;
wire   [31:0] zext_ln104_8_cast_fu_455_p1;
wire   [31:0] zext_ln104_10_cast_fu_447_p1;
wire   [31:0] zext_ln104_11_cast_fu_443_p1;
wire   [31:0] zext_ln104_12_cast_fu_439_p1;
wire   [31:0] zext_ln104_13_cast_fu_435_p1;
wire   [31:0] zext_ln104_14_cast_fu_431_p1;
wire   [0:0] bit_sel_fu_684_p3;
wire   [0:0] xor_ln116_fu_692_p2;
wire   [3:0] trunc_ln116_1_fu_698_p1;
wire   [31:0] xor_ln118_fu_744_p2;
wire   [31:0] and_ln118_1_fu_756_p2;
wire   [31:0] and_ln118_fu_750_p2;
wire   [26:0] trunc_ln118_fu_730_p1;
wire   [4:0] lshr_ln_fu_734_p4;
wire   [31:0] or_ln118_1_fu_768_p3;
wire   [31:0] or_ln118_fu_762_p2;
wire   [31:0] add_ln118_fu_781_p2;
wire   [31:0] add_ln118_2_fu_776_p2;
wire   [1:0] trunc_ln118_3_fu_821_p1;
wire   [29:0] lshr_ln118_3_fu_825_p4;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln118_4_fu_857_p3;
wire   [31:0] add_ln118_5_fu_863_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] xor_ln118_1_fu_880_p2;
wire   [31:0] and_ln118_2_fu_885_p2;
wire   [31:0] and_ln118_3_fu_890_p2;
wire   [31:0] or_ln118_2_fu_895_p2;
wire   [31:0] add_ln118_4_fu_901_p2;
wire   [31:0] temp_45_fu_906_p2;
wire   [31:0] xor_ln118_3_fu_931_p2;
wire   [31:0] and_ln118_6_fu_937_p2;
wire   [31:0] and_ln118_7_fu_943_p2;
wire   [1:0] trunc_ln118_7_fu_954_p1;
wire   [29:0] lshr_ln118_7_fu_958_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln118_7_fu_976_p3;
wire   [31:0] add_ln118_9_fu_982_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] xor_ln118_2_fu_993_p2;
wire   [31:0] and_ln118_4_fu_998_p2;
wire   [31:0] and_ln118_5_fu_1002_p2;
wire   [31:0] or_ln118_3_fu_1007_p2;
wire   [31:0] add_ln118_8_fu_1013_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln118_s_fu_1037_p3;
wire   [31:0] add_ln118_13_fu_1043_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln118_12_fu_1054_p2;
wire   [31:0] xor_ln118_4_fu_1078_p2;
wire   [31:0] and_ln118_8_fu_1083_p2;
wire   [31:0] and_ln118_9_fu_1087_p2;
wire   [26:0] trunc_ln118_8_fu_1064_p1;
wire   [4:0] lshr_ln118_8_fu_1068_p4;
wire   [31:0] or_ln118_8_fu_1098_p3;
wire   [31:0] or_ln118_6_fu_1092_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln118_18_fu_1112_p2;
wire   [1:0] trunc_ln118_9_fu_1121_p1;
wire   [29:0] lshr_ln118_9_fu_1124_p4;
wire   [31:0] temp_46_fu_1116_p2;
wire   [1:0] trunc_ln118_11_fu_1155_p1;
wire   [29:0] lshr_ln118_10_fu_1158_p4;
wire   [31:0] xor_ln118_6_fu_1175_p2;
wire   [31:0] and_ln118_12_fu_1181_p2;
wire   [31:0] and_ln118_13_fu_1187_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] or_ln118_10_fu_1213_p3;
wire   [31:0] add_ln118_21_fu_1219_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] xor_ln118_5_fu_1230_p2;
wire   [31:0] and_ln118_10_fu_1235_p2;
wire   [31:0] and_ln118_11_fu_1239_p2;
wire   [31:0] or_ln118_9_fu_1244_p2;
wire   [31:0] add_ln118_20_fu_1250_p2;
wire    ap_block_pp0_stage11;
wire   [31:0] or_ln118_12_fu_1288_p3;
wire   [31:0] add_ln118_25_fu_1294_p2;
wire    ap_block_pp0_stage12;
wire   [31:0] add_ln118_24_fu_1305_p2;
wire   [1:0] trunc_ln118_17_fu_1328_p1;
wire   [29:0] lshr_ln118_16_fu_1332_p4;
wire    ap_block_pp0_stage13;
wire   [31:0] or_ln118_14_fu_1350_p3;
wire   [31:0] add_ln118_29_fu_1356_p2;
wire    ap_block_pp0_stage14;
wire   [31:0] xor_ln118_7_fu_1373_p2;
wire   [31:0] and_ln118_14_fu_1378_p2;
wire   [31:0] and_ln118_15_fu_1383_p2;
wire   [31:0] or_ln118_13_fu_1388_p2;
wire   [31:0] add_ln118_28_fu_1394_p2;
wire    ap_block_pp0_stage15;
wire   [31:0] or_ln118_16_fu_1438_p3;
wire   [31:0] add_ln118_33_fu_1444_p2;
wire   [31:0] xor_ln118_9_fu_1460_p2;
wire   [31:0] and_ln118_18_fu_1465_p2;
wire   [31:0] and_ln118_19_fu_1469_p2;
wire   [31:0] or_ln118_17_fu_1475_p2;
wire   [31:0] select_ln118_9_fu_1455_p3;
wire    ap_block_pp0_stage16;
wire   [31:0] xor_ln118_8_fu_1487_p2;
wire   [31:0] and_ln118_16_fu_1492_p2;
wire   [31:0] and_ln118_17_fu_1496_p2;
wire   [31:0] or_ln118_15_fu_1501_p2;
wire   [31:0] add_ln118_32_fu_1507_p2;
wire    ap_block_pp0_stage17;
wire   [31:0] or_ln118_18_fu_1545_p3;
wire   [31:0] add_ln118_37_fu_1555_p2;
wire   [31:0] add_ln118_38_fu_1551_p2;
wire    ap_block_pp0_stage18;
wire   [31:0] xor_ln118_10_fu_1601_p2;
wire   [31:0] and_ln118_20_fu_1606_p2;
wire   [31:0] and_ln118_21_fu_1611_p2;
wire   [31:0] or_ln118_20_fu_1622_p3;
wire   [31:0] add_ln118_41_fu_1628_p2;
wire    ap_block_pp0_stage19;
wire   [31:0] add_ln118_40_fu_1639_p2;
wire   [1:0] trunc_ln118_25_fu_1662_p1;
wire   [29:0] lshr_ln118_24_fu_1666_p4;
wire   [31:0] select_ln118_15_fu_1684_p3;
wire    ap_block_pp0_stage20;
wire   [31:0] or_ln118_22_fu_1695_p3;
wire   [31:0] add_ln118_45_fu_1701_p2;
wire    ap_block_pp0_stage21;
wire   [31:0] xor_ln118_11_fu_1718_p2;
wire   [31:0] and_ln118_22_fu_1723_p2;
wire   [31:0] and_ln118_23_fu_1728_p2;
wire   [31:0] or_ln118_21_fu_1733_p2;
wire   [31:0] add_ln118_44_fu_1739_p2;
wire    ap_block_pp0_stage22;
wire   [31:0] or_ln118_24_fu_1777_p3;
wire   [31:0] add_ln118_49_fu_1783_p2;
wire    ap_block_pp0_stage23;
wire   [31:0] xor_ln118_12_fu_1800_p2;
wire   [31:0] and_ln118_24_fu_1805_p2;
wire   [31:0] and_ln118_25_fu_1810_p2;
wire   [31:0] or_ln118_23_fu_1815_p2;
wire   [31:0] add_ln118_48_fu_1821_p2;
wire    ap_block_pp0_stage24;
wire   [31:0] or_ln118_26_fu_1859_p3;
wire   [31:0] add_ln118_53_fu_1865_p2;
wire    ap_block_pp0_stage25;
wire   [31:0] xor_ln118_13_fu_1876_p2;
wire   [31:0] and_ln118_26_fu_1881_p2;
wire   [31:0] and_ln118_27_fu_1885_p2;
wire   [31:0] or_ln118_25_fu_1890_p2;
wire   [31:0] add_ln118_52_fu_1896_p2;
wire   [31:0] temp_55_fu_1901_p2;
wire   [31:0] xor_ln118_14_fu_1926_p2;
wire   [31:0] and_ln118_28_fu_1931_p2;
wire   [31:0] and_ln118_29_fu_1936_p2;
wire   [31:0] xor_ln118_15_fu_1953_p2;
wire   [31:0] and_ln118_30_fu_1959_p2;
wire   [31:0] and_ln118_31_fu_1965_p2;
wire   [1:0] trunc_ln118_31_fu_1977_p1;
wire   [29:0] lshr_ln118_30_fu_1981_p4;
wire    ap_block_pp0_stage26;
wire   [31:0] or_ln118_28_fu_2014_p3;
wire   [31:0] add_ln118_57_fu_2020_p2;
wire    ap_block_pp0_stage27;
wire   [31:0] add_ln118_56_fu_2031_p2;
wire   [26:0] trunc_ln118_30_fu_2040_p1;
wire   [4:0] lshr_ln118_29_fu_2044_p4;
wire   [31:0] or_ln118_30_fu_2054_p3;
wire   [31:0] add_ln118_62_fu_2073_p2;
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
#0 E_1_fu_146 = 32'd0;
#0 E_59_fu_150 = 32'd0;
#0 E_60_fu_154 = 32'd0;
#0 B_1_fu_158 = 32'd0;
#0 B_56_fu_162 = 32'd0;
#0 i_1_fu_166 = 5'd0;
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
        B_1_fu_158 <= B;
    end else if (((icmp_ln116_reg_2175 == 1'd0) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        B_1_fu_158 <= temp_56_fu_2035_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_56_fu_162 <= A;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_56_fu_162 <= temp_57_fu_2077_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_146 <= E;
    end else if (((icmp_ln116_reg_2175 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        E_1_fu_146 <= C_74_fu_1906_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_59_fu_150 <= D;
    end else if (((icmp_ln116_reg_2175 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        E_59_fu_150 <= C_75_fu_1947_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_60_fu_154 <= C;
    end else if (((icmp_ln116_reg_2175 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        E_60_fu_154 <= C_61_fu_1991_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln116_fu_592_p2 == 1'd0))) begin
            i_1_fu_166 <= xor_ln_fu_702_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_166 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_48_reg_2240 <= B_56_fu_162;
        C_62_reg_2234 <= E_60_fu_154;
        D_48_reg_2229 <= E_59_fu_150;
        lshr_ln118_1_reg_2257 <= {{B_1_fu_158[31:2]}};
        lshr_ln118_2_reg_2267 <= {{temp_fu_787_p2[31:27]}};
        lshr_ln118_5_reg_2285 <= {{temp_fu_787_p2[31:2]}};
        temp_reg_2246 <= temp_fu_787_p2;
        trunc_ln118_1_reg_2252 <= trunc_ln118_1_fu_793_p1;
        trunc_ln118_2_reg_2262 <= trunc_ln118_2_fu_807_p1;
        trunc_ln118_5_reg_2280 <= trunc_ln118_5_fu_843_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        A_49_reg_2360 <= A_49_fu_1058_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_74_reg_2336 <= B_74_fu_1018_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_63_reg_2295 <= C_63_fu_874_p3;
        lshr_ln118_4_reg_2306 <= {{temp_45_fu_906_p2[31:27]}};
        or_ln118_5_reg_2318 <= or_ln118_5_fu_948_p2;
        trunc_ln118_4_reg_2301 <= trunc_ln118_4_fu_911_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_64_reg_2323 <= C_64_fu_968_p3;
        D_49_reg_2311 <= D_49_fu_925_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_65_reg_2373 <= C_65_fu_1133_p3;
        C_66_reg_2389 <= C_66_fu_1167_p3;
        lshr_ln118_12_reg_2405 <= {{temp_46_fu_1116_p2[31:2]}};
        lshr_ln118_s_reg_2384 <= {{temp_46_fu_1116_p2[31:27]}};
        or_ln118_11_reg_2395 <= or_ln118_11_fu_1193_p2;
        trunc_ln118_10_reg_2379 <= trunc_ln118_10_fu_1141_p1;
        trunc_ln118_13_reg_2400 <= trunc_ln118_13_fu_1199_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        C_67_reg_2474 <= C_67_fu_1367_p3;
        lshr_ln118_15_reg_2491 <= {{temp_49_fu_1399_p2[31:27]}};
        lshr_ln118_18_reg_2501 <= {{temp_49_fu_1399_p2[31:2]}};
        temp_49_reg_2480 <= temp_49_fu_1399_p2;
        trunc_ln118_16_reg_2486 <= trunc_ln118_16_fu_1404_p1;
        trunc_ln118_19_reg_2496 <= trunc_ln118_19_fu_1418_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        C_68_reg_2506 <= C_68_fu_1432_p3;
        add_ln118_34_reg_2512 <= add_ln118_34_fu_1450_p2;
        add_ln118_36_reg_2517 <= add_ln118_36_fu_1481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        C_69_reg_2462 <= C_69_fu_1342_p3;
        lshr_ln118_13_reg_2457 <= {{temp_48_fu_1309_p2[31:27]}};
        temp_48_reg_2446 <= temp_48_fu_1309_p2;
        trunc_ln118_14_reg_2452 <= trunc_ln118_14_fu_1314_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        C_70_reg_2574 <= C_70_fu_1595_p3;
        add_ln118_42_reg_2585 <= add_ln118_42_fu_1633_p2;
        or_ln118_19_reg_2580 <= or_ln118_19_fu_1616_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        C_71_reg_2622 <= C_71_fu_1712_p3;
        lshr_ln118_23_reg_2639 <= {{temp_53_fu_1744_p2[31:27]}};
        lshr_ln118_26_reg_2649 <= {{temp_53_fu_1744_p2[31:2]}};
        temp_53_reg_2628 <= temp_53_fu_1744_p2;
        trunc_ln118_24_reg_2634 <= trunc_ln118_24_fu_1749_p1;
        trunc_ln118_27_reg_2644 <= trunc_ln118_27_fu_1763_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        C_72_reg_2659 <= C_72_fu_1794_p3;
        lshr_ln118_25_reg_2676 <= {{temp_54_fu_1826_p2[31:27]}};
        lshr_ln118_28_reg_2686 <= {{temp_54_fu_1826_p2[31:2]}};
        temp_54_reg_2665 <= temp_54_fu_1826_p2;
        trunc_ln118_26_reg_2671 <= trunc_ln118_26_fu_1831_p1;
        trunc_ln118_29_reg_2681 <= trunc_ln118_29_fu_1845_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        C_73_reg_2606 <= C_73_fu_1676_p3;
        add_ln118_60_reg_2612 <= add_ln118_60_fu_1689_p2;
        lshr_ln118_21_reg_2601 <= {{temp_52_fu_1643_p2[31:27]}};
        temp_52_reg_2590 <= temp_52_fu_1643_p2;
        trunc_ln118_22_reg_2596 <= trunc_ln118_22_fu_1648_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_78_reg_2272 <= E_78_fu_835_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln118_10_reg_2331 <= add_ln118_10_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln118_14_reg_2355 <= add_ln118_14_fu_1049_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln118_16_reg_2368 <= add_ln118_16_fu_1106_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_17_reg_2179 <= add_ln118_17_fu_606_p2;
        add_ln118_1_reg_2155 <= add_ln118_1_fu_538_p2;
        icmp_ln116_reg_2175 <= icmp_ln116_fu_592_p2;
        icmp_ln118_reg_2149 <= icmp_ln118_fu_524_p2;
        select_ln118_10_reg_2204 <= select_ln118_10_fu_644_p3;
        select_ln118_11_reg_2209 <= select_ln118_11_fu_652_p3;
        select_ln118_12_reg_2214 <= select_ln118_12_fu_660_p3;
        select_ln118_13_reg_2219 <= select_ln118_13_fu_668_p3;
        select_ln118_14_reg_2224 <= select_ln118_14_fu_676_p3;
        select_ln118_1_reg_2160 <= select_ln118_1_fu_544_p3;
        select_ln118_2_reg_2165 <= select_ln118_2_fu_552_p3;
        select_ln118_3_reg_2170 <= select_ln118_3_fu_560_p3;
        select_ln118_5_reg_2184 <= select_ln118_5_fu_612_p3;
        select_ln118_6_reg_2189 <= select_ln118_6_fu_620_p3;
        select_ln118_7_reg_2194 <= select_ln118_7_fu_628_p3;
        select_ln118_8_reg_2199 <= select_ln118_8_fu_636_p3;
        zext_ln100_cast_reg_2139[30 : 0] <= zext_ln100_cast_fu_427_p1[30 : 0];
        zext_ln104_9_cast_reg_2144[30 : 0] <= zext_ln104_9_cast_fu_451_p1[30 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln118_22_reg_2410 <= add_ln118_22_fu_1225_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln118_26_reg_2441 <= add_ln118_26_fu_1300_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln118_30_reg_2469 <= add_ln118_30_fu_1362_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        add_ln118_46_reg_2617 <= add_ln118_46_fu_1706_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        add_ln118_50_reg_2654 <= add_ln118_50_fu_1788_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        add_ln118_54_reg_2691 <= add_ln118_54_fu_1870_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        add_ln118_58_reg_2716 <= add_ln118_58_fu_2025_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        add_ln118_61_reg_2721 <= add_ln118_61_fu_2062_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln118_6_reg_2290 <= add_ln118_6_fu_868_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        lshr_ln118_11_reg_2426 <= {{temp_47_fu_1255_p2[31:27]}};
        lshr_ln118_14_reg_2436 <= {{temp_47_fu_1255_p2[31:2]}};
        temp_47_reg_2415 <= temp_47_fu_1255_p2;
        trunc_ln118_12_reg_2421 <= trunc_ln118_12_fu_1260_p1;
        trunc_ln118_15_reg_2431 <= trunc_ln118_15_fu_1274_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        lshr_ln118_17_reg_2533 <= {{temp_50_fu_1512_p2[31:27]}};
        lshr_ln118_20_reg_2543 <= {{temp_50_fu_1512_p2[31:2]}};
        temp_50_reg_2522 <= temp_50_fu_1512_p2;
        trunc_ln118_18_reg_2528 <= trunc_ln118_18_fu_1517_p1;
        trunc_ln118_21_reg_2538 <= trunc_ln118_21_fu_1531_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        lshr_ln118_19_reg_2559 <= {{temp_51_fu_1561_p2[31:27]}};
        lshr_ln118_22_reg_2569 <= {{temp_51_fu_1561_p2[31:2]}};
        temp_51_reg_2548 <= temp_51_fu_1561_p2;
        trunc_ln118_20_reg_2554 <= trunc_ln118_20_fu_1567_p1;
        trunc_ln118_23_reg_2564 <= trunc_ln118_23_fu_1581_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        lshr_ln118_27_reg_2701 <= {{temp_55_fu_1901_p2[31:27]}};
        or_ln118_27_reg_2706 <= or_ln118_27_fu_1941_p2;
        or_ln118_29_reg_2711 <= or_ln118_29_fu_1971_p2;
        trunc_ln118_28_reg_2696 <= trunc_ln118_28_fu_1912_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln118_6_reg_2350 <= {{B_74_fu_1018_p2[31:27]}};
        trunc_ln118_6_reg_2345 <= trunc_ln118_6_fu_1023_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_2175 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        A_75_out_ap_vld = 1'b1;
    end else begin
        A_75_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_2175 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        B_71_out_ap_vld = 1'b1;
    end else begin
        B_71_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_2175 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        C_110_out_ap_vld = 1'b1;
    end else begin
        C_110_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_2175 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        D_75_out_ap_vld = 1'b1;
    end else begin
        D_75_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_2175 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_71_out_ap_vld = 1'b1;
    end else begin
        E_71_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_2175 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_i = i_1_fu_166;
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
assign A_49_fu_1058_p2 = (add_ln118_14_reg_2355 + add_ln118_12_fu_1054_p2);
assign A_75_out = A_49_fu_1058_p2;
assign B_71_out = B_74_reg_2336;
assign B_74_fu_1018_p2 = (add_ln118_10_reg_2331 + add_ln118_8_fu_1013_p2);
assign C_110_out = C_64_reg_2323;
assign C_61_fu_1991_p3 = {{trunc_ln118_31_fu_1977_p1}, {lshr_ln118_30_fu_1981_p4}};
assign C_63_fu_874_p3 = {{trunc_ln118_1_reg_2252}, {lshr_ln118_1_reg_2257}};
assign C_64_fu_968_p3 = {{trunc_ln118_7_fu_954_p1}, {lshr_ln118_7_fu_958_p4}};
assign C_65_fu_1133_p3 = {{trunc_ln118_9_fu_1121_p1}, {lshr_ln118_9_fu_1124_p4}};
assign C_66_fu_1167_p3 = {{trunc_ln118_11_fu_1155_p1}, {lshr_ln118_10_fu_1158_p4}};
assign C_67_fu_1367_p3 = {{trunc_ln118_13_reg_2400}, {lshr_ln118_12_reg_2405}};
assign C_68_fu_1432_p3 = {{trunc_ln118_15_reg_2431}, {lshr_ln118_14_reg_2436}};
assign C_69_fu_1342_p3 = {{trunc_ln118_17_fu_1328_p1}, {lshr_ln118_16_fu_1332_p4}};
assign C_70_fu_1595_p3 = {{trunc_ln118_19_reg_2496}, {lshr_ln118_18_reg_2501}};
assign C_71_fu_1712_p3 = {{trunc_ln118_21_reg_2538}, {lshr_ln118_20_reg_2543}};
assign C_72_fu_1794_p3 = {{trunc_ln118_23_reg_2564}, {lshr_ln118_22_reg_2569}};
assign C_73_fu_1676_p3 = {{trunc_ln118_25_fu_1662_p1}, {lshr_ln118_24_fu_1666_p4}};
assign C_74_fu_1906_p3 = {{trunc_ln118_27_reg_2644}, {lshr_ln118_26_reg_2649}};
assign C_75_fu_1947_p3 = {{trunc_ln118_29_reg_2681}, {lshr_ln118_28_reg_2686}};
assign D_49_fu_925_p3 = {{trunc_ln118_5_reg_2280}, {lshr_ln118_5_reg_2285}};
assign D_75_out = D_49_reg_2311;
assign E_71_out = E_78_reg_2272;
assign E_78_fu_835_p3 = {{trunc_ln118_3_fu_821_p1}, {lshr_ln118_3_fu_825_p4}};
assign add_ln118_10_fu_988_p2 = (add_ln118_9_fu_982_p2 + C_62_reg_2234);
assign add_ln118_12_fu_1054_p2 = (or_ln118_5_reg_2318 + select_ln118_3_reg_2170);
assign add_ln118_13_fu_1043_p2 = (or_ln118_s_fu_1037_p3 + 32'd1518500249);
assign add_ln118_14_fu_1049_p2 = (add_ln118_13_fu_1043_p2 + C_63_reg_2295);
assign add_ln118_16_fu_1106_p2 = (or_ln118_8_fu_1098_p3 + or_ln118_6_fu_1092_p2);
assign add_ln118_17_fu_606_p2 = (select_ln118_4_fu_598_p3 + 32'd1518500249);
assign add_ln118_18_fu_1112_p2 = (add_ln118_17_reg_2179 + E_78_reg_2272);
assign add_ln118_1_fu_538_p2 = (select_ln118_fu_530_p3 + 32'd1518500249);
assign add_ln118_20_fu_1250_p2 = (select_ln118_5_reg_2184 + or_ln118_9_fu_1244_p2);
assign add_ln118_21_fu_1219_p2 = (or_ln118_10_fu_1213_p3 + 32'd1518500249);
assign add_ln118_22_fu_1225_p2 = (add_ln118_21_fu_1219_p2 + D_49_reg_2311);
assign add_ln118_24_fu_1305_p2 = (or_ln118_11_reg_2395 + select_ln118_6_reg_2189);
assign add_ln118_25_fu_1294_p2 = (or_ln118_12_fu_1288_p3 + 32'd1518500249);
assign add_ln118_26_fu_1300_p2 = (add_ln118_25_fu_1294_p2 + C_64_reg_2323);
assign add_ln118_28_fu_1394_p2 = (or_ln118_13_fu_1388_p2 + select_ln118_7_reg_2194);
assign add_ln118_29_fu_1356_p2 = (or_ln118_14_fu_1350_p3 + 32'd1518500249);
assign add_ln118_2_fu_776_p2 = (add_ln118_1_reg_2155 + or_ln118_1_fu_768_p3);
assign add_ln118_30_fu_1362_p2 = (add_ln118_29_fu_1356_p2 + C_65_reg_2373);
assign add_ln118_32_fu_1507_p2 = (or_ln118_15_fu_1501_p2 + select_ln118_8_reg_2199);
assign add_ln118_33_fu_1444_p2 = (or_ln118_16_fu_1438_p3 + 32'd1518500249);
assign add_ln118_34_fu_1450_p2 = (add_ln118_33_fu_1444_p2 + C_66_reg_2389);
assign add_ln118_36_fu_1481_p2 = (or_ln118_17_fu_1475_p2 + select_ln118_9_fu_1455_p3);
assign add_ln118_37_fu_1555_p2 = (or_ln118_18_fu_1545_p3 + 32'd1518500249);
assign add_ln118_38_fu_1551_p2 = (add_ln118_36_reg_2517 + C_67_reg_2474);
assign add_ln118_40_fu_1639_p2 = (or_ln118_19_reg_2580 + select_ln118_10_reg_2204);
assign add_ln118_41_fu_1628_p2 = (C_68_reg_2506 + 32'd1518500249);
assign add_ln118_42_fu_1633_p2 = (or_ln118_20_fu_1622_p3 + add_ln118_41_fu_1628_p2);
assign add_ln118_44_fu_1739_p2 = (or_ln118_21_fu_1733_p2 + C_69_reg_2462);
assign add_ln118_45_fu_1701_p2 = (select_ln118_11_reg_2209 + 32'd1518500249);
assign add_ln118_46_fu_1706_p2 = (or_ln118_22_fu_1695_p3 + add_ln118_45_fu_1701_p2);
assign add_ln118_48_fu_1821_p2 = (or_ln118_23_fu_1815_p2 + C_70_reg_2574);
assign add_ln118_49_fu_1783_p2 = (select_ln118_12_reg_2214 + 32'd1518500249);
assign add_ln118_4_fu_901_p2 = (select_ln118_1_reg_2160 + or_ln118_2_fu_895_p2);
assign add_ln118_50_fu_1788_p2 = (or_ln118_24_fu_1777_p3 + add_ln118_49_fu_1783_p2);
assign add_ln118_52_fu_1896_p2 = (or_ln118_25_fu_1890_p2 + C_71_reg_2622);
assign add_ln118_53_fu_1865_p2 = (select_ln118_13_reg_2219 + 32'd1518500249);
assign add_ln118_54_fu_1870_p2 = (or_ln118_26_fu_1859_p3 + add_ln118_53_fu_1865_p2);
assign add_ln118_56_fu_2031_p2 = (or_ln118_27_reg_2706 + C_72_reg_2659);
assign add_ln118_57_fu_2020_p2 = (select_ln118_14_reg_2224 + 32'd1518500249);
assign add_ln118_58_fu_2025_p2 = (or_ln118_28_fu_2014_p3 + add_ln118_57_fu_2020_p2);
assign add_ln118_5_fu_863_p2 = (D_48_reg_2229 + 32'd1518500249);
assign add_ln118_60_fu_1689_p2 = (select_ln118_15_fu_1684_p3 + C_73_fu_1676_p3);
assign add_ln118_61_fu_2062_p2 = (or_ln118_30_fu_2054_p3 + 32'd1518500249);
assign add_ln118_62_fu_2073_p2 = (add_ln118_60_reg_2612 + or_ln118_29_reg_2711);
assign add_ln118_6_fu_868_p2 = (or_ln118_4_fu_857_p3 + add_ln118_5_fu_863_p2);
assign add_ln118_8_fu_1013_p2 = (or_ln118_3_fu_1007_p2 + select_ln118_2_reg_2165);
assign add_ln118_9_fu_982_p2 = (or_ln118_7_fu_976_p3 + 32'd1518500249);
assign add_ln118_fu_781_p2 = (or_ln118_fu_762_p2 + E_1_fu_146);
assign and_ln118_10_fu_1235_p2 = (C_65_reg_2373 & A_49_reg_2360);
assign and_ln118_11_fu_1239_p2 = (xor_ln118_5_fu_1230_p2 & C_64_reg_2323);
assign and_ln118_12_fu_1181_p2 = (temp_46_fu_1116_p2 & C_66_fu_1167_p3);
assign and_ln118_13_fu_1187_p2 = (xor_ln118_6_fu_1175_p2 & C_65_fu_1133_p3);
assign and_ln118_14_fu_1378_p2 = (temp_47_reg_2415 & C_67_fu_1367_p3);
assign and_ln118_15_fu_1383_p2 = (xor_ln118_7_fu_1373_p2 & C_66_reg_2389);
assign and_ln118_16_fu_1492_p2 = (temp_48_reg_2446 & C_68_reg_2506);
assign and_ln118_17_fu_1496_p2 = (xor_ln118_8_fu_1487_p2 & C_67_reg_2474);
assign and_ln118_18_fu_1465_p2 = (temp_49_reg_2480 & C_69_reg_2462);
assign and_ln118_19_fu_1469_p2 = (xor_ln118_9_fu_1460_p2 & C_68_fu_1432_p3);
assign and_ln118_1_fu_756_p2 = (xor_ln118_fu_744_p2 & E_59_fu_150);
assign and_ln118_20_fu_1606_p2 = (temp_50_reg_2522 & C_70_fu_1595_p3);
assign and_ln118_21_fu_1611_p2 = (xor_ln118_10_fu_1601_p2 & C_69_reg_2462);
assign and_ln118_22_fu_1723_p2 = (temp_51_reg_2548 & C_71_fu_1712_p3);
assign and_ln118_23_fu_1728_p2 = (xor_ln118_11_fu_1718_p2 & C_70_reg_2574);
assign and_ln118_24_fu_1805_p2 = (temp_52_reg_2590 & C_72_fu_1794_p3);
assign and_ln118_25_fu_1810_p2 = (xor_ln118_12_fu_1800_p2 & C_71_reg_2622);
assign and_ln118_26_fu_1881_p2 = (temp_53_reg_2628 & C_73_reg_2606);
assign and_ln118_27_fu_1885_p2 = (xor_ln118_13_fu_1876_p2 & C_72_reg_2659);
assign and_ln118_28_fu_1931_p2 = (temp_54_reg_2665 & C_74_fu_1906_p3);
assign and_ln118_29_fu_1936_p2 = (xor_ln118_14_fu_1926_p2 & C_73_reg_2606);
assign and_ln118_2_fu_885_p2 = (C_63_fu_874_p3 & A_48_reg_2240);
assign and_ln118_30_fu_1959_p2 = (temp_55_fu_1901_p2 & C_75_fu_1947_p3);
assign and_ln118_31_fu_1965_p2 = (xor_ln118_15_fu_1953_p2 & C_74_fu_1906_p3);
assign and_ln118_3_fu_890_p2 = (xor_ln118_1_fu_880_p2 & C_62_reg_2234);
assign and_ln118_4_fu_998_p2 = (temp_reg_2246 & E_78_reg_2272);
assign and_ln118_5_fu_1002_p2 = (xor_ln118_2_fu_993_p2 & C_63_reg_2295);
assign and_ln118_6_fu_937_p2 = (temp_45_fu_906_p2 & D_49_fu_925_p3);
assign and_ln118_7_fu_943_p2 = (xor_ln118_3_fu_931_p2 & E_78_reg_2272);
assign and_ln118_8_fu_1083_p2 = (C_64_reg_2323 & B_74_reg_2336);
assign and_ln118_9_fu_1087_p2 = (xor_ln118_4_fu_1078_p2 & D_49_reg_2311);
assign and_ln118_fu_750_p2 = (E_60_fu_154 & B_1_fu_158);
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
assign bit_sel_fu_684_p3 = ap_sig_allocacmp_i[5'd4];
assign icmp_ln116_fu_592_p2 = ((or_ln_fu_582_p4 == 5'd20) ? 1'b1 : 1'b0);
assign icmp_ln118_fu_524_p2 = ((ap_sig_allocacmp_i == 5'd16) ? 1'b1 : 1'b0);
assign lshr_ln118_10_fu_1158_p4 = {{A_49_reg_2360[31:2]}};
assign lshr_ln118_16_fu_1332_p4 = {{temp_48_fu_1309_p2[31:2]}};
assign lshr_ln118_24_fu_1666_p4 = {{temp_52_fu_1643_p2[31:2]}};
assign lshr_ln118_29_fu_2044_p4 = {{temp_56_fu_2035_p2[31:27]}};
assign lshr_ln118_30_fu_1981_p4 = {{temp_55_fu_1901_p2[31:2]}};
assign lshr_ln118_3_fu_825_p4 = {{B_56_fu_162[31:2]}};
assign lshr_ln118_7_fu_958_p4 = {{temp_45_fu_906_p2[31:2]}};
assign lshr_ln118_8_fu_1068_p4 = {{A_49_fu_1058_p2[31:27]}};
assign lshr_ln118_9_fu_1124_p4 = {{B_74_reg_2336[31:2]}};
assign lshr_ln_fu_734_p4 = {{B_56_fu_162[31:27]}};
assign or_ln118_10_fu_1213_p3 = {{trunc_ln118_10_reg_2379}, {lshr_ln118_s_reg_2384}};
assign or_ln118_11_fu_1193_p2 = (and_ln118_13_fu_1187_p2 | and_ln118_12_fu_1181_p2);
assign or_ln118_12_fu_1288_p3 = {{trunc_ln118_12_reg_2421}, {lshr_ln118_11_reg_2426}};
assign or_ln118_13_fu_1388_p2 = (and_ln118_15_fu_1383_p2 | and_ln118_14_fu_1378_p2);
assign or_ln118_14_fu_1350_p3 = {{trunc_ln118_14_reg_2452}, {lshr_ln118_13_reg_2457}};
assign or_ln118_15_fu_1501_p2 = (and_ln118_17_fu_1496_p2 | and_ln118_16_fu_1492_p2);
assign or_ln118_16_fu_1438_p3 = {{trunc_ln118_16_reg_2486}, {lshr_ln118_15_reg_2491}};
assign or_ln118_17_fu_1475_p2 = (and_ln118_19_fu_1469_p2 | and_ln118_18_fu_1465_p2);
assign or_ln118_18_fu_1545_p3 = {{trunc_ln118_18_reg_2528}, {lshr_ln118_17_reg_2533}};
assign or_ln118_19_fu_1616_p2 = (and_ln118_21_fu_1611_p2 | and_ln118_20_fu_1606_p2);
assign or_ln118_1_fu_768_p3 = {{trunc_ln118_fu_730_p1}, {lshr_ln_fu_734_p4}};
assign or_ln118_20_fu_1622_p3 = {{trunc_ln118_20_reg_2554}, {lshr_ln118_19_reg_2559}};
assign or_ln118_21_fu_1733_p2 = (and_ln118_23_fu_1728_p2 | and_ln118_22_fu_1723_p2);
assign or_ln118_22_fu_1695_p3 = {{trunc_ln118_22_reg_2596}, {lshr_ln118_21_reg_2601}};
assign or_ln118_23_fu_1815_p2 = (and_ln118_25_fu_1810_p2 | and_ln118_24_fu_1805_p2);
assign or_ln118_24_fu_1777_p3 = {{trunc_ln118_24_reg_2634}, {lshr_ln118_23_reg_2639}};
assign or_ln118_25_fu_1890_p2 = (and_ln118_27_fu_1885_p2 | and_ln118_26_fu_1881_p2);
assign or_ln118_26_fu_1859_p3 = {{trunc_ln118_26_reg_2671}, {lshr_ln118_25_reg_2676}};
assign or_ln118_27_fu_1941_p2 = (and_ln118_29_fu_1936_p2 | and_ln118_28_fu_1931_p2);
assign or_ln118_28_fu_2014_p3 = {{trunc_ln118_28_reg_2696}, {lshr_ln118_27_reg_2701}};
assign or_ln118_29_fu_1971_p2 = (and_ln118_31_fu_1965_p2 | and_ln118_30_fu_1959_p2);
assign or_ln118_2_fu_895_p2 = (and_ln118_3_fu_890_p2 | and_ln118_2_fu_885_p2);
assign or_ln118_30_fu_2054_p3 = {{trunc_ln118_30_fu_2040_p1}, {lshr_ln118_29_fu_2044_p4}};
assign or_ln118_3_fu_1007_p2 = (and_ln118_5_fu_1002_p2 | and_ln118_4_fu_998_p2);
assign or_ln118_4_fu_857_p3 = {{trunc_ln118_2_reg_2262}, {lshr_ln118_2_reg_2267}};
assign or_ln118_5_fu_948_p2 = (and_ln118_7_fu_943_p2 | and_ln118_6_fu_937_p2);
assign or_ln118_6_fu_1092_p2 = (and_ln118_9_fu_1087_p2 | and_ln118_8_fu_1083_p2);
assign or_ln118_7_fu_976_p3 = {{trunc_ln118_4_reg_2301}, {lshr_ln118_4_reg_2306}};
assign or_ln118_8_fu_1098_p3 = {{trunc_ln118_8_fu_1064_p1}, {lshr_ln118_8_fu_1068_p4}};
assign or_ln118_9_fu_1244_p2 = (and_ln118_11_fu_1239_p2 | and_ln118_10_fu_1235_p2);
assign or_ln118_fu_762_p2 = (and_ln118_fu_750_p2 | and_ln118_1_fu_756_p2);
assign or_ln118_s_fu_1037_p3 = {{trunc_ln118_6_reg_2345}, {lshr_ln118_6_reg_2350}};
assign or_ln_fu_582_p4 = {{{tmp_s_fu_568_p4}, {1'd1}}, {trunc_ln116_fu_578_p1}};
assign select_ln118_10_fu_644_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_42_reload : zext_ln104_10_cast_fu_447_p1);
assign select_ln118_11_fu_652_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_43_reload : zext_ln104_11_cast_fu_443_p1);
assign select_ln118_12_fu_660_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_44_reload : zext_ln104_12_cast_fu_439_p1);
assign select_ln118_13_fu_668_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_45_reload : zext_ln104_13_cast_fu_435_p1);
assign select_ln118_14_fu_676_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_46_reload : zext_ln104_14_cast_fu_431_p1);
assign select_ln118_15_fu_1684_p3 = ((icmp_ln118_reg_2149[0:0] == 1'b1) ? W_47_reload : zext_ln100_cast_reg_2139);
assign select_ln118_1_fu_544_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_33_reload : zext_ln104_1_cast_fu_483_p1);
assign select_ln118_2_fu_552_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_34_reload : zext_ln104_2_cast_fu_479_p1);
assign select_ln118_3_fu_560_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_35_reload : zext_ln104_3_cast_fu_475_p1);
assign select_ln118_4_fu_598_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_36_reload : zext_ln104_4_cast_fu_471_p1);
assign select_ln118_5_fu_612_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_37_reload : zext_ln104_5_cast_fu_467_p1);
assign select_ln118_6_fu_620_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_38_reload : zext_ln104_6_cast_fu_463_p1);
assign select_ln118_7_fu_628_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_39_reload : zext_ln104_7_cast_fu_459_p1);
assign select_ln118_8_fu_636_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_40_reload : zext_ln104_8_cast_fu_455_p1);
assign select_ln118_9_fu_1455_p3 = ((icmp_ln118_reg_2149[0:0] == 1'b1) ? W_41_reload : zext_ln104_9_cast_reg_2144);
assign select_ln118_fu_530_p3 = ((icmp_ln118_fu_524_p2[0:0] == 1'b1) ? W_32_reload : zext_ln104_cast_fu_487_p1);
assign temp_45_fu_906_p2 = (add_ln118_6_reg_2290 + add_ln118_4_fu_901_p2);
assign temp_46_fu_1116_p2 = (add_ln118_16_reg_2368 + add_ln118_18_fu_1112_p2);
assign temp_47_fu_1255_p2 = (add_ln118_22_reg_2410 + add_ln118_20_fu_1250_p2);
assign temp_48_fu_1309_p2 = (add_ln118_26_reg_2441 + add_ln118_24_fu_1305_p2);
assign temp_49_fu_1399_p2 = (add_ln118_30_reg_2469 + add_ln118_28_fu_1394_p2);
assign temp_50_fu_1512_p2 = (add_ln118_34_reg_2512 + add_ln118_32_fu_1507_p2);
assign temp_51_fu_1561_p2 = (add_ln118_37_fu_1555_p2 + add_ln118_38_fu_1551_p2);
assign temp_52_fu_1643_p2 = (add_ln118_42_reg_2585 + add_ln118_40_fu_1639_p2);
assign temp_53_fu_1744_p2 = (add_ln118_46_reg_2617 + add_ln118_44_fu_1739_p2);
assign temp_54_fu_1826_p2 = (add_ln118_50_reg_2654 + add_ln118_48_fu_1821_p2);
assign temp_55_fu_1901_p2 = (add_ln118_54_reg_2691 + add_ln118_52_fu_1896_p2);
assign temp_56_fu_2035_p2 = (add_ln118_58_reg_2716 + add_ln118_56_fu_2031_p2);
assign temp_57_fu_2077_p2 = (add_ln118_61_reg_2721 + add_ln118_62_fu_2073_p2);
assign temp_fu_787_p2 = (add_ln118_fu_781_p2 + add_ln118_2_fu_776_p2);
assign tmp_s_fu_568_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign trunc_ln116_1_fu_698_p1 = ap_sig_allocacmp_i[3:0];
assign trunc_ln116_fu_578_p1 = ap_sig_allocacmp_i[1:0];
assign trunc_ln118_10_fu_1141_p1 = temp_46_fu_1116_p2[26:0];
assign trunc_ln118_11_fu_1155_p1 = A_49_reg_2360[1:0];
assign trunc_ln118_12_fu_1260_p1 = temp_47_fu_1255_p2[26:0];
assign trunc_ln118_13_fu_1199_p1 = temp_46_fu_1116_p2[1:0];
assign trunc_ln118_14_fu_1314_p1 = temp_48_fu_1309_p2[26:0];
assign trunc_ln118_15_fu_1274_p1 = temp_47_fu_1255_p2[1:0];
assign trunc_ln118_16_fu_1404_p1 = temp_49_fu_1399_p2[26:0];
assign trunc_ln118_17_fu_1328_p1 = temp_48_fu_1309_p2[1:0];
assign trunc_ln118_18_fu_1517_p1 = temp_50_fu_1512_p2[26:0];
assign trunc_ln118_19_fu_1418_p1 = temp_49_fu_1399_p2[1:0];
assign trunc_ln118_1_fu_793_p1 = B_1_fu_158[1:0];
assign trunc_ln118_20_fu_1567_p1 = temp_51_fu_1561_p2[26:0];
assign trunc_ln118_21_fu_1531_p1 = temp_50_fu_1512_p2[1:0];
assign trunc_ln118_22_fu_1648_p1 = temp_52_fu_1643_p2[26:0];
assign trunc_ln118_23_fu_1581_p1 = temp_51_fu_1561_p2[1:0];
assign trunc_ln118_24_fu_1749_p1 = temp_53_fu_1744_p2[26:0];
assign trunc_ln118_25_fu_1662_p1 = temp_52_fu_1643_p2[1:0];
assign trunc_ln118_26_fu_1831_p1 = temp_54_fu_1826_p2[26:0];
assign trunc_ln118_27_fu_1763_p1 = temp_53_fu_1744_p2[1:0];
assign trunc_ln118_28_fu_1912_p1 = temp_55_fu_1901_p2[26:0];
assign trunc_ln118_29_fu_1845_p1 = temp_54_fu_1826_p2[1:0];
assign trunc_ln118_2_fu_807_p1 = temp_fu_787_p2[26:0];
assign trunc_ln118_30_fu_2040_p1 = temp_56_fu_2035_p2[26:0];
assign trunc_ln118_31_fu_1977_p1 = temp_55_fu_1901_p2[1:0];
assign trunc_ln118_3_fu_821_p1 = B_56_fu_162[1:0];
assign trunc_ln118_4_fu_911_p1 = temp_45_fu_906_p2[26:0];
assign trunc_ln118_5_fu_843_p1 = temp_fu_787_p2[1:0];
assign trunc_ln118_6_fu_1023_p1 = B_74_fu_1018_p2[26:0];
assign trunc_ln118_7_fu_954_p1 = temp_45_fu_906_p2[1:0];
assign trunc_ln118_8_fu_1064_p1 = A_49_fu_1058_p2[26:0];
assign trunc_ln118_9_fu_1121_p1 = B_74_reg_2336[1:0];
assign trunc_ln118_fu_730_p1 = B_56_fu_162[26:0];
assign xor_ln116_fu_692_p2 = (bit_sel_fu_684_p3 ^ 1'd1);
assign xor_ln118_10_fu_1601_p2 = (temp_50_reg_2522 ^ 32'd4294967295);
assign xor_ln118_11_fu_1718_p2 = (temp_51_reg_2548 ^ 32'd4294967295);
assign xor_ln118_12_fu_1800_p2 = (temp_52_reg_2590 ^ 32'd4294967295);
assign xor_ln118_13_fu_1876_p2 = (temp_53_reg_2628 ^ 32'd4294967295);
assign xor_ln118_14_fu_1926_p2 = (temp_54_reg_2665 ^ 32'd4294967295);
assign xor_ln118_15_fu_1953_p2 = (temp_55_fu_1901_p2 ^ 32'd4294967295);
assign xor_ln118_1_fu_880_p2 = (32'd4294967295 ^ A_48_reg_2240);
assign xor_ln118_2_fu_993_p2 = (temp_reg_2246 ^ 32'd4294967295);
assign xor_ln118_3_fu_931_p2 = (temp_45_fu_906_p2 ^ 32'd4294967295);
assign xor_ln118_4_fu_1078_p2 = (32'd4294967295 ^ B_74_reg_2336);
assign xor_ln118_5_fu_1230_p2 = (32'd4294967295 ^ A_49_reg_2360);
assign xor_ln118_6_fu_1175_p2 = (temp_46_fu_1116_p2 ^ 32'd4294967295);
assign xor_ln118_7_fu_1373_p2 = (temp_47_reg_2415 ^ 32'd4294967295);
assign xor_ln118_8_fu_1487_p2 = (temp_48_reg_2446 ^ 32'd4294967295);
assign xor_ln118_9_fu_1460_p2 = (temp_49_reg_2480 ^ 32'd4294967295);
assign xor_ln118_fu_744_p2 = (32'd4294967295 ^ B_1_fu_158);
assign xor_ln_fu_702_p3 = {{xor_ln116_fu_692_p2}, {trunc_ln116_1_fu_698_p1}};
assign zext_ln100_cast_fu_427_p1 = zext_ln100;
assign zext_ln104_10_cast_fu_447_p1 = zext_ln104_10;
assign zext_ln104_11_cast_fu_443_p1 = zext_ln104_11;
assign zext_ln104_12_cast_fu_439_p1 = zext_ln104_12;
assign zext_ln104_13_cast_fu_435_p1 = zext_ln104_13;
assign zext_ln104_14_cast_fu_431_p1 = zext_ln104_14;
assign zext_ln104_1_cast_fu_483_p1 = zext_ln104_1;
assign zext_ln104_2_cast_fu_479_p1 = zext_ln104_2;
assign zext_ln104_3_cast_fu_475_p1 = zext_ln104_3;
assign zext_ln104_4_cast_fu_471_p1 = zext_ln104_4;
assign zext_ln104_5_cast_fu_467_p1 = zext_ln104_5;
assign zext_ln104_6_cast_fu_463_p1 = zext_ln104_6;
assign zext_ln104_7_cast_fu_459_p1 = zext_ln104_7;
assign zext_ln104_8_cast_fu_455_p1 = zext_ln104_8;
assign zext_ln104_9_cast_fu_451_p1 = zext_ln104_9;
assign zext_ln104_cast_fu_487_p1 = zext_ln104;
always @ (posedge ap_clk) begin
    zext_ln100_cast_reg_2139[31] <= 1'b0;
    zext_ln104_9_cast_reg_2144[31] <= 1'b0;
end
endmodule 