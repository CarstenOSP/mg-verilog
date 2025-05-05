module backprop_update_weights_1_Pipeline_up_weight_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,p_read192,p_read194,p_read196,p_read198,p_read200,p_read202,p_read204,p_read206,p_read208,p_read210,p_read212,p_read214,p_read216,p_read218,p_read220,p_read222,p_read224,p_read226,p_read228,p_read230,p_read232,p_read234,p_read236,p_read238,p_read240,p_read242,p_read244,p_read246,p_read248,p_read250,p_read252,p_read254,biases1_address0,biases1_ce0,biases1_we0,biases1_d0,biases1_q0,biases1_address1,biases1_ce1,biases1_we1,biases1_d1,biases1_q1,p_read193,p_read195,p_read197,p_read199,p_read201,p_read203,p_read205,p_read207,p_read209,p_read211,p_read213,p_read215,p_read217,p_read219,p_read221,p_read223,p_read225,p_read227,p_read229,p_read231,p_read233,p_read235,p_read237,p_read239,p_read241,p_read243,p_read245,p_read247,p_read249,p_read251,p_read253,p_read255,bias_norm_out,bias_norm_out_ap_vld,grp_fu_5285_p_din0,grp_fu_5285_p_din1,grp_fu_5285_p_dout0,grp_fu_5285_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] p_read192;
input  [63:0] p_read194;
input  [63:0] p_read196;
input  [63:0] p_read198;
input  [63:0] p_read200;
input  [63:0] p_read202;
input  [63:0] p_read204;
input  [63:0] p_read206;
input  [63:0] p_read208;
input  [63:0] p_read210;
input  [63:0] p_read212;
input  [63:0] p_read214;
input  [63:0] p_read216;
input  [63:0] p_read218;
input  [63:0] p_read220;
input  [63:0] p_read222;
input  [63:0] p_read224;
input  [63:0] p_read226;
input  [63:0] p_read228;
input  [63:0] p_read230;
input  [63:0] p_read232;
input  [63:0] p_read234;
input  [63:0] p_read236;
input  [63:0] p_read238;
input  [63:0] p_read240;
input  [63:0] p_read242;
input  [63:0] p_read244;
input  [63:0] p_read246;
input  [63:0] p_read248;
input  [63:0] p_read250;
input  [63:0] p_read252;
input  [63:0] p_read254;
output  [5:0] biases1_address0;
output   biases1_ce0;
output   biases1_we0;
output  [63:0] biases1_d0;
input  [63:0] biases1_q0;
output  [5:0] biases1_address1;
output   biases1_ce1;
output   biases1_we1;
output  [63:0] biases1_d1;
input  [63:0] biases1_q1;
input  [63:0] p_read193;
input  [63:0] p_read195;
input  [63:0] p_read197;
input  [63:0] p_read199;
input  [63:0] p_read201;
input  [63:0] p_read203;
input  [63:0] p_read205;
input  [63:0] p_read207;
input  [63:0] p_read209;
input  [63:0] p_read211;
input  [63:0] p_read213;
input  [63:0] p_read215;
input  [63:0] p_read217;
input  [63:0] p_read219;
input  [63:0] p_read221;
input  [63:0] p_read223;
input  [63:0] p_read225;
input  [63:0] p_read227;
input  [63:0] p_read229;
input  [63:0] p_read231;
input  [63:0] p_read233;
input  [63:0] p_read235;
input  [63:0] p_read237;
input  [63:0] p_read239;
input  [63:0] p_read241;
input  [63:0] p_read243;
input  [63:0] p_read245;
input  [63:0] p_read247;
input  [63:0] p_read249;
input  [63:0] p_read251;
input  [63:0] p_read253;
input  [63:0] p_read255;
output  [63:0] bias_norm_out;
output   bias_norm_out_ap_vld;
output  [63:0] grp_fu_5285_p_din0;
output  [63:0] grp_fu_5285_p_din1;
input  [63:0] grp_fu_5285_p_dout0;
output   grp_fu_5285_p_ce;
reg ap_idle;
reg bias_norm_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] tmp_2_reg_1061;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_2_fu_694_p3;
reg   [0:0] tmp_2_reg_1061_pp0_iter1_reg;
wire   [63:0] tmp_fu_711_p67;
reg   [63:0] tmp_reg_1065;
reg   [5:0] biases1_addr_reg_1070;
reg   [5:0] biases1_addr_reg_1070_pp0_iter1_reg;
wire   [63:0] tmp_1_fu_870_p67;
reg   [63:0] tmp_1_reg_1075;
reg   [5:0] biases1_addr_1_reg_1080;
reg   [5:0] biases1_addr_1_reg_1080_pp0_iter1_reg;
reg   [63:0] biases1_load_reg_1085;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] biases1_load_1_reg_1090;
reg   [63:0] mul_reg_1095;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln133_fu_1017_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] mul27_1_reg_1105;
wire   [63:0] bitcast_ln133_2_fu_1021_p1;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] grp_fu_672_p2;
reg   [63:0] sub1_reg_1115;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] sub30_1_reg_1122;
reg   [63:0] mul1_reg_1129;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] mul35_1_reg_1139;
reg   [63:0] bias_norm_1_reg_1144;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage6_subdone;
wire   [63:0] zext_ln132_fu_702_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln122_fu_865_p1;
reg   [63:0] bias_norm_fu_248;
wire    ap_block_pp0_stage6;
wire    ap_loop_init;
wire    ap_block_pp0_stage7;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage6;
reg    ap_idle_pp0_0to0;
reg   [6:0] i_1_fu_252;
wire   [6:0] add_ln132_fu_1006_p2;
reg   [6:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage6_01001;
reg    biases1_ce1_local;
reg   [5:0] biases1_address1_local;
reg    biases1_ce0_local;
reg   [5:0] biases1_address0_local;
reg    biases1_we1_local;
wire   [63:0] bitcast_ln133_1_fu_1025_p1;
wire    ap_block_pp0_stage1;
reg    biases1_we0_local;
wire   [63:0] bitcast_ln133_3_fu_1029_p1;
reg   [63:0] grp_fu_672_p0;
reg   [63:0] grp_fu_672_p1;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage15;
reg   [63:0] grp_fu_676_p0;
reg   [63:0] grp_fu_676_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire   [63:0] tmp_fu_711_p65;
wire   [5:0] trunc_ln132_fu_707_p1;
wire   [4:0] tmp_s_fu_847_p4;
wire   [5:0] or_ln1_fu_857_p3;
wire   [63:0] tmp_1_fu_870_p65;
reg   [1:0] grp_fu_672_opcode;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_fu_711_p1;
wire   [5:0] tmp_fu_711_p3;
wire   [5:0] tmp_fu_711_p5;
wire   [5:0] tmp_fu_711_p7;
wire   [5:0] tmp_fu_711_p9;
wire   [5:0] tmp_fu_711_p11;
wire   [5:0] tmp_fu_711_p13;
wire   [5:0] tmp_fu_711_p15;
wire   [5:0] tmp_fu_711_p17;
wire   [5:0] tmp_fu_711_p19;
wire   [5:0] tmp_fu_711_p21;
wire   [5:0] tmp_fu_711_p23;
wire   [5:0] tmp_fu_711_p25;
wire   [5:0] tmp_fu_711_p27;
wire   [5:0] tmp_fu_711_p29;
wire   [5:0] tmp_fu_711_p31;
wire  signed [5:0] tmp_fu_711_p33;
wire  signed [5:0] tmp_fu_711_p35;
wire  signed [5:0] tmp_fu_711_p37;
wire  signed [5:0] tmp_fu_711_p39;
wire  signed [5:0] tmp_fu_711_p41;
wire  signed [5:0] tmp_fu_711_p43;
wire  signed [5:0] tmp_fu_711_p45;
wire  signed [5:0] tmp_fu_711_p47;
wire  signed [5:0] tmp_fu_711_p49;
wire  signed [5:0] tmp_fu_711_p51;
wire  signed [5:0] tmp_fu_711_p53;
wire  signed [5:0] tmp_fu_711_p55;
wire  signed [5:0] tmp_fu_711_p57;
wire  signed [5:0] tmp_fu_711_p59;
wire  signed [5:0] tmp_fu_711_p61;
wire  signed [5:0] tmp_fu_711_p63;
wire   [5:0] tmp_1_fu_870_p1;
wire   [5:0] tmp_1_fu_870_p3;
wire   [5:0] tmp_1_fu_870_p5;
wire   [5:0] tmp_1_fu_870_p7;
wire   [5:0] tmp_1_fu_870_p9;
wire   [5:0] tmp_1_fu_870_p11;
wire   [5:0] tmp_1_fu_870_p13;
wire   [5:0] tmp_1_fu_870_p15;
wire   [5:0] tmp_1_fu_870_p17;
wire   [5:0] tmp_1_fu_870_p19;
wire   [5:0] tmp_1_fu_870_p21;
wire   [5:0] tmp_1_fu_870_p23;
wire   [5:0] tmp_1_fu_870_p25;
wire   [5:0] tmp_1_fu_870_p27;
wire   [5:0] tmp_1_fu_870_p29;
wire   [5:0] tmp_1_fu_870_p31;
wire  signed [5:0] tmp_1_fu_870_p33;
wire  signed [5:0] tmp_1_fu_870_p35;
wire  signed [5:0] tmp_1_fu_870_p37;
wire  signed [5:0] tmp_1_fu_870_p39;
wire  signed [5:0] tmp_1_fu_870_p41;
wire  signed [5:0] tmp_1_fu_870_p43;
wire  signed [5:0] tmp_1_fu_870_p45;
wire  signed [5:0] tmp_1_fu_870_p47;
wire  signed [5:0] tmp_1_fu_870_p49;
wire  signed [5:0] tmp_1_fu_870_p51;
wire  signed [5:0] tmp_1_fu_870_p53;
wire  signed [5:0] tmp_1_fu_870_p55;
wire  signed [5:0] tmp_1_fu_870_p57;
wire  signed [5:0] tmp_1_fu_870_p59;
wire  signed [5:0] tmp_1_fu_870_p61;
wire  signed [5:0] tmp_1_fu_870_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_248 = 64'd0;
#0 i_1_fu_252 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1335(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_672_p0),.din1(grp_fu_672_p1),.opcode(grp_fu_672_opcode),.ce(1'b1),.dout(grp_fu_672_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U1337(.din0(p_read192),.din1(p_read194),.din2(p_read196),.din3(p_read198),.din4(p_read200),.din5(p_read202),.din6(p_read204),.din7(p_read206),.din8(p_read208),.din9(p_read210),.din10(p_read212),.din11(p_read214),.din12(p_read216),.din13(p_read218),.din14(p_read220),.din15(p_read222),.din16(p_read224),.din17(p_read226),.din18(p_read228),.din19(p_read230),.din20(p_read232),.din21(p_read234),.din22(p_read236),.din23(p_read238),.din24(p_read240),.din25(p_read242),.din26(p_read244),.din27(p_read246),.din28(p_read248),.din29(p_read250),.din30(p_read252),.din31(p_read254),.def(tmp_fu_711_p65),.sel(trunc_ln132_fu_707_p1),.dout(tmp_fu_711_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U1338(.din0(p_read193),.din1(p_read195),.din2(p_read197),.din3(p_read199),.din4(p_read201),.din5(p_read203),.din6(p_read205),.din7(p_read207),.din8(p_read209),.din9(p_read211),.din10(p_read213),.din11(p_read215),.din12(p_read217),.din13(p_read219),.din14(p_read221),.din15(p_read223),.din16(p_read225),.din17(p_read227),.din18(p_read229),.din19(p_read231),.din20(p_read233),.din21(p_read235),.din22(p_read237),.din23(p_read239),.din24(p_read241),.din25(p_read243),.din26(p_read245),.din27(p_read247),.din28(p_read249),.din29(p_read251),.din30(p_read253),.din31(p_read255),.def(tmp_1_fu_870_p65),.sel(trunc_ln132_fu_707_p1),.dout(tmp_1_fu_870_p67));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_248 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bias_norm_fu_248 <= grp_fu_672_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_2_fu_694_p3 == 1'd0))) begin
            i_1_fu_252 <= add_ln132_fu_1006_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_252 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        bias_norm_1_reg_1144 <= grp_fu_672_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_addr_1_reg_1080[5 : 1] <= zext_ln122_fu_865_p1[5 : 1];
        biases1_addr_1_reg_1080_pp0_iter1_reg[5 : 1] <= biases1_addr_1_reg_1080[5 : 1];
        biases1_addr_reg_1070 <= zext_ln132_fu_702_p1;
        biases1_addr_reg_1070_pp0_iter1_reg <= biases1_addr_reg_1070;
        tmp_1_reg_1075 <= tmp_1_fu_870_p67;
        tmp_2_reg_1061 <= ap_sig_allocacmp_i[32'd6];
        tmp_2_reg_1061_pp0_iter1_reg <= tmp_2_reg_1061;
        tmp_reg_1065 <= tmp_fu_711_p67;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases1_load_1_reg_1090 <= biases1_q0;
        biases1_load_reg_1085 <= biases1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_1129 <= grp_fu_5285_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul27_1_reg_1105 <= grp_fu_5285_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul35_1_reg_1139 <= grp_fu_5285_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_1095 <= grp_fu_5285_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        sub1_reg_1115 <= grp_fu_672_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub30_1_reg_1122 <= grp_fu_672_p2;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1061 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_2_reg_1061_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 7'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_252;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_2_reg_1061_pp0_iter1_reg == 1'd1))) begin
        bias_norm_out_ap_vld = 1'b1;
    end else begin
        bias_norm_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases1_address0_local = biases1_addr_1_reg_1080_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_address0_local = zext_ln122_fu_865_p1;
    end else begin
        biases1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases1_address1_local = biases1_addr_reg_1070_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_address1_local = zext_ln132_fu_702_p1;
    end else begin
        biases1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_ce0_local = 1'b1;
    end else begin
        biases1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_ce1_local = 1'b1;
    end else begin
        biases1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases1_we0_local = 1'b1;
    end else begin
        biases1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases1_we1_local = 1'b1;
    end else begin
        biases1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_2_reg_1061 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_2_reg_1061 == 1'd0) & (1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_672_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_672_opcode = 2'd0;
    end else begin
        grp_fu_672_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_672_p0 = bias_norm_1_reg_1144;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_672_p0 = bias_norm_fu_248;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_672_p0 = bitcast_ln133_2_fu_1021_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_672_p0 = bitcast_ln133_fu_1017_p1;
    end else begin
        grp_fu_672_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_672_p1 = mul35_1_reg_1139;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_672_p1 = mul1_reg_1129;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_672_p1 = mul27_1_reg_1105;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_672_p1 = mul_reg_1095;
    end else begin
        grp_fu_672_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_676_p0 = sub30_1_reg_1122;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_676_p0 = sub1_reg_1115;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_676_p0 = tmp_1_reg_1075;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_676_p0 = tmp_reg_1065;
    end else begin
        grp_fu_676_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_676_p1 = sub30_1_reg_1122;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_676_p1 = sub1_reg_1115;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_676_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_676_p1 = 'bx;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage6))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln132_fu_1006_p2 = (ap_sig_allocacmp_i + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bias_norm_out = bias_norm_fu_248;
