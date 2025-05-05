module SgdLR_sw_SgdLR_sw_Pipeline_label_216 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_address0,v2_ce0,v2_q0,v2_address1,v2_ce1,v2_q1,empty,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v6_out,v6_out_ap_vld,grp_fu_669_p_din0,grp_fu_669_p_din1,grp_fu_669_p_opcode,grp_fu_669_p_dout0,grp_fu_669_p_ce,grp_fu_1583_p_din0,grp_fu_1583_p_din1,grp_fu_1583_p_dout0,grp_fu_1583_p_ce,grp_fu_1587_p_din0,grp_fu_1587_p_din1,grp_fu_1587_p_dout0,grp_fu_1587_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 29'd1;
parameter    ap_ST_fsm_pp0_stage1 = 29'd2;
parameter    ap_ST_fsm_pp0_stage2 = 29'd4;
parameter    ap_ST_fsm_pp0_stage3 = 29'd8;
parameter    ap_ST_fsm_pp0_stage4 = 29'd16;
parameter    ap_ST_fsm_pp0_stage5 = 29'd32;
parameter    ap_ST_fsm_pp0_stage6 = 29'd64;
parameter    ap_ST_fsm_pp0_stage7 = 29'd128;
parameter    ap_ST_fsm_pp0_stage8 = 29'd256;
parameter    ap_ST_fsm_pp0_stage9 = 29'd512;
parameter    ap_ST_fsm_pp0_stage10 = 29'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 29'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 29'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 29'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 29'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 29'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 29'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 29'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 29'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 29'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 29'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 29'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 29'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 29'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 29'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 29'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 29'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 29'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 29'd268435456;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v2_address0;
output   v2_ce0;
input  [31:0] v2_q0;
output  [9:0] v2_address1;
output   v2_ce1;
input  [31:0] v2_q1;
input  [63:0] empty;
output  [20:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [20:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [20:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [20:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [31:0] v6_out;
output   v6_out_ap_vld;
output  [31:0] grp_fu_669_p_din0;
output  [31:0] grp_fu_669_p_din1;
output  [0:0] grp_fu_669_p_opcode;
input  [31:0] grp_fu_669_p_dout0;
output   grp_fu_669_p_ce;
output  [31:0] grp_fu_1583_p_din0;
output  [31:0] grp_fu_1583_p_din1;
input  [31:0] grp_fu_1583_p_dout0;
output   grp_fu_1583_p_ce;
output  [63:0] grp_fu_1587_p_din0;
output  [65:0] grp_fu_1587_p_din1;
input  [86:0] grp_fu_1587_p_dout0;
output   grp_fu_1587_p_ce;
reg ap_idle;
reg v6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [28:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_subdone;
reg   [0:0] tmp_6_reg_712;
reg    ap_condition_exit_pp0_iter0_stage28;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_329;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] v8_4_reg_706;
reg   [0:0] tmp_6_reg_712_pp0_iter1_reg;
reg   [0:0] tmp_6_reg_712_pp0_iter2_reg;
wire   [63:0] zext_ln33_fu_355_p1;
reg   [63:0] zext_ln33_reg_716;
reg   [63:0] zext_ln33_reg_716_pp0_iter1_reg;
wire   [63:0] add_ln35_fu_359_p2;
reg   [63:0] add_ln35_reg_721;
reg   [63:0] add_ln35_reg_721_pp0_iter1_reg;
reg   [63:0] add_ln35_reg_721_pp0_iter2_reg;
wire   [8:0] tmp_s_fu_365_p4;
reg   [8:0] tmp_s_reg_727;
reg   [8:0] tmp_s_reg_727_pp0_iter1_reg;
wire   [53:0] tmp_4_fu_375_p4;
reg   [53:0] tmp_4_reg_732;
wire   [63:0] add_ln35_s_fu_385_p4;
reg   [63:0] add_ln35_s_reg_738;
reg   [63:0] add_ln35_s_reg_738_pp0_iter1_reg;
reg   [63:0] add_ln35_s_reg_738_pp0_iter2_reg;
wire   [7:0] tmp_5_fu_406_p4;
reg   [7:0] tmp_5_reg_744;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] tmp_5_reg_744_pp0_iter1_reg;
wire   [63:0] add_ln35_5_fu_415_p4;
reg   [63:0] add_ln35_5_reg_751;
reg   [63:0] add_ln35_5_reg_751_pp0_iter1_reg;
reg   [63:0] add_ln35_5_reg_751_pp0_iter2_reg;
wire   [63:0] add_ln35_6_fu_430_p4;
reg   [63:0] add_ln35_6_reg_757;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] add_ln35_6_reg_757_pp0_iter1_reg;
reg   [63:0] add_ln35_6_reg_757_pp0_iter2_reg;
reg   [31:0] v2_load_reg_773;
wire   [86:0] zext_ln35_fu_466_p1;
reg   [31:0] v2_load_10_reg_783;
wire   [86:0] zext_ln35_10_fu_494_p1;
reg   [31:0] v2_load_11_reg_803;
reg   [31:0] v2_load_12_reg_808;
wire   [86:0] zext_ln35_11_fu_498_p1;
wire   [86:0] zext_ln35_12_fu_502_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [1:0] trunc_ln35_s_reg_823;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [1:0] trunc_ln35_8_reg_828;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [1:0] trunc_ln35_9_reg_833;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [1:0] trunc_ln35_10_reg_838;
wire   [63:0] grp_fu_395_p2;
reg   [63:0] urem_ln35_10_reg_843;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] grp_fu_401_p2;
reg   [63:0] urem_ln35_reg_851;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] v10_10_fu_522_p11;
reg   [31:0] v10_10_reg_899;
wire   [63:0] grp_fu_424_p2;
reg   [63:0] urem_ln35_11_reg_904;
wire   [31:0] v10_fu_561_p11;
reg   [31:0] v10_reg_912;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] v9_10_fu_584_p1;
wire   [63:0] grp_fu_438_p2;
reg   [63:0] urem_ln35_12_reg_942;
wire   [31:0] v9_fu_588_p1;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [31:0] v10_11_fu_608_p11;
reg   [31:0] v10_11_reg_955;
wire   [31:0] v9_11_fu_631_p1;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] v10_12_fu_651_p11;
reg   [31:0] v10_12_reg_985;
reg   [31:0] v11_10_reg_990;
wire   [31:0] v9_12_fu_674_p1;
reg   [31:0] v11_reg_1000;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [31:0] v11_11_reg_1010;
reg   [31:0] v11_12_reg_1015;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln31_fu_461_p1;
wire   [63:0] zext_ln31_7_fu_477_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln31_8_fu_489_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
reg   [31:0] v12_fu_96;
wire    ap_block_pp0_stage16;
wire    ap_loop_init;
wire    ap_block_pp0_stage17;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage28_11001;
reg    ap_condition_exit_pp0_iter2_stage16;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [10:0] v8_fu_100;
wire   [10:0] add_ln33_fu_444_p2;
reg   [10:0] ap_sig_allocacmp_v8_4;
wire    ap_block_pp0_stage16_01001;
reg    v2_ce1_local;
reg   [9:0] v2_address1_local;
reg    v2_ce0_local;
reg   [9:0] v2_address0_local;
reg    v0_0_ce0_local;
reg   [20:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [20:0] v0_1_address0_local;
reg    v0_2_ce0_local;
reg   [20:0] v0_2_address0_local;
reg    v0_3_ce0_local;
reg   [20:0] v0_3_address0_local;
reg   [31:0] grp_fu_306_p0;
reg   [31:0] grp_fu_306_p1;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage9;
reg   [31:0] grp_fu_310_p0;
reg   [31:0] grp_fu_310_p1;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
reg   [63:0] grp_fu_314_p0;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire   [63:0] grp_fu_395_p0;
wire   [21:0] grp_fu_395_p1;
wire   [21:0] grp_fu_401_p1;
wire   [63:0] grp_fu_424_p0;
wire   [21:0] grp_fu_424_p1;
wire   [63:0] grp_fu_438_p0;
wire   [21:0] grp_fu_438_p1;
wire    ap_block_pp0_stage28;
wire   [9:0] or_ln33_s_fu_454_p3;
wire   [9:0] or_ln33_4_fu_470_p3;
wire   [9:0] or_ln33_5_fu_482_p3;
wire   [31:0] v10_10_fu_522_p2;
wire   [31:0] v10_10_fu_522_p4;
wire   [31:0] v10_10_fu_522_p6;
wire   [31:0] v10_10_fu_522_p8;
wire   [31:0] v10_10_fu_522_p9;
wire   [31:0] v10_fu_561_p2;
wire   [31:0] v10_fu_561_p4;
wire   [31:0] v10_fu_561_p6;
wire   [31:0] v10_fu_561_p8;
wire   [31:0] v10_fu_561_p9;
wire   [31:0] v10_11_fu_608_p2;
wire   [31:0] v10_11_fu_608_p4;
wire   [31:0] v10_11_fu_608_p6;
wire   [31:0] v10_11_fu_608_p8;
wire   [31:0] v10_11_fu_608_p9;
wire   [31:0] v10_12_fu_651_p2;
wire   [31:0] v10_12_fu_651_p4;
wire   [31:0] v10_12_fu_651_p6;
wire   [31:0] v10_12_fu_651_p8;
wire   [31:0] v10_12_fu_651_p9;
wire    ap_block_pp0_stage17_00001;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage9_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [28:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v10_10_fu_522_p1;
wire   [1:0] v10_10_fu_522_p3;
wire  signed [1:0] v10_10_fu_522_p5;
wire  signed [1:0] v10_10_fu_522_p7;
wire   [1:0] v10_fu_561_p1;
wire   [1:0] v10_fu_561_p3;
wire  signed [1:0] v10_fu_561_p5;
wire  signed [1:0] v10_fu_561_p7;
wire   [1:0] v10_11_fu_608_p1;
wire   [1:0] v10_11_fu_608_p3;
wire  signed [1:0] v10_11_fu_608_p5;
wire  signed [1:0] v10_11_fu_608_p7;
wire   [1:0] v10_12_fu_651_p1;
wire   [1:0] v10_12_fu_651_p3;
wire  signed [1:0] v10_12_fu_651_p5;
wire  signed [1:0] v10_12_fu_651_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 29'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_fu_96 = 32'd0;
#0 v8_fu_100 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_urem_64ns_22ns_64_68_1 #(.ID( 1 ),.NUM_STAGE( 68 ),.din0_WIDTH( 64 ),.din1_WIDTH( 22 ),.dout_WIDTH( 64 ))
urem_64ns_22ns_64_68_1_U248(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_395_p0),.din1(grp_fu_395_p1),.ce(1'b1),.dout(grp_fu_395_p2));
SgdLR_sw_urem_64ns_22ns_64_68_1 #(.ID( 1 ),.NUM_STAGE( 68 ),.din0_WIDTH( 64 ),.din1_WIDTH( 22 ),.dout_WIDTH( 64 ))
urem_64ns_22ns_64_68_1_U249(.clk(ap_clk),.reset(ap_rst),.din0(add_ln35_reg_721),.din1(grp_fu_401_p1),.ce(1'b1),.dout(grp_fu_401_p2));
SgdLR_sw_urem_64ns_22ns_64_68_1 #(.ID( 1 ),.NUM_STAGE( 68 ),.din0_WIDTH( 64 ),.din1_WIDTH( 22 ),.dout_WIDTH( 64 ))
urem_64ns_22ns_64_68_1_U250(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_424_p0),.din1(grp_fu_424_p1),.ce(1'b1),.dout(grp_fu_424_p2));
SgdLR_sw_urem_64ns_22ns_64_68_1 #(.ID( 1 ),.NUM_STAGE( 68 ),.din0_WIDTH( 64 ),.din1_WIDTH( 22 ),.dout_WIDTH( 64 ))
urem_64ns_22ns_64_68_1_U251(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_438_p0),.din1(grp_fu_438_p1),.ce(1'b1),.dout(grp_fu_438_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U252(.din0(v10_10_fu_522_p2),.din1(v10_10_fu_522_p4),.din2(v10_10_fu_522_p6),.din3(v10_10_fu_522_p8),.def(v10_10_fu_522_p9),.sel(trunc_ln35_8_reg_828),.dout(v10_10_fu_522_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U253(.din0(v10_fu_561_p2),.din1(v10_fu_561_p4),.din2(v10_fu_561_p6),.din3(v10_fu_561_p8),.def(v10_fu_561_p9),.sel(trunc_ln35_s_reg_823),.dout(v10_fu_561_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U254(.din0(v10_11_fu_608_p2),.din1(v10_11_fu_608_p4),.din2(v10_11_fu_608_p6),.din3(v10_11_fu_608_p8),.def(v10_11_fu_608_p9),.sel(trunc_ln35_9_reg_833),.dout(v10_11_fu_608_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U255(.din0(v10_12_fu_651_p2),.din1(v10_12_fu_651_p4),.din2(v10_12_fu_651_p6),.din3(v10_12_fu_651_p8),.def(v10_12_fu_651_p9),.sel(trunc_ln35_10_reg_838),.dout(v10_12_fu_651_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage28),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage28)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage28_subdone) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage28_subdone) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage28_subdone) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage16))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_fu_96 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v12_fu_96 <= reg_329;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_fu_100 <= 11'd0;
    end else if (((tmp_6_reg_712 == 1'd0) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        v8_fu_100 <= add_ln33_fu_444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln35_5_reg_751[63 : 2] <= add_ln35_5_fu_415_p4[63 : 2];
        add_ln35_5_reg_751_pp0_iter1_reg[63 : 2] <= add_ln35_5_reg_751[63 : 2];
        add_ln35_5_reg_751_pp0_iter2_reg[63 : 2] <= add_ln35_5_reg_751_pp0_iter1_reg[63 : 2];
        tmp_5_reg_744 <= {{v8_4_reg_706[9:2]}};
        tmp_5_reg_744_pp0_iter1_reg <= tmp_5_reg_744;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln35_6_reg_757[63 : 2] <= add_ln35_6_fu_430_p4[63 : 2];
        add_ln35_6_reg_757_pp0_iter1_reg[63 : 2] <= add_ln35_6_reg_757[63 : 2];
        add_ln35_6_reg_757_pp0_iter2_reg[63 : 2] <= add_ln35_6_reg_757_pp0_iter1_reg[63 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln35_reg_721 <= add_ln35_fu_359_p2;
        add_ln35_reg_721_pp0_iter1_reg <= add_ln35_reg_721;
        add_ln35_reg_721_pp0_iter2_reg <= add_ln35_reg_721_pp0_iter1_reg;
        add_ln35_s_reg_738[63 : 1] <= add_ln35_s_fu_385_p4[63 : 1];
        add_ln35_s_reg_738_pp0_iter1_reg[63 : 1] <= add_ln35_s_reg_738[63 : 1];
        add_ln35_s_reg_738_pp0_iter2_reg[63 : 1] <= add_ln35_s_reg_738_pp0_iter1_reg[63 : 1];
        tmp_4_reg_732 <= {{empty[63:10]}};
        tmp_6_reg_712 <= ap_sig_allocacmp_v8_4[32'd10];
        tmp_6_reg_712_pp0_iter1_reg <= tmp_6_reg_712;
        tmp_6_reg_712_pp0_iter2_reg <= tmp_6_reg_712_pp0_iter1_reg;
        tmp_s_reg_727 <= {{ap_sig_allocacmp_v8_4[9:1]}};
        tmp_s_reg_727_pp0_iter1_reg <= tmp_s_reg_727;
        v8_4_reg_706 <= ap_sig_allocacmp_v8_4;
        zext_ln33_reg_716[10 : 0] <= zext_ln33_fu_355_p1[10 : 0];
        zext_ln33_reg_716_pp0_iter1_reg[10 : 0] <= zext_ln33_reg_716[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        reg_329 <= grp_fu_669_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln35_10_reg_838 <= {{grp_fu_1587_p_dout0[86:85]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        trunc_ln35_8_reg_828 <= {{grp_fu_1587_p_dout0[86:85]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        trunc_ln35_9_reg_833 <= {{grp_fu_1587_p_dout0[86:85]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        trunc_ln35_s_reg_823 <= {{grp_fu_1587_p_dout0[86:85]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        urem_ln35_10_reg_843 <= grp_fu_395_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        urem_ln35_11_reg_904 <= grp_fu_424_p2;
        v10_10_reg_899 <= v10_10_fu_522_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        urem_ln35_12_reg_942 <= grp_fu_438_p2;
        v10_reg_912 <= v10_fu_561_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        urem_ln35_reg_851 <= grp_fu_401_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v10_11_reg_955 <= v10_11_fu_608_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v10_12_reg_985 <= v10_12_fu_651_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v11_10_reg_990 <= grp_fu_1583_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        v11_11_reg_1010 <= grp_fu_1583_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        v11_12_reg_1015 <= grp_fu_1583_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v11_reg_1000 <= grp_fu_1583_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_load_10_reg_783 <= v2_q0;
        v2_load_reg_773 <= v2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_load_11_reg_803 <= v2_q1;
        v2_load_12_reg_808 <= v2_q0;
    end
end
always @ (*) begin
    if (((tmp_6_reg_712 == 1'd1) & (1'b0 == ap_block_pp0_stage28_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        ap_condition_exit_pp0_iter0_stage28 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage28 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_6_reg_712_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage28_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v8_4 = 11'd0;
    end else begin
        ap_sig_allocacmp_v8_4 = v8_fu_100;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_306_p0 = reg_329;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_306_p0 = v12_fu_96;
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_306_p1 = v11_12_reg_1015;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_306_p1 = v11_11_reg_1010;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_306_p1 = v11_10_reg_990;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_306_p1 = v11_reg_1000;
    end else begin
        grp_fu_306_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_310_p0 = v9_12_fu_674_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_310_p0 = v9_11_fu_631_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_310_p0 = v9_fu_588_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_310_p0 = v9_10_fu_584_p1;
        end else begin
            grp_fu_310_p0 = 'bx;
        end
    end else begin
        grp_fu_310_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_310_p1 = v10_12_reg_985;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_310_p1 = v10_11_reg_955;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_310_p1 = v10_reg_912;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_310_p1 = v10_10_reg_899;
        end else begin
            grp_fu_310_p1 = 'bx;
        end
    end else begin
        grp_fu_310_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_314_p0 = zext_ln35_12_fu_502_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_314_p0 = zext_ln35_11_fu_498_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_314_p0 = zext_ln35_10_fu_494_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_314_p0 = zext_ln35_fu_466_p1;
        end else begin
            grp_fu_314_p0 = 'bx;
        end
    end else begin
        grp_fu_314_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_0_address0_local = urem_ln35_12_reg_942;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v0_0_address0_local = urem_ln35_11_reg_904;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_0_address0_local = urem_ln35_reg_851;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            v0_0_address0_local = urem_ln35_10_reg_843;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_1_address0_local = urem_ln35_12_reg_942;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v0_1_address0_local = urem_ln35_11_reg_904;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_1_address0_local = urem_ln35_reg_851;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            v0_1_address0_local = urem_ln35_10_reg_843;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_2_address0_local = urem_ln35_12_reg_942;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v0_2_address0_local = urem_ln35_11_reg_904;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_2_address0_local = urem_ln35_reg_851;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            v0_2_address0_local = urem_ln35_10_reg_843;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_3_address0_local = urem_ln35_12_reg_942;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v0_3_address0_local = urem_ln35_11_reg_904;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_3_address0_local = urem_ln35_reg_851;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            v0_3_address0_local = urem_ln35_10_reg_843;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v2_address0_local = zext_ln31_8_fu_489_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v2_address0_local = zext_ln31_fu_461_p1;
        end else begin
            v2_address0_local = 'bx;
        end
    end else begin
        v2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v2_address1_local = zext_ln31_7_fu_477_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v2_address1_local = zext_ln33_reg_716_pp0_iter1_reg;
        end else begin
            v2_address1_local = 'bx;
        end
    end else begin
        v2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_6_reg_712_pp0_iter2_reg == 1'd1))) begin
        v6_out_ap_vld = 1'b1;
    end else begin
        v6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to3 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage16))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln33_fu_444_p2 = (v8_4_reg_706 + 11'd4);
assign add_ln35_5_fu_415_p4 = {{{tmp_4_reg_732}, {tmp_5_fu_406_p4}}, {2'd2}};
assign add_ln35_6_fu_430_p4 = {{{tmp_4_reg_732}, {tmp_5_reg_744}}, {2'd3}};
assign add_ln35_fu_359_p2 = (zext_ln33_fu_355_p1 + empty);
assign add_ln35_s_fu_385_p4 = {{{tmp_4_fu_375_p4}, {tmp_s_fu_365_p4}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage28;
assign ap_ready = ap_ready_sig;
assign grp_fu_1583_p_ce = 1'b1;
assign grp_fu_1583_p_din0 = grp_fu_310_p0;
assign grp_fu_1583_p_din1 = grp_fu_310_p1;
assign grp_fu_1587_p_ce = 1'b1;
assign grp_fu_1587_p_din0 = grp_fu_314_p0;
assign grp_fu_1587_p_din1 = 87'd33581272767073032631;
assign grp_fu_395_p0 = {{{tmp_4_fu_375_p4}, {tmp_s_fu_365_p4}}, {1'd1}};
assign grp_fu_395_p1 = 64'd1152000;
assign grp_fu_401_p1 = 64'd1152000;
assign grp_fu_424_p0 = {{{tmp_4_reg_732}, {tmp_5_fu_406_p4}}, {2'd2}};
assign grp_fu_424_p1 = 64'd1152000;
assign grp_fu_438_p0 = {{{tmp_4_reg_732}, {tmp_5_reg_744}}, {2'd3}};
assign grp_fu_438_p1 = 64'd1152000;
assign grp_fu_669_p_ce = 1'b1;
assign grp_fu_669_p_din0 = grp_fu_306_p0;
assign grp_fu_669_p_din1 = grp_fu_306_p1;
assign grp_fu_669_p_opcode = 2'd0;
assign or_ln33_4_fu_470_p3 = {{tmp_5_reg_744_pp0_iter1_reg}, {2'd2}};
assign or_ln33_5_fu_482_p3 = {{tmp_5_reg_744_pp0_iter1_reg}, {2'd3}};
assign or_ln33_s_fu_454_p3 = {{tmp_s_reg_727_pp0_iter1_reg}, {1'd1}};
assign tmp_4_fu_375_p4 = {{empty[63:10]}};
assign tmp_5_fu_406_p4 = {{v8_4_reg_706[9:2]}};
assign tmp_s_fu_365_p4 = {{ap_sig_allocacmp_v8_4[9:1]}};
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v10_10_fu_522_p2 = v0_0_q0;
assign v10_10_fu_522_p4 = v0_1_q0;
assign v10_10_fu_522_p6 = v0_2_q0;
assign v10_10_fu_522_p8 = v0_3_q0;
assign v10_10_fu_522_p9 = 'bx;
assign v10_11_fu_608_p2 = v0_0_q0;
assign v10_11_fu_608_p4 = v0_1_q0;
assign v10_11_fu_608_p6 = v0_2_q0;
assign v10_11_fu_608_p8 = v0_3_q0;
assign v10_11_fu_608_p9 = 'bx;
assign v10_12_fu_651_p2 = v0_0_q0;
assign v10_12_fu_651_p4 = v0_1_q0;
assign v10_12_fu_651_p6 = v0_2_q0;
assign v10_12_fu_651_p8 = v0_3_q0;
assign v10_12_fu_651_p9 = 'bx;
assign v10_fu_561_p2 = v0_0_q0;
assign v10_fu_561_p4 = v0_1_q0;
assign v10_fu_561_p6 = v0_2_q0;
assign v10_fu_561_p8 = v0_3_q0;
assign v10_fu_561_p9 = 'bx;
assign v2_address0 = v2_address0_local;
assign v2_address1 = v2_address1_local;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v6_out = v12_fu_96;
assign v9_10_fu_584_p1 = v2_load_10_reg_783;
assign v9_11_fu_631_p1 = v2_load_11_reg_803;
assign v9_12_fu_674_p1 = v2_load_12_reg_808;
assign v9_fu_588_p1 = v2_load_reg_773;
assign zext_ln31_7_fu_477_p1 = or_ln33_4_fu_470_p3;
assign zext_ln31_8_fu_489_p1 = or_ln33_5_fu_482_p3;
assign zext_ln31_fu_461_p1 = or_ln33_s_fu_454_p3;
assign zext_ln33_fu_355_p1 = ap_sig_allocacmp_v8_4;
assign zext_ln35_10_fu_494_p1 = add_ln35_s_reg_738_pp0_iter2_reg;
assign zext_ln35_11_fu_498_p1 = add_ln35_5_reg_751_pp0_iter2_reg;
assign zext_ln35_12_fu_502_p1 = add_ln35_6_reg_757_pp0_iter2_reg;
assign zext_ln35_fu_466_p1 = add_ln35_reg_721_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    zext_ln33_reg_716[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln33_reg_716_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    add_ln35_s_reg_738[0] <= 1'b1;
    add_ln35_s_reg_738_pp0_iter1_reg[0] <= 1'b1;
    add_ln35_s_reg_738_pp0_iter2_reg[0] <= 1'b1;
    add_ln35_5_reg_751[1:0] <= 2'b10;
    add_ln35_5_reg_751_pp0_iter1_reg[1:0] <= 2'b10;
    add_ln35_5_reg_751_pp0_iter2_reg[1:0] <= 2'b10;
    add_ln35_6_reg_757[1:0] <= 2'b11;
    add_ln35_6_reg_757_pp0_iter1_reg[1:0] <= 2'b11;
    add_ln35_6_reg_757_pp0_iter2_reg[1:0] <= 2'b11;
end
endmodule 