
module Gsm_LPC_Analysis_Autocorrelation_17_18_Pipeline_autocol_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,L_ACF_8_load,add_ln130,add_ln129,add_ln128,add_ln127,add_ln126,add_ln125,add_ln124,add_ln123_3,s_8_load_2,s_12_load_2,s_16_load_2,s_20_load_2,s_24_load_2,s_28_load_2,s_32_load_2,s_36_load_2,s_40_load_2,s_44_load_2,s_48_load_2,s_52_load_2,s_56_load_2,s_60_load_2,s_64_load_2,s_68_load_2,s_72_load_2,s_76_load_2,s_80_load_2,s_84_load_2,s_88_load_2,s_92_load_2,s_96_load_2,s_100_load_2,s_104_load_2,s_108_load_2,s_112_load_2,s_116_load_2,s_120_load_2,s_124_load_2,s_128_load_2,s_132_load_2,s_136_load_2,s_140_load_2,s_144_load_2,s_148_load_2,s_152_load_2,s_156_load_2,sl_7,s_11_load_2,s_15_load_2,s_19_load_2,s_23_load_2,s_27_load_2,s_31_load_2,s_35_load_2,s_39_load_2,s_43_load_2,s_47_load_2,s_51_load_2,s_55_load_2,s_59_load_2,s_63_load_2,s_67_load_2,s_71_load_2,s_75_load_2,s_79_load_2,s_83_load_2,s_87_load_2,s_91_load_2,s_95_load_2,s_99_load_2,s_103_load_2,s_107_load_2,s_111_load_2,s_115_load_2,s_119_load_2,s_123_load_2,s_127_load_2,s_131_load_2,s_135_load_2,s_139_load_2,s_143_load_2,s_147_load_2,s_151_load_2,s_155_load_2,sl_6,s_10_load_2,s_14_load_2,s_18_load_2,s_22_load_2,s_26_load_2,s_30_load_2,s_34_load_2,s_38_load_2,s_42_load_2,s_46_load_2,s_50_load_2,s_54_load_2,s_58_load_2,s_62_load_2,s_66_load_2,s_70_load_2,s_74_load_2,s_78_load_2,s_82_load_2,s_86_load_2,s_90_load_2,s_94_load_2,s_98_load_2,s_102_load_2,s_106_load_2,s_110_load_2,s_114_load_2,s_118_load_2,s_122_load_2,s_126_load_2,s_130_load_2,s_134_load_2,s_138_load_2,s_142_load_2,s_146_load_2,s_150_load_2,s_154_load_2,sl_5,s_9_load_2,s_13_load_2,s_17_load_2,s_21_load_2,s_25_load_2,s_29_load_2,s_33_load_2,s_37_load_2,s_41_load_2,s_45_load_2,s_49_load_2,s_53_load_2,s_57_load_2,s_61_load_2,s_65_load_2,s_69_load_2,s_73_load_2,s_77_load_2,s_81_load_2,s_85_load_2,s_89_load_2,s_93_load_2,s_97_load_2,s_101_load_2,s_105_load_2,s_109_load_2,s_113_load_2,s_117_load_2,s_121_load_2,s_125_load_2,s_129_load_2,s_133_load_2,s_137_load_2,s_141_load_2,s_145_load_2,s_149_load_2,s_153_load_2,sl_4,sl_3,sl_2,sl_1,sl,s_157_load_2,s_158_load_2,s_159_load_2,p_out,p_out_ap_vld,p_out1,p_out1_ap_vld,p_out2,p_out2_ap_vld,p_out3,p_out3_ap_vld,p_out4,p_out4_ap_vld,p_out5,p_out5_ap_vld,p_out6,p_out6_ap_vld,p_out7,p_out7_ap_vld,p_out8,p_out8_ap_vld);  
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
input  [15:0] s_12_load_2;
input  [15:0] s_16_load_2;
input  [15:0] s_20_load_2;
input  [15:0] s_24_load_2;
input  [15:0] s_28_load_2;
input  [15:0] s_32_load_2;
input  [15:0] s_36_load_2;
input  [15:0] s_40_load_2;
input  [15:0] s_44_load_2;
input  [15:0] s_48_load_2;
input  [15:0] s_52_load_2;
input  [15:0] s_56_load_2;
input  [15:0] s_60_load_2;
input  [15:0] s_64_load_2;
input  [15:0] s_68_load_2;
input  [15:0] s_72_load_2;
input  [15:0] s_76_load_2;
input  [15:0] s_80_load_2;
input  [15:0] s_84_load_2;
input  [15:0] s_88_load_2;
input  [15:0] s_92_load_2;
input  [15:0] s_96_load_2;
input  [15:0] s_100_load_2;
input  [15:0] s_104_load_2;
input  [15:0] s_108_load_2;
input  [15:0] s_112_load_2;
input  [15:0] s_116_load_2;
input  [15:0] s_120_load_2;
input  [15:0] s_124_load_2;
input  [15:0] s_128_load_2;
input  [15:0] s_132_load_2;
input  [15:0] s_136_load_2;
input  [15:0] s_140_load_2;
input  [15:0] s_144_load_2;
input  [15:0] s_148_load_2;
input  [15:0] s_152_load_2;
input  [15:0] s_156_load_2;
input  [15:0] sl_7;
input  [15:0] s_11_load_2;
input  [15:0] s_15_load_2;
input  [15:0] s_19_load_2;
input  [15:0] s_23_load_2;
input  [15:0] s_27_load_2;
input  [15:0] s_31_load_2;
input  [15:0] s_35_load_2;
input  [15:0] s_39_load_2;
input  [15:0] s_43_load_2;
input  [15:0] s_47_load_2;
input  [15:0] s_51_load_2;
input  [15:0] s_55_load_2;
input  [15:0] s_59_load_2;
input  [15:0] s_63_load_2;
input  [15:0] s_67_load_2;
input  [15:0] s_71_load_2;
input  [15:0] s_75_load_2;
input  [15:0] s_79_load_2;
input  [15:0] s_83_load_2;
input  [15:0] s_87_load_2;
input  [15:0] s_91_load_2;
input  [15:0] s_95_load_2;
input  [15:0] s_99_load_2;
input  [15:0] s_103_load_2;
input  [15:0] s_107_load_2;
input  [15:0] s_111_load_2;
input  [15:0] s_115_load_2;
input  [15:0] s_119_load_2;
input  [15:0] s_123_load_2;
input  [15:0] s_127_load_2;
input  [15:0] s_131_load_2;
input  [15:0] s_135_load_2;
input  [15:0] s_139_load_2;
input  [15:0] s_143_load_2;
input  [15:0] s_147_load_2;
input  [15:0] s_151_load_2;
input  [15:0] s_155_load_2;
input  [15:0] sl_6;
input  [15:0] s_10_load_2;
input  [15:0] s_14_load_2;
input  [15:0] s_18_load_2;
input  [15:0] s_22_load_2;
input  [15:0] s_26_load_2;
input  [15:0] s_30_load_2;
input  [15:0] s_34_load_2;
input  [15:0] s_38_load_2;
input  [15:0] s_42_load_2;
input  [15:0] s_46_load_2;
input  [15:0] s_50_load_2;
input  [15:0] s_54_load_2;
input  [15:0] s_58_load_2;
input  [15:0] s_62_load_2;
input  [15:0] s_66_load_2;
input  [15:0] s_70_load_2;
input  [15:0] s_74_load_2;
input  [15:0] s_78_load_2;
input  [15:0] s_82_load_2;
input  [15:0] s_86_load_2;
input  [15:0] s_90_load_2;
input  [15:0] s_94_load_2;
input  [15:0] s_98_load_2;
input  [15:0] s_102_load_2;
input  [15:0] s_106_load_2;
input  [15:0] s_110_load_2;
input  [15:0] s_114_load_2;
input  [15:0] s_118_load_2;
input  [15:0] s_122_load_2;
input  [15:0] s_126_load_2;
input  [15:0] s_130_load_2;
input  [15:0] s_134_load_2;
input  [15:0] s_138_load_2;
input  [15:0] s_142_load_2;
input  [15:0] s_146_load_2;
input  [15:0] s_150_load_2;
input  [15:0] s_154_load_2;
input  [15:0] sl_5;
input  [15:0] s_9_load_2;
input  [15:0] s_13_load_2;
input  [15:0] s_17_load_2;
input  [15:0] s_21_load_2;
input  [15:0] s_25_load_2;
input  [15:0] s_29_load_2;
input  [15:0] s_33_load_2;
input  [15:0] s_37_load_2;
input  [15:0] s_41_load_2;
input  [15:0] s_45_load_2;
input  [15:0] s_49_load_2;
input  [15:0] s_53_load_2;
input  [15:0] s_57_load_2;
input  [15:0] s_61_load_2;
input  [15:0] s_65_load_2;
input  [15:0] s_69_load_2;
input  [15:0] s_73_load_2;
input  [15:0] s_77_load_2;
input  [15:0] s_81_load_2;
input  [15:0] s_85_load_2;
input  [15:0] s_89_load_2;
input  [15:0] s_93_load_2;
input  [15:0] s_97_load_2;
input  [15:0] s_101_load_2;
input  [15:0] s_105_load_2;
input  [15:0] s_109_load_2;
input  [15:0] s_113_load_2;
input  [15:0] s_117_load_2;
input  [15:0] s_121_load_2;
input  [15:0] s_125_load_2;
input  [15:0] s_129_load_2;
input  [15:0] s_133_load_2;
input  [15:0] s_137_load_2;
input  [15:0] s_141_load_2;
input  [15:0] s_145_load_2;
input  [15:0] s_149_load_2;
input  [15:0] s_153_load_2;
input  [15:0] sl_4;
input  [15:0] sl_3;
input  [15:0] sl_2;
input  [15:0] sl_1;
input  [15:0] sl;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln132_fu_1641_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln132_reg_4273;
reg   [0:0] icmp_ln132_reg_4273_pp0_iter1_reg;
reg   [0:0] icmp_ln132_reg_4273_pp0_iter2_reg;
reg   [0:0] icmp_ln132_reg_4273_pp0_iter3_reg;
reg   [0:0] icmp_ln132_reg_4273_pp0_iter4_reg;
reg   [0:0] icmp_ln132_reg_4273_pp0_iter5_reg;
wire  signed [15:0] sl_8_fu_1650_p79;
reg  signed [15:0] sl_8_reg_4277;
reg  signed [15:0] sl_8_reg_4277_pp0_iter1_reg;
reg  signed [15:0] sl_8_reg_4277_pp0_iter2_reg;
wire  signed [15:0] tmp_s_fu_1810_p79;
reg  signed [15:0] tmp_s_reg_4283;
reg  signed [15:0] tmp_s_reg_4283_pp0_iter1_reg;
wire  signed [15:0] tmp_1_fu_1970_p79;
reg  signed [15:0] tmp_1_reg_4289;
reg  signed [15:0] tmp_1_reg_4289_pp0_iter1_reg;
wire  signed [15:0] tmp_2_fu_2130_p79;
reg  signed [15:0] tmp_2_reg_4295;
reg  signed [15:0] tmp_2_reg_4295_pp0_iter1_reg;
wire   [15:0] tmp_3_fu_2296_p79;
reg   [15:0] tmp_3_reg_4301;
reg   [15:0] tmp_3_reg_4301_pp0_iter1_reg;
wire   [15:0] tmp_4_fu_2456_p79;
reg   [15:0] tmp_4_reg_4306;
reg   [15:0] tmp_4_reg_4306_pp0_iter1_reg;
wire   [15:0] tmp_5_fu_2616_p79;
reg   [15:0] tmp_5_reg_4311;
reg  signed [15:0] tmp_5_reg_4311_pp0_iter1_reg;
wire   [15:0] tmp_6_fu_2776_p79;
reg   [15:0] tmp_6_reg_4316;
reg  signed [15:0] tmp_6_reg_4316_pp0_iter1_reg;
wire   [15:0] tmp_7_fu_2936_p79;
reg   [15:0] tmp_7_reg_4321;
reg   [15:0] tmp_7_reg_4321_pp0_iter1_reg;
reg  signed [15:0] tmp_7_reg_4321_pp0_iter2_reg;
wire  signed [15:0] sl_9_fu_3096_p79;
reg  signed [15:0] sl_9_reg_4326;
reg  signed [15:0] sl_9_reg_4326_pp0_iter1_reg;
wire  signed [15:0] sl_10_fu_3256_p79;
reg  signed [15:0] sl_10_reg_4333;
reg  signed [15:0] sl_10_reg_4333_pp0_iter1_reg;
wire  signed [15:0] sl_11_fu_3416_p79;
reg  signed [15:0] sl_11_reg_4340;
reg  signed [15:0] sl_11_reg_4340_pp0_iter1_reg;
wire  signed [32:0] sext_ln138_fu_3592_p1;
reg  signed [32:0] sext_ln138_reg_4346;
wire  signed [16:0] sext_ln139_1_fu_3595_p1;
reg  signed [16:0] sext_ln139_1_reg_4353;
wire  signed [16:0] sext_ln135_2_fu_3604_p1;
reg  signed [16:0] sext_ln135_2_reg_4363;
wire  signed [31:0] sext_ln139_fu_3613_p1;
wire  signed [31:0] sext_ln140_fu_3616_p1;
reg  signed [31:0] sext_ln140_reg_4378;
wire  signed [31:0] sext_ln141_fu_3622_p1;
reg  signed [31:0] sext_ln141_reg_4385;
wire  signed [31:0] sext_ln142_fu_3625_p1;
reg  signed [31:0] sext_ln142_reg_4392;
wire  signed [31:0] sext_ln143_fu_3628_p1;
reg  signed [31:0] sext_ln143_reg_4400;
wire  signed [31:0] sext_ln144_fu_3631_p1;
reg  signed [31:0] sext_ln144_reg_4408;
wire  signed [31:0] sext_ln145_fu_3634_p1;
reg  signed [31:0] sext_ln145_reg_4415;
wire  signed [31:0] sext_ln135_3_fu_3637_p1;
wire  signed [31:0] sext_ln135_6_fu_3643_p1;
reg  signed [31:0] sext_ln135_6_reg_4433;
wire  signed [31:0] sext_ln137_1_fu_3646_p1;
wire   [31:0] mul_ln140_1_fu_3649_p2;
reg  signed [31:0] mul_ln140_1_reg_4455;
wire   [31:0] mul_ln137_2_fu_3661_p2;
reg  signed [31:0] mul_ln137_2_reg_4460;
wire   [31:0] mul_ln137_3_fu_3665_p2;
reg  signed [31:0] mul_ln137_3_reg_4465;
wire   [31:0] mul_ln141_2_fu_3674_p2;
reg  signed [31:0] mul_ln141_2_reg_4475;
wire   [31:0] mul_ln141_3_fu_3678_p2;
reg  signed [31:0] mul_ln141_3_reg_4480;
wire   [31:0] mul_ln142_2_fu_3683_p2;
reg  signed [31:0] mul_ln142_2_reg_4485;
wire   [31:0] mul_ln142_3_fu_3687_p2;
reg  signed [31:0] mul_ln142_3_reg_4490;
wire   [31:0] mul_ln143_2_fu_3692_p2;
reg  signed [31:0] mul_ln143_2_reg_4495;
wire   [31:0] mul_ln143_3_fu_3696_p2;
reg  signed [31:0] mul_ln143_3_reg_4500;
wire   [31:0] mul_ln144_2_fu_3701_p2;
reg  signed [31:0] mul_ln144_2_reg_4505;
wire   [31:0] mul_ln144_3_fu_3705_p2;
reg  signed [31:0] mul_ln144_3_reg_4510;
wire   [31:0] mul_ln145_2_fu_3710_p2;
reg  signed [31:0] mul_ln145_2_reg_4515;
wire   [31:0] mul_ln145_3_fu_3714_p2;
reg  signed [31:0] mul_ln145_3_reg_4520;
wire   [33:0] add_ln137_2_fu_3771_p2;
reg   [33:0] add_ln137_2_reg_4600;
wire  signed [33:0] grp_fu_4082_p4;
reg  signed [33:0] add_ln138_reg_4605;
wire  signed [33:0] grp_fu_4089_p4;
reg  signed [33:0] add_ln139_1_reg_4610;
wire  signed [33:0] grp_fu_4098_p3;
reg  signed [33:0] add_ln140_1_reg_4615;
wire   [33:0] add_ln141_3_fu_3783_p2;
reg   [33:0] add_ln141_3_reg_4620;
wire   [33:0] add_ln142_2_fu_3795_p2;
reg   [33:0] add_ln142_2_reg_4625;
wire   [33:0] add_ln143_2_fu_3807_p2;
reg   [33:0] add_ln143_2_reg_4630;
wire   [33:0] add_ln144_2_fu_3819_p2;
reg   [33:0] add_ln144_2_reg_4635;
wire   [33:0] add_ln145_2_fu_3831_p2;
reg   [33:0] add_ln145_2_reg_4640;
reg   [7:0] idx_fu_462;
wire   [7:0] add_ln141_fu_2290_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_idx_load;
wire    ap_block_pp0_stage0;
reg   [7:0] i_fu_466;
wire   [7:0] i_8_fu_3576_p2;
reg   [7:0] ap_sig_allocacmp_i_7;
reg   [63:0] empty_fu_470;
wire   [63:0] add_ln137_3_fu_3912_p2;
reg   [63:0] empty_399_fu_474;
wire   [63:0] add_ln138_1_fu_3921_p2;
reg   [63:0] empty_400_fu_478;
wire   [63:0] add_ln139_2_fu_3930_p2;
reg   [63:0] empty_401_fu_482;
wire   [63:0] add_ln140_2_fu_3939_p2;
reg   [63:0] empty_402_fu_486;
wire   [63:0] add_ln141_4_fu_3948_p2;
reg   [63:0] empty_403_fu_490;
wire   [63:0] add_ln142_3_fu_3957_p2;
reg   [63:0] empty_404_fu_494;
wire   [63:0] add_ln143_3_fu_3966_p2;
reg   [63:0] empty_405_fu_498;
wire   [63:0] add_ln144_3_fu_3975_p2;
reg   [63:0] empty_406_fu_502;
wire   [63:0] add_ln145_3_fu_3984_p2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
wire    ap_block_pp0_stage0_01001;
wire   [15:0] sl_8_fu_1650_p77;
wire   [15:0] tmp_s_fu_1810_p77;
wire   [15:0] tmp_1_fu_1970_p77;
wire   [15:0] tmp_2_fu_2130_p77;
wire   [15:0] tmp_3_fu_2296_p77;
wire   [15:0] tmp_4_fu_2456_p77;
wire   [15:0] tmp_5_fu_2616_p77;
wire   [15:0] tmp_6_fu_2776_p77;
wire   [15:0] tmp_7_fu_2936_p77;
wire   [15:0] sl_9_fu_3096_p77;
wire   [15:0] sl_10_fu_3256_p77;
wire   [15:0] sl_11_fu_3416_p77;
wire  signed [15:0] mul_ln140_1_fu_3649_p1;
wire  signed [15:0] mul_ln137_2_fu_3661_p0;
wire  signed [15:0] mul_ln137_2_fu_3661_p1;
wire  signed [15:0] mul_ln137_3_fu_3665_p0;
wire  signed [31:0] sext_ln138_1_fu_3655_p1;
wire  signed [15:0] mul_ln137_3_fu_3665_p1;
wire  signed [15:0] mul_ln141_2_fu_3674_p0;
wire  signed [15:0] mul_ln141_2_fu_3674_p1;
wire  signed [15:0] mul_ln141_3_fu_3678_p0;
wire  signed [15:0] mul_ln141_3_fu_3678_p1;
wire  signed [15:0] mul_ln142_2_fu_3683_p0;
wire  signed [15:0] mul_ln142_2_fu_3683_p1;
wire  signed [15:0] mul_ln142_3_fu_3687_p0;
wire  signed [15:0] mul_ln142_3_fu_3687_p1;
wire  signed [15:0] mul_ln143_2_fu_3692_p0;
wire  signed [15:0] mul_ln143_2_fu_3692_p1;
wire  signed [15:0] mul_ln143_3_fu_3696_p0;
wire  signed [15:0] mul_ln143_3_fu_3696_p1;
wire  signed [15:0] mul_ln144_2_fu_3701_p0;
wire  signed [15:0] mul_ln144_2_fu_3701_p1;
wire  signed [15:0] mul_ln144_3_fu_3705_p0;
wire  signed [15:0] mul_ln144_3_fu_3705_p1;
wire  signed [15:0] mul_ln145_2_fu_3710_p0;
wire  signed [15:0] mul_ln145_2_fu_3710_p1;
wire  signed [15:0] mul_ln145_3_fu_3714_p1;
wire  signed [32:0] grp_fu_4035_p3;
wire  signed [32:0] grp_fu_4044_p3;
wire  signed [32:0] grp_fu_4053_p4;
wire  signed [32:0] grp_fu_4073_p3;
wire  signed [32:0] grp_fu_4064_p3;
wire  signed [33:0] sext_ln137_7_fu_3768_p1;
wire  signed [33:0] sext_ln137_6_fu_3765_p1;
wire  signed [32:0] grp_fu_4115_p3;
wire  signed [32:0] grp_fu_4106_p3;
wire  signed [33:0] sext_ln141_7_fu_3780_p1;
wire  signed [33:0] sext_ln141_6_fu_3777_p1;
wire  signed [32:0] grp_fu_4133_p3;
wire  signed [32:0] grp_fu_4124_p3;
wire  signed [33:0] sext_ln142_6_fu_3792_p1;
wire  signed [33:0] sext_ln142_5_fu_3789_p1;
wire  signed [32:0] grp_fu_4151_p3;
wire  signed [32:0] grp_fu_4142_p3;
wire  signed [33:0] sext_ln143_6_fu_3804_p1;
wire  signed [33:0] sext_ln143_5_fu_3801_p1;
wire  signed [32:0] grp_fu_4169_p3;
wire  signed [32:0] grp_fu_4160_p3;
wire  signed [33:0] sext_ln144_6_fu_3816_p1;
wire  signed [33:0] sext_ln144_5_fu_3813_p1;
wire  signed [32:0] grp_fu_4187_p3;
wire  signed [32:0] grp_fu_4178_p3;
wire  signed [33:0] sext_ln145_6_fu_3828_p1;
wire  signed [33:0] sext_ln145_5_fu_3825_p1;
wire  signed [63:0] sext_ln137_8_fu_3909_p1;
wire  signed [63:0] sext_ln138_3_fu_3918_p1;
wire  signed [63:0] sext_ln139_4_fu_3927_p1;
wire  signed [63:0] sext_ln140_4_fu_3936_p1;
wire  signed [63:0] sext_ln141_8_fu_3945_p1;
wire  signed [63:0] sext_ln142_7_fu_3954_p1;
wire  signed [63:0] sext_ln143_7_fu_3963_p1;
wire  signed [63:0] sext_ln144_7_fu_3972_p1;
wire  signed [63:0] sext_ln145_7_fu_3981_p1;
wire  signed [15:0] grp_fu_4035_p0;
wire  signed [16:0] sext_ln137_fu_3610_p1;
wire  signed [15:0] grp_fu_4044_p0;
wire  signed [15:0] grp_fu_4053_p0;
wire  signed [15:0] grp_fu_4064_p0;
wire  signed [15:0] grp_fu_4064_p1;
wire  signed [15:0] grp_fu_4073_p0;
wire  signed [15:0] grp_fu_4073_p1;
wire  signed [15:0] grp_fu_4082_p0;
wire  signed [15:0] grp_fu_4082_p1;
wire  signed [15:0] grp_fu_4082_p2;
wire  signed [15:0] grp_fu_4089_p2;
wire  signed [15:0] grp_fu_4098_p0;
wire  signed [15:0] grp_fu_4098_p1;
wire  signed [15:0] grp_fu_4106_p0;
wire  signed [15:0] grp_fu_4106_p1;
wire  signed [15:0] grp_fu_4115_p0;
wire  signed [15:0] grp_fu_4115_p1;
wire  signed [15:0] grp_fu_4124_p0;
wire  signed [15:0] grp_fu_4124_p1;
wire  signed [15:0] grp_fu_4133_p0;
wire  signed [15:0] grp_fu_4133_p1;
wire  signed [15:0] grp_fu_4142_p0;
wire  signed [15:0] grp_fu_4142_p1;
wire  signed [15:0] grp_fu_4151_p0;
wire  signed [15:0] grp_fu_4151_p1;
wire  signed [15:0] grp_fu_4160_p0;
wire  signed [15:0] grp_fu_4160_p1;
wire  signed [15:0] grp_fu_4169_p0;
wire  signed [15:0] grp_fu_4178_p0;
wire  signed [15:0] grp_fu_4178_p1;
wire  signed [15:0] grp_fu_4187_p0;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] sl_8_fu_1650_p1;
wire   [7:0] sl_8_fu_1650_p3;
wire   [7:0] sl_8_fu_1650_p5;
wire   [7:0] sl_8_fu_1650_p7;
wire   [7:0] sl_8_fu_1650_p9;
wire   [7:0] sl_8_fu_1650_p11;
wire   [7:0] sl_8_fu_1650_p13;
wire   [7:0] sl_8_fu_1650_p15;
wire   [7:0] sl_8_fu_1650_p17;
wire   [7:0] sl_8_fu_1650_p19;
wire   [7:0] sl_8_fu_1650_p21;
wire   [7:0] sl_8_fu_1650_p23;
wire   [7:0] sl_8_fu_1650_p25;
wire   [7:0] sl_8_fu_1650_p27;
wire   [7:0] sl_8_fu_1650_p29;
wire   [7:0] sl_8_fu_1650_p31;
wire   [7:0] sl_8_fu_1650_p33;
wire   [7:0] sl_8_fu_1650_p35;
wire   [7:0] sl_8_fu_1650_p37;
wire   [7:0] sl_8_fu_1650_p39;
wire   [7:0] sl_8_fu_1650_p41;
wire   [7:0] sl_8_fu_1650_p43;
wire   [7:0] sl_8_fu_1650_p45;
wire   [7:0] sl_8_fu_1650_p47;
wire   [7:0] sl_8_fu_1650_p49;
wire   [7:0] sl_8_fu_1650_p51;
wire   [7:0] sl_8_fu_1650_p53;
wire   [7:0] sl_8_fu_1650_p55;
wire   [7:0] sl_8_fu_1650_p57;
wire   [7:0] sl_8_fu_1650_p59;
wire   [7:0] sl_8_fu_1650_p61;
wire   [7:0] sl_8_fu_1650_p63;
wire  signed [7:0] sl_8_fu_1650_p65;
wire  signed [7:0] sl_8_fu_1650_p67;
wire  signed [7:0] sl_8_fu_1650_p69;
wire  signed [7:0] sl_8_fu_1650_p71;
wire  signed [7:0] sl_8_fu_1650_p73;
wire  signed [7:0] sl_8_fu_1650_p75;
wire   [7:0] tmp_s_fu_1810_p1;
wire   [7:0] tmp_s_fu_1810_p3;
wire   [7:0] tmp_s_fu_1810_p5;
wire   [7:0] tmp_s_fu_1810_p7;
wire   [7:0] tmp_s_fu_1810_p9;
wire   [7:0] tmp_s_fu_1810_p11;
wire   [7:0] tmp_s_fu_1810_p13;
wire   [7:0] tmp_s_fu_1810_p15;
wire   [7:0] tmp_s_fu_1810_p17;
wire   [7:0] tmp_s_fu_1810_p19;
wire   [7:0] tmp_s_fu_1810_p21;
wire   [7:0] tmp_s_fu_1810_p23;
wire   [7:0] tmp_s_fu_1810_p25;
wire   [7:0] tmp_s_fu_1810_p27;
wire   [7:0] tmp_s_fu_1810_p29;
wire   [7:0] tmp_s_fu_1810_p31;
wire   [7:0] tmp_s_fu_1810_p33;
wire   [7:0] tmp_s_fu_1810_p35;
wire   [7:0] tmp_s_fu_1810_p37;
wire   [7:0] tmp_s_fu_1810_p39;
wire   [7:0] tmp_s_fu_1810_p41;
wire   [7:0] tmp_s_fu_1810_p43;
wire   [7:0] tmp_s_fu_1810_p45;
wire   [7:0] tmp_s_fu_1810_p47;
wire   [7:0] tmp_s_fu_1810_p49;
wire   [7:0] tmp_s_fu_1810_p51;
wire   [7:0] tmp_s_fu_1810_p53;
wire   [7:0] tmp_s_fu_1810_p55;
wire   [7:0] tmp_s_fu_1810_p57;
wire   [7:0] tmp_s_fu_1810_p59;
wire   [7:0] tmp_s_fu_1810_p61;
wire   [7:0] tmp_s_fu_1810_p63;
wire  signed [7:0] tmp_s_fu_1810_p65;
wire  signed [7:0] tmp_s_fu_1810_p67;
wire  signed [7:0] tmp_s_fu_1810_p69;
wire  signed [7:0] tmp_s_fu_1810_p71;
wire  signed [7:0] tmp_s_fu_1810_p73;
wire  signed [7:0] tmp_s_fu_1810_p75;
wire   [7:0] tmp_1_fu_1970_p1;
wire   [7:0] tmp_1_fu_1970_p3;
wire   [7:0] tmp_1_fu_1970_p5;
wire   [7:0] tmp_1_fu_1970_p7;
wire   [7:0] tmp_1_fu_1970_p9;
wire   [7:0] tmp_1_fu_1970_p11;
wire   [7:0] tmp_1_fu_1970_p13;
wire   [7:0] tmp_1_fu_1970_p15;
wire   [7:0] tmp_1_fu_1970_p17;
wire   [7:0] tmp_1_fu_1970_p19;
wire   [7:0] tmp_1_fu_1970_p21;
wire   [7:0] tmp_1_fu_1970_p23;
wire   [7:0] tmp_1_fu_1970_p25;
wire   [7:0] tmp_1_fu_1970_p27;
wire   [7:0] tmp_1_fu_1970_p29;
wire   [7:0] tmp_1_fu_1970_p31;
wire   [7:0] tmp_1_fu_1970_p33;
wire   [7:0] tmp_1_fu_1970_p35;
wire   [7:0] tmp_1_fu_1970_p37;
wire   [7:0] tmp_1_fu_1970_p39;
wire   [7:0] tmp_1_fu_1970_p41;
wire   [7:0] tmp_1_fu_1970_p43;
wire   [7:0] tmp_1_fu_1970_p45;
wire   [7:0] tmp_1_fu_1970_p47;
wire   [7:0] tmp_1_fu_1970_p49;
wire   [7:0] tmp_1_fu_1970_p51;
wire   [7:0] tmp_1_fu_1970_p53;
wire   [7:0] tmp_1_fu_1970_p55;
wire   [7:0] tmp_1_fu_1970_p57;
wire   [7:0] tmp_1_fu_1970_p59;
wire   [7:0] tmp_1_fu_1970_p61;
wire   [7:0] tmp_1_fu_1970_p63;
wire  signed [7:0] tmp_1_fu_1970_p65;
wire  signed [7:0] tmp_1_fu_1970_p67;
wire  signed [7:0] tmp_1_fu_1970_p69;
wire  signed [7:0] tmp_1_fu_1970_p71;
wire  signed [7:0] tmp_1_fu_1970_p73;
wire  signed [7:0] tmp_1_fu_1970_p75;
wire   [7:0] tmp_2_fu_2130_p1;
wire   [7:0] tmp_2_fu_2130_p3;
wire   [7:0] tmp_2_fu_2130_p5;
wire   [7:0] tmp_2_fu_2130_p7;
wire   [7:0] tmp_2_fu_2130_p9;
wire   [7:0] tmp_2_fu_2130_p11;
wire   [7:0] tmp_2_fu_2130_p13;
wire   [7:0] tmp_2_fu_2130_p15;
wire   [7:0] tmp_2_fu_2130_p17;
wire   [7:0] tmp_2_fu_2130_p19;
wire   [7:0] tmp_2_fu_2130_p21;
wire   [7:0] tmp_2_fu_2130_p23;
wire   [7:0] tmp_2_fu_2130_p25;
wire   [7:0] tmp_2_fu_2130_p27;
wire   [7:0] tmp_2_fu_2130_p29;
wire   [7:0] tmp_2_fu_2130_p31;
wire   [7:0] tmp_2_fu_2130_p33;
wire   [7:0] tmp_2_fu_2130_p35;
wire   [7:0] tmp_2_fu_2130_p37;
wire   [7:0] tmp_2_fu_2130_p39;
wire   [7:0] tmp_2_fu_2130_p41;
wire   [7:0] tmp_2_fu_2130_p43;
wire   [7:0] tmp_2_fu_2130_p45;
wire   [7:0] tmp_2_fu_2130_p47;
wire   [7:0] tmp_2_fu_2130_p49;
wire   [7:0] tmp_2_fu_2130_p51;
wire   [7:0] tmp_2_fu_2130_p53;
wire   [7:0] tmp_2_fu_2130_p55;
wire   [7:0] tmp_2_fu_2130_p57;
wire   [7:0] tmp_2_fu_2130_p59;
wire   [7:0] tmp_2_fu_2130_p61;
wire   [7:0] tmp_2_fu_2130_p63;
wire  signed [7:0] tmp_2_fu_2130_p65;
wire  signed [7:0] tmp_2_fu_2130_p67;
wire  signed [7:0] tmp_2_fu_2130_p69;
wire  signed [7:0] tmp_2_fu_2130_p71;
wire  signed [7:0] tmp_2_fu_2130_p73;
wire  signed [7:0] tmp_2_fu_2130_p75;
wire   [7:0] tmp_3_fu_2296_p1;
wire   [7:0] tmp_3_fu_2296_p3;
wire   [7:0] tmp_3_fu_2296_p5;
wire   [7:0] tmp_3_fu_2296_p7;
wire   [7:0] tmp_3_fu_2296_p9;
wire   [7:0] tmp_3_fu_2296_p11;
wire   [7:0] tmp_3_fu_2296_p13;
wire   [7:0] tmp_3_fu_2296_p15;
wire   [7:0] tmp_3_fu_2296_p17;
wire   [7:0] tmp_3_fu_2296_p19;
wire   [7:0] tmp_3_fu_2296_p21;
wire   [7:0] tmp_3_fu_2296_p23;
wire   [7:0] tmp_3_fu_2296_p25;
wire   [7:0] tmp_3_fu_2296_p27;
wire   [7:0] tmp_3_fu_2296_p29;
wire   [7:0] tmp_3_fu_2296_p31;
wire   [7:0] tmp_3_fu_2296_p33;
wire   [7:0] tmp_3_fu_2296_p35;
wire   [7:0] tmp_3_fu_2296_p37;
wire   [7:0] tmp_3_fu_2296_p39;
wire   [7:0] tmp_3_fu_2296_p41;
wire   [7:0] tmp_3_fu_2296_p43;
wire   [7:0] tmp_3_fu_2296_p45;
wire   [7:0] tmp_3_fu_2296_p47;
wire   [7:0] tmp_3_fu_2296_p49;
wire   [7:0] tmp_3_fu_2296_p51;
wire   [7:0] tmp_3_fu_2296_p53;
wire   [7:0] tmp_3_fu_2296_p55;
wire   [7:0] tmp_3_fu_2296_p57;
wire   [7:0] tmp_3_fu_2296_p59;
wire   [7:0] tmp_3_fu_2296_p61;
wire   [7:0] tmp_3_fu_2296_p63;
wire  signed [7:0] tmp_3_fu_2296_p65;
wire  signed [7:0] tmp_3_fu_2296_p67;
wire  signed [7:0] tmp_3_fu_2296_p69;
wire  signed [7:0] tmp_3_fu_2296_p71;
wire  signed [7:0] tmp_3_fu_2296_p73;
wire  signed [7:0] tmp_3_fu_2296_p75;
wire   [7:0] tmp_4_fu_2456_p1;
wire   [7:0] tmp_4_fu_2456_p3;
wire   [7:0] tmp_4_fu_2456_p5;
wire   [7:0] tmp_4_fu_2456_p7;
wire   [7:0] tmp_4_fu_2456_p9;
wire   [7:0] tmp_4_fu_2456_p11;
wire   [7:0] tmp_4_fu_2456_p13;
wire   [7:0] tmp_4_fu_2456_p15;
wire   [7:0] tmp_4_fu_2456_p17;
wire   [7:0] tmp_4_fu_2456_p19;
wire   [7:0] tmp_4_fu_2456_p21;
wire   [7:0] tmp_4_fu_2456_p23;
wire   [7:0] tmp_4_fu_2456_p25;
wire   [7:0] tmp_4_fu_2456_p27;
wire   [7:0] tmp_4_fu_2456_p29;
wire   [7:0] tmp_4_fu_2456_p31;
wire   [7:0] tmp_4_fu_2456_p33;
wire   [7:0] tmp_4_fu_2456_p35;
wire   [7:0] tmp_4_fu_2456_p37;
wire   [7:0] tmp_4_fu_2456_p39;
wire   [7:0] tmp_4_fu_2456_p41;
wire   [7:0] tmp_4_fu_2456_p43;
wire   [7:0] tmp_4_fu_2456_p45;
wire   [7:0] tmp_4_fu_2456_p47;
wire   [7:0] tmp_4_fu_2456_p49;
wire   [7:0] tmp_4_fu_2456_p51;
wire   [7:0] tmp_4_fu_2456_p53;
wire   [7:0] tmp_4_fu_2456_p55;
wire   [7:0] tmp_4_fu_2456_p57;
wire   [7:0] tmp_4_fu_2456_p59;
wire   [7:0] tmp_4_fu_2456_p61;
wire   [7:0] tmp_4_fu_2456_p63;
wire  signed [7:0] tmp_4_fu_2456_p65;
wire  signed [7:0] tmp_4_fu_2456_p67;
wire  signed [7:0] tmp_4_fu_2456_p69;
wire  signed [7:0] tmp_4_fu_2456_p71;
wire  signed [7:0] tmp_4_fu_2456_p73;
wire  signed [7:0] tmp_4_fu_2456_p75;
wire   [7:0] tmp_5_fu_2616_p1;
wire   [7:0] tmp_5_fu_2616_p3;
wire   [7:0] tmp_5_fu_2616_p5;
wire   [7:0] tmp_5_fu_2616_p7;
wire   [7:0] tmp_5_fu_2616_p9;
wire   [7:0] tmp_5_fu_2616_p11;
wire   [7:0] tmp_5_fu_2616_p13;
wire   [7:0] tmp_5_fu_2616_p15;
wire   [7:0] tmp_5_fu_2616_p17;
wire   [7:0] tmp_5_fu_2616_p19;
wire   [7:0] tmp_5_fu_2616_p21;
wire   [7:0] tmp_5_fu_2616_p23;
wire   [7:0] tmp_5_fu_2616_p25;
wire   [7:0] tmp_5_fu_2616_p27;
wire   [7:0] tmp_5_fu_2616_p29;
wire   [7:0] tmp_5_fu_2616_p31;
wire   [7:0] tmp_5_fu_2616_p33;
wire   [7:0] tmp_5_fu_2616_p35;
wire   [7:0] tmp_5_fu_2616_p37;
wire   [7:0] tmp_5_fu_2616_p39;
wire   [7:0] tmp_5_fu_2616_p41;
wire   [7:0] tmp_5_fu_2616_p43;
wire   [7:0] tmp_5_fu_2616_p45;
wire   [7:0] tmp_5_fu_2616_p47;
wire   [7:0] tmp_5_fu_2616_p49;
wire   [7:0] tmp_5_fu_2616_p51;
wire   [7:0] tmp_5_fu_2616_p53;
wire   [7:0] tmp_5_fu_2616_p55;
wire   [7:0] tmp_5_fu_2616_p57;
wire   [7:0] tmp_5_fu_2616_p59;
wire   [7:0] tmp_5_fu_2616_p61;
wire   [7:0] tmp_5_fu_2616_p63;
wire  signed [7:0] tmp_5_fu_2616_p65;
wire  signed [7:0] tmp_5_fu_2616_p67;
wire  signed [7:0] tmp_5_fu_2616_p69;
wire  signed [7:0] tmp_5_fu_2616_p71;
wire  signed [7:0] tmp_5_fu_2616_p73;
wire  signed [7:0] tmp_5_fu_2616_p75;
wire   [7:0] tmp_6_fu_2776_p1;
wire   [7:0] tmp_6_fu_2776_p3;
wire   [7:0] tmp_6_fu_2776_p5;
wire   [7:0] tmp_6_fu_2776_p7;
wire   [7:0] tmp_6_fu_2776_p9;
wire   [7:0] tmp_6_fu_2776_p11;
wire   [7:0] tmp_6_fu_2776_p13;
wire   [7:0] tmp_6_fu_2776_p15;
wire   [7:0] tmp_6_fu_2776_p17;
wire   [7:0] tmp_6_fu_2776_p19;
wire   [7:0] tmp_6_fu_2776_p21;
wire   [7:0] tmp_6_fu_2776_p23;
wire   [7:0] tmp_6_fu_2776_p25;
wire   [7:0] tmp_6_fu_2776_p27;
wire   [7:0] tmp_6_fu_2776_p29;
wire   [7:0] tmp_6_fu_2776_p31;
wire   [7:0] tmp_6_fu_2776_p33;
wire   [7:0] tmp_6_fu_2776_p35;
wire   [7:0] tmp_6_fu_2776_p37;
wire   [7:0] tmp_6_fu_2776_p39;
wire   [7:0] tmp_6_fu_2776_p41;
wire   [7:0] tmp_6_fu_2776_p43;
wire   [7:0] tmp_6_fu_2776_p45;
wire   [7:0] tmp_6_fu_2776_p47;
wire   [7:0] tmp_6_fu_2776_p49;
wire   [7:0] tmp_6_fu_2776_p51;
wire   [7:0] tmp_6_fu_2776_p53;
wire   [7:0] tmp_6_fu_2776_p55;
wire   [7:0] tmp_6_fu_2776_p57;
wire   [7:0] tmp_6_fu_2776_p59;
wire   [7:0] tmp_6_fu_2776_p61;
wire   [7:0] tmp_6_fu_2776_p63;
wire  signed [7:0] tmp_6_fu_2776_p65;
wire  signed [7:0] tmp_6_fu_2776_p67;
wire  signed [7:0] tmp_6_fu_2776_p69;
wire  signed [7:0] tmp_6_fu_2776_p71;
wire  signed [7:0] tmp_6_fu_2776_p73;
wire  signed [7:0] tmp_6_fu_2776_p75;
wire   [7:0] tmp_7_fu_2936_p1;
wire   [7:0] tmp_7_fu_2936_p3;
wire   [7:0] tmp_7_fu_2936_p5;
wire   [7:0] tmp_7_fu_2936_p7;
wire   [7:0] tmp_7_fu_2936_p9;
wire   [7:0] tmp_7_fu_2936_p11;
wire   [7:0] tmp_7_fu_2936_p13;
wire   [7:0] tmp_7_fu_2936_p15;
wire   [7:0] tmp_7_fu_2936_p17;
wire   [7:0] tmp_7_fu_2936_p19;
wire   [7:0] tmp_7_fu_2936_p21;
wire   [7:0] tmp_7_fu_2936_p23;
wire   [7:0] tmp_7_fu_2936_p25;
wire   [7:0] tmp_7_fu_2936_p27;
wire   [7:0] tmp_7_fu_2936_p29;
wire   [7:0] tmp_7_fu_2936_p31;
wire   [7:0] tmp_7_fu_2936_p33;
wire   [7:0] tmp_7_fu_2936_p35;
wire   [7:0] tmp_7_fu_2936_p37;
wire   [7:0] tmp_7_fu_2936_p39;
wire   [7:0] tmp_7_fu_2936_p41;
wire   [7:0] tmp_7_fu_2936_p43;
wire   [7:0] tmp_7_fu_2936_p45;
wire   [7:0] tmp_7_fu_2936_p47;
wire   [7:0] tmp_7_fu_2936_p49;
wire   [7:0] tmp_7_fu_2936_p51;
wire   [7:0] tmp_7_fu_2936_p53;
wire   [7:0] tmp_7_fu_2936_p55;
wire   [7:0] tmp_7_fu_2936_p57;
wire   [7:0] tmp_7_fu_2936_p59;
wire   [7:0] tmp_7_fu_2936_p61;
wire   [7:0] tmp_7_fu_2936_p63;
wire  signed [7:0] tmp_7_fu_2936_p65;
wire  signed [7:0] tmp_7_fu_2936_p67;
wire  signed [7:0] tmp_7_fu_2936_p69;
wire  signed [7:0] tmp_7_fu_2936_p71;
wire  signed [7:0] tmp_7_fu_2936_p73;
wire  signed [7:0] tmp_7_fu_2936_p75;
wire   [7:0] sl_9_fu_3096_p1;
wire   [7:0] sl_9_fu_3096_p3;
wire   [7:0] sl_9_fu_3096_p5;
wire   [7:0] sl_9_fu_3096_p7;
wire   [7:0] sl_9_fu_3096_p9;
wire   [7:0] sl_9_fu_3096_p11;
wire   [7:0] sl_9_fu_3096_p13;
wire   [7:0] sl_9_fu_3096_p15;
wire   [7:0] sl_9_fu_3096_p17;
wire   [7:0] sl_9_fu_3096_p19;
wire   [7:0] sl_9_fu_3096_p21;
wire   [7:0] sl_9_fu_3096_p23;
wire   [7:0] sl_9_fu_3096_p25;
wire   [7:0] sl_9_fu_3096_p27;
wire   [7:0] sl_9_fu_3096_p29;
wire   [7:0] sl_9_fu_3096_p31;
wire   [7:0] sl_9_fu_3096_p33;
wire   [7:0] sl_9_fu_3096_p35;
wire   [7:0] sl_9_fu_3096_p37;
wire   [7:0] sl_9_fu_3096_p39;
wire   [7:0] sl_9_fu_3096_p41;
wire   [7:0] sl_9_fu_3096_p43;
wire   [7:0] sl_9_fu_3096_p45;
wire   [7:0] sl_9_fu_3096_p47;
wire   [7:0] sl_9_fu_3096_p49;
wire   [7:0] sl_9_fu_3096_p51;
wire   [7:0] sl_9_fu_3096_p53;
wire   [7:0] sl_9_fu_3096_p55;
wire   [7:0] sl_9_fu_3096_p57;
wire   [7:0] sl_9_fu_3096_p59;
wire   [7:0] sl_9_fu_3096_p61;
wire   [7:0] sl_9_fu_3096_p63;
wire  signed [7:0] sl_9_fu_3096_p65;
wire  signed [7:0] sl_9_fu_3096_p67;
wire  signed [7:0] sl_9_fu_3096_p69;
wire  signed [7:0] sl_9_fu_3096_p71;
wire  signed [7:0] sl_9_fu_3096_p73;
wire  signed [7:0] sl_9_fu_3096_p75;
wire   [7:0] sl_10_fu_3256_p1;
wire   [7:0] sl_10_fu_3256_p3;
wire   [7:0] sl_10_fu_3256_p5;
wire   [7:0] sl_10_fu_3256_p7;
wire   [7:0] sl_10_fu_3256_p9;
wire   [7:0] sl_10_fu_3256_p11;
wire   [7:0] sl_10_fu_3256_p13;
wire   [7:0] sl_10_fu_3256_p15;
wire   [7:0] sl_10_fu_3256_p17;
wire   [7:0] sl_10_fu_3256_p19;
wire   [7:0] sl_10_fu_3256_p21;
wire   [7:0] sl_10_fu_3256_p23;
wire   [7:0] sl_10_fu_3256_p25;
wire   [7:0] sl_10_fu_3256_p27;
wire   [7:0] sl_10_fu_3256_p29;
wire   [7:0] sl_10_fu_3256_p31;
wire   [7:0] sl_10_fu_3256_p33;
wire   [7:0] sl_10_fu_3256_p35;
wire   [7:0] sl_10_fu_3256_p37;
wire   [7:0] sl_10_fu_3256_p39;
wire   [7:0] sl_10_fu_3256_p41;
wire   [7:0] sl_10_fu_3256_p43;
wire   [7:0] sl_10_fu_3256_p45;
wire   [7:0] sl_10_fu_3256_p47;
wire   [7:0] sl_10_fu_3256_p49;
wire   [7:0] sl_10_fu_3256_p51;
wire   [7:0] sl_10_fu_3256_p53;
wire   [7:0] sl_10_fu_3256_p55;
wire   [7:0] sl_10_fu_3256_p57;
wire   [7:0] sl_10_fu_3256_p59;
wire   [7:0] sl_10_fu_3256_p61;
wire   [7:0] sl_10_fu_3256_p63;
wire  signed [7:0] sl_10_fu_3256_p65;
wire  signed [7:0] sl_10_fu_3256_p67;
wire  signed [7:0] sl_10_fu_3256_p69;
wire  signed [7:0] sl_10_fu_3256_p71;
wire  signed [7:0] sl_10_fu_3256_p73;
wire  signed [7:0] sl_10_fu_3256_p75;
wire   [7:0] sl_11_fu_3416_p1;
wire   [7:0] sl_11_fu_3416_p3;
wire   [7:0] sl_11_fu_3416_p5;
wire   [7:0] sl_11_fu_3416_p7;
wire   [7:0] sl_11_fu_3416_p9;
wire   [7:0] sl_11_fu_3416_p11;
wire   [7:0] sl_11_fu_3416_p13;
wire   [7:0] sl_11_fu_3416_p15;
wire   [7:0] sl_11_fu_3416_p17;
wire   [7:0] sl_11_fu_3416_p19;
wire   [7:0] sl_11_fu_3416_p21;
wire   [7:0] sl_11_fu_3416_p23;
wire   [7:0] sl_11_fu_3416_p25;
wire   [7:0] sl_11_fu_3416_p27;
wire   [7:0] sl_11_fu_3416_p29;
wire   [7:0] sl_11_fu_3416_p31;
wire   [7:0] sl_11_fu_3416_p33;
wire   [7:0] sl_11_fu_3416_p35;
wire   [7:0] sl_11_fu_3416_p37;
wire   [7:0] sl_11_fu_3416_p39;
wire   [7:0] sl_11_fu_3416_p41;
wire   [7:0] sl_11_fu_3416_p43;
wire   [7:0] sl_11_fu_3416_p45;
wire   [7:0] sl_11_fu_3416_p47;
wire   [7:0] sl_11_fu_3416_p49;
wire   [7:0] sl_11_fu_3416_p51;
wire   [7:0] sl_11_fu_3416_p53;
wire   [7:0] sl_11_fu_3416_p55;
wire   [7:0] sl_11_fu_3416_p57;
wire   [7:0] sl_11_fu_3416_p59;
wire   [7:0] sl_11_fu_3416_p61;
wire   [7:0] sl_11_fu_3416_p63;
wire  signed [7:0] sl_11_fu_3416_p65;
wire  signed [7:0] sl_11_fu_3416_p67;
wire  signed [7:0] sl_11_fu_3416_p69;
wire  signed [7:0] sl_11_fu_3416_p71;
wire  signed [7:0] sl_11_fu_3416_p73;
wire  signed [7:0] sl_11_fu_3416_p75;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 idx_fu_462 = 8'd0;
#0 i_fu_466 = 8'd0;
#0 empty_fu_470 = 64'd0;
#0 empty_399_fu_474 = 64'd0;
#0 empty_400_fu_478 = 64'd0;
#0 empty_401_fu_482 = 64'd0;
#0 empty_402_fu_486 = 64'd0;
#0 empty_403_fu_490 = 64'd0;
#0 empty_404_fu_494 = 64'd0;
#0 empty_405_fu_498 = 64'd0;
#0 empty_406_fu_502 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U341(.din0(s_8_load_2),.din1(s_12_load_2),.din2(s_16_load_2),.din3(s_20_load_2),.din4(s_24_load_2),.din5(s_28_load_2),.din6(s_32_load_2),.din7(s_36_load_2),.din8(s_40_load_2),.din9(s_44_load_2),.din10(s_48_load_2),.din11(s_52_load_2),.din12(s_56_load_2),.din13(s_60_load_2),.din14(s_64_load_2),.din15(s_68_load_2),.din16(s_72_load_2),.din17(s_76_load_2),.din18(s_80_load_2),.din19(s_84_load_2),.din20(s_88_load_2),.din21(s_92_load_2),.din22(s_96_load_2),.din23(s_100_load_2),.din24(s_104_load_2),.din25(s_108_load_2),.din26(s_112_load_2),.din27(s_116_load_2),.din28(s_120_load_2),.din29(s_124_load_2),.din30(s_128_load_2),.din31(s_132_load_2),.din32(s_136_load_2),.din33(s_140_load_2),.din34(s_144_load_2),.din35(s_148_load_2),.din36(s_152_load_2),.din37(s_156_load_2),.def(sl_8_fu_1650_p77),.sel(ap_sig_allocacmp_idx_load),.dout(sl_8_fu_1650_p79));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U342(.din0(sl_7),.din1(s_11_load_2),.din2(s_15_load_2),.din3(s_19_load_2),.din4(s_23_load_2),.din5(s_27_load_2),.din6(s_31_load_2),.din7(s_35_load_2),.din8(s_39_load_2),.din9(s_43_load_2),.din10(s_47_load_2),.din11(s_51_load_2),.din12(s_55_load_2),.din13(s_59_load_2),.din14(s_63_load_2),.din15(s_67_load_2),.din16(s_71_load_2),.din17(s_75_load_2),.din18(s_79_load_2),.din19(s_83_load_2),.din20(s_87_load_2),.din21(s_91_load_2),.din22(s_95_load_2),.din23(s_99_load_2),.din24(s_103_load_2),.din25(s_107_load_2),.din26(s_111_load_2),.din27(s_115_load_2),.din28(s_119_load_2),.din29(s_123_load_2),.din30(s_127_load_2),.din31(s_131_load_2),.din32(s_135_load_2),.din33(s_139_load_2),.din34(s_143_load_2),.din35(s_147_load_2),.din36(s_151_load_2),.din37(s_155_load_2),.def(tmp_s_fu_1810_p77),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_s_fu_1810_p79));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U343(.din0(sl_6),.din1(s_10_load_2),.din2(s_14_load_2),.din3(s_18_load_2),.din4(s_22_load_2),.din5(s_26_load_2),.din6(s_30_load_2),.din7(s_34_load_2),.din8(s_38_load_2),.din9(s_42_load_2),.din10(s_46_load_2),.din11(s_50_load_2),.din12(s_54_load_2),.din13(s_58_load_2),.din14(s_62_load_2),.din15(s_66_load_2),.din16(s_70_load_2),.din17(s_74_load_2),.din18(s_78_load_2),.din19(s_82_load_2),.din20(s_86_load_2),.din21(s_90_load_2),.din22(s_94_load_2),.din23(s_98_load_2),.din24(s_102_load_2),.din25(s_106_load_2),.din26(s_110_load_2),.din27(s_114_load_2),.din28(s_118_load_2),.din29(s_122_load_2),.din30(s_126_load_2),.din31(s_130_load_2),.din32(s_134_load_2),.din33(s_138_load_2),.din34(s_142_load_2),.din35(s_146_load_2),.din36(s_150_load_2),.din37(s_154_load_2),.def(tmp_1_fu_1970_p77),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_1_fu_1970_p79));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U344(.din0(sl_5),.din1(s_9_load_2),.din2(s_13_load_2),.din3(s_17_load_2),.din4(s_21_load_2),.din5(s_25_load_2),.din6(s_29_load_2),.din7(s_33_load_2),.din8(s_37_load_2),.din9(s_41_load_2),.din10(s_45_load_2),.din11(s_49_load_2),.din12(s_53_load_2),.din13(s_57_load_2),.din14(s_61_load_2),.din15(s_65_load_2),.din16(s_69_load_2),.din17(s_73_load_2),.din18(s_77_load_2),.din19(s_81_load_2),.din20(s_85_load_2),.din21(s_89_load_2),.din22(s_93_load_2),.din23(s_97_load_2),.din24(s_101_load_2),.din25(s_105_load_2),.din26(s_109_load_2),.din27(s_113_load_2),.din28(s_117_load_2),.din29(s_121_load_2),.din30(s_125_load_2),.din31(s_129_load_2),.din32(s_133_load_2),.din33(s_137_load_2),.din34(s_141_load_2),.din35(s_145_load_2),.din36(s_149_load_2),.din37(s_153_load_2),.def(tmp_2_fu_2130_p77),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_2_fu_2130_p79));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U345(.din0(sl_4),.din1(s_8_load_2),.din2(s_12_load_2),.din3(s_16_load_2),.din4(s_20_load_2),.din5(s_24_load_2),.din6(s_28_load_2),.din7(s_32_load_2),.din8(s_36_load_2),.din9(s_40_load_2),.din10(s_44_load_2),.din11(s_48_load_2),.din12(s_52_load_2),.din13(s_56_load_2),.din14(s_60_load_2),.din15(s_64_load_2),.din16(s_68_load_2),.din17(s_72_load_2),.din18(s_76_load_2),.din19(s_80_load_2),.din20(s_84_load_2),.din21(s_88_load_2),.din22(s_92_load_2),.din23(s_96_load_2),.din24(s_100_load_2),.din25(s_104_load_2),.din26(s_108_load_2),.din27(s_112_load_2),.din28(s_116_load_2),.din29(s_120_load_2),.din30(s_124_load_2),.din31(s_128_load_2),.din32(s_132_load_2),.din33(s_136_load_2),.din34(s_140_load_2),.din35(s_144_load_2),.din36(s_148_load_2),.din37(s_152_load_2),.def(tmp_3_fu_2296_p77),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_3_fu_2296_p79));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U346(.din0(sl_3),.din1(sl_7),.din2(s_11_load_2),.din3(s_15_load_2),.din4(s_19_load_2),.din5(s_23_load_2),.din6(s_27_load_2),.din7(s_31_load_2),.din8(s_35_load_2),.din9(s_39_load_2),.din10(s_43_load_2),.din11(s_47_load_2),.din12(s_51_load_2),.din13(s_55_load_2),.din14(s_59_load_2),.din15(s_63_load_2),.din16(s_67_load_2),.din17(s_71_load_2),.din18(s_75_load_2),.din19(s_79_load_2),.din20(s_83_load_2),.din21(s_87_load_2),.din22(s_91_load_2),.din23(s_95_load_2),.din24(s_99_load_2),.din25(s_103_load_2),.din26(s_107_load_2),.din27(s_111_load_2),.din28(s_115_load_2),.din29(s_119_load_2),.din30(s_123_load_2),.din31(s_127_load_2),.din32(s_131_load_2),.din33(s_135_load_2),.din34(s_139_load_2),.din35(s_143_load_2),.din36(s_147_load_2),.din37(s_151_load_2),.def(tmp_4_fu_2456_p77),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_4_fu_2456_p79));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U347(.din0(sl_2),.din1(sl_6),.din2(s_10_load_2),.din3(s_14_load_2),.din4(s_18_load_2),.din5(s_22_load_2),.din6(s_26_load_2),.din7(s_30_load_2),.din8(s_34_load_2),.din9(s_38_load_2),.din10(s_42_load_2),.din11(s_46_load_2),.din12(s_50_load_2),.din13(s_54_load_2),.din14(s_58_load_2),.din15(s_62_load_2),.din16(s_66_load_2),.din17(s_70_load_2),.din18(s_74_load_2),.din19(s_78_load_2),.din20(s_82_load_2),.din21(s_86_load_2),.din22(s_90_load_2),.din23(s_94_load_2),.din24(s_98_load_2),.din25(s_102_load_2),.din26(s_106_load_2),.din27(s_110_load_2),.din28(s_114_load_2),.din29(s_118_load_2),.din30(s_122_load_2),.din31(s_126_load_2),.din32(s_130_load_2),.din33(s_134_load_2),.din34(s_138_load_2),.din35(s_142_load_2),.din36(s_146_load_2),.din37(s_150_load_2),.def(tmp_5_fu_2616_p77),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_5_fu_2616_p79));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U348(.din0(sl_1),.din1(sl_5),.din2(s_9_load_2),.din3(s_13_load_2),.din4(s_17_load_2),.din5(s_21_load_2),.din6(s_25_load_2),.din7(s_29_load_2),.din8(s_33_load_2),.din9(s_37_load_2),.din10(s_41_load_2),.din11(s_45_load_2),.din12(s_49_load_2),.din13(s_53_load_2),.din14(s_57_load_2),.din15(s_61_load_2),.din16(s_65_load_2),.din17(s_69_load_2),.din18(s_73_load_2),.din19(s_77_load_2),.din20(s_81_load_2),.din21(s_85_load_2),.din22(s_89_load_2),.din23(s_93_load_2),.din24(s_97_load_2),.din25(s_101_load_2),.din26(s_105_load_2),.din27(s_109_load_2),.din28(s_113_load_2),.din29(s_117_load_2),.din30(s_121_load_2),.din31(s_125_load_2),.din32(s_129_load_2),.din33(s_133_load_2),.din34(s_137_load_2),.din35(s_141_load_2),.din36(s_145_load_2),.din37(s_149_load_2),.def(tmp_6_fu_2776_p77),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_6_fu_2776_p79));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U349(.din0(sl),.din1(sl_4),.din2(s_8_load_2),.din3(s_12_load_2),.din4(s_16_load_2),.din5(s_20_load_2),.din6(s_24_load_2),.din7(s_28_load_2),.din8(s_32_load_2),.din9(s_36_load_2),.din10(s_40_load_2),.din11(s_44_load_2),.din12(s_48_load_2),.din13(s_52_load_2),.din14(s_56_load_2),.din15(s_60_load_2),.din16(s_64_load_2),.din17(s_68_load_2),.din18(s_72_load_2),.din19(s_76_load_2),.din20(s_80_load_2),.din21(s_84_load_2),.din22(s_88_load_2),.din23(s_92_load_2),.din24(s_96_load_2),.din25(s_100_load_2),.din26(s_104_load_2),.din27(s_108_load_2),.din28(s_112_load_2),.din29(s_116_load_2),.din30(s_120_load_2),.din31(s_124_load_2),.din32(s_128_load_2),.din33(s_132_load_2),.din34(s_136_load_2),.din35(s_140_load_2),.din36(s_144_load_2),.din37(s_148_load_2),.def(tmp_7_fu_2936_p77),.sel(ap_sig_allocacmp_idx_load),.dout(tmp_7_fu_2936_p79));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U350(.din0(s_9_load_2),.din1(s_13_load_2),.din2(s_17_load_2),.din3(s_21_load_2),.din4(s_25_load_2),.din5(s_29_load_2),.din6(s_33_load_2),.din7(s_37_load_2),.din8(s_41_load_2),.din9(s_45_load_2),.din10(s_49_load_2),.din11(s_53_load_2),.din12(s_57_load_2),.din13(s_61_load_2),.din14(s_65_load_2),.din15(s_69_load_2),.din16(s_73_load_2),.din17(s_77_load_2),.din18(s_81_load_2),.din19(s_85_load_2),.din20(s_89_load_2),.din21(s_93_load_2),.din22(s_97_load_2),.din23(s_101_load_2),.din24(s_105_load_2),.din25(s_109_load_2),.din26(s_113_load_2),.din27(s_117_load_2),.din28(s_121_load_2),.din29(s_125_load_2),.din30(s_129_load_2),.din31(s_133_load_2),.din32(s_137_load_2),.din33(s_141_load_2),.din34(s_145_load_2),.din35(s_149_load_2),.din36(s_153_load_2),.din37(s_157_load_2),.def(sl_9_fu_3096_p77),.sel(ap_sig_allocacmp_idx_load),.dout(sl_9_fu_3096_p79));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U351(.din0(s_10_load_2),.din1(s_14_load_2),.din2(s_18_load_2),.din3(s_22_load_2),.din4(s_26_load_2),.din5(s_30_load_2),.din6(s_34_load_2),.din7(s_38_load_2),.din8(s_42_load_2),.din9(s_46_load_2),.din10(s_50_load_2),.din11(s_54_load_2),.din12(s_58_load_2),.din13(s_62_load_2),.din14(s_66_load_2),.din15(s_70_load_2),.din16(s_74_load_2),.din17(s_78_load_2),.din18(s_82_load_2),.din19(s_86_load_2),.din20(s_90_load_2),.din21(s_94_load_2),.din22(s_98_load_2),.din23(s_102_load_2),.din24(s_106_load_2),.din25(s_110_load_2),.din26(s_114_load_2),.din27(s_118_load_2),.din28(s_122_load_2),.din29(s_126_load_2),.din30(s_130_load_2),.din31(s_134_load_2),.din32(s_138_load_2),.din33(s_142_load_2),.din34(s_146_load_2),.din35(s_150_load_2),.din36(s_154_load_2),.din37(s_158_load_2),.def(sl_10_fu_3256_p77),.sel(ap_sig_allocacmp_idx_load),.dout(sl_10_fu_3256_p79));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_77_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_77_8_16_1_1_U352(.din0(s_11_load_2),.din1(s_15_load_2),.din2(s_19_load_2),.din3(s_23_load_2),.din4(s_27_load_2),.din5(s_31_load_2),.din6(s_35_load_2),.din7(s_39_load_2),.din8(s_43_load_2),.din9(s_47_load_2),.din10(s_51_load_2),.din11(s_55_load_2),.din12(s_59_load_2),.din13(s_63_load_2),.din14(s_67_load_2),.din15(s_71_load_2),.din16(s_75_load_2),.din17(s_79_load_2),.din18(s_83_load_2),.din19(s_87_load_2),.din20(s_91_load_2),.din21(s_95_load_2),.din22(s_99_load_2),.din23(s_103_load_2),.din24(s_107_load_2),.din25(s_111_load_2),.din26(s_115_load_2),.din27(s_119_load_2),.din28(s_123_load_2),.din29(s_127_load_2),.din30(s_131_load_2),.din31(s_135_load_2),.din32(s_139_load_2),.din33(s_143_load_2),.din34(s_147_load_2),.din35(s_151_load_2),.din36(s_155_load_2),.din37(s_159_load_2),.def(sl_11_fu_3416_p77),.sel(ap_sig_allocacmp_idx_load),.dout(sl_11_fu_3416_p79));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U353(.din0(sl_10_reg_4333_pp0_iter1_reg),.din1(mul_ln140_1_fu_3649_p1),.dout(mul_ln140_1_fu_3649_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U354(.din0(mul_ln137_2_fu_3661_p0),.din1(mul_ln137_2_fu_3661_p1),.dout(mul_ln137_2_fu_3661_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U355(.din0(mul_ln137_3_fu_3665_p0),.din1(mul_ln137_3_fu_3665_p1),.dout(mul_ln137_3_fu_3665_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U356(.din0(mul_ln141_2_fu_3674_p0),.din1(mul_ln141_2_fu_3674_p1),.dout(mul_ln141_2_fu_3674_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U357(.din0(mul_ln141_3_fu_3678_p0),.din1(mul_ln141_3_fu_3678_p1),.dout(mul_ln141_3_fu_3678_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U358(.din0(mul_ln142_2_fu_3683_p0),.din1(mul_ln142_2_fu_3683_p1),.dout(mul_ln142_2_fu_3683_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U359(.din0(mul_ln142_3_fu_3687_p0),.din1(mul_ln142_3_fu_3687_p1),.dout(mul_ln142_3_fu_3687_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U360(.din0(mul_ln143_2_fu_3692_p0),.din1(mul_ln143_2_fu_3692_p1),.dout(mul_ln143_2_fu_3692_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U361(.din0(mul_ln143_3_fu_3696_p0),.din1(mul_ln143_3_fu_3696_p1),.dout(mul_ln143_3_fu_3696_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U362(.din0(mul_ln144_2_fu_3701_p0),.din1(mul_ln144_2_fu_3701_p1),.dout(mul_ln144_2_fu_3701_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U363(.din0(mul_ln144_3_fu_3705_p0),.din1(mul_ln144_3_fu_3705_p1),.dout(mul_ln144_3_fu_3705_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U364(.din0(mul_ln145_2_fu_3710_p0),.din1(mul_ln145_2_fu_3710_p1),.dout(mul_ln145_2_fu_3710_p2));
Gsm_LPC_Analysis_mul_16s_16s_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.dout_WIDTH( 32 ))
mul_16s_16s_32_1_1_U365(.din0(tmp_7_reg_4321_pp0_iter2_reg),.din1(mul_ln145_3_fu_3714_p1),.dout(mul_ln145_3_fu_3714_p2));
Gsm_LPC_Analysis_am_addmul_16s_16s_16s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.dout_WIDTH( 33 ))
am_addmul_16s_16s_16s_33_4_1_U366(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4035_p0),.din1(sl_9_reg_4326),.din2(sl_10_reg_4333),.ce(1'b1),.dout(grp_fu_4035_p3));
Gsm_LPC_Analysis_am_addmul_16s_16s_16s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.dout_WIDTH( 33 ))
am_addmul_16s_16s_16s_33_4_1_U367(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4044_p0),.din1(tmp_s_reg_4283),.din2(sl_9_reg_4326),.ce(1'b1),.dout(grp_fu_4044_p3));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 32 ),.dout_WIDTH( 33 ))
ama_addmuladd_16s_16s_16s_32s_33_4_1_U368(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4053_p0),.din1(tmp_2_reg_4295),.din2(sl_8_reg_4277),.din3(mul_ln140_1_reg_4455),.ce(1'b1),.dout(grp_fu_4053_p4));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U369(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4064_p0),.din1(grp_fu_4064_p1),.din2(mul_ln137_2_reg_4460),.ce(1'b1),.dout(grp_fu_4064_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U370(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4073_p0),.din1(grp_fu_4073_p1),.din2(mul_ln137_3_reg_4465),.ce(1'b1),.dout(grp_fu_4073_p3));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_33s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 33 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_33s_34_4_1_U371(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4082_p0),.din1(grp_fu_4082_p1),.din2(grp_fu_4082_p2),.din3(grp_fu_4035_p3),.ce(1'b1),.dout(grp_fu_4082_p4));
Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_33s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 16 ),.din3_WIDTH( 33 ),.dout_WIDTH( 34 ))
ama_addmuladd_16s_16s_16s_33s_34_4_1_U372(.clk(ap_clk),.reset(ap_rst),.din0(sl_10_reg_4333_pp0_iter1_reg),.din1(tmp_1_reg_4289_pp0_iter1_reg),.din2(grp_fu_4089_p2),.din3(grp_fu_4044_p3),.ce(1'b1),.dout(grp_fu_4089_p4));
Gsm_LPC_Analysis_mac_muladd_16s_16s_33s_34_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 33 ),.dout_WIDTH( 34 ))
mac_muladd_16s_16s_33s_34_4_1_U373(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4098_p0),.din1(grp_fu_4098_p1),.din2(grp_fu_4053_p4),.ce(1'b1),.dout(grp_fu_4098_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U374(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4106_p0),.din1(grp_fu_4106_p1),.din2(mul_ln141_2_reg_4475),.ce(1'b1),.dout(grp_fu_4106_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U375(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4115_p0),.din1(grp_fu_4115_p1),.din2(mul_ln141_3_reg_4480),.ce(1'b1),.dout(grp_fu_4115_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U376(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4124_p0),.din1(grp_fu_4124_p1),.din2(mul_ln142_2_reg_4485),.ce(1'b1),.dout(grp_fu_4124_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U377(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4133_p0),.din1(grp_fu_4133_p1),.din2(mul_ln142_3_reg_4490),.ce(1'b1),.dout(grp_fu_4133_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U378(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4142_p0),.din1(grp_fu_4142_p1),.din2(mul_ln143_2_reg_4495),.ce(1'b1),.dout(grp_fu_4142_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U379(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4151_p0),.din1(grp_fu_4151_p1),.din2(mul_ln143_3_reg_4500),.ce(1'b1),.dout(grp_fu_4151_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U380(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4160_p0),.din1(grp_fu_4160_p1),.din2(mul_ln144_2_reg_4505),.ce(1'b1),.dout(grp_fu_4160_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U381(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4169_p0),.din1(tmp_5_reg_4311_pp0_iter1_reg),.din2(mul_ln144_3_reg_4510),.ce(1'b1),.dout(grp_fu_4169_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U382(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4178_p0),.din1(grp_fu_4178_p1),.din2(mul_ln145_2_reg_4515),.ce(1'b1),.dout(grp_fu_4178_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_32s_33_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 32 ),.dout_WIDTH( 33 ))
mac_muladd_16s_16s_32s_33_4_1_U383(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4187_p0),.din1(tmp_6_reg_4316_pp0_iter1_reg),.din2(mul_ln145_3_reg_4520),.ce(1'b1),.dout(grp_fu_4187_p3));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_399_fu_474 <= add_ln124;
        end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd1))) begin
            empty_399_fu_474 <= add_ln138_1_fu_3921_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_400_fu_478 <= add_ln125;
        end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd1))) begin
            empty_400_fu_478 <= add_ln139_2_fu_3930_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_401_fu_482 <= add_ln126;
        end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd1))) begin
            empty_401_fu_482 <= add_ln140_2_fu_3939_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_402_fu_486 <= add_ln127;
        end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd1))) begin
            empty_402_fu_486 <= add_ln141_4_fu_3948_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_403_fu_490 <= add_ln128;
        end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd1))) begin
            empty_403_fu_490 <= add_ln142_3_fu_3957_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_404_fu_494 <= add_ln129;
        end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd1))) begin
            empty_404_fu_494 <= add_ln143_3_fu_3966_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_405_fu_498 <= add_ln130;
        end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd1))) begin
            empty_405_fu_498 <= add_ln144_3_fu_3975_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_406_fu_502 <= L_ACF_8_load;
        end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd1))) begin
            empty_406_fu_502 <= add_ln145_3_fu_3984_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_fu_470 <= add_ln123_3;
        end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd1))) begin
            empty_fu_470 <= add_ln137_3_fu_3912_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln132_fu_1641_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_466 <= i_8_fu_3576_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_466 <= 8'd8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln132_fu_1641_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            idx_fu_462 <= add_ln141_fu_2290_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            idx_fu_462 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln137_2_reg_4600 <= add_ln137_2_fu_3771_p2;
        add_ln141_3_reg_4620 <= add_ln141_3_fu_3783_p2;
        add_ln142_2_reg_4625 <= add_ln142_2_fu_3795_p2;
        add_ln143_2_reg_4630 <= add_ln143_2_fu_3807_p2;
        add_ln144_2_reg_4635 <= add_ln144_2_fu_3819_p2;
        add_ln145_2_reg_4640 <= add_ln145_2_fu_3831_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        icmp_ln132_reg_4273_pp0_iter2_reg <= icmp_ln132_reg_4273_pp0_iter1_reg;
        icmp_ln132_reg_4273_pp0_iter3_reg <= icmp_ln132_reg_4273_pp0_iter2_reg;
        icmp_ln132_reg_4273_pp0_iter4_reg <= icmp_ln132_reg_4273_pp0_iter3_reg;
        icmp_ln132_reg_4273_pp0_iter5_reg <= icmp_ln132_reg_4273_pp0_iter4_reg;
        mul_ln137_2_reg_4460 <= mul_ln137_2_fu_3661_p2;
        mul_ln137_3_reg_4465 <= mul_ln137_3_fu_3665_p2;
        mul_ln140_1_reg_4455 <= mul_ln140_1_fu_3649_p2;
        mul_ln141_2_reg_4475 <= mul_ln141_2_fu_3674_p2;
        mul_ln141_3_reg_4480 <= mul_ln141_3_fu_3678_p2;
        mul_ln142_2_reg_4485 <= mul_ln142_2_fu_3683_p2;
        mul_ln142_3_reg_4490 <= mul_ln142_3_fu_3687_p2;
        mul_ln143_2_reg_4495 <= mul_ln143_2_fu_3692_p2;
        mul_ln143_3_reg_4500 <= mul_ln143_3_fu_3696_p2;
        mul_ln144_2_reg_4505 <= mul_ln144_2_fu_3701_p2;
        mul_ln144_3_reg_4510 <= mul_ln144_3_fu_3705_p2;
        mul_ln145_2_reg_4515 <= mul_ln145_2_fu_3710_p2;
        mul_ln145_3_reg_4520 <= mul_ln145_3_fu_3714_p2;
        sext_ln135_6_reg_4433 <= sext_ln135_6_fu_3643_p1;
        sext_ln140_reg_4378 <= sext_ln140_fu_3616_p1;
        sext_ln141_reg_4385 <= sext_ln141_fu_3622_p1;
        sext_ln142_reg_4392 <= sext_ln142_fu_3625_p1;
        sext_ln143_reg_4400 <= sext_ln143_fu_3628_p1;
        sext_ln144_reg_4408 <= sext_ln144_fu_3631_p1;
        sext_ln145_reg_4415 <= sext_ln145_fu_3634_p1;
        sl_8_reg_4277_pp0_iter2_reg <= sl_8_reg_4277_pp0_iter1_reg;
        tmp_7_reg_4321_pp0_iter2_reg <= tmp_7_reg_4321_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        add_ln138_reg_4605 <= grp_fu_4082_p4;
        add_ln139_1_reg_4610 <= grp_fu_4089_p4;
        add_ln140_1_reg_4615 <= grp_fu_4098_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln132_reg_4273 <= icmp_ln132_fu_1641_p2;
        icmp_ln132_reg_4273_pp0_iter1_reg <= icmp_ln132_reg_4273;
        sext_ln135_2_reg_4363 <= sext_ln135_2_fu_3604_p1;
        sext_ln138_reg_4346 <= sext_ln138_fu_3592_p1;
        sext_ln139_1_reg_4353 <= sext_ln139_1_fu_3595_p1;
        sl_10_reg_4333 <= sl_10_fu_3256_p79;
        sl_10_reg_4333_pp0_iter1_reg <= sl_10_reg_4333;
        sl_11_reg_4340 <= sl_11_fu_3416_p79;
        sl_11_reg_4340_pp0_iter1_reg <= sl_11_reg_4340;
        sl_8_reg_4277 <= sl_8_fu_1650_p79;
        sl_8_reg_4277_pp0_iter1_reg <= sl_8_reg_4277;
        sl_9_reg_4326 <= sl_9_fu_3096_p79;
        sl_9_reg_4326_pp0_iter1_reg <= sl_9_reg_4326;
        tmp_1_reg_4289 <= tmp_1_fu_1970_p79;
        tmp_1_reg_4289_pp0_iter1_reg <= tmp_1_reg_4289;
        tmp_2_reg_4295 <= tmp_2_fu_2130_p79;
        tmp_2_reg_4295_pp0_iter1_reg <= tmp_2_reg_4295;
        tmp_3_reg_4301 <= tmp_3_fu_2296_p79;
        tmp_3_reg_4301_pp0_iter1_reg <= tmp_3_reg_4301;
        tmp_4_reg_4306 <= tmp_4_fu_2456_p79;
        tmp_4_reg_4306_pp0_iter1_reg <= tmp_4_reg_4306;
        tmp_5_reg_4311 <= tmp_5_fu_2616_p79;
        tmp_5_reg_4311_pp0_iter1_reg <= tmp_5_reg_4311;
        tmp_6_reg_4316 <= tmp_6_fu_2776_p79;
        tmp_6_reg_4316_pp0_iter1_reg <= tmp_6_reg_4316;
        tmp_7_reg_4321 <= tmp_7_fu_2936_p79;
        tmp_7_reg_4321_pp0_iter1_reg <= tmp_7_reg_4321;
        tmp_s_reg_4283 <= tmp_s_fu_1810_p79;
        tmp_s_reg_4283_pp0_iter1_reg <= tmp_s_reg_4283;
    end
