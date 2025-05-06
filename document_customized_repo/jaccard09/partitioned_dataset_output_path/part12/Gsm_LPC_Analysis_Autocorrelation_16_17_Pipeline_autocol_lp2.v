
module Gsm_LPC_Analysis_Autocorrelation_16_17_Pipeline_autocol_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,L_ACF_8_load,add_ln130,add_ln129,add_ln128,add_ln127,add_ln126,add_ln125,add_ln124,add_ln123_3,s_8_load_2,s_16_load_2,s_24_load_2,s_32_load_2,s_40_load_2,s_48_load_2,s_56_load_2,s_64_load_2,s_72_load_2,s_80_load_2,s_88_load_2,s_96_load_2,s_104_load_2,s_112_load_2,s_120_load_2,s_128_load_2,s_136_load_2,s_144_load_2,s_152_load_2,sl_7,s_15_load_2,s_23_load_2,s_31_load_2,s_39_load_2,s_47_load_2,s_55_load_2,s_63_load_2,s_71_load_2,s_79_load_2,s_87_load_2,s_95_load_2,s_103_load_2,s_111_load_2,s_119_load_2,s_127_load_2,s_135_load_2,s_143_load_2,s_151_load_2,sl_6,s_14_load_2,s_22_load_2,s_30_load_2,s_38_load_2,s_46_load_2,s_54_load_2,s_62_load_2,s_70_load_2,s_78_load_2,s_86_load_2,s_94_load_2,s_102_load_2,s_110_load_2,s_118_load_2,s_126_load_2,s_134_load_2,s_142_load_2,s_150_load_2,sl_5,s_13_load_2,s_21_load_2,s_29_load_2,s_37_load_2,s_45_load_2,s_53_load_2,s_61_load_2,s_69_load_2,s_77_load_2,s_85_load_2,s_93_load_2,s_101_load_2,s_109_load_2,s_117_load_2,s_125_load_2,s_133_load_2,s_141_load_2,s_149_load_2,sl_4,s_12_load_2,s_20_load_2,s_28_load_2,s_36_load_2,s_44_load_2,s_52_load_2,s_60_load_2,s_68_load_2,s_76_load_2,s_84_load_2,s_92_load_2,s_100_load_2,s_108_load_2,s_116_load_2,s_124_load_2,s_132_load_2,s_140_load_2,s_148_load_2,sl_3,s_11_load_2,s_19_load_2,s_27_load_2,s_35_load_2,s_43_load_2,s_51_load_2,s_59_load_2,s_67_load_2,s_75_load_2,s_83_load_2,s_91_load_2,s_99_load_2,s_107_load_2,s_115_load_2,s_123_load_2,s_131_load_2,s_139_load_2,s_147_load_2,sl_2,s_10_load_2,s_18_load_2,s_26_load_2,s_34_load_2,s_42_load_2,s_50_load_2,s_58_load_2,s_66_load_2,s_74_load_2,s_82_load_2,s_90_load_2,s_98_load_2,s_106_load_2,s_114_load_2,s_122_load_2,s_130_load_2,s_138_load_2,s_146_load_2,sl_1,s_9_load_2,s_17_load_2,s_25_load_2,s_33_load_2,s_41_load_2,s_49_load_2,s_57_load_2,s_65_load_2,s_73_load_2,s_81_load_2,s_89_load_2,s_97_load_2,s_105_load_2,s_113_load_2,s_121_load_2,s_129_load_2,s_137_load_2,s_145_load_2,sl,s_153_load_2,s_154_load_2,s_155_load_2,s_156_load_2,s_157_load_2,s_158_load_2,s_159_load_2,p_out,p_out_ap_vld,p_out1,p_out1_ap_vld,p_out2,p_out2_ap_vld,p_out3,p_out3_ap_vld,p_out4,p_out4_ap_vld,p_out5,p_out5_ap_vld,p_out6,p_out6_ap_vld,p_out7,p_out7_ap_vld,p_out8,p_out8_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] L_ACF_8_load;
input  [63:0] add_ln130;
input  [63:0] add_ln129;
input  [63:0] add_ln128;
input  [63:0] add_ln127;
input  [63:0] add_ln126;
input  [63:0] add_ln125;
input  [63:0] add_ln124;
input  [63:0] add_ln123_3;
input  [15:0] s_8_load_2;
input  [15:0] s_16_load_2;
input  [15:0] s_24_load_2;
input  [15:0] s_32_load_2;
input  [15:0] s_40_load_2;
input  [15:0] s_48_load_2;
input  [15:0] s_56_load_2;
input  [15:0] s_64_load_2;
input  [15:0] s_72_load_2;
input  [15:0] s_80_load_2;
input  [15:0] s_88_load_2;
input  [15:0] s_96_load_2;
input  [15:0] s_104_load_2;
input  [15:0] s_112_load_2;
input  [15:0] s_120_load_2;
input  [15:0] s_128_load_2;
input  [15:0] s_136_load_2;
input  [15:0] s_144_load_2;
input  [15:0] s_152_load_2;
input  [15:0] sl_7;
input  [15:0] s_15_load_2;
input  [15:0] s_23_load_2;
input  [15:0] s_31_load_2;
input  [15:0] s_39_load_2;
input  [15:0] s_47_load_2;
input  [15:0] s_55_load_2;
input  [15:0] s_63_load_2;
input  [15:0] s_71_load_2;
input  [15:0] s_79_load_2;
input  [15:0] s_87_load_2;
input  [15:0] s_95_load_2;
input  [15:0] s_103_load_2;
input  [15:0] s_111_load_2;
input  [15:0] s_119_load_2;
input  [15:0] s_127_load_2;
input  [15:0] s_135_load_2;
input  [15:0] s_143_load_2;
input  [15:0] s_151_load_2;
input  [15:0] sl_6;
input  [15:0] s_14_load_2;
input  [15:0] s_22_load_2;
input  [15:0] s_30_load_2;
input  [15:0] s_38_load_2;
input  [15:0] s_46_load_2;
input  [15:0] s_54_load_2;
input  [15:0] s_62_load_2;
input  [15:0] s_70_load_2;
input  [15:0] s_78_load_2;
input  [15:0] s_86_load_2;
input  [15:0] s_94_load_2;
input  [15:0] s_102_load_2;
input  [15:0] s_110_load_2;
input  [15:0] s_118_load_2;
input  [15:0] s_126_load_2;
input  [15:0] s_134_load_2;
input  [15:0] s_142_load_2;
input  [15:0] s_150_load_2;
input  [15:0] sl_5;
input  [15:0] s_13_load_2;
input  [15:0] s_21_load_2;
input  [15:0] s_29_load_2;
input  [15:0] s_37_load_2;
input  [15:0] s_45_load_2;
input  [15:0] s_53_load_2;
input  [15:0] s_61_load_2;
input  [15:0] s_69_load_2;
input  [15:0] s_77_load_2;
input  [15:0] s_85_load_2;
input  [15:0] s_93_load_2;
input  [15:0] s_101_load_2;
input  [15:0] s_109_load_2;
input  [15:0] s_117_load_2;
input  [15:0] s_125_load_2;
input  [15:0] s_133_load_2;
input  [15:0] s_141_load_2;
input  [15:0] s_149_load_2;
input  [15:0] sl_4;
input  [15:0] s_12_load_2;
input  [15:0] s_20_load_2;
input  [15:0] s_28_load_2;
input  [15:0] s_36_load_2;
input  [15:0] s_44_load_2;
input  [15:0] s_52_load_2;
input  [15:0] s_60_load_2;
input  [15:0] s_68_load_2;
input  [15:0] s_76_load_2;
input  [15:0] s_84_load_2;
input  [15:0] s_92_load_2;
input  [15:0] s_100_load_2;
input  [15:0] s_108_load_2;
input  [15:0] s_116_load_2;
input  [15:0] s_124_load_2;
input  [15:0] s_132_load_2;
input  [15:0] s_140_load_2;
input  [15:0] s_148_load_2;
input  [15:0] sl_3;
input  [15:0] s_11_load_2;
input  [15:0] s_19_load_2;
input  [15:0] s_27_load_2;
input  [15:0] s_35_load_2;
input  [15:0] s_43_load_2;
input  [15:0] s_51_load_2;
input  [15:0] s_59_load_2;
input  [15:0] s_67_load_2;
input  [15:0] s_75_load_2;
input  [15:0] s_83_load_2;
input  [15:0] s_91_load_2;
input  [15:0] s_99_load_2;
input  [15:0] s_107_load_2;
input  [15:0] s_115_load_2;
input  [15:0] s_123_load_2;
input  [15:0] s_131_load_2;
input  [15:0] s_139_load_2;
input  [15:0] s_147_load_2;
input  [15:0] sl_2;
input  [15:0] s_10_load_2;
input  [15:0] s_18_load_2;
input  [15:0] s_26_load_2;
input  [15:0] s_34_load_2;
input  [15:0] s_42_load_2;
input  [15:0] s_50_load_2;
input  [15:0] s_58_load_2;
input  [15:0] s_66_load_2;
input  [15:0] s_74_load_2;
input  [15:0] s_82_load_2;
input  [15:0] s_90_load_2;
input  [15:0] s_98_load_2;
input  [15:0] s_106_load_2;
input  [15:0] s_114_load_2;
input  [15:0] s_122_load_2;
input  [15:0] s_130_load_2;
input  [15:0] s_138_load_2;
input  [15:0] s_146_load_2;
input  [15:0] sl_1;
input  [15:0] s_9_load_2;
input  [15:0] s_17_load_2;
input  [15:0] s_25_load_2;
input  [15:0] s_33_load_2;
input  [15:0] s_41_load_2;
input  [15:0] s_49_load_2;
input  [15:0] s_57_load_2;
input  [15:0] s_65_load_2;
input  [15:0] s_73_load_2;
input  [15:0] s_81_load_2;
input  [15:0] s_89_load_2;
input  [15:0] s_97_load_2;
input  [15:0] s_105_load_2;
input  [15:0] s_113_load_2;
input  [15:0] s_121_load_2;
input  [15:0] s_129_load_2;
input  [15:0] s_137_load_2;
input  [15:0] s_145_load_2;
input  [15:0] sl;
input  [15:0] s_153_load_2;
input  [15:0] s_154_load_2;
input  [15:0] s_155_load_2;
input  [15:0] s_156_load_2;
input  [15:0] s_157_load_2;
input  [15:0] s_158_load_2;
input  [15:0] s_159_load_2;
output  [62:0] p_out;
output   p_out_ap_vld;
output  [62:0] p_out1;
output   p_out1_ap_vld;
output  [62:0] p_out2;
output   p_out2_ap_vld;
output  [62:0] p_out3;
output   p_out3_ap_vld;
output  [62:0] p_out4;
output   p_out4_ap_vld;
output  [62:0] p_out5;
output   p_out5_ap_vld;
output  [62:0] p_out6;
output   p_out6_ap_vld;
output  [62:0] p_out7;
output   p_out7_ap_vld;
output  [62:0] p_out8;
output   p_out8_ap_vld;
reg ap_idle;
reg p_out_ap_vld;
reg p_out1_ap_vld;
reg p_out2_ap_vld;
reg p_out3_ap_vld;
reg p_out4_ap_vld;
reg p_out5_ap_vld;
reg p_out6_ap_vld;
reg p_out7_ap_vld;
reg p_out8_ap_vld;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln132_fu_1603_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln132_reg_3994;
reg   [0:0] icmp_ln132_reg_3994_pp0_iter1_reg;
reg   [0:0] icmp_ln132_reg_3994_pp0_iter2_reg;
reg   [0:0] icmp_ln132_reg_3994_pp0_iter3_reg;
reg   [0:0] icmp_ln132_reg_3994_pp0_iter4_reg;
reg   [0:0] icmp_ln132_reg_3994_pp0_iter5_reg;
reg   [0:0] icmp_ln132_reg_3994_pp0_iter6_reg;
wire  signed [15:0] sl_8_fu_1618_p41;
reg  signed [15:0] sl_8_reg_3998;
reg  signed [15:0] sl_8_reg_3998_pp0_iter1_reg;
reg  signed [15:0] sl_8_reg_3998_pp0_iter2_reg;
wire  signed [15:0] tmp_s_fu_1702_p41;
reg  signed [15:0] tmp_s_reg_4005;
reg  signed [15:0] tmp_s_reg_4005_pp0_iter1_reg;
wire  signed [15:0] tmp_1_fu_1786_p41;
reg  signed [15:0] tmp_1_reg_4011;
reg  signed [15:0] tmp_1_reg_4011_pp0_iter1_reg;
wire  signed [15:0] tmp_2_fu_1870_p41;
reg  signed [15:0] tmp_2_reg_4017;
reg  signed [15:0] tmp_2_reg_4017_pp0_iter1_reg;
wire  signed [15:0] tmp_3_fu_1954_p41;
reg  signed [15:0] tmp_3_reg_4023;
reg  signed [15:0] tmp_3_reg_4023_pp0_iter1_reg;
wire  signed [15:0] tmp_4_fu_2038_p41;
reg  signed [15:0] tmp_4_reg_4029;
reg  signed [15:0] tmp_4_reg_4029_pp0_iter1_reg;
reg  signed [15:0] tmp_4_reg_4029_pp0_iter2_reg;
wire  signed [15:0] tmp_5_fu_2122_p41;
reg  signed [15:0] tmp_5_reg_4035;
reg  signed [15:0] tmp_5_reg_4035_pp0_iter1_reg;
reg  signed [15:0] tmp_5_reg_4035_pp0_iter2_reg;
wire  signed [15:0] tmp_6_fu_2206_p41;
reg  signed [15:0] tmp_6_reg_4041;
reg  signed [15:0] tmp_6_reg_4041_pp0_iter1_reg;
wire   [15:0] tmp_7_fu_2290_p41;
reg   [15:0] tmp_7_reg_4047;
reg   [15:0] tmp_7_reg_4047_pp0_iter1_reg;
reg  signed [15:0] tmp_7_reg_4047_pp0_iter2_reg;
wire  signed [15:0] sl_9_fu_2374_p41;
reg  signed [15:0] sl_9_reg_4052;
reg  signed [15:0] sl_9_reg_4052_pp0_iter1_reg;
wire  signed [15:0] sl_10_fu_2458_p41;
reg  signed [15:0] sl_10_reg_4059;
reg  signed [15:0] sl_10_reg_4059_pp0_iter1_reg;
reg  signed [15:0] sl_10_reg_4059_pp0_iter2_reg;
wire  signed [15:0] sl_11_fu_2542_p41;
reg  signed [15:0] sl_11_reg_4066;
reg  signed [15:0] sl_11_reg_4066_pp0_iter1_reg;
reg  signed [15:0] sl_11_reg_4066_pp0_iter2_reg;
wire  signed [15:0] sl_12_fu_2626_p41;
reg  signed [15:0] sl_12_reg_4073;
reg  signed [15:0] sl_12_reg_4073_pp0_iter1_reg;
wire  signed [15:0] sl_13_fu_2710_p41;
reg  signed [15:0] sl_13_reg_4080;
reg  signed [15:0] sl_13_reg_4080_pp0_iter1_reg;
reg  signed [15:0] sl_13_reg_4080_pp0_iter2_reg;
wire  signed [15:0] sl_14_fu_2794_p41;
reg  signed [15:0] sl_14_reg_4087;
reg  signed [15:0] sl_14_reg_4087_pp0_iter1_reg;
reg  signed [15:0] sl_14_reg_4087_pp0_iter2_reg;
wire  signed [15:0] sl_15_fu_2878_p41;
reg  signed [15:0] sl_15_reg_4094;
reg  signed [15:0] sl_15_reg_4094_pp0_iter1_reg;
wire  signed [16:0] sext_ln139_1_fu_2978_p1;
reg  signed [16:0] sext_ln139_1_reg_4100;
reg  signed [16:0] sext_ln139_1_reg_4100_pp0_iter2_reg;
wire  signed [16:0] sext_ln141_fu_2981_p1;
reg  signed [16:0] sext_ln141_reg_4107;
reg  signed [16:0] sext_ln141_reg_4107_pp0_iter2_reg;
wire  signed [32:0] sext_ln135_5_fu_2984_p1;
reg  signed [32:0] sext_ln135_5_reg_4112;
reg  signed [32:0] sext_ln135_5_reg_4112_pp0_iter2_reg;
wire  signed [16:0] sext_ln135_14_fu_2987_p1;
reg  signed [16:0] sext_ln135_14_reg_4120;
reg  signed [16:0] sext_ln135_14_reg_4120_pp0_iter2_reg;
wire  signed [16:0] sext_ln137_fu_2990_p1;
reg  signed [16:0] sext_ln137_reg_4128;
reg  signed [16:0] sext_ln137_reg_4128_pp0_iter2_reg;
wire  signed [32:0] sext_ln138_1_fu_2993_p1;
reg  signed [32:0] sext_ln138_1_reg_4138;
wire  signed [31:0] sext_ln139_fu_2996_p1;
reg  signed [31:0] sext_ln139_reg_4148;
wire  signed [31:0] sext_ln140_fu_2999_p1;
reg  signed [31:0] sext_ln140_reg_4155;
wire  signed [31:0] sext_ln141_1_fu_3005_p1;
reg  signed [31:0] sext_ln141_1_reg_4164;
wire  signed [31:0] sext_ln142_fu_3008_p1;
reg  signed [31:0] sext_ln142_reg_4172;
wire  signed [31:0] sext_ln143_fu_3014_p1;
reg  signed [31:0] sext_ln143_reg_4179;
wire  signed [32:0] sext_ln135_1_fu_3026_p1;
reg  signed [32:0] sext_ln135_1_reg_4190;
wire  signed [16:0] sext_ln135_2_fu_3029_p1;
reg  signed [16:0] sext_ln135_2_reg_4198;
wire  signed [31:0] sext_ln135_3_fu_3032_p1;
reg  signed [31:0] sext_ln135_3_reg_4203;
wire  signed [16:0] sext_ln135_8_fu_3038_p1;
reg  signed [16:0] sext_ln135_8_reg_4212;
wire  signed [31:0] sext_ln135_9_fu_3041_p1;
reg  signed [31:0] sext_ln135_9_reg_4219;
wire  signed [32:0] sext_ln135_11_fu_3047_p1;
wire  signed [31:0] sext_ln135_12_fu_3050_p1;
reg  signed [31:0] sext_ln135_12_reg_4236;
wire  signed [31:0] sext_ln135_15_fu_3053_p1;
wire  signed [16:0] sext_ln135_16_fu_3056_p1;
reg  signed [16:0] sext_ln135_16_reg_4254;
wire  signed [31:0] sext_ln137_1_fu_3059_p1;
wire   [31:0] mul_ln143_1_fu_3062_p2;
reg   [31:0] mul_ln143_1_reg_4266;
reg  signed [31:0] mul_ln143_1_reg_4266_pp0_iter3_reg;
wire  signed [31:0] sext_ln144_fu_3077_p1;
wire  signed [31:0] sext_ln135_6_fu_3083_p1;
wire  signed [32:0] sext_ln135_7_fu_3086_p1;
wire   [31:0] mul_ln137_fu_3098_p2;
reg  signed [31:0] mul_ln137_reg_4297;
wire   [31:0] mul_ln137_2_fu_3102_p2;
reg  signed [31:0] mul_ln137_2_reg_4302;
wire   [31:0] mul_ln137_3_fu_3108_p2;
reg  signed [31:0] mul_ln137_3_reg_4307;
wire   [31:0] mul_ln137_6_fu_3114_p2;
reg  signed [31:0] mul_ln137_6_reg_4312;
wire   [31:0] mul_ln140_fu_3120_p2;
reg   [31:0] mul_ln140_reg_4317;
reg  signed [31:0] mul_ln140_reg_4317_pp0_iter4_reg;
wire   [31:0] mul_ln142_1_fu_3125_p2;
reg   [31:0] mul_ln142_1_reg_4322;
reg  signed [31:0] mul_ln142_1_reg_4322_pp0_iter4_reg;
wire   [31:0] mul_ln143_3_fu_3129_p2;
reg  signed [31:0] mul_ln143_3_reg_4327;
wire   [31:0] mul_ln144_fu_3133_p2;
reg  signed [31:0] mul_ln144_reg_4332;
wire   [31:0] mul_ln144_1_fu_3137_p2;
reg  signed [31:0] mul_ln144_1_reg_4337;
wire   [31:0] mul_ln144_4_fu_3142_p2;
reg  signed [31:0] mul_ln144_4_reg_4342;
wire   [31:0] mul_ln145_fu_3147_p2;
reg  signed [31:0] mul_ln145_reg_4347;
wire   [31:0] mul_ln145_2_fu_3151_p2;
reg  signed [31:0] mul_ln145_2_reg_4352;
wire   [31:0] mul_ln145_3_fu_3156_p2;
reg  signed [31:0] mul_ln145_3_reg_4357;
wire   [31:0] mul_ln145_6_fu_3162_p2;
reg  signed [31:0] mul_ln145_6_reg_4362;
wire   [33:0] add_ln137_2_fu_3219_p2;
reg   [33:0] add_ln137_2_reg_4442;
wire   [33:0] add_ln137_5_fu_3231_p2;
reg   [33:0] add_ln137_5_reg_4447;
wire  signed [33:0] grp_fu_3691_p4;
wire  signed [33:0] grp_fu_3717_p4;
wire  signed [32:0] grp_fu_3727_p3;
wire  signed [33:0] grp_fu_3735_p4;
wire  signed [32:0] grp_fu_3754_p3;
wire   [33:0] add_ln144_4_fu_3267_p2;
reg   [33:0] add_ln144_4_reg_4517;
wire   [33:0] add_ln145_2_fu_3279_p2;
reg   [33:0] add_ln145_2_reg_4522;
wire   [33:0] add_ln145_5_fu_3291_p2;
reg   [33:0] add_ln145_5_reg_4527;
wire   [34:0] add_ln137_6_fu_3303_p2;
reg   [34:0] add_ln137_6_reg_4532;
wire   [34:0] add_ln138_3_fu_3315_p2;
reg   [34:0] add_ln138_3_reg_4537;
wire   [34:0] add_ln139_2_fu_3327_p2;
reg   [34:0] add_ln139_2_reg_4542;
wire   [34:0] add_ln140_3_fu_3339_p2;
reg   [34:0] add_ln140_3_reg_4547;
wire   [34:0] add_ln141_3_fu_3351_p2;
reg   [34:0] add_ln141_3_reg_4552;
wire   [34:0] add_ln142_3_fu_3363_p2;
reg   [34:0] add_ln142_3_reg_4557;
wire   [34:0] add_ln143_5_fu_3375_p2;
reg   [34:0] add_ln143_5_reg_4562;
wire   [34:0] add_ln144_5_fu_3387_p2;
reg   [34:0] add_ln144_5_reg_4567;
wire   [34:0] add_ln145_6_fu_3399_p2;
reg   [34:0] add_ln145_6_reg_4572;
reg   [7:0] idx_fu_424;
wire   [7:0] add_ln135_fu_1612_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_idx_load;
wire    ap_block_pp0_stage0;
reg   [7:0] i_fu_428;
wire   [7:0] i_5_fu_2962_p2;
reg   [7:0] ap_sig_allocacmp_i_4;
reg   [63:0] empty_fu_432;
wire   [63:0] add_ln137_7_fu_3480_p2;
reg   [63:0] empty_407_fu_436;
wire   [63:0] add_ln138_4_fu_3489_p2;
reg   [63:0] empty_408_fu_440;
wire   [63:0] add_ln139_3_fu_3498_p2;
reg   [63:0] empty_409_fu_444;
wire   [63:0] add_ln140_4_fu_3507_p2;
reg   [63:0] empty_410_fu_448;
wire   [63:0] add_ln141_4_fu_3516_p2;
reg   [63:0] empty_411_fu_452;
wire   [63:0] add_ln142_4_fu_3525_p2;
reg   [63:0] empty_412_fu_456;
wire   [63:0] add_ln143_6_fu_3534_p2;
reg   [63:0] empty_413_fu_460;
wire   [63:0] add_ln144_6_fu_3543_p2;
reg   [63:0] empty_414_fu_464;
wire   [63:0] add_ln145_7_fu_3552_p2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
wire    ap_block_pp0_stage0_01001;
wire   [15:0] sl_8_fu_1618_p39;
wire   [15:0] tmp_s_fu_1702_p39;
wire   [15:0] tmp_1_fu_1786_p39;
wire   [15:0] tmp_2_fu_1870_p39;
wire   [15:0] tmp_3_fu_1954_p39;
wire   [15:0] tmp_4_fu_2038_p39;
wire   [15:0] tmp_5_fu_2122_p39;
wire   [15:0] tmp_6_fu_2206_p39;
wire   [15:0] tmp_7_fu_2290_p39;
wire   [15:0] sl_9_fu_2374_p39;
wire   [15:0] sl_10_fu_2458_p39;
wire   [15:0] sl_11_fu_2542_p39;
wire   [15:0] sl_12_fu_2626_p39;
wire   [15:0] sl_13_fu_2710_p39;
wire   [15:0] sl_14_fu_2794_p39;
wire   [15:0] sl_15_fu_2878_p39;
wire  signed [15:0] mul_ln143_1_fu_3062_p0;
wire  signed [15:0] mul_ln143_1_fu_3062_p1;
wire  signed [15:0] mul_ln137_fu_3098_p0;
wire  signed [15:0] mul_ln137_fu_3098_p1;
wire  signed [15:0] mul_ln137_2_fu_3102_p0;
wire  signed [31:0] sext_ln135_18_fu_3095_p1;
wire  signed [15:0] mul_ln137_2_fu_3102_p1;
wire  signed [15:0] mul_ln137_3_fu_3108_p0;
wire  signed [31:0] sext_ln138_2_fu_3071_p1;
wire  signed [15:0] mul_ln137_3_fu_3108_p1;
wire  signed [15:0] mul_ln137_6_fu_3114_p0;
wire  signed [15:0] mul_ln137_6_fu_3114_p1;
wire  signed [15:0] mul_ln140_fu_3120_p0;
wire  signed [15:0] mul_ln140_fu_3120_p1;
wire  signed [15:0] mul_ln142_1_fu_3125_p0;
wire  signed [15:0] mul_ln142_1_fu_3125_p1;
wire  signed [15:0] mul_ln143_3_fu_3129_p0;
wire  signed [15:0] mul_ln143_3_fu_3129_p1;
wire  signed [15:0] mul_ln144_fu_3133_p0;
wire  signed [15:0] mul_ln144_fu_3133_p1;
wire  signed [15:0] mul_ln144_1_fu_3137_p0;
wire  signed [15:0] mul_ln144_1_fu_3137_p1;
wire  signed [15:0] mul_ln144_4_fu_3142_p0;
wire  signed [15:0] mul_ln144_4_fu_3142_p1;
wire  signed [15:0] mul_ln145_fu_3147_p0;
wire  signed [15:0] mul_ln145_fu_3147_p1;
wire  signed [15:0] mul_ln145_2_fu_3151_p0;
wire  signed [15:0] mul_ln145_2_fu_3151_p1;
wire  signed [15:0] mul_ln145_3_fu_3156_p1;
wire  signed [15:0] mul_ln145_6_fu_3162_p0;
wire  signed [15:0] mul_ln145_6_fu_3162_p1;
wire  signed [32:0] grp_fu_3603_p3;
wire  signed [32:0] grp_fu_3612_p3;
wire  signed [32:0] grp_fu_3639_p3;
wire  signed [32:0] grp_fu_3648_p3;
wire  signed [33:0] sext_ln137_11_fu_3216_p1;
wire  signed [33:0] sext_ln137_10_fu_3213_p1;
wire  signed [32:0] grp_fu_3630_p3;
wire  signed [32:0] grp_fu_3621_p3;
wire  signed [33:0] sext_ln137_14_fu_3228_p1;
wire  signed [33:0] sext_ln137_13_fu_3225_p1;
wire  signed [32:0] grp_fu_3657_p3;
wire  signed [32:0] grp_fu_3665_p3;
wire  signed [32:0] grp_fu_3673_p3;
wire  signed [32:0] grp_fu_3682_p3;
wire  signed [32:0] grp_fu_3700_p3;
wire  signed [32:0] grp_fu_3708_p3;
wire  signed [32:0] grp_fu_3745_p3;
wire  signed [32:0] grp_fu_3762_p4;
wire  signed [33:0] sext_ln144_9_fu_3264_p1;
wire  signed [33:0] sext_ln144_8_fu_3261_p1;
wire  signed [32:0] grp_fu_3790_p3;
wire  signed [32:0] grp_fu_3799_p3;
wire  signed [33:0] sext_ln145_11_fu_3276_p1;
wire  signed [33:0] sext_ln145_10_fu_3273_p1;
wire  signed [32:0] grp_fu_3781_p3;
wire  signed [32:0] grp_fu_3772_p3;
wire  signed [33:0] sext_ln145_14_fu_3288_p1;
wire  signed [33:0] sext_ln145_13_fu_3285_p1;
wire  signed [34:0] sext_ln137_15_fu_3300_p1;
wire  signed [34:0] sext_ln137_12_fu_3297_p1;
wire  signed [33:0] grp_fu_3808_p4;
wire  signed [33:0] grp_fu_3816_p4;
wire  signed [34:0] sext_ln138_6_fu_3312_p1;
wire  signed [34:0] sext_ln138_5_fu_3309_p1;
wire  signed [33:0] grp_fu_3834_p4;
wire  signed [33:0] grp_fu_3825_p4;
wire  signed [34:0] sext_ln139_4_fu_3324_p1;
wire  signed [34:0] sext_ln139_3_fu_3321_p1;
wire  signed [32:0] grp_fu_3842_p3;
wire  signed [33:0] grp_fu_3849_p4;
wire  signed [34:0] sext_ln140_5_fu_3336_p1;
wire  signed [34:0] sext_ln140_4_fu_3333_p1;
wire  signed [33:0] grp_fu_3859_p4;
wire  signed [33:0] grp_fu_3867_p4;
wire  signed [34:0] sext_ln141_5_fu_3348_p1;
wire  signed [34:0] sext_ln141_4_fu_3345_p1;
wire  signed [32:0] grp_fu_3876_p3;
wire  signed [33:0] grp_fu_3883_p4;
wire  signed [34:0] sext_ln142_5_fu_3360_p1;
wire  signed [34:0] sext_ln142_4_fu_3357_p1;
wire  signed [32:0] grp_fu_3892_p3;
wire  signed [33:0] grp_fu_3900_p4;
wire  signed [34:0] sext_ln143_9_fu_3372_p1;
wire  signed [34:0] sext_ln143_8_fu_3369_p1;
wire  signed [32:0] grp_fu_3909_p3;
wire  signed [34:0] sext_ln144_10_fu_3384_p1;
wire  signed [34:0] sext_ln144_7_fu_3381_p1;
wire  signed [34:0] sext_ln145_15_fu_3396_p1;
wire  signed [34:0] sext_ln145_12_fu_3393_p1;
wire  signed [63:0] sext_ln137_16_fu_3477_p1;
wire  signed [63:0] sext_ln138_7_fu_3486_p1;
wire  signed [63:0] sext_ln139_5_fu_3495_p1;
wire  signed [63:0] sext_ln140_6_fu_3504_p1;
wire  signed [63:0] sext_ln141_6_fu_3513_p1;
wire  signed [63:0] sext_ln142_6_fu_3522_p1;
wire  signed [63:0] sext_ln143_10_fu_3531_p1;
wire  signed [63:0] sext_ln144_11_fu_3540_p1;
wire  signed [63:0] sext_ln145_16_fu_3549_p1;
wire  signed [15:0] grp_fu_3603_p2;
wire  signed [15:0] grp_fu_3612_p2;
wire  signed [15:0] grp_fu_3621_p0;
wire  signed [15:0] grp_fu_3621_p1;
wire  signed [15:0] grp_fu_3630_p0;
wire  signed [15:0] grp_fu_3630_p1;
wire  signed [15:0] grp_fu_3639_p0;
wire  signed [15:0] grp_fu_3639_p1;
wire  signed [15:0] grp_fu_3648_p0;
wire  signed [15:0] grp_fu_3648_p1;
wire  signed [15:0] grp_fu_3657_p0;
wire  signed [15:0] grp_fu_3657_p2;
wire  signed [15:0] grp_fu_3665_p0;
wire  signed [15:0] grp_fu_3665_p1;
wire  signed [15:0] grp_fu_3665_p2;
wire  signed [15:0] grp_fu_3673_p0;
wire  signed [15:0] grp_fu_3673_p1;
wire  signed [16:0] sext_ln135_4_fu_3035_p1;
wire  signed [15:0] grp_fu_3673_p2;
wire  signed [15:0] grp_fu_3682_p0;
wire  signed [15:0] grp_fu_3682_p1;
wire  signed [16:0] sext_ln140_1_fu_3002_p1;
wire  signed [15:0] grp_fu_3682_p2;
wire  signed [15:0] grp_fu_3691_p0;
wire  signed [15:0] grp_fu_3691_p1;
wire  signed [15:0] grp_fu_3691_p2;
wire  signed [15:0] grp_fu_3700_p0;
wire  signed [15:0] grp_fu_3700_p1;
wire  signed [15:0] grp_fu_3700_p2;
wire  signed [15:0] grp_fu_3708_p1;
wire  signed [16:0] sext_ln142_1_fu_3011_p1;
wire  signed [15:0] grp_fu_3708_p2;
wire  signed [15:0] grp_fu_3717_p0;
wire  signed [15:0] grp_fu_3717_p1;
wire  signed [15:0] grp_fu_3727_p1;
wire  signed [15:0] grp_fu_3735_p0;
wire  signed [15:0] grp_fu_3735_p2;
wire  signed [15:0] grp_fu_3745_p0;
wire  signed [15:0] grp_fu_3745_p1;
wire  signed [15:0] grp_fu_3754_p0;
wire  signed [15:0] grp_fu_3762_p0;
wire  signed [15:0] grp_fu_3762_p2;
wire  signed [15:0] grp_fu_3772_p0;
wire  signed [15:0] grp_fu_3772_p1;
wire  signed [15:0] grp_fu_3781_p0;
wire  signed [15:0] grp_fu_3790_p0;
wire  signed [15:0] grp_fu_3799_p0;
wire  signed [15:0] grp_fu_3808_p0;
wire  signed [15:0] grp_fu_3808_p1;
wire  signed [15:0] grp_fu_3808_p2;
wire  signed [15:0] grp_fu_3816_p0;
wire  signed [15:0] grp_fu_3816_p1;
wire  signed [15:0] grp_fu_3825_p0;
wire  signed [15:0] grp_fu_3825_p1;
wire  signed [15:0] grp_fu_3834_p0;
wire  signed [15:0] grp_fu_3834_p1;
wire  signed [15:0] grp_fu_3834_p2;
wire  signed [15:0] grp_fu_3842_p0;
wire  signed [15:0] grp_fu_3842_p1;
wire  signed [15:0] grp_fu_3849_p0;
wire  signed [15:0] grp_fu_3849_p2;
wire  signed [15:0] grp_fu_3859_p0;
wire  signed [15:0] grp_fu_3859_p1;
wire  signed [15:0] grp_fu_3859_p2;
wire  signed [15:0] grp_fu_3867_p0;
wire  signed [15:0] grp_fu_3867_p1;
wire  signed [15:0] grp_fu_3867_p2;
wire  signed [15:0] grp_fu_3876_p0;
wire  signed [15:0] grp_fu_3876_p1;
wire  signed [15:0] grp_fu_3883_p0;
wire  signed [15:0] grp_fu_3883_p1;
wire  signed [16:0] sext_ln143_1_fu_3074_p1;
wire  signed [15:0] grp_fu_3883_p2;
wire  signed [15:0] grp_fu_3892_p0;
wire  signed [15:0] grp_fu_3892_p1;
wire  signed [15:0] grp_fu_3900_p0;
wire  signed [15:0] grp_fu_3900_p1;
wire  signed [15:0] grp_fu_3900_p2;
wire  signed [15:0] grp_fu_3909_p0;
wire  signed [15:0] grp_fu_3909_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] sl_8_fu_1618_p1;
wire   [7:0] sl_8_fu_1618_p3;
wire   [7:0] sl_8_fu_1618_p5;
wire   [7:0] sl_8_fu_1618_p7;
wire   [7:0] sl_8_fu_1618_p9;
wire   [7:0] sl_8_fu_1618_p11;
wire   [7:0] sl_8_fu_1618_p13;
wire   [7:0] sl_8_fu_1618_p15;
wire   [7:0] sl_8_fu_1618_p17;
wire   [7:0] sl_8_fu_1618_p19;
wire   [7:0] sl_8_fu_1618_p21;
wire   [7:0] sl_8_fu_1618_p23;
wire   [7:0] sl_8_fu_1618_p25;
wire   [7:0] sl_8_fu_1618_p27;
wire   [7:0] sl_8_fu_1618_p29;
wire   [7:0] sl_8_fu_1618_p31;
wire  signed [7:0] sl_8_fu_1618_p33;
wire  signed [7:0] sl_8_fu_1618_p35;
wire  signed [7:0] sl_8_fu_1618_p37;
wire   [7:0] tmp_s_fu_1702_p1;
wire   [7:0] tmp_s_fu_1702_p3;
wire   [7:0] tmp_s_fu_1702_p5;
wire   [7:0] tmp_s_fu_1702_p7;
wire   [7:0] tmp_s_fu_1702_p9;
wire   [7:0] tmp_s_fu_1702_p11;
wire   [7:0] tmp_s_fu_1702_p13;
wire   [7:0] tmp_s_fu_1702_p15;
wire   [7:0] tmp_s_fu_1702_p17;
wire   [7:0] tmp_s_fu_1702_p19;
wire   [7:0] tmp_s_fu_1702_p21;
wire   [7:0] tmp_s_fu_1702_p23;
wire   [7:0] tmp_s_fu_1702_p25;
wire   [7:0] tmp_s_fu_1702_p27;
wire   [7:0] tmp_s_fu_1702_p29;
wire   [7:0] tmp_s_fu_1702_p31;
wire  signed [7:0] tmp_s_fu_1702_p33;
wire  signed [7:0] tmp_s_fu_1702_p35;
wire  signed [7:0] tmp_s_fu_1702_p37;
wire   [7:0] tmp_1_fu_1786_p1;
wire   [7:0] tmp_1_fu_1786_p3;
wire   [7:0] tmp_1_fu_1786_p5;
wire   [7:0] tmp_1_fu_1786_p7;
wire   [7:0] tmp_1_fu_1786_p9;
wire   [7:0] tmp_1_fu_1786_p11;
wire   [7:0] tmp_1_fu_1786_p13;
wire   [7:0] tmp_1_fu_1786_p15;
wire   [7:0] tmp_1_fu_1786_p17;
wire   [7:0] tmp_1_fu_1786_p19;
wire   [7:0] tmp_1_fu_1786_p21;
wire   [7:0] tmp_1_fu_1786_p23;
wire   [7:0] tmp_1_fu_1786_p25;
wire   [7:0] tmp_1_fu_1786_p27;
wire   [7:0] tmp_1_fu_1786_p29;
wire   [7:0] tmp_1_fu_1786_p31;
wire  signed [7:0] tmp_1_fu_1786_p33;
wire  signed [7:0] tmp_1_fu_1786_p35;
wire  signed [7:0] tmp_1_fu_1786_p37;
wire   [7:0] tmp_2_fu_1870_p1;
wire   [7:0] tmp_2_fu_1870_p3;
wire   [7:0] tmp_2_fu_1870_p5;
wire   [7:0] tmp_2_fu_1870_p7;
wire   [7:0] tmp_2_fu_1870_p9;
wire   [7:0] tmp_2_fu_1870_p11;
wire   [7:0] tmp_2_fu_1870_p13;
wire   [7:0] tmp_2_fu_1870_p15;
wire   [7:0] tmp_2_fu_1870_p17;
wire   [7:0] tmp_2_fu_1870_p19;
wire   [7:0] tmp_2_fu_1870_p21;
wire   [7:0] tmp_2_fu_1870_p23;
wire   [7:0] tmp_2_fu_1870_p25;
wire   [7:0] tmp_2_fu_1870_p27;
wire   [7:0] tmp_2_fu_1870_p29;
wire   [7:0] tmp_2_fu_1870_p31;
wire  signed [7:0] tmp_2_fu_1870_p33;
wire  signed [7:0] tmp_2_fu_1870_p35;
wire  signed [7:0] tmp_2_fu_1870_p37;
wire   [7:0] tmp_3_fu_1954_p1;
wire   [7:0] tmp_3_fu_1954_p3;
wire   [7:0] tmp_3_fu_1954_p5;
wire   [7:0] tmp_3_fu_1954_p7;
wire   [7:0] tmp_3_fu_1954_p9;
wire   [7:0] tmp_3_fu_1954_p11;
wire   [7:0] tmp_3_fu_1954_p13;
wire   [7:0] tmp_3_fu_1954_p15;
wire   [7:0] tmp_3_fu_1954_p17;
wire   [7:0] tmp_3_fu_1954_p19;
wire   [7:0] tmp_3_fu_1954_p21;
wire   [7:0] tmp_3_fu_1954_p23;
wire   [7:0] tmp_3_fu_1954_p25;
wire   [7:0] tmp_3_fu_1954_p27;
wire   [7:0] tmp_3_fu_1954_p29;
wire   [7:0] tmp_3_fu_1954_p31;
wire  signed [7:0] tmp_3_fu_1954_p33;
wire  signed [7:0] tmp_3_fu_1954_p35;
wire  signed [7:0] tmp_3_fu_1954_p37;
wire   [7:0] tmp_4_fu_2038_p1;
wire   [7:0] tmp_4_fu_2038_p3;
wire   [7:0] tmp_4_fu_2038_p5;
wire   [7:0] tmp_4_fu_2038_p7;
wire   [7:0] tmp_4_fu_2038_p9;
wire   [7:0] tmp_4_fu_2038_p11;
wire   [7:0] tmp_4_fu_2038_p13;
wire   [7:0] tmp_4_fu_2038_p15;
wire   [7:0] tmp_4_fu_2038_p17;
wire   [7:0] tmp_4_fu_2038_p19;
wire   [7:0] tmp_4_fu_2038_p21;
wire   [7:0] tmp_4_fu_2038_p23;
wire   [7:0] tmp_4_fu_2038_p25;
wire   [7:0] tmp_4_fu_2038_p27;
wire   [7:0] tmp_4_fu_2038_p29;
wire   [7:0] tmp_4_fu_2038_p31;
wire  signed [7:0] tmp_4_fu_2038_p33;
wire  signed [7:0] tmp_4_fu_2038_p35;
wire  signed [7:0] tmp_4_fu_2038_p37;
wire   [7:0] tmp_5_fu_2122_p1;
wire   [7:0] tmp_5_fu_2122_p3;
wire   [7:0] tmp_5_fu_2122_p5;
wire   [7:0] tmp_5_fu_2122_p7;
wire   [7:0] tmp_5_fu_2122_p9;
wire   [7:0] tmp_5_fu_2122_p11;
wire   [7:0] tmp_5_fu_2122_p13;
wire   [7:0] tmp_5_fu_2122_p15;
wire   [7:0] tmp_5_fu_2122_p17;
wire   [7:0] tmp_5_fu_2122_p19;
wire   [7:0] tmp_5_fu_2122_p21;
wire   [7:0] tmp_5_fu_2122_p23;
wire   [7:0] tmp_5_fu_2122_p25;
wire   [7:0] tmp_5_fu_2122_p27;
wire   [7:0] tmp_5_fu_2122_p29;
wire   [7:0] tmp_5_fu_2122_p31;
wire  signed [7:0] tmp_5_fu_2122_p33;
wire  signed [7:0] tmp_5_fu_2122_p35;
wire  signed [7:0] tmp_5_fu_2122_p37;
wire   [7:0] tmp_6_fu_2206_p1;
wire   [7:0] tmp_6_fu_2206_p3;
wire   [7:0] tmp_6_fu_2206_p5;
wire   [7:0] tmp_6_fu_2206_p7;
wire   [7:0] tmp_6_fu_2206_p9;
wire   [7:0] tmp_6_fu_2206_p11;
wire   [7:0] tmp_6_fu_2206_p13;
wire   [7:0] tmp_6_fu_2206_p15;
wire   [7:0] tmp_6_fu_2206_p17;
wire   [7:0] tmp_6_fu_2206_p19;
wire   [7:0] tmp_6_fu_2206_p21;
wire   [7:0] tmp_6_fu_2206_p23;
wire   [7:0] tmp_6_fu_2206_p25;
wire   [7:0] tmp_6_fu_2206_p27;
wire   [7:0] tmp_6_fu_2206_p29;
wire   [7:0] tmp_6_fu_2206_p31;
wire  signed [7:0] tmp_6_fu_2206_p33;
wire  signed [7:0] tmp_6_fu_2206_p35;
wire  signed [7:0] tmp_6_fu_2206_p37;
wire   [7:0] tmp_7_fu_2290_p1;
wire   [7:0] tmp_7_fu_2290_p3;
wire   [7:0] tmp_7_fu_2290_p5;
wire   [7:0] tmp_7_fu_2290_p7;
wire   [7:0] tmp_7_fu_2290_p9;
wire   [7:0] tmp_7_fu_2290_p11;
wire   [7:0] tmp_7_fu_2290_p13;
wire   [7:0] tmp_7_fu_2290_p15;
wire   [7:0] tmp_7_fu_2290_p17;
wire   [7:0] tmp_7_fu_2290_p19;
wire   [7:0] tmp_7_fu_2290_p21;
wire   [7:0] tmp_7_fu_2290_p23;
wire   [7:0] tmp_7_fu_2290_p25;
wire   [7:0] tmp_7_fu_2290_p27;
wire   [7:0] tmp_7_fu_2290_p29;
wire   [7:0] tmp_7_fu_2290_p31;
wire  signed [7:0] tmp_7_fu_2290_p33;
wire  signed [7:0] tmp_7_fu_2290_p35;
wire  signed [7:0] tmp_7_fu_2290_p37;
wire   [7:0] sl_9_fu_2374_p1;
wire   [7:0] sl_9_fu_2374_p3;
wire   [7:0] sl_9_fu_2374_p5;
wire   [7:0] sl_9_fu_2374_p7;
wire   [7:0] sl_9_fu_2374_p9;
wire   [7:0] sl_9_fu_2374_p11;
wire   [7:0] sl_9_fu_2374_p13;
wire   [7:0] sl_9_fu_2374_p15;
wire   [7:0] sl_9_fu_2374_p17;
wire   [7:0] sl_9_fu_2374_p19;
wire   [7:0] sl_9_fu_2374_p21;
wire   [7:0] sl_9_fu_2374_p23;
wire   [7:0] sl_9_fu_2374_p25;
wire   [7:0] sl_9_fu_2374_p27;
wire   [7:0] sl_9_fu_2374_p29;
wire   [7:0] sl_9_fu_2374_p31;
wire  signed [7:0] sl_9_fu_2374_p33;
wire  signed [7:0] sl_9_fu_2374_p35;
wire  signed [7:0] sl_9_fu_2374_p37;
wire   [7:0] sl_10_fu_2458_p1;
wire   [7:0] sl_10_fu_2458_p3;
wire   [7:0] sl_10_fu_2458_p5;
wire   [7:0] sl_10_fu_2458_p7;
wire   [7:0] sl_10_fu_2458_p9;
wire   [7:0] sl_10_fu_2458_p11;
wire   [7:0] sl_10_fu_2458_p13;
wire   [7:0] sl_10_fu_2458_p15;
wire   [7:0] sl_10_fu_2458_p17;
wire   [7:0] sl_10_fu_2458_p19;
wire   [7:0] sl_10_fu_2458_p21;
wire   [7:0] sl_10_fu_2458_p23;
wire   [7:0] sl_10_fu_2458_p25;
wire   [7:0] sl_10_fu_2458_p27;
wire   [7:0] sl_10_fu_2458_p29;
wire   [7:0] sl_10_fu_2458_p31;
wire  signed [7:0] sl_10_fu_2458_p33;
wire  signed [7:0] sl_10_fu_2458_p35;
wire  signed [7:0] sl_10_fu_2458_p37;
wire   [7:0] sl_11_fu_2542_p1;
wire   [7:0] sl_11_fu_2542_p3;
wire   [7:0] sl_11_fu_2542_p5;
wire   [7:0] sl_11_fu_2542_p7;
wire   [7:0] sl_11_fu_2542_p9;
wire   [7:0] sl_11_fu_2542_p11;
wire   [7:0] sl_11_fu_2542_p13;
wire   [7:0] sl_11_fu_2542_p15;
wire   [7:0] sl_11_fu_2542_p17;
wire   [7:0] sl_11_fu_2542_p19;
wire   [7:0] sl_11_fu_2542_p21;
wire   [7:0] sl_11_fu_2542_p23;
wire   [7:0] sl_11_fu_2542_p25;
wire   [7:0] sl_11_fu_2542_p27;
wire   [7:0] sl_11_fu_2542_p29;
wire   [7:0] sl_11_fu_2542_p31;
wire  signed [7:0] sl_11_fu_2542_p33;
wire  signed [7:0] sl_11_fu_2542_p35;
wire  signed [7:0] sl_11_fu_2542_p37;
wire   [7:0] sl_12_fu_2626_p1;
wire   [7:0] sl_12_fu_2626_p3;
wire   [7:0] sl_12_fu_2626_p5;
wire   [7:0] sl_12_fu_2626_p7;
wire   [7:0] sl_12_fu_2626_p9;
wire   [7:0] sl_12_fu_2626_p11;
wire   [7:0] sl_12_fu_2626_p13;
wire   [7:0] sl_12_fu_2626_p15;
wire   [7:0] sl_12_fu_2626_p17;
wire   [7:0] sl_12_fu_2626_p19;
wire   [7:0] sl_12_fu_2626_p21;
wire   [7:0] sl_12_fu_2626_p23;
wire   [7:0] sl_12_fu_2626_p25;
wire   [7:0] sl_12_fu_2626_p27;
wire   [7:0] sl_12_fu_2626_p29;
wire   [7:0] sl_12_fu_2626_p31;
wire  signed [7:0] sl_12_fu_2626_p33;
wire  signed [7:0] sl_12_fu_2626_p35;
wire  signed [7:0] sl_12_fu_2626_p37;
wire   [7:0] sl_13_fu_2710_p1;
wire   [7:0] sl_13_fu_2710_p3;
wire   [7:0] sl_13_fu_2710_p5;
wire   [7:0] sl_13_fu_2710_p7;
wire   [7:0] sl_13_fu_2710_p9;
wire   [7:0] sl_13_fu_2710_p11;
wire   [7:0] sl_13_fu_2710_p13;
wire   [7:0] sl_13_fu_2710_p15;
wire   [7:0] sl_13_fu_2710_p17;
wire   [7:0] sl_13_fu_2710_p19;
wire   [7:0] sl_13_fu_2710_p21;
wire   [7:0] sl_13_fu_2710_p23;
wire   [7:0] sl_13_fu_2710_p25;
wire   [7:0] sl_13_fu_2710_p27;
wire   [7:0] sl_13_fu_2710_p29;
wire   [7:0] sl_13_fu_2710_p31;
wire  signed [7:0] sl_13_fu_2710_p33;
wire  signed [7:0] sl_13_fu_2710_p35;
wire  signed [7:0] sl_13_fu_2710_p37;
wire   [7:0] sl_14_fu_2794_p1;
wire   [7:0] sl_14_fu_2794_p3;
wire   [7:0] sl_14_fu_2794_p5;
wire   [7:0] sl_14_fu_2794_p7;
wire   [7:0] sl_14_fu_2794_p9;
wire   [7:0] sl_14_fu_2794_p11;
wire   [7:0] sl_14_fu_2794_p13;
wire   [7:0] sl_14_fu_2794_p15;
wire   [7:0] sl_14_fu_2794_p17;
wire   [7:0] sl_14_fu_2794_p19;
wire   [7:0] sl_14_fu_2794_p21;
wire   [7:0] sl_14_fu_2794_p23;
wire   [7:0] sl_14_fu_2794_p25;
wire   [7:0] sl_14_fu_2794_p27;
wire   [7:0] sl_14_fu_2794_p29;
wire   [7:0] sl_14_fu_2794_p31;
wire  signed [7:0] sl_14_fu_2794_p33;
wire  signed [7:0] sl_14_fu_2794_p35;
wire  signed [7:0] sl_14_fu_2794_p37;
wire   [7:0] sl_15_fu_2878_p1;
wire   [7:0] sl_15_fu_2878_p3;
wire   [7:0] sl_15_fu_2878_p5;
wire   [7:0] sl_15_fu_2878_p7;
wire   [7:0] sl_15_fu_2878_p9;
wire   [7:0] sl_15_fu_2878_p11;
wire   [7:0] sl_15_fu_2878_p13;
wire   [7:0] sl_15_fu_2878_p15;
wire   [7:0] sl_15_fu_2878_p17;
wire   [7:0] sl_15_fu_2878_p19;
wire   [7:0] sl_15_fu_2878_p21;
wire   [7:0] sl_15_fu_2878_p23;
wire   [7:0] sl_15_fu_2878_p25;
wire   [7:0] sl_15_fu_2878_p27;
wire   [7:0] sl_15_fu_2878_p29;
wire   [7:0] sl_15_fu_2878_p31;
wire  signed [7:0] sl_15_fu_2878_p33;
wire  signed [7:0] sl_15_fu_2878_p35;
wire  signed [7:0] sl_15_fu_2878_p37;
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
#0 idx_fu_424 = 8'd0;
#0 i_fu_428 = 8'd0;
#0 empty_fu_432 = 64'd0;
#0 empty_407_fu_436 = 64'd0;
#0 empty_408_fu_440 = 64'd0;
#0 empty_409_fu_444 = 64'd0;
#0 empty_410_fu_448 = 64'd0;
#0 empty_411_fu_452 = 64'd0;
#0 empty_412_fu_456 = 64'd0;
#0 empty_413_fu_460 = 64'd0;
#0 empty_414_fu_464 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U345(.din0(s_8_load_2),.din1(s_16_load_2),.din2(s_24_load_2),.din3(s_32_load_2),.din4(s_40_load_2),.din5(s_48_load_2),.din6(s_56_load_2),.din7(s_64_load_2),.din8(s_72_load_2),.din9(s_80_load_2),.din10(s_88_load_2),.din11(s_96_load_2),.din12(s_104_load_2),.din13(s_112_load_2),.din14(s_120_load_2),.din15(s_128_load_2),.din16(s_136_load_2),.din17(s_144_load_2),.din18(s_152_load_2),.def(sl_8_fu_1618_p39),.sel(ap_sig_allocacmp_idx_load),.dout(sl_8_fu_1618_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U346(.din0(sl_7),.din1(s_15_load_2),.din2(s_23_load_2),.din3(s_31_load_2),.din4(s_39_load_2),.din5(s_47_load_2),.din6(s_55_load_2),.din7(s_63_load_2),.din8(s_71_load_2),.din9(s_79_load_2),.din10(s_87_load_2),.din11(s_95_load_2),.din12(s_103_load_2),.din13(s_111_load_2),.din14(s_119_load_2),.din15(s_127_load_2),.din16(s_135_load_2),.din17(s_143_load_2),.din18(s_151_load_2),.def(tmp_s_fu_1702_p39),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_s_fu_1702_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U347(.din0(sl_6),.din1(s_14_load_2),.din2(s_22_load_2),.din3(s_30_load_2),.din4(s_38_load_2),.din5(s_46_load_2),.din6(s_54_load_2),.din7(s_62_load_2),.din8(s_70_load_2),.din9(s_78_load_2),.din10(s_86_load_2),.din11(s_94_load_2),.din12(s_102_load_2),.din13(s_110_load_2),.din14(s_118_load_2),.din15(s_126_load_2),.din16(s_134_load_2),.din17(s_142_load_2),.din18(s_150_load_2),.def(tmp_1_fu_1786_p39),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_1_fu_1786_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U348(.din0(sl_5),.din1(s_13_load_2),.din2(s_21_load_2),.din3(s_29_load_2),.din4(s_37_load_2),.din5(s_45_load_2),.din6(s_53_load_2),.din7(s_61_load_2),.din8(s_69_load_2),.din9(s_77_load_2),.din10(s_85_load_2),.din11(s_93_load_2),.din12(s_101_load_2),.din13(s_109_load_2),.din14(s_117_load_2),.din15(s_125_load_2),.din16(s_133_load_2),.din17(s_141_load_2),.din18(s_149_load_2),.def(tmp_2_fu_1870_p39),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_2_fu_1870_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U349(.din0(sl_4),.din1(s_12_load_2),.din2(s_20_load_2),.din3(s_28_load_2),.din4(s_36_load_2),.din5(s_44_load_2),.din6(s_52_load_2),.din7(s_60_load_2),.din8(s_68_load_2),.din9(s_76_load_2),.din10(s_84_load_2),.din11(s_92_load_2),.din12(s_100_load_2),.din13(s_108_load_2),.din14(s_116_load_2),.din15(s_124_load_2),.din16(s_132_load_2),.din17(s_140_load_2),.din18(s_148_load_2),.def(tmp_3_fu_1954_p39),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_3_fu_1954_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U350(.din0(sl_3),.din1(s_11_load_2),.din2(s_19_load_2),.din3(s_27_load_2),.din4(s_35_load_2),.din5(s_43_load_2),.din6(s_51_load_2),.din7(s_59_load_2),.din8(s_67_load_2),.din9(s_75_load_2),.din10(s_83_load_2),.din11(s_91_load_2),.din12(s_99_load_2),.din13(s_107_load_2),.din14(s_115_load_2),.din15(s_123_load_2),.din16(s_131_load_2),.din17(s_139_load_2),.din18(s_147_load_2),.def(tmp_4_fu_2038_p39),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_4_fu_2038_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U351(.din0(sl_2),.din1(s_10_load_2),.din2(s_18_load_2),.din3(s_26_load_2),.din4(s_34_load_2),.din5(s_42_load_2),.din6(s_50_load_2),.din7(s_58_load_2),.din8(s_66_load_2),.din9(s_74_load_2),.din10(s_82_load_2),.din11(s_90_load_2),.din12(s_98_load_2),.din13(s_106_load_2),.din14(s_114_load_2),.din15(s_122_load_2),.din16(s_130_load_2),.din17(s_138_load_2),.din18(s_146_load_2),.def(tmp_5_fu_2122_p39),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_5_fu_2122_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U352(.din0(sl_1),.din1(s_9_load_2),.din2(s_17_load_2),.din3(s_25_load_2),.din4(s_33_load_2),.din5(s_41_load_2),.din6(s_49_load_2),.din7(s_57_load_2),.din8(s_65_load_2),.din9(s_73_load_2),.din10(s_81_load_2),.din11(s_89_load_2),.din12(s_97_load_2),.din13(s_105_load_2),.din14(s_113_load_2),.din15(s_121_load_2),.din16(s_129_load_2),.din17(s_137_load_2),.din18(s_145_load_2),.def(tmp_6_fu_2206_p39),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_6_fu_2206_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U353(.din0(sl),.din1(s_8_load_2),.din2(s_16_load_2),.din3(s_24_load_2),.din4(s_32_load_2),.din5(s_40_load_2),.din6(s_48_load_2),.din7(s_56_load_2),.din8(s_64_load_2),.din9(s_72_load_2),.din10(s_80_load_2),.din11(s_88_load_2),.din12(s_96_load_2),.din13(s_104_load_2),.din14(s_112_load_2),.din15(s_120_load_2),.din16(s_128_load_2),.din17(s_136_load_2),.din18(s_144_load_2),.def(tmp_7_fu_2290_p39),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_7_fu_2290_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U354(.din0(s_9_load_2),.din1(s_17_load_2),.din2(s_25_load_2),.din3(s_33_load_2),.din4(s_41_load_2),.din5(s_49_load_2),.din6(s_57_load_2),.din7(s_65_load_2),.din8(s_73_load_2),.din9(s_81_load_2),.din10(s_89_load_2),.din11(s_97_load_2),.din12(s_105_load_2),.din13(s_113_load_2),.din14(s_121_load_2),.din15(s_129_load_2),.din16(s_137_load_2),.din17(s_145_load_2),.din18(s_153_load_2),.def(sl_9_fu_2374_p39),.sel(ap_sig_allocacmp_idx_load),.dout(sl_9_fu_2374_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U355(.din0(s_10_load_2),.din1(s_18_load_2),.din2(s_26_load_2),.din3(s_34_load_2),.din4(s_42_load_2),.din5(s_50_load_2),.din6(s_58_load_2),.din7(s_66_load_2),.din8(s_74_load_2),.din9(s_82_load_2),.din10(s_90_load_2),.din11(s_98_load_2),.din12(s_106_load_2),.din13(s_114_load_2),.din14(s_122_load_2),.din15(s_130_load_2),.din16(s_138_load_2),.din17(s_146_load_2),.din18(s_154_load_2),.def(sl_10_fu_2458_p39),.sel(ap_sig_allocacmp_idx_load),.dout(sl_10_fu_2458_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U356(.din0(s_11_load_2),.din1(s_19_load_2),.din2(s_27_load_2),.din3(s_35_load_2),.din4(s_43_load_2),.din5(s_51_load_2),.din6(s_59_load_2),.din7(s_67_load_2),.din8(s_75_load_2),.din9(s_83_load_2),.din10(s_91_load_2),.din11(s_99_load_2),.din12(s_107_load_2),.din13(s_115_load_2),.din14(s_123_load_2),.din15(s_131_load_2),.din16(s_139_load_2),.din17(s_147_load_2),.din18(s_155_load_2),.def(sl_11_fu_2542_p39),.sel(ap_sig_allocacmp_idx_load),.dout(sl_11_fu_2542_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U357(.din0(s_12_load_2),.din1(s_20_load_2),.din2(s_28_load_2),.din3(s_36_load_2),.din4(s_44_load_2),.din5(s_52_load_2),.din6(s_60_load_2),.din7(s_68_load_2),.din8(s_76_load_2),.din9(s_84_load_2),.din10(s_92_load_2),.din11(s_100_load_2),.din12(s_108_load_2),.din13(s_116_load_2),.din14(s_124_load_2),.din15(s_132_load_2),.din16(s_140_load_2),.din17(s_148_load_2),.din18(s_156_load_2),.def(sl_12_fu_2626_p39),.sel(ap_sig_allocacmp_idx_load),.dout(sl_12_fu_2626_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U358(.din0(s_13_load_2),.din1(s_21_load_2),.din2(s_29_load_2),.din3(s_37_load_2),.din4(s_45_load_2),.din5(s_53_load_2),.din6(s_61_load_2),.din7(s_69_load_2),.din8(s_77_load_2),.din9(s_85_load_2),.din10(s_93_load_2),.din11(s_101_load_2),.din12(s_109_load_2),.din13(s_117_load_2),.din14(s_125_load_2),.din15(s_133_load_2),.din16(s_141_load_2),.din17(s_149_load_2),.din18(s_157_load_2),.def(sl_13_fu_2710_p39),.sel(ap_sig_allocacmp_idx_load),.dout(sl_13_fu_2710_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U359(.din0(s_14_load_2),.din1(s_22_load_2),.din2(s_30_load_2),.din3(s_38_load_2),.din4(s_46_load_2),.din5(s_54_load_2),.din6(s_62_load_2),.din7(s_70_load_2),.din8(s_78_load_2),.din9(s_86_load_2),.din10(s_94_load_2),.din11(s_102_load_2),.din12(s_110_load_2),.din13(s_118_load_2),.din14(s_126_load_2),.din15(s_134_load_2),.din16(s_142_load_2),.din17(s_150_load_2),.din18(s_158_load_2),.def(sl_14_fu_2794_p39),.sel(ap_sig_allocacmp_idx_load),.dout(sl_14_fu_2794_p41));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_39_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_39_8_16_1_1_U360(.din0(s_15_load_2),.din1(s_23_load_2),.din2(s_31_load_2),.din3(s_39_load_2),.din4(s_47_load_2),.din5(s_55_load_2),.din6(s_63_load_2),.din7(s_71_load_2),.din8(s_79_load_2),.din9(s_87_load_2),.din10(s_95_load_2),.din11(s_103_load_2),.din12(s_111_load_2),.din13(s_119_load_2),.din14(s_127_load_2),.din15(s_135_load_2),.din16(s_143_load_2),.din17(s_151_load_2),.din18(s_159_load_2),.def(sl_15_fu_2878_p39),.sel(ap_sig_allocacmp_idx_load),.dout(sl_15_fu_2878_p41));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U361(.din0(mul_ln143_1_fu_3062_p0),.din1(mul_ln143_1_fu_3062_p1),.dout(mul_ln143_1_fu_3062_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U362(.din0(mul_ln137_fu_3098_p0),.din1(mul_ln137_fu_3098_p1),.dout(mul_ln137_fu_3098_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U363(.din0(mul_ln137_2_fu_3102_p0),.din1(mul_ln137_2_fu_3102_p1),.dout(mul_ln137_2_fu_3102_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U364(.din0(mul_ln137_3_fu_3108_p0),.din1(mul_ln137_3_fu_3108_p1),.dout(mul_ln137_3_fu_3108_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U365(.din0(mul_ln137_6_fu_3114_p0),.din1(mul_ln137_6_fu_3114_p1),.dout(mul_ln137_6_fu_3114_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U366(.din0(mul_ln140_fu_3120_p0),.din1(mul_ln140_fu_3120_p1),.dout(mul_ln140_fu_3120_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U367(.din0(mul_ln142_1_fu_3125_p0),.din1(mul_ln142_1_fu_3125_p1),.dout(mul_ln142_1_fu_3125_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U368(.din0(mul_ln143_3_fu_3129_p0),.din1(mul_ln143_3_fu_3129_p1),.dout(mul_ln143_3_fu_3129_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U369(.din0(mul_ln144_fu_3133_p0),.din1(mul_ln144_fu_3133_p1),.dout(mul_ln144_fu_3133_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U370(.din0(mul_ln144_1_fu_3137_p0),.din1(mul_ln144_1_fu_3137_p1),.dout(mul_ln144_1_fu_3137_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U371(.din0(mul_ln144_4_fu_3142_p0),.din1(mul_ln144_4_fu_3142_p1),.dout(mul_ln144_4_fu_3142_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U372(.din0(mul_ln145_fu_3147_p0),.din1(mul_ln145_fu_3147_p1),.dout(mul_ln145_fu_3147_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U373(.din0(mul_ln145_2_fu_3151_p0),.din1(mul_ln145_2_fu_3151_p1),.dout(mul_ln145_2_fu_3151_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U374(.din0(tmp_7_reg_4047_pp0_iter2_reg),.din1(mul_ln145_3_fu_3156_p1),.dout(mul_ln145_3_fu_3156_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U375(.din0(mul_ln145_6_fu_3162_p0),.din1(mul_ln145_6_fu_3162_p1),.dout(mul_ln145_6_fu_3162_p2));
Gsm_LPC_Analysis_am_addmul_16s_16s_16s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.dout_WIDTH( 33 ))
am_addmul_16s_16s_16s_33_4_1_U376(.clk(ap_clk),.reset(ap_rst),.din0(sl_13_reg_4080),.din1(tmp_s_reg_4005),.din2(grp_fu_3603_p2),.ce(1'b1),.dout(grp_fu_3603_p3));
Gsm_LPC_Analysis_am_addmul_16s_16s_16s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.dout_WIDTH( 33 ))
am_addmul_16s_16s_16s_33_4_1_U377(.clk(ap_clk),.reset(ap_rst),.din0(sl_15_reg_4094),.din1(tmp_2_reg_4017),.din2(grp_fu_3612_p2),.ce(1'b1),.dout(grp_fu_3612_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U378(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3621_p0),.din1(grp_fu_3621_p1),.din2(mul_ln137_2_reg_4302),.ce(1'b1),.dout(grp_fu_3621_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U379(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3630_p0),.din1(grp_fu_3630_p1),.din2(mul_ln137_reg_4297),.ce(1'b1),.dout(grp_fu_3630_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U380(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3639_p0),.din1(grp_fu_3639_p1),.din2(mul_ln137_3_reg_4307),.ce(1'b1),.dout(grp_fu_3639_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U381(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3648_p0),.din1(grp_fu_3648_p1),.din2(mul_ln137_6_reg_4312),.ce(1'b1),.dout(grp_fu_3648_p3));
Gsm_LPC_Analysis_am_addmul_16s_16s_16s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.dout_WIDTH( 33 ))
am_addmul_16s_16s_16s_33_4_1_U382(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3657_p0),.din1(sl_11_reg_4066_pp0_iter1_reg),.din2(grp_fu_3657_p2),.ce(1'b1),.dout(grp_fu_3657_p3));
Gsm_LPC_Analysis_am_addmul_16s_16s_16s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.dout_WIDTH( 33 ))
am_addmul_16s_16s_16s_33_4_1_U383(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3665_p0),.din1(grp_fu_3665_p1),.din2(grp_fu_3665_p2),.ce(1'b1),.dout(grp_fu_3665_p3));
Gsm_LPC_Analysis_am_addmul_16s_16s_16s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.dout_WIDTH( 33 ))
am_addmul_16s_16s_16s_33_4_1_U384(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3673_p0),.din1(grp_fu_3673_p1),.din2(grp_fu_3673_p2),.ce(1'b1),.dout(grp_fu_3673_p3));
Gsm_LPC_Analysis_am_addmul_16s_16s_16s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.dout_WIDTH( 33 ))
am_addmul_16s_16s_16s_33_4_1_U385(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3682_p0),.din1(grp_fu_3682_p1),.din2(grp_fu_3682_p2),.ce(1'b1),.dout(grp_fu_3682_p3));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_33s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 33 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_33s_34_4_1_U386(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3691_p0),.din1(grp_fu_3691_p1),.din2(grp_fu_3691_p2),.din3(grp_fu_3603_p3),.ce(1'b1),.dout(grp_fu_3691_p4));
Gsm_LPC_Analysis_am_addmul_16s_16s_16s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.dout_WIDTH( 33 ))
am_addmul_16s_16s_16s_33_4_1_U387(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3700_p0),.din1(grp_fu_3700_p1),.din2(grp_fu_3700_p2),.ce(1'b1),.dout(grp_fu_3700_p3));
Gsm_LPC_Analysis_am_addmul_16s_16s_16s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.dout_WIDTH( 33 ))
am_addmul_16s_16s_16s_33_4_1_U388(.clk(ap_clk),.reset(ap_rst),.din0(sl_12_reg_4073_pp0_iter1_reg),.din1(grp_fu_3708_p1),.din2(grp_fu_3708_p2),.ce(1'b1),.dout(grp_fu_3708_p3));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_33s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 33 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_33s_34_4_1_U389(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3717_p0),.din1(grp_fu_3717_p1),.din2(sl_9_reg_4052_pp0_iter1_reg),.din3(grp_fu_3612_p3),.ce(1'b1),.dout(grp_fu_3717_p4));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U390(.clk(ap_clk),.reset(ap_rst),.din0(sl_12_reg_4073_pp0_iter1_reg),.din1(grp_fu_3727_p1),.din2(mul_ln143_3_reg_4327),.ce(1'b1),.dout(grp_fu_3727_p3));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_32s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 32 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_32s_34_4_1_U391(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3735_p0),.din1(tmp_5_reg_4035_pp0_iter1_reg),.din2(grp_fu_3735_p2),.din3(mul_ln143_1_reg_4266_pp0_iter3_reg),.ce(1'b1),.dout(grp_fu_3735_p4));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U392(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3745_p0),.din1(grp_fu_3745_p1),.din2(mul_ln144_reg_4332),.ce(1'b1),.dout(grp_fu_3745_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U393(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3754_p0),.din1(tmp_3_reg_4023_pp0_iter1_reg),.din2(mul_ln144_4_reg_4342),.ce(1'b1),.dout(grp_fu_3754_p3));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 32 ),.dout_WIDTH( 33 ))
ama_addmuladd_16s_16s_16s_32s_33_4_1_U394(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3762_p0),.din1(tmp_6_reg_4041_pp0_iter1_reg),.din2(grp_fu_3762_p2),.din3(mul_ln144_1_reg_4337),.ce(1'b1),.dout(grp_fu_3762_p4));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U395(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3772_p0),.din1(grp_fu_3772_p1),.din2(mul_ln145_2_reg_4352),.ce(1'b1),.dout(grp_fu_3772_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U396(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3781_p0),.din1(tmp_2_reg_4017_pp0_iter1_reg),.din2(mul_ln145_reg_4347),.ce(1'b1),.dout(grp_fu_3781_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U397(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3790_p0),.din1(tmp_6_reg_4041_pp0_iter1_reg),.din2(mul_ln145_3_reg_4357),.ce(1'b1),.dout(grp_fu_3790_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U398(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3799_p0),.din1(tmp_4_reg_4029_pp0_iter1_reg),.din2(mul_ln145_6_reg_4362),.ce(1'b1),.dout(grp_fu_3799_p3));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_33s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 33 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_33s_34_4_1_U399(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3808_p0),.din1(grp_fu_3808_p1),.din2(grp_fu_3808_p2),.din3(grp_fu_3665_p3),.ce(1'b1),.dout(grp_fu_3808_p4));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_33s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 33 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_33s_34_4_1_U400(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3816_p0),.din1(grp_fu_3816_p1),.din2(sl_14_reg_4087_pp0_iter2_reg),.din3(grp_fu_3657_p3),.ce(1'b1),.dout(grp_fu_3816_p4));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_33s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 33 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_33s_34_4_1_U401(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3825_p0),.din1(grp_fu_3825_p1),.din2(sl_13_reg_4080_pp0_iter2_reg),.din3(grp_fu_3673_p3),.ce(1'b1),.dout(grp_fu_3825_p4));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_33s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 33 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_33s_34_4_1_U402(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3834_p0),.din1(grp_fu_3834_p1),.din2(grp_fu_3834_p2),.din3(grp_fu_3682_p3),.ce(1'b1),.dout(grp_fu_3834_p4));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U403(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3842_p0),.din1(grp_fu_3842_p1),.din2(mul_ln140_reg_4317_pp0_iter4_reg),.ce(1'b1),.dout(grp_fu_3842_p3));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_34s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 34 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_34s_34_4_1_U404(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3849_p0),.din1(sl_8_reg_3998_pp0_iter2_reg),.din2(grp_fu_3849_p2),.din3(grp_fu_3691_p4),.ce(1'b1),.dout(grp_fu_3849_p4));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_33s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 33 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_33s_34_4_1_U405(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3859_p0),.din1(grp_fu_3859_p1),.din2(grp_fu_3859_p2),.din3(grp_fu_3708_p3),.ce(1'b1),.dout(grp_fu_3859_p4));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_33s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 33 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_33s_34_4_1_U406(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3867_p0),.din1(grp_fu_3867_p1),.din2(grp_fu_3867_p2),.din3(grp_fu_3700_p3),.ce(1'b1),.dout(grp_fu_3867_p4));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U407(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3876_p0),.din1(grp_fu_3876_p1),.din2(mul_ln142_1_reg_4322_pp0_iter4_reg),.ce(1'b1),.dout(grp_fu_3876_p3));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_34s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 34 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_34s_34_4_1_U408(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3883_p0),.din1(grp_fu_3883_p1),.din2(grp_fu_3883_p2),.din3(grp_fu_3717_p4),.ce(1'b1),.dout(grp_fu_3883_p4));
Gsm_LPC_Analysis_mac_muladd_16s_16s_33s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 33 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_33s_33_4_1_U409(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3892_p0),.din1(grp_fu_3892_p1),.din2(grp_fu_3727_p3),.ce(1'b1),.dout(grp_fu_3892_p3));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_34s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 34 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_34s_34_4_1_U410(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3900_p0),.din1(grp_fu_3900_p1),.din2(grp_fu_3900_p2),.din3(grp_fu_3735_p4),.ce(1'b1),.dout(grp_fu_3900_p4));
Gsm_LPC_Analysis_mac_muladd_16s_16s_33s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 33 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_33s_33_4_1_U411(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3909_p0),.din1(grp_fu_3909_p1),.din2(grp_fu_3754_p3),.ce(1'b1),.dout(grp_fu_3909_p3));
Gsm_LPC_Analysis_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_407_fu_436 <= add_ln124;
        end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd1))) begin
            empty_407_fu_436 <= add_ln138_4_fu_3489_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_408_fu_440 <= add_ln125;
        end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd1))) begin
            empty_408_fu_440 <= add_ln139_3_fu_3498_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_409_fu_444 <= add_ln126;
        end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd1))) begin
            empty_409_fu_444 <= add_ln140_4_fu_3507_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_410_fu_448 <= add_ln127;
        end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd1))) begin
            empty_410_fu_448 <= add_ln141_4_fu_3516_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_411_fu_452 <= add_ln128;
        end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd1))) begin
            empty_411_fu_452 <= add_ln142_4_fu_3525_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_412_fu_456 <= add_ln129;
        end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd1))) begin
            empty_412_fu_456 <= add_ln143_6_fu_3534_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_413_fu_460 <= add_ln130;
        end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd1))) begin
            empty_413_fu_460 <= add_ln144_6_fu_3543_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_414_fu_464 <= L_ACF_8_load;
        end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd1))) begin
            empty_414_fu_464 <= add_ln145_7_fu_3552_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_fu_432 <= add_ln123_3;
        end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd1))) begin
            empty_fu_432 <= add_ln137_7_fu_3480_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln132_fu_1603_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_428 <= i_5_fu_2962_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_428 <= 8'd8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln132_fu_1603_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            idx_fu_424 <= add_ln135_fu_1612_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            idx_fu_424 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln137_2_reg_4442 <= add_ln137_2_fu_3219_p2;
        add_ln137_5_reg_4447 <= add_ln137_5_fu_3231_p2;
        add_ln137_6_reg_4532 <= add_ln137_6_fu_3303_p2;
        add_ln138_3_reg_4537 <= add_ln138_3_fu_3315_p2;
        add_ln139_2_reg_4542 <= add_ln139_2_fu_3327_p2;
        add_ln140_3_reg_4547 <= add_ln140_3_fu_3339_p2;
        add_ln141_3_reg_4552 <= add_ln141_3_fu_3351_p2;
        add_ln142_3_reg_4557 <= add_ln142_3_fu_3363_p2;
        add_ln143_5_reg_4562 <= add_ln143_5_fu_3375_p2;
        add_ln144_4_reg_4517 <= add_ln144_4_fu_3267_p2;
        add_ln144_5_reg_4567 <= add_ln144_5_fu_3387_p2;
        add_ln145_2_reg_4522 <= add_ln145_2_fu_3279_p2;
        add_ln145_5_reg_4527 <= add_ln145_5_fu_3291_p2;
        add_ln145_6_reg_4572 <= add_ln145_6_fu_3399_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        icmp_ln132_reg_3994_pp0_iter2_reg <= icmp_ln132_reg_3994_pp0_iter1_reg;
        icmp_ln132_reg_3994_pp0_iter3_reg <= icmp_ln132_reg_3994_pp0_iter2_reg;
        icmp_ln132_reg_3994_pp0_iter4_reg <= icmp_ln132_reg_3994_pp0_iter3_reg;
        icmp_ln132_reg_3994_pp0_iter5_reg <= icmp_ln132_reg_3994_pp0_iter4_reg;
        icmp_ln132_reg_3994_pp0_iter6_reg <= icmp_ln132_reg_3994_pp0_iter5_reg;
        mul_ln137_2_reg_4302 <= mul_ln137_2_fu_3102_p2;
        mul_ln137_3_reg_4307 <= mul_ln137_3_fu_3108_p2;
        mul_ln137_6_reg_4312 <= mul_ln137_6_fu_3114_p2;
        mul_ln137_reg_4297 <= mul_ln137_fu_3098_p2;
        mul_ln140_reg_4317 <= mul_ln140_fu_3120_p2;
        mul_ln140_reg_4317_pp0_iter4_reg <= mul_ln140_reg_4317;
        mul_ln142_1_reg_4322 <= mul_ln142_1_fu_3125_p2;
        mul_ln142_1_reg_4322_pp0_iter4_reg <= mul_ln142_1_reg_4322;
        mul_ln143_1_reg_4266 <= mul_ln143_1_fu_3062_p2;
        mul_ln143_1_reg_4266_pp0_iter3_reg <= mul_ln143_1_reg_4266;
        mul_ln143_3_reg_4327 <= mul_ln143_3_fu_3129_p2;
        mul_ln144_1_reg_4337 <= mul_ln144_1_fu_3137_p2;
        mul_ln144_4_reg_4342 <= mul_ln144_4_fu_3142_p2;
        mul_ln144_reg_4332 <= mul_ln144_fu_3133_p2;
        mul_ln145_2_reg_4352 <= mul_ln145_2_fu_3151_p2;
        mul_ln145_3_reg_4357 <= mul_ln145_3_fu_3156_p2;
        mul_ln145_6_reg_4362 <= mul_ln145_6_fu_3162_p2;
        mul_ln145_reg_4347 <= mul_ln145_fu_3147_p2;
        sext_ln135_12_reg_4236 <= sext_ln135_12_fu_3050_p1;
        sext_ln135_14_reg_4120_pp0_iter2_reg <= sext_ln135_14_reg_4120;
        sext_ln135_16_reg_4254 <= sext_ln135_16_fu_3056_p1;
        sext_ln135_1_reg_4190 <= sext_ln135_1_fu_3026_p1;
        sext_ln135_2_reg_4198 <= sext_ln135_2_fu_3029_p1;
        sext_ln135_3_reg_4203 <= sext_ln135_3_fu_3032_p1;
        sext_ln135_5_reg_4112_pp0_iter2_reg <= sext_ln135_5_reg_4112;
        sext_ln135_8_reg_4212 <= sext_ln135_8_fu_3038_p1;
        sext_ln135_9_reg_4219 <= sext_ln135_9_fu_3041_p1;
        sext_ln137_reg_4128_pp0_iter2_reg <= sext_ln137_reg_4128;
        sext_ln138_1_reg_4138 <= sext_ln138_1_fu_2993_p1;
        sext_ln139_1_reg_4100_pp0_iter2_reg <= sext_ln139_1_reg_4100;
        sext_ln139_reg_4148 <= sext_ln139_fu_2996_p1;
        sext_ln140_reg_4155 <= sext_ln140_fu_2999_p1;
        sext_ln141_1_reg_4164 <= sext_ln141_1_fu_3005_p1;
        sext_ln141_reg_4107_pp0_iter2_reg <= sext_ln141_reg_4107;
        sext_ln142_reg_4172 <= sext_ln142_fu_3008_p1;
        sext_ln143_reg_4179 <= sext_ln143_fu_3014_p1;
        sl_10_reg_4059_pp0_iter2_reg <= sl_10_reg_4059_pp0_iter1_reg;
        sl_11_reg_4066_pp0_iter2_reg <= sl_11_reg_4066_pp0_iter1_reg;
        sl_13_reg_4080_pp0_iter2_reg <= sl_13_reg_4080_pp0_iter1_reg;
        sl_14_reg_4087_pp0_iter2_reg <= sl_14_reg_4087_pp0_iter1_reg;
        sl_8_reg_3998_pp0_iter2_reg <= sl_8_reg_3998_pp0_iter1_reg;
        tmp_4_reg_4029_pp0_iter2_reg <= tmp_4_reg_4029_pp0_iter1_reg;
        tmp_5_reg_4035_pp0_iter2_reg <= tmp_5_reg_4035_pp0_iter1_reg;
        tmp_7_reg_4047_pp0_iter2_reg <= tmp_7_reg_4047_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln132_reg_3994 <= icmp_ln132_fu_1603_p2;
        icmp_ln132_reg_3994_pp0_iter1_reg <= icmp_ln132_reg_3994;
        sext_ln135_14_reg_4120 <= sext_ln135_14_fu_2987_p1;
        sext_ln135_5_reg_4112 <= sext_ln135_5_fu_2984_p1;
        sext_ln137_reg_4128 <= sext_ln137_fu_2990_p1;
        sext_ln139_1_reg_4100 <= sext_ln139_1_fu_2978_p1;
        sext_ln141_reg_4107 <= sext_ln141_fu_2981_p1;
        sl_10_reg_4059 <= sl_10_fu_2458_p41;
        sl_10_reg_4059_pp0_iter1_reg <= sl_10_reg_4059;
        sl_11_reg_4066 <= sl_11_fu_2542_p41;
        sl_11_reg_4066_pp0_iter1_reg <= sl_11_reg_4066;
        sl_12_reg_4073 <= sl_12_fu_2626_p41;
        sl_12_reg_4073_pp0_iter1_reg <= sl_12_reg_4073;
        sl_13_reg_4080 <= sl_13_fu_2710_p41;
        sl_13_reg_4080_pp0_iter1_reg <= sl_13_reg_4080;
        sl_14_reg_4087 <= sl_14_fu_2794_p41;
        sl_14_reg_4087_pp0_iter1_reg <= sl_14_reg_4087;
        sl_15_reg_4094 <= sl_15_fu_2878_p41;
        sl_15_reg_4094_pp0_iter1_reg <= sl_15_reg_4094;
        sl_8_reg_3998 <= sl_8_fu_1618_p41;
        sl_8_reg_3998_pp0_iter1_reg <= sl_8_reg_3998;
        sl_9_reg_4052 <= sl_9_fu_2374_p41;
        sl_9_reg_4052_pp0_iter1_reg <= sl_9_reg_4052;
        tmp_1_reg_4011 <= tmp_1_fu_1786_p41;
        tmp_1_reg_4011_pp0_iter1_reg <= tmp_1_reg_4011;
        tmp_2_reg_4017 <= tmp_2_fu_1870_p41;
        tmp_2_reg_4017_pp0_iter1_reg <= tmp_2_reg_4017;
        tmp_3_reg_4023 <= tmp_3_fu_1954_p41;
        tmp_3_reg_4023_pp0_iter1_reg <= tmp_3_reg_4023;
        tmp_4_reg_4029 <= tmp_4_fu_2038_p41;
        tmp_4_reg_4029_pp0_iter1_reg <= tmp_4_reg_4029;
        tmp_5_reg_4035 <= tmp_5_fu_2122_p41;
        tmp_5_reg_4035_pp0_iter1_reg <= tmp_5_reg_4035;
        tmp_6_reg_4041 <= tmp_6_fu_2206_p41;
        tmp_6_reg_4041_pp0_iter1_reg <= tmp_6_reg_4041;
        tmp_7_reg_4047 <= tmp_7_fu_2290_p41;
        tmp_7_reg_4047_pp0_iter1_reg <= tmp_7_reg_4047;
        tmp_s_reg_4005 <= tmp_s_fu_1702_p41;
        tmp_s_reg_4005_pp0_iter1_reg <= tmp_s_reg_4005;
    end