assign biases1_address0 = biases1_address0_local;
assign biases1_address1 = biases1_address1_local;
assign biases1_ce0 = biases1_ce0_local;
assign biases1_ce1 = biases1_ce1_local;
assign biases1_d0 = bitcast_ln133_3_fu_1029_p1;
assign biases1_d1 = bitcast_ln133_1_fu_1025_p1;
assign biases1_we0 = biases1_we0_local;
assign biases1_we1 = biases1_we1_local;
assign bitcast_ln133_1_fu_1025_p1 = sub1_reg_1115;
assign bitcast_ln133_2_fu_1021_p1 = biases1_load_1_reg_1090;
assign bitcast_ln133_3_fu_1029_p1 = sub30_1_reg_1122;
assign bitcast_ln133_fu_1017_p1 = biases1_load_reg_1085;
assign grp_fu_5285_p_ce = 1'b1;
assign grp_fu_5285_p_din0 = grp_fu_676_p0;
assign grp_fu_5285_p_din1 = grp_fu_676_p1;
assign or_ln1_fu_857_p3 = {{tmp_s_fu_847_p4}, {1'd1}};
assign tmp_1_fu_870_p65 = 'bx;
assign tmp_2_fu_694_p3 = ap_sig_allocacmp_i[32'd6];
assign tmp_fu_711_p65 = 'bx;
assign tmp_s_fu_847_p4 = {{ap_sig_allocacmp_i[5:1]}};
assign trunc_ln132_fu_707_p1 = ap_sig_allocacmp_i[5:0];
assign zext_ln122_fu_865_p1 = or_ln1_fu_857_p3;
assign zext_ln132_fu_702_p1 = ap_sig_allocacmp_i;
always @ (posedge ap_clk) begin
    biases1_addr_1_reg_1080[0] <= 1'b1;
    biases1_addr_1_reg_1080_pp0_iter1_reg[0] <= 1'b1;
end
endmodule 