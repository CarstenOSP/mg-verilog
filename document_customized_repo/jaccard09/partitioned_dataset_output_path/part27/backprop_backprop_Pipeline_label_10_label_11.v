
module backprop_backprop_Pipeline_label_10_label_11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v18_2_load_1,v18_load_1,v18_1_load_1,v2_0_address0,v2_0_ce0,v2_0_q0,v2_1_address0,v2_1_ce0,v2_1_q0,v2_2_address0,v2_2_ce0,v2_2_q0,v2_3_address0,v2_3_ce0,v2_3_q0,v19_address0,v19_ce0,v19_q0,v19_address1,v19_ce1,v19_q1,v19_1_address0,v19_1_ce0,v19_1_q0,v19_1_address1,v19_1_ce1,v19_1_q1,v18_11_out_i,v18_11_out_o,v18_11_out_o_ap_vld,v18_10_out_i,v18_10_out_o,v18_10_out_o_ap_vld,v18_9_out_i,v18_9_out_o,v18_9_out_o_ap_vld,grp_fu_3795_p_din0,grp_fu_3795_p_din1,grp_fu_3795_p_opcode,grp_fu_3795_p_dout0,grp_fu_3795_p_ce,grp_fu_3807_p_din0,grp_fu_3807_p_din1,grp_fu_3807_p_dout0,grp_fu_3807_p_ce);  
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
input  [63:0] v18_2_load_1;
input  [63:0] v18_load_1;
input  [63:0] v18_1_load_1;
output  [5:0] v2_0_address0;
output   v2_0_ce0;
input  [63:0] v2_0_q0;
output  [5:0] v2_1_address0;
output   v2_1_ce0;
input  [63:0] v2_1_q0;
output  [5:0] v2_2_address0;
output   v2_2_ce0;
input  [63:0] v2_2_q0;
output  [5:0] v2_3_address0;
output   v2_3_ce0;
input  [63:0] v2_3_q0;
output  [4:0] v19_address0;
output   v19_ce0;
input  [63:0] v19_q0;
output  [4:0] v19_address1;
output   v19_ce1;
input  [63:0] v19_q1;
output  [4:0] v19_1_address0;
output   v19_1_ce0;
input  [63:0] v19_1_q0;
output  [4:0] v19_1_address1;
output   v19_1_ce1;
input  [63:0] v19_1_q1;
input  [63:0] v18_11_out_i;
output  [63:0] v18_11_out_o;
output   v18_11_out_o_ap_vld;
input  [63:0] v18_10_out_i;
output  [63:0] v18_10_out_o;
output   v18_10_out_o_ap_vld;
input  [63:0] v18_9_out_i;
output  [63:0] v18_9_out_o;
output   v18_9_out_o_ap_vld;
output  [63:0] grp_fu_3795_p_din0;
output  [63:0] grp_fu_3795_p_din1;
output  [0:0] grp_fu_3795_p_opcode;
input  [63:0] grp_fu_3795_p_dout0;
output   grp_fu_3795_p_ce;
output  [63:0] grp_fu_3807_p_din0;
output  [63:0] grp_fu_3807_p_din1;
input  [63:0] grp_fu_3807_p_dout0;
output   grp_fu_3807_p_ce;
reg ap_idle;
reg[63:0] v18_11_out_o;
reg v18_11_out_o_ap_vld;
reg[63:0] v18_10_out_o;
reg v18_10_out_o_ap_vld;
reg[63:0] v18_9_out_o;
reg v18_9_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_subdone;
reg   [0:0] icmp_ln122_reg_1050;
reg    ap_condition_exit_pp0_iter0_stage20;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_360;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln122_fu_421_p2;
wire   [0:0] tmp_fu_439_p3;
reg   [0:0] tmp_reg_1054;
wire   [6:0] select_ln122_fu_447_p3;
reg   [6:0] select_ln122_reg_1062;
wire   [1:0] select_ln122_5_fu_461_p3;
reg   [1:0] select_ln122_5_reg_1068;
reg   [1:0] select_ln122_5_reg_1068_pp0_iter1_reg;
wire   [4:0] lshr_ln4_fu_469_p4;
reg   [4:0] lshr_ln4_reg_1076;
wire   [3:0] tmp_4_fu_485_p4;
reg   [3:0] tmp_4_reg_1091;
wire   [0:0] trunc_ln125_fu_509_p1;
reg   [0:0] trunc_ln125_reg_1097;
wire   [7:0] add_ln125_fu_533_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] trunc_ln4_reg_1117;
reg   [63:0] v64_reg_1122;
reg   [63:0] v64_1_reg_1127;
reg   [63:0] v64_2_reg_1132;
reg   [63:0] v64_3_reg_1137;
wire   [7:0] add_ln125_1_fu_565_p4;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [1:0] trunc_ln125_1_reg_1147;
wire   [7:0] add_ln125_2_fu_599_p5;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [1:0] trunc_ln125_2_reg_1157;
wire   [7:0] add_ln125_3_fu_634_p4;
reg   [1:0] trunc_ln125_3_reg_1167;
wire   [63:0] v63_fu_692_p11;
reg   [63:0] v63_reg_1192;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [63:0] v63_1_fu_739_p11;
reg   [63:0] v63_1_reg_1217;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [63:0] v63_2_fu_786_p11;
reg   [63:0] v63_2_reg_1242;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] v63_3_fu_833_p11;
reg   [63:0] v63_3_reg_1267;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] v65_reg_1272;
wire    ap_block_pp0_stage20_11001;
wire   [63:0] select_ln122_1_fu_859_p3;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] v65_1_reg_1282;
reg   [63:0] v65_2_reg_1287;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] v65_3_reg_1292;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [0:0] tmp_132_fu_914_p3;
reg   [0:0] tmp_132_reg_1297;
wire    ap_block_pp0_stage31_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln124_1_fu_479_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln125_2_fu_503_p1;
wire   [63:0] zext_ln125_fu_668_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln125_1_fu_715_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln125_3_fu_762_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln125_4_fu_809_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] select_ln122_2_fu_888_p3;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage31;
wire    ap_loop_init;
wire   [63:0] select_ln122_3_fu_895_p3;
wire   [63:0] select_ln122_4_fu_902_p3;
reg   [63:0] v66_fu_108;
wire    ap_block_pp0_stage21;
reg   [6:0] v62_fu_112;
wire   [6:0] add_ln124_fu_909_p2;
reg   [6:0] ap_sig_allocacmp_v62_load;
reg   [1:0] v61_fu_116;
reg   [1:0] ap_sig_allocacmp_v61_load;
reg   [63:0] v18_6_fu_120;
reg   [63:0] v18_fu_124;
reg   [63:0] v18_7_fu_128;
reg   [5:0] indvar_flatten_fu_132;
wire   [5:0] add_ln122_fu_427_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v19_ce1_local;
reg    v19_ce0_local;
reg    v19_1_ce1_local;
reg    v19_1_ce0_local;
reg    v2_0_ce0_local;
reg   [5:0] v2_0_address0_local;
reg    v2_1_ce0_local;
reg   [5:0] v2_1_address0_local;
reg    v2_2_ce0_local;
reg   [5:0] v2_2_address0_local;
reg    v2_3_ce0_local;
reg   [5:0] v2_3_address0_local;
reg   [63:0] grp_fu_352_p0;
reg   [63:0] grp_fu_352_p1;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
reg   [63:0] grp_fu_356_p0;
reg   [63:0] grp_fu_356_p1;
wire    ap_block_pp0_stage16;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire   [1:0] add_ln122_1_fu_455_p2;
wire   [4:0] or_ln2_fu_495_p3;
wire    ap_block_pp0_stage1;
wire   [7:0] zext_ln124_fu_530_p1;
wire   [7:0] tmp_s_fu_523_p3;
wire   [6:0] grp_fu_539_p1;
wire   [7:0] mul_ln125_fu_549_p0;
wire   [9:0] mul_ln125_fu_549_p1;
wire   [16:0] mul_ln125_fu_549_p2;
wire    ap_block_pp0_stage2;
wire   [6:0] grp_fu_573_p1;
wire   [7:0] mul_ln125_1_fu_583_p0;
wire   [9:0] mul_ln125_1_fu_583_p1;
wire   [16:0] mul_ln125_1_fu_583_p2;
wire    ap_block_pp0_stage3;
wire   [6:0] grp_fu_608_p1;
wire   [7:0] mul_ln125_2_fu_618_p0;
wire   [9:0] mul_ln125_2_fu_618_p1;
wire   [16:0] mul_ln125_2_fu_618_p2;
wire    ap_block_pp0_stage4;
wire   [6:0] grp_fu_642_p1;
wire   [7:0] mul_ln125_3_fu_652_p0;
wire   [9:0] mul_ln125_3_fu_652_p1;
wire   [16:0] mul_ln125_3_fu_652_p2;
wire   [7:0] grp_fu_539_p2;
wire   [63:0] v63_fu_692_p2;
wire   [63:0] v63_fu_692_p4;
wire   [63:0] v63_fu_692_p6;
wire   [63:0] v63_fu_692_p8;
wire   [63:0] v63_fu_692_p9;
wire   [7:0] grp_fu_573_p2;
wire   [63:0] v63_1_fu_739_p2;
wire   [63:0] v63_1_fu_739_p4;
wire   [63:0] v63_1_fu_739_p6;
wire   [63:0] v63_1_fu_739_p8;
wire   [63:0] v63_1_fu_739_p9;
wire   [7:0] grp_fu_608_p2;
wire   [63:0] v63_2_fu_786_p2;
wire   [63:0] v63_2_fu_786_p4;
wire   [63:0] v63_2_fu_786_p6;
wire   [63:0] v63_2_fu_786_p8;
wire   [63:0] v63_2_fu_786_p9;
wire   [7:0] grp_fu_642_p2;
wire   [63:0] v63_3_fu_833_p2;
wire   [63:0] v63_3_fu_833_p4;
wire   [63:0] v63_3_fu_833_p6;
wire   [63:0] v63_3_fu_833_p8;
wire   [63:0] v63_3_fu_833_p9;
wire    ap_block_pp0_stage21_00001;
wire    ap_block_pp0_stage29_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage13_00001;
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
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [16:0] mul_ln125_1_fu_583_p00;
wire   [16:0] mul_ln125_2_fu_618_p00;
wire   [16:0] mul_ln125_3_fu_652_p00;
wire   [16:0] mul_ln125_fu_549_p00;
wire   [1:0] v63_fu_692_p1;
wire   [1:0] v63_fu_692_p3;
wire  signed [1:0] v63_fu_692_p5;
wire  signed [1:0] v63_fu_692_p7;
wire   [1:0] v63_1_fu_739_p1;
wire   [1:0] v63_1_fu_739_p3;
wire  signed [1:0] v63_1_fu_739_p5;
wire  signed [1:0] v63_1_fu_739_p7;
wire   [1:0] v63_2_fu_786_p1;
wire   [1:0] v63_2_fu_786_p3;
wire  signed [1:0] v63_2_fu_786_p5;
wire  signed [1:0] v63_2_fu_786_p7;
wire   [1:0] v63_3_fu_833_p1;
wire   [1:0] v63_3_fu_833_p3;
wire  signed [1:0] v63_3_fu_833_p5;
wire  signed [1:0] v63_3_fu_833_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v66_fu_108 = 64'd0;
#0 v62_fu_112 = 7'd0;
#0 v61_fu_116 = 2'd0;
#0 v18_6_fu_120 = 64'd0;
#0 v18_fu_124 = 64'd0;
#0 v18_7_fu_128 = 64'd0;
#0 indvar_flatten_fu_132 = 6'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_8ns_7ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
urem_8ns_7ns_8_12_1_U242(.clk(ap_clk),.reset(ap_rst),.din0(add_ln125_fu_533_p2),.din1(grp_fu_539_p1),.ce(1'b1),.dout(grp_fu_539_p2));
backprop_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U243(.din0(mul_ln125_fu_549_p0),.din1(mul_ln125_fu_549_p1),.dout(mul_ln125_fu_549_p2));
backprop_urem_8ns_7ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
urem_8ns_7ns_8_12_1_U244(.clk(ap_clk),.reset(ap_rst),.din0(add_ln125_1_fu_565_p4),.din1(grp_fu_573_p1),.ce(1'b1),.dout(grp_fu_573_p2));
backprop_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U245(.din0(mul_ln125_1_fu_583_p0),.din1(mul_ln125_1_fu_583_p1),.dout(mul_ln125_1_fu_583_p2));
backprop_urem_8ns_7ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
urem_8ns_7ns_8_12_1_U246(.clk(ap_clk),.reset(ap_rst),.din0(add_ln125_2_fu_599_p5),.din1(grp_fu_608_p1),.ce(1'b1),.dout(grp_fu_608_p2));
backprop_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U247(.din0(mul_ln125_2_fu_618_p0),.din1(mul_ln125_2_fu_618_p1),.dout(mul_ln125_2_fu_618_p2));
backprop_urem_8ns_7ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
urem_8ns_7ns_8_12_1_U248(.clk(ap_clk),.reset(ap_rst),.din0(add_ln125_3_fu_634_p4),.din1(grp_fu_642_p1),.ce(1'b1),.dout(grp_fu_642_p2));
backprop_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U249(.din0(mul_ln125_3_fu_652_p0),.din1(mul_ln125_3_fu_652_p1),.dout(mul_ln125_3_fu_652_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U250(.din0(v63_fu_692_p2),.din1(v63_fu_692_p4),.din2(v63_fu_692_p6),.din3(v63_fu_692_p8),.def(v63_fu_692_p9),.sel(trunc_ln4_reg_1117),.dout(v63_fu_692_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U251(.din0(v63_1_fu_739_p2),.din1(v63_1_fu_739_p4),.din2(v63_1_fu_739_p6),.din3(v63_1_fu_739_p8),.def(v63_1_fu_739_p9),.sel(trunc_ln125_1_reg_1147),.dout(v63_1_fu_739_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U252(.din0(v63_2_fu_786_p2),.din1(v63_2_fu_786_p4),.din2(v63_2_fu_786_p6),.din3(v63_2_fu_786_p8),.def(v63_2_fu_786_p9),.sel(trunc_ln125_2_reg_1157),.dout(v63_2_fu_786_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U253(.din0(v63_3_fu_833_p2),.din1(v63_3_fu_833_p4),.din2(v63_3_fu_833_p6),.din3(v63_3_fu_833_p8),.def(v63_3_fu_833_p9),.sel(trunc_ln125_3_reg_1167),.dout(v63_3_fu_833_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage20),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage20_subdone) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage20)) begin
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
        if (((1'b0 == ap_block_pp0_stage20_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln122_fu_421_p2 == 1'd0))) begin
            indvar_flatten_fu_132 <= add_ln122_fu_427_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_132 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_6_fu_120 <= v18_1_load_1;
    end else if (((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        v18_6_fu_120 <= select_ln122_4_fu_902_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_7_fu_128 <= v18_2_load_1;
    end else if (((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        v18_7_fu_128 <= select_ln122_2_fu_888_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_fu_124 <= v18_load_1;
    end else if (((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        v18_fu_124 <= select_ln122_3_fu_895_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln122_fu_421_p2 == 1'd0))) begin
            v61_fu_116 <= select_ln122_5_fu_461_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v61_fu_116 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v62_fu_112 <= 7'd0;
    end else if (((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        v62_fu_112 <= add_ln124_fu_909_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_fu_108 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        v66_fu_108 <= grp_fu_3795_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln122_reg_1050 <= icmp_ln122_fu_421_p2;
        lshr_ln4_reg_1076 <= {{select_ln122_fu_447_p3[5:1]}};
        select_ln122_5_reg_1068 <= select_ln122_5_fu_461_p3;
        select_ln122_5_reg_1068_pp0_iter1_reg <= select_ln122_5_reg_1068;
        select_ln122_reg_1062 <= select_ln122_fu_447_p3;
        tmp_4_reg_1091 <= {{select_ln122_fu_447_p3[5:2]}};
        tmp_reg_1054 <= ap_sig_allocacmp_v62_load[32'd6];
        trunc_ln125_reg_1097 <= trunc_ln125_fu_509_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)))) begin
        reg_360 <= grp_fu_3795_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        tmp_132_reg_1297 <= add_ln124_fu_909_p2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln125_1_reg_1147 <= {{mul_ln125_1_fu_583_p2[15:14]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        trunc_ln125_2_reg_1157 <= {{mul_ln125_2_fu_618_p2[15:14]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        trunc_ln125_3_reg_1167 <= {{mul_ln125_3_fu_652_p2[15:14]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln4_reg_1117 <= {{mul_ln125_fu_549_p2[15:14]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v63_1_reg_1217 <= v63_1_fu_739_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v63_2_reg_1242 <= v63_2_fu_786_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v63_3_reg_1267 <= v63_3_fu_833_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v63_reg_1192 <= v63_fu_692_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v64_1_reg_1127 <= v19_1_q1;
        v64_2_reg_1132 <= v19_q0;
        v64_3_reg_1137 <= v19_1_q0;
        v64_reg_1122 <= v19_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        v65_1_reg_1282 <= grp_fu_3807_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        v65_2_reg_1287 <= grp_fu_3807_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        v65_3_reg_1292 <= grp_fu_3807_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        v65_reg_1272 <= grp_fu_3807_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln122_reg_1050 == 1'd1) & (1'b0 == ap_block_pp0_stage20_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_condition_exit_pp0_iter0_stage20 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage20 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage20_subdone) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v61_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v61_load = v61_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v62_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v62_load = v62_fu_112;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_352_p0 = reg_360;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_352_p0 = select_ln122_1_fu_859_p3;
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_352_p1 = v65_3_reg_1292;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_352_p1 = v65_2_reg_1287;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_352_p1 = v65_1_reg_1282;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_352_p1 = v65_reg_1272;
    end else begin
        grp_fu_352_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_356_p0 = v63_3_reg_1267;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_356_p0 = v63_2_reg_1242;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_356_p0 = v63_1_reg_1217;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_356_p0 = v63_reg_1192;
        end else begin
            grp_fu_356_p0 = 'bx;
        end
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_356_p1 = v64_3_reg_1137;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_356_p1 = v64_2_reg_1132;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_356_p1 = v64_1_reg_1127;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_356_p1 = v64_reg_1122;
        end else begin
            grp_fu_356_p1 = 'bx;
        end
    end else begin
        grp_fu_356_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_10_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_1068 == 2'd0) & ~(select_ln122_5_reg_1068 == 2'd1) & (icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (select_ln122_5_reg_1068 == 2'd1)))) begin
        v18_10_out_o = select_ln122_3_fu_895_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_132_reg_1297 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (select_ln122_5_reg_1068_pp0_iter1_reg == 2'd0))) begin
        v18_10_out_o = grp_fu_3795_p_dout0;
    end else begin
        v18_10_out_o = v18_10_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_1068 == 2'd0) & ~(select_ln122_5_reg_1068 == 2'd1) & (icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (select_ln122_5_reg_1068 == 2'd1)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_132_reg_1297 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (select_ln122_5_reg_1068_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_10_out_o_ap_vld = 1'b1;
    end else begin
        v18_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_11_out_o = 'bx;
    end else if ((((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (select_ln122_5_reg_1068 == 2'd0)) | ((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (select_ln122_5_reg_1068 == 2'd1)))) begin
        v18_11_out_o = select_ln122_2_fu_888_p3;
    end else if ((~(select_ln122_5_reg_1068_pp0_iter1_reg == 2'd1) & ~(select_ln122_5_reg_1068_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_132_reg_1297 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        v18_11_out_o = grp_fu_3795_p_dout0;
    end else begin
        v18_11_out_o = v18_11_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_1068_pp0_iter1_reg == 2'd1) & ~(select_ln122_5_reg_1068_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_132_reg_1297 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (select_ln122_5_reg_1068 == 2'd0)) | ((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (select_ln122_5_reg_1068 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_11_out_o_ap_vld = 1'b1;
    end else begin
        v18_11_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_9_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_1068 == 2'd0) & ~(select_ln122_5_reg_1068 == 2'd1) & (icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (select_ln122_5_reg_1068 == 2'd0)))) begin
        v18_9_out_o = select_ln122_4_fu_902_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_132_reg_1297 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (select_ln122_5_reg_1068_pp0_iter1_reg == 2'd1))) begin
        v18_9_out_o = grp_fu_3795_p_dout0;
    end else begin
        v18_9_out_o = v18_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_1068 == 2'd0) & ~(select_ln122_5_reg_1068 == 2'd1) & (icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((icmp_ln122_reg_1050 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_132_fu_914_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (select_ln122_5_reg_1068 == 2'd0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_132_reg_1297 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (select_ln122_5_reg_1068_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_9_out_o_ap_vld = 1'b1;
    end else begin
        v18_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_1_ce1_local = 1'b1;
    end else begin
        v19_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_ce1_local = 1'b1;
    end else begin
        v19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v2_0_address0_local = zext_ln125_4_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v2_0_address0_local = zext_ln125_3_fu_762_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v2_0_address0_local = zext_ln125_1_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v2_0_address0_local = zext_ln125_fu_668_p1;
        end else begin
            v2_0_address0_local = 'bx;
        end
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v2_1_address0_local = zext_ln125_4_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v2_1_address0_local = zext_ln125_3_fu_762_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v2_1_address0_local = zext_ln125_1_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v2_1_address0_local = zext_ln125_fu_668_p1;
        end else begin
            v2_1_address0_local = 'bx;
        end
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v2_2_address0_local = zext_ln125_4_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v2_2_address0_local = zext_ln125_3_fu_762_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v2_2_address0_local = zext_ln125_1_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v2_2_address0_local = zext_ln125_fu_668_p1;
        end else begin
            v2_2_address0_local = 'bx;
        end
    end else begin
        v2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v2_3_address0_local = zext_ln125_4_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v2_3_address0_local = zext_ln125_3_fu_762_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v2_3_address0_local = zext_ln125_1_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v2_3_address0_local = zext_ln125_fu_668_p1;
        end else begin
            v2_3_address0_local = 'bx;
        end
    end else begin
        v2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage20)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
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
assign add_ln122_1_fu_455_p2 = (ap_sig_allocacmp_v61_load + 2'd1);
assign add_ln122_fu_427_p2 = (ap_sig_allocacmp_indvar_flatten_load + 6'd1);
assign add_ln124_fu_909_p2 = (select_ln122_reg_1062 + 7'd4);
assign add_ln125_1_fu_565_p4 = {{{select_ln122_5_reg_1068}, {lshr_ln4_reg_1076}}, {1'd1}};
assign add_ln125_2_fu_599_p5 = {{{{select_ln122_5_reg_1068}, {tmp_4_reg_1091}}, {1'd1}}, {trunc_ln125_reg_1097}};
assign add_ln125_3_fu_634_p4 = {{{select_ln122_5_reg_1068}, {tmp_4_reg_1091}}, {2'd3}};
assign add_ln125_fu_533_p2 = (zext_ln124_fu_530_p1 + tmp_s_fu_523_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage20;
assign ap_ready = ap_ready_sig;
assign grp_fu_3795_p_ce = 1'b1;
assign grp_fu_3795_p_din0 = grp_fu_352_p0;
assign grp_fu_3795_p_din1 = grp_fu_352_p1;
assign grp_fu_3795_p_opcode = 2'd0;
assign grp_fu_3807_p_ce = 1'b1;
assign grp_fu_3807_p_din0 = grp_fu_356_p0;
assign grp_fu_3807_p_din1 = grp_fu_356_p1;
assign grp_fu_539_p1 = 8'd48;
assign grp_fu_573_p1 = 8'd48;
assign grp_fu_608_p1 = 8'd48;
assign grp_fu_642_p1 = 8'd48;
assign icmp_ln122_fu_421_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 6'd48) ? 1'b1 : 1'b0);
assign lshr_ln4_fu_469_p4 = {{select_ln122_fu_447_p3[5:1]}};
assign mul_ln125_1_fu_583_p0 = mul_ln125_1_fu_583_p00;
assign mul_ln125_1_fu_583_p00 = add_ln125_1_fu_565_p4;
assign mul_ln125_1_fu_583_p1 = 17'd342;
assign mul_ln125_2_fu_618_p0 = mul_ln125_2_fu_618_p00;
assign mul_ln125_2_fu_618_p00 = add_ln125_2_fu_599_p5;
assign mul_ln125_2_fu_618_p1 = 17'd342;
assign mul_ln125_3_fu_652_p0 = mul_ln125_3_fu_652_p00;
assign mul_ln125_3_fu_652_p00 = add_ln125_3_fu_634_p4;
assign mul_ln125_3_fu_652_p1 = 17'd342;
assign mul_ln125_fu_549_p0 = mul_ln125_fu_549_p00;
assign mul_ln125_fu_549_p00 = add_ln125_fu_533_p2;
assign mul_ln125_fu_549_p1 = 17'd342;
assign or_ln2_fu_495_p3 = {{tmp_4_fu_485_p4}, {1'd1}};
assign select_ln122_1_fu_859_p3 = ((tmp_reg_1054[0:0] == 1'b1) ? 64'd0 : v66_fu_108);
assign select_ln122_2_fu_888_p3 = ((tmp_reg_1054[0:0] == 1'b1) ? v18_11_out_i : v18_7_fu_128);
assign select_ln122_3_fu_895_p3 = ((tmp_reg_1054[0:0] == 1'b1) ? v18_10_out_i : v18_fu_124);
assign select_ln122_4_fu_902_p3 = ((tmp_reg_1054[0:0] == 1'b1) ? v18_9_out_i : v18_6_fu_120);
assign select_ln122_5_fu_461_p3 = ((tmp_fu_439_p3[0:0] == 1'b1) ? add_ln122_1_fu_455_p2 : ap_sig_allocacmp_v61_load);
assign select_ln122_fu_447_p3 = ((tmp_fu_439_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v62_load);
assign tmp_132_fu_914_p3 = add_ln124_fu_909_p2[32'd6];
assign tmp_4_fu_485_p4 = {{select_ln122_fu_447_p3[5:2]}};
assign tmp_fu_439_p3 = ap_sig_allocacmp_v62_load[32'd6];
assign tmp_s_fu_523_p3 = {{select_ln122_5_reg_1068}, {6'd0}};
assign trunc_ln125_fu_509_p1 = select_ln122_fu_447_p3[0:0];
assign v19_1_address0 = zext_ln125_2_fu_503_p1;
assign v19_1_address1 = zext_ln124_1_fu_479_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_1_ce1 = v19_1_ce1_local;
assign v19_address0 = zext_ln125_2_fu_503_p1;
assign v19_address1 = zext_ln124_1_fu_479_p1;
assign v19_ce0 = v19_ce0_local;
assign v19_ce1 = v19_ce1_local;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_2_address0 = v2_2_address0_local;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_3_address0 = v2_3_address0_local;
assign v2_3_ce0 = v2_3_ce0_local;
assign v63_1_fu_739_p2 = v2_0_q0;
assign v63_1_fu_739_p4 = v2_1_q0;
assign v63_1_fu_739_p6 = v2_2_q0;
assign v63_1_fu_739_p8 = v2_3_q0;
assign v63_1_fu_739_p9 = 'bx;
assign v63_2_fu_786_p2 = v2_0_q0;
assign v63_2_fu_786_p4 = v2_1_q0;
assign v63_2_fu_786_p6 = v2_2_q0;
assign v63_2_fu_786_p8 = v2_3_q0;
assign v63_2_fu_786_p9 = 'bx;
assign v63_3_fu_833_p2 = v2_0_q0;
assign v63_3_fu_833_p4 = v2_1_q0;
assign v63_3_fu_833_p6 = v2_2_q0;
assign v63_3_fu_833_p8 = v2_3_q0;
assign v63_3_fu_833_p9 = 'bx;
assign v63_fu_692_p2 = v2_0_q0;
assign v63_fu_692_p4 = v2_1_q0;
assign v63_fu_692_p6 = v2_2_q0;
assign v63_fu_692_p8 = v2_3_q0;
assign v63_fu_692_p9 = 'bx;
assign zext_ln124_1_fu_479_p1 = lshr_ln4_fu_469_p4;
assign zext_ln124_fu_530_p1 = select_ln122_reg_1062;
assign zext_ln125_1_fu_715_p1 = grp_fu_573_p2;
assign zext_ln125_2_fu_503_p1 = or_ln2_fu_495_p3;
assign zext_ln125_3_fu_762_p1 = grp_fu_608_p2;
assign zext_ln125_4_fu_809_p1 = grp_fu_642_p2;
assign zext_ln125_fu_668_p1 = grp_fu_539_p2;
endmodule 
