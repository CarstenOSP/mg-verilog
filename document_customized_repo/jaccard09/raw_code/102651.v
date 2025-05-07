module gesummv_gesummv_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,beta,p_reload257,p_reload256,p_reload255,p_reload254,p_reload253,p_reload252,p_reload251,p_reload250,p_reload249,p_reload248,p_reload247,p_reload246,p_reload245,p_reload244,p_reload243,p_reload242,p_reload241,p_reload240,p_reload239,p_reload238,p_reload237,p_reload236,p_reload235,p_reload234,p_reload233,p_reload232,p_reload231,p_reload230,p_reload229,p_reload228,p_reload227,p_reload226,p_reload225,p_reload224,p_reload223,p_reload222,p_reload221,p_reload220,p_reload219,p_reload218,p_reload217,p_reload216,p_reload215,p_reload214,p_reload213,p_reload212,p_reload211,p_reload210,p_reload209,p_reload208,p_reload207,p_reload206,p_reload205,p_reload204,p_reload203,p_reload202,p_reload201,p_reload200,p_reload199,p_reload198,p_reload197,p_reload196,p_reload195,p_reload,tmp2_address0,tmp2_ce0,tmp2_we0,tmp2_d0,tmp2_q0); 
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
output  [11:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
input  [31:0] beta;
input  [31:0] p_reload257;
input  [31:0] p_reload256;
input  [31:0] p_reload255;
input  [31:0] p_reload254;
input  [31:0] p_reload253;
input  [31:0] p_reload252;
input  [31:0] p_reload251;
input  [31:0] p_reload250;
input  [31:0] p_reload249;
input  [31:0] p_reload248;
input  [31:0] p_reload247;
input  [31:0] p_reload246;
input  [31:0] p_reload245;
input  [31:0] p_reload244;
input  [31:0] p_reload243;
input  [31:0] p_reload242;
input  [31:0] p_reload241;
input  [31:0] p_reload240;
input  [31:0] p_reload239;
input  [31:0] p_reload238;
input  [31:0] p_reload237;
input  [31:0] p_reload236;
input  [31:0] p_reload235;
input  [31:0] p_reload234;
input  [31:0] p_reload233;
input  [31:0] p_reload232;
input  [31:0] p_reload231;
input  [31:0] p_reload230;
input  [31:0] p_reload229;
input  [31:0] p_reload228;
input  [31:0] p_reload227;
input  [31:0] p_reload226;
input  [31:0] p_reload225;
input  [31:0] p_reload224;
input  [31:0] p_reload223;
input  [31:0] p_reload222;
input  [31:0] p_reload221;
input  [31:0] p_reload220;
input  [31:0] p_reload219;
input  [31:0] p_reload218;
input  [31:0] p_reload217;
input  [31:0] p_reload216;
input  [31:0] p_reload215;
input  [31:0] p_reload214;
input  [31:0] p_reload213;
input  [31:0] p_reload212;
input  [31:0] p_reload211;
input  [31:0] p_reload210;
input  [31:0] p_reload209;
input  [31:0] p_reload208;
input  [31:0] p_reload207;
input  [31:0] p_reload206;
input  [31:0] p_reload205;
input  [31:0] p_reload204;
input  [31:0] p_reload203;
input  [31:0] p_reload202;
input  [31:0] p_reload201;
input  [31:0] p_reload200;
input  [31:0] p_reload199;
input  [31:0] p_reload198;
input  [31:0] p_reload197;
input  [31:0] p_reload196;
input  [31:0] p_reload195;
input  [31:0] p_reload;
output  [5:0] tmp2_address0;
output   tmp2_ce0;
output   tmp2_we0;
output  [31:0] tmp2_d0;
input  [31:0] tmp2_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln31_reg_1436;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln31_fu_759_p2;
reg   [0:0] icmp_ln31_reg_1436_pp0_iter1_reg;
wire   [6:0] select_ln6_fu_789_p3;
reg   [6:0] select_ln6_reg_1440;
wire   [5:0] empty_fu_805_p1;
reg   [5:0] empty_reg_1447;
wire   [0:0] first_iter_1_fu_809_p2;
reg   [0:0] first_iter_1_reg_1452;
reg   [0:0] first_iter_1_reg_1452_pp0_iter1_reg;
reg   [5:0] tmp2_addr_reg_1456;
reg   [5:0] tmp2_addr_reg_1456_pp0_iter1_reg;
reg   [5:0] tmp2_addr_reg_1456_pp0_iter2_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_fu_854_p131;
reg   [31:0] tmp_reg_1466;
wire   [0:0] icmp_ln32_1_fu_1059_p2;
reg   [0:0] icmp_ln32_1_reg_1471;
reg   [0:0] icmp_ln32_1_reg_1471_pp0_iter1_reg;
reg   [0:0] icmp_ln32_1_reg_1471_pp0_iter2_reg;
wire   [31:0] grp_fu_737_p2;
reg   [31:0] mul3_reg_1475;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] buff_B_load_reg_1480;
reg   [31:0] mul2_reg_1485;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_733_p2;
reg   [31:0] add2_reg_1495;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln31_fu_815_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln33_1_fu_846_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_302;
wire   [6:0] add_ln32_fu_1054_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_2_fu_306;
wire   [6:0] select_ln31_fu_797_p3;
reg   [6:0] ap_sig_allocacmp_i_2_load;
reg   [12:0] indvar_flatten134_fu_310;
wire   [12:0] add_ln31_1_fu_765_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten134_load;
reg   [31:0] add6815_fu_314;
wire    ap_block_pp0_stage3;
reg    buff_B_ce0_local;
reg    tmp2_ce0_local;
reg   [5:0] tmp2_address0_local;
reg    tmp2_we0_local;
wire    ap_block_pp0_stage2;
reg   [31:0] grp_fu_737_p0;
reg   [31:0] grp_fu_737_p1;
wire    ap_block_pp0_stage7;
wire   [0:0] icmp_ln32_fu_783_p2;
wire   [6:0] add_ln31_fu_777_p2;
wire   [11:0] tmp_2_fu_830_p3;
wire   [11:0] zext_ln33_fu_837_p1;
wire   [11:0] add_ln33_fu_840_p2;
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
reg    ap_condition_779;
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
#0 i_2_fu_306 = 7'd0;
#0 indvar_flatten134_fu_310 = 13'd0;
#0 add6815_fu_314 = 32'd0;
#0 ap_done_reg = 1'b0;
end
gesummv_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U460(.clk(ap_clk),.reset(ap_rst),.din0(add6815_fu_314),.din1(mul3_reg_1475),.ce(1'b1),.dout(grp_fu_733_p2));
gesummv_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U461(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_737_p0),.din1(grp_fu_737_p1),.ce(1'b1),.dout(grp_fu_737_p2));
(* dissolve_hierarchy = "yes" *) gesummv_sparsemux_129_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h1 ),.din1_WIDTH( 32 ),.CASE2( 6'h2 ),.din2_WIDTH( 32 ),.CASE3( 6'h3 ),.din3_WIDTH( 32 ),.CASE4( 6'h4 ),.din4_WIDTH( 32 ),.CASE5( 6'h5 ),.din5_WIDTH( 32 ),.CASE6( 6'h6 ),.din6_WIDTH( 32 ),.CASE7( 6'h7 ),.din7_WIDTH( 32 ),.CASE8( 6'h8 ),.din8_WIDTH( 32 ),.CASE9( 6'h9 ),.din9_WIDTH( 32 ),.CASE10( 6'hA ),.din10_WIDTH( 32 ),.CASE11( 6'hB ),.din11_WIDTH( 32 ),.CASE12( 6'hC ),.din12_WIDTH( 32 ),.CASE13( 6'hD ),.din13_WIDTH( 32 ),.CASE14( 6'hE ),.din14_WIDTH( 32 ),.CASE15( 6'hF ),.din15_WIDTH( 32 ),.CASE16( 6'h10 ),.din16_WIDTH( 32 ),.CASE17( 6'h11 ),.din17_WIDTH( 32 ),.CASE18( 6'h12 ),.din18_WIDTH( 32 ),.CASE19( 6'h13 ),.din19_WIDTH( 32 ),.CASE20( 6'h14 ),.din20_WIDTH( 32 ),.CASE21( 6'h15 ),.din21_WIDTH( 32 ),.CASE22( 6'h16 ),.din22_WIDTH( 32 ),.CASE23( 6'h17 ),.din23_WIDTH( 32 ),.CASE24( 6'h18 ),.din24_WIDTH( 32 ),.CASE25( 6'h19 ),.din25_WIDTH( 32 ),.CASE26( 6'h1A ),.din26_WIDTH( 32 ),.CASE27( 6'h1B ),.din27_WIDTH( 32 ),.CASE28( 6'h1C ),.din28_WIDTH( 32 ),.CASE29( 6'h1D ),.din29_WIDTH( 32 ),.CASE30( 6'h1E ),.din30_WIDTH( 32 ),.CASE31( 6'h1F ),.din31_WIDTH( 32 ),.CASE32( 6'h20 ),.din32_WIDTH( 32 ),.CASE33( 6'h21 ),.din33_WIDTH( 32 ),.CASE34( 6'h22 ),.din34_WIDTH( 32 ),.CASE35( 6'h23 ),.din35_WIDTH( 32 ),.CASE36( 6'h24 ),.din36_WIDTH( 32 ),.CASE37( 6'h25 ),.din37_WIDTH( 32 ),.CASE38( 6'h26 ),.din38_WIDTH( 32 ),.CASE39( 6'h27 ),.din39_WIDTH( 32 ),.CASE40( 6'h28 ),.din40_WIDTH( 32 ),.CASE41( 6'h29 ),.din41_WIDTH( 32 ),.CASE42( 6'h2A ),.din42_WIDTH( 32 ),.CASE43( 6'h2B ),.din43_WIDTH( 32 ),.CASE44( 6'h2C ),.din44_WIDTH( 32 ),.CASE45( 6'h2D ),.din45_WIDTH( 32 ),.CASE46( 6'h2E ),.din46_WIDTH( 32 ),.CASE47( 6'h2F ),.din47_WIDTH( 32 ),.CASE48( 6'h30 ),.din48_WIDTH( 32 ),.CASE49( 6'h31 ),.din49_WIDTH( 32 ),.CASE50( 6'h32 ),.din50_WIDTH( 32 ),.CASE51( 6'h33 ),.din51_WIDTH( 32 ),.CASE52( 6'h34 ),.din52_WIDTH( 32 ),.CASE53( 6'h35 ),.din53_WIDTH( 32 ),.CASE54( 6'h36 ),.din54_WIDTH( 32 ),.CASE55( 6'h37 ),.din55_WIDTH( 32 ),.CASE56( 6'h38 ),.din56_WIDTH( 32 ),.CASE57( 6'h39 ),.din57_WIDTH( 32 ),.CASE58( 6'h3A ),.din58_WIDTH( 32 ),.CASE59( 6'h3B ),.din59_WIDTH( 32 ),.CASE60( 6'h3C ),.din60_WIDTH( 32 ),.CASE61( 6'h3D ),.din61_WIDTH( 32 ),.CASE62( 6'h3E ),.din62_WIDTH( 32 ),.CASE63( 6'h3F ),.din63_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_129_6_32_1_1_U462(.din0(p_reload257),.din1(p_reload256),.din2(p_reload255),.din3(p_reload254),.din4(p_reload253),.din5(p_reload252),.din6(p_reload251),.din7(p_reload250),.din8(p_reload249),.din9(p_reload248),.din10(p_reload247),.din11(p_reload246),.din12(p_reload245),.din13(p_reload244),.din14(p_reload243),.din15(p_reload242),.din16(p_reload241),.din17(p_reload240),.din18(p_reload239),.din19(p_reload238),.din20(p_reload237),.din21(p_reload236),.din22(p_reload235),.din23(p_reload234),.din24(p_reload233),.din25(p_reload232),.din26(p_reload231),.din27(p_reload230),.din28(p_reload229),.din29(p_reload228),.din30(p_reload227),.din31(p_reload226),.din32(p_reload225),.din33(p_reload224),.din34(p_reload223),.din35(p_reload222),.din36(p_reload221),.din37(p_reload220),.din38(p_reload219),.din39(p_reload218),.din40(p_reload217),.din41(p_reload216),.din42(p_reload215),.din43(p_reload214),.din44(p_reload213),.din45(p_reload212),.din46(p_reload211),.din47(p_reload210),.din48(p_reload209),.din49(p_reload208),.din50(p_reload207),.din51(p_reload206),.din52(p_reload205),.din53(p_reload204),.din54(p_reload203),.din55(p_reload202),.din56(p_reload201),.din57(p_reload200),.din58(p_reload199),.din59(p_reload198),.din60(p_reload197),.din61(p_reload196),.din62(p_reload195),.din63(p_reload),.def(tmp_fu_854_p129),.sel(tmp_fu_854_p130),.dout(tmp_fu_854_p131));
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
        if ((1'b1 == ap_condition_779)) begin
            add6815_fu_314 <= tmp2_q0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            add6815_fu_314 <= add2_reg_1495;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln31_fu_759_p2 == 1'd0))) begin
            i_2_fu_306 <= select_ln31_fu_797_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_2_fu_306 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln31_fu_759_p2 == 1'd0))) begin
            indvar_flatten134_fu_310 <= add_ln31_1_fu_765_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten134_fu_310 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_302 <= 7'd0;
    end else if (((icmp_ln31_reg_1436 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_302 <= add_ln32_fu_1054_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add2_reg_1495 <= grp_fu_733_p2;
        icmp_ln32_1_reg_1471 <= icmp_ln32_1_fu_1059_p2;
        icmp_ln32_1_reg_1471_pp0_iter1_reg <= icmp_ln32_1_reg_1471;
        icmp_ln32_1_reg_1471_pp0_iter2_reg <= icmp_ln32_1_reg_1471_pp0_iter1_reg;
        tmp_reg_1466 <= tmp_fu_854_p131;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B_load_reg_1480 <= buff_B_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1447 <= empty_fu_805_p1;
        first_iter_1_reg_1452 <= first_iter_1_fu_809_p2;
        first_iter_1_reg_1452_pp0_iter1_reg <= first_iter_1_reg_1452;
        icmp_ln31_reg_1436 <= icmp_ln31_fu_759_p2;
        icmp_ln31_reg_1436_pp0_iter1_reg <= icmp_ln31_reg_1436;
        select_ln6_reg_1440 <= select_ln6_fu_789_p3;
        tmp2_addr_reg_1456 <= zext_ln31_fu_815_p1;
        tmp2_addr_reg_1456_pp0_iter1_reg <= tmp2_addr_reg_1456;
        tmp2_addr_reg_1456_pp0_iter2_reg <= tmp2_addr_reg_1456_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul2_reg_1485 <= grp_fu_737_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul3_reg_1475 <= grp_fu_737_p2;
    end
end
always @ (*) begin
    if (((icmp_ln31_reg_1436 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln31_reg_1436_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        ap_sig_allocacmp_i_2_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_2_load = i_2_fu_306;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten134_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten134_load = indvar_flatten134_fu_310;
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
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_737_p0 = mul2_reg_1485;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_737_p0 = buff_B_load_reg_1480;
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
            grp_fu_737_p1 = beta;
        end else begin
            grp_fu_737_p1 = 'bx;
        end
    end else begin
        grp_fu_737_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp2_address0_local = tmp2_addr_reg_1456_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp2_address0_local = tmp2_addr_reg_1456_pp0_iter1_reg;
    end else begin
        tmp2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln32_1_reg_1471_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp2_we0_local = 1'b1;
    end else begin
        tmp2_we0_local = 1'b0;
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
assign add_ln31_1_fu_765_p2 = (ap_sig_allocacmp_indvar_flatten134_load + 13'd1);
assign add_ln31_fu_777_p2 = (ap_sig_allocacmp_i_2_load + 7'd1);
assign add_ln32_fu_1054_p2 = (select_ln6_reg_1440 + 7'd1);
assign add_ln33_fu_840_p2 = (tmp_2_fu_830_p3 + zext_ln33_fu_837_p1);
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
    ap_condition_779 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_1_reg_1452_pp0_iter1_reg == 1'd1) & (icmp_ln31_reg_1436_pp0_iter1_reg == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_B_address0 = zext_ln33_1_fu_846_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign empty_fu_805_p1 = select_ln31_fu_797_p3[5:0];
assign first_iter_1_fu_809_p2 = ((select_ln6_fu_789_p3 == 7'd0) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_759_p2 = ((ap_sig_allocacmp_indvar_flatten134_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln32_1_fu_1059_p2 = ((add_ln32_fu_1054_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_783_p2 = ((ap_sig_allocacmp_j_load == 7'd64) ? 1'b1 : 1'b0);
assign select_ln31_fu_797_p3 = ((icmp_ln32_fu_783_p2[0:0] == 1'b1) ? add_ln31_fu_777_p2 : ap_sig_allocacmp_i_2_load);
assign select_ln6_fu_789_p3 = ((icmp_ln32_fu_783_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp2_address0 = tmp2_address0_local;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_d0 = add2_reg_1495;
assign tmp2_we0 = tmp2_we0_local;
assign tmp_2_fu_830_p3 = {{empty_reg_1447}, {6'd0}};
assign tmp_fu_854_p129 = 'bx;
assign tmp_fu_854_p130 = select_ln6_reg_1440[5:0];
assign zext_ln31_fu_815_p1 = select_ln31_fu_797_p3;
assign zext_ln33_1_fu_846_p1 = add_ln33_fu_840_p2;
assign zext_ln33_fu_837_p1 = select_ln6_reg_1440;
endmodule 