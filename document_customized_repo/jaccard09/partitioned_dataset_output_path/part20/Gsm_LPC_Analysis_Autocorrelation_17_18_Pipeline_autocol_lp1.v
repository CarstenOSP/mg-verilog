
module Gsm_LPC_Analysis_Autocorrelation_17_18_Pipeline_autocol_lp1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,s_0_load,s_8_load,s_16_load,s_24_load,s_32_load,s_40_load,s_48_load,s_56_load,s_64_load,s_72_load,s_80_load,s_88_load,s_96_load,s_104_load,s_112_load,s_120_load,s_128_load,s_136_load,s_144_load,s_152_load,s_1_load,s_9_load,s_17_load,s_25_load,s_33_load,s_41_load,s_49_load,s_57_load,s_65_load,s_73_load,s_81_load,s_89_load,s_97_load,s_105_load,s_113_load,s_121_load,s_129_load,s_137_load,s_145_load,s_153_load,s_2_load,s_10_load,s_18_load,s_26_load,s_34_load,s_42_load,s_50_load,s_58_load,s_66_load,s_74_load,s_82_load,s_90_load,s_98_load,s_106_load,s_114_load,s_122_load,s_130_load,s_138_load,s_146_load,s_154_load,s_3_load,s_11_load,s_19_load,s_27_load,s_35_load,s_43_load,s_51_load,s_59_load,s_67_load,s_75_load,s_83_load,s_91_load,s_99_load,s_107_load,s_115_load,s_123_load,s_131_load,s_139_load,s_147_load,s_155_load,s_4_load,s_12_load,s_20_load,s_28_load,s_36_load,s_44_load,s_52_load,s_60_load,s_68_load,s_76_load,s_84_load,s_92_load,s_100_load,s_108_load,s_116_load,s_124_load,s_132_load,s_140_load,s_148_load,s_156_load,s_5_load,s_13_load,s_21_load,s_29_load,s_37_load,s_45_load,s_53_load,s_61_load,s_69_load,s_77_load,s_85_load,s_93_load,s_101_load,s_109_load,s_117_load,s_125_load,s_133_load,s_141_load,s_149_load,s_157_load,s_6_load,s_14_load,s_22_load,s_30_load,s_38_load,s_46_load,s_54_load,s_62_load,s_70_load,s_78_load,s_86_load,s_94_load,s_102_load,s_110_load,s_118_load,s_126_load,s_134_load,s_142_load,s_150_load,s_158_load,s_7_load,s_15_load,s_23_load,s_31_load,s_39_load,s_47_load,s_55_load,s_63_load,s_71_load,s_79_load,s_87_load,s_95_load,s_103_load,s_111_load,s_119_load,s_127_load,s_135_load,s_143_load,s_151_load,s_159_load,smax_out,smax_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] s_0_load;
input  [15:0] s_8_load;
input  [15:0] s_16_load;
input  [15:0] s_24_load;
input  [15:0] s_32_load;
input  [15:0] s_40_load;
input  [15:0] s_48_load;
input  [15:0] s_56_load;
input  [15:0] s_64_load;
input  [15:0] s_72_load;
input  [15:0] s_80_load;
input  [15:0] s_88_load;
input  [15:0] s_96_load;
input  [15:0] s_104_load;
input  [15:0] s_112_load;
input  [15:0] s_120_load;
input  [15:0] s_128_load;
input  [15:0] s_136_load;
input  [15:0] s_144_load;
input  [15:0] s_152_load;
input  [15:0] s_1_load;
input  [15:0] s_9_load;
input  [15:0] s_17_load;
input  [15:0] s_25_load;
input  [15:0] s_33_load;
input  [15:0] s_41_load;
input  [15:0] s_49_load;
input  [15:0] s_57_load;
input  [15:0] s_65_load;
input  [15:0] s_73_load;
input  [15:0] s_81_load;
input  [15:0] s_89_load;
input  [15:0] s_97_load;
input  [15:0] s_105_load;
input  [15:0] s_113_load;
input  [15:0] s_121_load;
input  [15:0] s_129_load;
input  [15:0] s_137_load;
input  [15:0] s_145_load;
input  [15:0] s_153_load;
input  [15:0] s_2_load;
input  [15:0] s_10_load;
input  [15:0] s_18_load;
input  [15:0] s_26_load;
input  [15:0] s_34_load;
input  [15:0] s_42_load;
input  [15:0] s_50_load;
input  [15:0] s_58_load;
input  [15:0] s_66_load;
input  [15:0] s_74_load;
input  [15:0] s_82_load;
input  [15:0] s_90_load;
input  [15:0] s_98_load;
input  [15:0] s_106_load;
input  [15:0] s_114_load;
input  [15:0] s_122_load;
input  [15:0] s_130_load;
input  [15:0] s_138_load;
input  [15:0] s_146_load;
input  [15:0] s_154_load;
input  [15:0] s_3_load;
input  [15:0] s_11_load;
input  [15:0] s_19_load;
input  [15:0] s_27_load;
input  [15:0] s_35_load;
input  [15:0] s_43_load;
input  [15:0] s_51_load;
input  [15:0] s_59_load;
input  [15:0] s_67_load;
input  [15:0] s_75_load;
input  [15:0] s_83_load;
input  [15:0] s_91_load;
input  [15:0] s_99_load;
input  [15:0] s_107_load;
input  [15:0] s_115_load;
input  [15:0] s_123_load;
input  [15:0] s_131_load;
input  [15:0] s_139_load;
input  [15:0] s_147_load;
input  [15:0] s_155_load;
input  [15:0] s_4_load;
input  [15:0] s_12_load;
input  [15:0] s_20_load;
input  [15:0] s_28_load;
input  [15:0] s_36_load;
input  [15:0] s_44_load;
input  [15:0] s_52_load;
input  [15:0] s_60_load;
input  [15:0] s_68_load;
input  [15:0] s_76_load;
input  [15:0] s_84_load;
input  [15:0] s_92_load;
input  [15:0] s_100_load;
input  [15:0] s_108_load;
input  [15:0] s_116_load;
input  [15:0] s_124_load;
input  [15:0] s_132_load;
input  [15:0] s_140_load;
input  [15:0] s_148_load;
input  [15:0] s_156_load;
input  [15:0] s_5_load;
input  [15:0] s_13_load;
input  [15:0] s_21_load;
input  [15:0] s_29_load;
input  [15:0] s_37_load;
input  [15:0] s_45_load;
input  [15:0] s_53_load;
input  [15:0] s_61_load;
input  [15:0] s_69_load;
input  [15:0] s_77_load;
input  [15:0] s_85_load;
input  [15:0] s_93_load;
input  [15:0] s_101_load;
input  [15:0] s_109_load;
input  [15:0] s_117_load;
input  [15:0] s_125_load;
input  [15:0] s_133_load;
input  [15:0] s_141_load;
input  [15:0] s_149_load;
input  [15:0] s_157_load;
input  [15:0] s_6_load;
input  [15:0] s_14_load;
input  [15:0] s_22_load;
input  [15:0] s_30_load;
input  [15:0] s_38_load;
input  [15:0] s_46_load;
input  [15:0] s_54_load;
input  [15:0] s_62_load;
input  [15:0] s_70_load;
input  [15:0] s_78_load;
input  [15:0] s_86_load;
input  [15:0] s_94_load;
input  [15:0] s_102_load;
input  [15:0] s_110_load;
input  [15:0] s_118_load;
input  [15:0] s_126_load;
input  [15:0] s_134_load;
input  [15:0] s_142_load;
input  [15:0] s_150_load;
input  [15:0] s_158_load;
input  [15:0] s_7_load;
input  [15:0] s_15_load;
input  [15:0] s_23_load;
input  [15:0] s_31_load;
input  [15:0] s_39_load;
input  [15:0] s_47_load;
input  [15:0] s_55_load;
input  [15:0] s_63_load;
input  [15:0] s_71_load;
input  [15:0] s_79_load;
input  [15:0] s_87_load;
input  [15:0] s_95_load;
input  [15:0] s_103_load;
input  [15:0] s_111_load;
input  [15:0] s_119_load;
input  [15:0] s_127_load;
input  [15:0] s_135_load;
input  [15:0] s_143_load;
input  [15:0] s_151_load;
input  [15:0] s_159_load;
output  [15:0] smax_out;
output   smax_out_ap_vld;
reg ap_idle;
reg smax_out_ap_vld;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln55_reg_3074;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] k_6_reg_3062;
wire   [0:0] icmp_ln55_fu_1388_p2;
wire   [15:0] a_assign_fu_1394_p43;
reg   [15:0] a_assign_reg_3078;
wire   [15:0] smax_1_fu_1523_p3;
reg   [15:0] smax_1_reg_3086;
wire    ap_block_pp0_stage1_11001;
wire   [15:0] temp_85_fu_1626_p3;
reg   [15:0] temp_85_reg_3092;
wire   [15:0] temp_79_fu_1729_p3;
reg   [15:0] temp_79_reg_3098;
wire   [15:0] temp_86_fu_1832_p3;
reg   [15:0] temp_86_reg_3104;
wire   [15:0] temp_81_fu_1935_p3;
reg   [15:0] temp_81_reg_3110;
wire   [15:0] temp_87_fu_2038_p3;
reg   [15:0] temp_87_reg_3116;
wire   [15:0] temp_83_fu_2141_p3;
reg   [15:0] temp_83_reg_3122;
wire   [15:0] temp_88_fu_2244_p3;
reg   [15:0] temp_88_reg_3128;
wire   [15:0] smax_4_fu_2267_p3;
reg   [15:0] smax_4_reg_3134;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [15:0] smax_7_fu_2289_p3;
reg   [15:0] smax_7_reg_3140;
wire    ap_block_pp0_stage3_11001;
wire   [15:0] smax_10_fu_2321_p3;
reg   [15:0] smax_10_reg_3146;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [15:0] smax_fu_400;
wire   [15:0] smax_12_fu_2332_p3;
reg   [15:0] ap_sig_allocacmp_smax_load_1;
wire    ap_block_pp0_stage1;
wire    ap_loop_init;
reg   [7:0] k_fu_404;
wire   [7:0] add_ln55_fu_2296_p2;
reg   [7:0] ap_sig_allocacmp_k_6;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1_01001;
wire   [15:0] a_assign_fu_1394_p41;
wire   [0:0] icmp_ln69_fu_1492_p2;
wire   [15:0] sub_ln69_fu_1497_p2;
wire   [0:0] tmp_fu_1485_p3;
wire   [15:0] select_ln69_fu_1502_p3;
wire   [15:0] temp_fu_1510_p3;
wire   [0:0] icmp_ln58_fu_1517_p2;
wire   [15:0] a_assign_s_fu_1531_p41;
wire   [15:0] a_assign_s_fu_1531_p43;
wire   [0:0] icmp_ln69_8_fu_1606_p2;
wire   [15:0] sub_ln69_8_fu_1612_p2;
wire   [0:0] tmp_42_fu_1598_p3;
wire   [15:0] select_ln69_1_fu_1618_p3;
wire   [15:0] a_assign_2_fu_1634_p41;
wire   [15:0] a_assign_2_fu_1634_p43;
wire   [0:0] icmp_ln69_9_fu_1709_p2;
wire   [15:0] sub_ln69_9_fu_1715_p2;
wire   [0:0] tmp_43_fu_1701_p3;
wire   [15:0] select_ln69_2_fu_1721_p3;
wire   [15:0] a_assign_3_fu_1737_p41;
wire   [15:0] a_assign_3_fu_1737_p43;
wire   [0:0] icmp_ln69_10_fu_1812_p2;
wire   [15:0] sub_ln69_10_fu_1818_p2;
wire   [0:0] tmp_44_fu_1804_p3;
wire   [15:0] select_ln69_3_fu_1824_p3;
wire   [15:0] a_assign_4_fu_1840_p41;
wire   [15:0] a_assign_4_fu_1840_p43;
wire   [0:0] icmp_ln69_11_fu_1915_p2;
wire   [15:0] sub_ln69_11_fu_1921_p2;
wire   [0:0] tmp_45_fu_1907_p3;
wire   [15:0] select_ln69_4_fu_1927_p3;
wire   [15:0] a_assign_5_fu_1943_p41;
wire   [15:0] a_assign_5_fu_1943_p43;
wire   [0:0] icmp_ln69_12_fu_2018_p2;
wire   [15:0] sub_ln69_12_fu_2024_p2;
wire   [0:0] tmp_46_fu_2010_p3;
wire   [15:0] select_ln69_5_fu_2030_p3;
wire   [15:0] a_assign_6_fu_2046_p41;
wire   [15:0] a_assign_6_fu_2046_p43;
wire   [0:0] icmp_ln69_13_fu_2121_p2;
wire   [15:0] sub_ln69_13_fu_2127_p2;
wire   [0:0] tmp_47_fu_2113_p3;
wire   [15:0] select_ln69_6_fu_2133_p3;
wire   [15:0] a_assign_7_fu_2149_p41;
wire   [15:0] a_assign_7_fu_2149_p43;
wire   [0:0] icmp_ln69_14_fu_2224_p2;
wire   [15:0] sub_ln69_14_fu_2230_p2;
wire   [0:0] tmp_48_fu_2216_p3;
wire   [15:0] select_ln69_7_fu_2236_p3;
wire    ap_block_pp0_stage2;
wire   [0:0] icmp_ln58_1_fu_2252_p2;
wire   [15:0] smax_3_fu_2256_p3;
wire   [0:0] icmp_ln58_2_fu_2262_p2;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln58_3_fu_2274_p2;
wire   [15:0] smax_6_fu_2278_p3;
wire   [0:0] icmp_ln58_4_fu_2284_p2;
wire   [0:0] icmp_ln58_5_fu_2306_p2;
wire   [15:0] smax_9_fu_2310_p3;
wire   [0:0] icmp_ln58_6_fu_2316_p2;
wire   [0:0] icmp_ln58_7_fu_2328_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] a_assign_fu_1394_p1;
wire   [7:0] a_assign_fu_1394_p3;
wire   [7:0] a_assign_fu_1394_p5;
wire   [7:0] a_assign_fu_1394_p7;
wire   [7:0] a_assign_fu_1394_p9;
wire   [7:0] a_assign_fu_1394_p11;
wire   [7:0] a_assign_fu_1394_p13;
wire   [7:0] a_assign_fu_1394_p15;
wire   [7:0] a_assign_fu_1394_p17;
wire   [7:0] a_assign_fu_1394_p19;
wire   [7:0] a_assign_fu_1394_p21;
wire   [7:0] a_assign_fu_1394_p23;
wire   [7:0] a_assign_fu_1394_p25;
wire   [7:0] a_assign_fu_1394_p27;
wire   [7:0] a_assign_fu_1394_p29;
wire   [7:0] a_assign_fu_1394_p31;
wire  signed [7:0] a_assign_fu_1394_p33;
wire  signed [7:0] a_assign_fu_1394_p35;
wire  signed [7:0] a_assign_fu_1394_p37;
wire  signed [7:0] a_assign_fu_1394_p39;
wire   [7:0] a_assign_s_fu_1531_p1;
wire   [7:0] a_assign_s_fu_1531_p3;
wire   [7:0] a_assign_s_fu_1531_p5;
wire   [7:0] a_assign_s_fu_1531_p7;
wire   [7:0] a_assign_s_fu_1531_p9;
wire   [7:0] a_assign_s_fu_1531_p11;
wire   [7:0] a_assign_s_fu_1531_p13;
wire   [7:0] a_assign_s_fu_1531_p15;
wire   [7:0] a_assign_s_fu_1531_p17;
wire   [7:0] a_assign_s_fu_1531_p19;
wire   [7:0] a_assign_s_fu_1531_p21;
wire   [7:0] a_assign_s_fu_1531_p23;
wire   [7:0] a_assign_s_fu_1531_p25;
wire   [7:0] a_assign_s_fu_1531_p27;
wire   [7:0] a_assign_s_fu_1531_p29;
wire   [7:0] a_assign_s_fu_1531_p31;
wire  signed [7:0] a_assign_s_fu_1531_p33;
wire  signed [7:0] a_assign_s_fu_1531_p35;
wire  signed [7:0] a_assign_s_fu_1531_p37;
wire  signed [7:0] a_assign_s_fu_1531_p39;
wire   [7:0] a_assign_2_fu_1634_p1;
wire   [7:0] a_assign_2_fu_1634_p3;
wire   [7:0] a_assign_2_fu_1634_p5;
wire   [7:0] a_assign_2_fu_1634_p7;
wire   [7:0] a_assign_2_fu_1634_p9;
wire   [7:0] a_assign_2_fu_1634_p11;
wire   [7:0] a_assign_2_fu_1634_p13;
wire   [7:0] a_assign_2_fu_1634_p15;
wire   [7:0] a_assign_2_fu_1634_p17;
wire   [7:0] a_assign_2_fu_1634_p19;
wire   [7:0] a_assign_2_fu_1634_p21;
wire   [7:0] a_assign_2_fu_1634_p23;
wire   [7:0] a_assign_2_fu_1634_p25;
wire   [7:0] a_assign_2_fu_1634_p27;
wire   [7:0] a_assign_2_fu_1634_p29;
wire   [7:0] a_assign_2_fu_1634_p31;
wire  signed [7:0] a_assign_2_fu_1634_p33;
wire  signed [7:0] a_assign_2_fu_1634_p35;
wire  signed [7:0] a_assign_2_fu_1634_p37;
wire  signed [7:0] a_assign_2_fu_1634_p39;
wire   [7:0] a_assign_3_fu_1737_p1;
wire   [7:0] a_assign_3_fu_1737_p3;
wire   [7:0] a_assign_3_fu_1737_p5;
wire   [7:0] a_assign_3_fu_1737_p7;
wire   [7:0] a_assign_3_fu_1737_p9;
wire   [7:0] a_assign_3_fu_1737_p11;
wire   [7:0] a_assign_3_fu_1737_p13;
wire   [7:0] a_assign_3_fu_1737_p15;
wire   [7:0] a_assign_3_fu_1737_p17;
wire   [7:0] a_assign_3_fu_1737_p19;
wire   [7:0] a_assign_3_fu_1737_p21;
wire   [7:0] a_assign_3_fu_1737_p23;
wire   [7:0] a_assign_3_fu_1737_p25;
wire   [7:0] a_assign_3_fu_1737_p27;
wire   [7:0] a_assign_3_fu_1737_p29;
wire   [7:0] a_assign_3_fu_1737_p31;
wire  signed [7:0] a_assign_3_fu_1737_p33;
wire  signed [7:0] a_assign_3_fu_1737_p35;
wire  signed [7:0] a_assign_3_fu_1737_p37;
wire  signed [7:0] a_assign_3_fu_1737_p39;
wire   [7:0] a_assign_4_fu_1840_p1;
wire   [7:0] a_assign_4_fu_1840_p3;
wire   [7:0] a_assign_4_fu_1840_p5;
wire   [7:0] a_assign_4_fu_1840_p7;
wire   [7:0] a_assign_4_fu_1840_p9;
wire   [7:0] a_assign_4_fu_1840_p11;
wire   [7:0] a_assign_4_fu_1840_p13;
wire   [7:0] a_assign_4_fu_1840_p15;
wire   [7:0] a_assign_4_fu_1840_p17;
wire   [7:0] a_assign_4_fu_1840_p19;
wire   [7:0] a_assign_4_fu_1840_p21;
wire   [7:0] a_assign_4_fu_1840_p23;
wire   [7:0] a_assign_4_fu_1840_p25;
wire   [7:0] a_assign_4_fu_1840_p27;
wire   [7:0] a_assign_4_fu_1840_p29;
wire   [7:0] a_assign_4_fu_1840_p31;
wire  signed [7:0] a_assign_4_fu_1840_p33;
wire  signed [7:0] a_assign_4_fu_1840_p35;
wire  signed [7:0] a_assign_4_fu_1840_p37;
wire  signed [7:0] a_assign_4_fu_1840_p39;
wire   [7:0] a_assign_5_fu_1943_p1;
wire   [7:0] a_assign_5_fu_1943_p3;
wire   [7:0] a_assign_5_fu_1943_p5;
wire   [7:0] a_assign_5_fu_1943_p7;
wire   [7:0] a_assign_5_fu_1943_p9;
wire   [7:0] a_assign_5_fu_1943_p11;
wire   [7:0] a_assign_5_fu_1943_p13;
wire   [7:0] a_assign_5_fu_1943_p15;
wire   [7:0] a_assign_5_fu_1943_p17;
wire   [7:0] a_assign_5_fu_1943_p19;
wire   [7:0] a_assign_5_fu_1943_p21;
wire   [7:0] a_assign_5_fu_1943_p23;
wire   [7:0] a_assign_5_fu_1943_p25;
wire   [7:0] a_assign_5_fu_1943_p27;
wire   [7:0] a_assign_5_fu_1943_p29;
wire   [7:0] a_assign_5_fu_1943_p31;
wire  signed [7:0] a_assign_5_fu_1943_p33;
wire  signed [7:0] a_assign_5_fu_1943_p35;
wire  signed [7:0] a_assign_5_fu_1943_p37;
wire  signed [7:0] a_assign_5_fu_1943_p39;
wire   [7:0] a_assign_6_fu_2046_p1;
wire   [7:0] a_assign_6_fu_2046_p3;
wire   [7:0] a_assign_6_fu_2046_p5;
wire   [7:0] a_assign_6_fu_2046_p7;
wire   [7:0] a_assign_6_fu_2046_p9;
wire   [7:0] a_assign_6_fu_2046_p11;
wire   [7:0] a_assign_6_fu_2046_p13;
wire   [7:0] a_assign_6_fu_2046_p15;
wire   [7:0] a_assign_6_fu_2046_p17;
wire   [7:0] a_assign_6_fu_2046_p19;
wire   [7:0] a_assign_6_fu_2046_p21;
wire   [7:0] a_assign_6_fu_2046_p23;
wire   [7:0] a_assign_6_fu_2046_p25;
wire   [7:0] a_assign_6_fu_2046_p27;
wire   [7:0] a_assign_6_fu_2046_p29;
wire   [7:0] a_assign_6_fu_2046_p31;
wire  signed [7:0] a_assign_6_fu_2046_p33;
wire  signed [7:0] a_assign_6_fu_2046_p35;
wire  signed [7:0] a_assign_6_fu_2046_p37;
wire  signed [7:0] a_assign_6_fu_2046_p39;
wire   [7:0] a_assign_7_fu_2149_p1;
wire   [7:0] a_assign_7_fu_2149_p3;
wire   [7:0] a_assign_7_fu_2149_p5;
wire   [7:0] a_assign_7_fu_2149_p7;
wire   [7:0] a_assign_7_fu_2149_p9;
wire   [7:0] a_assign_7_fu_2149_p11;
wire   [7:0] a_assign_7_fu_2149_p13;
wire   [7:0] a_assign_7_fu_2149_p15;
wire   [7:0] a_assign_7_fu_2149_p17;
wire   [7:0] a_assign_7_fu_2149_p19;
wire   [7:0] a_assign_7_fu_2149_p21;
wire   [7:0] a_assign_7_fu_2149_p23;
wire   [7:0] a_assign_7_fu_2149_p25;
wire   [7:0] a_assign_7_fu_2149_p27;
wire   [7:0] a_assign_7_fu_2149_p29;
wire   [7:0] a_assign_7_fu_2149_p31;
wire  signed [7:0] a_assign_7_fu_2149_p33;
wire  signed [7:0] a_assign_7_fu_2149_p35;
wire  signed [7:0] a_assign_7_fu_2149_p37;
wire  signed [7:0] a_assign_7_fu_2149_p39;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 smax_fu_400 = 16'd0;
#0 k_fu_404 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_41_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.CASE19( 8'h98 ),.din19_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_41_8_16_1_1_U1(.din0(s_0_load),.din1(s_8_load),.din2(s_16_load),.din3(s_24_load),.din4(s_32_load),.din5(s_40_load),.din6(s_48_load),.din7(s_56_load),.din8(s_64_load),.din9(s_72_load),.din10(s_80_load),.din11(s_88_load),.din12(s_96_load),.din13(s_104_load),.din14(s_112_load),.din15(s_120_load),.din16(s_128_load),.din17(s_136_load),.din18(s_144_load),.din19(s_152_load),.def(a_assign_fu_1394_p41),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_fu_1394_p43));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_41_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.CASE19( 8'h98 ),.din19_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_41_8_16_1_1_U2(.din0(s_1_load),.din1(s_9_load),.din2(s_17_load),.din3(s_25_load),.din4(s_33_load),.din5(s_41_load),.din6(s_49_load),.din7(s_57_load),.din8(s_65_load),.din9(s_73_load),.din10(s_81_load),.din11(s_89_load),.din12(s_97_load),.din13(s_105_load),.din14(s_113_load),.din15(s_121_load),.din16(s_129_load),.din17(s_137_load),.din18(s_145_load),.din19(s_153_load),.def(a_assign_s_fu_1531_p41),.sel(k_6_reg_3062),.dout(a_assign_s_fu_1531_p43));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_41_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.CASE19( 8'h98 ),.din19_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_41_8_16_1_1_U3(.din0(s_2_load),.din1(s_10_load),.din2(s_18_load),.din3(s_26_load),.din4(s_34_load),.din5(s_42_load),.din6(s_50_load),.din7(s_58_load),.din8(s_66_load),.din9(s_74_load),.din10(s_82_load),.din11(s_90_load),.din12(s_98_load),.din13(s_106_load),.din14(s_114_load),.din15(s_122_load),.din16(s_130_load),.din17(s_138_load),.din18(s_146_load),.din19(s_154_load),.def(a_assign_2_fu_1634_p41),.sel(k_6_reg_3062),.dout(a_assign_2_fu_1634_p43));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_41_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.CASE19( 8'h98 ),.din19_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_41_8_16_1_1_U4(.din0(s_3_load),.din1(s_11_load),.din2(s_19_load),.din3(s_27_load),.din4(s_35_load),.din5(s_43_load),.din6(s_51_load),.din7(s_59_load),.din8(s_67_load),.din9(s_75_load),.din10(s_83_load),.din11(s_91_load),.din12(s_99_load),.din13(s_107_load),.din14(s_115_load),.din15(s_123_load),.din16(s_131_load),.din17(s_139_load),.din18(s_147_load),.din19(s_155_load),.def(a_assign_3_fu_1737_p41),.sel(k_6_reg_3062),.dout(a_assign_3_fu_1737_p43));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_41_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.CASE19( 8'h98 ),.din19_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_41_8_16_1_1_U5(.din0(s_4_load),.din1(s_12_load),.din2(s_20_load),.din3(s_28_load),.din4(s_36_load),.din5(s_44_load),.din6(s_52_load),.din7(s_60_load),.din8(s_68_load),.din9(s_76_load),.din10(s_84_load),.din11(s_92_load),.din12(s_100_load),.din13(s_108_load),.din14(s_116_load),.din15(s_124_load),.din16(s_132_load),.din17(s_140_load),.din18(s_148_load),.din19(s_156_load),.def(a_assign_4_fu_1840_p41),.sel(k_6_reg_3062),.dout(a_assign_4_fu_1840_p43));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_41_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.CASE19( 8'h98 ),.din19_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_41_8_16_1_1_U6(.din0(s_5_load),.din1(s_13_load),.din2(s_21_load),.din3(s_29_load),.din4(s_37_load),.din5(s_45_load),.din6(s_53_load),.din7(s_61_load),.din8(s_69_load),.din9(s_77_load),.din10(s_85_load),.din11(s_93_load),.din12(s_101_load),.din13(s_109_load),.din14(s_117_load),.din15(s_125_load),.din16(s_133_load),.din17(s_141_load),.din18(s_149_load),.din19(s_157_load),.def(a_assign_5_fu_1943_p41),.sel(k_6_reg_3062),.dout(a_assign_5_fu_1943_p43));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_41_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.CASE19( 8'h98 ),.din19_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_41_8_16_1_1_U7(.din0(s_6_load),.din1(s_14_load),.din2(s_22_load),.din3(s_30_load),.din4(s_38_load),.din5(s_46_load),.din6(s_54_load),.din7(s_62_load),.din8(s_70_load),.din9(s_78_load),.din10(s_86_load),.din11(s_94_load),.din12(s_102_load),.din13(s_110_load),.din14(s_118_load),.din15(s_126_load),.din16(s_134_load),.din17(s_142_load),.din18(s_150_load),.din19(s_158_load),.def(a_assign_6_fu_2046_p41),.sel(k_6_reg_3062),.dout(a_assign_6_fu_2046_p43));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_41_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h8 ),.din1_WIDTH( 16 ),.CASE2( 8'h10 ),.din2_WIDTH( 16 ),.CASE3( 8'h18 ),.din3_WIDTH( 16 ),.CASE4( 8'h20 ),.din4_WIDTH( 16 ),.CASE5( 8'h28 ),.din5_WIDTH( 16 ),.CASE6( 8'h30 ),.din6_WIDTH( 16 ),.CASE7( 8'h38 ),.din7_WIDTH( 16 ),.CASE8( 8'h40 ),.din8_WIDTH( 16 ),.CASE9( 8'h48 ),.din9_WIDTH( 16 ),.CASE10( 8'h50 ),.din10_WIDTH( 16 ),.CASE11( 8'h58 ),.din11_WIDTH( 16 ),.CASE12( 8'h60 ),.din12_WIDTH( 16 ),.CASE13( 8'h68 ),.din13_WIDTH( 16 ),.CASE14( 8'h70 ),.din14_WIDTH( 16 ),.CASE15( 8'h78 ),.din15_WIDTH( 16 ),.CASE16( 8'h80 ),.din16_WIDTH( 16 ),.CASE17( 8'h88 ),.din17_WIDTH( 16 ),.CASE18( 8'h90 ),.din18_WIDTH( 16 ),.CASE19( 8'h98 ),.din19_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_41_8_16_1_1_U8(.din0(s_7_load),.din1(s_15_load),.din2(s_23_load),.din3(s_31_load),.din4(s_39_load),.din5(s_47_load),.din6(s_55_load),.din7(s_63_load),.din8(s_71_load),.din9(s_79_load),.din10(s_87_load),.din11(s_95_load),.din12(s_103_load),.din13(s_111_load),.din14(s_119_load),.din15(s_127_load),.din16(s_135_load),.din17(s_143_load),.din18(s_151_load),.din19(s_159_load),.def(a_assign_7_fu_2149_p41),.sel(k_6_reg_3062),.dout(a_assign_7_fu_2149_p43));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_404 <= 8'd0;
    end else if (((icmp_ln55_reg_3074 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        k_fu_404 <= add_ln55_fu_2296_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smax_fu_400 <= 16'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smax_fu_400 <= smax_12_fu_2332_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_assign_reg_3078 <= a_assign_fu_1394_p43;
        icmp_ln55_reg_3074 <= icmp_ln55_fu_1388_p2;
        k_6_reg_3062 <= ap_sig_allocacmp_k_6;
        smax_10_reg_3146 <= smax_10_fu_2321_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smax_1_reg_3086 <= smax_1_fu_1523_p3;
        temp_79_reg_3098 <= temp_79_fu_1729_p3;
        temp_81_reg_3110 <= temp_81_fu_1935_p3;
        temp_83_reg_3122 <= temp_83_fu_2141_p3;
        temp_85_reg_3092 <= temp_85_fu_1626_p3;
        temp_86_reg_3104 <= temp_86_fu_1832_p3;
        temp_87_reg_3116 <= temp_87_fu_2038_p3;
        temp_88_reg_3128 <= temp_88_fu_2244_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smax_4_reg_3134 <= smax_4_fu_2267_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smax_7_reg_3140 <= smax_7_fu_2289_p3;
    end
end
always @ (*) begin
    if (((icmp_ln55_reg_3074 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_6 = 8'd0;
    end else begin
        ap_sig_allocacmp_k_6 = k_fu_404;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_smax_load_1 = smax_12_fu_2332_p3;
    end else begin
        ap_sig_allocacmp_smax_load_1 = smax_fu_400;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln55_reg_3074 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_assign_2_fu_1634_p41 = 'bx;
assign a_assign_3_fu_1737_p41 = 'bx;
assign a_assign_4_fu_1840_p41 = 'bx;
assign a_assign_5_fu_1943_p41 = 'bx;
assign a_assign_6_fu_2046_p41 = 'bx;
assign a_assign_7_fu_2149_p41 = 'bx;
assign a_assign_fu_1394_p41 = 'bx;
assign a_assign_s_fu_1531_p41 = 'bx;
assign add_ln55_fu_2296_p2 = (k_6_reg_3062 + 8'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln55_fu_1388_p2 = ((ap_sig_allocacmp_k_6 < 8'd160) ? 1'b1 : 1'b0);
assign icmp_ln58_1_fu_2252_p2 = (($signed(temp_85_reg_3092) > $signed(smax_1_reg_3086)) ? 1'b1 : 1'b0);
assign icmp_ln58_2_fu_2262_p2 = (($signed(temp_79_reg_3098) > $signed(smax_3_fu_2256_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_3_fu_2274_p2 = (($signed(temp_86_reg_3104) > $signed(smax_4_reg_3134)) ? 1'b1 : 1'b0);
assign icmp_ln58_4_fu_2284_p2 = (($signed(temp_81_reg_3110) > $signed(smax_6_fu_2278_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_5_fu_2306_p2 = (($signed(temp_87_reg_3116) > $signed(smax_7_reg_3140)) ? 1'b1 : 1'b0);
assign icmp_ln58_6_fu_2316_p2 = (($signed(temp_83_reg_3122) > $signed(smax_9_fu_2310_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_7_fu_2328_p2 = (($signed(temp_88_reg_3128) > $signed(smax_10_reg_3146)) ? 1'b1 : 1'b0);
assign icmp_ln58_fu_1517_p2 = (($signed(temp_fu_1510_p3) > $signed(ap_sig_allocacmp_smax_load_1)) ? 1'b1 : 1'b0);
assign icmp_ln69_10_fu_1812_p2 = ((a_assign_3_fu_1737_p43 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_11_fu_1915_p2 = ((a_assign_4_fu_1840_p43 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_12_fu_2018_p2 = ((a_assign_5_fu_1943_p43 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_13_fu_2121_p2 = ((a_assign_6_fu_2046_p43 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_14_fu_2224_p2 = ((a_assign_7_fu_2149_p43 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_8_fu_1606_p2 = ((a_assign_s_fu_1531_p43 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_9_fu_1709_p2 = ((a_assign_2_fu_1634_p43 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_fu_1492_p2 = ((a_assign_reg_3078 == 16'd32768) ? 1'b1 : 1'b0);
assign select_ln69_1_fu_1618_p3 = ((icmp_ln69_8_fu_1606_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_8_fu_1612_p2);
assign select_ln69_2_fu_1721_p3 = ((icmp_ln69_9_fu_1709_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_9_fu_1715_p2);
assign select_ln69_3_fu_1824_p3 = ((icmp_ln69_10_fu_1812_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_10_fu_1818_p2);
assign select_ln69_4_fu_1927_p3 = ((icmp_ln69_11_fu_1915_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_11_fu_1921_p2);
assign select_ln69_5_fu_2030_p3 = ((icmp_ln69_12_fu_2018_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_12_fu_2024_p2);
assign select_ln69_6_fu_2133_p3 = ((icmp_ln69_13_fu_2121_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_13_fu_2127_p2);
assign select_ln69_7_fu_2236_p3 = ((icmp_ln69_14_fu_2224_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_14_fu_2230_p2);
assign select_ln69_fu_1502_p3 = ((icmp_ln69_fu_1492_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_fu_1497_p2);
assign smax_10_fu_2321_p3 = ((icmp_ln58_6_fu_2316_p2[0:0] == 1'b1) ? temp_83_reg_3122 : smax_9_fu_2310_p3);
assign smax_12_fu_2332_p3 = ((icmp_ln58_7_fu_2328_p2[0:0] == 1'b1) ? temp_88_reg_3128 : smax_10_reg_3146);
assign smax_1_fu_1523_p3 = ((icmp_ln58_fu_1517_p2[0:0] == 1'b1) ? temp_fu_1510_p3 : ap_sig_allocacmp_smax_load_1);
assign smax_3_fu_2256_p3 = ((icmp_ln58_1_fu_2252_p2[0:0] == 1'b1) ? temp_85_reg_3092 : smax_1_reg_3086);
assign smax_4_fu_2267_p3 = ((icmp_ln58_2_fu_2262_p2[0:0] == 1'b1) ? temp_79_reg_3098 : smax_3_fu_2256_p3);
assign smax_6_fu_2278_p3 = ((icmp_ln58_3_fu_2274_p2[0:0] == 1'b1) ? temp_86_reg_3104 : smax_4_reg_3134);
assign smax_7_fu_2289_p3 = ((icmp_ln58_4_fu_2284_p2[0:0] == 1'b1) ? temp_81_reg_3110 : smax_6_fu_2278_p3);
assign smax_9_fu_2310_p3 = ((icmp_ln58_5_fu_2306_p2[0:0] == 1'b1) ? temp_87_reg_3116 : smax_7_reg_3140);
assign smax_out = smax_fu_400;
assign sub_ln69_10_fu_1818_p2 = (16'd0 - a_assign_3_fu_1737_p43);
assign sub_ln69_11_fu_1921_p2 = (16'd0 - a_assign_4_fu_1840_p43);
assign sub_ln69_12_fu_2024_p2 = (16'd0 - a_assign_5_fu_1943_p43);
assign sub_ln69_13_fu_2127_p2 = (16'd0 - a_assign_6_fu_2046_p43);
assign sub_ln69_14_fu_2230_p2 = (16'd0 - a_assign_7_fu_2149_p43);
assign sub_ln69_8_fu_1612_p2 = (16'd0 - a_assign_s_fu_1531_p43);
assign sub_ln69_9_fu_1715_p2 = (16'd0 - a_assign_2_fu_1634_p43);
assign sub_ln69_fu_1497_p2 = (16'd0 - a_assign_reg_3078);
assign temp_79_fu_1729_p3 = ((tmp_43_fu_1701_p3[0:0] == 1'b1) ? select_ln69_2_fu_1721_p3 : a_assign_2_fu_1634_p43);
assign temp_81_fu_1935_p3 = ((tmp_45_fu_1907_p3[0:0] == 1'b1) ? select_ln69_4_fu_1927_p3 : a_assign_4_fu_1840_p43);
assign temp_83_fu_2141_p3 = ((tmp_47_fu_2113_p3[0:0] == 1'b1) ? select_ln69_6_fu_2133_p3 : a_assign_6_fu_2046_p43);
assign temp_85_fu_1626_p3 = ((tmp_42_fu_1598_p3[0:0] == 1'b1) ? select_ln69_1_fu_1618_p3 : a_assign_s_fu_1531_p43);
assign temp_86_fu_1832_p3 = ((tmp_44_fu_1804_p3[0:0] == 1'b1) ? select_ln69_3_fu_1824_p3 : a_assign_3_fu_1737_p43);
assign temp_87_fu_2038_p3 = ((tmp_46_fu_2010_p3[0:0] == 1'b1) ? select_ln69_5_fu_2030_p3 : a_assign_5_fu_1943_p43);
assign temp_88_fu_2244_p3 = ((tmp_48_fu_2216_p3[0:0] == 1'b1) ? select_ln69_7_fu_2236_p3 : a_assign_7_fu_2149_p43);
assign temp_fu_1510_p3 = ((tmp_fu_1485_p3[0:0] == 1'b1) ? select_ln69_fu_1502_p3 : a_assign_reg_3078);
assign tmp_42_fu_1598_p3 = a_assign_s_fu_1531_p43[32'd15];
assign tmp_43_fu_1701_p3 = a_assign_2_fu_1634_p43[32'd15];
assign tmp_44_fu_1804_p3 = a_assign_3_fu_1737_p43[32'd15];
assign tmp_45_fu_1907_p3 = a_assign_4_fu_1840_p43[32'd15];
assign tmp_46_fu_2010_p3 = a_assign_5_fu_1943_p43[32'd15];
assign tmp_47_fu_2113_p3 = a_assign_6_fu_2046_p43[32'd15];
assign tmp_48_fu_2216_p3 = a_assign_7_fu_2149_p43[32'd15];
assign tmp_fu_1485_p3 = a_assign_reg_3078[32'd15];
endmodule 
