
module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v0_4_address0,v0_4_ce0,v0_4_q0,v0_5_address0,v0_5_ce0,v0_5_q0,v0_6_address0,v0_6_ce0,v0_6_q0,v0_7_address0,v0_7_ce0,v0_7_q0,phi_mul217,v6_0_address0,v6_0_ce0,v6_0_q0,v6_0_address1,v6_0_ce1,v6_0_q1,v6_1_address0,v6_1_ce0,v6_1_q0,v6_1_address1,v6_1_ce1,v6_1_q1,v6_2_address0,v6_2_ce0,v6_2_q0,v6_2_address1,v6_2_ce1,v6_2_q1,v6_3_address0,v6_3_ce0,v6_3_q0,v6_3_address1,v6_3_ce1,v6_3_q1,v6_4_address0,v6_4_ce0,v6_4_q0,v6_4_address1,v6_4_ce1,v6_4_q1,v6_5_address0,v6_5_ce0,v6_5_q0,v6_5_address1,v6_5_ce1,v6_5_q1,v6_6_address0,v6_6_ce0,v6_6_q0,v6_6_address1,v6_6_ce1,v6_6_q1,v6_7_address0,v6_7_ce0,v6_7_q0,v6_7_address1,v6_7_ce1,v6_7_q1,v29_2_out,v29_2_out_ap_vld,grp_fu_3226_p_din0,grp_fu_3226_p_din1,grp_fu_3226_p_opcode,grp_fu_3226_p_dout0,grp_fu_3226_p_ce,grp_fu_3244_p_din0,grp_fu_3244_p_din1,grp_fu_3244_p_dout0,grp_fu_3244_p_ce);  
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
input  [9:0] phi_mul;
output  [6:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [6:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [6:0] v0_2_address0;
output   v0_2_ce0;
input  [63:0] v0_2_q0;
output  [6:0] v0_3_address0;
output   v0_3_ce0;
input  [63:0] v0_3_q0;
output  [6:0] v0_4_address0;
output   v0_4_ce0;
input  [63:0] v0_4_q0;
output  [6:0] v0_5_address0;
output   v0_5_ce0;
input  [63:0] v0_5_q0;
output  [6:0] v0_6_address0;
output   v0_6_ce0;
input  [63:0] v0_6_q0;
output  [6:0] v0_7_address0;
output   v0_7_ce0;
input  [63:0] v0_7_q0;
input  [11:0] phi_mul217;
output  [8:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [8:0] v6_0_address1;
output   v6_0_ce1;
input  [63:0] v6_0_q1;
output  [8:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [8:0] v6_1_address1;
output   v6_1_ce1;
input  [63:0] v6_1_q1;
output  [8:0] v6_2_address0;
output   v6_2_ce0;
input  [63:0] v6_2_q0;
output  [8:0] v6_2_address1;
output   v6_2_ce1;
input  [63:0] v6_2_q1;
output  [8:0] v6_3_address0;
output   v6_3_ce0;
input  [63:0] v6_3_q0;
output  [8:0] v6_3_address1;
output   v6_3_ce1;
input  [63:0] v6_3_q1;
output  [8:0] v6_4_address0;
output   v6_4_ce0;
input  [63:0] v6_4_q0;
output  [8:0] v6_4_address1;
output   v6_4_ce1;
input  [63:0] v6_4_q1;
output  [8:0] v6_5_address0;
output   v6_5_ce0;
input  [63:0] v6_5_q0;
output  [8:0] v6_5_address1;
output   v6_5_ce1;
input  [63:0] v6_5_q1;
output  [8:0] v6_6_address0;
output   v6_6_ce0;
input  [63:0] v6_6_q0;
output  [8:0] v6_6_address1;
output   v6_6_ce1;
input  [63:0] v6_6_q1;
output  [8:0] v6_7_address0;
output   v6_7_ce0;
input  [63:0] v6_7_q0;
output  [8:0] v6_7_address1;
output   v6_7_ce1;
input  [63:0] v6_7_q1;
output  [63:0] v29_2_out;
output   v29_2_out_ap_vld;
output  [63:0] grp_fu_3226_p_din0;
output  [63:0] grp_fu_3226_p_din1;
output  [0:0] grp_fu_3226_p_opcode;
input  [63:0] grp_fu_3226_p_dout0;
output   grp_fu_3226_p_ce;
output  [63:0] grp_fu_3244_p_din0;
output  [63:0] grp_fu_3244_p_din1;
input  [63:0] grp_fu_3244_p_dout0;
output   grp_fu_3244_p_ce;
reg ap_idle;
reg v29_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln68_reg_1103;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] v24_1_reg_1041;
wire   [9:0] add_ln69_fu_543_p2;
reg   [9:0] add_ln69_reg_1046;
wire   [2:0] trunc_ln70_fu_561_p1;
reg   [2:0] trunc_ln70_reg_1052;
wire   [3:0] or_ln_fu_597_p3;
reg   [3:0] or_ln_reg_1098;
wire   [0:0] icmp_ln68_fu_605_p2;
reg   [0:0] icmp_ln68_reg_1103_pp0_iter1_reg;
reg   [2:0] trunc_ln1_reg_1147;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] v26_fu_694_p19;
reg   [63:0] v26_reg_1152;
wire   [9:0] add_ln69_1_fu_736_p2;
reg   [9:0] add_ln69_1_reg_1157;
wire   [63:0] v26_1_fu_779_p19;
reg   [63:0] v26_1_reg_1163;
reg   [2:0] trunc_ln69_1_reg_1168;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [63:0] v25_fu_881_p19;
reg   [63:0] v25_reg_1213;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [63:0] v25_1_fu_964_p19;
reg   [63:0] v25_1_reg_1258;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] v27_reg_1263;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] v27_1_reg_1273;
reg   [63:0] v29_2_reg_1278;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage13_subdone;
reg    ap_condition_exit_pp0_iter1_stage13;
wire    ap_block_pp0_stage5_subdone;
wire   [63:0] zext_ln70_fu_575_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_1_fu_631_p1;
wire   [63:0] zext_ln69_fu_837_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln69_1_fu_920_p1;
wire    ap_block_pp0_stage14;
reg   [63:0] v28_fu_118;
wire    ap_loop_init;
wire    ap_block_pp0_stage6;
reg   [3:0] v24_fu_122;
wire   [3:0] add_ln68_fu_1003_p2;
reg   [3:0] ap_sig_allocacmp_v24_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage13_01001;
reg    v6_0_ce1_local;
reg    v6_0_ce0_local;
reg    v6_1_ce1_local;
reg    v6_1_ce0_local;
reg    v6_2_ce1_local;
reg    v6_2_ce0_local;
reg    v6_3_ce1_local;
reg    v6_3_ce0_local;
reg    v6_4_ce1_local;
reg    v6_4_ce0_local;
reg    v6_5_ce1_local;
reg    v6_5_ce0_local;
reg    v6_6_ce1_local;
reg    v6_6_ce0_local;
reg    v6_7_ce1_local;
reg    v6_7_ce0_local;
reg    v0_0_ce0_local;
reg   [6:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [6:0] v0_1_address0_local;
reg    v0_2_ce0_local;
reg   [6:0] v0_2_address0_local;
reg    v0_3_ce0_local;
reg   [6:0] v0_3_address0_local;
reg    v0_4_ce0_local;
reg   [6:0] v0_4_address0_local;
reg    v0_5_ce0_local;
reg   [6:0] v0_5_address0_local;
reg    v0_6_ce0_local;
reg   [6:0] v0_6_address0_local;
reg    v0_7_ce0_local;
reg   [6:0] v0_7_address0_local;
reg   [63:0] grp_fu_513_p0;
reg   [63:0] grp_fu_513_p1;
reg   [63:0] grp_fu_518_p0;
reg   [63:0] grp_fu_518_p1;
wire    ap_block_pp0_stage15;
wire   [9:0] zext_ln68_1_fu_539_p1;
wire   [9:0] grp_fu_549_p0;
wire   [7:0] grp_fu_549_p1;
wire   [11:0] zext_ln68_fu_535_p1;
wire   [11:0] add_ln70_fu_555_p2;
wire   [8:0] lshr_ln1_fu_565_p4;
wire   [2:0] tmp_1_fu_587_p4;
wire   [11:0] zext_ln68_2_fu_611_p1;
wire   [11:0] add_ln70_1_fu_615_p2;
wire   [8:0] lshr_ln70_1_fu_621_p4;
wire    ap_block_pp0_stage1;
wire   [9:0] mul_ln69_fu_646_p0;
wire   [11:0] mul_ln69_fu_646_p1;
wire   [20:0] mul_ln69_fu_646_p2;
wire   [63:0] v26_fu_694_p2;
wire   [63:0] v26_fu_694_p4;
wire   [63:0] v26_fu_694_p6;
wire   [63:0] v26_fu_694_p8;
wire   [63:0] v26_fu_694_p10;
wire   [63:0] v26_fu_694_p12;
wire   [63:0] v26_fu_694_p14;
wire   [63:0] v26_fu_694_p16;
wire   [63:0] v26_fu_694_p17;
wire   [9:0] zext_ln68_3_fu_733_p1;
wire   [9:0] grp_fu_741_p0;
wire   [7:0] grp_fu_741_p1;
wire   [63:0] v26_1_fu_779_p2;
wire   [63:0] v26_1_fu_779_p4;
wire   [63:0] v26_1_fu_779_p6;
wire   [63:0] v26_1_fu_779_p8;
wire   [63:0] v26_1_fu_779_p10;
wire   [63:0] v26_1_fu_779_p12;
wire   [63:0] v26_1_fu_779_p14;
wire   [63:0] v26_1_fu_779_p16;
wire   [63:0] v26_1_fu_779_p17;
wire    ap_block_pp0_stage2;
wire   [9:0] mul_ln69_1_fu_821_p0;
wire   [11:0] mul_ln69_1_fu_821_p1;
wire   [20:0] mul_ln69_1_fu_821_p2;
wire   [9:0] grp_fu_549_p2;
wire   [63:0] v25_fu_881_p2;
wire   [63:0] v25_fu_881_p4;
wire   [63:0] v25_fu_881_p6;
wire   [63:0] v25_fu_881_p8;
wire   [63:0] v25_fu_881_p10;
wire   [63:0] v25_fu_881_p12;
wire   [63:0] v25_fu_881_p14;
wire   [63:0] v25_fu_881_p16;
wire   [63:0] v25_fu_881_p17;
wire   [9:0] grp_fu_741_p2;
wire   [63:0] v25_1_fu_964_p2;
wire   [63:0] v25_1_fu_964_p4;
wire   [63:0] v25_1_fu_964_p6;
wire   [63:0] v25_1_fu_964_p8;
wire   [63:0] v25_1_fu_964_p10;
wire   [63:0] v25_1_fu_964_p12;
wire   [63:0] v25_1_fu_964_p14;
wire   [63:0] v25_1_fu_964_p16;
wire   [63:0] v25_1_fu_964_p17;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage14_00001;
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
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [20:0] mul_ln69_1_fu_821_p00;
wire   [20:0] mul_ln69_fu_646_p00;
wire   [2:0] v26_fu_694_p1;
wire   [2:0] v26_fu_694_p3;
wire   [2:0] v26_fu_694_p5;
wire   [2:0] v26_fu_694_p7;
wire  signed [2:0] v26_fu_694_p9;
wire  signed [2:0] v26_fu_694_p11;
wire  signed [2:0] v26_fu_694_p13;
wire  signed [2:0] v26_fu_694_p15;
wire  signed [2:0] v26_1_fu_779_p1;
wire   [2:0] v26_1_fu_779_p3;
wire   [2:0] v26_1_fu_779_p5;
wire   [2:0] v26_1_fu_779_p7;
wire   [2:0] v26_1_fu_779_p9;
wire  signed [2:0] v26_1_fu_779_p11;
wire  signed [2:0] v26_1_fu_779_p13;
wire  signed [2:0] v26_1_fu_779_p15;
wire   [2:0] v25_fu_881_p1;
wire   [2:0] v25_fu_881_p3;
wire   [2:0] v25_fu_881_p5;
wire   [2:0] v25_fu_881_p7;
wire  signed [2:0] v25_fu_881_p9;
wire  signed [2:0] v25_fu_881_p11;
wire  signed [2:0] v25_fu_881_p13;
wire  signed [2:0] v25_fu_881_p15;
wire   [2:0] v25_1_fu_964_p1;
wire   [2:0] v25_1_fu_964_p3;
wire   [2:0] v25_1_fu_964_p5;
wire   [2:0] v25_1_fu_964_p7;
wire  signed [2:0] v25_1_fu_964_p9;
wire  signed [2:0] v25_1_fu_964_p11;
wire  signed [2:0] v25_1_fu_964_p13;
wire  signed [2:0] v25_1_fu_964_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_118 = 64'd0;
#0 v24_fu_122 = 4'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_549_p0),.din1(grp_fu_549_p1),.ce(1'b1),.dout(grp_fu_549_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U16(.din0(mul_ln69_fu_646_p0),.din1(mul_ln69_fu_646_p1),.dout(mul_ln69_fu_646_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U17(.din0(v26_fu_694_p2),.din1(v26_fu_694_p4),.din2(v26_fu_694_p6),.din3(v26_fu_694_p8),.din4(v26_fu_694_p10),.din5(v26_fu_694_p12),.din6(v26_fu_694_p14),.din7(v26_fu_694_p16),.def(v26_fu_694_p17),.sel(trunc_ln70_reg_1052),.dout(v26_fu_694_p19));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_741_p0),.din1(grp_fu_741_p1),.ce(1'b1),.dout(grp_fu_741_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U19(.din0(v26_1_fu_779_p2),.din1(v26_1_fu_779_p4),.din2(v26_1_fu_779_p6),.din3(v26_1_fu_779_p8),.din4(v26_1_fu_779_p10),.din5(v26_1_fu_779_p12),.din6(v26_1_fu_779_p14),.din7(v26_1_fu_779_p16),.def(v26_1_fu_779_p17),.sel(trunc_ln70_reg_1052),.dout(v26_1_fu_779_p19));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U20(.din0(mul_ln69_1_fu_821_p0),.din1(mul_ln69_1_fu_821_p1),.dout(mul_ln69_1_fu_821_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U21(.din0(v25_fu_881_p2),.din1(v25_fu_881_p4),.din2(v25_fu_881_p6),.din3(v25_fu_881_p8),.din4(v25_fu_881_p10),.din5(v25_fu_881_p12),.din6(v25_fu_881_p14),.din7(v25_fu_881_p16),.def(v25_fu_881_p17),.sel(trunc_ln1_reg_1147),.dout(v25_fu_881_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U22(.din0(v25_1_fu_964_p2),.din1(v25_1_fu_964_p4),.din2(v25_1_fu_964_p6),.din3(v25_1_fu_964_p8),.din4(v25_1_fu_964_p10),.din5(v25_1_fu_964_p12),.din6(v25_1_fu_964_p14),.din7(v25_1_fu_964_p16),.def(v25_1_fu_964_p17),.sel(trunc_ln69_1_reg_1168),.dout(v25_1_fu_964_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage13_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage13)) begin
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
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage13))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_122 <= 4'd0;
    end else if (((icmp_ln68_reg_1103 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v24_fu_122 <= add_ln68_fu_1003_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_118 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v28_fu_118 <= grp_fu_3226_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln69_1_reg_1157 <= add_ln69_1_fu_736_p2;
        trunc_ln1_reg_1147 <= {{mul_ln69_fu_646_p2[19:17]}};
        v26_1_reg_1163 <= v26_1_fu_779_p19;
        v26_reg_1152 <= v26_fu_694_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln69_reg_1046 <= add_ln69_fu_543_p2;
        icmp_ln68_reg_1103 <= icmp_ln68_fu_605_p2;
        icmp_ln68_reg_1103_pp0_iter1_reg <= icmp_ln68_reg_1103;
        or_ln_reg_1098[3 : 1] <= or_ln_fu_597_p3[3 : 1];
        trunc_ln70_reg_1052 <= trunc_ln70_fu_561_p1;
        v24_1_reg_1041 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln69_1_reg_1168 <= {{mul_ln69_1_fu_821_p2[19:17]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v25_1_reg_1258 <= v25_1_fu_964_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v25_reg_1213 <= v25_fu_881_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_1_reg_1273 <= grp_fu_3244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_reg_1263 <= grp_fu_3244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v29_2_reg_1278 <= grp_fu_3226_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_1103 == 1'd0) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln68_reg_1103_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ap_condition_exit_pp0_iter1_stage13 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage13 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
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
        ap_sig_allocacmp_v24_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_v24_1 = v24_fu_122;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_513_p0 = v29_2_reg_1278;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_513_p0 = v28_fu_118;
        end else begin
            grp_fu_513_p0 = 'bx;
        end
    end else begin
        grp_fu_513_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_513_p1 = v27_1_reg_1273;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_513_p1 = v27_reg_1263;
        end else begin
            grp_fu_513_p1 = 'bx;
        end
    end else begin
        grp_fu_513_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_518_p0 = v25_1_reg_1258;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_518_p0 = v25_reg_1213;
    end else begin
        grp_fu_518_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_518_p1 = v26_1_reg_1163;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_518_p1 = v26_reg_1152;
    end else begin
        grp_fu_518_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_0_address0_local = zext_ln69_1_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_0_address0_local = zext_ln69_fu_837_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_1_address0_local = zext_ln69_1_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_1_address0_local = zext_ln69_fu_837_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_2_address0_local = zext_ln69_1_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_2_address0_local = zext_ln69_fu_837_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_3_address0_local = zext_ln69_1_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_3_address0_local = zext_ln69_fu_837_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_4_address0_local = zext_ln69_1_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_4_address0_local = zext_ln69_fu_837_p1;
        end else begin
            v0_4_address0_local = 'bx;
        end
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_5_address0_local = zext_ln69_1_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_5_address0_local = zext_ln69_fu_837_p1;
        end else begin
            v0_5_address0_local = 'bx;
        end
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_6_address0_local = zext_ln69_1_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_6_address0_local = zext_ln69_fu_837_p1;
        end else begin
            v0_6_address0_local = 'bx;
        end
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_7_address0_local = zext_ln69_1_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_7_address0_local = zext_ln69_fu_837_p1;
        end else begin
            v0_7_address0_local = 'bx;
        end
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln68_reg_1103_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v29_2_out_ap_vld = 1'b1;
    end else begin
        v29_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_0_ce1_local = 1'b1;
    end else begin
        v6_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_1_ce1_local = 1'b1;
    end else begin
        v6_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_2_ce0_local = 1'b1;
    end else begin
        v6_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_2_ce1_local = 1'b1;
    end else begin
        v6_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_3_ce0_local = 1'b1;
    end else begin
        v6_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_3_ce1_local = 1'b1;
    end else begin
        v6_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_4_ce0_local = 1'b1;
    end else begin
        v6_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_4_ce1_local = 1'b1;
    end else begin
        v6_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_5_ce0_local = 1'b1;
    end else begin
        v6_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_5_ce1_local = 1'b1;
    end else begin
        v6_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_6_ce0_local = 1'b1;
    end else begin
        v6_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_6_ce1_local = 1'b1;
    end else begin
        v6_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_7_ce0_local = 1'b1;
    end else begin
        v6_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_7_ce1_local = 1'b1;
    end else begin
        v6_7_ce1_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage13))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
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
assign add_ln68_fu_1003_p2 = (v24_1_reg_1041 + 4'd2);
assign add_ln69_1_fu_736_p2 = (zext_ln68_3_fu_733_p1 + phi_mul);
assign add_ln69_fu_543_p2 = (zext_ln68_1_fu_539_p1 + phi_mul);
assign add_ln70_1_fu_615_p2 = (zext_ln68_2_fu_611_p1 + phi_mul217);
assign add_ln70_fu_555_p2 = (zext_ln68_fu_535_p1 + phi_mul217);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign grp_fu_3226_p_ce = 1'b1;
assign grp_fu_3226_p_din0 = grp_fu_513_p0;
assign grp_fu_3226_p_din1 = grp_fu_513_p1;
assign grp_fu_3226_p_opcode = 2'd0;
assign grp_fu_3244_p_ce = 1'b1;
assign grp_fu_3244_p_din0 = grp_fu_518_p0;
assign grp_fu_3244_p_din1 = grp_fu_518_p1;
assign grp_fu_549_p0 = (zext_ln68_1_fu_539_p1 + phi_mul);
assign grp_fu_549_p1 = 10'd104;
assign grp_fu_741_p0 = (zext_ln68_3_fu_733_p1 + phi_mul);
assign grp_fu_741_p1 = 10'd104;
assign icmp_ln68_fu_605_p2 = ((or_ln_fu_597_p3 < 4'd13) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_565_p4 = {{add_ln70_fu_555_p2[11:3]}};
assign lshr_ln70_1_fu_621_p4 = {{add_ln70_1_fu_615_p2[11:3]}};
assign mul_ln69_1_fu_821_p0 = mul_ln69_1_fu_821_p00;
assign mul_ln69_1_fu_821_p00 = add_ln69_1_reg_1157;
assign mul_ln69_1_fu_821_p1 = 21'd1261;
assign mul_ln69_fu_646_p0 = mul_ln69_fu_646_p00;
assign mul_ln69_fu_646_p00 = add_ln69_reg_1046;
assign mul_ln69_fu_646_p1 = 21'd1261;
assign or_ln_fu_597_p3 = {{tmp_1_fu_587_p4}, {1'd1}};
assign tmp_1_fu_587_p4 = {{ap_sig_allocacmp_v24_1[3:1]}};
assign trunc_ln70_fu_561_p1 = add_ln70_fu_555_p2[2:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_ce0 = v0_7_ce0_local;
assign v25_1_fu_964_p10 = v0_4_q0;
assign v25_1_fu_964_p12 = v0_5_q0;
assign v25_1_fu_964_p14 = v0_6_q0;
assign v25_1_fu_964_p16 = v0_7_q0;
assign v25_1_fu_964_p17 = 'bx;
assign v25_1_fu_964_p2 = v0_0_q0;
assign v25_1_fu_964_p4 = v0_1_q0;
assign v25_1_fu_964_p6 = v0_2_q0;
assign v25_1_fu_964_p8 = v0_3_q0;
assign v25_fu_881_p10 = v0_4_q0;
assign v25_fu_881_p12 = v0_5_q0;
assign v25_fu_881_p14 = v0_6_q0;
assign v25_fu_881_p16 = v0_7_q0;
assign v25_fu_881_p17 = 'bx;
assign v25_fu_881_p2 = v0_0_q0;
assign v25_fu_881_p4 = v0_1_q0;
assign v25_fu_881_p6 = v0_2_q0;
assign v25_fu_881_p8 = v0_3_q0;
assign v26_1_fu_779_p10 = v6_4_q0;
assign v26_1_fu_779_p12 = v6_5_q0;
assign v26_1_fu_779_p14 = v6_6_q0;
assign v26_1_fu_779_p16 = v6_7_q0;
assign v26_1_fu_779_p17 = 'bx;
assign v26_1_fu_779_p2 = v6_0_q0;
assign v26_1_fu_779_p4 = v6_1_q0;
assign v26_1_fu_779_p6 = v6_2_q0;
assign v26_1_fu_779_p8 = v6_3_q0;
assign v26_fu_694_p10 = v6_4_q1;
assign v26_fu_694_p12 = v6_5_q1;
assign v26_fu_694_p14 = v6_6_q1;
assign v26_fu_694_p16 = v6_7_q1;
assign v26_fu_694_p17 = 'bx;
assign v26_fu_694_p2 = v6_0_q1;
assign v26_fu_694_p4 = v6_1_q1;
assign v26_fu_694_p6 = v6_2_q1;
assign v26_fu_694_p8 = v6_3_q1;
assign v29_2_out = grp_fu_3226_p_dout0;
assign v6_0_address0 = zext_ln70_1_fu_631_p1;
assign v6_0_address1 = zext_ln70_fu_575_p1;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_0_ce1 = v6_0_ce1_local;
assign v6_1_address0 = zext_ln70_1_fu_631_p1;
assign v6_1_address1 = zext_ln70_fu_575_p1;
assign v6_1_ce0 = v6_1_ce0_local;
assign v6_1_ce1 = v6_1_ce1_local;
assign v6_2_address0 = zext_ln70_1_fu_631_p1;
assign v6_2_address1 = zext_ln70_fu_575_p1;
assign v6_2_ce0 = v6_2_ce0_local;
assign v6_2_ce1 = v6_2_ce1_local;
assign v6_3_address0 = zext_ln70_1_fu_631_p1;
assign v6_3_address1 = zext_ln70_fu_575_p1;
assign v6_3_ce0 = v6_3_ce0_local;
assign v6_3_ce1 = v6_3_ce1_local;
assign v6_4_address0 = zext_ln70_1_fu_631_p1;
assign v6_4_address1 = zext_ln70_fu_575_p1;
assign v6_4_ce0 = v6_4_ce0_local;
assign v6_4_ce1 = v6_4_ce1_local;
assign v6_5_address0 = zext_ln70_1_fu_631_p1;
assign v6_5_address1 = zext_ln70_fu_575_p1;
assign v6_5_ce0 = v6_5_ce0_local;
assign v6_5_ce1 = v6_5_ce1_local;
assign v6_6_address0 = zext_ln70_1_fu_631_p1;
assign v6_6_address1 = zext_ln70_fu_575_p1;
assign v6_6_ce0 = v6_6_ce0_local;
assign v6_6_ce1 = v6_6_ce1_local;
assign v6_7_address0 = zext_ln70_1_fu_631_p1;
assign v6_7_address1 = zext_ln70_fu_575_p1;
assign v6_7_ce0 = v6_7_ce0_local;
assign v6_7_ce1 = v6_7_ce1_local;
assign zext_ln68_1_fu_539_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln68_2_fu_611_p1 = or_ln_fu_597_p3;
assign zext_ln68_3_fu_733_p1 = or_ln_reg_1098;
assign zext_ln68_fu_535_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_1_fu_920_p1 = grp_fu_741_p2;
assign zext_ln69_fu_837_p1 = grp_fu_549_p2;
assign zext_ln70_1_fu_631_p1 = lshr_ln70_1_fu_621_p4;
assign zext_ln70_fu_575_p1 = lshr_ln1_fu_565_p4;
always @ (posedge ap_clk) begin
    or_ln_reg_1098[0] <= 1'b1;
end
endmodule 
