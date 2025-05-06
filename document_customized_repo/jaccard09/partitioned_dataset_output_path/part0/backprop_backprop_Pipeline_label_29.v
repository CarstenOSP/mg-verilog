
module backprop_backprop_Pipeline_label_29 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_1_q0,v3_0_address0,v3_0_ce0,v3_0_we0,v3_0_d0,v3_0_q0,v9_64_reload,v9_65_reload,v9_66_reload,v9_67_reload,v9_68_reload,v9_69_reload,v9_70_reload,v9_71_reload,v9_72_reload,v9_73_reload,v9_74_reload,v9_75_reload,v9_76_reload,v9_77_reload,v9_78_reload,v9_79_reload,v9_80_reload,v9_81_reload,v9_82_reload,v9_83_reload,v9_84_reload,v9_85_reload,v9_86_reload,v9_87_reload,v9_88_reload,v9_89_reload,v9_90_reload,v9_91_reload,v9_92_reload,v9_93_reload,v9_94_reload,v9_95_reload,v9_96_reload,v9_97_reload,v9_98_reload,v9_99_reload,v9_100_reload,v9_101_reload,v9_102_reload,v9_103_reload,v9_104_reload,v9_105_reload,v9_106_reload,v9_107_reload,v9_108_reload,v9_109_reload,v9_110_reload,v9_111_reload,v9_112_reload,v9_113_reload,v9_114_reload,v9_115_reload,v9_116_reload,v9_117_reload,v9_118_reload,v9_119_reload,v9_120_reload,v9_121_reload,v9_122_reload,v9_123_reload,v9_124_reload,v9_125_reload,v9_126_reload,v9_127_reload,v161_out,v161_out_ap_vld,grp_fu_2879_p_din0,grp_fu_2879_p_din1,grp_fu_2879_p_opcode,grp_fu_2879_p_dout0,grp_fu_2879_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [63:0] v3_1_d0;
input  [63:0] v3_1_q0;
output  [4:0] v3_0_address0;
output   v3_0_ce0;
output   v3_0_we0;
output  [63:0] v3_0_d0;
input  [63:0] v3_0_q0;
input  [63:0] v9_64_reload;
input  [63:0] v9_65_reload;
input  [63:0] v9_66_reload;
input  [63:0] v9_67_reload;
input  [63:0] v9_68_reload;
input  [63:0] v9_69_reload;
input  [63:0] v9_70_reload;
input  [63:0] v9_71_reload;
input  [63:0] v9_72_reload;
input  [63:0] v9_73_reload;
input  [63:0] v9_74_reload;
input  [63:0] v9_75_reload;
input  [63:0] v9_76_reload;
input  [63:0] v9_77_reload;
input  [63:0] v9_78_reload;
input  [63:0] v9_79_reload;
input  [63:0] v9_80_reload;
input  [63:0] v9_81_reload;
input  [63:0] v9_82_reload;
input  [63:0] v9_83_reload;
input  [63:0] v9_84_reload;
input  [63:0] v9_85_reload;
input  [63:0] v9_86_reload;
input  [63:0] v9_87_reload;
input  [63:0] v9_88_reload;
input  [63:0] v9_89_reload;
input  [63:0] v9_90_reload;
input  [63:0] v9_91_reload;
input  [63:0] v9_92_reload;
input  [63:0] v9_93_reload;
input  [63:0] v9_94_reload;
input  [63:0] v9_95_reload;
input  [63:0] v9_96_reload;
input  [63:0] v9_97_reload;
input  [63:0] v9_98_reload;
input  [63:0] v9_99_reload;
input  [63:0] v9_100_reload;
input  [63:0] v9_101_reload;
input  [63:0] v9_102_reload;
input  [63:0] v9_103_reload;
input  [63:0] v9_104_reload;
input  [63:0] v9_105_reload;
input  [63:0] v9_106_reload;
input  [63:0] v9_107_reload;
input  [63:0] v9_108_reload;
input  [63:0] v9_109_reload;
input  [63:0] v9_110_reload;
input  [63:0] v9_111_reload;
input  [63:0] v9_112_reload;
input  [63:0] v9_113_reload;
input  [63:0] v9_114_reload;
input  [63:0] v9_115_reload;
input  [63:0] v9_116_reload;
input  [63:0] v9_117_reload;
input  [63:0] v9_118_reload;
input  [63:0] v9_119_reload;
input  [63:0] v9_120_reload;
input  [63:0] v9_121_reload;
input  [63:0] v9_122_reload;
input  [63:0] v9_123_reload;
input  [63:0] v9_124_reload;
input  [63:0] v9_125_reload;
input  [63:0] v9_126_reload;
input  [63:0] v9_127_reload;
output  [63:0] v161_out;
output   v161_out_ap_vld;
output  [63:0] grp_fu_2879_p_din0;
output  [63:0] grp_fu_2879_p_din1;
output  [1:0] grp_fu_2879_p_opcode;
input  [63:0] grp_fu_2879_p_dout0;
output   grp_fu_2879_p_ce;
reg ap_idle;
reg v161_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln264_reg_1108;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v160_1_reg_1102;
wire   [0:0] icmp_ln264_fu_755_p2;
reg   [0:0] icmp_ln264_reg_1108_pp0_iter1_reg;
reg   [0:0] icmp_ln264_reg_1108_pp0_iter2_reg;
reg   [0:0] icmp_ln264_reg_1108_pp0_iter3_reg;
wire   [63:0] v162_fu_781_p131;
reg   [63:0] v162_reg_1112;
reg   [4:0] v3_0_addr_reg_1117;
reg   [4:0] v3_0_addr_reg_1117_pp0_iter1_reg;
reg   [4:0] v3_0_addr_reg_1117_pp0_iter2_reg;
reg   [4:0] v3_1_addr_reg_1122;
reg   [4:0] v3_1_addr_reg_1122_pp0_iter1_reg;
reg   [4:0] v3_1_addr_reg_1122_pp0_iter2_reg;
wire   [6:0] add_ln264_fu_1045_p2;
reg   [6:0] add_ln264_reg_1127;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] trunc_ln264_fu_1050_p1;
reg   [0:0] trunc_ln264_reg_1132;
reg   [0:0] trunc_ln264_reg_1132_pp0_iter1_reg;
reg   [0:0] trunc_ln264_reg_1132_pp0_iter2_reg;
wire   [63:0] select_ln268_fu_1053_p3;
reg   [63:0] select_ln268_reg_1136;
wire   [63:0] grp_fu_737_p2;
reg   [63:0] v163_reg_1141;
wire   [63:0] v164_fu_1065_p1;
reg   [63:0] v165_reg_1151;
reg   [63:0] v166_reg_1158;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln265_fu_775_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] v159_fu_308;
reg   [63:0] ap_sig_allocacmp_v159_load_1;
wire    ap_block_pp0_stage2;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage2;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v160_fu_312;
reg   [6:0] ap_sig_allocacmp_v160_1;
wire    ap_block_pp0_stage2_01001;
reg    v3_0_ce0_local;
reg   [4:0] v3_0_address0_local;
reg    v3_0_we0_local;
wire   [63:0] bitcast_ln270_fu_1069_p1;
reg    v3_1_ce0_local;
reg   [4:0] v3_1_address0_local;
reg    v3_1_we0_local;
reg   [63:0] grp_fu_733_p0;
reg   [63:0] grp_fu_733_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_737_p0;
reg   [63:0] grp_fu_737_p1;
wire   [4:0] lshr_ln3_fu_765_p4;
wire   [63:0] v162_fu_781_p129;
wire   [5:0] v162_fu_781_p130;
reg   [1:0] grp_fu_733_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] v162_fu_781_p1;
wire   [5:0] v162_fu_781_p3;
wire   [5:0] v162_fu_781_p5;
wire   [5:0] v162_fu_781_p7;
wire   [5:0] v162_fu_781_p9;
wire   [5:0] v162_fu_781_p11;
wire   [5:0] v162_fu_781_p13;
wire   [5:0] v162_fu_781_p15;
wire   [5:0] v162_fu_781_p17;
wire   [5:0] v162_fu_781_p19;
wire   [5:0] v162_fu_781_p21;
wire   [5:0] v162_fu_781_p23;
wire   [5:0] v162_fu_781_p25;
wire   [5:0] v162_fu_781_p27;
wire   [5:0] v162_fu_781_p29;
wire   [5:0] v162_fu_781_p31;
wire   [5:0] v162_fu_781_p33;
wire   [5:0] v162_fu_781_p35;
wire   [5:0] v162_fu_781_p37;
wire   [5:0] v162_fu_781_p39;
wire   [5:0] v162_fu_781_p41;
wire   [5:0] v162_fu_781_p43;
wire   [5:0] v162_fu_781_p45;
wire   [5:0] v162_fu_781_p47;
wire   [5:0] v162_fu_781_p49;
wire   [5:0] v162_fu_781_p51;
wire   [5:0] v162_fu_781_p53;
wire   [5:0] v162_fu_781_p55;
wire   [5:0] v162_fu_781_p57;
wire   [5:0] v162_fu_781_p59;
wire   [5:0] v162_fu_781_p61;
wire   [5:0] v162_fu_781_p63;
wire  signed [5:0] v162_fu_781_p65;
wire  signed [5:0] v162_fu_781_p67;
wire  signed [5:0] v162_fu_781_p69;
wire  signed [5:0] v162_fu_781_p71;
wire  signed [5:0] v162_fu_781_p73;
wire  signed [5:0] v162_fu_781_p75;
wire  signed [5:0] v162_fu_781_p77;
wire  signed [5:0] v162_fu_781_p79;
wire  signed [5:0] v162_fu_781_p81;
wire  signed [5:0] v162_fu_781_p83;
wire  signed [5:0] v162_fu_781_p85;
wire  signed [5:0] v162_fu_781_p87;
wire  signed [5:0] v162_fu_781_p89;
wire  signed [5:0] v162_fu_781_p91;
wire  signed [5:0] v162_fu_781_p93;
wire  signed [5:0] v162_fu_781_p95;
wire  signed [5:0] v162_fu_781_p97;
wire  signed [5:0] v162_fu_781_p99;
wire  signed [5:0] v162_fu_781_p101;
wire  signed [5:0] v162_fu_781_p103;
wire  signed [5:0] v162_fu_781_p105;
wire  signed [5:0] v162_fu_781_p107;
wire  signed [5:0] v162_fu_781_p109;
wire  signed [5:0] v162_fu_781_p111;
wire  signed [5:0] v162_fu_781_p113;
wire  signed [5:0] v162_fu_781_p115;
wire  signed [5:0] v162_fu_781_p117;
wire  signed [5:0] v162_fu_781_p119;
wire  signed [5:0] v162_fu_781_p121;
wire  signed [5:0] v162_fu_781_p123;
wire  signed [5:0] v162_fu_781_p125;
wire  signed [5:0] v162_fu_781_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v159_fu_308 = 64'd0;
#0 v160_fu_312 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U924(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_737_p0),.din1(grp_fu_737_p1),.ce(1'b1),.dout(grp_fu_737_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U925(.din0(v9_64_reload),.din1(v9_65_reload),.din2(v9_66_reload),.din3(v9_67_reload),.din4(v9_68_reload),.din5(v9_69_reload),.din6(v9_70_reload),.din7(v9_71_reload),.din8(v9_72_reload),.din9(v9_73_reload),.din10(v9_74_reload),.din11(v9_75_reload),.din12(v9_76_reload),.din13(v9_77_reload),.din14(v9_78_reload),.din15(v9_79_reload),.din16(v9_80_reload),.din17(v9_81_reload),.din18(v9_82_reload),.din19(v9_83_reload),.din20(v9_84_reload),.din21(v9_85_reload),.din22(v9_86_reload),.din23(v9_87_reload),.din24(v9_88_reload),.din25(v9_89_reload),.din26(v9_90_reload),.din27(v9_91_reload),.din28(v9_92_reload),.din29(v9_93_reload),.din30(v9_94_reload),.din31(v9_95_reload),.din32(v9_96_reload),.din33(v9_97_reload),.din34(v9_98_reload),.din35(v9_99_reload),.din36(v9_100_reload),.din37(v9_101_reload),.din38(v9_102_reload),.din39(v9_103_reload),.din40(v9_104_reload),.din41(v9_105_reload),.din42(v9_106_reload),.din43(v9_107_reload),.din44(v9_108_reload),.din45(v9_109_reload),.din46(v9_110_reload),.din47(v9_111_reload),.din48(v9_112_reload),.din49(v9_113_reload),.din50(v9_114_reload),.din51(v9_115_reload),.din52(v9_116_reload),.din53(v9_117_reload),.din54(v9_118_reload),.din55(v9_119_reload),.din56(v9_120_reload),.din57(v9_121_reload),.din58(v9_122_reload),.din59(v9_123_reload),.din60(v9_124_reload),.din61(v9_125_reload),.din62(v9_126_reload),.din63(v9_127_reload),.def(v162_fu_781_p129),.sel(v162_fu_781_p130),.dout(v162_fu_781_p131));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v159_fu_308 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v159_fu_308 <= grp_fu_2879_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v160_fu_312 <= 7'd0;
    end else if (((icmp_ln264_reg_1108 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v160_fu_312 <= add_ln264_reg_1127;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln264_reg_1127 <= add_ln264_fu_1045_p2;
        select_ln268_reg_1136 <= select_ln268_fu_1053_p3;
        trunc_ln264_reg_1132 <= trunc_ln264_fu_1050_p1;
        trunc_ln264_reg_1132_pp0_iter1_reg <= trunc_ln264_reg_1132;
        trunc_ln264_reg_1132_pp0_iter2_reg <= trunc_ln264_reg_1132_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln264_reg_1108 <= icmp_ln264_fu_755_p2;
        icmp_ln264_reg_1108_pp0_iter1_reg <= icmp_ln264_reg_1108;
        icmp_ln264_reg_1108_pp0_iter2_reg <= icmp_ln264_reg_1108_pp0_iter1_reg;
        icmp_ln264_reg_1108_pp0_iter3_reg <= icmp_ln264_reg_1108_pp0_iter2_reg;
        v160_1_reg_1102 <= ap_sig_allocacmp_v160_1;
        v162_reg_1112 <= v162_fu_781_p131;
        v3_0_addr_reg_1117 <= zext_ln265_fu_775_p1;
        v3_0_addr_reg_1117_pp0_iter1_reg <= v3_0_addr_reg_1117;
        v3_0_addr_reg_1117_pp0_iter2_reg <= v3_0_addr_reg_1117_pp0_iter1_reg;
        v3_1_addr_reg_1122 <= zext_ln265_fu_775_p1;
        v3_1_addr_reg_1122_pp0_iter1_reg <= v3_1_addr_reg_1122;
        v3_1_addr_reg_1122_pp0_iter2_reg <= v3_1_addr_reg_1122_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v163_reg_1141 <= grp_fu_737_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v165_reg_1151 <= grp_fu_2879_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v166_reg_1158 <= grp_fu_737_p2;
    end
end
always @ (*) begin
    if (((icmp_ln264_reg_1108 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln264_reg_1108_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_sig_allocacmp_v159_load_1 = grp_fu_2879_p_dout0;
    end else begin
        ap_sig_allocacmp_v159_load_1 = v159_fu_308;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v160_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v160_1 = v160_fu_312;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_733_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_733_opcode = 2'd0;
    end else begin
        grp_fu_733_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_733_p0 = ap_sig_allocacmp_v159_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_733_p0 = v164_fu_1065_p1;
    end else begin
        grp_fu_733_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_733_p1 = v166_reg_1158;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_733_p1 = v163_reg_1141;
    end else begin
        grp_fu_733_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_737_p0 = v165_reg_1151;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_737_p0 = v162_reg_1112;
    end else begin
        grp_fu_737_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_737_p1 = v165_reg_1151;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_737_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_737_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln264_reg_1108_pp0_iter3_reg == 1'd1))) begin
        v161_out_ap_vld = 1'b1;
    end else begin
        v161_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_0_address0_local = v3_0_addr_reg_1117_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_0_address0_local = zext_ln265_fu_775_p1;
    end else begin
        v3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_0_ce0_local = 1'b1;
    end else begin
        v3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln264_reg_1132_pp0_iter2_reg == 1'd0))) begin
        v3_0_we0_local = 1'b1;
    end else begin
        v3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_address0_local = v3_1_addr_reg_1122_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_address0_local = zext_ln265_fu_775_p1;
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln264_reg_1132_pp0_iter2_reg == 1'd1))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln264_fu_1045_p2 = (v160_1_reg_1102 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln270_fu_1069_p1 = v165_reg_1151;
assign grp_fu_2879_p_ce = 1'b1;
assign grp_fu_2879_p_din0 = grp_fu_733_p0;
assign grp_fu_2879_p_din1 = grp_fu_733_p1;
assign grp_fu_2879_p_opcode = grp_fu_733_opcode;
assign icmp_ln264_fu_755_p2 = ((ap_sig_allocacmp_v160_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln3_fu_765_p4 = {{ap_sig_allocacmp_v160_1[5:1]}};
assign select_ln268_fu_1053_p3 = ((trunc_ln264_fu_1050_p1[0:0] == 1'b1) ? v3_1_q0 : v3_0_q0);
assign trunc_ln264_fu_1050_p1 = v160_1_reg_1102[0:0];
assign v161_out = v159_fu_308;
assign v162_fu_781_p129 = 'bx;
assign v162_fu_781_p130 = ap_sig_allocacmp_v160_1[5:0];
assign v164_fu_1065_p1 = select_ln268_reg_1136;
assign v3_0_address0 = v3_0_address0_local;
assign v3_0_ce0 = v3_0_ce0_local;
assign v3_0_d0 = bitcast_ln270_fu_1069_p1;
assign v3_0_we0 = v3_0_we0_local;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = bitcast_ln270_fu_1069_p1;
assign v3_1_we0 = v3_1_we0_local;
assign zext_ln265_fu_775_p1 = lshr_ln3_fu_765_p4;
endmodule 
