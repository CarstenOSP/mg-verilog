
module backprop_backprop_Pipeline_activations1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_q0,oracle_activations2_4_address0,oracle_activations2_4_ce0,oracle_activations2_4_q0,oracle_activations2_8_address0,oracle_activations2_8_ce0,oracle_activations2_8_q0,oracle_activations2_12_address0,oracle_activations2_12_ce0,oracle_activations2_12_q0,i_25,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_12_address0,weights2_12_ce0,weights2_12_q0,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_q0,oracle_activations2_5_address0,oracle_activations2_5_ce0,oracle_activations2_5_q0,oracle_activations2_9_address0,oracle_activations2_9_ce0,oracle_activations2_9_q0,oracle_activations2_13_address0,oracle_activations2_13_ce0,oracle_activations2_13_q0,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_13_address0,weights2_13_ce0,weights2_13_q0,oracle_activations2_2_address0,oracle_activations2_2_ce0,oracle_activations2_2_q0,oracle_activations2_6_address0,oracle_activations2_6_ce0,oracle_activations2_6_q0,oracle_activations2_10_address0,oracle_activations2_10_ce0,oracle_activations2_10_q0,oracle_activations2_14_address0,oracle_activations2_14_ce0,oracle_activations2_14_q0,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_14_address0,weights2_14_ce0,weights2_14_q0,oracle_activations2_3_address0,oracle_activations2_3_ce0,oracle_activations2_3_q0,oracle_activations2_7_address0,oracle_activations2_7_ce0,oracle_activations2_7_q0,oracle_activations2_11_address0,oracle_activations2_11_ce0,oracle_activations2_11_q0,oracle_activations2_15_address0,oracle_activations2_15_ce0,oracle_activations2_15_q0,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_15_address0,weights2_15_ce0,weights2_15_q0,add113_i_out,add113_i_out_ap_vld,grp_fu_5581_p_din0,grp_fu_5581_p_din1,grp_fu_5581_p_opcode,grp_fu_5581_p_dout0,grp_fu_5581_p_ce,grp_fu_3932_p_din0,grp_fu_3932_p_din1,grp_fu_3932_p_dout0,grp_fu_3932_p_ce);  
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
output  [1:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
input  [63:0] oracle_activations2_q0;
output  [1:0] oracle_activations2_4_address0;
output   oracle_activations2_4_ce0;
input  [63:0] oracle_activations2_4_q0;
output  [1:0] oracle_activations2_8_address0;
output   oracle_activations2_8_ce0;
input  [63:0] oracle_activations2_8_q0;
output  [1:0] oracle_activations2_12_address0;
output   oracle_activations2_12_ce0;
input  [63:0] oracle_activations2_12_q0;
input  [5:0] i_25;
output  [7:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [7:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [7:0] weights2_8_address0;
output   weights2_8_ce0;
input  [63:0] weights2_8_q0;
output  [7:0] weights2_12_address0;
output   weights2_12_ce0;
input  [63:0] weights2_12_q0;
output  [1:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
input  [63:0] oracle_activations2_1_q0;
output  [1:0] oracle_activations2_5_address0;
output   oracle_activations2_5_ce0;
input  [63:0] oracle_activations2_5_q0;
output  [1:0] oracle_activations2_9_address0;
output   oracle_activations2_9_ce0;
input  [63:0] oracle_activations2_9_q0;
output  [1:0] oracle_activations2_13_address0;
output   oracle_activations2_13_ce0;
input  [63:0] oracle_activations2_13_q0;
output  [7:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [7:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [7:0] weights2_9_address0;
output   weights2_9_ce0;
input  [63:0] weights2_9_q0;
output  [7:0] weights2_13_address0;
output   weights2_13_ce0;
input  [63:0] weights2_13_q0;
output  [1:0] oracle_activations2_2_address0;
output   oracle_activations2_2_ce0;
input  [63:0] oracle_activations2_2_q0;
output  [1:0] oracle_activations2_6_address0;
output   oracle_activations2_6_ce0;
input  [63:0] oracle_activations2_6_q0;
output  [1:0] oracle_activations2_10_address0;
output   oracle_activations2_10_ce0;
input  [63:0] oracle_activations2_10_q0;
output  [1:0] oracle_activations2_14_address0;
output   oracle_activations2_14_ce0;
input  [63:0] oracle_activations2_14_q0;
output  [7:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [7:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [7:0] weights2_10_address0;
output   weights2_10_ce0;
input  [63:0] weights2_10_q0;
output  [7:0] weights2_14_address0;
output   weights2_14_ce0;
input  [63:0] weights2_14_q0;
output  [1:0] oracle_activations2_3_address0;
output   oracle_activations2_3_ce0;
input  [63:0] oracle_activations2_3_q0;
output  [1:0] oracle_activations2_7_address0;
output   oracle_activations2_7_ce0;
input  [63:0] oracle_activations2_7_q0;
output  [1:0] oracle_activations2_11_address0;
output   oracle_activations2_11_ce0;
input  [63:0] oracle_activations2_11_q0;
output  [1:0] oracle_activations2_15_address0;
output   oracle_activations2_15_ce0;
input  [63:0] oracle_activations2_15_q0;
output  [7:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [7:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [7:0] weights2_11_address0;
output   weights2_11_ce0;
input  [63:0] weights2_11_q0;
output  [7:0] weights2_15_address0;
output   weights2_15_ce0;
input  [63:0] weights2_15_q0;
output  [63:0] add113_i_out;
output   add113_i_out_ap_vld;
output  [63:0] grp_fu_5581_p_din0;
output  [63:0] grp_fu_5581_p_din1;
output  [0:0] grp_fu_5581_p_opcode;
input  [63:0] grp_fu_5581_p_dout0;
output   grp_fu_5581_p_ce;
output  [63:0] grp_fu_3932_p_din0;
output  [63:0] grp_fu_3932_p_din1;
input  [63:0] grp_fu_3932_p_dout0;
output   grp_fu_3932_p_ce;
reg ap_idle;
reg add113_i_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_reg_946;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_571;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_589_p3;
wire   [3:0] trunc_ln104_fu_597_p1;
reg   [3:0] trunc_ln104_reg_950;
wire   [63:0] tmp_s_fu_670_p11;
reg   [63:0] tmp_s_reg_1122;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_151_fu_709_p11;
reg   [63:0] tmp_151_reg_1127;
wire   [63:0] tmp_152_fu_732_p11;
reg   [63:0] tmp_152_reg_1132;
wire   [63:0] tmp_153_fu_771_p11;
reg   [63:0] tmp_153_reg_1137;
wire   [63:0] tmp_154_fu_794_p11;
reg   [63:0] tmp_154_reg_1142;
wire   [63:0] tmp_155_fu_833_p11;
reg   [63:0] tmp_155_reg_1147;
wire   [63:0] tmp_156_fu_856_p11;
reg   [63:0] tmp_156_reg_1152;
wire   [63:0] tmp_157_fu_895_p11;
reg   [63:0] tmp_157_reg_1157;
reg   [63:0] mul8_i3_reg_1162;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul8_1_i3_reg_1172;
reg   [63:0] mul8_2_i3_reg_1177;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul8_3_i3_reg_1182;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln101_fu_611_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln105_fu_639_p1;
reg   [63:0] add113_i_fu_126;
wire    ap_block_pp0_stage8;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [6:0] j_fu_130;
wire   [6:0] add_ln104_fu_659_p2;
reg   [6:0] ap_sig_allocacmp_j_3;
wire    ap_block_pp0_stage8_01001;
reg    oracle_activations2_ce0_local;
reg    oracle_activations2_4_ce0_local;
reg    oracle_activations2_8_ce0_local;
reg    oracle_activations2_12_ce0_local;
reg    weights2_0_ce0_local;
reg    weights2_4_ce0_local;
reg    weights2_8_ce0_local;
reg    weights2_12_ce0_local;
reg    oracle_activations2_1_ce0_local;
reg    oracle_activations2_5_ce0_local;
reg    oracle_activations2_9_ce0_local;
reg    oracle_activations2_13_ce0_local;
reg    weights2_1_ce0_local;
reg    weights2_5_ce0_local;
reg    weights2_9_ce0_local;
reg    weights2_13_ce0_local;
reg    oracle_activations2_2_ce0_local;
reg    oracle_activations2_6_ce0_local;
reg    oracle_activations2_10_ce0_local;
reg    oracle_activations2_14_ce0_local;
reg    weights2_2_ce0_local;
reg    weights2_6_ce0_local;
reg    weights2_10_ce0_local;
reg    weights2_14_ce0_local;
reg    oracle_activations2_3_ce0_local;
reg    oracle_activations2_7_ce0_local;
reg    oracle_activations2_11_ce0_local;
reg    oracle_activations2_15_ce0_local;
reg    weights2_3_ce0_local;
reg    weights2_7_ce0_local;
reg    weights2_11_ce0_local;
reg    weights2_15_ce0_local;
reg   [63:0] grp_fu_563_p0;
reg   [63:0] grp_fu_563_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_567_p0;
reg   [63:0] grp_fu_567_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [1:0] lshr_ln_fu_601_p4;
wire   [7:0] add_ln3_fu_631_p3;
wire   [63:0] tmp_s_fu_670_p9;
wire   [63:0] tmp_151_fu_709_p2;
wire   [63:0] tmp_151_fu_709_p4;
wire   [63:0] tmp_151_fu_709_p6;
wire   [63:0] tmp_151_fu_709_p8;
wire   [63:0] tmp_151_fu_709_p9;
wire   [63:0] tmp_152_fu_732_p9;
wire   [63:0] tmp_153_fu_771_p2;
wire   [63:0] tmp_153_fu_771_p4;
wire   [63:0] tmp_153_fu_771_p6;
wire   [63:0] tmp_153_fu_771_p8;
wire   [63:0] tmp_153_fu_771_p9;
wire   [63:0] tmp_154_fu_794_p9;
wire   [63:0] tmp_155_fu_833_p2;
wire   [63:0] tmp_155_fu_833_p4;
wire   [63:0] tmp_155_fu_833_p6;
wire   [63:0] tmp_155_fu_833_p8;
wire   [63:0] tmp_155_fu_833_p9;
wire   [63:0] tmp_156_fu_856_p9;
wire   [63:0] tmp_157_fu_895_p2;
wire   [63:0] tmp_157_fu_895_p4;
wire   [63:0] tmp_157_fu_895_p6;
wire   [63:0] tmp_157_fu_895_p8;
wire   [63:0] tmp_157_fu_895_p9;
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
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_s_fu_670_p1;
wire   [3:0] tmp_s_fu_670_p3;
wire  signed [3:0] tmp_s_fu_670_p5;
wire  signed [3:0] tmp_s_fu_670_p7;
wire   [3:0] tmp_151_fu_709_p1;
wire   [3:0] tmp_151_fu_709_p3;
wire  signed [3:0] tmp_151_fu_709_p5;
wire  signed [3:0] tmp_151_fu_709_p7;
wire   [3:0] tmp_152_fu_732_p1;
wire   [3:0] tmp_152_fu_732_p3;
wire  signed [3:0] tmp_152_fu_732_p5;
wire  signed [3:0] tmp_152_fu_732_p7;
wire   [3:0] tmp_153_fu_771_p1;
wire   [3:0] tmp_153_fu_771_p3;
wire  signed [3:0] tmp_153_fu_771_p5;
wire  signed [3:0] tmp_153_fu_771_p7;
wire   [3:0] tmp_154_fu_794_p1;
wire   [3:0] tmp_154_fu_794_p3;
wire  signed [3:0] tmp_154_fu_794_p5;
wire  signed [3:0] tmp_154_fu_794_p7;
wire   [3:0] tmp_155_fu_833_p1;
wire   [3:0] tmp_155_fu_833_p3;
wire  signed [3:0] tmp_155_fu_833_p5;
wire  signed [3:0] tmp_155_fu_833_p7;
wire   [3:0] tmp_156_fu_856_p1;
wire   [3:0] tmp_156_fu_856_p3;
wire  signed [3:0] tmp_156_fu_856_p5;
wire  signed [3:0] tmp_156_fu_856_p7;
wire   [3:0] tmp_157_fu_895_p1;
wire   [3:0] tmp_157_fu_895_p3;
wire  signed [3:0] tmp_157_fu_895_p5;
wire  signed [3:0] tmp_157_fu_895_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 add113_i_fu_126 = 64'd0;
#0 j_fu_130 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U811(.din0(oracle_activations2_q0),.din1(oracle_activations2_4_q0),.din2(oracle_activations2_8_q0),.din3(oracle_activations2_12_q0),.def(tmp_s_fu_670_p9),.sel(trunc_ln104_reg_950),.dout(tmp_s_fu_670_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U812(.din0(tmp_151_fu_709_p2),.din1(tmp_151_fu_709_p4),.din2(tmp_151_fu_709_p6),.din3(tmp_151_fu_709_p8),.def(tmp_151_fu_709_p9),.sel(trunc_ln104_reg_950),.dout(tmp_151_fu_709_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U813(.din0(oracle_activations2_1_q0),.din1(oracle_activations2_5_q0),.din2(oracle_activations2_9_q0),.din3(oracle_activations2_13_q0),.def(tmp_152_fu_732_p9),.sel(trunc_ln104_reg_950),.dout(tmp_152_fu_732_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U814(.din0(tmp_153_fu_771_p2),.din1(tmp_153_fu_771_p4),.din2(tmp_153_fu_771_p6),.din3(tmp_153_fu_771_p8),.def(tmp_153_fu_771_p9),.sel(trunc_ln104_reg_950),.dout(tmp_153_fu_771_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U815(.din0(oracle_activations2_2_q0),.din1(oracle_activations2_6_q0),.din2(oracle_activations2_10_q0),.din3(oracle_activations2_14_q0),.def(tmp_154_fu_794_p9),.sel(trunc_ln104_reg_950),.dout(tmp_154_fu_794_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U816(.din0(tmp_155_fu_833_p2),.din1(tmp_155_fu_833_p4),.din2(tmp_155_fu_833_p6),.din3(tmp_155_fu_833_p8),.def(tmp_155_fu_833_p9),.sel(trunc_ln104_reg_950),.dout(tmp_155_fu_833_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U817(.din0(oracle_activations2_3_q0),.din1(oracle_activations2_7_q0),.din2(oracle_activations2_11_q0),.din3(oracle_activations2_15_q0),.def(tmp_156_fu_856_p9),.sel(trunc_ln104_reg_950),.dout(tmp_156_fu_856_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U818(.din0(tmp_157_fu_895_p2),.din1(tmp_157_fu_895_p4),.din2(tmp_157_fu_895_p6),.din3(tmp_157_fu_895_p8),.def(tmp_157_fu_895_p9),.sel(trunc_ln104_reg_950),.dout(tmp_157_fu_895_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
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
        add113_i_fu_126 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add113_i_fu_126 <= grp_fu_5581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_589_p3 == 1'd0))) begin
            j_fu_130 <= add_ln104_fu_659_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_130 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_i3_reg_1172 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_2_i3_reg_1177 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_3_i3_reg_1182 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_i3_reg_1162 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_571 <= grp_fu_5581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_151_reg_1127 <= tmp_151_fu_709_p11;
        tmp_152_reg_1132 <= tmp_152_fu_732_p11;
        tmp_153_reg_1137 <= tmp_153_fu_771_p11;
        tmp_154_reg_1142 <= tmp_154_fu_794_p11;
        tmp_155_reg_1147 <= tmp_155_fu_833_p11;
        tmp_156_reg_1152 <= tmp_156_fu_856_p11;
        tmp_157_reg_1157 <= tmp_157_fu_895_p11;
        tmp_s_reg_1122 <= tmp_s_fu_670_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_946 <= ap_sig_allocacmp_j_3[32'd6];
        trunc_ln104_reg_950 <= trunc_ln104_fu_597_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_946 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add113_i_out_ap_vld = 1'b1;
    end else begin
        add113_i_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_946 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_j_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_3 = j_fu_130;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_563_p0 = reg_571;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_563_p0 = add113_i_fu_126;
    end else begin
        grp_fu_563_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_563_p1 = mul8_3_i3_reg_1182;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_563_p1 = mul8_2_i3_reg_1177;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_563_p1 = mul8_1_i3_reg_1172;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_563_p1 = mul8_i3_reg_1162;
    end else begin
        grp_fu_563_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_567_p0 = tmp_156_reg_1152;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_567_p0 = tmp_154_reg_1142;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_567_p0 = tmp_152_reg_1132;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_567_p0 = tmp_s_reg_1122;
        end else begin
            grp_fu_567_p0 = 'bx;
        end
    end else begin
        grp_fu_567_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_567_p1 = tmp_157_reg_1157;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_567_p1 = tmp_155_reg_1147;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_567_p1 = tmp_153_reg_1137;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_567_p1 = tmp_151_reg_1127;
        end else begin
            grp_fu_567_p1 = 'bx;
        end
    end else begin
        grp_fu_567_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_10_ce0_local = 1'b1;
    end else begin
        oracle_activations2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_11_ce0_local = 1'b1;
    end else begin
        oracle_activations2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_12_ce0_local = 1'b1;
    end else begin
        oracle_activations2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_13_ce0_local = 1'b1;
    end else begin
        oracle_activations2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_14_ce0_local = 1'b1;
    end else begin
        oracle_activations2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_15_ce0_local = 1'b1;
    end else begin
        oracle_activations2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_3_ce0_local = 1'b1;
    end else begin
        oracle_activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_4_ce0_local = 1'b1;
    end else begin
        oracle_activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_5_ce0_local = 1'b1;
    end else begin
        oracle_activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_6_ce0_local = 1'b1;
    end else begin
        oracle_activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_7_ce0_local = 1'b1;
    end else begin
        oracle_activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_8_ce0_local = 1'b1;
    end else begin
        oracle_activations2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_9_ce0_local = 1'b1;
    end else begin
        oracle_activations2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_10_ce0_local = 1'b1;
    end else begin
        weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_11_ce0_local = 1'b1;
    end else begin
        weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_12_ce0_local = 1'b1;
    end else begin
        weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_13_ce0_local = 1'b1;
    end else begin
        weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_14_ce0_local = 1'b1;
    end else begin
        weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_15_ce0_local = 1'b1;
    end else begin
        weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_4_ce0_local = 1'b1;
    end else begin
        weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_5_ce0_local = 1'b1;
    end else begin
        weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_6_ce0_local = 1'b1;
    end else begin
        weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_7_ce0_local = 1'b1;
    end else begin
        weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_8_ce0_local = 1'b1;
    end else begin
        weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_9_ce0_local = 1'b1;
    end else begin
        weights2_9_ce0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
assign add113_i_out = add113_i_fu_126;
assign add_ln104_fu_659_p2 = (ap_sig_allocacmp_j_3 + 7'd4);
assign add_ln3_fu_631_p3 = {{i_25}, {lshr_ln_fu_601_p4}};
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
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign grp_fu_3932_p_ce = 1'b1;
assign grp_fu_3932_p_din0 = grp_fu_567_p0;
assign grp_fu_3932_p_din1 = grp_fu_567_p1;
assign grp_fu_5581_p_ce = 1'b1;
assign grp_fu_5581_p_din0 = grp_fu_563_p0;
assign grp_fu_5581_p_din1 = grp_fu_563_p1;
assign grp_fu_5581_p_opcode = 2'd0;
assign lshr_ln_fu_601_p4 = {{ap_sig_allocacmp_j_3[5:4]}};
assign oracle_activations2_10_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_10_ce0 = oracle_activations2_10_ce0_local;
assign oracle_activations2_11_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_11_ce0 = oracle_activations2_11_ce0_local;
assign oracle_activations2_12_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_12_ce0 = oracle_activations2_12_ce0_local;
assign oracle_activations2_13_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_13_ce0 = oracle_activations2_13_ce0_local;
assign oracle_activations2_14_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_14_ce0 = oracle_activations2_14_ce0_local;
assign oracle_activations2_15_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_15_ce0 = oracle_activations2_15_ce0_local;
assign oracle_activations2_1_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_2_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_2_ce0 = oracle_activations2_2_ce0_local;
assign oracle_activations2_3_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_3_ce0 = oracle_activations2_3_ce0_local;
assign oracle_activations2_4_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_4_ce0 = oracle_activations2_4_ce0_local;
assign oracle_activations2_5_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_5_ce0 = oracle_activations2_5_ce0_local;
assign oracle_activations2_6_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_6_ce0 = oracle_activations2_6_ce0_local;
assign oracle_activations2_7_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_7_ce0 = oracle_activations2_7_ce0_local;
assign oracle_activations2_8_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_8_ce0 = oracle_activations2_8_ce0_local;
assign oracle_activations2_9_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_9_ce0 = oracle_activations2_9_ce0_local;
assign oracle_activations2_address0 = zext_ln101_fu_611_p1;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign tmp_151_fu_709_p2 = weights2_0_q0;
assign tmp_151_fu_709_p4 = weights2_4_q0;
assign tmp_151_fu_709_p6 = weights2_8_q0;
assign tmp_151_fu_709_p8 = weights2_12_q0;
assign tmp_151_fu_709_p9 = 'bx;
assign tmp_152_fu_732_p9 = 'bx;
assign tmp_153_fu_771_p2 = weights2_1_q0;
assign tmp_153_fu_771_p4 = weights2_5_q0;
assign tmp_153_fu_771_p6 = weights2_9_q0;
assign tmp_153_fu_771_p8 = weights2_13_q0;
assign tmp_153_fu_771_p9 = 'bx;
assign tmp_154_fu_794_p9 = 'bx;
assign tmp_155_fu_833_p2 = weights2_2_q0;
assign tmp_155_fu_833_p4 = weights2_6_q0;
assign tmp_155_fu_833_p6 = weights2_10_q0;
assign tmp_155_fu_833_p8 = weights2_14_q0;
assign tmp_155_fu_833_p9 = 'bx;
assign tmp_156_fu_856_p9 = 'bx;
assign tmp_157_fu_895_p2 = weights2_3_q0;
assign tmp_157_fu_895_p4 = weights2_7_q0;
assign tmp_157_fu_895_p6 = weights2_11_q0;
assign tmp_157_fu_895_p8 = weights2_15_q0;
assign tmp_157_fu_895_p9 = 'bx;
assign tmp_fu_589_p3 = ap_sig_allocacmp_j_3[32'd6];
assign tmp_s_fu_670_p9 = 'bx;
assign trunc_ln104_fu_597_p1 = ap_sig_allocacmp_j_3[3:0];
assign weights2_0_address0 = zext_ln105_fu_639_p1;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_10_address0 = zext_ln105_fu_639_p1;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_11_address0 = zext_ln105_fu_639_p1;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_12_address0 = zext_ln105_fu_639_p1;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_13_address0 = zext_ln105_fu_639_p1;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_14_address0 = zext_ln105_fu_639_p1;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_15_address0 = zext_ln105_fu_639_p1;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_1_address0 = zext_ln105_fu_639_p1;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_2_address0 = zext_ln105_fu_639_p1;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_3_address0 = zext_ln105_fu_639_p1;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_4_address0 = zext_ln105_fu_639_p1;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_5_address0 = zext_ln105_fu_639_p1;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_6_address0 = zext_ln105_fu_639_p1;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_7_address0 = zext_ln105_fu_639_p1;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_8_address0 = zext_ln105_fu_639_p1;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_9_address0 = zext_ln105_fu_639_p1;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign zext_ln101_fu_611_p1 = lshr_ln_fu_601_p4;
assign zext_ln105_fu_639_p1 = add_ln3_fu_631_p3;
endmodule 
