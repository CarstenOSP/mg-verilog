
module backprop_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,d_weights2_0_address0,d_weights2_0_ce0,d_weights2_0_q0,d_weights2_2_address0,d_weights2_2_ce0,d_weights2_2_q0,d_weights2_4_address0,d_weights2_4_ce0,d_weights2_4_q0,d_weights2_6_address0,d_weights2_6_ce0,d_weights2_6_q0,d_weights2_8_address0,d_weights2_8_ce0,d_weights2_8_q0,d_weights2_10_address0,d_weights2_10_ce0,d_weights2_10_q0,d_weights2_12_address0,d_weights2_12_ce0,d_weights2_12_q0,d_weights2_14_address0,d_weights2_14_ce0,d_weights2_14_q0,d_weights2_16_address0,d_weights2_16_ce0,d_weights2_16_q0,d_weights2_18_address0,d_weights2_18_ce0,d_weights2_18_q0,d_weights2_20_address0,d_weights2_20_ce0,d_weights2_20_q0,d_weights2_22_address0,d_weights2_22_ce0,d_weights2_22_q0,d_weights2_24_address0,d_weights2_24_ce0,d_weights2_24_q0,d_weights2_26_address0,d_weights2_26_ce0,d_weights2_26_q0,d_weights2_28_address0,d_weights2_28_ce0,d_weights2_28_q0,d_weights2_30_address0,d_weights2_30_ce0,d_weights2_30_q0,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,d_weights2_1_address0,d_weights2_1_ce0,d_weights2_1_q0,d_weights2_3_address0,d_weights2_3_ce0,d_weights2_3_q0,d_weights2_5_address0,d_weights2_5_ce0,d_weights2_5_q0,d_weights2_7_address0,d_weights2_7_ce0,d_weights2_7_q0,d_weights2_9_address0,d_weights2_9_ce0,d_weights2_9_q0,d_weights2_11_address0,d_weights2_11_ce0,d_weights2_11_q0,d_weights2_13_address0,d_weights2_13_ce0,d_weights2_13_q0,d_weights2_15_address0,d_weights2_15_ce0,d_weights2_15_q0,d_weights2_17_address0,d_weights2_17_ce0,d_weights2_17_q0,d_weights2_19_address0,d_weights2_19_ce0,d_weights2_19_q0,d_weights2_21_address0,d_weights2_21_ce0,d_weights2_21_q0,d_weights2_23_address0,d_weights2_23_ce0,d_weights2_23_q0,d_weights2_25_address0,d_weights2_25_ce0,d_weights2_25_q0,d_weights2_27_address0,d_weights2_27_ce0,d_weights2_27_q0,d_weights2_29_address0,d_weights2_29_ce0,d_weights2_29_q0,d_weights2_31_address0,d_weights2_31_ce0,d_weights2_31_q0,norm_5_out,norm_5_out_ap_vld,grp_fu_637_p_din0,grp_fu_637_p_din1,grp_fu_637_p_opcode,grp_fu_637_p_dout0,grp_fu_637_p_ce,grp_fu_641_p_din0,grp_fu_641_p_din1,grp_fu_641_p_dout0,grp_fu_641_p_ce);  
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
output  [6:0] d_weights2_0_address0;
output   d_weights2_0_ce0;
input  [63:0] d_weights2_0_q0;
output  [6:0] d_weights2_2_address0;
output   d_weights2_2_ce0;
input  [63:0] d_weights2_2_q0;
output  [6:0] d_weights2_4_address0;
output   d_weights2_4_ce0;
input  [63:0] d_weights2_4_q0;
output  [6:0] d_weights2_6_address0;
output   d_weights2_6_ce0;
input  [63:0] d_weights2_6_q0;
output  [6:0] d_weights2_8_address0;
output   d_weights2_8_ce0;
input  [63:0] d_weights2_8_q0;
output  [6:0] d_weights2_10_address0;
output   d_weights2_10_ce0;
input  [63:0] d_weights2_10_q0;
output  [6:0] d_weights2_12_address0;
output   d_weights2_12_ce0;
input  [63:0] d_weights2_12_q0;
output  [6:0] d_weights2_14_address0;
output   d_weights2_14_ce0;
input  [63:0] d_weights2_14_q0;
output  [6:0] d_weights2_16_address0;
output   d_weights2_16_ce0;
input  [63:0] d_weights2_16_q0;
output  [6:0] d_weights2_18_address0;
output   d_weights2_18_ce0;
input  [63:0] d_weights2_18_q0;
output  [6:0] d_weights2_20_address0;
output   d_weights2_20_ce0;
input  [63:0] d_weights2_20_q0;
output  [6:0] d_weights2_22_address0;
output   d_weights2_22_ce0;
input  [63:0] d_weights2_22_q0;
output  [6:0] d_weights2_24_address0;
output   d_weights2_24_ce0;
input  [63:0] d_weights2_24_q0;
output  [6:0] d_weights2_26_address0;
output   d_weights2_26_ce0;
input  [63:0] d_weights2_26_q0;
output  [6:0] d_weights2_28_address0;
output   d_weights2_28_ce0;
input  [63:0] d_weights2_28_q0;
output  [6:0] d_weights2_30_address0;
output   d_weights2_30_ce0;
input  [63:0] d_weights2_30_q0;
output  [11:0] weights2_address0;
output   weights2_ce0;
output   weights2_we0;
output  [63:0] weights2_d0;
input  [63:0] weights2_q0;
output  [11:0] weights2_address1;
output   weights2_ce1;
output   weights2_we1;
output  [63:0] weights2_d1;
input  [63:0] weights2_q1;
output  [6:0] d_weights2_1_address0;
output   d_weights2_1_ce0;
input  [63:0] d_weights2_1_q0;
output  [6:0] d_weights2_3_address0;
output   d_weights2_3_ce0;
input  [63:0] d_weights2_3_q0;
output  [6:0] d_weights2_5_address0;
output   d_weights2_5_ce0;
input  [63:0] d_weights2_5_q0;
output  [6:0] d_weights2_7_address0;
output   d_weights2_7_ce0;
input  [63:0] d_weights2_7_q0;
output  [6:0] d_weights2_9_address0;
output   d_weights2_9_ce0;
input  [63:0] d_weights2_9_q0;
output  [6:0] d_weights2_11_address0;
output   d_weights2_11_ce0;
input  [63:0] d_weights2_11_q0;
output  [6:0] d_weights2_13_address0;
output   d_weights2_13_ce0;
input  [63:0] d_weights2_13_q0;
output  [6:0] d_weights2_15_address0;
output   d_weights2_15_ce0;
input  [63:0] d_weights2_15_q0;
output  [6:0] d_weights2_17_address0;
output   d_weights2_17_ce0;
input  [63:0] d_weights2_17_q0;
output  [6:0] d_weights2_19_address0;
output   d_weights2_19_ce0;
input  [63:0] d_weights2_19_q0;
output  [6:0] d_weights2_21_address0;
output   d_weights2_21_ce0;
input  [63:0] d_weights2_21_q0;
output  [6:0] d_weights2_23_address0;
output   d_weights2_23_ce0;
input  [63:0] d_weights2_23_q0;
output  [6:0] d_weights2_25_address0;
output   d_weights2_25_ce0;
input  [63:0] d_weights2_25_q0;
output  [6:0] d_weights2_27_address0;
output   d_weights2_27_ce0;
input  [63:0] d_weights2_27_q0;
output  [6:0] d_weights2_29_address0;
output   d_weights2_29_ce0;
input  [63:0] d_weights2_29_q0;
output  [6:0] d_weights2_31_address0;
output   d_weights2_31_ce0;
input  [63:0] d_weights2_31_q0;
output  [63:0] norm_5_out;
output   norm_5_out_ap_vld;
output  [63:0] grp_fu_637_p_din0;
output  [63:0] grp_fu_637_p_din1;
output  [1:0] grp_fu_637_p_opcode;
input  [63:0] grp_fu_637_p_dout0;
output   grp_fu_637_p_ce;
output  [63:0] grp_fu_641_p_din0;
output  [63:0] grp_fu_641_p_din1;
input  [63:0] grp_fu_641_p_dout0;
output   grp_fu_641_p_ce;
reg ap_idle;
reg norm_5_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln152_reg_1044;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln152_fu_660_p2;
reg   [0:0] icmp_ln152_reg_1044_pp0_iter1_reg;
reg   [6:0] i_4_load_reg_1048;
wire   [6:0] add_ln152_1_fu_675_p2;
reg   [6:0] add_ln152_1_reg_1053;
wire   [6:0] select_ln121_fu_697_p3;
reg   [6:0] select_ln121_reg_1058;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [4:0] trunc_ln153_fu_733_p1;
reg   [4:0] trunc_ln153_reg_1063;
reg   [11:0] weights2_addr_reg_1149;
reg   [11:0] weights2_addr_reg_1149_pp0_iter1_reg;
reg   [11:0] weights2_addr_1_reg_1235;
reg   [11:0] weights2_addr_1_reg_1235_pp0_iter1_reg;
wire   [63:0] tmp_3_fu_834_p35;
reg   [63:0] tmp_3_reg_1241;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] weights2_load_reg_1246;
wire   [63:0] tmp_4_fu_905_p35;
reg   [63:0] tmp_4_reg_1251;
reg   [63:0] weights2_load_1_reg_1256;
reg   [63:0] mul6_reg_1261;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] bitcast_ln154_fu_976_p1;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul81_1_reg_1271;
wire   [63:0] bitcast_ln154_2_fu_980_p1;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] sub3_reg_1281;
reg   [63:0] sub86_1_reg_1288;
reg   [63:0] mul7_reg_1295;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] mul95_1_reg_1305;
reg   [63:0] norm_reg_1310;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
wire   [63:0] zext_ln154_1_fu_768_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln154_fu_743_p1;
wire   [63:0] zext_ln154_2_fu_824_p1;
reg   [63:0] norm_5_fu_164;
wire    ap_block_pp0_stage8;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage15_11001;
reg    ap_condition_exit_pp0_iter1_stage8;
reg    ap_idle_pp0_0to0;
reg   [6:0] j_fu_168;
wire   [6:0] add_ln153_fu_984_p2;
reg   [6:0] i_4_fu_172;
wire   [6:0] select_ln152_fu_705_p3;
reg   [6:0] ap_sig_allocacmp_i_4_load;
wire    ap_block_pp0_stage0;
reg   [11:0] indvar_flatten13_fu_176;
wire   [11:0] add_ln152_fu_666_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten13_load;
wire    ap_block_pp0_stage8_01001;
reg    d_weights2_0_ce0_local;
reg    d_weights2_2_ce0_local;
reg    d_weights2_4_ce0_local;
reg    d_weights2_6_ce0_local;
reg    d_weights2_8_ce0_local;
reg    d_weights2_10_ce0_local;
reg    d_weights2_12_ce0_local;
reg    d_weights2_14_ce0_local;
reg    d_weights2_16_ce0_local;
reg    d_weights2_18_ce0_local;
reg    d_weights2_20_ce0_local;
reg    d_weights2_22_ce0_local;
reg    d_weights2_24_ce0_local;
reg    d_weights2_26_ce0_local;
reg    d_weights2_28_ce0_local;
reg    d_weights2_30_ce0_local;
reg    weights2_ce1_local;
reg   [11:0] weights2_address1_local;
reg    weights2_ce0_local;
reg   [11:0] weights2_address0_local;
reg    weights2_we0_local;
wire   [63:0] bitcast_ln154_1_fu_994_p1;
wire    ap_block_pp0_stage2;
reg    weights2_we1_local;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln154_3_fu_998_p1;
wire    ap_block_pp0_stage3;
reg    d_weights2_1_ce0_local;
reg    d_weights2_3_ce0_local;
reg    d_weights2_5_ce0_local;
reg    d_weights2_7_ce0_local;
reg    d_weights2_9_ce0_local;
reg    d_weights2_11_ce0_local;
reg    d_weights2_13_ce0_local;
reg    d_weights2_15_ce0_local;
reg    d_weights2_17_ce0_local;
reg    d_weights2_19_ce0_local;
reg    d_weights2_21_ce0_local;
reg    d_weights2_23_ce0_local;
reg    d_weights2_25_ce0_local;
reg    d_weights2_27_ce0_local;
reg    d_weights2_29_ce0_local;
reg    d_weights2_31_ce0_local;
reg   [63:0] grp_fu_628_p0;
reg   [63:0] grp_fu_628_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
reg   [63:0] grp_fu_632_p0;
reg   [63:0] grp_fu_632_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [0:0] tmp_fu_689_p3;
wire   [5:0] empty_fu_711_p1;
wire   [11:0] zext_ln153_fu_729_p1;
wire   [11:0] tmp_s_fu_715_p3;
wire   [11:0] add_ln154_fu_737_p2;
wire   [1:0] lshr_ln_fu_748_p4;
wire   [6:0] zext_ln154_3_fu_758_p1;
wire   [6:0] empty_28_fu_723_p2;
wire   [6:0] add_ln154_1_fu_762_p2;
wire   [4:0] tmp_2_fu_804_p4;
wire   [11:0] add_ln154_2_fu_814_p4;
wire   [63:0] tmp_3_fu_834_p33;
wire   [63:0] tmp_4_fu_905_p33;
reg   [1:0] grp_fu_628_opcode;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
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
wire   [4:0] tmp_3_fu_834_p1;
wire   [4:0] tmp_3_fu_834_p3;
wire   [4:0] tmp_3_fu_834_p5;
wire   [4:0] tmp_3_fu_834_p7;
wire   [4:0] tmp_3_fu_834_p9;
wire   [4:0] tmp_3_fu_834_p11;
wire   [4:0] tmp_3_fu_834_p13;
wire   [4:0] tmp_3_fu_834_p15;
wire  signed [4:0] tmp_3_fu_834_p17;
wire  signed [4:0] tmp_3_fu_834_p19;
wire  signed [4:0] tmp_3_fu_834_p21;
wire  signed [4:0] tmp_3_fu_834_p23;
wire  signed [4:0] tmp_3_fu_834_p25;
wire  signed [4:0] tmp_3_fu_834_p27;
wire  signed [4:0] tmp_3_fu_834_p29;
wire  signed [4:0] tmp_3_fu_834_p31;
wire   [4:0] tmp_4_fu_905_p1;
wire   [4:0] tmp_4_fu_905_p3;
wire   [4:0] tmp_4_fu_905_p5;
wire   [4:0] tmp_4_fu_905_p7;
wire   [4:0] tmp_4_fu_905_p9;
wire   [4:0] tmp_4_fu_905_p11;
wire   [4:0] tmp_4_fu_905_p13;
wire   [4:0] tmp_4_fu_905_p15;
wire  signed [4:0] tmp_4_fu_905_p17;
wire  signed [4:0] tmp_4_fu_905_p19;
wire  signed [4:0] tmp_4_fu_905_p21;
wire  signed [4:0] tmp_4_fu_905_p23;
wire  signed [4:0] tmp_4_fu_905_p25;
wire  signed [4:0] tmp_4_fu_905_p27;
wire  signed [4:0] tmp_4_fu_905_p29;
wire  signed [4:0] tmp_4_fu_905_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_5_fu_164 = 64'd0;
#0 j_fu_168 = 7'd0;
#0 i_4_fu_172 = 7'd0;
#0 indvar_flatten13_fu_176 = 12'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U1026(.din0(d_weights2_0_q0),.din1(d_weights2_2_q0),.din2(d_weights2_4_q0),.din3(d_weights2_6_q0),.din4(d_weights2_8_q0),.din5(d_weights2_10_q0),.din6(d_weights2_12_q0),.din7(d_weights2_14_q0),.din8(d_weights2_16_q0),.din9(d_weights2_18_q0),.din10(d_weights2_20_q0),.din11(d_weights2_22_q0),.din12(d_weights2_24_q0),.din13(d_weights2_26_q0),.din14(d_weights2_28_q0),.din15(d_weights2_30_q0),.def(tmp_3_fu_834_p33),.sel(trunc_ln153_reg_1063),.dout(tmp_3_fu_834_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U1027(.din0(d_weights2_1_q0),.din1(d_weights2_3_q0),.din2(d_weights2_5_q0),.din3(d_weights2_7_q0),.din4(d_weights2_9_q0),.din5(d_weights2_11_q0),.din6(d_weights2_13_q0),.din7(d_weights2_15_q0),.din8(d_weights2_17_q0),.din9(d_weights2_19_q0),.din10(d_weights2_21_q0),.din11(d_weights2_23_q0),.din12(d_weights2_25_q0),.din13(d_weights2_27_q0),.din14(d_weights2_29_q0),.din15(d_weights2_31_q0),.def(tmp_4_fu_905_p33),.sel(trunc_ln153_reg_1063),.dout(tmp_4_fu_905_p35));
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
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_fu_172 <= 7'd0;
    end else if (((icmp_ln152_reg_1044 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_4_fu_172 <= select_ln152_fu_705_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln152_fu_660_p2 == 1'd0))) begin
            indvar_flatten13_fu_176 <= add_ln152_fu_666_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_176 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_168 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_168 <= add_ln153_fu_984_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_5_fu_164 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        norm_5_fu_164 <= grp_fu_637_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln152_1_reg_1053 <= add_ln152_1_fu_675_p2;
        i_4_load_reg_1048 <= ap_sig_allocacmp_i_4_load;
        icmp_ln152_reg_1044 <= icmp_ln152_fu_660_p2;
        icmp_ln152_reg_1044_pp0_iter1_reg <= icmp_ln152_reg_1044;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul6_reg_1261 <= grp_fu_641_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul7_reg_1295 <= grp_fu_641_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul81_1_reg_1271 <= grp_fu_641_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul95_1_reg_1305 <= grp_fu_641_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_reg_1310 <= grp_fu_637_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln121_reg_1058 <= select_ln121_fu_697_p3;
        trunc_ln153_reg_1063 <= trunc_ln153_fu_733_p1;
        weights2_addr_1_reg_1235[11 : 1] <= zext_ln154_2_fu_824_p1[11 : 1];
        weights2_addr_1_reg_1235_pp0_iter1_reg[11 : 1] <= weights2_addr_1_reg_1235[11 : 1];
        weights2_addr_reg_1149 <= zext_ln154_fu_743_p1;
        weights2_addr_reg_1149_pp0_iter1_reg <= weights2_addr_reg_1149;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub3_reg_1281 <= grp_fu_637_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sub86_1_reg_1288 <= grp_fu_637_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_3_reg_1241 <= tmp_3_fu_834_p35;
        tmp_4_reg_1251 <= tmp_4_fu_905_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_load_1_reg_1256 <= weights2_q0;
        weights2_load_reg_1246 <= weights2_q1;
    end
end
always @ (*) begin
    if (((icmp_ln152_reg_1044 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln152_reg_1044_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_i_4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4_load = i_4_fu_172;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten13_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_176;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_0_ce0_local = 1'b1;
    end else begin
        d_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_10_ce0_local = 1'b1;
    end else begin
        d_weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_11_ce0_local = 1'b1;
    end else begin
        d_weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_12_ce0_local = 1'b1;
    end else begin
        d_weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_13_ce0_local = 1'b1;
    end else begin
        d_weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_14_ce0_local = 1'b1;
    end else begin
        d_weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_15_ce0_local = 1'b1;
    end else begin
        d_weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_16_ce0_local = 1'b1;
    end else begin
        d_weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_17_ce0_local = 1'b1;
    end else begin
        d_weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_18_ce0_local = 1'b1;
    end else begin
        d_weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_19_ce0_local = 1'b1;
    end else begin
        d_weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_1_ce0_local = 1'b1;
    end else begin
        d_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_20_ce0_local = 1'b1;
    end else begin
        d_weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_21_ce0_local = 1'b1;
    end else begin
        d_weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_22_ce0_local = 1'b1;
    end else begin
        d_weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_23_ce0_local = 1'b1;
    end else begin
        d_weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_24_ce0_local = 1'b1;
    end else begin
        d_weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_25_ce0_local = 1'b1;
    end else begin
        d_weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_26_ce0_local = 1'b1;
    end else begin
        d_weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_27_ce0_local = 1'b1;
    end else begin
        d_weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_28_ce0_local = 1'b1;
    end else begin
        d_weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_29_ce0_local = 1'b1;
    end else begin
        d_weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_2_ce0_local = 1'b1;
    end else begin
        d_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_30_ce0_local = 1'b1;
    end else begin
        d_weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_31_ce0_local = 1'b1;
    end else begin
        d_weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_3_ce0_local = 1'b1;
    end else begin
        d_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_4_ce0_local = 1'b1;
    end else begin
        d_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_5_ce0_local = 1'b1;
    end else begin
        d_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_6_ce0_local = 1'b1;
    end else begin
        d_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_7_ce0_local = 1'b1;
    end else begin
        d_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_8_ce0_local = 1'b1;
    end else begin
        d_weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_9_ce0_local = 1'b1;
    end else begin
        d_weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln152_reg_1044 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln152_reg_1044 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_628_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_628_opcode = 2'd0;
    end else begin
        grp_fu_628_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_628_p0 = norm_reg_1310;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_628_p0 = norm_5_fu_164;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_628_p0 = bitcast_ln154_2_fu_980_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_628_p0 = bitcast_ln154_fu_976_p1;
    end else begin
        grp_fu_628_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_628_p1 = mul95_1_reg_1305;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_628_p1 = mul7_reg_1295;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_628_p1 = mul81_1_reg_1271;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_628_p1 = mul6_reg_1261;
    end else begin
        grp_fu_628_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_632_p0 = sub86_1_reg_1288;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_632_p0 = sub3_reg_1281;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_632_p0 = tmp_4_reg_1251;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_632_p0 = tmp_3_reg_1241;
    end else begin
        grp_fu_632_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_632_p1 = sub86_1_reg_1288;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_632_p1 = sub3_reg_1281;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_632_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_632_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln152_reg_1044_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        norm_5_out_ap_vld = 1'b1;
    end else begin
        norm_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_address0_local = weights2_addr_reg_1149_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_address0_local = zext_ln154_2_fu_824_p1;
    end else begin
        weights2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_address1_local = weights2_addr_1_reg_1235_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_address1_local = zext_ln154_fu_743_p1;
    end else begin
        weights2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_ce0_local = 1'b1;
    end else begin
        weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_ce1_local = 1'b1;
    end else begin
        weights2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_we0_local = 1'b1;
    end else begin
        weights2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_we1_local = 1'b1;
    end else begin
        weights2_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to2 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8))) begin
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
assign add_ln152_1_fu_675_p2 = (ap_sig_allocacmp_i_4_load + 7'd1);
assign add_ln152_fu_666_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 12'd1);
assign add_ln153_fu_984_p2 = (select_ln121_reg_1058 + 7'd2);
assign add_ln154_1_fu_762_p2 = (zext_ln154_3_fu_758_p1 + empty_28_fu_723_p2);
assign add_ln154_2_fu_814_p4 = {{{empty_fu_711_p1}, {tmp_2_fu_804_p4}}, {1'd1}};
assign add_ln154_fu_737_p2 = (zext_ln153_fu_729_p1 + tmp_s_fu_715_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bitcast_ln154_1_fu_994_p1 = sub3_reg_1281;
assign bitcast_ln154_2_fu_980_p1 = weights2_load_1_reg_1256;
assign bitcast_ln154_3_fu_998_p1 = sub86_1_reg_1288;
assign bitcast_ln154_fu_976_p1 = weights2_load_reg_1246;
assign d_weights2_0_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_0_ce0 = d_weights2_0_ce0_local;
assign d_weights2_10_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_10_ce0 = d_weights2_10_ce0_local;
assign d_weights2_11_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_11_ce0 = d_weights2_11_ce0_local;
assign d_weights2_12_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_12_ce0 = d_weights2_12_ce0_local;
assign d_weights2_13_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_13_ce0 = d_weights2_13_ce0_local;
assign d_weights2_14_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_14_ce0 = d_weights2_14_ce0_local;
assign d_weights2_15_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_15_ce0 = d_weights2_15_ce0_local;
assign d_weights2_16_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_16_ce0 = d_weights2_16_ce0_local;
assign d_weights2_17_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_17_ce0 = d_weights2_17_ce0_local;
assign d_weights2_18_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_18_ce0 = d_weights2_18_ce0_local;
assign d_weights2_19_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_19_ce0 = d_weights2_19_ce0_local;
assign d_weights2_1_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_1_ce0 = d_weights2_1_ce0_local;
assign d_weights2_20_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_20_ce0 = d_weights2_20_ce0_local;
assign d_weights2_21_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_21_ce0 = d_weights2_21_ce0_local;
assign d_weights2_22_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_22_ce0 = d_weights2_22_ce0_local;
assign d_weights2_23_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_23_ce0 = d_weights2_23_ce0_local;
assign d_weights2_24_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_24_ce0 = d_weights2_24_ce0_local;
assign d_weights2_25_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_25_ce0 = d_weights2_25_ce0_local;
assign d_weights2_26_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_26_ce0 = d_weights2_26_ce0_local;
assign d_weights2_27_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_27_ce0 = d_weights2_27_ce0_local;
assign d_weights2_28_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_28_ce0 = d_weights2_28_ce0_local;
assign d_weights2_29_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_29_ce0 = d_weights2_29_ce0_local;
assign d_weights2_2_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_2_ce0 = d_weights2_2_ce0_local;
assign d_weights2_30_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_30_ce0 = d_weights2_30_ce0_local;
assign d_weights2_31_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_31_ce0 = d_weights2_31_ce0_local;
assign d_weights2_3_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_3_ce0 = d_weights2_3_ce0_local;
assign d_weights2_4_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_4_ce0 = d_weights2_4_ce0_local;
assign d_weights2_5_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_5_ce0 = d_weights2_5_ce0_local;
assign d_weights2_6_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_6_ce0 = d_weights2_6_ce0_local;
assign d_weights2_7_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_7_ce0 = d_weights2_7_ce0_local;
assign d_weights2_8_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_8_ce0 = d_weights2_8_ce0_local;
assign d_weights2_9_address0 = zext_ln154_1_fu_768_p1;
assign d_weights2_9_ce0 = d_weights2_9_ce0_local;
assign empty_28_fu_723_p2 = select_ln152_fu_705_p3 << 7'd1;
assign empty_fu_711_p1 = select_ln152_fu_705_p3[5:0];
assign grp_fu_637_p_ce = 1'b1;
assign grp_fu_637_p_din0 = grp_fu_628_p0;
assign grp_fu_637_p_din1 = grp_fu_628_p1;
assign grp_fu_637_p_opcode = grp_fu_628_opcode;
assign grp_fu_641_p_ce = 1'b1;
assign grp_fu_641_p_din0 = grp_fu_632_p0;
assign grp_fu_641_p_din1 = grp_fu_632_p1;
assign icmp_ln152_fu_660_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 12'd2048) ? 1'b1 : 1'b0);
assign lshr_ln_fu_748_p4 = {{select_ln121_fu_697_p3[6:5]}};
assign norm_5_out = norm_5_fu_164;
assign select_ln121_fu_697_p3 = ((tmp_fu_689_p3[0:0] == 1'b1) ? 7'd0 : j_fu_168);
assign select_ln152_fu_705_p3 = ((tmp_fu_689_p3[0:0] == 1'b1) ? add_ln152_1_reg_1053 : i_4_load_reg_1048);
assign tmp_2_fu_804_p4 = {{select_ln121_fu_697_p3[5:1]}};
assign tmp_3_fu_834_p33 = 'bx;
assign tmp_4_fu_905_p33 = 'bx;
assign tmp_fu_689_p3 = j_fu_168[32'd6];
assign tmp_s_fu_715_p3 = {{empty_fu_711_p1}, {6'd0}};
assign trunc_ln153_fu_733_p1 = select_ln121_fu_697_p3[4:0];
assign weights2_address0 = weights2_address0_local;
assign weights2_address1 = weights2_address1_local;
assign weights2_ce0 = weights2_ce0_local;
assign weights2_ce1 = weights2_ce1_local;
assign weights2_d0 = bitcast_ln154_1_fu_994_p1;
assign weights2_d1 = bitcast_ln154_3_fu_998_p1;
assign weights2_we0 = weights2_we0_local;
assign weights2_we1 = weights2_we1_local;
assign zext_ln153_fu_729_p1 = select_ln121_fu_697_p3;
assign zext_ln154_1_fu_768_p1 = add_ln154_1_fu_762_p2;
assign zext_ln154_2_fu_824_p1 = add_ln154_2_fu_814_p4;
assign zext_ln154_3_fu_758_p1 = lshr_ln_fu_748_p4;
assign zext_ln154_fu_743_p1 = add_ln154_fu_737_p2;
always @ (posedge ap_clk) begin
    weights2_addr_1_reg_1235[0] <= 1'b1;
    weights2_addr_1_reg_1235_pp0_iter1_reg[0] <= 1'b1;
end
endmodule 
