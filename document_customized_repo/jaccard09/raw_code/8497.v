module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_41_reload,B_6_reload,C_40_reload,D_41_reload,E_6_reload,W_4_address0,W_4_ce0,W_4_q0,W_8_address0,W_8_ce0,W_8_q0,W_12_address0,W_12_ce0,W_12_q0,W_16_address0,W_16_ce0,W_16_q0,W_20_address0,W_20_ce0,W_20_q0,W_5_address0,W_5_ce0,W_5_q0,W_9_address0,W_9_ce0,W_9_q0,W_13_address0,W_13_ce0,W_13_q0,W_17_address0,W_17_ce0,W_17_q0,W_21_address0,W_21_ce0,W_21_q0,W_6_address0,W_6_ce0,W_6_q0,W_10_address0,W_10_ce0,W_10_q0,W_14_address0,W_14_ce0,W_14_q0,W_18_address0,W_18_ce0,W_18_q0,W_22_address0,W_22_ce0,W_22_q0,W_7_address0,W_7_ce0,W_7_q0,W_11_address0,W_11_ce0,W_11_q0,W_15_address0,W_15_ce0,W_15_q0,W_19_address0,W_19_ce0,W_19_q0,W_23_address0,W_23_ce0,W_23_q0,W_24_address0,W_24_ce0,W_24_q0,W_25_address0,W_25_ce0,W_25_q0,W_26_address0,W_26_ce0,W_26_q0,W_27_address0,W_27_ce0,W_27_q0,W_28_address0,W_28_ce0,W_28_q0,W_29_address0,W_29_ce0,W_29_q0,W_30_address0,W_30_ce0,W_30_q0,W_31_address0,W_31_ce0,W_31_q0,W_load_2,W_16_load_2,W_20_load_2,W_24_load_2,W_28_load_2,W_1_load_2,W_17_load_2,W_21_load_2,W_25_load_2,W_29_load_2,W_2_load_2,W_18_load_2,W_22_load_2,W_26_load_2,W_30_load_2,W_3_load_2,W_19_load_2,W_23_load_2,W_27_load_2,W_31_load_2,E_23_out,E_23_out_ap_vld,B_23_out,B_23_out_ap_vld,D_36_out,D_36_out_ap_vld,A_36_out,A_36_out_ap_vld,C_35_out,C_35_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 27'd1;
parameter    ap_ST_fsm_pp0_stage1 = 27'd2;
parameter    ap_ST_fsm_pp0_stage2 = 27'd4;
parameter    ap_ST_fsm_pp0_stage3 = 27'd8;
parameter    ap_ST_fsm_pp0_stage4 = 27'd16;
parameter    ap_ST_fsm_pp0_stage5 = 27'd32;
parameter    ap_ST_fsm_pp0_stage6 = 27'd64;
parameter    ap_ST_fsm_pp0_stage7 = 27'd128;
parameter    ap_ST_fsm_pp0_stage8 = 27'd256;
parameter    ap_ST_fsm_pp0_stage9 = 27'd512;
parameter    ap_ST_fsm_pp0_stage10 = 27'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 27'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 27'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 27'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 27'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 27'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 27'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 27'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 27'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 27'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 27'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 27'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 27'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 27'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 27'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 27'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 27'd67108864;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_41_reload;
input  [31:0] B_6_reload;
input  [31:0] C_40_reload;
input  [31:0] D_41_reload;
input  [31:0] E_6_reload;
output  [1:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [1:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [1:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [1:0] W_16_address0;
output   W_16_ce0;
input  [31:0] W_16_q0;
output  [1:0] W_20_address0;
output   W_20_ce0;
input  [31:0] W_20_q0;
output  [1:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [1:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [1:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [1:0] W_17_address0;
output   W_17_ce0;
input  [31:0] W_17_q0;
output  [1:0] W_21_address0;
output   W_21_ce0;
input  [31:0] W_21_q0;
output  [1:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [1:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [1:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [1:0] W_18_address0;
output   W_18_ce0;
input  [31:0] W_18_q0;
output  [1:0] W_22_address0;
output   W_22_ce0;
input  [31:0] W_22_q0;
output  [1:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [1:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [1:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [1:0] W_19_address0;
output   W_19_ce0;
input  [31:0] W_19_q0;
output  [1:0] W_23_address0;
output   W_23_ce0;
input  [31:0] W_23_q0;
output  [1:0] W_24_address0;
output   W_24_ce0;
input  [31:0] W_24_q0;
output  [1:0] W_25_address0;
output   W_25_ce0;
input  [31:0] W_25_q0;
output  [1:0] W_26_address0;
output   W_26_ce0;
input  [31:0] W_26_q0;
output  [1:0] W_27_address0;
output   W_27_ce0;
input  [31:0] W_27_q0;
output  [1:0] W_28_address0;
output   W_28_ce0;
input  [31:0] W_28_q0;
output  [1:0] W_29_address0;
output   W_29_ce0;
input  [31:0] W_29_q0;
output  [1:0] W_30_address0;
output   W_30_ce0;
input  [31:0] W_30_q0;
output  [1:0] W_31_address0;
output   W_31_ce0;
input  [31:0] W_31_q0;
input  [31:0] W_load_2;
input  [31:0] W_16_load_2;
input  [31:0] W_20_load_2;
input  [31:0] W_24_load_2;
input  [31:0] W_28_load_2;
input  [31:0] W_1_load_2;
input  [31:0] W_17_load_2;
input  [31:0] W_21_load_2;
input  [31:0] W_25_load_2;
input  [31:0] W_29_load_2;
input  [31:0] W_2_load_2;
input  [31:0] W_18_load_2;
input  [31:0] W_22_load_2;
input  [31:0] W_26_load_2;
input  [31:0] W_30_load_2;
input  [31:0] W_3_load_2;
input  [31:0] W_19_load_2;
input  [31:0] W_23_load_2;
input  [31:0] W_27_load_2;
input  [31:0] W_31_load_2;
output  [31:0] E_23_out;
output   E_23_out_ap_vld;
output  [31:0] B_23_out;
output   B_23_out_ap_vld;
output  [31:0] D_36_out;
output   D_36_out_ap_vld;
output  [31:0] A_36_out;
output   A_36_out_ap_vld;
output  [31:0] C_35_out;
output   C_35_out_ap_vld;
reg ap_idle;
reg E_23_out_ap_vld;
reg B_23_out_ap_vld;
reg D_36_out_ap_vld;
reg A_36_out_ap_vld;
reg C_35_out_ap_vld;
(* fsm_encoding = "none" *) reg   [26:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln120_reg_2647;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_reg_2526;
wire   [4:0] trunc_ln8_fu_788_p1;
reg   [4:0] trunc_ln8_reg_2531;
wire   [0:0] icmp_ln120_fu_838_p2;
wire   [31:0] tmp_12_fu_844_p13;
reg   [31:0] tmp_12_reg_2691;
wire   [31:0] tmp_13_fu_872_p13;
reg   [31:0] tmp_13_reg_2696;
wire   [31:0] tmp_14_fu_900_p13;
reg   [31:0] tmp_14_reg_2701;
wire   [31:0] tmp_15_fu_928_p13;
reg   [31:0] tmp_15_reg_2706;
reg   [31:0] tmp_15_reg_2706_pp0_iter1_reg;
reg   [31:0] D_reg_2711;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_reg_2716;
wire   [31:0] add_ln122_1_fu_1007_p2;
reg   [31:0] add_ln122_1_reg_2722;
wire   [31:0] add_ln122_fu_1013_p2;
reg   [31:0] add_ln122_reg_2727;
wire   [31:0] C_5_fu_1033_p3;
reg   [31:0] C_5_reg_2732;
wire   [31:0] tmp_1_fu_1041_p13;
reg   [31:0] tmp_1_reg_2739;
wire   [31:0] tmp_2_fu_1068_p13;
reg   [31:0] tmp_2_reg_2744;
wire   [31:0] tmp_3_fu_1095_p13;
reg   [31:0] tmp_3_reg_2749;
wire   [31:0] tmp_4_fu_1122_p13;
reg   [31:0] tmp_4_reg_2754;
wire   [31:0] tmp_5_fu_1149_p13;
reg   [31:0] tmp_5_reg_2759;
wire   [31:0] tmp_6_fu_1176_p13;
reg   [31:0] tmp_6_reg_2764;
wire   [31:0] tmp_7_fu_1203_p13;
reg   [31:0] tmp_7_reg_2769;
wire   [31:0] tmp_8_fu_1230_p13;
reg   [31:0] tmp_8_reg_2774;
wire   [31:0] tmp_9_fu_1257_p13;
reg   [31:0] tmp_9_reg_2779;
wire   [31:0] tmp_10_fu_1284_p13;
reg   [31:0] tmp_10_reg_2784;
wire   [31:0] tmp_11_fu_1311_p13;
reg   [31:0] tmp_11_reg_2789;
wire   [31:0] temp_fu_1368_p2;
reg   [31:0] temp_reg_2794;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] add_ln122_5_fu_1405_p2;
reg   [31:0] add_ln122_5_reg_2799;
wire   [31:0] add_ln122_4_fu_1410_p2;
reg   [31:0] add_ln122_4_reg_2804;
wire   [31:0] C_6_fu_1430_p3;
reg   [31:0] C_6_reg_2809;
wire   [31:0] C_7_fu_1452_p3;
reg   [31:0] C_7_reg_2817;
wire   [31:0] temp_1_fu_1464_p2;
reg   [31:0] temp_1_reg_2825;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] add_ln122_9_fu_1500_p2;
reg   [31:0] add_ln122_9_reg_2830;
wire   [31:0] add_ln122_8_fu_1505_p2;
reg   [31:0] add_ln122_8_reg_2835;
wire   [31:0] C_8_fu_1525_p3;
reg   [31:0] C_8_reg_2840;
wire   [31:0] temp_2_fu_1537_p2;
reg   [31:0] temp_2_reg_2848;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] add_ln122_13_fu_1573_p2;
reg   [31:0] add_ln122_13_reg_2856;
wire   [31:0] add_ln122_12_fu_1578_p2;
reg   [31:0] add_ln122_12_reg_2861;
wire   [31:0] temp_3_fu_1588_p2;
reg   [31:0] temp_3_reg_2866;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] add_ln122_17_fu_1625_p2;
reg   [31:0] add_ln122_17_reg_2873;
wire   [31:0] add_ln122_16_fu_1630_p2;
reg   [31:0] add_ln122_16_reg_2878;
wire   [31:0] C_9_fu_1657_p3;
reg   [31:0] C_9_reg_2883;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln122_10_fu_1665_p1;
reg   [26:0] trunc_ln122_10_reg_2888;
reg   [4:0] lshr_ln122_s_reg_2893;
wire   [31:0] xor_ln122_11_fu_1683_p2;
reg   [31:0] xor_ln122_11_reg_2898;
wire   [31:0] C_10_fu_1701_p3;
reg   [31:0] C_10_reg_2903;
wire   [31:0] xor_ln122_13_fu_1715_p2;
reg   [31:0] xor_ln122_13_reg_2909;
wire   [1:0] trunc_ln122_13_fu_1721_p1;
reg   [1:0] trunc_ln122_13_reg_2914;
reg   [29:0] lshr_ln122_12_reg_2919;
wire   [31:0] add_ln122_22_fu_1747_p2;
reg   [31:0] add_ln122_22_reg_2924;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [26:0] trunc_ln122_12_fu_1761_p1;
reg   [26:0] trunc_ln122_12_reg_2929;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [4:0] lshr_ln122_11_reg_2934;
wire   [31:0] C_11_fu_1775_p3;
reg   [31:0] C_11_reg_2939;
wire   [31:0] xor_ln122_15_fu_1786_p2;
reg   [31:0] xor_ln122_15_reg_2945;
wire   [1:0] trunc_ln122_15_fu_1792_p1;
reg   [1:0] trunc_ln122_15_reg_2950;
reg   [29:0] lshr_ln122_14_reg_2955;
wire   [31:0] add_ln122_26_fu_1818_p2;
reg   [31:0] add_ln122_26_reg_2960;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] temp_6_fu_1827_p2;
reg   [31:0] temp_6_reg_2965;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [26:0] trunc_ln122_14_fu_1832_p1;
reg   [26:0] trunc_ln122_14_reg_2970;
reg   [4:0] lshr_ln122_13_reg_2975;
wire   [31:0] C_13_fu_1860_p3;
reg   [31:0] C_13_reg_2980;
wire   [31:0] add_ln122_30_fu_1880_p2;
reg   [31:0] add_ln122_30_reg_2987;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_7_fu_1889_p2;
reg   [31:0] temp_7_reg_2992;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [26:0] trunc_ln122_16_fu_1894_p1;
reg   [26:0] trunc_ln122_16_reg_2997;
reg   [4:0] lshr_ln122_15_reg_3002;
wire   [1:0] trunc_ln122_19_fu_1908_p1;
reg   [1:0] trunc_ln122_19_reg_3007;
reg   [29:0] lshr_ln122_18_reg_3012;
wire   [31:0] add_ln122_34_fu_1934_p2;
reg   [31:0] add_ln122_34_reg_3017;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [31:0] C_12_fu_1939_p3;
reg   [31:0] C_12_reg_3022;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] temp_8_fu_1960_p2;
reg   [31:0] temp_8_reg_3028;
wire   [26:0] trunc_ln122_18_fu_1965_p1;
reg   [26:0] trunc_ln122_18_reg_3033;
reg   [4:0] lshr_ln122_17_reg_3038;
wire   [1:0] trunc_ln122_21_fu_1979_p1;
reg   [1:0] trunc_ln122_21_reg_3043;
reg   [29:0] lshr_ln122_20_reg_3048;
wire   [31:0] add_ln122_38_fu_2005_p2;
reg   [31:0] add_ln122_38_reg_3053;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [31:0] temp_9_fu_2024_p2;
reg   [31:0] temp_9_reg_3058;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [26:0] trunc_ln122_20_fu_2029_p1;
reg   [26:0] trunc_ln122_20_reg_3063;
reg   [4:0] lshr_ln122_19_reg_3068;
wire   [1:0] trunc_ln122_23_fu_2043_p1;
reg   [1:0] trunc_ln122_23_reg_3073;
reg   [29:0] lshr_ln122_22_reg_3078;
wire   [31:0] add_ln122_42_fu_2069_p2;
reg   [31:0] add_ln122_42_reg_3083;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [31:0] C_14_fu_2074_p3;
reg   [31:0] C_14_reg_3088;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [31:0] temp_10_fu_2095_p2;
reg   [31:0] temp_10_reg_3094;
wire   [26:0] trunc_ln122_22_fu_2100_p1;
reg   [26:0] trunc_ln122_22_reg_3099;
reg   [4:0] lshr_ln122_21_reg_3104;
wire   [1:0] trunc_ln122_25_fu_2114_p1;
reg   [1:0] trunc_ln122_25_reg_3109;
reg   [29:0] lshr_ln122_24_reg_3114;
wire   [31:0] add_ln122_46_fu_2140_p2;
reg   [31:0] add_ln122_46_reg_3119;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [31:0] C_15_fu_2145_p3;
reg   [31:0] C_15_reg_3124;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [31:0] temp_11_fu_2166_p2;
reg   [31:0] temp_11_reg_3130;
wire   [26:0] trunc_ln122_24_fu_2171_p1;
reg   [26:0] trunc_ln122_24_reg_3135;
reg   [4:0] lshr_ln122_23_reg_3140;
wire   [1:0] trunc_ln122_27_fu_2185_p1;
reg   [1:0] trunc_ln122_27_reg_3145;
reg   [29:0] lshr_ln122_26_reg_3150;
wire   [31:0] add_ln122_50_fu_2211_p2;
reg   [31:0] add_ln122_50_reg_3155;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [31:0] C_16_fu_2216_p3;
reg   [31:0] C_16_reg_3160;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [31:0] temp_12_fu_2237_p2;
reg   [31:0] temp_12_reg_3166;
wire   [26:0] trunc_ln122_26_fu_2242_p1;
reg   [26:0] trunc_ln122_26_reg_3171;
reg   [4:0] lshr_ln122_25_reg_3176;
wire   [1:0] trunc_ln122_29_fu_2256_p1;
reg   [1:0] trunc_ln122_29_reg_3181;
reg   [29:0] lshr_ln122_28_reg_3186;
wire   [31:0] add_ln122_54_fu_2282_p2;
reg   [31:0] add_ln122_54_reg_3191;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [31:0] C_17_fu_2287_p3;
reg   [31:0] C_17_reg_3196;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [31:0] temp_13_fu_2308_p2;
reg   [31:0] temp_13_reg_3202;
wire   [26:0] trunc_ln122_28_fu_2313_p1;
reg   [26:0] trunc_ln122_28_reg_3207;
reg   [4:0] lshr_ln122_27_reg_3212;
wire   [31:0] add_ln122_58_fu_2366_p2;
reg   [31:0] add_ln122_58_reg_3217;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [26:0] trunc_ln122_30_fu_2403_p1;
reg   [26:0] trunc_ln122_30_reg_3222;
wire    ap_block_pp0_stage26_11001;
reg   [4:0] lshr_ln122_29_reg_3227;
wire   [31:0] xor_ln122_31_fu_2422_p2;
reg   [31:0] xor_ln122_31_reg_3232;
wire   [31:0] add_ln122_62_fu_2465_p2;
reg   [31:0] add_ln122_62_reg_3237;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln100_fu_800_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_182;
wire   [31:0] C_18_fu_2371_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_5_fu_186;
wire   [31:0] C_19_fu_2397_p3;
reg   [31:0] E_6_fu_190;
wire   [31:0] C_4_fu_2341_p3;
reg   [31:0] B_fu_194;
wire   [31:0] temp_14_fu_2392_p2;
reg   [31:0] B_5_fu_198;
wire   [31:0] temp_15_fu_2474_p2;
wire    ap_block_pp0_stage2;
reg   [5:0] i_2_fu_202;
wire   [5:0] add_ln120_1_fu_2428_p2;
reg   [5:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage5_01001;
reg    W_4_ce0_local;
reg    W_8_ce0_local;
reg    W_12_ce0_local;
reg    W_16_ce0_local;
reg    W_20_ce0_local;
reg    W_5_ce0_local;
reg    W_9_ce0_local;
reg    W_13_ce0_local;
reg    W_17_ce0_local;
reg    W_21_ce0_local;
reg    W_6_ce0_local;
reg    W_10_ce0_local;
reg    W_14_ce0_local;
reg    W_18_ce0_local;
reg    W_22_ce0_local;
reg    W_7_ce0_local;
reg    W_11_ce0_local;
reg    W_15_ce0_local;
reg    W_19_ce0_local;
reg    W_23_ce0_local;
reg    W_24_ce0_local;
reg    W_25_ce0_local;
reg    W_26_ce0_local;
reg    W_27_ce0_local;
reg    W_28_ce0_local;
reg    W_29_ce0_local;
reg    W_30_ce0_local;
reg    W_31_ce0_local;
wire   [0:0] tmp_fu_792_p3;
wire   [5:0] add_ln120_fu_832_p2;
wire   [31:0] tmp_12_fu_844_p11;
wire   [31:0] tmp_13_fu_872_p11;
wire   [31:0] tmp_14_fu_900_p11;
wire   [31:0] tmp_15_fu_928_p11;
wire   [31:0] tmp_s_fu_968_p11;
wire   [31:0] xor_ln122_fu_995_p2;
wire   [31:0] tmp_s_fu_968_p13;
wire   [31:0] xor_ln122_1_fu_1001_p2;
wire   [1:0] trunc_ln122_1_fu_1019_p1;
wire   [29:0] lshr_ln122_1_fu_1023_p4;
wire   [31:0] tmp_1_fu_1041_p11;
wire   [31:0] tmp_2_fu_1068_p11;
wire   [31:0] tmp_3_fu_1095_p11;
wire   [31:0] tmp_4_fu_1122_p11;
wire   [31:0] tmp_5_fu_1149_p11;
wire   [31:0] tmp_6_fu_1176_p11;
wire   [31:0] tmp_7_fu_1203_p11;
wire   [31:0] tmp_8_fu_1230_p11;
wire   [31:0] tmp_9_fu_1257_p11;
wire   [31:0] tmp_10_fu_1284_p11;
wire   [31:0] tmp_11_fu_1311_p11;
wire   [26:0] trunc_ln122_fu_1341_p1;
wire   [4:0] lshr_ln4_fu_1345_p4;
wire   [31:0] or_ln1_fu_1355_p3;
wire   [31:0] add_ln122_2_fu_1363_p2;
wire   [31:0] xor_ln122_2_fu_1387_p2;
wire   [26:0] trunc_ln122_2_fu_1373_p1;
wire   [4:0] lshr_ln122_2_fu_1377_p4;
wire   [31:0] or_ln122_2_fu_1397_p3;
wire   [31:0] xor_ln122_3_fu_1392_p2;
wire   [1:0] trunc_ln122_3_fu_1416_p1;
wire   [29:0] lshr_ln122_3_fu_1420_p4;
wire   [1:0] trunc_ln122_5_fu_1438_p1;
wire   [29:0] lshr_ln122_5_fu_1442_p4;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln122_6_fu_1460_p2;
wire   [31:0] xor_ln122_4_fu_1483_p2;
wire   [26:0] trunc_ln122_4_fu_1469_p1;
wire   [4:0] lshr_ln122_4_fu_1473_p4;
wire   [31:0] or_ln122_4_fu_1492_p3;
wire   [31:0] xor_ln122_5_fu_1487_p2;
wire   [1:0] trunc_ln122_7_fu_1511_p1;
wire   [29:0] lshr_ln122_7_fu_1515_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln122_10_fu_1533_p2;
wire   [31:0] xor_ln122_6_fu_1556_p2;
wire   [26:0] trunc_ln122_6_fu_1542_p1;
wire   [4:0] lshr_ln122_6_fu_1546_p4;
wire   [31:0] or_ln122_6_fu_1565_p3;
wire   [31:0] xor_ln122_7_fu_1560_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln122_14_fu_1584_p2;
wire   [31:0] xor_ln122_8_fu_1608_p2;
wire   [26:0] trunc_ln122_8_fu_1594_p1;
wire   [4:0] lshr_ln122_8_fu_1598_p4;
wire   [31:0] or_ln122_8_fu_1617_p3;
wire   [31:0] xor_ln122_9_fu_1612_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln122_18_fu_1636_p2;
wire   [1:0] trunc_ln122_9_fu_1645_p1;
wire   [29:0] lshr_ln122_9_fu_1648_p4;
wire   [31:0] temp_4_fu_1640_p2;
wire   [31:0] xor_ln122_10_fu_1679_p2;
wire   [1:0] trunc_ln122_11_fu_1689_p1;
wire   [29:0] lshr_ln122_10_fu_1692_p4;
wire   [31:0] xor_ln122_12_fu_1709_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln122_s_fu_1735_p3;
wire   [31:0] add_ln122_21_fu_1741_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln122_20_fu_1752_p2;
wire   [31:0] temp_5_fu_1756_p2;
wire   [31:0] xor_ln122_14_fu_1781_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] or_ln122_1_fu_1806_p3;
wire   [31:0] add_ln122_25_fu_1812_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] add_ln122_24_fu_1823_p2;
wire   [1:0] trunc_ln122_17_fu_1846_p1;
wire   [29:0] lshr_ln122_16_fu_1850_p4;
wire    ap_block_pp0_stage11;
wire   [31:0] or_ln122_3_fu_1868_p3;
wire   [31:0] add_ln122_29_fu_1874_p2;
wire    ap_block_pp0_stage12;
wire   [31:0] add_ln122_28_fu_1885_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] or_ln122_5_fu_1922_p3;
wire   [31:0] add_ln122_33_fu_1928_p2;
wire    ap_block_pp0_stage14;
wire   [31:0] xor_ln122_16_fu_1945_p2;
wire   [31:0] xor_ln122_17_fu_1949_p2;
wire   [31:0] add_ln122_32_fu_1955_p2;
wire    ap_block_pp0_stage15;
wire   [31:0] or_ln122_7_fu_1993_p3;
wire   [31:0] add_ln122_37_fu_1999_p2;
wire    ap_block_pp0_stage16;
wire   [31:0] xor_ln122_18_fu_2010_p2;
wire   [31:0] xor_ln122_19_fu_2014_p2;
wire   [31:0] add_ln122_36_fu_2019_p2;
wire    ap_block_pp0_stage17;
wire   [31:0] or_ln122_9_fu_2057_p3;
wire   [31:0] add_ln122_41_fu_2063_p2;
wire    ap_block_pp0_stage18;
wire   [31:0] xor_ln122_20_fu_2080_p2;
wire   [31:0] xor_ln122_21_fu_2084_p2;
wire   [31:0] add_ln122_40_fu_2090_p2;
wire    ap_block_pp0_stage19;
wire   [31:0] or_ln122_10_fu_2128_p3;
wire   [31:0] add_ln122_45_fu_2134_p2;
wire    ap_block_pp0_stage20;
wire   [31:0] xor_ln122_22_fu_2151_p2;
wire   [31:0] xor_ln122_23_fu_2155_p2;
wire   [31:0] add_ln122_44_fu_2161_p2;
wire    ap_block_pp0_stage21;
wire   [31:0] or_ln122_11_fu_2199_p3;
wire   [31:0] add_ln122_49_fu_2205_p2;
wire    ap_block_pp0_stage22;
wire   [31:0] xor_ln122_24_fu_2222_p2;
wire   [31:0] xor_ln122_25_fu_2226_p2;
wire   [31:0] add_ln122_48_fu_2232_p2;
wire    ap_block_pp0_stage23;
wire   [31:0] or_ln122_12_fu_2270_p3;
wire   [31:0] add_ln122_53_fu_2276_p2;
wire    ap_block_pp0_stage24;
wire   [31:0] xor_ln122_26_fu_2293_p2;
wire   [31:0] xor_ln122_27_fu_2297_p2;
wire   [31:0] add_ln122_52_fu_2303_p2;
wire   [1:0] trunc_ln122_31_fu_2327_p1;
wire   [29:0] lshr_ln122_30_fu_2331_p4;
wire    ap_block_pp0_stage25;
wire   [31:0] or_ln122_13_fu_2354_p3;
wire   [31:0] add_ln122_57_fu_2360_p2;
wire    ap_block_pp0_stage26;
wire   [31:0] xor_ln122_28_fu_2377_p2;
wire   [31:0] xor_ln122_29_fu_2381_p2;
wire   [31:0] add_ln122_56_fu_2387_p2;
wire   [31:0] xor_ln122_30_fu_2417_p2;
wire   [31:0] or_ln122_14_fu_2453_p3;
wire   [31:0] add_ln122_61_fu_2459_p2;
wire   [31:0] add_ln122_60_fu_2470_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [26:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire  signed [4:0] tmp_12_fu_844_p1;
wire   [4:0] tmp_12_fu_844_p3;
wire   [4:0] tmp_12_fu_844_p5;
wire   [4:0] tmp_12_fu_844_p7;
wire  signed [4:0] tmp_12_fu_844_p9;
wire  signed [4:0] tmp_13_fu_872_p1;
wire   [4:0] tmp_13_fu_872_p3;
wire   [4:0] tmp_13_fu_872_p5;
wire   [4:0] tmp_13_fu_872_p7;
wire  signed [4:0] tmp_13_fu_872_p9;
wire  signed [4:0] tmp_14_fu_900_p1;
wire   [4:0] tmp_14_fu_900_p3;
wire   [4:0] tmp_14_fu_900_p5;
wire   [4:0] tmp_14_fu_900_p7;
wire  signed [4:0] tmp_14_fu_900_p9;
wire  signed [4:0] tmp_15_fu_928_p1;
wire   [4:0] tmp_15_fu_928_p3;
wire   [4:0] tmp_15_fu_928_p5;
wire   [4:0] tmp_15_fu_928_p7;
wire  signed [4:0] tmp_15_fu_928_p9;
wire   [4:0] tmp_s_fu_968_p1;
wire   [4:0] tmp_s_fu_968_p3;
wire   [4:0] tmp_s_fu_968_p5;
wire  signed [4:0] tmp_s_fu_968_p7;
wire  signed [4:0] tmp_s_fu_968_p9;
wire   [4:0] tmp_1_fu_1041_p1;
wire   [4:0] tmp_1_fu_1041_p3;
wire   [4:0] tmp_1_fu_1041_p5;
wire  signed [4:0] tmp_1_fu_1041_p7;
wire  signed [4:0] tmp_1_fu_1041_p9;
wire   [4:0] tmp_2_fu_1068_p1;
wire   [4:0] tmp_2_fu_1068_p3;
wire   [4:0] tmp_2_fu_1068_p5;
wire  signed [4:0] tmp_2_fu_1068_p7;
wire  signed [4:0] tmp_2_fu_1068_p9;
wire   [4:0] tmp_3_fu_1095_p1;
wire   [4:0] tmp_3_fu_1095_p3;
wire   [4:0] tmp_3_fu_1095_p5;
wire  signed [4:0] tmp_3_fu_1095_p7;
wire  signed [4:0] tmp_3_fu_1095_p9;
wire   [4:0] tmp_4_fu_1122_p1;
wire   [4:0] tmp_4_fu_1122_p3;
wire   [4:0] tmp_4_fu_1122_p5;
wire  signed [4:0] tmp_4_fu_1122_p7;
wire  signed [4:0] tmp_4_fu_1122_p9;
wire   [4:0] tmp_5_fu_1149_p1;
wire   [4:0] tmp_5_fu_1149_p3;
wire   [4:0] tmp_5_fu_1149_p5;
wire  signed [4:0] tmp_5_fu_1149_p7;
wire  signed [4:0] tmp_5_fu_1149_p9;
wire   [4:0] tmp_6_fu_1176_p1;
wire   [4:0] tmp_6_fu_1176_p3;
wire   [4:0] tmp_6_fu_1176_p5;
wire  signed [4:0] tmp_6_fu_1176_p7;
wire  signed [4:0] tmp_6_fu_1176_p9;
wire   [4:0] tmp_7_fu_1203_p1;
wire   [4:0] tmp_7_fu_1203_p3;
wire   [4:0] tmp_7_fu_1203_p5;
wire  signed [4:0] tmp_7_fu_1203_p7;
wire  signed [4:0] tmp_7_fu_1203_p9;
wire   [4:0] tmp_8_fu_1230_p1;
wire   [4:0] tmp_8_fu_1230_p3;
wire   [4:0] tmp_8_fu_1230_p5;
wire  signed [4:0] tmp_8_fu_1230_p7;
wire  signed [4:0] tmp_8_fu_1230_p9;
wire   [4:0] tmp_9_fu_1257_p1;
wire   [4:0] tmp_9_fu_1257_p3;
wire   [4:0] tmp_9_fu_1257_p5;
wire  signed [4:0] tmp_9_fu_1257_p7;
wire  signed [4:0] tmp_9_fu_1257_p9;
wire   [4:0] tmp_10_fu_1284_p1;
wire   [4:0] tmp_10_fu_1284_p3;
wire   [4:0] tmp_10_fu_1284_p5;
wire  signed [4:0] tmp_10_fu_1284_p7;
wire  signed [4:0] tmp_10_fu_1284_p9;
wire   [4:0] tmp_11_fu_1311_p1;
wire   [4:0] tmp_11_fu_1311_p3;
wire   [4:0] tmp_11_fu_1311_p5;
wire  signed [4:0] tmp_11_fu_1311_p7;
wire  signed [4:0] tmp_11_fu_1311_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 27'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_182 = 32'd0;
#0 E_5_fu_186 = 32'd0;
#0 E_6_fu_190 = 32'd0;
#0 B_fu_194 = 32'd0;
#0 B_5_fu_198 = 32'd0;
#0 i_2_fu_202 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h14 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U80(.din0(W_load_2),.din1(W_16_load_2),.din2(W_20_load_2),.din3(W_24_load_2),.din4(W_28_load_2),.def(tmp_12_fu_844_p11),.sel(trunc_ln8_fu_788_p1),.dout(tmp_12_fu_844_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h14 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U81(.din0(W_1_load_2),.din1(W_17_load_2),.din2(W_21_load_2),.din3(W_25_load_2),.din4(W_29_load_2),.def(tmp_13_fu_872_p11),.sel(trunc_ln8_fu_788_p1),.dout(tmp_13_fu_872_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h14 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U82(.din0(W_2_load_2),.din1(W_18_load_2),.din2(W_22_load_2),.din3(W_26_load_2),.din4(W_30_load_2),.def(tmp_14_fu_900_p11),.sel(trunc_ln8_fu_788_p1),.dout(tmp_14_fu_900_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h14 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U83(.din0(W_3_load_2),.din1(W_19_load_2),.din2(W_23_load_2),.din3(W_27_load_2),.din4(W_31_load_2),.def(tmp_15_fu_928_p11),.sel(trunc_ln8_fu_788_p1),.dout(tmp_15_fu_928_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U84(.din0(W_4_q0),.din1(W_8_q0),.din2(W_12_q0),.din3(W_16_q0),.din4(W_20_q0),.def(tmp_s_fu_968_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_s_fu_968_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U85(.din0(W_5_q0),.din1(W_9_q0),.din2(W_13_q0),.din3(W_17_q0),.din4(W_21_q0),.def(tmp_1_fu_1041_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_1_fu_1041_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U86(.din0(W_6_q0),.din1(W_10_q0),.din2(W_14_q0),.din3(W_18_q0),.din4(W_22_q0),.def(tmp_2_fu_1068_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_2_fu_1068_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U87(.din0(W_7_q0),.din1(W_11_q0),.din2(W_15_q0),.din3(W_19_q0),.din4(W_23_q0),.def(tmp_3_fu_1095_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_3_fu_1095_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U88(.din0(W_8_q0),.din1(W_12_q0),.din2(W_16_q0),.din3(W_20_q0),.din4(W_24_q0),.def(tmp_4_fu_1122_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_4_fu_1122_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U89(.din0(W_9_q0),.din1(W_13_q0),.din2(W_17_q0),.din3(W_21_q0),.din4(W_25_q0),.def(tmp_5_fu_1149_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_5_fu_1149_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U90(.din0(W_10_q0),.din1(W_14_q0),.din2(W_18_q0),.din3(W_22_q0),.din4(W_26_q0),.def(tmp_6_fu_1176_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_6_fu_1176_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U91(.din0(W_11_q0),.din1(W_15_q0),.din2(W_19_q0),.din3(W_23_q0),.din4(W_27_q0),.def(tmp_7_fu_1203_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_7_fu_1203_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U92(.din0(W_12_q0),.din1(W_16_q0),.din2(W_20_q0),.din3(W_24_q0),.din4(W_28_q0),.def(tmp_8_fu_1230_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_8_fu_1230_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U93(.din0(W_13_q0),.din1(W_17_q0),.din2(W_21_q0),.din3(W_25_q0),.din4(W_29_q0),.def(tmp_9_fu_1257_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_9_fu_1257_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U94(.din0(W_14_q0),.din1(W_18_q0),.din2(W_22_q0),.din3(W_26_q0),.din4(W_30_q0),.def(tmp_10_fu_1284_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_10_fu_1284_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h4 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'h10 ),.din3_WIDTH( 32 ),.CASE4( 5'h14 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U95(.din0(W_15_q0),.din1(W_19_q0),.din2(W_23_q0),.din3(W_27_q0),.din4(W_31_q0),.def(tmp_11_fu_1311_p11),.sel(trunc_ln8_reg_2531),.dout(tmp_11_fu_1311_p13));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage26_subdone) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_5_fu_198 <= A_41_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_5_fu_198 <= temp_15_fu_2474_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_194 <= B_6_reload;
    end else if (((icmp_ln120_reg_2647 == 1'd1) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        B_fu_194 <= temp_14_fu_2392_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_186 <= D_41_reload;
    end else if (((icmp_ln120_reg_2647 == 1'd1) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        E_5_fu_186 <= C_19_fu_2397_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_fu_190 <= C_40_reload;
    end else if (((icmp_ln120_reg_2647 == 1'd1) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        E_6_fu_190 <= C_4_fu_2341_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_182 <= E_6_reload;
    end else if (((icmp_ln120_reg_2647 == 1'd1) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        E_fu_182 <= C_18_fu_2371_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_202 <= 6'd20;
    end else if (((icmp_ln120_reg_2647 == 1'd1) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        i_2_fu_202 <= add_ln120_1_fu_2428_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        C_10_reg_2903 <= C_10_fu_1701_p3;
        C_9_reg_2883 <= C_9_fu_1657_p3;
        lshr_ln122_12_reg_2919 <= {{temp_4_fu_1640_p2[31:2]}};
        lshr_ln122_s_reg_2893 <= {{temp_4_fu_1640_p2[31:27]}};
        trunc_ln122_10_reg_2888 <= trunc_ln122_10_fu_1665_p1;
        trunc_ln122_13_reg_2914 <= trunc_ln122_13_fu_1721_p1;
        xor_ln122_11_reg_2898 <= xor_ln122_11_fu_1683_p2;
        xor_ln122_13_reg_2909 <= xor_ln122_13_fu_1715_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_11_reg_2939 <= C_11_fu_1775_p3;
        lshr_ln122_11_reg_2934 <= {{temp_5_fu_1756_p2[31:27]}};
        lshr_ln122_14_reg_2955 <= {{temp_5_fu_1756_p2[31:2]}};
        trunc_ln122_12_reg_2929 <= trunc_ln122_12_fu_1761_p1;
        trunc_ln122_15_reg_2950 <= trunc_ln122_15_fu_1792_p1;
        xor_ln122_15_reg_2945 <= xor_ln122_15_fu_1786_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        C_12_reg_3022 <= C_12_fu_1939_p3;
        lshr_ln122_17_reg_3038 <= {{temp_8_fu_1960_p2[31:27]}};
        lshr_ln122_20_reg_3048 <= {{temp_8_fu_1960_p2[31:2]}};
        temp_8_reg_3028 <= temp_8_fu_1960_p2;
        trunc_ln122_18_reg_3033 <= trunc_ln122_18_fu_1965_p1;
        trunc_ln122_21_reg_3043 <= trunc_ln122_21_fu_1979_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        C_13_reg_2980 <= C_13_fu_1860_p3;
        lshr_ln122_13_reg_2975 <= {{temp_6_fu_1827_p2[31:27]}};
        temp_6_reg_2965 <= temp_6_fu_1827_p2;
        trunc_ln122_14_reg_2970 <= trunc_ln122_14_fu_1832_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        C_14_reg_3088 <= C_14_fu_2074_p3;
        lshr_ln122_21_reg_3104 <= {{temp_10_fu_2095_p2[31:27]}};
        lshr_ln122_24_reg_3114 <= {{temp_10_fu_2095_p2[31:2]}};
        temp_10_reg_3094 <= temp_10_fu_2095_p2;
        trunc_ln122_22_reg_3099 <= trunc_ln122_22_fu_2100_p1;
        trunc_ln122_25_reg_3109 <= trunc_ln122_25_fu_2114_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        C_15_reg_3124 <= C_15_fu_2145_p3;
        lshr_ln122_23_reg_3140 <= {{temp_11_fu_2166_p2[31:27]}};
        lshr_ln122_26_reg_3150 <= {{temp_11_fu_2166_p2[31:2]}};
        temp_11_reg_3130 <= temp_11_fu_2166_p2;
        trunc_ln122_24_reg_3135 <= trunc_ln122_24_fu_2171_p1;
        trunc_ln122_27_reg_3145 <= trunc_ln122_27_fu_2185_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        C_16_reg_3160 <= C_16_fu_2216_p3;
        lshr_ln122_25_reg_3176 <= {{temp_12_fu_2237_p2[31:27]}};
        lshr_ln122_28_reg_3186 <= {{temp_12_fu_2237_p2[31:2]}};
        temp_12_reg_3166 <= temp_12_fu_2237_p2;
        trunc_ln122_26_reg_3171 <= trunc_ln122_26_fu_2242_p1;
        trunc_ln122_29_reg_3181 <= trunc_ln122_29_fu_2256_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        C_17_reg_3196 <= C_17_fu_2287_p3;
        lshr_ln122_27_reg_3212 <= {{temp_13_fu_2308_p2[31:27]}};
        temp_13_reg_3202 <= temp_13_fu_2308_p2;
        trunc_ln122_28_reg_3207 <= trunc_ln122_28_fu_2313_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_5_reg_2732 <= C_5_fu_1033_p3;
        C_reg_2716 <= E_6_fu_190;
        D_reg_2711 <= E_5_fu_186;
        add_ln122_1_reg_2722 <= add_ln122_1_fu_1007_p2;
        add_ln122_reg_2727 <= add_ln122_fu_1013_p2;
        tmp_10_reg_2784 <= tmp_10_fu_1284_p13;
        tmp_11_reg_2789 <= tmp_11_fu_1311_p13;
        tmp_1_reg_2739 <= tmp_1_fu_1041_p13;
        tmp_2_reg_2744 <= tmp_2_fu_1068_p13;
        tmp_3_reg_2749 <= tmp_3_fu_1095_p13;
        tmp_4_reg_2754 <= tmp_4_fu_1122_p13;
        tmp_5_reg_2759 <= tmp_5_fu_1149_p13;
        tmp_6_reg_2764 <= tmp_6_fu_1176_p13;
        tmp_7_reg_2769 <= tmp_7_fu_1203_p13;
        tmp_8_reg_2774 <= tmp_8_fu_1230_p13;
        tmp_9_reg_2779 <= tmp_9_fu_1257_p13;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_6_reg_2809 <= C_6_fu_1430_p3;
        C_7_reg_2817 <= C_7_fu_1452_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_8_reg_2840 <= C_8_fu_1525_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln122_12_reg_2861 <= add_ln122_12_fu_1578_p2;
        add_ln122_13_reg_2856 <= add_ln122_13_fu_1573_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln122_16_reg_2878 <= add_ln122_16_fu_1630_p2;
        add_ln122_17_reg_2873 <= add_ln122_17_fu_1625_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln122_22_reg_2924 <= add_ln122_22_fu_1747_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln122_26_reg_2960 <= add_ln122_26_fu_1818_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln122_30_reg_2987 <= add_ln122_30_fu_1880_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln122_34_reg_3017 <= add_ln122_34_fu_1934_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add_ln122_38_reg_3053 <= add_ln122_38_fu_2005_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        add_ln122_42_reg_3083 <= add_ln122_42_fu_2069_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        add_ln122_46_reg_3119 <= add_ln122_46_fu_2140_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln122_4_reg_2804 <= add_ln122_4_fu_1410_p2;
        add_ln122_5_reg_2799 <= add_ln122_5_fu_1405_p2;
        temp_reg_2794 <= temp_fu_1368_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        add_ln122_50_reg_3155 <= add_ln122_50_fu_2211_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        add_ln122_54_reg_3191 <= add_ln122_54_fu_2282_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        add_ln122_58_reg_3217 <= add_ln122_58_fu_2366_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln122_62_reg_3237 <= add_ln122_62_fu_2465_p2;
        i_reg_2526 <= ap_sig_allocacmp_i;
        icmp_ln120_reg_2647 <= icmp_ln120_fu_838_p2;
        tmp_12_reg_2691 <= tmp_12_fu_844_p13;
        tmp_13_reg_2696 <= tmp_13_fu_872_p13;
        tmp_14_reg_2701 <= tmp_14_fu_900_p13;
        tmp_15_reg_2706 <= tmp_15_fu_928_p13;
        tmp_15_reg_2706_pp0_iter1_reg <= tmp_15_reg_2706;
        trunc_ln8_reg_2531 <= trunc_ln8_fu_788_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln122_8_reg_2835 <= add_ln122_8_fu_1505_p2;
        add_ln122_9_reg_2830 <= add_ln122_9_fu_1500_p2;
        temp_1_reg_2825 <= temp_1_fu_1464_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        lshr_ln122_15_reg_3002 <= {{temp_7_fu_1889_p2[31:27]}};
        lshr_ln122_18_reg_3012 <= {{temp_7_fu_1889_p2[31:2]}};
        temp_7_reg_2992 <= temp_7_fu_1889_p2;
        trunc_ln122_16_reg_2997 <= trunc_ln122_16_fu_1894_p1;
        trunc_ln122_19_reg_3007 <= trunc_ln122_19_fu_1908_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        lshr_ln122_19_reg_3068 <= {{temp_9_fu_2024_p2[31:27]}};
        lshr_ln122_22_reg_3078 <= {{temp_9_fu_2024_p2[31:2]}};
        temp_9_reg_3058 <= temp_9_fu_2024_p2;
        trunc_ln122_20_reg_3063 <= trunc_ln122_20_fu_2029_p1;
        trunc_ln122_23_reg_3073 <= trunc_ln122_23_fu_2043_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        lshr_ln122_29_reg_3227 <= {{temp_14_fu_2392_p2[31:27]}};
        trunc_ln122_30_reg_3222 <= trunc_ln122_30_fu_2403_p1;
        xor_ln122_31_reg_3232 <= xor_ln122_31_fu_2422_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        temp_2_reg_2848 <= temp_2_fu_1537_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        temp_3_reg_2866 <= temp_3_fu_1588_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_2647 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_36_out_ap_vld = 1'b1;
    end else begin
        A_36_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_2647 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_23_out_ap_vld = 1'b1;
    end else begin
        B_23_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_2647 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_35_out_ap_vld = 1'b1;
    end else begin
        C_35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_2647 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        D_36_out_ap_vld = 1'b1;
    end else begin
        D_36_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_2647 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_23_out_ap_vld = 1'b1;
    end else begin
        E_23_out_ap_vld = 1'b0;
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
        W_16_ce0_local = 1'b1;
    end else begin
        W_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_17_ce0_local = 1'b1;
    end else begin
        W_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_18_ce0_local = 1'b1;
    end else begin
        W_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_19_ce0_local = 1'b1;
    end else begin
        W_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_20_ce0_local = 1'b1;
    end else begin
        W_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_21_ce0_local = 1'b1;
    end else begin
        W_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_22_ce0_local = 1'b1;
    end else begin
        W_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_23_ce0_local = 1'b1;
    end else begin
        W_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_24_ce0_local = 1'b1;
    end else begin
        W_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_25_ce0_local = 1'b1;
    end else begin
        W_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_26_ce0_local = 1'b1;
    end else begin
        W_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_27_ce0_local = 1'b1;
    end else begin
        W_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_28_ce0_local = 1'b1;
    end else begin
        W_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_29_ce0_local = 1'b1;
    end else begin
        W_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_30_ce0_local = 1'b1;
    end else begin
        W_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_31_ce0_local = 1'b1;
    end else begin
        W_31_ce0_local = 1'b0;
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
    if (((icmp_ln120_reg_2647 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage26_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 6'd20;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_202;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_36_out = temp_3_fu_1588_p2;
assign B_23_out = temp_2_reg_2848;
assign C_10_fu_1701_p3 = {{trunc_ln122_11_fu_1689_p1}, {lshr_ln122_10_fu_1692_p4}};
assign C_11_fu_1775_p3 = {{trunc_ln122_13_reg_2914}, {lshr_ln122_12_reg_2919}};
assign C_12_fu_1939_p3 = {{trunc_ln122_15_reg_2950}, {lshr_ln122_14_reg_2955}};
assign C_13_fu_1860_p3 = {{trunc_ln122_17_fu_1846_p1}, {lshr_ln122_16_fu_1850_p4}};
assign C_14_fu_2074_p3 = {{trunc_ln122_19_reg_3007}, {lshr_ln122_18_reg_3012}};
assign C_15_fu_2145_p3 = {{trunc_ln122_21_reg_3043}, {lshr_ln122_20_reg_3048}};
assign C_16_fu_2216_p3 = {{trunc_ln122_23_reg_3073}, {lshr_ln122_22_reg_3078}};
assign C_17_fu_2287_p3 = {{trunc_ln122_25_reg_3109}, {lshr_ln122_24_reg_3114}};
assign C_18_fu_2371_p3 = {{trunc_ln122_27_reg_3145}, {lshr_ln122_26_reg_3150}};
assign C_19_fu_2397_p3 = {{trunc_ln122_29_reg_3181}, {lshr_ln122_28_reg_3186}};
assign C_35_out = C_8_reg_2840;
assign C_4_fu_2341_p3 = {{trunc_ln122_31_fu_2327_p1}, {lshr_ln122_30_fu_2331_p4}};
assign C_5_fu_1033_p3 = {{trunc_ln122_1_fu_1019_p1}, {lshr_ln122_1_fu_1023_p4}};
assign C_6_fu_1430_p3 = {{trunc_ln122_3_fu_1416_p1}, {lshr_ln122_3_fu_1420_p4}};
assign C_7_fu_1452_p3 = {{trunc_ln122_5_fu_1438_p1}, {lshr_ln122_5_fu_1442_p4}};
assign C_8_fu_1525_p3 = {{trunc_ln122_7_fu_1511_p1}, {lshr_ln122_7_fu_1515_p4}};
assign C_9_fu_1657_p3 = {{trunc_ln122_9_fu_1645_p1}, {lshr_ln122_9_fu_1648_p4}};
assign D_36_out = C_7_reg_2817;
assign E_23_out = C_6_reg_2809;
assign W_10_address0 = zext_ln100_fu_800_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_800_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_800_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_800_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_800_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_800_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_16_address0 = zext_ln100_fu_800_p1;
assign W_16_ce0 = W_16_ce0_local;
assign W_17_address0 = zext_ln100_fu_800_p1;
assign W_17_ce0 = W_17_ce0_local;
assign W_18_address0 = zext_ln100_fu_800_p1;
assign W_18_ce0 = W_18_ce0_local;
assign W_19_address0 = zext_ln100_fu_800_p1;
assign W_19_ce0 = W_19_ce0_local;
assign W_20_address0 = zext_ln100_fu_800_p1;
assign W_20_ce0 = W_20_ce0_local;
assign W_21_address0 = zext_ln100_fu_800_p1;
assign W_21_ce0 = W_21_ce0_local;
assign W_22_address0 = zext_ln100_fu_800_p1;
assign W_22_ce0 = W_22_ce0_local;
assign W_23_address0 = zext_ln100_fu_800_p1;
assign W_23_ce0 = W_23_ce0_local;
assign W_24_address0 = zext_ln100_fu_800_p1;
assign W_24_ce0 = W_24_ce0_local;
assign W_25_address0 = zext_ln100_fu_800_p1;
assign W_25_ce0 = W_25_ce0_local;
assign W_26_address0 = zext_ln100_fu_800_p1;
assign W_26_ce0 = W_26_ce0_local;
assign W_27_address0 = zext_ln100_fu_800_p1;
assign W_27_ce0 = W_27_ce0_local;
assign W_28_address0 = zext_ln100_fu_800_p1;
assign W_28_ce0 = W_28_ce0_local;
assign W_29_address0 = zext_ln100_fu_800_p1;
assign W_29_ce0 = W_29_ce0_local;
assign W_30_address0 = zext_ln100_fu_800_p1;
assign W_30_ce0 = W_30_ce0_local;
assign W_31_address0 = zext_ln100_fu_800_p1;
assign W_31_ce0 = W_31_ce0_local;
assign W_4_address0 = zext_ln100_fu_800_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_800_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_800_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_800_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_800_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_800_p1;
assign W_9_ce0 = W_9_ce0_local;
assign add_ln120_1_fu_2428_p2 = (i_reg_2526 + 6'd16);
assign add_ln120_fu_832_p2 = (ap_sig_allocacmp_i + 6'd4);
assign add_ln122_10_fu_1533_p2 = (add_ln122_9_reg_2830 + C_reg_2716);
assign add_ln122_12_fu_1578_p2 = (or_ln122_6_fu_1565_p3 + xor_ln122_7_fu_1560_p2);
assign add_ln122_13_fu_1573_p2 = (tmp_3_reg_2749 + 32'd1859775393);
assign add_ln122_14_fu_1584_p2 = (add_ln122_13_reg_2856 + C_5_reg_2732);
assign add_ln122_16_fu_1630_p2 = (or_ln122_8_fu_1617_p3 + xor_ln122_9_fu_1612_p2);
assign add_ln122_17_fu_1625_p2 = (tmp_4_reg_2754 + 32'd1859775393);
assign add_ln122_18_fu_1636_p2 = (add_ln122_17_reg_2873 + C_6_reg_2809);
assign add_ln122_1_fu_1007_p2 = (tmp_s_fu_968_p13 + 32'd1859775393);
assign add_ln122_20_fu_1752_p2 = (tmp_5_reg_2759 + xor_ln122_11_reg_2898);
assign add_ln122_21_fu_1741_p2 = (or_ln122_s_fu_1735_p3 + 32'd1859775393);
assign add_ln122_22_fu_1747_p2 = (add_ln122_21_fu_1741_p2 + C_7_reg_2817);
assign add_ln122_24_fu_1823_p2 = (tmp_6_reg_2764 + xor_ln122_13_reg_2909);
assign add_ln122_25_fu_1812_p2 = (or_ln122_1_fu_1806_p3 + 32'd1859775393);
assign add_ln122_26_fu_1818_p2 = (add_ln122_25_fu_1812_p2 + C_8_reg_2840);
assign add_ln122_28_fu_1885_p2 = (tmp_7_reg_2769 + xor_ln122_15_reg_2945);
assign add_ln122_29_fu_1874_p2 = (or_ln122_3_fu_1868_p3 + 32'd1859775393);
assign add_ln122_2_fu_1363_p2 = (add_ln122_1_reg_2722 + or_ln1_fu_1355_p3);
assign add_ln122_30_fu_1880_p2 = (add_ln122_29_fu_1874_p2 + C_9_reg_2883);
assign add_ln122_32_fu_1955_p2 = (tmp_8_reg_2774 + xor_ln122_17_fu_1949_p2);
assign add_ln122_33_fu_1928_p2 = (or_ln122_5_fu_1922_p3 + 32'd1859775393);
assign add_ln122_34_fu_1934_p2 = (add_ln122_33_fu_1928_p2 + C_10_reg_2903);
assign add_ln122_36_fu_2019_p2 = (tmp_9_reg_2779 + xor_ln122_19_fu_2014_p2);
assign add_ln122_37_fu_1999_p2 = (or_ln122_7_fu_1993_p3 + 32'd1859775393);
assign add_ln122_38_fu_2005_p2 = (add_ln122_37_fu_1999_p2 + C_11_reg_2939);
assign add_ln122_40_fu_2090_p2 = (tmp_10_reg_2784 + xor_ln122_21_fu_2084_p2);
assign add_ln122_41_fu_2063_p2 = (or_ln122_9_fu_2057_p3 + 32'd1859775393);
assign add_ln122_42_fu_2069_p2 = (add_ln122_41_fu_2063_p2 + C_12_reg_3022);
assign add_ln122_44_fu_2161_p2 = (tmp_11_reg_2789 + xor_ln122_23_fu_2155_p2);
assign add_ln122_45_fu_2134_p2 = (or_ln122_10_fu_2128_p3 + 32'd1859775393);
assign add_ln122_46_fu_2140_p2 = (add_ln122_45_fu_2134_p2 + C_13_reg_2980);
assign add_ln122_48_fu_2232_p2 = (tmp_12_reg_2691 + xor_ln122_25_fu_2226_p2);
assign add_ln122_49_fu_2205_p2 = (or_ln122_11_fu_2199_p3 + 32'd1859775393);
assign add_ln122_4_fu_1410_p2 = (or_ln122_2_fu_1397_p3 + xor_ln122_3_fu_1392_p2);
assign add_ln122_50_fu_2211_p2 = (add_ln122_49_fu_2205_p2 + C_14_reg_3088);
assign add_ln122_52_fu_2303_p2 = (xor_ln122_27_fu_2297_p2 + tmp_13_reg_2696);
assign add_ln122_53_fu_2276_p2 = (or_ln122_12_fu_2270_p3 + 32'd1859775393);
assign add_ln122_54_fu_2282_p2 = (add_ln122_53_fu_2276_p2 + C_15_reg_3124);
assign add_ln122_56_fu_2387_p2 = (xor_ln122_29_fu_2381_p2 + tmp_14_reg_2701);
assign add_ln122_57_fu_2360_p2 = (or_ln122_13_fu_2354_p3 + 32'd1859775393);
assign add_ln122_58_fu_2366_p2 = (add_ln122_57_fu_2360_p2 + C_16_reg_3160);
assign add_ln122_5_fu_1405_p2 = (tmp_1_reg_2739 + 32'd1859775393);
assign add_ln122_60_fu_2470_p2 = (C_17_reg_3196 + tmp_15_reg_2706_pp0_iter1_reg);
assign add_ln122_61_fu_2459_p2 = (or_ln122_14_fu_2453_p3 + 32'd1859775393);
assign add_ln122_62_fu_2465_p2 = (add_ln122_61_fu_2459_p2 + xor_ln122_31_reg_3232);
assign add_ln122_6_fu_1460_p2 = (add_ln122_5_reg_2799 + D_reg_2711);
assign add_ln122_8_fu_1505_p2 = (or_ln122_4_fu_1492_p3 + xor_ln122_5_fu_1487_p2);
assign add_ln122_9_fu_1500_p2 = (tmp_2_reg_2744 + 32'd1859775393);
assign add_ln122_fu_1013_p2 = (xor_ln122_1_fu_1001_p2 + E_fu_182);
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
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_01001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign icmp_ln120_fu_838_p2 = ((add_ln120_fu_832_p2 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln122_10_fu_1692_p4 = {{temp_3_reg_2866[31:2]}};
assign lshr_ln122_16_fu_1850_p4 = {{temp_6_fu_1827_p2[31:2]}};
assign lshr_ln122_1_fu_1023_p4 = {{B_fu_194[31:2]}};
assign lshr_ln122_2_fu_1377_p4 = {{temp_fu_1368_p2[31:27]}};
assign lshr_ln122_30_fu_2331_p4 = {{temp_13_fu_2308_p2[31:2]}};
assign lshr_ln122_3_fu_1420_p4 = {{B_5_fu_198[31:2]}};
assign lshr_ln122_4_fu_1473_p4 = {{temp_1_fu_1464_p2[31:27]}};
assign lshr_ln122_5_fu_1442_p4 = {{temp_fu_1368_p2[31:2]}};
assign lshr_ln122_6_fu_1546_p4 = {{temp_2_fu_1537_p2[31:27]}};
assign lshr_ln122_7_fu_1515_p4 = {{temp_1_fu_1464_p2[31:2]}};
assign lshr_ln122_8_fu_1598_p4 = {{temp_3_fu_1588_p2[31:27]}};
assign lshr_ln122_9_fu_1648_p4 = {{temp_2_reg_2848[31:2]}};
assign lshr_ln4_fu_1345_p4 = {{B_5_fu_198[31:27]}};
assign or_ln122_10_fu_2128_p3 = {{trunc_ln122_22_reg_3099}, {lshr_ln122_21_reg_3104}};
assign or_ln122_11_fu_2199_p3 = {{trunc_ln122_24_reg_3135}, {lshr_ln122_23_reg_3140}};
assign or_ln122_12_fu_2270_p3 = {{trunc_ln122_26_reg_3171}, {lshr_ln122_25_reg_3176}};
assign or_ln122_13_fu_2354_p3 = {{trunc_ln122_28_reg_3207}, {lshr_ln122_27_reg_3212}};
assign or_ln122_14_fu_2453_p3 = {{trunc_ln122_30_reg_3222}, {lshr_ln122_29_reg_3227}};
assign or_ln122_1_fu_1806_p3 = {{trunc_ln122_12_reg_2929}, {lshr_ln122_11_reg_2934}};
assign or_ln122_2_fu_1397_p3 = {{trunc_ln122_2_fu_1373_p1}, {lshr_ln122_2_fu_1377_p4}};
assign or_ln122_3_fu_1868_p3 = {{trunc_ln122_14_reg_2970}, {lshr_ln122_13_reg_2975}};
assign or_ln122_4_fu_1492_p3 = {{trunc_ln122_4_fu_1469_p1}, {lshr_ln122_4_fu_1473_p4}};
assign or_ln122_5_fu_1922_p3 = {{trunc_ln122_16_reg_2997}, {lshr_ln122_15_reg_3002}};
assign or_ln122_6_fu_1565_p3 = {{trunc_ln122_6_fu_1542_p1}, {lshr_ln122_6_fu_1546_p4}};
assign or_ln122_7_fu_1993_p3 = {{trunc_ln122_18_reg_3033}, {lshr_ln122_17_reg_3038}};
assign or_ln122_8_fu_1617_p3 = {{trunc_ln122_8_fu_1594_p1}, {lshr_ln122_8_fu_1598_p4}};
assign or_ln122_9_fu_2057_p3 = {{trunc_ln122_20_reg_3063}, {lshr_ln122_19_reg_3068}};
assign or_ln122_s_fu_1735_p3 = {{trunc_ln122_10_reg_2888}, {lshr_ln122_s_reg_2893}};
assign or_ln1_fu_1355_p3 = {{trunc_ln122_fu_1341_p1}, {lshr_ln4_fu_1345_p4}};
assign temp_10_fu_2095_p2 = (add_ln122_42_reg_3083 + add_ln122_40_fu_2090_p2);
assign temp_11_fu_2166_p2 = (add_ln122_46_reg_3119 + add_ln122_44_fu_2161_p2);
assign temp_12_fu_2237_p2 = (add_ln122_50_reg_3155 + add_ln122_48_fu_2232_p2);
assign temp_13_fu_2308_p2 = (add_ln122_54_reg_3191 + add_ln122_52_fu_2303_p2);
assign temp_14_fu_2392_p2 = (add_ln122_58_reg_3217 + add_ln122_56_fu_2387_p2);
assign temp_15_fu_2474_p2 = (add_ln122_62_reg_3237 + add_ln122_60_fu_2470_p2);
assign temp_1_fu_1464_p2 = (add_ln122_4_reg_2804 + add_ln122_6_fu_1460_p2);
assign temp_2_fu_1537_p2 = (add_ln122_8_reg_2835 + add_ln122_10_fu_1533_p2);
assign temp_3_fu_1588_p2 = (add_ln122_12_reg_2861 + add_ln122_14_fu_1584_p2);
assign temp_4_fu_1640_p2 = (add_ln122_16_reg_2878 + add_ln122_18_fu_1636_p2);
assign temp_5_fu_1756_p2 = (add_ln122_22_reg_2924 + add_ln122_20_fu_1752_p2);
assign temp_6_fu_1827_p2 = (add_ln122_26_reg_2960 + add_ln122_24_fu_1823_p2);
assign temp_7_fu_1889_p2 = (add_ln122_30_reg_2987 + add_ln122_28_fu_1885_p2);
assign temp_8_fu_1960_p2 = (add_ln122_34_reg_3017 + add_ln122_32_fu_1955_p2);
assign temp_9_fu_2024_p2 = (add_ln122_38_reg_3053 + add_ln122_36_fu_2019_p2);
assign temp_fu_1368_p2 = (add_ln122_reg_2727 + add_ln122_2_fu_1363_p2);
assign tmp_10_fu_1284_p11 = 'bx;
assign tmp_11_fu_1311_p11 = 'bx;
assign tmp_12_fu_844_p11 = 'bx;
assign tmp_13_fu_872_p11 = 'bx;
assign tmp_14_fu_900_p11 = 'bx;
assign tmp_15_fu_928_p11 = 'bx;
assign tmp_1_fu_1041_p11 = 'bx;
assign tmp_2_fu_1068_p11 = 'bx;
assign tmp_3_fu_1095_p11 = 'bx;
assign tmp_4_fu_1122_p11 = 'bx;
assign tmp_5_fu_1149_p11 = 'bx;
assign tmp_6_fu_1176_p11 = 'bx;
assign tmp_7_fu_1203_p11 = 'bx;
assign tmp_8_fu_1230_p11 = 'bx;
assign tmp_9_fu_1257_p11 = 'bx;
assign tmp_fu_792_p3 = ap_sig_allocacmp_i[32'd5];
assign tmp_s_fu_968_p11 = 'bx;
assign trunc_ln122_10_fu_1665_p1 = temp_4_fu_1640_p2[26:0];
assign trunc_ln122_11_fu_1689_p1 = temp_3_reg_2866[1:0];
assign trunc_ln122_12_fu_1761_p1 = temp_5_fu_1756_p2[26:0];
assign trunc_ln122_13_fu_1721_p1 = temp_4_fu_1640_p2[1:0];
assign trunc_ln122_14_fu_1832_p1 = temp_6_fu_1827_p2[26:0];
assign trunc_ln122_15_fu_1792_p1 = temp_5_fu_1756_p2[1:0];
assign trunc_ln122_16_fu_1894_p1 = temp_7_fu_1889_p2[26:0];
assign trunc_ln122_17_fu_1846_p1 = temp_6_fu_1827_p2[1:0];
assign trunc_ln122_18_fu_1965_p1 = temp_8_fu_1960_p2[26:0];
assign trunc_ln122_19_fu_1908_p1 = temp_7_fu_1889_p2[1:0];
assign trunc_ln122_1_fu_1019_p1 = B_fu_194[1:0];
assign trunc_ln122_20_fu_2029_p1 = temp_9_fu_2024_p2[26:0];
assign trunc_ln122_21_fu_1979_p1 = temp_8_fu_1960_p2[1:0];
assign trunc_ln122_22_fu_2100_p1 = temp_10_fu_2095_p2[26:0];
assign trunc_ln122_23_fu_2043_p1 = temp_9_fu_2024_p2[1:0];
assign trunc_ln122_24_fu_2171_p1 = temp_11_fu_2166_p2[26:0];
assign trunc_ln122_25_fu_2114_p1 = temp_10_fu_2095_p2[1:0];
assign trunc_ln122_26_fu_2242_p1 = temp_12_fu_2237_p2[26:0];
assign trunc_ln122_27_fu_2185_p1 = temp_11_fu_2166_p2[1:0];
assign trunc_ln122_28_fu_2313_p1 = temp_13_fu_2308_p2[26:0];
assign trunc_ln122_29_fu_2256_p1 = temp_12_fu_2237_p2[1:0];
assign trunc_ln122_2_fu_1373_p1 = temp_fu_1368_p2[26:0];
assign trunc_ln122_30_fu_2403_p1 = temp_14_fu_2392_p2[26:0];
assign trunc_ln122_31_fu_2327_p1 = temp_13_fu_2308_p2[1:0];
assign trunc_ln122_3_fu_1416_p1 = B_5_fu_198[1:0];
assign trunc_ln122_4_fu_1469_p1 = temp_1_fu_1464_p2[26:0];
assign trunc_ln122_5_fu_1438_p1 = temp_fu_1368_p2[1:0];
assign trunc_ln122_6_fu_1542_p1 = temp_2_fu_1537_p2[26:0];
assign trunc_ln122_7_fu_1511_p1 = temp_1_fu_1464_p2[1:0];
assign trunc_ln122_8_fu_1594_p1 = temp_3_fu_1588_p2[26:0];
assign trunc_ln122_9_fu_1645_p1 = temp_2_reg_2848[1:0];
assign trunc_ln122_fu_1341_p1 = B_5_fu_198[26:0];
assign trunc_ln8_fu_788_p1 = ap_sig_allocacmp_i[4:0];
assign xor_ln122_10_fu_1679_p2 = (temp_3_reg_2866 ^ C_8_reg_2840);
assign xor_ln122_11_fu_1683_p2 = (xor_ln122_10_fu_1679_p2 ^ C_9_fu_1657_p3);
assign xor_ln122_12_fu_1709_p2 = (temp_4_fu_1640_p2 ^ C_9_fu_1657_p3);
assign xor_ln122_13_fu_1715_p2 = (xor_ln122_12_fu_1709_p2 ^ C_10_fu_1701_p3);
assign xor_ln122_14_fu_1781_p2 = (temp_5_fu_1756_p2 ^ C_10_reg_2903);
assign xor_ln122_15_fu_1786_p2 = (xor_ln122_14_fu_1781_p2 ^ C_11_fu_1775_p3);
assign xor_ln122_16_fu_1945_p2 = (temp_6_reg_2965 ^ C_11_reg_2939);
assign xor_ln122_17_fu_1949_p2 = (xor_ln122_16_fu_1945_p2 ^ C_12_fu_1939_p3);
assign xor_ln122_18_fu_2010_p2 = (temp_7_reg_2992 ^ C_12_reg_3022);
assign xor_ln122_19_fu_2014_p2 = (xor_ln122_18_fu_2010_p2 ^ C_13_reg_2980);
assign xor_ln122_1_fu_1001_p2 = (xor_ln122_fu_995_p2 ^ E_6_fu_190);
assign xor_ln122_20_fu_2080_p2 = (temp_8_reg_3028 ^ C_13_reg_2980);
assign xor_ln122_21_fu_2084_p2 = (xor_ln122_20_fu_2080_p2 ^ C_14_fu_2074_p3);
assign xor_ln122_22_fu_2151_p2 = (temp_9_reg_3058 ^ C_14_reg_3088);
assign xor_ln122_23_fu_2155_p2 = (xor_ln122_22_fu_2151_p2 ^ C_15_fu_2145_p3);
assign xor_ln122_24_fu_2222_p2 = (temp_10_reg_3094 ^ C_15_reg_3124);
assign xor_ln122_25_fu_2226_p2 = (xor_ln122_24_fu_2222_p2 ^ C_16_fu_2216_p3);
assign xor_ln122_26_fu_2293_p2 = (temp_11_reg_3130 ^ C_16_reg_3160);
assign xor_ln122_27_fu_2297_p2 = (xor_ln122_26_fu_2293_p2 ^ C_17_fu_2287_p3);
assign xor_ln122_28_fu_2377_p2 = (temp_12_reg_3166 ^ C_17_reg_3196);
assign xor_ln122_29_fu_2381_p2 = (xor_ln122_28_fu_2377_p2 ^ C_18_fu_2371_p3);
assign xor_ln122_2_fu_1387_p2 = (C_5_reg_2732 ^ B_5_fu_198);
assign xor_ln122_30_fu_2417_p2 = (temp_13_reg_3202 ^ C_18_fu_2371_p3);
assign xor_ln122_31_fu_2422_p2 = (xor_ln122_30_fu_2417_p2 ^ C_19_fu_2397_p3);
assign xor_ln122_3_fu_1392_p2 = (xor_ln122_2_fu_1387_p2 ^ C_reg_2716);
assign xor_ln122_4_fu_1483_p2 = (temp_reg_2794 ^ C_6_reg_2809);
assign xor_ln122_5_fu_1487_p2 = (xor_ln122_4_fu_1483_p2 ^ C_5_reg_2732);
assign xor_ln122_6_fu_1556_p2 = (temp_1_reg_2825 ^ C_6_reg_2809);
assign xor_ln122_7_fu_1560_p2 = (xor_ln122_6_fu_1556_p2 ^ C_7_reg_2817);
assign xor_ln122_8_fu_1608_p2 = (temp_2_reg_2848 ^ C_7_reg_2817);
assign xor_ln122_9_fu_1612_p2 = (xor_ln122_8_fu_1608_p2 ^ C_8_reg_2840);
assign xor_ln122_fu_995_p2 = (E_5_fu_186 ^ B_fu_194);
assign zext_ln100_fu_800_p1 = tmp_fu_792_p3;
endmodule 