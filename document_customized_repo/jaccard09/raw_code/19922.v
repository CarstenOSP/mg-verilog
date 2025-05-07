module backprop_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations3_2_load,activations3_load,activations3_1_load,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_8_address0,weights3_8_ce0,weights3_8_q0,weights3_12_address0,weights3_12_ce0,weights3_12_q0,activations2_address0,activations2_ce0,activations2_q0,activations2_4_address0,activations2_4_ce0,activations2_4_q0,activations2_8_address0,activations2_8_ce0,activations2_8_q0,activations2_12_address0,activations2_12_ce0,activations2_12_q0,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_9_address0,weights3_9_ce0,weights3_9_q0,weights3_13_address0,weights3_13_ce0,weights3_13_q0,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_5_address0,activations2_5_ce0,activations2_5_q0,activations2_9_address0,activations2_9_ce0,activations2_9_q0,activations2_13_address0,activations2_13_ce0,activations2_13_q0,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_10_address0,weights3_10_ce0,weights3_10_q0,weights3_14_address0,weights3_14_ce0,weights3_14_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,activations2_6_address0,activations2_6_ce0,activations2_6_q0,activations2_10_address0,activations2_10_ce0,activations2_10_q0,activations2_14_address0,activations2_14_ce0,activations2_14_q0,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_7_address0,weights3_7_ce0,weights3_7_q0,weights3_11_address0,weights3_11_ce0,weights3_11_q0,weights3_15_address0,weights3_15_ce0,weights3_15_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,activations2_7_address0,activations2_7_ce0,activations2_7_q0,activations2_11_address0,activations2_11_ce0,activations2_11_q0,activations2_15_address0,activations2_15_ce0,activations2_15_q0,activations3_10_out_i,activations3_10_out_o,activations3_10_out_o_ap_vld,activations3_9_out_i,activations3_9_out_o,activations3_9_out_o_ap_vld,activations3_8_out_i,activations3_8_out_o,activations3_8_out_o_ap_vld,grp_fu_5581_p_din0,grp_fu_5581_p_din1,grp_fu_5581_p_opcode,grp_fu_5581_p_dout0,grp_fu_5581_p_ce,grp_fu_3932_p_din0,grp_fu_3932_p_din1,grp_fu_3932_p_dout0,grp_fu_3932_p_ce); 
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
input  [63:0] activations3_2_load;
input  [63:0] activations3_load;
input  [63:0] activations3_1_load;
output  [3:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [3:0] weights3_4_address0;
output   weights3_4_ce0;
input  [63:0] weights3_4_q0;
output  [3:0] weights3_8_address0;
output   weights3_8_ce0;
input  [63:0] weights3_8_q0;
output  [3:0] weights3_12_address0;
output   weights3_12_ce0;
input  [63:0] weights3_12_q0;
output  [1:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [1:0] activations2_4_address0;
output   activations2_4_ce0;
input  [63:0] activations2_4_q0;
output  [1:0] activations2_8_address0;
output   activations2_8_ce0;
input  [63:0] activations2_8_q0;
output  [1:0] activations2_12_address0;
output   activations2_12_ce0;
input  [63:0] activations2_12_q0;
output  [3:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [3:0] weights3_5_address0;
output   weights3_5_ce0;
input  [63:0] weights3_5_q0;
output  [3:0] weights3_9_address0;
output   weights3_9_ce0;
input  [63:0] weights3_9_q0;
output  [3:0] weights3_13_address0;
output   weights3_13_ce0;
input  [63:0] weights3_13_q0;
output  [1:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [1:0] activations2_5_address0;
output   activations2_5_ce0;
input  [63:0] activations2_5_q0;
output  [1:0] activations2_9_address0;
output   activations2_9_ce0;
input  [63:0] activations2_9_q0;
output  [1:0] activations2_13_address0;
output   activations2_13_ce0;
input  [63:0] activations2_13_q0;
output  [3:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [3:0] weights3_6_address0;
output   weights3_6_ce0;
input  [63:0] weights3_6_q0;
output  [3:0] weights3_10_address0;
output   weights3_10_ce0;
input  [63:0] weights3_10_q0;
output  [3:0] weights3_14_address0;
output   weights3_14_ce0;
input  [63:0] weights3_14_q0;
output  [1:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [1:0] activations2_6_address0;
output   activations2_6_ce0;
input  [63:0] activations2_6_q0;
output  [1:0] activations2_10_address0;
output   activations2_10_ce0;
input  [63:0] activations2_10_q0;
output  [1:0] activations2_14_address0;
output   activations2_14_ce0;
input  [63:0] activations2_14_q0;
output  [3:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [3:0] weights3_7_address0;
output   weights3_7_ce0;
input  [63:0] weights3_7_q0;
output  [3:0] weights3_11_address0;
output   weights3_11_ce0;
input  [63:0] weights3_11_q0;
output  [3:0] weights3_15_address0;
output   weights3_15_ce0;
input  [63:0] weights3_15_q0;
output  [1:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
output  [1:0] activations2_7_address0;
output   activations2_7_ce0;
input  [63:0] activations2_7_q0;
output  [1:0] activations2_11_address0;
output   activations2_11_ce0;
input  [63:0] activations2_11_q0;
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
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln55_reg_1235;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_612;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln55_fu_673_p2;
wire   [0:0] tmp_fu_691_p3;
reg   [0:0] tmp_reg_1239;
wire   [6:0] select_ln54_fu_699_p3;
reg   [6:0] select_ln54_reg_1247;
wire   [1:0] select_ln55_3_fu_713_p3;
reg   [1:0] select_ln55_3_reg_1252;
reg   [1:0] select_ln55_3_reg_1252_pp0_iter1_reg;
wire   [3:0] trunc_ln57_fu_721_p1;
reg   [3:0] trunc_ln57_reg_1256;
wire   [63:0] tmp_79_fu_809_p11;
reg   [63:0] tmp_79_reg_1428;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_80_fu_832_p11;
reg   [63:0] tmp_80_reg_1433;
wire   [63:0] tmp_81_fu_871_p11;
reg   [63:0] tmp_81_reg_1438;
wire   [63:0] tmp_82_fu_894_p11;
reg   [63:0] tmp_82_reg_1443;
wire   [63:0] tmp_83_fu_933_p11;
reg   [63:0] tmp_83_reg_1448;
wire   [63:0] tmp_84_fu_956_p11;
reg   [63:0] tmp_84_reg_1453;
wire   [63:0] tmp_85_fu_995_p11;
reg   [63:0] tmp_85_reg_1458;
wire   [63:0] tmp_86_fu_1018_p11;
reg   [63:0] tmp_86_reg_1463;
reg   [63:0] mul8_i1_reg_1468;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] select_ln54_1_fu_1044_p3;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul8_1_i1_reg_1478;
reg   [63:0] mul8_2_i1_reg_1483;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul8_3_i1_reg_1488;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [0:0] tmp_67_fu_1099_p3;
reg   [0:0] tmp_67_reg_1493;
wire    ap_block_pp0_stage31_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln58_fu_763_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_735_p1;
wire   [63:0] select_ln55_fu_1073_p3;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage31;
wire    ap_loop_init;
wire   [63:0] select_ln55_1_fu_1080_p3;
wire   [63:0] select_ln55_2_fu_1087_p3;
reg   [63:0] add114_i77_fu_142;
wire    ap_block_pp0_stage9;
reg   [6:0] i_fu_146;
wire   [6:0] add_ln57_fu_1094_p2;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [1:0] j_1_fu_150;
reg   [1:0] ap_sig_allocacmp_j_1_load;
reg   [63:0] activations3_fu_154;
reg   [63:0] activations3_1_fu_158;
reg   [63:0] activations3_2_fu_162;
reg   [5:0] indvar_flatten_fu_166;
wire   [5:0] add_ln55_fu_679_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load;
reg    weights3_0_ce0_local;
reg    weights3_4_ce0_local;
reg    weights3_8_ce0_local;
reg    weights3_12_ce0_local;
reg    activations2_ce0_local;
reg    activations2_4_ce0_local;
reg    activations2_8_ce0_local;
reg    activations2_12_ce0_local;
reg    weights3_1_ce0_local;
reg    weights3_5_ce0_local;
reg    weights3_9_ce0_local;
reg    weights3_13_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_5_ce0_local;
reg    activations2_9_ce0_local;
reg    activations2_13_ce0_local;
reg    weights3_2_ce0_local;
reg    weights3_6_ce0_local;
reg    weights3_10_ce0_local;
reg    weights3_14_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_6_ce0_local;
reg    activations2_10_ce0_local;
reg    activations2_14_ce0_local;
reg    weights3_3_ce0_local;
reg    weights3_7_ce0_local;
reg    weights3_11_ce0_local;
reg    weights3_15_ce0_local;
reg    activations2_3_ce0_local;
reg    activations2_7_ce0_local;
reg    activations2_11_ce0_local;
reg    activations2_15_ce0_local;
reg   [63:0] grp_fu_604_p0;
reg   [63:0] grp_fu_604_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_608_p0;
reg   [63:0] grp_fu_608_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [1:0] add_ln55_1_fu_707_p2;
wire   [1:0] lshr_ln6_fu_725_p4;
wire   [3:0] or_ln_fu_755_p3;
wire   [63:0] tmp_79_fu_809_p2;
wire   [63:0] tmp_79_fu_809_p4;
wire   [63:0] tmp_79_fu_809_p6;
wire   [63:0] tmp_79_fu_809_p8;
wire   [63:0] tmp_79_fu_809_p9;
wire   [63:0] tmp_80_fu_832_p9;
wire   [63:0] tmp_81_fu_871_p2;
wire   [63:0] tmp_81_fu_871_p4;
wire   [63:0] tmp_81_fu_871_p6;
wire   [63:0] tmp_81_fu_871_p8;
wire   [63:0] tmp_81_fu_871_p9;
wire   [63:0] tmp_82_fu_894_p9;
wire   [63:0] tmp_83_fu_933_p2;
wire   [63:0] tmp_83_fu_933_p4;
wire   [63:0] tmp_83_fu_933_p6;
wire   [63:0] tmp_83_fu_933_p8;
wire   [63:0] tmp_83_fu_933_p9;
wire   [63:0] tmp_84_fu_956_p9;
wire   [63:0] tmp_85_fu_995_p2;
wire   [63:0] tmp_85_fu_995_p4;
wire   [63:0] tmp_85_fu_995_p6;
wire   [63:0] tmp_85_fu_995_p8;
wire   [63:0] tmp_85_fu_995_p9;
wire   [63:0] tmp_86_fu_1018_p9;
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
wire   [3:0] tmp_79_fu_809_p1;
wire   [3:0] tmp_79_fu_809_p3;
wire  signed [3:0] tmp_79_fu_809_p5;
wire  signed [3:0] tmp_79_fu_809_p7;
wire   [3:0] tmp_80_fu_832_p1;
wire   [3:0] tmp_80_fu_832_p3;
wire  signed [3:0] tmp_80_fu_832_p5;
wire  signed [3:0] tmp_80_fu_832_p7;
wire   [3:0] tmp_81_fu_871_p1;
wire   [3:0] tmp_81_fu_871_p3;
wire  signed [3:0] tmp_81_fu_871_p5;
wire  signed [3:0] tmp_81_fu_871_p7;
wire   [3:0] tmp_82_fu_894_p1;
wire   [3:0] tmp_82_fu_894_p3;
wire  signed [3:0] tmp_82_fu_894_p5;
wire  signed [3:0] tmp_82_fu_894_p7;
wire   [3:0] tmp_83_fu_933_p1;
wire   [3:0] tmp_83_fu_933_p3;
wire  signed [3:0] tmp_83_fu_933_p5;
wire  signed [3:0] tmp_83_fu_933_p7;
wire   [3:0] tmp_84_fu_956_p1;
wire   [3:0] tmp_84_fu_956_p3;
wire  signed [3:0] tmp_84_fu_956_p5;
wire  signed [3:0] tmp_84_fu_956_p7;
wire   [3:0] tmp_85_fu_995_p1;
wire   [3:0] tmp_85_fu_995_p3;
wire  signed [3:0] tmp_85_fu_995_p5;
wire  signed [3:0] tmp_85_fu_995_p7;
wire   [3:0] tmp_86_fu_1018_p1;
wire   [3:0] tmp_86_fu_1018_p3;
wire  signed [3:0] tmp_86_fu_1018_p5;
wire  signed [3:0] tmp_86_fu_1018_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 add114_i77_fu_142 = 64'd0;
#0 i_fu_146 = 7'd0;
#0 j_1_fu_150 = 2'd0;
#0 activations3_fu_154 = 64'd0;
#0 activations3_1_fu_158 = 64'd0;
#0 activations3_2_fu_162 = 64'd0;
#0 indvar_flatten_fu_166 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U486(.din0(tmp_79_fu_809_p2),.din1(tmp_79_fu_809_p4),.din2(tmp_79_fu_809_p6),.din3(tmp_79_fu_809_p8),.def(tmp_79_fu_809_p9),.sel(trunc_ln57_reg_1256),.dout(tmp_79_fu_809_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U487(.din0(activations2_q0),.din1(activations2_4_q0),.din2(activations2_8_q0),.din3(activations2_12_q0),.def(tmp_80_fu_832_p9),.sel(trunc_ln57_reg_1256),.dout(tmp_80_fu_832_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U488(.din0(tmp_81_fu_871_p2),.din1(tmp_81_fu_871_p4),.din2(tmp_81_fu_871_p6),.din3(tmp_81_fu_871_p8),.def(tmp_81_fu_871_p9),.sel(trunc_ln57_reg_1256),.dout(tmp_81_fu_871_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U489(.din0(activations2_1_q0),.din1(activations2_5_q0),.din2(activations2_9_q0),.din3(activations2_13_q0),.def(tmp_82_fu_894_p9),.sel(trunc_ln57_reg_1256),.dout(tmp_82_fu_894_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U490(.din0(tmp_83_fu_933_p2),.din1(tmp_83_fu_933_p4),.din2(tmp_83_fu_933_p6),.din3(tmp_83_fu_933_p8),.def(tmp_83_fu_933_p9),.sel(trunc_ln57_reg_1256),.dout(tmp_83_fu_933_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U491(.din0(activations2_2_q0),.din1(activations2_6_q0),.din2(activations2_10_q0),.din3(activations2_14_q0),.def(tmp_84_fu_956_p9),.sel(trunc_ln57_reg_1256),.dout(tmp_84_fu_956_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U492(.din0(tmp_85_fu_995_p2),.din1(tmp_85_fu_995_p4),.din2(tmp_85_fu_995_p6),.din3(tmp_85_fu_995_p8),.def(tmp_85_fu_995_p9),.sel(trunc_ln57_reg_1256),.dout(tmp_85_fu_995_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U493(.din0(activations2_3_q0),.din1(activations2_7_q0),.din2(activations2_11_q0),.din3(activations2_15_q0),.def(tmp_86_fu_1018_p9),.sel(trunc_ln57_reg_1256),.dout(tmp_86_fu_1018_p11));
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
        activations3_1_fu_158 <= activations3_load;
    end else if (((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        activations3_1_fu_158 <= select_ln55_1_fu_1080_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_2_fu_162 <= activations3_2_load;
    end else if (((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        activations3_2_fu_162 <= select_ln55_fu_1073_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_fu_154 <= activations3_1_load;
    end else if (((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        activations3_fu_154 <= select_ln55_2_fu_1087_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add114_i77_fu_142 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add114_i77_fu_142 <= grp_fu_5581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_146 <= 7'd0;
    end else if (((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        i_fu_146 <= add_ln57_fu_1094_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln55_fu_673_p2 == 1'd0))) begin
            indvar_flatten_fu_166 <= add_ln55_fu_679_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_166 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln55_fu_673_p2 == 1'd0))) begin
            j_1_fu_150 <= select_ln55_3_fu_713_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            j_1_fu_150 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln55_reg_1235 <= icmp_ln55_fu_673_p2;
        select_ln54_reg_1247 <= select_ln54_fu_699_p3;
        select_ln55_3_reg_1252 <= select_ln55_3_fu_713_p3;
        select_ln55_3_reg_1252_pp0_iter1_reg <= select_ln55_3_reg_1252;
        tmp_reg_1239 <= ap_sig_allocacmp_i_load[32'd6];
        trunc_ln57_reg_1256 <= trunc_ln57_fu_721_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_i1_reg_1478 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_2_i1_reg_1483 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_3_i1_reg_1488 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_i1_reg_1468 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_612 <= grp_fu_5581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        tmp_67_reg_1493 <= add_ln57_fu_1094_p2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_79_reg_1428 <= tmp_79_fu_809_p11;
        tmp_80_reg_1433 <= tmp_80_fu_832_p11;
        tmp_81_reg_1438 <= tmp_81_fu_871_p11;
        tmp_82_reg_1443 <= tmp_82_fu_894_p11;
        tmp_83_reg_1448 <= tmp_83_fu_933_p11;
        tmp_84_reg_1453 <= tmp_84_fu_956_p11;
        tmp_85_reg_1458 <= tmp_85_fu_995_p11;
        tmp_86_reg_1463 <= tmp_86_fu_1018_p11;
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
    end else if ((((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (select_ln55_3_reg_1252 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (select_ln55_3_reg_1252 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
        activations3_10_out_o = select_ln55_fu_1073_p3;
    end else if ((~(select_ln55_3_reg_1252_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_1252_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_67_reg_1493 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_10_out_o = grp_fu_5581_p_dout0;
    end else begin
        activations3_10_out_o = activations3_10_out_i;
    end
end
always @ (*) begin
    if ((((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (select_ln55_3_reg_1252 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (select_ln55_3_reg_1252 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | (~(select_ln55_3_reg_1252_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_1252_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_67_reg_1493 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_10_out_o_ap_vld = 1'b1;
    end else begin
        activations3_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_8_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_1252 == 2'd0) & ~(select_ln55_3_reg_1252 == 2'd1) & (icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (select_ln55_3_reg_1252 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
        activations3_8_out_o = select_ln55_2_fu_1087_p3;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_67_reg_1493 == 1'd1) & (select_ln55_3_reg_1252_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_8_out_o = grp_fu_5581_p_dout0;
    end else begin
        activations3_8_out_o = activations3_8_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_1252 == 2'd0) & ~(select_ln55_3_reg_1252 == 2'd1) & (icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (select_ln55_3_reg_1252 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_67_reg_1493 == 1'd1) & (select_ln55_3_reg_1252_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_8_out_o_ap_vld = 1'b1;
    end else begin
        activations3_8_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_9_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_1252 == 2'd0) & ~(select_ln55_3_reg_1252 == 2'd1) & (icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (select_ln55_3_reg_1252 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
        activations3_9_out_o = select_ln55_1_fu_1080_p3;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_67_reg_1493 == 1'd1) & (select_ln55_3_reg_1252_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_9_out_o = grp_fu_5581_p_dout0;
    end else begin
        activations3_9_out_o = activations3_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_1252 == 2'd0) & ~(select_ln55_3_reg_1252 == 2'd1) & (icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((icmp_ln55_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_67_fu_1099_p3 == 1'd1) & (select_ln55_3_reg_1252 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_67_reg_1493 == 1'd1) & (select_ln55_3_reg_1252_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_9_out_o_ap_vld = 1'b1;
    end else begin
        activations3_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln55_reg_1235 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_146;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_166;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_1_load = j_1_fu_150;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_604_p0 = reg_612;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_604_p0 = select_ln54_1_fu_1044_p3;
    end else begin
        grp_fu_604_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_604_p1 = mul8_3_i1_reg_1488;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_604_p1 = mul8_2_i1_reg_1483;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_604_p1 = mul8_1_i1_reg_1478;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_604_p1 = mul8_i1_reg_1468;
    end else begin
        grp_fu_604_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_608_p0 = tmp_85_reg_1458;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_608_p0 = tmp_83_reg_1448;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_608_p0 = tmp_81_reg_1438;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_608_p0 = tmp_79_reg_1428;
        end else begin
            grp_fu_608_p0 = 'bx;
        end
    end else begin
        grp_fu_608_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_608_p1 = tmp_86_reg_1463;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_608_p1 = tmp_84_reg_1453;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_608_p1 = tmp_82_reg_1443;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_608_p1 = tmp_80_reg_1433;
        end else begin
            grp_fu_608_p1 = 'bx;
        end
    end else begin
        grp_fu_608_p1 = 'bx;
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
assign activations2_10_address0 = zext_ln54_fu_735_p1;
assign activations2_10_ce0 = activations2_10_ce0_local;
assign activations2_11_address0 = zext_ln54_fu_735_p1;
assign activations2_11_ce0 = activations2_11_ce0_local;
assign activations2_12_address0 = zext_ln54_fu_735_p1;
assign activations2_12_ce0 = activations2_12_ce0_local;
assign activations2_13_address0 = zext_ln54_fu_735_p1;
assign activations2_13_ce0 = activations2_13_ce0_local;
assign activations2_14_address0 = zext_ln54_fu_735_p1;
assign activations2_14_ce0 = activations2_14_ce0_local;
assign activations2_15_address0 = zext_ln54_fu_735_p1;
assign activations2_15_ce0 = activations2_15_ce0_local;
assign activations2_1_address0 = zext_ln54_fu_735_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_2_address0 = zext_ln54_fu_735_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_3_address0 = zext_ln54_fu_735_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_4_address0 = zext_ln54_fu_735_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_5_address0 = zext_ln54_fu_735_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_6_address0 = zext_ln54_fu_735_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_7_address0 = zext_ln54_fu_735_p1;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_8_address0 = zext_ln54_fu_735_p1;
assign activations2_8_ce0 = activations2_8_ce0_local;
assign activations2_9_address0 = zext_ln54_fu_735_p1;
assign activations2_9_ce0 = activations2_9_ce0_local;
assign activations2_address0 = zext_ln54_fu_735_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln55_1_fu_707_p2 = (ap_sig_allocacmp_j_1_load + 2'd1);
assign add_ln55_fu_679_p2 = (ap_sig_allocacmp_indvar_flatten_load + 6'd1);
assign add_ln57_fu_1094_p2 = (select_ln54_reg_1247 + 7'd4);
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
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
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
assign grp_fu_3932_p_din0 = grp_fu_608_p0;
assign grp_fu_3932_p_din1 = grp_fu_608_p1;
assign grp_fu_5581_p_ce = 1'b1;
assign grp_fu_5581_p_din0 = grp_fu_604_p0;
assign grp_fu_5581_p_din1 = grp_fu_604_p1;
assign grp_fu_5581_p_opcode = 2'd0;
assign icmp_ln55_fu_673_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 6'd48) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_725_p4 = {{select_ln54_fu_699_p3[5:4]}};
assign or_ln_fu_755_p3 = {{select_ln55_3_fu_713_p3}, {lshr_ln6_fu_725_p4}};
assign select_ln54_1_fu_1044_p3 = ((tmp_reg_1239[0:0] == 1'b1) ? 64'd0 : add114_i77_fu_142);
assign select_ln54_fu_699_p3 = ((tmp_fu_691_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_load);
assign select_ln55_1_fu_1080_p3 = ((tmp_reg_1239[0:0] == 1'b1) ? activations3_9_out_i : activations3_1_fu_158);
assign select_ln55_2_fu_1087_p3 = ((tmp_reg_1239[0:0] == 1'b1) ? activations3_8_out_i : activations3_fu_154);
assign select_ln55_3_fu_713_p3 = ((tmp_fu_691_p3[0:0] == 1'b1) ? add_ln55_1_fu_707_p2 : ap_sig_allocacmp_j_1_load);
assign select_ln55_fu_1073_p3 = ((tmp_reg_1239[0:0] == 1'b1) ? activations3_10_out_i : activations3_2_fu_162);
assign tmp_67_fu_1099_p3 = add_ln57_fu_1094_p2[32'd6];
assign tmp_79_fu_809_p2 = weights3_0_q0;
assign tmp_79_fu_809_p4 = weights3_4_q0;
assign tmp_79_fu_809_p6 = weights3_8_q0;
assign tmp_79_fu_809_p8 = weights3_12_q0;
assign tmp_79_fu_809_p9 = 'bx;
assign tmp_80_fu_832_p9 = 'bx;
assign tmp_81_fu_871_p2 = weights3_1_q0;
assign tmp_81_fu_871_p4 = weights3_5_q0;
assign tmp_81_fu_871_p6 = weights3_9_q0;
assign tmp_81_fu_871_p8 = weights3_13_q0;
assign tmp_81_fu_871_p9 = 'bx;
assign tmp_82_fu_894_p9 = 'bx;
assign tmp_83_fu_933_p2 = weights3_2_q0;
assign tmp_83_fu_933_p4 = weights3_6_q0;
assign tmp_83_fu_933_p6 = weights3_10_q0;
assign tmp_83_fu_933_p8 = weights3_14_q0;
assign tmp_83_fu_933_p9 = 'bx;
assign tmp_84_fu_956_p9 = 'bx;
assign tmp_85_fu_995_p2 = weights3_3_q0;
assign tmp_85_fu_995_p4 = weights3_7_q0;
assign tmp_85_fu_995_p6 = weights3_11_q0;
assign tmp_85_fu_995_p8 = weights3_15_q0;
assign tmp_85_fu_995_p9 = 'bx;
assign tmp_86_fu_1018_p9 = 'bx;
assign tmp_fu_691_p3 = ap_sig_allocacmp_i_load[32'd6];
assign trunc_ln57_fu_721_p1 = select_ln54_fu_699_p3[3:0];
assign weights3_0_address0 = zext_ln58_fu_763_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_10_address0 = zext_ln58_fu_763_p1;
assign weights3_10_ce0 = weights3_10_ce0_local;
assign weights3_11_address0 = zext_ln58_fu_763_p1;
assign weights3_11_ce0 = weights3_11_ce0_local;
assign weights3_12_address0 = zext_ln58_fu_763_p1;
assign weights3_12_ce0 = weights3_12_ce0_local;
assign weights3_13_address0 = zext_ln58_fu_763_p1;
assign weights3_13_ce0 = weights3_13_ce0_local;
assign weights3_14_address0 = zext_ln58_fu_763_p1;
assign weights3_14_ce0 = weights3_14_ce0_local;
assign weights3_15_address0 = zext_ln58_fu_763_p1;
assign weights3_15_ce0 = weights3_15_ce0_local;
assign weights3_1_address0 = zext_ln58_fu_763_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_2_address0 = zext_ln58_fu_763_p1;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_3_address0 = zext_ln58_fu_763_p1;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_4_address0 = zext_ln58_fu_763_p1;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_5_address0 = zext_ln58_fu_763_p1;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_6_address0 = zext_ln58_fu_763_p1;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_7_address0 = zext_ln58_fu_763_p1;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_8_address0 = zext_ln58_fu_763_p1;
assign weights3_8_ce0 = weights3_8_ce0_local;
assign weights3_9_address0 = zext_ln58_fu_763_p1;
assign weights3_9_ce0 = weights3_9_ce0_local;
assign zext_ln54_fu_735_p1 = lshr_ln6_fu_725_p4;
assign zext_ln58_fu_763_p1 = or_ln_fu_755_p3;
endmodule 