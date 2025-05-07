module backprop_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations3_2_load,activations3_load,activations3_1_load,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_8_address0,weights3_8_ce0,weights3_8_q0,weights3_10_address0,weights3_10_ce0,weights3_10_q0,weights3_12_address0,weights3_12_ce0,weights3_12_q0,weights3_14_address0,weights3_14_ce0,weights3_14_q0,weights3_16_address0,weights3_16_ce0,weights3_16_q0,weights3_18_address0,weights3_18_ce0,weights3_18_q0,weights3_20_address0,weights3_20_ce0,weights3_20_q0,weights3_22_address0,weights3_22_ce0,weights3_22_q0,weights3_24_address0,weights3_24_ce0,weights3_24_q0,weights3_26_address0,weights3_26_ce0,weights3_26_q0,weights3_28_address0,weights3_28_ce0,weights3_28_q0,weights3_30_address0,weights3_30_ce0,weights3_30_q0,activations2_address0,activations2_ce0,activations2_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,activations2_4_address0,activations2_4_ce0,activations2_4_q0,activations2_6_address0,activations2_6_ce0,activations2_6_q0,activations2_8_address0,activations2_8_ce0,activations2_8_q0,activations2_10_address0,activations2_10_ce0,activations2_10_q0,activations2_12_address0,activations2_12_ce0,activations2_12_q0,activations2_14_address0,activations2_14_ce0,activations2_14_q0,activations2_16_address0,activations2_16_ce0,activations2_16_q0,activations2_18_address0,activations2_18_ce0,activations2_18_q0,activations2_20_address0,activations2_20_ce0,activations2_20_q0,activations2_22_address0,activations2_22_ce0,activations2_22_q0,activations2_24_address0,activations2_24_ce0,activations2_24_q0,activations2_26_address0,activations2_26_ce0,activations2_26_q0,activations2_28_address0,activations2_28_ce0,activations2_28_q0,activations2_30_address0,activations2_30_ce0,activations2_30_q0,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_7_address0,weights3_7_ce0,weights3_7_q0,weights3_9_address0,weights3_9_ce0,weights3_9_q0,weights3_11_address0,weights3_11_ce0,weights3_11_q0,weights3_13_address0,weights3_13_ce0,weights3_13_q0,weights3_15_address0,weights3_15_ce0,weights3_15_q0,weights3_17_address0,weights3_17_ce0,weights3_17_q0,weights3_19_address0,weights3_19_ce0,weights3_19_q0,weights3_21_address0,weights3_21_ce0,weights3_21_q0,weights3_23_address0,weights3_23_ce0,weights3_23_q0,weights3_25_address0,weights3_25_ce0,weights3_25_q0,weights3_27_address0,weights3_27_ce0,weights3_27_q0,weights3_29_address0,weights3_29_ce0,weights3_29_q0,weights3_31_address0,weights3_31_ce0,weights3_31_q0,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,activations2_5_address0,activations2_5_ce0,activations2_5_q0,activations2_7_address0,activations2_7_ce0,activations2_7_q0,activations2_9_address0,activations2_9_ce0,activations2_9_q0,activations2_11_address0,activations2_11_ce0,activations2_11_q0,activations2_13_address0,activations2_13_ce0,activations2_13_q0,activations2_15_address0,activations2_15_ce0,activations2_15_q0,activations2_17_address0,activations2_17_ce0,activations2_17_q0,activations2_19_address0,activations2_19_ce0,activations2_19_q0,activations2_21_address0,activations2_21_ce0,activations2_21_q0,activations2_23_address0,activations2_23_ce0,activations2_23_q0,activations2_25_address0,activations2_25_ce0,activations2_25_q0,activations2_27_address0,activations2_27_ce0,activations2_27_q0,activations2_29_address0,activations2_29_ce0,activations2_29_q0,activations2_31_address0,activations2_31_ce0,activations2_31_q0,activations3_10_out_i,activations3_10_out_o,activations3_10_out_o_ap_vld,activations3_9_out_i,activations3_9_out_o,activations3_9_out_o_ap_vld,activations3_8_out_i,activations3_8_out_o,activations3_8_out_o_ap_vld,grp_fu_8393_p_din0,grp_fu_8393_p_din1,grp_fu_8393_p_opcode,grp_fu_8393_p_dout0,grp_fu_8393_p_ce,grp_fu_6440_p_din0,grp_fu_6440_p_din1,grp_fu_6440_p_dout0,grp_fu_6440_p_ce); 
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
output  [2:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [2:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [2:0] weights3_4_address0;
output   weights3_4_ce0;
input  [63:0] weights3_4_q0;
output  [2:0] weights3_6_address0;
output   weights3_6_ce0;
input  [63:0] weights3_6_q0;
output  [2:0] weights3_8_address0;
output   weights3_8_ce0;
input  [63:0] weights3_8_q0;
output  [2:0] weights3_10_address0;
output   weights3_10_ce0;
input  [63:0] weights3_10_q0;
output  [2:0] weights3_12_address0;
output   weights3_12_ce0;
input  [63:0] weights3_12_q0;
output  [2:0] weights3_14_address0;
output   weights3_14_ce0;
input  [63:0] weights3_14_q0;
output  [2:0] weights3_16_address0;
output   weights3_16_ce0;
input  [63:0] weights3_16_q0;
output  [2:0] weights3_18_address0;
output   weights3_18_ce0;
input  [63:0] weights3_18_q0;
output  [2:0] weights3_20_address0;
output   weights3_20_ce0;
input  [63:0] weights3_20_q0;
output  [2:0] weights3_22_address0;
output   weights3_22_ce0;
input  [63:0] weights3_22_q0;
output  [2:0] weights3_24_address0;
output   weights3_24_ce0;
input  [63:0] weights3_24_q0;
output  [2:0] weights3_26_address0;
output   weights3_26_ce0;
input  [63:0] weights3_26_q0;
output  [2:0] weights3_28_address0;
output   weights3_28_ce0;
input  [63:0] weights3_28_q0;
output  [2:0] weights3_30_address0;
output   weights3_30_ce0;
input  [63:0] weights3_30_q0;
output  [0:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [0:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [0:0] activations2_4_address0;
output   activations2_4_ce0;
input  [63:0] activations2_4_q0;
output  [0:0] activations2_6_address0;
output   activations2_6_ce0;
input  [63:0] activations2_6_q0;
output  [0:0] activations2_8_address0;
output   activations2_8_ce0;
input  [63:0] activations2_8_q0;
output  [0:0] activations2_10_address0;
output   activations2_10_ce0;
input  [63:0] activations2_10_q0;
output  [0:0] activations2_12_address0;
output   activations2_12_ce0;
input  [63:0] activations2_12_q0;
output  [0:0] activations2_14_address0;
output   activations2_14_ce0;
input  [63:0] activations2_14_q0;
output  [0:0] activations2_16_address0;
output   activations2_16_ce0;
input  [63:0] activations2_16_q0;
output  [0:0] activations2_18_address0;
output   activations2_18_ce0;
input  [63:0] activations2_18_q0;
output  [0:0] activations2_20_address0;
output   activations2_20_ce0;
input  [63:0] activations2_20_q0;
output  [0:0] activations2_22_address0;
output   activations2_22_ce0;
input  [63:0] activations2_22_q0;
output  [0:0] activations2_24_address0;
output   activations2_24_ce0;
input  [63:0] activations2_24_q0;
output  [0:0] activations2_26_address0;
output   activations2_26_ce0;
input  [63:0] activations2_26_q0;
output  [0:0] activations2_28_address0;
output   activations2_28_ce0;
input  [63:0] activations2_28_q0;
output  [0:0] activations2_30_address0;
output   activations2_30_ce0;
input  [63:0] activations2_30_q0;
output  [2:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [2:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [2:0] weights3_5_address0;
output   weights3_5_ce0;
input  [63:0] weights3_5_q0;
output  [2:0] weights3_7_address0;
output   weights3_7_ce0;
input  [63:0] weights3_7_q0;
output  [2:0] weights3_9_address0;
output   weights3_9_ce0;
input  [63:0] weights3_9_q0;
output  [2:0] weights3_11_address0;
output   weights3_11_ce0;
input  [63:0] weights3_11_q0;
output  [2:0] weights3_13_address0;
output   weights3_13_ce0;
input  [63:0] weights3_13_q0;
output  [2:0] weights3_15_address0;
output   weights3_15_ce0;
input  [63:0] weights3_15_q0;
output  [2:0] weights3_17_address0;
output   weights3_17_ce0;
input  [63:0] weights3_17_q0;
output  [2:0] weights3_19_address0;
output   weights3_19_ce0;
input  [63:0] weights3_19_q0;
output  [2:0] weights3_21_address0;
output   weights3_21_ce0;
input  [63:0] weights3_21_q0;
output  [2:0] weights3_23_address0;
output   weights3_23_ce0;
input  [63:0] weights3_23_q0;
output  [2:0] weights3_25_address0;
output   weights3_25_ce0;
input  [63:0] weights3_25_q0;
output  [2:0] weights3_27_address0;
output   weights3_27_ce0;
input  [63:0] weights3_27_q0;
output  [2:0] weights3_29_address0;
output   weights3_29_ce0;
input  [63:0] weights3_29_q0;
output  [2:0] weights3_31_address0;
output   weights3_31_ce0;
input  [63:0] weights3_31_q0;
output  [0:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [0:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
output  [0:0] activations2_5_address0;
output   activations2_5_ce0;
input  [63:0] activations2_5_q0;
output  [0:0] activations2_7_address0;
output   activations2_7_ce0;
input  [63:0] activations2_7_q0;
output  [0:0] activations2_9_address0;
output   activations2_9_ce0;
input  [63:0] activations2_9_q0;
output  [0:0] activations2_11_address0;
output   activations2_11_ce0;
input  [63:0] activations2_11_q0;
output  [0:0] activations2_13_address0;
output   activations2_13_ce0;
input  [63:0] activations2_13_q0;
output  [0:0] activations2_15_address0;
output   activations2_15_ce0;
input  [63:0] activations2_15_q0;
output  [0:0] activations2_17_address0;
output   activations2_17_ce0;
input  [63:0] activations2_17_q0;
output  [0:0] activations2_19_address0;
output   activations2_19_ce0;
input  [63:0] activations2_19_q0;
output  [0:0] activations2_21_address0;
output   activations2_21_ce0;
input  [63:0] activations2_21_q0;
output  [0:0] activations2_23_address0;
output   activations2_23_ce0;
input  [63:0] activations2_23_q0;
output  [0:0] activations2_25_address0;
output   activations2_25_ce0;
input  [63:0] activations2_25_q0;
output  [0:0] activations2_27_address0;
output   activations2_27_ce0;
input  [63:0] activations2_27_q0;
output  [0:0] activations2_29_address0;
output   activations2_29_ce0;
input  [63:0] activations2_29_q0;
output  [0:0] activations2_31_address0;
output   activations2_31_ce0;
input  [63:0] activations2_31_q0;
input  [63:0] activations3_10_out_i;
output  [63:0] activations3_10_out_o;
output   activations3_10_out_o_ap_vld;
input  [63:0] activations3_9_out_i;
output  [63:0] activations3_9_out_o;
output   activations3_9_out_o_ap_vld;
input  [63:0] activations3_8_out_i;
output  [63:0] activations3_8_out_o;
output   activations3_8_out_o_ap_vld;
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
reg   [0:0] icmp_ln55_reg_1922;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln55_fu_1166_p2;
wire   [0:0] tmp_fu_1184_p3;
reg   [0:0] tmp_reg_1926;
wire   [6:0] select_ln54_fu_1192_p3;
reg   [6:0] select_ln54_reg_1934;
wire   [1:0] select_ln55_3_fu_1206_p3;
reg   [1:0] select_ln55_3_reg_1939;
reg   [1:0] select_ln55_3_reg_1939_pp0_iter1_reg;
wire   [4:0] trunc_ln57_fu_1214_p1;
reg   [4:0] trunc_ln57_reg_1943;
wire   [63:0] tmp_s_fu_1380_p35;
reg   [63:0] tmp_s_reg_2271;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_115_fu_1451_p35;
reg   [63:0] tmp_115_reg_2276;
wire   [63:0] tmp_116_fu_1586_p35;
reg   [63:0] tmp_116_reg_2281;
wire   [63:0] tmp_117_fu_1657_p35;
reg   [63:0] tmp_117_reg_2286;
reg   [63:0] mul8_i1_reg_2291;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] select_ln54_1_fu_1731_p3;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul8_1_i1_reg_2301;
wire   [0:0] tmp_26_fu_1786_p3;
reg   [0:0] tmp_26_reg_2306;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] add11_i1_reg_2310;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln58_fu_1270_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_1226_p1;
wire   [63:0] select_ln55_fu_1760_p3;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage15;
wire    ap_loop_init;
wire   [63:0] select_ln55_1_fu_1767_p3;
wire   [63:0] select_ln55_2_fu_1774_p3;
reg   [63:0] add114_i77_fu_224;
wire    ap_block_pp0_stage9;
reg   [6:0] i_fu_228;
wire   [6:0] add_ln57_fu_1781_p2;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [1:0] j_fu_232;
reg   [1:0] ap_sig_allocacmp_j_load;
reg   [63:0] activations3_fu_236;
reg   [63:0] activations3_1_fu_240;
reg   [63:0] activations3_2_fu_244;
reg   [6:0] indvar_flatten_fu_248;
wire   [6:0] add_ln55_fu_1172_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten_load;
reg    weights3_0_ce0_local;
reg    weights3_2_ce0_local;
reg    weights3_4_ce0_local;
reg    weights3_6_ce0_local;
reg    weights3_8_ce0_local;
reg    weights3_10_ce0_local;
reg    weights3_12_ce0_local;
reg    weights3_14_ce0_local;
reg    weights3_16_ce0_local;
reg    weights3_18_ce0_local;
reg    weights3_20_ce0_local;
reg    weights3_22_ce0_local;
reg    weights3_24_ce0_local;
reg    weights3_26_ce0_local;
reg    weights3_28_ce0_local;
reg    weights3_30_ce0_local;
reg    activations2_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_4_ce0_local;
reg    activations2_6_ce0_local;
reg    activations2_8_ce0_local;
reg    activations2_10_ce0_local;
reg    activations2_12_ce0_local;
reg    activations2_14_ce0_local;
reg    activations2_16_ce0_local;
reg    activations2_18_ce0_local;
reg    activations2_20_ce0_local;
reg    activations2_22_ce0_local;
reg    activations2_24_ce0_local;
reg    activations2_26_ce0_local;
reg    activations2_28_ce0_local;
reg    activations2_30_ce0_local;
reg    weights3_1_ce0_local;
reg    weights3_3_ce0_local;
reg    weights3_5_ce0_local;
reg    weights3_7_ce0_local;
reg    weights3_9_ce0_local;
reg    weights3_11_ce0_local;
reg    weights3_13_ce0_local;
reg    weights3_15_ce0_local;
reg    weights3_17_ce0_local;
reg    weights3_19_ce0_local;
reg    weights3_21_ce0_local;
reg    weights3_23_ce0_local;
reg    weights3_25_ce0_local;
reg    weights3_27_ce0_local;
reg    weights3_29_ce0_local;
reg    weights3_31_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_3_ce0_local;
reg    activations2_5_ce0_local;
reg    activations2_7_ce0_local;
reg    activations2_9_ce0_local;
reg    activations2_11_ce0_local;
reg    activations2_13_ce0_local;
reg    activations2_15_ce0_local;
reg    activations2_17_ce0_local;
reg    activations2_19_ce0_local;
reg    activations2_21_ce0_local;
reg    activations2_23_ce0_local;
reg    activations2_25_ce0_local;
reg    activations2_27_ce0_local;
reg    activations2_29_ce0_local;
reg    activations2_31_ce0_local;
reg   [63:0] grp_fu_1102_p0;
reg   [63:0] grp_fu_1102_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_1106_p0;
reg   [63:0] grp_fu_1106_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire   [1:0] add_ln55_1_fu_1200_p2;
wire   [0:0] tmp_25_fu_1218_p3;
wire   [2:0] or_ln_fu_1262_p3;
wire   [63:0] tmp_s_fu_1380_p2;
wire   [63:0] tmp_s_fu_1380_p4;
wire   [63:0] tmp_s_fu_1380_p6;
wire   [63:0] tmp_s_fu_1380_p8;
wire   [63:0] tmp_s_fu_1380_p10;
wire   [63:0] tmp_s_fu_1380_p12;
wire   [63:0] tmp_s_fu_1380_p14;
wire   [63:0] tmp_s_fu_1380_p16;
wire   [63:0] tmp_s_fu_1380_p18;
wire   [63:0] tmp_s_fu_1380_p20;
wire   [63:0] tmp_s_fu_1380_p22;
wire   [63:0] tmp_s_fu_1380_p24;
wire   [63:0] tmp_s_fu_1380_p26;
wire   [63:0] tmp_s_fu_1380_p28;
wire   [63:0] tmp_s_fu_1380_p30;
wire   [63:0] tmp_s_fu_1380_p32;
wire   [63:0] tmp_s_fu_1380_p33;
wire   [63:0] tmp_115_fu_1451_p33;
wire   [63:0] tmp_116_fu_1586_p2;
wire   [63:0] tmp_116_fu_1586_p4;
wire   [63:0] tmp_116_fu_1586_p6;
wire   [63:0] tmp_116_fu_1586_p8;
wire   [63:0] tmp_116_fu_1586_p10;
wire   [63:0] tmp_116_fu_1586_p12;
wire   [63:0] tmp_116_fu_1586_p14;
wire   [63:0] tmp_116_fu_1586_p16;
wire   [63:0] tmp_116_fu_1586_p18;
wire   [63:0] tmp_116_fu_1586_p20;
wire   [63:0] tmp_116_fu_1586_p22;
wire   [63:0] tmp_116_fu_1586_p24;
wire   [63:0] tmp_116_fu_1586_p26;
wire   [63:0] tmp_116_fu_1586_p28;
wire   [63:0] tmp_116_fu_1586_p30;
wire   [63:0] tmp_116_fu_1586_p32;
wire   [63:0] tmp_116_fu_1586_p33;
wire   [63:0] tmp_117_fu_1657_p33;
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
wire   [4:0] tmp_s_fu_1380_p1;
wire   [4:0] tmp_s_fu_1380_p3;
wire   [4:0] tmp_s_fu_1380_p5;
wire   [4:0] tmp_s_fu_1380_p7;
wire   [4:0] tmp_s_fu_1380_p9;
wire   [4:0] tmp_s_fu_1380_p11;
wire   [4:0] tmp_s_fu_1380_p13;
wire   [4:0] tmp_s_fu_1380_p15;
wire  signed [4:0] tmp_s_fu_1380_p17;
wire  signed [4:0] tmp_s_fu_1380_p19;
wire  signed [4:0] tmp_s_fu_1380_p21;
wire  signed [4:0] tmp_s_fu_1380_p23;
wire  signed [4:0] tmp_s_fu_1380_p25;
wire  signed [4:0] tmp_s_fu_1380_p27;
wire  signed [4:0] tmp_s_fu_1380_p29;
wire  signed [4:0] tmp_s_fu_1380_p31;
wire   [4:0] tmp_115_fu_1451_p1;
wire   [4:0] tmp_115_fu_1451_p3;
wire   [4:0] tmp_115_fu_1451_p5;
wire   [4:0] tmp_115_fu_1451_p7;
wire   [4:0] tmp_115_fu_1451_p9;
wire   [4:0] tmp_115_fu_1451_p11;
wire   [4:0] tmp_115_fu_1451_p13;
wire   [4:0] tmp_115_fu_1451_p15;
wire  signed [4:0] tmp_115_fu_1451_p17;
wire  signed [4:0] tmp_115_fu_1451_p19;
wire  signed [4:0] tmp_115_fu_1451_p21;
wire  signed [4:0] tmp_115_fu_1451_p23;
wire  signed [4:0] tmp_115_fu_1451_p25;
wire  signed [4:0] tmp_115_fu_1451_p27;
wire  signed [4:0] tmp_115_fu_1451_p29;
wire  signed [4:0] tmp_115_fu_1451_p31;
wire   [4:0] tmp_116_fu_1586_p1;
wire   [4:0] tmp_116_fu_1586_p3;
wire   [4:0] tmp_116_fu_1586_p5;
wire   [4:0] tmp_116_fu_1586_p7;
wire   [4:0] tmp_116_fu_1586_p9;
wire   [4:0] tmp_116_fu_1586_p11;
wire   [4:0] tmp_116_fu_1586_p13;
wire   [4:0] tmp_116_fu_1586_p15;
wire  signed [4:0] tmp_116_fu_1586_p17;
wire  signed [4:0] tmp_116_fu_1586_p19;
wire  signed [4:0] tmp_116_fu_1586_p21;
wire  signed [4:0] tmp_116_fu_1586_p23;
wire  signed [4:0] tmp_116_fu_1586_p25;
wire  signed [4:0] tmp_116_fu_1586_p27;
wire  signed [4:0] tmp_116_fu_1586_p29;
wire  signed [4:0] tmp_116_fu_1586_p31;
wire   [4:0] tmp_117_fu_1657_p1;
wire   [4:0] tmp_117_fu_1657_p3;
wire   [4:0] tmp_117_fu_1657_p5;
wire   [4:0] tmp_117_fu_1657_p7;
wire   [4:0] tmp_117_fu_1657_p9;
wire   [4:0] tmp_117_fu_1657_p11;
wire   [4:0] tmp_117_fu_1657_p13;
wire   [4:0] tmp_117_fu_1657_p15;
wire  signed [4:0] tmp_117_fu_1657_p17;
wire  signed [4:0] tmp_117_fu_1657_p19;
wire  signed [4:0] tmp_117_fu_1657_p21;
wire  signed [4:0] tmp_117_fu_1657_p23;
wire  signed [4:0] tmp_117_fu_1657_p25;
wire  signed [4:0] tmp_117_fu_1657_p27;
wire  signed [4:0] tmp_117_fu_1657_p29;
wire  signed [4:0] tmp_117_fu_1657_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 add114_i77_fu_224 = 64'd0;
#0 i_fu_228 = 7'd0;
#0 j_fu_232 = 2'd0;
#0 activations3_fu_236 = 64'd0;
#0 activations3_1_fu_240 = 64'd0;
#0 activations3_2_fu_244 = 64'd0;
#0 indvar_flatten_fu_248 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U698(.din0(tmp_s_fu_1380_p2),.din1(tmp_s_fu_1380_p4),.din2(tmp_s_fu_1380_p6),.din3(tmp_s_fu_1380_p8),.din4(tmp_s_fu_1380_p10),.din5(tmp_s_fu_1380_p12),.din6(tmp_s_fu_1380_p14),.din7(tmp_s_fu_1380_p16),.din8(tmp_s_fu_1380_p18),.din9(tmp_s_fu_1380_p20),.din10(tmp_s_fu_1380_p22),.din11(tmp_s_fu_1380_p24),.din12(tmp_s_fu_1380_p26),.din13(tmp_s_fu_1380_p28),.din14(tmp_s_fu_1380_p30),.din15(tmp_s_fu_1380_p32),.def(tmp_s_fu_1380_p33),.sel(trunc_ln57_reg_1943),.dout(tmp_s_fu_1380_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U699(.din0(activations2_q0),.din1(activations2_2_q0),.din2(activations2_4_q0),.din3(activations2_6_q0),.din4(activations2_8_q0),.din5(activations2_10_q0),.din6(activations2_12_q0),.din7(activations2_14_q0),.din8(activations2_16_q0),.din9(activations2_18_q0),.din10(activations2_20_q0),.din11(activations2_22_q0),.din12(activations2_24_q0),.din13(activations2_26_q0),.din14(activations2_28_q0),.din15(activations2_30_q0),.def(tmp_115_fu_1451_p33),.sel(trunc_ln57_reg_1943),.dout(tmp_115_fu_1451_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U700(.din0(tmp_116_fu_1586_p2),.din1(tmp_116_fu_1586_p4),.din2(tmp_116_fu_1586_p6),.din3(tmp_116_fu_1586_p8),.din4(tmp_116_fu_1586_p10),.din5(tmp_116_fu_1586_p12),.din6(tmp_116_fu_1586_p14),.din7(tmp_116_fu_1586_p16),.din8(tmp_116_fu_1586_p18),.din9(tmp_116_fu_1586_p20),.din10(tmp_116_fu_1586_p22),.din11(tmp_116_fu_1586_p24),.din12(tmp_116_fu_1586_p26),.din13(tmp_116_fu_1586_p28),.din14(tmp_116_fu_1586_p30),.din15(tmp_116_fu_1586_p32),.def(tmp_116_fu_1586_p33),.sel(trunc_ln57_reg_1943),.dout(tmp_116_fu_1586_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U701(.din0(activations2_1_q0),.din1(activations2_3_q0),.din2(activations2_5_q0),.din3(activations2_7_q0),.din4(activations2_9_q0),.din5(activations2_11_q0),.din6(activations2_13_q0),.din7(activations2_15_q0),.din8(activations2_17_q0),.din9(activations2_19_q0),.din10(activations2_21_q0),.din11(activations2_23_q0),.din12(activations2_25_q0),.din13(activations2_27_q0),.din14(activations2_29_q0),.din15(activations2_31_q0),.def(tmp_117_fu_1657_p33),.sel(trunc_ln57_reg_1943),.dout(tmp_117_fu_1657_p35));
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_1_fu_240 <= activations3_load;
    end else if (((icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_1_fu_240 <= select_ln55_1_fu_1767_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_2_fu_244 <= activations3_2_load;
    end else if (((icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_2_fu_244 <= select_ln55_fu_1760_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_fu_236 <= activations3_1_load;
    end else if (((icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_fu_236 <= select_ln55_2_fu_1774_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add114_i77_fu_224 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add114_i77_fu_224 <= grp_fu_8393_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_228 <= 7'd0;
    end else if (((icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        i_fu_228 <= add_ln57_fu_1781_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln55_fu_1166_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_248 <= add_ln55_fu_1172_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_248 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln55_fu_1166_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_232 <= select_ln55_3_fu_1206_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_232 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_i1_reg_2310 <= grp_fu_8393_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln55_reg_1922 <= icmp_ln55_fu_1166_p2;
        select_ln54_reg_1934 <= select_ln54_fu_1192_p3;
        select_ln55_3_reg_1939 <= select_ln55_3_fu_1206_p3;
        select_ln55_3_reg_1939_pp0_iter1_reg <= select_ln55_3_reg_1939;
        tmp_reg_1926 <= ap_sig_allocacmp_i_load[32'd6];
        trunc_ln57_reg_1943 <= trunc_ln57_fu_1214_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_i1_reg_2301 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_i1_reg_2291 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_115_reg_2276 <= tmp_115_fu_1451_p35;
        tmp_116_reg_2281 <= tmp_116_fu_1586_p35;
        tmp_117_reg_2286 <= tmp_117_fu_1657_p35;
        tmp_s_reg_2271 <= tmp_s_fu_1380_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tmp_26_reg_2306 <= add_ln57_fu_1781_p2[32'd6];
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
        activations2_16_ce0_local = 1'b1;
    end else begin
        activations2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_17_ce0_local = 1'b1;
    end else begin
        activations2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_18_ce0_local = 1'b1;
    end else begin
        activations2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_19_ce0_local = 1'b1;
    end else begin
        activations2_19_ce0_local = 1'b0;
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
        activations2_20_ce0_local = 1'b1;
    end else begin
        activations2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_21_ce0_local = 1'b1;
    end else begin
        activations2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_22_ce0_local = 1'b1;
    end else begin
        activations2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_23_ce0_local = 1'b1;
    end else begin
        activations2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_24_ce0_local = 1'b1;
    end else begin
        activations2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_25_ce0_local = 1'b1;
    end else begin
        activations2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_26_ce0_local = 1'b1;
    end else begin
        activations2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_27_ce0_local = 1'b1;
    end else begin
        activations2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_28_ce0_local = 1'b1;
    end else begin
        activations2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_29_ce0_local = 1'b1;
    end else begin
        activations2_29_ce0_local = 1'b0;
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
        activations2_30_ce0_local = 1'b1;
    end else begin
        activations2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_31_ce0_local = 1'b1;
    end else begin
        activations2_31_ce0_local = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_10_out_o = 'bx;
    end else if ((((tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (select_ln55_3_reg_1939 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (select_ln55_3_reg_1939 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_10_out_o = select_ln55_fu_1760_p3;
    end else if ((~(select_ln55_3_reg_1939_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_1939_pp0_iter1_reg == 2'd0) & (tmp_26_reg_2306 == 1'd1) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_10_out_o = grp_fu_8393_p_dout0;
    end else begin
        activations3_10_out_o = activations3_10_out_i;
    end
end
always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (select_ln55_3_reg_1939 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (select_ln55_3_reg_1939 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(select_ln55_3_reg_1939_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_1939_pp0_iter1_reg == 2'd0) & (tmp_26_reg_2306 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        activations3_10_out_o_ap_vld = 1'b1;
    end else begin
        activations3_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_8_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_1939 == 2'd0) & ~(select_ln55_3_reg_1939 == 2'd1) & (tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (select_ln55_3_reg_1939 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_8_out_o = select_ln55_2_fu_1774_p3;
    end else if (((tmp_26_reg_2306 == 1'd1) & (1'b0 == ap_block_pp0_stage8) & (select_ln55_3_reg_1939_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_8_out_o = grp_fu_8393_p_dout0;
    end else begin
        activations3_8_out_o = activations3_8_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_1939 == 2'd0) & ~(select_ln55_3_reg_1939 == 2'd1) & (tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (select_ln55_3_reg_1939 == 2'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_26_reg_2306 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (select_ln55_3_reg_1939_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        activations3_8_out_o_ap_vld = 1'b1;
    end else begin
        activations3_8_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_9_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_1939 == 2'd0) & ~(select_ln55_3_reg_1939 == 2'd1) & (tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (select_ln55_3_reg_1939 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_9_out_o = select_ln55_1_fu_1767_p3;
    end else if (((tmp_26_reg_2306 == 1'd1) & (1'b0 == ap_block_pp0_stage8) & (select_ln55_3_reg_1939_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_9_out_o = grp_fu_8393_p_dout0;
    end else begin
        activations3_9_out_o = activations3_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_1939 == 2'd0) & ~(select_ln55_3_reg_1939 == 2'd1) & (tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_26_fu_1786_p3 == 1'd1) & (icmp_ln55_reg_1922 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (select_ln55_3_reg_1939 == 2'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_26_reg_2306 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (select_ln55_3_reg_1939_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        activations3_9_out_o_ap_vld = 1'b1;
    end else begin
        activations3_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln55_reg_1922 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_228;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_248;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_232;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1102_p0 = add11_i1_reg_2310;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1102_p0 = select_ln54_1_fu_1731_p3;
    end else begin
        grp_fu_1102_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1102_p1 = mul8_1_i1_reg_2301;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1102_p1 = mul8_i1_reg_2291;
    end else begin
        grp_fu_1102_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1106_p0 = tmp_116_reg_2281;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1106_p0 = tmp_s_reg_2271;
        end else begin
            grp_fu_1106_p0 = 'bx;
        end
    end else begin
        grp_fu_1106_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1106_p1 = tmp_117_reg_2286;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1106_p1 = tmp_115_reg_2276;
        end else begin
            grp_fu_1106_p1 = 'bx;
        end
    end else begin
        grp_fu_1106_p1 = 'bx;
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
        weights3_16_ce0_local = 1'b1;
    end else begin
        weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_17_ce0_local = 1'b1;
    end else begin
        weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_18_ce0_local = 1'b1;
    end else begin
        weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_19_ce0_local = 1'b1;
    end else begin
        weights3_19_ce0_local = 1'b0;
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
        weights3_20_ce0_local = 1'b1;
    end else begin
        weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_21_ce0_local = 1'b1;
    end else begin
        weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_22_ce0_local = 1'b1;
    end else begin
        weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_23_ce0_local = 1'b1;
    end else begin
        weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_24_ce0_local = 1'b1;
    end else begin
        weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_25_ce0_local = 1'b1;
    end else begin
        weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_26_ce0_local = 1'b1;
    end else begin
        weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_27_ce0_local = 1'b1;
    end else begin
        weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_28_ce0_local = 1'b1;
    end else begin
        weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_29_ce0_local = 1'b1;
    end else begin
        weights3_29_ce0_local = 1'b0;
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
        weights3_30_ce0_local = 1'b1;
    end else begin
        weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_31_ce0_local = 1'b1;
    end else begin
        weights3_31_ce0_local = 1'b0;
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
assign activations2_10_address0 = zext_ln54_fu_1226_p1;
assign activations2_10_ce0 = activations2_10_ce0_local;
assign activations2_11_address0 = zext_ln54_fu_1226_p1;
assign activations2_11_ce0 = activations2_11_ce0_local;
assign activations2_12_address0 = zext_ln54_fu_1226_p1;
assign activations2_12_ce0 = activations2_12_ce0_local;
assign activations2_13_address0 = zext_ln54_fu_1226_p1;
assign activations2_13_ce0 = activations2_13_ce0_local;
assign activations2_14_address0 = zext_ln54_fu_1226_p1;
assign activations2_14_ce0 = activations2_14_ce0_local;
assign activations2_15_address0 = zext_ln54_fu_1226_p1;
assign activations2_15_ce0 = activations2_15_ce0_local;
assign activations2_16_address0 = zext_ln54_fu_1226_p1;
assign activations2_16_ce0 = activations2_16_ce0_local;
assign activations2_17_address0 = zext_ln54_fu_1226_p1;
assign activations2_17_ce0 = activations2_17_ce0_local;
assign activations2_18_address0 = zext_ln54_fu_1226_p1;
assign activations2_18_ce0 = activations2_18_ce0_local;
assign activations2_19_address0 = zext_ln54_fu_1226_p1;
assign activations2_19_ce0 = activations2_19_ce0_local;
assign activations2_1_address0 = zext_ln54_fu_1226_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_20_address0 = zext_ln54_fu_1226_p1;
assign activations2_20_ce0 = activations2_20_ce0_local;
assign activations2_21_address0 = zext_ln54_fu_1226_p1;
assign activations2_21_ce0 = activations2_21_ce0_local;
assign activations2_22_address0 = zext_ln54_fu_1226_p1;
assign activations2_22_ce0 = activations2_22_ce0_local;
assign activations2_23_address0 = zext_ln54_fu_1226_p1;
assign activations2_23_ce0 = activations2_23_ce0_local;
assign activations2_24_address0 = zext_ln54_fu_1226_p1;
assign activations2_24_ce0 = activations2_24_ce0_local;
assign activations2_25_address0 = zext_ln54_fu_1226_p1;
assign activations2_25_ce0 = activations2_25_ce0_local;
assign activations2_26_address0 = zext_ln54_fu_1226_p1;
assign activations2_26_ce0 = activations2_26_ce0_local;
assign activations2_27_address0 = zext_ln54_fu_1226_p1;
assign activations2_27_ce0 = activations2_27_ce0_local;
assign activations2_28_address0 = zext_ln54_fu_1226_p1;
assign activations2_28_ce0 = activations2_28_ce0_local;
assign activations2_29_address0 = zext_ln54_fu_1226_p1;
assign activations2_29_ce0 = activations2_29_ce0_local;
assign activations2_2_address0 = zext_ln54_fu_1226_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_30_address0 = zext_ln54_fu_1226_p1;
assign activations2_30_ce0 = activations2_30_ce0_local;
assign activations2_31_address0 = zext_ln54_fu_1226_p1;
assign activations2_31_ce0 = activations2_31_ce0_local;
assign activations2_3_address0 = zext_ln54_fu_1226_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_4_address0 = zext_ln54_fu_1226_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_5_address0 = zext_ln54_fu_1226_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_6_address0 = zext_ln54_fu_1226_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_7_address0 = zext_ln54_fu_1226_p1;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_8_address0 = zext_ln54_fu_1226_p1;
assign activations2_8_ce0 = activations2_8_ce0_local;
assign activations2_9_address0 = zext_ln54_fu_1226_p1;
assign activations2_9_ce0 = activations2_9_ce0_local;
assign activations2_address0 = zext_ln54_fu_1226_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln55_1_fu_1200_p2 = (ap_sig_allocacmp_j_load + 2'd1);
assign add_ln55_fu_1172_p2 = (ap_sig_allocacmp_indvar_flatten_load + 7'd1);
assign add_ln57_fu_1781_p2 = (select_ln54_reg_1934 + 7'd2);
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
assign grp_fu_6440_p_ce = 1'b1;
assign grp_fu_6440_p_din0 = grp_fu_1106_p0;
assign grp_fu_6440_p_din1 = grp_fu_1106_p1;
assign grp_fu_8393_p_ce = 1'b1;
assign grp_fu_8393_p_din0 = grp_fu_1102_p0;
assign grp_fu_8393_p_din1 = grp_fu_1102_p1;
assign grp_fu_8393_p_opcode = 2'd0;
assign icmp_ln55_fu_1166_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 7'd96) ? 1'b1 : 1'b0);
assign or_ln_fu_1262_p3 = {{select_ln55_3_fu_1206_p3}, {tmp_25_fu_1218_p3}};
assign select_ln54_1_fu_1731_p3 = ((tmp_reg_1926[0:0] == 1'b1) ? 64'd0 : add114_i77_fu_224);
assign select_ln54_fu_1192_p3 = ((tmp_fu_1184_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_load);
assign select_ln55_1_fu_1767_p3 = ((tmp_reg_1926[0:0] == 1'b1) ? activations3_9_out_i : activations3_1_fu_240);
assign select_ln55_2_fu_1774_p3 = ((tmp_reg_1926[0:0] == 1'b1) ? activations3_8_out_i : activations3_fu_236);
assign select_ln55_3_fu_1206_p3 = ((tmp_fu_1184_p3[0:0] == 1'b1) ? add_ln55_1_fu_1200_p2 : ap_sig_allocacmp_j_load);
assign select_ln55_fu_1760_p3 = ((tmp_reg_1926[0:0] == 1'b1) ? activations3_10_out_i : activations3_2_fu_244);
assign tmp_115_fu_1451_p33 = 'bx;
assign tmp_116_fu_1586_p10 = weights3_9_q0;
assign tmp_116_fu_1586_p12 = weights3_11_q0;
assign tmp_116_fu_1586_p14 = weights3_13_q0;
assign tmp_116_fu_1586_p16 = weights3_15_q0;
assign tmp_116_fu_1586_p18 = weights3_17_q0;
assign tmp_116_fu_1586_p2 = weights3_1_q0;
assign tmp_116_fu_1586_p20 = weights3_19_q0;
assign tmp_116_fu_1586_p22 = weights3_21_q0;
assign tmp_116_fu_1586_p24 = weights3_23_q0;
assign tmp_116_fu_1586_p26 = weights3_25_q0;
assign tmp_116_fu_1586_p28 = weights3_27_q0;
assign tmp_116_fu_1586_p30 = weights3_29_q0;
assign tmp_116_fu_1586_p32 = weights3_31_q0;
assign tmp_116_fu_1586_p33 = 'bx;
assign tmp_116_fu_1586_p4 = weights3_3_q0;
assign tmp_116_fu_1586_p6 = weights3_5_q0;
assign tmp_116_fu_1586_p8 = weights3_7_q0;
assign tmp_117_fu_1657_p33 = 'bx;
assign tmp_25_fu_1218_p3 = select_ln54_fu_1192_p3[32'd5];
assign tmp_26_fu_1786_p3 = add_ln57_fu_1781_p2[32'd6];
assign tmp_fu_1184_p3 = ap_sig_allocacmp_i_load[32'd6];
assign tmp_s_fu_1380_p10 = weights3_8_q0;
assign tmp_s_fu_1380_p12 = weights3_10_q0;
assign tmp_s_fu_1380_p14 = weights3_12_q0;
assign tmp_s_fu_1380_p16 = weights3_14_q0;
assign tmp_s_fu_1380_p18 = weights3_16_q0;
assign tmp_s_fu_1380_p2 = weights3_0_q0;
assign tmp_s_fu_1380_p20 = weights3_18_q0;
assign tmp_s_fu_1380_p22 = weights3_20_q0;
assign tmp_s_fu_1380_p24 = weights3_22_q0;
assign tmp_s_fu_1380_p26 = weights3_24_q0;
assign tmp_s_fu_1380_p28 = weights3_26_q0;
assign tmp_s_fu_1380_p30 = weights3_28_q0;
assign tmp_s_fu_1380_p32 = weights3_30_q0;
assign tmp_s_fu_1380_p33 = 'bx;
assign tmp_s_fu_1380_p4 = weights3_2_q0;
assign tmp_s_fu_1380_p6 = weights3_4_q0;
assign tmp_s_fu_1380_p8 = weights3_6_q0;
assign trunc_ln57_fu_1214_p1 = select_ln54_fu_1192_p3[4:0];
assign weights3_0_address0 = zext_ln58_fu_1270_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_10_address0 = zext_ln58_fu_1270_p1;
assign weights3_10_ce0 = weights3_10_ce0_local;
assign weights3_11_address0 = zext_ln58_fu_1270_p1;
assign weights3_11_ce0 = weights3_11_ce0_local;
assign weights3_12_address0 = zext_ln58_fu_1270_p1;
assign weights3_12_ce0 = weights3_12_ce0_local;
assign weights3_13_address0 = zext_ln58_fu_1270_p1;
assign weights3_13_ce0 = weights3_13_ce0_local;
assign weights3_14_address0 = zext_ln58_fu_1270_p1;
assign weights3_14_ce0 = weights3_14_ce0_local;
assign weights3_15_address0 = zext_ln58_fu_1270_p1;
assign weights3_15_ce0 = weights3_15_ce0_local;
assign weights3_16_address0 = zext_ln58_fu_1270_p1;
assign weights3_16_ce0 = weights3_16_ce0_local;
assign weights3_17_address0 = zext_ln58_fu_1270_p1;
assign weights3_17_ce0 = weights3_17_ce0_local;
assign weights3_18_address0 = zext_ln58_fu_1270_p1;
assign weights3_18_ce0 = weights3_18_ce0_local;
assign weights3_19_address0 = zext_ln58_fu_1270_p1;
assign weights3_19_ce0 = weights3_19_ce0_local;
assign weights3_1_address0 = zext_ln58_fu_1270_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_20_address0 = zext_ln58_fu_1270_p1;
assign weights3_20_ce0 = weights3_20_ce0_local;
assign weights3_21_address0 = zext_ln58_fu_1270_p1;
assign weights3_21_ce0 = weights3_21_ce0_local;
assign weights3_22_address0 = zext_ln58_fu_1270_p1;
assign weights3_22_ce0 = weights3_22_ce0_local;
assign weights3_23_address0 = zext_ln58_fu_1270_p1;
assign weights3_23_ce0 = weights3_23_ce0_local;
assign weights3_24_address0 = zext_ln58_fu_1270_p1;
assign weights3_24_ce0 = weights3_24_ce0_local;
assign weights3_25_address0 = zext_ln58_fu_1270_p1;
assign weights3_25_ce0 = weights3_25_ce0_local;
assign weights3_26_address0 = zext_ln58_fu_1270_p1;
assign weights3_26_ce0 = weights3_26_ce0_local;
assign weights3_27_address0 = zext_ln58_fu_1270_p1;
assign weights3_27_ce0 = weights3_27_ce0_local;
assign weights3_28_address0 = zext_ln58_fu_1270_p1;
assign weights3_28_ce0 = weights3_28_ce0_local;
assign weights3_29_address0 = zext_ln58_fu_1270_p1;
assign weights3_29_ce0 = weights3_29_ce0_local;
assign weights3_2_address0 = zext_ln58_fu_1270_p1;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_30_address0 = zext_ln58_fu_1270_p1;
assign weights3_30_ce0 = weights3_30_ce0_local;
assign weights3_31_address0 = zext_ln58_fu_1270_p1;
assign weights3_31_ce0 = weights3_31_ce0_local;
assign weights3_3_address0 = zext_ln58_fu_1270_p1;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_4_address0 = zext_ln58_fu_1270_p1;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_5_address0 = zext_ln58_fu_1270_p1;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_6_address0 = zext_ln58_fu_1270_p1;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_7_address0 = zext_ln58_fu_1270_p1;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_8_address0 = zext_ln58_fu_1270_p1;
assign weights3_8_ce0 = weights3_8_ce0_local;
assign weights3_9_address0 = zext_ln58_fu_1270_p1;
assign weights3_9_ce0 = weights3_9_ce0_local;
assign zext_ln54_fu_1226_p1 = tmp_25_fu_1218_p3;
assign zext_ln58_fu_1270_p1 = or_ln_fu_1262_p3;
endmodule 