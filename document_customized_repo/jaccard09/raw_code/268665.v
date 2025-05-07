module backprop_backprop_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_address0,v20_ce0,v20_we0,v20_d0,v20_address1,v20_ce1,v20_q1,empty_106,empty_107,empty_108,empty_109,empty_110,empty_111,empty_112,empty_113,empty_114,empty_115,empty_116,empty_117,empty_118,empty_119,empty_120,empty_121,empty_122,empty_123,empty_124,empty_125,empty_126,empty_127,empty_128,empty_129,empty_130,empty_131,empty_132,empty_133,empty_134,empty_135,empty_136,empty_137,empty_138,empty_139,empty_140,empty_141,empty_142,empty_143,empty_144,empty_145,empty_146,empty_147,empty_148,empty_149,empty_150,empty_151,empty_152,empty_153,empty_154,empty_155,empty_156,empty_157,empty_158,empty_159,empty_160,empty_161,empty_162,empty_163,empty_164,empty_165,empty_166,empty_167,empty_168,empty,grp_fu_25771_p_din0,grp_fu_25771_p_din1,grp_fu_25771_p_opcode,grp_fu_25771_p_dout0,grp_fu_25771_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
output  [5:0] v20_address1;
output   v20_ce1;
input  [63:0] v20_q1;
input  [63:0] empty_106;
input  [63:0] empty_107;
input  [63:0] empty_108;
input  [63:0] empty_109;
input  [63:0] empty_110;
input  [63:0] empty_111;
input  [63:0] empty_112;
input  [63:0] empty_113;
input  [63:0] empty_114;
input  [63:0] empty_115;
input  [63:0] empty_116;
input  [63:0] empty_117;
input  [63:0] empty_118;
input  [63:0] empty_119;
input  [63:0] empty_120;
input  [63:0] empty_121;
input  [63:0] empty_122;
input  [63:0] empty_123;
input  [63:0] empty_124;
input  [63:0] empty_125;
input  [63:0] empty_126;
input  [63:0] empty_127;
input  [63:0] empty_128;
input  [63:0] empty_129;
input  [63:0] empty_130;
input  [63:0] empty_131;
input  [63:0] empty_132;
input  [63:0] empty_133;
input  [63:0] empty_134;
input  [63:0] empty_135;
input  [63:0] empty_136;
input  [63:0] empty_137;
input  [63:0] empty_138;
input  [63:0] empty_139;
input  [63:0] empty_140;
input  [63:0] empty_141;
input  [63:0] empty_142;
input  [63:0] empty_143;
input  [63:0] empty_144;
input  [63:0] empty_145;
input  [63:0] empty_146;
input  [63:0] empty_147;
input  [63:0] empty_148;
input  [63:0] empty_149;
input  [63:0] empty_150;
input  [63:0] empty_151;
input  [63:0] empty_152;
input  [63:0] empty_153;
input  [63:0] empty_154;
input  [63:0] empty_155;
input  [63:0] empty_156;
input  [63:0] empty_157;
input  [63:0] empty_158;
input  [63:0] empty_159;
input  [63:0] empty_160;
input  [63:0] empty_161;
input  [63:0] empty_162;
input  [63:0] empty_163;
input  [63:0] empty_164;
input  [63:0] empty_165;
input  [63:0] empty_166;
input  [63:0] empty_167;
input  [63:0] empty_168;
input  [63:0] empty;
output  [63:0] grp_fu_25771_p_din0;
output  [63:0] grp_fu_25771_p_din1;
output  [0:0] grp_fu_25771_p_opcode;
input  [63:0] grp_fu_25771_p_dout0;
output   grp_fu_25771_p_ce;
reg ap_idle;
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
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln77_fu_707_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] v20_addr_2_reg_1008;
reg   [5:0] v20_addr_2_reg_1008_pp0_iter1_reg;
reg   [5:0] v20_addr_2_reg_1008_pp0_iter2_reg;
reg   [5:0] v20_addr_2_reg_1008_pp0_iter3_reg;
reg   [5:0] v20_addr_2_reg_1008_pp0_iter4_reg;
reg   [5:0] v20_addr_2_reg_1008_pp0_iter5_reg;
reg   [5:0] v20_addr_2_reg_1008_pp0_iter6_reg;
reg   [5:0] v20_addr_2_reg_1008_pp0_iter7_reg;
reg   [5:0] v20_addr_2_reg_1008_pp0_iter8_reg;
reg   [5:0] v20_addr_2_reg_1008_pp0_iter9_reg;
wire   [63:0] v32_fu_728_p131;
reg   [63:0] v32_reg_1014;
reg   [63:0] v32_reg_1014_pp0_iter1_reg;
reg   [63:0] v31_reg_1019;
reg   [63:0] v33_reg_1024;
wire   [63:0] zext_ln77_fu_719_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] v30_fu_290;
wire   [6:0] add_ln77_fu_713_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v30_1;
reg    v20_ce1_local;
reg    v20_we0_local;
reg    v20_ce0_local;
wire   [63:0] v32_fu_728_p129;
wire   [5:0] v32_fu_728_p130;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] v32_fu_728_p1;
wire   [5:0] v32_fu_728_p3;
wire   [5:0] v32_fu_728_p5;
wire   [5:0] v32_fu_728_p7;
wire   [5:0] v32_fu_728_p9;
wire   [5:0] v32_fu_728_p11;
wire   [5:0] v32_fu_728_p13;
wire   [5:0] v32_fu_728_p15;
wire   [5:0] v32_fu_728_p17;
wire   [5:0] v32_fu_728_p19;
wire   [5:0] v32_fu_728_p21;
wire   [5:0] v32_fu_728_p23;
wire   [5:0] v32_fu_728_p25;
wire   [5:0] v32_fu_728_p27;
wire   [5:0] v32_fu_728_p29;
wire   [5:0] v32_fu_728_p31;
wire   [5:0] v32_fu_728_p33;
wire   [5:0] v32_fu_728_p35;
wire   [5:0] v32_fu_728_p37;
wire   [5:0] v32_fu_728_p39;
wire   [5:0] v32_fu_728_p41;
wire   [5:0] v32_fu_728_p43;
wire   [5:0] v32_fu_728_p45;
wire   [5:0] v32_fu_728_p47;
wire   [5:0] v32_fu_728_p49;
wire   [5:0] v32_fu_728_p51;
wire   [5:0] v32_fu_728_p53;
wire   [5:0] v32_fu_728_p55;
wire   [5:0] v32_fu_728_p57;
wire   [5:0] v32_fu_728_p59;
wire   [5:0] v32_fu_728_p61;
wire   [5:0] v32_fu_728_p63;
wire  signed [5:0] v32_fu_728_p65;
wire  signed [5:0] v32_fu_728_p67;
wire  signed [5:0] v32_fu_728_p69;
wire  signed [5:0] v32_fu_728_p71;
wire  signed [5:0] v32_fu_728_p73;
wire  signed [5:0] v32_fu_728_p75;
wire  signed [5:0] v32_fu_728_p77;
wire  signed [5:0] v32_fu_728_p79;
wire  signed [5:0] v32_fu_728_p81;
wire  signed [5:0] v32_fu_728_p83;
wire  signed [5:0] v32_fu_728_p85;
wire  signed [5:0] v32_fu_728_p87;
wire  signed [5:0] v32_fu_728_p89;
wire  signed [5:0] v32_fu_728_p91;
wire  signed [5:0] v32_fu_728_p93;
wire  signed [5:0] v32_fu_728_p95;
wire  signed [5:0] v32_fu_728_p97;
wire  signed [5:0] v32_fu_728_p99;
wire  signed [5:0] v32_fu_728_p101;
wire  signed [5:0] v32_fu_728_p103;
wire  signed [5:0] v32_fu_728_p105;
wire  signed [5:0] v32_fu_728_p107;
wire  signed [5:0] v32_fu_728_p109;
wire  signed [5:0] v32_fu_728_p111;
wire  signed [5:0] v32_fu_728_p113;
wire  signed [5:0] v32_fu_728_p115;
wire  signed [5:0] v32_fu_728_p117;
wire  signed [5:0] v32_fu_728_p119;
wire  signed [5:0] v32_fu_728_p121;
wire  signed [5:0] v32_fu_728_p123;
wire  signed [5:0] v32_fu_728_p125;
wire  signed [5:0] v32_fu_728_p127;
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
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 v30_fu_290 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U2137(.din0(empty_106),.din1(empty_107),.din2(empty_108),.din3(empty_109),.din4(empty_110),.din5(empty_111),.din6(empty_112),.din7(empty_113),.din8(empty_114),.din9(empty_115),.din10(empty_116),.din11(empty_117),.din12(empty_118),.din13(empty_119),.din14(empty_120),.din15(empty_121),.din16(empty_122),.din17(empty_123),.din18(empty_124),.din19(empty_125),.din20(empty_126),.din21(empty_127),.din22(empty_128),.din23(empty_129),.din24(empty_130),.din25(empty_131),.din26(empty_132),.din27(empty_133),.din28(empty_134),.din29(empty_135),.din30(empty_136),.din31(empty_137),.din32(empty_138),.din33(empty_139),.din34(empty_140),.din35(empty_141),.din36(empty_142),.din37(empty_143),.din38(empty_144),.din39(empty_145),.din40(empty_146),.din41(empty_147),.din42(empty_148),.din43(empty_149),.din44(empty_150),.din45(empty_151),.din46(empty_152),.din47(empty_153),.din48(empty_154),.din49(empty_155),.din50(empty_156),.din51(empty_157),.din52(empty_158),.din53(empty_159),.din54(empty_160),.din55(empty_161),.din56(empty_162),.din57(empty_163),.din58(empty_164),.din59(empty_165),.din60(empty_166),.din61(empty_167),.din62(empty_168),.din63(empty),.def(v32_fu_728_p129),.sel(v32_fu_728_p130),.dout(v32_fu_728_p131));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln77_fu_707_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v30_fu_290 <= add_ln77_fu_713_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v30_fu_290 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v20_addr_2_reg_1008 <= zext_ln77_fu_719_p1;
        v20_addr_2_reg_1008_pp0_iter1_reg <= v20_addr_2_reg_1008;
        v32_reg_1014 <= v32_fu_728_p131;
        v32_reg_1014_pp0_iter1_reg <= v32_reg_1014;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        v20_addr_2_reg_1008_pp0_iter2_reg <= v20_addr_2_reg_1008_pp0_iter1_reg;
        v20_addr_2_reg_1008_pp0_iter3_reg <= v20_addr_2_reg_1008_pp0_iter2_reg;
        v20_addr_2_reg_1008_pp0_iter4_reg <= v20_addr_2_reg_1008_pp0_iter3_reg;
        v20_addr_2_reg_1008_pp0_iter5_reg <= v20_addr_2_reg_1008_pp0_iter4_reg;
        v20_addr_2_reg_1008_pp0_iter6_reg <= v20_addr_2_reg_1008_pp0_iter5_reg;
        v20_addr_2_reg_1008_pp0_iter7_reg <= v20_addr_2_reg_1008_pp0_iter6_reg;
        v20_addr_2_reg_1008_pp0_iter8_reg <= v20_addr_2_reg_1008_pp0_iter7_reg;
        v20_addr_2_reg_1008_pp0_iter9_reg <= v20_addr_2_reg_1008_pp0_iter8_reg;
        v33_reg_1024 <= grp_fu_25771_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v31_reg_1019 <= v20_q1;
    end
