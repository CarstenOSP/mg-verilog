
module Gsm_LPC_Analysis_Autocorrelation_16_17_Pipeline_autocol_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,L_ACF_8_load,add_ln130,add_ln129,add_ln128,add_ln127,add_ln126,add_ln125,add_ln124,add_ln123_3,s_8_load_2,s_10_load_2,s_12_load_2,s_14_load_2,s_16_load_2,s_18_load_2,s_20_load_2,s_22_load_2,s_24_load_2,s_26_load_2,s_28_load_2,s_30_load_2,s_32_load_2,s_34_load_2,s_36_load_2,s_38_load_2,s_40_load_2,s_42_load_2,s_44_load_2,s_46_load_2,s_48_load_2,s_50_load_2,s_52_load_2,s_54_load_2,s_56_load_2,s_58_load_2,s_60_load_2,s_62_load_2,s_64_load_2,s_66_load_2,s_68_load_2,s_70_load_2,s_72_load_2,s_74_load_2,s_76_load_2,s_78_load_2,s_80_load_2,s_82_load_2,s_84_load_2,s_86_load_2,s_88_load_2,s_90_load_2,s_92_load_2,s_94_load_2,s_96_load_2,s_98_load_2,s_100_load_2,s_102_load_2,s_104_load_2,s_106_load_2,s_108_load_2,s_110_load_2,s_112_load_2,s_114_load_2,s_116_load_2,s_118_load_2,s_120_load_2,s_122_load_2,s_124_load_2,s_126_load_2,s_128_load_2,s_130_load_2,s_132_load_2,s_134_load_2,s_136_load_2,s_138_load_2,s_140_load_2,s_142_load_2,s_144_load_2,s_146_load_2,s_148_load_2,s_150_load_2,s_152_load_2,s_154_load_2,s_156_load_2,s_158_load_2,sl_7,s_9_load_2,s_11_load_2,s_13_load_2,s_15_load_2,s_17_load_2,s_19_load_2,s_21_load_2,s_23_load_2,s_25_load_2,s_27_load_2,s_29_load_2,s_31_load_2,s_33_load_2,s_35_load_2,s_37_load_2,s_39_load_2,s_41_load_2,s_43_load_2,s_45_load_2,s_47_load_2,s_49_load_2,s_51_load_2,s_53_load_2,s_55_load_2,s_57_load_2,s_59_load_2,s_61_load_2,s_63_load_2,s_65_load_2,s_67_load_2,s_69_load_2,s_71_load_2,s_73_load_2,s_75_load_2,s_77_load_2,s_79_load_2,s_81_load_2,s_83_load_2,s_85_load_2,s_87_load_2,s_89_load_2,s_91_load_2,s_93_load_2,s_95_load_2,s_97_load_2,s_99_load_2,s_101_load_2,s_103_load_2,s_105_load_2,s_107_load_2,s_109_load_2,s_111_load_2,s_113_load_2,s_115_load_2,s_117_load_2,s_119_load_2,s_121_load_2,s_123_load_2,s_125_load_2,s_127_load_2,s_129_load_2,s_131_load_2,s_133_load_2,s_135_load_2,s_137_load_2,s_139_load_2,s_141_load_2,s_143_load_2,s_145_load_2,s_147_load_2,s_149_load_2,s_151_load_2,s_153_load_2,s_155_load_2,s_157_load_2,sl_6,sl_5,sl_4,sl_3,sl_2,sl_1,sl,s_159_load_2,p_out,p_out_ap_vld,p_out1,p_out1_ap_vld,p_out2,p_out2_ap_vld,p_out3,p_out3_ap_vld,p_out4,p_out4_ap_vld,p_out5,p_out5_ap_vld,p_out6,p_out6_ap_vld,p_out7,p_out7_ap_vld,p_out8,p_out8_ap_vld);  
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
input  [15:0] s_10_load_2;
input  [15:0] s_12_load_2;
input  [15:0] s_14_load_2;
input  [15:0] s_16_load_2;
input  [15:0] s_18_load_2;
input  [15:0] s_20_load_2;
input  [15:0] s_22_load_2;
input  [15:0] s_24_load_2;
input  [15:0] s_26_load_2;
input  [15:0] s_28_load_2;
input  [15:0] s_30_load_2;
input  [15:0] s_32_load_2;
input  [15:0] s_34_load_2;
input  [15:0] s_36_load_2;
input  [15:0] s_38_load_2;
input  [15:0] s_40_load_2;
input  [15:0] s_42_load_2;
input  [15:0] s_44_load_2;
input  [15:0] s_46_load_2;
input  [15:0] s_48_load_2;
input  [15:0] s_50_load_2;
input  [15:0] s_52_load_2;
input  [15:0] s_54_load_2;
input  [15:0] s_56_load_2;
input  [15:0] s_58_load_2;
input  [15:0] s_60_load_2;
input  [15:0] s_62_load_2;
input  [15:0] s_64_load_2;
input  [15:0] s_66_load_2;
input  [15:0] s_68_load_2;
input  [15:0] s_70_load_2;
input  [15:0] s_72_load_2;
input  [15:0] s_74_load_2;
input  [15:0] s_76_load_2;
input  [15:0] s_78_load_2;
input  [15:0] s_80_load_2;
input  [15:0] s_82_load_2;
input  [15:0] s_84_load_2;
input  [15:0] s_86_load_2;
input  [15:0] s_88_load_2;
input  [15:0] s_90_load_2;
input  [15:0] s_92_load_2;
input  [15:0] s_94_load_2;
input  [15:0] s_96_load_2;
input  [15:0] s_98_load_2;
input  [15:0] s_100_load_2;
input  [15:0] s_102_load_2;
input  [15:0] s_104_load_2;
input  [15:0] s_106_load_2;
input  [15:0] s_108_load_2;
input  [15:0] s_110_load_2;
input  [15:0] s_112_load_2;
input  [15:0] s_114_load_2;
input  [15:0] s_116_load_2;
input  [15:0] s_118_load_2;
input  [15:0] s_120_load_2;
input  [15:0] s_122_load_2;
input  [15:0] s_124_load_2;
input  [15:0] s_126_load_2;
input  [15:0] s_128_load_2;
input  [15:0] s_130_load_2;
input  [15:0] s_132_load_2;
input  [15:0] s_134_load_2;
input  [15:0] s_136_load_2;
input  [15:0] s_138_load_2;
input  [15:0] s_140_load_2;
input  [15:0] s_142_load_2;
input  [15:0] s_144_load_2;
input  [15:0] s_146_load_2;
input  [15:0] s_148_load_2;
input  [15:0] s_150_load_2;
input  [15:0] s_152_load_2;
input  [15:0] s_154_load_2;
input  [15:0] s_156_load_2;
input  [15:0] s_158_load_2;
input  [15:0] sl_7;
input  [15:0] s_9_load_2;
input  [15:0] s_11_load_2;
input  [15:0] s_13_load_2;
input  [15:0] s_15_load_2;
input  [15:0] s_17_load_2;
input  [15:0] s_19_load_2;
input  [15:0] s_21_load_2;
input  [15:0] s_23_load_2;
input  [15:0] s_25_load_2;
input  [15:0] s_27_load_2;
input  [15:0] s_29_load_2;
input  [15:0] s_31_load_2;
input  [15:0] s_33_load_2;
input  [15:0] s_35_load_2;
input  [15:0] s_37_load_2;
input  [15:0] s_39_load_2;
input  [15:0] s_41_load_2;
input  [15:0] s_43_load_2;
input  [15:0] s_45_load_2;
input  [15:0] s_47_load_2;
input  [15:0] s_49_load_2;
input  [15:0] s_51_load_2;
input  [15:0] s_53_load_2;
input  [15:0] s_55_load_2;
input  [15:0] s_57_load_2;
input  [15:0] s_59_load_2;
input  [15:0] s_61_load_2;
input  [15:0] s_63_load_2;
input  [15:0] s_65_load_2;
input  [15:0] s_67_load_2;
input  [15:0] s_69_load_2;
input  [15:0] s_71_load_2;
input  [15:0] s_73_load_2;
input  [15:0] s_75_load_2;
input  [15:0] s_77_load_2;
input  [15:0] s_79_load_2;
input  [15:0] s_81_load_2;
input  [15:0] s_83_load_2;
input  [15:0] s_85_load_2;
input  [15:0] s_87_load_2;
input  [15:0] s_89_load_2;
input  [15:0] s_91_load_2;
input  [15:0] s_93_load_2;
input  [15:0] s_95_load_2;
input  [15:0] s_97_load_2;
input  [15:0] s_99_load_2;
input  [15:0] s_101_load_2;
input  [15:0] s_103_load_2;
input  [15:0] s_105_load_2;
input  [15:0] s_107_load_2;
input  [15:0] s_109_load_2;
input  [15:0] s_111_load_2;
input  [15:0] s_113_load_2;
input  [15:0] s_115_load_2;
input  [15:0] s_117_load_2;
input  [15:0] s_119_load_2;
input  [15:0] s_121_load_2;
input  [15:0] s_123_load_2;
input  [15:0] s_125_load_2;
input  [15:0] s_127_load_2;
input  [15:0] s_129_load_2;
input  [15:0] s_131_load_2;
input  [15:0] s_133_load_2;
input  [15:0] s_135_load_2;
input  [15:0] s_137_load_2;
input  [15:0] s_139_load_2;
input  [15:0] s_141_load_2;
input  [15:0] s_143_load_2;
input  [15:0] s_145_load_2;
input  [15:0] s_147_load_2;
input  [15:0] s_149_load_2;
input  [15:0] s_151_load_2;
input  [15:0] s_153_load_2;
input  [15:0] s_155_load_2;
input  [15:0] s_157_load_2;
input  [15:0] sl_6;
input  [15:0] sl_5;
input  [15:0] sl_4;
input  [15:0] sl_3;
input  [15:0] sl_2;
input  [15:0] sl_1;
input  [15:0] sl;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln132_fu_1717_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln132_reg_5329;
reg   [0:0] icmp_ln132_reg_5329_pp0_iter1_reg;
reg   [0:0] icmp_ln132_reg_5329_pp0_iter2_reg;
reg   [0:0] icmp_ln132_reg_5329_pp0_iter3_reg;
wire  signed [15:0] sl_8_fu_1726_p155;
reg  signed [15:0] sl_8_reg_5333;
wire  signed [31:0] sext_ln138_1_fu_2038_p1;
wire  signed [15:0] tmp_s_fu_2042_p155;
reg  signed [15:0] tmp_s_reg_5351;
wire  signed [31:0] sext_ln140_fu_2666_p1;
reg  signed [31:0] sext_ln140_reg_5357;
wire  signed [31:0] sext_ln141_fu_2982_p1;
reg  signed [31:0] sext_ln141_reg_5363;
wire  signed [31:0] sext_ln142_fu_3298_p1;
reg  signed [31:0] sext_ln142_reg_5369;
wire  signed [31:0] sext_ln143_fu_3614_p1;
reg  signed [31:0] sext_ln143_reg_5375;
wire  signed [31:0] sext_ln144_fu_3936_p1;
reg  signed [31:0] sext_ln144_reg_5381;
wire  signed [31:0] sext_ln145_fu_4252_p1;
reg  signed [31:0] sext_ln145_reg_5387;
wire  signed [15:0] sl_9_fu_4572_p155;
reg  signed [15:0] sl_9_reg_5398;
wire   [31:0] mul_ln137_1_fu_4915_p2;
reg  signed [31:0] mul_ln137_1_reg_5409;
wire   [31:0] mul_ln139_1_fu_4921_p2;
reg  signed [31:0] mul_ln139_1_reg_5414;
wire   [31:0] mul_ln140_1_fu_4927_p2;
reg  signed [31:0] mul_ln140_1_reg_5419;
wire   [31:0] mul_ln141_1_fu_4932_p2;
reg  signed [31:0] mul_ln141_1_reg_5424;
wire   [31:0] mul_ln142_1_fu_4937_p2;
reg  signed [31:0] mul_ln142_1_reg_5429;
wire   [31:0] mul_ln143_1_fu_4942_p2;
reg  signed [31:0] mul_ln143_1_reg_5434;
wire   [31:0] mul_ln144_1_fu_4947_p2;
reg  signed [31:0] mul_ln144_1_reg_5439;
wire   [31:0] mul_ln145_1_fu_4952_p2;
reg  signed [31:0] mul_ln145_1_reg_5444;
wire  signed [32:0] grp_fu_5179_p3;
reg  signed [32:0] add_ln137_reg_5489;
wire  signed [32:0] grp_fu_5187_p3;
reg  signed [32:0] add_ln139_reg_5494;
wire  signed [32:0] grp_fu_5195_p3;
reg  signed [32:0] add_ln140_reg_5499;
wire  signed [32:0] grp_fu_5203_p3;
reg  signed [32:0] add_ln141_reg_5504;
wire  signed [32:0] grp_fu_5211_p3;
reg  signed [32:0] add_ln142_reg_5509;
wire  signed [32:0] grp_fu_5219_p3;
reg  signed [32:0] add_ln143_1_reg_5514;
wire  signed [32:0] grp_fu_5227_p3;
reg  signed [32:0] add_ln144_reg_5519;
wire  signed [32:0] grp_fu_5235_p3;
reg  signed [32:0] add_ln145_reg_5524;
reg   [7:0] idx_fu_538;
wire   [7:0] add_ln143_fu_3618_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_idx_load;
wire    ap_block_pp0_stage0;
reg   [7:0] i_fu_542;
wire   [7:0] i_5_fu_4884_p2;
reg   [7:0] ap_sig_allocacmp_i_4;
reg   [63:0] empty_fu_546;
wire   [63:0] add_ln137_1_fu_5056_p2;
reg   [63:0] empty_510_fu_550;
wire   [63:0] add_ln138_fu_5065_p2;
reg   [63:0] empty_511_fu_554;
wire   [63:0] add_ln139_1_fu_5074_p2;
reg   [63:0] empty_512_fu_558;
wire   [63:0] add_ln140_1_fu_5083_p2;
reg   [63:0] empty_513_fu_562;
wire   [63:0] add_ln141_1_fu_5092_p2;
reg   [63:0] empty_514_fu_566;
wire   [63:0] add_ln142_1_fu_5101_p2;
reg   [63:0] empty_515_fu_570;
wire   [63:0] add_ln143_2_fu_5110_p2;
reg   [63:0] empty_516_fu_574;
wire   [63:0] add_ln144_1_fu_5119_p2;
reg   [63:0] empty_517_fu_578;
wire   [63:0] add_ln145_1_fu_5128_p2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
wire    ap_block_pp0_stage0_01001;
wire   [15:0] sl_8_fu_1726_p153;
wire   [15:0] tmp_s_fu_2042_p153;
wire   [15:0] tmp_1_fu_2354_p153;
wire  signed [15:0] tmp_1_fu_2354_p155;
wire   [15:0] tmp_2_fu_2670_p153;
wire  signed [15:0] tmp_2_fu_2670_p155;
wire   [15:0] tmp_3_fu_2986_p153;
wire  signed [15:0] tmp_3_fu_2986_p155;
wire   [15:0] tmp_4_fu_3302_p153;
wire  signed [15:0] tmp_4_fu_3302_p155;
wire   [15:0] tmp_5_fu_3624_p153;
wire  signed [15:0] tmp_5_fu_3624_p155;
wire   [15:0] tmp_6_fu_3940_p153;
wire  signed [15:0] tmp_6_fu_3940_p155;
wire   [15:0] tmp_7_fu_4256_p153;
wire  signed [15:0] tmp_7_fu_4256_p155;
wire   [15:0] sl_9_fu_4572_p153;
wire  signed [15:0] mul_ln137_1_fu_4915_p0;
wire  signed [31:0] sext_ln137_1_fu_4912_p1;
wire  signed [15:0] mul_ln137_1_fu_4915_p1;
wire  signed [15:0] mul_ln139_1_fu_4921_p0;
wire  signed [15:0] mul_ln140_1_fu_4927_p0;
wire  signed [15:0] mul_ln140_1_fu_4927_p1;
wire  signed [15:0] mul_ln141_1_fu_4932_p0;
wire  signed [15:0] mul_ln141_1_fu_4932_p1;
wire  signed [15:0] mul_ln142_1_fu_4937_p0;
wire  signed [15:0] mul_ln142_1_fu_4937_p1;
wire  signed [15:0] mul_ln143_1_fu_4942_p0;
wire  signed [15:0] mul_ln143_1_fu_4942_p1;
wire  signed [15:0] mul_ln144_1_fu_4947_p0;
wire  signed [15:0] mul_ln144_1_fu_4947_p1;
wire  signed [15:0] mul_ln145_1_fu_4952_p0;
wire  signed [15:0] mul_ln145_1_fu_4952_p1;
wire  signed [63:0] sext_ln137_4_fu_5053_p1;
wire  signed [32:0] grp_fu_5243_p3;
wire  signed [63:0] sext_ln138_2_fu_5062_p1;
wire  signed [63:0] sext_ln139_4_fu_5071_p1;
wire  signed [63:0] sext_ln140_3_fu_5080_p1;
wire  signed [63:0] sext_ln141_3_fu_5089_p1;
wire  signed [63:0] sext_ln142_3_fu_5098_p1;
wire  signed [63:0] sext_ln143_3_fu_5107_p1;
wire  signed [63:0] sext_ln144_3_fu_5116_p1;
wire  signed [63:0] sext_ln145_3_fu_5125_p1;
wire  signed [15:0] grp_fu_5179_p0;
wire  signed [15:0] grp_fu_5179_p1;
wire  signed [15:0] grp_fu_5187_p1;
wire  signed [15:0] grp_fu_5195_p1;
wire  signed [15:0] grp_fu_5203_p1;
wire  signed [15:0] grp_fu_5211_p1;
wire  signed [15:0] grp_fu_5219_p1;
wire  signed [15:0] grp_fu_5227_p1;
wire  signed [15:0] grp_fu_5235_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] sl_8_fu_1726_p1;
wire   [7:0] sl_8_fu_1726_p3;
wire   [7:0] sl_8_fu_1726_p5;
wire   [7:0] sl_8_fu_1726_p7;
wire   [7:0] sl_8_fu_1726_p9;
wire   [7:0] sl_8_fu_1726_p11;
wire   [7:0] sl_8_fu_1726_p13;
wire   [7:0] sl_8_fu_1726_p15;
wire   [7:0] sl_8_fu_1726_p17;
wire   [7:0] sl_8_fu_1726_p19;
wire   [7:0] sl_8_fu_1726_p21;
wire   [7:0] sl_8_fu_1726_p23;
wire   [7:0] sl_8_fu_1726_p25;
wire   [7:0] sl_8_fu_1726_p27;
wire   [7:0] sl_8_fu_1726_p29;
wire   [7:0] sl_8_fu_1726_p31;
wire   [7:0] sl_8_fu_1726_p33;
wire   [7:0] sl_8_fu_1726_p35;
wire   [7:0] sl_8_fu_1726_p37;
wire   [7:0] sl_8_fu_1726_p39;
wire   [7:0] sl_8_fu_1726_p41;
wire   [7:0] sl_8_fu_1726_p43;
wire   [7:0] sl_8_fu_1726_p45;
wire   [7:0] sl_8_fu_1726_p47;
wire   [7:0] sl_8_fu_1726_p49;
wire   [7:0] sl_8_fu_1726_p51;
wire   [7:0] sl_8_fu_1726_p53;
wire   [7:0] sl_8_fu_1726_p55;
wire   [7:0] sl_8_fu_1726_p57;
wire   [7:0] sl_8_fu_1726_p59;
wire   [7:0] sl_8_fu_1726_p61;
wire   [7:0] sl_8_fu_1726_p63;
wire   [7:0] sl_8_fu_1726_p65;
wire   [7:0] sl_8_fu_1726_p67;
wire   [7:0] sl_8_fu_1726_p69;
wire   [7:0] sl_8_fu_1726_p71;
wire   [7:0] sl_8_fu_1726_p73;
wire   [7:0] sl_8_fu_1726_p75;
wire   [7:0] sl_8_fu_1726_p77;
wire   [7:0] sl_8_fu_1726_p79;
wire   [7:0] sl_8_fu_1726_p81;
wire   [7:0] sl_8_fu_1726_p83;
wire   [7:0] sl_8_fu_1726_p85;
wire   [7:0] sl_8_fu_1726_p87;
wire   [7:0] sl_8_fu_1726_p89;
wire   [7:0] sl_8_fu_1726_p91;
wire   [7:0] sl_8_fu_1726_p93;
wire   [7:0] sl_8_fu_1726_p95;
wire   [7:0] sl_8_fu_1726_p97;
wire   [7:0] sl_8_fu_1726_p99;
wire   [7:0] sl_8_fu_1726_p101;
wire   [7:0] sl_8_fu_1726_p103;
wire   [7:0] sl_8_fu_1726_p105;
wire   [7:0] sl_8_fu_1726_p107;
wire   [7:0] sl_8_fu_1726_p109;
wire   [7:0] sl_8_fu_1726_p111;
wire   [7:0] sl_8_fu_1726_p113;
wire   [7:0] sl_8_fu_1726_p115;
wire   [7:0] sl_8_fu_1726_p117;
wire   [7:0] sl_8_fu_1726_p119;
wire   [7:0] sl_8_fu_1726_p121;
wire   [7:0] sl_8_fu_1726_p123;
wire   [7:0] sl_8_fu_1726_p125;
wire   [7:0] sl_8_fu_1726_p127;
wire  signed [7:0] sl_8_fu_1726_p129;
wire  signed [7:0] sl_8_fu_1726_p131;
wire  signed [7:0] sl_8_fu_1726_p133;
wire  signed [7:0] sl_8_fu_1726_p135;
wire  signed [7:0] sl_8_fu_1726_p137;
wire  signed [7:0] sl_8_fu_1726_p139;
wire  signed [7:0] sl_8_fu_1726_p141;
wire  signed [7:0] sl_8_fu_1726_p143;
wire  signed [7:0] sl_8_fu_1726_p145;
wire  signed [7:0] sl_8_fu_1726_p147;
wire  signed [7:0] sl_8_fu_1726_p149;
wire  signed [7:0] sl_8_fu_1726_p151;
wire   [7:0] tmp_s_fu_2042_p1;
wire   [7:0] tmp_s_fu_2042_p3;
wire   [7:0] tmp_s_fu_2042_p5;
wire   [7:0] tmp_s_fu_2042_p7;
wire   [7:0] tmp_s_fu_2042_p9;
wire   [7:0] tmp_s_fu_2042_p11;
wire   [7:0] tmp_s_fu_2042_p13;
wire   [7:0] tmp_s_fu_2042_p15;
wire   [7:0] tmp_s_fu_2042_p17;
wire   [7:0] tmp_s_fu_2042_p19;
wire   [7:0] tmp_s_fu_2042_p21;
wire   [7:0] tmp_s_fu_2042_p23;
wire   [7:0] tmp_s_fu_2042_p25;
wire   [7:0] tmp_s_fu_2042_p27;
wire   [7:0] tmp_s_fu_2042_p29;
wire   [7:0] tmp_s_fu_2042_p31;
wire   [7:0] tmp_s_fu_2042_p33;
wire   [7:0] tmp_s_fu_2042_p35;
wire   [7:0] tmp_s_fu_2042_p37;
wire   [7:0] tmp_s_fu_2042_p39;
wire   [7:0] tmp_s_fu_2042_p41;
wire   [7:0] tmp_s_fu_2042_p43;
wire   [7:0] tmp_s_fu_2042_p45;
wire   [7:0] tmp_s_fu_2042_p47;
wire   [7:0] tmp_s_fu_2042_p49;
wire   [7:0] tmp_s_fu_2042_p51;
wire   [7:0] tmp_s_fu_2042_p53;
wire   [7:0] tmp_s_fu_2042_p55;
wire   [7:0] tmp_s_fu_2042_p57;
wire   [7:0] tmp_s_fu_2042_p59;
wire   [7:0] tmp_s_fu_2042_p61;
wire   [7:0] tmp_s_fu_2042_p63;
wire   [7:0] tmp_s_fu_2042_p65;
wire   [7:0] tmp_s_fu_2042_p67;
wire   [7:0] tmp_s_fu_2042_p69;
wire   [7:0] tmp_s_fu_2042_p71;
wire   [7:0] tmp_s_fu_2042_p73;
wire   [7:0] tmp_s_fu_2042_p75;
wire   [7:0] tmp_s_fu_2042_p77;
wire   [7:0] tmp_s_fu_2042_p79;
wire   [7:0] tmp_s_fu_2042_p81;
wire   [7:0] tmp_s_fu_2042_p83;
wire   [7:0] tmp_s_fu_2042_p85;
wire   [7:0] tmp_s_fu_2042_p87;
wire   [7:0] tmp_s_fu_2042_p89;
wire   [7:0] tmp_s_fu_2042_p91;
wire   [7:0] tmp_s_fu_2042_p93;
wire   [7:0] tmp_s_fu_2042_p95;
wire   [7:0] tmp_s_fu_2042_p97;
wire   [7:0] tmp_s_fu_2042_p99;
wire   [7:0] tmp_s_fu_2042_p101;
wire   [7:0] tmp_s_fu_2042_p103;
wire   [7:0] tmp_s_fu_2042_p105;
wire   [7:0] tmp_s_fu_2042_p107;
wire   [7:0] tmp_s_fu_2042_p109;
wire   [7:0] tmp_s_fu_2042_p111;
wire   [7:0] tmp_s_fu_2042_p113;
wire   [7:0] tmp_s_fu_2042_p115;
wire   [7:0] tmp_s_fu_2042_p117;
wire   [7:0] tmp_s_fu_2042_p119;
wire   [7:0] tmp_s_fu_2042_p121;
wire   [7:0] tmp_s_fu_2042_p123;
wire   [7:0] tmp_s_fu_2042_p125;
wire   [7:0] tmp_s_fu_2042_p127;
wire  signed [7:0] tmp_s_fu_2042_p129;
wire  signed [7:0] tmp_s_fu_2042_p131;
wire  signed [7:0] tmp_s_fu_2042_p133;
wire  signed [7:0] tmp_s_fu_2042_p135;
wire  signed [7:0] tmp_s_fu_2042_p137;
wire  signed [7:0] tmp_s_fu_2042_p139;
wire  signed [7:0] tmp_s_fu_2042_p141;
wire  signed [7:0] tmp_s_fu_2042_p143;
wire  signed [7:0] tmp_s_fu_2042_p145;
wire  signed [7:0] tmp_s_fu_2042_p147;
wire  signed [7:0] tmp_s_fu_2042_p149;
wire  signed [7:0] tmp_s_fu_2042_p151;
wire   [7:0] tmp_1_fu_2354_p1;
wire   [7:0] tmp_1_fu_2354_p3;
wire   [7:0] tmp_1_fu_2354_p5;
wire   [7:0] tmp_1_fu_2354_p7;
wire   [7:0] tmp_1_fu_2354_p9;
wire   [7:0] tmp_1_fu_2354_p11;
wire   [7:0] tmp_1_fu_2354_p13;
wire   [7:0] tmp_1_fu_2354_p15;
wire   [7:0] tmp_1_fu_2354_p17;
wire   [7:0] tmp_1_fu_2354_p19;
wire   [7:0] tmp_1_fu_2354_p21;
wire   [7:0] tmp_1_fu_2354_p23;
wire   [7:0] tmp_1_fu_2354_p25;
wire   [7:0] tmp_1_fu_2354_p27;
wire   [7:0] tmp_1_fu_2354_p29;
wire   [7:0] tmp_1_fu_2354_p31;
wire   [7:0] tmp_1_fu_2354_p33;
wire   [7:0] tmp_1_fu_2354_p35;
wire   [7:0] tmp_1_fu_2354_p37;
wire   [7:0] tmp_1_fu_2354_p39;
wire   [7:0] tmp_1_fu_2354_p41;
wire   [7:0] tmp_1_fu_2354_p43;
wire   [7:0] tmp_1_fu_2354_p45;
wire   [7:0] tmp_1_fu_2354_p47;
wire   [7:0] tmp_1_fu_2354_p49;
wire   [7:0] tmp_1_fu_2354_p51;
wire   [7:0] tmp_1_fu_2354_p53;
wire   [7:0] tmp_1_fu_2354_p55;
wire   [7:0] tmp_1_fu_2354_p57;
wire   [7:0] tmp_1_fu_2354_p59;
wire   [7:0] tmp_1_fu_2354_p61;
wire   [7:0] tmp_1_fu_2354_p63;
wire   [7:0] tmp_1_fu_2354_p65;
wire   [7:0] tmp_1_fu_2354_p67;
wire   [7:0] tmp_1_fu_2354_p69;
wire   [7:0] tmp_1_fu_2354_p71;
wire   [7:0] tmp_1_fu_2354_p73;
wire   [7:0] tmp_1_fu_2354_p75;
wire   [7:0] tmp_1_fu_2354_p77;
wire   [7:0] tmp_1_fu_2354_p79;
wire   [7:0] tmp_1_fu_2354_p81;
wire   [7:0] tmp_1_fu_2354_p83;
wire   [7:0] tmp_1_fu_2354_p85;
wire   [7:0] tmp_1_fu_2354_p87;
wire   [7:0] tmp_1_fu_2354_p89;
wire   [7:0] tmp_1_fu_2354_p91;
wire   [7:0] tmp_1_fu_2354_p93;
wire   [7:0] tmp_1_fu_2354_p95;
wire   [7:0] tmp_1_fu_2354_p97;
wire   [7:0] tmp_1_fu_2354_p99;
wire   [7:0] tmp_1_fu_2354_p101;
wire   [7:0] tmp_1_fu_2354_p103;
wire   [7:0] tmp_1_fu_2354_p105;
wire   [7:0] tmp_1_fu_2354_p107;
wire   [7:0] tmp_1_fu_2354_p109;
wire   [7:0] tmp_1_fu_2354_p111;
wire   [7:0] tmp_1_fu_2354_p113;
wire   [7:0] tmp_1_fu_2354_p115;
wire   [7:0] tmp_1_fu_2354_p117;
wire   [7:0] tmp_1_fu_2354_p119;
wire   [7:0] tmp_1_fu_2354_p121;
wire   [7:0] tmp_1_fu_2354_p123;
wire   [7:0] tmp_1_fu_2354_p125;
wire   [7:0] tmp_1_fu_2354_p127;
wire  signed [7:0] tmp_1_fu_2354_p129;
wire  signed [7:0] tmp_1_fu_2354_p131;
wire  signed [7:0] tmp_1_fu_2354_p133;
wire  signed [7:0] tmp_1_fu_2354_p135;
wire  signed [7:0] tmp_1_fu_2354_p137;
wire  signed [7:0] tmp_1_fu_2354_p139;
wire  signed [7:0] tmp_1_fu_2354_p141;
wire  signed [7:0] tmp_1_fu_2354_p143;
wire  signed [7:0] tmp_1_fu_2354_p145;
wire  signed [7:0] tmp_1_fu_2354_p147;
wire  signed [7:0] tmp_1_fu_2354_p149;
wire  signed [7:0] tmp_1_fu_2354_p151;
wire   [7:0] tmp_2_fu_2670_p1;
wire   [7:0] tmp_2_fu_2670_p3;
wire   [7:0] tmp_2_fu_2670_p5;
wire   [7:0] tmp_2_fu_2670_p7;
wire   [7:0] tmp_2_fu_2670_p9;
wire   [7:0] tmp_2_fu_2670_p11;
wire   [7:0] tmp_2_fu_2670_p13;
wire   [7:0] tmp_2_fu_2670_p15;
wire   [7:0] tmp_2_fu_2670_p17;
wire   [7:0] tmp_2_fu_2670_p19;
wire   [7:0] tmp_2_fu_2670_p21;
wire   [7:0] tmp_2_fu_2670_p23;
wire   [7:0] tmp_2_fu_2670_p25;
wire   [7:0] tmp_2_fu_2670_p27;
wire   [7:0] tmp_2_fu_2670_p29;
wire   [7:0] tmp_2_fu_2670_p31;
wire   [7:0] tmp_2_fu_2670_p33;
wire   [7:0] tmp_2_fu_2670_p35;
wire   [7:0] tmp_2_fu_2670_p37;
wire   [7:0] tmp_2_fu_2670_p39;
wire   [7:0] tmp_2_fu_2670_p41;
wire   [7:0] tmp_2_fu_2670_p43;
wire   [7:0] tmp_2_fu_2670_p45;
wire   [7:0] tmp_2_fu_2670_p47;
wire   [7:0] tmp_2_fu_2670_p49;
wire   [7:0] tmp_2_fu_2670_p51;
wire   [7:0] tmp_2_fu_2670_p53;
wire   [7:0] tmp_2_fu_2670_p55;
wire   [7:0] tmp_2_fu_2670_p57;
wire   [7:0] tmp_2_fu_2670_p59;
wire   [7:0] tmp_2_fu_2670_p61;
wire   [7:0] tmp_2_fu_2670_p63;
wire   [7:0] tmp_2_fu_2670_p65;
wire   [7:0] tmp_2_fu_2670_p67;
wire   [7:0] tmp_2_fu_2670_p69;
wire   [7:0] tmp_2_fu_2670_p71;
wire   [7:0] tmp_2_fu_2670_p73;
wire   [7:0] tmp_2_fu_2670_p75;
wire   [7:0] tmp_2_fu_2670_p77;
wire   [7:0] tmp_2_fu_2670_p79;
wire   [7:0] tmp_2_fu_2670_p81;
wire   [7:0] tmp_2_fu_2670_p83;
wire   [7:0] tmp_2_fu_2670_p85;
wire   [7:0] tmp_2_fu_2670_p87;
wire   [7:0] tmp_2_fu_2670_p89;
wire   [7:0] tmp_2_fu_2670_p91;
wire   [7:0] tmp_2_fu_2670_p93;
wire   [7:0] tmp_2_fu_2670_p95;
wire   [7:0] tmp_2_fu_2670_p97;
wire   [7:0] tmp_2_fu_2670_p99;
wire   [7:0] tmp_2_fu_2670_p101;
wire   [7:0] tmp_2_fu_2670_p103;
wire   [7:0] tmp_2_fu_2670_p105;
wire   [7:0] tmp_2_fu_2670_p107;
wire   [7:0] tmp_2_fu_2670_p109;
wire   [7:0] tmp_2_fu_2670_p111;
wire   [7:0] tmp_2_fu_2670_p113;
wire   [7:0] tmp_2_fu_2670_p115;
wire   [7:0] tmp_2_fu_2670_p117;
wire   [7:0] tmp_2_fu_2670_p119;
wire   [7:0] tmp_2_fu_2670_p121;
wire   [7:0] tmp_2_fu_2670_p123;
wire   [7:0] tmp_2_fu_2670_p125;
wire   [7:0] tmp_2_fu_2670_p127;
wire  signed [7:0] tmp_2_fu_2670_p129;
wire  signed [7:0] tmp_2_fu_2670_p131;
wire  signed [7:0] tmp_2_fu_2670_p133;
wire  signed [7:0] tmp_2_fu_2670_p135;
wire  signed [7:0] tmp_2_fu_2670_p137;
wire  signed [7:0] tmp_2_fu_2670_p139;
wire  signed [7:0] tmp_2_fu_2670_p141;
wire  signed [7:0] tmp_2_fu_2670_p143;
wire  signed [7:0] tmp_2_fu_2670_p145;
wire  signed [7:0] tmp_2_fu_2670_p147;
wire  signed [7:0] tmp_2_fu_2670_p149;
wire  signed [7:0] tmp_2_fu_2670_p151;
wire   [7:0] tmp_3_fu_2986_p1;
wire   [7:0] tmp_3_fu_2986_p3;
wire   [7:0] tmp_3_fu_2986_p5;
wire   [7:0] tmp_3_fu_2986_p7;
wire   [7:0] tmp_3_fu_2986_p9;
wire   [7:0] tmp_3_fu_2986_p11;
wire   [7:0] tmp_3_fu_2986_p13;
wire   [7:0] tmp_3_fu_2986_p15;
wire   [7:0] tmp_3_fu_2986_p17;
wire   [7:0] tmp_3_fu_2986_p19;
wire   [7:0] tmp_3_fu_2986_p21;
wire   [7:0] tmp_3_fu_2986_p23;
wire   [7:0] tmp_3_fu_2986_p25;
wire   [7:0] tmp_3_fu_2986_p27;
wire   [7:0] tmp_3_fu_2986_p29;
wire   [7:0] tmp_3_fu_2986_p31;
wire   [7:0] tmp_3_fu_2986_p33;
wire   [7:0] tmp_3_fu_2986_p35;
wire   [7:0] tmp_3_fu_2986_p37;
wire   [7:0] tmp_3_fu_2986_p39;
wire   [7:0] tmp_3_fu_2986_p41;
wire   [7:0] tmp_3_fu_2986_p43;
wire   [7:0] tmp_3_fu_2986_p45;
wire   [7:0] tmp_3_fu_2986_p47;
wire   [7:0] tmp_3_fu_2986_p49;
wire   [7:0] tmp_3_fu_2986_p51;
wire   [7:0] tmp_3_fu_2986_p53;
wire   [7:0] tmp_3_fu_2986_p55;
wire   [7:0] tmp_3_fu_2986_p57;
wire   [7:0] tmp_3_fu_2986_p59;
wire   [7:0] tmp_3_fu_2986_p61;
wire   [7:0] tmp_3_fu_2986_p63;
wire   [7:0] tmp_3_fu_2986_p65;
wire   [7:0] tmp_3_fu_2986_p67;
wire   [7:0] tmp_3_fu_2986_p69;
wire   [7:0] tmp_3_fu_2986_p71;
wire   [7:0] tmp_3_fu_2986_p73;
wire   [7:0] tmp_3_fu_2986_p75;
wire   [7:0] tmp_3_fu_2986_p77;
wire   [7:0] tmp_3_fu_2986_p79;
wire   [7:0] tmp_3_fu_2986_p81;
wire   [7:0] tmp_3_fu_2986_p83;
wire   [7:0] tmp_3_fu_2986_p85;
wire   [7:0] tmp_3_fu_2986_p87;
wire   [7:0] tmp_3_fu_2986_p89;
wire   [7:0] tmp_3_fu_2986_p91;
wire   [7:0] tmp_3_fu_2986_p93;
wire   [7:0] tmp_3_fu_2986_p95;
wire   [7:0] tmp_3_fu_2986_p97;
wire   [7:0] tmp_3_fu_2986_p99;
wire   [7:0] tmp_3_fu_2986_p101;
wire   [7:0] tmp_3_fu_2986_p103;
wire   [7:0] tmp_3_fu_2986_p105;
wire   [7:0] tmp_3_fu_2986_p107;
wire   [7:0] tmp_3_fu_2986_p109;
wire   [7:0] tmp_3_fu_2986_p111;
wire   [7:0] tmp_3_fu_2986_p113;
wire   [7:0] tmp_3_fu_2986_p115;
wire   [7:0] tmp_3_fu_2986_p117;
wire   [7:0] tmp_3_fu_2986_p119;
wire   [7:0] tmp_3_fu_2986_p121;
wire   [7:0] tmp_3_fu_2986_p123;
wire   [7:0] tmp_3_fu_2986_p125;
wire   [7:0] tmp_3_fu_2986_p127;
wire  signed [7:0] tmp_3_fu_2986_p129;
wire  signed [7:0] tmp_3_fu_2986_p131;
wire  signed [7:0] tmp_3_fu_2986_p133;
wire  signed [7:0] tmp_3_fu_2986_p135;
wire  signed [7:0] tmp_3_fu_2986_p137;
wire  signed [7:0] tmp_3_fu_2986_p139;
wire  signed [7:0] tmp_3_fu_2986_p141;
wire  signed [7:0] tmp_3_fu_2986_p143;
wire  signed [7:0] tmp_3_fu_2986_p145;
wire  signed [7:0] tmp_3_fu_2986_p147;
wire  signed [7:0] tmp_3_fu_2986_p149;
wire  signed [7:0] tmp_3_fu_2986_p151;
wire   [7:0] tmp_4_fu_3302_p1;
wire   [7:0] tmp_4_fu_3302_p3;
wire   [7:0] tmp_4_fu_3302_p5;
wire   [7:0] tmp_4_fu_3302_p7;
wire   [7:0] tmp_4_fu_3302_p9;
wire   [7:0] tmp_4_fu_3302_p11;
wire   [7:0] tmp_4_fu_3302_p13;
wire   [7:0] tmp_4_fu_3302_p15;
wire   [7:0] tmp_4_fu_3302_p17;
wire   [7:0] tmp_4_fu_3302_p19;
wire   [7:0] tmp_4_fu_3302_p21;
wire   [7:0] tmp_4_fu_3302_p23;
wire   [7:0] tmp_4_fu_3302_p25;
wire   [7:0] tmp_4_fu_3302_p27;
wire   [7:0] tmp_4_fu_3302_p29;
wire   [7:0] tmp_4_fu_3302_p31;
wire   [7:0] tmp_4_fu_3302_p33;
wire   [7:0] tmp_4_fu_3302_p35;
wire   [7:0] tmp_4_fu_3302_p37;
wire   [7:0] tmp_4_fu_3302_p39;
wire   [7:0] tmp_4_fu_3302_p41;
wire   [7:0] tmp_4_fu_3302_p43;
wire   [7:0] tmp_4_fu_3302_p45;
wire   [7:0] tmp_4_fu_3302_p47;
wire   [7:0] tmp_4_fu_3302_p49;
wire   [7:0] tmp_4_fu_3302_p51;
wire   [7:0] tmp_4_fu_3302_p53;
wire   [7:0] tmp_4_fu_3302_p55;
wire   [7:0] tmp_4_fu_3302_p57;
wire   [7:0] tmp_4_fu_3302_p59;
wire   [7:0] tmp_4_fu_3302_p61;
wire   [7:0] tmp_4_fu_3302_p63;
wire   [7:0] tmp_4_fu_3302_p65;
wire   [7:0] tmp_4_fu_3302_p67;
wire   [7:0] tmp_4_fu_3302_p69;
wire   [7:0] tmp_4_fu_3302_p71;
wire   [7:0] tmp_4_fu_3302_p73;
wire   [7:0] tmp_4_fu_3302_p75;
wire   [7:0] tmp_4_fu_3302_p77;
wire   [7:0] tmp_4_fu_3302_p79;
wire   [7:0] tmp_4_fu_3302_p81;
wire   [7:0] tmp_4_fu_3302_p83;
wire   [7:0] tmp_4_fu_3302_p85;
wire   [7:0] tmp_4_fu_3302_p87;
wire   [7:0] tmp_4_fu_3302_p89;
wire   [7:0] tmp_4_fu_3302_p91;
wire   [7:0] tmp_4_fu_3302_p93;
wire   [7:0] tmp_4_fu_3302_p95;
wire   [7:0] tmp_4_fu_3302_p97;
wire   [7:0] tmp_4_fu_3302_p99;
wire   [7:0] tmp_4_fu_3302_p101;
wire   [7:0] tmp_4_fu_3302_p103;
wire   [7:0] tmp_4_fu_3302_p105;
wire   [7:0] tmp_4_fu_3302_p107;
wire   [7:0] tmp_4_fu_3302_p109;
wire   [7:0] tmp_4_fu_3302_p111;
wire   [7:0] tmp_4_fu_3302_p113;
wire   [7:0] tmp_4_fu_3302_p115;
wire   [7:0] tmp_4_fu_3302_p117;
wire   [7:0] tmp_4_fu_3302_p119;
wire   [7:0] tmp_4_fu_3302_p121;
wire   [7:0] tmp_4_fu_3302_p123;
wire   [7:0] tmp_4_fu_3302_p125;
wire   [7:0] tmp_4_fu_3302_p127;
wire  signed [7:0] tmp_4_fu_3302_p129;
wire  signed [7:0] tmp_4_fu_3302_p131;
wire  signed [7:0] tmp_4_fu_3302_p133;
wire  signed [7:0] tmp_4_fu_3302_p135;
wire  signed [7:0] tmp_4_fu_3302_p137;
wire  signed [7:0] tmp_4_fu_3302_p139;
wire  signed [7:0] tmp_4_fu_3302_p141;
wire  signed [7:0] tmp_4_fu_3302_p143;
wire  signed [7:0] tmp_4_fu_3302_p145;
wire  signed [7:0] tmp_4_fu_3302_p147;
wire  signed [7:0] tmp_4_fu_3302_p149;
wire  signed [7:0] tmp_4_fu_3302_p151;
wire   [7:0] tmp_5_fu_3624_p1;
wire   [7:0] tmp_5_fu_3624_p3;
wire   [7:0] tmp_5_fu_3624_p5;
wire   [7:0] tmp_5_fu_3624_p7;
wire   [7:0] tmp_5_fu_3624_p9;
wire   [7:0] tmp_5_fu_3624_p11;
wire   [7:0] tmp_5_fu_3624_p13;
wire   [7:0] tmp_5_fu_3624_p15;
wire   [7:0] tmp_5_fu_3624_p17;
wire   [7:0] tmp_5_fu_3624_p19;
wire   [7:0] tmp_5_fu_3624_p21;
wire   [7:0] tmp_5_fu_3624_p23;
wire   [7:0] tmp_5_fu_3624_p25;
wire   [7:0] tmp_5_fu_3624_p27;
wire   [7:0] tmp_5_fu_3624_p29;
wire   [7:0] tmp_5_fu_3624_p31;
wire   [7:0] tmp_5_fu_3624_p33;
wire   [7:0] tmp_5_fu_3624_p35;
wire   [7:0] tmp_5_fu_3624_p37;
wire   [7:0] tmp_5_fu_3624_p39;
wire   [7:0] tmp_5_fu_3624_p41;
wire   [7:0] tmp_5_fu_3624_p43;
wire   [7:0] tmp_5_fu_3624_p45;
wire   [7:0] tmp_5_fu_3624_p47;
wire   [7:0] tmp_5_fu_3624_p49;
wire   [7:0] tmp_5_fu_3624_p51;
wire   [7:0] tmp_5_fu_3624_p53;
wire   [7:0] tmp_5_fu_3624_p55;
wire   [7:0] tmp_5_fu_3624_p57;
wire   [7:0] tmp_5_fu_3624_p59;
wire   [7:0] tmp_5_fu_3624_p61;
wire   [7:0] tmp_5_fu_3624_p63;
wire   [7:0] tmp_5_fu_3624_p65;
wire   [7:0] tmp_5_fu_3624_p67;
wire   [7:0] tmp_5_fu_3624_p69;
wire   [7:0] tmp_5_fu_3624_p71;
wire   [7:0] tmp_5_fu_3624_p73;
wire   [7:0] tmp_5_fu_3624_p75;
wire   [7:0] tmp_5_fu_3624_p77;
wire   [7:0] tmp_5_fu_3624_p79;
wire   [7:0] tmp_5_fu_3624_p81;
wire   [7:0] tmp_5_fu_3624_p83;
wire   [7:0] tmp_5_fu_3624_p85;
wire   [7:0] tmp_5_fu_3624_p87;
wire   [7:0] tmp_5_fu_3624_p89;
wire   [7:0] tmp_5_fu_3624_p91;
wire   [7:0] tmp_5_fu_3624_p93;
wire   [7:0] tmp_5_fu_3624_p95;
wire   [7:0] tmp_5_fu_3624_p97;
wire   [7:0] tmp_5_fu_3624_p99;
wire   [7:0] tmp_5_fu_3624_p101;
wire   [7:0] tmp_5_fu_3624_p103;
wire   [7:0] tmp_5_fu_3624_p105;
wire   [7:0] tmp_5_fu_3624_p107;
wire   [7:0] tmp_5_fu_3624_p109;
wire   [7:0] tmp_5_fu_3624_p111;
wire   [7:0] tmp_5_fu_3624_p113;
wire   [7:0] tmp_5_fu_3624_p115;
wire   [7:0] tmp_5_fu_3624_p117;
wire   [7:0] tmp_5_fu_3624_p119;
wire   [7:0] tmp_5_fu_3624_p121;
wire   [7:0] tmp_5_fu_3624_p123;
wire   [7:0] tmp_5_fu_3624_p125;
wire   [7:0] tmp_5_fu_3624_p127;
wire  signed [7:0] tmp_5_fu_3624_p129;
wire  signed [7:0] tmp_5_fu_3624_p131;
wire  signed [7:0] tmp_5_fu_3624_p133;
wire  signed [7:0] tmp_5_fu_3624_p135;
wire  signed [7:0] tmp_5_fu_3624_p137;
wire  signed [7:0] tmp_5_fu_3624_p139;
wire  signed [7:0] tmp_5_fu_3624_p141;
wire  signed [7:0] tmp_5_fu_3624_p143;
wire  signed [7:0] tmp_5_fu_3624_p145;
wire  signed [7:0] tmp_5_fu_3624_p147;
wire  signed [7:0] tmp_5_fu_3624_p149;
wire  signed [7:0] tmp_5_fu_3624_p151;
wire   [7:0] tmp_6_fu_3940_p1;
wire   [7:0] tmp_6_fu_3940_p3;
wire   [7:0] tmp_6_fu_3940_p5;
wire   [7:0] tmp_6_fu_3940_p7;
wire   [7:0] tmp_6_fu_3940_p9;
wire   [7:0] tmp_6_fu_3940_p11;
wire   [7:0] tmp_6_fu_3940_p13;
wire   [7:0] tmp_6_fu_3940_p15;
wire   [7:0] tmp_6_fu_3940_p17;
wire   [7:0] tmp_6_fu_3940_p19;
wire   [7:0] tmp_6_fu_3940_p21;
wire   [7:0] tmp_6_fu_3940_p23;
wire   [7:0] tmp_6_fu_3940_p25;
wire   [7:0] tmp_6_fu_3940_p27;
wire   [7:0] tmp_6_fu_3940_p29;
wire   [7:0] tmp_6_fu_3940_p31;
wire   [7:0] tmp_6_fu_3940_p33;
wire   [7:0] tmp_6_fu_3940_p35;
wire   [7:0] tmp_6_fu_3940_p37;
wire   [7:0] tmp_6_fu_3940_p39;
wire   [7:0] tmp_6_fu_3940_p41;
wire   [7:0] tmp_6_fu_3940_p43;
wire   [7:0] tmp_6_fu_3940_p45;
wire   [7:0] tmp_6_fu_3940_p47;
wire   [7:0] tmp_6_fu_3940_p49;
wire   [7:0] tmp_6_fu_3940_p51;
wire   [7:0] tmp_6_fu_3940_p53;
wire   [7:0] tmp_6_fu_3940_p55;
wire   [7:0] tmp_6_fu_3940_p57;
wire   [7:0] tmp_6_fu_3940_p59;
wire   [7:0] tmp_6_fu_3940_p61;
wire   [7:0] tmp_6_fu_3940_p63;
wire   [7:0] tmp_6_fu_3940_p65;
wire   [7:0] tmp_6_fu_3940_p67;
wire   [7:0] tmp_6_fu_3940_p69;
wire   [7:0] tmp_6_fu_3940_p71;
wire   [7:0] tmp_6_fu_3940_p73;
wire   [7:0] tmp_6_fu_3940_p75;
wire   [7:0] tmp_6_fu_3940_p77;
wire   [7:0] tmp_6_fu_3940_p79;
wire   [7:0] tmp_6_fu_3940_p81;
wire   [7:0] tmp_6_fu_3940_p83;
wire   [7:0] tmp_6_fu_3940_p85;
wire   [7:0] tmp_6_fu_3940_p87;
wire   [7:0] tmp_6_fu_3940_p89;
wire   [7:0] tmp_6_fu_3940_p91;
wire   [7:0] tmp_6_fu_3940_p93;
wire   [7:0] tmp_6_fu_3940_p95;
wire   [7:0] tmp_6_fu_3940_p97;
wire   [7:0] tmp_6_fu_3940_p99;
wire   [7:0] tmp_6_fu_3940_p101;
wire   [7:0] tmp_6_fu_3940_p103;
wire   [7:0] tmp_6_fu_3940_p105;
wire   [7:0] tmp_6_fu_3940_p107;
wire   [7:0] tmp_6_fu_3940_p109;
wire   [7:0] tmp_6_fu_3940_p111;
wire   [7:0] tmp_6_fu_3940_p113;
wire   [7:0] tmp_6_fu_3940_p115;
wire   [7:0] tmp_6_fu_3940_p117;
wire   [7:0] tmp_6_fu_3940_p119;
wire   [7:0] tmp_6_fu_3940_p121;
wire   [7:0] tmp_6_fu_3940_p123;
wire   [7:0] tmp_6_fu_3940_p125;
wire   [7:0] tmp_6_fu_3940_p127;
wire  signed [7:0] tmp_6_fu_3940_p129;
wire  signed [7:0] tmp_6_fu_3940_p131;
wire  signed [7:0] tmp_6_fu_3940_p133;
wire  signed [7:0] tmp_6_fu_3940_p135;
wire  signed [7:0] tmp_6_fu_3940_p137;
wire  signed [7:0] tmp_6_fu_3940_p139;
wire  signed [7:0] tmp_6_fu_3940_p141;
wire  signed [7:0] tmp_6_fu_3940_p143;
wire  signed [7:0] tmp_6_fu_3940_p145;
wire  signed [7:0] tmp_6_fu_3940_p147;
wire  signed [7:0] tmp_6_fu_3940_p149;
wire  signed [7:0] tmp_6_fu_3940_p151;
wire   [7:0] tmp_7_fu_4256_p1;
wire   [7:0] tmp_7_fu_4256_p3;
wire   [7:0] tmp_7_fu_4256_p5;
wire   [7:0] tmp_7_fu_4256_p7;
wire   [7:0] tmp_7_fu_4256_p9;
wire   [7:0] tmp_7_fu_4256_p11;
wire   [7:0] tmp_7_fu_4256_p13;
wire   [7:0] tmp_7_fu_4256_p15;
wire   [7:0] tmp_7_fu_4256_p17;
wire   [7:0] tmp_7_fu_4256_p19;
wire   [7:0] tmp_7_fu_4256_p21;
wire   [7:0] tmp_7_fu_4256_p23;
wire   [7:0] tmp_7_fu_4256_p25;
wire   [7:0] tmp_7_fu_4256_p27;
wire   [7:0] tmp_7_fu_4256_p29;
wire   [7:0] tmp_7_fu_4256_p31;
wire   [7:0] tmp_7_fu_4256_p33;
wire   [7:0] tmp_7_fu_4256_p35;
wire   [7:0] tmp_7_fu_4256_p37;
wire   [7:0] tmp_7_fu_4256_p39;
wire   [7:0] tmp_7_fu_4256_p41;
wire   [7:0] tmp_7_fu_4256_p43;
wire   [7:0] tmp_7_fu_4256_p45;
wire   [7:0] tmp_7_fu_4256_p47;
wire   [7:0] tmp_7_fu_4256_p49;
wire   [7:0] tmp_7_fu_4256_p51;
wire   [7:0] tmp_7_fu_4256_p53;
wire   [7:0] tmp_7_fu_4256_p55;
wire   [7:0] tmp_7_fu_4256_p57;
wire   [7:0] tmp_7_fu_4256_p59;
wire   [7:0] tmp_7_fu_4256_p61;
wire   [7:0] tmp_7_fu_4256_p63;
wire   [7:0] tmp_7_fu_4256_p65;
wire   [7:0] tmp_7_fu_4256_p67;
wire   [7:0] tmp_7_fu_4256_p69;
wire   [7:0] tmp_7_fu_4256_p71;
wire   [7:0] tmp_7_fu_4256_p73;
wire   [7:0] tmp_7_fu_4256_p75;
wire   [7:0] tmp_7_fu_4256_p77;
wire   [7:0] tmp_7_fu_4256_p79;
wire   [7:0] tmp_7_fu_4256_p81;
wire   [7:0] tmp_7_fu_4256_p83;
wire   [7:0] tmp_7_fu_4256_p85;
wire   [7:0] tmp_7_fu_4256_p87;
wire   [7:0] tmp_7_fu_4256_p89;
wire   [7:0] tmp_7_fu_4256_p91;
wire   [7:0] tmp_7_fu_4256_p93;
wire   [7:0] tmp_7_fu_4256_p95;
wire   [7:0] tmp_7_fu_4256_p97;
wire   [7:0] tmp_7_fu_4256_p99;
wire   [7:0] tmp_7_fu_4256_p101;
wire   [7:0] tmp_7_fu_4256_p103;
wire   [7:0] tmp_7_fu_4256_p105;
wire   [7:0] tmp_7_fu_4256_p107;
wire   [7:0] tmp_7_fu_4256_p109;
wire   [7:0] tmp_7_fu_4256_p111;
wire   [7:0] tmp_7_fu_4256_p113;
wire   [7:0] tmp_7_fu_4256_p115;
wire   [7:0] tmp_7_fu_4256_p117;
wire   [7:0] tmp_7_fu_4256_p119;
wire   [7:0] tmp_7_fu_4256_p121;
wire   [7:0] tmp_7_fu_4256_p123;
wire   [7:0] tmp_7_fu_4256_p125;
wire   [7:0] tmp_7_fu_4256_p127;
wire  signed [7:0] tmp_7_fu_4256_p129;
wire  signed [7:0] tmp_7_fu_4256_p131;
wire  signed [7:0] tmp_7_fu_4256_p133;
wire  signed [7:0] tmp_7_fu_4256_p135;
wire  signed [7:0] tmp_7_fu_4256_p137;
wire  signed [7:0] tmp_7_fu_4256_p139;
wire  signed [7:0] tmp_7_fu_4256_p141;
wire  signed [7:0] tmp_7_fu_4256_p143;
wire  signed [7:0] tmp_7_fu_4256_p145;
wire  signed [7:0] tmp_7_fu_4256_p147;
wire  signed [7:0] tmp_7_fu_4256_p149;
wire  signed [7:0] tmp_7_fu_4256_p151;
wire   [7:0] sl_9_fu_4572_p1;
wire   [7:0] sl_9_fu_4572_p3;
wire   [7:0] sl_9_fu_4572_p5;
wire   [7:0] sl_9_fu_4572_p7;
wire   [7:0] sl_9_fu_4572_p9;
wire   [7:0] sl_9_fu_4572_p11;
wire   [7:0] sl_9_fu_4572_p13;
wire   [7:0] sl_9_fu_4572_p15;
wire   [7:0] sl_9_fu_4572_p17;
wire   [7:0] sl_9_fu_4572_p19;
wire   [7:0] sl_9_fu_4572_p21;
wire   [7:0] sl_9_fu_4572_p23;
wire   [7:0] sl_9_fu_4572_p25;
wire   [7:0] sl_9_fu_4572_p27;
wire   [7:0] sl_9_fu_4572_p29;
wire   [7:0] sl_9_fu_4572_p31;
wire   [7:0] sl_9_fu_4572_p33;
wire   [7:0] sl_9_fu_4572_p35;
wire   [7:0] sl_9_fu_4572_p37;
wire   [7:0] sl_9_fu_4572_p39;
wire   [7:0] sl_9_fu_4572_p41;
wire   [7:0] sl_9_fu_4572_p43;
wire   [7:0] sl_9_fu_4572_p45;
wire   [7:0] sl_9_fu_4572_p47;
wire   [7:0] sl_9_fu_4572_p49;
wire   [7:0] sl_9_fu_4572_p51;
wire   [7:0] sl_9_fu_4572_p53;
wire   [7:0] sl_9_fu_4572_p55;
wire   [7:0] sl_9_fu_4572_p57;
wire   [7:0] sl_9_fu_4572_p59;
wire   [7:0] sl_9_fu_4572_p61;
wire   [7:0] sl_9_fu_4572_p63;
wire   [7:0] sl_9_fu_4572_p65;
wire   [7:0] sl_9_fu_4572_p67;
wire   [7:0] sl_9_fu_4572_p69;
wire   [7:0] sl_9_fu_4572_p71;
wire   [7:0] sl_9_fu_4572_p73;
wire   [7:0] sl_9_fu_4572_p75;
wire   [7:0] sl_9_fu_4572_p77;
wire   [7:0] sl_9_fu_4572_p79;
wire   [7:0] sl_9_fu_4572_p81;
wire   [7:0] sl_9_fu_4572_p83;
wire   [7:0] sl_9_fu_4572_p85;
wire   [7:0] sl_9_fu_4572_p87;
wire   [7:0] sl_9_fu_4572_p89;
wire   [7:0] sl_9_fu_4572_p91;
wire   [7:0] sl_9_fu_4572_p93;
wire   [7:0] sl_9_fu_4572_p95;
wire   [7:0] sl_9_fu_4572_p97;
wire   [7:0] sl_9_fu_4572_p99;
wire   [7:0] sl_9_fu_4572_p101;
wire   [7:0] sl_9_fu_4572_p103;
wire   [7:0] sl_9_fu_4572_p105;
wire   [7:0] sl_9_fu_4572_p107;
wire   [7:0] sl_9_fu_4572_p109;
wire   [7:0] sl_9_fu_4572_p111;
wire   [7:0] sl_9_fu_4572_p113;
wire   [7:0] sl_9_fu_4572_p115;
wire   [7:0] sl_9_fu_4572_p117;
wire   [7:0] sl_9_fu_4572_p119;
wire   [7:0] sl_9_fu_4572_p121;
wire   [7:0] sl_9_fu_4572_p123;
wire   [7:0] sl_9_fu_4572_p125;
wire   [7:0] sl_9_fu_4572_p127;
wire  signed [7:0] sl_9_fu_4572_p129;
wire  signed [7:0] sl_9_fu_4572_p131;
wire  signed [7:0] sl_9_fu_4572_p133;
wire  signed [7:0] sl_9_fu_4572_p135;
wire  signed [7:0] sl_9_fu_4572_p137;
wire  signed [7:0] sl_9_fu_4572_p139;
wire  signed [7:0] sl_9_fu_4572_p141;
wire  signed [7:0] sl_9_fu_4572_p143;
wire  signed [7:0] sl_9_fu_4572_p145;
wire  signed [7:0] sl_9_fu_4572_p147;
wire  signed [7:0] sl_9_fu_4572_p149;
wire  signed [7:0] sl_9_fu_4572_p151;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 idx_fu_538 = 8'd0;
#0 i_fu_542 = 8'd0;
#0 empty_fu_546 = 64'd0;
#0 empty_510_fu_550 = 64'd0;
#0 empty_511_fu_554 = 64'd0;
#0 empty_512_fu_558 = 64'd0;
#0 empty_513_fu_562 = 64'd0;
#0 empty_514_fu_566 = 64'd0;
#0 empty_515_fu_570 = 64'd0;
#0 empty_516_fu_574 = 64'd0;
#0 empty_517_fu_578 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_153_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_153_8_16_1_1_U339(.din0(s_8_load_2),.din1(s_10_load_2),.din2(s_12_load_2),.din3(s_14_load_2),.din4(s_16_load_2),.din5(s_18_load_2),.din6(s_20_load_2),.din7(s_22_load_2),.din8(s_24_load_2),.din9(s_26_load_2),.din10(s_28_load_2),.din11(s_30_load_2),.din12(s_32_load_2),.din13(s_34_load_2),.din14(s_36_load_2),.din15(s_38_load_2),.din16(s_40_load_2),.din17(s_42_load_2),.din18(s_44_load_2),.din19(s_46_load_2),.din20(s_48_load_2),.din21(s_50_load_2),.din22(s_52_load_2),.din23(s_54_load_2),.din24(s_56_load_2),.din25(s_58_load_2),.din26(s_60_load_2),.din27(s_62_load_2),.din28(s_64_load_2),.din29(s_66_load_2),.din30(s_68_load_2),.din31(s_70_load_2),.din32(s_72_load_2),.din33(s_74_load_2),.din34(s_76_load_2),.din35(s_78_load_2),.din36(s_80_load_2),.din37(s_82_load_2),.din38(s_84_load_2),.din39(s_86_load_2),.din40(s_88_load_2),.din41(s_90_load_2),.din42(s_92_load_2),.din43(s_94_load_2),.din44(s_96_load_2),.din45(s_98_load_2),.din46(s_100_load_2),.din47(s_102_load_2),.din48(s_104_load_2),.din49(s_106_load_2),.din50(s_108_load_2),.din51(s_110_load_2),.din52(s_112_load_2),.din53(s_114_load_2),.din54(s_116_load_2),.din55(s_118_load_2),.din56(s_120_load_2),.din57(s_122_load_2),.din58(s_124_load_2),.din59(s_126_load_2),.din60(s_128_load_2),.din61(s_130_load_2),.din62(s_132_load_2),.din63(s_134_load_2),.din64(s_136_load_2),.din65(s_138_load_2),.din66(s_140_load_2),.din67(s_142_load_2),.din68(s_144_load_2),.din69(s_146_load_2),.din70(s_148_load_2),.din71(s_150_load_2),.din72(s_152_load_2),.din73(s_154_load_2),.din74(s_156_load_2),.din75(s_158_load_2),.def(sl_8_fu_1726_p153),.sel(ap_sig_allocacmp_idx_load),.dout(sl_8_fu_1726_p155));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_153_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_153_8_16_1_1_U340(.din0(sl_7),.din1(s_9_load_2),.din2(s_11_load_2),.din3(s_13_load_2),.din4(s_15_load_2),.din5(s_17_load_2),.din6(s_19_load_2),.din7(s_21_load_2),.din8(s_23_load_2),.din9(s_25_load_2),.din10(s_27_load_2),.din11(s_29_load_2),.din12(s_31_load_2),.din13(s_33_load_2),.din14(s_35_load_2),.din15(s_37_load_2),.din16(s_39_load_2),.din17(s_41_load_2),.din18(s_43_load_2),.din19(s_45_load_2),.din20(s_47_load_2),.din21(s_49_load_2),.din22(s_51_load_2),.din23(s_53_load_2),.din24(s_55_load_2),.din25(s_57_load_2),.din26(s_59_load_2),.din27(s_61_load_2),.din28(s_63_load_2),.din29(s_65_load_2),.din30(s_67_load_2),.din31(s_69_load_2),.din32(s_71_load_2),.din33(s_73_load_2),.din34(s_75_load_2),.din35(s_77_load_2),.din36(s_79_load_2),.din37(s_81_load_2),.din38(s_83_load_2),.din39(s_85_load_2),.din40(s_87_load_2),.din41(s_89_load_2),.din42(s_91_load_2),.din43(s_93_load_2),.din44(s_95_load_2),.din45(s_97_load_2),.din46(s_99_load_2),.din47(s_101_load_2),.din48(s_103_load_2),.din49(s_105_load_2),.din50(s_107_load_2),.din51(s_109_load_2),.din52(s_111_load_2),.din53(s_113_load_2),.din54(s_115_load_2),.din55(s_117_load_2),.din56(s_119_load_2),.din57(s_121_load_2),.din58(s_123_load_2),.din59(s_125_load_2),.din60(s_127_load_2),.din61(s_129_load_2),.din62(s_131_load_2),.din63(s_133_load_2),.din64(s_135_load_2),.din65(s_137_load_2),.din66(s_139_load_2),.din67(s_141_load_2),.din68(s_143_load_2),.din69(s_145_load_2),.din70(s_147_load_2),.din71(s_149_load_2),.din72(s_151_load_2),.din73(s_153_load_2),.din74(s_155_load_2),.din75(s_157_load_2),.def(tmp_s_fu_2042_p153),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_s_fu_2042_p155));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_153_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_153_8_16_1_1_U341(.din0(sl_6),.din1(s_8_load_2),.din2(s_10_load_2),.din3(s_12_load_2),.din4(s_14_load_2),.din5(s_16_load_2),.din6(s_18_load_2),.din7(s_20_load_2),.din8(s_22_load_2),.din9(s_24_load_2),.din10(s_26_load_2),.din11(s_28_load_2),.din12(s_30_load_2),.din13(s_32_load_2),.din14(s_34_load_2),.din15(s_36_load_2),.din16(s_38_load_2),.din17(s_40_load_2),.din18(s_42_load_2),.din19(s_44_load_2),.din20(s_46_load_2),.din21(s_48_load_2),.din22(s_50_load_2),.din23(s_52_load_2),.din24(s_54_load_2),.din25(s_56_load_2),.din26(s_58_load_2),.din27(s_60_load_2),.din28(s_62_load_2),.din29(s_64_load_2),.din30(s_66_load_2),.din31(s_68_load_2),.din32(s_70_load_2),.din33(s_72_load_2),.din34(s_74_load_2),.din35(s_76_load_2),.din36(s_78_load_2),.din37(s_80_load_2),.din38(s_82_load_2),.din39(s_84_load_2),.din40(s_86_load_2),.din41(s_88_load_2),.din42(s_90_load_2),.din43(s_92_load_2),.din44(s_94_load_2),.din45(s_96_load_2),.din46(s_98_load_2),.din47(s_100_load_2),.din48(s_102_load_2),.din49(s_104_load_2),.din50(s_106_load_2),.din51(s_108_load_2),.din52(s_110_load_2),.din53(s_112_load_2),.din54(s_114_load_2),.din55(s_116_load_2),.din56(s_118_load_2),.din57(s_120_load_2),.din58(s_122_load_2),.din59(s_124_load_2),.din60(s_126_load_2),.din61(s_128_load_2),.din62(s_130_load_2),.din63(s_132_load_2),.din64(s_134_load_2),.din65(s_136_load_2),.din66(s_138_load_2),.din67(s_140_load_2),.din68(s_142_load_2),.din69(s_144_load_2),.din70(s_146_load_2),.din71(s_148_load_2),.din72(s_150_load_2),.din73(s_152_load_2),.din74(s_154_load_2),.din75(s_156_load_2),.def(tmp_1_fu_2354_p153),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_1_fu_2354_p155));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_153_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_153_8_16_1_1_U342(.din0(sl_5),.din1(sl_7),.din2(s_9_load_2),.din3(s_11_load_2),.din4(s_13_load_2),.din5(s_15_load_2),.din6(s_17_load_2),.din7(s_19_load_2),.din8(s_21_load_2),.din9(s_23_load_2),.din10(s_25_load_2),.din11(s_27_load_2),.din12(s_29_load_2),.din13(s_31_load_2),.din14(s_33_load_2),.din15(s_35_load_2),.din16(s_37_load_2),.din17(s_39_load_2),.din18(s_41_load_2),.din19(s_43_load_2),.din20(s_45_load_2),.din21(s_47_load_2),.din22(s_49_load_2),.din23(s_51_load_2),.din24(s_53_load_2),.din25(s_55_load_2),.din26(s_57_load_2),.din27(s_59_load_2),.din28(s_61_load_2),.din29(s_63_load_2),.din30(s_65_load_2),.din31(s_67_load_2),.din32(s_69_load_2),.din33(s_71_load_2),.din34(s_73_load_2),.din35(s_75_load_2),.din36(s_77_load_2),.din37(s_79_load_2),.din38(s_81_load_2),.din39(s_83_load_2),.din40(s_85_load_2),.din41(s_87_load_2),.din42(s_89_load_2),.din43(s_91_load_2),.din44(s_93_load_2),.din45(s_95_load_2),.din46(s_97_load_2),.din47(s_99_load_2),.din48(s_101_load_2),.din49(s_103_load_2),.din50(s_105_load_2),.din51(s_107_load_2),.din52(s_109_load_2),.din53(s_111_load_2),.din54(s_113_load_2),.din55(s_115_load_2),.din56(s_117_load_2),.din57(s_119_load_2),.din58(s_121_load_2),.din59(s_123_load_2),.din60(s_125_load_2),.din61(s_127_load_2),.din62(s_129_load_2),.din63(s_131_load_2),.din64(s_133_load_2),.din65(s_135_load_2),.din66(s_137_load_2),.din67(s_139_load_2),.din68(s_141_load_2),.din69(s_143_load_2),.din70(s_145_load_2),.din71(s_147_load_2),.din72(s_149_load_2),.din73(s_151_load_2),.din74(s_153_load_2),.din75(s_155_load_2),.def(tmp_2_fu_2670_p153),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_2_fu_2670_p155));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_153_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_153_8_16_1_1_U343(.din0(sl_4),.din1(sl_6),.din2(s_8_load_2),.din3(s_10_load_2),.din4(s_12_load_2),.din5(s_14_load_2),.din6(s_16_load_2),.din7(s_18_load_2),.din8(s_20_load_2),.din9(s_22_load_2),.din10(s_24_load_2),.din11(s_26_load_2),.din12(s_28_load_2),.din13(s_30_load_2),.din14(s_32_load_2),.din15(s_34_load_2),.din16(s_36_load_2),.din17(s_38_load_2),.din18(s_40_load_2),.din19(s_42_load_2),.din20(s_44_load_2),.din21(s_46_load_2),.din22(s_48_load_2),.din23(s_50_load_2),.din24(s_52_load_2),.din25(s_54_load_2),.din26(s_56_load_2),.din27(s_58_load_2),.din28(s_60_load_2),.din29(s_62_load_2),.din30(s_64_load_2),.din31(s_66_load_2),.din32(s_68_load_2),.din33(s_70_load_2),.din34(s_72_load_2),.din35(s_74_load_2),.din36(s_76_load_2),.din37(s_78_load_2),.din38(s_80_load_2),.din39(s_82_load_2),.din40(s_84_load_2),.din41(s_86_load_2),.din42(s_88_load_2),.din43(s_90_load_2),.din44(s_92_load_2),.din45(s_94_load_2),.din46(s_96_load_2),.din47(s_98_load_2),.din48(s_100_load_2),.din49(s_102_load_2),.din50(s_104_load_2),.din51(s_106_load_2),.din52(s_108_load_2),.din53(s_110_load_2),.din54(s_112_load_2),.din55(s_114_load_2),.din56(s_116_load_2),.din57(s_118_load_2),.din58(s_120_load_2),.din59(s_122_load_2),.din60(s_124_load_2),.din61(s_126_load_2),.din62(s_128_load_2),.din63(s_130_load_2),.din64(s_132_load_2),.din65(s_134_load_2),.din66(s_136_load_2),.din67(s_138_load_2),.din68(s_140_load_2),.din69(s_142_load_2),.din70(s_144_load_2),.din71(s_146_load_2),.din72(s_148_load_2),.din73(s_150_load_2),.din74(s_152_load_2),.din75(s_154_load_2),.def(tmp_3_fu_2986_p153),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_3_fu_2986_p155));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_153_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_153_8_16_1_1_U344(.din0(sl_3),.din1(sl_5),.din2(sl_7),.din3(s_9_load_2),.din4(s_11_load_2),.din5(s_13_load_2),.din6(s_15_load_2),.din7(s_17_load_2),.din8(s_19_load_2),.din9(s_21_load_2),.din10(s_23_load_2),.din11(s_25_load_2),.din12(s_27_load_2),.din13(s_29_load_2),.din14(s_31_load_2),.din15(s_33_load_2),.din16(s_35_load_2),.din17(s_37_load_2),.din18(s_39_load_2),.din19(s_41_load_2),.din20(s_43_load_2),.din21(s_45_load_2),.din22(s_47_load_2),.din23(s_49_load_2),.din24(s_51_load_2),.din25(s_53_load_2),.din26(s_55_load_2),.din27(s_57_load_2),.din28(s_59_load_2),.din29(s_61_load_2),.din30(s_63_load_2),.din31(s_65_load_2),.din32(s_67_load_2),.din33(s_69_load_2),.din34(s_71_load_2),.din35(s_73_load_2),.din36(s_75_load_2),.din37(s_77_load_2),.din38(s_79_load_2),.din39(s_81_load_2),.din40(s_83_load_2),.din41(s_85_load_2),.din42(s_87_load_2),.din43(s_89_load_2),.din44(s_91_load_2),.din45(s_93_load_2),.din46(s_95_load_2),.din47(s_97_load_2),.din48(s_99_load_2),.din49(s_101_load_2),.din50(s_103_load_2),.din51(s_105_load_2),.din52(s_107_load_2),.din53(s_109_load_2),.din54(s_111_load_2),.din55(s_113_load_2),.din56(s_115_load_2),.din57(s_117_load_2),.din58(s_119_load_2),.din59(s_121_load_2),.din60(s_123_load_2),.din61(s_125_load_2),.din62(s_127_load_2),.din63(s_129_load_2),.din64(s_131_load_2),.din65(s_133_load_2),.din66(s_135_load_2),.din67(s_137_load_2),.din68(s_139_load_2),.din69(s_141_load_2),.din70(s_143_load_2),.din71(s_145_load_2),.din72(s_147_load_2),.din73(s_149_load_2),.din74(s_151_load_2),.din75(s_153_load_2),.def(tmp_4_fu_3302_p153),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_4_fu_3302_p155));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_153_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_153_8_16_1_1_U345(.din0(sl_2),.din1(sl_4),.din2(sl_6),.din3(s_8_load_2),.din4(s_10_load_2),.din5(s_12_load_2),.din6(s_14_load_2),.din7(s_16_load_2),.din8(s_18_load_2),.din9(s_20_load_2),.din10(s_22_load_2),.din11(s_24_load_2),.din12(s_26_load_2),.din13(s_28_load_2),.din14(s_30_load_2),.din15(s_32_load_2),.din16(s_34_load_2),.din17(s_36_load_2),.din18(s_38_load_2),.din19(s_40_load_2),.din20(s_42_load_2),.din21(s_44_load_2),.din22(s_46_load_2),.din23(s_48_load_2),.din24(s_50_load_2),.din25(s_52_load_2),.din26(s_54_load_2),.din27(s_56_load_2),.din28(s_58_load_2),.din29(s_60_load_2),.din30(s_62_load_2),.din31(s_64_load_2),.din32(s_66_load_2),.din33(s_68_load_2),.din34(s_70_load_2),.din35(s_72_load_2),.din36(s_74_load_2),.din37(s_76_load_2),.din38(s_78_load_2),.din39(s_80_load_2),.din40(s_82_load_2),.din41(s_84_load_2),.din42(s_86_load_2),.din43(s_88_load_2),.din44(s_90_load_2),.din45(s_92_load_2),.din46(s_94_load_2),.din47(s_96_load_2),.din48(s_98_load_2),.din49(s_100_load_2),.din50(s_102_load_2),.din51(s_104_load_2),.din52(s_106_load_2),.din53(s_108_load_2),.din54(s_110_load_2),.din55(s_112_load_2),.din56(s_114_load_2),.din57(s_116_load_2),.din58(s_118_load_2),.din59(s_120_load_2),.din60(s_122_load_2),.din61(s_124_load_2),.din62(s_126_load_2),.din63(s_128_load_2),.din64(s_130_load_2),.din65(s_132_load_2),.din66(s_134_load_2),.din67(s_136_load_2),.din68(s_138_load_2),.din69(s_140_load_2),.din70(s_142_load_2),.din71(s_144_load_2),.din72(s_146_load_2),.din73(s_148_load_2),.din74(s_150_load_2),.din75(s_152_load_2),.def(tmp_5_fu_3624_p153),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_5_fu_3624_p155));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_153_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_153_8_16_1_1_U346(.din0(sl_1),.din1(sl_3),.din2(sl_5),.din3(sl_7),.din4(s_9_load_2),.din5(s_11_load_2),.din6(s_13_load_2),.din7(s_15_load_2),.din8(s_17_load_2),.din9(s_19_load_2),.din10(s_21_load_2),.din11(s_23_load_2),.din12(s_25_load_2),.din13(s_27_load_2),.din14(s_29_load_2),.din15(s_31_load_2),.din16(s_33_load_2),.din17(s_35_load_2),.din18(s_37_load_2),.din19(s_39_load_2),.din20(s_41_load_2),.din21(s_43_load_2),.din22(s_45_load_2),.din23(s_47_load_2),.din24(s_49_load_2),.din25(s_51_load_2),.din26(s_53_load_2),.din27(s_55_load_2),.din28(s_57_load_2),.din29(s_59_load_2),.din30(s_61_load_2),.din31(s_63_load_2),.din32(s_65_load_2),.din33(s_67_load_2),.din34(s_69_load_2),.din35(s_71_load_2),.din36(s_73_load_2),.din37(s_75_load_2),.din38(s_77_load_2),.din39(s_79_load_2),.din40(s_81_load_2),.din41(s_83_load_2),.din42(s_85_load_2),.din43(s_87_load_2),.din44(s_89_load_2),.din45(s_91_load_2),.din46(s_93_load_2),.din47(s_95_load_2),.din48(s_97_load_2),.din49(s_99_load_2),.din50(s_101_load_2),.din51(s_103_load_2),.din52(s_105_load_2),.din53(s_107_load_2),.din54(s_109_load_2),.din55(s_111_load_2),.din56(s_113_load_2),.din57(s_115_load_2),.din58(s_117_load_2),.din59(s_119_load_2),.din60(s_121_load_2),.din61(s_123_load_2),.din62(s_125_load_2),.din63(s_127_load_2),.din64(s_129_load_2),.din65(s_131_load_2),.din66(s_133_load_2),.din67(s_135_load_2),.din68(s_137_load_2),.din69(s_139_load_2),.din70(s_141_load_2),.din71(s_143_load_2),.din72(s_145_load_2),.din73(s_147_load_2),.din74(s_149_load_2),.din75(s_151_load_2),.def(tmp_6_fu_3940_p153),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_6_fu_3940_p155));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_153_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_153_8_16_1_1_U347(.din0(sl),.din1(sl_2),.din2(sl_4),.din3(sl_6),.din4(s_8_load_2),.din5(s_10_load_2),.din6(s_12_load_2),.din7(s_14_load_2),.din8(s_16_load_2),.din9(s_18_load_2),.din10(s_20_load_2),.din11(s_22_load_2),.din12(s_24_load_2),.din13(s_26_load_2),.din14(s_28_load_2),.din15(s_30_load_2),.din16(s_32_load_2),.din17(s_34_load_2),.din18(s_36_load_2),.din19(s_38_load_2),.din20(s_40_load_2),.din21(s_42_load_2),.din22(s_44_load_2),.din23(s_46_load_2),.din24(s_48_load_2),.din25(s_50_load_2),.din26(s_52_load_2),.din27(s_54_load_2),.din28(s_56_load_2),.din29(s_58_load_2),.din30(s_60_load_2),.din31(s_62_load_2),.din32(s_64_load_2),.din33(s_66_load_2),.din34(s_68_load_2),.din35(s_70_load_2),.din36(s_72_load_2),.din37(s_74_load_2),.din38(s_76_load_2),.din39(s_78_load_2),.din40(s_80_load_2),.din41(s_82_load_2),.din42(s_84_load_2),.din43(s_86_load_2),.din44(s_88_load_2),.din45(s_90_load_2),.din46(s_92_load_2),.din47(s_94_load_2),.din48(s_96_load_2),.din49(s_98_load_2),.din50(s_100_load_2),.din51(s_102_load_2),.din52(s_104_load_2),.din53(s_106_load_2),.din54(s_108_load_2),.din55(s_110_load_2),.din56(s_112_load_2),.din57(s_114_load_2),.din58(s_116_load_2),.din59(s_118_load_2),.din60(s_120_load_2),.din61(s_122_load_2),.din62(s_124_load_2),.din63(s_126_load_2),.din64(s_128_load_2),.din65(s_130_load_2),.din66(s_132_load_2),.din67(s_134_load_2),.din68(s_136_load_2),.din69(s_138_load_2),.din70(s_140_load_2),.din71(s_142_load_2),.din72(s_144_load_2),.din73(s_146_load_2),.din74(s_148_load_2),.din75(s_150_load_2),.def(tmp_7_fu_4256_p153),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_7_fu_4256_p155));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_153_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_153_8_16_1_1_U348(.din0(s_9_load_2),.din1(s_11_load_2),.din2(s_13_load_2),.din3(s_15_load_2),.din4(s_17_load_2),.din5(s_19_load_2),.din6(s_21_load_2),.din7(s_23_load_2),.din8(s_25_load_2),.din9(s_27_load_2),.din10(s_29_load_2),.din11(s_31_load_2),.din12(s_33_load_2),.din13(s_35_load_2),.din14(s_37_load_2),.din15(s_39_load_2),.din16(s_41_load_2),.din17(s_43_load_2),.din18(s_45_load_2),.din19(s_47_load_2),.din20(s_49_load_2),.din21(s_51_load_2),.din22(s_53_load_2),.din23(s_55_load_2),.din24(s_57_load_2),.din25(s_59_load_2),.din26(s_61_load_2),.din27(s_63_load_2),.din28(s_65_load_2),.din29(s_67_load_2),.din30(s_69_load_2),.din31(s_71_load_2),.din32(s_73_load_2),.din33(s_75_load_2),.din34(s_77_load_2),.din35(s_79_load_2),.din36(s_81_load_2),.din37(s_83_load_2),.din38(s_85_load_2),.din39(s_87_load_2),.din40(s_89_load_2),.din41(s_91_load_2),.din42(s_93_load_2),.din43(s_95_load_2),.din44(s_97_load_2),.din45(s_99_load_2),.din46(s_101_load_2),.din47(s_103_load_2),.din48(s_105_load_2),.din49(s_107_load_2),.din50(s_109_load_2),.din51(s_111_load_2),.din52(s_113_load_2),.din53(s_115_load_2),.din54(s_117_load_2),.din55(s_119_load_2),.din56(s_121_load_2),.din57(s_123_load_2),.din58(s_125_load_2),.din59(s_127_load_2),.din60(s_129_load_2),.din61(s_131_load_2),.din62(s_133_load_2),.din63(s_135_load_2),.din64(s_137_load_2),.din65(s_139_load_2),.din66(s_141_load_2),.din67(s_143_load_2),.din68(s_145_load_2),.din69(s_147_load_2),.din70(s_149_load_2),.din71(s_151_load_2),.din72(s_153_load_2),.din73(s_155_load_2),.din74(s_157_load_2),.din75(s_159_load_2),.def(sl_9_fu_4572_p153),.sel(ap_sig_allocacmp_idx_load),.dout(sl_9_fu_4572_p155));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U349(.din0(mul_ln137_1_fu_4915_p0),.din1(mul_ln137_1_fu_4915_p1),.dout(mul_ln137_1_fu_4915_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U350(.din0(mul_ln139_1_fu_4921_p0),.din1(tmp_s_reg_5351),.dout(mul_ln139_1_fu_4921_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U351(.din0(mul_ln140_1_fu_4927_p0),.din1(mul_ln140_1_fu_4927_p1),.dout(mul_ln140_1_fu_4927_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U352(.din0(mul_ln141_1_fu_4932_p0),.din1(mul_ln141_1_fu_4932_p1),.dout(mul_ln141_1_fu_4932_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U353(.din0(mul_ln142_1_fu_4937_p0),.din1(mul_ln142_1_fu_4937_p1),.dout(mul_ln142_1_fu_4937_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U354(.din0(mul_ln143_1_fu_4942_p0),.din1(mul_ln143_1_fu_4942_p1),.dout(mul_ln143_1_fu_4942_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U355(.din0(mul_ln144_1_fu_4947_p0),.din1(mul_ln144_1_fu_4947_p1),.dout(mul_ln144_1_fu_4947_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U356(.din0(mul_ln145_1_fu_4952_p0),.din1(mul_ln145_1_fu_4952_p1),.dout(mul_ln145_1_fu_4952_p2));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U357(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5179_p0),.din1(grp_fu_5179_p1),.din2(mul_ln137_1_reg_5409),.ce(1'b1),.dout(grp_fu_5179_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U358(.clk(ap_clk),.reset(ap_rst),.din0(tmp_1_fu_2354_p155),.din1(grp_fu_5187_p1),.din2(mul_ln139_1_reg_5414),.ce(1'b1),.dout(grp_fu_5187_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U359(.clk(ap_clk),.reset(ap_rst),.din0(tmp_2_fu_2670_p155),.din1(grp_fu_5195_p1),.din2(mul_ln140_1_reg_5419),.ce(1'b1),.dout(grp_fu_5195_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U360(.clk(ap_clk),.reset(ap_rst),.din0(tmp_3_fu_2986_p155),.din1(grp_fu_5203_p1),.din2(mul_ln141_1_reg_5424),.ce(1'b1),.dout(grp_fu_5203_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U361(.clk(ap_clk),.reset(ap_rst),.din0(tmp_4_fu_3302_p155),.din1(grp_fu_5211_p1),.din2(mul_ln142_1_reg_5429),.ce(1'b1),.dout(grp_fu_5211_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U362(.clk(ap_clk),.reset(ap_rst),.din0(tmp_5_fu_3624_p155),.din1(grp_fu_5219_p1),.din2(mul_ln143_1_reg_5434),.ce(1'b1),.dout(grp_fu_5219_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U363(.clk(ap_clk),.reset(ap_rst),.din0(tmp_6_fu_3940_p155),.din1(grp_fu_5227_p1),.din2(mul_ln144_1_reg_5439),.ce(1'b1),.dout(grp_fu_5227_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U364(.clk(ap_clk),.reset(ap_rst),.din0(tmp_7_fu_4256_p155),.din1(grp_fu_5235_p1),.din2(mul_ln145_1_reg_5444),.ce(1'b1),.dout(grp_fu_5235_p3));
Gsm_LPC_Analysis_am_addmul_16s_16s_16s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.dout_WIDTH( 33 ))
am_addmul_16s_16s_16s_33_4_1_U365(.clk(ap_clk),.reset(ap_rst),.din0(sl_9_reg_5398),.din1(tmp_s_reg_5351),.din2(sl_8_reg_5333),.ce(1'b1),.dout(grp_fu_5243_p3));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_510_fu_550 <= add_ln124;
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd1))) begin
            empty_510_fu_550 <= add_ln138_fu_5065_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_511_fu_554 <= add_ln125;
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd1))) begin
            empty_511_fu_554 <= add_ln139_1_fu_5074_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_512_fu_558 <= add_ln126;
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd1))) begin
            empty_512_fu_558 <= add_ln140_1_fu_5083_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_513_fu_562 <= add_ln127;
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd1))) begin
            empty_513_fu_562 <= add_ln141_1_fu_5092_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_514_fu_566 <= add_ln128;
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd1))) begin
            empty_514_fu_566 <= add_ln142_1_fu_5101_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_515_fu_570 <= add_ln129;
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd1))) begin
            empty_515_fu_570 <= add_ln143_2_fu_5110_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_516_fu_574 <= add_ln130;
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd1))) begin
            empty_516_fu_574 <= add_ln144_1_fu_5119_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_517_fu_578 <= L_ACF_8_load;
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd1))) begin
            empty_517_fu_578 <= add_ln145_1_fu_5128_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_fu_546 <= add_ln123_3;
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd1))) begin
            empty_fu_546 <= add_ln137_1_fu_5056_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln132_fu_1717_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_542 <= i_5_fu_4884_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_542 <= 8'd8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln132_fu_1717_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            idx_fu_538 <= add_ln143_fu_3618_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            idx_fu_538 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        add_ln137_reg_5489 <= grp_fu_5179_p3;
        add_ln139_reg_5494 <= grp_fu_5187_p3;
        add_ln140_reg_5499 <= grp_fu_5195_p3;
        add_ln141_reg_5504 <= grp_fu_5203_p3;
        add_ln142_reg_5509 <= grp_fu_5211_p3;
        add_ln143_1_reg_5514 <= grp_fu_5219_p3;
        add_ln144_reg_5519 <= grp_fu_5227_p3;
        add_ln145_reg_5524 <= grp_fu_5235_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln132_reg_5329 <= icmp_ln132_fu_1717_p2;
        icmp_ln132_reg_5329_pp0_iter1_reg <= icmp_ln132_reg_5329;
        mul_ln137_1_reg_5409 <= mul_ln137_1_fu_4915_p2;
        mul_ln139_1_reg_5414 <= mul_ln139_1_fu_4921_p2;
        mul_ln140_1_reg_5419 <= mul_ln140_1_fu_4927_p2;
        mul_ln141_1_reg_5424 <= mul_ln141_1_fu_4932_p2;
        mul_ln142_1_reg_5429 <= mul_ln142_1_fu_4937_p2;
        mul_ln143_1_reg_5434 <= mul_ln143_1_fu_4942_p2;
        mul_ln144_1_reg_5439 <= mul_ln144_1_fu_4947_p2;
        mul_ln145_1_reg_5444 <= mul_ln145_1_fu_4952_p2;
        sext_ln140_reg_5357 <= sext_ln140_fu_2666_p1;
        sext_ln141_reg_5363 <= sext_ln141_fu_2982_p1;
        sext_ln142_reg_5369 <= sext_ln142_fu_3298_p1;
        sext_ln143_reg_5375 <= sext_ln143_fu_3614_p1;
        sext_ln144_reg_5381 <= sext_ln144_fu_3936_p1;
        sext_ln145_reg_5387 <= sext_ln145_fu_4252_p1;
        sl_8_reg_5333 <= sl_8_fu_1726_p155;
        sl_9_reg_5398 <= sl_9_fu_4572_p155;
        tmp_s_reg_5351 <= tmp_s_fu_2042_p155;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln132_reg_5329_pp0_iter2_reg <= icmp_ln132_reg_5329_pp0_iter1_reg;
        icmp_ln132_reg_5329_pp0_iter3_reg <= icmp_ln132_reg_5329_pp0_iter2_reg;
    end
