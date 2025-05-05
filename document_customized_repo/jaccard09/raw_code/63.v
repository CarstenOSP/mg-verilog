module Gsm_LPC_Analysis (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,s_0_i,s_0_o,s_0_o_ap_vld,s_1_i,s_1_o,s_1_o_ap_vld,s_2_i,s_2_o,s_2_o_ap_vld,s_3_i,s_3_o,s_3_o_ap_vld,s_4_i,s_4_o,s_4_o_ap_vld,s_5_i,s_5_o,s_5_o_ap_vld,s_6_i,s_6_o,s_6_o_ap_vld,s_7_i,s_7_o,s_7_o_ap_vld,s_8_i,s_8_o,s_8_o_ap_vld,s_9_i,s_9_o,s_9_o_ap_vld,s_10_i,s_10_o,s_10_o_ap_vld,s_11_i,s_11_o,s_11_o_ap_vld,s_12_i,s_12_o,s_12_o_ap_vld,s_13_i,s_13_o,s_13_o_ap_vld,s_14_i,s_14_o,s_14_o_ap_vld,s_15_i,s_15_o,s_15_o_ap_vld,s_16_i,s_16_o,s_16_o_ap_vld,s_17_i,s_17_o,s_17_o_ap_vld,s_18_i,s_18_o,s_18_o_ap_vld,s_19_i,s_19_o,s_19_o_ap_vld,s_20_i,s_20_o,s_20_o_ap_vld,s_21_i,s_21_o,s_21_o_ap_vld,s_22_i,s_22_o,s_22_o_ap_vld,s_23_i,s_23_o,s_23_o_ap_vld,s_24_i,s_24_o,s_24_o_ap_vld,s_25_i,s_25_o,s_25_o_ap_vld,s_26_i,s_26_o,s_26_o_ap_vld,s_27_i,s_27_o,s_27_o_ap_vld,s_28_i,s_28_o,s_28_o_ap_vld,s_29_i,s_29_o,s_29_o_ap_vld,s_30_i,s_30_o,s_30_o_ap_vld,s_31_i,s_31_o,s_31_o_ap_vld,s_32_i,s_32_o,s_32_o_ap_vld,s_33_i,s_33_o,s_33_o_ap_vld,s_34_i,s_34_o,s_34_o_ap_vld,s_35_i,s_35_o,s_35_o_ap_vld,s_36_i,s_36_o,s_36_o_ap_vld,s_37_i,s_37_o,s_37_o_ap_vld,s_38_i,s_38_o,s_38_o_ap_vld,s_39_i,s_39_o,s_39_o_ap_vld,s_40_i,s_40_o,s_40_o_ap_vld,s_41_i,s_41_o,s_41_o_ap_vld,s_42_i,s_42_o,s_42_o_ap_vld,s_43_i,s_43_o,s_43_o_ap_vld,s_44_i,s_44_o,s_44_o_ap_vld,s_45_i,s_45_o,s_45_o_ap_vld,s_46_i,s_46_o,s_46_o_ap_vld,s_47_i,s_47_o,s_47_o_ap_vld,s_48_i,s_48_o,s_48_o_ap_vld,s_49_i,s_49_o,s_49_o_ap_vld,s_50_i,s_50_o,s_50_o_ap_vld,s_51_i,s_51_o,s_51_o_ap_vld,s_52_i,s_52_o,s_52_o_ap_vld,s_53_i,s_53_o,s_53_o_ap_vld,s_54_i,s_54_o,s_54_o_ap_vld,s_55_i,s_55_o,s_55_o_ap_vld,s_56_i,s_56_o,s_56_o_ap_vld,s_57_i,s_57_o,s_57_o_ap_vld,s_58_i,s_58_o,s_58_o_ap_vld,s_59_i,s_59_o,s_59_o_ap_vld,s_60_i,s_60_o,s_60_o_ap_vld,s_61_i,s_61_o,s_61_o_ap_vld,s_62_i,s_62_o,s_62_o_ap_vld,s_63_i,s_63_o,s_63_o_ap_vld,s_64_i,s_64_o,s_64_o_ap_vld,s_65_i,s_65_o,s_65_o_ap_vld,s_66_i,s_66_o,s_66_o_ap_vld,s_67_i,s_67_o,s_67_o_ap_vld,s_68_i,s_68_o,s_68_o_ap_vld,s_69_i,s_69_o,s_69_o_ap_vld,s_70_i,s_70_o,s_70_o_ap_vld,s_71_i,s_71_o,s_71_o_ap_vld,s_72_i,s_72_o,s_72_o_ap_vld,s_73_i,s_73_o,s_73_o_ap_vld,s_74_i,s_74_o,s_74_o_ap_vld,s_75_i,s_75_o,s_75_o_ap_vld,s_76_i,s_76_o,s_76_o_ap_vld,s_77_i,s_77_o,s_77_o_ap_vld,s_78_i,s_78_o,s_78_o_ap_vld,s_79_i,s_79_o,s_79_o_ap_vld,s_80_i,s_80_o,s_80_o_ap_vld,s_81_i,s_81_o,s_81_o_ap_vld,s_82_i,s_82_o,s_82_o_ap_vld,s_83_i,s_83_o,s_83_o_ap_vld,s_84_i,s_84_o,s_84_o_ap_vld,s_85_i,s_85_o,s_85_o_ap_vld,s_86_i,s_86_o,s_86_o_ap_vld,s_87_i,s_87_o,s_87_o_ap_vld,s_88_i,s_88_o,s_88_o_ap_vld,s_89_i,s_89_o,s_89_o_ap_vld,s_90_i,s_90_o,s_90_o_ap_vld,s_91_i,s_91_o,s_91_o_ap_vld,s_92_i,s_92_o,s_92_o_ap_vld,s_93_i,s_93_o,s_93_o_ap_vld,s_94_i,s_94_o,s_94_o_ap_vld,s_95_i,s_95_o,s_95_o_ap_vld,s_96_i,s_96_o,s_96_o_ap_vld,s_97_i,s_97_o,s_97_o_ap_vld,s_98_i,s_98_o,s_98_o_ap_vld,s_99_i,s_99_o,s_99_o_ap_vld,s_100_i,s_100_o,s_100_o_ap_vld,s_101_i,s_101_o,s_101_o_ap_vld,s_102_i,s_102_o,s_102_o_ap_vld,s_103_i,s_103_o,s_103_o_ap_vld,s_104_i,s_104_o,s_104_o_ap_vld,s_105_i,s_105_o,s_105_o_ap_vld,s_106_i,s_106_o,s_106_o_ap_vld,s_107_i,s_107_o,s_107_o_ap_vld,s_108_i,s_108_o,s_108_o_ap_vld,s_109_i,s_109_o,s_109_o_ap_vld,s_110_i,s_110_o,s_110_o_ap_vld,s_111_i,s_111_o,s_111_o_ap_vld,s_112_i,s_112_o,s_112_o_ap_vld,s_113_i,s_113_o,s_113_o_ap_vld,s_114_i,s_114_o,s_114_o_ap_vld,s_115_i,s_115_o,s_115_o_ap_vld,s_116_i,s_116_o,s_116_o_ap_vld,s_117_i,s_117_o,s_117_o_ap_vld,s_118_i,s_118_o,s_118_o_ap_vld,s_119_i,s_119_o,s_119_o_ap_vld,s_120_i,s_120_o,s_120_o_ap_vld,s_121_i,s_121_o,s_121_o_ap_vld,s_122_i,s_122_o,s_122_o_ap_vld,s_123_i,s_123_o,s_123_o_ap_vld,s_124_i,s_124_o,s_124_o_ap_vld,s_125_i,s_125_o,s_125_o_ap_vld,s_126_i,s_126_o,s_126_o_ap_vld,s_127_i,s_127_o,s_127_o_ap_vld,s_128_i,s_128_o,s_128_o_ap_vld,s_129_i,s_129_o,s_129_o_ap_vld,s_130_i,s_130_o,s_130_o_ap_vld,s_131_i,s_131_o,s_131_o_ap_vld,s_132_i,s_132_o,s_132_o_ap_vld,s_133_i,s_133_o,s_133_o_ap_vld,s_134_i,s_134_o,s_134_o_ap_vld,s_135_i,s_135_o,s_135_o_ap_vld,s_136_i,s_136_o,s_136_o_ap_vld,s_137_i,s_137_o,s_137_o_ap_vld,s_138_i,s_138_o,s_138_o_ap_vld,s_139_i,s_139_o,s_139_o_ap_vld,s_140_i,s_140_o,s_140_o_ap_vld,s_141_i,s_141_o,s_141_o_ap_vld,s_142_i,s_142_o,s_142_o_ap_vld,s_143_i,s_143_o,s_143_o_ap_vld,s_144_i,s_144_o,s_144_o_ap_vld,s_145_i,s_145_o,s_145_o_ap_vld,s_146_i,s_146_o,s_146_o_ap_vld,s_147_i,s_147_o,s_147_o_ap_vld,s_148_i,s_148_o,s_148_o_ap_vld,s_149_i,s_149_o,s_149_o_ap_vld,s_150_i,s_150_o,s_150_o_ap_vld,s_151_i,s_151_o,s_151_o_ap_vld,s_152_i,s_152_o,s_152_o_ap_vld,s_153_i,s_153_o,s_153_o_ap_vld,s_154_i,s_154_o,s_154_o_ap_vld,s_155_i,s_155_o,s_155_o_ap_vld,s_156_i,s_156_o,s_156_o_ap_vld,s_157_i,s_157_o,s_157_o_ap_vld,s_158_i,s_158_o,s_158_o_ap_vld,s_159_i,s_159_o,s_159_o_ap_vld,LARc_address0,LARc_ce0,LARc_we0,LARc_d0,LARc_q0,LARc_address1,LARc_ce1,LARc_we1,LARc_d1,LARc_q1); 
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] s_0_i;
output  [15:0] s_0_o;
output   s_0_o_ap_vld;
input  [15:0] s_1_i;
output  [15:0] s_1_o;
output   s_1_o_ap_vld;
input  [15:0] s_2_i;
output  [15:0] s_2_o;
output   s_2_o_ap_vld;
input  [15:0] s_3_i;
output  [15:0] s_3_o;
output   s_3_o_ap_vld;
input  [15:0] s_4_i;
output  [15:0] s_4_o;
output   s_4_o_ap_vld;
input  [15:0] s_5_i;
output  [15:0] s_5_o;
output   s_5_o_ap_vld;
input  [15:0] s_6_i;
output  [15:0] s_6_o;
output   s_6_o_ap_vld;
input  [15:0] s_7_i;
output  [15:0] s_7_o;
output   s_7_o_ap_vld;
input  [15:0] s_8_i;
output  [15:0] s_8_o;
output   s_8_o_ap_vld;
input  [15:0] s_9_i;
output  [15:0] s_9_o;
output   s_9_o_ap_vld;
input  [15:0] s_10_i;
output  [15:0] s_10_o;
output   s_10_o_ap_vld;
input  [15:0] s_11_i;
output  [15:0] s_11_o;
output   s_11_o_ap_vld;
input  [15:0] s_12_i;
output  [15:0] s_12_o;
output   s_12_o_ap_vld;
input  [15:0] s_13_i;
output  [15:0] s_13_o;
output   s_13_o_ap_vld;
input  [15:0] s_14_i;
output  [15:0] s_14_o;
output   s_14_o_ap_vld;
input  [15:0] s_15_i;
output  [15:0] s_15_o;
output   s_15_o_ap_vld;
input  [15:0] s_16_i;
output  [15:0] s_16_o;
output   s_16_o_ap_vld;
input  [15:0] s_17_i;
output  [15:0] s_17_o;
output   s_17_o_ap_vld;
input  [15:0] s_18_i;
output  [15:0] s_18_o;
output   s_18_o_ap_vld;
input  [15:0] s_19_i;
output  [15:0] s_19_o;
output   s_19_o_ap_vld;
input  [15:0] s_20_i;
output  [15:0] s_20_o;
output   s_20_o_ap_vld;
input  [15:0] s_21_i;
output  [15:0] s_21_o;
output   s_21_o_ap_vld;
input  [15:0] s_22_i;
output  [15:0] s_22_o;
output   s_22_o_ap_vld;
input  [15:0] s_23_i;
output  [15:0] s_23_o;
output   s_23_o_ap_vld;
input  [15:0] s_24_i;
output  [15:0] s_24_o;
output   s_24_o_ap_vld;
input  [15:0] s_25_i;
output  [15:0] s_25_o;
output   s_25_o_ap_vld;
input  [15:0] s_26_i;
output  [15:0] s_26_o;
output   s_26_o_ap_vld;
input  [15:0] s_27_i;
output  [15:0] s_27_o;
output   s_27_o_ap_vld;
input  [15:0] s_28_i;
output  [15:0] s_28_o;
output   s_28_o_ap_vld;
input  [15:0] s_29_i;
output  [15:0] s_29_o;
output   s_29_o_ap_vld;
input  [15:0] s_30_i;
output  [15:0] s_30_o;
output   s_30_o_ap_vld;
input  [15:0] s_31_i;
output  [15:0] s_31_o;
output   s_31_o_ap_vld;
input  [15:0] s_32_i;
output  [15:0] s_32_o;
output   s_32_o_ap_vld;
input  [15:0] s_33_i;
output  [15:0] s_33_o;
output   s_33_o_ap_vld;
input  [15:0] s_34_i;
output  [15:0] s_34_o;
output   s_34_o_ap_vld;
input  [15:0] s_35_i;
output  [15:0] s_35_o;
output   s_35_o_ap_vld;
input  [15:0] s_36_i;
output  [15:0] s_36_o;
output   s_36_o_ap_vld;
input  [15:0] s_37_i;
output  [15:0] s_37_o;
output   s_37_o_ap_vld;
input  [15:0] s_38_i;
output  [15:0] s_38_o;
output   s_38_o_ap_vld;
input  [15:0] s_39_i;
output  [15:0] s_39_o;
output   s_39_o_ap_vld;
input  [15:0] s_40_i;
output  [15:0] s_40_o;
output   s_40_o_ap_vld;
input  [15:0] s_41_i;
output  [15:0] s_41_o;
output   s_41_o_ap_vld;
input  [15:0] s_42_i;
output  [15:0] s_42_o;
output   s_42_o_ap_vld;
input  [15:0] s_43_i;
output  [15:0] s_43_o;
output   s_43_o_ap_vld;
input  [15:0] s_44_i;
output  [15:0] s_44_o;
output   s_44_o_ap_vld;
input  [15:0] s_45_i;
output  [15:0] s_45_o;
output   s_45_o_ap_vld;
input  [15:0] s_46_i;
output  [15:0] s_46_o;
output   s_46_o_ap_vld;
input  [15:0] s_47_i;
output  [15:0] s_47_o;
output   s_47_o_ap_vld;
input  [15:0] s_48_i;
output  [15:0] s_48_o;
output   s_48_o_ap_vld;
input  [15:0] s_49_i;
output  [15:0] s_49_o;
output   s_49_o_ap_vld;
input  [15:0] s_50_i;
output  [15:0] s_50_o;
output   s_50_o_ap_vld;
input  [15:0] s_51_i;
output  [15:0] s_51_o;
output   s_51_o_ap_vld;
input  [15:0] s_52_i;
output  [15:0] s_52_o;
output   s_52_o_ap_vld;
input  [15:0] s_53_i;
output  [15:0] s_53_o;
output   s_53_o_ap_vld;
input  [15:0] s_54_i;
output  [15:0] s_54_o;
output   s_54_o_ap_vld;
input  [15:0] s_55_i;
output  [15:0] s_55_o;
output   s_55_o_ap_vld;
input  [15:0] s_56_i;
output  [15:0] s_56_o;
output   s_56_o_ap_vld;
input  [15:0] s_57_i;
output  [15:0] s_57_o;
output   s_57_o_ap_vld;
input  [15:0] s_58_i;
output  [15:0] s_58_o;
output   s_58_o_ap_vld;
input  [15:0] s_59_i;
output  [15:0] s_59_o;
output   s_59_o_ap_vld;
input  [15:0] s_60_i;
output  [15:0] s_60_o;
output   s_60_o_ap_vld;
input  [15:0] s_61_i;
output  [15:0] s_61_o;
output   s_61_o_ap_vld;
input  [15:0] s_62_i;
output  [15:0] s_62_o;
output   s_62_o_ap_vld;
input  [15:0] s_63_i;
output  [15:0] s_63_o;
output   s_63_o_ap_vld;
input  [15:0] s_64_i;
output  [15:0] s_64_o;
output   s_64_o_ap_vld;
input  [15:0] s_65_i;
output  [15:0] s_65_o;
output   s_65_o_ap_vld;
input  [15:0] s_66_i;
output  [15:0] s_66_o;
output   s_66_o_ap_vld;
input  [15:0] s_67_i;
output  [15:0] s_67_o;
output   s_67_o_ap_vld;
input  [15:0] s_68_i;
output  [15:0] s_68_o;
output   s_68_o_ap_vld;
input  [15:0] s_69_i;
output  [15:0] s_69_o;
output   s_69_o_ap_vld;
input  [15:0] s_70_i;
output  [15:0] s_70_o;
output   s_70_o_ap_vld;
input  [15:0] s_71_i;
output  [15:0] s_71_o;
output   s_71_o_ap_vld;
input  [15:0] s_72_i;
output  [15:0] s_72_o;
output   s_72_o_ap_vld;
input  [15:0] s_73_i;
output  [15:0] s_73_o;
output   s_73_o_ap_vld;
input  [15:0] s_74_i;
output  [15:0] s_74_o;
output   s_74_o_ap_vld;
input  [15:0] s_75_i;
output  [15:0] s_75_o;
output   s_75_o_ap_vld;
input  [15:0] s_76_i;
output  [15:0] s_76_o;
output   s_76_o_ap_vld;
input  [15:0] s_77_i;
output  [15:0] s_77_o;
output   s_77_o_ap_vld;
input  [15:0] s_78_i;
output  [15:0] s_78_o;
output   s_78_o_ap_vld;
input  [15:0] s_79_i;
output  [15:0] s_79_o;
output   s_79_o_ap_vld;
input  [15:0] s_80_i;
output  [15:0] s_80_o;
output   s_80_o_ap_vld;
input  [15:0] s_81_i;
output  [15:0] s_81_o;
output   s_81_o_ap_vld;
input  [15:0] s_82_i;
output  [15:0] s_82_o;
output   s_82_o_ap_vld;
input  [15:0] s_83_i;
output  [15:0] s_83_o;
output   s_83_o_ap_vld;
input  [15:0] s_84_i;
output  [15:0] s_84_o;
output   s_84_o_ap_vld;
input  [15:0] s_85_i;
output  [15:0] s_85_o;
output   s_85_o_ap_vld;
input  [15:0] s_86_i;
output  [15:0] s_86_o;
output   s_86_o_ap_vld;
input  [15:0] s_87_i;
output  [15:0] s_87_o;
output   s_87_o_ap_vld;
input  [15:0] s_88_i;
output  [15:0] s_88_o;
output   s_88_o_ap_vld;
input  [15:0] s_89_i;
output  [15:0] s_89_o;
output   s_89_o_ap_vld;
input  [15:0] s_90_i;
output  [15:0] s_90_o;
output   s_90_o_ap_vld;
input  [15:0] s_91_i;
output  [15:0] s_91_o;
output   s_91_o_ap_vld;
input  [15:0] s_92_i;
output  [15:0] s_92_o;
output   s_92_o_ap_vld;
input  [15:0] s_93_i;
output  [15:0] s_93_o;
output   s_93_o_ap_vld;
input  [15:0] s_94_i;
output  [15:0] s_94_o;
output   s_94_o_ap_vld;
input  [15:0] s_95_i;
output  [15:0] s_95_o;
output   s_95_o_ap_vld;
input  [15:0] s_96_i;
output  [15:0] s_96_o;
output   s_96_o_ap_vld;
input  [15:0] s_97_i;
output  [15:0] s_97_o;
output   s_97_o_ap_vld;
input  [15:0] s_98_i;
output  [15:0] s_98_o;
output   s_98_o_ap_vld;
input  [15:0] s_99_i;
output  [15:0] s_99_o;
output   s_99_o_ap_vld;
input  [15:0] s_100_i;
output  [15:0] s_100_o;
output   s_100_o_ap_vld;
input  [15:0] s_101_i;
output  [15:0] s_101_o;
output   s_101_o_ap_vld;
input  [15:0] s_102_i;
output  [15:0] s_102_o;
output   s_102_o_ap_vld;
input  [15:0] s_103_i;
output  [15:0] s_103_o;
output   s_103_o_ap_vld;
input  [15:0] s_104_i;
output  [15:0] s_104_o;
output   s_104_o_ap_vld;
input  [15:0] s_105_i;
output  [15:0] s_105_o;
output   s_105_o_ap_vld;
input  [15:0] s_106_i;
output  [15:0] s_106_o;
output   s_106_o_ap_vld;
input  [15:0] s_107_i;
output  [15:0] s_107_o;
output   s_107_o_ap_vld;
input  [15:0] s_108_i;
output  [15:0] s_108_o;
output   s_108_o_ap_vld;
input  [15:0] s_109_i;
output  [15:0] s_109_o;
output   s_109_o_ap_vld;
input  [15:0] s_110_i;
output  [15:0] s_110_o;
output   s_110_o_ap_vld;
input  [15:0] s_111_i;
output  [15:0] s_111_o;
output   s_111_o_ap_vld;
input  [15:0] s_112_i;
output  [15:0] s_112_o;
output   s_112_o_ap_vld;
input  [15:0] s_113_i;
output  [15:0] s_113_o;
output   s_113_o_ap_vld;
input  [15:0] s_114_i;
output  [15:0] s_114_o;
output   s_114_o_ap_vld;
input  [15:0] s_115_i;
output  [15:0] s_115_o;
output   s_115_o_ap_vld;
input  [15:0] s_116_i;
output  [15:0] s_116_o;
output   s_116_o_ap_vld;
input  [15:0] s_117_i;
output  [15:0] s_117_o;
output   s_117_o_ap_vld;
input  [15:0] s_118_i;
output  [15:0] s_118_o;
output   s_118_o_ap_vld;
input  [15:0] s_119_i;
output  [15:0] s_119_o;
output   s_119_o_ap_vld;
input  [15:0] s_120_i;
output  [15:0] s_120_o;
output   s_120_o_ap_vld;
input  [15:0] s_121_i;
output  [15:0] s_121_o;
output   s_121_o_ap_vld;
input  [15:0] s_122_i;
output  [15:0] s_122_o;
output   s_122_o_ap_vld;
input  [15:0] s_123_i;
output  [15:0] s_123_o;
output   s_123_o_ap_vld;
input  [15:0] s_124_i;
output  [15:0] s_124_o;
output   s_124_o_ap_vld;
input  [15:0] s_125_i;
output  [15:0] s_125_o;
output   s_125_o_ap_vld;
input  [15:0] s_126_i;
output  [15:0] s_126_o;
output   s_126_o_ap_vld;
input  [15:0] s_127_i;
output  [15:0] s_127_o;
output   s_127_o_ap_vld;
input  [15:0] s_128_i;
output  [15:0] s_128_o;
output   s_128_o_ap_vld;
input  [15:0] s_129_i;
output  [15:0] s_129_o;
output   s_129_o_ap_vld;
input  [15:0] s_130_i;
output  [15:0] s_130_o;
output   s_130_o_ap_vld;
input  [15:0] s_131_i;
output  [15:0] s_131_o;
output   s_131_o_ap_vld;
input  [15:0] s_132_i;
output  [15:0] s_132_o;
output   s_132_o_ap_vld;
input  [15:0] s_133_i;
output  [15:0] s_133_o;
output   s_133_o_ap_vld;
input  [15:0] s_134_i;
output  [15:0] s_134_o;
output   s_134_o_ap_vld;
input  [15:0] s_135_i;
output  [15:0] s_135_o;
output   s_135_o_ap_vld;
input  [15:0] s_136_i;
output  [15:0] s_136_o;
output   s_136_o_ap_vld;
input  [15:0] s_137_i;
output  [15:0] s_137_o;
output   s_137_o_ap_vld;
input  [15:0] s_138_i;
output  [15:0] s_138_o;
output   s_138_o_ap_vld;
input  [15:0] s_139_i;
output  [15:0] s_139_o;
output   s_139_o_ap_vld;
input  [15:0] s_140_i;
output  [15:0] s_140_o;
output   s_140_o_ap_vld;
input  [15:0] s_141_i;
output  [15:0] s_141_o;
output   s_141_o_ap_vld;
input  [15:0] s_142_i;
output  [15:0] s_142_o;
output   s_142_o_ap_vld;
input  [15:0] s_143_i;
output  [15:0] s_143_o;
output   s_143_o_ap_vld;
input  [15:0] s_144_i;
output  [15:0] s_144_o;
output   s_144_o_ap_vld;
input  [15:0] s_145_i;
output  [15:0] s_145_o;
output   s_145_o_ap_vld;
input  [15:0] s_146_i;
output  [15:0] s_146_o;
output   s_146_o_ap_vld;
input  [15:0] s_147_i;
output  [15:0] s_147_o;
output   s_147_o_ap_vld;
input  [15:0] s_148_i;
output  [15:0] s_148_o;
output   s_148_o_ap_vld;
input  [15:0] s_149_i;
output  [15:0] s_149_o;
output   s_149_o_ap_vld;
input  [15:0] s_150_i;
output  [15:0] s_150_o;
output   s_150_o_ap_vld;
input  [15:0] s_151_i;
output  [15:0] s_151_o;
output   s_151_o_ap_vld;
input  [15:0] s_152_i;
output  [15:0] s_152_o;
output   s_152_o_ap_vld;
input  [15:0] s_153_i;
output  [15:0] s_153_o;
output   s_153_o_ap_vld;
input  [15:0] s_154_i;
output  [15:0] s_154_o;
output   s_154_o_ap_vld;
input  [15:0] s_155_i;
output  [15:0] s_155_o;
output   s_155_o_ap_vld;
input  [15:0] s_156_i;
output  [15:0] s_156_o;
output   s_156_o_ap_vld;
input  [15:0] s_157_i;
output  [15:0] s_157_o;
output   s_157_o_ap_vld;
input  [15:0] s_158_i;
output  [15:0] s_158_o;
output   s_158_o_ap_vld;
input  [15:0] s_159_i;
output  [15:0] s_159_o;
output   s_159_o_ap_vld;
output  [2:0] LARc_address0;
output   LARc_ce0;
output   LARc_we0;
output  [15:0] LARc_d0;
input  [15:0] LARc_q0;
output  [2:0] LARc_address1;
output   LARc_ce1;
output   LARc_we1;
output  [15:0] LARc_d1;
input  [15:0] LARc_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] s_0_o;
reg[15:0] s_1_o;
reg[15:0] s_2_o;
reg[15:0] s_3_o;
reg[15:0] s_4_o;
reg[15:0] s_5_o;
reg[15:0] s_6_o;
reg[15:0] s_7_o;
reg[15:0] s_8_o;
reg[15:0] s_9_o;
reg[15:0] s_10_o;
reg[15:0] s_11_o;
reg[15:0] s_12_o;
reg[15:0] s_13_o;
reg[15:0] s_14_o;
reg[15:0] s_15_o;
reg[15:0] s_16_o;
reg[15:0] s_17_o;
reg[15:0] s_18_o;
reg[15:0] s_19_o;
reg[15:0] s_20_o;
reg[15:0] s_21_o;
reg[15:0] s_22_o;
reg[15:0] s_23_o;
reg[15:0] s_24_o;
reg[15:0] s_25_o;
reg[15:0] s_26_o;
reg[15:0] s_27_o;
reg[15:0] s_28_o;
reg[15:0] s_29_o;
reg[15:0] s_30_o;
reg[15:0] s_31_o;
reg[15:0] s_32_o;
reg[15:0] s_33_o;
reg[15:0] s_34_o;
reg[15:0] s_35_o;
reg[15:0] s_36_o;
reg[15:0] s_37_o;
reg[15:0] s_38_o;
reg[15:0] s_39_o;
reg[15:0] s_40_o;
reg[15:0] s_41_o;
reg[15:0] s_42_o;
reg[15:0] s_43_o;
reg[15:0] s_44_o;
reg[15:0] s_45_o;
reg[15:0] s_46_o;
reg[15:0] s_47_o;
reg[15:0] s_48_o;
reg[15:0] s_49_o;
reg[15:0] s_50_o;
reg[15:0] s_51_o;
reg[15:0] s_52_o;
reg[15:0] s_53_o;
reg[15:0] s_54_o;
reg[15:0] s_55_o;
reg[15:0] s_56_o;
reg[15:0] s_57_o;
reg[15:0] s_58_o;
reg[15:0] s_59_o;
reg[15:0] s_60_o;
reg[15:0] s_61_o;
reg[15:0] s_62_o;
reg[15:0] s_63_o;
reg[15:0] s_64_o;
reg[15:0] s_65_o;
reg[15:0] s_66_o;
reg[15:0] s_67_o;
reg[15:0] s_68_o;
reg[15:0] s_69_o;
reg[15:0] s_70_o;
reg[15:0] s_71_o;
reg[15:0] s_72_o;
reg[15:0] s_73_o;
reg[15:0] s_74_o;
reg[15:0] s_75_o;
reg[15:0] s_76_o;
reg[15:0] s_77_o;
reg[15:0] s_78_o;
reg[15:0] s_79_o;
reg[15:0] s_80_o;
reg[15:0] s_81_o;
reg[15:0] s_82_o;
reg[15:0] s_83_o;
reg[15:0] s_84_o;
reg[15:0] s_85_o;
reg[15:0] s_86_o;
reg[15:0] s_87_o;
reg[15:0] s_88_o;
reg[15:0] s_89_o;
reg[15:0] s_90_o;
reg[15:0] s_91_o;
reg[15:0] s_92_o;
reg[15:0] s_93_o;
reg[15:0] s_94_o;
reg[15:0] s_95_o;
reg[15:0] s_96_o;
reg[15:0] s_97_o;
reg[15:0] s_98_o;
reg[15:0] s_99_o;
reg[15:0] s_100_o;
reg[15:0] s_101_o;
reg[15:0] s_102_o;
reg[15:0] s_103_o;
reg[15:0] s_104_o;
reg[15:0] s_105_o;
reg[15:0] s_106_o;
reg[15:0] s_107_o;
reg[15:0] s_108_o;
reg[15:0] s_109_o;
reg[15:0] s_110_o;
reg[15:0] s_111_o;
reg[15:0] s_112_o;
reg[15:0] s_113_o;
reg[15:0] s_114_o;
reg[15:0] s_115_o;
reg[15:0] s_116_o;
reg[15:0] s_117_o;
reg[15:0] s_118_o;
reg[15:0] s_119_o;
reg[15:0] s_120_o;
reg[15:0] s_121_o;
reg[15:0] s_122_o;
reg[15:0] s_123_o;
reg[15:0] s_124_o;
reg[15:0] s_125_o;
reg[15:0] s_126_o;
reg[15:0] s_127_o;
reg[15:0] s_128_o;
reg[15:0] s_129_o;
reg[15:0] s_130_o;
reg[15:0] s_131_o;
reg[15:0] s_132_o;
reg[15:0] s_133_o;
reg[15:0] s_134_o;
reg[15:0] s_135_o;
reg[15:0] s_136_o;
reg[15:0] s_137_o;
reg[15:0] s_138_o;
reg[15:0] s_139_o;
reg[15:0] s_140_o;
reg[15:0] s_141_o;
reg[15:0] s_142_o;
reg[15:0] s_143_o;
reg[15:0] s_144_o;
reg[15:0] s_145_o;
reg[15:0] s_146_o;
reg[15:0] s_147_o;
reg[15:0] s_148_o;
reg[15:0] s_149_o;
reg[15:0] s_150_o;
reg[15:0] s_151_o;
reg[15:0] s_152_o;
reg[15:0] s_153_o;
reg[15:0] s_154_o;
reg[15:0] s_155_o;
reg[15:0] s_156_o;
reg[15:0] s_157_o;
reg[15:0] s_158_o;
reg[15:0] s_159_o;
reg[2:0] LARc_address0;
reg LARc_ce0;
reg LARc_we0;
reg[15:0] LARc_d0;
reg[2:0] LARc_address1;
reg LARc_ce1;
reg LARc_we1;
reg[15:0] LARc_d1;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] bitoff_address0;
reg    bitoff_ce0;
wire   [3:0] bitoff_q0;
reg   [7:0] bitoff_address1;
reg    bitoff_ce1;
wire   [3:0] bitoff_q1;
reg   [7:0] bitoff_address2;
reg    bitoff_ce2;
wire   [3:0] bitoff_q2;
reg   [7:0] bitoff_address3;
reg    bitoff_ce3;
wire   [3:0] bitoff_q3;
wire   [31:0] trunc_ln315_fu_759_p1;
reg   [31:0] trunc_ln315_reg_877;
wire    ap_CS_fsm_state3;
wire   [31:0] trunc_ln315_1_fu_767_p1;
reg   [31:0] trunc_ln315_1_reg_882;
wire   [31:0] trunc_ln315_2_fu_775_p1;
reg   [31:0] trunc_ln315_2_reg_887;
wire   [31:0] trunc_ln315_3_fu_783_p1;
reg   [31:0] trunc_ln315_3_reg_892;
wire   [31:0] trunc_ln315_4_fu_791_p1;
reg   [31:0] trunc_ln315_4_reg_897;
wire   [31:0] trunc_ln315_5_fu_799_p1;
reg   [31:0] trunc_ln315_5_reg_902;
wire   [31:0] trunc_ln315_6_fu_807_p1;
reg   [31:0] trunc_ln315_6_reg_907;
wire   [31:0] trunc_ln318_fu_815_p1;
reg   [31:0] trunc_ln318_reg_912;
wire    grp_Autocorrelation_17_18_fu_388_ap_start;
wire    grp_Autocorrelation_17_18_fu_388_ap_done;
wire    grp_Autocorrelation_17_18_fu_388_ap_idle;
wire    grp_Autocorrelation_17_18_fu_388_ap_ready;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_0_o;
wire    grp_Autocorrelation_17_18_fu_388_s_0_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_1_o;
wire    grp_Autocorrelation_17_18_fu_388_s_1_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_2_o;
wire    grp_Autocorrelation_17_18_fu_388_s_2_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_3_o;
wire    grp_Autocorrelation_17_18_fu_388_s_3_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_4_o;
wire    grp_Autocorrelation_17_18_fu_388_s_4_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_5_o;
wire    grp_Autocorrelation_17_18_fu_388_s_5_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_6_o;
wire    grp_Autocorrelation_17_18_fu_388_s_6_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_7_o;
wire    grp_Autocorrelation_17_18_fu_388_s_7_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_8_o;
wire    grp_Autocorrelation_17_18_fu_388_s_8_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_9_o;
wire    grp_Autocorrelation_17_18_fu_388_s_9_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_10_o;
wire    grp_Autocorrelation_17_18_fu_388_s_10_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_11_o;
wire    grp_Autocorrelation_17_18_fu_388_s_11_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_12_o;
wire    grp_Autocorrelation_17_18_fu_388_s_12_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_13_o;
wire    grp_Autocorrelation_17_18_fu_388_s_13_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_14_o;
wire    grp_Autocorrelation_17_18_fu_388_s_14_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_15_o;
wire    grp_Autocorrelation_17_18_fu_388_s_15_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_16_o;
wire    grp_Autocorrelation_17_18_fu_388_s_16_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_17_o;
wire    grp_Autocorrelation_17_18_fu_388_s_17_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_18_o;
wire    grp_Autocorrelation_17_18_fu_388_s_18_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_19_o;
wire    grp_Autocorrelation_17_18_fu_388_s_19_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_20_o;
wire    grp_Autocorrelation_17_18_fu_388_s_20_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_21_o;
wire    grp_Autocorrelation_17_18_fu_388_s_21_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_22_o;
wire    grp_Autocorrelation_17_18_fu_388_s_22_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_23_o;
wire    grp_Autocorrelation_17_18_fu_388_s_23_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_24_o;
wire    grp_Autocorrelation_17_18_fu_388_s_24_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_25_o;
wire    grp_Autocorrelation_17_18_fu_388_s_25_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_26_o;
wire    grp_Autocorrelation_17_18_fu_388_s_26_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_27_o;
wire    grp_Autocorrelation_17_18_fu_388_s_27_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_28_o;
wire    grp_Autocorrelation_17_18_fu_388_s_28_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_29_o;
wire    grp_Autocorrelation_17_18_fu_388_s_29_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_30_o;
wire    grp_Autocorrelation_17_18_fu_388_s_30_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_31_o;
wire    grp_Autocorrelation_17_18_fu_388_s_31_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_32_o;
wire    grp_Autocorrelation_17_18_fu_388_s_32_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_33_o;
wire    grp_Autocorrelation_17_18_fu_388_s_33_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_34_o;
wire    grp_Autocorrelation_17_18_fu_388_s_34_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_35_o;
wire    grp_Autocorrelation_17_18_fu_388_s_35_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_36_o;
wire    grp_Autocorrelation_17_18_fu_388_s_36_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_37_o;
wire    grp_Autocorrelation_17_18_fu_388_s_37_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_38_o;
wire    grp_Autocorrelation_17_18_fu_388_s_38_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_39_o;
wire    grp_Autocorrelation_17_18_fu_388_s_39_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_40_o;
wire    grp_Autocorrelation_17_18_fu_388_s_40_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_41_o;
wire    grp_Autocorrelation_17_18_fu_388_s_41_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_42_o;
wire    grp_Autocorrelation_17_18_fu_388_s_42_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_43_o;
wire    grp_Autocorrelation_17_18_fu_388_s_43_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_44_o;
wire    grp_Autocorrelation_17_18_fu_388_s_44_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_45_o;
wire    grp_Autocorrelation_17_18_fu_388_s_45_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_46_o;
wire    grp_Autocorrelation_17_18_fu_388_s_46_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_47_o;
wire    grp_Autocorrelation_17_18_fu_388_s_47_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_48_o;
wire    grp_Autocorrelation_17_18_fu_388_s_48_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_49_o;
wire    grp_Autocorrelation_17_18_fu_388_s_49_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_50_o;
wire    grp_Autocorrelation_17_18_fu_388_s_50_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_51_o;
wire    grp_Autocorrelation_17_18_fu_388_s_51_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_52_o;
wire    grp_Autocorrelation_17_18_fu_388_s_52_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_53_o;
wire    grp_Autocorrelation_17_18_fu_388_s_53_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_54_o;
wire    grp_Autocorrelation_17_18_fu_388_s_54_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_55_o;
wire    grp_Autocorrelation_17_18_fu_388_s_55_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_56_o;
wire    grp_Autocorrelation_17_18_fu_388_s_56_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_57_o;
wire    grp_Autocorrelation_17_18_fu_388_s_57_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_58_o;
wire    grp_Autocorrelation_17_18_fu_388_s_58_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_59_o;
wire    grp_Autocorrelation_17_18_fu_388_s_59_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_60_o;
wire    grp_Autocorrelation_17_18_fu_388_s_60_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_61_o;
wire    grp_Autocorrelation_17_18_fu_388_s_61_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_62_o;
wire    grp_Autocorrelation_17_18_fu_388_s_62_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_63_o;
wire    grp_Autocorrelation_17_18_fu_388_s_63_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_64_o;
wire    grp_Autocorrelation_17_18_fu_388_s_64_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_65_o;
wire    grp_Autocorrelation_17_18_fu_388_s_65_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_66_o;
wire    grp_Autocorrelation_17_18_fu_388_s_66_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_67_o;
wire    grp_Autocorrelation_17_18_fu_388_s_67_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_68_o;
wire    grp_Autocorrelation_17_18_fu_388_s_68_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_69_o;
wire    grp_Autocorrelation_17_18_fu_388_s_69_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_70_o;
wire    grp_Autocorrelation_17_18_fu_388_s_70_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_71_o;
wire    grp_Autocorrelation_17_18_fu_388_s_71_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_72_o;
wire    grp_Autocorrelation_17_18_fu_388_s_72_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_73_o;
wire    grp_Autocorrelation_17_18_fu_388_s_73_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_74_o;
wire    grp_Autocorrelation_17_18_fu_388_s_74_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_75_o;
wire    grp_Autocorrelation_17_18_fu_388_s_75_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_76_o;
wire    grp_Autocorrelation_17_18_fu_388_s_76_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_77_o;
wire    grp_Autocorrelation_17_18_fu_388_s_77_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_78_o;
wire    grp_Autocorrelation_17_18_fu_388_s_78_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_79_o;
wire    grp_Autocorrelation_17_18_fu_388_s_79_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_80_o;
wire    grp_Autocorrelation_17_18_fu_388_s_80_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_81_o;
wire    grp_Autocorrelation_17_18_fu_388_s_81_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_82_o;
wire    grp_Autocorrelation_17_18_fu_388_s_82_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_83_o;
wire    grp_Autocorrelation_17_18_fu_388_s_83_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_84_o;
wire    grp_Autocorrelation_17_18_fu_388_s_84_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_85_o;
wire    grp_Autocorrelation_17_18_fu_388_s_85_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_86_o;
wire    grp_Autocorrelation_17_18_fu_388_s_86_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_87_o;
wire    grp_Autocorrelation_17_18_fu_388_s_87_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_88_o;
wire    grp_Autocorrelation_17_18_fu_388_s_88_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_89_o;
wire    grp_Autocorrelation_17_18_fu_388_s_89_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_90_o;
wire    grp_Autocorrelation_17_18_fu_388_s_90_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_91_o;
wire    grp_Autocorrelation_17_18_fu_388_s_91_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_92_o;
wire    grp_Autocorrelation_17_18_fu_388_s_92_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_93_o;
wire    grp_Autocorrelation_17_18_fu_388_s_93_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_94_o;
wire    grp_Autocorrelation_17_18_fu_388_s_94_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_95_o;
wire    grp_Autocorrelation_17_18_fu_388_s_95_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_96_o;
wire    grp_Autocorrelation_17_18_fu_388_s_96_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_97_o;
wire    grp_Autocorrelation_17_18_fu_388_s_97_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_98_o;
wire    grp_Autocorrelation_17_18_fu_388_s_98_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_99_o;
wire    grp_Autocorrelation_17_18_fu_388_s_99_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_100_o;
wire    grp_Autocorrelation_17_18_fu_388_s_100_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_101_o;
wire    grp_Autocorrelation_17_18_fu_388_s_101_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_102_o;
wire    grp_Autocorrelation_17_18_fu_388_s_102_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_103_o;
wire    grp_Autocorrelation_17_18_fu_388_s_103_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_104_o;
wire    grp_Autocorrelation_17_18_fu_388_s_104_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_105_o;
wire    grp_Autocorrelation_17_18_fu_388_s_105_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_106_o;
wire    grp_Autocorrelation_17_18_fu_388_s_106_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_107_o;
wire    grp_Autocorrelation_17_18_fu_388_s_107_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_108_o;
wire    grp_Autocorrelation_17_18_fu_388_s_108_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_109_o;
wire    grp_Autocorrelation_17_18_fu_388_s_109_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_110_o;
wire    grp_Autocorrelation_17_18_fu_388_s_110_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_111_o;
wire    grp_Autocorrelation_17_18_fu_388_s_111_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_112_o;
wire    grp_Autocorrelation_17_18_fu_388_s_112_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_113_o;
wire    grp_Autocorrelation_17_18_fu_388_s_113_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_114_o;
wire    grp_Autocorrelation_17_18_fu_388_s_114_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_115_o;
wire    grp_Autocorrelation_17_18_fu_388_s_115_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_116_o;
wire    grp_Autocorrelation_17_18_fu_388_s_116_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_117_o;
wire    grp_Autocorrelation_17_18_fu_388_s_117_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_118_o;
wire    grp_Autocorrelation_17_18_fu_388_s_118_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_119_o;
wire    grp_Autocorrelation_17_18_fu_388_s_119_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_120_o;
wire    grp_Autocorrelation_17_18_fu_388_s_120_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_121_o;
wire    grp_Autocorrelation_17_18_fu_388_s_121_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_122_o;
wire    grp_Autocorrelation_17_18_fu_388_s_122_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_123_o;
wire    grp_Autocorrelation_17_18_fu_388_s_123_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_124_o;
wire    grp_Autocorrelation_17_18_fu_388_s_124_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_125_o;
wire    grp_Autocorrelation_17_18_fu_388_s_125_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_126_o;
wire    grp_Autocorrelation_17_18_fu_388_s_126_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_127_o;
wire    grp_Autocorrelation_17_18_fu_388_s_127_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_128_o;
wire    grp_Autocorrelation_17_18_fu_388_s_128_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_129_o;
wire    grp_Autocorrelation_17_18_fu_388_s_129_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_130_o;
wire    grp_Autocorrelation_17_18_fu_388_s_130_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_131_o;
wire    grp_Autocorrelation_17_18_fu_388_s_131_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_132_o;
wire    grp_Autocorrelation_17_18_fu_388_s_132_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_133_o;
wire    grp_Autocorrelation_17_18_fu_388_s_133_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_134_o;
wire    grp_Autocorrelation_17_18_fu_388_s_134_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_135_o;
wire    grp_Autocorrelation_17_18_fu_388_s_135_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_136_o;
wire    grp_Autocorrelation_17_18_fu_388_s_136_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_137_o;
wire    grp_Autocorrelation_17_18_fu_388_s_137_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_138_o;
wire    grp_Autocorrelation_17_18_fu_388_s_138_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_139_o;
wire    grp_Autocorrelation_17_18_fu_388_s_139_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_140_o;
wire    grp_Autocorrelation_17_18_fu_388_s_140_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_141_o;
wire    grp_Autocorrelation_17_18_fu_388_s_141_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_142_o;
wire    grp_Autocorrelation_17_18_fu_388_s_142_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_143_o;
wire    grp_Autocorrelation_17_18_fu_388_s_143_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_144_o;
wire    grp_Autocorrelation_17_18_fu_388_s_144_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_145_o;
wire    grp_Autocorrelation_17_18_fu_388_s_145_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_146_o;
wire    grp_Autocorrelation_17_18_fu_388_s_146_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_147_o;
wire    grp_Autocorrelation_17_18_fu_388_s_147_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_148_o;
wire    grp_Autocorrelation_17_18_fu_388_s_148_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_149_o;
wire    grp_Autocorrelation_17_18_fu_388_s_149_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_150_o;
wire    grp_Autocorrelation_17_18_fu_388_s_150_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_151_o;
wire    grp_Autocorrelation_17_18_fu_388_s_151_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_152_o;
wire    grp_Autocorrelation_17_18_fu_388_s_152_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_153_o;
wire    grp_Autocorrelation_17_18_fu_388_s_153_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_154_o;
wire    grp_Autocorrelation_17_18_fu_388_s_154_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_155_o;
wire    grp_Autocorrelation_17_18_fu_388_s_155_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_156_o;
wire    grp_Autocorrelation_17_18_fu_388_s_156_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_157_o;
wire    grp_Autocorrelation_17_18_fu_388_s_157_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_158_o;
wire    grp_Autocorrelation_17_18_fu_388_s_158_o_ap_vld;
wire   [15:0] grp_Autocorrelation_17_18_fu_388_s_159_o;
wire    grp_Autocorrelation_17_18_fu_388_s_159_o_ap_vld;
wire   [63:0] grp_Autocorrelation_17_18_fu_388_L_ACF_0_o;
wire    grp_Autocorrelation_17_18_fu_388_L_ACF_0_o_ap_vld;
wire   [63:0] grp_Autocorrelation_17_18_fu_388_L_ACF_1_o;
wire    grp_Autocorrelation_17_18_fu_388_L_ACF_1_o_ap_vld;
wire   [63:0] grp_Autocorrelation_17_18_fu_388_L_ACF_2_o;
wire    grp_Autocorrelation_17_18_fu_388_L_ACF_2_o_ap_vld;
wire   [63:0] grp_Autocorrelation_17_18_fu_388_L_ACF_3_o;
wire    grp_Autocorrelation_17_18_fu_388_L_ACF_3_o_ap_vld;
wire   [63:0] grp_Autocorrelation_17_18_fu_388_L_ACF_4_o;
wire    grp_Autocorrelation_17_18_fu_388_L_ACF_4_o_ap_vld;
wire   [63:0] grp_Autocorrelation_17_18_fu_388_L_ACF_5_o;
wire    grp_Autocorrelation_17_18_fu_388_L_ACF_5_o_ap_vld;
wire   [63:0] grp_Autocorrelation_17_18_fu_388_L_ACF_6_o;
wire    grp_Autocorrelation_17_18_fu_388_L_ACF_6_o_ap_vld;
wire   [63:0] grp_Autocorrelation_17_18_fu_388_L_ACF_7_o;
wire    grp_Autocorrelation_17_18_fu_388_L_ACF_7_o_ap_vld;
wire   [63:0] grp_Autocorrelation_17_18_fu_388_L_ACF_8_o;
wire    grp_Autocorrelation_17_18_fu_388_L_ACF_8_o_ap_vld;
wire   [7:0] grp_Autocorrelation_17_18_fu_388_bitoff_address0;
wire    grp_Autocorrelation_17_18_fu_388_bitoff_ce0;
wire   [7:0] grp_Autocorrelation_17_18_fu_388_bitoff_address1;
wire    grp_Autocorrelation_17_18_fu_388_bitoff_ce1;
wire   [7:0] grp_Autocorrelation_17_18_fu_388_bitoff_address2;
wire    grp_Autocorrelation_17_18_fu_388_bitoff_ce2;
wire   [7:0] grp_Autocorrelation_17_18_fu_388_bitoff_address3;
wire    grp_Autocorrelation_17_18_fu_388_bitoff_ce3;
wire    grp_Reflection_coefficients_fu_723_ap_start;
wire    grp_Reflection_coefficients_fu_723_ap_done;
wire    grp_Reflection_coefficients_fu_723_ap_idle;
wire    grp_Reflection_coefficients_fu_723_ap_ready;
wire   [2:0] grp_Reflection_coefficients_fu_723_LARc_address0;
wire    grp_Reflection_coefficients_fu_723_LARc_ce0;
wire    grp_Reflection_coefficients_fu_723_LARc_we0;
wire   [15:0] grp_Reflection_coefficients_fu_723_LARc_d0;
wire   [7:0] grp_Reflection_coefficients_fu_723_bitoff_address0;
wire    grp_Reflection_coefficients_fu_723_bitoff_ce0;
wire   [7:0] grp_Reflection_coefficients_fu_723_bitoff_address1;
wire    grp_Reflection_coefficients_fu_723_bitoff_ce1;
wire   [7:0] grp_Reflection_coefficients_fu_723_bitoff_address2;
wire    grp_Reflection_coefficients_fu_723_bitoff_ce2;
wire   [7:0] grp_Reflection_coefficients_fu_723_bitoff_address3;
wire    grp_Reflection_coefficients_fu_723_bitoff_ce3;
wire    grp_Transformation_to_Log_Area_Ratios_fu_740_ap_start;
wire    grp_Transformation_to_Log_Area_Ratios_fu_740_ap_done;
wire    grp_Transformation_to_Log_Area_Ratios_fu_740_ap_idle;
wire    grp_Transformation_to_Log_Area_Ratios_fu_740_ap_ready;
wire   [2:0] grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_address0;
wire    grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_ce0;
wire    grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_we0;
wire   [15:0] grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_d0;
wire   [2:0] grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_address1;
wire    grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_ce1;
wire    grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_we1;
wire   [15:0] grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_d1;
wire    grp_Quantization_and_coding_fu_746_ap_start;
wire    grp_Quantization_and_coding_fu_746_ap_done;
wire    grp_Quantization_and_coding_fu_746_ap_idle;
wire    grp_Quantization_and_coding_fu_746_ap_ready;
wire   [2:0] grp_Quantization_and_coding_fu_746_LARc_address0;
wire    grp_Quantization_and_coding_fu_746_LARc_ce0;
wire    grp_Quantization_and_coding_fu_746_LARc_we0;
wire   [15:0] grp_Quantization_and_coding_fu_746_LARc_d0;
wire   [2:0] grp_Quantization_and_coding_fu_746_LARc_address1;
wire    grp_Quantization_and_coding_fu_746_LARc_ce1;
wire    grp_Quantization_and_coding_fu_746_LARc_we1;
wire   [15:0] grp_Quantization_and_coding_fu_746_LARc_d1;
reg    grp_Autocorrelation_17_18_fu_388_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [63:0] L_ACF_fu_352;
reg   [63:0] L_ACF_1_fu_356;
reg   [63:0] L_ACF_2_fu_360;
reg   [63:0] L_ACF_3_fu_364;
reg   [63:0] L_ACF_4_fu_368;
reg   [63:0] L_ACF_5_fu_372;
reg   [63:0] L_ACF_6_fu_376;
reg   [63:0] L_ACF_7_fu_380;
reg   [63:0] L_ACF_8_fu_384;
reg    grp_Reflection_coefficients_fu_723_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_Transformation_to_Log_Area_Ratios_fu_740_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_Quantization_and_coding_fu_746_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_Autocorrelation_17_18_fu_388_ap_start_reg = 1'b0;
#0 grp_Reflection_coefficients_fu_723_ap_start_reg = 1'b0;
#0 grp_Transformation_to_Log_Area_Ratios_fu_740_ap_start_reg = 1'b0;
#0 grp_Quantization_and_coding_fu_746_ap_start_reg = 1'b0;
end
Gsm_LPC_Analysis_bitoff_ROM_AUTO_1R #(.DataWidth( 4 ),.AddressRange( 256 ),.AddressWidth( 8 ))
bitoff_U(.clk(ap_clk),.reset(ap_rst),.address0(bitoff_address0),.ce0(bitoff_ce0),.q0(bitoff_q0),.address1(bitoff_address1),.ce1(bitoff_ce1),.q1(bitoff_q1),.address2(bitoff_address2),.ce2(bitoff_ce2),.q2(bitoff_q2),.address3(bitoff_address3),.ce3(bitoff_ce3),.q3(bitoff_q3));
Gsm_LPC_Analysis_Autocorrelation_17_18 grp_Autocorrelation_17_18_fu_388(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Autocorrelation_17_18_fu_388_ap_start),.ap_done(grp_Autocorrelation_17_18_fu_388_ap_done),.ap_idle(grp_Autocorrelation_17_18_fu_388_ap_idle),.ap_ready(grp_Autocorrelation_17_18_fu_388_ap_ready),.s_0_i(s_0_i),.s_0_o(grp_Autocorrelation_17_18_fu_388_s_0_o),.s_0_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_0_o_ap_vld),.s_1_i(s_1_i),.s_1_o(grp_Autocorrelation_17_18_fu_388_s_1_o),.s_1_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_1_o_ap_vld),.s_2_i(s_2_i),.s_2_o(grp_Autocorrelation_17_18_fu_388_s_2_o),.s_2_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_2_o_ap_vld),.s_3_i(s_3_i),.s_3_o(grp_Autocorrelation_17_18_fu_388_s_3_o),.s_3_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_3_o_ap_vld),.s_4_i(s_4_i),.s_4_o(grp_Autocorrelation_17_18_fu_388_s_4_o),.s_4_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_4_o_ap_vld),.s_5_i(s_5_i),.s_5_o(grp_Autocorrelation_17_18_fu_388_s_5_o),.s_5_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_5_o_ap_vld),.s_6_i(s_6_i),.s_6_o(grp_Autocorrelation_17_18_fu_388_s_6_o),.s_6_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_6_o_ap_vld),.s_7_i(s_7_i),.s_7_o(grp_Autocorrelation_17_18_fu_388_s_7_o),.s_7_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_7_o_ap_vld),.s_8_i(s_8_i),.s_8_o(grp_Autocorrelation_17_18_fu_388_s_8_o),.s_8_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_8_o_ap_vld),.s_9_i(s_9_i),.s_9_o(grp_Autocorrelation_17_18_fu_388_s_9_o),.s_9_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_9_o_ap_vld),.s_10_i(s_10_i),.s_10_o(grp_Autocorrelation_17_18_fu_388_s_10_o),.s_10_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_10_o_ap_vld),.s_11_i(s_11_i),.s_11_o(grp_Autocorrelation_17_18_fu_388_s_11_o),.s_11_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_11_o_ap_vld),.s_12_i(s_12_i),.s_12_o(grp_Autocorrelation_17_18_fu_388_s_12_o),.s_12_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_12_o_ap_vld),.s_13_i(s_13_i),.s_13_o(grp_Autocorrelation_17_18_fu_388_s_13_o),.s_13_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_13_o_ap_vld),.s_14_i(s_14_i),.s_14_o(grp_Autocorrelation_17_18_fu_388_s_14_o),.s_14_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_14_o_ap_vld),.s_15_i(s_15_i),.s_15_o(grp_Autocorrelation_17_18_fu_388_s_15_o),.s_15_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_15_o_ap_vld),.s_16_i(s_16_i),.s_16_o(grp_Autocorrelation_17_18_fu_388_s_16_o),.s_16_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_16_o_ap_vld),.s_17_i(s_17_i),.s_17_o(grp_Autocorrelation_17_18_fu_388_s_17_o),.s_17_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_17_o_ap_vld),.s_18_i(s_18_i),.s_18_o(grp_Autocorrelation_17_18_fu_388_s_18_o),.s_18_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_18_o_ap_vld),.s_19_i(s_19_i),.s_19_o(grp_Autocorrelation_17_18_fu_388_s_19_o),.s_19_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_19_o_ap_vld),.s_20_i(s_20_i),.s_20_o(grp_Autocorrelation_17_18_fu_388_s_20_o),.s_20_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_20_o_ap_vld),.s_21_i(s_21_i),.s_21_o(grp_Autocorrelation_17_18_fu_388_s_21_o),.s_21_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_21_o_ap_vld),.s_22_i(s_22_i),.s_22_o(grp_Autocorrelation_17_18_fu_388_s_22_o),.s_22_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_22_o_ap_vld),.s_23_i(s_23_i),.s_23_o(grp_Autocorrelation_17_18_fu_388_s_23_o),.s_23_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_23_o_ap_vld),.s_24_i(s_24_i),.s_24_o(grp_Autocorrelation_17_18_fu_388_s_24_o),.s_24_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_24_o_ap_vld),.s_25_i(s_25_i),.s_25_o(grp_Autocorrelation_17_18_fu_388_s_25_o),.s_25_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_25_o_ap_vld),.s_26_i(s_26_i),.s_26_o(grp_Autocorrelation_17_18_fu_388_s_26_o),.s_26_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_26_o_ap_vld),.s_27_i(s_27_i),.s_27_o(grp_Autocorrelation_17_18_fu_388_s_27_o),.s_27_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_27_o_ap_vld),.s_28_i(s_28_i),.s_28_o(grp_Autocorrelation_17_18_fu_388_s_28_o),.s_28_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_28_o_ap_vld),.s_29_i(s_29_i),.s_29_o(grp_Autocorrelation_17_18_fu_388_s_29_o),.s_29_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_29_o_ap_vld),.s_30_i(s_30_i),.s_30_o(grp_Autocorrelation_17_18_fu_388_s_30_o),.s_30_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_30_o_ap_vld),.s_31_i(s_31_i),.s_31_o(grp_Autocorrelation_17_18_fu_388_s_31_o),.s_31_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_31_o_ap_vld),.s_32_i(s_32_i),.s_32_o(grp_Autocorrelation_17_18_fu_388_s_32_o),.s_32_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_32_o_ap_vld),.s_33_i(s_33_i),.s_33_o(grp_Autocorrelation_17_18_fu_388_s_33_o),.s_33_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_33_o_ap_vld),.s_34_i(s_34_i),.s_34_o(grp_Autocorrelation_17_18_fu_388_s_34_o),.s_34_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_34_o_ap_vld),.s_35_i(s_35_i),.s_35_o(grp_Autocorrelation_17_18_fu_388_s_35_o),.s_35_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_35_o_ap_vld),.s_36_i(s_36_i),.s_36_o(grp_Autocorrelation_17_18_fu_388_s_36_o),.s_36_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_36_o_ap_vld),.s_37_i(s_37_i),.s_37_o(grp_Autocorrelation_17_18_fu_388_s_37_o),.s_37_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_37_o_ap_vld),.s_38_i(s_38_i),.s_38_o(grp_Autocorrelation_17_18_fu_388_s_38_o),.s_38_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_38_o_ap_vld),.s_39_i(s_39_i),.s_39_o(grp_Autocorrelation_17_18_fu_388_s_39_o),.s_39_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_39_o_ap_vld),.s_40_i(s_40_i),.s_40_o(grp_Autocorrelation_17_18_fu_388_s_40_o),.s_40_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_40_o_ap_vld),.s_41_i(s_41_i),.s_41_o(grp_Autocorrelation_17_18_fu_388_s_41_o),.s_41_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_41_o_ap_vld),.s_42_i(s_42_i),.s_42_o(grp_Autocorrelation_17_18_fu_388_s_42_o),.s_42_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_42_o_ap_vld),.s_43_i(s_43_i),.s_43_o(grp_Autocorrelation_17_18_fu_388_s_43_o),.s_43_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_43_o_ap_vld),.s_44_i(s_44_i),.s_44_o(grp_Autocorrelation_17_18_fu_388_s_44_o),.s_44_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_44_o_ap_vld),.s_45_i(s_45_i),.s_45_o(grp_Autocorrelation_17_18_fu_388_s_45_o),.s_45_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_45_o_ap_vld),.s_46_i(s_46_i),.s_46_o(grp_Autocorrelation_17_18_fu_388_s_46_o),.s_46_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_46_o_ap_vld),.s_47_i(s_47_i),.s_47_o(grp_Autocorrelation_17_18_fu_388_s_47_o),.s_47_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_47_o_ap_vld),.s_48_i(s_48_i),.s_48_o(grp_Autocorrelation_17_18_fu_388_s_48_o),.s_48_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_48_o_ap_vld),.s_49_i(s_49_i),.s_49_o(grp_Autocorrelation_17_18_fu_388_s_49_o),.s_49_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_49_o_ap_vld),.s_50_i(s_50_i),.s_50_o(grp_Autocorrelation_17_18_fu_388_s_50_o),.s_50_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_50_o_ap_vld),.s_51_i(s_51_i),.s_51_o(grp_Autocorrelation_17_18_fu_388_s_51_o),.s_51_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_51_o_ap_vld),.s_52_i(s_52_i),.s_52_o(grp_Autocorrelation_17_18_fu_388_s_52_o),.s_52_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_52_o_ap_vld),.s_53_i(s_53_i),.s_53_o(grp_Autocorrelation_17_18_fu_388_s_53_o),.s_53_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_53_o_ap_vld),.s_54_i(s_54_i),.s_54_o(grp_Autocorrelation_17_18_fu_388_s_54_o),.s_54_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_54_o_ap_vld),.s_55_i(s_55_i),.s_55_o(grp_Autocorrelation_17_18_fu_388_s_55_o),.s_55_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_55_o_ap_vld),.s_56_i(s_56_i),.s_56_o(grp_Autocorrelation_17_18_fu_388_s_56_o),.s_56_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_56_o_ap_vld),.s_57_i(s_57_i),.s_57_o(grp_Autocorrelation_17_18_fu_388_s_57_o),.s_57_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_57_o_ap_vld),.s_58_i(s_58_i),.s_58_o(grp_Autocorrelation_17_18_fu_388_s_58_o),.s_58_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_58_o_ap_vld),.s_59_i(s_59_i),.s_59_o(grp_Autocorrelation_17_18_fu_388_s_59_o),.s_59_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_59_o_ap_vld),.s_60_i(s_60_i),.s_60_o(grp_Autocorrelation_17_18_fu_388_s_60_o),.s_60_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_60_o_ap_vld),.s_61_i(s_61_i),.s_61_o(grp_Autocorrelation_17_18_fu_388_s_61_o),.s_61_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_61_o_ap_vld),.s_62_i(s_62_i),.s_62_o(grp_Autocorrelation_17_18_fu_388_s_62_o),.s_62_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_62_o_ap_vld),.s_63_i(s_63_i),.s_63_o(grp_Autocorrelation_17_18_fu_388_s_63_o),.s_63_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_63_o_ap_vld),.s_64_i(s_64_i),.s_64_o(grp_Autocorrelation_17_18_fu_388_s_64_o),.s_64_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_64_o_ap_vld),.s_65_i(s_65_i),.s_65_o(grp_Autocorrelation_17_18_fu_388_s_65_o),.s_65_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_65_o_ap_vld),.s_66_i(s_66_i),.s_66_o(grp_Autocorrelation_17_18_fu_388_s_66_o),.s_66_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_66_o_ap_vld),.s_67_i(s_67_i),.s_67_o(grp_Autocorrelation_17_18_fu_388_s_67_o),.s_67_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_67_o_ap_vld),.s_68_i(s_68_i),.s_68_o(grp_Autocorrelation_17_18_fu_388_s_68_o),.s_68_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_68_o_ap_vld),.s_69_i(s_69_i),.s_69_o(grp_Autocorrelation_17_18_fu_388_s_69_o),.s_69_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_69_o_ap_vld),.s_70_i(s_70_i),.s_70_o(grp_Autocorrelation_17_18_fu_388_s_70_o),.s_70_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_70_o_ap_vld),.s_71_i(s_71_i),.s_71_o(grp_Autocorrelation_17_18_fu_388_s_71_o),.s_71_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_71_o_ap_vld),.s_72_i(s_72_i),.s_72_o(grp_Autocorrelation_17_18_fu_388_s_72_o),.s_72_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_72_o_ap_vld),.s_73_i(s_73_i),.s_73_o(grp_Autocorrelation_17_18_fu_388_s_73_o),.s_73_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_73_o_ap_vld),.s_74_i(s_74_i),.s_74_o(grp_Autocorrelation_17_18_fu_388_s_74_o),.s_74_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_74_o_ap_vld),.s_75_i(s_75_i),.s_75_o(grp_Autocorrelation_17_18_fu_388_s_75_o),.s_75_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_75_o_ap_vld),.s_76_i(s_76_i),.s_76_o(grp_Autocorrelation_17_18_fu_388_s_76_o),.s_76_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_76_o_ap_vld),.s_77_i(s_77_i),.s_77_o(grp_Autocorrelation_17_18_fu_388_s_77_o),.s_77_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_77_o_ap_vld),.s_78_i(s_78_i),.s_78_o(grp_Autocorrelation_17_18_fu_388_s_78_o),.s_78_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_78_o_ap_vld),.s_79_i(s_79_i),.s_79_o(grp_Autocorrelation_17_18_fu_388_s_79_o),.s_79_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_79_o_ap_vld),.s_80_i(s_80_i),.s_80_o(grp_Autocorrelation_17_18_fu_388_s_80_o),.s_80_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_80_o_ap_vld),.s_81_i(s_81_i),.s_81_o(grp_Autocorrelation_17_18_fu_388_s_81_o),.s_81_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_81_o_ap_vld),.s_82_i(s_82_i),.s_82_o(grp_Autocorrelation_17_18_fu_388_s_82_o),.s_82_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_82_o_ap_vld),.s_83_i(s_83_i),.s_83_o(grp_Autocorrelation_17_18_fu_388_s_83_o),.s_83_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_83_o_ap_vld),.s_84_i(s_84_i),.s_84_o(grp_Autocorrelation_17_18_fu_388_s_84_o),.s_84_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_84_o_ap_vld),.s_85_i(s_85_i),.s_85_o(grp_Autocorrelation_17_18_fu_388_s_85_o),.s_85_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_85_o_ap_vld),.s_86_i(s_86_i),.s_86_o(grp_Autocorrelation_17_18_fu_388_s_86_o),.s_86_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_86_o_ap_vld),.s_87_i(s_87_i),.s_87_o(grp_Autocorrelation_17_18_fu_388_s_87_o),.s_87_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_87_o_ap_vld),.s_88_i(s_88_i),.s_88_o(grp_Autocorrelation_17_18_fu_388_s_88_o),.s_88_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_88_o_ap_vld),.s_89_i(s_89_i),.s_89_o(grp_Autocorrelation_17_18_fu_388_s_89_o),.s_89_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_89_o_ap_vld),.s_90_i(s_90_i),.s_90_o(grp_Autocorrelation_17_18_fu_388_s_90_o),.s_90_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_90_o_ap_vld),.s_91_i(s_91_i),.s_91_o(grp_Autocorrelation_17_18_fu_388_s_91_o),.s_91_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_91_o_ap_vld),.s_92_i(s_92_i),.s_92_o(grp_Autocorrelation_17_18_fu_388_s_92_o),.s_92_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_92_o_ap_vld),.s_93_i(s_93_i),.s_93_o(grp_Autocorrelation_17_18_fu_388_s_93_o),.s_93_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_93_o_ap_vld),.s_94_i(s_94_i),.s_94_o(grp_Autocorrelation_17_18_fu_388_s_94_o),.s_94_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_94_o_ap_vld),.s_95_i(s_95_i),.s_95_o(grp_Autocorrelation_17_18_fu_388_s_95_o),.s_95_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_95_o_ap_vld),.s_96_i(s_96_i),.s_96_o(grp_Autocorrelation_17_18_fu_388_s_96_o),.s_96_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_96_o_ap_vld),.s_97_i(s_97_i),.s_97_o(grp_Autocorrelation_17_18_fu_388_s_97_o),.s_97_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_97_o_ap_vld),.s_98_i(s_98_i),.s_98_o(grp_Autocorrelation_17_18_fu_388_s_98_o),.s_98_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_98_o_ap_vld),.s_99_i(s_99_i),.s_99_o(grp_Autocorrelation_17_18_fu_388_s_99_o),.s_99_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_99_o_ap_vld),.s_100_i(s_100_i),.s_100_o(grp_Autocorrelation_17_18_fu_388_s_100_o),.s_100_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_100_o_ap_vld),.s_101_i(s_101_i),.s_101_o(grp_Autocorrelation_17_18_fu_388_s_101_o),.s_101_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_101_o_ap_vld),.s_102_i(s_102_i),.s_102_o(grp_Autocorrelation_17_18_fu_388_s_102_o),.s_102_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_102_o_ap_vld),.s_103_i(s_103_i),.s_103_o(grp_Autocorrelation_17_18_fu_388_s_103_o),.s_103_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_103_o_ap_vld),.s_104_i(s_104_i),.s_104_o(grp_Autocorrelation_17_18_fu_388_s_104_o),.s_104_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_104_o_ap_vld),.s_105_i(s_105_i),.s_105_o(grp_Autocorrelation_17_18_fu_388_s_105_o),.s_105_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_105_o_ap_vld),.s_106_i(s_106_i),.s_106_o(grp_Autocorrelation_17_18_fu_388_s_106_o),.s_106_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_106_o_ap_vld),.s_107_i(s_107_i),.s_107_o(grp_Autocorrelation_17_18_fu_388_s_107_o),.s_107_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_107_o_ap_vld),.s_108_i(s_108_i),.s_108_o(grp_Autocorrelation_17_18_fu_388_s_108_o),.s_108_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_108_o_ap_vld),.s_109_i(s_109_i),.s_109_o(grp_Autocorrelation_17_18_fu_388_s_109_o),.s_109_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_109_o_ap_vld),.s_110_i(s_110_i),.s_110_o(grp_Autocorrelation_17_18_fu_388_s_110_o),.s_110_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_110_o_ap_vld),.s_111_i(s_111_i),.s_111_o(grp_Autocorrelation_17_18_fu_388_s_111_o),.s_111_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_111_o_ap_vld),.s_112_i(s_112_i),.s_112_o(grp_Autocorrelation_17_18_fu_388_s_112_o),.s_112_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_112_o_ap_vld),.s_113_i(s_113_i),.s_113_o(grp_Autocorrelation_17_18_fu_388_s_113_o),.s_113_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_113_o_ap_vld),.s_114_i(s_114_i),.s_114_o(grp_Autocorrelation_17_18_fu_388_s_114_o),.s_114_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_114_o_ap_vld),.s_115_i(s_115_i),.s_115_o(grp_Autocorrelation_17_18_fu_388_s_115_o),.s_115_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_115_o_ap_vld),.s_116_i(s_116_i),.s_116_o(grp_Autocorrelation_17_18_fu_388_s_116_o),.s_116_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_116_o_ap_vld),.s_117_i(s_117_i),.s_117_o(grp_Autocorrelation_17_18_fu_388_s_117_o),.s_117_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_117_o_ap_vld),.s_118_i(s_118_i),.s_118_o(grp_Autocorrelation_17_18_fu_388_s_118_o),.s_118_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_118_o_ap_vld),.s_119_i(s_119_i),.s_119_o(grp_Autocorrelation_17_18_fu_388_s_119_o),.s_119_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_119_o_ap_vld),.s_120_i(s_120_i),.s_120_o(grp_Autocorrelation_17_18_fu_388_s_120_o),.s_120_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_120_o_ap_vld),.s_121_i(s_121_i),.s_121_o(grp_Autocorrelation_17_18_fu_388_s_121_o),.s_121_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_121_o_ap_vld),.s_122_i(s_122_i),.s_122_o(grp_Autocorrelation_17_18_fu_388_s_122_o),.s_122_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_122_o_ap_vld),.s_123_i(s_123_i),.s_123_o(grp_Autocorrelation_17_18_fu_388_s_123_o),.s_123_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_123_o_ap_vld),.s_124_i(s_124_i),.s_124_o(grp_Autocorrelation_17_18_fu_388_s_124_o),.s_124_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_124_o_ap_vld),.s_125_i(s_125_i),.s_125_o(grp_Autocorrelation_17_18_fu_388_s_125_o),.s_125_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_125_o_ap_vld),.s_126_i(s_126_i),.s_126_o(grp_Autocorrelation_17_18_fu_388_s_126_o),.s_126_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_126_o_ap_vld),.s_127_i(s_127_i),.s_127_o(grp_Autocorrelation_17_18_fu_388_s_127_o),.s_127_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_127_o_ap_vld),.s_128_i(s_128_i),.s_128_o(grp_Autocorrelation_17_18_fu_388_s_128_o),.s_128_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_128_o_ap_vld),.s_129_i(s_129_i),.s_129_o(grp_Autocorrelation_17_18_fu_388_s_129_o),.s_129_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_129_o_ap_vld),.s_130_i(s_130_i),.s_130_o(grp_Autocorrelation_17_18_fu_388_s_130_o),.s_130_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_130_o_ap_vld),.s_131_i(s_131_i),.s_131_o(grp_Autocorrelation_17_18_fu_388_s_131_o),.s_131_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_131_o_ap_vld),.s_132_i(s_132_i),.s_132_o(grp_Autocorrelation_17_18_fu_388_s_132_o),.s_132_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_132_o_ap_vld),.s_133_i(s_133_i),.s_133_o(grp_Autocorrelation_17_18_fu_388_s_133_o),.s_133_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_133_o_ap_vld),.s_134_i(s_134_i),.s_134_o(grp_Autocorrelation_17_18_fu_388_s_134_o),.s_134_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_134_o_ap_vld),.s_135_i(s_135_i),.s_135_o(grp_Autocorrelation_17_18_fu_388_s_135_o),.s_135_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_135_o_ap_vld),.s_136_i(s_136_i),.s_136_o(grp_Autocorrelation_17_18_fu_388_s_136_o),.s_136_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_136_o_ap_vld),.s_137_i(s_137_i),.s_137_o(grp_Autocorrelation_17_18_fu_388_s_137_o),.s_137_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_137_o_ap_vld),.s_138_i(s_138_i),.s_138_o(grp_Autocorrelation_17_18_fu_388_s_138_o),.s_138_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_138_o_ap_vld),.s_139_i(s_139_i),.s_139_o(grp_Autocorrelation_17_18_fu_388_s_139_o),.s_139_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_139_o_ap_vld),.s_140_i(s_140_i),.s_140_o(grp_Autocorrelation_17_18_fu_388_s_140_o),.s_140_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_140_o_ap_vld),.s_141_i(s_141_i),.s_141_o(grp_Autocorrelation_17_18_fu_388_s_141_o),.s_141_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_141_o_ap_vld),.s_142_i(s_142_i),.s_142_o(grp_Autocorrelation_17_18_fu_388_s_142_o),.s_142_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_142_o_ap_vld),.s_143_i(s_143_i),.s_143_o(grp_Autocorrelation_17_18_fu_388_s_143_o),.s_143_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_143_o_ap_vld),.s_144_i(s_144_i),.s_144_o(grp_Autocorrelation_17_18_fu_388_s_144_o),.s_144_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_144_o_ap_vld),.s_145_i(s_145_i),.s_145_o(grp_Autocorrelation_17_18_fu_388_s_145_o),.s_145_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_145_o_ap_vld),.s_146_i(s_146_i),.s_146_o(grp_Autocorrelation_17_18_fu_388_s_146_o),.s_146_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_146_o_ap_vld),.s_147_i(s_147_i),.s_147_o(grp_Autocorrelation_17_18_fu_388_s_147_o),.s_147_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_147_o_ap_vld),.s_148_i(s_148_i),.s_148_o(grp_Autocorrelation_17_18_fu_388_s_148_o),.s_148_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_148_o_ap_vld),.s_149_i(s_149_i),.s_149_o(grp_Autocorrelation_17_18_fu_388_s_149_o),.s_149_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_149_o_ap_vld),.s_150_i(s_150_i),.s_150_o(grp_Autocorrelation_17_18_fu_388_s_150_o),.s_150_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_150_o_ap_vld),.s_151_i(s_151_i),.s_151_o(grp_Autocorrelation_17_18_fu_388_s_151_o),.s_151_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_151_o_ap_vld),.s_152_i(s_152_i),.s_152_o(grp_Autocorrelation_17_18_fu_388_s_152_o),.s_152_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_152_o_ap_vld),.s_153_i(s_153_i),.s_153_o(grp_Autocorrelation_17_18_fu_388_s_153_o),.s_153_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_153_o_ap_vld),.s_154_i(s_154_i),.s_154_o(grp_Autocorrelation_17_18_fu_388_s_154_o),.s_154_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_154_o_ap_vld),.s_155_i(s_155_i),.s_155_o(grp_Autocorrelation_17_18_fu_388_s_155_o),.s_155_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_155_o_ap_vld),.s_156_i(s_156_i),.s_156_o(grp_Autocorrelation_17_18_fu_388_s_156_o),.s_156_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_156_o_ap_vld),.s_157_i(s_157_i),.s_157_o(grp_Autocorrelation_17_18_fu_388_s_157_o),.s_157_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_157_o_ap_vld),.s_158_i(s_158_i),.s_158_o(grp_Autocorrelation_17_18_fu_388_s_158_o),.s_158_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_158_o_ap_vld),.s_159_i(s_159_i),.s_159_o(grp_Autocorrelation_17_18_fu_388_s_159_o),.s_159_o_ap_vld(grp_Autocorrelation_17_18_fu_388_s_159_o_ap_vld),.L_ACF_0_i(L_ACF_fu_352),.L_ACF_0_o(grp_Autocorrelation_17_18_fu_388_L_ACF_0_o),.L_ACF_0_o_ap_vld(grp_Autocorrelation_17_18_fu_388_L_ACF_0_o_ap_vld),.L_ACF_1_i(L_ACF_1_fu_356),.L_ACF_1_o(grp_Autocorrelation_17_18_fu_388_L_ACF_1_o),.L_ACF_1_o_ap_vld(grp_Autocorrelation_17_18_fu_388_L_ACF_1_o_ap_vld),.L_ACF_2_i(L_ACF_2_fu_360),.L_ACF_2_o(grp_Autocorrelation_17_18_fu_388_L_ACF_2_o),.L_ACF_2_o_ap_vld(grp_Autocorrelation_17_18_fu_388_L_ACF_2_o_ap_vld),.L_ACF_3_i(L_ACF_3_fu_364),.L_ACF_3_o(grp_Autocorrelation_17_18_fu_388_L_ACF_3_o),.L_ACF_3_o_ap_vld(grp_Autocorrelation_17_18_fu_388_L_ACF_3_o_ap_vld),.L_ACF_4_i(L_ACF_4_fu_368),.L_ACF_4_o(grp_Autocorrelation_17_18_fu_388_L_ACF_4_o),.L_ACF_4_o_ap_vld(grp_Autocorrelation_17_18_fu_388_L_ACF_4_o_ap_vld),.L_ACF_5_i(L_ACF_5_fu_372),.L_ACF_5_o(grp_Autocorrelation_17_18_fu_388_L_ACF_5_o),.L_ACF_5_o_ap_vld(grp_Autocorrelation_17_18_fu_388_L_ACF_5_o_ap_vld),.L_ACF_6_i(L_ACF_6_fu_376),.L_ACF_6_o(grp_Autocorrelation_17_18_fu_388_L_ACF_6_o),.L_ACF_6_o_ap_vld(grp_Autocorrelation_17_18_fu_388_L_ACF_6_o_ap_vld),.L_ACF_7_i(L_ACF_7_fu_380),.L_ACF_7_o(grp_Autocorrelation_17_18_fu_388_L_ACF_7_o),.L_ACF_7_o_ap_vld(grp_Autocorrelation_17_18_fu_388_L_ACF_7_o_ap_vld),.L_ACF_8_i(L_ACF_8_fu_384),.L_ACF_8_o(grp_Autocorrelation_17_18_fu_388_L_ACF_8_o),.L_ACF_8_o_ap_vld(grp_Autocorrelation_17_18_fu_388_L_ACF_8_o_ap_vld),.bitoff_address0(grp_Autocorrelation_17_18_fu_388_bitoff_address0),.bitoff_ce0(grp_Autocorrelation_17_18_fu_388_bitoff_ce0),.bitoff_q0(bitoff_q0),.bitoff_address1(grp_Autocorrelation_17_18_fu_388_bitoff_address1),.bitoff_ce1(grp_Autocorrelation_17_18_fu_388_bitoff_ce1),.bitoff_q1(bitoff_q1),.bitoff_address2(grp_Autocorrelation_17_18_fu_388_bitoff_address2),.bitoff_ce2(grp_Autocorrelation_17_18_fu_388_bitoff_ce2),.bitoff_q2(bitoff_q2),.bitoff_address3(grp_Autocorrelation_17_18_fu_388_bitoff_address3),.bitoff_ce3(grp_Autocorrelation_17_18_fu_388_bitoff_ce3),.bitoff_q3(bitoff_q3));
Gsm_LPC_Analysis_Reflection_coefficients grp_Reflection_coefficients_fu_723(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_fu_723_ap_start),.ap_done(grp_Reflection_coefficients_fu_723_ap_done),.ap_idle(grp_Reflection_coefficients_fu_723_ap_idle),.ap_ready(grp_Reflection_coefficients_fu_723_ap_ready),.L_ACF_0_val(L_ACF_fu_352),.L_ACF_1_val(trunc_ln315_reg_877),.L_ACF_2_val(trunc_ln315_1_reg_882),.L_ACF_3_val(trunc_ln315_2_reg_887),.L_ACF_4_val(trunc_ln315_3_reg_892),.L_ACF_5_val(trunc_ln315_4_reg_897),.L_ACF_6_val(trunc_ln315_5_reg_902),.L_ACF_7_val(trunc_ln315_6_reg_907),.L_ACF_8_val(trunc_ln318_reg_912),.LARc_address0(grp_Reflection_coefficients_fu_723_LARc_address0),.LARc_ce0(grp_Reflection_coefficients_fu_723_LARc_ce0),.LARc_we0(grp_Reflection_coefficients_fu_723_LARc_we0),.LARc_d0(grp_Reflection_coefficients_fu_723_LARc_d0),.bitoff_address0(grp_Reflection_coefficients_fu_723_bitoff_address0),.bitoff_ce0(grp_Reflection_coefficients_fu_723_bitoff_ce0),.bitoff_q0(bitoff_q0),.bitoff_address1(grp_Reflection_coefficients_fu_723_bitoff_address1),.bitoff_ce1(grp_Reflection_coefficients_fu_723_bitoff_ce1),.bitoff_q1(bitoff_q1),.bitoff_address2(grp_Reflection_coefficients_fu_723_bitoff_address2),.bitoff_ce2(grp_Reflection_coefficients_fu_723_bitoff_ce2),.bitoff_q2(bitoff_q2),.bitoff_address3(grp_Reflection_coefficients_fu_723_bitoff_address3),.bitoff_ce3(grp_Reflection_coefficients_fu_723_bitoff_ce3),.bitoff_q3(bitoff_q3));
Gsm_LPC_Analysis_Transformation_to_Log_Area_Ratios grp_Transformation_to_Log_Area_Ratios_fu_740(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Transformation_to_Log_Area_Ratios_fu_740_ap_start),.ap_done(grp_Transformation_to_Log_Area_Ratios_fu_740_ap_done),.ap_idle(grp_Transformation_to_Log_Area_Ratios_fu_740_ap_idle),.ap_ready(grp_Transformation_to_Log_Area_Ratios_fu_740_ap_ready),.LARc_address0(grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_address0),.LARc_ce0(grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_ce0),.LARc_we0(grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_we0),.LARc_d0(grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_d0),.LARc_q0(LARc_q0),.LARc_address1(grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_address1),.LARc_ce1(grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_ce1),.LARc_we1(grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_we1),.LARc_d1(grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_d1),.LARc_q1(LARc_q1));
Gsm_LPC_Analysis_Quantization_and_coding grp_Quantization_and_coding_fu_746(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Quantization_and_coding_fu_746_ap_start),.ap_done(grp_Quantization_and_coding_fu_746_ap_done),.ap_idle(grp_Quantization_and_coding_fu_746_ap_idle),.ap_ready(grp_Quantization_and_coding_fu_746_ap_ready),.LARc_address0(grp_Quantization_and_coding_fu_746_LARc_address0),.LARc_ce0(grp_Quantization_and_coding_fu_746_LARc_ce0),.LARc_we0(grp_Quantization_and_coding_fu_746_LARc_we0),.LARc_d0(grp_Quantization_and_coding_fu_746_LARc_d0),.LARc_q0(LARc_q0),.LARc_address1(grp_Quantization_and_coding_fu_746_LARc_address1),.LARc_ce1(grp_Quantization_and_coding_fu_746_LARc_ce1),.LARc_we1(grp_Quantization_and_coding_fu_746_LARc_we1),.LARc_d1(grp_Quantization_and_coding_fu_746_LARc_d1),.LARc_q1(LARc_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Autocorrelation_17_18_fu_388_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_Autocorrelation_17_18_fu_388_ap_start_reg <= 1'b1;
        end else if ((grp_Autocorrelation_17_18_fu_388_ap_ready == 1'b1)) begin
            grp_Autocorrelation_17_18_fu_388_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Quantization_and_coding_fu_746_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_Quantization_and_coding_fu_746_ap_start_reg <= 1'b1;
        end else if ((grp_Quantization_and_coding_fu_746_ap_ready == 1'b1)) begin
            grp_Quantization_and_coding_fu_746_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_fu_723_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_Reflection_coefficients_fu_723_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_fu_723_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_fu_723_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Transformation_to_Log_Area_Ratios_fu_740_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_Transformation_to_Log_Area_Ratios_fu_740_ap_start_reg <= 1'b1;
        end else if ((grp_Transformation_to_Log_Area_Ratios_fu_740_ap_ready == 1'b1)) begin
            grp_Transformation_to_Log_Area_Ratios_fu_740_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_L_ACF_1_o_ap_vld == 1'b1))) begin
        L_ACF_1_fu_356 <= grp_Autocorrelation_17_18_fu_388_L_ACF_1_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_L_ACF_2_o_ap_vld == 1'b1))) begin
        L_ACF_2_fu_360 <= grp_Autocorrelation_17_18_fu_388_L_ACF_2_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_L_ACF_3_o_ap_vld == 1'b1))) begin
        L_ACF_3_fu_364 <= grp_Autocorrelation_17_18_fu_388_L_ACF_3_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_L_ACF_4_o_ap_vld == 1'b1))) begin
        L_ACF_4_fu_368 <= grp_Autocorrelation_17_18_fu_388_L_ACF_4_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_L_ACF_5_o_ap_vld == 1'b1))) begin
        L_ACF_5_fu_372 <= grp_Autocorrelation_17_18_fu_388_L_ACF_5_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_L_ACF_6_o_ap_vld == 1'b1))) begin
        L_ACF_6_fu_376 <= grp_Autocorrelation_17_18_fu_388_L_ACF_6_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_L_ACF_7_o_ap_vld == 1'b1))) begin
        L_ACF_7_fu_380 <= grp_Autocorrelation_17_18_fu_388_L_ACF_7_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_L_ACF_8_o_ap_vld == 1'b1))) begin
        L_ACF_8_fu_384 <= grp_Autocorrelation_17_18_fu_388_L_ACF_8_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_L_ACF_0_o_ap_vld == 1'b1))) begin
        L_ACF_fu_352 <= grp_Autocorrelation_17_18_fu_388_L_ACF_0_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln315_1_reg_882 <= trunc_ln315_1_fu_767_p1;
        trunc_ln315_2_reg_887 <= trunc_ln315_2_fu_775_p1;
        trunc_ln315_3_reg_892 <= trunc_ln315_3_fu_783_p1;
        trunc_ln315_4_reg_897 <= trunc_ln315_4_fu_791_p1;
        trunc_ln315_5_reg_902 <= trunc_ln315_5_fu_799_p1;
        trunc_ln315_6_reg_907 <= trunc_ln315_6_fu_807_p1;
        trunc_ln315_reg_877 <= trunc_ln315_fu_759_p1;
        trunc_ln318_reg_912 <= trunc_ln318_fu_815_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_address0 = grp_Quantization_and_coding_fu_746_LARc_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_address0 = grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        LARc_address0 = grp_Reflection_coefficients_fu_723_LARc_address0;
    end else begin
        LARc_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_address1 = grp_Quantization_and_coding_fu_746_LARc_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_address1 = grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_address1;
    end else begin
        LARc_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_ce0 = grp_Quantization_and_coding_fu_746_LARc_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_ce0 = grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        LARc_ce0 = grp_Reflection_coefficients_fu_723_LARc_ce0;
    end else begin
        LARc_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_ce1 = grp_Quantization_and_coding_fu_746_LARc_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_ce1 = grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_ce1;
    end else begin
        LARc_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_d0 = grp_Quantization_and_coding_fu_746_LARc_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_d0 = grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        LARc_d0 = grp_Reflection_coefficients_fu_723_LARc_d0;
    end else begin
        LARc_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_d1 = grp_Quantization_and_coding_fu_746_LARc_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_d1 = grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_d1;
    end else begin
        LARc_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_we0 = grp_Quantization_and_coding_fu_746_LARc_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_we0 = grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        LARc_we0 = grp_Reflection_coefficients_fu_723_LARc_we0;
    end else begin
        LARc_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_we1 = grp_Quantization_and_coding_fu_746_LARc_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_we1 = grp_Transformation_to_Log_Area_Ratios_fu_740_LARc_we1;
    end else begin
        LARc_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_Autocorrelation_17_18_fu_388_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_Reflection_coefficients_fu_723_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_Transformation_to_Log_Area_Ratios_fu_740_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_Quantization_and_coding_fu_746_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_Quantization_and_coding_fu_746_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_Quantization_and_coding_fu_746_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bitoff_address0 = grp_Reflection_coefficients_fu_723_bitoff_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bitoff_address0 = grp_Autocorrelation_17_18_fu_388_bitoff_address0;
    end else begin
        bitoff_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bitoff_address1 = grp_Reflection_coefficients_fu_723_bitoff_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bitoff_address1 = grp_Autocorrelation_17_18_fu_388_bitoff_address1;
    end else begin
        bitoff_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bitoff_address2 = grp_Reflection_coefficients_fu_723_bitoff_address2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bitoff_address2 = grp_Autocorrelation_17_18_fu_388_bitoff_address2;
    end else begin
        bitoff_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bitoff_address3 = grp_Reflection_coefficients_fu_723_bitoff_address3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bitoff_address3 = grp_Autocorrelation_17_18_fu_388_bitoff_address3;
    end else begin
        bitoff_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bitoff_ce0 = grp_Reflection_coefficients_fu_723_bitoff_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bitoff_ce0 = grp_Autocorrelation_17_18_fu_388_bitoff_ce0;
    end else begin
        bitoff_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bitoff_ce1 = grp_Reflection_coefficients_fu_723_bitoff_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bitoff_ce1 = grp_Autocorrelation_17_18_fu_388_bitoff_ce1;
    end else begin
        bitoff_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bitoff_ce2 = grp_Reflection_coefficients_fu_723_bitoff_ce2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bitoff_ce2 = grp_Autocorrelation_17_18_fu_388_bitoff_ce2;
    end else begin
        bitoff_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bitoff_ce3 = grp_Reflection_coefficients_fu_723_bitoff_ce3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bitoff_ce3 = grp_Autocorrelation_17_18_fu_388_bitoff_ce3;
    end else begin
        bitoff_ce3 = 1'b0;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_0_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_0_o = grp_Autocorrelation_17_18_fu_388_s_0_o;
    end else begin
        s_0_o = s_0_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_100_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_100_o = grp_Autocorrelation_17_18_fu_388_s_100_o;
    end else begin
        s_100_o = s_100_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_101_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_101_o = grp_Autocorrelation_17_18_fu_388_s_101_o;
    end else begin
        s_101_o = s_101_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_102_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_102_o = grp_Autocorrelation_17_18_fu_388_s_102_o;
    end else begin
        s_102_o = s_102_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_103_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_103_o = grp_Autocorrelation_17_18_fu_388_s_103_o;
    end else begin
        s_103_o = s_103_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_104_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_104_o = grp_Autocorrelation_17_18_fu_388_s_104_o;
    end else begin
        s_104_o = s_104_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_105_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_105_o = grp_Autocorrelation_17_18_fu_388_s_105_o;
    end else begin
        s_105_o = s_105_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_106_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_106_o = grp_Autocorrelation_17_18_fu_388_s_106_o;
    end else begin
        s_106_o = s_106_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_107_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_107_o = grp_Autocorrelation_17_18_fu_388_s_107_o;
    end else begin
        s_107_o = s_107_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_108_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_108_o = grp_Autocorrelation_17_18_fu_388_s_108_o;
    end else begin
        s_108_o = s_108_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_109_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_109_o = grp_Autocorrelation_17_18_fu_388_s_109_o;
    end else begin
        s_109_o = s_109_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_10_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_10_o = grp_Autocorrelation_17_18_fu_388_s_10_o;
    end else begin
        s_10_o = s_10_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_110_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_110_o = grp_Autocorrelation_17_18_fu_388_s_110_o;
    end else begin
        s_110_o = s_110_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_111_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_111_o = grp_Autocorrelation_17_18_fu_388_s_111_o;
    end else begin
        s_111_o = s_111_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_112_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_112_o = grp_Autocorrelation_17_18_fu_388_s_112_o;
    end else begin
        s_112_o = s_112_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_113_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_113_o = grp_Autocorrelation_17_18_fu_388_s_113_o;
    end else begin
        s_113_o = s_113_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_114_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_114_o = grp_Autocorrelation_17_18_fu_388_s_114_o;
    end else begin
        s_114_o = s_114_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_115_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_115_o = grp_Autocorrelation_17_18_fu_388_s_115_o;
    end else begin
        s_115_o = s_115_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_116_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_116_o = grp_Autocorrelation_17_18_fu_388_s_116_o;
    end else begin
        s_116_o = s_116_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_117_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_117_o = grp_Autocorrelation_17_18_fu_388_s_117_o;
    end else begin
        s_117_o = s_117_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_118_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_118_o = grp_Autocorrelation_17_18_fu_388_s_118_o;
    end else begin
        s_118_o = s_118_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_119_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_119_o = grp_Autocorrelation_17_18_fu_388_s_119_o;
    end else begin
        s_119_o = s_119_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_11_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_11_o = grp_Autocorrelation_17_18_fu_388_s_11_o;
    end else begin
        s_11_o = s_11_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_120_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_120_o = grp_Autocorrelation_17_18_fu_388_s_120_o;
    end else begin
        s_120_o = s_120_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_121_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_121_o = grp_Autocorrelation_17_18_fu_388_s_121_o;
    end else begin
        s_121_o = s_121_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_122_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_122_o = grp_Autocorrelation_17_18_fu_388_s_122_o;
    end else begin
        s_122_o = s_122_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_123_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_123_o = grp_Autocorrelation_17_18_fu_388_s_123_o;
    end else begin
        s_123_o = s_123_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_124_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_124_o = grp_Autocorrelation_17_18_fu_388_s_124_o;
    end else begin
        s_124_o = s_124_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_125_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_125_o = grp_Autocorrelation_17_18_fu_388_s_125_o;
    end else begin
        s_125_o = s_125_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_126_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_126_o = grp_Autocorrelation_17_18_fu_388_s_126_o;
    end else begin
        s_126_o = s_126_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_127_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_127_o = grp_Autocorrelation_17_18_fu_388_s_127_o;
    end else begin
        s_127_o = s_127_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_128_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_128_o = grp_Autocorrelation_17_18_fu_388_s_128_o;
    end else begin
        s_128_o = s_128_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_129_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_129_o = grp_Autocorrelation_17_18_fu_388_s_129_o;
    end else begin
        s_129_o = s_129_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_12_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_12_o = grp_Autocorrelation_17_18_fu_388_s_12_o;
    end else begin
        s_12_o = s_12_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_130_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_130_o = grp_Autocorrelation_17_18_fu_388_s_130_o;
    end else begin
        s_130_o = s_130_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_131_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_131_o = grp_Autocorrelation_17_18_fu_388_s_131_o;
    end else begin
        s_131_o = s_131_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_132_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_132_o = grp_Autocorrelation_17_18_fu_388_s_132_o;
    end else begin
        s_132_o = s_132_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_133_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_133_o = grp_Autocorrelation_17_18_fu_388_s_133_o;
    end else begin
        s_133_o = s_133_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_134_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_134_o = grp_Autocorrelation_17_18_fu_388_s_134_o;
    end else begin
        s_134_o = s_134_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_135_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_135_o = grp_Autocorrelation_17_18_fu_388_s_135_o;
    end else begin
        s_135_o = s_135_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_136_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_136_o = grp_Autocorrelation_17_18_fu_388_s_136_o;
    end else begin
        s_136_o = s_136_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_137_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_137_o = grp_Autocorrelation_17_18_fu_388_s_137_o;
    end else begin
        s_137_o = s_137_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_138_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_138_o = grp_Autocorrelation_17_18_fu_388_s_138_o;
    end else begin
        s_138_o = s_138_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_139_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_139_o = grp_Autocorrelation_17_18_fu_388_s_139_o;
    end else begin
        s_139_o = s_139_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_13_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_13_o = grp_Autocorrelation_17_18_fu_388_s_13_o;
    end else begin
        s_13_o = s_13_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_140_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_140_o = grp_Autocorrelation_17_18_fu_388_s_140_o;
    end else begin
        s_140_o = s_140_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_141_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_141_o = grp_Autocorrelation_17_18_fu_388_s_141_o;
    end else begin
        s_141_o = s_141_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_142_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_142_o = grp_Autocorrelation_17_18_fu_388_s_142_o;
    end else begin
        s_142_o = s_142_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_143_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_143_o = grp_Autocorrelation_17_18_fu_388_s_143_o;
    end else begin
        s_143_o = s_143_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_144_o_ap_vld == 1'b1))) begin
        s_144_o = grp_Autocorrelation_17_18_fu_388_s_144_o;
    end else begin
        s_144_o = s_144_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_145_o_ap_vld == 1'b1))) begin
        s_145_o = grp_Autocorrelation_17_18_fu_388_s_145_o;
    end else begin
        s_145_o = s_145_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_146_o_ap_vld == 1'b1))) begin
        s_146_o = grp_Autocorrelation_17_18_fu_388_s_146_o;
    end else begin
        s_146_o = s_146_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_147_o_ap_vld == 1'b1))) begin
        s_147_o = grp_Autocorrelation_17_18_fu_388_s_147_o;
    end else begin
        s_147_o = s_147_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_148_o_ap_vld == 1'b1))) begin
        s_148_o = grp_Autocorrelation_17_18_fu_388_s_148_o;
    end else begin
        s_148_o = s_148_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_149_o_ap_vld == 1'b1))) begin
        s_149_o = grp_Autocorrelation_17_18_fu_388_s_149_o;
    end else begin
        s_149_o = s_149_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_14_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_14_o = grp_Autocorrelation_17_18_fu_388_s_14_o;
    end else begin
        s_14_o = s_14_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_150_o_ap_vld == 1'b1))) begin
        s_150_o = grp_Autocorrelation_17_18_fu_388_s_150_o;
    end else begin
        s_150_o = s_150_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_151_o_ap_vld == 1'b1))) begin
        s_151_o = grp_Autocorrelation_17_18_fu_388_s_151_o;
    end else begin
        s_151_o = s_151_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_152_o_ap_vld == 1'b1))) begin
        s_152_o = grp_Autocorrelation_17_18_fu_388_s_152_o;
    end else begin
        s_152_o = s_152_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_153_o_ap_vld == 1'b1))) begin
        s_153_o = grp_Autocorrelation_17_18_fu_388_s_153_o;
    end else begin
        s_153_o = s_153_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_154_o_ap_vld == 1'b1))) begin
        s_154_o = grp_Autocorrelation_17_18_fu_388_s_154_o;
    end else begin
        s_154_o = s_154_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_155_o_ap_vld == 1'b1))) begin
        s_155_o = grp_Autocorrelation_17_18_fu_388_s_155_o;
    end else begin
        s_155_o = s_155_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_156_o_ap_vld == 1'b1))) begin
        s_156_o = grp_Autocorrelation_17_18_fu_388_s_156_o;
    end else begin
        s_156_o = s_156_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_157_o_ap_vld == 1'b1))) begin
        s_157_o = grp_Autocorrelation_17_18_fu_388_s_157_o;
    end else begin
        s_157_o = s_157_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_158_o_ap_vld == 1'b1))) begin
        s_158_o = grp_Autocorrelation_17_18_fu_388_s_158_o;
    end else begin
        s_158_o = s_158_i;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_Autocorrelation_17_18_fu_388_s_159_o_ap_vld == 1'b1))) begin
        s_159_o = grp_Autocorrelation_17_18_fu_388_s_159_o;
    end else begin
        s_159_o = s_159_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_15_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_15_o = grp_Autocorrelation_17_18_fu_388_s_15_o;
    end else begin
        s_15_o = s_15_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_16_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_16_o = grp_Autocorrelation_17_18_fu_388_s_16_o;
    end else begin
        s_16_o = s_16_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_17_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_17_o = grp_Autocorrelation_17_18_fu_388_s_17_o;
    end else begin
        s_17_o = s_17_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_18_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_18_o = grp_Autocorrelation_17_18_fu_388_s_18_o;
    end else begin
        s_18_o = s_18_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_19_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_19_o = grp_Autocorrelation_17_18_fu_388_s_19_o;
    end else begin
        s_19_o = s_19_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_1_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_1_o = grp_Autocorrelation_17_18_fu_388_s_1_o;
    end else begin
        s_1_o = s_1_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_20_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_20_o = grp_Autocorrelation_17_18_fu_388_s_20_o;
    end else begin
        s_20_o = s_20_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_21_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_21_o = grp_Autocorrelation_17_18_fu_388_s_21_o;
    end else begin
        s_21_o = s_21_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_22_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_22_o = grp_Autocorrelation_17_18_fu_388_s_22_o;
    end else begin
        s_22_o = s_22_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_23_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_23_o = grp_Autocorrelation_17_18_fu_388_s_23_o;
    end else begin
        s_23_o = s_23_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_24_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_24_o = grp_Autocorrelation_17_18_fu_388_s_24_o;
    end else begin
        s_24_o = s_24_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_25_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_25_o = grp_Autocorrelation_17_18_fu_388_s_25_o;
    end else begin
        s_25_o = s_25_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_26_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_26_o = grp_Autocorrelation_17_18_fu_388_s_26_o;
    end else begin
        s_26_o = s_26_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_27_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_27_o = grp_Autocorrelation_17_18_fu_388_s_27_o;
    end else begin
        s_27_o = s_27_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_28_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_28_o = grp_Autocorrelation_17_18_fu_388_s_28_o;
    end else begin
        s_28_o = s_28_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_29_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_29_o = grp_Autocorrelation_17_18_fu_388_s_29_o;
    end else begin
        s_29_o = s_29_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_2_o = grp_Autocorrelation_17_18_fu_388_s_2_o;
    end else begin
        s_2_o = s_2_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_30_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_30_o = grp_Autocorrelation_17_18_fu_388_s_30_o;
    end else begin
        s_30_o = s_30_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_31_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_31_o = grp_Autocorrelation_17_18_fu_388_s_31_o;
    end else begin
        s_31_o = s_31_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_32_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_32_o = grp_Autocorrelation_17_18_fu_388_s_32_o;
    end else begin
        s_32_o = s_32_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_33_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_33_o = grp_Autocorrelation_17_18_fu_388_s_33_o;
    end else begin
        s_33_o = s_33_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_34_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_34_o = grp_Autocorrelation_17_18_fu_388_s_34_o;
    end else begin
        s_34_o = s_34_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_35_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_35_o = grp_Autocorrelation_17_18_fu_388_s_35_o;
    end else begin
        s_35_o = s_35_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_36_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_36_o = grp_Autocorrelation_17_18_fu_388_s_36_o;
    end else begin
        s_36_o = s_36_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_37_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_37_o = grp_Autocorrelation_17_18_fu_388_s_37_o;
    end else begin
        s_37_o = s_37_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_38_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_38_o = grp_Autocorrelation_17_18_fu_388_s_38_o;
    end else begin
        s_38_o = s_38_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_39_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_39_o = grp_Autocorrelation_17_18_fu_388_s_39_o;
    end else begin
        s_39_o = s_39_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_3_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_3_o = grp_Autocorrelation_17_18_fu_388_s_3_o;
    end else begin
        s_3_o = s_3_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_40_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_40_o = grp_Autocorrelation_17_18_fu_388_s_40_o;
    end else begin
        s_40_o = s_40_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_41_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_41_o = grp_Autocorrelation_17_18_fu_388_s_41_o;
    end else begin
        s_41_o = s_41_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_42_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_42_o = grp_Autocorrelation_17_18_fu_388_s_42_o;
    end else begin
        s_42_o = s_42_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_43_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_43_o = grp_Autocorrelation_17_18_fu_388_s_43_o;
    end else begin
        s_43_o = s_43_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_44_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_44_o = grp_Autocorrelation_17_18_fu_388_s_44_o;
    end else begin
        s_44_o = s_44_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_45_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_45_o = grp_Autocorrelation_17_18_fu_388_s_45_o;
    end else begin
        s_45_o = s_45_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_46_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_46_o = grp_Autocorrelation_17_18_fu_388_s_46_o;
    end else begin
        s_46_o = s_46_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_47_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_47_o = grp_Autocorrelation_17_18_fu_388_s_47_o;
    end else begin
        s_47_o = s_47_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_48_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_48_o = grp_Autocorrelation_17_18_fu_388_s_48_o;
    end else begin
        s_48_o = s_48_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_49_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_49_o = grp_Autocorrelation_17_18_fu_388_s_49_o;
    end else begin
        s_49_o = s_49_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_4_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_4_o = grp_Autocorrelation_17_18_fu_388_s_4_o;
    end else begin
        s_4_o = s_4_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_50_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_50_o = grp_Autocorrelation_17_18_fu_388_s_50_o;
    end else begin
        s_50_o = s_50_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_51_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_51_o = grp_Autocorrelation_17_18_fu_388_s_51_o;
    end else begin
        s_51_o = s_51_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_52_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_52_o = grp_Autocorrelation_17_18_fu_388_s_52_o;
    end else begin
        s_52_o = s_52_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_53_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_53_o = grp_Autocorrelation_17_18_fu_388_s_53_o;
    end else begin
        s_53_o = s_53_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_54_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_54_o = grp_Autocorrelation_17_18_fu_388_s_54_o;
    end else begin
        s_54_o = s_54_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_55_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_55_o = grp_Autocorrelation_17_18_fu_388_s_55_o;
    end else begin
        s_55_o = s_55_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_56_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_56_o = grp_Autocorrelation_17_18_fu_388_s_56_o;
    end else begin
        s_56_o = s_56_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_57_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_57_o = grp_Autocorrelation_17_18_fu_388_s_57_o;
    end else begin
        s_57_o = s_57_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_58_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_58_o = grp_Autocorrelation_17_18_fu_388_s_58_o;
    end else begin
        s_58_o = s_58_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_59_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_59_o = grp_Autocorrelation_17_18_fu_388_s_59_o;
    end else begin
        s_59_o = s_59_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_5_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_5_o = grp_Autocorrelation_17_18_fu_388_s_5_o;
    end else begin
        s_5_o = s_5_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_60_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_60_o = grp_Autocorrelation_17_18_fu_388_s_60_o;
    end else begin
        s_60_o = s_60_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_61_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_61_o = grp_Autocorrelation_17_18_fu_388_s_61_o;
    end else begin
        s_61_o = s_61_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_62_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_62_o = grp_Autocorrelation_17_18_fu_388_s_62_o;
    end else begin
        s_62_o = s_62_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_63_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_63_o = grp_Autocorrelation_17_18_fu_388_s_63_o;
    end else begin
        s_63_o = s_63_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_64_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_64_o = grp_Autocorrelation_17_18_fu_388_s_64_o;
    end else begin
        s_64_o = s_64_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_65_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_65_o = grp_Autocorrelation_17_18_fu_388_s_65_o;
    end else begin
        s_65_o = s_65_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_66_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_66_o = grp_Autocorrelation_17_18_fu_388_s_66_o;
    end else begin
        s_66_o = s_66_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_67_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_67_o = grp_Autocorrelation_17_18_fu_388_s_67_o;
    end else begin
        s_67_o = s_67_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_68_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_68_o = grp_Autocorrelation_17_18_fu_388_s_68_o;
    end else begin
        s_68_o = s_68_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_69_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_69_o = grp_Autocorrelation_17_18_fu_388_s_69_o;
    end else begin
        s_69_o = s_69_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_6_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_6_o = grp_Autocorrelation_17_18_fu_388_s_6_o;
    end else begin
        s_6_o = s_6_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_70_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_70_o = grp_Autocorrelation_17_18_fu_388_s_70_o;
    end else begin
        s_70_o = s_70_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_71_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_71_o = grp_Autocorrelation_17_18_fu_388_s_71_o;
    end else begin
        s_71_o = s_71_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_72_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_72_o = grp_Autocorrelation_17_18_fu_388_s_72_o;
    end else begin
        s_72_o = s_72_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_73_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_73_o = grp_Autocorrelation_17_18_fu_388_s_73_o;
    end else begin
        s_73_o = s_73_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_74_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_74_o = grp_Autocorrelation_17_18_fu_388_s_74_o;
    end else begin
        s_74_o = s_74_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_75_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_75_o = grp_Autocorrelation_17_18_fu_388_s_75_o;
    end else begin
        s_75_o = s_75_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_76_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_76_o = grp_Autocorrelation_17_18_fu_388_s_76_o;
    end else begin
        s_76_o = s_76_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_77_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_77_o = grp_Autocorrelation_17_18_fu_388_s_77_o;
    end else begin
        s_77_o = s_77_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_78_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_78_o = grp_Autocorrelation_17_18_fu_388_s_78_o;
    end else begin
        s_78_o = s_78_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_79_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_79_o = grp_Autocorrelation_17_18_fu_388_s_79_o;
    end else begin
        s_79_o = s_79_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_7_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_7_o = grp_Autocorrelation_17_18_fu_388_s_7_o;
    end else begin
        s_7_o = s_7_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_80_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_80_o = grp_Autocorrelation_17_18_fu_388_s_80_o;
    end else begin
        s_80_o = s_80_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_81_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_81_o = grp_Autocorrelation_17_18_fu_388_s_81_o;
    end else begin
        s_81_o = s_81_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_82_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_82_o = grp_Autocorrelation_17_18_fu_388_s_82_o;
    end else begin
        s_82_o = s_82_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_83_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_83_o = grp_Autocorrelation_17_18_fu_388_s_83_o;
    end else begin
        s_83_o = s_83_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_84_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_84_o = grp_Autocorrelation_17_18_fu_388_s_84_o;
    end else begin
        s_84_o = s_84_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_85_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_85_o = grp_Autocorrelation_17_18_fu_388_s_85_o;
    end else begin
        s_85_o = s_85_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_86_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_86_o = grp_Autocorrelation_17_18_fu_388_s_86_o;
    end else begin
        s_86_o = s_86_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_87_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_87_o = grp_Autocorrelation_17_18_fu_388_s_87_o;
    end else begin
        s_87_o = s_87_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_88_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_88_o = grp_Autocorrelation_17_18_fu_388_s_88_o;
    end else begin
        s_88_o = s_88_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_89_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_89_o = grp_Autocorrelation_17_18_fu_388_s_89_o;
    end else begin
        s_89_o = s_89_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_8_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_8_o = grp_Autocorrelation_17_18_fu_388_s_8_o;
    end else begin
        s_8_o = s_8_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_90_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_90_o = grp_Autocorrelation_17_18_fu_388_s_90_o;
    end else begin
        s_90_o = s_90_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_91_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_91_o = grp_Autocorrelation_17_18_fu_388_s_91_o;
    end else begin
        s_91_o = s_91_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_92_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_92_o = grp_Autocorrelation_17_18_fu_388_s_92_o;
    end else begin
        s_92_o = s_92_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_93_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_93_o = grp_Autocorrelation_17_18_fu_388_s_93_o;
    end else begin
        s_93_o = s_93_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_94_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_94_o = grp_Autocorrelation_17_18_fu_388_s_94_o;
    end else begin
        s_94_o = s_94_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_95_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_95_o = grp_Autocorrelation_17_18_fu_388_s_95_o;
    end else begin
        s_95_o = s_95_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_96_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_96_o = grp_Autocorrelation_17_18_fu_388_s_96_o;
    end else begin
        s_96_o = s_96_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_97_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_97_o = grp_Autocorrelation_17_18_fu_388_s_97_o;
    end else begin
        s_97_o = s_97_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_98_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_98_o = grp_Autocorrelation_17_18_fu_388_s_98_o;
    end else begin
        s_98_o = s_98_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_99_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_99_o = grp_Autocorrelation_17_18_fu_388_s_99_o;
    end else begin
        s_99_o = s_99_i;
    end
end
always @ (*) begin
    if (((grp_Autocorrelation_17_18_fu_388_s_9_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_9_o = grp_Autocorrelation_17_18_fu_388_s_9_o;
    end else begin
        s_9_o = s_9_i;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_Autocorrelation_17_18_fu_388_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_Reflection_coefficients_fu_723_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_Transformation_to_Log_Area_Ratios_fu_740_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_Quantization_and_coding_fu_746_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign grp_Autocorrelation_17_18_fu_388_ap_start = grp_Autocorrelation_17_18_fu_388_ap_start_reg;
assign grp_Quantization_and_coding_fu_746_ap_start = grp_Quantization_and_coding_fu_746_ap_start_reg;
assign grp_Reflection_coefficients_fu_723_ap_start = grp_Reflection_coefficients_fu_723_ap_start_reg;
assign grp_Transformation_to_Log_Area_Ratios_fu_740_ap_start = grp_Transformation_to_Log_Area_Ratios_fu_740_ap_start_reg;
assign s_0_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_0_o_ap_vld;
assign s_100_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_100_o_ap_vld;
assign s_101_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_101_o_ap_vld;
assign s_102_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_102_o_ap_vld;
assign s_103_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_103_o_ap_vld;
assign s_104_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_104_o_ap_vld;
assign s_105_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_105_o_ap_vld;
assign s_106_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_106_o_ap_vld;
assign s_107_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_107_o_ap_vld;
assign s_108_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_108_o_ap_vld;
assign s_109_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_109_o_ap_vld;
assign s_10_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_10_o_ap_vld;
assign s_110_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_110_o_ap_vld;
assign s_111_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_111_o_ap_vld;
assign s_112_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_112_o_ap_vld;
assign s_113_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_113_o_ap_vld;
assign s_114_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_114_o_ap_vld;
assign s_115_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_115_o_ap_vld;
assign s_116_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_116_o_ap_vld;
assign s_117_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_117_o_ap_vld;
assign s_118_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_118_o_ap_vld;
assign s_119_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_119_o_ap_vld;
assign s_11_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_11_o_ap_vld;
assign s_120_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_120_o_ap_vld;
assign s_121_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_121_o_ap_vld;
assign s_122_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_122_o_ap_vld;
assign s_123_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_123_o_ap_vld;
assign s_124_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_124_o_ap_vld;
assign s_125_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_125_o_ap_vld;
assign s_126_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_126_o_ap_vld;
assign s_127_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_127_o_ap_vld;
assign s_128_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_128_o_ap_vld;
assign s_129_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_129_o_ap_vld;
assign s_12_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_12_o_ap_vld;
assign s_130_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_130_o_ap_vld;
assign s_131_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_131_o_ap_vld;
assign s_132_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_132_o_ap_vld;
assign s_133_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_133_o_ap_vld;
assign s_134_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_134_o_ap_vld;
assign s_135_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_135_o_ap_vld;
assign s_136_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_136_o_ap_vld;
assign s_137_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_137_o_ap_vld;
assign s_138_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_138_o_ap_vld;
assign s_139_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_139_o_ap_vld;
assign s_13_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_13_o_ap_vld;
assign s_140_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_140_o_ap_vld;
assign s_141_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_141_o_ap_vld;
assign s_142_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_142_o_ap_vld;
assign s_143_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_143_o_ap_vld;
assign s_144_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_144_o_ap_vld;
assign s_145_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_145_o_ap_vld;
assign s_146_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_146_o_ap_vld;
assign s_147_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_147_o_ap_vld;
assign s_148_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_148_o_ap_vld;
assign s_149_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_149_o_ap_vld;
assign s_14_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_14_o_ap_vld;
assign s_150_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_150_o_ap_vld;
assign s_151_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_151_o_ap_vld;
assign s_152_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_152_o_ap_vld;
assign s_153_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_153_o_ap_vld;
assign s_154_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_154_o_ap_vld;
assign s_155_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_155_o_ap_vld;
assign s_156_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_156_o_ap_vld;
assign s_157_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_157_o_ap_vld;
assign s_158_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_158_o_ap_vld;
assign s_159_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_159_o_ap_vld;
assign s_15_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_15_o_ap_vld;
assign s_16_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_16_o_ap_vld;
assign s_17_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_17_o_ap_vld;
assign s_18_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_18_o_ap_vld;
assign s_19_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_19_o_ap_vld;
assign s_1_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_1_o_ap_vld;
assign s_20_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_20_o_ap_vld;
assign s_21_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_21_o_ap_vld;
assign s_22_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_22_o_ap_vld;
assign s_23_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_23_o_ap_vld;
assign s_24_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_24_o_ap_vld;
assign s_25_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_25_o_ap_vld;
assign s_26_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_26_o_ap_vld;
assign s_27_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_27_o_ap_vld;
assign s_28_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_28_o_ap_vld;
assign s_29_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_29_o_ap_vld;
assign s_2_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_2_o_ap_vld;
assign s_30_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_30_o_ap_vld;
assign s_31_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_31_o_ap_vld;
assign s_32_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_32_o_ap_vld;
assign s_33_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_33_o_ap_vld;
assign s_34_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_34_o_ap_vld;
assign s_35_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_35_o_ap_vld;
assign s_36_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_36_o_ap_vld;
assign s_37_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_37_o_ap_vld;
assign s_38_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_38_o_ap_vld;
assign s_39_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_39_o_ap_vld;
assign s_3_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_3_o_ap_vld;
assign s_40_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_40_o_ap_vld;
assign s_41_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_41_o_ap_vld;
assign s_42_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_42_o_ap_vld;
assign s_43_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_43_o_ap_vld;
assign s_44_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_44_o_ap_vld;
assign s_45_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_45_o_ap_vld;
assign s_46_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_46_o_ap_vld;
assign s_47_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_47_o_ap_vld;
assign s_48_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_48_o_ap_vld;
assign s_49_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_49_o_ap_vld;
assign s_4_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_4_o_ap_vld;
assign s_50_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_50_o_ap_vld;
assign s_51_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_51_o_ap_vld;
assign s_52_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_52_o_ap_vld;
assign s_53_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_53_o_ap_vld;
assign s_54_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_54_o_ap_vld;
assign s_55_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_55_o_ap_vld;
assign s_56_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_56_o_ap_vld;
assign s_57_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_57_o_ap_vld;
assign s_58_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_58_o_ap_vld;
assign s_59_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_59_o_ap_vld;
assign s_5_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_5_o_ap_vld;
assign s_60_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_60_o_ap_vld;
assign s_61_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_61_o_ap_vld;
assign s_62_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_62_o_ap_vld;
assign s_63_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_63_o_ap_vld;
assign s_64_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_64_o_ap_vld;
assign s_65_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_65_o_ap_vld;
assign s_66_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_66_o_ap_vld;
assign s_67_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_67_o_ap_vld;
assign s_68_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_68_o_ap_vld;
assign s_69_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_69_o_ap_vld;
assign s_6_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_6_o_ap_vld;
assign s_70_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_70_o_ap_vld;
assign s_71_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_71_o_ap_vld;
assign s_72_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_72_o_ap_vld;
assign s_73_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_73_o_ap_vld;
assign s_74_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_74_o_ap_vld;
assign s_75_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_75_o_ap_vld;
assign s_76_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_76_o_ap_vld;
assign s_77_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_77_o_ap_vld;
assign s_78_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_78_o_ap_vld;
assign s_79_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_79_o_ap_vld;
assign s_7_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_7_o_ap_vld;
assign s_80_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_80_o_ap_vld;
assign s_81_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_81_o_ap_vld;
assign s_82_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_82_o_ap_vld;
assign s_83_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_83_o_ap_vld;
assign s_84_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_84_o_ap_vld;
assign s_85_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_85_o_ap_vld;
assign s_86_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_86_o_ap_vld;
assign s_87_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_87_o_ap_vld;
assign s_88_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_88_o_ap_vld;
assign s_89_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_89_o_ap_vld;
assign s_8_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_8_o_ap_vld;
assign s_90_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_90_o_ap_vld;
assign s_91_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_91_o_ap_vld;
assign s_92_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_92_o_ap_vld;
assign s_93_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_93_o_ap_vld;
assign s_94_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_94_o_ap_vld;
assign s_95_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_95_o_ap_vld;
assign s_96_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_96_o_ap_vld;
assign s_97_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_97_o_ap_vld;
assign s_98_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_98_o_ap_vld;
assign s_99_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_99_o_ap_vld;
assign s_9_o_ap_vld = grp_Autocorrelation_17_18_fu_388_s_9_o_ap_vld;
assign trunc_ln315_1_fu_767_p1 = L_ACF_2_fu_360[31:0];
assign trunc_ln315_2_fu_775_p1 = L_ACF_3_fu_364[31:0];
assign trunc_ln315_3_fu_783_p1 = L_ACF_4_fu_368[31:0];
assign trunc_ln315_4_fu_791_p1 = L_ACF_5_fu_372[31:0];
assign trunc_ln315_5_fu_799_p1 = L_ACF_6_fu_376[31:0];
assign trunc_ln315_6_fu_807_p1 = L_ACF_7_fu_380[31:0];
assign trunc_ln315_fu_759_p1 = L_ACF_1_fu_356[31:0];
assign trunc_ln318_fu_815_p1 = L_ACF_8_fu_384[31:0];
endmodule 