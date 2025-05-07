module backprop_backprop_Pipeline_label_35 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v4_1_address0,v4_1_ce0,v4_1_we0,v4_1_d0,v4_1_q0,v4_0_address0,v4_0_ce0,v4_0_we0,v4_0_d0,v4_0_q0,v8_1938_reload,v8_19410_reload,v8_19512_reload,v8_19614_reload,v8_19716_reload,v8_19818_reload,v8_19920_reload,v8_20022_reload,v8_20124_reload,v8_20226_reload,v8_20328_reload,v8_20430_reload,v8_20532_reload,v8_20634_reload,v8_20736_reload,v8_20838_reload,v8_20940_reload,v8_21042_reload,v8_21144_reload,v8_21246_reload,v8_21348_reload,v8_21450_reload,v8_21552_reload,v8_21654_reload,v8_21756_reload,v8_21858_reload,v8_21960_reload,v8_22062_reload,v8_22164_reload,v8_22266_reload,v8_22368_reload,v8_22470_reload,v8_22572_reload,v8_22674_reload,v8_22776_reload,v8_22878_reload,v8_22980_reload,v8_23082_reload,v8_23184_reload,v8_23286_reload,v8_23388_reload,v8_23490_reload,v8_23592_reload,v8_23694_reload,v8_23796_reload,v8_23898_reload,v8_239100_reload,v8_240102_reload,v8_241104_reload,v8_242106_reload,v8_243108_reload,v8_244110_reload,v8_245112_reload,v8_246114_reload,v8_247116_reload,v8_248118_reload,v8_249120_reload,v8_250122_reload,v8_251124_reload,v8_252126_reload,v8_253128_reload,v8_254130_reload,v8_255132_reload,v8_256134_reload,v194_out,v194_out_ap_vld,grp_fu_20085_p_din0,grp_fu_20085_p_din1,grp_fu_20085_p_opcode,grp_fu_20085_p_dout0,grp_fu_20085_p_ce,grp_fu_38367_p_din0,grp_fu_38367_p_din1,grp_fu_38367_p_dout0,grp_fu_38367_p_ce); 
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
output  [4:0] v4_1_address0;
output   v4_1_ce0;
output   v4_1_we0;
output  [63:0] v4_1_d0;
input  [63:0] v4_1_q0;
output  [4:0] v4_0_address0;
output   v4_0_ce0;
output   v4_0_we0;
output  [63:0] v4_0_d0;
input  [63:0] v4_0_q0;
input  [63:0] v8_1938_reload;
input  [63:0] v8_19410_reload;
input  [63:0] v8_19512_reload;
input  [63:0] v8_19614_reload;
input  [63:0] v8_19716_reload;
input  [63:0] v8_19818_reload;
input  [63:0] v8_19920_reload;
input  [63:0] v8_20022_reload;
input  [63:0] v8_20124_reload;
input  [63:0] v8_20226_reload;
input  [63:0] v8_20328_reload;
input  [63:0] v8_20430_reload;
input  [63:0] v8_20532_reload;
input  [63:0] v8_20634_reload;
input  [63:0] v8_20736_reload;
input  [63:0] v8_20838_reload;
input  [63:0] v8_20940_reload;
input  [63:0] v8_21042_reload;
input  [63:0] v8_21144_reload;
input  [63:0] v8_21246_reload;
input  [63:0] v8_21348_reload;
input  [63:0] v8_21450_reload;
input  [63:0] v8_21552_reload;
input  [63:0] v8_21654_reload;
input  [63:0] v8_21756_reload;
input  [63:0] v8_21858_reload;
input  [63:0] v8_21960_reload;
input  [63:0] v8_22062_reload;
input  [63:0] v8_22164_reload;
input  [63:0] v8_22266_reload;
input  [63:0] v8_22368_reload;
input  [63:0] v8_22470_reload;
input  [63:0] v8_22572_reload;
input  [63:0] v8_22674_reload;
input  [63:0] v8_22776_reload;
input  [63:0] v8_22878_reload;
input  [63:0] v8_22980_reload;
input  [63:0] v8_23082_reload;
input  [63:0] v8_23184_reload;
input  [63:0] v8_23286_reload;
input  [63:0] v8_23388_reload;
input  [63:0] v8_23490_reload;
input  [63:0] v8_23592_reload;
input  [63:0] v8_23694_reload;
input  [63:0] v8_23796_reload;
input  [63:0] v8_23898_reload;
input  [63:0] v8_239100_reload;
input  [63:0] v8_240102_reload;
input  [63:0] v8_241104_reload;
input  [63:0] v8_242106_reload;
input  [63:0] v8_243108_reload;
input  [63:0] v8_244110_reload;
input  [63:0] v8_245112_reload;
input  [63:0] v8_246114_reload;
input  [63:0] v8_247116_reload;
input  [63:0] v8_248118_reload;
input  [63:0] v8_249120_reload;
input  [63:0] v8_250122_reload;
input  [63:0] v8_251124_reload;
input  [63:0] v8_252126_reload;
input  [63:0] v8_253128_reload;
input  [63:0] v8_254130_reload;
input  [63:0] v8_255132_reload;
input  [63:0] v8_256134_reload;
output  [63:0] v194_out;
output   v194_out_ap_vld;
output  [63:0] grp_fu_20085_p_din0;
output  [63:0] grp_fu_20085_p_din1;
output  [1:0] grp_fu_20085_p_opcode;
input  [63:0] grp_fu_20085_p_dout0;
output   grp_fu_20085_p_ce;
output  [63:0] grp_fu_38367_p_din0;
output  [63:0] grp_fu_38367_p_din1;
input  [63:0] grp_fu_38367_p_dout0;
output   grp_fu_38367_p_ce;
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
reg   [0:0] icmp_ln313_reg_1106;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v193_1_reg_1100;
wire   [0:0] icmp_ln313_fu_755_p2;
reg   [0:0] icmp_ln313_reg_1106_pp0_iter1_reg;
reg   [0:0] icmp_ln313_reg_1106_pp0_iter2_reg;
reg   [0:0] icmp_ln313_reg_1106_pp0_iter3_reg;
wire   [63:0] v195_fu_775_p131;
reg   [63:0] v195_reg_1110;
reg   [4:0] v4_0_addr_reg_1115;
reg   [4:0] v4_0_addr_reg_1115_pp0_iter1_reg;
reg   [4:0] v4_0_addr_reg_1115_pp0_iter2_reg;
reg   [4:0] v4_1_addr_reg_1120;
reg   [4:0] v4_1_addr_reg_1120_pp0_iter1_reg;
reg   [4:0] v4_1_addr_reg_1120_pp0_iter2_reg;
wire   [6:0] add_ln313_fu_1039_p2;
reg   [6:0] add_ln313_reg_1125;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] tmp_fu_1044_p3;
reg   [0:0] tmp_reg_1130;
reg   [0:0] tmp_reg_1130_pp0_iter1_reg;
reg   [0:0] tmp_reg_1130_pp0_iter2_reg;
wire   [63:0] select_ln317_fu_1051_p3;
reg   [63:0] select_ln317_reg_1134;
reg   [63:0] v196_reg_1139;
wire   [63:0] v197_fu_1063_p1;
reg   [63:0] v198_reg_1149;
reg   [63:0] v199_reg_1156;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln314_fu_769_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] v192_fu_308;
reg   [63:0] ap_sig_allocacmp_v192_load_1;
wire    ap_block_pp0_stage2;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage2;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v193_fu_312;
reg   [6:0] ap_sig_allocacmp_v193_1;
wire    ap_block_pp0_stage2_01001;
reg    v4_0_ce0_local;
reg   [4:0] v4_0_address0_local;
reg    v4_0_we0_local;
wire   [63:0] bitcast_ln319_fu_1067_p1;
reg    v4_1_ce0_local;
reg   [4:0] v4_1_address0_local;
reg    v4_1_we0_local;
reg   [63:0] grp_fu_733_p0;
reg   [63:0] grp_fu_733_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_737_p0;
reg   [63:0] grp_fu_737_p1;
wire   [4:0] trunc_ln313_1_fu_765_p1;
wire   [63:0] v195_fu_775_p129;
wire   [5:0] v195_fu_775_p130;
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
wire   [5:0] v195_fu_775_p1;
wire   [5:0] v195_fu_775_p3;
wire   [5:0] v195_fu_775_p5;
wire   [5:0] v195_fu_775_p7;
wire   [5:0] v195_fu_775_p9;
wire   [5:0] v195_fu_775_p11;
wire   [5:0] v195_fu_775_p13;
wire   [5:0] v195_fu_775_p15;
wire   [5:0] v195_fu_775_p17;
wire   [5:0] v195_fu_775_p19;
wire   [5:0] v195_fu_775_p21;
wire   [5:0] v195_fu_775_p23;
wire   [5:0] v195_fu_775_p25;
wire   [5:0] v195_fu_775_p27;
wire   [5:0] v195_fu_775_p29;
wire   [5:0] v195_fu_775_p31;
wire   [5:0] v195_fu_775_p33;
wire   [5:0] v195_fu_775_p35;
wire   [5:0] v195_fu_775_p37;
wire   [5:0] v195_fu_775_p39;
wire   [5:0] v195_fu_775_p41;
wire   [5:0] v195_fu_775_p43;
wire   [5:0] v195_fu_775_p45;
wire   [5:0] v195_fu_775_p47;
wire   [5:0] v195_fu_775_p49;
wire   [5:0] v195_fu_775_p51;
wire   [5:0] v195_fu_775_p53;
wire   [5:0] v195_fu_775_p55;
wire   [5:0] v195_fu_775_p57;
wire   [5:0] v195_fu_775_p59;
wire   [5:0] v195_fu_775_p61;
wire   [5:0] v195_fu_775_p63;
wire  signed [5:0] v195_fu_775_p65;
wire  signed [5:0] v195_fu_775_p67;
wire  signed [5:0] v195_fu_775_p69;
wire  signed [5:0] v195_fu_775_p71;
wire  signed [5:0] v195_fu_775_p73;
wire  signed [5:0] v195_fu_775_p75;
wire  signed [5:0] v195_fu_775_p77;
wire  signed [5:0] v195_fu_775_p79;
wire  signed [5:0] v195_fu_775_p81;
wire  signed [5:0] v195_fu_775_p83;
wire  signed [5:0] v195_fu_775_p85;
wire  signed [5:0] v195_fu_775_p87;
wire  signed [5:0] v195_fu_775_p89;
wire  signed [5:0] v195_fu_775_p91;
wire  signed [5:0] v195_fu_775_p93;
wire  signed [5:0] v195_fu_775_p95;
wire  signed [5:0] v195_fu_775_p97;
wire  signed [5:0] v195_fu_775_p99;
wire  signed [5:0] v195_fu_775_p101;
wire  signed [5:0] v195_fu_775_p103;
wire  signed [5:0] v195_fu_775_p105;
wire  signed [5:0] v195_fu_775_p107;
wire  signed [5:0] v195_fu_775_p109;
wire  signed [5:0] v195_fu_775_p111;
wire  signed [5:0] v195_fu_775_p113;
wire  signed [5:0] v195_fu_775_p115;
wire  signed [5:0] v195_fu_775_p117;
wire  signed [5:0] v195_fu_775_p119;
wire  signed [5:0] v195_fu_775_p121;
wire  signed [5:0] v195_fu_775_p123;
wire  signed [5:0] v195_fu_775_p125;
wire  signed [5:0] v195_fu_775_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v192_fu_308 = 64'd0;
#0 v193_fu_312 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U5216(.din0(v8_1938_reload),.din1(v8_19410_reload),.din2(v8_19512_reload),.din3(v8_19614_reload),.din4(v8_19716_reload),.din5(v8_19818_reload),.din6(v8_19920_reload),.din7(v8_20022_reload),.din8(v8_20124_reload),.din9(v8_20226_reload),.din10(v8_20328_reload),.din11(v8_20430_reload),.din12(v8_20532_reload),.din13(v8_20634_reload),.din14(v8_20736_reload),.din15(v8_20838_reload),.din16(v8_20940_reload),.din17(v8_21042_reload),.din18(v8_21144_reload),.din19(v8_21246_reload),.din20(v8_21348_reload),.din21(v8_21450_reload),.din22(v8_21552_reload),.din23(v8_21654_reload),.din24(v8_21756_reload),.din25(v8_21858_reload),.din26(v8_21960_reload),.din27(v8_22062_reload),.din28(v8_22164_reload),.din29(v8_22266_reload),.din30(v8_22368_reload),.din31(v8_22470_reload),.din32(v8_22572_reload),.din33(v8_22674_reload),.din34(v8_22776_reload),.din35(v8_22878_reload),.din36(v8_22980_reload),.din37(v8_23082_reload),.din38(v8_23184_reload),.din39(v8_23286_reload),.din40(v8_23388_reload),.din41(v8_23490_reload),.din42(v8_23592_reload),.din43(v8_23694_reload),.din44(v8_23796_reload),.din45(v8_23898_reload),.din46(v8_239100_reload),.din47(v8_240102_reload),.din48(v8_241104_reload),.din49(v8_242106_reload),.din50(v8_243108_reload),.din51(v8_244110_reload),.din52(v8_245112_reload),.din53(v8_246114_reload),.din54(v8_247116_reload),.din55(v8_248118_reload),.din56(v8_249120_reload),.din57(v8_250122_reload),.din58(v8_251124_reload),.din59(v8_252126_reload),.din60(v8_253128_reload),.din61(v8_254130_reload),.din62(v8_255132_reload),.din63(v8_256134_reload),.def(v195_fu_775_p129),.sel(v195_fu_775_p130),.dout(v195_fu_775_p131));
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
        v192_fu_308 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v192_fu_308 <= grp_fu_20085_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v193_fu_312 <= 7'd0;
    end else if (((icmp_ln313_reg_1106 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v193_fu_312 <= add_ln313_reg_1125;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln313_reg_1125 <= add_ln313_fu_1039_p2;
        select_ln317_reg_1134 <= select_ln317_fu_1051_p3;
        tmp_reg_1130 <= v193_1_reg_1100[32'd5];
        tmp_reg_1130_pp0_iter1_reg <= tmp_reg_1130;
        tmp_reg_1130_pp0_iter2_reg <= tmp_reg_1130_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln313_reg_1106 <= icmp_ln313_fu_755_p2;
        icmp_ln313_reg_1106_pp0_iter1_reg <= icmp_ln313_reg_1106;
        icmp_ln313_reg_1106_pp0_iter2_reg <= icmp_ln313_reg_1106_pp0_iter1_reg;
        icmp_ln313_reg_1106_pp0_iter3_reg <= icmp_ln313_reg_1106_pp0_iter2_reg;
        v193_1_reg_1100 <= ap_sig_allocacmp_v193_1;
        v195_reg_1110 <= v195_fu_775_p131;
        v4_0_addr_reg_1115 <= zext_ln314_fu_769_p1;
        v4_0_addr_reg_1115_pp0_iter1_reg <= v4_0_addr_reg_1115;
        v4_0_addr_reg_1115_pp0_iter2_reg <= v4_0_addr_reg_1115_pp0_iter1_reg;
        v4_1_addr_reg_1120 <= zext_ln314_fu_769_p1;
        v4_1_addr_reg_1120_pp0_iter1_reg <= v4_1_addr_reg_1120;
        v4_1_addr_reg_1120_pp0_iter2_reg <= v4_1_addr_reg_1120_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v196_reg_1139 <= grp_fu_38367_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v198_reg_1149 <= grp_fu_20085_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v199_reg_1156 <= grp_fu_38367_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln313_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln313_reg_1106_pp0_iter3_reg == 1'd1))) begin
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
        ap_sig_allocacmp_v192_load_1 = grp_fu_20085_p_dout0;
    end else begin
        ap_sig_allocacmp_v192_load_1 = v192_fu_308;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v193_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v193_1 = v193_fu_312;
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
        grp_fu_733_p0 = ap_sig_allocacmp_v192_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_733_p0 = v197_fu_1063_p1;
    end else begin
        grp_fu_733_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_733_p1 = v199_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_733_p1 = v196_reg_1139;
    end else begin
        grp_fu_733_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_737_p0 = v198_reg_1149;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_737_p0 = v195_reg_1110;
    end else begin
        grp_fu_737_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_737_p1 = v198_reg_1149;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_737_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_737_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln313_reg_1106_pp0_iter3_reg == 1'd1))) begin
        v194_out_ap_vld = 1'b1;
    end else begin
        v194_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v4_0_address0_local = v4_0_addr_reg_1115_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_0_address0_local = zext_ln314_fu_769_p1;
    end else begin
        v4_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v4_0_ce0_local = 1'b1;
    end else begin
        v4_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_1130_pp0_iter2_reg == 1'd0))) begin
        v4_0_we0_local = 1'b1;
    end else begin
        v4_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v4_1_address0_local = v4_1_addr_reg_1120_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_1_address0_local = zext_ln314_fu_769_p1;
    end else begin
        v4_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v4_1_ce0_local = 1'b1;
    end else begin
        v4_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_1130_pp0_iter2_reg == 1'd1))) begin
        v4_1_we0_local = 1'b1;
    end else begin
        v4_1_we0_local = 1'b0;
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
assign add_ln313_fu_1039_p2 = (v193_1_reg_1100 + 7'd1);
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
assign bitcast_ln319_fu_1067_p1 = v198_reg_1149;
assign grp_fu_20085_p_ce = 1'b1;
assign grp_fu_20085_p_din0 = grp_fu_733_p0;
assign grp_fu_20085_p_din1 = grp_fu_733_p1;
assign grp_fu_20085_p_opcode = grp_fu_733_opcode;
assign grp_fu_38367_p_ce = 1'b1;
assign grp_fu_38367_p_din0 = grp_fu_737_p0;
assign grp_fu_38367_p_din1 = grp_fu_737_p1;
assign icmp_ln313_fu_755_p2 = ((ap_sig_allocacmp_v193_1 == 7'd64) ? 1'b1 : 1'b0);
assign select_ln317_fu_1051_p3 = ((tmp_fu_1044_p3[0:0] == 1'b1) ? v4_1_q0 : v4_0_q0);
assign tmp_fu_1044_p3 = v193_1_reg_1100[32'd5];
assign trunc_ln313_1_fu_765_p1 = ap_sig_allocacmp_v193_1[4:0];
assign v194_out = v192_fu_308;
assign v195_fu_775_p129 = 'bx;
assign v195_fu_775_p130 = ap_sig_allocacmp_v193_1[5:0];
assign v197_fu_1063_p1 = select_ln317_reg_1134;
assign v4_0_address0 = v4_0_address0_local;
assign v4_0_ce0 = v4_0_ce0_local;
assign v4_0_d0 = bitcast_ln319_fu_1067_p1;
assign v4_0_we0 = v4_0_we0_local;
assign v4_1_address0 = v4_1_address0_local;
assign v4_1_ce0 = v4_1_ce0_local;
assign v4_1_d0 = bitcast_ln319_fu_1067_p1;
assign v4_1_we0 = v4_1_we0_local;
assign zext_ln314_fu_769_p1 = trunc_ln313_1_fu_765_p1;
endmodule 