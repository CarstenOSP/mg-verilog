module Gsm_LPC_Analysis_Autocorrelation_17_18_Pipeline_autocol_lp1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,s_0_load,s_32_load,s_64_load,s_96_load,s_128_load,s_1_load,s_33_load,s_65_load,s_97_load,s_129_load,s_2_load,s_34_load,s_66_load,s_98_load,s_130_load,s_3_load,s_35_load,s_67_load,s_99_load,s_131_load,s_4_load,s_36_load,s_68_load,s_100_load,s_132_load,s_5_load,s_37_load,s_69_load,s_101_load,s_133_load,s_6_load,s_38_load,s_70_load,s_102_load,s_134_load,s_7_load,s_39_load,s_71_load,s_103_load,s_135_load,s_8_load,s_40_load,s_72_load,s_104_load,s_136_load,s_9_load,s_41_load,s_73_load,s_105_load,s_137_load,s_10_load,s_42_load,s_74_load,s_106_load,s_138_load,s_11_load,s_43_load,s_75_load,s_107_load,s_139_load,s_12_load,s_44_load,s_76_load,s_108_load,s_140_load,s_13_load,s_45_load,s_77_load,s_109_load,s_141_load,s_14_load,s_46_load,s_78_load,s_110_load,s_142_load,s_15_load,s_47_load,s_79_load,s_111_load,s_143_load,s_16_load,s_48_load,s_80_load,s_112_load,s_144_load,s_17_load,s_49_load,s_81_load,s_113_load,s_145_load,s_18_load,s_50_load,s_82_load,s_114_load,s_146_load,s_19_load,s_51_load,s_83_load,s_115_load,s_147_load,s_20_load,s_52_load,s_84_load,s_116_load,s_148_load,s_21_load,s_53_load,s_85_load,s_117_load,s_149_load,s_22_load,s_54_load,s_86_load,s_118_load,s_150_load,s_23_load,s_55_load,s_87_load,s_119_load,s_151_load,s_24_load,s_56_load,s_88_load,s_120_load,s_152_load,s_25_load,s_57_load,s_89_load,s_121_load,s_153_load,s_26_load,s_58_load,s_90_load,s_122_load,s_154_load,s_27_load,s_59_load,s_91_load,s_123_load,s_155_load,s_28_load,s_60_load,s_92_load,s_124_load,s_156_load,s_29_load,s_61_load,s_93_load,s_125_load,s_157_load,s_30_load,s_62_load,s_94_load,s_126_load,s_158_load,s_31_load,s_63_load,s_95_load,s_127_load,s_159_load,smax_out,smax_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] s_0_load;
input  [15:0] s_32_load;
input  [15:0] s_64_load;
input  [15:0] s_96_load;
input  [15:0] s_128_load;
input  [15:0] s_1_load;
input  [15:0] s_33_load;
input  [15:0] s_65_load;
input  [15:0] s_97_load;
input  [15:0] s_129_load;
input  [15:0] s_2_load;
input  [15:0] s_34_load;
input  [15:0] s_66_load;
input  [15:0] s_98_load;
input  [15:0] s_130_load;
input  [15:0] s_3_load;
input  [15:0] s_35_load;
input  [15:0] s_67_load;
input  [15:0] s_99_load;
input  [15:0] s_131_load;
input  [15:0] s_4_load;
input  [15:0] s_36_load;
input  [15:0] s_68_load;
input  [15:0] s_100_load;
input  [15:0] s_132_load;
input  [15:0] s_5_load;
input  [15:0] s_37_load;
input  [15:0] s_69_load;
input  [15:0] s_101_load;
input  [15:0] s_133_load;
input  [15:0] s_6_load;
input  [15:0] s_38_load;
input  [15:0] s_70_load;
input  [15:0] s_102_load;
input  [15:0] s_134_load;
input  [15:0] s_7_load;
input  [15:0] s_39_load;
input  [15:0] s_71_load;
input  [15:0] s_103_load;
input  [15:0] s_135_load;
input  [15:0] s_8_load;
input  [15:0] s_40_load;
input  [15:0] s_72_load;
input  [15:0] s_104_load;
input  [15:0] s_136_load;
input  [15:0] s_9_load;
input  [15:0] s_41_load;
input  [15:0] s_73_load;
input  [15:0] s_105_load;
input  [15:0] s_137_load;
input  [15:0] s_10_load;
input  [15:0] s_42_load;
input  [15:0] s_74_load;
input  [15:0] s_106_load;
input  [15:0] s_138_load;
input  [15:0] s_11_load;
input  [15:0] s_43_load;
input  [15:0] s_75_load;
input  [15:0] s_107_load;
input  [15:0] s_139_load;
input  [15:0] s_12_load;
input  [15:0] s_44_load;
input  [15:0] s_76_load;
input  [15:0] s_108_load;
input  [15:0] s_140_load;
input  [15:0] s_13_load;
input  [15:0] s_45_load;
input  [15:0] s_77_load;
input  [15:0] s_109_load;
input  [15:0] s_141_load;
input  [15:0] s_14_load;
input  [15:0] s_46_load;
input  [15:0] s_78_load;
input  [15:0] s_110_load;
input  [15:0] s_142_load;
input  [15:0] s_15_load;
input  [15:0] s_47_load;
input  [15:0] s_79_load;
input  [15:0] s_111_load;
input  [15:0] s_143_load;
input  [15:0] s_16_load;
input  [15:0] s_48_load;
input  [15:0] s_80_load;
input  [15:0] s_112_load;
input  [15:0] s_144_load;
input  [15:0] s_17_load;
input  [15:0] s_49_load;
input  [15:0] s_81_load;
input  [15:0] s_113_load;
input  [15:0] s_145_load;
input  [15:0] s_18_load;
input  [15:0] s_50_load;
input  [15:0] s_82_load;
input  [15:0] s_114_load;
input  [15:0] s_146_load;
input  [15:0] s_19_load;
input  [15:0] s_51_load;
input  [15:0] s_83_load;
input  [15:0] s_115_load;
input  [15:0] s_147_load;
input  [15:0] s_20_load;
input  [15:0] s_52_load;
input  [15:0] s_84_load;
input  [15:0] s_116_load;
input  [15:0] s_148_load;
input  [15:0] s_21_load;
input  [15:0] s_53_load;
input  [15:0] s_85_load;
input  [15:0] s_117_load;
input  [15:0] s_149_load;
input  [15:0] s_22_load;
input  [15:0] s_54_load;
input  [15:0] s_86_load;
input  [15:0] s_118_load;
input  [15:0] s_150_load;
input  [15:0] s_23_load;
input  [15:0] s_55_load;
input  [15:0] s_87_load;
input  [15:0] s_119_load;
input  [15:0] s_151_load;
input  [15:0] s_24_load;
input  [15:0] s_56_load;
input  [15:0] s_88_load;
input  [15:0] s_120_load;
input  [15:0] s_152_load;
input  [15:0] s_25_load;
input  [15:0] s_57_load;
input  [15:0] s_89_load;
input  [15:0] s_121_load;
input  [15:0] s_153_load;
input  [15:0] s_26_load;
input  [15:0] s_58_load;
input  [15:0] s_90_load;
input  [15:0] s_122_load;
input  [15:0] s_154_load;
input  [15:0] s_27_load;
input  [15:0] s_59_load;
input  [15:0] s_91_load;
input  [15:0] s_123_load;
input  [15:0] s_155_load;
input  [15:0] s_28_load;
input  [15:0] s_60_load;
input  [15:0] s_92_load;
input  [15:0] s_124_load;
input  [15:0] s_156_load;
input  [15:0] s_29_load;
input  [15:0] s_61_load;
input  [15:0] s_93_load;
input  [15:0] s_125_load;
input  [15:0] s_157_load;
input  [15:0] s_30_load;
input  [15:0] s_62_load;
input  [15:0] s_94_load;
input  [15:0] s_126_load;
input  [15:0] s_158_load;
input  [15:0] s_31_load;
input  [15:0] s_63_load;
input  [15:0] s_95_load;
input  [15:0] s_127_load;
input  [15:0] s_159_load;
output  [15:0] smax_out;
output   smax_out_ap_vld;
reg ap_idle;
reg smax_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln55_reg_2736;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire   [15:0] grp_gsm_abs_fu_1339_ap_return;
reg   [15:0] reg_1349;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_11001;
wire   [15:0] grp_gsm_abs_fu_1344_ap_return;
reg   [15:0] reg_1353;
reg   [15:0] reg_1357;
reg   [7:0] k_3_reg_2731;
wire   [0:0] icmp_ln55_fu_1374_p2;
wire   [15:0] tmp_2_fu_1438_p13;
reg   [15:0] tmp_2_reg_2740;
wire   [15:0] tmp_3_fu_1466_p13;
reg   [15:0] tmp_3_reg_2745;
wire   [15:0] tmp_4_fu_1494_p13;
reg   [15:0] tmp_4_reg_2750;
wire   [15:0] tmp_5_fu_1522_p13;
reg   [15:0] tmp_5_reg_2755;
wire   [15:0] tmp_6_fu_1550_p13;
reg   [15:0] tmp_6_reg_2760;
wire   [15:0] tmp_7_fu_1578_p13;
reg   [15:0] tmp_7_reg_2765;
wire   [15:0] tmp_8_fu_1606_p13;
reg   [15:0] tmp_8_reg_2770;
wire   [15:0] tmp_9_fu_1634_p13;
reg   [15:0] tmp_9_reg_2775;
wire   [15:0] tmp_10_fu_1662_p13;
reg   [15:0] tmp_10_reg_2780;
wire   [15:0] tmp_11_fu_1690_p13;
reg   [15:0] tmp_11_reg_2785;
wire   [15:0] tmp_12_fu_1718_p13;
reg   [15:0] tmp_12_reg_2790;
wire   [15:0] tmp_13_fu_1746_p13;
reg   [15:0] tmp_13_reg_2795;
wire   [15:0] tmp_14_fu_1774_p13;
reg   [15:0] tmp_14_reg_2800;
wire   [15:0] tmp_15_fu_1802_p13;
reg   [15:0] tmp_15_reg_2805;
wire   [15:0] tmp_16_fu_1830_p13;
reg   [15:0] tmp_16_reg_2810;
wire   [15:0] tmp_17_fu_1858_p13;
reg   [15:0] tmp_17_reg_2815;
wire   [15:0] tmp_18_fu_1886_p13;
reg   [15:0] tmp_18_reg_2820;
wire   [15:0] tmp_19_fu_1914_p13;
reg   [15:0] tmp_19_reg_2825;
wire   [15:0] tmp_20_fu_1942_p13;
reg   [15:0] tmp_20_reg_2830;
wire   [15:0] tmp_21_fu_1970_p13;
reg   [15:0] tmp_21_reg_2835;
wire   [15:0] tmp_22_fu_1998_p13;
reg   [15:0] tmp_22_reg_2840;
wire   [15:0] tmp_23_fu_2026_p13;
reg   [15:0] tmp_23_reg_2845;
wire   [15:0] tmp_24_fu_2054_p13;
reg   [15:0] tmp_24_reg_2850;
wire   [15:0] tmp_25_fu_2082_p13;
reg   [15:0] tmp_25_reg_2855;
wire   [15:0] tmp_26_fu_2110_p13;
reg   [15:0] tmp_26_reg_2860;
wire   [15:0] tmp_27_fu_2138_p13;
reg   [15:0] tmp_27_reg_2865;
wire   [15:0] tmp_28_fu_2166_p13;
reg   [15:0] tmp_28_reg_2870;
wire   [15:0] tmp_29_fu_2194_p13;
reg   [15:0] tmp_29_reg_2875;
wire   [15:0] tmp_30_fu_2222_p13;
reg   [15:0] tmp_30_reg_2880;
wire   [15:0] tmp_31_fu_2250_p13;
reg   [15:0] tmp_31_reg_2885;
wire   [15:0] smax_1_fu_2287_p3;
reg   [15:0] smax_1_reg_2890;
wire   [15:0] smax_4_fu_2313_p3;
reg   [15:0] smax_4_reg_2896;
wire   [15:0] smax_7_fu_2339_p3;
reg   [15:0] smax_7_reg_2902;
wire   [15:0] smax_10_fu_2365_p3;
reg   [15:0] smax_10_reg_2908;
wire   [15:0] smax_13_fu_2391_p3;
reg   [15:0] smax_13_reg_2914;
wire   [15:0] smax_16_fu_2417_p3;
reg   [15:0] smax_16_reg_2920;
wire   [15:0] smax_19_fu_2443_p3;
reg   [15:0] smax_19_reg_2926;
wire   [15:0] smax_22_fu_2469_p3;
reg   [15:0] smax_22_reg_2932;
wire   [15:0] smax_25_fu_2495_p3;
reg   [15:0] smax_25_reg_2938;
wire   [15:0] smax_28_fu_2521_p3;
reg   [15:0] smax_28_reg_2944;
wire   [15:0] smax_31_fu_2547_p3;
reg   [15:0] smax_31_reg_2950;
wire   [15:0] smax_34_fu_2573_p3;
reg   [15:0] smax_34_reg_2956;
wire   [15:0] smax_37_fu_2599_p3;
reg   [15:0] smax_37_reg_2962;
wire   [15:0] smax_40_fu_2625_p3;
reg   [15:0] smax_40_reg_2968;
wire   [15:0] smax_43_fu_2651_p3;
reg   [15:0] smax_43_reg_2974;
wire   [15:0] smax_46_fu_2687_p3;
reg   [15:0] smax_46_reg_2980;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_gsm_abs_fu_1339_ap_ready;
reg   [15:0] grp_gsm_abs_fu_1339_a;
wire    grp_gsm_abs_fu_1344_ap_ready;
reg   [15:0] grp_gsm_abs_fu_1344_a;
wire   [15:0] tmp_s_fu_1380_p13;
wire    ap_block_pp0_stage0_ignoreCallOp190;
wire    ap_block_pp0_stage1_ignoreCallOp226;
wire    ap_block_pp0_stage2_ignoreCallOp232;
wire    ap_block_pp0_stage3_ignoreCallOp238;
wire    ap_block_pp0_stage4_ignoreCallOp244;
wire    ap_block_pp0_stage5_ignoreCallOp250;
wire    ap_block_pp0_stage6_ignoreCallOp256;
wire    ap_block_pp0_stage7_ignoreCallOp262;
wire    ap_block_pp0_stage8_ignoreCallOp268;
wire    ap_block_pp0_stage9_ignoreCallOp274;
wire    ap_block_pp0_stage10_ignoreCallOp280;
wire    ap_block_pp0_stage11_ignoreCallOp286;
wire    ap_block_pp0_stage12_ignoreCallOp292;
wire    ap_block_pp0_stage13_ignoreCallOp298;
wire    ap_block_pp0_stage14_ignoreCallOp304;
wire    ap_block_pp0_stage15_ignoreCallOp310;
wire   [15:0] tmp_1_fu_1409_p13;
wire    ap_block_pp0_stage0_ignoreCallOp192;
wire    ap_block_pp0_stage1_ignoreCallOp227;
wire    ap_block_pp0_stage2_ignoreCallOp233;
wire    ap_block_pp0_stage3_ignoreCallOp239;
wire    ap_block_pp0_stage4_ignoreCallOp245;
wire    ap_block_pp0_stage5_ignoreCallOp251;
wire    ap_block_pp0_stage6_ignoreCallOp257;
wire    ap_block_pp0_stage7_ignoreCallOp263;
wire    ap_block_pp0_stage8_ignoreCallOp269;
wire    ap_block_pp0_stage9_ignoreCallOp275;
wire    ap_block_pp0_stage10_ignoreCallOp281;
wire    ap_block_pp0_stage11_ignoreCallOp287;
wire    ap_block_pp0_stage12_ignoreCallOp293;
wire    ap_block_pp0_stage13_ignoreCallOp299;
wire    ap_block_pp0_stage14_ignoreCallOp305;
wire    ap_block_pp0_stage15_ignoreCallOp311;
reg   [15:0] smax_fu_364;
wire   [15:0] smax_48_fu_2700_p3;
reg   [15:0] ap_sig_allocacmp_smax_load_1;
wire    ap_block_pp0_stage1;
wire    ap_loop_init;
reg   [7:0] k_fu_368;
wire   [7:0] add_ln55_fu_2659_p2;
reg   [7:0] ap_sig_allocacmp_k_3;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1_01001;
wire   [15:0] tmp_s_fu_1380_p11;
wire   [15:0] tmp_1_fu_1409_p11;
wire   [15:0] tmp_2_fu_1438_p11;
wire   [15:0] tmp_3_fu_1466_p11;
wire   [15:0] tmp_4_fu_1494_p11;
wire   [15:0] tmp_5_fu_1522_p11;
wire   [15:0] tmp_6_fu_1550_p11;
wire   [15:0] tmp_7_fu_1578_p11;
wire   [15:0] tmp_8_fu_1606_p11;
wire   [15:0] tmp_9_fu_1634_p11;
wire   [15:0] tmp_10_fu_1662_p11;
wire   [15:0] tmp_11_fu_1690_p11;
wire   [15:0] tmp_12_fu_1718_p11;
wire   [15:0] tmp_13_fu_1746_p11;
wire   [15:0] tmp_14_fu_1774_p11;
wire   [15:0] tmp_15_fu_1802_p11;
wire   [15:0] tmp_16_fu_1830_p11;
wire   [15:0] tmp_17_fu_1858_p11;
wire   [15:0] tmp_18_fu_1886_p11;
wire   [15:0] tmp_19_fu_1914_p11;
wire   [15:0] tmp_20_fu_1942_p11;
wire   [15:0] tmp_21_fu_1970_p11;
wire   [15:0] tmp_22_fu_1998_p11;
wire   [15:0] tmp_23_fu_2026_p11;
wire   [15:0] tmp_24_fu_2054_p11;
wire   [15:0] tmp_25_fu_2082_p11;
wire   [15:0] tmp_26_fu_2110_p11;
wire   [15:0] tmp_27_fu_2138_p11;
wire   [15:0] tmp_28_fu_2166_p11;
wire   [15:0] tmp_29_fu_2194_p11;
wire   [15:0] tmp_30_fu_2222_p11;
wire   [15:0] tmp_31_fu_2250_p11;
wire   [0:0] icmp_ln58_fu_2281_p2;
wire    ap_block_pp0_stage2;
wire   [0:0] icmp_ln58_1_fu_2295_p2;
wire   [15:0] smax_3_fu_2300_p3;
wire   [0:0] icmp_ln58_2_fu_2307_p2;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln58_3_fu_2321_p2;
wire   [15:0] smax_6_fu_2326_p3;
wire   [0:0] icmp_ln58_4_fu_2333_p2;
wire    ap_block_pp0_stage4;
wire   [0:0] icmp_ln58_5_fu_2347_p2;
wire   [15:0] smax_9_fu_2352_p3;
wire   [0:0] icmp_ln58_6_fu_2359_p2;
wire    ap_block_pp0_stage5;
wire   [0:0] icmp_ln58_7_fu_2373_p2;
wire   [15:0] smax_12_fu_2378_p3;
wire   [0:0] icmp_ln58_8_fu_2385_p2;
wire    ap_block_pp0_stage6;
wire   [0:0] icmp_ln58_9_fu_2399_p2;
wire   [15:0] smax_15_fu_2404_p3;
wire   [0:0] icmp_ln58_10_fu_2411_p2;
wire    ap_block_pp0_stage7;
wire   [0:0] icmp_ln58_11_fu_2425_p2;
wire   [15:0] smax_18_fu_2430_p3;
wire   [0:0] icmp_ln58_12_fu_2437_p2;
wire    ap_block_pp0_stage8;
wire   [0:0] icmp_ln58_13_fu_2451_p2;
wire   [15:0] smax_21_fu_2456_p3;
wire   [0:0] icmp_ln58_14_fu_2463_p2;
wire    ap_block_pp0_stage9;
wire   [0:0] icmp_ln58_15_fu_2477_p2;
wire   [15:0] smax_24_fu_2482_p3;
wire   [0:0] icmp_ln58_16_fu_2489_p2;
wire    ap_block_pp0_stage10;
wire   [0:0] icmp_ln58_17_fu_2503_p2;
wire   [15:0] smax_27_fu_2508_p3;
wire   [0:0] icmp_ln58_18_fu_2515_p2;
wire    ap_block_pp0_stage11;
wire   [0:0] icmp_ln58_19_fu_2529_p2;
wire   [15:0] smax_30_fu_2534_p3;
wire   [0:0] icmp_ln58_20_fu_2541_p2;
wire    ap_block_pp0_stage12;
wire   [0:0] icmp_ln58_21_fu_2555_p2;
wire   [15:0] smax_33_fu_2560_p3;
wire   [0:0] icmp_ln58_22_fu_2567_p2;
wire    ap_block_pp0_stage13;
wire   [0:0] icmp_ln58_23_fu_2581_p2;
wire   [15:0] smax_36_fu_2586_p3;
wire   [0:0] icmp_ln58_24_fu_2593_p2;
wire    ap_block_pp0_stage14;
wire   [0:0] icmp_ln58_25_fu_2607_p2;
wire   [15:0] smax_39_fu_2612_p3;
wire   [0:0] icmp_ln58_26_fu_2619_p2;
wire    ap_block_pp0_stage15;
wire   [0:0] icmp_ln58_27_fu_2633_p2;
wire   [15:0] smax_42_fu_2638_p3;
wire   [0:0] icmp_ln58_28_fu_2645_p2;
wire   [0:0] icmp_ln58_29_fu_2669_p2;
wire   [15:0] smax_45_fu_2674_p3;
wire   [0:0] icmp_ln58_30_fu_2681_p2;
wire   [0:0] icmp_ln58_31_fu_2695_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1773;
reg    ap_condition_1777;
reg    ap_condition_1781;
reg    ap_condition_1785;
reg    ap_condition_1789;
reg    ap_condition_1793;
reg    ap_condition_1797;
reg    ap_condition_1801;
reg    ap_condition_1805;
reg    ap_condition_1809;
reg    ap_condition_1813;
reg    ap_condition_1817;
reg    ap_condition_1821;
reg    ap_condition_1825;
reg    ap_condition_1829;
reg    ap_condition_1833;
reg    ap_condition_1837;
reg    ap_condition_1841;
reg    ap_condition_1845;
reg    ap_condition_1849;
reg    ap_condition_1853;
reg    ap_condition_1857;
reg    ap_condition_1861;
reg    ap_condition_1865;
reg    ap_condition_1869;
reg    ap_condition_1873;
reg    ap_condition_1877;
reg    ap_condition_1881;
reg    ap_condition_1885;
reg    ap_condition_1889;
reg    ap_condition_1893;
reg    ap_condition_1897;
wire   [7:0] tmp_s_fu_1380_p1;
wire   [7:0] tmp_s_fu_1380_p3;
wire   [7:0] tmp_s_fu_1380_p5;
wire   [7:0] tmp_s_fu_1380_p7;
wire  signed [7:0] tmp_s_fu_1380_p9;
wire   [7:0] tmp_1_fu_1409_p1;
wire   [7:0] tmp_1_fu_1409_p3;
wire   [7:0] tmp_1_fu_1409_p5;
wire   [7:0] tmp_1_fu_1409_p7;
wire  signed [7:0] tmp_1_fu_1409_p9;
wire   [7:0] tmp_2_fu_1438_p1;
wire   [7:0] tmp_2_fu_1438_p3;
wire   [7:0] tmp_2_fu_1438_p5;
wire   [7:0] tmp_2_fu_1438_p7;
wire  signed [7:0] tmp_2_fu_1438_p9;
wire   [7:0] tmp_3_fu_1466_p1;
wire   [7:0] tmp_3_fu_1466_p3;
wire   [7:0] tmp_3_fu_1466_p5;
wire   [7:0] tmp_3_fu_1466_p7;
wire  signed [7:0] tmp_3_fu_1466_p9;
wire   [7:0] tmp_4_fu_1494_p1;
wire   [7:0] tmp_4_fu_1494_p3;
wire   [7:0] tmp_4_fu_1494_p5;
wire   [7:0] tmp_4_fu_1494_p7;
wire  signed [7:0] tmp_4_fu_1494_p9;
wire   [7:0] tmp_5_fu_1522_p1;
wire   [7:0] tmp_5_fu_1522_p3;
wire   [7:0] tmp_5_fu_1522_p5;
wire   [7:0] tmp_5_fu_1522_p7;
wire  signed [7:0] tmp_5_fu_1522_p9;
wire   [7:0] tmp_6_fu_1550_p1;
wire   [7:0] tmp_6_fu_1550_p3;
wire   [7:0] tmp_6_fu_1550_p5;
wire   [7:0] tmp_6_fu_1550_p7;
wire  signed [7:0] tmp_6_fu_1550_p9;
wire   [7:0] tmp_7_fu_1578_p1;
wire   [7:0] tmp_7_fu_1578_p3;
wire   [7:0] tmp_7_fu_1578_p5;
wire   [7:0] tmp_7_fu_1578_p7;
wire  signed [7:0] tmp_7_fu_1578_p9;
wire   [7:0] tmp_8_fu_1606_p1;
wire   [7:0] tmp_8_fu_1606_p3;
wire   [7:0] tmp_8_fu_1606_p5;
wire   [7:0] tmp_8_fu_1606_p7;
wire  signed [7:0] tmp_8_fu_1606_p9;
wire   [7:0] tmp_9_fu_1634_p1;
wire   [7:0] tmp_9_fu_1634_p3;
wire   [7:0] tmp_9_fu_1634_p5;
wire   [7:0] tmp_9_fu_1634_p7;
wire  signed [7:0] tmp_9_fu_1634_p9;
wire   [7:0] tmp_10_fu_1662_p1;
wire   [7:0] tmp_10_fu_1662_p3;
wire   [7:0] tmp_10_fu_1662_p5;
wire   [7:0] tmp_10_fu_1662_p7;
wire  signed [7:0] tmp_10_fu_1662_p9;
wire   [7:0] tmp_11_fu_1690_p1;
wire   [7:0] tmp_11_fu_1690_p3;
wire   [7:0] tmp_11_fu_1690_p5;
wire   [7:0] tmp_11_fu_1690_p7;
wire  signed [7:0] tmp_11_fu_1690_p9;
wire   [7:0] tmp_12_fu_1718_p1;
wire   [7:0] tmp_12_fu_1718_p3;
wire   [7:0] tmp_12_fu_1718_p5;
wire   [7:0] tmp_12_fu_1718_p7;
wire  signed [7:0] tmp_12_fu_1718_p9;
wire   [7:0] tmp_13_fu_1746_p1;
wire   [7:0] tmp_13_fu_1746_p3;
wire   [7:0] tmp_13_fu_1746_p5;
wire   [7:0] tmp_13_fu_1746_p7;
wire  signed [7:0] tmp_13_fu_1746_p9;
wire   [7:0] tmp_14_fu_1774_p1;
wire   [7:0] tmp_14_fu_1774_p3;
wire   [7:0] tmp_14_fu_1774_p5;
wire   [7:0] tmp_14_fu_1774_p7;
wire  signed [7:0] tmp_14_fu_1774_p9;
wire   [7:0] tmp_15_fu_1802_p1;
wire   [7:0] tmp_15_fu_1802_p3;
wire   [7:0] tmp_15_fu_1802_p5;
wire   [7:0] tmp_15_fu_1802_p7;
wire  signed [7:0] tmp_15_fu_1802_p9;
wire   [7:0] tmp_16_fu_1830_p1;
wire   [7:0] tmp_16_fu_1830_p3;
wire   [7:0] tmp_16_fu_1830_p5;
wire   [7:0] tmp_16_fu_1830_p7;
wire  signed [7:0] tmp_16_fu_1830_p9;
wire   [7:0] tmp_17_fu_1858_p1;
wire   [7:0] tmp_17_fu_1858_p3;
wire   [7:0] tmp_17_fu_1858_p5;
wire   [7:0] tmp_17_fu_1858_p7;
wire  signed [7:0] tmp_17_fu_1858_p9;
wire   [7:0] tmp_18_fu_1886_p1;
wire   [7:0] tmp_18_fu_1886_p3;
wire   [7:0] tmp_18_fu_1886_p5;
wire   [7:0] tmp_18_fu_1886_p7;
wire  signed [7:0] tmp_18_fu_1886_p9;
wire   [7:0] tmp_19_fu_1914_p1;
wire   [7:0] tmp_19_fu_1914_p3;
wire   [7:0] tmp_19_fu_1914_p5;
wire   [7:0] tmp_19_fu_1914_p7;
wire  signed [7:0] tmp_19_fu_1914_p9;
wire   [7:0] tmp_20_fu_1942_p1;
wire   [7:0] tmp_20_fu_1942_p3;
wire   [7:0] tmp_20_fu_1942_p5;
wire   [7:0] tmp_20_fu_1942_p7;
wire  signed [7:0] tmp_20_fu_1942_p9;
wire   [7:0] tmp_21_fu_1970_p1;
wire   [7:0] tmp_21_fu_1970_p3;
wire   [7:0] tmp_21_fu_1970_p5;
wire   [7:0] tmp_21_fu_1970_p7;
wire  signed [7:0] tmp_21_fu_1970_p9;
wire   [7:0] tmp_22_fu_1998_p1;
wire   [7:0] tmp_22_fu_1998_p3;
wire   [7:0] tmp_22_fu_1998_p5;
wire   [7:0] tmp_22_fu_1998_p7;
wire  signed [7:0] tmp_22_fu_1998_p9;
wire   [7:0] tmp_23_fu_2026_p1;
wire   [7:0] tmp_23_fu_2026_p3;
wire   [7:0] tmp_23_fu_2026_p5;
wire   [7:0] tmp_23_fu_2026_p7;
wire  signed [7:0] tmp_23_fu_2026_p9;
wire   [7:0] tmp_24_fu_2054_p1;
wire   [7:0] tmp_24_fu_2054_p3;
wire   [7:0] tmp_24_fu_2054_p5;
wire   [7:0] tmp_24_fu_2054_p7;
wire  signed [7:0] tmp_24_fu_2054_p9;
wire   [7:0] tmp_25_fu_2082_p1;
wire   [7:0] tmp_25_fu_2082_p3;
wire   [7:0] tmp_25_fu_2082_p5;
wire   [7:0] tmp_25_fu_2082_p7;
wire  signed [7:0] tmp_25_fu_2082_p9;
wire   [7:0] tmp_26_fu_2110_p1;
wire   [7:0] tmp_26_fu_2110_p3;
wire   [7:0] tmp_26_fu_2110_p5;
wire   [7:0] tmp_26_fu_2110_p7;
wire  signed [7:0] tmp_26_fu_2110_p9;
wire   [7:0] tmp_27_fu_2138_p1;
wire   [7:0] tmp_27_fu_2138_p3;
wire   [7:0] tmp_27_fu_2138_p5;
wire   [7:0] tmp_27_fu_2138_p7;
wire  signed [7:0] tmp_27_fu_2138_p9;
wire   [7:0] tmp_28_fu_2166_p1;
wire   [7:0] tmp_28_fu_2166_p3;
wire   [7:0] tmp_28_fu_2166_p5;
wire   [7:0] tmp_28_fu_2166_p7;
wire  signed [7:0] tmp_28_fu_2166_p9;
wire   [7:0] tmp_29_fu_2194_p1;
wire   [7:0] tmp_29_fu_2194_p3;
wire   [7:0] tmp_29_fu_2194_p5;
wire   [7:0] tmp_29_fu_2194_p7;
wire  signed [7:0] tmp_29_fu_2194_p9;
wire   [7:0] tmp_30_fu_2222_p1;
wire   [7:0] tmp_30_fu_2222_p3;
wire   [7:0] tmp_30_fu_2222_p5;
wire   [7:0] tmp_30_fu_2222_p7;
wire  signed [7:0] tmp_30_fu_2222_p9;
wire   [7:0] tmp_31_fu_2250_p1;
wire   [7:0] tmp_31_fu_2250_p3;
wire   [7:0] tmp_31_fu_2250_p5;
wire   [7:0] tmp_31_fu_2250_p7;
wire  signed [7:0] tmp_31_fu_2250_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 smax_fu_364 = 16'd0;
#0 k_fu_368 = 8'd0;
#0 ap_done_reg = 1'b0;
end
Gsm_LPC_Analysis_gsm_abs grp_gsm_abs_fu_1339(.ap_ready(grp_gsm_abs_fu_1339_ap_ready),.a(grp_gsm_abs_fu_1339_a),.ap_return(grp_gsm_abs_fu_1339_ap_return),.ap_rst(ap_rst));
Gsm_LPC_Analysis_gsm_abs grp_gsm_abs_fu_1344(.ap_ready(grp_gsm_abs_fu_1344_ap_ready),.a(grp_gsm_abs_fu_1344_a),.ap_return(grp_gsm_abs_fu_1344_ap_return),.ap_rst(ap_rst));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U2(.din0(s_0_load),.din1(s_32_load),.din2(s_64_load),.din3(s_96_load),.din4(s_128_load),.def(tmp_s_fu_1380_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_s_fu_1380_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U3(.din0(s_1_load),.din1(s_33_load),.din2(s_65_load),.din3(s_97_load),.din4(s_129_load),.def(tmp_1_fu_1409_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_1_fu_1409_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U4(.din0(s_2_load),.din1(s_34_load),.din2(s_66_load),.din3(s_98_load),.din4(s_130_load),.def(tmp_2_fu_1438_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_2_fu_1438_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U5(.din0(s_3_load),.din1(s_35_load),.din2(s_67_load),.din3(s_99_load),.din4(s_131_load),.def(tmp_3_fu_1466_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_3_fu_1466_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U6(.din0(s_4_load),.din1(s_36_load),.din2(s_68_load),.din3(s_100_load),.din4(s_132_load),.def(tmp_4_fu_1494_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_4_fu_1494_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U7(.din0(s_5_load),.din1(s_37_load),.din2(s_69_load),.din3(s_101_load),.din4(s_133_load),.def(tmp_5_fu_1522_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_5_fu_1522_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U8(.din0(s_6_load),.din1(s_38_load),.din2(s_70_load),.din3(s_102_load),.din4(s_134_load),.def(tmp_6_fu_1550_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_6_fu_1550_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U9(.din0(s_7_load),.din1(s_39_load),.din2(s_71_load),.din3(s_103_load),.din4(s_135_load),.def(tmp_7_fu_1578_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_7_fu_1578_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U10(.din0(s_8_load),.din1(s_40_load),.din2(s_72_load),.din3(s_104_load),.din4(s_136_load),.def(tmp_8_fu_1606_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_8_fu_1606_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U11(.din0(s_9_load),.din1(s_41_load),.din2(s_73_load),.din3(s_105_load),.din4(s_137_load),.def(tmp_9_fu_1634_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_9_fu_1634_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U12(.din0(s_10_load),.din1(s_42_load),.din2(s_74_load),.din3(s_106_load),.din4(s_138_load),.def(tmp_10_fu_1662_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_10_fu_1662_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U13(.din0(s_11_load),.din1(s_43_load),.din2(s_75_load),.din3(s_107_load),.din4(s_139_load),.def(tmp_11_fu_1690_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_11_fu_1690_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U14(.din0(s_12_load),.din1(s_44_load),.din2(s_76_load),.din3(s_108_load),.din4(s_140_load),.def(tmp_12_fu_1718_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_12_fu_1718_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U15(.din0(s_13_load),.din1(s_45_load),.din2(s_77_load),.din3(s_109_load),.din4(s_141_load),.def(tmp_13_fu_1746_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_13_fu_1746_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U16(.din0(s_14_load),.din1(s_46_load),.din2(s_78_load),.din3(s_110_load),.din4(s_142_load),.def(tmp_14_fu_1774_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_14_fu_1774_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U17(.din0(s_15_load),.din1(s_47_load),.din2(s_79_load),.din3(s_111_load),.din4(s_143_load),.def(tmp_15_fu_1802_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_15_fu_1802_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U18(.din0(s_16_load),.din1(s_48_load),.din2(s_80_load),.din3(s_112_load),.din4(s_144_load),.def(tmp_16_fu_1830_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_16_fu_1830_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U19(.din0(s_17_load),.din1(s_49_load),.din2(s_81_load),.din3(s_113_load),.din4(s_145_load),.def(tmp_17_fu_1858_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_17_fu_1858_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U20(.din0(s_18_load),.din1(s_50_load),.din2(s_82_load),.din3(s_114_load),.din4(s_146_load),.def(tmp_18_fu_1886_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_18_fu_1886_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U21(.din0(s_19_load),.din1(s_51_load),.din2(s_83_load),.din3(s_115_load),.din4(s_147_load),.def(tmp_19_fu_1914_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_19_fu_1914_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U22(.din0(s_20_load),.din1(s_52_load),.din2(s_84_load),.din3(s_116_load),.din4(s_148_load),.def(tmp_20_fu_1942_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_20_fu_1942_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U23(.din0(s_21_load),.din1(s_53_load),.din2(s_85_load),.din3(s_117_load),.din4(s_149_load),.def(tmp_21_fu_1970_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_21_fu_1970_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U24(.din0(s_22_load),.din1(s_54_load),.din2(s_86_load),.din3(s_118_load),.din4(s_150_load),.def(tmp_22_fu_1998_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_22_fu_1998_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U25(.din0(s_23_load),.din1(s_55_load),.din2(s_87_load),.din3(s_119_load),.din4(s_151_load),.def(tmp_23_fu_2026_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_23_fu_2026_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U26(.din0(s_24_load),.din1(s_56_load),.din2(s_88_load),.din3(s_120_load),.din4(s_152_load),.def(tmp_24_fu_2054_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_24_fu_2054_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U27(.din0(s_25_load),.din1(s_57_load),.din2(s_89_load),.din3(s_121_load),.din4(s_153_load),.def(tmp_25_fu_2082_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_25_fu_2082_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U28(.din0(s_26_load),.din1(s_58_load),.din2(s_90_load),.din3(s_122_load),.din4(s_154_load),.def(tmp_26_fu_2110_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_26_fu_2110_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U29(.din0(s_27_load),.din1(s_59_load),.din2(s_91_load),.din3(s_123_load),.din4(s_155_load),.def(tmp_27_fu_2138_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_27_fu_2138_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U30(.din0(s_28_load),.din1(s_60_load),.din2(s_92_load),.din3(s_124_load),.din4(s_156_load),.def(tmp_28_fu_2166_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_28_fu_2166_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U31(.din0(s_29_load),.din1(s_61_load),.din2(s_93_load),.din3(s_125_load),.din4(s_157_load),.def(tmp_29_fu_2194_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_29_fu_2194_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U32(.din0(s_30_load),.din1(s_62_load),.din2(s_94_load),.din3(s_126_load),.din4(s_158_load),.def(tmp_30_fu_2222_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_30_fu_2222_p13));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h20 ),.din1_WIDTH( 16 ),.CASE2( 8'h40 ),.din2_WIDTH( 16 ),.CASE3( 8'h60 ),.din3_WIDTH( 16 ),.CASE4( 8'h80 ),.din4_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_11_8_16_1_1_U33(.din0(s_31_load),.din1(s_63_load),.din2(s_95_load),.din3(s_127_load),.din4(s_159_load),.def(tmp_31_fu_2250_p11),.sel(ap_sig_allocacmp_k_3),.dout(tmp_31_fu_2250_p13));
Gsm_LPC_Analysis_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_368 <= 8'd0;
    end else if (((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        k_fu_368 <= add_ln55_fu_2659_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smax_fu_364 <= 16'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smax_fu_364 <= smax_48_fu_2700_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln55_reg_2736 <= icmp_ln55_fu_1374_p2;
        k_3_reg_2731 <= ap_sig_allocacmp_k_3;
        smax_46_reg_2980 <= smax_46_fu_2687_p3;
        tmp_10_reg_2780 <= tmp_10_fu_1662_p13;
        tmp_11_reg_2785 <= tmp_11_fu_1690_p13;
        tmp_12_reg_2790 <= tmp_12_fu_1718_p13;
        tmp_13_reg_2795 <= tmp_13_fu_1746_p13;
        tmp_14_reg_2800 <= tmp_14_fu_1774_p13;
        tmp_15_reg_2805 <= tmp_15_fu_1802_p13;
        tmp_16_reg_2810 <= tmp_16_fu_1830_p13;
        tmp_17_reg_2815 <= tmp_17_fu_1858_p13;
        tmp_18_reg_2820 <= tmp_18_fu_1886_p13;
        tmp_19_reg_2825 <= tmp_19_fu_1914_p13;
        tmp_20_reg_2830 <= tmp_20_fu_1942_p13;
        tmp_21_reg_2835 <= tmp_21_fu_1970_p13;
        tmp_22_reg_2840 <= tmp_22_fu_1998_p13;
        tmp_23_reg_2845 <= tmp_23_fu_2026_p13;
        tmp_24_reg_2850 <= tmp_24_fu_2054_p13;
        tmp_25_reg_2855 <= tmp_25_fu_2082_p13;
        tmp_26_reg_2860 <= tmp_26_fu_2110_p13;
        tmp_27_reg_2865 <= tmp_27_fu_2138_p13;
        tmp_28_reg_2870 <= tmp_28_fu_2166_p13;
        tmp_29_reg_2875 <= tmp_29_fu_2194_p13;
        tmp_2_reg_2740 <= tmp_2_fu_1438_p13;
        tmp_30_reg_2880 <= tmp_30_fu_2222_p13;
        tmp_31_reg_2885 <= tmp_31_fu_2250_p13;
        tmp_3_reg_2745 <= tmp_3_fu_1466_p13;
        tmp_4_reg_2750 <= tmp_4_fu_1494_p13;
        tmp_5_reg_2755 <= tmp_5_fu_1522_p13;
        tmp_6_reg_2760 <= tmp_6_fu_1550_p13;
        tmp_7_reg_2765 <= tmp_7_fu_1578_p13;
        tmp_8_reg_2770 <= tmp_8_fu_1606_p13;
        tmp_9_reg_2775 <= tmp_9_fu_1634_p13;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1349 <= grp_gsm_abs_fu_1339_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1353 <= grp_gsm_abs_fu_1344_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1357 <= grp_gsm_abs_fu_1344_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smax_10_reg_2908 <= smax_10_fu_2365_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smax_13_reg_2914 <= smax_13_fu_2391_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smax_16_reg_2920 <= smax_16_fu_2417_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smax_19_reg_2926 <= smax_19_fu_2443_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smax_1_reg_2890 <= smax_1_fu_2287_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smax_22_reg_2932 <= smax_22_fu_2469_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smax_25_reg_2938 <= smax_25_fu_2495_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smax_28_reg_2944 <= smax_28_fu_2521_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smax_31_reg_2950 <= smax_31_fu_2547_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smax_34_reg_2956 <= smax_34_fu_2573_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smax_37_reg_2962 <= smax_37_fu_2599_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smax_40_reg_2968 <= smax_40_fu_2625_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smax_43_reg_2974 <= smax_43_fu_2651_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smax_4_reg_2896 <= smax_4_fu_2313_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smax_7_reg_2902 <= smax_7_fu_2339_p3;
    end
end
always @ (*) begin
    if (((icmp_ln55_reg_2736 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_3 = 8'd0;
    end else begin
        ap_sig_allocacmp_k_3 = k_fu_368;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_smax_load_1 = smax_48_fu_2700_p3;
    end else begin
        ap_sig_allocacmp_smax_load_1 = smax_fu_364;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1833)) begin
            grp_gsm_abs_fu_1339_a = tmp_30_reg_2880;
        end else if ((1'b1 == ap_condition_1829)) begin
            grp_gsm_abs_fu_1339_a = tmp_28_reg_2870;
        end else if ((1'b1 == ap_condition_1825)) begin
            grp_gsm_abs_fu_1339_a = tmp_26_reg_2860;
        end else if ((1'b1 == ap_condition_1821)) begin
            grp_gsm_abs_fu_1339_a = tmp_24_reg_2850;
        end else if ((1'b1 == ap_condition_1817)) begin
            grp_gsm_abs_fu_1339_a = tmp_22_reg_2840;
        end else if ((1'b1 == ap_condition_1813)) begin
            grp_gsm_abs_fu_1339_a = tmp_20_reg_2830;
        end else if ((1'b1 == ap_condition_1809)) begin
            grp_gsm_abs_fu_1339_a = tmp_18_reg_2820;
        end else if ((1'b1 == ap_condition_1805)) begin
            grp_gsm_abs_fu_1339_a = tmp_16_reg_2810;
        end else if ((1'b1 == ap_condition_1801)) begin
            grp_gsm_abs_fu_1339_a = tmp_14_reg_2800;
        end else if ((1'b1 == ap_condition_1797)) begin
            grp_gsm_abs_fu_1339_a = tmp_12_reg_2790;
        end else if ((1'b1 == ap_condition_1793)) begin
            grp_gsm_abs_fu_1339_a = tmp_10_reg_2780;
        end else if ((1'b1 == ap_condition_1789)) begin
            grp_gsm_abs_fu_1339_a = tmp_8_reg_2770;
        end else if ((1'b1 == ap_condition_1785)) begin
            grp_gsm_abs_fu_1339_a = tmp_6_reg_2760;
        end else if ((1'b1 == ap_condition_1781)) begin
            grp_gsm_abs_fu_1339_a = tmp_4_reg_2750;
        end else if ((1'b1 == ap_condition_1777)) begin
            grp_gsm_abs_fu_1339_a = tmp_2_reg_2740;
        end else if ((1'b1 == ap_condition_1773)) begin
            grp_gsm_abs_fu_1339_a = tmp_s_fu_1380_p13;
        end else begin
            grp_gsm_abs_fu_1339_a = 'bx;
        end
    end else begin
        grp_gsm_abs_fu_1339_a = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1897)) begin
            grp_gsm_abs_fu_1344_a = tmp_31_reg_2885;
        end else if ((1'b1 == ap_condition_1893)) begin
            grp_gsm_abs_fu_1344_a = tmp_29_reg_2875;
        end else if ((1'b1 == ap_condition_1889)) begin
            grp_gsm_abs_fu_1344_a = tmp_27_reg_2865;
        end else if ((1'b1 == ap_condition_1885)) begin
            grp_gsm_abs_fu_1344_a = tmp_25_reg_2855;
        end else if ((1'b1 == ap_condition_1881)) begin
            grp_gsm_abs_fu_1344_a = tmp_23_reg_2845;
        end else if ((1'b1 == ap_condition_1877)) begin
            grp_gsm_abs_fu_1344_a = tmp_21_reg_2835;
        end else if ((1'b1 == ap_condition_1873)) begin
            grp_gsm_abs_fu_1344_a = tmp_19_reg_2825;
        end else if ((1'b1 == ap_condition_1869)) begin
            grp_gsm_abs_fu_1344_a = tmp_17_reg_2815;
        end else if ((1'b1 == ap_condition_1865)) begin
            grp_gsm_abs_fu_1344_a = tmp_15_reg_2805;
        end else if ((1'b1 == ap_condition_1861)) begin
            grp_gsm_abs_fu_1344_a = tmp_13_reg_2795;
        end else if ((1'b1 == ap_condition_1857)) begin
            grp_gsm_abs_fu_1344_a = tmp_11_reg_2785;
        end else if ((1'b1 == ap_condition_1853)) begin
            grp_gsm_abs_fu_1344_a = tmp_9_reg_2775;
        end else if ((1'b1 == ap_condition_1849)) begin
            grp_gsm_abs_fu_1344_a = tmp_7_reg_2765;
        end else if ((1'b1 == ap_condition_1845)) begin
            grp_gsm_abs_fu_1344_a = tmp_5_reg_2755;
        end else if ((1'b1 == ap_condition_1841)) begin
            grp_gsm_abs_fu_1344_a = tmp_3_reg_2745;
        end else if ((1'b1 == ap_condition_1837)) begin
            grp_gsm_abs_fu_1344_a = tmp_1_fu_1409_p13;
        end else begin
            grp_gsm_abs_fu_1344_a = 'bx;
        end
    end else begin
        grp_gsm_abs_fu_1344_a = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln55_reg_2736 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smax_out_ap_vld = 1'b1;
    end else begin
        smax_out_ap_vld = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_2659_p2 = (k_3_reg_2731 + 8'd32);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
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
assign ap_block_pp0_stage0_ignoreCallOp190 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp192 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_ignoreCallOp280 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_ignoreCallOp281 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_ignoreCallOp286 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_ignoreCallOp287 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_ignoreCallOp292 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_ignoreCallOp293 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_ignoreCallOp298 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_ignoreCallOp299 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_ignoreCallOp304 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_ignoreCallOp305 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_ignoreCallOp310 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_ignoreCallOp311 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp226 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp227 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp232 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp233 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp238 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp239 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_ignoreCallOp244 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_ignoreCallOp245 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_ignoreCallOp250 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_ignoreCallOp251 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_ignoreCallOp256 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_ignoreCallOp257 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_ignoreCallOp262 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_ignoreCallOp263 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_ignoreCallOp268 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_ignoreCallOp269 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_ignoreCallOp274 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_ignoreCallOp275 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1773 = ((1'b0 == ap_block_pp0_stage0_ignoreCallOp190) & (icmp_ln55_fu_1374_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1777 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp226) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1781 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp232) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1785 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp238) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1789 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp244) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1793 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp250) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_1797 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp256) & (1'b1 == ap_CS_fsm_pp0_stage6));
end
always @ (*) begin
    ap_condition_1801 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp262) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_1805 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp268) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
always @ (*) begin
    ap_condition_1809 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp274) & (1'b1 == ap_CS_fsm_pp0_stage9));
end
always @ (*) begin
    ap_condition_1813 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp280) & (1'b1 == ap_CS_fsm_pp0_stage10));
end
always @ (*) begin
    ap_condition_1817 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp286) & (1'b1 == ap_CS_fsm_pp0_stage11));
end
always @ (*) begin
    ap_condition_1821 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp292) & (1'b1 == ap_CS_fsm_pp0_stage12));
end
always @ (*) begin
    ap_condition_1825 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp298) & (1'b1 == ap_CS_fsm_pp0_stage13));
end
always @ (*) begin
    ap_condition_1829 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp304) & (1'b1 == ap_CS_fsm_pp0_stage14));
end
always @ (*) begin
    ap_condition_1833 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp310) & (1'b1 == ap_CS_fsm_pp0_stage15));
end
always @ (*) begin
    ap_condition_1837 = ((1'b0 == ap_block_pp0_stage0_ignoreCallOp192) & (icmp_ln55_fu_1374_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1841 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp227) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1845 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp233) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1849 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp239) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1853 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp245) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1857 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp251) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_1861 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp257) & (1'b1 == ap_CS_fsm_pp0_stage6));
end
always @ (*) begin
    ap_condition_1865 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp263) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_1869 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp269) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
always @ (*) begin
    ap_condition_1873 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp275) & (1'b1 == ap_CS_fsm_pp0_stage9));
end
always @ (*) begin
    ap_condition_1877 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp281) & (1'b1 == ap_CS_fsm_pp0_stage10));
end
always @ (*) begin
    ap_condition_1881 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp287) & (1'b1 == ap_CS_fsm_pp0_stage11));
end
always @ (*) begin
    ap_condition_1885 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp293) & (1'b1 == ap_CS_fsm_pp0_stage12));
end
always @ (*) begin
    ap_condition_1889 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp299) & (1'b1 == ap_CS_fsm_pp0_stage13));
end
always @ (*) begin
    ap_condition_1893 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp305) & (1'b1 == ap_CS_fsm_pp0_stage14));
end
always @ (*) begin
    ap_condition_1897 = ((icmp_ln55_reg_2736 == 1'd1) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp311) & (1'b1 == ap_CS_fsm_pp0_stage15));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln55_fu_1374_p2 = ((ap_sig_allocacmp_k_3 < 8'd160) ? 1'b1 : 1'b0);
assign icmp_ln58_10_fu_2411_p2 = (($signed(reg_1349) > $signed(smax_15_fu_2404_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_11_fu_2425_p2 = (($signed(reg_1357) > $signed(smax_16_reg_2920)) ? 1'b1 : 1'b0);
assign icmp_ln58_12_fu_2437_p2 = (($signed(reg_1349) > $signed(smax_18_fu_2430_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_13_fu_2451_p2 = (($signed(reg_1353) > $signed(smax_19_reg_2926)) ? 1'b1 : 1'b0);
assign icmp_ln58_14_fu_2463_p2 = (($signed(reg_1349) > $signed(smax_21_fu_2456_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_15_fu_2477_p2 = (($signed(reg_1357) > $signed(smax_22_reg_2932)) ? 1'b1 : 1'b0);
assign icmp_ln58_16_fu_2489_p2 = (($signed(reg_1349) > $signed(smax_24_fu_2482_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_17_fu_2503_p2 = (($signed(reg_1353) > $signed(smax_25_reg_2938)) ? 1'b1 : 1'b0);
assign icmp_ln58_18_fu_2515_p2 = (($signed(reg_1349) > $signed(smax_27_fu_2508_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_19_fu_2529_p2 = (($signed(reg_1357) > $signed(smax_28_reg_2944)) ? 1'b1 : 1'b0);
assign icmp_ln58_1_fu_2295_p2 = (($signed(reg_1353) > $signed(smax_1_reg_2890)) ? 1'b1 : 1'b0);
assign icmp_ln58_20_fu_2541_p2 = (($signed(reg_1349) > $signed(smax_30_fu_2534_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_21_fu_2555_p2 = (($signed(reg_1353) > $signed(smax_31_reg_2950)) ? 1'b1 : 1'b0);
assign icmp_ln58_22_fu_2567_p2 = (($signed(reg_1349) > $signed(smax_33_fu_2560_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_23_fu_2581_p2 = (($signed(reg_1357) > $signed(smax_34_reg_2956)) ? 1'b1 : 1'b0);
assign icmp_ln58_24_fu_2593_p2 = (($signed(reg_1349) > $signed(smax_36_fu_2586_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_25_fu_2607_p2 = (($signed(reg_1353) > $signed(smax_37_reg_2962)) ? 1'b1 : 1'b0);
assign icmp_ln58_26_fu_2619_p2 = (($signed(reg_1349) > $signed(smax_39_fu_2612_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_27_fu_2633_p2 = (($signed(reg_1357) > $signed(smax_40_reg_2968)) ? 1'b1 : 1'b0);
assign icmp_ln58_28_fu_2645_p2 = (($signed(reg_1349) > $signed(smax_42_fu_2638_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_29_fu_2669_p2 = (($signed(reg_1353) > $signed(smax_43_reg_2974)) ? 1'b1 : 1'b0);
assign icmp_ln58_2_fu_2307_p2 = (($signed(reg_1349) > $signed(smax_3_fu_2300_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_30_fu_2681_p2 = (($signed(reg_1349) > $signed(smax_45_fu_2674_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_31_fu_2695_p2 = (($signed(reg_1357) > $signed(smax_46_reg_2980)) ? 1'b1 : 1'b0);
assign icmp_ln58_3_fu_2321_p2 = (($signed(reg_1357) > $signed(smax_4_reg_2896)) ? 1'b1 : 1'b0);
assign icmp_ln58_4_fu_2333_p2 = (($signed(reg_1349) > $signed(smax_6_fu_2326_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_5_fu_2347_p2 = (($signed(reg_1353) > $signed(smax_7_reg_2902)) ? 1'b1 : 1'b0);
assign icmp_ln58_6_fu_2359_p2 = (($signed(reg_1349) > $signed(smax_9_fu_2352_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_7_fu_2373_p2 = (($signed(reg_1357) > $signed(smax_10_reg_2908)) ? 1'b1 : 1'b0);
assign icmp_ln58_8_fu_2385_p2 = (($signed(reg_1349) > $signed(smax_12_fu_2378_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_9_fu_2399_p2 = (($signed(reg_1353) > $signed(smax_13_reg_2914)) ? 1'b1 : 1'b0);
assign icmp_ln58_fu_2281_p2 = (($signed(reg_1349) > $signed(ap_sig_allocacmp_smax_load_1)) ? 1'b1 : 1'b0);
assign smax_10_fu_2365_p3 = ((icmp_ln58_6_fu_2359_p2[0:0] == 1'b1) ? reg_1349 : smax_9_fu_2352_p3);
assign smax_12_fu_2378_p3 = ((icmp_ln58_7_fu_2373_p2[0:0] == 1'b1) ? reg_1357 : smax_10_reg_2908);
assign smax_13_fu_2391_p3 = ((icmp_ln58_8_fu_2385_p2[0:0] == 1'b1) ? reg_1349 : smax_12_fu_2378_p3);
assign smax_15_fu_2404_p3 = ((icmp_ln58_9_fu_2399_p2[0:0] == 1'b1) ? reg_1353 : smax_13_reg_2914);
assign smax_16_fu_2417_p3 = ((icmp_ln58_10_fu_2411_p2[0:0] == 1'b1) ? reg_1349 : smax_15_fu_2404_p3);
assign smax_18_fu_2430_p3 = ((icmp_ln58_11_fu_2425_p2[0:0] == 1'b1) ? reg_1357 : smax_16_reg_2920);
assign smax_19_fu_2443_p3 = ((icmp_ln58_12_fu_2437_p2[0:0] == 1'b1) ? reg_1349 : smax_18_fu_2430_p3);
assign smax_1_fu_2287_p3 = ((icmp_ln58_fu_2281_p2[0:0] == 1'b1) ? reg_1349 : ap_sig_allocacmp_smax_load_1);
assign smax_21_fu_2456_p3 = ((icmp_ln58_13_fu_2451_p2[0:0] == 1'b1) ? reg_1353 : smax_19_reg_2926);
assign smax_22_fu_2469_p3 = ((icmp_ln58_14_fu_2463_p2[0:0] == 1'b1) ? reg_1349 : smax_21_fu_2456_p3);
assign smax_24_fu_2482_p3 = ((icmp_ln58_15_fu_2477_p2[0:0] == 1'b1) ? reg_1357 : smax_22_reg_2932);
assign smax_25_fu_2495_p3 = ((icmp_ln58_16_fu_2489_p2[0:0] == 1'b1) ? reg_1349 : smax_24_fu_2482_p3);
assign smax_27_fu_2508_p3 = ((icmp_ln58_17_fu_2503_p2[0:0] == 1'b1) ? reg_1353 : smax_25_reg_2938);
assign smax_28_fu_2521_p3 = ((icmp_ln58_18_fu_2515_p2[0:0] == 1'b1) ? reg_1349 : smax_27_fu_2508_p3);
assign smax_30_fu_2534_p3 = ((icmp_ln58_19_fu_2529_p2[0:0] == 1'b1) ? reg_1357 : smax_28_reg_2944);
assign smax_31_fu_2547_p3 = ((icmp_ln58_20_fu_2541_p2[0:0] == 1'b1) ? reg_1349 : smax_30_fu_2534_p3);
assign smax_33_fu_2560_p3 = ((icmp_ln58_21_fu_2555_p2[0:0] == 1'b1) ? reg_1353 : smax_31_reg_2950);
assign smax_34_fu_2573_p3 = ((icmp_ln58_22_fu_2567_p2[0:0] == 1'b1) ? reg_1349 : smax_33_fu_2560_p3);
assign smax_36_fu_2586_p3 = ((icmp_ln58_23_fu_2581_p2[0:0] == 1'b1) ? reg_1357 : smax_34_reg_2956);
assign smax_37_fu_2599_p3 = ((icmp_ln58_24_fu_2593_p2[0:0] == 1'b1) ? reg_1349 : smax_36_fu_2586_p3);
assign smax_39_fu_2612_p3 = ((icmp_ln58_25_fu_2607_p2[0:0] == 1'b1) ? reg_1353 : smax_37_reg_2962);
assign smax_3_fu_2300_p3 = ((icmp_ln58_1_fu_2295_p2[0:0] == 1'b1) ? reg_1353 : smax_1_reg_2890);
assign smax_40_fu_2625_p3 = ((icmp_ln58_26_fu_2619_p2[0:0] == 1'b1) ? reg_1349 : smax_39_fu_2612_p3);
assign smax_42_fu_2638_p3 = ((icmp_ln58_27_fu_2633_p2[0:0] == 1'b1) ? reg_1357 : smax_40_reg_2968);
assign smax_43_fu_2651_p3 = ((icmp_ln58_28_fu_2645_p2[0:0] == 1'b1) ? reg_1349 : smax_42_fu_2638_p3);
assign smax_45_fu_2674_p3 = ((icmp_ln58_29_fu_2669_p2[0:0] == 1'b1) ? reg_1353 : smax_43_reg_2974);
assign smax_46_fu_2687_p3 = ((icmp_ln58_30_fu_2681_p2[0:0] == 1'b1) ? reg_1349 : smax_45_fu_2674_p3);
assign smax_48_fu_2700_p3 = ((icmp_ln58_31_fu_2695_p2[0:0] == 1'b1) ? reg_1357 : smax_46_reg_2980);
assign smax_4_fu_2313_p3 = ((icmp_ln58_2_fu_2307_p2[0:0] == 1'b1) ? reg_1349 : smax_3_fu_2300_p3);
assign smax_6_fu_2326_p3 = ((icmp_ln58_3_fu_2321_p2[0:0] == 1'b1) ? reg_1357 : smax_4_reg_2896);
assign smax_7_fu_2339_p3 = ((icmp_ln58_4_fu_2333_p2[0:0] == 1'b1) ? reg_1349 : smax_6_fu_2326_p3);
assign smax_9_fu_2352_p3 = ((icmp_ln58_5_fu_2347_p2[0:0] == 1'b1) ? reg_1353 : smax_7_reg_2902);
assign smax_out = smax_fu_364;
assign tmp_10_fu_1662_p11 = 'bx;
assign tmp_11_fu_1690_p11 = 'bx;
assign tmp_12_fu_1718_p11 = 'bx;
assign tmp_13_fu_1746_p11 = 'bx;
assign tmp_14_fu_1774_p11 = 'bx;
assign tmp_15_fu_1802_p11 = 'bx;
assign tmp_16_fu_1830_p11 = 'bx;
assign tmp_17_fu_1858_p11 = 'bx;
assign tmp_18_fu_1886_p11 = 'bx;
assign tmp_19_fu_1914_p11 = 'bx;
assign tmp_1_fu_1409_p11 = 'bx;
assign tmp_20_fu_1942_p11 = 'bx;
assign tmp_21_fu_1970_p11 = 'bx;
assign tmp_22_fu_1998_p11 = 'bx;
assign tmp_23_fu_2026_p11 = 'bx;
assign tmp_24_fu_2054_p11 = 'bx;
assign tmp_25_fu_2082_p11 = 'bx;
assign tmp_26_fu_2110_p11 = 'bx;
assign tmp_27_fu_2138_p11 = 'bx;
assign tmp_28_fu_2166_p11 = 'bx;
assign tmp_29_fu_2194_p11 = 'bx;
assign tmp_2_fu_1438_p11 = 'bx;
assign tmp_30_fu_2222_p11 = 'bx;
assign tmp_31_fu_2250_p11 = 'bx;
assign tmp_3_fu_1466_p11 = 'bx;
assign tmp_4_fu_1494_p11 = 'bx;
assign tmp_5_fu_1522_p11 = 'bx;
assign tmp_6_fu_1550_p11 = 'bx;
assign tmp_7_fu_1578_p11 = 'bx;
assign tmp_8_fu_1606_p11 = 'bx;
assign tmp_9_fu_1634_p11 = 'bx;
assign tmp_s_fu_1380_p11 = 'bx;
endmodule 