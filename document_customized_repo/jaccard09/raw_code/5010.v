module Gsm_LPC_Analysis_Autocorrelation_17_18_Pipeline_autocol_lp1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,s_0_load,s_1_load,s_2_load,s_3_load,s_4_load,s_5_load,s_6_load,s_7_load,s_8_load,s_9_load,s_10_load,s_11_load,s_12_load,s_13_load,s_14_load,s_15_load,s_16_load,s_17_load,s_18_load,s_19_load,s_20_load,s_21_load,s_22_load,s_23_load,s_24_load,s_25_load,s_26_load,s_27_load,s_28_load,s_29_load,s_30_load,s_31_load,s_32_load,s_33_load,s_34_load,s_35_load,s_36_load,s_37_load,s_38_load,s_39_load,s_40_load,s_41_load,s_42_load,s_43_load,s_44_load,s_45_load,s_46_load,s_47_load,s_48_load,s_49_load,s_50_load,s_51_load,s_52_load,s_53_load,s_54_load,s_55_load,s_56_load,s_57_load,s_58_load,s_59_load,s_60_load,s_61_load,s_62_load,s_63_load,s_64_load,s_65_load,s_66_load,s_67_load,s_68_load,s_69_load,s_70_load,s_71_load,s_72_load,s_73_load,s_74_load,s_75_load,s_76_load,s_77_load,s_78_load,s_79_load,s_80_load,s_81_load,s_82_load,s_83_load,s_84_load,s_85_load,s_86_load,s_87_load,s_88_load,s_89_load,s_90_load,s_91_load,s_92_load,s_93_load,s_94_load,s_95_load,s_96_load,s_97_load,s_98_load,s_99_load,s_100_load,s_101_load,s_102_load,s_103_load,s_104_load,s_105_load,s_106_load,s_107_load,s_108_load,s_109_load,s_110_load,s_111_load,s_112_load,s_113_load,s_114_load,s_115_load,s_116_load,s_117_load,s_118_load,s_119_load,s_120_load,s_121_load,s_122_load,s_123_load,s_124_load,s_125_load,s_126_load,s_127_load,s_128_load,s_129_load,s_130_load,s_131_load,s_132_load,s_133_load,s_134_load,s_135_load,s_136_load,s_137_load,s_138_load,s_139_load,s_140_load,s_141_load,s_142_load,s_143_load,s_144_load,s_145_load,s_146_load,s_147_load,s_148_load,s_149_load,s_150_load,s_151_load,s_152_load,s_153_load,s_154_load,s_155_load,s_156_load,s_157_load,s_158_load,s_159_load,smax_out,smax_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] s_0_load;
input  [15:0] s_1_load;
input  [15:0] s_2_load;
input  [15:0] s_3_load;
input  [15:0] s_4_load;
input  [15:0] s_5_load;
input  [15:0] s_6_load;
input  [15:0] s_7_load;
input  [15:0] s_8_load;
input  [15:0] s_9_load;
input  [15:0] s_10_load;
input  [15:0] s_11_load;
input  [15:0] s_12_load;
input  [15:0] s_13_load;
input  [15:0] s_14_load;
input  [15:0] s_15_load;
input  [15:0] s_16_load;
input  [15:0] s_17_load;
input  [15:0] s_18_load;
input  [15:0] s_19_load;
input  [15:0] s_20_load;
input  [15:0] s_21_load;
input  [15:0] s_22_load;
input  [15:0] s_23_load;
input  [15:0] s_24_load;
input  [15:0] s_25_load;
input  [15:0] s_26_load;
input  [15:0] s_27_load;
input  [15:0] s_28_load;
input  [15:0] s_29_load;
input  [15:0] s_30_load;
input  [15:0] s_31_load;
input  [15:0] s_32_load;
input  [15:0] s_33_load;
input  [15:0] s_34_load;
input  [15:0] s_35_load;
input  [15:0] s_36_load;
input  [15:0] s_37_load;
input  [15:0] s_38_load;
input  [15:0] s_39_load;
input  [15:0] s_40_load;
input  [15:0] s_41_load;
input  [15:0] s_42_load;
input  [15:0] s_43_load;
input  [15:0] s_44_load;
input  [15:0] s_45_load;
input  [15:0] s_46_load;
input  [15:0] s_47_load;
input  [15:0] s_48_load;
input  [15:0] s_49_load;
input  [15:0] s_50_load;
input  [15:0] s_51_load;
input  [15:0] s_52_load;
input  [15:0] s_53_load;
input  [15:0] s_54_load;
input  [15:0] s_55_load;
input  [15:0] s_56_load;
input  [15:0] s_57_load;
input  [15:0] s_58_load;
input  [15:0] s_59_load;
input  [15:0] s_60_load;
input  [15:0] s_61_load;
input  [15:0] s_62_load;
input  [15:0] s_63_load;
input  [15:0] s_64_load;
input  [15:0] s_65_load;
input  [15:0] s_66_load;
input  [15:0] s_67_load;
input  [15:0] s_68_load;
input  [15:0] s_69_load;
input  [15:0] s_70_load;
input  [15:0] s_71_load;
input  [15:0] s_72_load;
input  [15:0] s_73_load;
input  [15:0] s_74_load;
input  [15:0] s_75_load;
input  [15:0] s_76_load;
input  [15:0] s_77_load;
input  [15:0] s_78_load;
input  [15:0] s_79_load;
input  [15:0] s_80_load;
input  [15:0] s_81_load;
input  [15:0] s_82_load;
input  [15:0] s_83_load;
input  [15:0] s_84_load;
input  [15:0] s_85_load;
input  [15:0] s_86_load;
input  [15:0] s_87_load;
input  [15:0] s_88_load;
input  [15:0] s_89_load;
input  [15:0] s_90_load;
input  [15:0] s_91_load;
input  [15:0] s_92_load;
input  [15:0] s_93_load;
input  [15:0] s_94_load;
input  [15:0] s_95_load;
input  [15:0] s_96_load;
input  [15:0] s_97_load;
input  [15:0] s_98_load;
input  [15:0] s_99_load;
input  [15:0] s_100_load;
input  [15:0] s_101_load;
input  [15:0] s_102_load;
input  [15:0] s_103_load;
input  [15:0] s_104_load;
input  [15:0] s_105_load;
input  [15:0] s_106_load;
input  [15:0] s_107_load;
input  [15:0] s_108_load;
input  [15:0] s_109_load;
input  [15:0] s_110_load;
input  [15:0] s_111_load;
input  [15:0] s_112_load;
input  [15:0] s_113_load;
input  [15:0] s_114_load;
input  [15:0] s_115_load;
input  [15:0] s_116_load;
input  [15:0] s_117_load;
input  [15:0] s_118_load;
input  [15:0] s_119_load;
input  [15:0] s_120_load;
input  [15:0] s_121_load;
input  [15:0] s_122_load;
input  [15:0] s_123_load;
input  [15:0] s_124_load;
input  [15:0] s_125_load;
input  [15:0] s_126_load;
input  [15:0] s_127_load;
input  [15:0] s_128_load;
input  [15:0] s_129_load;
input  [15:0] s_130_load;
input  [15:0] s_131_load;
input  [15:0] s_132_load;
input  [15:0] s_133_load;
input  [15:0] s_134_load;
input  [15:0] s_135_load;
input  [15:0] s_136_load;
input  [15:0] s_137_load;
input  [15:0] s_138_load;
input  [15:0] s_139_load;
input  [15:0] s_140_load;
input  [15:0] s_141_load;
input  [15:0] s_142_load;
input  [15:0] s_143_load;
input  [15:0] s_144_load;
input  [15:0] s_145_load;
input  [15:0] s_146_load;
input  [15:0] s_147_load;
input  [15:0] s_148_load;
input  [15:0] s_149_load;
input  [15:0] s_150_load;
input  [15:0] s_151_load;
input  [15:0] s_152_load;
input  [15:0] s_153_load;
input  [15:0] s_154_load;
input  [15:0] s_155_load;
input  [15:0] s_156_load;
input  [15:0] s_157_load;
input  [15:0] s_158_load;
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
wire   [0:0] icmp_ln55_fu_1668_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln55_reg_2404;
wire   [15:0] a_assign_fu_1680_p323;
reg   [15:0] a_assign_reg_2408;
wire   [15:0] temp_fu_2358_p3;
reg   [15:0] temp_reg_2416;
reg   [15:0] smax_fu_680;
wire   [15:0] smax_1_fu_2373_p3;
wire    ap_block_pp0_stage0;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [7:0] k_fu_684;
wire   [7:0] add_ln55_fu_1674_p2;
reg   [7:0] ap_sig_allocacmp_k_4;
wire    ap_block_pp0_stage0_01001;
wire   [15:0] a_assign_fu_1680_p321;
wire   [0:0] icmp_ln69_fu_2340_p2;
wire   [15:0] sub_ln69_fu_2345_p2;
wire   [0:0] tmp_fu_2333_p3;
wire   [15:0] select_ln69_fu_2350_p3;
wire   [0:0] icmp_ln58_fu_2368_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] a_assign_fu_1680_p1;
wire   [7:0] a_assign_fu_1680_p3;
wire   [7:0] a_assign_fu_1680_p5;
wire   [7:0] a_assign_fu_1680_p7;
wire   [7:0] a_assign_fu_1680_p9;
wire   [7:0] a_assign_fu_1680_p11;
wire   [7:0] a_assign_fu_1680_p13;
wire   [7:0] a_assign_fu_1680_p15;
wire   [7:0] a_assign_fu_1680_p17;
wire   [7:0] a_assign_fu_1680_p19;
wire   [7:0] a_assign_fu_1680_p21;
wire   [7:0] a_assign_fu_1680_p23;
wire   [7:0] a_assign_fu_1680_p25;
wire   [7:0] a_assign_fu_1680_p27;
wire   [7:0] a_assign_fu_1680_p29;
wire   [7:0] a_assign_fu_1680_p31;
wire   [7:0] a_assign_fu_1680_p33;
wire   [7:0] a_assign_fu_1680_p35;
wire   [7:0] a_assign_fu_1680_p37;
wire   [7:0] a_assign_fu_1680_p39;
wire   [7:0] a_assign_fu_1680_p41;
wire   [7:0] a_assign_fu_1680_p43;
wire   [7:0] a_assign_fu_1680_p45;
wire   [7:0] a_assign_fu_1680_p47;
wire   [7:0] a_assign_fu_1680_p49;
wire   [7:0] a_assign_fu_1680_p51;
wire   [7:0] a_assign_fu_1680_p53;
wire   [7:0] a_assign_fu_1680_p55;
wire   [7:0] a_assign_fu_1680_p57;
wire   [7:0] a_assign_fu_1680_p59;
wire   [7:0] a_assign_fu_1680_p61;
wire   [7:0] a_assign_fu_1680_p63;
wire   [7:0] a_assign_fu_1680_p65;
wire   [7:0] a_assign_fu_1680_p67;
wire   [7:0] a_assign_fu_1680_p69;
wire   [7:0] a_assign_fu_1680_p71;
wire   [7:0] a_assign_fu_1680_p73;
wire   [7:0] a_assign_fu_1680_p75;
wire   [7:0] a_assign_fu_1680_p77;
wire   [7:0] a_assign_fu_1680_p79;
wire   [7:0] a_assign_fu_1680_p81;
wire   [7:0] a_assign_fu_1680_p83;
wire   [7:0] a_assign_fu_1680_p85;
wire   [7:0] a_assign_fu_1680_p87;
wire   [7:0] a_assign_fu_1680_p89;
wire   [7:0] a_assign_fu_1680_p91;
wire   [7:0] a_assign_fu_1680_p93;
wire   [7:0] a_assign_fu_1680_p95;
wire   [7:0] a_assign_fu_1680_p97;
wire   [7:0] a_assign_fu_1680_p99;
wire   [7:0] a_assign_fu_1680_p101;
wire   [7:0] a_assign_fu_1680_p103;
wire   [7:0] a_assign_fu_1680_p105;
wire   [7:0] a_assign_fu_1680_p107;
wire   [7:0] a_assign_fu_1680_p109;
wire   [7:0] a_assign_fu_1680_p111;
wire   [7:0] a_assign_fu_1680_p113;
wire   [7:0] a_assign_fu_1680_p115;
wire   [7:0] a_assign_fu_1680_p117;
wire   [7:0] a_assign_fu_1680_p119;
wire   [7:0] a_assign_fu_1680_p121;
wire   [7:0] a_assign_fu_1680_p123;
wire   [7:0] a_assign_fu_1680_p125;
wire   [7:0] a_assign_fu_1680_p127;
wire   [7:0] a_assign_fu_1680_p129;
wire   [7:0] a_assign_fu_1680_p131;
wire   [7:0] a_assign_fu_1680_p133;
wire   [7:0] a_assign_fu_1680_p135;
wire   [7:0] a_assign_fu_1680_p137;
wire   [7:0] a_assign_fu_1680_p139;
wire   [7:0] a_assign_fu_1680_p141;
wire   [7:0] a_assign_fu_1680_p143;
wire   [7:0] a_assign_fu_1680_p145;
wire   [7:0] a_assign_fu_1680_p147;
wire   [7:0] a_assign_fu_1680_p149;
wire   [7:0] a_assign_fu_1680_p151;
wire   [7:0] a_assign_fu_1680_p153;
wire   [7:0] a_assign_fu_1680_p155;
wire   [7:0] a_assign_fu_1680_p157;
wire   [7:0] a_assign_fu_1680_p159;
wire   [7:0] a_assign_fu_1680_p161;
wire   [7:0] a_assign_fu_1680_p163;
wire   [7:0] a_assign_fu_1680_p165;
wire   [7:0] a_assign_fu_1680_p167;
wire   [7:0] a_assign_fu_1680_p169;
wire   [7:0] a_assign_fu_1680_p171;
wire   [7:0] a_assign_fu_1680_p173;
wire   [7:0] a_assign_fu_1680_p175;
wire   [7:0] a_assign_fu_1680_p177;
wire   [7:0] a_assign_fu_1680_p179;
wire   [7:0] a_assign_fu_1680_p181;
wire   [7:0] a_assign_fu_1680_p183;
wire   [7:0] a_assign_fu_1680_p185;
wire   [7:0] a_assign_fu_1680_p187;
wire   [7:0] a_assign_fu_1680_p189;
wire   [7:0] a_assign_fu_1680_p191;
wire   [7:0] a_assign_fu_1680_p193;
wire   [7:0] a_assign_fu_1680_p195;
wire   [7:0] a_assign_fu_1680_p197;
wire   [7:0] a_assign_fu_1680_p199;
wire   [7:0] a_assign_fu_1680_p201;
wire   [7:0] a_assign_fu_1680_p203;
wire   [7:0] a_assign_fu_1680_p205;
wire   [7:0] a_assign_fu_1680_p207;
wire   [7:0] a_assign_fu_1680_p209;
wire   [7:0] a_assign_fu_1680_p211;
wire   [7:0] a_assign_fu_1680_p213;
wire   [7:0] a_assign_fu_1680_p215;
wire   [7:0] a_assign_fu_1680_p217;
wire   [7:0] a_assign_fu_1680_p219;
wire   [7:0] a_assign_fu_1680_p221;
wire   [7:0] a_assign_fu_1680_p223;
wire   [7:0] a_assign_fu_1680_p225;
wire   [7:0] a_assign_fu_1680_p227;
wire   [7:0] a_assign_fu_1680_p229;
wire   [7:0] a_assign_fu_1680_p231;
wire   [7:0] a_assign_fu_1680_p233;
wire   [7:0] a_assign_fu_1680_p235;
wire   [7:0] a_assign_fu_1680_p237;
wire   [7:0] a_assign_fu_1680_p239;
wire   [7:0] a_assign_fu_1680_p241;
wire   [7:0] a_assign_fu_1680_p243;
wire   [7:0] a_assign_fu_1680_p245;
wire   [7:0] a_assign_fu_1680_p247;
wire   [7:0] a_assign_fu_1680_p249;
wire   [7:0] a_assign_fu_1680_p251;
wire   [7:0] a_assign_fu_1680_p253;
wire   [7:0] a_assign_fu_1680_p255;
wire  signed [7:0] a_assign_fu_1680_p257;
wire  signed [7:0] a_assign_fu_1680_p259;
wire  signed [7:0] a_assign_fu_1680_p261;
wire  signed [7:0] a_assign_fu_1680_p263;
wire  signed [7:0] a_assign_fu_1680_p265;
wire  signed [7:0] a_assign_fu_1680_p267;
wire  signed [7:0] a_assign_fu_1680_p269;
wire  signed [7:0] a_assign_fu_1680_p271;
wire  signed [7:0] a_assign_fu_1680_p273;
wire  signed [7:0] a_assign_fu_1680_p275;
wire  signed [7:0] a_assign_fu_1680_p277;
wire  signed [7:0] a_assign_fu_1680_p279;
wire  signed [7:0] a_assign_fu_1680_p281;
wire  signed [7:0] a_assign_fu_1680_p283;
wire  signed [7:0] a_assign_fu_1680_p285;
wire  signed [7:0] a_assign_fu_1680_p287;
wire  signed [7:0] a_assign_fu_1680_p289;
wire  signed [7:0] a_assign_fu_1680_p291;
wire  signed [7:0] a_assign_fu_1680_p293;
wire  signed [7:0] a_assign_fu_1680_p295;
wire  signed [7:0] a_assign_fu_1680_p297;
wire  signed [7:0] a_assign_fu_1680_p299;
wire  signed [7:0] a_assign_fu_1680_p301;
wire  signed [7:0] a_assign_fu_1680_p303;
wire  signed [7:0] a_assign_fu_1680_p305;
wire  signed [7:0] a_assign_fu_1680_p307;
wire  signed [7:0] a_assign_fu_1680_p309;
wire  signed [7:0] a_assign_fu_1680_p311;
wire  signed [7:0] a_assign_fu_1680_p313;
wire  signed [7:0] a_assign_fu_1680_p315;
wire  signed [7:0] a_assign_fu_1680_p317;
wire  signed [7:0] a_assign_fu_1680_p319;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 smax_fu_680 = 16'd0;
#0 k_fu_684 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_321_8_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 16 ),.CASE1( 8'h1 ),.din1_WIDTH( 16 ),.CASE2( 8'h2 ),.din2_WIDTH( 16 ),.CASE3( 8'h3 ),.din3_WIDTH( 16 ),.CASE4( 8'h4 ),.din4_WIDTH( 16 ),.CASE5( 8'h5 ),.din5_WIDTH( 16 ),.CASE6( 8'h6 ),.din6_WIDTH( 16 ),.CASE7( 8'h7 ),.din7_WIDTH( 16 ),.CASE8( 8'h8 ),.din8_WIDTH( 16 ),.CASE9( 8'h9 ),.din9_WIDTH( 16 ),.CASE10( 8'hA ),.din10_WIDTH( 16 ),.CASE11( 8'hB ),.din11_WIDTH( 16 ),.CASE12( 8'hC ),.din12_WIDTH( 16 ),.CASE13( 8'hD ),.din13_WIDTH( 16 ),.CASE14( 8'hE ),.din14_WIDTH( 16 ),.CASE15( 8'hF ),.din15_WIDTH( 16 ),.CASE16( 8'h10 ),.din16_WIDTH( 16 ),.CASE17( 8'h11 ),.din17_WIDTH( 16 ),.CASE18( 8'h12 ),.din18_WIDTH( 16 ),.CASE19( 8'h13 ),.din19_WIDTH( 16 ),.CASE20( 8'h14 ),.din20_WIDTH( 16 ),.CASE21( 8'h15 ),.din21_WIDTH( 16 ),.CASE22( 8'h16 ),.din22_WIDTH( 16 ),.CASE23( 8'h17 ),.din23_WIDTH( 16 ),.CASE24( 8'h18 ),.din24_WIDTH( 16 ),.CASE25( 8'h19 ),.din25_WIDTH( 16 ),.CASE26( 8'h1A ),.din26_WIDTH( 16 ),.CASE27( 8'h1B ),.din27_WIDTH( 16 ),.CASE28( 8'h1C ),.din28_WIDTH( 16 ),.CASE29( 8'h1D ),.din29_WIDTH( 16 ),.CASE30( 8'h1E ),.din30_WIDTH( 16 ),.CASE31( 8'h1F ),.din31_WIDTH( 16 ),.CASE32( 8'h20 ),.din32_WIDTH( 16 ),.CASE33( 8'h21 ),.din33_WIDTH( 16 ),.CASE34( 8'h22 ),.din34_WIDTH( 16 ),.CASE35( 8'h23 ),.din35_WIDTH( 16 ),.CASE36( 8'h24 ),.din36_WIDTH( 16 ),.CASE37( 8'h25 ),.din37_WIDTH( 16 ),.CASE38( 8'h26 ),.din38_WIDTH( 16 ),.CASE39( 8'h27 ),.din39_WIDTH( 16 ),.CASE40( 8'h28 ),.din40_WIDTH( 16 ),.CASE41( 8'h29 ),.din41_WIDTH( 16 ),.CASE42( 8'h2A ),.din42_WIDTH( 16 ),.CASE43( 8'h2B ),.din43_WIDTH( 16 ),.CASE44( 8'h2C ),.din44_WIDTH( 16 ),.CASE45( 8'h2D ),.din45_WIDTH( 16 ),.CASE46( 8'h2E ),.din46_WIDTH( 16 ),.CASE47( 8'h2F ),.din47_WIDTH( 16 ),.CASE48( 8'h30 ),.din48_WIDTH( 16 ),.CASE49( 8'h31 ),.din49_WIDTH( 16 ),.CASE50( 8'h32 ),.din50_WIDTH( 16 ),.CASE51( 8'h33 ),.din51_WIDTH( 16 ),.CASE52( 8'h34 ),.din52_WIDTH( 16 ),.CASE53( 8'h35 ),.din53_WIDTH( 16 ),.CASE54( 8'h36 ),.din54_WIDTH( 16 ),.CASE55( 8'h37 ),.din55_WIDTH( 16 ),.CASE56( 8'h38 ),.din56_WIDTH( 16 ),.CASE57( 8'h39 ),.din57_WIDTH( 16 ),.CASE58( 8'h3A ),.din58_WIDTH( 16 ),.CASE59( 8'h3B ),.din59_WIDTH( 16 ),.CASE60( 8'h3C ),.din60_WIDTH( 16 ),.CASE61( 8'h3D ),.din61_WIDTH( 16 ),.CASE62( 8'h3E ),.din62_WIDTH( 16 ),.CASE63( 8'h3F ),.din63_WIDTH( 16 ),.CASE64( 8'h40 ),.din64_WIDTH( 16 ),.CASE65( 8'h41 ),.din65_WIDTH( 16 ),.CASE66( 8'h42 ),.din66_WIDTH( 16 ),.CASE67( 8'h43 ),.din67_WIDTH( 16 ),.CASE68( 8'h44 ),.din68_WIDTH( 16 ),.CASE69( 8'h45 ),.din69_WIDTH( 16 ),.CASE70( 8'h46 ),.din70_WIDTH( 16 ),.CASE71( 8'h47 ),.din71_WIDTH( 16 ),.CASE72( 8'h48 ),.din72_WIDTH( 16 ),.CASE73( 8'h49 ),.din73_WIDTH( 16 ),.CASE74( 8'h4A ),.din74_WIDTH( 16 ),.CASE75( 8'h4B ),.din75_WIDTH( 16 ),.CASE76( 8'h4C ),.din76_WIDTH( 16 ),.CASE77( 8'h4D ),.din77_WIDTH( 16 ),.CASE78( 8'h4E ),.din78_WIDTH( 16 ),.CASE79( 8'h4F ),.din79_WIDTH( 16 ),.CASE80( 8'h50 ),.din80_WIDTH( 16 ),.CASE81( 8'h51 ),.din81_WIDTH( 16 ),.CASE82( 8'h52 ),.din82_WIDTH( 16 ),.CASE83( 8'h53 ),.din83_WIDTH( 16 ),.CASE84( 8'h54 ),.din84_WIDTH( 16 ),.CASE85( 8'h55 ),.din85_WIDTH( 16 ),.CASE86( 8'h56 ),.din86_WIDTH( 16 ),.CASE87( 8'h57 ),.din87_WIDTH( 16 ),.CASE88( 8'h58 ),.din88_WIDTH( 16 ),.CASE89( 8'h59 ),.din89_WIDTH( 16 ),.CASE90( 8'h5A ),.din90_WIDTH( 16 ),.CASE91( 8'h5B ),.din91_WIDTH( 16 ),.CASE92( 8'h5C ),.din92_WIDTH( 16 ),.CASE93( 8'h5D ),.din93_WIDTH( 16 ),.CASE94( 8'h5E ),.din94_WIDTH( 16 ),.CASE95( 8'h5F ),.din95_WIDTH( 16 ),.CASE96( 8'h60 ),.din96_WIDTH( 16 ),.CASE97( 8'h61 ),.din97_WIDTH( 16 ),.CASE98( 8'h62 ),.din98_WIDTH( 16 ),.CASE99( 8'h63 ),.din99_WIDTH( 16 ),.CASE100( 8'h64 ),.din100_WIDTH( 16 ),.CASE101( 8'h65 ),.din101_WIDTH( 16 ),.CASE102( 8'h66 ),.din102_WIDTH( 16 ),.CASE103( 8'h67 ),.din103_WIDTH( 16 ),.CASE104( 8'h68 ),.din104_WIDTH( 16 ),.CASE105( 8'h69 ),.din105_WIDTH( 16 ),.CASE106( 8'h6A ),.din106_WIDTH( 16 ),.CASE107( 8'h6B ),.din107_WIDTH( 16 ),.CASE108( 8'h6C ),.din108_WIDTH( 16 ),.CASE109( 8'h6D ),.din109_WIDTH( 16 ),.CASE110( 8'h6E ),.din110_WIDTH( 16 ),.CASE111( 8'h6F ),.din111_WIDTH( 16 ),.CASE112( 8'h70 ),.din112_WIDTH( 16 ),.CASE113( 8'h71 ),.din113_WIDTH( 16 ),.CASE114( 8'h72 ),.din114_WIDTH( 16 ),.CASE115( 8'h73 ),.din115_WIDTH( 16 ),.CASE116( 8'h74 ),.din116_WIDTH( 16 ),.CASE117( 8'h75 ),.din117_WIDTH( 16 ),.CASE118( 8'h76 ),.din118_WIDTH( 16 ),.CASE119( 8'h77 ),.din119_WIDTH( 16 ),.CASE120( 8'h78 ),.din120_WIDTH( 16 ),.CASE121( 8'h79 ),.din121_WIDTH( 16 ),.CASE122( 8'h7A ),.din122_WIDTH( 16 ),.CASE123( 8'h7B ),.din123_WIDTH( 16 ),.CASE124( 8'h7C ),.din124_WIDTH( 16 ),.CASE125( 8'h7D ),.din125_WIDTH( 16 ),.CASE126( 8'h7E ),.din126_WIDTH( 16 ),.CASE127( 8'h7F ),.din127_WIDTH( 16 ),.CASE128( 8'h80 ),.din128_WIDTH( 16 ),.CASE129( 8'h81 ),.din129_WIDTH( 16 ),.CASE130( 8'h82 ),.din130_WIDTH( 16 ),.CASE131( 8'h83 ),.din131_WIDTH( 16 ),.CASE132( 8'h84 ),.din132_WIDTH( 16 ),.CASE133( 8'h85 ),.din133_WIDTH( 16 ),.CASE134( 8'h86 ),.din134_WIDTH( 16 ),.CASE135( 8'h87 ),.din135_WIDTH( 16 ),.CASE136( 8'h88 ),.din136_WIDTH( 16 ),.CASE137( 8'h89 ),.din137_WIDTH( 16 ),.CASE138( 8'h8A ),.din138_WIDTH( 16 ),.CASE139( 8'h8B ),.din139_WIDTH( 16 ),.CASE140( 8'h8C ),.din140_WIDTH( 16 ),.CASE141( 8'h8D ),.din141_WIDTH( 16 ),.CASE142( 8'h8E ),.din142_WIDTH( 16 ),.CASE143( 8'h8F ),.din143_WIDTH( 16 ),.CASE144( 8'h90 ),.din144_WIDTH( 16 ),.CASE145( 8'h91 ),.din145_WIDTH( 16 ),.CASE146( 8'h92 ),.din146_WIDTH( 16 ),.CASE147( 8'h93 ),.din147_WIDTH( 16 ),.CASE148( 8'h94 ),.din148_WIDTH( 16 ),.CASE149( 8'h95 ),.din149_WIDTH( 16 ),.CASE150( 8'h96 ),.din150_WIDTH( 16 ),.CASE151( 8'h97 ),.din151_WIDTH( 16 ),.CASE152( 8'h98 ),.din152_WIDTH( 16 ),.CASE153( 8'h99 ),.din153_WIDTH( 16 ),.CASE154( 8'h9A ),.din154_WIDTH( 16 ),.CASE155( 8'h9B ),.din155_WIDTH( 16 ),.CASE156( 8'h9C ),.din156_WIDTH( 16 ),.CASE157( 8'h9D ),.din157_WIDTH( 16 ),.CASE158( 8'h9E ),.din158_WIDTH( 16 ),.CASE159( 8'h9F ),.din159_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 8 ),.dout_WIDTH( 16 ))
sparsemux_321_8_16_1_1_U1(.din0(s_0_load),.din1(s_1_load),.din2(s_2_load),.din3(s_3_load),.din4(s_4_load),.din5(s_5_load),.din6(s_6_load),.din7(s_7_load),.din8(s_8_load),.din9(s_9_load),.din10(s_10_load),.din11(s_11_load),.din12(s_12_load),.din13(s_13_load),.din14(s_14_load),.din15(s_15_load),.din16(s_16_load),.din17(s_17_load),.din18(s_18_load),.din19(s_19_load),.din20(s_20_load),.din21(s_21_load),.din22(s_22_load),.din23(s_23_load),.din24(s_24_load),.din25(s_25_load),.din26(s_26_load),.din27(s_27_load),.din28(s_28_load),.din29(s_29_load),.din30(s_30_load),.din31(s_31_load),.din32(s_32_load),.din33(s_33_load),.din34(s_34_load),.din35(s_35_load),.din36(s_36_load),.din37(s_37_load),.din38(s_38_load),.din39(s_39_load),.din40(s_40_load),.din41(s_41_load),.din42(s_42_load),.din43(s_43_load),.din44(s_44_load),.din45(s_45_load),.din46(s_46_load),.din47(s_47_load),.din48(s_48_load),.din49(s_49_load),.din50(s_50_load),.din51(s_51_load),.din52(s_52_load),.din53(s_53_load),.din54(s_54_load),.din55(s_55_load),.din56(s_56_load),.din57(s_57_load),.din58(s_58_load),.din59(s_59_load),.din60(s_60_load),.din61(s_61_load),.din62(s_62_load),.din63(s_63_load),.din64(s_64_load),.din65(s_65_load),.din66(s_66_load),.din67(s_67_load),.din68(s_68_load),.din69(s_69_load),.din70(s_70_load),.din71(s_71_load),.din72(s_72_load),.din73(s_73_load),.din74(s_74_load),.din75(s_75_load),.din76(s_76_load),.din77(s_77_load),.din78(s_78_load),.din79(s_79_load),.din80(s_80_load),.din81(s_81_load),.din82(s_82_load),.din83(s_83_load),.din84(s_84_load),.din85(s_85_load),.din86(s_86_load),.din87(s_87_load),.din88(s_88_load),.din89(s_89_load),.din90(s_90_load),.din91(s_91_load),.din92(s_92_load),.din93(s_93_load),.din94(s_94_load),.din95(s_95_load),.din96(s_96_load),.din97(s_97_load),.din98(s_98_load),.din99(s_99_load),.din100(s_100_load),.din101(s_101_load),.din102(s_102_load),.din103(s_103_load),.din104(s_104_load),.din105(s_105_load),.din106(s_106_load),.din107(s_107_load),.din108(s_108_load),.din109(s_109_load),.din110(s_110_load),.din111(s_111_load),.din112(s_112_load),.din113(s_113_load),.din114(s_114_load),.din115(s_115_load),.din116(s_116_load),.din117(s_117_load),.din118(s_118_load),.din119(s_119_load),.din120(s_120_load),.din121(s_121_load),.din122(s_122_load),.din123(s_123_load),.din124(s_124_load),.din125(s_125_load),.din126(s_126_load),.din127(s_127_load),.din128(s_128_load),.din129(s_129_load),.din130(s_130_load),.din131(s_131_load),.din132(s_132_load),.din133(s_133_load),.din134(s_134_load),.din135(s_135_load),.din136(s_136_load),.din137(s_137_load),.din138(s_138_load),.din139(s_139_load),.din140(s_140_load),.din141(s_141_load),.din142(s_142_load),.din143(s_143_load),.din144(s_144_load),.din145(s_145_load),.din146(s_146_load),.din147(s_147_load),.din148(s_148_load),.din149(s_149_load),.din150(s_150_load),.din151(s_151_load),.din152(s_152_load),.din153(s_153_load),.din154(s_154_load),.din155(s_155_load),.din156(s_156_load),.din157(s_157_load),.din158(s_158_load),.din159(s_159_load),.def(a_assign_fu_1680_p321),.sel(ap_sig_allocacmp_k_4),.dout(a_assign_fu_1680_p323));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((icmp_ln55_fu_1668_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            k_fu_684 <= add_ln55_fu_1674_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_684 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smax_fu_680 <= 16'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            smax_fu_680 <= smax_1_fu_2373_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_assign_reg_2408 <= a_assign_fu_1680_p323;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln55_reg_2404 <= icmp_ln55_fu_1668_p2;
        temp_reg_2416 <= temp_fu_2358_p3;
    end
end
always @ (*) begin
    if (((icmp_ln55_fu_1668_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_4 = 8'd0;
    end else begin
        ap_sig_allocacmp_k_4 = k_fu_684;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln55_reg_2404 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign a_assign_fu_1680_p321 = 'bx;
assign add_ln55_fu_1674_p2 = (ap_sig_allocacmp_k_4 + 8'd1);
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
assign icmp_ln55_fu_1668_p2 = ((ap_sig_allocacmp_k_4 == 8'd160) ? 1'b1 : 1'b0);
assign icmp_ln58_fu_2368_p2 = (($signed(temp_reg_2416) > $signed(smax_fu_680)) ? 1'b1 : 1'b0);
assign icmp_ln69_fu_2340_p2 = ((a_assign_reg_2408 == 16'd32768) ? 1'b1 : 1'b0);
assign select_ln69_fu_2350_p3 = ((icmp_ln69_fu_2340_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_fu_2345_p2);
assign smax_1_fu_2373_p3 = ((icmp_ln58_fu_2368_p2[0:0] == 1'b1) ? temp_reg_2416 : smax_fu_680);
assign smax_out = smax_fu_680;
assign sub_ln69_fu_2345_p2 = (16'd0 - a_assign_reg_2408);
assign temp_fu_2358_p3 = ((tmp_fu_2333_p3[0:0] == 1'b1) ? select_ln69_fu_2350_p3 : a_assign_reg_2408);
assign tmp_fu_2333_p3 = a_assign_reg_2408[32'd15];
endmodule 