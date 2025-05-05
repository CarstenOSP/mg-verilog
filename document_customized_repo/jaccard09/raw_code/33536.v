module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_66,llike_1_load_1,llike_2_load_1,llike_3_load_1,llike_4_load_1,llike_5_load_1,llike_6_load_1,llike_7_load_1,llike_8_load_1,llike_9_load_1,llike_10_load_1,llike_11_load_1,llike_12_load_1,llike_13_load_1,llike_14_load_1,llike_15_load_1,llike_16_load_1,llike_17_load_1,llike_18_load_1,llike_19_load_1,llike_20_load_1,llike_21_load_1,llike_22_load_1,llike_23_load_1,llike_24_load_1,llike_25_load_1,llike_26_load_1,llike_27_load_1,llike_28_load_1,llike_29_load_1,llike_30_load_1,llike_31_load_1,llike_32_load_1,llike_33_load_1,llike_34_load_1,llike_35_load_1,llike_36_load_1,llike_37_load_1,llike_38_load_1,llike_39_load_1,llike_40_load_1,llike_41_load_1,llike_42_load_1,llike_43_load_1,llike_44_load_1,llike_45_load_1,llike_46_load_1,llike_47_load_1,llike_48_load_1,llike_49_load_1,llike_50_load_1,llike_51_load_1,llike_52_load_1,llike_53_load_1,llike_54_load_1,llike_55_load_1,llike_56_load_1,llike_57_load_1,llike_58_load_1,llike_59_load_1,llike_60_load_1,llike_61_load_1,llike_62_load_1,llike_63_load_1,empty,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,bitcast_ln24,min_p_70_out,min_p_70_out_ap_vld,grp_fu_3802_p_din0,grp_fu_3802_p_din1,grp_fu_3802_p_opcode,grp_fu_3802_p_dout0,grp_fu_3802_p_ce,grp_fu_6725_p_din0,grp_fu_6725_p_din1,grp_fu_6725_p_opcode,grp_fu_6725_p_dout0,grp_fu_6725_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_66;
input  [63:0] llike_1_load_1;
input  [63:0] llike_2_load_1;
input  [63:0] llike_3_load_1;
input  [63:0] llike_4_load_1;
input  [63:0] llike_5_load_1;
input  [63:0] llike_6_load_1;
input  [63:0] llike_7_load_1;
input  [63:0] llike_8_load_1;
input  [63:0] llike_9_load_1;
input  [63:0] llike_10_load_1;
input  [63:0] llike_11_load_1;
input  [63:0] llike_12_load_1;
input  [63:0] llike_13_load_1;
input  [63:0] llike_14_load_1;
input  [63:0] llike_15_load_1;
input  [63:0] llike_16_load_1;
input  [63:0] llike_17_load_1;
input  [63:0] llike_18_load_1;
input  [63:0] llike_19_load_1;
input  [63:0] llike_20_load_1;
input  [63:0] llike_21_load_1;
input  [63:0] llike_22_load_1;
input  [63:0] llike_23_load_1;
input  [63:0] llike_24_load_1;
input  [63:0] llike_25_load_1;
input  [63:0] llike_26_load_1;
input  [63:0] llike_27_load_1;
input  [63:0] llike_28_load_1;
input  [63:0] llike_29_load_1;
input  [63:0] llike_30_load_1;
input  [63:0] llike_31_load_1;
input  [63:0] llike_32_load_1;
input  [63:0] llike_33_load_1;
input  [63:0] llike_34_load_1;
input  [63:0] llike_35_load_1;
input  [63:0] llike_36_load_1;
input  [63:0] llike_37_load_1;
input  [63:0] llike_38_load_1;
input  [63:0] llike_39_load_1;
input  [63:0] llike_40_load_1;
input  [63:0] llike_41_load_1;
input  [63:0] llike_42_load_1;
input  [63:0] llike_43_load_1;
input  [63:0] llike_44_load_1;
input  [63:0] llike_45_load_1;
input  [63:0] llike_46_load_1;
input  [63:0] llike_47_load_1;
input  [63:0] llike_48_load_1;
input  [63:0] llike_49_load_1;
input  [63:0] llike_50_load_1;
input  [63:0] llike_51_load_1;
input  [63:0] llike_52_load_1;
input  [63:0] llike_53_load_1;
input  [63:0] llike_54_load_1;
input  [63:0] llike_55_load_1;
input  [63:0] llike_56_load_1;
input  [63:0] llike_57_load_1;
input  [63:0] llike_58_load_1;
input  [63:0] llike_59_load_1;
input  [63:0] llike_60_load_1;
input  [63:0] llike_61_load_1;
input  [63:0] llike_62_load_1;
input  [63:0] llike_63_load_1;
input  [5:0] empty;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [63:0] bitcast_ln24;
output  [63:0] min_p_70_out;
output   min_p_70_out_ap_vld;
output  [63:0] grp_fu_3802_p_din0;
output  [63:0] grp_fu_3802_p_din1;
output  [1:0] grp_fu_3802_p_opcode;
input  [63:0] grp_fu_3802_p_dout0;
output   grp_fu_3802_p_ce;
output  [63:0] grp_fu_6725_p_din0;
output  [63:0] grp_fu_6725_p_din1;
output  [4:0] grp_fu_6725_p_opcode;
input  [0:0] grp_fu_6725_p_dout0;
output   grp_fu_6725_p_ce;
reg ap_idle;
reg min_p_70_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] tmp_3_reg_1570;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] tmp_fu_777_p129;
reg   [63:0] tmp_reg_1560;
wire   [0:0] tmp_3_fu_1056_p3;
reg   [0:0] tmp_3_reg_1570_pp0_iter1_reg;
reg   [0:0] tmp_3_reg_1570_pp0_iter2_reg;
reg   [0:0] tmp_3_reg_1570_pp0_iter3_reg;
reg   [0:0] tmp_3_reg_1570_pp0_iter4_reg;
wire   [63:0] tmp_1_fu_1064_p127;
reg   [63:0] tmp_1_reg_1574;
reg   [63:0] transition_load_1_reg_1584;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] transition_load_3_reg_1589;
wire   [63:0] bitcast_ln27_fu_1348_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] bitcast_ln27_1_fu_1352_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] add1_reg_1604;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] add52_1_reg_1609;
reg   [63:0] p_reg_1614;
reg   [63:0] min_p_67_reg_1621;
reg   [63:0] p_32_reg_1628;
wire   [0:0] and_ln29_1_fu_1436_p2;
reg   [0:0] and_ln29_1_reg_1635;
wire   [63:0] min_p_69_fu_1442_p3;
reg   [63:0] min_p_69_reg_1640;
reg   [0:0] tmp_132_reg_1647;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter4_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln27_fu_1045_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_1_fu_1332_p1;
reg   [63:0] min_p_fu_316;
wire   [63:0] min_p_71_fu_1530_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_320;
wire   [5:0] add_ln25_1_fu_1337_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
wire    ap_block_pp0_stage0_01001;
reg    transition_ce1_local;
reg    transition_ce0_local;
reg   [63:0] grp_fu_752_p0;
reg   [63:0] grp_fu_752_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_756_p0;
reg   [63:0] grp_fu_756_p1;
wire   [63:0] tmp_fu_777_p127;
wire   [11:0] add_ln_fu_1037_p3;
wire   [6:0] zext_ln10_fu_773_p1;
wire   [6:0] add_ln25_fu_1050_p2;
wire   [63:0] tmp_1_fu_1064_p125;
wire   [5:0] trunc_ln27_fu_1320_p1;
wire   [11:0] add_ln27_1_fu_1324_p3;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln29_fu_1360_p1;
wire   [63:0] bitcast_ln29_1_fu_1377_p1;
wire   [10:0] tmp_s_fu_1363_p4;
wire   [51:0] trunc_ln29_fu_1373_p1;
wire   [0:0] icmp_ln29_1_fu_1400_p2;
wire   [0:0] icmp_ln29_fu_1394_p2;
wire   [10:0] tmp_128_fu_1380_p4;
wire   [51:0] trunc_ln29_1_fu_1390_p1;
wire   [0:0] icmp_ln29_3_fu_1418_p2;
wire   [0:0] icmp_ln29_2_fu_1412_p2;
wire   [0:0] or_ln29_fu_1406_p2;
wire   [0:0] and_ln29_fu_1430_p2;
wire   [0:0] or_ln29_1_fu_1424_p2;
wire   [63:0] bitcast_ln29_2_fu_1449_p1;
wire   [63:0] bitcast_ln29_3_fu_1466_p1;
wire   [10:0] tmp_130_fu_1452_p4;
wire   [51:0] trunc_ln29_2_fu_1462_p1;
wire   [0:0] icmp_ln29_5_fu_1489_p2;
wire   [0:0] icmp_ln29_4_fu_1483_p2;
wire   [10:0] tmp_131_fu_1469_p4;
wire   [51:0] trunc_ln29_3_fu_1479_p1;
wire   [0:0] icmp_ln29_7_fu_1507_p2;
wire   [0:0] icmp_ln29_6_fu_1501_p2;
wire   [0:0] or_ln29_3_fu_1513_p2;
wire   [0:0] or_ln29_2_fu_1495_p2;
wire   [0:0] and_ln29_2_fu_1519_p2;
wire   [0:0] and_ln29_3_fu_1525_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage1_00001;
wire   [5:0] tmp_fu_777_p1;
wire   [5:0] tmp_fu_777_p3;
wire   [5:0] tmp_fu_777_p5;
wire   [5:0] tmp_fu_777_p7;
wire   [5:0] tmp_fu_777_p9;
wire   [5:0] tmp_fu_777_p11;
wire   [5:0] tmp_fu_777_p13;
wire   [5:0] tmp_fu_777_p15;
wire   [5:0] tmp_fu_777_p17;
wire   [5:0] tmp_fu_777_p19;
wire   [5:0] tmp_fu_777_p21;
wire   [5:0] tmp_fu_777_p23;
wire   [5:0] tmp_fu_777_p25;
wire   [5:0] tmp_fu_777_p27;
wire   [5:0] tmp_fu_777_p29;
wire   [5:0] tmp_fu_777_p31;
wire   [5:0] tmp_fu_777_p33;
wire   [5:0] tmp_fu_777_p35;
wire   [5:0] tmp_fu_777_p37;
wire   [5:0] tmp_fu_777_p39;
wire   [5:0] tmp_fu_777_p41;
wire   [5:0] tmp_fu_777_p43;
wire   [5:0] tmp_fu_777_p45;
wire   [5:0] tmp_fu_777_p47;
wire   [5:0] tmp_fu_777_p49;
wire   [5:0] tmp_fu_777_p51;
wire   [5:0] tmp_fu_777_p53;
wire   [5:0] tmp_fu_777_p55;
wire   [5:0] tmp_fu_777_p57;
wire   [5:0] tmp_fu_777_p59;
wire   [5:0] tmp_fu_777_p61;
wire  signed [5:0] tmp_fu_777_p63;
wire  signed [5:0] tmp_fu_777_p65;
wire  signed [5:0] tmp_fu_777_p67;
wire  signed [5:0] tmp_fu_777_p69;
wire  signed [5:0] tmp_fu_777_p71;
wire  signed [5:0] tmp_fu_777_p73;
wire  signed [5:0] tmp_fu_777_p75;
wire  signed [5:0] tmp_fu_777_p77;
wire  signed [5:0] tmp_fu_777_p79;
wire  signed [5:0] tmp_fu_777_p81;
wire  signed [5:0] tmp_fu_777_p83;
wire  signed [5:0] tmp_fu_777_p85;
wire  signed [5:0] tmp_fu_777_p87;
wire  signed [5:0] tmp_fu_777_p89;
wire  signed [5:0] tmp_fu_777_p91;
wire  signed [5:0] tmp_fu_777_p93;
wire  signed [5:0] tmp_fu_777_p95;
wire  signed [5:0] tmp_fu_777_p97;
wire  signed [5:0] tmp_fu_777_p99;
wire  signed [5:0] tmp_fu_777_p101;
wire  signed [5:0] tmp_fu_777_p103;
wire  signed [5:0] tmp_fu_777_p105;
wire  signed [5:0] tmp_fu_777_p107;
wire  signed [5:0] tmp_fu_777_p109;
wire  signed [5:0] tmp_fu_777_p111;
wire  signed [5:0] tmp_fu_777_p113;
wire  signed [5:0] tmp_fu_777_p115;
wire  signed [5:0] tmp_fu_777_p117;
wire  signed [5:0] tmp_fu_777_p119;
wire  signed [5:0] tmp_fu_777_p121;
wire  signed [5:0] tmp_fu_777_p123;
wire  signed [5:0] tmp_fu_777_p125;
wire   [5:0] tmp_1_fu_1064_p1;
wire   [5:0] tmp_1_fu_1064_p3;
wire   [5:0] tmp_1_fu_1064_p5;
wire   [5:0] tmp_1_fu_1064_p7;
wire   [5:0] tmp_1_fu_1064_p9;
wire   [5:0] tmp_1_fu_1064_p11;
wire   [5:0] tmp_1_fu_1064_p13;
wire   [5:0] tmp_1_fu_1064_p15;
wire   [5:0] tmp_1_fu_1064_p17;
wire   [5:0] tmp_1_fu_1064_p19;
wire   [5:0] tmp_1_fu_1064_p21;
wire   [5:0] tmp_1_fu_1064_p23;
wire   [5:0] tmp_1_fu_1064_p25;
wire   [5:0] tmp_1_fu_1064_p27;
wire   [5:0] tmp_1_fu_1064_p29;
wire   [5:0] tmp_1_fu_1064_p31;
wire   [5:0] tmp_1_fu_1064_p33;
wire   [5:0] tmp_1_fu_1064_p35;
wire   [5:0] tmp_1_fu_1064_p37;
wire   [5:0] tmp_1_fu_1064_p39;
wire   [5:0] tmp_1_fu_1064_p41;
wire   [5:0] tmp_1_fu_1064_p43;
wire   [5:0] tmp_1_fu_1064_p45;
wire   [5:0] tmp_1_fu_1064_p47;
wire   [5:0] tmp_1_fu_1064_p49;
wire   [5:0] tmp_1_fu_1064_p51;
wire   [5:0] tmp_1_fu_1064_p53;
wire   [5:0] tmp_1_fu_1064_p55;
wire   [5:0] tmp_1_fu_1064_p57;
wire   [5:0] tmp_1_fu_1064_p59;
wire   [5:0] tmp_1_fu_1064_p61;
wire  signed [5:0] tmp_1_fu_1064_p63;
wire  signed [5:0] tmp_1_fu_1064_p65;
wire  signed [5:0] tmp_1_fu_1064_p67;
wire  signed [5:0] tmp_1_fu_1064_p69;
wire  signed [5:0] tmp_1_fu_1064_p71;
wire  signed [5:0] tmp_1_fu_1064_p73;
wire  signed [5:0] tmp_1_fu_1064_p75;
wire  signed [5:0] tmp_1_fu_1064_p77;
wire  signed [5:0] tmp_1_fu_1064_p79;
wire  signed [5:0] tmp_1_fu_1064_p81;
wire  signed [5:0] tmp_1_fu_1064_p83;
wire  signed [5:0] tmp_1_fu_1064_p85;
wire  signed [5:0] tmp_1_fu_1064_p87;
wire  signed [5:0] tmp_1_fu_1064_p89;
wire  signed [5:0] tmp_1_fu_1064_p91;
wire  signed [5:0] tmp_1_fu_1064_p93;
wire  signed [5:0] tmp_1_fu_1064_p95;
wire  signed [5:0] tmp_1_fu_1064_p97;
wire  signed [5:0] tmp_1_fu_1064_p99;
wire  signed [5:0] tmp_1_fu_1064_p101;
wire  signed [5:0] tmp_1_fu_1064_p103;
wire  signed [5:0] tmp_1_fu_1064_p105;
wire  signed [5:0] tmp_1_fu_1064_p107;
wire  signed [5:0] tmp_1_fu_1064_p109;
wire  signed [5:0] tmp_1_fu_1064_p111;
wire  signed [5:0] tmp_1_fu_1064_p113;
wire  signed [5:0] tmp_1_fu_1064_p115;
wire  signed [5:0] tmp_1_fu_1064_p117;
wire  signed [5:0] tmp_1_fu_1064_p119;
wire  signed [5:0] tmp_1_fu_1064_p121;
wire  signed [5:0] tmp_1_fu_1064_p123;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_316 = 64'd0;
#0 prev_fu_320 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_127_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h1 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h3 ),.din2_WIDTH( 64 ),.CASE3( 6'h4 ),.din3_WIDTH( 64 ),.CASE4( 6'h5 ),.din4_WIDTH( 64 ),.CASE5( 6'h6 ),.din5_WIDTH( 64 ),.CASE6( 6'h7 ),.din6_WIDTH( 64 ),.CASE7( 6'h8 ),.din7_WIDTH( 64 ),.CASE8( 6'h9 ),.din8_WIDTH( 64 ),.CASE9( 6'hA ),.din9_WIDTH( 64 ),.CASE10( 6'hB ),.din10_WIDTH( 64 ),.CASE11( 6'hC ),.din11_WIDTH( 64 ),.CASE12( 6'hD ),.din12_WIDTH( 64 ),.CASE13( 6'hE ),.din13_WIDTH( 64 ),.CASE14( 6'hF ),.din14_WIDTH( 64 ),.CASE15( 6'h10 ),.din15_WIDTH( 64 ),.CASE16( 6'h11 ),.din16_WIDTH( 64 ),.CASE17( 6'h12 ),.din17_WIDTH( 64 ),.CASE18( 6'h13 ),.din18_WIDTH( 64 ),.CASE19( 6'h14 ),.din19_WIDTH( 64 ),.CASE20( 6'h15 ),.din20_WIDTH( 64 ),.CASE21( 6'h16 ),.din21_WIDTH( 64 ),.CASE22( 6'h17 ),.din22_WIDTH( 64 ),.CASE23( 6'h18 ),.din23_WIDTH( 64 ),.CASE24( 6'h19 ),.din24_WIDTH( 64 ),.CASE25( 6'h1A ),.din25_WIDTH( 64 ),.CASE26( 6'h1B ),.din26_WIDTH( 64 ),.CASE27( 6'h1C ),.din27_WIDTH( 64 ),.CASE28( 6'h1D ),.din28_WIDTH( 64 ),.CASE29( 6'h1E ),.din29_WIDTH( 64 ),.CASE30( 6'h1F ),.din30_WIDTH( 64 ),.CASE31( 6'h20 ),.din31_WIDTH( 64 ),.CASE32( 6'h21 ),.din32_WIDTH( 64 ),.CASE33( 6'h22 ),.din33_WIDTH( 64 ),.CASE34( 6'h23 ),.din34_WIDTH( 64 ),.CASE35( 6'h24 ),.din35_WIDTH( 64 ),.CASE36( 6'h25 ),.din36_WIDTH( 64 ),.CASE37( 6'h26 ),.din37_WIDTH( 64 ),.CASE38( 6'h27 ),.din38_WIDTH( 64 ),.CASE39( 6'h28 ),.din39_WIDTH( 64 ),.CASE40( 6'h29 ),.din40_WIDTH( 64 ),.CASE41( 6'h2A ),.din41_WIDTH( 64 ),.CASE42( 6'h2B ),.din42_WIDTH( 64 ),.CASE43( 6'h2C ),.din43_WIDTH( 64 ),.CASE44( 6'h2D ),.din44_WIDTH( 64 ),.CASE45( 6'h2E ),.din45_WIDTH( 64 ),.CASE46( 6'h2F ),.din46_WIDTH( 64 ),.CASE47( 6'h30 ),.din47_WIDTH( 64 ),.CASE48( 6'h31 ),.din48_WIDTH( 64 ),.CASE49( 6'h32 ),.din49_WIDTH( 64 ),.CASE50( 6'h33 ),.din50_WIDTH( 64 ),.CASE51( 6'h34 ),.din51_WIDTH( 64 ),.CASE52( 6'h35 ),.din52_WIDTH( 64 ),.CASE53( 6'h36 ),.din53_WIDTH( 64 ),.CASE54( 6'h37 ),.din54_WIDTH( 64 ),.CASE55( 6'h38 ),.din55_WIDTH( 64 ),.CASE56( 6'h39 ),.din56_WIDTH( 64 ),.CASE57( 6'h3A ),.din57_WIDTH( 64 ),.CASE58( 6'h3B ),.din58_WIDTH( 64 ),.CASE59( 6'h3C ),.din59_WIDTH( 64 ),.CASE60( 6'h3D ),.din60_WIDTH( 64 ),.CASE61( 6'h3E ),.din61_WIDTH( 64 ),.CASE62( 6'h3F ),.din62_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_127_6_64_1_1_U73(.din0(llike_1_load_1),.din1(llike_2_load_1),.din2(llike_3_load_1),.din3(llike_4_load_1),.din4(llike_5_load_1),.din5(llike_6_load_1),.din6(llike_7_load_1),.din7(llike_8_load_1),.din8(llike_9_load_1),.din9(llike_10_load_1),.din10(llike_11_load_1),.din11(llike_12_load_1),.din12(llike_13_load_1),.din13(llike_14_load_1),.din14(llike_15_load_1),.din15(llike_16_load_1),.din16(llike_17_load_1),.din17(llike_18_load_1),.din18(llike_19_load_1),.din19(llike_20_load_1),.din20(llike_21_load_1),.din21(llike_22_load_1),.din22(llike_23_load_1),.din23(llike_24_load_1),.din24(llike_25_load_1),.din25(llike_26_load_1),.din26(llike_27_load_1),.din27(llike_28_load_1),.din28(llike_29_load_1),.din29(llike_30_load_1),.din30(llike_31_load_1),.din31(llike_32_load_1),.din32(llike_33_load_1),.din33(llike_34_load_1),.din34(llike_35_load_1),.din35(llike_36_load_1),.din36(llike_37_load_1),.din37(llike_38_load_1),.din38(llike_39_load_1),.din39(llike_40_load_1),.din40(llike_41_load_1),.din41(llike_42_load_1),.din42(llike_43_load_1),.din43(llike_44_load_1),.din44(llike_45_load_1),.din45(llike_46_load_1),.din46(llike_47_load_1),.din47(llike_48_load_1),.din48(llike_49_load_1),.din49(llike_50_load_1),.din50(llike_51_load_1),.din51(llike_52_load_1),.din52(llike_53_load_1),.din53(llike_54_load_1),.din54(llike_55_load_1),.din55(llike_56_load_1),.din56(llike_57_load_1),.din57(llike_58_load_1),.din58(llike_59_load_1),.din59(llike_60_load_1),.din60(llike_61_load_1),.din61(llike_62_load_1),.din62(llike_63_load_1),.def(tmp_fu_777_p127),.sel(ap_sig_allocacmp_prev_1),.dout(tmp_fu_777_p129));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_125_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h1 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h3 ),.din2_WIDTH( 64 ),.CASE3( 6'h4 ),.din3_WIDTH( 64 ),.CASE4( 6'h5 ),.din4_WIDTH( 64 ),.CASE5( 6'h6 ),.din5_WIDTH( 64 ),.CASE6( 6'h7 ),.din6_WIDTH( 64 ),.CASE7( 6'h8 ),.din7_WIDTH( 64 ),.CASE8( 6'h9 ),.din8_WIDTH( 64 ),.CASE9( 6'hA ),.din9_WIDTH( 64 ),.CASE10( 6'hB ),.din10_WIDTH( 64 ),.CASE11( 6'hC ),.din11_WIDTH( 64 ),.CASE12( 6'hD ),.din12_WIDTH( 64 ),.CASE13( 6'hE ),.din13_WIDTH( 64 ),.CASE14( 6'hF ),.din14_WIDTH( 64 ),.CASE15( 6'h10 ),.din15_WIDTH( 64 ),.CASE16( 6'h11 ),.din16_WIDTH( 64 ),.CASE17( 6'h12 ),.din17_WIDTH( 64 ),.CASE18( 6'h13 ),.din18_WIDTH( 64 ),.CASE19( 6'h14 ),.din19_WIDTH( 64 ),.CASE20( 6'h15 ),.din20_WIDTH( 64 ),.CASE21( 6'h16 ),.din21_WIDTH( 64 ),.CASE22( 6'h17 ),.din22_WIDTH( 64 ),.CASE23( 6'h18 ),.din23_WIDTH( 64 ),.CASE24( 6'h19 ),.din24_WIDTH( 64 ),.CASE25( 6'h1A ),.din25_WIDTH( 64 ),.CASE26( 6'h1B ),.din26_WIDTH( 64 ),.CASE27( 6'h1C ),.din27_WIDTH( 64 ),.CASE28( 6'h1D ),.din28_WIDTH( 64 ),.CASE29( 6'h1E ),.din29_WIDTH( 64 ),.CASE30( 6'h1F ),.din30_WIDTH( 64 ),.CASE31( 6'h20 ),.din31_WIDTH( 64 ),.CASE32( 6'h21 ),.din32_WIDTH( 64 ),.CASE33( 6'h22 ),.din33_WIDTH( 64 ),.CASE34( 6'h23 ),.din34_WIDTH( 64 ),.CASE35( 6'h24 ),.din35_WIDTH( 64 ),.CASE36( 6'h25 ),.din36_WIDTH( 64 ),.CASE37( 6'h26 ),.din37_WIDTH( 64 ),.CASE38( 6'h27 ),.din38_WIDTH( 64 ),.CASE39( 6'h28 ),.din39_WIDTH( 64 ),.CASE40( 6'h29 ),.din40_WIDTH( 64 ),.CASE41( 6'h2A ),.din41_WIDTH( 64 ),.CASE42( 6'h2B ),.din42_WIDTH( 64 ),.CASE43( 6'h2C ),.din43_WIDTH( 64 ),.CASE44( 6'h2D ),.din44_WIDTH( 64 ),.CASE45( 6'h2E ),.din45_WIDTH( 64 ),.CASE46( 6'h2F ),.din46_WIDTH( 64 ),.CASE47( 6'h30 ),.din47_WIDTH( 64 ),.CASE48( 6'h31 ),.din48_WIDTH( 64 ),.CASE49( 6'h32 ),.din49_WIDTH( 64 ),.CASE50( 6'h33 ),.din50_WIDTH( 64 ),.CASE51( 6'h34 ),.din51_WIDTH( 64 ),.CASE52( 6'h35 ),.din52_WIDTH( 64 ),.CASE53( 6'h36 ),.din53_WIDTH( 64 ),.CASE54( 6'h37 ),.din54_WIDTH( 64 ),.CASE55( 6'h38 ),.din55_WIDTH( 64 ),.CASE56( 6'h39 ),.din56_WIDTH( 64 ),.CASE57( 6'h3A ),.din57_WIDTH( 64 ),.CASE58( 6'h3B ),.din58_WIDTH( 64 ),.CASE59( 6'h3C ),.din59_WIDTH( 64 ),.CASE60( 6'h3D ),.din60_WIDTH( 64 ),.CASE61( 6'h3E ),.din61_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_125_6_64_1_1_U74(.din0(llike_2_load_1),.din1(llike_3_load_1),.din2(llike_4_load_1),.din3(llike_5_load_1),.din4(llike_6_load_1),.din5(llike_7_load_1),.din6(llike_8_load_1),.din7(llike_9_load_1),.din8(llike_10_load_1),.din9(llike_11_load_1),.din10(llike_12_load_1),.din11(llike_13_load_1),.din12(llike_14_load_1),.din13(llike_15_load_1),.din14(llike_16_load_1),.din15(llike_17_load_1),.din16(llike_18_load_1),.din17(llike_19_load_1),.din18(llike_20_load_1),.din19(llike_21_load_1),.din20(llike_22_load_1),.din21(llike_23_load_1),.din22(llike_24_load_1),.din23(llike_25_load_1),.din24(llike_26_load_1),.din25(llike_27_load_1),.din26(llike_28_load_1),.din27(llike_29_load_1),.din28(llike_30_load_1),.din29(llike_31_load_1),.din30(llike_32_load_1),.din31(llike_33_load_1),.din32(llike_34_load_1),.din33(llike_35_load_1),.din34(llike_36_load_1),.din35(llike_37_load_1),.din36(llike_38_load_1),.din37(llike_39_load_1),.din38(llike_40_load_1),.din39(llike_41_load_1),.din40(llike_42_load_1),.din41(llike_43_load_1),.din42(llike_44_load_1),.din43(llike_45_load_1),.din44(llike_46_load_1),.din45(llike_47_load_1),.din46(llike_48_load_1),.din47(llike_49_load_1),.din48(llike_50_load_1),.din49(llike_51_load_1),.din50(llike_52_load_1),.din51(llike_53_load_1),.din52(llike_54_load_1),.din53(llike_55_load_1),.din54(llike_56_load_1),.din55(llike_57_load_1),.din56(llike_58_load_1),.din57(llike_59_load_1),.din58(llike_60_load_1),.din59(llike_61_load_1),.din60(llike_62_load_1),.din61(llike_63_load_1),.def(tmp_1_fu_1064_p125),.sel(ap_sig_allocacmp_prev_1),.dout(tmp_1_fu_1064_p127));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0)) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_316 <= min_p_66;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_3_reg_1570_pp0_iter4_reg == 1'd0))) begin
        min_p_fu_316 <= min_p_71_fu_1530_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_3_fu_1056_p3 == 1'd0))) begin
            prev_fu_320 <= add_ln25_1_fu_1337_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            prev_fu_320 <= 6'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1_reg_1604 <= grp_fu_3802_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add52_1_reg_1609 <= grp_fu_3802_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1635 <= and_ln29_1_fu_1436_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_67_reg_1621 <= min_p_fu_316;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_69_reg_1640 <= min_p_69_fu_1442_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        p_32_reg_1628 <= grp_fu_3802_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_reg_1614 <= grp_fu_3802_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_132_reg_1647 <= grp_fu_6725_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_1574 <= tmp_1_fu_1064_p127;
        tmp_3_reg_1570 <= add_ln25_fu_1050_p2[32'd6];
        tmp_3_reg_1570_pp0_iter1_reg <= tmp_3_reg_1570;
        tmp_3_reg_1570_pp0_iter2_reg <= tmp_3_reg_1570_pp0_iter1_reg;
        tmp_3_reg_1570_pp0_iter3_reg <= tmp_3_reg_1570_pp0_iter2_reg;
        tmp_3_reg_1570_pp0_iter4_reg <= tmp_3_reg_1570_pp0_iter3_reg;
        tmp_reg_1560 <= tmp_fu_777_p129;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        transition_load_1_reg_1584 <= transition_q1;
        transition_load_3_reg_1589 <= transition_q0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1570 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_3_reg_1570_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_320;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_752_p0 = add52_1_reg_1609;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_752_p0 = add1_reg_1604;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_752_p0 = tmp_1_reg_1574;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_752_p0 = tmp_reg_1560;
    end else begin
        grp_fu_752_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_752_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_752_p1 = bitcast_ln27_1_fu_1352_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_752_p1 = bitcast_ln27_fu_1348_p1;
    end else begin
        grp_fu_752_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_756_p0 = p_32_reg_1628;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_756_p0 = p_reg_1614;
    end else begin
        grp_fu_756_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_756_p1 = min_p_69_fu_1442_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_756_p1 = min_p_fu_316;
    end else begin
        grp_fu_756_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_3_reg_1570_pp0_iter3_reg == 1'd1))) begin
        min_p_70_out_ap_vld = 1'b1;
    end else begin
        min_p_70_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_1_fu_1337_p2 = (ap_sig_allocacmp_prev_1 + 6'd2);
assign add_ln25_fu_1050_p2 = (zext_ln10_fu_773_p1 + 7'd1);
assign add_ln27_1_fu_1324_p3 = {{trunc_ln27_fu_1320_p1}, {empty}};
assign add_ln_fu_1037_p3 = {{ap_sig_allocacmp_prev_1}, {empty}};
assign and_ln29_1_fu_1436_p2 = (or_ln29_1_fu_1424_p2 & and_ln29_fu_1430_p2);
assign and_ln29_2_fu_1519_p2 = (or_ln29_3_fu_1513_p2 & or_ln29_2_fu_1495_p2);
assign and_ln29_3_fu_1525_p2 = (tmp_132_reg_1647 & and_ln29_2_fu_1519_p2);
assign and_ln29_fu_1430_p2 = (or_ln29_fu_1406_p2 & grp_fu_6725_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign bitcast_ln27_1_fu_1352_p1 = transition_load_3_reg_1589;
assign bitcast_ln27_fu_1348_p1 = transition_load_1_reg_1584;
assign bitcast_ln29_1_fu_1377_p1 = min_p_67_reg_1621;
assign bitcast_ln29_2_fu_1449_p1 = p_32_reg_1628;
assign bitcast_ln29_3_fu_1466_p1 = min_p_69_reg_1640;
assign bitcast_ln29_fu_1360_p1 = p_reg_1614;
assign grp_fu_3802_p_ce = 1'b1;
assign grp_fu_3802_p_din0 = grp_fu_752_p0;
assign grp_fu_3802_p_din1 = grp_fu_752_p1;
assign grp_fu_3802_p_opcode = 2'd0;
assign grp_fu_6725_p_ce = 1'b1;
assign grp_fu_6725_p_din0 = grp_fu_756_p0;
assign grp_fu_6725_p_din1 = grp_fu_756_p1;
assign grp_fu_6725_p_opcode = 5'd4;
assign icmp_ln29_1_fu_1400_p2 = ((trunc_ln29_fu_1373_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1412_p2 = ((tmp_128_fu_1380_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1418_p2 = ((trunc_ln29_1_fu_1390_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1483_p2 = ((tmp_130_fu_1452_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1489_p2 = ((trunc_ln29_2_fu_1462_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1501_p2 = ((tmp_131_fu_1469_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1507_p2 = ((trunc_ln29_3_fu_1479_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1394_p2 = ((tmp_s_fu_1363_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign min_p_69_fu_1442_p3 = ((and_ln29_1_reg_1635[0:0] == 1'b1) ? p_reg_1614 : min_p_67_reg_1621);
assign min_p_70_out = ((and_ln29_1_reg_1635[0:0] == 1'b1) ? p_reg_1614 : min_p_67_reg_1621);
assign min_p_71_fu_1530_p3 = ((and_ln29_3_fu_1525_p2[0:0] == 1'b1) ? p_32_reg_1628 : min_p_69_reg_1640);
assign or_ln29_1_fu_1424_p2 = (icmp_ln29_3_fu_1418_p2 | icmp_ln29_2_fu_1412_p2);
assign or_ln29_2_fu_1495_p2 = (icmp_ln29_5_fu_1489_p2 | icmp_ln29_4_fu_1483_p2);
assign or_ln29_3_fu_1513_p2 = (icmp_ln29_7_fu_1507_p2 | icmp_ln29_6_fu_1501_p2);
assign or_ln29_fu_1406_p2 = (icmp_ln29_fu_1394_p2 | icmp_ln29_1_fu_1400_p2);
assign tmp_128_fu_1380_p4 = {{bitcast_ln29_1_fu_1377_p1[62:52]}};
assign tmp_130_fu_1452_p4 = {{bitcast_ln29_2_fu_1449_p1[62:52]}};
assign tmp_131_fu_1469_p4 = {{bitcast_ln29_3_fu_1466_p1[62:52]}};
assign tmp_1_fu_1064_p125 = 'bx;
assign tmp_3_fu_1056_p3 = add_ln25_fu_1050_p2[32'd6];
assign tmp_fu_777_p127 = 'bx;
assign tmp_s_fu_1363_p4 = {{bitcast_ln29_fu_1360_p1[62:52]}};
assign transition_address0 = zext_ln27_1_fu_1332_p1;
assign transition_address1 = zext_ln27_fu_1045_p1;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln27_fu_1320_p1 = add_ln25_fu_1050_p2[5:0];
assign trunc_ln29_1_fu_1390_p1 = bitcast_ln29_1_fu_1377_p1[51:0];
assign trunc_ln29_2_fu_1462_p1 = bitcast_ln29_2_fu_1449_p1[51:0];
assign trunc_ln29_3_fu_1479_p1 = bitcast_ln29_3_fu_1466_p1[51:0];
assign trunc_ln29_fu_1373_p1 = bitcast_ln29_fu_1360_p1[51:0];
assign zext_ln10_fu_773_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln27_1_fu_1332_p1 = add_ln27_1_fu_1324_p3;
assign zext_ln27_fu_1045_p1 = add_ln_fu_1037_p3;
endmodule 