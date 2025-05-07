module backprop_backprop_Pipeline_activations1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_q0,oracle_activations2_4_address0,oracle_activations2_4_ce0,oracle_activations2_4_q0,oracle_activations2_8_address0,oracle_activations2_8_ce0,oracle_activations2_8_q0,oracle_activations2_12_address0,oracle_activations2_12_ce0,oracle_activations2_12_q0,oracle_activations2_16_address0,oracle_activations2_16_ce0,oracle_activations2_16_q0,oracle_activations2_20_address0,oracle_activations2_20_ce0,oracle_activations2_20_q0,oracle_activations2_24_address0,oracle_activations2_24_ce0,oracle_activations2_24_q0,oracle_activations2_28_address0,oracle_activations2_28_ce0,oracle_activations2_28_q0,empty,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_16_address0,weights2_16_ce0,weights2_16_q0,weights2_20_address0,weights2_20_ce0,weights2_20_q0,weights2_24_address0,weights2_24_ce0,weights2_24_q0,weights2_28_address0,weights2_28_ce0,weights2_28_q0,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_q0,oracle_activations2_5_address0,oracle_activations2_5_ce0,oracle_activations2_5_q0,oracle_activations2_9_address0,oracle_activations2_9_ce0,oracle_activations2_9_q0,oracle_activations2_13_address0,oracle_activations2_13_ce0,oracle_activations2_13_q0,oracle_activations2_17_address0,oracle_activations2_17_ce0,oracle_activations2_17_q0,oracle_activations2_21_address0,oracle_activations2_21_ce0,oracle_activations2_21_q0,oracle_activations2_25_address0,oracle_activations2_25_ce0,oracle_activations2_25_q0,oracle_activations2_29_address0,oracle_activations2_29_ce0,oracle_activations2_29_q0,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_17_address0,weights2_17_ce0,weights2_17_q0,weights2_21_address0,weights2_21_ce0,weights2_21_q0,weights2_25_address0,weights2_25_ce0,weights2_25_q0,weights2_29_address0,weights2_29_ce0,weights2_29_q0,oracle_activations2_2_address0,oracle_activations2_2_ce0,oracle_activations2_2_q0,oracle_activations2_6_address0,oracle_activations2_6_ce0,oracle_activations2_6_q0,oracle_activations2_10_address0,oracle_activations2_10_ce0,oracle_activations2_10_q0,oracle_activations2_14_address0,oracle_activations2_14_ce0,oracle_activations2_14_q0,oracle_activations2_18_address0,oracle_activations2_18_ce0,oracle_activations2_18_q0,oracle_activations2_22_address0,oracle_activations2_22_ce0,oracle_activations2_22_q0,oracle_activations2_26_address0,oracle_activations2_26_ce0,oracle_activations2_26_q0,oracle_activations2_30_address0,oracle_activations2_30_ce0,oracle_activations2_30_q0,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_14_address0,weights2_14_ce0,weights2_14_q0,weights2_18_address0,weights2_18_ce0,weights2_18_q0,weights2_22_address0,weights2_22_ce0,weights2_22_q0,weights2_26_address0,weights2_26_ce0,weights2_26_q0,weights2_30_address0,weights2_30_ce0,weights2_30_q0,oracle_activations2_3_address0,oracle_activations2_3_ce0,oracle_activations2_3_q0,oracle_activations2_7_address0,oracle_activations2_7_ce0,oracle_activations2_7_q0,oracle_activations2_11_address0,oracle_activations2_11_ce0,oracle_activations2_11_q0,oracle_activations2_15_address0,oracle_activations2_15_ce0,oracle_activations2_15_q0,oracle_activations2_19_address0,oracle_activations2_19_ce0,oracle_activations2_19_q0,oracle_activations2_23_address0,oracle_activations2_23_ce0,oracle_activations2_23_q0,oracle_activations2_27_address0,oracle_activations2_27_ce0,oracle_activations2_27_q0,oracle_activations2_31_address0,oracle_activations2_31_ce0,oracle_activations2_31_q0,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_15_address0,weights2_15_ce0,weights2_15_q0,weights2_19_address0,weights2_19_ce0,weights2_19_q0,weights2_23_address0,weights2_23_ce0,weights2_23_q0,weights2_27_address0,weights2_27_ce0,weights2_27_q0,weights2_31_address0,weights2_31_ce0,weights2_31_q0,add113_i_out,add113_i_out_ap_vld,grp_fu_8393_p_din0,grp_fu_8393_p_din1,grp_fu_8393_p_opcode,grp_fu_8393_p_dout0,grp_fu_8393_p_ce,grp_fu_6440_p_din0,grp_fu_6440_p_din1,grp_fu_6440_p_dout0,grp_fu_6440_p_ce); 
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
output  [0:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
input  [63:0] oracle_activations2_q0;
output  [0:0] oracle_activations2_4_address0;
output   oracle_activations2_4_ce0;
input  [63:0] oracle_activations2_4_q0;
output  [0:0] oracle_activations2_8_address0;
output   oracle_activations2_8_ce0;
input  [63:0] oracle_activations2_8_q0;
output  [0:0] oracle_activations2_12_address0;
output   oracle_activations2_12_ce0;
input  [63:0] oracle_activations2_12_q0;
output  [0:0] oracle_activations2_16_address0;
output   oracle_activations2_16_ce0;
input  [63:0] oracle_activations2_16_q0;
output  [0:0] oracle_activations2_20_address0;
output   oracle_activations2_20_ce0;
input  [63:0] oracle_activations2_20_q0;
output  [0:0] oracle_activations2_24_address0;
output   oracle_activations2_24_ce0;
input  [63:0] oracle_activations2_24_q0;
output  [0:0] oracle_activations2_28_address0;
output   oracle_activations2_28_ce0;
input  [63:0] oracle_activations2_28_q0;
input  [6:0] empty;
output  [6:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [6:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [6:0] weights2_8_address0;
output   weights2_8_ce0;
input  [63:0] weights2_8_q0;
output  [6:0] weights2_12_address0;
output   weights2_12_ce0;
input  [63:0] weights2_12_q0;
output  [6:0] weights2_16_address0;
output   weights2_16_ce0;
input  [63:0] weights2_16_q0;
output  [6:0] weights2_20_address0;
output   weights2_20_ce0;
input  [63:0] weights2_20_q0;
output  [6:0] weights2_24_address0;
output   weights2_24_ce0;
input  [63:0] weights2_24_q0;
output  [6:0] weights2_28_address0;
output   weights2_28_ce0;
input  [63:0] weights2_28_q0;
output  [0:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
input  [63:0] oracle_activations2_1_q0;
output  [0:0] oracle_activations2_5_address0;
output   oracle_activations2_5_ce0;
input  [63:0] oracle_activations2_5_q0;
output  [0:0] oracle_activations2_9_address0;
output   oracle_activations2_9_ce0;
input  [63:0] oracle_activations2_9_q0;
output  [0:0] oracle_activations2_13_address0;
output   oracle_activations2_13_ce0;
input  [63:0] oracle_activations2_13_q0;
output  [0:0] oracle_activations2_17_address0;
output   oracle_activations2_17_ce0;
input  [63:0] oracle_activations2_17_q0;
output  [0:0] oracle_activations2_21_address0;
output   oracle_activations2_21_ce0;
input  [63:0] oracle_activations2_21_q0;
output  [0:0] oracle_activations2_25_address0;
output   oracle_activations2_25_ce0;
input  [63:0] oracle_activations2_25_q0;
output  [0:0] oracle_activations2_29_address0;
output   oracle_activations2_29_ce0;
input  [63:0] oracle_activations2_29_q0;
output  [6:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [6:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [6:0] weights2_9_address0;
output   weights2_9_ce0;
input  [63:0] weights2_9_q0;
output  [6:0] weights2_13_address0;
output   weights2_13_ce0;
input  [63:0] weights2_13_q0;
output  [6:0] weights2_17_address0;
output   weights2_17_ce0;
input  [63:0] weights2_17_q0;
output  [6:0] weights2_21_address0;
output   weights2_21_ce0;
input  [63:0] weights2_21_q0;
output  [6:0] weights2_25_address0;
output   weights2_25_ce0;
input  [63:0] weights2_25_q0;
output  [6:0] weights2_29_address0;
output   weights2_29_ce0;
input  [63:0] weights2_29_q0;
output  [0:0] oracle_activations2_2_address0;
output   oracle_activations2_2_ce0;
input  [63:0] oracle_activations2_2_q0;
output  [0:0] oracle_activations2_6_address0;
output   oracle_activations2_6_ce0;
input  [63:0] oracle_activations2_6_q0;
output  [0:0] oracle_activations2_10_address0;
output   oracle_activations2_10_ce0;
input  [63:0] oracle_activations2_10_q0;
output  [0:0] oracle_activations2_14_address0;
output   oracle_activations2_14_ce0;
input  [63:0] oracle_activations2_14_q0;
output  [0:0] oracle_activations2_18_address0;
output   oracle_activations2_18_ce0;
input  [63:0] oracle_activations2_18_q0;
output  [0:0] oracle_activations2_22_address0;
output   oracle_activations2_22_ce0;
input  [63:0] oracle_activations2_22_q0;
output  [0:0] oracle_activations2_26_address0;
output   oracle_activations2_26_ce0;
input  [63:0] oracle_activations2_26_q0;
output  [0:0] oracle_activations2_30_address0;
output   oracle_activations2_30_ce0;
input  [63:0] oracle_activations2_30_q0;
output  [6:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [6:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [6:0] weights2_10_address0;
output   weights2_10_ce0;
input  [63:0] weights2_10_q0;
output  [6:0] weights2_14_address0;
output   weights2_14_ce0;
input  [63:0] weights2_14_q0;
output  [6:0] weights2_18_address0;
output   weights2_18_ce0;
input  [63:0] weights2_18_q0;
output  [6:0] weights2_22_address0;
output   weights2_22_ce0;
input  [63:0] weights2_22_q0;
output  [6:0] weights2_26_address0;
output   weights2_26_ce0;
input  [63:0] weights2_26_q0;
output  [6:0] weights2_30_address0;
output   weights2_30_ce0;
input  [63:0] weights2_30_q0;
output  [0:0] oracle_activations2_3_address0;
output   oracle_activations2_3_ce0;
input  [63:0] oracle_activations2_3_q0;
output  [0:0] oracle_activations2_7_address0;
output   oracle_activations2_7_ce0;
input  [63:0] oracle_activations2_7_q0;
output  [0:0] oracle_activations2_11_address0;
output   oracle_activations2_11_ce0;
input  [63:0] oracle_activations2_11_q0;
output  [0:0] oracle_activations2_15_address0;
output   oracle_activations2_15_ce0;
input  [63:0] oracle_activations2_15_q0;
output  [0:0] oracle_activations2_19_address0;
output   oracle_activations2_19_ce0;
input  [63:0] oracle_activations2_19_q0;
output  [0:0] oracle_activations2_23_address0;
output   oracle_activations2_23_ce0;
input  [63:0] oracle_activations2_23_q0;
output  [0:0] oracle_activations2_27_address0;
output   oracle_activations2_27_ce0;
input  [63:0] oracle_activations2_27_q0;
output  [0:0] oracle_activations2_31_address0;
output   oracle_activations2_31_ce0;
input  [63:0] oracle_activations2_31_q0;
output  [6:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [6:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [6:0] weights2_11_address0;
output   weights2_11_ce0;
input  [63:0] weights2_11_q0;
output  [6:0] weights2_15_address0;
output   weights2_15_ce0;
input  [63:0] weights2_15_q0;
output  [6:0] weights2_19_address0;
output   weights2_19_ce0;
input  [63:0] weights2_19_q0;
output  [6:0] weights2_23_address0;
output   weights2_23_ce0;
input  [63:0] weights2_23_q0;
output  [6:0] weights2_27_address0;
output   weights2_27_ce0;
input  [63:0] weights2_27_q0;
output  [6:0] weights2_31_address0;
output   weights2_31_ce0;
input  [63:0] weights2_31_q0;
output  [63:0] add113_i_out;
output   add113_i_out_ap_vld;
output  [63:0] grp_fu_8393_p_din0;
output  [63:0] grp_fu_8393_p_din1;
output  [0:0] grp_fu_8393_p_opcode;
input  [63:0] grp_fu_8393_p_dout0;
output   grp_fu_8393_p_ce;
output  [63:0] grp_fu_6440_p_din0;
output  [63:0] grp_fu_6440_p_din1;
input  [63:0] grp_fu_6440_p_dout0;
output   grp_fu_6440_p_ce;
reg ap_idle;
reg add113_i_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_8_reg_1668;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_1055;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] j_3_reg_1662;
wire   [63:0] tmp_s_fu_1176_p19;
reg   [63:0] tmp_s_reg_1992;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_109_fu_1248_p19;
reg   [63:0] tmp_109_reg_1997;
wire   [63:0] tmp_110_fu_1288_p19;
reg   [63:0] tmp_110_reg_2002;
wire   [63:0] tmp_111_fu_1360_p19;
reg   [63:0] tmp_111_reg_2007;
wire   [63:0] tmp_112_fu_1400_p19;
reg   [63:0] tmp_112_reg_2012;
wire   [63:0] tmp_113_fu_1472_p19;
reg   [63:0] tmp_113_reg_2017;
wire   [63:0] tmp_114_fu_1512_p19;
reg   [63:0] tmp_114_reg_2022;
wire   [63:0] tmp_115_fu_1584_p19;
reg   [63:0] tmp_115_reg_2027;
reg   [63:0] mul8_i3_reg_2032;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul8_1_i3_reg_2042;
reg   [63:0] mul8_2_i3_reg_2047;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul8_3_i3_reg_2052;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln101_1_fu_1095_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln105_fu_1137_p1;
reg   [63:0] add113_i_fu_194;
wire    ap_block_pp0_stage8;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [6:0] j_fu_198;
wire   [6:0] add_ln104_fu_1628_p2;
wire    ap_block_pp0_stage31_11001;
reg   [6:0] ap_sig_allocacmp_j_3;
wire    ap_block_pp0_stage8_01001;
reg    oracle_activations2_ce0_local;
reg    oracle_activations2_4_ce0_local;
reg    oracle_activations2_8_ce0_local;
reg    oracle_activations2_12_ce0_local;
reg    oracle_activations2_16_ce0_local;
reg    oracle_activations2_20_ce0_local;
reg    oracle_activations2_24_ce0_local;
reg    oracle_activations2_28_ce0_local;
reg    weights2_0_ce0_local;
reg    weights2_4_ce0_local;
reg    weights2_8_ce0_local;
reg    weights2_12_ce0_local;
reg    weights2_16_ce0_local;
reg    weights2_20_ce0_local;
reg    weights2_24_ce0_local;
reg    weights2_28_ce0_local;
reg    oracle_activations2_1_ce0_local;
reg    oracle_activations2_5_ce0_local;
reg    oracle_activations2_9_ce0_local;
reg    oracle_activations2_13_ce0_local;
reg    oracle_activations2_17_ce0_local;
reg    oracle_activations2_21_ce0_local;
reg    oracle_activations2_25_ce0_local;
reg    oracle_activations2_29_ce0_local;
reg    weights2_1_ce0_local;
reg    weights2_5_ce0_local;
reg    weights2_9_ce0_local;
reg    weights2_13_ce0_local;
reg    weights2_17_ce0_local;
reg    weights2_21_ce0_local;
reg    weights2_25_ce0_local;
reg    weights2_29_ce0_local;
reg    oracle_activations2_2_ce0_local;
reg    oracle_activations2_6_ce0_local;
reg    oracle_activations2_10_ce0_local;
reg    oracle_activations2_14_ce0_local;
reg    oracle_activations2_18_ce0_local;
reg    oracle_activations2_22_ce0_local;
reg    oracle_activations2_26_ce0_local;
reg    oracle_activations2_30_ce0_local;
reg    weights2_2_ce0_local;
reg    weights2_6_ce0_local;
reg    weights2_10_ce0_local;
reg    weights2_14_ce0_local;
reg    weights2_18_ce0_local;
reg    weights2_22_ce0_local;
reg    weights2_26_ce0_local;
reg    weights2_30_ce0_local;
reg    oracle_activations2_3_ce0_local;
reg    oracle_activations2_7_ce0_local;
reg    oracle_activations2_11_ce0_local;
reg    oracle_activations2_15_ce0_local;
reg    oracle_activations2_19_ce0_local;
reg    oracle_activations2_23_ce0_local;
reg    oracle_activations2_27_ce0_local;
reg    oracle_activations2_31_ce0_local;
reg    weights2_3_ce0_local;
reg    weights2_7_ce0_local;
reg    weights2_11_ce0_local;
reg    weights2_15_ce0_local;
reg    weights2_19_ce0_local;
reg    weights2_23_ce0_local;
reg    weights2_27_ce0_local;
reg    weights2_31_ce0_local;
reg   [63:0] grp_fu_1047_p0;
reg   [63:0] grp_fu_1047_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_1051_p0;
reg   [63:0] grp_fu_1051_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [1:0] lshr_ln101_1_fu_1081_p4;
wire   [6:0] zext_ln101_fu_1091_p1;
wire   [6:0] add_ln105_fu_1131_p2;
wire   [63:0] tmp_s_fu_1176_p17;
wire   [4:0] trunc_ln104_fu_1173_p1;
wire   [63:0] tmp_109_fu_1248_p2;
wire   [63:0] tmp_109_fu_1248_p4;
wire   [63:0] tmp_109_fu_1248_p6;
wire   [63:0] tmp_109_fu_1248_p8;
wire   [63:0] tmp_109_fu_1248_p10;
wire   [63:0] tmp_109_fu_1248_p12;
wire   [63:0] tmp_109_fu_1248_p14;
wire   [63:0] tmp_109_fu_1248_p16;
wire   [63:0] tmp_109_fu_1248_p17;
wire   [63:0] tmp_110_fu_1288_p17;
wire   [63:0] tmp_111_fu_1360_p2;
wire   [63:0] tmp_111_fu_1360_p4;
wire   [63:0] tmp_111_fu_1360_p6;
wire   [63:0] tmp_111_fu_1360_p8;
wire   [63:0] tmp_111_fu_1360_p10;
wire   [63:0] tmp_111_fu_1360_p12;
wire   [63:0] tmp_111_fu_1360_p14;
wire   [63:0] tmp_111_fu_1360_p16;
wire   [63:0] tmp_111_fu_1360_p17;
wire   [63:0] tmp_112_fu_1400_p17;
wire   [63:0] tmp_113_fu_1472_p2;
wire   [63:0] tmp_113_fu_1472_p4;
wire   [63:0] tmp_113_fu_1472_p6;
wire   [63:0] tmp_113_fu_1472_p8;
wire   [63:0] tmp_113_fu_1472_p10;
wire   [63:0] tmp_113_fu_1472_p12;
wire   [63:0] tmp_113_fu_1472_p14;
wire   [63:0] tmp_113_fu_1472_p16;
wire   [63:0] tmp_113_fu_1472_p17;
wire   [63:0] tmp_114_fu_1512_p17;
wire   [63:0] tmp_115_fu_1584_p2;
wire   [63:0] tmp_115_fu_1584_p4;
wire   [63:0] tmp_115_fu_1584_p6;
wire   [63:0] tmp_115_fu_1584_p8;
wire   [63:0] tmp_115_fu_1584_p10;
wire   [63:0] tmp_115_fu_1584_p12;
wire   [63:0] tmp_115_fu_1584_p14;
wire   [63:0] tmp_115_fu_1584_p16;
wire   [63:0] tmp_115_fu_1584_p17;
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
wire   [4:0] tmp_s_fu_1176_p1;
wire   [4:0] tmp_s_fu_1176_p3;
wire   [4:0] tmp_s_fu_1176_p5;
wire   [4:0] tmp_s_fu_1176_p7;
wire  signed [4:0] tmp_s_fu_1176_p9;
wire  signed [4:0] tmp_s_fu_1176_p11;
wire  signed [4:0] tmp_s_fu_1176_p13;
wire  signed [4:0] tmp_s_fu_1176_p15;
wire   [4:0] tmp_109_fu_1248_p1;
wire   [4:0] tmp_109_fu_1248_p3;
wire   [4:0] tmp_109_fu_1248_p5;
wire   [4:0] tmp_109_fu_1248_p7;
wire  signed [4:0] tmp_109_fu_1248_p9;
wire  signed [4:0] tmp_109_fu_1248_p11;
wire  signed [4:0] tmp_109_fu_1248_p13;
wire  signed [4:0] tmp_109_fu_1248_p15;
wire   [4:0] tmp_110_fu_1288_p1;
wire   [4:0] tmp_110_fu_1288_p3;
wire   [4:0] tmp_110_fu_1288_p5;
wire   [4:0] tmp_110_fu_1288_p7;
wire  signed [4:0] tmp_110_fu_1288_p9;
wire  signed [4:0] tmp_110_fu_1288_p11;
wire  signed [4:0] tmp_110_fu_1288_p13;
wire  signed [4:0] tmp_110_fu_1288_p15;
wire   [4:0] tmp_111_fu_1360_p1;
wire   [4:0] tmp_111_fu_1360_p3;
wire   [4:0] tmp_111_fu_1360_p5;
wire   [4:0] tmp_111_fu_1360_p7;
wire  signed [4:0] tmp_111_fu_1360_p9;
wire  signed [4:0] tmp_111_fu_1360_p11;
wire  signed [4:0] tmp_111_fu_1360_p13;
wire  signed [4:0] tmp_111_fu_1360_p15;
wire   [4:0] tmp_112_fu_1400_p1;
wire   [4:0] tmp_112_fu_1400_p3;
wire   [4:0] tmp_112_fu_1400_p5;
wire   [4:0] tmp_112_fu_1400_p7;
wire  signed [4:0] tmp_112_fu_1400_p9;
wire  signed [4:0] tmp_112_fu_1400_p11;
wire  signed [4:0] tmp_112_fu_1400_p13;
wire  signed [4:0] tmp_112_fu_1400_p15;
wire   [4:0] tmp_113_fu_1472_p1;
wire   [4:0] tmp_113_fu_1472_p3;
wire   [4:0] tmp_113_fu_1472_p5;
wire   [4:0] tmp_113_fu_1472_p7;
wire  signed [4:0] tmp_113_fu_1472_p9;
wire  signed [4:0] tmp_113_fu_1472_p11;
wire  signed [4:0] tmp_113_fu_1472_p13;
wire  signed [4:0] tmp_113_fu_1472_p15;
wire   [4:0] tmp_114_fu_1512_p1;
wire   [4:0] tmp_114_fu_1512_p3;
wire   [4:0] tmp_114_fu_1512_p5;
wire   [4:0] tmp_114_fu_1512_p7;
wire  signed [4:0] tmp_114_fu_1512_p9;
wire  signed [4:0] tmp_114_fu_1512_p11;
wire  signed [4:0] tmp_114_fu_1512_p13;
wire  signed [4:0] tmp_114_fu_1512_p15;
wire   [4:0] tmp_115_fu_1584_p1;
wire   [4:0] tmp_115_fu_1584_p3;
wire   [4:0] tmp_115_fu_1584_p5;
wire   [4:0] tmp_115_fu_1584_p7;
wire  signed [4:0] tmp_115_fu_1584_p9;
wire  signed [4:0] tmp_115_fu_1584_p11;
wire  signed [4:0] tmp_115_fu_1584_p13;
wire  signed [4:0] tmp_115_fu_1584_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 add113_i_fu_194 = 64'd0;
#0 j_fu_198 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1303(.din0(oracle_activations2_q0),.din1(oracle_activations2_4_q0),.din2(oracle_activations2_8_q0),.din3(oracle_activations2_12_q0),.din4(oracle_activations2_16_q0),.din5(oracle_activations2_20_q0),.din6(oracle_activations2_24_q0),.din7(oracle_activations2_28_q0),.def(tmp_s_fu_1176_p17),.sel(trunc_ln104_fu_1173_p1),.dout(tmp_s_fu_1176_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1304(.din0(tmp_109_fu_1248_p2),.din1(tmp_109_fu_1248_p4),.din2(tmp_109_fu_1248_p6),.din3(tmp_109_fu_1248_p8),.din4(tmp_109_fu_1248_p10),.din5(tmp_109_fu_1248_p12),.din6(tmp_109_fu_1248_p14),.din7(tmp_109_fu_1248_p16),.def(tmp_109_fu_1248_p17),.sel(trunc_ln104_fu_1173_p1),.dout(tmp_109_fu_1248_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1305(.din0(oracle_activations2_1_q0),.din1(oracle_activations2_5_q0),.din2(oracle_activations2_9_q0),.din3(oracle_activations2_13_q0),.din4(oracle_activations2_17_q0),.din5(oracle_activations2_21_q0),.din6(oracle_activations2_25_q0),.din7(oracle_activations2_29_q0),.def(tmp_110_fu_1288_p17),.sel(trunc_ln104_fu_1173_p1),.dout(tmp_110_fu_1288_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1306(.din0(tmp_111_fu_1360_p2),.din1(tmp_111_fu_1360_p4),.din2(tmp_111_fu_1360_p6),.din3(tmp_111_fu_1360_p8),.din4(tmp_111_fu_1360_p10),.din5(tmp_111_fu_1360_p12),.din6(tmp_111_fu_1360_p14),.din7(tmp_111_fu_1360_p16),.def(tmp_111_fu_1360_p17),.sel(trunc_ln104_fu_1173_p1),.dout(tmp_111_fu_1360_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1307(.din0(oracle_activations2_2_q0),.din1(oracle_activations2_6_q0),.din2(oracle_activations2_10_q0),.din3(oracle_activations2_14_q0),.din4(oracle_activations2_18_q0),.din5(oracle_activations2_22_q0),.din6(oracle_activations2_26_q0),.din7(oracle_activations2_30_q0),.def(tmp_112_fu_1400_p17),.sel(trunc_ln104_fu_1173_p1),.dout(tmp_112_fu_1400_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1308(.din0(tmp_113_fu_1472_p2),.din1(tmp_113_fu_1472_p4),.din2(tmp_113_fu_1472_p6),.din3(tmp_113_fu_1472_p8),.din4(tmp_113_fu_1472_p10),.din5(tmp_113_fu_1472_p12),.din6(tmp_113_fu_1472_p14),.din7(tmp_113_fu_1472_p16),.def(tmp_113_fu_1472_p17),.sel(trunc_ln104_fu_1173_p1),.dout(tmp_113_fu_1472_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1309(.din0(oracle_activations2_3_q0),.din1(oracle_activations2_7_q0),.din2(oracle_activations2_11_q0),.din3(oracle_activations2_15_q0),.din4(oracle_activations2_19_q0),.din5(oracle_activations2_23_q0),.din6(oracle_activations2_27_q0),.din7(oracle_activations2_31_q0),.def(tmp_114_fu_1512_p17),.sel(trunc_ln104_fu_1173_p1),.dout(tmp_114_fu_1512_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1310(.din0(tmp_115_fu_1584_p2),.din1(tmp_115_fu_1584_p4),.din2(tmp_115_fu_1584_p6),.din3(tmp_115_fu_1584_p8),.din4(tmp_115_fu_1584_p10),.din5(tmp_115_fu_1584_p12),.din6(tmp_115_fu_1584_p14),.din7(tmp_115_fu_1584_p16),.def(tmp_115_fu_1584_p17),.sel(trunc_ln104_fu_1173_p1),.dout(tmp_115_fu_1584_p19));
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add113_i_fu_194 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add113_i_fu_194 <= grp_fu_8393_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_198 <= 7'd0;
    end else if (((tmp_8_reg_1668 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        j_fu_198 <= add_ln104_fu_1628_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_3_reg_1662 <= ap_sig_allocacmp_j_3;
        tmp_8_reg_1668 <= ap_sig_allocacmp_j_3[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_i3_reg_2042 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_2_i3_reg_2047 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_3_i3_reg_2052 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_i3_reg_2032 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_1055 <= grp_fu_8393_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_109_reg_1997 <= tmp_109_fu_1248_p19;
        tmp_110_reg_2002 <= tmp_110_fu_1288_p19;
        tmp_111_reg_2007 <= tmp_111_fu_1360_p19;
        tmp_112_reg_2012 <= tmp_112_fu_1400_p19;
        tmp_113_reg_2017 <= tmp_113_fu_1472_p19;
        tmp_114_reg_2022 <= tmp_114_fu_1512_p19;
        tmp_115_reg_2027 <= tmp_115_fu_1584_p19;
        tmp_s_reg_1992 <= tmp_s_fu_1176_p19;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_8_reg_1668 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add113_i_out_ap_vld = 1'b1;
    end else begin
        add113_i_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_8_reg_1668 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_3 = j_fu_198;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_1047_p0 = reg_1055;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1047_p0 = add113_i_fu_194;
    end else begin
        grp_fu_1047_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1047_p1 = mul8_3_i3_reg_2052;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1047_p1 = mul8_2_i3_reg_2047;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1047_p1 = mul8_1_i3_reg_2042;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1047_p1 = mul8_i3_reg_2032;
    end else begin
        grp_fu_1047_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1051_p0 = tmp_114_reg_2022;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1051_p0 = tmp_112_reg_2012;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1051_p0 = tmp_110_reg_2002;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1051_p0 = tmp_s_reg_1992;
        end else begin
            grp_fu_1051_p0 = 'bx;
        end
    end else begin
        grp_fu_1051_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1051_p1 = tmp_115_reg_2027;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1051_p1 = tmp_113_reg_2017;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1051_p1 = tmp_111_reg_2007;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1051_p1 = tmp_109_reg_1997;
        end else begin
            grp_fu_1051_p1 = 'bx;
        end
    end else begin
        grp_fu_1051_p1 = 'bx;
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
        oracle_activations2_16_ce0_local = 1'b1;
    end else begin
        oracle_activations2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_17_ce0_local = 1'b1;
    end else begin
        oracle_activations2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_18_ce0_local = 1'b1;
    end else begin
        oracle_activations2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_19_ce0_local = 1'b1;
    end else begin
        oracle_activations2_19_ce0_local = 1'b0;
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
        oracle_activations2_20_ce0_local = 1'b1;
    end else begin
        oracle_activations2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_21_ce0_local = 1'b1;
    end else begin
        oracle_activations2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_22_ce0_local = 1'b1;
    end else begin
        oracle_activations2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_23_ce0_local = 1'b1;
    end else begin
        oracle_activations2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_24_ce0_local = 1'b1;
    end else begin
        oracle_activations2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_25_ce0_local = 1'b1;
    end else begin
        oracle_activations2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_26_ce0_local = 1'b1;
    end else begin
        oracle_activations2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_27_ce0_local = 1'b1;
    end else begin
        oracle_activations2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_28_ce0_local = 1'b1;
    end else begin
        oracle_activations2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_29_ce0_local = 1'b1;
    end else begin
        oracle_activations2_29_ce0_local = 1'b0;
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
        oracle_activations2_30_ce0_local = 1'b1;
    end else begin
        oracle_activations2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_31_ce0_local = 1'b1;
    end else begin
        oracle_activations2_31_ce0_local = 1'b0;
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
        weights2_16_ce0_local = 1'b1;
    end else begin
        weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_17_ce0_local = 1'b1;
    end else begin
        weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_18_ce0_local = 1'b1;
    end else begin
        weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_19_ce0_local = 1'b1;
    end else begin
        weights2_19_ce0_local = 1'b0;
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
        weights2_20_ce0_local = 1'b1;
    end else begin
        weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_21_ce0_local = 1'b1;
    end else begin
        weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_22_ce0_local = 1'b1;
    end else begin
        weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_23_ce0_local = 1'b1;
    end else begin
        weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_24_ce0_local = 1'b1;
    end else begin
        weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_25_ce0_local = 1'b1;
    end else begin
        weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_26_ce0_local = 1'b1;
    end else begin
        weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_27_ce0_local = 1'b1;
    end else begin
        weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_28_ce0_local = 1'b1;
    end else begin
        weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_29_ce0_local = 1'b1;
    end else begin
        weights2_29_ce0_local = 1'b0;
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
        weights2_30_ce0_local = 1'b1;
    end else begin
        weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_31_ce0_local = 1'b1;
    end else begin
        weights2_31_ce0_local = 1'b0;
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
assign add113_i_out = add113_i_fu_194;
assign add_ln104_fu_1628_p2 = (j_3_reg_1662 + 7'd4);
assign add_ln105_fu_1131_p2 = (zext_ln101_fu_1091_p1 + empty);
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
assign grp_fu_6440_p_ce = 1'b1;
assign grp_fu_6440_p_din0 = grp_fu_1051_p0;
assign grp_fu_6440_p_din1 = grp_fu_1051_p1;
assign grp_fu_8393_p_ce = 1'b1;
assign grp_fu_8393_p_din0 = grp_fu_1047_p0;
assign grp_fu_8393_p_din1 = grp_fu_1047_p1;
assign grp_fu_8393_p_opcode = 2'd0;
assign lshr_ln101_1_fu_1081_p4 = {{ap_sig_allocacmp_j_3[6:5]}};
assign oracle_activations2_10_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_10_ce0 = oracle_activations2_10_ce0_local;
assign oracle_activations2_11_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_11_ce0 = oracle_activations2_11_ce0_local;
assign oracle_activations2_12_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_12_ce0 = oracle_activations2_12_ce0_local;
assign oracle_activations2_13_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_13_ce0 = oracle_activations2_13_ce0_local;
assign oracle_activations2_14_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_14_ce0 = oracle_activations2_14_ce0_local;
assign oracle_activations2_15_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_15_ce0 = oracle_activations2_15_ce0_local;
assign oracle_activations2_16_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_16_ce0 = oracle_activations2_16_ce0_local;
assign oracle_activations2_17_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_17_ce0 = oracle_activations2_17_ce0_local;
assign oracle_activations2_18_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_18_ce0 = oracle_activations2_18_ce0_local;
assign oracle_activations2_19_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_19_ce0 = oracle_activations2_19_ce0_local;
assign oracle_activations2_1_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_20_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_20_ce0 = oracle_activations2_20_ce0_local;
assign oracle_activations2_21_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_21_ce0 = oracle_activations2_21_ce0_local;
assign oracle_activations2_22_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_22_ce0 = oracle_activations2_22_ce0_local;
assign oracle_activations2_23_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_23_ce0 = oracle_activations2_23_ce0_local;
assign oracle_activations2_24_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_24_ce0 = oracle_activations2_24_ce0_local;
assign oracle_activations2_25_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_25_ce0 = oracle_activations2_25_ce0_local;
assign oracle_activations2_26_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_26_ce0 = oracle_activations2_26_ce0_local;
assign oracle_activations2_27_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_27_ce0 = oracle_activations2_27_ce0_local;
assign oracle_activations2_28_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_28_ce0 = oracle_activations2_28_ce0_local;
assign oracle_activations2_29_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_29_ce0 = oracle_activations2_29_ce0_local;
assign oracle_activations2_2_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_2_ce0 = oracle_activations2_2_ce0_local;
assign oracle_activations2_30_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_30_ce0 = oracle_activations2_30_ce0_local;
assign oracle_activations2_31_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_31_ce0 = oracle_activations2_31_ce0_local;
assign oracle_activations2_3_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_3_ce0 = oracle_activations2_3_ce0_local;
assign oracle_activations2_4_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_4_ce0 = oracle_activations2_4_ce0_local;
assign oracle_activations2_5_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_5_ce0 = oracle_activations2_5_ce0_local;
assign oracle_activations2_6_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_6_ce0 = oracle_activations2_6_ce0_local;
assign oracle_activations2_7_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_7_ce0 = oracle_activations2_7_ce0_local;
assign oracle_activations2_8_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_8_ce0 = oracle_activations2_8_ce0_local;
assign oracle_activations2_9_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_9_ce0 = oracle_activations2_9_ce0_local;
assign oracle_activations2_address0 = zext_ln101_1_fu_1095_p1;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign tmp_109_fu_1248_p10 = weights2_16_q0;
assign tmp_109_fu_1248_p12 = weights2_20_q0;
assign tmp_109_fu_1248_p14 = weights2_24_q0;
assign tmp_109_fu_1248_p16 = weights2_28_q0;
assign tmp_109_fu_1248_p17 = 'bx;
assign tmp_109_fu_1248_p2 = weights2_0_q0;
assign tmp_109_fu_1248_p4 = weights2_4_q0;
assign tmp_109_fu_1248_p6 = weights2_8_q0;
assign tmp_109_fu_1248_p8 = weights2_12_q0;
assign tmp_110_fu_1288_p17 = 'bx;
assign tmp_111_fu_1360_p10 = weights2_17_q0;
assign tmp_111_fu_1360_p12 = weights2_21_q0;
assign tmp_111_fu_1360_p14 = weights2_25_q0;
assign tmp_111_fu_1360_p16 = weights2_29_q0;
assign tmp_111_fu_1360_p17 = 'bx;
assign tmp_111_fu_1360_p2 = weights2_1_q0;
assign tmp_111_fu_1360_p4 = weights2_5_q0;
assign tmp_111_fu_1360_p6 = weights2_9_q0;
assign tmp_111_fu_1360_p8 = weights2_13_q0;
assign tmp_112_fu_1400_p17 = 'bx;
assign tmp_113_fu_1472_p10 = weights2_18_q0;
assign tmp_113_fu_1472_p12 = weights2_22_q0;
assign tmp_113_fu_1472_p14 = weights2_26_q0;
assign tmp_113_fu_1472_p16 = weights2_30_q0;
assign tmp_113_fu_1472_p17 = 'bx;
assign tmp_113_fu_1472_p2 = weights2_2_q0;
assign tmp_113_fu_1472_p4 = weights2_6_q0;
assign tmp_113_fu_1472_p6 = weights2_10_q0;
assign tmp_113_fu_1472_p8 = weights2_14_q0;
assign tmp_114_fu_1512_p17 = 'bx;
assign tmp_115_fu_1584_p10 = weights2_19_q0;
assign tmp_115_fu_1584_p12 = weights2_23_q0;
assign tmp_115_fu_1584_p14 = weights2_27_q0;
assign tmp_115_fu_1584_p16 = weights2_31_q0;
assign tmp_115_fu_1584_p17 = 'bx;
assign tmp_115_fu_1584_p2 = weights2_3_q0;
assign tmp_115_fu_1584_p4 = weights2_7_q0;
assign tmp_115_fu_1584_p6 = weights2_11_q0;
assign tmp_115_fu_1584_p8 = weights2_15_q0;
assign tmp_s_fu_1176_p17 = 'bx;
assign trunc_ln104_fu_1173_p1 = j_3_reg_1662[4:0];
assign weights2_0_address0 = zext_ln105_fu_1137_p1;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_10_address0 = zext_ln105_fu_1137_p1;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_11_address0 = zext_ln105_fu_1137_p1;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_12_address0 = zext_ln105_fu_1137_p1;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_13_address0 = zext_ln105_fu_1137_p1;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_14_address0 = zext_ln105_fu_1137_p1;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_15_address0 = zext_ln105_fu_1137_p1;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_16_address0 = zext_ln105_fu_1137_p1;
assign weights2_16_ce0 = weights2_16_ce0_local;
assign weights2_17_address0 = zext_ln105_fu_1137_p1;
assign weights2_17_ce0 = weights2_17_ce0_local;
assign weights2_18_address0 = zext_ln105_fu_1137_p1;
assign weights2_18_ce0 = weights2_18_ce0_local;
assign weights2_19_address0 = zext_ln105_fu_1137_p1;
assign weights2_19_ce0 = weights2_19_ce0_local;
assign weights2_1_address0 = zext_ln105_fu_1137_p1;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_20_address0 = zext_ln105_fu_1137_p1;
assign weights2_20_ce0 = weights2_20_ce0_local;
assign weights2_21_address0 = zext_ln105_fu_1137_p1;
assign weights2_21_ce0 = weights2_21_ce0_local;
assign weights2_22_address0 = zext_ln105_fu_1137_p1;
assign weights2_22_ce0 = weights2_22_ce0_local;
assign weights2_23_address0 = zext_ln105_fu_1137_p1;
assign weights2_23_ce0 = weights2_23_ce0_local;
assign weights2_24_address0 = zext_ln105_fu_1137_p1;
assign weights2_24_ce0 = weights2_24_ce0_local;
assign weights2_25_address0 = zext_ln105_fu_1137_p1;
assign weights2_25_ce0 = weights2_25_ce0_local;
assign weights2_26_address0 = zext_ln105_fu_1137_p1;
assign weights2_26_ce0 = weights2_26_ce0_local;
assign weights2_27_address0 = zext_ln105_fu_1137_p1;
assign weights2_27_ce0 = weights2_27_ce0_local;
assign weights2_28_address0 = zext_ln105_fu_1137_p1;
assign weights2_28_ce0 = weights2_28_ce0_local;
assign weights2_29_address0 = zext_ln105_fu_1137_p1;
assign weights2_29_ce0 = weights2_29_ce0_local;
assign weights2_2_address0 = zext_ln105_fu_1137_p1;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_30_address0 = zext_ln105_fu_1137_p1;
assign weights2_30_ce0 = weights2_30_ce0_local;
assign weights2_31_address0 = zext_ln105_fu_1137_p1;
assign weights2_31_ce0 = weights2_31_ce0_local;
assign weights2_3_address0 = zext_ln105_fu_1137_p1;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_4_address0 = zext_ln105_fu_1137_p1;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_5_address0 = zext_ln105_fu_1137_p1;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_6_address0 = zext_ln105_fu_1137_p1;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_7_address0 = zext_ln105_fu_1137_p1;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_8_address0 = zext_ln105_fu_1137_p1;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_9_address0 = zext_ln105_fu_1137_p1;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign zext_ln101_1_fu_1095_p1 = lshr_ln101_1_fu_1081_p4;
assign zext_ln101_fu_1091_p1 = lshr_ln101_1_fu_1081_p4;
assign zext_ln105_fu_1137_p1 = add_ln105_fu_1131_p2;
endmodule 