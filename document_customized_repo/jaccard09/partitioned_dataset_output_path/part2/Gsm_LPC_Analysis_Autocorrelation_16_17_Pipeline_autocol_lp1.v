
module Gsm_LPC_Analysis_Autocorrelation_16_17_Pipeline_autocol_lp1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,s_0_load,s_2_load,s_4_load,s_6_load,s_8_load,s_10_load,s_12_load,s_14_load,s_16_load,s_18_load,s_20_load,s_22_load,s_24_load,s_26_load,s_28_load,s_30_load,s_32_load,s_34_load,s_36_load,s_38_load,s_40_load,s_42_load,s_44_load,s_46_load,s_48_load,s_50_load,s_52_load,s_54_load,s_56_load,s_58_load,s_60_load,s_62_load,s_64_load,s_66_load,s_68_load,s_70_load,s_72_load,s_74_load,s_76_load,s_78_load,s_80_load,s_82_load,s_84_load,s_86_load,s_88_load,s_90_load,s_92_load,s_94_load,s_96_load,s_98_load,s_100_load,s_102_load,s_104_load,s_106_load,s_108_load,s_110_load,s_112_load,s_114_load,s_116_load,s_118_load,s_120_load,s_122_load,s_124_load,s_126_load,s_128_load,s_130_load,s_132_load,s_134_load,s_136_load,s_138_load,s_140_load,s_142_load,s_144_load,s_146_load,s_148_load,s_150_load,s_152_load,s_154_load,s_156_load,s_158_load,s_1_load,s_3_load,s_5_load,s_7_load,s_9_load,s_11_load,s_13_load,s_15_load,s_17_load,s_19_load,s_21_load,s_23_load,s_25_load,s_27_load,s_29_load,s_31_load,s_33_load,s_35_load,s_37_load,s_39_load,s_41_load,s_43_load,s_45_load,s_47_load,s_49_load,s_51_load,s_53_load,s_55_load,s_57_load,s_59_load,s_61_load,s_63_load,s_65_load,s_67_load,s_69_load,s_71_load,s_73_load,s_75_load,s_77_load,s_79_load,s_81_load,s_83_load,s_85_load,s_87_load,s_89_load,s_91_load,s_93_load,s_95_load,s_97_load,s_99_load,s_101_load,s_103_load,s_105_load,s_107_load,s_109_load,s_111_load,s_113_load,s_115_load,s_117_load,s_119_load,s_121_load,s_123_load,s_125_load,s_127_load,s_129_load,s_131_load,s_133_load,s_135_load,s_137_load,s_139_load,s_141_load,s_143_load,s_145_load,s_147_load,s_149_load,s_151_load,s_153_load,s_155_load,s_157_load,s_159_load,smax_out,smax_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] s_0_load;
input  [15:0] s_2_load;
input  [15:0] s_4_load;
input  [15:0] s_6_load;
input  [15:0] s_8_load;
input  [15:0] s_10_load;
input  [15:0] s_12_load;
input  [15:0] s_14_load;
input  [15:0] s_16_load;
input  [15:0] s_18_load;
input  [15:0] s_20_load;
input  [15:0] s_22_load;
input  [15:0] s_24_load;
input  [15:0] s_26_load;
input  [15:0] s_28_load;
input  [15:0] s_30_load;
input  [15:0] s_32_load;
input  [15:0] s_34_load;
input  [15:0] s_36_load;
input  [15:0] s_38_load;
input  [15:0] s_40_load;
input  [15:0] s_42_load;
input  [15:0] s_44_load;
input  [15:0] s_46_load;
input  [15:0] s_48_load;
input  [15:0] s_50_load;
input  [15:0] s_52_load;
input  [15:0] s_54_load;
input  [15:0] s_56_load;
input  [15:0] s_58_load;
input  [15:0] s_60_load;
input  [15:0] s_62_load;
input  [15:0] s_64_load;
input  [15:0] s_66_load;
input  [15:0] s_68_load;
input  [15:0] s_70_load;
input  [15:0] s_72_load;
input  [15:0] s_74_load;
input  [15:0] s_76_load;
input  [15:0] s_78_load;
input  [15:0] s_80_load;
input  [15:0] s_82_load;
input  [15:0] s_84_load;
input  [15:0] s_86_load;
input  [15:0] s_88_load;
input  [15:0] s_90_load;
input  [15:0] s_92_load;
input  [15:0] s_94_load;
input  [15:0] s_96_load;
input  [15:0] s_98_load;
input  [15:0] s_100_load;
input  [15:0] s_102_load;
input  [15:0] s_104_load;
input  [15:0] s_106_load;
input  [15:0] s_108_load;
input  [15:0] s_110_load;
input  [15:0] s_112_load;
input  [15:0] s_114_load;
input  [15:0] s_116_load;
input  [15:0] s_118_load;
input  [15:0] s_120_load;
input  [15:0] s_122_load;
input  [15:0] s_124_load;
input  [15:0] s_126_load;
input  [15:0] s_128_load;
input  [15:0] s_130_load;
input  [15:0] s_132_load;
input  [15:0] s_134_load;
input  [15:0] s_136_load;
input  [15:0] s_138_load;
input  [15:0] s_140_load;
input  [15:0] s_142_load;
input  [15:0] s_144_load;
input  [15:0] s_146_load;
input  [15:0] s_148_load;
input  [15:0] s_150_load;
input  [15:0] s_152_load;
input  [15:0] s_154_load;
input  [15:0] s_156_load;
input  [15:0] s_158_load;
input  [15:0] s_1_load;
input  [15:0] s_3_load;
input  [15:0] s_5_load;
input  [15:0] s_7_load;
input  [15:0] s_9_load;
input  [15:0] s_11_load;
input  [15:0] s_13_load;
input  [15:0] s_15_load;
input  [15:0] s_17_load;
input  [15:0] s_19_load;
input  [15:0] s_21_load;
input  [15:0] s_23_load;
input  [15:0] s_25_load;
input  [15:0] s_27_load;
input  [15:0] s_29_load;
input  [15:0] s_31_load;
input  [15:0] s_33_load;
input  [15:0] s_35_load;
input  [15:0] s_37_load;
input  [15:0] s_39_load;
input  [15:0] s_41_load;
input  [15:0] s_43_load;
input  [15:0] s_45_load;
input  [15:0] s_47_load;
input  [15:0] s_49_load;
input  [15:0] s_51_load;
input  [15:0] s_53_load;
input  [15:0] s_55_load;
input  [15:0] s_57_load;
input  [15:0] s_59_load;
input  [15:0] s_61_load;
input  [15:0] s_63_load;
input  [15:0] s_65_load;
input  [15:0] s_67_load;
input  [15:0] s_69_load;
input  [15:0] s_71_load;
input  [15:0] s_73_load;
input  [15:0] s_75_load;
input  [15:0] s_77_load;
input  [15:0] s_79_load;
input  [15:0] s_81_load;
input  [15:0] s_83_load;
input  [15:0] s_85_load;
input  [15:0] s_87_load;
input  [15:0] s_89_load;
input  [15:0] s_91_load;
input  [15:0] s_93_load;
input  [15:0] s_95_load;
input  [15:0] s_97_load;
input  [15:0] s_99_load;
input  [15:0] s_101_load;
input  [15:0] s_103_load;
input  [15:0] s_105_load;
input  [15:0] s_107_load;
input  [15:0] s_109_load;
input  [15:0] s_111_load;
input  [15:0] s_113_load;
input  [15:0] s_115_load;
input  [15:0] s_117_load;
input  [15:0] s_119_load;
input  [15:0] s_121_load;
input  [15:0] s_123_load;
input  [15:0] s_125_load;
input  [15:0] s_127_load;
input  [15:0] s_129_load;
input  [15:0] s_131_load;
input  [15:0] s_133_load;
input  [15:0] s_135_load;
input  [15:0] s_137_load;
input  [15:0] s_139_load;
input  [15:0] s_141_load;
input  [15:0] s_143_load;
input  [15:0] s_145_load;
input  [15:0] s_147_load;
input  [15:0] s_149_load;
input  [15:0] s_151_load;
input  [15:0] s_153_load;
input  [15:0] s_155_load;
input  [15:0] s_157_load;
input  [15:0] s_159_load;
output  [15:0] smax_out;
output   smax_out_ap_vld;
reg ap_idle;
reg smax_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln55_fu_1508_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] k_6_reg_2619;
reg   [0:0] icmp_ln55_reg_2624;
wire   [15:0] a_assign_fu_1514_p163;
reg   [15:0] a_assign_reg_2628;
wire   [15:0] smax_1_fu_1894_p3;
reg   [15:0] smax_1_reg_2636;
wire   [15:0] temp_37_fu_2177_p3;
reg   [15:0] temp_37_reg_2642;
reg   [15:0] smax_fu_520;
wire   [15:0] smax_3_fu_2189_p3;
reg   [15:0] ap_sig_allocacmp_smax_load_1;
wire    ap_block_pp0_stage0;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [7:0] k_fu_524;
wire   [7:0] add_ln55_fu_1842_p2;
reg   [7:0] ap_sig_allocacmp_k_6;
wire    ap_block_pp0_stage0_01001;
wire   [15:0] a_assign_fu_1514_p161;
wire   [0:0] icmp_ln69_fu_1863_p2;
wire   [15:0] sub_ln69_fu_1868_p2;
wire   [0:0] tmp_fu_1856_p3;
wire   [15:0] select_ln69_fu_1873_p3;
wire   [15:0] temp_fu_1881_p3;
wire   [0:0] icmp_ln58_fu_1888_p2;
wire   [15:0] a_assign_s_fu_1902_p161;
wire   [15:0] a_assign_s_fu_1902_p163;
wire   [0:0] icmp_ln69_2_fu_2157_p2;
wire   [15:0] sub_ln69_2_fu_2163_p2;
wire   [0:0] tmp_36_fu_2149_p3;
wire   [15:0] select_ln69_1_fu_2169_p3;
wire   [0:0] icmp_ln58_1_fu_2185_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] a_assign_fu_1514_p1;
wire   [7:0] a_assign_fu_1514_p3;
wire   [7:0] a_assign_fu_1514_p5;
wire   [7:0] a_assign_fu_1514_p7;
wire   [7:0] a_assign_fu_1514_p9;
wire   [7:0] a_assign_fu_1514_p11;
wire   [7:0] a_assign_fu_1514_p13;
wire   [7:0] a_assign_fu_1514_p15;
wire   [7:0] a_assign_fu_1514_p17;
wire   [7:0] a_assign_fu_1514_p19;
wire   [7:0] a_assign_fu_1514_p21;
wire   [7:0] a_assign_fu_1514_p23;
wire   [7:0] a_assign_fu_1514_p25;
wire   [7:0] a_assign_fu_1514_p27;
wire   [7:0] a_assign_fu_1514_p29;
wire   [7:0] a_assign_fu_1514_p31;
wire   [7:0] a_assign_fu_1514_p33;
wire   [7:0] a_assign_fu_1514_p35;
wire   [7:0] a_assign_fu_1514_p37;
wire   [7:0] a_assign_fu_1514_p39;
wire   [7:0] a_assign_fu_1514_p41;
wire   [7:0] a_assign_fu_1514_p43;
wire   [7:0] a_assign_fu_1514_p45;
wire   [7:0] a_assign_fu_1514_p47;
wire   [7:0] a_assign_fu_1514_p49;
wire   [7:0] a_assign_fu_1514_p51;
wire   [7:0] a_assign_fu_1514_p53;
wire   [7:0] a_assign_fu_1514_p55;
wire   [7:0] a_assign_fu_1514_p57;
wire   [7:0] a_assign_fu_1514_p59;
wire   [7:0] a_assign_fu_1514_p61;
wire   [7:0] a_assign_fu_1514_p63;
wire   [7:0] a_assign_fu_1514_p65;
wire   [7:0] a_assign_fu_1514_p67;
wire   [7:0] a_assign_fu_1514_p69;
wire   [7:0] a_assign_fu_1514_p71;
wire   [7:0] a_assign_fu_1514_p73;
wire   [7:0] a_assign_fu_1514_p75;
wire   [7:0] a_assign_fu_1514_p77;
wire   [7:0] a_assign_fu_1514_p79;
wire   [7:0] a_assign_fu_1514_p81;
wire   [7:0] a_assign_fu_1514_p83;
wire   [7:0] a_assign_fu_1514_p85;
wire   [7:0] a_assign_fu_1514_p87;
wire   [7:0] a_assign_fu_1514_p89;
wire   [7:0] a_assign_fu_1514_p91;
wire   [7:0] a_assign_fu_1514_p93;
wire   [7:0] a_assign_fu_1514_p95;
wire   [7:0] a_assign_fu_1514_p97;
wire   [7:0] a_assign_fu_1514_p99;
wire   [7:0] a_assign_fu_1514_p101;
wire   [7:0] a_assign_fu_1514_p103;
wire   [7:0] a_assign_fu_1514_p105;
wire   [7:0] a_assign_fu_1514_p107;
wire   [7:0] a_assign_fu_1514_p109;
wire   [7:0] a_assign_fu_1514_p111;
wire   [7:0] a_assign_fu_1514_p113;
wire   [7:0] a_assign_fu_1514_p115;
wire   [7:0] a_assign_fu_1514_p117;
wire   [7:0] a_assign_fu_1514_p119;
wire   [7:0] a_assign_fu_1514_p121;
wire   [7:0] a_assign_fu_1514_p123;
wire   [7:0] a_assign_fu_1514_p125;
wire   [7:0] a_assign_fu_1514_p127;
wire  signed [7:0] a_assign_fu_1514_p129;
wire  signed [7:0] a_assign_fu_1514_p131;
wire  signed [7:0] a_assign_fu_1514_p133;
wire  signed [7:0] a_assign_fu_1514_p135;
wire  signed [7:0] a_assign_fu_1514_p137;
wire  signed [7:0] a_assign_fu_1514_p139;
wire  signed [7:0] a_assign_fu_1514_p141;
wire  signed [7:0] a_assign_fu_1514_p143;
wire  signed [7:0] a_assign_fu_1514_p145;
wire  signed [7:0] a_assign_fu_1514_p147;
wire  signed [7:0] a_assign_fu_1514_p149;
wire  signed [7:0] a_assign_fu_1514_p151;
wire  signed [7:0] a_assign_fu_1514_p153;
wire  signed [7:0] a_assign_fu_1514_p155;
wire  signed [7:0] a_assign_fu_1514_p157;
wire  signed [7:0] a_assign_fu_1514_p159;
wire   [7:0] a_assign_s_fu_1902_p1;
wire   [7:0] a_assign_s_fu_1902_p3;
wire   [7:0] a_assign_s_fu_1902_p5;
wire   [7:0] a_assign_s_fu_1902_p7;
wire   [7:0] a_assign_s_fu_1902_p9;
wire   [7:0] a_assign_s_fu_1902_p11;
wire   [7:0] a_assign_s_fu_1902_p13;
wire   [7:0] a_assign_s_fu_1902_p15;
wire   [7:0] a_assign_s_fu_1902_p17;
wire   [7:0] a_assign_s_fu_1902_p19;
wire   [7:0] a_assign_s_fu_1902_p21;
wire   [7:0] a_assign_s_fu_1902_p23;
wire   [7:0] a_assign_s_fu_1902_p25;
wire   [7:0] a_assign_s_fu_1902_p27;
wire   [7:0] a_assign_s_fu_1902_p29;
wire   [7:0] a_assign_s_fu_1902_p31;
wire   [7:0] a_assign_s_fu_1902_p33;
wire   [7:0] a_assign_s_fu_1902_p35;
wire   [7:0] a_assign_s_fu_1902_p37;
wire   [7:0] a_assign_s_fu_1902_p39;
wire   [7:0] a_assign_s_fu_1902_p41;
wire   [7:0] a_assign_s_fu_1902_p43;
wire   [7:0] a_assign_s_fu_1902_p45;
wire   [7:0] a_assign_s_fu_1902_p47;
wire   [7:0] a_assign_s_fu_1902_p49;
wire   [7:0] a_assign_s_fu_1902_p51;
wire   [7:0] a_assign_s_fu_1902_p53;
wire   [7:0] a_assign_s_fu_1902_p55;
wire   [7:0] a_assign_s_fu_1902_p57;
wire   [7:0] a_assign_s_fu_1902_p59;
wire   [7:0] a_assign_s_fu_1902_p61;
wire   [7:0] a_assign_s_fu_1902_p63;
wire   [7:0] a_assign_s_fu_1902_p65;
wire   [7:0] a_assign_s_fu_1902_p67;
wire   [7:0] a_assign_s_fu_1902_p69;
wire   [7:0] a_assign_s_fu_1902_p71;
wire   [7:0] a_assign_s_fu_1902_p73;
wire   [7:0] a_assign_s_fu_1902_p75;
wire   [7:0] a_assign_s_fu_1902_p77;
wire   [7:0] a_assign_s_fu_1902_p79;
wire   [7:0] a_assign_s_fu_1902_p81;
wire   [7:0] a_assign_s_fu_1902_p83;
wire   [7:0] a_assign_s_fu_1902_p85;
wire   [7:0] a_assign_s_fu_1902_p87;
wire   [7:0] a_assign_s_fu_1902_p89;
wire   [7:0] a_assign_s_fu_1902_p91;
wire   [7:0] a_assign_s_fu_1902_p93;
wire   [7:0] a_assign_s_fu_1902_p95;
wire   [7:0] a_assign_s_fu_1902_p97;
wire   [7:0] a_assign_s_fu_1902_p99;
wire   [7:0] a_assign_s_fu_1902_p101;
wire   [7:0] a_assign_s_fu_1902_p103;
wire   [7:0] a_assign_s_fu_1902_p105;
wire   [7:0] a_assign_s_fu_1902_p107;
wire   [7:0] a_assign_s_fu_1902_p109;
wire   [7:0] a_assign_s_fu_1902_p111;
wire   [7:0] a_assign_s_fu_1902_p113;
wire   [7:0] a_assign_s_fu_1902_p115;
wire   [7:0] a_assign_s_fu_1902_p117;
wire   [7:0] a_assign_s_fu_1902_p119;
wire   [7:0] a_assign_s_fu_1902_p121;
wire   [7:0] a_assign_s_fu_1902_p123;
wire   [7:0] a_assign_s_fu_1902_p125;
wire   [7:0] a_assign_s_fu_1902_p127;
wire  signed [7:0] a_assign_s_fu_1902_p129;
wire  signed [7:0] a_assign_s_fu_1902_p131;
wire  signed [7:0] a_assign_s_fu_1902_p133;
wire  signed [7:0] a_assign_s_fu_1902_p135;
wire  signed [7:0] a_assign_s_fu_1902_p137;
wire  signed [7:0] a_assign_s_fu_1902_p139;
wire  signed [7:0] a_assign_s_fu_1902_p141;
wire  signed [7:0] a_assign_s_fu_1902_p143;
wire  signed [7:0] a_assign_s_fu_1902_p145;
wire  signed [7:0] a_assign_s_fu_1902_p147;
wire  signed [7:0] a_assign_s_fu_1902_p149;
wire  signed [7:0] a_assign_s_fu_1902_p151;
wire  signed [7:0] a_assign_s_fu_1902_p153;
wire  signed [7:0] a_assign_s_fu_1902_p155;
wire  signed [7:0] a_assign_s_fu_1902_p157;
wire  signed [7:0] a_assign_s_fu_1902_p159;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 smax_fu_520 = 16'd0;
#0 k_fu_524 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_161_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.CASE76( 8'h98 ),.din76_WIDTH( 16 ),.CASE77( 8'h9A ),.din77_WIDTH( 16 ),.CASE78( 8'h9C ),.din78_WIDTH( 16 ),.CASE79( 8'h9E ),.din79_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_161_8_16_1_1_U1(.din0(s_0_load),.din1(s_2_load),.din2(s_4_load),.din3(s_6_load),.din4(s_8_load),.din5(s_10_load),.din6(s_12_load),.din7(s_14_load),.din8(s_16_load),.din9(s_18_load),.din10(s_20_load),.din11(s_22_load),.din12(s_24_load),.din13(s_26_load),.din14(s_28_load),.din15(s_30_load),.din16(s_32_load),.din17(s_34_load),.din18(s_36_load),.din19(s_38_load),.din20(s_40_load),.din21(s_42_load),.din22(s_44_load),.din23(s_46_load),.din24(s_48_load),.din25(s_50_load),.din26(s_52_load),.din27(s_54_load),.din28(s_56_load),.din29(s_58_load),.din30(s_60_load),.din31(s_62_load),.din32(s_64_load),.din33(s_66_load),.din34(s_68_load),.din35(s_70_load),.din36(s_72_load),.din37(s_74_load),.din38(s_76_load),.din39(s_78_load),.din40(s_80_load),.din41(s_82_load),.din42(s_84_load),.din43(s_86_load),.din44(s_88_load),.din45(s_90_load),.din46(s_92_load),.din47(s_94_load),.din48(s_96_load),.din49(s_98_load),.din50(s_100_load),.din51(s_102_load),.din52(s_104_load),.din53(s_106_load),.din54(s_108_load),.din55(s_110_load),.din56(s_112_load),.din57(s_114_load),.din58(s_116_load),.din59(s_118_load),.din60(s_120_load),.din61(s_122_load),.din62(s_124_load),.din63(s_126_load),.din64(s_128_load),.din65(s_130_load),.din66(s_132_load),.din67(s_134_load),.din68(s_136_load),.din69(s_138_load),.din70(s_140_load),.din71(s_142_load),.din72(s_144_load),.din73(s_146_load),.din74(s_148_load),.din75(s_150_load),.din76(s_152_load),.din77(s_154_load),.din78(s_156_load),.din79(s_158_load),.def(a_assign_fu_1514_p161),.sel(ap_sig_allocacmp_k_6),.dout(a_assign_fu_1514_p163));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_161_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h2 ),.din1_WIDTH( 16 ),.CASE2( 8'h4 ),.din2_WIDTH( 16 ),.CASE3( 8'h6 ),.din3_WIDTH( 16 ),.CASE4( 8'h8 ),.din4_WIDTH( 16 ),.CASE5( 8'hA ),.din5_WIDTH( 16 ),.CASE6( 8'hC ),.din6_WIDTH( 16 ),.CASE7( 8'hE ),.din7_WIDTH( 16 ),.CASE8( 8'h10 ),.din8_WIDTH( 16 ),.CASE9( 8'h12 ),.din9_WIDTH( 16 ),.CASE10( 8'h14 ),.din10_WIDTH( 16 ),.CASE11( 8'h16 ),.din11_WIDTH( 16 ),.CASE12( 8'h18 ),.din12_WIDTH( 16 ),.CASE13( 8'h1A ),.din13_WIDTH( 16 ),.CASE14( 8'h1C ),.din14_WIDTH( 16 ),.CASE15( 8'h1E ),.din15_WIDTH( 16 ),.CASE16( 8'h20 ),.din16_WIDTH( 16 ),.CASE17( 8'h22 ),.din17_WIDTH( 16 ),.CASE18( 8'h24 ),.din18_WIDTH( 16 ),.CASE19( 8'h26 ),.din19_WIDTH( 16 ),.CASE20( 8'h28 ),.din20_WIDTH( 16 ),.CASE21( 8'h2A ),.din21_WIDTH( 16 ),.CASE22( 8'h2C ),.din22_WIDTH( 16 ),.CASE23( 8'h2E ),.din23_WIDTH( 16 ),.CASE24( 8'h30 ),.din24_WIDTH( 16 ),.CASE25( 8'h32 ),.din25_WIDTH( 16 ),.CASE26( 8'h34 ),.din26_WIDTH( 16 ),.CASE27( 8'h36 ),.din27_WIDTH( 16 ),.CASE28( 8'h38 ),.din28_WIDTH( 16 ),.CASE29( 8'h3A ),.din29_WIDTH( 16 ),.CASE30( 8'h3C ),.din30_WIDTH( 16 ),.CASE31( 8'h3E ),.din31_WIDTH( 16 ),.CASE32( 8'h40 ),.din32_WIDTH( 16 ),.CASE33( 8'h42 ),.din33_WIDTH( 16 ),.CASE34( 8'h44 ),.din34_WIDTH( 16 ),.CASE35( 8'h46 ),.din35_WIDTH( 16 ),.CASE36( 8'h48 ),.din36_WIDTH( 16 ),.CASE37( 8'h4A ),.din37_WIDTH( 16 ),.CASE38( 8'h4C ),.din38_WIDTH( 16 ),.CASE39( 8'h4E ),.din39_WIDTH( 16 ),.CASE40( 8'h50 ),.din40_WIDTH( 16 ),.CASE41( 8'h52 ),.din41_WIDTH( 16 ),.CASE42( 8'h54 ),.din42_WIDTH( 16 ),.CASE43( 8'h56 ),.din43_WIDTH( 16 ),.CASE44( 8'h58 ),.din44_WIDTH( 16 ),.CASE45( 8'h5A ),.din45_WIDTH( 16 ),.CASE46( 8'h5C ),.din46_WIDTH( 16 ),.CASE47( 8'h5E ),.din47_WIDTH( 16 ),.CASE48( 8'h60 ),.din48_WIDTH( 16 ),.CASE49( 8'h62 ),.din49_WIDTH( 16 ),.CASE50( 8'h64 ),.din50_WIDTH( 16 ),.CASE51( 8'h66 ),.din51_WIDTH( 16 ),.CASE52( 8'h68 ),.din52_WIDTH( 16 ),.CASE53( 8'h6A ),.din53_WIDTH( 16 ),.CASE54( 8'h6C ),.din54_WIDTH( 16 ),.CASE55( 8'h6E ),.din55_WIDTH( 16 ),.CASE56( 8'h70 ),.din56_WIDTH( 16 ),.CASE57( 8'h72 ),.din57_WIDTH( 16 ),.CASE58( 8'h74 ),.din58_WIDTH( 16 ),.CASE59( 8'h76 ),.din59_WIDTH( 16 ),.CASE60( 8'h78 ),.din60_WIDTH( 16 ),.CASE61( 8'h7A ),.din61_WIDTH( 16 ),.CASE62( 8'h7C ),.din62_WIDTH( 16 ),.CASE63( 8'h7E ),.din63_WIDTH( 16 ),.CASE64( 8'h80 ),.din64_WIDTH( 16 ),.CASE65( 8'h82 ),.din65_WIDTH( 16 ),.CASE66( 8'h84 ),.din66_WIDTH( 16 ),.CASE67( 8'h86 ),.din67_WIDTH( 16 ),.CASE68( 8'h88 ),.din68_WIDTH( 16 ),.CASE69( 8'h8A ),.din69_WIDTH( 16 ),.CASE70( 8'h8C ),.din70_WIDTH( 16 ),.CASE71( 8'h8E ),.din71_WIDTH( 16 ),.CASE72( 8'h90 ),.din72_WIDTH( 16 ),.CASE73( 8'h92 ),.din73_WIDTH( 16 ),.CASE74( 8'h94 ),.din74_WIDTH( 16 ),.CASE75( 8'h96 ),.din75_WIDTH( 16 ),.CASE76( 8'h98 ),.din76_WIDTH( 16 ),.CASE77( 8'h9A ),.din77_WIDTH( 16 ),.CASE78( 8'h9C ),.din78_WIDTH( 16 ),.CASE79( 8'h9E ),.din79_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_161_8_16_1_1_U2(.din0(s_1_load),.din1(s_3_load),.din2(s_5_load),.din3(s_7_load),.din4(s_9_load),.din5(s_11_load),.din6(s_13_load),.din7(s_15_load),.din8(s_17_load),.din9(s_19_load),.din10(s_21_load),.din11(s_23_load),.din12(s_25_load),.din13(s_27_load),.din14(s_29_load),.din15(s_31_load),.din16(s_33_load),.din17(s_35_load),.din18(s_37_load),.din19(s_39_load),.din20(s_41_load),.din21(s_43_load),.din22(s_45_load),.din23(s_47_load),.din24(s_49_load),.din25(s_51_load),.din26(s_53_load),.din27(s_55_load),.din28(s_57_load),.din29(s_59_load),.din30(s_61_load),.din31(s_63_load),.din32(s_65_load),.din33(s_67_load),.din34(s_69_load),.din35(s_71_load),.din36(s_73_load),.din37(s_75_load),.din38(s_77_load),.din39(s_79_load),.din40(s_81_load),.din41(s_83_load),.din42(s_85_load),.din43(s_87_load),.din44(s_89_load),.din45(s_91_load),.din46(s_93_load),.din47(s_95_load),.din48(s_97_load),.din49(s_99_load),.din50(s_101_load),.din51(s_103_load),.din52(s_105_load),.din53(s_107_load),.din54(s_109_load),.din55(s_111_load),.din56(s_113_load),.din57(s_115_load),.din58(s_117_load),.din59(s_119_load),.din60(s_121_load),.din61(s_123_load),.din62(s_125_load),.din63(s_127_load),.din64(s_129_load),.din65(s_131_load),.din66(s_133_load),.din67(s_135_load),.din68(s_137_load),.din69(s_139_load),.din70(s_141_load),.din71(s_143_load),.din72(s_145_load),.din73(s_147_load),.din74(s_149_load),.din75(s_151_load),.din76(s_153_load),.din77(s_155_load),.din78(s_157_load),.din79(s_159_load),.def(a_assign_s_fu_1902_p161),.sel(k_6_reg_2619),.dout(a_assign_s_fu_1902_p163));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln55_fu_1508_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            k_fu_524 <= add_ln55_fu_1842_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_524 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smax_fu_520 <= 16'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            smax_fu_520 <= smax_3_fu_2189_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_assign_reg_2628 <= a_assign_fu_1514_p163;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln55_reg_2624 <= icmp_ln55_fu_1508_p2;
        k_6_reg_2619 <= ap_sig_allocacmp_k_6;
        smax_1_reg_2636 <= smax_1_fu_1894_p3;
        temp_37_reg_2642 <= temp_37_fu_2177_p3;
    end