end
always @ (*) begin
    if (((icmp_ln132_fu_1717_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_4 = 8'd8;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_542;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_idx_load = 8'd0;
    end else begin
        ap_sig_allocacmp_idx_load = idx_fu_538;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd0))) begin
        p_out1_ap_vld = 1'b1;
    end else begin
        p_out1_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd0))) begin
        p_out2_ap_vld = 1'b1;
    end else begin
        p_out2_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd0))) begin
        p_out3_ap_vld = 1'b1;
    end else begin
        p_out3_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd0))) begin
        p_out4_ap_vld = 1'b1;
    end else begin
        p_out4_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd0))) begin
        p_out5_ap_vld = 1'b1;
    end else begin
        p_out5_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd0))) begin
        p_out6_ap_vld = 1'b1;
    end else begin
        p_out6_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd0))) begin
        p_out7_ap_vld = 1'b1;
    end else begin
        p_out7_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd0))) begin
        p_out8_ap_vld = 1'b1;
    end else begin
        p_out8_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_5329_pp0_iter3_reg == 1'd0))) begin
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
assign add_ln137_1_fu_5056_p2 = ($signed(empty_fu_546) + $signed(sext_ln137_4_fu_5053_p1));
assign add_ln138_fu_5065_p2 = ($signed(sext_ln138_2_fu_5062_p1) + $signed(empty_510_fu_550));
assign add_ln139_1_fu_5074_p2 = ($signed(empty_511_fu_554) + $signed(sext_ln139_4_fu_5071_p1));
assign add_ln140_1_fu_5083_p2 = ($signed(empty_512_fu_558) + $signed(sext_ln140_3_fu_5080_p1));
assign add_ln141_1_fu_5092_p2 = ($signed(empty_513_fu_562) + $signed(sext_ln141_3_fu_5089_p1));
assign add_ln142_1_fu_5101_p2 = ($signed(empty_514_fu_566) + $signed(sext_ln142_3_fu_5098_p1));
assign add_ln143_2_fu_5110_p2 = ($signed(empty_515_fu_570) + $signed(sext_ln143_3_fu_5107_p1));
assign add_ln143_fu_3618_p2 = (ap_sig_allocacmp_idx_load + 8'd2);
assign add_ln144_1_fu_5119_p2 = ($signed(empty_516_fu_574) + $signed(sext_ln144_3_fu_5116_p1));
assign add_ln145_1_fu_5128_p2 = ($signed(empty_517_fu_578) + $signed(sext_ln145_3_fu_5125_p1));
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
assign grp_fu_5179_p0 = sext_ln138_1_fu_2038_p1;
assign grp_fu_5179_p1 = sext_ln138_1_fu_2038_p1;
assign grp_fu_5187_p1 = sext_ln138_1_fu_2038_p1;
assign grp_fu_5195_p1 = sext_ln138_1_fu_2038_p1;
assign grp_fu_5203_p1 = sext_ln138_1_fu_2038_p1;
assign grp_fu_5211_p1 = sext_ln138_1_fu_2038_p1;
assign grp_fu_5219_p1 = sext_ln138_1_fu_2038_p1;
assign grp_fu_5227_p1 = sext_ln138_1_fu_2038_p1;
assign grp_fu_5235_p1 = sext_ln138_1_fu_2038_p1;
assign i_5_fu_4884_p2 = (ap_sig_allocacmp_i_4 + 8'd2);
assign icmp_ln132_fu_1717_p2 = ((ap_sig_allocacmp_i_4 < 8'd160) ? 1'b1 : 1'b0);
assign mul_ln137_1_fu_4915_p0 = sext_ln137_1_fu_4912_p1;
assign mul_ln137_1_fu_4915_p1 = sext_ln137_1_fu_4912_p1;
assign mul_ln139_1_fu_4921_p0 = sext_ln137_1_fu_4912_p1;
assign mul_ln140_1_fu_4927_p0 = sext_ln137_1_fu_4912_p1;
assign mul_ln140_1_fu_4927_p1 = sext_ln140_reg_5357;
assign mul_ln141_1_fu_4932_p0 = sext_ln137_1_fu_4912_p1;
assign mul_ln141_1_fu_4932_p1 = sext_ln141_reg_5363;
assign mul_ln142_1_fu_4937_p0 = sext_ln137_1_fu_4912_p1;
assign mul_ln142_1_fu_4937_p1 = sext_ln142_reg_5369;
assign mul_ln143_1_fu_4942_p0 = sext_ln137_1_fu_4912_p1;
assign mul_ln143_1_fu_4942_p1 = sext_ln143_reg_5375;
assign mul_ln144_1_fu_4947_p0 = sext_ln137_1_fu_4912_p1;
assign mul_ln144_1_fu_4947_p1 = sext_ln144_reg_5381;
assign mul_ln145_1_fu_4952_p0 = sext_ln137_1_fu_4912_p1;
assign mul_ln145_1_fu_4952_p1 = sext_ln145_reg_5387;
assign p_out = empty_517_fu_578[62:0];
assign p_out1 = empty_516_fu_574[62:0];
assign p_out2 = empty_515_fu_570[62:0];
assign p_out3 = empty_514_fu_566[62:0];
assign p_out4 = empty_513_fu_562[62:0];
assign p_out5 = empty_512_fu_558[62:0];
assign p_out6 = empty_511_fu_554[62:0];
assign p_out7 = empty_510_fu_550[62:0];
assign p_out8 = empty_fu_546[62:0];
assign sext_ln137_1_fu_4912_p1 = sl_9_reg_5398;
assign sext_ln137_4_fu_5053_p1 = add_ln137_reg_5489;
assign sext_ln138_1_fu_2038_p1 = sl_8_fu_1726_p155;
assign sext_ln138_2_fu_5062_p1 = grp_fu_5243_p3;
assign sext_ln139_4_fu_5071_p1 = add_ln139_reg_5494;
assign sext_ln140_3_fu_5080_p1 = add_ln140_reg_5499;
assign sext_ln140_fu_2666_p1 = tmp_1_fu_2354_p155;
assign sext_ln141_3_fu_5089_p1 = add_ln141_reg_5504;
assign sext_ln141_fu_2982_p1 = tmp_2_fu_2670_p155;
assign sext_ln142_3_fu_5098_p1 = add_ln142_reg_5509;
assign sext_ln142_fu_3298_p1 = tmp_3_fu_2986_p155;
assign sext_ln143_3_fu_5107_p1 = add_ln143_1_reg_5514;
assign sext_ln143_fu_3614_p1 = tmp_4_fu_3302_p155;
assign sext_ln144_3_fu_5116_p1 = add_ln144_reg_5519;
assign sext_ln144_fu_3936_p1 = tmp_5_fu_3624_p155;
assign sext_ln145_3_fu_5125_p1 = add_ln145_reg_5524;
assign sext_ln145_fu_4252_p1 = tmp_6_fu_3940_p155;
assign sl_8_fu_1726_p153 = 'bx;
assign sl_9_fu_4572_p153 = 'bx;
assign tmp_1_fu_2354_p153 = 'bx;
assign tmp_2_fu_2670_p153 = 'bx;
assign tmp_3_fu_2986_p153 = 'bx;
assign tmp_4_fu_3302_p153 = 'bx;
assign tmp_5_fu_3624_p153 = 'bx;
assign tmp_6_fu_3940_p153 = 'bx;
assign tmp_7_fu_4256_p153 = 'bx;
assign tmp_s_fu_2042_p153 = 'bx;
endmodule 
