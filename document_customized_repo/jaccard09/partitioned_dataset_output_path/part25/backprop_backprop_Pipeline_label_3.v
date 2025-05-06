
module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v0_4_address0,v0_4_ce0,v0_4_q0,v0_4_address1,v0_4_ce1,v0_4_q1,v0_5_address0,v0_5_ce0,v0_5_q0,v0_5_address1,v0_5_ce1,v0_5_q1,v0_6_address0,v0_6_ce0,v0_6_q0,v0_6_address1,v0_6_ce1,v0_6_q1,v0_7_address0,v0_7_ce0,v0_7_q0,v0_7_address1,v0_7_ce1,v0_7_q1,phi_mul112,v6_address0,v6_ce0,v6_q0,v6_address1,v6_ce1,v6_q1,v29_4_out,v29_4_out_ap_vld,grp_fu_17594_p_din0,grp_fu_17594_p_din1,grp_fu_17594_p_opcode,grp_fu_17594_p_dout0,grp_fu_17594_p_ce,grp_fu_8856_p_din0,grp_fu_8856_p_din1,grp_fu_8856_p_dout0,grp_fu_8856_p_ce);  
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
input  [9:0] phi_mul;
output  [6:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [6:0] v0_0_address1;
output   v0_0_ce1;
input  [63:0] v0_0_q1;
output  [6:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [6:0] v0_1_address1;
output   v0_1_ce1;
input  [63:0] v0_1_q1;
output  [6:0] v0_2_address0;
output   v0_2_ce0;
input  [63:0] v0_2_q0;
output  [6:0] v0_2_address1;
output   v0_2_ce1;
input  [63:0] v0_2_q1;
output  [6:0] v0_3_address0;
output   v0_3_ce0;
input  [63:0] v0_3_q0;
output  [6:0] v0_3_address1;
output   v0_3_ce1;
input  [63:0] v0_3_q1;
output  [6:0] v0_4_address0;
output   v0_4_ce0;
input  [63:0] v0_4_q0;
output  [6:0] v0_4_address1;
output   v0_4_ce1;
input  [63:0] v0_4_q1;
output  [6:0] v0_5_address0;
output   v0_5_ce0;
input  [63:0] v0_5_q0;
output  [6:0] v0_5_address1;
output   v0_5_ce1;
input  [63:0] v0_5_q1;
output  [6:0] v0_6_address0;
output   v0_6_ce0;
input  [63:0] v0_6_q0;
output  [6:0] v0_6_address1;
output   v0_6_ce1;
input  [63:0] v0_6_q1;
output  [6:0] v0_7_address0;
output   v0_7_ce0;
input  [63:0] v0_7_q0;
output  [6:0] v0_7_address1;
output   v0_7_ce1;
input  [63:0] v0_7_q1;
input  [11:0] phi_mul112;
output  [11:0] v6_address0;
output   v6_ce0;
input  [63:0] v6_q0;
output  [11:0] v6_address1;
output   v6_ce1;
input  [63:0] v6_q1;
output  [63:0] v29_4_out;
output   v29_4_out_ap_vld;
output  [63:0] grp_fu_17594_p_din0;
output  [63:0] grp_fu_17594_p_din1;
output  [0:0] grp_fu_17594_p_opcode;
input  [63:0] grp_fu_17594_p_dout0;
output   grp_fu_17594_p_ce;
output  [63:0] grp_fu_8856_p_din0;
output  [63:0] grp_fu_8856_p_din1;
input  [63:0] grp_fu_8856_p_dout0;
output   grp_fu_8856_p_ce;
reg ap_idle;
reg v29_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] icmp_ln68_reg_1174;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_509;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_513;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] v24_1_reg_1115;
wire   [2:0] trunc_ln69_fu_545_p1;
reg   [2:0] trunc_ln69_reg_1121;
wire   [0:0] icmp_ln68_fu_600_p2;
wire   [63:0] v25_fu_685_p19;
reg   [63:0] v25_reg_1223;
wire   [63:0] v25_1_fu_756_p19;
reg   [63:0] v25_1_reg_1228;
reg   [63:0] v6_load_1_reg_1233;
wire   [63:0] v26_fu_910_p1;
wire   [63:0] v25_2_fu_947_p19;
reg   [63:0] v25_2_reg_1333;
wire   [63:0] v25_3_fu_1018_p19;
reg   [63:0] v25_3_reg_1338;
reg   [63:0] v6_load_3_reg_1343;
wire   [63:0] v26_1_fu_1057_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] v26_2_fu_1061_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] v26_3_fu_1066_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] v27_reg_1363;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] v27_1_reg_1373;
reg   [63:0] v27_2_reg_1378;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] v27_3_reg_1383;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
wire   [63:0] zext_ln69_fu_559_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_fu_577_p1;
wire   [63:0] zext_ln69_1_fu_630_p1;
wire   [63:0] zext_ln70_1_fu_648_p1;
wire   [63:0] zext_ln69_4_fu_835_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln70_2_fu_852_p1;
wire   [63:0] zext_ln69_7_fu_888_p1;
wire   [63:0] zext_ln70_3_fu_905_p1;
reg   [63:0] v28_fu_104;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [3:0] v24_fu_108;
wire   [3:0] add_ln68_fu_1074_p2;
wire    ap_block_pp0_stage31_11001;
reg   [3:0] ap_sig_allocacmp_v24_1;
wire    ap_block_pp0_stage16_01001;
reg    v0_0_ce1_local;
reg    v0_0_ce0_local;
reg   [6:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg    v0_1_ce0_local;
reg   [6:0] v0_1_address0_local;
reg    v0_2_ce1_local;
reg    v0_2_ce0_local;
reg   [6:0] v0_2_address0_local;
reg    v0_3_ce1_local;
reg    v0_3_ce0_local;
reg   [6:0] v0_3_address0_local;
reg    v0_4_ce1_local;
reg    v0_4_ce0_local;
reg   [6:0] v0_4_address0_local;
reg    v0_5_ce1_local;
reg    v0_5_ce0_local;
reg   [6:0] v0_5_address0_local;
reg    v0_6_ce1_local;
reg    v0_6_ce0_local;
reg   [6:0] v0_6_address0_local;
reg    v0_7_ce1_local;
reg    v0_7_ce0_local;
reg   [6:0] v0_7_address0_local;
reg    v6_ce1_local;
reg   [11:0] v6_address1_local;
reg    v6_ce0_local;
reg   [11:0] v6_address0_local;
reg   [63:0] grp_fu_500_p0;
reg   [63:0] grp_fu_500_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25;
reg   [63:0] grp_fu_505_p0;
reg   [63:0] grp_fu_505_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire   [9:0] zext_ln68_1_fu_535_p1;
wire   [9:0] add_ln69_fu_539_p2;
wire   [6:0] lshr_ln_fu_549_p4;
wire   [11:0] zext_ln68_fu_531_p1;
wire   [11:0] add_ln70_fu_571_p2;
wire   [2:0] tmp_1_fu_582_p4;
wire   [3:0] or_ln_fu_592_p3;
wire   [9:0] zext_ln68_3_fu_610_p1;
wire   [9:0] add_ln69_1_fu_614_p2;
wire   [6:0] lshr_ln69_1_fu_620_p4;
wire   [11:0] zext_ln68_2_fu_606_p1;
wire   [11:0] add_ln70_1_fu_642_p2;
wire   [63:0] v25_fu_685_p2;
wire   [63:0] v25_fu_685_p4;
wire   [63:0] v25_fu_685_p6;
wire   [63:0] v25_fu_685_p8;
wire   [63:0] v25_fu_685_p10;
wire   [63:0] v25_fu_685_p12;
wire   [63:0] v25_fu_685_p14;
wire   [63:0] v25_fu_685_p16;
wire   [63:0] v25_fu_685_p17;
wire   [63:0] v25_1_fu_756_p2;
wire   [63:0] v25_1_fu_756_p4;
wire   [63:0] v25_1_fu_756_p6;
wire   [63:0] v25_1_fu_756_p8;
wire   [63:0] v25_1_fu_756_p10;
wire   [63:0] v25_1_fu_756_p12;
wire   [63:0] v25_1_fu_756_p14;
wire   [63:0] v25_1_fu_756_p16;
wire   [63:0] v25_1_fu_756_p17;
wire   [1:0] tmp_2_fu_795_p4;
wire   [3:0] or_ln68_1_fu_804_p3;
wire   [9:0] zext_ln69_3_fu_816_p1;
wire   [9:0] add_ln69_2_fu_820_p2;
wire   [6:0] lshr_ln69_2_fu_825_p4;
wire   [11:0] zext_ln69_2_fu_812_p1;
wire   [11:0] add_ln70_2_fu_847_p2;
wire   [3:0] or_ln68_2_fu_857_p3;
wire   [9:0] zext_ln69_6_fu_869_p1;
wire   [9:0] add_ln69_3_fu_873_p2;
wire   [6:0] lshr_ln69_3_fu_878_p4;
wire   [11:0] zext_ln69_5_fu_865_p1;
wire   [11:0] add_ln70_3_fu_900_p2;
wire   [63:0] v25_2_fu_947_p2;
wire   [63:0] v25_2_fu_947_p4;
wire   [63:0] v25_2_fu_947_p6;
wire   [63:0] v25_2_fu_947_p8;
wire   [63:0] v25_2_fu_947_p10;
wire   [63:0] v25_2_fu_947_p12;
wire   [63:0] v25_2_fu_947_p14;
wire   [63:0] v25_2_fu_947_p16;
wire   [63:0] v25_2_fu_947_p17;
wire   [63:0] v25_3_fu_1018_p2;
wire   [63:0] v25_3_fu_1018_p4;
wire   [63:0] v25_3_fu_1018_p6;
wire   [63:0] v25_3_fu_1018_p8;
wire   [63:0] v25_3_fu_1018_p10;
wire   [63:0] v25_3_fu_1018_p12;
wire   [63:0] v25_3_fu_1018_p14;
wire   [63:0] v25_3_fu_1018_p16;
wire   [63:0] v25_3_fu_1018_p17;
wire    ap_block_pp0_stage31;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage1_00001;
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
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1142;
reg    ap_condition_1146;
reg    ap_condition_1150;
reg    ap_condition_1154;
reg    ap_condition_1158;
reg    ap_condition_1162;
reg    ap_condition_1166;
reg    ap_condition_1170;
wire   [2:0] v25_fu_685_p1;
wire   [2:0] v25_fu_685_p3;
wire   [2:0] v25_fu_685_p5;
wire   [2:0] v25_fu_685_p7;
wire  signed [2:0] v25_fu_685_p9;
wire  signed [2:0] v25_fu_685_p11;
wire  signed [2:0] v25_fu_685_p13;
wire  signed [2:0] v25_fu_685_p15;
wire  signed [2:0] v25_1_fu_756_p1;
wire   [2:0] v25_1_fu_756_p3;
wire   [2:0] v25_1_fu_756_p5;
wire   [2:0] v25_1_fu_756_p7;
wire   [2:0] v25_1_fu_756_p9;
wire  signed [2:0] v25_1_fu_756_p11;
wire  signed [2:0] v25_1_fu_756_p13;
wire  signed [2:0] v25_1_fu_756_p15;
wire  signed [2:0] v25_2_fu_947_p1;
wire  signed [2:0] v25_2_fu_947_p3;
wire   [2:0] v25_2_fu_947_p5;
wire   [2:0] v25_2_fu_947_p7;
wire   [2:0] v25_2_fu_947_p9;
wire   [2:0] v25_2_fu_947_p11;
wire  signed [2:0] v25_2_fu_947_p13;
wire  signed [2:0] v25_2_fu_947_p15;
wire  signed [2:0] v25_3_fu_1018_p1;
wire  signed [2:0] v25_3_fu_1018_p3;
wire  signed [2:0] v25_3_fu_1018_p5;
wire   [2:0] v25_3_fu_1018_p7;
wire   [2:0] v25_3_fu_1018_p9;
wire   [2:0] v25_3_fu_1018_p11;
wire   [2:0] v25_3_fu_1018_p13;
wire  signed [2:0] v25_3_fu_1018_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_104 = 64'd0;
#0 v24_fu_108 = 4'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U8(.din0(v25_fu_685_p2),.din1(v25_fu_685_p4),.din2(v25_fu_685_p6),.din3(v25_fu_685_p8),.din4(v25_fu_685_p10),.din5(v25_fu_685_p12),.din6(v25_fu_685_p14),.din7(v25_fu_685_p16),.def(v25_fu_685_p17),.sel(trunc_ln69_reg_1121),.dout(v25_fu_685_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U9(.din0(v25_1_fu_756_p2),.din1(v25_1_fu_756_p4),.din2(v25_1_fu_756_p6),.din3(v25_1_fu_756_p8),.din4(v25_1_fu_756_p10),.din5(v25_1_fu_756_p12),.din6(v25_1_fu_756_p14),.din7(v25_1_fu_756_p16),.def(v25_1_fu_756_p17),.sel(trunc_ln69_reg_1121),.dout(v25_1_fu_756_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U10(.din0(v25_2_fu_947_p2),.din1(v25_2_fu_947_p4),.din2(v25_2_fu_947_p6),.din3(v25_2_fu_947_p8),.din4(v25_2_fu_947_p10),.din5(v25_2_fu_947_p12),.din6(v25_2_fu_947_p14),.din7(v25_2_fu_947_p16),.def(v25_2_fu_947_p17),.sel(trunc_ln69_reg_1121),.dout(v25_2_fu_947_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U11(.din0(v25_3_fu_1018_p2),.din1(v25_3_fu_1018_p4),.din2(v25_3_fu_1018_p6),.din3(v25_3_fu_1018_p8),.din4(v25_3_fu_1018_p10),.din5(v25_3_fu_1018_p12),.din6(v25_3_fu_1018_p14),.din7(v25_3_fu_1018_p16),.def(v25_3_fu_1018_p17),.sel(trunc_ln69_reg_1121),.dout(v25_3_fu_1018_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage16)) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_108 <= 4'd0;
    end else if (((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        v24_fu_108 <= add_ln68_fu_1074_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_104 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v28_fu_104 <= grp_fu_17594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln68_reg_1174 <= icmp_ln68_fu_600_p2;
        trunc_ln69_reg_1121 <= trunc_ln69_fu_545_p1;
        v24_1_reg_1115 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_509 <= v6_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_513 <= grp_fu_17594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v25_1_reg_1228 <= v25_1_fu_756_p19;
        v25_reg_1223 <= v25_fu_685_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v25_2_reg_1333 <= v25_2_fu_947_p19;
        v25_3_reg_1338 <= v25_3_fu_1018_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v27_1_reg_1373 <= grp_fu_8856_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v27_2_reg_1378 <= grp_fu_8856_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v27_3_reg_1383 <= grp_fu_8856_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v27_reg_1363 <= grp_fu_8856_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v6_load_1_reg_1233 <= v6_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v6_load_3_reg_1343 <= v6_q0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_1174 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
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
        ap_sig_allocacmp_v24_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_v24_1 = v24_fu_108;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_500_p0 = reg_513;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_500_p0 = v28_fu_104;
    end else begin
        grp_fu_500_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_500_p1 = v27_3_reg_1383;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_500_p1 = v27_2_reg_1378;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_500_p1 = v27_1_reg_1373;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_500_p1 = v27_reg_1363;
    end else begin
        grp_fu_500_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_505_p0 = v25_3_reg_1338;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_505_p0 = v25_2_reg_1333;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_505_p0 = v25_1_reg_1228;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_505_p0 = v25_reg_1223;
        end else begin
            grp_fu_505_p0 = 'bx;
        end
    end else begin
        grp_fu_505_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_505_p1 = v26_3_fu_1066_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_505_p1 = v26_2_fu_1061_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_505_p1 = v26_1_fu_1057_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_505_p1 = v26_fu_910_p1;
        end else begin
            grp_fu_505_p1 = 'bx;
        end
    end else begin
        grp_fu_505_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1146)) begin
            v0_0_address0_local = zext_ln69_7_fu_888_p1;
        end else if ((1'b1 == ap_condition_1142)) begin
            v0_0_address0_local = zext_ln69_4_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address0_local = zext_ln69_1_fu_630_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1142)) begin
            v0_1_address0_local = zext_ln69_7_fu_888_p1;
        end else if ((1'b1 == ap_condition_1150)) begin
            v0_1_address0_local = zext_ln69_4_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address0_local = zext_ln69_1_fu_630_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1150)) begin
            v0_2_address0_local = zext_ln69_7_fu_888_p1;
        end else if ((1'b1 == ap_condition_1154)) begin
            v0_2_address0_local = zext_ln69_4_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_2_address0_local = zext_ln69_1_fu_630_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1154)) begin
            v0_3_address0_local = zext_ln69_7_fu_888_p1;
        end else if ((1'b1 == ap_condition_1158)) begin
            v0_3_address0_local = zext_ln69_4_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_3_address0_local = zext_ln69_1_fu_630_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1158)) begin
            v0_4_address0_local = zext_ln69_7_fu_888_p1;
        end else if ((1'b1 == ap_condition_1162)) begin
            v0_4_address0_local = zext_ln69_4_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_4_address0_local = zext_ln69_1_fu_630_p1;
        end else begin
            v0_4_address0_local = 'bx;
        end
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_ce1_local = 1'b1;
    end else begin
        v0_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1162)) begin
            v0_5_address0_local = zext_ln69_7_fu_888_p1;
        end else if ((1'b1 == ap_condition_1166)) begin
            v0_5_address0_local = zext_ln69_4_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_5_address0_local = zext_ln69_1_fu_630_p1;
        end else begin
            v0_5_address0_local = 'bx;
        end
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_ce1_local = 1'b1;
    end else begin
        v0_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1166)) begin
            v0_6_address0_local = zext_ln69_7_fu_888_p1;
        end else if ((1'b1 == ap_condition_1170)) begin
            v0_6_address0_local = zext_ln69_4_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_6_address0_local = zext_ln69_1_fu_630_p1;
        end else begin
            v0_6_address0_local = 'bx;
        end
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_ce1_local = 1'b1;
    end else begin
        v0_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1170)) begin
            v0_7_address0_local = zext_ln69_7_fu_888_p1;
        end else if ((1'b1 == ap_condition_1146)) begin
            v0_7_address0_local = zext_ln69_4_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_7_address0_local = zext_ln69_1_fu_630_p1;
        end else begin
            v0_7_address0_local = 'bx;
        end
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln69_reg_1121 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_ce1_local = 1'b1;
    end else begin
        v0_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln68_reg_1174 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v29_4_out_ap_vld = 1'b1;
    end else begin
        v29_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v6_address0_local = zext_ln70_3_fu_905_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v6_address0_local = zext_ln70_1_fu_648_p1;
        end else begin
            v6_address0_local = 'bx;
        end
    end else begin
        v6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v6_address1_local = zext_ln70_2_fu_852_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v6_address1_local = zext_ln70_fu_577_p1;
        end else begin
            v6_address1_local = 'bx;
        end
    end else begin
        v6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v6_ce0_local = 1'b1;
    end else begin
        v6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v6_ce1_local = 1'b1;
    end else begin
        v6_ce1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage16)) begin
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
assign add_ln68_fu_1074_p2 = (v24_1_reg_1115 + 4'd4);
assign add_ln69_1_fu_614_p2 = (zext_ln68_3_fu_610_p1 + phi_mul);
assign add_ln69_2_fu_820_p2 = (zext_ln69_3_fu_816_p1 + phi_mul);
assign add_ln69_3_fu_873_p2 = (zext_ln69_6_fu_869_p1 + phi_mul);
assign add_ln69_fu_539_p2 = (zext_ln68_1_fu_535_p1 + phi_mul);
assign add_ln70_1_fu_642_p2 = (zext_ln68_2_fu_606_p1 + phi_mul112);
assign add_ln70_2_fu_847_p2 = (zext_ln69_2_fu_812_p1 + phi_mul112);
assign add_ln70_3_fu_900_p2 = (zext_ln69_5_fu_865_p1 + phi_mul112);
assign add_ln70_fu_571_p2 = (zext_ln68_fu_531_p1 + phi_mul112);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1142 = ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln69_reg_1121 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1146 = ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln69_reg_1121 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1150 = ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln69_reg_1121 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1154 = ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln69_reg_1121 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1158 = ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln69_reg_1121 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1162 = ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln69_reg_1121 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1166 = ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln69_reg_1121 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1170 = ((icmp_ln68_reg_1174 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln69_reg_1121 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign grp_fu_17594_p_ce = 1'b1;
assign grp_fu_17594_p_din0 = grp_fu_500_p0;
assign grp_fu_17594_p_din1 = grp_fu_500_p1;
assign grp_fu_17594_p_opcode = 2'd0;
assign grp_fu_8856_p_ce = 1'b1;
assign grp_fu_8856_p_din0 = grp_fu_505_p0;
assign grp_fu_8856_p_din1 = grp_fu_505_p1;
assign icmp_ln68_fu_600_p2 = ((or_ln_fu_592_p3 == 4'd13) ? 1'b1 : 1'b0);
assign lshr_ln69_1_fu_620_p4 = {{add_ln69_1_fu_614_p2[9:3]}};
assign lshr_ln69_2_fu_825_p4 = {{add_ln69_2_fu_820_p2[9:3]}};
assign lshr_ln69_3_fu_878_p4 = {{add_ln69_3_fu_873_p2[9:3]}};
assign lshr_ln_fu_549_p4 = {{add_ln69_fu_539_p2[9:3]}};
assign or_ln68_1_fu_804_p3 = {{tmp_2_fu_795_p4}, {2'd2}};
assign or_ln68_2_fu_857_p3 = {{tmp_2_fu_795_p4}, {2'd3}};
assign or_ln_fu_592_p3 = {{tmp_1_fu_582_p4}, {1'd1}};
assign tmp_1_fu_582_p4 = {{ap_sig_allocacmp_v24_1[3:1]}};
assign tmp_2_fu_795_p4 = {{v24_1_reg_1115[3:2]}};
assign trunc_ln69_fu_545_p1 = add_ln69_fu_539_p2[2:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = zext_ln69_fu_559_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = zext_ln69_fu_559_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_address1 = zext_ln69_fu_559_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_ce1 = v0_2_ce1_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_address1 = zext_ln69_fu_559_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_ce1 = v0_3_ce1_local;
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_address1 = zext_ln69_fu_559_p1;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_4_ce1 = v0_4_ce1_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_address1 = zext_ln69_fu_559_p1;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_5_ce1 = v0_5_ce1_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_address1 = zext_ln69_fu_559_p1;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_6_ce1 = v0_6_ce1_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_address1 = zext_ln69_fu_559_p1;
assign v0_7_ce0 = v0_7_ce0_local;
assign v0_7_ce1 = v0_7_ce1_local;
assign v25_1_fu_756_p10 = v0_4_q0;
assign v25_1_fu_756_p12 = v0_5_q0;
assign v25_1_fu_756_p14 = v0_6_q0;
assign v25_1_fu_756_p16 = v0_7_q0;
assign v25_1_fu_756_p17 = 'bx;
assign v25_1_fu_756_p2 = v0_0_q0;
assign v25_1_fu_756_p4 = v0_1_q0;
assign v25_1_fu_756_p6 = v0_2_q0;
assign v25_1_fu_756_p8 = v0_3_q0;
assign v25_2_fu_947_p10 = v0_4_q0;
assign v25_2_fu_947_p12 = v0_5_q0;
assign v25_2_fu_947_p14 = v0_6_q0;
assign v25_2_fu_947_p16 = v0_7_q0;
assign v25_2_fu_947_p17 = 'bx;
assign v25_2_fu_947_p2 = v0_0_q0;
assign v25_2_fu_947_p4 = v0_1_q0;
assign v25_2_fu_947_p6 = v0_2_q0;
assign v25_2_fu_947_p8 = v0_3_q0;
assign v25_3_fu_1018_p10 = v0_4_q0;
assign v25_3_fu_1018_p12 = v0_5_q0;
assign v25_3_fu_1018_p14 = v0_6_q0;
assign v25_3_fu_1018_p16 = v0_7_q0;
assign v25_3_fu_1018_p17 = 'bx;
assign v25_3_fu_1018_p2 = v0_0_q0;
assign v25_3_fu_1018_p4 = v0_1_q0;
assign v25_3_fu_1018_p6 = v0_2_q0;
assign v25_3_fu_1018_p8 = v0_3_q0;
assign v25_fu_685_p10 = v0_4_q1;
assign v25_fu_685_p12 = v0_5_q1;
assign v25_fu_685_p14 = v0_6_q1;
assign v25_fu_685_p16 = v0_7_q1;
assign v25_fu_685_p17 = 'bx;
assign v25_fu_685_p2 = v0_0_q1;
assign v25_fu_685_p4 = v0_1_q1;
assign v25_fu_685_p6 = v0_2_q1;
assign v25_fu_685_p8 = v0_3_q1;
assign v26_1_fu_1057_p1 = v6_load_1_reg_1233;
assign v26_2_fu_1061_p1 = reg_509;
assign v26_3_fu_1066_p1 = v6_load_3_reg_1343;
assign v26_fu_910_p1 = reg_509;
assign v29_4_out = grp_fu_17594_p_dout0;
assign v6_address0 = v6_address0_local;
assign v6_address1 = v6_address1_local;
assign v6_ce0 = v6_ce0_local;
assign v6_ce1 = v6_ce1_local;
assign zext_ln68_1_fu_535_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln68_2_fu_606_p1 = or_ln_fu_592_p3;
assign zext_ln68_3_fu_610_p1 = or_ln_fu_592_p3;
assign zext_ln68_fu_531_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_1_fu_630_p1 = lshr_ln69_1_fu_620_p4;
assign zext_ln69_2_fu_812_p1 = or_ln68_1_fu_804_p3;
assign zext_ln69_3_fu_816_p1 = or_ln68_1_fu_804_p3;
assign zext_ln69_4_fu_835_p1 = lshr_ln69_2_fu_825_p4;
assign zext_ln69_5_fu_865_p1 = or_ln68_2_fu_857_p3;
assign zext_ln69_6_fu_869_p1 = or_ln68_2_fu_857_p3;
assign zext_ln69_7_fu_888_p1 = lshr_ln69_3_fu_878_p4;
assign zext_ln69_fu_559_p1 = lshr_ln_fu_549_p4;
assign zext_ln70_1_fu_648_p1 = add_ln70_1_fu_642_p2;
assign zext_ln70_2_fu_852_p1 = add_ln70_2_fu_847_p2;
assign zext_ln70_3_fu_905_p1 = add_ln70_3_fu_900_p2;
assign zext_ln70_fu_577_p1 = add_ln70_fu_571_p2;
endmodule 
