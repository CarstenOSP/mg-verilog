module backprop_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations3_2_load,activations3_load,activations3_1_load,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_8_address0,weights3_8_ce0,weights3_8_q0,weights3_10_address0,weights3_10_ce0,weights3_10_q0,weights3_12_address0,weights3_12_ce0,weights3_12_q0,weights3_14_address0,weights3_14_ce0,weights3_14_q0,activations2_address0,activations2_ce0,activations2_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,activations2_4_address0,activations2_4_ce0,activations2_4_q0,activations2_6_address0,activations2_6_ce0,activations2_6_q0,activations2_8_address0,activations2_8_ce0,activations2_8_q0,activations2_10_address0,activations2_10_ce0,activations2_10_q0,activations2_12_address0,activations2_12_ce0,activations2_12_q0,activations2_14_address0,activations2_14_ce0,activations2_14_q0,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_7_address0,weights3_7_ce0,weights3_7_q0,weights3_9_address0,weights3_9_ce0,weights3_9_q0,weights3_11_address0,weights3_11_ce0,weights3_11_q0,weights3_13_address0,weights3_13_ce0,weights3_13_q0,weights3_15_address0,weights3_15_ce0,weights3_15_q0,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,activations2_5_address0,activations2_5_ce0,activations2_5_q0,activations2_7_address0,activations2_7_ce0,activations2_7_q0,activations2_9_address0,activations2_9_ce0,activations2_9_q0,activations2_11_address0,activations2_11_ce0,activations2_11_q0,activations2_13_address0,activations2_13_ce0,activations2_13_q0,activations2_15_address0,activations2_15_ce0,activations2_15_q0,activations3_10_out_i,activations3_10_out_o,activations3_10_out_o_ap_vld,activations3_9_out_i,activations3_9_out_o,activations3_9_out_o_ap_vld,activations3_8_out_i,activations3_8_out_o,activations3_8_out_o_ap_vld,grp_fu_5581_p_din0,grp_fu_5581_p_din1,grp_fu_5581_p_opcode,grp_fu_5581_p_dout0,grp_fu_5581_p_ce,grp_fu_3932_p_din0,grp_fu_3932_p_din1,grp_fu_3932_p_dout0,grp_fu_3932_p_ce); 
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
input  [63:0] activations3_2_load;
input  [63:0] activations3_load;
input  [63:0] activations3_1_load;
output  [3:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [3:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [3:0] weights3_4_address0;
output   weights3_4_ce0;
input  [63:0] weights3_4_q0;
output  [3:0] weights3_6_address0;
output   weights3_6_ce0;
input  [63:0] weights3_6_q0;
output  [3:0] weights3_8_address0;
output   weights3_8_ce0;
input  [63:0] weights3_8_q0;
output  [3:0] weights3_10_address0;
output   weights3_10_ce0;
input  [63:0] weights3_10_q0;
output  [3:0] weights3_12_address0;
output   weights3_12_ce0;
input  [63:0] weights3_12_q0;
output  [3:0] weights3_14_address0;
output   weights3_14_ce0;
input  [63:0] weights3_14_q0;
output  [1:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [1:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [1:0] activations2_4_address0;
output   activations2_4_ce0;
input  [63:0] activations2_4_q0;
output  [1:0] activations2_6_address0;
output   activations2_6_ce0;
input  [63:0] activations2_6_q0;
output  [1:0] activations2_8_address0;
output   activations2_8_ce0;
input  [63:0] activations2_8_q0;
output  [1:0] activations2_10_address0;
output   activations2_10_ce0;
input  [63:0] activations2_10_q0;
output  [1:0] activations2_12_address0;
output   activations2_12_ce0;
input  [63:0] activations2_12_q0;
output  [1:0] activations2_14_address0;
output   activations2_14_ce0;
input  [63:0] activations2_14_q0;
output  [3:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [3:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [3:0] weights3_5_address0;
output   weights3_5_ce0;
input  [63:0] weights3_5_q0;
output  [3:0] weights3_7_address0;
output   weights3_7_ce0;
input  [63:0] weights3_7_q0;
output  [3:0] weights3_9_address0;
output   weights3_9_ce0;
input  [63:0] weights3_9_q0;
output  [3:0] weights3_11_address0;
output   weights3_11_ce0;
input  [63:0] weights3_11_q0;
output  [3:0] weights3_13_address0;
output   weights3_13_ce0;
input  [63:0] weights3_13_q0;
output  [3:0] weights3_15_address0;
output   weights3_15_ce0;
input  [63:0] weights3_15_q0;
output  [1:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [1:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
output  [1:0] activations2_5_address0;
output   activations2_5_ce0;
input  [63:0] activations2_5_q0;
output  [1:0] activations2_7_address0;
output   activations2_7_ce0;
input  [63:0] activations2_7_q0;
output  [1:0] activations2_9_address0;
output   activations2_9_ce0;
input  [63:0] activations2_9_q0;
output  [1:0] activations2_11_address0;
output   activations2_11_ce0;
input  [63:0] activations2_11_q0;
output  [1:0] activations2_13_address0;
output   activations2_13_ce0;
input  [63:0] activations2_13_q0;
output  [1:0] activations2_15_address0;
output   activations2_15_ce0;
input  [63:0] activations2_15_q0;
input  [63:0] activations3_10_out_i;
output  [63:0] activations3_10_out_o;
output   activations3_10_out_o_ap_vld;
input  [63:0] activations3_9_out_i;
output  [63:0] activations3_9_out_o;
output   activations3_9_out_o_ap_vld;
input  [63:0] activations3_8_out_i;
output  [63:0] activations3_8_out_o;
output   activations3_8_out_o_ap_vld;
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
reg[63:0] activations3_10_out_o;
reg activations3_10_out_o_ap_vld;
reg[63:0] activations3_9_out_o;
reg activations3_9_out_o_ap_vld;
reg[63:0] activations3_8_out_o;
reg activations3_8_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln55_reg_1208;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln55_fu_674_p2;
wire   [0:0] tmp_fu_692_p3;
reg   [0:0] tmp_reg_1212;
wire   [6:0] select_ln54_fu_700_p3;
reg   [6:0] select_ln54_reg_1220;
wire   [1:0] select_ln55_3_fu_714_p3;
reg   [1:0] select_ln55_3_reg_1225;
reg   [1:0] select_ln55_3_reg_1225_pp0_iter1_reg;
wire   [3:0] trunc_ln57_fu_722_p1;
reg   [3:0] trunc_ln57_reg_1229;
wire   [63:0] tmp_49_fu_826_p19;
reg   [63:0] tmp_49_reg_1397;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_50_fu_865_p19;
reg   [63:0] tmp_50_reg_1402;
wire   [63:0] tmp_51_fu_936_p19;
reg   [63:0] tmp_51_reg_1407;
wire   [63:0] tmp_52_fu_975_p19;
reg   [63:0] tmp_52_reg_1412;
reg   [63:0] mul8_i1_reg_1417;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] select_ln54_1_fu_1017_p3;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul8_1_i1_reg_1427;
wire   [0:0] tmp_41_fu_1072_p3;
reg   [0:0] tmp_41_reg_1432;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] add11_i1_reg_1436;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln58_fu_764_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_736_p1;
wire   [63:0] select_ln55_fu_1046_p3;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage15;
wire    ap_loop_init;
wire   [63:0] select_ln55_1_fu_1053_p3;
wire   [63:0] select_ln55_2_fu_1060_p3;
reg   [63:0] add114_i77_fu_148;
wire    ap_block_pp0_stage9;
reg   [6:0] i_fu_152;
wire   [6:0] add_ln57_fu_1067_p2;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [1:0] j_fu_156;
reg   [1:0] ap_sig_allocacmp_j_load;
reg   [63:0] activations3_fu_160;
reg   [63:0] activations3_1_fu_164;
reg   [63:0] activations3_2_fu_168;
reg   [6:0] indvar_flatten_fu_172;
wire   [6:0] add_ln55_fu_680_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten_load;
reg    weights3_0_ce0_local;
reg    weights3_2_ce0_local;
reg    weights3_4_ce0_local;
reg    weights3_6_ce0_local;
reg    weights3_8_ce0_local;
reg    weights3_10_ce0_local;
reg    weights3_12_ce0_local;
reg    weights3_14_ce0_local;
reg    activations2_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_4_ce0_local;
reg    activations2_6_ce0_local;
reg    activations2_8_ce0_local;
reg    activations2_10_ce0_local;
reg    activations2_12_ce0_local;
reg    activations2_14_ce0_local;
reg    weights3_1_ce0_local;
reg    weights3_3_ce0_local;
reg    weights3_5_ce0_local;
reg    weights3_7_ce0_local;
reg    weights3_9_ce0_local;
reg    weights3_11_ce0_local;
reg    weights3_13_ce0_local;
reg    weights3_15_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_3_ce0_local;
reg    activations2_5_ce0_local;
reg    activations2_7_ce0_local;
reg    activations2_9_ce0_local;
reg    activations2_11_ce0_local;
reg    activations2_13_ce0_local;
reg    activations2_15_ce0_local;
reg   [63:0] grp_fu_610_p0;
reg   [63:0] grp_fu_610_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_614_p0;
reg   [63:0] grp_fu_614_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire   [1:0] add_ln55_1_fu_708_p2;
wire   [1:0] lshr_ln_fu_726_p4;
wire   [3:0] or_ln_fu_756_p3;
wire   [63:0] tmp_49_fu_826_p2;
wire   [63:0] tmp_49_fu_826_p4;
wire   [63:0] tmp_49_fu_826_p6;
wire   [63:0] tmp_49_fu_826_p8;
wire   [63:0] tmp_49_fu_826_p10;
wire   [63:0] tmp_49_fu_826_p12;
wire   [63:0] tmp_49_fu_826_p14;
wire   [63:0] tmp_49_fu_826_p16;
wire   [63:0] tmp_49_fu_826_p17;
wire   [63:0] tmp_50_fu_865_p17;
wire   [63:0] tmp_51_fu_936_p2;
wire   [63:0] tmp_51_fu_936_p4;
wire   [63:0] tmp_51_fu_936_p6;
wire   [63:0] tmp_51_fu_936_p8;
wire   [63:0] tmp_51_fu_936_p10;
wire   [63:0] tmp_51_fu_936_p12;
wire   [63:0] tmp_51_fu_936_p14;
wire   [63:0] tmp_51_fu_936_p16;
wire   [63:0] tmp_51_fu_936_p17;
wire   [63:0] tmp_52_fu_975_p17;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_49_fu_826_p1;
wire   [3:0] tmp_49_fu_826_p3;
wire   [3:0] tmp_49_fu_826_p5;
wire   [3:0] tmp_49_fu_826_p7;
wire  signed [3:0] tmp_49_fu_826_p9;
wire  signed [3:0] tmp_49_fu_826_p11;
wire  signed [3:0] tmp_49_fu_826_p13;
wire  signed [3:0] tmp_49_fu_826_p15;
wire   [3:0] tmp_50_fu_865_p1;
wire   [3:0] tmp_50_fu_865_p3;
wire   [3:0] tmp_50_fu_865_p5;
wire   [3:0] tmp_50_fu_865_p7;
wire  signed [3:0] tmp_50_fu_865_p9;
wire  signed [3:0] tmp_50_fu_865_p11;
wire  signed [3:0] tmp_50_fu_865_p13;
wire  signed [3:0] tmp_50_fu_865_p15;
wire   [3:0] tmp_51_fu_936_p1;
wire   [3:0] tmp_51_fu_936_p3;
wire   [3:0] tmp_51_fu_936_p5;
wire   [3:0] tmp_51_fu_936_p7;
wire  signed [3:0] tmp_51_fu_936_p9;
wire  signed [3:0] tmp_51_fu_936_p11;
wire  signed [3:0] tmp_51_fu_936_p13;
wire  signed [3:0] tmp_51_fu_936_p15;
wire   [3:0] tmp_52_fu_975_p1;
wire   [3:0] tmp_52_fu_975_p3;
wire   [3:0] tmp_52_fu_975_p5;
wire   [3:0] tmp_52_fu_975_p7;
wire  signed [3:0] tmp_52_fu_975_p9;
wire  signed [3:0] tmp_52_fu_975_p11;
wire  signed [3:0] tmp_52_fu_975_p13;
wire  signed [3:0] tmp_52_fu_975_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 add114_i77_fu_148 = 64'd0;
#0 i_fu_152 = 7'd0;
#0 j_fu_156 = 2'd0;
#0 activations3_fu_160 = 64'd0;
#0 activations3_1_fu_164 = 64'd0;
#0 activations3_2_fu_168 = 64'd0;
#0 indvar_flatten_fu_172 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_x_U441(.din0(tmp_49_fu_826_p2),.din1(tmp_49_fu_826_p4),.din2(tmp_49_fu_826_p6),.din3(tmp_49_fu_826_p8),.din4(tmp_49_fu_826_p10),.din5(tmp_49_fu_826_p12),.din6(tmp_49_fu_826_p14),.din7(tmp_49_fu_826_p16),.def(tmp_49_fu_826_p17),.sel(trunc_ln57_reg_1229),.dout(tmp_49_fu_826_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_x_U442(.din0(activations2_q0),.din1(activations2_2_q0),.din2(activations2_4_q0),.din3(activations2_6_q0),.din4(activations2_8_q0),.din5(activations2_10_q0),.din6(activations2_12_q0),.din7(activations2_14_q0),.def(tmp_50_fu_865_p17),.sel(trunc_ln57_reg_1229),.dout(tmp_50_fu_865_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_x_U443(.din0(tmp_51_fu_936_p2),.din1(tmp_51_fu_936_p4),.din2(tmp_51_fu_936_p6),.din3(tmp_51_fu_936_p8),.din4(tmp_51_fu_936_p10),.din5(tmp_51_fu_936_p12),.din6(tmp_51_fu_936_p14),.din7(tmp_51_fu_936_p16),.def(tmp_51_fu_936_p17),.sel(trunc_ln57_reg_1229),.dout(tmp_51_fu_936_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_x_U444(.din0(activations2_1_q0),.din1(activations2_3_q0),.din2(activations2_5_q0),.din3(activations2_7_q0),.din4(activations2_9_q0),.din5(activations2_11_q0),.din6(activations2_13_q0),.din7(activations2_15_q0),.def(tmp_52_fu_975_p17),.sel(trunc_ln57_reg_1229),.dout(tmp_52_fu_975_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_1_fu_164 <= activations3_load;
    end else if (((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_1_fu_164 <= select_ln55_1_fu_1053_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_2_fu_168 <= activations3_2_load;
    end else if (((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_2_fu_168 <= select_ln55_fu_1046_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_fu_160 <= activations3_1_load;
    end else if (((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_fu_160 <= select_ln55_2_fu_1060_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add114_i77_fu_148 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add114_i77_fu_148 <= grp_fu_5581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_152 <= 7'd0;
    end else if (((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        i_fu_152 <= add_ln57_fu_1067_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln55_fu_674_p2 == 1'd0))) begin
            indvar_flatten_fu_172 <= add_ln55_fu_680_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_172 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln55_fu_674_p2 == 1'd0))) begin
            j_fu_156 <= select_ln55_3_fu_714_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_156 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_i1_reg_1436 <= grp_fu_5581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln55_reg_1208 <= icmp_ln55_fu_674_p2;
        select_ln54_reg_1220 <= select_ln54_fu_700_p3;
        select_ln55_3_reg_1225 <= select_ln55_3_fu_714_p3;
        select_ln55_3_reg_1225_pp0_iter1_reg <= select_ln55_3_reg_1225;
        tmp_reg_1212 <= ap_sig_allocacmp_i_load[32'd6];
        trunc_ln57_reg_1229 <= trunc_ln57_fu_722_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_i1_reg_1427 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_i1_reg_1417 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tmp_41_reg_1432 <= add_ln57_fu_1067_p2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_49_reg_1397 <= tmp_49_fu_826_p19;
        tmp_50_reg_1402 <= tmp_50_fu_865_p19;
        tmp_51_reg_1407 <= tmp_51_fu_936_p19;
        tmp_52_reg_1412 <= tmp_52_fu_975_p19;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_10_ce0_local = 1'b1;
    end else begin
        activations2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_11_ce0_local = 1'b1;
    end else begin
        activations2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_12_ce0_local = 1'b1;
    end else begin
        activations2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_13_ce0_local = 1'b1;
    end else begin
        activations2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_14_ce0_local = 1'b1;
    end else begin
        activations2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_15_ce0_local = 1'b1;
    end else begin
        activations2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_2_ce0_local = 1'b1;
    end else begin
        activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_3_ce0_local = 1'b1;
    end else begin
        activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_4_ce0_local = 1'b1;
    end else begin
        activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_5_ce0_local = 1'b1;
    end else begin
        activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_6_ce0_local = 1'b1;
    end else begin
        activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_7_ce0_local = 1'b1;
    end else begin
        activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_8_ce0_local = 1'b1;
    end else begin
        activations2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_9_ce0_local = 1'b1;
    end else begin
        activations2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_10_out_o = 'bx;
    end else if ((((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_1225 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_1225 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_10_out_o = select_ln55_fu_1046_p3;
    end else if ((~(select_ln55_3_reg_1225_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_1225_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage8) & (tmp_41_reg_1432 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_10_out_o = grp_fu_5581_p_dout0;
    end else begin
        activations3_10_out_o = activations3_10_out_i;
    end
end
always @ (*) begin
    if ((((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_1225 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_1225 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(select_ln55_3_reg_1225_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_1225_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (tmp_41_reg_1432 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_10_out_o_ap_vld = 1'b1;
    end else begin
        activations3_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_8_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_1225 == 2'd0) & ~(select_ln55_3_reg_1225 == 2'd1) & (icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_1225 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_8_out_o = select_ln55_2_fu_1060_p3;
    end else if (((1'b0 == ap_block_pp0_stage8) & (tmp_41_reg_1432 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln55_3_reg_1225_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_8_out_o = grp_fu_5581_p_dout0;
    end else begin
        activations3_8_out_o = activations3_8_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_1225 == 2'd0) & ~(select_ln55_3_reg_1225 == 2'd1) & (icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_1225 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (tmp_41_reg_1432 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln55_3_reg_1225_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_8_out_o_ap_vld = 1'b1;
    end else begin
        activations3_8_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_9_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_1225 == 2'd0) & ~(select_ln55_3_reg_1225 == 2'd1) & (icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_1225 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_9_out_o = select_ln55_1_fu_1053_p3;
    end else if (((1'b0 == ap_block_pp0_stage8) & (tmp_41_reg_1432 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln55_3_reg_1225_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_9_out_o = grp_fu_5581_p_dout0;
    end else begin
        activations3_9_out_o = activations3_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_1225 == 2'd0) & ~(select_ln55_3_reg_1225 == 2'd1) & (icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_1208 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_41_fu_1072_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_1225 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage8_11001) & (tmp_41_reg_1432 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln55_3_reg_1225_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_9_out_o_ap_vld = 1'b1;
    end else begin
        activations3_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln55_reg_1208 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_172;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_610_p0 = add11_i1_reg_1436;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_610_p0 = select_ln54_1_fu_1017_p3;
    end else begin
        grp_fu_610_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_610_p1 = mul8_1_i1_reg_1427;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_610_p1 = mul8_i1_reg_1417;
    end else begin
        grp_fu_610_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_614_p0 = tmp_51_reg_1407;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_614_p0 = tmp_49_reg_1397;
        end else begin
            grp_fu_614_p0 = 'bx;
        end
    end else begin
        grp_fu_614_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_614_p1 = tmp_52_reg_1412;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_614_p1 = tmp_50_reg_1402;
        end else begin
            grp_fu_614_p1 = 'bx;
        end
    end else begin
        grp_fu_614_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_10_ce0_local = 1'b1;
    end else begin
        weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_11_ce0_local = 1'b1;
    end else begin
        weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_12_ce0_local = 1'b1;
    end else begin
        weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_13_ce0_local = 1'b1;
    end else begin
        weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_14_ce0_local = 1'b1;
    end else begin
        weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_15_ce0_local = 1'b1;
    end else begin
        weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_8_ce0_local = 1'b1;
    end else begin
        weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_9_ce0_local = 1'b1;
    end else begin
        weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign activations2_10_address0 = zext_ln54_fu_736_p1;
assign activations2_10_ce0 = activations2_10_ce0_local;
assign activations2_11_address0 = zext_ln54_fu_736_p1;
assign activations2_11_ce0 = activations2_11_ce0_local;
assign activations2_12_address0 = zext_ln54_fu_736_p1;
assign activations2_12_ce0 = activations2_12_ce0_local;
assign activations2_13_address0 = zext_ln54_fu_736_p1;
assign activations2_13_ce0 = activations2_13_ce0_local;
assign activations2_14_address0 = zext_ln54_fu_736_p1;
assign activations2_14_ce0 = activations2_14_ce0_local;
assign activations2_15_address0 = zext_ln54_fu_736_p1;
assign activations2_15_ce0 = activations2_15_ce0_local;
assign activations2_1_address0 = zext_ln54_fu_736_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_2_address0 = zext_ln54_fu_736_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_3_address0 = zext_ln54_fu_736_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_4_address0 = zext_ln54_fu_736_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_5_address0 = zext_ln54_fu_736_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_6_address0 = zext_ln54_fu_736_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_7_address0 = zext_ln54_fu_736_p1;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_8_address0 = zext_ln54_fu_736_p1;
assign activations2_8_ce0 = activations2_8_ce0_local;
assign activations2_9_address0 = zext_ln54_fu_736_p1;
assign activations2_9_ce0 = activations2_9_ce0_local;
assign activations2_address0 = zext_ln54_fu_736_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln55_1_fu_708_p2 = (ap_sig_allocacmp_j_load + 2'd1);
assign add_ln55_fu_680_p2 = (ap_sig_allocacmp_indvar_flatten_load + 7'd1);
assign add_ln57_fu_1067_p2 = (select_ln54_reg_1220 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign grp_fu_3932_p_ce = 1'b1;
assign grp_fu_3932_p_din0 = grp_fu_614_p0;
assign grp_fu_3932_p_din1 = grp_fu_614_p1;
assign grp_fu_5581_p_ce = 1'b1;
assign grp_fu_5581_p_din0 = grp_fu_610_p0;
assign grp_fu_5581_p_din1 = grp_fu_610_p1;
assign grp_fu_5581_p_opcode = 2'd0;
assign icmp_ln55_fu_674_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 7'd96) ? 1'b1 : 1'b0);
assign lshr_ln_fu_726_p4 = {{select_ln54_fu_700_p3[5:4]}};
assign or_ln_fu_756_p3 = {{select_ln55_3_fu_714_p3}, {lshr_ln_fu_726_p4}};
assign select_ln54_1_fu_1017_p3 = ((tmp_reg_1212[0:0] == 1'b1) ? 64'd0 : add114_i77_fu_148);
assign select_ln54_fu_700_p3 = ((tmp_fu_692_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_load);
assign select_ln55_1_fu_1053_p3 = ((tmp_reg_1212[0:0] == 1'b1) ? activations3_9_out_i : activations3_1_fu_164);
assign select_ln55_2_fu_1060_p3 = ((tmp_reg_1212[0:0] == 1'b1) ? activations3_8_out_i : activations3_fu_160);
assign select_ln55_3_fu_714_p3 = ((tmp_fu_692_p3[0:0] == 1'b1) ? add_ln55_1_fu_708_p2 : ap_sig_allocacmp_j_load);
assign select_ln55_fu_1046_p3 = ((tmp_reg_1212[0:0] == 1'b1) ? activations3_10_out_i : activations3_2_fu_168);
assign tmp_41_fu_1072_p3 = add_ln57_fu_1067_p2[32'd6];
assign tmp_49_fu_826_p10 = weights3_8_q0;
assign tmp_49_fu_826_p12 = weights3_10_q0;
assign tmp_49_fu_826_p14 = weights3_12_q0;
assign tmp_49_fu_826_p16 = weights3_14_q0;
assign tmp_49_fu_826_p17 = 'bx;
assign tmp_49_fu_826_p2 = weights3_0_q0;
assign tmp_49_fu_826_p4 = weights3_2_q0;
assign tmp_49_fu_826_p6 = weights3_4_q0;
assign tmp_49_fu_826_p8 = weights3_6_q0;
assign tmp_50_fu_865_p17 = 'bx;
assign tmp_51_fu_936_p10 = weights3_9_q0;
assign tmp_51_fu_936_p12 = weights3_11_q0;
assign tmp_51_fu_936_p14 = weights3_13_q0;
assign tmp_51_fu_936_p16 = weights3_15_q0;
assign tmp_51_fu_936_p17 = 'bx;
assign tmp_51_fu_936_p2 = weights3_1_q0;
assign tmp_51_fu_936_p4 = weights3_3_q0;
assign tmp_51_fu_936_p6 = weights3_5_q0;
assign tmp_51_fu_936_p8 = weights3_7_q0;
assign tmp_52_fu_975_p17 = 'bx;
assign tmp_fu_692_p3 = ap_sig_allocacmp_i_load[32'd6];
assign trunc_ln57_fu_722_p1 = select_ln54_fu_700_p3[3:0];
assign weights3_0_address0 = zext_ln58_fu_764_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_10_address0 = zext_ln58_fu_764_p1;
assign weights3_10_ce0 = weights3_10_ce0_local;
assign weights3_11_address0 = zext_ln58_fu_764_p1;
assign weights3_11_ce0 = weights3_11_ce0_local;
assign weights3_12_address0 = zext_ln58_fu_764_p1;
assign weights3_12_ce0 = weights3_12_ce0_local;
assign weights3_13_address0 = zext_ln58_fu_764_p1;
assign weights3_13_ce0 = weights3_13_ce0_local;
assign weights3_14_address0 = zext_ln58_fu_764_p1;
assign weights3_14_ce0 = weights3_14_ce0_local;
assign weights3_15_address0 = zext_ln58_fu_764_p1;
assign weights3_15_ce0 = weights3_15_ce0_local;
assign weights3_1_address0 = zext_ln58_fu_764_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_2_address0 = zext_ln58_fu_764_p1;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_3_address0 = zext_ln58_fu_764_p1;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_4_address0 = zext_ln58_fu_764_p1;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_5_address0 = zext_ln58_fu_764_p1;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_6_address0 = zext_ln58_fu_764_p1;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_7_address0 = zext_ln58_fu_764_p1;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_8_address0 = zext_ln58_fu_764_p1;
assign weights3_8_ce0 = weights3_8_ce0_local;
assign weights3_9_address0 = zext_ln58_fu_764_p1;
assign weights3_9_ce0 = weights3_9_ce0_local;
assign zext_ln54_fu_736_p1 = lshr_ln_fu_726_p4;
assign zext_ln58_fu_764_p1 = or_ln_fu_756_p3;
endmodule 