module bicg_bicg_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_r_address0,buff_r_ce0,buff_r_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_16_address0,buff_A_16_ce0,buff_A_16_q0,buff_A_18_address0,buff_A_18_ce0,buff_A_18_q0,buff_A_20_address0,buff_A_20_ce0,buff_A_20_q0,buff_A_22_address0,buff_A_22_ce0,buff_A_22_q0,buff_A_24_address0,buff_A_24_ce0,buff_A_24_q0,buff_A_26_address0,buff_A_26_ce0,buff_A_26_q0,buff_A_28_address0,buff_A_28_ce0,buff_A_28_q0,buff_A_30_address0,buff_A_30_ce0,buff_A_30_q0,buff_A_32_address0,buff_A_32_ce0,buff_A_32_q0,buff_A_34_address0,buff_A_34_ce0,buff_A_34_q0,buff_A_36_address0,buff_A_36_ce0,buff_A_36_q0,buff_A_38_address0,buff_A_38_ce0,buff_A_38_q0,buff_A_40_address0,buff_A_40_ce0,buff_A_40_q0,buff_A_42_address0,buff_A_42_ce0,buff_A_42_q0,buff_A_44_address0,buff_A_44_ce0,buff_A_44_q0,buff_A_46_address0,buff_A_46_ce0,buff_A_46_q0,buff_A_48_address0,buff_A_48_ce0,buff_A_48_q0,buff_A_50_address0,buff_A_50_ce0,buff_A_50_q0,buff_A_52_address0,buff_A_52_ce0,buff_A_52_q0,buff_A_54_address0,buff_A_54_ce0,buff_A_54_q0,buff_A_56_address0,buff_A_56_ce0,buff_A_56_q0,buff_A_58_address0,buff_A_58_ce0,buff_A_58_q0,buff_A_60_address0,buff_A_60_ce0,buff_A_60_q0,buff_A_62_address0,buff_A_62_ce0,buff_A_62_q0,buff_A_64_address0,buff_A_64_ce0,buff_A_64_q0,buff_A_66_address0,buff_A_66_ce0,buff_A_66_q0,buff_A_68_address0,buff_A_68_ce0,buff_A_68_q0,buff_A_70_address0,buff_A_70_ce0,buff_A_70_q0,buff_A_72_address0,buff_A_72_ce0,buff_A_72_q0,buff_A_74_address0,buff_A_74_ce0,buff_A_74_q0,buff_A_76_address0,buff_A_76_ce0,buff_A_76_q0,buff_A_78_address0,buff_A_78_ce0,buff_A_78_q0,buff_A_80_address0,buff_A_80_ce0,buff_A_80_q0,buff_A_82_address0,buff_A_82_ce0,buff_A_82_q0,buff_A_84_address0,buff_A_84_ce0,buff_A_84_q0,buff_A_86_address0,buff_A_86_ce0,buff_A_86_q0,buff_A_88_address0,buff_A_88_ce0,buff_A_88_q0,buff_A_90_address0,buff_A_90_ce0,buff_A_90_q0,buff_A_92_address0,buff_A_92_ce0,buff_A_92_q0,buff_A_94_address0,buff_A_94_ce0,buff_A_94_q0,buff_A_96_address0,buff_A_96_ce0,buff_A_96_q0,buff_A_98_address0,buff_A_98_ce0,buff_A_98_q0,buff_A_100_address0,buff_A_100_ce0,buff_A_100_q0,buff_A_102_address0,buff_A_102_ce0,buff_A_102_q0,buff_A_104_address0,buff_A_104_ce0,buff_A_104_q0,buff_A_106_address0,buff_A_106_ce0,buff_A_106_q0,buff_A_108_address0,buff_A_108_ce0,buff_A_108_q0,buff_A_110_address0,buff_A_110_ce0,buff_A_110_q0,buff_A_112_address0,buff_A_112_ce0,buff_A_112_q0,buff_A_114_address0,buff_A_114_ce0,buff_A_114_q0,buff_A_116_address0,buff_A_116_ce0,buff_A_116_q0,buff_A_118_address0,buff_A_118_ce0,buff_A_118_q0,buff_A_120_address0,buff_A_120_ce0,buff_A_120_q0,buff_A_122_address0,buff_A_122_ce0,buff_A_122_q0,buff_A_124_address0,buff_A_124_ce0,buff_A_124_q0,buff_A_126_address0,buff_A_126_ce0,buff_A_126_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_A_17_address0,buff_A_17_ce0,buff_A_17_q0,buff_A_19_address0,buff_A_19_ce0,buff_A_19_q0,buff_A_21_address0,buff_A_21_ce0,buff_A_21_q0,buff_A_23_address0,buff_A_23_ce0,buff_A_23_q0,buff_A_25_address0,buff_A_25_ce0,buff_A_25_q0,buff_A_27_address0,buff_A_27_ce0,buff_A_27_q0,buff_A_29_address0,buff_A_29_ce0,buff_A_29_q0,buff_A_31_address0,buff_A_31_ce0,buff_A_31_q0,buff_A_33_address0,buff_A_33_ce0,buff_A_33_q0,buff_A_35_address0,buff_A_35_ce0,buff_A_35_q0,buff_A_37_address0,buff_A_37_ce0,buff_A_37_q0,buff_A_39_address0,buff_A_39_ce0,buff_A_39_q0,buff_A_41_address0,buff_A_41_ce0,buff_A_41_q0,buff_A_43_address0,buff_A_43_ce0,buff_A_43_q0,buff_A_45_address0,buff_A_45_ce0,buff_A_45_q0,buff_A_47_address0,buff_A_47_ce0,buff_A_47_q0,buff_A_49_address0,buff_A_49_ce0,buff_A_49_q0,buff_A_51_address0,buff_A_51_ce0,buff_A_51_q0,buff_A_53_address0,buff_A_53_ce0,buff_A_53_q0,buff_A_55_address0,buff_A_55_ce0,buff_A_55_q0,buff_A_57_address0,buff_A_57_ce0,buff_A_57_q0,buff_A_59_address0,buff_A_59_ce0,buff_A_59_q0,buff_A_61_address0,buff_A_61_ce0,buff_A_61_q0,buff_A_63_address0,buff_A_63_ce0,buff_A_63_q0,buff_A_65_address0,buff_A_65_ce0,buff_A_65_q0,buff_A_67_address0,buff_A_67_ce0,buff_A_67_q0,buff_A_69_address0,buff_A_69_ce0,buff_A_69_q0,buff_A_71_address0,buff_A_71_ce0,buff_A_71_q0,buff_A_73_address0,buff_A_73_ce0,buff_A_73_q0,buff_A_75_address0,buff_A_75_ce0,buff_A_75_q0,buff_A_77_address0,buff_A_77_ce0,buff_A_77_q0,buff_A_79_address0,buff_A_79_ce0,buff_A_79_q0,buff_A_81_address0,buff_A_81_ce0,buff_A_81_q0,buff_A_83_address0,buff_A_83_ce0,buff_A_83_q0,buff_A_85_address0,buff_A_85_ce0,buff_A_85_q0,buff_A_87_address0,buff_A_87_ce0,buff_A_87_q0,buff_A_89_address0,buff_A_89_ce0,buff_A_89_q0,buff_A_91_address0,buff_A_91_ce0,buff_A_91_q0,buff_A_93_address0,buff_A_93_ce0,buff_A_93_q0,buff_A_95_address0,buff_A_95_ce0,buff_A_95_q0,buff_A_97_address0,buff_A_97_ce0,buff_A_97_q0,buff_A_99_address0,buff_A_99_ce0,buff_A_99_q0,buff_A_101_address0,buff_A_101_ce0,buff_A_101_q0,buff_A_103_address0,buff_A_103_ce0,buff_A_103_q0,buff_A_105_address0,buff_A_105_ce0,buff_A_105_q0,buff_A_107_address0,buff_A_107_ce0,buff_A_107_q0,buff_A_109_address0,buff_A_109_ce0,buff_A_109_q0,buff_A_111_address0,buff_A_111_ce0,buff_A_111_q0,buff_A_113_address0,buff_A_113_ce0,buff_A_113_q0,buff_A_115_address0,buff_A_115_ce0,buff_A_115_q0,buff_A_117_address0,buff_A_117_ce0,buff_A_117_q0,buff_A_119_address0,buff_A_119_ce0,buff_A_119_q0,buff_A_121_address0,buff_A_121_ce0,buff_A_121_q0,buff_A_123_address0,buff_A_123_ce0,buff_A_123_q0,buff_A_125_address0,buff_A_125_ce0,buff_A_125_q0,buff_A_127_address0,buff_A_127_ce0,buff_A_127_q0,buff_s_out_address0,buff_s_out_ce0,buff_s_out_we0,buff_s_out_d0,buff_s_out_address1,buff_s_out_ce1,buff_s_out_q1,buff_s_out_1_address0,buff_s_out_1_ce0,buff_s_out_1_we0,buff_s_out_1_d0,buff_s_out_1_address1,buff_s_out_1_ce1,buff_s_out_1_q1,grp_fu_2504_p_din0,grp_fu_2504_p_din1,grp_fu_2504_p_opcode,grp_fu_2504_p_dout0,grp_fu_2504_p_ce,grp_fu_2508_p_din0,grp_fu_2508_p_din1,grp_fu_2508_p_opcode,grp_fu_2508_p_dout0,grp_fu_2508_p_ce,grp_fu_2512_p_din0,grp_fu_2512_p_din1,grp_fu_2512_p_dout0,grp_fu_2512_p_ce,grp_fu_2516_p_din0,grp_fu_2516_p_din1,grp_fu_2516_p_dout0,grp_fu_2516_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] buff_r_address0;
output   buff_r_ce0;
input  [31:0] buff_r_q0;
output  [4:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [4:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [4:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [4:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [4:0] buff_A_8_address0;
output   buff_A_8_ce0;
input  [31:0] buff_A_8_q0;
output  [4:0] buff_A_10_address0;
output   buff_A_10_ce0;
input  [31:0] buff_A_10_q0;
output  [4:0] buff_A_12_address0;
output   buff_A_12_ce0;
input  [31:0] buff_A_12_q0;
output  [4:0] buff_A_14_address0;
output   buff_A_14_ce0;
input  [31:0] buff_A_14_q0;
output  [4:0] buff_A_16_address0;
output   buff_A_16_ce0;
input  [31:0] buff_A_16_q0;
output  [4:0] buff_A_18_address0;
output   buff_A_18_ce0;
input  [31:0] buff_A_18_q0;
output  [4:0] buff_A_20_address0;
output   buff_A_20_ce0;
input  [31:0] buff_A_20_q0;
output  [4:0] buff_A_22_address0;
output   buff_A_22_ce0;
input  [31:0] buff_A_22_q0;
output  [4:0] buff_A_24_address0;
output   buff_A_24_ce0;
input  [31:0] buff_A_24_q0;
output  [4:0] buff_A_26_address0;
output   buff_A_26_ce0;
input  [31:0] buff_A_26_q0;
output  [4:0] buff_A_28_address0;
output   buff_A_28_ce0;
input  [31:0] buff_A_28_q0;
output  [4:0] buff_A_30_address0;
output   buff_A_30_ce0;
input  [31:0] buff_A_30_q0;
output  [4:0] buff_A_32_address0;
output   buff_A_32_ce0;
input  [31:0] buff_A_32_q0;
output  [4:0] buff_A_34_address0;
output   buff_A_34_ce0;
input  [31:0] buff_A_34_q0;
output  [4:0] buff_A_36_address0;
output   buff_A_36_ce0;
input  [31:0] buff_A_36_q0;
output  [4:0] buff_A_38_address0;
output   buff_A_38_ce0;
input  [31:0] buff_A_38_q0;
output  [4:0] buff_A_40_address0;
output   buff_A_40_ce0;
input  [31:0] buff_A_40_q0;
output  [4:0] buff_A_42_address0;
output   buff_A_42_ce0;
input  [31:0] buff_A_42_q0;
output  [4:0] buff_A_44_address0;
output   buff_A_44_ce0;
input  [31:0] buff_A_44_q0;
output  [4:0] buff_A_46_address0;
output   buff_A_46_ce0;
input  [31:0] buff_A_46_q0;
output  [4:0] buff_A_48_address0;
output   buff_A_48_ce0;
input  [31:0] buff_A_48_q0;
output  [4:0] buff_A_50_address0;
output   buff_A_50_ce0;
input  [31:0] buff_A_50_q0;
output  [4:0] buff_A_52_address0;
output   buff_A_52_ce0;
input  [31:0] buff_A_52_q0;
output  [4:0] buff_A_54_address0;
output   buff_A_54_ce0;
input  [31:0] buff_A_54_q0;
output  [4:0] buff_A_56_address0;
output   buff_A_56_ce0;
input  [31:0] buff_A_56_q0;
output  [4:0] buff_A_58_address0;
output   buff_A_58_ce0;
input  [31:0] buff_A_58_q0;
output  [4:0] buff_A_60_address0;
output   buff_A_60_ce0;
input  [31:0] buff_A_60_q0;
output  [4:0] buff_A_62_address0;
output   buff_A_62_ce0;
input  [31:0] buff_A_62_q0;
output  [4:0] buff_A_64_address0;
output   buff_A_64_ce0;
input  [31:0] buff_A_64_q0;
output  [4:0] buff_A_66_address0;
output   buff_A_66_ce0;
input  [31:0] buff_A_66_q0;
output  [4:0] buff_A_68_address0;
output   buff_A_68_ce0;
input  [31:0] buff_A_68_q0;
output  [4:0] buff_A_70_address0;
output   buff_A_70_ce0;
input  [31:0] buff_A_70_q0;
output  [4:0] buff_A_72_address0;
output   buff_A_72_ce0;
input  [31:0] buff_A_72_q0;
output  [4:0] buff_A_74_address0;
output   buff_A_74_ce0;
input  [31:0] buff_A_74_q0;
output  [4:0] buff_A_76_address0;
output   buff_A_76_ce0;
input  [31:0] buff_A_76_q0;
output  [4:0] buff_A_78_address0;
output   buff_A_78_ce0;
input  [31:0] buff_A_78_q0;
output  [4:0] buff_A_80_address0;
output   buff_A_80_ce0;
input  [31:0] buff_A_80_q0;
output  [4:0] buff_A_82_address0;
output   buff_A_82_ce0;
input  [31:0] buff_A_82_q0;
output  [4:0] buff_A_84_address0;
output   buff_A_84_ce0;
input  [31:0] buff_A_84_q0;
output  [4:0] buff_A_86_address0;
output   buff_A_86_ce0;
input  [31:0] buff_A_86_q0;
output  [4:0] buff_A_88_address0;
output   buff_A_88_ce0;
input  [31:0] buff_A_88_q0;
output  [4:0] buff_A_90_address0;
output   buff_A_90_ce0;
input  [31:0] buff_A_90_q0;
output  [4:0] buff_A_92_address0;
output   buff_A_92_ce0;
input  [31:0] buff_A_92_q0;
output  [4:0] buff_A_94_address0;
output   buff_A_94_ce0;
input  [31:0] buff_A_94_q0;
output  [4:0] buff_A_96_address0;
output   buff_A_96_ce0;
input  [31:0] buff_A_96_q0;
output  [4:0] buff_A_98_address0;
output   buff_A_98_ce0;
input  [31:0] buff_A_98_q0;
output  [4:0] buff_A_100_address0;
output   buff_A_100_ce0;
input  [31:0] buff_A_100_q0;
output  [4:0] buff_A_102_address0;
output   buff_A_102_ce0;
input  [31:0] buff_A_102_q0;
output  [4:0] buff_A_104_address0;
output   buff_A_104_ce0;
input  [31:0] buff_A_104_q0;
output  [4:0] buff_A_106_address0;
output   buff_A_106_ce0;
input  [31:0] buff_A_106_q0;
output  [4:0] buff_A_108_address0;
output   buff_A_108_ce0;
input  [31:0] buff_A_108_q0;
output  [4:0] buff_A_110_address0;
output   buff_A_110_ce0;
input  [31:0] buff_A_110_q0;
output  [4:0] buff_A_112_address0;
output   buff_A_112_ce0;
input  [31:0] buff_A_112_q0;
output  [4:0] buff_A_114_address0;
output   buff_A_114_ce0;
input  [31:0] buff_A_114_q0;
output  [4:0] buff_A_116_address0;
output   buff_A_116_ce0;
input  [31:0] buff_A_116_q0;
output  [4:0] buff_A_118_address0;
output   buff_A_118_ce0;
input  [31:0] buff_A_118_q0;
output  [4:0] buff_A_120_address0;
output   buff_A_120_ce0;
input  [31:0] buff_A_120_q0;
output  [4:0] buff_A_122_address0;
output   buff_A_122_ce0;
input  [31:0] buff_A_122_q0;
output  [4:0] buff_A_124_address0;
output   buff_A_124_ce0;
input  [31:0] buff_A_124_q0;
output  [4:0] buff_A_126_address0;
output   buff_A_126_ce0;
input  [31:0] buff_A_126_q0;
output  [4:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [4:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [4:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [4:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [4:0] buff_A_9_address0;
output   buff_A_9_ce0;
input  [31:0] buff_A_9_q0;
output  [4:0] buff_A_11_address0;
output   buff_A_11_ce0;
input  [31:0] buff_A_11_q0;
output  [4:0] buff_A_13_address0;
output   buff_A_13_ce0;
input  [31:0] buff_A_13_q0;
output  [4:0] buff_A_15_address0;
output   buff_A_15_ce0;
input  [31:0] buff_A_15_q0;
output  [4:0] buff_A_17_address0;
output   buff_A_17_ce0;
input  [31:0] buff_A_17_q0;
output  [4:0] buff_A_19_address0;
output   buff_A_19_ce0;
input  [31:0] buff_A_19_q0;
output  [4:0] buff_A_21_address0;
output   buff_A_21_ce0;
input  [31:0] buff_A_21_q0;
output  [4:0] buff_A_23_address0;
output   buff_A_23_ce0;
input  [31:0] buff_A_23_q0;
output  [4:0] buff_A_25_address0;
output   buff_A_25_ce0;
input  [31:0] buff_A_25_q0;
output  [4:0] buff_A_27_address0;
output   buff_A_27_ce0;
input  [31:0] buff_A_27_q0;
output  [4:0] buff_A_29_address0;
output   buff_A_29_ce0;
input  [31:0] buff_A_29_q0;
output  [4:0] buff_A_31_address0;
output   buff_A_31_ce0;
input  [31:0] buff_A_31_q0;
output  [4:0] buff_A_33_address0;
output   buff_A_33_ce0;
input  [31:0] buff_A_33_q0;
output  [4:0] buff_A_35_address0;
output   buff_A_35_ce0;
input  [31:0] buff_A_35_q0;
output  [4:0] buff_A_37_address0;
output   buff_A_37_ce0;
input  [31:0] buff_A_37_q0;
output  [4:0] buff_A_39_address0;
output   buff_A_39_ce0;
input  [31:0] buff_A_39_q0;
output  [4:0] buff_A_41_address0;
output   buff_A_41_ce0;
input  [31:0] buff_A_41_q0;
output  [4:0] buff_A_43_address0;
output   buff_A_43_ce0;
input  [31:0] buff_A_43_q0;
output  [4:0] buff_A_45_address0;
output   buff_A_45_ce0;
input  [31:0] buff_A_45_q0;
output  [4:0] buff_A_47_address0;
output   buff_A_47_ce0;
input  [31:0] buff_A_47_q0;
output  [4:0] buff_A_49_address0;
output   buff_A_49_ce0;
input  [31:0] buff_A_49_q0;
output  [4:0] buff_A_51_address0;
output   buff_A_51_ce0;
input  [31:0] buff_A_51_q0;
output  [4:0] buff_A_53_address0;
output   buff_A_53_ce0;
input  [31:0] buff_A_53_q0;
output  [4:0] buff_A_55_address0;
output   buff_A_55_ce0;
input  [31:0] buff_A_55_q0;
output  [4:0] buff_A_57_address0;
output   buff_A_57_ce0;
input  [31:0] buff_A_57_q0;
output  [4:0] buff_A_59_address0;
output   buff_A_59_ce0;
input  [31:0] buff_A_59_q0;
output  [4:0] buff_A_61_address0;
output   buff_A_61_ce0;
input  [31:0] buff_A_61_q0;
output  [4:0] buff_A_63_address0;
output   buff_A_63_ce0;
input  [31:0] buff_A_63_q0;
output  [4:0] buff_A_65_address0;
output   buff_A_65_ce0;
input  [31:0] buff_A_65_q0;
output  [4:0] buff_A_67_address0;
output   buff_A_67_ce0;
input  [31:0] buff_A_67_q0;
output  [4:0] buff_A_69_address0;
output   buff_A_69_ce0;
input  [31:0] buff_A_69_q0;
output  [4:0] buff_A_71_address0;
output   buff_A_71_ce0;
input  [31:0] buff_A_71_q0;
output  [4:0] buff_A_73_address0;
output   buff_A_73_ce0;
input  [31:0] buff_A_73_q0;
output  [4:0] buff_A_75_address0;
output   buff_A_75_ce0;
input  [31:0] buff_A_75_q0;
output  [4:0] buff_A_77_address0;
output   buff_A_77_ce0;
input  [31:0] buff_A_77_q0;
output  [4:0] buff_A_79_address0;
output   buff_A_79_ce0;
input  [31:0] buff_A_79_q0;
output  [4:0] buff_A_81_address0;
output   buff_A_81_ce0;
input  [31:0] buff_A_81_q0;
output  [4:0] buff_A_83_address0;
output   buff_A_83_ce0;
input  [31:0] buff_A_83_q0;
output  [4:0] buff_A_85_address0;
output   buff_A_85_ce0;
input  [31:0] buff_A_85_q0;
output  [4:0] buff_A_87_address0;
output   buff_A_87_ce0;
input  [31:0] buff_A_87_q0;
output  [4:0] buff_A_89_address0;
output   buff_A_89_ce0;
input  [31:0] buff_A_89_q0;
output  [4:0] buff_A_91_address0;
output   buff_A_91_ce0;
input  [31:0] buff_A_91_q0;
output  [4:0] buff_A_93_address0;
output   buff_A_93_ce0;
input  [31:0] buff_A_93_q0;
output  [4:0] buff_A_95_address0;
output   buff_A_95_ce0;
input  [31:0] buff_A_95_q0;
output  [4:0] buff_A_97_address0;
output   buff_A_97_ce0;
input  [31:0] buff_A_97_q0;
output  [4:0] buff_A_99_address0;
output   buff_A_99_ce0;
input  [31:0] buff_A_99_q0;
output  [4:0] buff_A_101_address0;
output   buff_A_101_ce0;
input  [31:0] buff_A_101_q0;
output  [4:0] buff_A_103_address0;
output   buff_A_103_ce0;
input  [31:0] buff_A_103_q0;
output  [4:0] buff_A_105_address0;
output   buff_A_105_ce0;
input  [31:0] buff_A_105_q0;
output  [4:0] buff_A_107_address0;
output   buff_A_107_ce0;
input  [31:0] buff_A_107_q0;
output  [4:0] buff_A_109_address0;
output   buff_A_109_ce0;
input  [31:0] buff_A_109_q0;
output  [4:0] buff_A_111_address0;
output   buff_A_111_ce0;
input  [31:0] buff_A_111_q0;
output  [4:0] buff_A_113_address0;
output   buff_A_113_ce0;
input  [31:0] buff_A_113_q0;
output  [4:0] buff_A_115_address0;
output   buff_A_115_ce0;
input  [31:0] buff_A_115_q0;
output  [4:0] buff_A_117_address0;
output   buff_A_117_ce0;
input  [31:0] buff_A_117_q0;
output  [4:0] buff_A_119_address0;
output   buff_A_119_ce0;
input  [31:0] buff_A_119_q0;
output  [4:0] buff_A_121_address0;
output   buff_A_121_ce0;
input  [31:0] buff_A_121_q0;
output  [4:0] buff_A_123_address0;
output   buff_A_123_ce0;
input  [31:0] buff_A_123_q0;
output  [4:0] buff_A_125_address0;
output   buff_A_125_ce0;
input  [31:0] buff_A_125_q0;
output  [4:0] buff_A_127_address0;
output   buff_A_127_ce0;
input  [31:0] buff_A_127_q0;
output  [4:0] buff_s_out_address0;
output   buff_s_out_ce0;
output   buff_s_out_we0;
output  [31:0] buff_s_out_d0;
output  [4:0] buff_s_out_address1;
output   buff_s_out_ce1;
input  [31:0] buff_s_out_q1;
output  [4:0] buff_s_out_1_address0;
output   buff_s_out_1_ce0;
output   buff_s_out_1_we0;
output  [31:0] buff_s_out_1_d0;
output  [4:0] buff_s_out_1_address1;
output   buff_s_out_1_ce1;
input  [31:0] buff_s_out_1_q1;
output  [31:0] grp_fu_2504_p_din0;
output  [31:0] grp_fu_2504_p_din1;
output  [1:0] grp_fu_2504_p_opcode;
input  [31:0] grp_fu_2504_p_dout0;
output   grp_fu_2504_p_ce;
output  [31:0] grp_fu_2508_p_din0;
output  [31:0] grp_fu_2508_p_din1;
output  [1:0] grp_fu_2508_p_opcode;
input  [31:0] grp_fu_2508_p_dout0;
output   grp_fu_2508_p_ce;
output  [31:0] grp_fu_2512_p_din0;
output  [31:0] grp_fu_2512_p_din1;
input  [31:0] grp_fu_2512_p_dout0;
output   grp_fu_2512_p_ce;
output  [31:0] grp_fu_2516_p_din0;
output  [31:0] grp_fu_2516_p_din1;
input  [31:0] grp_fu_2516_p_dout0;
output   grp_fu_2516_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_2127_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln23_fu_2185_p1;
reg   [0:0] trunc_ln23_reg_2945;
wire   [5:0] trunc_ln24_fu_2331_p1;
reg   [5:0] trunc_ln24_reg_3596;
reg   [4:0] lshr_ln5_5_reg_3604;
reg   [4:0] lshr_ln5_5_reg_3604_pp0_iter2_reg;
reg   [4:0] lshr_ln5_5_reg_3604_pp0_iter3_reg;
reg   [4:0] lshr_ln5_5_reg_3604_pp0_iter4_reg;
reg   [31:0] buff_r_load_reg_3609;
wire   [31:0] select_ln25_fu_2631_p3;
reg   [31:0] select_ln25_reg_3615;
wire   [31:0] select_ln25_1_fu_2908_p3;
reg   [31:0] select_ln25_1_reg_3620;
reg   [4:0] buff_s_out_addr_reg_3625;
reg   [4:0] buff_s_out_addr_reg_3625_pp0_iter6_reg;
reg   [4:0] buff_s_out_addr_reg_3625_pp0_iter7_reg;
reg   [4:0] buff_s_out_addr_reg_3625_pp0_iter8_reg;
reg   [4:0] buff_s_out_addr_reg_3625_pp0_iter9_reg;
reg   [4:0] buff_s_out_addr_reg_3625_pp0_iter10_reg;
reg   [4:0] buff_s_out_addr_reg_3625_pp0_iter11_reg;
reg   [4:0] buff_s_out_addr_reg_3625_pp0_iter12_reg;
reg   [4:0] buff_s_out_addr_reg_3625_pp0_iter13_reg;
reg   [4:0] buff_s_out_1_addr_reg_3631;
reg   [4:0] buff_s_out_1_addr_reg_3631_pp0_iter6_reg;
reg   [4:0] buff_s_out_1_addr_reg_3631_pp0_iter7_reg;
reg   [4:0] buff_s_out_1_addr_reg_3631_pp0_iter8_reg;
reg   [4:0] buff_s_out_1_addr_reg_3631_pp0_iter9_reg;
reg   [4:0] buff_s_out_1_addr_reg_3631_pp0_iter10_reg;
reg   [4:0] buff_s_out_1_addr_reg_3631_pp0_iter11_reg;
reg   [4:0] buff_s_out_1_addr_reg_3631_pp0_iter12_reg;
reg   [4:0] buff_s_out_1_addr_reg_3631_pp0_iter13_reg;
reg   [31:0] buff_s_out_load_reg_3637;
reg   [31:0] mul_reg_3642;
reg   [31:0] mul_1_reg_3647;
reg   [31:0] buff_s_out_1_load_reg_3652;
reg   [31:0] add_reg_3657;
reg   [31:0] add_1_reg_3662;
wire   [63:0] zext_ln23_fu_2180_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5_2_fu_2199_p1;
wire   [63:0] zext_ln5_fu_2915_p1;
reg   [6:0] j_fu_370;
wire   [6:0] add_ln24_fu_2345_p2;
wire    ap_loop_init;
reg   [6:0] i_1_fu_374;
wire   [6:0] select_ln23_fu_2172_p3;
reg   [11:0] indvar_flatten6_fu_378;
wire   [11:0] add_ln23_1_fu_2133_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    buff_r_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_8_ce0_local;
reg    buff_A_10_ce0_local;
reg    buff_A_12_ce0_local;
reg    buff_A_14_ce0_local;
reg    buff_A_16_ce0_local;
reg    buff_A_18_ce0_local;
reg    buff_A_20_ce0_local;
reg    buff_A_22_ce0_local;
reg    buff_A_24_ce0_local;
reg    buff_A_26_ce0_local;
reg    buff_A_28_ce0_local;
reg    buff_A_30_ce0_local;
reg    buff_A_32_ce0_local;
reg    buff_A_34_ce0_local;
reg    buff_A_36_ce0_local;
reg    buff_A_38_ce0_local;
reg    buff_A_40_ce0_local;
reg    buff_A_42_ce0_local;
reg    buff_A_44_ce0_local;
reg    buff_A_46_ce0_local;
reg    buff_A_48_ce0_local;
reg    buff_A_50_ce0_local;
reg    buff_A_52_ce0_local;
reg    buff_A_54_ce0_local;
reg    buff_A_56_ce0_local;
reg    buff_A_58_ce0_local;
reg    buff_A_60_ce0_local;
reg    buff_A_62_ce0_local;
reg    buff_A_64_ce0_local;
reg    buff_A_66_ce0_local;
reg    buff_A_68_ce0_local;
reg    buff_A_70_ce0_local;
reg    buff_A_72_ce0_local;
reg    buff_A_74_ce0_local;
reg    buff_A_76_ce0_local;
reg    buff_A_78_ce0_local;
reg    buff_A_80_ce0_local;
reg    buff_A_82_ce0_local;
reg    buff_A_84_ce0_local;
reg    buff_A_86_ce0_local;
reg    buff_A_88_ce0_local;
reg    buff_A_90_ce0_local;
reg    buff_A_92_ce0_local;
reg    buff_A_94_ce0_local;
reg    buff_A_96_ce0_local;
reg    buff_A_98_ce0_local;
reg    buff_A_100_ce0_local;
reg    buff_A_102_ce0_local;
reg    buff_A_104_ce0_local;
reg    buff_A_106_ce0_local;
reg    buff_A_108_ce0_local;
reg    buff_A_110_ce0_local;
reg    buff_A_112_ce0_local;
reg    buff_A_114_ce0_local;
reg    buff_A_116_ce0_local;
reg    buff_A_118_ce0_local;
reg    buff_A_120_ce0_local;
reg    buff_A_122_ce0_local;
reg    buff_A_124_ce0_local;
reg    buff_A_126_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_A_9_ce0_local;
reg    buff_A_11_ce0_local;
reg    buff_A_13_ce0_local;
reg    buff_A_15_ce0_local;
reg    buff_A_17_ce0_local;
reg    buff_A_19_ce0_local;
reg    buff_A_21_ce0_local;
reg    buff_A_23_ce0_local;
reg    buff_A_25_ce0_local;
reg    buff_A_27_ce0_local;
reg    buff_A_29_ce0_local;
reg    buff_A_31_ce0_local;
reg    buff_A_33_ce0_local;
reg    buff_A_35_ce0_local;
reg    buff_A_37_ce0_local;
reg    buff_A_39_ce0_local;
reg    buff_A_41_ce0_local;
reg    buff_A_43_ce0_local;
reg    buff_A_45_ce0_local;
reg    buff_A_47_ce0_local;
reg    buff_A_49_ce0_local;
reg    buff_A_51_ce0_local;
reg    buff_A_53_ce0_local;
reg    buff_A_55_ce0_local;
reg    buff_A_57_ce0_local;
reg    buff_A_59_ce0_local;
reg    buff_A_61_ce0_local;
reg    buff_A_63_ce0_local;
reg    buff_A_65_ce0_local;
reg    buff_A_67_ce0_local;
reg    buff_A_69_ce0_local;
reg    buff_A_71_ce0_local;
reg    buff_A_73_ce0_local;
reg    buff_A_75_ce0_local;
reg    buff_A_77_ce0_local;
reg    buff_A_79_ce0_local;
reg    buff_A_81_ce0_local;
reg    buff_A_83_ce0_local;
reg    buff_A_85_ce0_local;
reg    buff_A_87_ce0_local;
reg    buff_A_89_ce0_local;
reg    buff_A_91_ce0_local;
reg    buff_A_93_ce0_local;
reg    buff_A_95_ce0_local;
reg    buff_A_97_ce0_local;
reg    buff_A_99_ce0_local;
reg    buff_A_101_ce0_local;
reg    buff_A_103_ce0_local;
reg    buff_A_105_ce0_local;
reg    buff_A_107_ce0_local;
reg    buff_A_109_ce0_local;
reg    buff_A_111_ce0_local;
reg    buff_A_113_ce0_local;
reg    buff_A_115_ce0_local;
reg    buff_A_117_ce0_local;
reg    buff_A_119_ce0_local;
reg    buff_A_121_ce0_local;
reg    buff_A_123_ce0_local;
reg    buff_A_125_ce0_local;
reg    buff_A_127_ce0_local;
reg    buff_s_out_ce1_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_s_out_1_ce1_local;
reg    buff_s_out_1_we0_local;
reg    buff_s_out_1_ce0_local;
wire   [0:0] tmp_2_fu_2156_p3;
wire   [6:0] add_ln23_fu_2150_p2;
wire   [4:0] lshr_ln5_2_fu_2189_p4;
wire   [6:0] select_ln5_fu_2164_p3;
wire   [31:0] tmp_fu_2361_p65;
wire   [31:0] tmp_1_fu_2496_p65;
wire   [31:0] tmp_1_fu_2496_p67;
wire   [31:0] tmp_fu_2361_p67;
wire   [31:0] tmp_3_fu_2638_p65;
wire   [31:0] tmp_4_fu_2773_p65;
wire   [31:0] tmp_4_fu_2773_p67;
wire   [31:0] tmp_3_fu_2638_p67;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire   [5:0] tmp_fu_2361_p1;
wire   [5:0] tmp_fu_2361_p3;
wire   [5:0] tmp_fu_2361_p5;
wire   [5:0] tmp_fu_2361_p7;
wire   [5:0] tmp_fu_2361_p9;
wire   [5:0] tmp_fu_2361_p11;
wire   [5:0] tmp_fu_2361_p13;
wire   [5:0] tmp_fu_2361_p15;
wire   [5:0] tmp_fu_2361_p17;
wire   [5:0] tmp_fu_2361_p19;
wire   [5:0] tmp_fu_2361_p21;
wire   [5:0] tmp_fu_2361_p23;
wire   [5:0] tmp_fu_2361_p25;
wire   [5:0] tmp_fu_2361_p27;
wire   [5:0] tmp_fu_2361_p29;
wire   [5:0] tmp_fu_2361_p31;
wire  signed [5:0] tmp_fu_2361_p33;
wire  signed [5:0] tmp_fu_2361_p35;
wire  signed [5:0] tmp_fu_2361_p37;
wire  signed [5:0] tmp_fu_2361_p39;
wire  signed [5:0] tmp_fu_2361_p41;
wire  signed [5:0] tmp_fu_2361_p43;
wire  signed [5:0] tmp_fu_2361_p45;
wire  signed [5:0] tmp_fu_2361_p47;
wire  signed [5:0] tmp_fu_2361_p49;
wire  signed [5:0] tmp_fu_2361_p51;
wire  signed [5:0] tmp_fu_2361_p53;
wire  signed [5:0] tmp_fu_2361_p55;
wire  signed [5:0] tmp_fu_2361_p57;
wire  signed [5:0] tmp_fu_2361_p59;
wire  signed [5:0] tmp_fu_2361_p61;
wire  signed [5:0] tmp_fu_2361_p63;
wire   [5:0] tmp_1_fu_2496_p1;
wire   [5:0] tmp_1_fu_2496_p3;
wire   [5:0] tmp_1_fu_2496_p5;
wire   [5:0] tmp_1_fu_2496_p7;
wire   [5:0] tmp_1_fu_2496_p9;
wire   [5:0] tmp_1_fu_2496_p11;
wire   [5:0] tmp_1_fu_2496_p13;
wire   [5:0] tmp_1_fu_2496_p15;
wire   [5:0] tmp_1_fu_2496_p17;
wire   [5:0] tmp_1_fu_2496_p19;
wire   [5:0] tmp_1_fu_2496_p21;
wire   [5:0] tmp_1_fu_2496_p23;
wire   [5:0] tmp_1_fu_2496_p25;
wire   [5:0] tmp_1_fu_2496_p27;
wire   [5:0] tmp_1_fu_2496_p29;
wire   [5:0] tmp_1_fu_2496_p31;
wire  signed [5:0] tmp_1_fu_2496_p33;
wire  signed [5:0] tmp_1_fu_2496_p35;
wire  signed [5:0] tmp_1_fu_2496_p37;
wire  signed [5:0] tmp_1_fu_2496_p39;
wire  signed [5:0] tmp_1_fu_2496_p41;
wire  signed [5:0] tmp_1_fu_2496_p43;
wire  signed [5:0] tmp_1_fu_2496_p45;
wire  signed [5:0] tmp_1_fu_2496_p47;
wire  signed [5:0] tmp_1_fu_2496_p49;
wire  signed [5:0] tmp_1_fu_2496_p51;
wire  signed [5:0] tmp_1_fu_2496_p53;
wire  signed [5:0] tmp_1_fu_2496_p55;
wire  signed [5:0] tmp_1_fu_2496_p57;
wire  signed [5:0] tmp_1_fu_2496_p59;
wire  signed [5:0] tmp_1_fu_2496_p61;
wire  signed [5:0] tmp_1_fu_2496_p63;
wire   [5:0] tmp_3_fu_2638_p1;
wire   [5:0] tmp_3_fu_2638_p3;
wire   [5:0] tmp_3_fu_2638_p5;
wire   [5:0] tmp_3_fu_2638_p7;
wire   [5:0] tmp_3_fu_2638_p9;
wire   [5:0] tmp_3_fu_2638_p11;
wire   [5:0] tmp_3_fu_2638_p13;
wire   [5:0] tmp_3_fu_2638_p15;
wire   [5:0] tmp_3_fu_2638_p17;
wire   [5:0] tmp_3_fu_2638_p19;
wire   [5:0] tmp_3_fu_2638_p21;
wire   [5:0] tmp_3_fu_2638_p23;
wire   [5:0] tmp_3_fu_2638_p25;
wire   [5:0] tmp_3_fu_2638_p27;
wire   [5:0] tmp_3_fu_2638_p29;
wire   [5:0] tmp_3_fu_2638_p31;
wire  signed [5:0] tmp_3_fu_2638_p33;
wire  signed [5:0] tmp_3_fu_2638_p35;
wire  signed [5:0] tmp_3_fu_2638_p37;
wire  signed [5:0] tmp_3_fu_2638_p39;
wire  signed [5:0] tmp_3_fu_2638_p41;
wire  signed [5:0] tmp_3_fu_2638_p43;
wire  signed [5:0] tmp_3_fu_2638_p45;
wire  signed [5:0] tmp_3_fu_2638_p47;
wire  signed [5:0] tmp_3_fu_2638_p49;
wire  signed [5:0] tmp_3_fu_2638_p51;
wire  signed [5:0] tmp_3_fu_2638_p53;
wire  signed [5:0] tmp_3_fu_2638_p55;
wire  signed [5:0] tmp_3_fu_2638_p57;
wire  signed [5:0] tmp_3_fu_2638_p59;
wire  signed [5:0] tmp_3_fu_2638_p61;
wire  signed [5:0] tmp_3_fu_2638_p63;
wire   [5:0] tmp_4_fu_2773_p1;
wire   [5:0] tmp_4_fu_2773_p3;
wire   [5:0] tmp_4_fu_2773_p5;
wire   [5:0] tmp_4_fu_2773_p7;
wire   [5:0] tmp_4_fu_2773_p9;
wire   [5:0] tmp_4_fu_2773_p11;
wire   [5:0] tmp_4_fu_2773_p13;
wire   [5:0] tmp_4_fu_2773_p15;
wire   [5:0] tmp_4_fu_2773_p17;
wire   [5:0] tmp_4_fu_2773_p19;
wire   [5:0] tmp_4_fu_2773_p21;
wire   [5:0] tmp_4_fu_2773_p23;
wire   [5:0] tmp_4_fu_2773_p25;
wire   [5:0] tmp_4_fu_2773_p27;
wire   [5:0] tmp_4_fu_2773_p29;
wire   [5:0] tmp_4_fu_2773_p31;
wire  signed [5:0] tmp_4_fu_2773_p33;
wire  signed [5:0] tmp_4_fu_2773_p35;
wire  signed [5:0] tmp_4_fu_2773_p37;
wire  signed [5:0] tmp_4_fu_2773_p39;
wire  signed [5:0] tmp_4_fu_2773_p41;
wire  signed [5:0] tmp_4_fu_2773_p43;
wire  signed [5:0] tmp_4_fu_2773_p45;
wire  signed [5:0] tmp_4_fu_2773_p47;
wire  signed [5:0] tmp_4_fu_2773_p49;
wire  signed [5:0] tmp_4_fu_2773_p51;
wire  signed [5:0] tmp_4_fu_2773_p53;
wire  signed [5:0] tmp_4_fu_2773_p55;
wire  signed [5:0] tmp_4_fu_2773_p57;
wire  signed [5:0] tmp_4_fu_2773_p59;
wire  signed [5:0] tmp_4_fu_2773_p61;
wire  signed [5:0] tmp_4_fu_2773_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 j_fu_370 = 7'd0;
#0 i_1_fu_374 = 7'd0;
#0 indvar_flatten6_fu_378 = 12'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U144(.din0(buff_A_q0),.din1(buff_A_2_q0),.din2(buff_A_4_q0),.din3(buff_A_6_q0),.din4(buff_A_8_q0),.din5(buff_A_10_q0),.din6(buff_A_12_q0),.din7(buff_A_14_q0),.din8(buff_A_16_q0),.din9(buff_A_18_q0),.din10(buff_A_20_q0),.din11(buff_A_22_q0),.din12(buff_A_24_q0),.din13(buff_A_26_q0),.din14(buff_A_28_q0),.din15(buff_A_30_q0),.din16(buff_A_32_q0),.din17(buff_A_34_q0),.din18(buff_A_36_q0),.din19(buff_A_38_q0),.din20(buff_A_40_q0),.din21(buff_A_42_q0),.din22(buff_A_44_q0),.din23(buff_A_46_q0),.din24(buff_A_48_q0),.din25(buff_A_50_q0),.din26(buff_A_52_q0),.din27(buff_A_54_q0),.din28(buff_A_56_q0),.din29(buff_A_58_q0),.din30(buff_A_60_q0),.din31(buff_A_62_q0),.def(tmp_fu_2361_p65),.sel(trunc_ln24_reg_3596),.dout(tmp_fu_2361_p67));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U145(.din0(buff_A_64_q0),.din1(buff_A_66_q0),.din2(buff_A_68_q0),.din3(buff_A_70_q0),.din4(buff_A_72_q0),.din5(buff_A_74_q0),.din6(buff_A_76_q0),.din7(buff_A_78_q0),.din8(buff_A_80_q0),.din9(buff_A_82_q0),.din10(buff_A_84_q0),.din11(buff_A_86_q0),.din12(buff_A_88_q0),.din13(buff_A_90_q0),.din14(buff_A_92_q0),.din15(buff_A_94_q0),.din16(buff_A_96_q0),.din17(buff_A_98_q0),.din18(buff_A_100_q0),.din19(buff_A_102_q0),.din20(buff_A_104_q0),.din21(buff_A_106_q0),.din22(buff_A_108_q0),.din23(buff_A_110_q0),.din24(buff_A_112_q0),.din25(buff_A_114_q0),.din26(buff_A_116_q0),.din27(buff_A_118_q0),.din28(buff_A_120_q0),.din29(buff_A_122_q0),.din30(buff_A_124_q0),.din31(buff_A_126_q0),.def(tmp_1_fu_2496_p65),.sel(trunc_ln24_reg_3596),.dout(tmp_1_fu_2496_p67));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U146(.din0(buff_A_1_q0),.din1(buff_A_3_q0),.din2(buff_A_5_q0),.din3(buff_A_7_q0),.din4(buff_A_9_q0),.din5(buff_A_11_q0),.din6(buff_A_13_q0),.din7(buff_A_15_q0),.din8(buff_A_17_q0),.din9(buff_A_19_q0),.din10(buff_A_21_q0),.din11(buff_A_23_q0),.din12(buff_A_25_q0),.din13(buff_A_27_q0),.din14(buff_A_29_q0),.din15(buff_A_31_q0),.din16(buff_A_33_q0),.din17(buff_A_35_q0),.din18(buff_A_37_q0),.din19(buff_A_39_q0),.din20(buff_A_41_q0),.din21(buff_A_43_q0),.din22(buff_A_45_q0),.din23(buff_A_47_q0),.din24(buff_A_49_q0),.din25(buff_A_51_q0),.din26(buff_A_53_q0),.din27(buff_A_55_q0),.din28(buff_A_57_q0),.din29(buff_A_59_q0),.din30(buff_A_61_q0),.din31(buff_A_63_q0),.def(tmp_3_fu_2638_p65),.sel(trunc_ln24_reg_3596),.dout(tmp_3_fu_2638_p67));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U147(.din0(buff_A_65_q0),.din1(buff_A_67_q0),.din2(buff_A_69_q0),.din3(buff_A_71_q0),.din4(buff_A_73_q0),.din5(buff_A_75_q0),.din6(buff_A_77_q0),.din7(buff_A_79_q0),.din8(buff_A_81_q0),.din9(buff_A_83_q0),.din10(buff_A_85_q0),.din11(buff_A_87_q0),.din12(buff_A_89_q0),.din13(buff_A_91_q0),.din14(buff_A_93_q0),.din15(buff_A_95_q0),.din16(buff_A_97_q0),.din17(buff_A_99_q0),.din18(buff_A_101_q0),.din19(buff_A_103_q0),.din20(buff_A_105_q0),.din21(buff_A_107_q0),.din22(buff_A_109_q0),.din23(buff_A_111_q0),.din24(buff_A_113_q0),.din25(buff_A_115_q0),.din26(buff_A_117_q0),.din27(buff_A_119_q0),.din28(buff_A_121_q0),.din29(buff_A_123_q0),.din30(buff_A_125_q0),.din31(buff_A_127_q0),.def(tmp_4_fu_2773_p65),.sel(trunc_ln24_reg_3596),.dout(tmp_4_fu_2773_p67));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_1_fu_374 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_1_fu_374 <= select_ln23_fu_2172_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_2127_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten6_fu_378 <= add_ln23_1_fu_2133_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_378 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_370 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_370 <= add_ln24_fu_2345_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_1_reg_3662 <= grp_fu_2508_p_dout0;
        add_reg_3657 <= grp_fu_2504_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        buff_r_load_reg_3609 <= buff_r_q0;
        buff_s_out_1_addr_reg_3631 <= zext_ln5_fu_2915_p1;
        buff_s_out_1_addr_reg_3631_pp0_iter10_reg <= buff_s_out_1_addr_reg_3631_pp0_iter9_reg;
        buff_s_out_1_addr_reg_3631_pp0_iter11_reg <= buff_s_out_1_addr_reg_3631_pp0_iter10_reg;
        buff_s_out_1_addr_reg_3631_pp0_iter12_reg <= buff_s_out_1_addr_reg_3631_pp0_iter11_reg;
        buff_s_out_1_addr_reg_3631_pp0_iter13_reg <= buff_s_out_1_addr_reg_3631_pp0_iter12_reg;
        buff_s_out_1_addr_reg_3631_pp0_iter6_reg <= buff_s_out_1_addr_reg_3631;
        buff_s_out_1_addr_reg_3631_pp0_iter7_reg <= buff_s_out_1_addr_reg_3631_pp0_iter6_reg;
        buff_s_out_1_addr_reg_3631_pp0_iter8_reg <= buff_s_out_1_addr_reg_3631_pp0_iter7_reg;
        buff_s_out_1_addr_reg_3631_pp0_iter9_reg <= buff_s_out_1_addr_reg_3631_pp0_iter8_reg;
        buff_s_out_addr_reg_3625 <= zext_ln5_fu_2915_p1;
        buff_s_out_addr_reg_3625_pp0_iter10_reg <= buff_s_out_addr_reg_3625_pp0_iter9_reg;
        buff_s_out_addr_reg_3625_pp0_iter11_reg <= buff_s_out_addr_reg_3625_pp0_iter10_reg;
        buff_s_out_addr_reg_3625_pp0_iter12_reg <= buff_s_out_addr_reg_3625_pp0_iter11_reg;
        buff_s_out_addr_reg_3625_pp0_iter13_reg <= buff_s_out_addr_reg_3625_pp0_iter12_reg;
        buff_s_out_addr_reg_3625_pp0_iter6_reg <= buff_s_out_addr_reg_3625;
        buff_s_out_addr_reg_3625_pp0_iter7_reg <= buff_s_out_addr_reg_3625_pp0_iter6_reg;
        buff_s_out_addr_reg_3625_pp0_iter8_reg <= buff_s_out_addr_reg_3625_pp0_iter7_reg;
        buff_s_out_addr_reg_3625_pp0_iter9_reg <= buff_s_out_addr_reg_3625_pp0_iter8_reg;
        lshr_ln5_5_reg_3604_pp0_iter2_reg <= lshr_ln5_5_reg_3604;
        lshr_ln5_5_reg_3604_pp0_iter3_reg <= lshr_ln5_5_reg_3604_pp0_iter2_reg;
        lshr_ln5_5_reg_3604_pp0_iter4_reg <= lshr_ln5_5_reg_3604_pp0_iter3_reg;
        mul_1_reg_3647 <= grp_fu_2516_p_dout0;
        mul_reg_3642 <= grp_fu_2512_p_dout0;
        select_ln25_1_reg_3620 <= select_ln25_1_fu_2908_p3;
        select_ln25_reg_3615 <= select_ln25_fu_2631_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln5_5_reg_3604 <= {{select_ln5_fu_2164_p3[5:1]}};
        trunc_ln23_reg_2945 <= trunc_ln23_fu_2185_p1;
        trunc_ln24_reg_3596 <= trunc_ln24_fu_2331_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        buff_s_out_1_load_reg_3652 <= buff_s_out_1_q1;
        buff_s_out_load_reg_3637 <= buff_s_out_q1;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_2127_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten6_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_378;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_100_ce0_local = 1'b1;
    end else begin
        buff_A_100_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_101_ce0_local = 1'b1;
    end else begin
        buff_A_101_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_102_ce0_local = 1'b1;
    end else begin
        buff_A_102_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_103_ce0_local = 1'b1;
    end else begin
        buff_A_103_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_104_ce0_local = 1'b1;
    end else begin
        buff_A_104_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_105_ce0_local = 1'b1;
    end else begin
        buff_A_105_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_106_ce0_local = 1'b1;
    end else begin
        buff_A_106_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_107_ce0_local = 1'b1;
    end else begin
        buff_A_107_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_108_ce0_local = 1'b1;
    end else begin
        buff_A_108_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_109_ce0_local = 1'b1;
    end else begin
        buff_A_109_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_10_ce0_local = 1'b1;
    end else begin
        buff_A_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_110_ce0_local = 1'b1;
    end else begin
        buff_A_110_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_111_ce0_local = 1'b1;
    end else begin
        buff_A_111_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_112_ce0_local = 1'b1;
    end else begin
        buff_A_112_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_113_ce0_local = 1'b1;
    end else begin
        buff_A_113_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_114_ce0_local = 1'b1;
    end else begin
        buff_A_114_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_115_ce0_local = 1'b1;
    end else begin
        buff_A_115_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_116_ce0_local = 1'b1;
    end else begin
        buff_A_116_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_117_ce0_local = 1'b1;
    end else begin
        buff_A_117_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_118_ce0_local = 1'b1;
    end else begin
        buff_A_118_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_119_ce0_local = 1'b1;
    end else begin
        buff_A_119_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_11_ce0_local = 1'b1;
    end else begin
        buff_A_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_120_ce0_local = 1'b1;
    end else begin
        buff_A_120_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_121_ce0_local = 1'b1;
    end else begin
        buff_A_121_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_122_ce0_local = 1'b1;
    end else begin
        buff_A_122_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_123_ce0_local = 1'b1;
    end else begin
        buff_A_123_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_124_ce0_local = 1'b1;
    end else begin
        buff_A_124_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_125_ce0_local = 1'b1;
    end else begin
        buff_A_125_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_126_ce0_local = 1'b1;
    end else begin
        buff_A_126_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_127_ce0_local = 1'b1;
    end else begin
        buff_A_127_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_12_ce0_local = 1'b1;
    end else begin
        buff_A_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_13_ce0_local = 1'b1;
    end else begin
        buff_A_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_14_ce0_local = 1'b1;
    end else begin
        buff_A_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_15_ce0_local = 1'b1;
    end else begin
        buff_A_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_16_ce0_local = 1'b1;
    end else begin
        buff_A_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_17_ce0_local = 1'b1;
    end else begin
        buff_A_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_18_ce0_local = 1'b1;
    end else begin
        buff_A_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_19_ce0_local = 1'b1;
    end else begin
        buff_A_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_20_ce0_local = 1'b1;
    end else begin
        buff_A_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_21_ce0_local = 1'b1;
    end else begin
        buff_A_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_22_ce0_local = 1'b1;
    end else begin
        buff_A_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_23_ce0_local = 1'b1;
    end else begin
        buff_A_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_24_ce0_local = 1'b1;
    end else begin
        buff_A_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_25_ce0_local = 1'b1;
    end else begin
        buff_A_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_26_ce0_local = 1'b1;
    end else begin
        buff_A_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_27_ce0_local = 1'b1;
    end else begin
        buff_A_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_28_ce0_local = 1'b1;
    end else begin
        buff_A_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_29_ce0_local = 1'b1;
    end else begin
        buff_A_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_30_ce0_local = 1'b1;
    end else begin
        buff_A_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_31_ce0_local = 1'b1;
    end else begin
        buff_A_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_32_ce0_local = 1'b1;
    end else begin
        buff_A_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_33_ce0_local = 1'b1;
    end else begin
        buff_A_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_34_ce0_local = 1'b1;
    end else begin
        buff_A_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_35_ce0_local = 1'b1;
    end else begin
        buff_A_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_36_ce0_local = 1'b1;
    end else begin
        buff_A_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_37_ce0_local = 1'b1;
    end else begin
        buff_A_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_38_ce0_local = 1'b1;
    end else begin
        buff_A_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_39_ce0_local = 1'b1;
    end else begin
        buff_A_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_40_ce0_local = 1'b1;
    end else begin
        buff_A_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_41_ce0_local = 1'b1;
    end else begin
        buff_A_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_42_ce0_local = 1'b1;
    end else begin
        buff_A_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_43_ce0_local = 1'b1;
    end else begin
        buff_A_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_44_ce0_local = 1'b1;
    end else begin
        buff_A_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_45_ce0_local = 1'b1;
    end else begin
        buff_A_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_46_ce0_local = 1'b1;
    end else begin
        buff_A_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_47_ce0_local = 1'b1;
    end else begin
        buff_A_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_48_ce0_local = 1'b1;
    end else begin
        buff_A_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_49_ce0_local = 1'b1;
    end else begin
        buff_A_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_50_ce0_local = 1'b1;
    end else begin
        buff_A_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_51_ce0_local = 1'b1;
    end else begin
        buff_A_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_52_ce0_local = 1'b1;
    end else begin
        buff_A_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_53_ce0_local = 1'b1;
    end else begin
        buff_A_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_54_ce0_local = 1'b1;
    end else begin
        buff_A_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_55_ce0_local = 1'b1;
    end else begin
        buff_A_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_56_ce0_local = 1'b1;
    end else begin
        buff_A_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_57_ce0_local = 1'b1;
    end else begin
        buff_A_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_58_ce0_local = 1'b1;
    end else begin
        buff_A_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_59_ce0_local = 1'b1;
    end else begin
        buff_A_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_60_ce0_local = 1'b1;
    end else begin
        buff_A_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_61_ce0_local = 1'b1;
    end else begin
        buff_A_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_62_ce0_local = 1'b1;
    end else begin
        buff_A_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_63_ce0_local = 1'b1;
    end else begin
        buff_A_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_64_ce0_local = 1'b1;
    end else begin
        buff_A_64_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_65_ce0_local = 1'b1;
    end else begin
        buff_A_65_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_66_ce0_local = 1'b1;
    end else begin
        buff_A_66_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_67_ce0_local = 1'b1;
    end else begin
        buff_A_67_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_68_ce0_local = 1'b1;
    end else begin
        buff_A_68_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_69_ce0_local = 1'b1;
    end else begin
        buff_A_69_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_70_ce0_local = 1'b1;
    end else begin
        buff_A_70_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_71_ce0_local = 1'b1;
    end else begin
        buff_A_71_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_72_ce0_local = 1'b1;
    end else begin
        buff_A_72_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_73_ce0_local = 1'b1;
    end else begin
        buff_A_73_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_74_ce0_local = 1'b1;
    end else begin
        buff_A_74_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_75_ce0_local = 1'b1;
    end else begin
        buff_A_75_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_76_ce0_local = 1'b1;
    end else begin
        buff_A_76_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_77_ce0_local = 1'b1;
    end else begin
        buff_A_77_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_78_ce0_local = 1'b1;
    end else begin
        buff_A_78_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_79_ce0_local = 1'b1;
    end else begin
        buff_A_79_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_80_ce0_local = 1'b1;
    end else begin
        buff_A_80_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_81_ce0_local = 1'b1;
    end else begin
        buff_A_81_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_82_ce0_local = 1'b1;
    end else begin
        buff_A_82_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_83_ce0_local = 1'b1;
    end else begin
        buff_A_83_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_84_ce0_local = 1'b1;
    end else begin
        buff_A_84_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_85_ce0_local = 1'b1;
    end else begin
        buff_A_85_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_86_ce0_local = 1'b1;
    end else begin
        buff_A_86_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_87_ce0_local = 1'b1;
    end else begin
        buff_A_87_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_88_ce0_local = 1'b1;
    end else begin
        buff_A_88_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_89_ce0_local = 1'b1;
    end else begin
        buff_A_89_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_8_ce0_local = 1'b1;
    end else begin
        buff_A_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_90_ce0_local = 1'b1;
    end else begin
        buff_A_90_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_91_ce0_local = 1'b1;
    end else begin
        buff_A_91_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_92_ce0_local = 1'b1;
    end else begin
        buff_A_92_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_93_ce0_local = 1'b1;
    end else begin
        buff_A_93_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_94_ce0_local = 1'b1;
    end else begin
        buff_A_94_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_95_ce0_local = 1'b1;
    end else begin
        buff_A_95_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_96_ce0_local = 1'b1;
    end else begin
        buff_A_96_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_97_ce0_local = 1'b1;
    end else begin
        buff_A_97_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_98_ce0_local = 1'b1;
    end else begin
        buff_A_98_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_99_ce0_local = 1'b1;
    end else begin
        buff_A_99_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_9_ce0_local = 1'b1;
    end else begin
        buff_A_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln23_1_fu_2133_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 12'd1);
assign add_ln23_fu_2150_p2 = (i_1_fu_374 + 7'd1);
assign add_ln24_fu_2345_p2 = (select_ln5_fu_2164_p3 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buff_A_100_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_100_ce0 = buff_A_100_ce0_local;
assign buff_A_101_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_101_ce0 = buff_A_101_ce0_local;
assign buff_A_102_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_102_ce0 = buff_A_102_ce0_local;
assign buff_A_103_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_103_ce0 = buff_A_103_ce0_local;
assign buff_A_104_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_104_ce0 = buff_A_104_ce0_local;
assign buff_A_105_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_105_ce0 = buff_A_105_ce0_local;
assign buff_A_106_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_106_ce0 = buff_A_106_ce0_local;
assign buff_A_107_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_107_ce0 = buff_A_107_ce0_local;
assign buff_A_108_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_108_ce0 = buff_A_108_ce0_local;
assign buff_A_109_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_109_ce0 = buff_A_109_ce0_local;
assign buff_A_10_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_110_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_110_ce0 = buff_A_110_ce0_local;
assign buff_A_111_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_111_ce0 = buff_A_111_ce0_local;
assign buff_A_112_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_112_ce0 = buff_A_112_ce0_local;
assign buff_A_113_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_113_ce0 = buff_A_113_ce0_local;
assign buff_A_114_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_114_ce0 = buff_A_114_ce0_local;
assign buff_A_115_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_115_ce0 = buff_A_115_ce0_local;
assign buff_A_116_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_116_ce0 = buff_A_116_ce0_local;
assign buff_A_117_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_117_ce0 = buff_A_117_ce0_local;
assign buff_A_118_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_118_ce0 = buff_A_118_ce0_local;
assign buff_A_119_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_119_ce0 = buff_A_119_ce0_local;
assign buff_A_11_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_120_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_120_ce0 = buff_A_120_ce0_local;
assign buff_A_121_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_121_ce0 = buff_A_121_ce0_local;
assign buff_A_122_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_122_ce0 = buff_A_122_ce0_local;
assign buff_A_123_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_123_ce0 = buff_A_123_ce0_local;
assign buff_A_124_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_124_ce0 = buff_A_124_ce0_local;
assign buff_A_125_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_125_ce0 = buff_A_125_ce0_local;
assign buff_A_126_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_126_ce0 = buff_A_126_ce0_local;
assign buff_A_127_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_127_ce0 = buff_A_127_ce0_local;
assign buff_A_12_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_16_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_16_ce0 = buff_A_16_ce0_local;
assign buff_A_17_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_17_ce0 = buff_A_17_ce0_local;
assign buff_A_18_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_18_ce0 = buff_A_18_ce0_local;
assign buff_A_19_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_19_ce0 = buff_A_19_ce0_local;
assign buff_A_1_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_20_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_20_ce0 = buff_A_20_ce0_local;
assign buff_A_21_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_21_ce0 = buff_A_21_ce0_local;
assign buff_A_22_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_22_ce0 = buff_A_22_ce0_local;
assign buff_A_23_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_23_ce0 = buff_A_23_ce0_local;
assign buff_A_24_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_24_ce0 = buff_A_24_ce0_local;
assign buff_A_25_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_25_ce0 = buff_A_25_ce0_local;
assign buff_A_26_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_26_ce0 = buff_A_26_ce0_local;
assign buff_A_27_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_27_ce0 = buff_A_27_ce0_local;
assign buff_A_28_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_28_ce0 = buff_A_28_ce0_local;
assign buff_A_29_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_29_ce0 = buff_A_29_ce0_local;
assign buff_A_2_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_30_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_30_ce0 = buff_A_30_ce0_local;
assign buff_A_31_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_31_ce0 = buff_A_31_ce0_local;
assign buff_A_32_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_32_ce0 = buff_A_32_ce0_local;
assign buff_A_33_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_33_ce0 = buff_A_33_ce0_local;
assign buff_A_34_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_34_ce0 = buff_A_34_ce0_local;
assign buff_A_35_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_35_ce0 = buff_A_35_ce0_local;
assign buff_A_36_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_36_ce0 = buff_A_36_ce0_local;
assign buff_A_37_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_37_ce0 = buff_A_37_ce0_local;
assign buff_A_38_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_38_ce0 = buff_A_38_ce0_local;
assign buff_A_39_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_39_ce0 = buff_A_39_ce0_local;
assign buff_A_3_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_40_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_40_ce0 = buff_A_40_ce0_local;
assign buff_A_41_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_41_ce0 = buff_A_41_ce0_local;
assign buff_A_42_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_42_ce0 = buff_A_42_ce0_local;
assign buff_A_43_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_43_ce0 = buff_A_43_ce0_local;
assign buff_A_44_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_44_ce0 = buff_A_44_ce0_local;
assign buff_A_45_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_45_ce0 = buff_A_45_ce0_local;
assign buff_A_46_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_46_ce0 = buff_A_46_ce0_local;
assign buff_A_47_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_47_ce0 = buff_A_47_ce0_local;
assign buff_A_48_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_48_ce0 = buff_A_48_ce0_local;
assign buff_A_49_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_49_ce0 = buff_A_49_ce0_local;
assign buff_A_4_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_50_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_50_ce0 = buff_A_50_ce0_local;
assign buff_A_51_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_51_ce0 = buff_A_51_ce0_local;
assign buff_A_52_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_52_ce0 = buff_A_52_ce0_local;
assign buff_A_53_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_53_ce0 = buff_A_53_ce0_local;
assign buff_A_54_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_54_ce0 = buff_A_54_ce0_local;
assign buff_A_55_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_55_ce0 = buff_A_55_ce0_local;
assign buff_A_56_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_56_ce0 = buff_A_56_ce0_local;
assign buff_A_57_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_57_ce0 = buff_A_57_ce0_local;
assign buff_A_58_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_58_ce0 = buff_A_58_ce0_local;
assign buff_A_59_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_59_ce0 = buff_A_59_ce0_local;
assign buff_A_5_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_60_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_60_ce0 = buff_A_60_ce0_local;
assign buff_A_61_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_61_ce0 = buff_A_61_ce0_local;
assign buff_A_62_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_62_ce0 = buff_A_62_ce0_local;
assign buff_A_63_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_63_ce0 = buff_A_63_ce0_local;
assign buff_A_64_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_64_ce0 = buff_A_64_ce0_local;
assign buff_A_65_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_65_ce0 = buff_A_65_ce0_local;
assign buff_A_66_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_66_ce0 = buff_A_66_ce0_local;
assign buff_A_67_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_67_ce0 = buff_A_67_ce0_local;
assign buff_A_68_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_68_ce0 = buff_A_68_ce0_local;
assign buff_A_69_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_69_ce0 = buff_A_69_ce0_local;
assign buff_A_6_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_70_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_70_ce0 = buff_A_70_ce0_local;
assign buff_A_71_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_71_ce0 = buff_A_71_ce0_local;
assign buff_A_72_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_72_ce0 = buff_A_72_ce0_local;
assign buff_A_73_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_73_ce0 = buff_A_73_ce0_local;
assign buff_A_74_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_74_ce0 = buff_A_74_ce0_local;
assign buff_A_75_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_75_ce0 = buff_A_75_ce0_local;
assign buff_A_76_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_76_ce0 = buff_A_76_ce0_local;
assign buff_A_77_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_77_ce0 = buff_A_77_ce0_local;
assign buff_A_78_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_78_ce0 = buff_A_78_ce0_local;
assign buff_A_79_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_79_ce0 = buff_A_79_ce0_local;
assign buff_A_7_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_80_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_80_ce0 = buff_A_80_ce0_local;
assign buff_A_81_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_81_ce0 = buff_A_81_ce0_local;
assign buff_A_82_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_82_ce0 = buff_A_82_ce0_local;
assign buff_A_83_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_83_ce0 = buff_A_83_ce0_local;
assign buff_A_84_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_84_ce0 = buff_A_84_ce0_local;
assign buff_A_85_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_85_ce0 = buff_A_85_ce0_local;
assign buff_A_86_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_86_ce0 = buff_A_86_ce0_local;
assign buff_A_87_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_87_ce0 = buff_A_87_ce0_local;
assign buff_A_88_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_88_ce0 = buff_A_88_ce0_local;
assign buff_A_89_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_89_ce0 = buff_A_89_ce0_local;
assign buff_A_8_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_90_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_90_ce0 = buff_A_90_ce0_local;
assign buff_A_91_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_91_ce0 = buff_A_91_ce0_local;
assign buff_A_92_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_92_ce0 = buff_A_92_ce0_local;
assign buff_A_93_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_93_ce0 = buff_A_93_ce0_local;
assign buff_A_94_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_94_ce0 = buff_A_94_ce0_local;
assign buff_A_95_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_95_ce0 = buff_A_95_ce0_local;
assign buff_A_96_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_96_ce0 = buff_A_96_ce0_local;
assign buff_A_97_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_97_ce0 = buff_A_97_ce0_local;
assign buff_A_98_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_98_ce0 = buff_A_98_ce0_local;
assign buff_A_99_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_99_ce0 = buff_A_99_ce0_local;
assign buff_A_9_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln5_2_fu_2199_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_r_address0 = zext_ln23_fu_2180_p1;
assign buff_r_ce0 = buff_r_ce0_local;
assign buff_s_out_1_address0 = buff_s_out_1_addr_reg_3631_pp0_iter13_reg;
assign buff_s_out_1_address1 = zext_ln5_fu_2915_p1;
assign buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
assign buff_s_out_1_ce1 = buff_s_out_1_ce1_local;
assign buff_s_out_1_d0 = add_1_reg_3662;
assign buff_s_out_1_we0 = buff_s_out_1_we0_local;
assign buff_s_out_address0 = buff_s_out_addr_reg_3625_pp0_iter13_reg;
assign buff_s_out_address1 = zext_ln5_fu_2915_p1;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign buff_s_out_ce1 = buff_s_out_ce1_local;
assign buff_s_out_d0 = add_reg_3657;
assign buff_s_out_we0 = buff_s_out_we0_local;
assign grp_fu_2504_p_ce = 1'b1;
assign grp_fu_2504_p_din0 = buff_s_out_load_reg_3637;
assign grp_fu_2504_p_din1 = mul_reg_3642;
assign grp_fu_2504_p_opcode = 2'd0;
assign grp_fu_2508_p_ce = 1'b1;
assign grp_fu_2508_p_din0 = buff_s_out_1_load_reg_3652;
assign grp_fu_2508_p_din1 = mul_1_reg_3647;
assign grp_fu_2508_p_opcode = 2'd0;
assign grp_fu_2512_p_ce = 1'b1;
assign grp_fu_2512_p_din0 = select_ln25_reg_3615;
assign grp_fu_2512_p_din1 = buff_r_load_reg_3609;
assign grp_fu_2516_p_ce = 1'b1;
assign grp_fu_2516_p_din0 = select_ln25_1_reg_3620;
assign grp_fu_2516_p_din1 = buff_r_load_reg_3609;
assign icmp_ln23_fu_2127_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 12'd2048) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_2189_p4 = {{select_ln23_fu_2172_p3[5:1]}};
assign select_ln23_fu_2172_p3 = ((tmp_2_fu_2156_p3[0:0] == 1'b1) ? add_ln23_fu_2150_p2 : i_1_fu_374);
assign select_ln25_1_fu_2908_p3 = ((trunc_ln23_reg_2945[0:0] == 1'b1) ? tmp_4_fu_2773_p67 : tmp_3_fu_2638_p67);
assign select_ln25_fu_2631_p3 = ((trunc_ln23_reg_2945[0:0] == 1'b1) ? tmp_1_fu_2496_p67 : tmp_fu_2361_p67);
assign select_ln5_fu_2164_p3 = ((tmp_2_fu_2156_p3[0:0] == 1'b1) ? 7'd0 : j_fu_370);
assign tmp_1_fu_2496_p65 = 'bx;
assign tmp_2_fu_2156_p3 = j_fu_370[32'd6];
assign tmp_3_fu_2638_p65 = 'bx;
assign tmp_4_fu_2773_p65 = 'bx;
assign tmp_fu_2361_p65 = 'bx;
assign trunc_ln23_fu_2185_p1 = select_ln23_fu_2172_p3[0:0];
assign trunc_ln24_fu_2331_p1 = select_ln5_fu_2164_p3[5:0];
assign zext_ln23_fu_2180_p1 = select_ln23_fu_2172_p3;
assign zext_ln5_2_fu_2199_p1 = lshr_ln5_2_fu_2189_p4;
assign zext_ln5_fu_2915_p1 = lshr_ln5_5_reg_3604_pp0_iter4_reg;
endmodule 