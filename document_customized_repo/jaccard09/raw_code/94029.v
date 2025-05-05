module gesummv_gesummv_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,alpha,mux_case_092_reload,mux_case_1134_reload,mux_case_2176_reload,mux_case_3218_reload,mux_case_42510_reload,mux_case_52912_reload,mux_case_63314_reload,mux_case_73716_reload,mux_case_84118_reload,mux_case_94520_reload,mux_case_104922_reload,mux_case_115324_reload,mux_case_125726_reload,mux_case_136128_reload,mux_case_146530_reload,mux_case_156932_reload,mux_case_167334_reload,mux_case_177736_reload,mux_case_188138_reload,mux_case_198540_reload,mux_case_208942_reload,mux_case_219344_reload,mux_case_229746_reload,mux_case_2310148_reload,mux_case_2410550_reload,mux_case_2510952_reload,mux_case_2611354_reload,mux_case_2711756_reload,mux_case_2812158_reload,mux_case_2912560_reload,mux_case_3012962_reload,mux_case_3113364_reload,mux_case_3213766_reload,mux_case_3314168_reload,mux_case_3414570_reload,mux_case_3514972_reload,mux_case_3615374_reload,mux_case_3715776_reload,mux_case_3816178_reload,mux_case_3916580_reload,mux_case_4016982_reload,mux_case_4117384_reload,mux_case_4217786_reload,mux_case_4318188_reload,mux_case_4418590_reload,mux_case_4518992_reload,mux_case_4619394_reload,mux_case_4719796_reload,mux_case_4820198_reload,mux_case_49205100_reload,mux_case_50209102_reload,mux_case_51213104_reload,mux_case_52217106_reload,mux_case_53221108_reload,mux_case_54225110_reload,mux_case_55229112_reload,mux_case_56233114_reload,mux_case_57237116_reload,mux_case_58241118_reload,mux_case_59245120_reload,mux_case_60249122_reload,mux_case_61253124_reload,mux_case_62257126_reload,mux_case_63261128_reload,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,grp_fu_1925_p_din0,grp_fu_1925_p_din1,grp_fu_1925_p_opcode,grp_fu_1925_p_dout0,grp_fu_1925_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
input  [31:0] alpha;
input  [31:0] mux_case_092_reload;
input  [31:0] mux_case_1134_reload;
input  [31:0] mux_case_2176_reload;
input  [31:0] mux_case_3218_reload;
input  [31:0] mux_case_42510_reload;
input  [31:0] mux_case_52912_reload;
input  [31:0] mux_case_63314_reload;
input  [31:0] mux_case_73716_reload;
input  [31:0] mux_case_84118_reload;
input  [31:0] mux_case_94520_reload;
input  [31:0] mux_case_104922_reload;
input  [31:0] mux_case_115324_reload;
input  [31:0] mux_case_125726_reload;
input  [31:0] mux_case_136128_reload;
input  [31:0] mux_case_146530_reload;
input  [31:0] mux_case_156932_reload;
input  [31:0] mux_case_167334_reload;
input  [31:0] mux_case_177736_reload;
input  [31:0] mux_case_188138_reload;
input  [31:0] mux_case_198540_reload;
input  [31:0] mux_case_208942_reload;
input  [31:0] mux_case_219344_reload;
input  [31:0] mux_case_229746_reload;
input  [31:0] mux_case_2310148_reload;
input  [31:0] mux_case_2410550_reload;
input  [31:0] mux_case_2510952_reload;
input  [31:0] mux_case_2611354_reload;
input  [31:0] mux_case_2711756_reload;
input  [31:0] mux_case_2812158_reload;
input  [31:0] mux_case_2912560_reload;
input  [31:0] mux_case_3012962_reload;
input  [31:0] mux_case_3113364_reload;
input  [31:0] mux_case_3213766_reload;
input  [31:0] mux_case_3314168_reload;
input  [31:0] mux_case_3414570_reload;
input  [31:0] mux_case_3514972_reload;
input  [31:0] mux_case_3615374_reload;
input  [31:0] mux_case_3715776_reload;
input  [31:0] mux_case_3816178_reload;
input  [31:0] mux_case_3916580_reload;
input  [31:0] mux_case_4016982_reload;
input  [31:0] mux_case_4117384_reload;
input  [31:0] mux_case_4217786_reload;
input  [31:0] mux_case_4318188_reload;
input  [31:0] mux_case_4418590_reload;
input  [31:0] mux_case_4518992_reload;
input  [31:0] mux_case_4619394_reload;
input  [31:0] mux_case_4719796_reload;
input  [31:0] mux_case_4820198_reload;
input  [31:0] mux_case_49205100_reload;
input  [31:0] mux_case_50209102_reload;
input  [31:0] mux_case_51213104_reload;
input  [31:0] mux_case_52217106_reload;
input  [31:0] mux_case_53221108_reload;
input  [31:0] mux_case_54225110_reload;
input  [31:0] mux_case_55229112_reload;
input  [31:0] mux_case_56233114_reload;
input  [31:0] mux_case_57237116_reload;
input  [31:0] mux_case_58241118_reload;
input  [31:0] mux_case_59245120_reload;
input  [31:0] mux_case_60249122_reload;
input  [31:0] mux_case_61253124_reload;
input  [31:0] mux_case_62257126_reload;
input  [31:0] mux_case_63261128_reload;
output  [5:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [31:0] grp_fu_1925_p_din0;
output  [31:0] grp_fu_1925_p_din1;
output  [1:0] grp_fu_1925_p_opcode;
input  [31:0] grp_fu_1925_p_dout0;
output   grp_fu_1925_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln25_reg_1436;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln25_fu_759_p2;
reg   [0:0] icmp_ln25_reg_1436_pp0_iter1_reg;
wire   [6:0] select_ln6_fu_789_p3;
reg   [6:0] select_ln6_reg_1440;
wire   [5:0] empty_fu_805_p1;
reg   [5:0] empty_reg_1447;
wire   [0:0] first_iter_1_fu_809_p2;
reg   [0:0] first_iter_1_reg_1452;
reg   [0:0] first_iter_1_reg_1452_pp0_iter1_reg;
reg   [5:0] tmp1_addr_reg_1456;
reg   [5:0] tmp1_addr_reg_1456_pp0_iter1_reg;
reg   [5:0] tmp1_addr_reg_1456_pp0_iter2_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_fu_854_p131;
reg   [31:0] tmp_reg_1466;
wire   [0:0] icmp_ln26_1_fu_1059_p2;
reg   [0:0] icmp_ln26_1_reg_1471;
reg   [0:0] icmp_ln26_1_reg_1471_pp0_iter1_reg;
reg   [0:0] icmp_ln26_1_reg_1471_pp0_iter2_reg;
wire   [31:0] grp_fu_737_p2;
reg   [31:0] mul3_reg_1475;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] buff_A_load_reg_1480;
reg   [31:0] mul_reg_1485;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] add_reg_1495;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln25_fu_815_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_1_fu_846_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_302;
wire   [6:0] add_ln26_fu_1054_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_1_fu_306;
wire   [6:0] select_ln25_fu_797_p3;
reg   [6:0] ap_sig_allocacmp_i_1_load;
reg   [12:0] indvar_flatten135_fu_310;
wire   [12:0] add_ln25_1_fu_765_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten135_load;
reg   [31:0] add16_fu_314;
wire    ap_block_pp0_stage3;
reg    buff_A_ce0_local;
reg    tmp1_ce0_local;
reg   [5:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage2;
reg   [31:0] grp_fu_737_p0;
reg   [31:0] grp_fu_737_p1;
wire    ap_block_pp0_stage7;
wire   [0:0] icmp_ln26_fu_783_p2;
wire   [6:0] add_ln25_fu_777_p2;
wire   [11:0] tmp_2_fu_830_p3;
wire   [11:0] zext_ln27_fu_837_p1;
wire   [11:0] add_ln27_fu_840_p2;
wire   [31:0] tmp_fu_854_p129;
wire   [5:0] tmp_fu_854_p130;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
reg    ap_condition_exit_pp0_iter1_stage2;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
reg    ap_condition_789;
wire   [5:0] tmp_fu_854_p1;
wire   [5:0] tmp_fu_854_p3;
wire   [5:0] tmp_fu_854_p5;
wire   [5:0] tmp_fu_854_p7;
wire   [5:0] tmp_fu_854_p9;
wire   [5:0] tmp_fu_854_p11;
wire   [5:0] tmp_fu_854_p13;
wire   [5:0] tmp_fu_854_p15;
wire   [5:0] tmp_fu_854_p17;
wire   [5:0] tmp_fu_854_p19;
wire   [5:0] tmp_fu_854_p21;
wire   [5:0] tmp_fu_854_p23;
wire   [5:0] tmp_fu_854_p25;
wire   [5:0] tmp_fu_854_p27;
wire   [5:0] tmp_fu_854_p29;
wire   [5:0] tmp_fu_854_p31;
wire   [5:0] tmp_fu_854_p33;
wire   [5:0] tmp_fu_854_p35;
wire   [5:0] tmp_fu_854_p37;
wire   [5:0] tmp_fu_854_p39;
wire   [5:0] tmp_fu_854_p41;
wire   [5:0] tmp_fu_854_p43;
wire   [5:0] tmp_fu_854_p45;
wire   [5:0] tmp_fu_854_p47;
wire   [5:0] tmp_fu_854_p49;
wire   [5:0] tmp_fu_854_p51;
wire   [5:0] tmp_fu_854_p53;
wire   [5:0] tmp_fu_854_p55;
wire   [5:0] tmp_fu_854_p57;
wire   [5:0] tmp_fu_854_p59;
wire   [5:0] tmp_fu_854_p61;
wire   [5:0] tmp_fu_854_p63;
wire  signed [5:0] tmp_fu_854_p65;
wire  signed [5:0] tmp_fu_854_p67;
wire  signed [5:0] tmp_fu_854_p69;
wire  signed [5:0] tmp_fu_854_p71;
wire  signed [5:0] tmp_fu_854_p73;
wire  signed [5:0] tmp_fu_854_p75;
wire  signed [5:0] tmp_fu_854_p77;
wire  signed [5:0] tmp_fu_854_p79;
wire  signed [5:0] tmp_fu_854_p81;
wire  signed [5:0] tmp_fu_854_p83;
wire  signed [5:0] tmp_fu_854_p85;
wire  signed [5:0] tmp_fu_854_p87;
wire  signed [5:0] tmp_fu_854_p89;
wire  signed [5:0] tmp_fu_854_p91;
wire  signed [5:0] tmp_fu_854_p93;
wire  signed [5:0] tmp_fu_854_p95;
wire  signed [5:0] tmp_fu_854_p97;
wire  signed [5:0] tmp_fu_854_p99;
wire  signed [5:0] tmp_fu_854_p101;
wire  signed [5:0] tmp_fu_854_p103;
wire  signed [5:0] tmp_fu_854_p105;
wire  signed [5:0] tmp_fu_854_p107;
wire  signed [5:0] tmp_fu_854_p109;
wire  signed [5:0] tmp_fu_854_p111;
wire  signed [5:0] tmp_fu_854_p113;
wire  signed [5:0] tmp_fu_854_p115;
wire  signed [5:0] tmp_fu_854_p117;
wire  signed [5:0] tmp_fu_854_p119;
wire  signed [5:0] tmp_fu_854_p121;
wire  signed [5:0] tmp_fu_854_p123;
wire  signed [5:0] tmp_fu_854_p125;
wire  signed [5:0] tmp_fu_854_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_302 = 7'd0;
#0 i_1_fu_306 = 7'd0;
#0 indvar_flatten135_fu_310 = 13'd0;
#0 add16_fu_314 = 32'd0;
#0 ap_done_reg = 1'b0;
end
gesummv_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U137(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_737_p0),.din1(grp_fu_737_p1),.ce(1'b1),.dout(grp_fu_737_p2));
(* dissolve_hierarchy = "yes" *) gesummv_sparsemux_129_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h1 ),.din1_WIDTH( 32 ),.CASE2( 6'h2 ),.din2_WIDTH( 32 ),.CASE3( 6'h3 ),.din3_WIDTH( 32 ),.CASE4( 6'h4 ),.din4_WIDTH( 32 ),.CASE5( 6'h5 ),.din5_WIDTH( 32 ),.CASE6( 6'h6 ),.din6_WIDTH( 32 ),.CASE7( 6'h7 ),.din7_WIDTH( 32 ),.CASE8( 6'h8 ),.din8_WIDTH( 32 ),.CASE9( 6'h9 ),.din9_WIDTH( 32 ),.CASE10( 6'hA ),.din10_WIDTH( 32 ),.CASE11( 6'hB ),.din11_WIDTH( 32 ),.CASE12( 6'hC ),.din12_WIDTH( 32 ),.CASE13( 6'hD ),.din13_WIDTH( 32 ),.CASE14( 6'hE ),.din14_WIDTH( 32 ),.CASE15( 6'hF ),.din15_WIDTH( 32 ),.CASE16( 6'h10 ),.din16_WIDTH( 32 ),.CASE17( 6'h11 ),.din17_WIDTH( 32 ),.CASE18( 6'h12 ),.din18_WIDTH( 32 ),.CASE19( 6'h13 ),.din19_WIDTH( 32 ),.CASE20( 6'h14 ),.din20_WIDTH( 32 ),.CASE21( 6'h15 ),.din21_WIDTH( 32 ),.CASE22( 6'h16 ),.din22_WIDTH( 32 ),.CASE23( 6'h17 ),.din23_WIDTH( 32 ),.CASE24( 6'h18 ),.din24_WIDTH( 32 ),.CASE25( 6'h19 ),.din25_WIDTH( 32 ),.CASE26( 6'h1A ),.din26_WIDTH( 32 ),.CASE27( 6'h1B ),.din27_WIDTH( 32 ),.CASE28( 6'h1C ),.din28_WIDTH( 32 ),.CASE29( 6'h1D ),.din29_WIDTH( 32 ),.CASE30( 6'h1E ),.din30_WIDTH( 32 ),.CASE31( 6'h1F ),.din31_WIDTH( 32 ),.CASE32( 6'h20 ),.din32_WIDTH( 32 ),.CASE33( 6'h21 ),.din33_WIDTH( 32 ),.CASE34( 6'h22 ),.din34_WIDTH( 32 ),.CASE35( 6'h23 ),.din35_WIDTH( 32 ),.CASE36( 6'h24 ),.din36_WIDTH( 32 ),.CASE37( 6'h25 ),.din37_WIDTH( 32 ),.CASE38( 6'h26 ),.din38_WIDTH( 32 ),.CASE39( 6'h27 ),.din39_WIDTH( 32 ),.CASE40( 6'h28 ),.din40_WIDTH( 32 ),.CASE41( 6'h29 ),.din41_WIDTH( 32 ),.CASE42( 6'h2A ),.din42_WIDTH( 32 ),.CASE43( 6'h2B ),.din43_WIDTH( 32 ),.CASE44( 6'h2C ),.din44_WIDTH( 32 ),.CASE45( 6'h2D ),.din45_WIDTH( 32 ),.CASE46( 6'h2E ),.din46_WIDTH( 32 ),.CASE47( 6'h2F ),.din47_WIDTH( 32 ),.CASE48( 6'h30 ),.din48_WIDTH( 32 ),.CASE49( 6'h31 ),.din49_WIDTH( 32 ),.CASE50( 6'h32 ),.din50_WIDTH( 32 ),.CASE51( 6'h33 ),.din51_WIDTH( 32 ),.CASE52( 6'h34 ),.din52_WIDTH( 32 ),.CASE53( 6'h35 ),.din53_WIDTH( 32 ),.CASE54( 6'h36 ),.din54_WIDTH( 32 ),.CASE55( 6'h37 ),.din55_WIDTH( 32 ),.CASE56( 6'h38 ),.din56_WIDTH( 32 ),.CASE57( 6'h39 ),.din57_WIDTH( 32 ),.CASE58( 6'h3A ),.din58_WIDTH( 32 ),.CASE59( 6'h3B ),.din59_WIDTH( 32 ),.CASE60( 6'h3C ),.din60_WIDTH( 32 ),.CASE61( 6'h3D ),.din61_WIDTH( 32 ),.CASE62( 6'h3E ),.din62_WIDTH( 32 ),.CASE63( 6'h3F ),.din63_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_129_6_32_1_1_U138(.din0(mux_case_092_reload),.din1(mux_case_1134_reload),.din2(mux_case_2176_reload),.din3(mux_case_3218_reload),.din4(mux_case_42510_reload),.din5(mux_case_52912_reload),.din6(mux_case_63314_reload),.din7(mux_case_73716_reload),.din8(mux_case_84118_reload),.din9(mux_case_94520_reload),.din10(mux_case_104922_reload),.din11(mux_case_115324_reload),.din12(mux_case_125726_reload),.din13(mux_case_136128_reload),.din14(mux_case_146530_reload),.din15(mux_case_156932_reload),.din16(mux_case_167334_reload),.din17(mux_case_177736_reload),.din18(mux_case_188138_reload),.din19(mux_case_198540_reload),.din20(mux_case_208942_reload),.din21(mux_case_219344_reload),.din22(mux_case_229746_reload),.din23(mux_case_2310148_reload),.din24(mux_case_2410550_reload),.din25(mux_case_2510952_reload),.din26(mux_case_2611354_reload),.din27(mux_case_2711756_reload),.din28(mux_case_2812158_reload),.din29(mux_case_2912560_reload),.din30(mux_case_3012962_reload),.din31(mux_case_3113364_reload),.din32(mux_case_3213766_reload),.din33(mux_case_3314168_reload),.din34(mux_case_3414570_reload),.din35(mux_case_3514972_reload),.din36(mux_case_3615374_reload),.din37(mux_case_3715776_reload),.din38(mux_case_3816178_reload),.din39(mux_case_3916580_reload),.din40(mux_case_4016982_reload),.din41(mux_case_4117384_reload),.din42(mux_case_4217786_reload),.din43(mux_case_4318188_reload),.din44(mux_case_4418590_reload),.din45(mux_case_4518992_reload),.din46(mux_case_4619394_reload),.din47(mux_case_4719796_reload),.din48(mux_case_4820198_reload),.din49(mux_case_49205100_reload),.din50(mux_case_50209102_reload),.din51(mux_case_51213104_reload),.din52(mux_case_52217106_reload),.din53(mux_case_53221108_reload),.din54(mux_case_54225110_reload),.din55(mux_case_55229112_reload),.din56(mux_case_56233114_reload),.din57(mux_case_57237116_reload),.din58(mux_case_58241118_reload),.din59(mux_case_59245120_reload),.din60(mux_case_60249122_reload),.din61(mux_case_61253124_reload),.din62(mux_case_62257126_reload),.din63(mux_case_63261128_reload),.def(tmp_fu_854_p129),.sel(tmp_fu_854_p130),.dout(tmp_fu_854_p131));
gesummv_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        if ((1'b1 == ap_condition_789)) begin
            add16_fu_314 <= tmp1_q0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            add16_fu_314 <= add_reg_1495;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln25_fu_759_p2 == 1'd0))) begin
            i_1_fu_306 <= select_ln25_fu_797_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_306 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln25_fu_759_p2 == 1'd0))) begin
            indvar_flatten135_fu_310 <= add_ln25_1_fu_765_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten135_fu_310 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_302 <= 7'd0;
    end else if (((icmp_ln25_reg_1436 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_302 <= add_ln26_fu_1054_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_reg_1495 <= grp_fu_1925_p_dout0;
        icmp_ln26_1_reg_1471 <= icmp_ln26_1_fu_1059_p2;
        icmp_ln26_1_reg_1471_pp0_iter1_reg <= icmp_ln26_1_reg_1471;
        icmp_ln26_1_reg_1471_pp0_iter2_reg <= icmp_ln26_1_reg_1471_pp0_iter1_reg;
        tmp_reg_1466 <= tmp_fu_854_p131;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A_load_reg_1480 <= buff_A_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1447 <= empty_fu_805_p1;
        first_iter_1_reg_1452 <= first_iter_1_fu_809_p2;
        first_iter_1_reg_1452_pp0_iter1_reg <= first_iter_1_reg_1452;
        icmp_ln25_reg_1436 <= icmp_ln25_fu_759_p2;
        icmp_ln25_reg_1436_pp0_iter1_reg <= icmp_ln25_reg_1436;
        select_ln6_reg_1440 <= select_ln6_fu_789_p3;
        tmp1_addr_reg_1456 <= zext_ln25_fu_815_p1;
        tmp1_addr_reg_1456_pp0_iter1_reg <= tmp1_addr_reg_1456;
        tmp1_addr_reg_1456_pp0_iter2_reg <= tmp1_addr_reg_1456_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul3_reg_1475 <= grp_fu_737_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_reg_1485 <= grp_fu_737_p2;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_1436 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln25_reg_1436_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1_load = i_1_fu_306;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten135_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten135_load = indvar_flatten135_fu_310;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_302;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_737_p0 = mul_reg_1485;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_737_p0 = buff_A_load_reg_1480;
        end else begin
            grp_fu_737_p0 = 'bx;
        end
    end else begin
        grp_fu_737_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_737_p1 = tmp_reg_1466;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_737_p1 = alpha;
        end else begin
            grp_fu_737_p1 = 'bx;
        end
    end else begin
        grp_fu_737_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_address0_local = tmp1_addr_reg_1456_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_address0_local = tmp1_addr_reg_1456_pp0_iter1_reg;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln26_1_reg_1471_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_1_fu_765_p2 = (ap_sig_allocacmp_indvar_flatten135_load + 13'd1);
assign add_ln25_fu_777_p2 = (ap_sig_allocacmp_i_1_load + 7'd1);
assign add_ln26_fu_1054_p2 = (select_ln6_reg_1440 + 7'd1);
assign add_ln27_fu_840_p2 = (tmp_2_fu_830_p3 + zext_ln27_fu_837_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_789 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_1_reg_1452_pp0_iter1_reg == 1'd1) & (icmp_ln25_reg_1436_pp0_iter1_reg == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_A_address0 = zext_ln27_1_fu_846_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign empty_fu_805_p1 = select_ln25_fu_797_p3[5:0];
assign first_iter_1_fu_809_p2 = ((select_ln6_fu_789_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_1925_p_ce = 1'b1;
assign grp_fu_1925_p_din0 = add16_fu_314;
assign grp_fu_1925_p_din1 = mul3_reg_1475;
assign grp_fu_1925_p_opcode = 2'd0;
assign icmp_ln25_fu_759_p2 = ((ap_sig_allocacmp_indvar_flatten135_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln26_1_fu_1059_p2 = ((add_ln26_fu_1054_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln26_fu_783_p2 = ((ap_sig_allocacmp_j_load == 7'd64) ? 1'b1 : 1'b0);
assign select_ln25_fu_797_p3 = ((icmp_ln26_fu_783_p2[0:0] == 1'b1) ? add_ln25_fu_777_p2 : ap_sig_allocacmp_i_1_load);
assign select_ln6_fu_789_p3 = ((icmp_ln26_fu_783_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = add_reg_1495;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_2_fu_830_p3 = {{empty_reg_1447}, {6'd0}};
assign tmp_fu_854_p129 = 'bx;
assign tmp_fu_854_p130 = select_ln6_reg_1440[5:0];
assign zext_ln25_fu_815_p1 = select_ln25_fu_797_p3;
assign zext_ln27_1_fu_846_p1 = add_ln27_fu_840_p2;
assign zext_ln27_fu_837_p1 = select_ln6_reg_1440;
endmodule 