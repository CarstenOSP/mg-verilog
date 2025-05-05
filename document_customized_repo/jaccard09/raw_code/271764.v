module backprop_backprop_Pipeline_label_35 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,p_reload,p_reload316,p_reload315,p_reload314,p_reload313,p_reload312,p_reload311,p_reload310,p_reload309,p_reload308,p_reload307,p_reload306,p_reload305,p_reload304,p_reload303,p_reload302,p_reload301,p_reload300,p_reload299,p_reload298,p_reload297,p_reload296,p_reload295,p_reload294,p_reload293,p_reload292,p_reload291,p_reload290,p_reload289,p_reload288,p_reload287,p_reload286,p_reload285,p_reload284,p_reload283,p_reload282,p_reload281,p_reload280,p_reload279,p_reload278,p_reload277,p_reload276,p_reload275,p_reload274,p_reload273,p_reload272,p_reload271,p_reload270,p_reload269,p_reload268,p_reload267,p_reload266,p_reload265,p_reload264,p_reload263,p_reload262,p_reload261,p_reload260,p_reload259,p_reload258,p_reload257,p_reload256,p_reload255,p_reload254,v4_address0,v4_ce0,v4_we0,v4_d0,v4_q0,v194_out,v194_out_ap_vld,grp_fu_14202_p_din0,grp_fu_14202_p_din1,grp_fu_14202_p_opcode,grp_fu_14202_p_dout0,grp_fu_14202_p_ce); 
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
input  [63:0] p_reload;
input  [63:0] p_reload316;
input  [63:0] p_reload315;
input  [63:0] p_reload314;
input  [63:0] p_reload313;
input  [63:0] p_reload312;
input  [63:0] p_reload311;
input  [63:0] p_reload310;
input  [63:0] p_reload309;
input  [63:0] p_reload308;
input  [63:0] p_reload307;
input  [63:0] p_reload306;
input  [63:0] p_reload305;
input  [63:0] p_reload304;
input  [63:0] p_reload303;
input  [63:0] p_reload302;
input  [63:0] p_reload301;
input  [63:0] p_reload300;
input  [63:0] p_reload299;
input  [63:0] p_reload298;
input  [63:0] p_reload297;
input  [63:0] p_reload296;
input  [63:0] p_reload295;
input  [63:0] p_reload294;
input  [63:0] p_reload293;
input  [63:0] p_reload292;
input  [63:0] p_reload291;
input  [63:0] p_reload290;
input  [63:0] p_reload289;
input  [63:0] p_reload288;
input  [63:0] p_reload287;
input  [63:0] p_reload286;
input  [63:0] p_reload285;
input  [63:0] p_reload284;
input  [63:0] p_reload283;
input  [63:0] p_reload282;
input  [63:0] p_reload281;
input  [63:0] p_reload280;
input  [63:0] p_reload279;
input  [63:0] p_reload278;
input  [63:0] p_reload277;
input  [63:0] p_reload276;
input  [63:0] p_reload275;
input  [63:0] p_reload274;
input  [63:0] p_reload273;
input  [63:0] p_reload272;
input  [63:0] p_reload271;
input  [63:0] p_reload270;
input  [63:0] p_reload269;
input  [63:0] p_reload268;
input  [63:0] p_reload267;
input  [63:0] p_reload266;
input  [63:0] p_reload265;
input  [63:0] p_reload264;
input  [63:0] p_reload263;
input  [63:0] p_reload262;
input  [63:0] p_reload261;
input  [63:0] p_reload260;
input  [63:0] p_reload259;
input  [63:0] p_reload258;
input  [63:0] p_reload257;
input  [63:0] p_reload256;
input  [63:0] p_reload255;
input  [63:0] p_reload254;
output  [5:0] v4_address0;
output   v4_ce0;
output   v4_we0;
output  [63:0] v4_d0;
input  [63:0] v4_q0;
output  [63:0] v194_out;
output   v194_out_ap_vld;
output  [63:0] grp_fu_14202_p_din0;
output  [63:0] grp_fu_14202_p_din1;
output  [1:0] grp_fu_14202_p_opcode;
input  [63:0] grp_fu_14202_p_dout0;
output   grp_fu_14202_p_ce;
reg ap_idle;
reg v194_out_ap_vld;
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
reg   [0:0] icmp_ln313_reg_1062;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln313_fu_736_p2;
reg   [0:0] icmp_ln313_reg_1062_pp0_iter1_reg;
reg   [0:0] icmp_ln313_reg_1062_pp0_iter2_reg;
reg   [0:0] icmp_ln313_reg_1062_pp0_iter3_reg;
wire   [63:0] v195_fu_757_p131;
reg   [63:0] v195_reg_1066;
reg   [5:0] v4_addr_reg_1071;
reg   [5:0] v4_addr_reg_1071_pp0_iter1_reg;
reg   [5:0] v4_addr_reg_1071_pp0_iter2_reg;
reg   [63:0] v4_load_reg_1076;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] grp_fu_718_p2;
reg   [63:0] v196_reg_1081;
wire   [63:0] v197_fu_1026_p1;
reg   [63:0] v198_reg_1091;
reg   [63:0] v199_reg_1098;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln313_fu_748_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] v192_fu_302;
reg   [63:0] ap_sig_allocacmp_v192_load_1;
wire    ap_block_pp0_stage2;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage2;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v193_fu_306;
wire   [6:0] add_ln313_fu_742_p2;
reg   [6:0] ap_sig_allocacmp_v193_1;
wire    ap_block_pp0_stage2_01001;
reg    v4_ce0_local;
reg   [5:0] v4_address0_local;
reg    v4_we0_local;
wire   [63:0] bitcast_ln319_fu_1030_p1;
reg   [63:0] grp_fu_714_p0;
reg   [63:0] grp_fu_714_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_718_p0;
reg   [63:0] grp_fu_718_p1;
wire   [63:0] v195_fu_757_p129;
wire   [5:0] v195_fu_757_p130;
reg   [1:0] grp_fu_714_opcode;
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
wire   [5:0] v195_fu_757_p1;
wire   [5:0] v195_fu_757_p3;
wire   [5:0] v195_fu_757_p5;
wire   [5:0] v195_fu_757_p7;
wire   [5:0] v195_fu_757_p9;
wire   [5:0] v195_fu_757_p11;
wire   [5:0] v195_fu_757_p13;
wire   [5:0] v195_fu_757_p15;
wire   [5:0] v195_fu_757_p17;
wire   [5:0] v195_fu_757_p19;
wire   [5:0] v195_fu_757_p21;
wire   [5:0] v195_fu_757_p23;
wire   [5:0] v195_fu_757_p25;
wire   [5:0] v195_fu_757_p27;
wire   [5:0] v195_fu_757_p29;
wire   [5:0] v195_fu_757_p31;
wire   [5:0] v195_fu_757_p33;
wire   [5:0] v195_fu_757_p35;
wire   [5:0] v195_fu_757_p37;
wire   [5:0] v195_fu_757_p39;
wire   [5:0] v195_fu_757_p41;
wire   [5:0] v195_fu_757_p43;
wire   [5:0] v195_fu_757_p45;
wire   [5:0] v195_fu_757_p47;
wire   [5:0] v195_fu_757_p49;
wire   [5:0] v195_fu_757_p51;
wire   [5:0] v195_fu_757_p53;
wire   [5:0] v195_fu_757_p55;
wire   [5:0] v195_fu_757_p57;
wire   [5:0] v195_fu_757_p59;
wire   [5:0] v195_fu_757_p61;
wire   [5:0] v195_fu_757_p63;
wire  signed [5:0] v195_fu_757_p65;
wire  signed [5:0] v195_fu_757_p67;
wire  signed [5:0] v195_fu_757_p69;
wire  signed [5:0] v195_fu_757_p71;
wire  signed [5:0] v195_fu_757_p73;
wire  signed [5:0] v195_fu_757_p75;
wire  signed [5:0] v195_fu_757_p77;
wire  signed [5:0] v195_fu_757_p79;
wire  signed [5:0] v195_fu_757_p81;
wire  signed [5:0] v195_fu_757_p83;
wire  signed [5:0] v195_fu_757_p85;
wire  signed [5:0] v195_fu_757_p87;
wire  signed [5:0] v195_fu_757_p89;
wire  signed [5:0] v195_fu_757_p91;
wire  signed [5:0] v195_fu_757_p93;
wire  signed [5:0] v195_fu_757_p95;
wire  signed [5:0] v195_fu_757_p97;
wire  signed [5:0] v195_fu_757_p99;
wire  signed [5:0] v195_fu_757_p101;
wire  signed [5:0] v195_fu_757_p103;
wire  signed [5:0] v195_fu_757_p105;
wire  signed [5:0] v195_fu_757_p107;
wire  signed [5:0] v195_fu_757_p109;
wire  signed [5:0] v195_fu_757_p111;
wire  signed [5:0] v195_fu_757_p113;
wire  signed [5:0] v195_fu_757_p115;
wire  signed [5:0] v195_fu_757_p117;
wire  signed [5:0] v195_fu_757_p119;
wire  signed [5:0] v195_fu_757_p121;
wire  signed [5:0] v195_fu_757_p123;
wire  signed [5:0] v195_fu_757_p125;
wire  signed [5:0] v195_fu_757_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v192_fu_302 = 64'd0;
#0 v193_fu_306 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U1771(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_718_p0),.din1(grp_fu_718_p1),.ce(1'b1),.dout(grp_fu_718_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U1772(.din0(p_reload),.din1(p_reload316),.din2(p_reload315),.din3(p_reload314),.din4(p_reload313),.din5(p_reload312),.din6(p_reload311),.din7(p_reload310),.din8(p_reload309),.din9(p_reload308),.din10(p_reload307),.din11(p_reload306),.din12(p_reload305),.din13(p_reload304),.din14(p_reload303),.din15(p_reload302),.din16(p_reload301),.din17(p_reload300),.din18(p_reload299),.din19(p_reload298),.din20(p_reload297),.din21(p_reload296),.din22(p_reload295),.din23(p_reload294),.din24(p_reload293),.din25(p_reload292),.din26(p_reload291),.din27(p_reload290),.din28(p_reload289),.din29(p_reload288),.din30(p_reload287),.din31(p_reload286),.din32(p_reload285),.din33(p_reload284),.din34(p_reload283),.din35(p_reload282),.din36(p_reload281),.din37(p_reload280),.din38(p_reload279),.din39(p_reload278),.din40(p_reload277),.din41(p_reload276),.din42(p_reload275),.din43(p_reload274),.din44(p_reload273),.din45(p_reload272),.din46(p_reload271),.din47(p_reload270),.din48(p_reload269),.din49(p_reload268),.din50(p_reload267),.din51(p_reload266),.din52(p_reload265),.din53(p_reload264),.din54(p_reload263),.din55(p_reload262),.din56(p_reload261),.din57(p_reload260),.din58(p_reload259),.din59(p_reload258),.din60(p_reload257),.din61(p_reload256),.din62(p_reload255),.din63(p_reload254),.def(v195_fu_757_p129),.sel(v195_fu_757_p130),.dout(v195_fu_757_p131));
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
        v192_fu_302 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v192_fu_302 <= grp_fu_14202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln313_fu_736_p2 == 1'd0))) begin
            v193_fu_306 <= add_ln313_fu_742_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v193_fu_306 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln313_reg_1062 <= icmp_ln313_fu_736_p2;
        icmp_ln313_reg_1062_pp0_iter1_reg <= icmp_ln313_reg_1062;
        icmp_ln313_reg_1062_pp0_iter2_reg <= icmp_ln313_reg_1062_pp0_iter1_reg;
        icmp_ln313_reg_1062_pp0_iter3_reg <= icmp_ln313_reg_1062_pp0_iter2_reg;
        v195_reg_1066 <= v195_fu_757_p131;
        v4_addr_reg_1071 <= zext_ln313_fu_748_p1;
        v4_addr_reg_1071_pp0_iter1_reg <= v4_addr_reg_1071;
        v4_addr_reg_1071_pp0_iter2_reg <= v4_addr_reg_1071_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v196_reg_1081 <= grp_fu_718_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v198_reg_1091 <= grp_fu_14202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v199_reg_1098 <= grp_fu_718_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_load_reg_1076 <= v4_q0;
    end
