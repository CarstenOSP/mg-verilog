
module ellpack_ellpack_Pipeline_ellpack_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum,p_udiv1_cast,nzval_0_address0,nzval_0_ce0,nzval_0_q0,nzval_2_address0,nzval_2_ce0,nzval_2_q0,empty_17,cols_0_address0,cols_0_ce0,cols_0_q0,cols_2_address0,cols_2_ce0,cols_2_q0,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,vec_2_address0,vec_2_ce0,vec_2_q0,vec_2_address1,vec_2_ce1,vec_2_q1,vec_3_address0,vec_3_ce0,vec_3_q0,vec_3_address1,vec_3_ce1,vec_3_q1,empty,nzval_1_address0,nzval_1_ce0,nzval_1_q0,nzval_3_address0,nzval_3_ce0,nzval_3_q0,cols_1_address0,cols_1_ce0,cols_1_q0,cols_3_address0,cols_3_ce0,cols_3_q0,sum_3_out,sum_3_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] sum;
input  [10:0] p_udiv1_cast;
output  [10:0] nzval_0_address0;
output   nzval_0_ce0;
input  [63:0] nzval_0_q0;
output  [10:0] nzval_2_address0;
output   nzval_2_ce0;
input  [63:0] nzval_2_q0;
input  [0:0] empty_17;
output  [10:0] cols_0_address0;
output   cols_0_ce0;
input  [31:0] cols_0_q0;
output  [10:0] cols_2_address0;
output   cols_2_ce0;
input  [31:0] cols_2_q0;
output  [6:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [6:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [6:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [6:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [6:0] vec_2_address0;
output   vec_2_ce0;
input  [63:0] vec_2_q0;
output  [6:0] vec_2_address1;
output   vec_2_ce1;
input  [63:0] vec_2_q1;
output  [6:0] vec_3_address0;
output   vec_3_ce0;
input  [63:0] vec_3_q0;
output  [6:0] vec_3_address1;
output   vec_3_ce1;
input  [63:0] vec_3_q1;
input  [12:0] empty;
output  [10:0] nzval_1_address0;
output   nzval_1_ce0;
input  [63:0] nzval_1_q0;
output  [10:0] nzval_3_address0;
output   nzval_3_ce0;
input  [63:0] nzval_3_q0;
output  [10:0] cols_1_address0;
output   cols_1_ce0;
input  [31:0] cols_1_q0;
output  [10:0] cols_3_address0;
output   cols_3_ce0;
input  [31:0] cols_3_q0;
output  [63:0] sum_3_out;
output   sum_3_out_ap_vld;
reg ap_idle;
reg sum_3_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_subdone;
reg   [0:0] icmp_ln15_reg_1072;
reg    ap_condition_exit_pp0_iter0_stage26;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
wire   [63:0] grp_fu_483_p2;
reg   [63:0] reg_492;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_block_pp0_stage26_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_3_read_fu_126_p2;
reg   [3:0] j_1_reg_1027;
wire   [0:0] icmp_ln15_fu_592_p2;
wire   [63:0] select_ln16_fu_670_p3;
reg   [63:0] select_ln16_reg_1116;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln16_fu_684_p1;
reg   [1:0] trunc_ln16_reg_1121;
reg   [6:0] lshr_ln16_1_reg_1126;
wire   [63:0] select_ln16_2_fu_698_p3;
reg   [63:0] select_ln16_2_reg_1131;
wire   [1:0] trunc_ln16_1_fu_712_p1;
reg   [1:0] trunc_ln16_1_reg_1136;
reg   [6:0] lshr_ln16_3_reg_1141;
wire   [63:0] select_ln16_4_fu_726_p3;
reg   [63:0] select_ln16_4_reg_1146;
wire   [1:0] trunc_ln16_2_fu_740_p1;
reg   [1:0] trunc_ln16_2_reg_1151;
reg   [6:0] lshr_ln16_5_reg_1156;
wire   [63:0] select_ln16_6_fu_754_p3;
reg   [63:0] select_ln16_6_reg_1161;
wire   [1:0] trunc_ln16_3_fu_768_p1;
reg   [1:0] trunc_ln16_3_reg_1166;
reg   [6:0] lshr_ln16_7_reg_1171;
wire   [63:0] tmp_2_fu_812_p11;
reg   [63:0] tmp_2_reg_1216;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_5_fu_851_p11;
reg   [63:0] tmp_5_reg_1221;
wire   [63:0] bitcast_ln16_fu_888_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_8_fu_908_p11;
reg   [63:0] tmp_8_reg_1271;
wire   [63:0] tmp_s_fu_947_p11;
reg   [63:0] tmp_s_reg_1276;
wire   [63:0] bitcast_ln16_5_fu_970_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln16_10_fu_974_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln16_15_fu_978_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] grp_fu_488_p2;
reg   [63:0] Si_reg_1296;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] Si_1_reg_1306;
reg   [63:0] Si_2_reg_1311;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] Si_3_reg_1316;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage10_subdone;
wire   [63:0] zext_ln16_5_fu_530_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_6_fu_576_p1;
wire   [63:0] zext_ln16_7_fu_618_p1;
wire   [63:0] zext_ln16_8_fu_662_p1;
wire   [63:0] zext_ln16_fu_782_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln16_1_fu_789_p1;
wire   [63:0] zext_ln16_2_fu_874_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln16_3_fu_881_p1;
reg   [63:0] sum_1_fu_112;
wire    ap_loop_init;
wire    ap_block_pp0_stage11;
reg   [3:0] j_fu_116;
wire   [3:0] add_ln15_fu_986_p2;
wire    ap_block_pp0_stage31_11001;
reg   [3:0] ap_sig_allocacmp_j_1;
wire    ap_block_pp0_stage26_01001;
reg    nzval_0_ce0_local;
reg   [10:0] nzval_0_address0_local;
reg    nzval_2_ce0_local;
reg   [10:0] nzval_2_address0_local;
reg    cols_0_ce0_local;
reg   [10:0] cols_0_address0_local;
reg    cols_2_ce0_local;
reg   [10:0] cols_2_address0_local;
reg    nzval_1_ce0_local;
reg   [10:0] nzval_1_address0_local;
reg    nzval_3_ce0_local;
reg   [10:0] nzval_3_address0_local;
reg    cols_1_ce0_local;
reg   [10:0] cols_1_address0_local;
reg    cols_3_ce0_local;
reg   [10:0] cols_3_address0_local;
reg    vec_0_ce1_local;
reg   [6:0] vec_0_address1_local;
reg    vec_0_ce0_local;
reg   [6:0] vec_0_address0_local;
reg    vec_1_ce1_local;
reg   [6:0] vec_1_address1_local;
reg    vec_1_ce0_local;
reg   [6:0] vec_1_address0_local;
reg    vec_2_ce1_local;
reg   [6:0] vec_2_address1_local;
reg    vec_2_ce0_local;
reg   [6:0] vec_2_address0_local;
reg    vec_3_ce1_local;
reg   [6:0] vec_3_address1_local;
reg    vec_3_ce0_local;
reg   [6:0] vec_3_address0_local;
reg   [63:0] grp_fu_483_p0;
reg   [63:0] grp_fu_483_p1;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27;
reg   [63:0] grp_fu_488_p0;
reg   [63:0] grp_fu_488_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire   [1:0] lshr_ln1_fu_510_p4;
wire   [10:0] zext_ln16_4_fu_520_p1;
wire   [10:0] add_ln16_fu_524_p2;
wire   [2:0] tmp_fu_538_p4;
wire   [3:0] or_ln_fu_548_p3;
wire   [12:0] zext_ln14_fu_556_p1;
wire   [12:0] add_ln16_1_fu_560_p2;
wire   [10:0] lshr_ln16_2_fu_566_p4;
wire   [3:0] or_ln15_1_fu_584_p3;
wire   [12:0] zext_ln14_1_fu_598_p1;
wire   [12:0] add_ln16_2_fu_602_p2;
wire   [10:0] lshr_ln16_4_fu_608_p4;
wire   [0:0] tmp_4_fu_626_p3;
wire   [2:0] or_ln15_2_fu_634_p3;
wire   [12:0] zext_ln14_2_fu_642_p1;
wire   [12:0] add_ln16_3_fu_646_p2;
wire   [10:0] lshr_ln16_6_fu_652_p4;
wire    ap_block_pp0_stage1;
wire   [31:0] select_ln16_1_fu_677_p3;
wire   [31:0] select_ln16_3_fu_705_p3;
wire   [31:0] select_ln16_5_fu_733_p3;
wire   [31:0] select_ln16_7_fu_761_p3;
wire   [63:0] tmp_2_fu_812_p2;
wire   [63:0] tmp_2_fu_812_p4;
wire   [63:0] tmp_2_fu_812_p6;
wire   [63:0] tmp_2_fu_812_p8;
wire   [63:0] tmp_2_fu_812_p9;
wire   [63:0] tmp_5_fu_851_p2;
wire   [63:0] tmp_5_fu_851_p4;
wire   [63:0] tmp_5_fu_851_p6;
wire   [63:0] tmp_5_fu_851_p8;
wire   [63:0] tmp_5_fu_851_p9;
wire   [63:0] tmp_8_fu_908_p2;
wire   [63:0] tmp_8_fu_908_p4;
wire   [63:0] tmp_8_fu_908_p6;
wire   [63:0] tmp_8_fu_908_p8;
wire   [63:0] tmp_8_fu_908_p9;
wire   [63:0] tmp_s_fu_947_p2;
wire   [63:0] tmp_s_fu_947_p4;
wire   [63:0] tmp_s_fu_947_p6;
wire   [63:0] tmp_s_fu_947_p8;
wire   [63:0] tmp_s_fu_947_p9;
wire    ap_block_pp0_stage31;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_440;
wire   [1:0] tmp_2_fu_812_p1;
wire   [1:0] tmp_2_fu_812_p3;
wire  signed [1:0] tmp_2_fu_812_p5;
wire  signed [1:0] tmp_2_fu_812_p7;
wire   [1:0] tmp_5_fu_851_p1;
wire   [1:0] tmp_5_fu_851_p3;
wire  signed [1:0] tmp_5_fu_851_p5;
wire  signed [1:0] tmp_5_fu_851_p7;
wire   [1:0] tmp_8_fu_908_p1;
wire   [1:0] tmp_8_fu_908_p3;
wire  signed [1:0] tmp_8_fu_908_p5;
wire  signed [1:0] tmp_8_fu_908_p7;
wire   [1:0] tmp_s_fu_947_p1;
wire   [1:0] tmp_s_fu_947_p3;
wire  signed [1:0] tmp_s_fu_947_p5;
wire  signed [1:0] tmp_s_fu_947_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 sum_1_fu_112 = 64'd0;
#0 j_fu_116 = 4'd0;
#0 ap_done_reg = 1'b0;
end
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_483_p0),.din1(grp_fu_483_p1),.ce(1'b1),.dout(grp_fu_483_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_488_p0),.din1(grp_fu_488_p1),.ce(1'b1),.dout(grp_fu_488_p2));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_2_fu_812_p2),.din1(tmp_2_fu_812_p4),.din2(tmp_2_fu_812_p6),.din3(tmp_2_fu_812_p8),.def(tmp_2_fu_812_p9),.sel(trunc_ln16_reg_1121),.dout(tmp_2_fu_812_p11));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_5_fu_851_p2),.din1(tmp_5_fu_851_p4),.din2(tmp_5_fu_851_p6),.din3(tmp_5_fu_851_p8),.def(tmp_5_fu_851_p9),.sel(trunc_ln16_1_reg_1136),.dout(tmp_5_fu_851_p11));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_8_fu_908_p2),.din1(tmp_8_fu_908_p4),.din2(tmp_8_fu_908_p6),.din3(tmp_8_fu_908_p8),.def(tmp_8_fu_908_p9),.sel(trunc_ln16_2_reg_1151),.dout(tmp_8_fu_908_p11));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(tmp_s_fu_947_p2),.din1(tmp_s_fu_947_p4),.din2(tmp_s_fu_947_p6),.din3(tmp_s_fu_947_p8),.def(tmp_s_fu_947_p9),.sel(trunc_ln16_3_reg_1166),.dout(tmp_s_fu_947_p11));
ellpack_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage26),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage26_subdone) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage26)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_116 <= 4'd0;
    end else if (((icmp_ln15_reg_1072 == 1'd1) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        j_fu_116 <= add_ln15_fu_986_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_1_fu_112 <= sum;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        sum_1_fu_112 <= grp_fu_483_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        Si_1_reg_1306 <= grp_fu_488_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        Si_2_reg_1311 <= grp_fu_488_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        Si_3_reg_1316 <= grp_fu_488_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        Si_reg_1296 <= grp_fu_488_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15_reg_1072 <= icmp_ln15_fu_592_p2;
        j_1_reg_1027 <= ap_sig_allocacmp_j_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln16_1_reg_1126 <= {{select_ln16_1_fu_677_p3[8:2]}};
        lshr_ln16_3_reg_1141 <= {{select_ln16_3_fu_705_p3[8:2]}};
        lshr_ln16_5_reg_1156 <= {{select_ln16_5_fu_733_p3[8:2]}};
        lshr_ln16_7_reg_1171 <= {{select_ln16_7_fu_761_p3[8:2]}};
        select_ln16_2_reg_1131 <= select_ln16_2_fu_698_p3;
        select_ln16_4_reg_1146 <= select_ln16_4_fu_726_p3;
        select_ln16_6_reg_1161 <= select_ln16_6_fu_754_p3;
        select_ln16_reg_1116 <= select_ln16_fu_670_p3;
        trunc_ln16_1_reg_1136 <= trunc_ln16_1_fu_712_p1;
        trunc_ln16_2_reg_1151 <= trunc_ln16_2_fu_740_p1;
        trunc_ln16_3_reg_1166 <= trunc_ln16_3_fu_768_p1;
        trunc_ln16_reg_1121 <= trunc_ln16_fu_684_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_492 <= grp_fu_483_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_2_reg_1216 <= tmp_2_fu_812_p11;
        tmp_5_reg_1221 <= tmp_5_fu_851_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_8_reg_1271 <= tmp_8_fu_908_p11;
        tmp_s_reg_1276 <= tmp_s_fu_947_p11;
    end
end
always @ (*) begin
    if (((icmp_ln15_reg_1072 == 1'd0) & (1'b0 == ap_block_pp0_stage26_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        ap_condition_exit_pp0_iter0_stage26 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage26 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage26_subdone) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_116;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_440)) begin
        if (((icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd1))) begin
            cols_0_address0_local = zext_ln16_7_fu_618_p1;
        end else if ((tmp_3_read_fu_126_p2 == 1'd0)) begin
            cols_0_address0_local = zext_ln16_5_fu_530_p1;
        end else begin
            cols_0_address0_local = 'bx;
        end
    end else begin
        cols_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_3_read_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        cols_0_ce0_local = 1'b1;
    end else begin
        cols_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_440)) begin
        if (((icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd1))) begin
            cols_1_address0_local = zext_ln16_8_fu_662_p1;
        end else if ((tmp_3_read_fu_126_p2 == 1'd0)) begin
            cols_1_address0_local = zext_ln16_6_fu_576_p1;
        end else begin
            cols_1_address0_local = 'bx;
        end
    end else begin
        cols_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_3_read_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        cols_1_ce0_local = 1'b1;
    end else begin
        cols_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_440)) begin
        if (((icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd0))) begin
            cols_2_address0_local = zext_ln16_7_fu_618_p1;
        end else if ((tmp_3_read_fu_126_p2 == 1'd1)) begin
            cols_2_address0_local = zext_ln16_5_fu_530_p1;
        end else begin
            cols_2_address0_local = 'bx;
        end
    end else begin
        cols_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_3_read_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        cols_2_ce0_local = 1'b1;
    end else begin
        cols_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_440)) begin
        if (((icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd0))) begin
            cols_3_address0_local = zext_ln16_8_fu_662_p1;
        end else if ((tmp_3_read_fu_126_p2 == 1'd1)) begin
            cols_3_address0_local = zext_ln16_6_fu_576_p1;
        end else begin
            cols_3_address0_local = 'bx;
        end
    end else begin
        cols_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_3_read_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        cols_3_ce0_local = 1'b1;
    end else begin
        cols_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_483_p0 = reg_492;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_483_p0 = sum_1_fu_112;
    end else begin
        grp_fu_483_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_483_p1 = Si_3_reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_483_p1 = Si_2_reg_1311;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_483_p1 = Si_1_reg_1306;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_483_p1 = Si_reg_1296;
    end else begin
        grp_fu_483_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_488_p0 = bitcast_ln16_15_fu_978_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_488_p0 = bitcast_ln16_10_fu_974_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_488_p0 = bitcast_ln16_5_fu_970_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_488_p0 = bitcast_ln16_fu_888_p1;
        end else begin
            grp_fu_488_p0 = 'bx;
        end
    end else begin
        grp_fu_488_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_488_p1 = tmp_s_reg_1276;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_488_p1 = tmp_8_reg_1271;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_488_p1 = tmp_5_reg_1221;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_488_p1 = tmp_2_reg_1216;
        end else begin
            grp_fu_488_p1 = 'bx;
        end
    end else begin
        grp_fu_488_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_440)) begin
        if (((icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd1))) begin
            nzval_0_address0_local = zext_ln16_7_fu_618_p1;
        end else if ((tmp_3_read_fu_126_p2 == 1'd0)) begin
            nzval_0_address0_local = zext_ln16_5_fu_530_p1;
        end else begin
            nzval_0_address0_local = 'bx;
        end
    end else begin
        nzval_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_3_read_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        nzval_0_ce0_local = 1'b1;
    end else begin
        nzval_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_440)) begin
        if (((icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd1))) begin
            nzval_1_address0_local = zext_ln16_8_fu_662_p1;
        end else if ((tmp_3_read_fu_126_p2 == 1'd0)) begin
            nzval_1_address0_local = zext_ln16_6_fu_576_p1;
        end else begin
            nzval_1_address0_local = 'bx;
        end
    end else begin
        nzval_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_3_read_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        nzval_1_ce0_local = 1'b1;
    end else begin
        nzval_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_440)) begin
        if (((icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd0))) begin
            nzval_2_address0_local = zext_ln16_7_fu_618_p1;
        end else if ((tmp_3_read_fu_126_p2 == 1'd1)) begin
            nzval_2_address0_local = zext_ln16_5_fu_530_p1;
        end else begin
            nzval_2_address0_local = 'bx;
        end
    end else begin
        nzval_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_3_read_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        nzval_2_ce0_local = 1'b1;
    end else begin
        nzval_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_440)) begin
        if (((icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd0))) begin
            nzval_3_address0_local = zext_ln16_8_fu_662_p1;
        end else if ((tmp_3_read_fu_126_p2 == 1'd1)) begin
            nzval_3_address0_local = zext_ln16_6_fu_576_p1;
        end else begin
            nzval_3_address0_local = 'bx;
        end
    end else begin
        nzval_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln15_fu_592_p2 == 1'd1) & (tmp_3_read_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_3_read_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        nzval_3_ce0_local = 1'b1;
    end else begin
        nzval_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln15_reg_1072 == 1'd0) & (1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        sum_3_out_ap_vld = 1'b1;
    end else begin
        sum_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_0_address0_local = zext_ln16_3_fu_881_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_0_address0_local = zext_ln16_1_fu_789_p1;
        end else begin
            vec_0_address0_local = 'bx;
        end
    end else begin
        vec_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_0_address1_local = zext_ln16_2_fu_874_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_0_address1_local = zext_ln16_fu_782_p1;
        end else begin
            vec_0_address1_local = 'bx;
        end
    end else begin
        vec_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_0_ce0_local = 1'b1;
    end else begin
        vec_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_0_ce1_local = 1'b1;
    end else begin
        vec_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_1_address0_local = zext_ln16_3_fu_881_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_1_address0_local = zext_ln16_1_fu_789_p1;
        end else begin
            vec_1_address0_local = 'bx;
        end
    end else begin
        vec_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_1_address1_local = zext_ln16_2_fu_874_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_1_address1_local = zext_ln16_fu_782_p1;
        end else begin
            vec_1_address1_local = 'bx;
        end
    end else begin
        vec_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_1_ce0_local = 1'b1;
    end else begin
        vec_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_1_ce1_local = 1'b1;
    end else begin
        vec_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_2_address0_local = zext_ln16_3_fu_881_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_2_address0_local = zext_ln16_1_fu_789_p1;
        end else begin
            vec_2_address0_local = 'bx;
        end
    end else begin
        vec_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_2_address1_local = zext_ln16_2_fu_874_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_2_address1_local = zext_ln16_fu_782_p1;
        end else begin
            vec_2_address1_local = 'bx;
        end
    end else begin
        vec_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_2_ce0_local = 1'b1;
    end else begin
        vec_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_2_ce1_local = 1'b1;
    end else begin
        vec_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_3_address0_local = zext_ln16_3_fu_881_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_3_address0_local = zext_ln16_1_fu_789_p1;
        end else begin
            vec_3_address0_local = 'bx;
        end
    end else begin
        vec_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_3_address1_local = zext_ln16_2_fu_874_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_3_address1_local = zext_ln16_fu_782_p1;
        end else begin
            vec_3_address1_local = 'bx;
        end
    end else begin
        vec_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_3_ce0_local = 1'b1;
    end else begin
        vec_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_3_ce1_local = 1'b1;
    end else begin
        vec_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage26)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_986_p2 = (j_1_reg_1027 + 4'd4);
assign add_ln16_1_fu_560_p2 = (zext_ln14_fu_556_p1 + empty);
assign add_ln16_2_fu_602_p2 = (zext_ln14_1_fu_598_p1 + empty);
assign add_ln16_3_fu_646_p2 = (zext_ln14_2_fu_642_p1 + empty);
assign add_ln16_fu_524_p2 = (zext_ln16_4_fu_520_p1 + p_udiv1_cast);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_440 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage26;
assign ap_ready = ap_ready_sig;
assign bitcast_ln16_10_fu_974_p1 = select_ln16_4_reg_1146;
assign bitcast_ln16_15_fu_978_p1 = select_ln16_6_reg_1161;
assign bitcast_ln16_5_fu_970_p1 = select_ln16_2_reg_1131;
assign bitcast_ln16_fu_888_p1 = select_ln16_reg_1116;
assign cols_0_address0 = cols_0_address0_local;
assign cols_0_ce0 = cols_0_ce0_local;
assign cols_1_address0 = cols_1_address0_local;
assign cols_1_ce0 = cols_1_ce0_local;
assign cols_2_address0 = cols_2_address0_local;
assign cols_2_ce0 = cols_2_ce0_local;
assign cols_3_address0 = cols_3_address0_local;
assign cols_3_ce0 = cols_3_ce0_local;
assign icmp_ln15_fu_592_p2 = ((or_ln15_1_fu_584_p3 < 4'd10) ? 1'b1 : 1'b0);
assign lshr_ln16_2_fu_566_p4 = {{add_ln16_1_fu_560_p2[12:2]}};
assign lshr_ln16_4_fu_608_p4 = {{add_ln16_2_fu_602_p2[12:2]}};
assign lshr_ln16_6_fu_652_p4 = {{add_ln16_3_fu_646_p2[12:2]}};
assign lshr_ln1_fu_510_p4 = {{ap_sig_allocacmp_j_1[3:2]}};
assign nzval_0_address0 = nzval_0_address0_local;
assign nzval_0_ce0 = nzval_0_ce0_local;
assign nzval_1_address0 = nzval_1_address0_local;
assign nzval_1_ce0 = nzval_1_ce0_local;
assign nzval_2_address0 = nzval_2_address0_local;
assign nzval_2_ce0 = nzval_2_ce0_local;
assign nzval_3_address0 = nzval_3_address0_local;
assign nzval_3_ce0 = nzval_3_ce0_local;
assign or_ln15_1_fu_584_p3 = {{lshr_ln1_fu_510_p4}, {2'd2}};
assign or_ln15_2_fu_634_p3 = {{tmp_4_fu_626_p3}, {2'd3}};
assign or_ln_fu_548_p3 = {{tmp_fu_538_p4}, {1'd1}};
assign select_ln16_1_fu_677_p3 = ((empty_17[0:0] == 1'b1) ? cols_2_q0 : cols_0_q0);
assign select_ln16_2_fu_698_p3 = ((empty_17[0:0] == 1'b1) ? nzval_3_q0 : nzval_1_q0);
assign select_ln16_3_fu_705_p3 = ((empty_17[0:0] == 1'b1) ? cols_3_q0 : cols_1_q0);
assign select_ln16_4_fu_726_p3 = ((empty_17[0:0] == 1'b1) ? nzval_0_q0 : nzval_2_q0);
assign select_ln16_5_fu_733_p3 = ((empty_17[0:0] == 1'b1) ? cols_0_q0 : cols_2_q0);
assign select_ln16_6_fu_754_p3 = ((empty_17[0:0] == 1'b1) ? nzval_1_q0 : nzval_3_q0);
assign select_ln16_7_fu_761_p3 = ((empty_17[0:0] == 1'b1) ? cols_1_q0 : cols_3_q0);
assign select_ln16_fu_670_p3 = ((empty_17[0:0] == 1'b1) ? nzval_2_q0 : nzval_0_q0);
assign sum_3_out = grp_fu_483_p2;
assign tmp_2_fu_812_p2 = vec_0_q1;
assign tmp_2_fu_812_p4 = vec_1_q1;
assign tmp_2_fu_812_p6 = vec_2_q1;
assign tmp_2_fu_812_p8 = vec_3_q1;
assign tmp_2_fu_812_p9 = 'bx;
assign tmp_3_read_fu_126_p2 = empty_17;
assign tmp_4_fu_626_p3 = ap_sig_allocacmp_j_1[32'd2];
assign tmp_5_fu_851_p2 = vec_0_q0;
assign tmp_5_fu_851_p4 = vec_1_q0;
assign tmp_5_fu_851_p6 = vec_2_q0;
assign tmp_5_fu_851_p8 = vec_3_q0;
assign tmp_5_fu_851_p9 = 'bx;
assign tmp_8_fu_908_p2 = vec_0_q1;
assign tmp_8_fu_908_p4 = vec_1_q1;
assign tmp_8_fu_908_p6 = vec_2_q1;
assign tmp_8_fu_908_p8 = vec_3_q1;
assign tmp_8_fu_908_p9 = 'bx;
assign tmp_fu_538_p4 = {{ap_sig_allocacmp_j_1[3:1]}};
assign tmp_s_fu_947_p2 = vec_0_q0;
assign tmp_s_fu_947_p4 = vec_1_q0;
assign tmp_s_fu_947_p6 = vec_2_q0;
assign tmp_s_fu_947_p8 = vec_3_q0;
assign tmp_s_fu_947_p9 = 'bx;
assign trunc_ln16_1_fu_712_p1 = select_ln16_3_fu_705_p3[1:0];
assign trunc_ln16_2_fu_740_p1 = select_ln16_5_fu_733_p3[1:0];
assign trunc_ln16_3_fu_768_p1 = select_ln16_7_fu_761_p3[1:0];
assign trunc_ln16_fu_684_p1 = select_ln16_1_fu_677_p3[1:0];
assign vec_0_address0 = vec_0_address0_local;
assign vec_0_address1 = vec_0_address1_local;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_0_ce1 = vec_0_ce1_local;
assign vec_1_address0 = vec_1_address0_local;
assign vec_1_address1 = vec_1_address1_local;
assign vec_1_ce0 = vec_1_ce0_local;
assign vec_1_ce1 = vec_1_ce1_local;
assign vec_2_address0 = vec_2_address0_local;
assign vec_2_address1 = vec_2_address1_local;
assign vec_2_ce0 = vec_2_ce0_local;
assign vec_2_ce1 = vec_2_ce1_local;
assign vec_3_address0 = vec_3_address0_local;
assign vec_3_address1 = vec_3_address1_local;
assign vec_3_ce0 = vec_3_ce0_local;
assign vec_3_ce1 = vec_3_ce1_local;
assign zext_ln14_1_fu_598_p1 = or_ln15_1_fu_584_p3;
assign zext_ln14_2_fu_642_p1 = or_ln15_2_fu_634_p3;
assign zext_ln14_fu_556_p1 = or_ln_fu_548_p3;
assign zext_ln16_1_fu_789_p1 = lshr_ln16_3_reg_1141;
assign zext_ln16_2_fu_874_p1 = lshr_ln16_5_reg_1156;
assign zext_ln16_3_fu_881_p1 = lshr_ln16_7_reg_1171;
assign zext_ln16_4_fu_520_p1 = lshr_ln1_fu_510_p4;
assign zext_ln16_5_fu_530_p1 = add_ln16_fu_524_p2;
assign zext_ln16_6_fu_576_p1 = lshr_ln16_2_fu_566_p4;
assign zext_ln16_7_fu_618_p1 = lshr_ln16_4_fu_608_p4;
assign zext_ln16_8_fu_662_p1 = lshr_ln16_6_fu_652_p4;
assign zext_ln16_fu_782_p1 = lshr_ln16_1_reg_1126;
endmodule 