end
always @ (*) begin
    if (((icmp_ln55_fu_1508_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_k_6 = 8'd0;
    end else begin
        ap_sig_allocacmp_k_6 = k_fu_524;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_smax_load_1 = smax_3_fu_2189_p3;
    end else begin
        ap_sig_allocacmp_smax_load_1 = smax_fu_520;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln55_reg_2624 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smax_out_ap_vld = 1'b1;
    end else begin
        smax_out_ap_vld = 1'b0;
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
assign a_assign_fu_1514_p161 = 'bx;
assign a_assign_s_fu_1902_p161 = 'bx;
assign add_ln55_fu_1842_p2 = (ap_sig_allocacmp_k_6 + 8'd2);
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
assign icmp_ln55_fu_1508_p2 = ((ap_sig_allocacmp_k_6 < 8'd160) ? 1'b1 : 1'b0);
assign icmp_ln58_1_fu_2185_p2 = (($signed(temp_37_reg_2642) > $signed(smax_1_reg_2636)) ? 1'b1 : 1'b0);
assign icmp_ln58_fu_1888_p2 = (($signed(temp_fu_1881_p3) > $signed(ap_sig_allocacmp_smax_load_1)) ? 1'b1 : 1'b0);
assign icmp_ln69_2_fu_2157_p2 = ((a_assign_s_fu_1902_p163 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_fu_1863_p2 = ((a_assign_reg_2628 == 16'd32768) ? 1'b1 : 1'b0);
assign select_ln69_1_fu_2169_p3 = ((icmp_ln69_2_fu_2157_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_2_fu_2163_p2);
assign select_ln69_fu_1873_p3 = ((icmp_ln69_fu_1863_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_fu_1868_p2);
assign smax_1_fu_1894_p3 = ((icmp_ln58_fu_1888_p2[0:0] == 1'b1) ? temp_fu_1881_p3 : ap_sig_allocacmp_smax_load_1);
assign smax_3_fu_2189_p3 = ((icmp_ln58_1_fu_2185_p2[0:0] == 1'b1) ? temp_37_reg_2642 : smax_1_reg_2636);
assign smax_out = smax_fu_520;
assign sub_ln69_2_fu_2163_p2 = (16'd0 - a_assign_s_fu_1902_p163);
assign sub_ln69_fu_1868_p2 = (16'd0 - a_assign_reg_2628);
assign temp_37_fu_2177_p3 = ((tmp_36_fu_2149_p3[0:0] == 1'b1) ? select_ln69_1_fu_2169_p3 : a_assign_s_fu_1902_p163);
assign temp_fu_1881_p3 = ((tmp_fu_1856_p3[0:0] == 1'b1) ? select_ln69_fu_1873_p3 : a_assign_reg_2628);
assign tmp_36_fu_2149_p3 = a_assign_s_fu_1902_p163[32'd15];
assign tmp_fu_1856_p3 = a_assign_reg_2628[32'd15];
endmodule 