end
always @ (*) begin
    if (((icmp_ln313_reg_1062 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln313_reg_1062_pp0_iter3_reg == 1'd1))) begin
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
        ap_sig_allocacmp_v192_load_1 = grp_fu_14202_p_dout0;
    end else begin
        ap_sig_allocacmp_v192_load_1 = v192_fu_302;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v193_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v193_1 = v193_fu_306;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_714_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_714_opcode = 2'd0;
    end else begin
        grp_fu_714_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_714_p0 = ap_sig_allocacmp_v192_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_714_p0 = v197_fu_1026_p1;
    end else begin
        grp_fu_714_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_714_p1 = v199_reg_1098;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_714_p1 = v196_reg_1081;
    end else begin
        grp_fu_714_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_718_p0 = v198_reg_1091;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_718_p0 = v195_reg_1066;
    end else begin
        grp_fu_718_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_718_p1 = v198_reg_1091;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_718_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_718_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln313_reg_1062_pp0_iter3_reg == 1'd1))) begin
        v194_out_ap_vld = 1'b1;
    end else begin
        v194_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v4_address0_local = v4_addr_reg_1071_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_address0_local = zext_ln313_fu_748_p1;
    end else begin
        v4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v4_ce0_local = 1'b1;
    end else begin
        v4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v4_we0_local = 1'b1;
    end else begin
        v4_we0_local = 1'b0;
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
assign add_ln313_fu_742_p2 = (ap_sig_allocacmp_v193_1 + 7'd1);
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
assign bitcast_ln319_fu_1030_p1 = v198_reg_1091;
assign grp_fu_14202_p_ce = 1'b1;
assign grp_fu_14202_p_din0 = grp_fu_714_p0;
assign grp_fu_14202_p_din1 = grp_fu_714_p1;
assign grp_fu_14202_p_opcode = grp_fu_714_opcode;
assign icmp_ln313_fu_736_p2 = ((ap_sig_allocacmp_v193_1 == 7'd64) ? 1'b1 : 1'b0);
assign v194_out = v192_fu_302;
assign v195_fu_757_p129 = 'bx;
assign v195_fu_757_p130 = ap_sig_allocacmp_v193_1[5:0];
assign v197_fu_1026_p1 = v4_load_reg_1076;
assign v4_address0 = v4_address0_local;
assign v4_ce0 = v4_ce0_local;
assign v4_d0 = bitcast_ln319_fu_1030_p1;
assign v4_we0 = v4_we0_local;
assign zext_ln313_fu_748_p1 = ap_sig_allocacmp_v193_1;
endmodule 