end
always @ (*) begin
    if (((icmp_ln77_fu_707_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v30_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v30_1 = v30_fu_290;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce1_local = 1'b1;
    end else begin
        v20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v20_we0_local = 1'b1;
    end else begin
        v20_we0_local = 1'b0;
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
assign add_ln77_fu_713_p2 = (ap_sig_allocacmp_v30_1 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_25771_p_ce = 1'b1;
assign grp_fu_25771_p_din0 = v31_reg_1019;
assign grp_fu_25771_p_din1 = v32_reg_1014_pp0_iter1_reg;
assign grp_fu_25771_p_opcode = 2'd0;
assign icmp_ln77_fu_707_p2 = ((ap_sig_allocacmp_v30_1 == 7'd64) ? 1'b1 : 1'b0);
assign v20_address0 = v20_addr_2_reg_1008_pp0_iter9_reg;
assign v20_address1 = zext_ln77_fu_719_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_ce1 = v20_ce1_local;
assign v20_d0 = v33_reg_1024;
assign v20_we0 = v20_we0_local;
assign v32_fu_728_p129 = 'bx;
assign v32_fu_728_p130 = ap_sig_allocacmp_v30_1[5:0];
assign zext_ln77_fu_719_p1 = ap_sig_allocacmp_v30_1;
endmodule 