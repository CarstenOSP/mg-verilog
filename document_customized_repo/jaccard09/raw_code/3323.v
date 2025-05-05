module Gsm_LPC_Analysis_Autocorrelation_17_18_Pipeline_autocol_lp1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,s_0_load,s_16_load,s_32_load,s_48_load,s_64_load,s_80_load,s_96_load,s_112_load,s_128_load,s_144_load,s_1_load,s_17_load,s_33_load,s_49_load,s_65_load,s_81_load,s_97_load,s_113_load,s_129_load,s_145_load,s_2_load,s_18_load,s_34_load,s_50_load,s_66_load,s_82_load,s_98_load,s_114_load,s_130_load,s_146_load,s_3_load,s_19_load,s_35_load,s_51_load,s_67_load,s_83_load,s_99_load,s_115_load,s_131_load,s_147_load,s_4_load,s_20_load,s_36_load,s_52_load,s_68_load,s_84_load,s_100_load,s_116_load,s_132_load,s_148_load,s_5_load,s_21_load,s_37_load,s_53_load,s_69_load,s_85_load,s_101_load,s_117_load,s_133_load,s_149_load,s_6_load,s_22_load,s_38_load,s_54_load,s_70_load,s_86_load,s_102_load,s_118_load,s_134_load,s_150_load,s_7_load,s_23_load,s_39_load,s_55_load,s_71_load,s_87_load,s_103_load,s_119_load,s_135_load,s_151_load,s_8_load,s_24_load,s_40_load,s_56_load,s_72_load,s_88_load,s_104_load,s_120_load,s_136_load,s_152_load,s_9_load,s_25_load,s_41_load,s_57_load,s_73_load,s_89_load,s_105_load,s_121_load,s_137_load,s_153_load,s_10_load,s_26_load,s_42_load,s_58_load,s_74_load,s_90_load,s_106_load,s_122_load,s_138_load,s_154_load,s_11_load,s_27_load,s_43_load,s_59_load,s_75_load,s_91_load,s_107_load,s_123_load,s_139_load,s_155_load,s_12_load,s_28_load,s_44_load,s_60_load,s_76_load,s_92_load,s_108_load,s_124_load,s_140_load,s_156_load,s_13_load,s_29_load,s_45_load,s_61_load,s_77_load,s_93_load,s_109_load,s_125_load,s_141_load,s_157_load,s_14_load,s_30_load,s_46_load,s_62_load,s_78_load,s_94_load,s_110_load,s_126_load,s_142_load,s_158_load,s_15_load,s_31_load,s_47_load,s_63_load,s_79_load,s_95_load,s_111_load,s_127_load,s_143_load,s_159_load,smax_out,smax_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] s_0_load;
input  [15:0] s_16_load;
input  [15:0] s_32_load;
input  [15:0] s_48_load;
input  [15:0] s_64_load;
input  [15:0] s_80_load;
input  [15:0] s_96_load;
input  [15:0] s_112_load;
input  [15:0] s_128_load;
input  [15:0] s_144_load;
input  [15:0] s_1_load;
input  [15:0] s_17_load;
input  [15:0] s_33_load;
input  [15:0] s_49_load;
input  [15:0] s_65_load;
input  [15:0] s_81_load;
input  [15:0] s_97_load;
input  [15:0] s_113_load;
input  [15:0] s_129_load;
input  [15:0] s_145_load;
input  [15:0] s_2_load;
input  [15:0] s_18_load;
input  [15:0] s_34_load;
input  [15:0] s_50_load;
input  [15:0] s_66_load;
input  [15:0] s_82_load;
input  [15:0] s_98_load;
input  [15:0] s_114_load;
input  [15:0] s_130_load;
input  [15:0] s_146_load;
input  [15:0] s_3_load;
input  [15:0] s_19_load;
input  [15:0] s_35_load;
input  [15:0] s_51_load;
input  [15:0] s_67_load;
input  [15:0] s_83_load;
input  [15:0] s_99_load;
input  [15:0] s_115_load;
input  [15:0] s_131_load;
input  [15:0] s_147_load;
input  [15:0] s_4_load;
input  [15:0] s_20_load;
input  [15:0] s_36_load;
input  [15:0] s_52_load;
input  [15:0] s_68_load;
input  [15:0] s_84_load;
input  [15:0] s_100_load;
input  [15:0] s_116_load;
input  [15:0] s_132_load;
input  [15:0] s_148_load;
input  [15:0] s_5_load;
input  [15:0] s_21_load;
input  [15:0] s_37_load;
input  [15:0] s_53_load;
input  [15:0] s_69_load;
input  [15:0] s_85_load;
input  [15:0] s_101_load;
input  [15:0] s_117_load;
input  [15:0] s_133_load;
input  [15:0] s_149_load;
input  [15:0] s_6_load;
input  [15:0] s_22_load;
input  [15:0] s_38_load;
input  [15:0] s_54_load;
input  [15:0] s_70_load;
input  [15:0] s_86_load;
input  [15:0] s_102_load;
input  [15:0] s_118_load;
input  [15:0] s_134_load;
input  [15:0] s_150_load;
input  [15:0] s_7_load;
input  [15:0] s_23_load;
input  [15:0] s_39_load;
input  [15:0] s_55_load;
input  [15:0] s_71_load;
input  [15:0] s_87_load;
input  [15:0] s_103_load;
input  [15:0] s_119_load;
input  [15:0] s_135_load;
input  [15:0] s_151_load;
input  [15:0] s_8_load;
input  [15:0] s_24_load;
input  [15:0] s_40_load;
input  [15:0] s_56_load;
input  [15:0] s_72_load;
input  [15:0] s_88_load;
input  [15:0] s_104_load;
input  [15:0] s_120_load;
input  [15:0] s_136_load;
input  [15:0] s_152_load;
input  [15:0] s_9_load;
input  [15:0] s_25_load;
input  [15:0] s_41_load;
input  [15:0] s_57_load;
input  [15:0] s_73_load;
input  [15:0] s_89_load;
input  [15:0] s_105_load;
input  [15:0] s_121_load;
input  [15:0] s_137_load;
input  [15:0] s_153_load;
input  [15:0] s_10_load;
input  [15:0] s_26_load;
input  [15:0] s_42_load;
input  [15:0] s_58_load;
input  [15:0] s_74_load;
input  [15:0] s_90_load;
input  [15:0] s_106_load;
input  [15:0] s_122_load;
input  [15:0] s_138_load;
input  [15:0] s_154_load;
input  [15:0] s_11_load;
input  [15:0] s_27_load;
input  [15:0] s_43_load;
input  [15:0] s_59_load;
input  [15:0] s_75_load;
input  [15:0] s_91_load;
input  [15:0] s_107_load;
input  [15:0] s_123_load;
input  [15:0] s_139_load;
input  [15:0] s_155_load;
input  [15:0] s_12_load;
input  [15:0] s_28_load;
input  [15:0] s_44_load;
input  [15:0] s_60_load;
input  [15:0] s_76_load;
input  [15:0] s_92_load;
input  [15:0] s_108_load;
input  [15:0] s_124_load;
input  [15:0] s_140_load;
input  [15:0] s_156_load;
input  [15:0] s_13_load;
input  [15:0] s_29_load;
input  [15:0] s_45_load;
input  [15:0] s_61_load;
input  [15:0] s_77_load;
input  [15:0] s_93_load;
input  [15:0] s_109_load;
input  [15:0] s_125_load;
input  [15:0] s_141_load;
input  [15:0] s_157_load;
input  [15:0] s_14_load;
input  [15:0] s_30_load;
input  [15:0] s_46_load;
input  [15:0] s_62_load;
input  [15:0] s_78_load;
input  [15:0] s_94_load;
input  [15:0] s_110_load;
input  [15:0] s_126_load;
input  [15:0] s_142_load;
input  [15:0] s_158_load;
input  [15:0] s_15_load;
input  [15:0] s_31_load;
input  [15:0] s_47_load;
input  [15:0] s_63_load;
input  [15:0] s_79_load;
input  [15:0] s_95_load;
input  [15:0] s_111_load;
input  [15:0] s_127_load;
input  [15:0] s_143_load;
input  [15:0] s_159_load;
output  [15:0] smax_out;
output   smax_out_ap_vld;
reg ap_idle;
reg smax_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln55_reg_2936;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] k_6_reg_2931;
wire   [0:0] icmp_ln55_fu_1368_p2;
wire   [15:0] temp_fu_1450_p3;
reg   [15:0] temp_reg_2940;
wire   [15:0] temp_93_fu_1534_p3;
reg   [15:0] temp_93_reg_2946;
wire   [15:0] temp_79_fu_1618_p3;
reg   [15:0] temp_79_reg_2952;
wire   [15:0] temp_94_fu_1702_p3;
reg   [15:0] temp_94_reg_2958;
wire   [15:0] temp_81_fu_1786_p3;
reg   [15:0] temp_81_reg_2964;
wire   [15:0] temp_95_fu_1870_p3;
reg   [15:0] temp_95_reg_2970;
wire   [15:0] temp_83_fu_1954_p3;
reg   [15:0] temp_83_reg_2976;
wire   [15:0] temp_96_fu_2038_p3;
reg   [15:0] temp_96_reg_2982;
wire   [15:0] temp_85_fu_2122_p3;
reg   [15:0] temp_85_reg_2988;
wire   [15:0] temp_97_fu_2206_p3;
reg   [15:0] temp_97_reg_2994;
wire   [15:0] temp_87_fu_2290_p3;
reg   [15:0] temp_87_reg_3000;
wire   [15:0] temp_98_fu_2374_p3;
reg   [15:0] temp_98_reg_3006;
wire   [15:0] temp_89_fu_2458_p3;
reg   [15:0] temp_89_reg_3012;
wire   [15:0] temp_99_fu_2542_p3;
reg   [15:0] temp_99_reg_3018;
wire   [15:0] temp_91_fu_2626_p3;
reg   [15:0] temp_91_reg_3024;
wire   [15:0] temp_100_fu_2710_p3;
reg   [15:0] temp_100_reg_3030;
reg   [15:0] temp_100_reg_3030_pp0_iter1_reg;
wire   [15:0] smax_1_fu_2726_p3;
reg   [15:0] smax_1_reg_3036;
wire    ap_block_pp0_stage1_11001;
wire   [15:0] smax_4_fu_2748_p3;
reg   [15:0] smax_4_reg_3042;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [15:0] smax_7_fu_2770_p3;
reg   [15:0] smax_7_reg_3048;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [15:0] smax_10_fu_2792_p3;
reg   [15:0] smax_10_reg_3054;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [15:0] smax_13_fu_2814_p3;
reg   [15:0] smax_13_reg_3060;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [15:0] smax_16_fu_2836_p3;
reg   [15:0] smax_16_reg_3066;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [15:0] smax_19_fu_2858_p3;
reg   [15:0] smax_19_reg_3072;
wire    ap_block_pp0_stage7_11001;
wire   [15:0] smax_22_fu_2890_p3;
reg   [15:0] smax_22_reg_3078;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [15:0] smax_fu_380;
wire   [15:0] smax_24_fu_2901_p3;
reg   [15:0] ap_sig_allocacmp_smax_load_1;
wire    ap_block_pp0_stage1;
wire    ap_loop_init;
reg   [7:0] k_fu_384;
wire   [7:0] add_ln55_fu_2865_p2;
reg   [7:0] ap_sig_allocacmp_k_6;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1_01001;
wire   [15:0] a_assign_s_fu_1374_p21;
wire   [15:0] a_assign_s_fu_1374_p23;
wire   [0:0] icmp_ln69_fu_1430_p2;
wire   [15:0] sub_ln69_fu_1436_p2;
wire   [0:0] tmp_fu_1422_p3;
wire   [15:0] select_ln69_fu_1442_p3;
wire   [15:0] a_assign_2_fu_1458_p21;
wire   [15:0] a_assign_2_fu_1458_p23;
wire   [0:0] icmp_ln69_8_fu_1514_p2;
wire   [15:0] sub_ln69_8_fu_1520_p2;
wire   [0:0] tmp_43_fu_1506_p3;
wire   [15:0] select_ln69_1_fu_1526_p3;
wire   [15:0] a_assign_3_fu_1542_p21;
wire   [15:0] a_assign_3_fu_1542_p23;
wire   [0:0] icmp_ln69_9_fu_1598_p2;
wire   [15:0] sub_ln69_9_fu_1604_p2;
wire   [0:0] tmp_44_fu_1590_p3;
wire   [15:0] select_ln69_2_fu_1610_p3;
wire   [15:0] a_assign_4_fu_1626_p21;
wire   [15:0] a_assign_4_fu_1626_p23;
wire   [0:0] icmp_ln69_10_fu_1682_p2;
wire   [15:0] sub_ln69_10_fu_1688_p2;
wire   [0:0] tmp_45_fu_1674_p3;
wire   [15:0] select_ln69_3_fu_1694_p3;
wire   [15:0] a_assign_5_fu_1710_p21;
wire   [15:0] a_assign_5_fu_1710_p23;
wire   [0:0] icmp_ln69_11_fu_1766_p2;
wire   [15:0] sub_ln69_11_fu_1772_p2;
wire   [0:0] tmp_46_fu_1758_p3;
wire   [15:0] select_ln69_4_fu_1778_p3;
wire   [15:0] a_assign_6_fu_1794_p21;
wire   [15:0] a_assign_6_fu_1794_p23;
wire   [0:0] icmp_ln69_12_fu_1850_p2;
wire   [15:0] sub_ln69_12_fu_1856_p2;
wire   [0:0] tmp_47_fu_1842_p3;
wire   [15:0] select_ln69_5_fu_1862_p3;
wire   [15:0] a_assign_7_fu_1878_p21;
wire   [15:0] a_assign_7_fu_1878_p23;
wire   [0:0] icmp_ln69_13_fu_1934_p2;
wire   [15:0] sub_ln69_13_fu_1940_p2;
wire   [0:0] tmp_48_fu_1926_p3;
wire   [15:0] select_ln69_6_fu_1946_p3;
wire   [15:0] a_assign_8_fu_1962_p21;
wire   [15:0] a_assign_8_fu_1962_p23;
wire   [0:0] icmp_ln69_14_fu_2018_p2;
wire   [15:0] sub_ln69_14_fu_2024_p2;
wire   [0:0] tmp_49_fu_2010_p3;
wire   [15:0] select_ln69_7_fu_2030_p3;
wire   [15:0] a_assign_9_fu_2046_p21;
wire   [15:0] a_assign_9_fu_2046_p23;
wire   [0:0] icmp_ln69_15_fu_2102_p2;
wire   [15:0] sub_ln69_15_fu_2108_p2;
wire   [0:0] tmp_50_fu_2094_p3;
wire   [15:0] select_ln69_8_fu_2114_p3;
wire   [15:0] a_assign_1_fu_2130_p21;
wire   [15:0] a_assign_1_fu_2130_p23;
wire   [0:0] icmp_ln69_16_fu_2186_p2;
wire   [15:0] sub_ln69_16_fu_2192_p2;
wire   [0:0] tmp_51_fu_2178_p3;
wire   [15:0] select_ln69_9_fu_2198_p3;
wire   [15:0] a_assign_10_fu_2214_p21;
wire   [15:0] a_assign_10_fu_2214_p23;
wire   [0:0] icmp_ln69_17_fu_2270_p2;
wire   [15:0] sub_ln69_17_fu_2276_p2;
wire   [0:0] tmp_52_fu_2262_p3;
wire   [15:0] select_ln69_10_fu_2282_p3;
wire   [15:0] a_assign_11_fu_2298_p21;
wire   [15:0] a_assign_11_fu_2298_p23;
wire   [0:0] icmp_ln69_18_fu_2354_p2;
wire   [15:0] sub_ln69_18_fu_2360_p2;
wire   [0:0] tmp_53_fu_2346_p3;
wire   [15:0] select_ln69_11_fu_2366_p3;
wire   [15:0] a_assign_12_fu_2382_p21;
wire   [15:0] a_assign_12_fu_2382_p23;
wire   [0:0] icmp_ln69_19_fu_2438_p2;
wire   [15:0] sub_ln69_19_fu_2444_p2;
wire   [0:0] tmp_54_fu_2430_p3;
wire   [15:0] select_ln69_12_fu_2450_p3;
wire   [15:0] a_assign_13_fu_2466_p21;
wire   [15:0] a_assign_13_fu_2466_p23;
wire   [0:0] icmp_ln69_20_fu_2522_p2;
wire   [15:0] sub_ln69_20_fu_2528_p2;
wire   [0:0] tmp_55_fu_2514_p3;
wire   [15:0] select_ln69_13_fu_2534_p3;
wire   [15:0] a_assign_14_fu_2550_p21;
wire   [15:0] a_assign_14_fu_2550_p23;
wire   [0:0] icmp_ln69_21_fu_2606_p2;
wire   [15:0] sub_ln69_21_fu_2612_p2;
wire   [0:0] tmp_56_fu_2598_p3;
wire   [15:0] select_ln69_14_fu_2618_p3;
wire   [15:0] a_assign_15_fu_2634_p21;
wire   [15:0] a_assign_15_fu_2634_p23;
wire   [0:0] icmp_ln69_22_fu_2690_p2;
wire   [15:0] sub_ln69_22_fu_2696_p2;
wire   [0:0] tmp_57_fu_2682_p3;
wire   [15:0] select_ln69_15_fu_2702_p3;
wire   [0:0] icmp_ln58_fu_2721_p2;
wire    ap_block_pp0_stage2;
wire   [0:0] icmp_ln58_1_fu_2733_p2;
wire   [15:0] smax_3_fu_2737_p3;
wire   [0:0] icmp_ln58_2_fu_2743_p2;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln58_3_fu_2755_p2;
wire   [15:0] smax_6_fu_2759_p3;
wire   [0:0] icmp_ln58_4_fu_2765_p2;
wire    ap_block_pp0_stage4;
wire   [0:0] icmp_ln58_5_fu_2777_p2;
wire   [15:0] smax_9_fu_2781_p3;
wire   [0:0] icmp_ln58_6_fu_2787_p2;
wire    ap_block_pp0_stage5;
wire   [0:0] icmp_ln58_7_fu_2799_p2;
wire   [15:0] smax_12_fu_2803_p3;
wire   [0:0] icmp_ln58_8_fu_2809_p2;
wire    ap_block_pp0_stage6;
wire   [0:0] icmp_ln58_9_fu_2821_p2;
wire   [15:0] smax_15_fu_2825_p3;
wire   [0:0] icmp_ln58_10_fu_2831_p2;
wire    ap_block_pp0_stage7;
wire   [0:0] icmp_ln58_11_fu_2843_p2;
wire   [15:0] smax_18_fu_2847_p3;
wire   [0:0] icmp_ln58_12_fu_2853_p2;
wire   [0:0] icmp_ln58_13_fu_2875_p2;
wire   [15:0] smax_21_fu_2879_p3;
wire   [0:0] icmp_ln58_14_fu_2885_p2;
wire   [0:0] icmp_ln58_15_fu_2897_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] a_assign_s_fu_1374_p1;
wire   [7:0] a_assign_s_fu_1374_p3;
wire   [7:0] a_assign_s_fu_1374_p5;
wire   [7:0] a_assign_s_fu_1374_p7;
wire   [7:0] a_assign_s_fu_1374_p9;
wire   [7:0] a_assign_s_fu_1374_p11;
wire   [7:0] a_assign_s_fu_1374_p13;
wire   [7:0] a_assign_s_fu_1374_p15;
wire  signed [7:0] a_assign_s_fu_1374_p17;
wire  signed [7:0] a_assign_s_fu_1374_p19;
wire   [7:0] a_assign_2_fu_1458_p1;
wire   [7:0] a_assign_2_fu_1458_p3;
wire   [7:0] a_assign_2_fu_1458_p5;
wire   [7:0] a_assign_2_fu_1458_p7;
wire   [7:0] a_assign_2_fu_1458_p9;
wire   [7:0] a_assign_2_fu_1458_p11;
wire   [7:0] a_assign_2_fu_1458_p13;
wire   [7:0] a_assign_2_fu_1458_p15;
wire  signed [7:0] a_assign_2_fu_1458_p17;
wire  signed [7:0] a_assign_2_fu_1458_p19;
wire   [7:0] a_assign_3_fu_1542_p1;
wire   [7:0] a_assign_3_fu_1542_p3;
wire   [7:0] a_assign_3_fu_1542_p5;
wire   [7:0] a_assign_3_fu_1542_p7;
wire   [7:0] a_assign_3_fu_1542_p9;
wire   [7:0] a_assign_3_fu_1542_p11;
wire   [7:0] a_assign_3_fu_1542_p13;
wire   [7:0] a_assign_3_fu_1542_p15;
wire  signed [7:0] a_assign_3_fu_1542_p17;
wire  signed [7:0] a_assign_3_fu_1542_p19;
wire   [7:0] a_assign_4_fu_1626_p1;
wire   [7:0] a_assign_4_fu_1626_p3;
wire   [7:0] a_assign_4_fu_1626_p5;
wire   [7:0] a_assign_4_fu_1626_p7;
wire   [7:0] a_assign_4_fu_1626_p9;
wire   [7:0] a_assign_4_fu_1626_p11;
wire   [7:0] a_assign_4_fu_1626_p13;
wire   [7:0] a_assign_4_fu_1626_p15;
wire  signed [7:0] a_assign_4_fu_1626_p17;
wire  signed [7:0] a_assign_4_fu_1626_p19;
wire   [7:0] a_assign_5_fu_1710_p1;
wire   [7:0] a_assign_5_fu_1710_p3;
wire   [7:0] a_assign_5_fu_1710_p5;
wire   [7:0] a_assign_5_fu_1710_p7;
wire   [7:0] a_assign_5_fu_1710_p9;
wire   [7:0] a_assign_5_fu_1710_p11;
wire   [7:0] a_assign_5_fu_1710_p13;
wire   [7:0] a_assign_5_fu_1710_p15;
wire  signed [7:0] a_assign_5_fu_1710_p17;
wire  signed [7:0] a_assign_5_fu_1710_p19;
wire   [7:0] a_assign_6_fu_1794_p1;
wire   [7:0] a_assign_6_fu_1794_p3;
wire   [7:0] a_assign_6_fu_1794_p5;
wire   [7:0] a_assign_6_fu_1794_p7;
wire   [7:0] a_assign_6_fu_1794_p9;
wire   [7:0] a_assign_6_fu_1794_p11;
wire   [7:0] a_assign_6_fu_1794_p13;
wire   [7:0] a_assign_6_fu_1794_p15;
wire  signed [7:0] a_assign_6_fu_1794_p17;
wire  signed [7:0] a_assign_6_fu_1794_p19;
wire   [7:0] a_assign_7_fu_1878_p1;
wire   [7:0] a_assign_7_fu_1878_p3;
wire   [7:0] a_assign_7_fu_1878_p5;
wire   [7:0] a_assign_7_fu_1878_p7;
wire   [7:0] a_assign_7_fu_1878_p9;
wire   [7:0] a_assign_7_fu_1878_p11;
wire   [7:0] a_assign_7_fu_1878_p13;
wire   [7:0] a_assign_7_fu_1878_p15;
wire  signed [7:0] a_assign_7_fu_1878_p17;
wire  signed [7:0] a_assign_7_fu_1878_p19;
wire   [7:0] a_assign_8_fu_1962_p1;
wire   [7:0] a_assign_8_fu_1962_p3;
wire   [7:0] a_assign_8_fu_1962_p5;
wire   [7:0] a_assign_8_fu_1962_p7;
wire   [7:0] a_assign_8_fu_1962_p9;
wire   [7:0] a_assign_8_fu_1962_p11;
wire   [7:0] a_assign_8_fu_1962_p13;
wire   [7:0] a_assign_8_fu_1962_p15;
wire  signed [7:0] a_assign_8_fu_1962_p17;
wire  signed [7:0] a_assign_8_fu_1962_p19;
wire   [7:0] a_assign_9_fu_2046_p1;
wire   [7:0] a_assign_9_fu_2046_p3;
wire   [7:0] a_assign_9_fu_2046_p5;
wire   [7:0] a_assign_9_fu_2046_p7;
wire   [7:0] a_assign_9_fu_2046_p9;
wire   [7:0] a_assign_9_fu_2046_p11;
wire   [7:0] a_assign_9_fu_2046_p13;
wire   [7:0] a_assign_9_fu_2046_p15;
wire  signed [7:0] a_assign_9_fu_2046_p17;
wire  signed [7:0] a_assign_9_fu_2046_p19;
wire   [7:0] a_assign_1_fu_2130_p1;
wire   [7:0] a_assign_1_fu_2130_p3;
wire   [7:0] a_assign_1_fu_2130_p5;
wire   [7:0] a_assign_1_fu_2130_p7;
wire   [7:0] a_assign_1_fu_2130_p9;
wire   [7:0] a_assign_1_fu_2130_p11;
wire   [7:0] a_assign_1_fu_2130_p13;
wire   [7:0] a_assign_1_fu_2130_p15;
wire  signed [7:0] a_assign_1_fu_2130_p17;
wire  signed [7:0] a_assign_1_fu_2130_p19;
wire   [7:0] a_assign_10_fu_2214_p1;
wire   [7:0] a_assign_10_fu_2214_p3;
wire   [7:0] a_assign_10_fu_2214_p5;
wire   [7:0] a_assign_10_fu_2214_p7;
wire   [7:0] a_assign_10_fu_2214_p9;
wire   [7:0] a_assign_10_fu_2214_p11;
wire   [7:0] a_assign_10_fu_2214_p13;
wire   [7:0] a_assign_10_fu_2214_p15;
wire  signed [7:0] a_assign_10_fu_2214_p17;
wire  signed [7:0] a_assign_10_fu_2214_p19;
wire   [7:0] a_assign_11_fu_2298_p1;
wire   [7:0] a_assign_11_fu_2298_p3;
wire   [7:0] a_assign_11_fu_2298_p5;
wire   [7:0] a_assign_11_fu_2298_p7;
wire   [7:0] a_assign_11_fu_2298_p9;
wire   [7:0] a_assign_11_fu_2298_p11;
wire   [7:0] a_assign_11_fu_2298_p13;
wire   [7:0] a_assign_11_fu_2298_p15;
wire  signed [7:0] a_assign_11_fu_2298_p17;
wire  signed [7:0] a_assign_11_fu_2298_p19;
wire   [7:0] a_assign_12_fu_2382_p1;
wire   [7:0] a_assign_12_fu_2382_p3;
wire   [7:0] a_assign_12_fu_2382_p5;
wire   [7:0] a_assign_12_fu_2382_p7;
wire   [7:0] a_assign_12_fu_2382_p9;
wire   [7:0] a_assign_12_fu_2382_p11;
wire   [7:0] a_assign_12_fu_2382_p13;
wire   [7:0] a_assign_12_fu_2382_p15;
wire  signed [7:0] a_assign_12_fu_2382_p17;
wire  signed [7:0] a_assign_12_fu_2382_p19;
wire   [7:0] a_assign_13_fu_2466_p1;
wire   [7:0] a_assign_13_fu_2466_p3;
wire   [7:0] a_assign_13_fu_2466_p5;
wire   [7:0] a_assign_13_fu_2466_p7;
wire   [7:0] a_assign_13_fu_2466_p9;
wire   [7:0] a_assign_13_fu_2466_p11;
wire   [7:0] a_assign_13_fu_2466_p13;
wire   [7:0] a_assign_13_fu_2466_p15;
wire  signed [7:0] a_assign_13_fu_2466_p17;
wire  signed [7:0] a_assign_13_fu_2466_p19;
wire   [7:0] a_assign_14_fu_2550_p1;
wire   [7:0] a_assign_14_fu_2550_p3;
wire   [7:0] a_assign_14_fu_2550_p5;
wire   [7:0] a_assign_14_fu_2550_p7;
wire   [7:0] a_assign_14_fu_2550_p9;
wire   [7:0] a_assign_14_fu_2550_p11;
wire   [7:0] a_assign_14_fu_2550_p13;
wire   [7:0] a_assign_14_fu_2550_p15;
wire  signed [7:0] a_assign_14_fu_2550_p17;
wire  signed [7:0] a_assign_14_fu_2550_p19;
wire   [7:0] a_assign_15_fu_2634_p1;
wire   [7:0] a_assign_15_fu_2634_p3;
wire   [7:0] a_assign_15_fu_2634_p5;
wire   [7:0] a_assign_15_fu_2634_p7;
wire   [7:0] a_assign_15_fu_2634_p9;
wire   [7:0] a_assign_15_fu_2634_p11;
wire   [7:0] a_assign_15_fu_2634_p13;
wire   [7:0] a_assign_15_fu_2634_p15;
wire  signed [7:0] a_assign_15_fu_2634_p17;
wire  signed [7:0] a_assign_15_fu_2634_p19;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 smax_fu_380 = 16'd0;
#0 k_fu_384 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U1(.din0(s_0_load),.din1(s_16_load),.din2(s_32_load),.din3(s_48_load),.din4(s_64_load),.din5(s_80_load),.din6(s_96_load),.din7(s_112_load),.din8(s_128_load),.din9(s_144_load),.def(a_assign_s_fu_1374_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_s_fu_1374_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U2(.din0(s_1_load),.din1(s_17_load),.din2(s_33_load),.din3(s_49_load),.din4(s_65_load),.din5(s_81_load),.din6(s_97_load),.din7(s_113_load),.din8(s_129_load),.din9(s_145_load),.def(a_assign_2_fu_1458_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_2_fu_1458_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U3(.din0(s_2_load),.din1(s_18_load),.din2(s_34_load),.din3(s_50_load),.din4(s_66_load),.din5(s_82_load),.din6(s_98_load),.din7(s_114_load),.din8(s_130_load),.din9(s_146_load),.def(a_assign_3_fu_1542_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_3_fu_1542_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U4(.din0(s_3_load),.din1(s_19_load),.din2(s_35_load),.din3(s_51_load),.din4(s_67_load),.din5(s_83_load),.din6(s_99_load),.din7(s_115_load),.din8(s_131_load),.din9(s_147_load),.def(a_assign_4_fu_1626_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_4_fu_1626_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U5(.din0(s_4_load),.din1(s_20_load),.din2(s_36_load),.din3(s_52_load),.din4(s_68_load),.din5(s_84_load),.din6(s_100_load),.din7(s_116_load),.din8(s_132_load),.din9(s_148_load),.def(a_assign_5_fu_1710_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_5_fu_1710_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U6(.din0(s_5_load),.din1(s_21_load),.din2(s_37_load),.din3(s_53_load),.din4(s_69_load),.din5(s_85_load),.din6(s_101_load),.din7(s_117_load),.din8(s_133_load),.din9(s_149_load),.def(a_assign_6_fu_1794_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_6_fu_1794_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U7(.din0(s_6_load),.din1(s_22_load),.din2(s_38_load),.din3(s_54_load),.din4(s_70_load),.din5(s_86_load),.din6(s_102_load),.din7(s_118_load),.din8(s_134_load),.din9(s_150_load),.def(a_assign_7_fu_1878_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_7_fu_1878_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U8(.din0(s_7_load),.din1(s_23_load),.din2(s_39_load),.din3(s_55_load),.din4(s_71_load),.din5(s_87_load),.din6(s_103_load),.din7(s_119_load),.din8(s_135_load),.din9(s_151_load),.def(a_assign_8_fu_1962_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_8_fu_1962_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U9(.din0(s_8_load),.din1(s_24_load),.din2(s_40_load),.din3(s_56_load),.din4(s_72_load),.din5(s_88_load),.din6(s_104_load),.din7(s_120_load),.din8(s_136_load),.din9(s_152_load),.def(a_assign_9_fu_2046_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_9_fu_2046_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U10(.din0(s_9_load),.din1(s_25_load),.din2(s_41_load),.din3(s_57_load),.din4(s_73_load),.din5(s_89_load),.din6(s_105_load),.din7(s_121_load),.din8(s_137_load),.din9(s_153_load),.def(a_assign_1_fu_2130_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_1_fu_2130_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U11(.din0(s_10_load),.din1(s_26_load),.din2(s_42_load),.din3(s_58_load),.din4(s_74_load),.din5(s_90_load),.din6(s_106_load),.din7(s_122_load),.din8(s_138_load),.din9(s_154_load),.def(a_assign_10_fu_2214_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_10_fu_2214_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U12(.din0(s_11_load),.din1(s_27_load),.din2(s_43_load),.din3(s_59_load),.din4(s_75_load),.din5(s_91_load),.din6(s_107_load),.din7(s_123_load),.din8(s_139_load),.din9(s_155_load),.def(a_assign_11_fu_2298_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_11_fu_2298_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U13(.din0(s_12_load),.din1(s_28_load),.din2(s_44_load),.din3(s_60_load),.din4(s_76_load),.din5(s_92_load),.din6(s_108_load),.din7(s_124_load),.din8(s_140_load),.din9(s_156_load),.def(a_assign_12_fu_2382_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_12_fu_2382_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U14(.din0(s_13_load),.din1(s_29_load),.din2(s_45_load),.din3(s_61_load),.din4(s_77_load),.din5(s_93_load),.din6(s_109_load),.din7(s_125_load),.din8(s_141_load),.din9(s_157_load),.def(a_assign_13_fu_2466_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_13_fu_2466_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U15(.din0(s_14_load),.din1(s_30_load),.din2(s_46_load),.din3(s_62_load),.din4(s_78_load),.din5(s_94_load),.din6(s_110_load),.din7(s_126_load),.din8(s_142_load),.din9(s_158_load),.def(a_assign_14_fu_2550_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_14_fu_2550_p23));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_21_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h10 ),.din1_WIDTH( 16 ),.CASE2( 8'h20 ),.din2_WIDTH( 16 ),.CASE3( 8'h30 ),.din3_WIDTH( 16 ),.CASE4( 8'h40 ),.din4_WIDTH( 16 ),.CASE5( 8'h50 ),.din5_WIDTH( 16 ),.CASE6( 8'h60 ),.din6_WIDTH( 16 ),.CASE7( 8'h70 ),.din7_WIDTH( 16 ),.CASE8( 8'h80 ),.din8_WIDTH( 16 ),.CASE9( 8'h90 ),.din9_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_21_8_16_1_1_U16(.din0(s_15_load),.din1(s_31_load),.din2(s_47_load),.din3(s_63_load),.din4(s_79_load),.din5(s_95_load),.din6(s_111_load),.din7(s_127_load),.din8(s_143_load),.din9(s_159_load),.def(a_assign_15_fu_2634_p21),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_15_fu_2634_p23));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_384 <= 8'd0;
    end else if (((icmp_ln55_reg_2936 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        k_fu_384 <= add_ln55_fu_2865_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smax_fu_380 <= 16'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smax_fu_380 <= smax_24_fu_2901_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln55_reg_2936 <= icmp_ln55_fu_1368_p2;
        k_6_reg_2931 <= ap_sig_allocacmp_k_6;
        smax_22_reg_3078 <= smax_22_fu_2890_p3;
        temp_100_reg_3030 <= temp_100_fu_2710_p3;
        temp_100_reg_3030_pp0_iter1_reg <= temp_100_reg_3030;
        temp_79_reg_2952 <= temp_79_fu_1618_p3;
        temp_81_reg_2964 <= temp_81_fu_1786_p3;
        temp_83_reg_2976 <= temp_83_fu_1954_p3;
        temp_85_reg_2988 <= temp_85_fu_2122_p3;
        temp_87_reg_3000 <= temp_87_fu_2290_p3;
        temp_89_reg_3012 <= temp_89_fu_2458_p3;
        temp_91_reg_3024 <= temp_91_fu_2626_p3;
        temp_93_reg_2946 <= temp_93_fu_1534_p3;
        temp_94_reg_2958 <= temp_94_fu_1702_p3;
        temp_95_reg_2970 <= temp_95_fu_1870_p3;
        temp_96_reg_2982 <= temp_96_fu_2038_p3;
        temp_97_reg_2994 <= temp_97_fu_2206_p3;
        temp_98_reg_3006 <= temp_98_fu_2374_p3;
        temp_99_reg_3018 <= temp_99_fu_2542_p3;
        temp_reg_2940 <= temp_fu_1450_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smax_10_reg_3054 <= smax_10_fu_2792_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smax_13_reg_3060 <= smax_13_fu_2814_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smax_16_reg_3066 <= smax_16_fu_2836_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smax_19_reg_3072 <= smax_19_fu_2858_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smax_1_reg_3036 <= smax_1_fu_2726_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smax_4_reg_3042 <= smax_4_fu_2748_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smax_7_reg_3048 <= smax_7_fu_2770_p3;
    end
end
always @ (*) begin
    if (((icmp_ln55_reg_2936 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_6 = 8'd0;
    end else begin
        ap_sig_allocacmp_k_6 = k_fu_384;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_smax_load_1 = smax_24_fu_2901_p3;
    end else begin
        ap_sig_allocacmp_smax_load_1 = smax_fu_380;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln55_reg_2936 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_assign_10_fu_2214_p21 = 'bx;
assign a_assign_11_fu_2298_p21 = 'bx;
assign a_assign_12_fu_2382_p21 = 'bx;
assign a_assign_13_fu_2466_p21 = 'bx;
assign a_assign_14_fu_2550_p21 = 'bx;
assign a_assign_15_fu_2634_p21 = 'bx;
assign a_assign_1_fu_2130_p21 = 'bx;
assign a_assign_2_fu_1458_p21 = 'bx;
assign a_assign_3_fu_1542_p21 = 'bx;
assign a_assign_4_fu_1626_p21 = 'bx;
assign a_assign_5_fu_1710_p21 = 'bx;
assign a_assign_6_fu_1794_p21 = 'bx;
assign a_assign_7_fu_1878_p21 = 'bx;
assign a_assign_8_fu_1962_p21 = 'bx;
assign a_assign_9_fu_2046_p21 = 'bx;
assign a_assign_s_fu_1374_p21 = 'bx;
assign add_ln55_fu_2865_p2 = (k_6_reg_2931 + 8'd16);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln55_fu_1368_p2 = ((ap_sig_allocacmp_k_6 < 8'd160) ? 1'b1 : 1'b0);
assign icmp_ln58_10_fu_2831_p2 = (($signed(temp_87_reg_3000) > $signed(smax_15_fu_2825_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_11_fu_2843_p2 = (($signed(temp_98_reg_3006) > $signed(smax_16_reg_3066)) ? 1'b1 : 1'b0);
assign icmp_ln58_12_fu_2853_p2 = (($signed(temp_89_reg_3012) > $signed(smax_18_fu_2847_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_13_fu_2875_p2 = (($signed(temp_99_reg_3018) > $signed(smax_19_reg_3072)) ? 1'b1 : 1'b0);
assign icmp_ln58_14_fu_2885_p2 = (($signed(temp_91_reg_3024) > $signed(smax_21_fu_2879_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_15_fu_2897_p2 = (($signed(temp_100_reg_3030_pp0_iter1_reg) > $signed(smax_22_reg_3078)) ? 1'b1 : 1'b0);
assign icmp_ln58_1_fu_2733_p2 = (($signed(temp_93_reg_2946) > $signed(smax_1_reg_3036)) ? 1'b1 : 1'b0);
assign icmp_ln58_2_fu_2743_p2 = (($signed(temp_79_reg_2952) > $signed(smax_3_fu_2737_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_3_fu_2755_p2 = (($signed(temp_94_reg_2958) > $signed(smax_4_reg_3042)) ? 1'b1 : 1'b0);
assign icmp_ln58_4_fu_2765_p2 = (($signed(temp_81_reg_2964) > $signed(smax_6_fu_2759_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_5_fu_2777_p2 = (($signed(temp_95_reg_2970) > $signed(smax_7_reg_3048)) ? 1'b1 : 1'b0);
assign icmp_ln58_6_fu_2787_p2 = (($signed(temp_83_reg_2976) > $signed(smax_9_fu_2781_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_7_fu_2799_p2 = (($signed(temp_96_reg_2982) > $signed(smax_10_reg_3054)) ? 1'b1 : 1'b0);
assign icmp_ln58_8_fu_2809_p2 = (($signed(temp_85_reg_2988) > $signed(smax_12_fu_2803_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_9_fu_2821_p2 = (($signed(temp_97_reg_2994) > $signed(smax_13_reg_3060)) ? 1'b1 : 1'b0);
assign icmp_ln58_fu_2721_p2 = (($signed(temp_reg_2940) > $signed(ap_sig_allocacmp_smax_load_1)) ? 1'b1 : 1'b0);
assign icmp_ln69_10_fu_1682_p2 = ((a_assign_4_fu_1626_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_11_fu_1766_p2 = ((a_assign_5_fu_1710_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_12_fu_1850_p2 = ((a_assign_6_fu_1794_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_13_fu_1934_p2 = ((a_assign_7_fu_1878_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_14_fu_2018_p2 = ((a_assign_8_fu_1962_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_15_fu_2102_p2 = ((a_assign_9_fu_2046_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_16_fu_2186_p2 = ((a_assign_1_fu_2130_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_17_fu_2270_p2 = ((a_assign_10_fu_2214_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_18_fu_2354_p2 = ((a_assign_11_fu_2298_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_19_fu_2438_p2 = ((a_assign_12_fu_2382_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_20_fu_2522_p2 = ((a_assign_13_fu_2466_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_21_fu_2606_p2 = ((a_assign_14_fu_2550_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_22_fu_2690_p2 = ((a_assign_15_fu_2634_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_8_fu_1514_p2 = ((a_assign_2_fu_1458_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_9_fu_1598_p2 = ((a_assign_3_fu_1542_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_fu_1430_p2 = ((a_assign_s_fu_1374_p23 == 16'd32768) ? 1'b1 : 1'b0);
assign select_ln69_10_fu_2282_p3 = ((icmp_ln69_17_fu_2270_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_17_fu_2276_p2);
assign select_ln69_11_fu_2366_p3 = ((icmp_ln69_18_fu_2354_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_18_fu_2360_p2);
assign select_ln69_12_fu_2450_p3 = ((icmp_ln69_19_fu_2438_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_19_fu_2444_p2);
assign select_ln69_13_fu_2534_p3 = ((icmp_ln69_20_fu_2522_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_20_fu_2528_p2);
assign select_ln69_14_fu_2618_p3 = ((icmp_ln69_21_fu_2606_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_21_fu_2612_p2);
assign select_ln69_15_fu_2702_p3 = ((icmp_ln69_22_fu_2690_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_22_fu_2696_p2);
assign select_ln69_1_fu_1526_p3 = ((icmp_ln69_8_fu_1514_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_8_fu_1520_p2);
assign select_ln69_2_fu_1610_p3 = ((icmp_ln69_9_fu_1598_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_9_fu_1604_p2);
assign select_ln69_3_fu_1694_p3 = ((icmp_ln69_10_fu_1682_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_10_fu_1688_p2);
assign select_ln69_4_fu_1778_p3 = ((icmp_ln69_11_fu_1766_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_11_fu_1772_p2);
assign select_ln69_5_fu_1862_p3 = ((icmp_ln69_12_fu_1850_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_12_fu_1856_p2);
assign select_ln69_6_fu_1946_p3 = ((icmp_ln69_13_fu_1934_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_13_fu_1940_p2);
assign select_ln69_7_fu_2030_p3 = ((icmp_ln69_14_fu_2018_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_14_fu_2024_p2);
assign select_ln69_8_fu_2114_p3 = ((icmp_ln69_15_fu_2102_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_15_fu_2108_p2);
assign select_ln69_9_fu_2198_p3 = ((icmp_ln69_16_fu_2186_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_16_fu_2192_p2);
assign select_ln69_fu_1442_p3 = ((icmp_ln69_fu_1430_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_fu_1436_p2);
assign smax_10_fu_2792_p3 = ((icmp_ln58_6_fu_2787_p2[0:0] == 1'b1) ? temp_83_reg_2976 : smax_9_fu_2781_p3);
assign smax_12_fu_2803_p3 = ((icmp_ln58_7_fu_2799_p2[0:0] == 1'b1) ? temp_96_reg_2982 : smax_10_reg_3054);
assign smax_13_fu_2814_p3 = ((icmp_ln58_8_fu_2809_p2[0:0] == 1'b1) ? temp_85_reg_2988 : smax_12_fu_2803_p3);
assign smax_15_fu_2825_p3 = ((icmp_ln58_9_fu_2821_p2[0:0] == 1'b1) ? temp_97_reg_2994 : smax_13_reg_3060);
assign smax_16_fu_2836_p3 = ((icmp_ln58_10_fu_2831_p2[0:0] == 1'b1) ? temp_87_reg_3000 : smax_15_fu_2825_p3);
assign smax_18_fu_2847_p3 = ((icmp_ln58_11_fu_2843_p2[0:0] == 1'b1) ? temp_98_reg_3006 : smax_16_reg_3066);
assign smax_19_fu_2858_p3 = ((icmp_ln58_12_fu_2853_p2[0:0] == 1'b1) ? temp_89_reg_3012 : smax_18_fu_2847_p3);
assign smax_1_fu_2726_p3 = ((icmp_ln58_fu_2721_p2[0:0] == 1'b1) ? temp_reg_2940 : ap_sig_allocacmp_smax_load_1);
assign smax_21_fu_2879_p3 = ((icmp_ln58_13_fu_2875_p2[0:0] == 1'b1) ? temp_99_reg_3018 : smax_19_reg_3072);
assign smax_22_fu_2890_p3 = ((icmp_ln58_14_fu_2885_p2[0:0] == 1'b1) ? temp_91_reg_3024 : smax_21_fu_2879_p3);
assign smax_24_fu_2901_p3 = ((icmp_ln58_15_fu_2897_p2[0:0] == 1'b1) ? temp_100_reg_3030_pp0_iter1_reg : smax_22_reg_3078);
assign smax_3_fu_2737_p3 = ((icmp_ln58_1_fu_2733_p2[0:0] == 1'b1) ? temp_93_reg_2946 : smax_1_reg_3036);
assign smax_4_fu_2748_p3 = ((icmp_ln58_2_fu_2743_p2[0:0] == 1'b1) ? temp_79_reg_2952 : smax_3_fu_2737_p3);
assign smax_6_fu_2759_p3 = ((icmp_ln58_3_fu_2755_p2[0:0] == 1'b1) ? temp_94_reg_2958 : smax_4_reg_3042);
assign smax_7_fu_2770_p3 = ((icmp_ln58_4_fu_2765_p2[0:0] == 1'b1) ? temp_81_reg_2964 : smax_6_fu_2759_p3);
assign smax_9_fu_2781_p3 = ((icmp_ln58_5_fu_2777_p2[0:0] == 1'b1) ? temp_95_reg_2970 : smax_7_reg_3048);
assign smax_out = smax_fu_380;
assign sub_ln69_10_fu_1688_p2 = (16'd0 - a_assign_4_fu_1626_p23);
assign sub_ln69_11_fu_1772_p2 = (16'd0 - a_assign_5_fu_1710_p23);
assign sub_ln69_12_fu_1856_p2 = (16'd0 - a_assign_6_fu_1794_p23);
assign sub_ln69_13_fu_1940_p2 = (16'd0 - a_assign_7_fu_1878_p23);
assign sub_ln69_14_fu_2024_p2 = (16'd0 - a_assign_8_fu_1962_p23);
assign sub_ln69_15_fu_2108_p2 = (16'd0 - a_assign_9_fu_2046_p23);
assign sub_ln69_16_fu_2192_p2 = (16'd0 - a_assign_1_fu_2130_p23);
assign sub_ln69_17_fu_2276_p2 = (16'd0 - a_assign_10_fu_2214_p23);
assign sub_ln69_18_fu_2360_p2 = (16'd0 - a_assign_11_fu_2298_p23);
assign sub_ln69_19_fu_2444_p2 = (16'd0 - a_assign_12_fu_2382_p23);
assign sub_ln69_20_fu_2528_p2 = (16'd0 - a_assign_13_fu_2466_p23);
assign sub_ln69_21_fu_2612_p2 = (16'd0 - a_assign_14_fu_2550_p23);
assign sub_ln69_22_fu_2696_p2 = (16'd0 - a_assign_15_fu_2634_p23);
assign sub_ln69_8_fu_1520_p2 = (16'd0 - a_assign_2_fu_1458_p23);
assign sub_ln69_9_fu_1604_p2 = (16'd0 - a_assign_3_fu_1542_p23);
assign sub_ln69_fu_1436_p2 = (16'd0 - a_assign_s_fu_1374_p23);
assign temp_100_fu_2710_p3 = ((tmp_57_fu_2682_p3[0:0] == 1'b1) ? select_ln69_15_fu_2702_p3 : a_assign_15_fu_2634_p23);
assign temp_79_fu_1618_p3 = ((tmp_44_fu_1590_p3[0:0] == 1'b1) ? select_ln69_2_fu_1610_p3 : a_assign_3_fu_1542_p23);
assign temp_81_fu_1786_p3 = ((tmp_46_fu_1758_p3[0:0] == 1'b1) ? select_ln69_4_fu_1778_p3 : a_assign_5_fu_1710_p23);
assign temp_83_fu_1954_p3 = ((tmp_48_fu_1926_p3[0:0] == 1'b1) ? select_ln69_6_fu_1946_p3 : a_assign_7_fu_1878_p23);
assign temp_85_fu_2122_p3 = ((tmp_50_fu_2094_p3[0:0] == 1'b1) ? select_ln69_8_fu_2114_p3 : a_assign_9_fu_2046_p23);
assign temp_87_fu_2290_p3 = ((tmp_52_fu_2262_p3[0:0] == 1'b1) ? select_ln69_10_fu_2282_p3 : a_assign_10_fu_2214_p23);
assign temp_89_fu_2458_p3 = ((tmp_54_fu_2430_p3[0:0] == 1'b1) ? select_ln69_12_fu_2450_p3 : a_assign_12_fu_2382_p23);
assign temp_91_fu_2626_p3 = ((tmp_56_fu_2598_p3[0:0] == 1'b1) ? select_ln69_14_fu_2618_p3 : a_assign_14_fu_2550_p23);
assign temp_93_fu_1534_p3 = ((tmp_43_fu_1506_p3[0:0] == 1'b1) ? select_ln69_1_fu_1526_p3 : a_assign_2_fu_1458_p23);
assign temp_94_fu_1702_p3 = ((tmp_45_fu_1674_p3[0:0] == 1'b1) ? select_ln69_3_fu_1694_p3 : a_assign_4_fu_1626_p23);
assign temp_95_fu_1870_p3 = ((tmp_47_fu_1842_p3[0:0] == 1'b1) ? select_ln69_5_fu_1862_p3 : a_assign_6_fu_1794_p23);
assign temp_96_fu_2038_p3 = ((tmp_49_fu_2010_p3[0:0] == 1'b1) ? select_ln69_7_fu_2030_p3 : a_assign_8_fu_1962_p23);
assign temp_97_fu_2206_p3 = ((tmp_51_fu_2178_p3[0:0] == 1'b1) ? select_ln69_9_fu_2198_p3 : a_assign_1_fu_2130_p23);
assign temp_98_fu_2374_p3 = ((tmp_53_fu_2346_p3[0:0] == 1'b1) ? select_ln69_11_fu_2366_p3 : a_assign_11_fu_2298_p23);
assign temp_99_fu_2542_p3 = ((tmp_55_fu_2514_p3[0:0] == 1'b1) ? select_ln69_13_fu_2534_p3 : a_assign_13_fu_2466_p23);
assign temp_fu_1450_p3 = ((tmp_fu_1422_p3[0:0] == 1'b1) ? select_ln69_fu_1442_p3 : a_assign_s_fu_1374_p23);
assign tmp_43_fu_1506_p3 = a_assign_2_fu_1458_p23[32'd15];
assign tmp_44_fu_1590_p3 = a_assign_3_fu_1542_p23[32'd15];
assign tmp_45_fu_1674_p3 = a_assign_4_fu_1626_p23[32'd15];
assign tmp_46_fu_1758_p3 = a_assign_5_fu_1710_p23[32'd15];
assign tmp_47_fu_1842_p3 = a_assign_6_fu_1794_p23[32'd15];
assign tmp_48_fu_1926_p3 = a_assign_7_fu_1878_p23[32'd15];
assign tmp_49_fu_2010_p3 = a_assign_8_fu_1962_p23[32'd15];
assign tmp_50_fu_2094_p3 = a_assign_9_fu_2046_p23[32'd15];
assign tmp_51_fu_2178_p3 = a_assign_1_fu_2130_p23[32'd15];
assign tmp_52_fu_2262_p3 = a_assign_10_fu_2214_p23[32'd15];
assign tmp_53_fu_2346_p3 = a_assign_11_fu_2298_p23[32'd15];
assign tmp_54_fu_2430_p3 = a_assign_12_fu_2382_p23[32'd15];
assign tmp_55_fu_2514_p3 = a_assign_13_fu_2466_p23[32'd15];
assign tmp_56_fu_2598_p3 = a_assign_14_fu_2550_p23[32'd15];
assign tmp_57_fu_2682_p3 = a_assign_15_fu_2634_p23[32'd15];
assign tmp_fu_1422_p3 = a_assign_s_fu_1374_p23[32'd15];
endmodule 