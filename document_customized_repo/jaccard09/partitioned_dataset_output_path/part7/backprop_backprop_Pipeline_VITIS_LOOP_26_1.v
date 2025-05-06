
module backprop_backprop_Pipeline_VITIS_LOOP_26_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations1_i,activations1_o,activations1_o_ap_vld,activations1_63_i,activations1_63_o,activations1_63_o_ap_vld,activations1_62_i,activations1_62_o,activations1_62_o_ap_vld,activations1_61_i,activations1_61_o,activations1_61_o_ap_vld,activations1_60_i,activations1_60_o,activations1_60_o_ap_vld,activations1_59_i,activations1_59_o,activations1_59_o_ap_vld,activations1_58_i,activations1_58_o,activations1_58_o_ap_vld,activations1_57_i,activations1_57_o,activations1_57_o_ap_vld,activations1_56_i,activations1_56_o,activations1_56_o_ap_vld,activations1_55_i,activations1_55_o,activations1_55_o_ap_vld,activations1_54_i,activations1_54_o,activations1_54_o_ap_vld,activations1_53_i,activations1_53_o,activations1_53_o_ap_vld,activations1_52_i,activations1_52_o,activations1_52_o_ap_vld,activations1_51_i,activations1_51_o,activations1_51_o_ap_vld,activations1_50_i,activations1_50_o,activations1_50_o_ap_vld,activations1_49_i,activations1_49_o,activations1_49_o_ap_vld,activations1_48_i,activations1_48_o,activations1_48_o_ap_vld,activations1_47_i,activations1_47_o,activations1_47_o_ap_vld,activations1_46_i,activations1_46_o,activations1_46_o_ap_vld,activations1_45_i,activations1_45_o,activations1_45_o_ap_vld,activations1_44_i,activations1_44_o,activations1_44_o_ap_vld,activations1_43_i,activations1_43_o,activations1_43_o_ap_vld,activations1_42_i,activations1_42_o,activations1_42_o_ap_vld,activations1_41_i,activations1_41_o,activations1_41_o_ap_vld,activations1_40_i,activations1_40_o,activations1_40_o_ap_vld,activations1_39_i,activations1_39_o,activations1_39_o_ap_vld,activations1_38_i,activations1_38_o,activations1_38_o_ap_vld,activations1_37_i,activations1_37_o,activations1_37_o_ap_vld,activations1_36_i,activations1_36_o,activations1_36_o_ap_vld,activations1_35_i,activations1_35_o,activations1_35_o_ap_vld,activations1_34_i,activations1_34_o,activations1_34_o_ap_vld,activations1_33_i,activations1_33_o,activations1_33_o_ap_vld,activations1_32_i,activations1_32_o,activations1_32_o_ap_vld,activations1_31_i,activations1_31_o,activations1_31_o_ap_vld,activations1_30_i,activations1_30_o,activations1_30_o_ap_vld,activations1_29_i,activations1_29_o,activations1_29_o_ap_vld,activations1_28_i,activations1_28_o,activations1_28_o_ap_vld,activations1_27_i,activations1_27_o,activations1_27_o_ap_vld,activations1_26_i,activations1_26_o,activations1_26_o_ap_vld,activations1_25_i,activations1_25_o,activations1_25_o_ap_vld,activations1_24_i,activations1_24_o,activations1_24_o_ap_vld,activations1_23_i,activations1_23_o,activations1_23_o_ap_vld,activations1_22_i,activations1_22_o,activations1_22_o_ap_vld,activations1_21_i,activations1_21_o,activations1_21_o_ap_vld,activations1_20_i,activations1_20_o,activations1_20_o_ap_vld,activations1_19_i,activations1_19_o,activations1_19_o_ap_vld,activations1_18_i,activations1_18_o,activations1_18_o_ap_vld,activations1_17_i,activations1_17_o,activations1_17_o_ap_vld,activations1_16_i,activations1_16_o,activations1_16_o_ap_vld,activations1_15_i,activations1_15_o,activations1_15_o_ap_vld,activations1_14_i,activations1_14_o,activations1_14_o_ap_vld,activations1_13_i,activations1_13_o,activations1_13_o_ap_vld,activations1_12_i,activations1_12_o,activations1_12_o_ap_vld,activations1_11_i,activations1_11_o,activations1_11_o_ap_vld,activations1_10_i,activations1_10_o,activations1_10_o_ap_vld,activations1_9_i,activations1_9_o,activations1_9_o_ap_vld,activations1_8_i,activations1_8_o,activations1_8_o_ap_vld,activations1_7_i,activations1_7_o,activations1_7_o_ap_vld,activations1_6_i,activations1_6_o,activations1_6_o_ap_vld,activations1_5_i,activations1_5_o,activations1_5_o_ap_vld,activations1_4_i,activations1_4_o,activations1_4_o_ap_vld,activations1_3_i,activations1_3_o,activations1_3_o_ap_vld,activations1_2_i,activations1_2_o,activations1_2_o_ap_vld,activations1_1_i,activations1_1_o,activations1_1_o_ap_vld,empty_94,empty_95,empty_96,empty_97,empty_98,empty_99,empty_100,empty_101,empty_102,empty_103,empty_104,empty_105,empty_106,empty_107,empty_108,empty_109,empty_110,empty_111,empty_112,empty_113,empty_114,empty_115,empty_116,empty_117,empty_118,empty_119,empty_120,empty_121,empty_122,empty_123,empty_124,empty_125,empty_126,empty_127,empty_128,empty_129,empty_130,empty_131,empty_132,empty_133,empty_134,empty_135,empty_136,empty_137,empty_138,empty_139,empty_140,empty_141,empty_142,empty_143,empty_144,empty_145,empty_146,empty_147,empty_148,empty_149,empty_150,empty_151,empty_152,empty_153,empty_154,empty_155,empty_156,empty,grp_fu_50727_p_din0,grp_fu_50727_p_din1,grp_fu_50727_p_opcode,grp_fu_50727_p_dout0,grp_fu_50727_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] activations1_i;
output  [63:0] activations1_o;
output   activations1_o_ap_vld;
input  [63:0] activations1_63_i;
output  [63:0] activations1_63_o;
output   activations1_63_o_ap_vld;
input  [63:0] activations1_62_i;
output  [63:0] activations1_62_o;
output   activations1_62_o_ap_vld;
input  [63:0] activations1_61_i;
output  [63:0] activations1_61_o;
output   activations1_61_o_ap_vld;
input  [63:0] activations1_60_i;
output  [63:0] activations1_60_o;
output   activations1_60_o_ap_vld;
input  [63:0] activations1_59_i;
output  [63:0] activations1_59_o;
output   activations1_59_o_ap_vld;
input  [63:0] activations1_58_i;
output  [63:0] activations1_58_o;
output   activations1_58_o_ap_vld;
input  [63:0] activations1_57_i;
output  [63:0] activations1_57_o;
output   activations1_57_o_ap_vld;
input  [63:0] activations1_56_i;
output  [63:0] activations1_56_o;
output   activations1_56_o_ap_vld;
input  [63:0] activations1_55_i;
output  [63:0] activations1_55_o;
output   activations1_55_o_ap_vld;
input  [63:0] activations1_54_i;
output  [63:0] activations1_54_o;
output   activations1_54_o_ap_vld;
input  [63:0] activations1_53_i;
output  [63:0] activations1_53_o;
output   activations1_53_o_ap_vld;
input  [63:0] activations1_52_i;
output  [63:0] activations1_52_o;
output   activations1_52_o_ap_vld;
input  [63:0] activations1_51_i;
output  [63:0] activations1_51_o;
output   activations1_51_o_ap_vld;
input  [63:0] activations1_50_i;
output  [63:0] activations1_50_o;
output   activations1_50_o_ap_vld;
input  [63:0] activations1_49_i;
output  [63:0] activations1_49_o;
output   activations1_49_o_ap_vld;
input  [63:0] activations1_48_i;
output  [63:0] activations1_48_o;
output   activations1_48_o_ap_vld;
input  [63:0] activations1_47_i;
output  [63:0] activations1_47_o;
output   activations1_47_o_ap_vld;
input  [63:0] activations1_46_i;
output  [63:0] activations1_46_o;
output   activations1_46_o_ap_vld;
input  [63:0] activations1_45_i;
output  [63:0] activations1_45_o;
output   activations1_45_o_ap_vld;
input  [63:0] activations1_44_i;
output  [63:0] activations1_44_o;
output   activations1_44_o_ap_vld;
input  [63:0] activations1_43_i;
output  [63:0] activations1_43_o;
output   activations1_43_o_ap_vld;
input  [63:0] activations1_42_i;
output  [63:0] activations1_42_o;
output   activations1_42_o_ap_vld;
input  [63:0] activations1_41_i;
output  [63:0] activations1_41_o;
output   activations1_41_o_ap_vld;
input  [63:0] activations1_40_i;
output  [63:0] activations1_40_o;
output   activations1_40_o_ap_vld;
input  [63:0] activations1_39_i;
output  [63:0] activations1_39_o;
output   activations1_39_o_ap_vld;
input  [63:0] activations1_38_i;
output  [63:0] activations1_38_o;
output   activations1_38_o_ap_vld;
input  [63:0] activations1_37_i;
output  [63:0] activations1_37_o;
output   activations1_37_o_ap_vld;
input  [63:0] activations1_36_i;
output  [63:0] activations1_36_o;
output   activations1_36_o_ap_vld;
input  [63:0] activations1_35_i;
output  [63:0] activations1_35_o;
output   activations1_35_o_ap_vld;
input  [63:0] activations1_34_i;
output  [63:0] activations1_34_o;
output   activations1_34_o_ap_vld;
input  [63:0] activations1_33_i;
output  [63:0] activations1_33_o;
output   activations1_33_o_ap_vld;
input  [63:0] activations1_32_i;
output  [63:0] activations1_32_o;
output   activations1_32_o_ap_vld;
input  [63:0] activations1_31_i;
output  [63:0] activations1_31_o;
output   activations1_31_o_ap_vld;
input  [63:0] activations1_30_i;
output  [63:0] activations1_30_o;
output   activations1_30_o_ap_vld;
input  [63:0] activations1_29_i;
output  [63:0] activations1_29_o;
output   activations1_29_o_ap_vld;
input  [63:0] activations1_28_i;
output  [63:0] activations1_28_o;
output   activations1_28_o_ap_vld;
input  [63:0] activations1_27_i;
output  [63:0] activations1_27_o;
output   activations1_27_o_ap_vld;
input  [63:0] activations1_26_i;
output  [63:0] activations1_26_o;
output   activations1_26_o_ap_vld;
input  [63:0] activations1_25_i;
output  [63:0] activations1_25_o;
output   activations1_25_o_ap_vld;
input  [63:0] activations1_24_i;
output  [63:0] activations1_24_o;
output   activations1_24_o_ap_vld;
input  [63:0] activations1_23_i;
output  [63:0] activations1_23_o;
output   activations1_23_o_ap_vld;
input  [63:0] activations1_22_i;
output  [63:0] activations1_22_o;
output   activations1_22_o_ap_vld;
input  [63:0] activations1_21_i;
output  [63:0] activations1_21_o;
output   activations1_21_o_ap_vld;
input  [63:0] activations1_20_i;
output  [63:0] activations1_20_o;
output   activations1_20_o_ap_vld;
input  [63:0] activations1_19_i;
output  [63:0] activations1_19_o;
output   activations1_19_o_ap_vld;
input  [63:0] activations1_18_i;
output  [63:0] activations1_18_o;
output   activations1_18_o_ap_vld;
input  [63:0] activations1_17_i;
output  [63:0] activations1_17_o;
output   activations1_17_o_ap_vld;
input  [63:0] activations1_16_i;
output  [63:0] activations1_16_o;
output   activations1_16_o_ap_vld;
input  [63:0] activations1_15_i;
output  [63:0] activations1_15_o;
output   activations1_15_o_ap_vld;
input  [63:0] activations1_14_i;
output  [63:0] activations1_14_o;
output   activations1_14_o_ap_vld;
input  [63:0] activations1_13_i;
output  [63:0] activations1_13_o;
output   activations1_13_o_ap_vld;
input  [63:0] activations1_12_i;
output  [63:0] activations1_12_o;
output   activations1_12_o_ap_vld;
input  [63:0] activations1_11_i;
output  [63:0] activations1_11_o;
output   activations1_11_o_ap_vld;
input  [63:0] activations1_10_i;
output  [63:0] activations1_10_o;
output   activations1_10_o_ap_vld;
input  [63:0] activations1_9_i;
output  [63:0] activations1_9_o;
output   activations1_9_o_ap_vld;
input  [63:0] activations1_8_i;
output  [63:0] activations1_8_o;
output   activations1_8_o_ap_vld;
input  [63:0] activations1_7_i;
output  [63:0] activations1_7_o;
output   activations1_7_o_ap_vld;
input  [63:0] activations1_6_i;
output  [63:0] activations1_6_o;
output   activations1_6_o_ap_vld;
input  [63:0] activations1_5_i;
output  [63:0] activations1_5_o;
output   activations1_5_o_ap_vld;
input  [63:0] activations1_4_i;
output  [63:0] activations1_4_o;
output   activations1_4_o_ap_vld;
input  [63:0] activations1_3_i;
output  [63:0] activations1_3_o;
output   activations1_3_o_ap_vld;
input  [63:0] activations1_2_i;
output  [63:0] activations1_2_o;
output   activations1_2_o_ap_vld;
input  [63:0] activations1_1_i;
output  [63:0] activations1_1_o;
output   activations1_1_o_ap_vld;
input  [63:0] empty_94;
input  [63:0] empty_95;
input  [63:0] empty_96;
input  [63:0] empty_97;
input  [63:0] empty_98;
input  [63:0] empty_99;
input  [63:0] empty_100;
input  [63:0] empty_101;
input  [63:0] empty_102;
input  [63:0] empty_103;
input  [63:0] empty_104;
input  [63:0] empty_105;
input  [63:0] empty_106;
input  [63:0] empty_107;
input  [63:0] empty_108;
input  [63:0] empty_109;
input  [63:0] empty_110;
input  [63:0] empty_111;
input  [63:0] empty_112;
input  [63:0] empty_113;
input  [63:0] empty_114;
input  [63:0] empty_115;
input  [63:0] empty_116;
input  [63:0] empty_117;
input  [63:0] empty_118;
input  [63:0] empty_119;
input  [63:0] empty_120;
input  [63:0] empty_121;
input  [63:0] empty_122;
input  [63:0] empty_123;
input  [63:0] empty_124;
input  [63:0] empty_125;
input  [63:0] empty_126;
input  [63:0] empty_127;
input  [63:0] empty_128;
input  [63:0] empty_129;
input  [63:0] empty_130;
input  [63:0] empty_131;
input  [63:0] empty_132;
input  [63:0] empty_133;
input  [63:0] empty_134;
input  [63:0] empty_135;
input  [63:0] empty_136;
input  [63:0] empty_137;
input  [63:0] empty_138;
input  [63:0] empty_139;
input  [63:0] empty_140;
input  [63:0] empty_141;
input  [63:0] empty_142;
input  [63:0] empty_143;
input  [63:0] empty_144;
input  [63:0] empty_145;
input  [63:0] empty_146;
input  [63:0] empty_147;
input  [63:0] empty_148;
input  [63:0] empty_149;
input  [63:0] empty_150;
input  [63:0] empty_151;
input  [63:0] empty_152;
input  [63:0] empty_153;
input  [63:0] empty_154;
input  [63:0] empty_155;
input  [63:0] empty_156;
input  [63:0] empty;
output  [63:0] grp_fu_50727_p_din0;
output  [63:0] grp_fu_50727_p_din1;
output  [0:0] grp_fu_50727_p_opcode;
input  [63:0] grp_fu_50727_p_dout0;
output   grp_fu_50727_p_ce;
reg ap_idle;
reg[63:0] activations1_o;
reg activations1_o_ap_vld;
reg[63:0] activations1_63_o;
reg activations1_63_o_ap_vld;
reg[63:0] activations1_62_o;
reg activations1_62_o_ap_vld;
reg[63:0] activations1_61_o;
reg activations1_61_o_ap_vld;
reg[63:0] activations1_60_o;
reg activations1_60_o_ap_vld;
reg[63:0] activations1_59_o;
reg activations1_59_o_ap_vld;
reg[63:0] activations1_58_o;
reg activations1_58_o_ap_vld;
reg[63:0] activations1_57_o;
reg activations1_57_o_ap_vld;
reg[63:0] activations1_56_o;
reg activations1_56_o_ap_vld;
reg[63:0] activations1_55_o;
reg activations1_55_o_ap_vld;
reg[63:0] activations1_54_o;
reg activations1_54_o_ap_vld;
reg[63:0] activations1_53_o;
reg activations1_53_o_ap_vld;
reg[63:0] activations1_52_o;
reg activations1_52_o_ap_vld;
reg[63:0] activations1_51_o;
reg activations1_51_o_ap_vld;
reg[63:0] activations1_50_o;
reg activations1_50_o_ap_vld;
reg[63:0] activations1_49_o;
reg activations1_49_o_ap_vld;
reg[63:0] activations1_48_o;
reg activations1_48_o_ap_vld;
reg[63:0] activations1_47_o;
reg activations1_47_o_ap_vld;
reg[63:0] activations1_46_o;
reg activations1_46_o_ap_vld;
reg[63:0] activations1_45_o;
reg activations1_45_o_ap_vld;
reg[63:0] activations1_44_o;
reg activations1_44_o_ap_vld;
reg[63:0] activations1_43_o;
reg activations1_43_o_ap_vld;
reg[63:0] activations1_42_o;
reg activations1_42_o_ap_vld;
reg[63:0] activations1_41_o;
reg activations1_41_o_ap_vld;
reg[63:0] activations1_40_o;
reg activations1_40_o_ap_vld;
reg[63:0] activations1_39_o;
reg activations1_39_o_ap_vld;
reg[63:0] activations1_38_o;
reg activations1_38_o_ap_vld;
reg[63:0] activations1_37_o;
reg activations1_37_o_ap_vld;
reg[63:0] activations1_36_o;
reg activations1_36_o_ap_vld;
reg[63:0] activations1_35_o;
reg activations1_35_o_ap_vld;
reg[63:0] activations1_34_o;
reg activations1_34_o_ap_vld;
reg[63:0] activations1_33_o;
reg activations1_33_o_ap_vld;
reg[63:0] activations1_32_o;
reg activations1_32_o_ap_vld;
reg[63:0] activations1_31_o;
reg activations1_31_o_ap_vld;
reg[63:0] activations1_30_o;
reg activations1_30_o_ap_vld;
reg[63:0] activations1_29_o;
reg activations1_29_o_ap_vld;
reg[63:0] activations1_28_o;
reg activations1_28_o_ap_vld;
reg[63:0] activations1_27_o;
reg activations1_27_o_ap_vld;
reg[63:0] activations1_26_o;
reg activations1_26_o_ap_vld;
reg[63:0] activations1_25_o;
reg activations1_25_o_ap_vld;
reg[63:0] activations1_24_o;
reg activations1_24_o_ap_vld;
reg[63:0] activations1_23_o;
reg activations1_23_o_ap_vld;
reg[63:0] activations1_22_o;
reg activations1_22_o_ap_vld;
reg[63:0] activations1_21_o;
reg activations1_21_o_ap_vld;
reg[63:0] activations1_20_o;
reg activations1_20_o_ap_vld;
reg[63:0] activations1_19_o;
reg activations1_19_o_ap_vld;
reg[63:0] activations1_18_o;
reg activations1_18_o_ap_vld;
reg[63:0] activations1_17_o;
reg activations1_17_o_ap_vld;
reg[63:0] activations1_16_o;
reg activations1_16_o_ap_vld;
reg[63:0] activations1_15_o;
reg activations1_15_o_ap_vld;
reg[63:0] activations1_14_o;
reg activations1_14_o_ap_vld;
reg[63:0] activations1_13_o;
reg activations1_13_o_ap_vld;
reg[63:0] activations1_12_o;
reg activations1_12_o_ap_vld;
reg[63:0] activations1_11_o;
reg activations1_11_o_ap_vld;
reg[63:0] activations1_10_o;
reg activations1_10_o_ap_vld;
reg[63:0] activations1_9_o;
reg activations1_9_o_ap_vld;
reg[63:0] activations1_8_o;
reg activations1_8_o_ap_vld;
reg[63:0] activations1_7_o;
reg activations1_7_o_ap_vld;
reg[63:0] activations1_6_o;
reg activations1_6_o_ap_vld;
reg[63:0] activations1_5_o;
reg activations1_5_o_ap_vld;
reg[63:0] activations1_4_o;
reg activations1_4_o_ap_vld;
reg[63:0] activations1_3_o;
reg activations1_3_o_ap_vld;
reg[63:0] activations1_2_o;
reg activations1_2_o_ap_vld;
reg[63:0] activations1_1_o;
reg activations1_1_o_ap_vld;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln26_fu_1714_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] trunc_ln26_fu_1726_p1;
reg   [5:0] trunc_ln26_reg_2274;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter1_reg;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter2_reg;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter3_reg;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter4_reg;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter5_reg;
reg   [5:0] trunc_ln26_reg_2274_pp0_iter6_reg;
wire   [63:0] tmp_39_fu_1730_p131;
reg   [63:0] tmp_39_reg_2278;
wire   [63:0] tmp_40_fu_1994_p131;
reg   [63:0] tmp_40_reg_2283;
reg   [6:0] i_fu_418;
wire   [6:0] add_ln26_fu_1720_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_12;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage0_01001;
reg    ap_predicate_pred518_state9;
reg    ap_predicate_pred525_state9;
reg    ap_predicate_pred531_state9;
reg    ap_predicate_pred537_state9;
reg    ap_predicate_pred543_state9;
reg    ap_predicate_pred549_state9;
reg    ap_predicate_pred555_state9;
reg    ap_predicate_pred561_state9;
reg    ap_predicate_pred567_state9;
reg    ap_predicate_pred573_state9;
reg    ap_predicate_pred579_state9;
reg    ap_predicate_pred585_state9;
reg    ap_predicate_pred591_state9;
reg    ap_predicate_pred597_state9;
reg    ap_predicate_pred603_state9;
reg    ap_predicate_pred609_state9;
reg    ap_predicate_pred615_state9;
reg    ap_predicate_pred621_state9;
reg    ap_predicate_pred627_state9;
reg    ap_predicate_pred633_state9;
reg    ap_predicate_pred639_state9;
reg    ap_predicate_pred645_state9;
reg    ap_predicate_pred651_state9;
reg    ap_predicate_pred657_state9;
reg    ap_predicate_pred663_state9;
reg    ap_predicate_pred669_state9;
reg    ap_predicate_pred675_state9;
reg    ap_predicate_pred681_state9;
reg    ap_predicate_pred687_state9;
reg    ap_predicate_pred693_state9;
reg    ap_predicate_pred699_state9;
reg    ap_predicate_pred705_state9;
reg    ap_predicate_pred711_state9;
reg    ap_predicate_pred717_state9;
reg    ap_predicate_pred723_state9;
reg    ap_predicate_pred729_state9;
reg    ap_predicate_pred735_state9;
reg    ap_predicate_pred741_state9;
reg    ap_predicate_pred747_state9;
reg    ap_predicate_pred753_state9;
reg    ap_predicate_pred759_state9;
reg    ap_predicate_pred765_state9;
reg    ap_predicate_pred771_state9;
reg    ap_predicate_pred777_state9;
reg    ap_predicate_pred783_state9;
reg    ap_predicate_pred789_state9;
reg    ap_predicate_pred795_state9;
reg    ap_predicate_pred801_state9;
reg    ap_predicate_pred807_state9;
reg    ap_predicate_pred813_state9;
reg    ap_predicate_pred819_state9;
reg    ap_predicate_pred825_state9;
reg    ap_predicate_pred831_state9;
reg    ap_predicate_pred837_state9;
reg    ap_predicate_pred843_state9;
reg    ap_predicate_pred849_state9;
reg    ap_predicate_pred855_state9;
reg    ap_predicate_pred861_state9;
reg    ap_predicate_pred867_state9;
reg    ap_predicate_pred873_state9;
reg    ap_predicate_pred879_state9;
reg    ap_predicate_pred885_state9;
reg    ap_predicate_pred891_state9;
reg    ap_predicate_pred897_state9;
wire   [63:0] tmp_39_fu_1730_p129;
wire   [63:0] tmp_40_fu_1994_p129;
wire    ap_block_pp0_stage0_00001;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_39_fu_1730_p1;
wire   [5:0] tmp_39_fu_1730_p3;
wire   [5:0] tmp_39_fu_1730_p5;
wire   [5:0] tmp_39_fu_1730_p7;
wire   [5:0] tmp_39_fu_1730_p9;
wire   [5:0] tmp_39_fu_1730_p11;
wire   [5:0] tmp_39_fu_1730_p13;
wire   [5:0] tmp_39_fu_1730_p15;
wire   [5:0] tmp_39_fu_1730_p17;
wire   [5:0] tmp_39_fu_1730_p19;
wire   [5:0] tmp_39_fu_1730_p21;
wire   [5:0] tmp_39_fu_1730_p23;
wire   [5:0] tmp_39_fu_1730_p25;
wire   [5:0] tmp_39_fu_1730_p27;
wire   [5:0] tmp_39_fu_1730_p29;
wire   [5:0] tmp_39_fu_1730_p31;
wire   [5:0] tmp_39_fu_1730_p33;
wire   [5:0] tmp_39_fu_1730_p35;
wire   [5:0] tmp_39_fu_1730_p37;
wire   [5:0] tmp_39_fu_1730_p39;
wire   [5:0] tmp_39_fu_1730_p41;
wire   [5:0] tmp_39_fu_1730_p43;
wire   [5:0] tmp_39_fu_1730_p45;
wire   [5:0] tmp_39_fu_1730_p47;
wire   [5:0] tmp_39_fu_1730_p49;
wire   [5:0] tmp_39_fu_1730_p51;
wire   [5:0] tmp_39_fu_1730_p53;
wire   [5:0] tmp_39_fu_1730_p55;
wire   [5:0] tmp_39_fu_1730_p57;
wire   [5:0] tmp_39_fu_1730_p59;
wire   [5:0] tmp_39_fu_1730_p61;
wire   [5:0] tmp_39_fu_1730_p63;
wire  signed [5:0] tmp_39_fu_1730_p65;
wire  signed [5:0] tmp_39_fu_1730_p67;
wire  signed [5:0] tmp_39_fu_1730_p69;
wire  signed [5:0] tmp_39_fu_1730_p71;
wire  signed [5:0] tmp_39_fu_1730_p73;
wire  signed [5:0] tmp_39_fu_1730_p75;
wire  signed [5:0] tmp_39_fu_1730_p77;
wire  signed [5:0] tmp_39_fu_1730_p79;
wire  signed [5:0] tmp_39_fu_1730_p81;
wire  signed [5:0] tmp_39_fu_1730_p83;
wire  signed [5:0] tmp_39_fu_1730_p85;
wire  signed [5:0] tmp_39_fu_1730_p87;
wire  signed [5:0] tmp_39_fu_1730_p89;
wire  signed [5:0] tmp_39_fu_1730_p91;
wire  signed [5:0] tmp_39_fu_1730_p93;
wire  signed [5:0] tmp_39_fu_1730_p95;
wire  signed [5:0] tmp_39_fu_1730_p97;
wire  signed [5:0] tmp_39_fu_1730_p99;
wire  signed [5:0] tmp_39_fu_1730_p101;
wire  signed [5:0] tmp_39_fu_1730_p103;
wire  signed [5:0] tmp_39_fu_1730_p105;
wire  signed [5:0] tmp_39_fu_1730_p107;
wire  signed [5:0] tmp_39_fu_1730_p109;
wire  signed [5:0] tmp_39_fu_1730_p111;
wire  signed [5:0] tmp_39_fu_1730_p113;
wire  signed [5:0] tmp_39_fu_1730_p115;
wire  signed [5:0] tmp_39_fu_1730_p117;
wire  signed [5:0] tmp_39_fu_1730_p119;
wire  signed [5:0] tmp_39_fu_1730_p121;
wire  signed [5:0] tmp_39_fu_1730_p123;
wire  signed [5:0] tmp_39_fu_1730_p125;
wire  signed [5:0] tmp_39_fu_1730_p127;
wire   [5:0] tmp_40_fu_1994_p1;
wire   [5:0] tmp_40_fu_1994_p3;
wire   [5:0] tmp_40_fu_1994_p5;
wire   [5:0] tmp_40_fu_1994_p7;
wire   [5:0] tmp_40_fu_1994_p9;
wire   [5:0] tmp_40_fu_1994_p11;
wire   [5:0] tmp_40_fu_1994_p13;
wire   [5:0] tmp_40_fu_1994_p15;
wire   [5:0] tmp_40_fu_1994_p17;
wire   [5:0] tmp_40_fu_1994_p19;
wire   [5:0] tmp_40_fu_1994_p21;
wire   [5:0] tmp_40_fu_1994_p23;
wire   [5:0] tmp_40_fu_1994_p25;
wire   [5:0] tmp_40_fu_1994_p27;
wire   [5:0] tmp_40_fu_1994_p29;
wire   [5:0] tmp_40_fu_1994_p31;
wire   [5:0] tmp_40_fu_1994_p33;
wire   [5:0] tmp_40_fu_1994_p35;
wire   [5:0] tmp_40_fu_1994_p37;
wire   [5:0] tmp_40_fu_1994_p39;
wire   [5:0] tmp_40_fu_1994_p41;
wire   [5:0] tmp_40_fu_1994_p43;
wire   [5:0] tmp_40_fu_1994_p45;
wire   [5:0] tmp_40_fu_1994_p47;
wire   [5:0] tmp_40_fu_1994_p49;
wire   [5:0] tmp_40_fu_1994_p51;
wire   [5:0] tmp_40_fu_1994_p53;
wire   [5:0] tmp_40_fu_1994_p55;
wire   [5:0] tmp_40_fu_1994_p57;
wire   [5:0] tmp_40_fu_1994_p59;
wire   [5:0] tmp_40_fu_1994_p61;
wire   [5:0] tmp_40_fu_1994_p63;
wire  signed [5:0] tmp_40_fu_1994_p65;
wire  signed [5:0] tmp_40_fu_1994_p67;
wire  signed [5:0] tmp_40_fu_1994_p69;
wire  signed [5:0] tmp_40_fu_1994_p71;
wire  signed [5:0] tmp_40_fu_1994_p73;
wire  signed [5:0] tmp_40_fu_1994_p75;
wire  signed [5:0] tmp_40_fu_1994_p77;
wire  signed [5:0] tmp_40_fu_1994_p79;
wire  signed [5:0] tmp_40_fu_1994_p81;
wire  signed [5:0] tmp_40_fu_1994_p83;
wire  signed [5:0] tmp_40_fu_1994_p85;
wire  signed [5:0] tmp_40_fu_1994_p87;
wire  signed [5:0] tmp_40_fu_1994_p89;
wire  signed [5:0] tmp_40_fu_1994_p91;
wire  signed [5:0] tmp_40_fu_1994_p93;
wire  signed [5:0] tmp_40_fu_1994_p95;
wire  signed [5:0] tmp_40_fu_1994_p97;
wire  signed [5:0] tmp_40_fu_1994_p99;
wire  signed [5:0] tmp_40_fu_1994_p101;
wire  signed [5:0] tmp_40_fu_1994_p103;
wire  signed [5:0] tmp_40_fu_1994_p105;
wire  signed [5:0] tmp_40_fu_1994_p107;
wire  signed [5:0] tmp_40_fu_1994_p109;
wire  signed [5:0] tmp_40_fu_1994_p111;
wire  signed [5:0] tmp_40_fu_1994_p113;
wire  signed [5:0] tmp_40_fu_1994_p115;
wire  signed [5:0] tmp_40_fu_1994_p117;
wire  signed [5:0] tmp_40_fu_1994_p119;
wire  signed [5:0] tmp_40_fu_1994_p121;
wire  signed [5:0] tmp_40_fu_1994_p123;
wire  signed [5:0] tmp_40_fu_1994_p125;
wire  signed [5:0] tmp_40_fu_1994_p127;
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
#0 i_fu_418 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_x_U1028(.din0(activations1_i),.din1(activations1_1_i),.din2(activations1_2_i),.din3(activations1_3_i),.din4(activations1_4_i),.din5(activations1_5_i),.din6(activations1_6_i),.din7(activations1_7_i),.din8(activations1_8_i),.din9(activations1_9_i),.din10(activations1_10_i),.din11(activations1_11_i),.din12(activations1_12_i),.din13(activations1_13_i),.din14(activations1_14_i),.din15(activations1_15_i),.din16(activations1_16_i),.din17(activations1_17_i),.din18(activations1_18_i),.din19(activations1_19_i),.din20(activations1_20_i),.din21(activations1_21_i),.din22(activations1_22_i),.din23(activations1_23_i),.din24(activations1_24_i),.din25(activations1_25_i),.din26(activations1_26_i),.din27(activations1_27_i),.din28(activations1_28_i),.din29(activations1_29_i),.din30(activations1_30_i),.din31(activations1_31_i),.din32(activations1_32_i),.din33(activations1_33_i),.din34(activations1_34_i),.din35(activations1_35_i),.din36(activations1_36_i),.din37(activations1_37_i),.din38(activations1_38_i),.din39(activations1_39_i),.din40(activations1_40_i),.din41(activations1_41_i),.din42(activations1_42_i),.din43(activations1_43_i),.din44(activations1_44_i),.din45(activations1_45_i),.din46(activations1_46_i),.din47(activations1_47_i),.din48(activations1_48_i),.din49(activations1_49_i),.din50(activations1_50_i),.din51(activations1_51_i),.din52(activations1_52_i),.din53(activations1_53_i),.din54(activations1_54_i),.din55(activations1_55_i),.din56(activations1_56_i),.din57(activations1_57_i),.din58(activations1_58_i),.din59(activations1_59_i),.din60(activations1_60_i),.din61(activations1_61_i),.din62(activations1_62_i),.din63(activations1_63_i),.def(tmp_39_fu_1730_p129),.sel(trunc_ln26_fu_1726_p1),.dout(tmp_39_fu_1730_p131));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_x_U1029(.din0(empty_94),.din1(empty_95),.din2(empty_96),.din3(empty_97),.din4(empty_98),.din5(empty_99),.din6(empty_100),.din7(empty_101),.din8(empty_102),.din9(empty_103),.din10(empty_104),.din11(empty_105),.din12(empty_106),.din13(empty_107),.din14(empty_108),.din15(empty_109),.din16(empty_110),.din17(empty_111),.din18(empty_112),.din19(empty_113),.din20(empty_114),.din21(empty_115),.din22(empty_116),.din23(empty_117),.din24(empty_118),.din25(empty_119),.din26(empty_120),.din27(empty_121),.din28(empty_122),.din29(empty_123),.din30(empty_124),.din31(empty_125),.din32(empty_126),.din33(empty_127),.din34(empty_128),.din35(empty_129),.din36(empty_130),.din37(empty_131),.din38(empty_132),.din39(empty_133),.din40(empty_134),.din41(empty_135),.din42(empty_136),.din43(empty_137),.din44(empty_138),.din45(empty_139),.din46(empty_140),.din47(empty_141),.din48(empty_142),.din49(empty_143),.din50(empty_144),.din51(empty_145),.din52(empty_146),.din53(empty_147),.din54(empty_148),.din55(empty_149),.din56(empty_150),.din57(empty_151),.din58(empty_152),.din59(empty_153),.din60(empty_154),.din61(empty_155),.din62(empty_156),.din63(empty),.def(tmp_40_fu_1994_p129),.sel(trunc_ln26_fu_1726_p1),.dout(tmp_40_fu_1994_p131));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_1714_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_418 <= add_ln26_fu_1720_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_418 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        tmp_39_reg_2278 <= tmp_39_fu_1730_p131;
        tmp_40_reg_2283 <= tmp_40_fu_1994_p131;
        trunc_ln26_reg_2274 <= trunc_ln26_fu_1726_p1;
        trunc_ln26_reg_2274_pp0_iter1_reg <= trunc_ln26_reg_2274;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_predicate_pred518_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd62);
        ap_predicate_pred525_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd61);
        ap_predicate_pred531_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd60);
        ap_predicate_pred537_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd59);
        ap_predicate_pred543_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd58);
        ap_predicate_pred549_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd57);
        ap_predicate_pred555_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd56);
        ap_predicate_pred561_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd55);
        ap_predicate_pred567_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd54);
        ap_predicate_pred573_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd53);
        ap_predicate_pred579_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd52);
        ap_predicate_pred585_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd51);
        ap_predicate_pred591_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd50);
        ap_predicate_pred597_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd49);
        ap_predicate_pred603_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd48);
        ap_predicate_pred609_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd47);
        ap_predicate_pred615_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd46);
        ap_predicate_pred621_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd45);
        ap_predicate_pred627_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd44);
        ap_predicate_pred633_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd43);
        ap_predicate_pred639_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd42);
        ap_predicate_pred645_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd41);
        ap_predicate_pred651_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd40);
        ap_predicate_pred657_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd39);
        ap_predicate_pred663_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd38);
        ap_predicate_pred669_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd37);
        ap_predicate_pred675_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd36);
        ap_predicate_pred681_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd35);
        ap_predicate_pred687_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd34);
        ap_predicate_pred693_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd33);
        ap_predicate_pred699_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd32);
        ap_predicate_pred705_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd31);
        ap_predicate_pred711_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd30);
        ap_predicate_pred717_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd29);
        ap_predicate_pred723_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd28);
        ap_predicate_pred729_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd27);
        ap_predicate_pred735_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd26);
        ap_predicate_pred741_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd25);
        ap_predicate_pred747_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd24);
        ap_predicate_pred753_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd23);
        ap_predicate_pred759_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd22);
        ap_predicate_pred765_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd21);
        ap_predicate_pred771_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd20);
        ap_predicate_pred777_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd19);
        ap_predicate_pred783_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd18);
        ap_predicate_pred789_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd17);
        ap_predicate_pred795_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd16);
        ap_predicate_pred801_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd15);
        ap_predicate_pred807_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd14);
        ap_predicate_pred813_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd13);
        ap_predicate_pred819_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd12);
        ap_predicate_pred825_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd11);
        ap_predicate_pred831_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd10);
        ap_predicate_pred837_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd9);
        ap_predicate_pred843_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd8);
        ap_predicate_pred849_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd7);
        ap_predicate_pred855_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd6);
        ap_predicate_pred861_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd5);
        ap_predicate_pred867_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd4);
        ap_predicate_pred873_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd3);
        ap_predicate_pred879_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd2);
        ap_predicate_pred885_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd1);
        ap_predicate_pred891_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd0);
        ap_predicate_pred897_state9 <= (trunc_ln26_reg_2274_pp0_iter6_reg == 6'd63);
        trunc_ln26_reg_2274_pp0_iter2_reg <= trunc_ln26_reg_2274_pp0_iter1_reg;
        trunc_ln26_reg_2274_pp0_iter3_reg <= trunc_ln26_reg_2274_pp0_iter2_reg;
        trunc_ln26_reg_2274_pp0_iter4_reg <= trunc_ln26_reg_2274_pp0_iter3_reg;
        trunc_ln26_reg_2274_pp0_iter5_reg <= trunc_ln26_reg_2274_pp0_iter4_reg;
        trunc_ln26_reg_2274_pp0_iter6_reg <= trunc_ln26_reg_2274_pp0_iter5_reg;
    end
end
always @ (*) begin
    if (((ap_predicate_pred831_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_10_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_10_o = activations1_10_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred831_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_10_o_ap_vld = 1'b1;
    end else begin
        activations1_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred825_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_11_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_11_o = activations1_11_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred825_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_11_o_ap_vld = 1'b1;
    end else begin
        activations1_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred819_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_12_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_12_o = activations1_12_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred819_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_12_o_ap_vld = 1'b1;
    end else begin
        activations1_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred813_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_13_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_13_o = activations1_13_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred813_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_13_o_ap_vld = 1'b1;
    end else begin
        activations1_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_14_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_14_o = activations1_14_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred807_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_14_o_ap_vld = 1'b1;
    end else begin
        activations1_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred801_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_15_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_15_o = activations1_15_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred801_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_15_o_ap_vld = 1'b1;
    end else begin
        activations1_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred795_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_16_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_16_o = activations1_16_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred795_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_16_o_ap_vld = 1'b1;
    end else begin
        activations1_16_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred789_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_17_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_17_o = activations1_17_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred789_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_17_o_ap_vld = 1'b1;
    end else begin
        activations1_17_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred783_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_18_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_18_o = activations1_18_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred783_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_18_o_ap_vld = 1'b1;
    end else begin
        activations1_18_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred777_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_19_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_19_o = activations1_19_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred777_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_19_o_ap_vld = 1'b1;
    end else begin
        activations1_19_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred885_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_1_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_1_o = activations1_1_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred885_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_1_o_ap_vld = 1'b1;
    end else begin
        activations1_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred771_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_20_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_20_o = activations1_20_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred771_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_20_o_ap_vld = 1'b1;
    end else begin
        activations1_20_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_21_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_21_o = activations1_21_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred765_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_21_o_ap_vld = 1'b1;
    end else begin
        activations1_21_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred759_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_22_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_22_o = activations1_22_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred759_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_22_o_ap_vld = 1'b1;
    end else begin
        activations1_22_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred753_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_23_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_23_o = activations1_23_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred753_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_23_o_ap_vld = 1'b1;
    end else begin
        activations1_23_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred747_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_24_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_24_o = activations1_24_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred747_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_24_o_ap_vld = 1'b1;
    end else begin
        activations1_24_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred741_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_25_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_25_o = activations1_25_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred741_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_25_o_ap_vld = 1'b1;
    end else begin
        activations1_25_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred735_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_26_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_26_o = activations1_26_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred735_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_26_o_ap_vld = 1'b1;
    end else begin
        activations1_26_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred729_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_27_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_27_o = activations1_27_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred729_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_27_o_ap_vld = 1'b1;
    end else begin
        activations1_27_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred723_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_28_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_28_o = activations1_28_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred723_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_28_o_ap_vld = 1'b1;
    end else begin
        activations1_28_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred717_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_29_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_29_o = activations1_29_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred717_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_29_o_ap_vld = 1'b1;
    end else begin
        activations1_29_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred879_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_2_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_2_o = activations1_2_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred879_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_2_o_ap_vld = 1'b1;
    end else begin
        activations1_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred711_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_30_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_30_o = activations1_30_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred711_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_30_o_ap_vld = 1'b1;
    end else begin
        activations1_30_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred705_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_31_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_31_o = activations1_31_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred705_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_31_o_ap_vld = 1'b1;
    end else begin
        activations1_31_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred699_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_32_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_32_o = activations1_32_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred699_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_32_o_ap_vld = 1'b1;
    end else begin
        activations1_32_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred693_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_33_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_33_o = activations1_33_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred693_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_33_o_ap_vld = 1'b1;
    end else begin
        activations1_33_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred687_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_34_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_34_o = activations1_34_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred687_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_34_o_ap_vld = 1'b1;
    end else begin
        activations1_34_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred681_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_35_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_35_o = activations1_35_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred681_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_35_o_ap_vld = 1'b1;
    end else begin
        activations1_35_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred675_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_36_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_36_o = activations1_36_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred675_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_36_o_ap_vld = 1'b1;
    end else begin
        activations1_36_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred669_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_37_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_37_o = activations1_37_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred669_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_37_o_ap_vld = 1'b1;
    end else begin
        activations1_37_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred663_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_38_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_38_o = activations1_38_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred663_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_38_o_ap_vld = 1'b1;
    end else begin
        activations1_38_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred657_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_39_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_39_o = activations1_39_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred657_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_39_o_ap_vld = 1'b1;
    end else begin
        activations1_39_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred873_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_3_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_3_o = activations1_3_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred873_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_3_o_ap_vld = 1'b1;
    end else begin
        activations1_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred651_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_40_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_40_o = activations1_40_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred651_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_40_o_ap_vld = 1'b1;
    end else begin
        activations1_40_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred645_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_41_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_41_o = activations1_41_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred645_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_41_o_ap_vld = 1'b1;
    end else begin
        activations1_41_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred639_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_42_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_42_o = activations1_42_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred639_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_42_o_ap_vld = 1'b1;
    end else begin
        activations1_42_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_43_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_43_o = activations1_43_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred633_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_43_o_ap_vld = 1'b1;
    end else begin
        activations1_43_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred627_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_44_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_44_o = activations1_44_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred627_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_44_o_ap_vld = 1'b1;
    end else begin
        activations1_44_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_45_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_45_o = activations1_45_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_45_o_ap_vld = 1'b1;
    end else begin
        activations1_45_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred615_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_46_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_46_o = activations1_46_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred615_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_46_o_ap_vld = 1'b1;
    end else begin
        activations1_46_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred609_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_47_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_47_o = activations1_47_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred609_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_47_o_ap_vld = 1'b1;
    end else begin
        activations1_47_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred603_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_48_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_48_o = activations1_48_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred603_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_48_o_ap_vld = 1'b1;
    end else begin
        activations1_48_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred597_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_49_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_49_o = activations1_49_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred597_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_49_o_ap_vld = 1'b1;
    end else begin
        activations1_49_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred867_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_4_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_4_o = activations1_4_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred867_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_4_o_ap_vld = 1'b1;
    end else begin
        activations1_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred591_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_50_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_50_o = activations1_50_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred591_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_50_o_ap_vld = 1'b1;
    end else begin
        activations1_50_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred585_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_51_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_51_o = activations1_51_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred585_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_51_o_ap_vld = 1'b1;
    end else begin
        activations1_51_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred579_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_52_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_52_o = activations1_52_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred579_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_52_o_ap_vld = 1'b1;
    end else begin
        activations1_52_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred573_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_53_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_53_o = activations1_53_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred573_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_53_o_ap_vld = 1'b1;
    end else begin
        activations1_53_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred567_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_54_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_54_o = activations1_54_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred567_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_54_o_ap_vld = 1'b1;
    end else begin
        activations1_54_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred561_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_55_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_55_o = activations1_55_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred561_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_55_o_ap_vld = 1'b1;
    end else begin
        activations1_55_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred555_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_56_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_56_o = activations1_56_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred555_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_56_o_ap_vld = 1'b1;
    end else begin
        activations1_56_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred549_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_57_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_57_o = activations1_57_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred549_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_57_o_ap_vld = 1'b1;
    end else begin
        activations1_57_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred543_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_58_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_58_o = activations1_58_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred543_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_58_o_ap_vld = 1'b1;
    end else begin
        activations1_58_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred537_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_59_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_59_o = activations1_59_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred537_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_59_o_ap_vld = 1'b1;
    end else begin
        activations1_59_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred861_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_5_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_5_o = activations1_5_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred861_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_5_o_ap_vld = 1'b1;
    end else begin
        activations1_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred531_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_60_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_60_o = activations1_60_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred531_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_60_o_ap_vld = 1'b1;
    end else begin
        activations1_60_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_predicate_pred525_state9 == 1'b1) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_61_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_61_o = activations1_61_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred525_state9 == 1'b1) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_61_o_ap_vld = 1'b1;
    end else begin
        activations1_61_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_predicate_pred518_state9 == 1'b1) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_62_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_62_o = activations1_62_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred518_state9 == 1'b1) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_62_o_ap_vld = 1'b1;
    end else begin
        activations1_62_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred897_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_63_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_63_o = activations1_63_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred897_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_63_o_ap_vld = 1'b1;
    end else begin
        activations1_63_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred855_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_6_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_6_o = activations1_6_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred855_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_6_o_ap_vld = 1'b1;
    end else begin
        activations1_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred849_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_7_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_7_o = activations1_7_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred849_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_7_o_ap_vld = 1'b1;
    end else begin
        activations1_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred843_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_8_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_8_o = activations1_8_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred843_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_8_o_ap_vld = 1'b1;
    end else begin
        activations1_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred837_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_9_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_9_o = activations1_9_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred837_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_9_o_ap_vld = 1'b1;
    end else begin
        activations1_9_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred891_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_o = grp_fu_50727_p_dout0;
    end else begin
        activations1_o = activations1_i;
    end
end
always @ (*) begin
    if (((ap_predicate_pred891_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        activations1_o_ap_vld = 1'b1;
    end else begin
        activations1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_1714_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_12 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_12 = i_fu_418;
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
assign add_ln26_fu_1720_p2 = (ap_sig_allocacmp_i_12 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_50727_p_ce = 1'b1;
assign grp_fu_50727_p_din0 = tmp_39_reg_2278;
assign grp_fu_50727_p_din1 = tmp_40_reg_2283;
assign grp_fu_50727_p_opcode = 2'd0;
assign icmp_ln26_fu_1714_p2 = ((ap_sig_allocacmp_i_12 == 7'd64) ? 1'b1 : 1'b0);
assign tmp_39_fu_1730_p129 = 'bx;
assign tmp_40_fu_1994_p129 = 'bx;
assign trunc_ln26_fu_1726_p1 = ap_sig_allocacmp_i_12[5:0];
endmodule 
