
module Gsm_LPC_Analysis_Autocorrelation_17_18_Pipeline_autocol_lp1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,s_0_load,s_4_load,s_8_load,s_12_load,s_16_load,s_20_load,s_24_load,s_28_load,s_32_load,s_36_load,s_40_load,s_44_load,s_48_load,s_52_load,s_56_load,s_60_load,s_64_load,s_68_load,s_72_load,s_76_load,s_80_load,s_84_load,s_88_load,s_92_load,s_96_load,s_100_load,s_104_load,s_108_load,s_112_load,s_116_load,s_120_load,s_124_load,s_128_load,s_132_load,s_136_load,s_140_load,s_144_load,s_148_load,s_152_load,s_156_load,s_1_load,s_5_load,s_9_load,s_13_load,s_17_load,s_21_load,s_25_load,s_29_load,s_33_load,s_37_load,s_41_load,s_45_load,s_49_load,s_53_load,s_57_load,s_61_load,s_65_load,s_69_load,s_73_load,s_77_load,s_81_load,s_85_load,s_89_load,s_93_load,s_97_load,s_101_load,s_105_load,s_109_load,s_113_load,s_117_load,s_121_load,s_125_load,s_129_load,s_133_load,s_137_load,s_141_load,s_145_load,s_149_load,s_153_load,s_157_load,s_2_load,s_6_load,s_10_load,s_14_load,s_18_load,s_22_load,s_26_load,s_30_load,s_34_load,s_38_load,s_42_load,s_46_load,s_50_load,s_54_load,s_58_load,s_62_load,s_66_load,s_70_load,s_74_load,s_78_load,s_82_load,s_86_load,s_90_load,s_94_load,s_98_load,s_102_load,s_106_load,s_110_load,s_114_load,s_118_load,s_122_load,s_126_load,s_130_load,s_134_load,s_138_load,s_142_load,s_146_load,s_150_load,s_154_load,s_158_load,s_3_load,s_7_load,s_11_load,s_15_load,s_19_load,s_23_load,s_27_load,s_31_load,s_35_load,s_39_load,s_43_load,s_47_load,s_51_load,s_55_load,s_59_load,s_63_load,s_67_load,s_71_load,s_75_load,s_79_load,s_83_load,s_87_load,s_91_load,s_95_load,s_99_load,s_103_load,s_107_load,s_111_load,s_115_load,s_119_load,s_123_load,s_127_load,s_131_load,s_135_load,s_139_load,s_143_load,s_147_load,s_151_load,s_155_load,s_159_load,smax_out,smax_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] s_0_load;
input  [15:0] s_4_load;
input  [15:0] s_8_load;
input  [15:0] s_12_load;
input  [15:0] s_16_load;
input  [15:0] s_20_load;
input  [15:0] s_24_load;
input  [15:0] s_28_load;
input  [15:0] s_32_load;
input  [15:0] s_36_load;
input  [15:0] s_40_load;
input  [15:0] s_44_load;
input  [15:0] s_48_load;
input  [15:0] s_52_load;
input  [15:0] s_56_load;
input  [15:0] s_60_load;
input  [15:0] s_64_load;
input  [15:0] s_68_load;
input  [15:0] s_72_load;
input  [15:0] s_76_load;
input  [15:0] s_80_load;
input  [15:0] s_84_load;
input  [15:0] s_88_load;
input  [15:0] s_92_load;
input  [15:0] s_96_load;
input  [15:0] s_100_load;
input  [15:0] s_104_load;
input  [15:0] s_108_load;
input  [15:0] s_112_load;
input  [15:0] s_116_load;
input  [15:0] s_120_load;
input  [15:0] s_124_load;
input  [15:0] s_128_load;
input  [15:0] s_132_load;
input  [15:0] s_136_load;
input  [15:0] s_140_load;
input  [15:0] s_144_load;
input  [15:0] s_148_load;
input  [15:0] s_152_load;
input  [15:0] s_156_load;
input  [15:0] s_1_load;
input  [15:0] s_5_load;
input  [15:0] s_9_load;
input  [15:0] s_13_load;
input  [15:0] s_17_load;
input  [15:0] s_21_load;
input  [15:0] s_25_load;
input  [15:0] s_29_load;
input  [15:0] s_33_load;
input  [15:0] s_37_load;
input  [15:0] s_41_load;
input  [15:0] s_45_load;
input  [15:0] s_49_load;
input  [15:0] s_53_load;
input  [15:0] s_57_load;
input  [15:0] s_61_load;
input  [15:0] s_65_load;
input  [15:0] s_69_load;
input  [15:0] s_73_load;
input  [15:0] s_77_load;
input  [15:0] s_81_load;
input  [15:0] s_85_load;
input  [15:0] s_89_load;
input  [15:0] s_93_load;
input  [15:0] s_97_load;
input  [15:0] s_101_load;
input  [15:0] s_105_load;
input  [15:0] s_109_load;
input  [15:0] s_113_load;
input  [15:0] s_117_load;
input  [15:0] s_121_load;
input  [15:0] s_125_load;
input  [15:0] s_129_load;
input  [15:0] s_133_load;
input  [15:0] s_137_load;
input  [15:0] s_141_load;
input  [15:0] s_145_load;
input  [15:0] s_149_load;
input  [15:0] s_153_load;
input  [15:0] s_157_load;
input  [15:0] s_2_load;
input  [15:0] s_6_load;
input  [15:0] s_10_load;
input  [15:0] s_14_load;
input  [15:0] s_18_load;
input  [15:0] s_22_load;
input  [15:0] s_26_load;
input  [15:0] s_30_load;
input  [15:0] s_34_load;
input  [15:0] s_38_load;
input  [15:0] s_42_load;
input  [15:0] s_46_load;
input  [15:0] s_50_load;
input  [15:0] s_54_load;
input  [15:0] s_58_load;
input  [15:0] s_62_load;
input  [15:0] s_66_load;
input  [15:0] s_70_load;
input  [15:0] s_74_load;
input  [15:0] s_78_load;
input  [15:0] s_82_load;
input  [15:0] s_86_load;
input  [15:0] s_90_load;
input  [15:0] s_94_load;
input  [15:0] s_98_load;
input  [15:0] s_102_load;
input  [15:0] s_106_load;
input  [15:0] s_110_load;
input  [15:0] s_114_load;
input  [15:0] s_118_load;
input  [15:0] s_122_load;
input  [15:0] s_126_load;
input  [15:0] s_130_load;
input  [15:0] s_134_load;
input  [15:0] s_138_load;
input  [15:0] s_142_load;
input  [15:0] s_146_load;
input  [15:0] s_150_load;
input  [15:0] s_154_load;
input  [15:0] s_158_load;
input  [15:0] s_3_load;
input  [15:0] s_7_load;
input  [15:0] s_11_load;
input  [15:0] s_15_load;
input  [15:0] s_19_load;
input  [15:0] s_23_load;
input  [15:0] s_27_load;
input  [15:0] s_31_load;
input  [15:0] s_35_load;
input  [15:0] s_39_load;
input  [15:0] s_43_load;
input  [15:0] s_47_load;
input  [15:0] s_51_load;
input  [15:0] s_55_load;
input  [15:0] s_59_load;
input  [15:0] s_63_load;
input  [15:0] s_67_load;
input  [15:0] s_71_load;
input  [15:0] s_75_load;
input  [15:0] s_79_load;
input  [15:0] s_83_load;
input  [15:0] s_87_load;
input  [15:0] s_91_load;
input  [15:0] s_95_load;
input  [15:0] s_99_load;
input  [15:0] s_103_load;
input  [15:0] s_107_load;
input  [15:0] s_111_load;
input  [15:0] s_115_load;
input  [15:0] s_119_load;
input  [15:0] s_123_load;
input  [15:0] s_127_load;
input  [15:0] s_131_load;
input  [15:0] s_135_load;
input  [15:0] s_139_load;
input  [15:0] s_143_load;
input  [15:0] s_147_load;
input  [15:0] s_151_load;
input  [15:0] s_155_load;
input  [15:0] s_159_load;
output  [15:0] smax_out;
output   smax_out_ap_vld;
reg ap_idle;
reg smax_out_ap_vld;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln55_reg_2814;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] k_6_reg_2806;
wire   [0:0] icmp_ln55_fu_1428_p2;
wire   [15:0] a_assign_fu_1434_p83;
reg   [15:0] a_assign_reg_2818;
wire   [15:0] smax_1_fu_1643_p3;
reg   [15:0] smax_1_reg_2826;
wire    ap_block_pp0_stage1_11001;
wire   [15:0] temp_53_fu_1806_p3;
reg   [15:0] temp_53_reg_2832;
wire   [15:0] temp_51_fu_1969_p3;
reg   [15:0] temp_51_reg_2838;
wire   [15:0] temp_54_fu_2132_p3;
reg   [15:0] temp_54_reg_2844;
wire   [15:0] smax_4_fu_2165_p3;
reg   [15:0] smax_4_reg_2850;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [15:0] smax_fu_440;
wire   [15:0] smax_6_fu_2176_p3;
reg   [15:0] ap_sig_allocacmp_smax_load_1;
wire    ap_block_pp0_stage1;
wire    ap_loop_init;
reg   [7:0] k_fu_444;
wire   [7:0] add_ln55_fu_2140_p2;
reg   [7:0] ap_sig_allocacmp_k_6;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1_01001;
wire   [15:0] a_assign_fu_1434_p81;
wire   [0:0] icmp_ln69_fu_1612_p2;
wire   [15:0] sub_ln69_fu_1617_p2;
wire   [0:0] tmp_fu_1605_p3;
wire   [15:0] select_ln69_fu_1622_p3;
wire   [15:0] temp_fu_1630_p3;
wire   [0:0] icmp_ln58_fu_1637_p2;
wire   [15:0] a_assign_s_fu_1651_p81;
wire   [15:0] a_assign_s_fu_1651_p83;
wire   [0:0] icmp_ln69_4_fu_1786_p2;
wire   [15:0] sub_ln69_4_fu_1792_p2;
wire   [0:0] tmp_43_fu_1778_p3;
wire   [15:0] select_ln69_1_fu_1798_p3;
wire   [15:0] a_assign_1_fu_1814_p81;
wire   [15:0] a_assign_1_fu_1814_p83;
wire   [0:0] icmp_ln69_5_fu_1949_p2;
wire   [15:0] sub_ln69_5_fu_1955_p2;
wire   [0:0] tmp_44_fu_1941_p3;
wire   [15:0] select_ln69_2_fu_1961_p3;
wire   [15:0] a_assign_2_fu_1977_p81;
wire   [15:0] a_assign_2_fu_1977_p83;
wire   [0:0] icmp_ln69_6_fu_2112_p2;
wire   [15:0] sub_ln69_6_fu_2118_p2;
wire   [0:0] tmp_45_fu_2104_p3;
wire   [15:0] select_ln69_3_fu_2124_p3;
wire   [0:0] icmp_ln58_1_fu_2150_p2;
wire   [15:0] smax_3_fu_2154_p3;
wire   [0:0] icmp_ln58_2_fu_2160_p2;
wire   [0:0] icmp_ln58_3_fu_2172_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] a_assign_fu_1434_p1;
wire   [7:0] a_assign_fu_1434_p3;
wire   [7:0] a_assign_fu_1434_p5;
wire   [7:0] a_assign_fu_1434_p7;
wire   [7:0] a_assign_fu_1434_p9;
wire   [7:0] a_assign_fu_1434_p11;
wire   [7:0] a_assign_fu_1434_p13;
wire   [7:0] a_assign_fu_1434_p15;
wire   [7:0] a_assign_fu_1434_p17;
wire   [7:0] a_assign_fu_1434_p19;
wire   [7:0] a_assign_fu_1434_p21;
wire   [7:0] a_assign_fu_1434_p23;
wire   [7:0] a_assign_fu_1434_p25;
wire   [7:0] a_assign_fu_1434_p27;
wire   [7:0] a_assign_fu_1434_p29;
wire   [7:0] a_assign_fu_1434_p31;
wire   [7:0] a_assign_fu_1434_p33;
wire   [7:0] a_assign_fu_1434_p35;
wire   [7:0] a_assign_fu_1434_p37;
wire   [7:0] a_assign_fu_1434_p39;
wire   [7:0] a_assign_fu_1434_p41;
wire   [7:0] a_assign_fu_1434_p43;
wire   [7:0] a_assign_fu_1434_p45;
wire   [7:0] a_assign_fu_1434_p47;
wire   [7:0] a_assign_fu_1434_p49;
wire   [7:0] a_assign_fu_1434_p51;
wire   [7:0] a_assign_fu_1434_p53;
wire   [7:0] a_assign_fu_1434_p55;
wire   [7:0] a_assign_fu_1434_p57;
wire   [7:0] a_assign_fu_1434_p59;
wire   [7:0] a_assign_fu_1434_p61;
wire   [7:0] a_assign_fu_1434_p63;
wire  signed [7:0] a_assign_fu_1434_p65;
wire  signed [7:0] a_assign_fu_1434_p67;
wire  signed [7:0] a_assign_fu_1434_p69;
wire  signed [7:0] a_assign_fu_1434_p71;
wire  signed [7:0] a_assign_fu_1434_p73;
wire  signed [7:0] a_assign_fu_1434_p75;
wire  signed [7:0] a_assign_fu_1434_p77;
wire  signed [7:0] a_assign_fu_1434_p79;
wire   [7:0] a_assign_s_fu_1651_p1;
wire   [7:0] a_assign_s_fu_1651_p3;
wire   [7:0] a_assign_s_fu_1651_p5;
wire   [7:0] a_assign_s_fu_1651_p7;
wire   [7:0] a_assign_s_fu_1651_p9;
wire   [7:0] a_assign_s_fu_1651_p11;
wire   [7:0] a_assign_s_fu_1651_p13;
wire   [7:0] a_assign_s_fu_1651_p15;
wire   [7:0] a_assign_s_fu_1651_p17;
wire   [7:0] a_assign_s_fu_1651_p19;
wire   [7:0] a_assign_s_fu_1651_p21;
wire   [7:0] a_assign_s_fu_1651_p23;
wire   [7:0] a_assign_s_fu_1651_p25;
wire   [7:0] a_assign_s_fu_1651_p27;
wire   [7:0] a_assign_s_fu_1651_p29;
wire   [7:0] a_assign_s_fu_1651_p31;
wire   [7:0] a_assign_s_fu_1651_p33;
wire   [7:0] a_assign_s_fu_1651_p35;
wire   [7:0] a_assign_s_fu_1651_p37;
wire   [7:0] a_assign_s_fu_1651_p39;
wire   [7:0] a_assign_s_fu_1651_p41;
wire   [7:0] a_assign_s_fu_1651_p43;
wire   [7:0] a_assign_s_fu_1651_p45;
wire   [7:0] a_assign_s_fu_1651_p47;
wire   [7:0] a_assign_s_fu_1651_p49;
wire   [7:0] a_assign_s_fu_1651_p51;
wire   [7:0] a_assign_s_fu_1651_p53;
wire   [7:0] a_assign_s_fu_1651_p55;
wire   [7:0] a_assign_s_fu_1651_p57;
wire   [7:0] a_assign_s_fu_1651_p59;
wire   [7:0] a_assign_s_fu_1651_p61;
wire   [7:0] a_assign_s_fu_1651_p63;
wire  signed [7:0] a_assign_s_fu_1651_p65;
wire  signed [7:0] a_assign_s_fu_1651_p67;
wire  signed [7:0] a_assign_s_fu_1651_p69;
wire  signed [7:0] a_assign_s_fu_1651_p71;
wire  signed [7:0] a_assign_s_fu_1651_p73;
wire  signed [7:0] a_assign_s_fu_1651_p75;
wire  signed [7:0] a_assign_s_fu_1651_p77;
wire  signed [7:0] a_assign_s_fu_1651_p79;
wire   [7:0] a_assign_1_fu_1814_p1;
wire   [7:0] a_assign_1_fu_1814_p3;
wire   [7:0] a_assign_1_fu_1814_p5;
wire   [7:0] a_assign_1_fu_1814_p7;
wire   [7:0] a_assign_1_fu_1814_p9;
wire   [7:0] a_assign_1_fu_1814_p11;
wire   [7:0] a_assign_1_fu_1814_p13;
wire   [7:0] a_assign_1_fu_1814_p15;
wire   [7:0] a_assign_1_fu_1814_p17;
wire   [7:0] a_assign_1_fu_1814_p19;
wire   [7:0] a_assign_1_fu_1814_p21;
wire   [7:0] a_assign_1_fu_1814_p23;
wire   [7:0] a_assign_1_fu_1814_p25;
wire   [7:0] a_assign_1_fu_1814_p27;
wire   [7:0] a_assign_1_fu_1814_p29;
wire   [7:0] a_assign_1_fu_1814_p31;
wire   [7:0] a_assign_1_fu_1814_p33;
wire   [7:0] a_assign_1_fu_1814_p35;
wire   [7:0] a_assign_1_fu_1814_p37;
wire   [7:0] a_assign_1_fu_1814_p39;
wire   [7:0] a_assign_1_fu_1814_p41;
wire   [7:0] a_assign_1_fu_1814_p43;
wire   [7:0] a_assign_1_fu_1814_p45;
wire   [7:0] a_assign_1_fu_1814_p47;
wire   [7:0] a_assign_1_fu_1814_p49;
wire   [7:0] a_assign_1_fu_1814_p51;
wire   [7:0] a_assign_1_fu_1814_p53;
wire   [7:0] a_assign_1_fu_1814_p55;
wire   [7:0] a_assign_1_fu_1814_p57;
wire   [7:0] a_assign_1_fu_1814_p59;
wire   [7:0] a_assign_1_fu_1814_p61;
wire   [7:0] a_assign_1_fu_1814_p63;
wire  signed [7:0] a_assign_1_fu_1814_p65;
wire  signed [7:0] a_assign_1_fu_1814_p67;
wire  signed [7:0] a_assign_1_fu_1814_p69;
wire  signed [7:0] a_assign_1_fu_1814_p71;
wire  signed [7:0] a_assign_1_fu_1814_p73;
wire  signed [7:0] a_assign_1_fu_1814_p75;
wire  signed [7:0] a_assign_1_fu_1814_p77;
wire  signed [7:0] a_assign_1_fu_1814_p79;
wire   [7:0] a_assign_2_fu_1977_p1;
wire   [7:0] a_assign_2_fu_1977_p3;
wire   [7:0] a_assign_2_fu_1977_p5;
wire   [7:0] a_assign_2_fu_1977_p7;
wire   [7:0] a_assign_2_fu_1977_p9;
wire   [7:0] a_assign_2_fu_1977_p11;
wire   [7:0] a_assign_2_fu_1977_p13;
wire   [7:0] a_assign_2_fu_1977_p15;
wire   [7:0] a_assign_2_fu_1977_p17;
wire   [7:0] a_assign_2_fu_1977_p19;
wire   [7:0] a_assign_2_fu_1977_p21;
wire   [7:0] a_assign_2_fu_1977_p23;
wire   [7:0] a_assign_2_fu_1977_p25;
wire   [7:0] a_assign_2_fu_1977_p27;
wire   [7:0] a_assign_2_fu_1977_p29;
wire   [7:0] a_assign_2_fu_1977_p31;
wire   [7:0] a_assign_2_fu_1977_p33;
wire   [7:0] a_assign_2_fu_1977_p35;
wire   [7:0] a_assign_2_fu_1977_p37;
wire   [7:0] a_assign_2_fu_1977_p39;
wire   [7:0] a_assign_2_fu_1977_p41;
wire   [7:0] a_assign_2_fu_1977_p43;
wire   [7:0] a_assign_2_fu_1977_p45;
wire   [7:0] a_assign_2_fu_1977_p47;
wire   [7:0] a_assign_2_fu_1977_p49;
wire   [7:0] a_assign_2_fu_1977_p51;
wire   [7:0] a_assign_2_fu_1977_p53;
wire   [7:0] a_assign_2_fu_1977_p55;
wire   [7:0] a_assign_2_fu_1977_p57;
wire   [7:0] a_assign_2_fu_1977_p59;
wire   [7:0] a_assign_2_fu_1977_p61;
wire   [7:0] a_assign_2_fu_1977_p63;
wire  signed [7:0] a_assign_2_fu_1977_p65;
wire  signed [7:0] a_assign_2_fu_1977_p67;
wire  signed [7:0] a_assign_2_fu_1977_p69;
wire  signed [7:0] a_assign_2_fu_1977_p71;
wire  signed [7:0] a_assign_2_fu_1977_p73;
wire  signed [7:0] a_assign_2_fu_1977_p75;
wire  signed [7:0] a_assign_2_fu_1977_p77;
wire  signed [7:0] a_assign_2_fu_1977_p79;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 smax_fu_440 = 16'd0;
#0 k_fu_444 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_81_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.CASE38( 8'h98 ),.din38_WIDTH( 16 ),.CASE39( 8'h9C ),.din39_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_81_8_16_1_1_U1(.din0(s_0_load),.din1(s_4_load),.din2(s_8_load),.din3(s_12_load),.din4(s_16_load),.din5(s_20_load),.din6(s_24_load),.din7(s_28_load),.din8(s_32_load),.din9(s_36_load),.din10(s_40_load),.din11(s_44_load),.din12(s_48_load),.din13(s_52_load),.din14(s_56_load),.din15(s_60_load),.din16(s_64_load),.din17(s_68_load),.din18(s_72_load),.din19(s_76_load),.din20(s_80_load),.din21(s_84_load),.din22(s_88_load),.din23(s_92_load),.din24(s_96_load),.din25(s_100_load),.din26(s_104_load),.din27(s_108_load),.din28(s_112_load),.din29(s_116_load),.din30(s_120_load),.din31(s_124_load),.din32(s_128_load),.din33(s_132_load),.din34(s_136_load),.din35(s_140_load),.din36(s_144_load),.din37(s_148_load),.din38(s_152_load),.din39(s_156_load),.def(a_assign_fu_1434_p81),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_fu_1434_p83));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_81_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.CASE38( 8'h98 ),.din38_WIDTH( 16 ),.CASE39( 8'h9C ),.din39_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_81_8_16_1_1_U2(.din0(s_1_load),.din1(s_5_load),.din2(s_9_load),.din3(s_13_load),.din4(s_17_load),.din5(s_21_load),.din6(s_25_load),.din7(s_29_load),.din8(s_33_load),.din9(s_37_load),.din10(s_41_load),.din11(s_45_load),.din12(s_49_load),.din13(s_53_load),.din14(s_57_load),.din15(s_61_load),.din16(s_65_load),.din17(s_69_load),.din18(s_73_load),.din19(s_77_load),.din20(s_81_load),.din21(s_85_load),.din22(s_89_load),.din23(s_93_load),.din24(s_97_load),.din25(s_101_load),.din26(s_105_load),.din27(s_109_load),.din28(s_113_load),.din29(s_117_load),.din30(s_121_load),.din31(s_125_load),.din32(s_129_load),.din33(s_133_load),.din34(s_137_load),.din35(s_141_load),.din36(s_145_load),.din37(s_149_load),.din38(s_153_load),.din39(s_157_load),.def(a_assign_s_fu_1651_p81),.sel(k_6_reg_2806),.dout(a_assign_s_fu_1651_p83));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_81_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.CASE38( 8'h98 ),.din38_WIDTH( 16 ),.CASE39( 8'h9C ),.din39_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_81_8_16_1_1_U3(.din0(s_2_load),.din1(s_6_load),.din2(s_10_load),.din3(s_14_load),.din4(s_18_load),.din5(s_22_load),.din6(s_26_load),.din7(s_30_load),.din8(s_34_load),.din9(s_38_load),.din10(s_42_load),.din11(s_46_load),.din12(s_50_load),.din13(s_54_load),.din14(s_58_load),.din15(s_62_load),.din16(s_66_load),.din17(s_70_load),.din18(s_74_load),.din19(s_78_load),.din20(s_82_load),.din21(s_86_load),.din22(s_90_load),.din23(s_94_load),.din24(s_98_load),.din25(s_102_load),.din26(s_106_load),.din27(s_110_load),.din28(s_114_load),.din29(s_118_load),.din30(s_122_load),.din31(s_126_load),.din32(s_130_load),.din33(s_134_load),.din34(s_138_load),.din35(s_142_load),.din36(s_146_load),.din37(s_150_load),.din38(s_154_load),.din39(s_158_load),.def(a_assign_1_fu_1814_p81),.sel(k_6_reg_2806),.dout(a_assign_1_fu_1814_p83));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_81_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h4 ),.din1_WIDTH( 16 ),.CASE2( 8'h8 ),.din2_WIDTH( 16 ),.CASE3( 8'hC ),.din3_WIDTH( 16 ),.CASE4( 8'h10 ),.din4_WIDTH( 16 ),.CASE5( 8'h14 ),.din5_WIDTH( 16 ),.CASE6( 8'h18 ),.din6_WIDTH( 16 ),.CASE7( 8'h1C ),.din7_WIDTH( 16 ),.CASE8( 8'h20 ),.din8_WIDTH( 16 ),.CASE9( 8'h24 ),.din9_WIDTH( 16 ),.CASE10( 8'h28 ),.din10_WIDTH( 16 ),.CASE11( 8'h2C ),.din11_WIDTH( 16 ),.CASE12( 8'h30 ),.din12_WIDTH( 16 ),.CASE13( 8'h34 ),.din13_WIDTH( 16 ),.CASE14( 8'h38 ),.din14_WIDTH( 16 ),.CASE15( 8'h3C ),.din15_WIDTH( 16 ),.CASE16( 8'h40 ),.din16_WIDTH( 16 ),.CASE17( 8'h44 ),.din17_WIDTH( 16 ),.CASE18( 8'h48 ),.din18_WIDTH( 16 ),.CASE19( 8'h4C ),.din19_WIDTH( 16 ),.CASE20( 8'h50 ),.din20_WIDTH( 16 ),.CASE21( 8'h54 ),.din21_WIDTH( 16 ),.CASE22( 8'h58 ),.din22_WIDTH( 16 ),.CASE23( 8'h5C ),.din23_WIDTH( 16 ),.CASE24( 8'h60 ),.din24_WIDTH( 16 ),.CASE25( 8'h64 ),.din25_WIDTH( 16 ),.CASE26( 8'h68 ),.din26_WIDTH( 16 ),.CASE27( 8'h6C ),.din27_WIDTH( 16 ),.CASE28( 8'h70 ),.din28_WIDTH( 16 ),.CASE29( 8'h74 ),.din29_WIDTH( 16 ),.CASE30( 8'h78 ),.din30_WIDTH( 16 ),.CASE31( 8'h7C ),.din31_WIDTH( 16 ),.CASE32( 8'h80 ),.din32_WIDTH( 16 ),.CASE33( 8'h84 ),.din33_WIDTH( 16 ),.CASE34( 8'h88 ),.din34_WIDTH( 16 ),.CASE35( 8'h8C ),.din35_WIDTH( 16 ),.CASE36( 8'h90 ),.din36_WIDTH( 16 ),.CASE37( 8'h94 ),.din37_WIDTH( 16 ),.CASE38( 8'h98 ),.din38_WIDTH( 16 ),.CASE39( 8'h9C ),.din39_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_81_8_16_1_1_U4(.din0(s_3_load),.din1(s_7_load),.din2(s_11_load),.din3(s_15_load),.din4(s_19_load),.din5(s_23_load),.din6(s_27_load),.din7(s_31_load),.din8(s_35_load),.din9(s_39_load),.din10(s_43_load),.din11(s_47_load),.din12(s_51_load),.din13(s_55_load),.din14(s_59_load),.din15(s_63_load),.din16(s_67_load),.din17(s_71_load),.din18(s_75_load),.din19(s_79_load),.din20(s_83_load),.din21(s_87_load),.din22(s_91_load),.din23(s_95_load),.din24(s_99_load),.din25(s_103_load),.din26(s_107_load),.din27(s_111_load),.din28(s_115_load),.din29(s_119_load),.din30(s_123_load),.din31(s_127_load),.din32(s_131_load),.din33(s_135_load),.din34(s_139_load),.din35(s_143_load),.din36(s_147_load),.din37(s_151_load),.din38(s_155_load),.din39(s_159_load),.def(a_assign_2_fu_1977_p81),.sel(k_6_reg_2806),.dout(a_assign_2_fu_1977_p83));
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
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_444 <= 8'd0;
    end else if (((icmp_ln55_reg_2814 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_444 <= add_ln55_fu_2140_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smax_fu_440 <= 16'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smax_fu_440 <= smax_6_fu_2176_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_assign_reg_2818 <= a_assign_fu_1434_p83;
        icmp_ln55_reg_2814 <= icmp_ln55_fu_1428_p2;
        k_6_reg_2806 <= ap_sig_allocacmp_k_6;
        smax_4_reg_2850 <= smax_4_fu_2165_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smax_1_reg_2826 <= smax_1_fu_1643_p3;
        temp_51_reg_2838 <= temp_51_fu_1969_p3;
        temp_53_reg_2832 <= temp_53_fu_1806_p3;
        temp_54_reg_2844 <= temp_54_fu_2132_p3;
    end
end
always @ (*) begin
    if (((icmp_ln55_reg_2814 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_6 = 8'd0;
    end else begin
        ap_sig_allocacmp_k_6 = k_fu_444;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_smax_load_1 = smax_6_fu_2176_p3;
    end else begin
        ap_sig_allocacmp_smax_load_1 = smax_fu_440;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln55_reg_2814 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_assign_1_fu_1814_p81 = 'bx;
assign a_assign_2_fu_1977_p81 = 'bx;
assign a_assign_fu_1434_p81 = 'bx;
assign a_assign_s_fu_1651_p81 = 'bx;
assign add_ln55_fu_2140_p2 = (k_6_reg_2806 + 8'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln55_fu_1428_p2 = ((ap_sig_allocacmp_k_6 < 8'd160) ? 1'b1 : 1'b0);
assign icmp_ln58_1_fu_2150_p2 = (($signed(temp_53_reg_2832) > $signed(smax_1_reg_2826)) ? 1'b1 : 1'b0);
assign icmp_ln58_2_fu_2160_p2 = (($signed(temp_51_reg_2838) > $signed(smax_3_fu_2154_p3)) ? 1'b1 : 1'b0);
assign icmp_ln58_3_fu_2172_p2 = (($signed(temp_54_reg_2844) > $signed(smax_4_reg_2850)) ? 1'b1 : 1'b0);
assign icmp_ln58_fu_1637_p2 = (($signed(temp_fu_1630_p3) > $signed(ap_sig_allocacmp_smax_load_1)) ? 1'b1 : 1'b0);
assign icmp_ln69_4_fu_1786_p2 = ((a_assign_s_fu_1651_p83 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_5_fu_1949_p2 = ((a_assign_1_fu_1814_p83 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_6_fu_2112_p2 = ((a_assign_2_fu_1977_p83 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_fu_1612_p2 = ((a_assign_reg_2818 == 16'd32768) ? 1'b1 : 1'b0);
assign select_ln69_1_fu_1798_p3 = ((icmp_ln69_4_fu_1786_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_4_fu_1792_p2);
assign select_ln69_2_fu_1961_p3 = ((icmp_ln69_5_fu_1949_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_5_fu_1955_p2);
assign select_ln69_3_fu_2124_p3 = ((icmp_ln69_6_fu_2112_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_6_fu_2118_p2);
assign select_ln69_fu_1622_p3 = ((icmp_ln69_fu_1612_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_fu_1617_p2);
assign smax_1_fu_1643_p3 = ((icmp_ln58_fu_1637_p2[0:0] == 1'b1) ? temp_fu_1630_p3 : ap_sig_allocacmp_smax_load_1);
assign smax_3_fu_2154_p3 = ((icmp_ln58_1_fu_2150_p2[0:0] == 1'b1) ? temp_53_reg_2832 : smax_1_reg_2826);
assign smax_4_fu_2165_p3 = ((icmp_ln58_2_fu_2160_p2[0:0] == 1'b1) ? temp_51_reg_2838 : smax_3_fu_2154_p3);
assign smax_6_fu_2176_p3 = ((icmp_ln58_3_fu_2172_p2[0:0] == 1'b1) ? temp_54_reg_2844 : smax_4_reg_2850);
assign smax_out = smax_fu_440;
assign sub_ln69_4_fu_1792_p2 = (16'd0 - a_assign_s_fu_1651_p83);
assign sub_ln69_5_fu_1955_p2 = (16'd0 - a_assign_1_fu_1814_p83);
assign sub_ln69_6_fu_2118_p2 = (16'd0 - a_assign_2_fu_1977_p83);
assign sub_ln69_fu_1617_p2 = (16'd0 - a_assign_reg_2818);
assign temp_51_fu_1969_p3 = ((tmp_44_fu_1941_p3[0:0] == 1'b1) ? select_ln69_2_fu_1961_p3 : a_assign_1_fu_1814_p83);
assign temp_53_fu_1806_p3 = ((tmp_43_fu_1778_p3[0:0] == 1'b1) ? select_ln69_1_fu_1798_p3 : a_assign_s_fu_1651_p83);
assign temp_54_fu_2132_p3 = ((tmp_45_fu_2104_p3[0:0] == 1'b1) ? select_ln69_3_fu_2124_p3 : a_assign_2_fu_1977_p83);
assign temp_fu_1630_p3 = ((tmp_fu_1605_p3[0:0] == 1'b1) ? select_ln69_fu_1622_p3 : a_assign_reg_2818);
assign tmp_43_fu_1778_p3 = a_assign_s_fu_1651_p83[32'd15];
assign tmp_44_fu_1941_p3 = a_assign_1_fu_1814_p83[32'd15];
assign tmp_45_fu_2104_p3 = a_assign_2_fu_1977_p83[32'd15];
assign tmp_fu_1605_p3 = a_assign_reg_2818[32'd15];
endmodule 