end
always @ (*) begin
    if (((icmp_ln132_fu_1641_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_7 = 8'd8;
    end else begin
        ap_sig_allocacmp_i_7 = i_fu_466;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_idx_load = 8'd0;
    end else begin
        ap_sig_allocacmp_idx_load = idx_fu_462;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd0))) begin
        p_out1_ap_vld = 1'b1;
    end else begin
        p_out1_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd0))) begin
        p_out2_ap_vld = 1'b1;
    end else begin
        p_out2_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd0))) begin
        p_out3_ap_vld = 1'b1;
    end else begin
        p_out3_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd0))) begin
        p_out4_ap_vld = 1'b1;
    end else begin
        p_out4_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd0))) begin
        p_out5_ap_vld = 1'b1;
    end else begin
        p_out5_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd0))) begin
        p_out6_ap_vld = 1'b1;
    end else begin
        p_out6_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd0))) begin
        p_out7_ap_vld = 1'b1;
    end else begin
        p_out7_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd0))) begin
        p_out8_ap_vld = 1'b1;
    end else begin
        p_out8_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln132_reg_4273_pp0_iter5_reg == 1'd0))) begin
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
assign add_ln137_2_fu_3771_p2 = ($signed(sext_ln137_7_fu_3768_p1) + $signed(sext_ln137_6_fu_3765_p1));
assign add_ln137_3_fu_3912_p2 = ($signed(empty_fu_470) + $signed(sext_ln137_8_fu_3909_p1));
assign add_ln138_1_fu_3921_p2 = ($signed(empty_399_fu_474) + $signed(sext_ln138_3_fu_3918_p1));
assign add_ln139_2_fu_3930_p2 = ($signed(empty_400_fu_478) + $signed(sext_ln139_4_fu_3927_p1));
assign add_ln140_2_fu_3939_p2 = ($signed(empty_401_fu_482) + $signed(sext_ln140_4_fu_3936_p1));
assign add_ln141_3_fu_3783_p2 = ($signed(sext_ln141_7_fu_3780_p1) + $signed(sext_ln141_6_fu_3777_p1));
assign add_ln141_4_fu_3948_p2 = ($signed(empty_402_fu_486) + $signed(sext_ln141_8_fu_3945_p1));
assign add_ln141_fu_2290_p2 = (ap_sig_allocacmp_idx_load + 8'd4);
assign add_ln142_2_fu_3795_p2 = ($signed(sext_ln142_6_fu_3792_p1) + $signed(sext_ln142_5_fu_3789_p1));
assign add_ln142_3_fu_3957_p2 = ($signed(empty_403_fu_490) + $signed(sext_ln142_7_fu_3954_p1));
assign add_ln143_2_fu_3807_p2 = ($signed(sext_ln143_6_fu_3804_p1) + $signed(sext_ln143_5_fu_3801_p1));
assign add_ln143_3_fu_3966_p2 = ($signed(empty_404_fu_494) + $signed(sext_ln143_7_fu_3963_p1));
assign add_ln144_2_fu_3819_p2 = ($signed(sext_ln144_6_fu_3816_p1) + $signed(sext_ln144_5_fu_3813_p1));
assign add_ln144_3_fu_3975_p2 = ($signed(empty_405_fu_498) + $signed(sext_ln144_7_fu_3972_p1));
assign add_ln145_2_fu_3831_p2 = ($signed(sext_ln145_6_fu_3828_p1) + $signed(sext_ln145_5_fu_3825_p1));
assign add_ln145_3_fu_3984_p2 = ($signed(empty_406_fu_502) + $signed(sext_ln145_7_fu_3981_p1));
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
assign grp_fu_4035_p0 = sext_ln137_fu_3610_p1;
assign grp_fu_4044_p0 = sext_ln137_fu_3610_p1;
assign grp_fu_4053_p0 = sext_ln137_fu_3610_p1;
assign grp_fu_4064_p0 = sext_ln137_1_fu_3646_p1;
assign grp_fu_4064_p1 = sext_ln137_1_fu_3646_p1;
assign grp_fu_4073_p0 = sext_ln135_3_fu_3637_p1;
assign grp_fu_4073_p1 = sext_ln135_3_fu_3637_p1;
assign grp_fu_4082_p0 = sext_ln135_2_reg_4363;
assign grp_fu_4082_p1 = sext_ln139_1_reg_4353;
assign grp_fu_4082_p2 = sext_ln138_reg_4346;
assign grp_fu_4089_p2 = sext_ln138_reg_4346;
assign grp_fu_4098_p0 = sext_ln135_3_fu_3637_p1;
assign grp_fu_4098_p1 = sext_ln140_fu_3616_p1;
assign grp_fu_4106_p0 = sext_ln137_1_fu_3646_p1;
assign grp_fu_4106_p1 = sext_ln139_fu_3613_p1;
assign grp_fu_4115_p0 = sext_ln135_3_fu_3637_p1;
assign grp_fu_4115_p1 = sext_ln141_fu_3622_p1;
assign grp_fu_4124_p0 = sext_ln137_1_fu_3646_p1;
assign grp_fu_4124_p1 = sext_ln140_fu_3616_p1;
assign grp_fu_4133_p0 = sext_ln135_3_fu_3637_p1;
assign grp_fu_4133_p1 = sext_ln142_fu_3625_p1;
assign grp_fu_4142_p0 = sext_ln137_1_fu_3646_p1;
assign grp_fu_4142_p1 = sext_ln141_fu_3622_p1;
assign grp_fu_4151_p0 = sext_ln135_3_fu_3637_p1;
assign grp_fu_4151_p1 = sext_ln143_fu_3628_p1;
assign grp_fu_4160_p0 = sext_ln137_1_fu_3646_p1;
assign grp_fu_4160_p1 = sext_ln142_fu_3625_p1;
assign grp_fu_4169_p0 = sext_ln135_3_fu_3637_p1;
assign grp_fu_4178_p0 = sext_ln137_1_fu_3646_p1;
assign grp_fu_4178_p1 = sext_ln143_fu_3628_p1;
assign grp_fu_4187_p0 = sext_ln135_3_fu_3637_p1;
assign i_8_fu_3576_p2 = (ap_sig_allocacmp_i_7 + 8'd4);
assign icmp_ln132_fu_1641_p2 = ((ap_sig_allocacmp_i_7 < 8'd160) ? 1'b1 : 1'b0);
assign mul_ln137_2_fu_3661_p0 = sext_ln135_6_reg_4433;
assign mul_ln137_2_fu_3661_p1 = sext_ln135_6_reg_4433;
assign mul_ln137_3_fu_3665_p0 = sext_ln138_1_fu_3655_p1;
assign mul_ln137_3_fu_3665_p1 = sext_ln138_1_fu_3655_p1;
assign mul_ln140_1_fu_3649_p1 = sext_ln139_fu_3613_p1;
assign mul_ln141_2_fu_3674_p0 = sext_ln135_6_reg_4433;
assign mul_ln141_2_fu_3674_p1 = sext_ln140_reg_4378;
assign mul_ln141_3_fu_3678_p0 = sext_ln142_reg_4392;
assign mul_ln141_3_fu_3678_p1 = sext_ln138_1_fu_3655_p1;
assign mul_ln142_2_fu_3683_p0 = sext_ln135_6_reg_4433;
assign mul_ln142_2_fu_3683_p1 = sext_ln141_reg_4385;
assign mul_ln142_3_fu_3687_p0 = sext_ln143_reg_4400;
assign mul_ln142_3_fu_3687_p1 = sext_ln138_1_fu_3655_p1;
assign mul_ln143_2_fu_3692_p0 = sext_ln135_6_reg_4433;
assign mul_ln143_2_fu_3692_p1 = sext_ln142_reg_4392;
assign mul_ln143_3_fu_3696_p0 = sext_ln144_reg_4408;
assign mul_ln143_3_fu_3696_p1 = sext_ln138_1_fu_3655_p1;
assign mul_ln144_2_fu_3701_p0 = sext_ln135_6_reg_4433;
assign mul_ln144_2_fu_3701_p1 = sext_ln143_reg_4400;
assign mul_ln144_3_fu_3705_p0 = sext_ln145_reg_4415;
assign mul_ln144_3_fu_3705_p1 = sext_ln138_1_fu_3655_p1;
assign mul_ln145_2_fu_3710_p0 = sext_ln135_6_reg_4433;
assign mul_ln145_2_fu_3710_p1 = sext_ln144_reg_4408;
assign mul_ln145_3_fu_3714_p1 = sext_ln138_1_fu_3655_p1;
assign p_out = empty_406_fu_502[62:0];
assign p_out1 = empty_405_fu_498[62:0];
assign p_out2 = empty_404_fu_494[62:0];
assign p_out3 = empty_403_fu_490[62:0];
assign p_out4 = empty_402_fu_486[62:0];
assign p_out5 = empty_401_fu_482[62:0];
assign p_out6 = empty_400_fu_478[62:0];
assign p_out7 = empty_399_fu_474[62:0];
assign p_out8 = empty_fu_470[62:0];
assign sext_ln135_2_fu_3604_p1 = sl_9_reg_4326;
assign sext_ln135_3_fu_3637_p1 = sl_9_reg_4326_pp0_iter1_reg;
assign sext_ln135_6_fu_3643_p1 = sl_10_reg_4333_pp0_iter1_reg;
assign sext_ln137_1_fu_3646_p1 = sl_11_reg_4340_pp0_iter1_reg;
assign sext_ln137_6_fu_3765_p1 = grp_fu_4073_p3;
assign sext_ln137_7_fu_3768_p1 = grp_fu_4064_p3;
assign sext_ln137_8_fu_3909_p1 = $signed(add_ln137_2_reg_4600);
assign sext_ln137_fu_3610_p1 = sl_11_reg_4340;
assign sext_ln138_1_fu_3655_p1 = sl_8_reg_4277_pp0_iter2_reg;
assign sext_ln138_3_fu_3918_p1 = add_ln138_reg_4605;
assign sext_ln138_fu_3592_p1 = sl_8_reg_4277;
assign sext_ln139_1_fu_3595_p1 = tmp_s_reg_4283;
assign sext_ln139_4_fu_3927_p1 = add_ln139_1_reg_4610;
assign sext_ln139_fu_3613_p1 = tmp_s_reg_4283_pp0_iter1_reg;
assign sext_ln140_4_fu_3936_p1 = add_ln140_1_reg_4615;
assign sext_ln140_fu_3616_p1 = tmp_1_reg_4289_pp0_iter1_reg;
assign sext_ln141_6_fu_3777_p1 = grp_fu_4115_p3;
assign sext_ln141_7_fu_3780_p1 = grp_fu_4106_p3;
assign sext_ln141_8_fu_3945_p1 = $signed(add_ln141_3_reg_4620);
assign sext_ln141_fu_3622_p1 = tmp_2_reg_4295_pp0_iter1_reg;
assign sext_ln142_5_fu_3789_p1 = grp_fu_4133_p3;
assign sext_ln142_6_fu_3792_p1 = grp_fu_4124_p3;
assign sext_ln142_7_fu_3954_p1 = $signed(add_ln142_2_reg_4625);
assign sext_ln142_fu_3625_p1 = $signed(tmp_3_reg_4301_pp0_iter1_reg);
assign sext_ln143_5_fu_3801_p1 = grp_fu_4151_p3;
assign sext_ln143_6_fu_3804_p1 = grp_fu_4142_p3;
assign sext_ln143_7_fu_3963_p1 = $signed(add_ln143_2_reg_4630);
assign sext_ln143_fu_3628_p1 = $signed(tmp_4_reg_4306_pp0_iter1_reg);
assign sext_ln144_5_fu_3813_p1 = grp_fu_4169_p3;
assign sext_ln144_6_fu_3816_p1 = grp_fu_4160_p3;
assign sext_ln144_7_fu_3972_p1 = $signed(add_ln144_2_reg_4635);
assign sext_ln144_fu_3631_p1 = tmp_5_reg_4311_pp0_iter1_reg;
assign sext_ln145_5_fu_3825_p1 = grp_fu_4187_p3;
assign sext_ln145_6_fu_3828_p1 = grp_fu_4178_p3;
assign sext_ln145_7_fu_3981_p1 = $signed(add_ln145_2_reg_4640);
assign sext_ln145_fu_3634_p1 = tmp_6_reg_4316_pp0_iter1_reg;
assign sl_10_fu_3256_p77 = 'bx;
assign sl_11_fu_3416_p77 = 'bx;
assign sl_8_fu_1650_p77 = 'bx;
assign sl_9_fu_3096_p77 = 'bx;
assign tmp_1_fu_1970_p77 = 'bx;
assign tmp_2_fu_2130_p77 = 'bx;
assign tmp_3_fu_2296_p77 = 'bx;
assign tmp_4_fu_2456_p77 = 'bx;
assign tmp_5_fu_2616_p77 = 'bx;
assign tmp_6_fu_2776_p77 = 'bx;
assign tmp_7_fu_2936_p77 = 'bx;
assign tmp_s_fu_1810_p77 = 'bx;
endmodule 