end
always @ (*) begin
    if (((icmp_ln132_fu_1603_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_4 = 8'd8;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_428;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_idx_load = 8'd0;
    end else begin
        ap_sig_allocacmp_idx_load = idx_fu_424;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd0))) begin
        p_out1_ap_vld = 1'b1;
    end else begin
        p_out1_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd0))) begin
        p_out2_ap_vld = 1'b1;
    end else begin
        p_out2_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd0))) begin
        p_out3_ap_vld = 1'b1;
    end else begin
        p_out3_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd0))) begin
        p_out4_ap_vld = 1'b1;
    end else begin
        p_out4_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd0))) begin
        p_out5_ap_vld = 1'b1;
    end else begin
        p_out5_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd0))) begin
        p_out6_ap_vld = 1'b1;
    end else begin
        p_out6_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd0))) begin
        p_out7_ap_vld = 1'b1;
    end else begin
        p_out7_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd0))) begin
        p_out8_ap_vld = 1'b1;
    end else begin
        p_out8_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_3994_pp0_iter6_reg == 1'd0))) begin
        p_out_ap_vld = 1'b1;
    end else begin
        p_out_ap_vld = 1'b0;
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
assign add_ln135_fu_1612_p2 = (ap_sig_allocacmp_idx_load + 8'd8);
assign add_ln137_2_fu_3219_p2 = ($signed(sext_ln137_11_fu_3216_p1) + $signed(sext_ln137_10_fu_3213_p1));
assign add_ln137_5_fu_3231_p2 = ($signed(sext_ln137_14_fu_3228_p1) + $signed(sext_ln137_13_fu_3225_p1));
assign add_ln137_6_fu_3303_p2 = ($signed(sext_ln137_15_fu_3300_p1) + $signed(sext_ln137_12_fu_3297_p1));
assign add_ln137_7_fu_3480_p2 = ($signed(empty_fu_432) + $signed(sext_ln137_16_fu_3477_p1));
assign add_ln138_3_fu_3315_p2 = ($signed(sext_ln138_6_fu_3312_p1) + $signed(sext_ln138_5_fu_3309_p1));
assign add_ln138_4_fu_3489_p2 = ($signed(empty_407_fu_436) + $signed(sext_ln138_7_fu_3486_p1));
assign add_ln139_2_fu_3327_p2 = ($signed(sext_ln139_4_fu_3324_p1) + $signed(sext_ln139_3_fu_3321_p1));
assign add_ln139_3_fu_3498_p2 = ($signed(empty_408_fu_440) + $signed(sext_ln139_5_fu_3495_p1));
assign add_ln140_3_fu_3339_p2 = ($signed(sext_ln140_5_fu_3336_p1) + $signed(sext_ln140_4_fu_3333_p1));
assign add_ln140_4_fu_3507_p2 = ($signed(empty_409_fu_444) + $signed(sext_ln140_6_fu_3504_p1));
assign add_ln141_3_fu_3351_p2 = ($signed(sext_ln141_5_fu_3348_p1) + $signed(sext_ln141_4_fu_3345_p1));
assign add_ln141_4_fu_3516_p2 = ($signed(empty_410_fu_448) + $signed(sext_ln141_6_fu_3513_p1));
assign add_ln142_3_fu_3363_p2 = ($signed(sext_ln142_5_fu_3360_p1) + $signed(sext_ln142_4_fu_3357_p1));
assign add_ln142_4_fu_3525_p2 = ($signed(empty_411_fu_452) + $signed(sext_ln142_6_fu_3522_p1));
assign add_ln143_5_fu_3375_p2 = ($signed(sext_ln143_9_fu_3372_p1) + $signed(sext_ln143_8_fu_3369_p1));
assign add_ln143_6_fu_3534_p2 = ($signed(empty_412_fu_456) + $signed(sext_ln143_10_fu_3531_p1));
assign add_ln144_4_fu_3267_p2 = ($signed(sext_ln144_9_fu_3264_p1) + $signed(sext_ln144_8_fu_3261_p1));
assign add_ln144_5_fu_3387_p2 = ($signed(sext_ln144_10_fu_3384_p1) + $signed(sext_ln144_7_fu_3381_p1));
assign add_ln144_6_fu_3543_p2 = ($signed(empty_413_fu_460) + $signed(sext_ln144_11_fu_3540_p1));
assign add_ln145_2_fu_3279_p2 = ($signed(sext_ln145_11_fu_3276_p1) + $signed(sext_ln145_10_fu_3273_p1));
assign add_ln145_5_fu_3291_p2 = ($signed(sext_ln145_14_fu_3288_p1) + $signed(sext_ln145_13_fu_3285_p1));
assign add_ln145_6_fu_3399_p2 = ($signed(sext_ln145_15_fu_3396_p1) + $signed(sext_ln145_12_fu_3393_p1));
assign add_ln145_7_fu_3552_p2 = ($signed(empty_414_fu_464) + $signed(sext_ln145_16_fu_3549_p1));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3603_p2 = sext_ln135_5_fu_2984_p1;
assign grp_fu_3612_p2 = sext_ln135_5_fu_2984_p1;
assign grp_fu_3621_p0 = sext_ln137_1_fu_3059_p1;
assign grp_fu_3621_p1 = sext_ln137_1_fu_3059_p1;
assign grp_fu_3630_p0 = sext_ln135_15_fu_3053_p1;
assign grp_fu_3630_p1 = sext_ln135_15_fu_3053_p1;
assign grp_fu_3639_p0 = sext_ln135_3_fu_3032_p1;
assign grp_fu_3639_p1 = sext_ln135_3_fu_3032_p1;
assign grp_fu_3648_p0 = sext_ln135_9_fu_3041_p1;
assign grp_fu_3648_p1 = sext_ln135_9_fu_3041_p1;
assign grp_fu_3657_p0 = sext_ln135_14_reg_4120;
assign grp_fu_3657_p2 = sext_ln135_11_fu_3047_p1;
assign grp_fu_3665_p0 = sext_ln135_2_fu_3029_p1;
assign grp_fu_3665_p1 = sext_ln139_1_reg_4100;
assign grp_fu_3665_p2 = sext_ln138_1_fu_2993_p1;
assign grp_fu_3673_p0 = sext_ln135_16_fu_3056_p1;
assign grp_fu_3673_p1 = sext_ln135_4_fu_3035_p1;
assign grp_fu_3673_p2 = sext_ln135_11_fu_3047_p1;
assign grp_fu_3682_p0 = sext_ln135_4_fu_3035_p1;
assign grp_fu_3682_p1 = sext_ln140_1_fu_3002_p1;
assign grp_fu_3682_p2 = sext_ln138_1_fu_2993_p1;
assign grp_fu_3691_p0 = sext_ln137_reg_4128;
assign grp_fu_3691_p1 = sext_ln135_2_fu_3029_p1;
assign grp_fu_3691_p2 = sext_ln135_11_fu_3047_p1;
assign grp_fu_3700_p0 = sext_ln135_16_fu_3056_p1;
assign grp_fu_3700_p1 = sext_ln140_1_fu_3002_p1;
assign grp_fu_3700_p2 = sext_ln135_5_reg_4112;
assign grp_fu_3708_p1 = sext_ln142_1_fu_3011_p1;
assign grp_fu_3708_p2 = sext_ln138_1_fu_2993_p1;
assign grp_fu_3717_p0 = sext_ln135_16_fu_3056_p1;
assign grp_fu_3717_p1 = sext_ln142_1_fu_3011_p1;
assign grp_fu_3727_p1 = sext_ln140_fu_2999_p1;
assign grp_fu_3735_p0 = sext_ln135_16_fu_3056_p1;
assign grp_fu_3735_p2 = sext_ln138_1_fu_2993_p1;
assign grp_fu_3745_p0 = sext_ln135_15_fu_3053_p1;
assign grp_fu_3745_p1 = sext_ln140_fu_2999_p1;
assign grp_fu_3754_p0 = sext_ln135_9_fu_3041_p1;
assign grp_fu_3762_p0 = sext_ln137_reg_4128;
assign grp_fu_3762_p2 = sext_ln138_1_fu_2993_p1;
assign grp_fu_3772_p0 = sext_ln137_1_fu_3059_p1;
assign grp_fu_3772_p1 = sext_ln139_fu_2996_p1;
assign grp_fu_3781_p0 = sext_ln135_15_fu_3053_p1;
assign grp_fu_3790_p0 = sext_ln135_3_fu_3032_p1;
assign grp_fu_3799_p0 = sext_ln135_9_fu_3041_p1;
assign grp_fu_3808_p0 = sext_ln135_8_reg_4212;
assign grp_fu_3808_p1 = sext_ln135_2_reg_4198;
assign grp_fu_3808_p2 = sext_ln135_5_reg_4112_pp0_iter2_reg;
assign grp_fu_3816_p0 = sext_ln137_reg_4128_pp0_iter2_reg;
assign grp_fu_3816_p1 = sext_ln135_14_reg_4120_pp0_iter2_reg;
assign grp_fu_3825_p0 = sext_ln137_reg_4128_pp0_iter2_reg;
assign grp_fu_3825_p1 = sext_ln135_8_reg_4212;
assign grp_fu_3834_p0 = sext_ln135_8_reg_4212;
assign grp_fu_3834_p1 = sext_ln139_1_reg_4100_pp0_iter2_reg;
assign grp_fu_3834_p2 = sext_ln135_1_reg_4190;
assign grp_fu_3842_p0 = sext_ln135_3_reg_4203;
assign grp_fu_3842_p1 = sext_ln140_reg_4155;
assign grp_fu_3849_p0 = sext_ln135_16_reg_4254;
assign grp_fu_3849_p2 = sext_ln135_7_fu_3086_p1;
assign grp_fu_3859_p0 = sext_ln135_14_reg_4120_pp0_iter2_reg;
assign grp_fu_3859_p1 = sext_ln141_reg_4107_pp0_iter2_reg;
assign grp_fu_3859_p2 = sext_ln135_1_reg_4190;
assign grp_fu_3867_p0 = sext_ln137_reg_4128_pp0_iter2_reg;
assign grp_fu_3867_p1 = sext_ln139_1_reg_4100_pp0_iter2_reg;
assign grp_fu_3867_p2 = sext_ln135_7_fu_3086_p1;
assign grp_fu_3876_p0 = sext_ln135_12_reg_4236;
assign grp_fu_3876_p1 = sext_ln139_reg_4148;
assign grp_fu_3883_p0 = sext_ln135_14_reg_4120_pp0_iter2_reg;
assign grp_fu_3883_p1 = sext_ln143_1_fu_3074_p1;
assign grp_fu_3883_p2 = sext_ln138_1_reg_4138;
assign grp_fu_3892_p0 = sext_ln135_6_fu_3083_p1;
assign grp_fu_3892_p1 = sext_ln142_reg_4172;
assign grp_fu_3900_p0 = sext_ln137_reg_4128_pp0_iter2_reg;
assign grp_fu_3900_p1 = sext_ln143_1_fu_3074_p1;
assign grp_fu_3900_p2 = sext_ln135_1_reg_4190;
assign grp_fu_3909_p0 = sext_ln135_3_reg_4203;
assign grp_fu_3909_p1 = sext_ln144_fu_3077_p1;
assign i_5_fu_2962_p2 = (ap_sig_allocacmp_i_4 + 8'd8);
assign icmp_ln132_fu_1603_p2 = ((ap_sig_allocacmp_i_4 < 8'd160) ? 1'b1 : 1'b0);
assign mul_ln137_2_fu_3102_p0 = sext_ln135_18_fu_3095_p1;
assign mul_ln137_2_fu_3102_p1 = sext_ln135_18_fu_3095_p1;
assign mul_ln137_3_fu_3108_p0 = sext_ln138_2_fu_3071_p1;
assign mul_ln137_3_fu_3108_p1 = sext_ln138_2_fu_3071_p1;
assign mul_ln137_6_fu_3114_p0 = sext_ln135_6_fu_3083_p1;
assign mul_ln137_6_fu_3114_p1 = sext_ln135_6_fu_3083_p1;
assign mul_ln137_fu_3098_p0 = sext_ln135_12_reg_4236;
assign mul_ln137_fu_3098_p1 = sext_ln135_12_reg_4236;
assign mul_ln140_fu_3120_p0 = sext_ln141_1_reg_4164;
assign mul_ln140_fu_3120_p1 = sext_ln138_2_fu_3071_p1;
assign mul_ln142_1_fu_3125_p0 = sext_ln135_9_reg_4219;
assign mul_ln142_1_fu_3125_p1 = sext_ln140_reg_4155;
assign mul_ln143_1_fu_3062_p0 = sext_ln135_15_fu_3053_p1;
assign mul_ln143_1_fu_3062_p1 = sext_ln139_fu_2996_p1;
assign mul_ln143_3_fu_3129_p0 = sext_ln135_9_reg_4219;
assign mul_ln143_3_fu_3129_p1 = sext_ln141_1_reg_4164;
assign mul_ln144_1_fu_3137_p0 = sext_ln135_18_fu_3095_p1;
assign mul_ln144_1_fu_3137_p1 = sext_ln139_reg_4148;
assign mul_ln144_4_fu_3142_p0 = sext_ln135_6_fu_3083_p1;
assign mul_ln144_4_fu_3142_p1 = sext_ln143_reg_4179;
assign mul_ln144_fu_3133_p0 = sext_ln135_12_reg_4236;
assign mul_ln144_fu_3133_p1 = sext_ln141_1_reg_4164;
assign mul_ln145_2_fu_3151_p0 = sext_ln135_18_fu_3095_p1;
assign mul_ln145_2_fu_3151_p1 = sext_ln140_reg_4155;
assign mul_ln145_3_fu_3156_p1 = sext_ln138_2_fu_3071_p1;
assign mul_ln145_6_fu_3162_p0 = sext_ln135_6_fu_3083_p1;
assign mul_ln145_6_fu_3162_p1 = sext_ln144_fu_3077_p1;
assign mul_ln145_fu_3147_p0 = sext_ln135_12_reg_4236;
assign mul_ln145_fu_3147_p1 = sext_ln142_reg_4172;
assign p_out = empty_414_fu_464[62:0];
assign p_out1 = empty_413_fu_460[62:0];
assign p_out2 = empty_412_fu_456[62:0];
assign p_out3 = empty_411_fu_452[62:0];
assign p_out4 = empty_410_fu_448[62:0];
assign p_out5 = empty_409_fu_444[62:0];
assign p_out6 = empty_408_fu_440[62:0];
assign p_out7 = empty_407_fu_436[62:0];
assign p_out8 = empty_fu_432[62:0];
assign sext_ln135_11_fu_3047_p1 = sl_12_reg_4073_pp0_iter1_reg;
assign sext_ln135_12_fu_3050_p1 = sl_12_reg_4073_pp0_iter1_reg;
assign sext_ln135_14_fu_2987_p1 = sl_13_reg_4080;
assign sext_ln135_15_fu_3053_p1 = sl_13_reg_4080_pp0_iter1_reg;
assign sext_ln135_16_fu_3056_p1 = sl_14_reg_4087_pp0_iter1_reg;
assign sext_ln135_18_fu_3095_p1 = sl_14_reg_4087_pp0_iter2_reg;
assign sext_ln135_1_fu_3026_p1 = sl_9_reg_4052_pp0_iter1_reg;
assign sext_ln135_2_fu_3029_p1 = sl_9_reg_4052_pp0_iter1_reg;
assign sext_ln135_3_fu_3032_p1 = sl_9_reg_4052_pp0_iter1_reg;
assign sext_ln135_4_fu_3035_p1 = sl_10_reg_4059_pp0_iter1_reg;
assign sext_ln135_5_fu_2984_p1 = sl_10_reg_4059;
assign sext_ln135_6_fu_3083_p1 = sl_10_reg_4059_pp0_iter2_reg;
assign sext_ln135_7_fu_3086_p1 = sl_11_reg_4066_pp0_iter2_reg;
assign sext_ln135_8_fu_3038_p1 = sl_11_reg_4066_pp0_iter1_reg;
assign sext_ln135_9_fu_3041_p1 = sl_11_reg_4066_pp0_iter1_reg;
assign sext_ln137_10_fu_3213_p1 = grp_fu_3639_p3;
assign sext_ln137_11_fu_3216_p1 = grp_fu_3648_p3;
assign sext_ln137_12_fu_3297_p1 = $signed(add_ln137_2_reg_4442);
assign sext_ln137_13_fu_3225_p1 = grp_fu_3630_p3;
assign sext_ln137_14_fu_3228_p1 = grp_fu_3621_p3;
assign sext_ln137_15_fu_3300_p1 = $signed(add_ln137_5_reg_4447);
assign sext_ln137_16_fu_3477_p1 = $signed(add_ln137_6_reg_4532);
assign sext_ln137_1_fu_3059_p1 = sl_15_reg_4094_pp0_iter1_reg;
assign sext_ln137_fu_2990_p1 = sl_15_reg_4094;
assign sext_ln138_1_fu_2993_p1 = sl_8_reg_3998_pp0_iter1_reg;
assign sext_ln138_2_fu_3071_p1 = sl_8_reg_3998_pp0_iter2_reg;
assign sext_ln138_5_fu_3309_p1 = grp_fu_3808_p4;
assign sext_ln138_6_fu_3312_p1 = grp_fu_3816_p4;
assign sext_ln138_7_fu_3486_p1 = $signed(add_ln138_3_reg_4537);
assign sext_ln139_1_fu_2978_p1 = tmp_s_reg_4005;
assign sext_ln139_3_fu_3321_p1 = grp_fu_3834_p4;
assign sext_ln139_4_fu_3324_p1 = grp_fu_3825_p4;
assign sext_ln139_5_fu_3495_p1 = $signed(add_ln139_2_reg_4542);
assign sext_ln139_fu_2996_p1 = tmp_s_reg_4005_pp0_iter1_reg;
assign sext_ln140_1_fu_3002_p1 = tmp_1_reg_4011_pp0_iter1_reg;
assign sext_ln140_4_fu_3333_p1 = grp_fu_3842_p3;
assign sext_ln140_5_fu_3336_p1 = grp_fu_3849_p4;
assign sext_ln140_6_fu_3504_p1 = $signed(add_ln140_3_reg_4547);
assign sext_ln140_fu_2999_p1 = tmp_1_reg_4011_pp0_iter1_reg;
assign sext_ln141_1_fu_3005_p1 = tmp_2_reg_4017_pp0_iter1_reg;
assign sext_ln141_4_fu_3345_p1 = grp_fu_3859_p4;
assign sext_ln141_5_fu_3348_p1 = grp_fu_3867_p4;
assign sext_ln141_6_fu_3513_p1 = $signed(add_ln141_3_reg_4552);
assign sext_ln141_fu_2981_p1 = tmp_2_reg_4017;
assign sext_ln142_1_fu_3011_p1 = tmp_3_reg_4023_pp0_iter1_reg;
assign sext_ln142_4_fu_3357_p1 = grp_fu_3876_p3;
assign sext_ln142_5_fu_3360_p1 = grp_fu_3883_p4;
assign sext_ln142_6_fu_3522_p1 = $signed(add_ln142_3_reg_4557);
assign sext_ln142_fu_3008_p1 = tmp_3_reg_4023_pp0_iter1_reg;
assign sext_ln143_10_fu_3531_p1 = $signed(add_ln143_5_reg_4562);
assign sext_ln143_1_fu_3074_p1 = tmp_4_reg_4029_pp0_iter2_reg;
assign sext_ln143_8_fu_3369_p1 = grp_fu_3892_p3;
assign sext_ln143_9_fu_3372_p1 = grp_fu_3900_p4;
assign sext_ln143_fu_3014_p1 = tmp_4_reg_4029_pp0_iter1_reg;
assign sext_ln144_10_fu_3384_p1 = $signed(add_ln144_4_reg_4517);
assign sext_ln144_11_fu_3540_p1 = $signed(add_ln144_5_reg_4567);
assign sext_ln144_7_fu_3381_p1 = grp_fu_3909_p3;
assign sext_ln144_8_fu_3261_p1 = grp_fu_3745_p3;
assign sext_ln144_9_fu_3264_p1 = grp_fu_3762_p4;
assign sext_ln144_fu_3077_p1 = tmp_5_reg_4035_pp0_iter2_reg;
assign sext_ln145_10_fu_3273_p1 = grp_fu_3790_p3;
assign sext_ln145_11_fu_3276_p1 = grp_fu_3799_p3;
assign sext_ln145_12_fu_3393_p1 = $signed(add_ln145_2_reg_4522);
assign sext_ln145_13_fu_3285_p1 = grp_fu_3781_p3;
assign sext_ln145_14_fu_3288_p1 = grp_fu_3772_p3;
assign sext_ln145_15_fu_3396_p1 = $signed(add_ln145_5_reg_4527);
assign sext_ln145_16_fu_3549_p1 = $signed(add_ln145_6_reg_4572);
assign sl_10_fu_2458_p39 = 'bx;
assign sl_11_fu_2542_p39 = 'bx;
assign sl_12_fu_2626_p39 = 'bx;
assign sl_13_fu_2710_p39 = 'bx;
assign sl_14_fu_2794_p39 = 'bx;
assign sl_15_fu_2878_p39 = 'bx;
assign sl_8_fu_1618_p39 = 'bx;
assign sl_9_fu_2374_p39 = 'bx;
assign tmp_1_fu_1786_p39 = 'bx;
assign tmp_2_fu_1870_p39 = 'bx;
assign tmp_3_fu_1954_p39 = 'bx;
assign tmp_4_fu_2038_p39 = 'bx;
assign tmp_5_fu_2122_p39 = 'bx;
assign tmp_6_fu_2206_p39 = 'bx;
assign tmp_7_fu_2290_p39 = 'bx;
assign tmp_s_fu_1702_p39 = 'bx;
endmodule 
