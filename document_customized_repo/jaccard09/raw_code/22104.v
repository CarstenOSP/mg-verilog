module backprop_update_weights_37_38_1_Pipeline_up_weight_loop6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_31_address0,biases2_31_ce0,biases2_31_we0,biases2_31_d0,biases2_31_q0,biases2_30_address0,biases2_30_ce0,biases2_30_we0,biases2_30_d0,biases2_30_q0,biases2_29_address0,biases2_29_ce0,biases2_29_we0,biases2_29_d0,biases2_29_q0,biases2_28_address0,biases2_28_ce0,biases2_28_we0,biases2_28_d0,biases2_28_q0,biases2_27_address0,biases2_27_ce0,biases2_27_we0,biases2_27_d0,biases2_27_q0,biases2_26_address0,biases2_26_ce0,biases2_26_we0,biases2_26_d0,biases2_26_q0,biases2_25_address0,biases2_25_ce0,biases2_25_we0,biases2_25_d0,biases2_25_q0,biases2_24_address0,biases2_24_ce0,biases2_24_we0,biases2_24_d0,biases2_24_q0,biases2_23_address0,biases2_23_ce0,biases2_23_we0,biases2_23_d0,biases2_23_q0,biases2_22_address0,biases2_22_ce0,biases2_22_we0,biases2_22_d0,biases2_22_q0,biases2_21_address0,biases2_21_ce0,biases2_21_we0,biases2_21_d0,biases2_21_q0,biases2_20_address0,biases2_20_ce0,biases2_20_we0,biases2_20_d0,biases2_20_q0,biases2_19_address0,biases2_19_ce0,biases2_19_we0,biases2_19_d0,biases2_19_q0,biases2_18_address0,biases2_18_ce0,biases2_18_we0,biases2_18_d0,biases2_18_q0,biases2_17_address0,biases2_17_ce0,biases2_17_we0,biases2_17_d0,biases2_17_q0,biases2_16_address0,biases2_16_ce0,biases2_16_we0,biases2_16_d0,biases2_16_q0,biases2_15_address0,biases2_15_ce0,biases2_15_we0,biases2_15_d0,biases2_15_q0,biases2_14_address0,biases2_14_ce0,biases2_14_we0,biases2_14_d0,biases2_14_q0,biases2_13_address0,biases2_13_ce0,biases2_13_we0,biases2_13_d0,biases2_13_q0,biases2_12_address0,biases2_12_ce0,biases2_12_we0,biases2_12_d0,biases2_12_q0,biases2_11_address0,biases2_11_ce0,biases2_11_we0,biases2_11_d0,biases2_11_q0,biases2_10_address0,biases2_10_ce0,biases2_10_we0,biases2_10_d0,biases2_10_q0,biases2_9_address0,biases2_9_ce0,biases2_9_we0,biases2_9_d0,biases2_9_q0,biases2_8_address0,biases2_8_ce0,biases2_8_we0,biases2_8_d0,biases2_8_q0,biases2_7_address0,biases2_7_ce0,biases2_7_we0,biases2_7_d0,biases2_7_q0,biases2_6_address0,biases2_6_ce0,biases2_6_we0,biases2_6_d0,biases2_6_q0,biases2_5_address0,biases2_5_ce0,biases2_5_we0,biases2_5_d0,biases2_5_q0,biases2_4_address0,biases2_4_ce0,biases2_4_we0,biases2_4_d0,biases2_4_q0,biases2_3_address0,biases2_3_ce0,biases2_3_we0,biases2_3_d0,biases2_3_q0,biases2_2_address0,biases2_2_ce0,biases2_2_we0,biases2_2_d0,biases2_2_q0,biases2_1_address0,biases2_1_ce0,biases2_1_we0,biases2_1_d0,biases2_1_q0,biases2_0_address0,biases2_0_ce0,biases2_0_we0,biases2_0_d0,biases2_0_q0,d_biases2_0_address0,d_biases2_0_ce0,d_biases2_0_q0,d_biases2_4_address0,d_biases2_4_ce0,d_biases2_4_q0,d_biases2_8_address0,d_biases2_8_ce0,d_biases2_8_q0,d_biases2_12_address0,d_biases2_12_ce0,d_biases2_12_q0,d_biases2_16_address0,d_biases2_16_ce0,d_biases2_16_q0,d_biases2_20_address0,d_biases2_20_ce0,d_biases2_20_q0,d_biases2_24_address0,d_biases2_24_ce0,d_biases2_24_q0,d_biases2_28_address0,d_biases2_28_ce0,d_biases2_28_q0,d_biases2_1_address0,d_biases2_1_ce0,d_biases2_1_q0,d_biases2_5_address0,d_biases2_5_ce0,d_biases2_5_q0,d_biases2_9_address0,d_biases2_9_ce0,d_biases2_9_q0,d_biases2_13_address0,d_biases2_13_ce0,d_biases2_13_q0,d_biases2_17_address0,d_biases2_17_ce0,d_biases2_17_q0,d_biases2_21_address0,d_biases2_21_ce0,d_biases2_21_q0,d_biases2_25_address0,d_biases2_25_ce0,d_biases2_25_q0,d_biases2_29_address0,d_biases2_29_ce0,d_biases2_29_q0,d_biases2_2_address0,d_biases2_2_ce0,d_biases2_2_q0,d_biases2_6_address0,d_biases2_6_ce0,d_biases2_6_q0,d_biases2_10_address0,d_biases2_10_ce0,d_biases2_10_q0,d_biases2_14_address0,d_biases2_14_ce0,d_biases2_14_q0,d_biases2_18_address0,d_biases2_18_ce0,d_biases2_18_q0,d_biases2_22_address0,d_biases2_22_ce0,d_biases2_22_q0,d_biases2_26_address0,d_biases2_26_ce0,d_biases2_26_q0,d_biases2_30_address0,d_biases2_30_ce0,d_biases2_30_q0,d_biases2_3_address0,d_biases2_3_ce0,d_biases2_3_q0,d_biases2_7_address0,d_biases2_7_ce0,d_biases2_7_q0,d_biases2_11_address0,d_biases2_11_ce0,d_biases2_11_q0,d_biases2_15_address0,d_biases2_15_ce0,d_biases2_15_q0,d_biases2_19_address0,d_biases2_19_ce0,d_biases2_19_q0,d_biases2_23_address0,d_biases2_23_ce0,d_biases2_23_q0,d_biases2_27_address0,d_biases2_27_ce0,d_biases2_27_q0,d_biases2_31_address0,d_biases2_31_ce0,d_biases2_31_q0,bias_norm_6_out,bias_norm_6_out_ap_vld,grp_fu_1947_p_din0,grp_fu_1947_p_din1,grp_fu_1947_p_opcode,grp_fu_1947_p_dout0,grp_fu_1947_p_ce,grp_fu_1951_p_din0,grp_fu_1951_p_din1,grp_fu_1951_p_dout0,grp_fu_1951_p_ce); 
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
output  [0:0] biases2_31_address0;
output   biases2_31_ce0;
output   biases2_31_we0;
output  [63:0] biases2_31_d0;
input  [63:0] biases2_31_q0;
output  [0:0] biases2_30_address0;
output   biases2_30_ce0;
output   biases2_30_we0;
output  [63:0] biases2_30_d0;
input  [63:0] biases2_30_q0;
output  [0:0] biases2_29_address0;
output   biases2_29_ce0;
output   biases2_29_we0;
output  [63:0] biases2_29_d0;
input  [63:0] biases2_29_q0;
output  [0:0] biases2_28_address0;
output   biases2_28_ce0;
output   biases2_28_we0;
output  [63:0] biases2_28_d0;
input  [63:0] biases2_28_q0;
output  [0:0] biases2_27_address0;
output   biases2_27_ce0;
output   biases2_27_we0;
output  [63:0] biases2_27_d0;
input  [63:0] biases2_27_q0;
output  [0:0] biases2_26_address0;
output   biases2_26_ce0;
output   biases2_26_we0;
output  [63:0] biases2_26_d0;
input  [63:0] biases2_26_q0;
output  [0:0] biases2_25_address0;
output   biases2_25_ce0;
output   biases2_25_we0;
output  [63:0] biases2_25_d0;
input  [63:0] biases2_25_q0;
output  [0:0] biases2_24_address0;
output   biases2_24_ce0;
output   biases2_24_we0;
output  [63:0] biases2_24_d0;
input  [63:0] biases2_24_q0;
output  [0:0] biases2_23_address0;
output   biases2_23_ce0;
output   biases2_23_we0;
output  [63:0] biases2_23_d0;
input  [63:0] biases2_23_q0;
output  [0:0] biases2_22_address0;
output   biases2_22_ce0;
output   biases2_22_we0;
output  [63:0] biases2_22_d0;
input  [63:0] biases2_22_q0;
output  [0:0] biases2_21_address0;
output   biases2_21_ce0;
output   biases2_21_we0;
output  [63:0] biases2_21_d0;
input  [63:0] biases2_21_q0;
output  [0:0] biases2_20_address0;
output   biases2_20_ce0;
output   biases2_20_we0;
output  [63:0] biases2_20_d0;
input  [63:0] biases2_20_q0;
output  [0:0] biases2_19_address0;
output   biases2_19_ce0;
output   biases2_19_we0;
output  [63:0] biases2_19_d0;
input  [63:0] biases2_19_q0;
output  [0:0] biases2_18_address0;
output   biases2_18_ce0;
output   biases2_18_we0;
output  [63:0] biases2_18_d0;
input  [63:0] biases2_18_q0;
output  [0:0] biases2_17_address0;
output   biases2_17_ce0;
output   biases2_17_we0;
output  [63:0] biases2_17_d0;
input  [63:0] biases2_17_q0;
output  [0:0] biases2_16_address0;
output   biases2_16_ce0;
output   biases2_16_we0;
output  [63:0] biases2_16_d0;
input  [63:0] biases2_16_q0;
output  [0:0] biases2_15_address0;
output   biases2_15_ce0;
output   biases2_15_we0;
output  [63:0] biases2_15_d0;
input  [63:0] biases2_15_q0;
output  [0:0] biases2_14_address0;
output   biases2_14_ce0;
output   biases2_14_we0;
output  [63:0] biases2_14_d0;
input  [63:0] biases2_14_q0;
output  [0:0] biases2_13_address0;
output   biases2_13_ce0;
output   biases2_13_we0;
output  [63:0] biases2_13_d0;
input  [63:0] biases2_13_q0;
output  [0:0] biases2_12_address0;
output   biases2_12_ce0;
output   biases2_12_we0;
output  [63:0] biases2_12_d0;
input  [63:0] biases2_12_q0;
output  [0:0] biases2_11_address0;
output   biases2_11_ce0;
output   biases2_11_we0;
output  [63:0] biases2_11_d0;
input  [63:0] biases2_11_q0;
output  [0:0] biases2_10_address0;
output   biases2_10_ce0;
output   biases2_10_we0;
output  [63:0] biases2_10_d0;
input  [63:0] biases2_10_q0;
output  [0:0] biases2_9_address0;
output   biases2_9_ce0;
output   biases2_9_we0;
output  [63:0] biases2_9_d0;
input  [63:0] biases2_9_q0;
output  [0:0] biases2_8_address0;
output   biases2_8_ce0;
output   biases2_8_we0;
output  [63:0] biases2_8_d0;
input  [63:0] biases2_8_q0;
output  [0:0] biases2_7_address0;
output   biases2_7_ce0;
output   biases2_7_we0;
output  [63:0] biases2_7_d0;
input  [63:0] biases2_7_q0;
output  [0:0] biases2_6_address0;
output   biases2_6_ce0;
output   biases2_6_we0;
output  [63:0] biases2_6_d0;
input  [63:0] biases2_6_q0;
output  [0:0] biases2_5_address0;
output   biases2_5_ce0;
output   biases2_5_we0;
output  [63:0] biases2_5_d0;
input  [63:0] biases2_5_q0;
output  [0:0] biases2_4_address0;
output   biases2_4_ce0;
output   biases2_4_we0;
output  [63:0] biases2_4_d0;
input  [63:0] biases2_4_q0;
output  [0:0] biases2_3_address0;
output   biases2_3_ce0;
output   biases2_3_we0;
output  [63:0] biases2_3_d0;
input  [63:0] biases2_3_q0;
output  [0:0] biases2_2_address0;
output   biases2_2_ce0;
output   biases2_2_we0;
output  [63:0] biases2_2_d0;
input  [63:0] biases2_2_q0;
output  [0:0] biases2_1_address0;
output   biases2_1_ce0;
output   biases2_1_we0;
output  [63:0] biases2_1_d0;
input  [63:0] biases2_1_q0;
output  [0:0] biases2_0_address0;
output   biases2_0_ce0;
output   biases2_0_we0;
output  [63:0] biases2_0_d0;
input  [63:0] biases2_0_q0;
output  [0:0] d_biases2_0_address0;
output   d_biases2_0_ce0;
input  [63:0] d_biases2_0_q0;
output  [0:0] d_biases2_4_address0;
output   d_biases2_4_ce0;
input  [63:0] d_biases2_4_q0;
output  [0:0] d_biases2_8_address0;
output   d_biases2_8_ce0;
input  [63:0] d_biases2_8_q0;
output  [0:0] d_biases2_12_address0;
output   d_biases2_12_ce0;
input  [63:0] d_biases2_12_q0;
output  [0:0] d_biases2_16_address0;
output   d_biases2_16_ce0;
input  [63:0] d_biases2_16_q0;
output  [0:0] d_biases2_20_address0;
output   d_biases2_20_ce0;
input  [63:0] d_biases2_20_q0;
output  [0:0] d_biases2_24_address0;
output   d_biases2_24_ce0;
input  [63:0] d_biases2_24_q0;
output  [0:0] d_biases2_28_address0;
output   d_biases2_28_ce0;
input  [63:0] d_biases2_28_q0;
output  [0:0] d_biases2_1_address0;
output   d_biases2_1_ce0;
input  [63:0] d_biases2_1_q0;
output  [0:0] d_biases2_5_address0;
output   d_biases2_5_ce0;
input  [63:0] d_biases2_5_q0;
output  [0:0] d_biases2_9_address0;
output   d_biases2_9_ce0;
input  [63:0] d_biases2_9_q0;
output  [0:0] d_biases2_13_address0;
output   d_biases2_13_ce0;
input  [63:0] d_biases2_13_q0;
output  [0:0] d_biases2_17_address0;
output   d_biases2_17_ce0;
input  [63:0] d_biases2_17_q0;
output  [0:0] d_biases2_21_address0;
output   d_biases2_21_ce0;
input  [63:0] d_biases2_21_q0;
output  [0:0] d_biases2_25_address0;
output   d_biases2_25_ce0;
input  [63:0] d_biases2_25_q0;
output  [0:0] d_biases2_29_address0;
output   d_biases2_29_ce0;
input  [63:0] d_biases2_29_q0;
output  [0:0] d_biases2_2_address0;
output   d_biases2_2_ce0;
input  [63:0] d_biases2_2_q0;
output  [0:0] d_biases2_6_address0;
output   d_biases2_6_ce0;
input  [63:0] d_biases2_6_q0;
output  [0:0] d_biases2_10_address0;
output   d_biases2_10_ce0;
input  [63:0] d_biases2_10_q0;
output  [0:0] d_biases2_14_address0;
output   d_biases2_14_ce0;
input  [63:0] d_biases2_14_q0;
output  [0:0] d_biases2_18_address0;
output   d_biases2_18_ce0;
input  [63:0] d_biases2_18_q0;
output  [0:0] d_biases2_22_address0;
output   d_biases2_22_ce0;
input  [63:0] d_biases2_22_q0;
output  [0:0] d_biases2_26_address0;
output   d_biases2_26_ce0;
input  [63:0] d_biases2_26_q0;
output  [0:0] d_biases2_30_address0;
output   d_biases2_30_ce0;
input  [63:0] d_biases2_30_q0;
output  [0:0] d_biases2_3_address0;
output   d_biases2_3_ce0;
input  [63:0] d_biases2_3_q0;
output  [0:0] d_biases2_7_address0;
output   d_biases2_7_ce0;
input  [63:0] d_biases2_7_q0;
output  [0:0] d_biases2_11_address0;
output   d_biases2_11_ce0;
input  [63:0] d_biases2_11_q0;
output  [0:0] d_biases2_15_address0;
output   d_biases2_15_ce0;
input  [63:0] d_biases2_15_q0;
output  [0:0] d_biases2_19_address0;
output   d_biases2_19_ce0;
input  [63:0] d_biases2_19_q0;
output  [0:0] d_biases2_23_address0;
output   d_biases2_23_ce0;
input  [63:0] d_biases2_23_q0;
output  [0:0] d_biases2_27_address0;
output   d_biases2_27_ce0;
input  [63:0] d_biases2_27_q0;
output  [0:0] d_biases2_31_address0;
output   d_biases2_31_ce0;
input  [63:0] d_biases2_31_q0;
output  [63:0] bias_norm_6_out;
output   bias_norm_6_out_ap_vld;
output  [63:0] grp_fu_1947_p_din0;
output  [63:0] grp_fu_1947_p_din1;
output  [1:0] grp_fu_1947_p_opcode;
input  [63:0] grp_fu_1947_p_dout0;
output   grp_fu_1947_p_ce;
output  [63:0] grp_fu_1951_p_din0;
output  [63:0] grp_fu_1951_p_din1;
input  [63:0] grp_fu_1951_p_dout0;
output   grp_fu_1951_p_ce;
reg ap_idle;
reg bias_norm_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] tmp_reg_1700;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_1046;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_1051;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_1056;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage31_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_3_reg_1694;
reg   [0:0] biases2_0_addr_reg_1744;
reg   [0:0] biases2_4_addr_reg_1749;
reg   [0:0] biases2_8_addr_reg_1754;
reg   [0:0] biases2_12_addr_reg_1759;
reg   [0:0] biases2_16_addr_reg_1764;
reg   [0:0] biases2_20_addr_reg_1769;
reg   [0:0] biases2_24_addr_reg_1774;
reg   [0:0] biases2_28_addr_reg_1779;
reg   [0:0] biases2_1_addr_reg_1904;
reg   [0:0] biases2_5_addr_reg_1909;
reg   [0:0] biases2_9_addr_reg_1914;
reg   [0:0] biases2_13_addr_reg_1919;
reg   [0:0] biases2_17_addr_reg_1924;
reg   [0:0] biases2_21_addr_reg_1929;
reg   [0:0] biases2_25_addr_reg_1934;
reg   [0:0] biases2_29_addr_reg_1939;
reg   [0:0] biases2_2_addr_reg_1944;
reg   [0:0] biases2_6_addr_reg_1949;
reg   [0:0] biases2_10_addr_reg_1954;
reg   [0:0] biases2_14_addr_reg_1959;
reg   [0:0] biases2_18_addr_reg_1964;
reg   [0:0] biases2_22_addr_reg_1969;
reg   [0:0] biases2_26_addr_reg_1974;
reg   [0:0] biases2_30_addr_reg_1979;
reg   [0:0] biases2_3_addr_reg_1984;
reg   [0:0] biases2_7_addr_reg_1989;
reg   [0:0] biases2_11_addr_reg_1994;
reg   [0:0] biases2_15_addr_reg_1999;
reg   [0:0] biases2_19_addr_reg_2004;
reg   [0:0] biases2_23_addr_reg_2009;
reg   [0:0] biases2_27_addr_reg_2014;
reg   [0:0] biases2_31_addr_reg_2019;
wire   [4:0] trunc_ln158_fu_1160_p1;
reg   [4:0] trunc_ln158_reg_2024;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_23_fu_1163_p19;
reg   [63:0] tmp_23_reg_2028;
wire   [63:0] tmp_24_fu_1235_p19;
reg   [63:0] tmp_24_reg_2033;
wire   [63:0] tmp_25_fu_1275_p19;
reg   [63:0] tmp_25_reg_2038;
wire   [63:0] tmp_26_fu_1315_p19;
reg   [63:0] tmp_26_reg_2043;
wire   [63:0] tmp_27_fu_1355_p19;
reg   [63:0] tmp_27_reg_2048;
wire   [63:0] tmp_28_fu_1427_p19;
reg   [63:0] tmp_28_reg_2053;
wire   [63:0] tmp_s_fu_1499_p19;
reg   [63:0] tmp_s_reg_2058;
wire   [63:0] tmp_29_fu_1571_p19;
reg   [63:0] tmp_29_reg_2063;
reg   [63:0] mul108_2_reg_2068;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul108_3_reg_2073;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] sub111_1_reg_2078;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sub111_2_reg_2085;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] sub111_3_reg_2092;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] mul116_2_reg_2104;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] mul116_3_reg_2109;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] bias_norm_3_reg_2114;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln121_fu_1092_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] bias_norm_fu_190;
wire    ap_block_pp0_stage23;
wire    ap_loop_init;
wire    ap_block_pp0_stage24;
reg   [6:0] i_fu_194;
wire   [6:0] add_ln158_fu_1660_p2;
reg   [6:0] ap_sig_allocacmp_i_3;
wire    ap_block_pp0_stage23_01001;
reg    d_biases2_0_ce0_local;
reg    d_biases2_4_ce0_local;
reg    d_biases2_8_ce0_local;
reg    d_biases2_12_ce0_local;
reg    d_biases2_16_ce0_local;
reg    d_biases2_20_ce0_local;
reg    d_biases2_24_ce0_local;
reg    d_biases2_28_ce0_local;
reg    biases2_0_ce0_local;
reg   [0:0] biases2_0_address0_local;
reg    biases2_0_we0_local;
reg    ap_predicate_pred949_state18;
wire   [63:0] bitcast_ln159_32_fu_1611_p1;
wire    ap_block_pp0_stage17;
reg    biases2_4_ce0_local;
reg   [0:0] biases2_4_address0_local;
reg    biases2_4_we0_local;
reg    ap_predicate_pred967_state18;
reg    biases2_8_ce0_local;
reg   [0:0] biases2_8_address0_local;
reg    biases2_8_we0_local;
reg    ap_predicate_pred978_state18;
reg    biases2_12_ce0_local;
reg   [0:0] biases2_12_address0_local;
reg    biases2_12_we0_local;
reg    ap_predicate_pred989_state18;
reg    biases2_16_ce0_local;
reg   [0:0] biases2_16_address0_local;
reg    biases2_16_we0_local;
reg    ap_predicate_pred1000_state18;
reg    biases2_20_ce0_local;
reg   [0:0] biases2_20_address0_local;
reg    biases2_20_we0_local;
reg    ap_predicate_pred1011_state18;
reg    biases2_24_ce0_local;
reg   [0:0] biases2_24_address0_local;
reg    biases2_24_we0_local;
reg    ap_predicate_pred1022_state18;
reg    biases2_28_ce0_local;
reg   [0:0] biases2_28_address0_local;
reg    biases2_28_we0_local;
reg    ap_predicate_pred1044_state18;
reg    d_biases2_1_ce0_local;
reg    d_biases2_5_ce0_local;
reg    d_biases2_9_ce0_local;
reg    d_biases2_13_ce0_local;
reg    d_biases2_17_ce0_local;
reg    d_biases2_21_ce0_local;
reg    d_biases2_25_ce0_local;
reg    d_biases2_29_ce0_local;
reg    d_biases2_2_ce0_local;
reg    d_biases2_6_ce0_local;
reg    d_biases2_10_ce0_local;
reg    d_biases2_14_ce0_local;
reg    d_biases2_18_ce0_local;
reg    d_biases2_22_ce0_local;
reg    d_biases2_26_ce0_local;
reg    d_biases2_30_ce0_local;
reg    d_biases2_3_ce0_local;
reg    d_biases2_7_ce0_local;
reg    d_biases2_11_ce0_local;
reg    d_biases2_15_ce0_local;
reg    d_biases2_19_ce0_local;
reg    d_biases2_23_ce0_local;
reg    d_biases2_27_ce0_local;
reg    d_biases2_31_ce0_local;
reg    biases2_1_ce0_local;
reg   [0:0] biases2_1_address0_local;
reg    biases2_1_we0_local;
reg    ap_predicate_pred949_state19;
wire   [63:0] bitcast_ln159_33_fu_1623_p1;
wire    ap_block_pp0_stage18;
reg    biases2_5_ce0_local;
reg   [0:0] biases2_5_address0_local;
reg    biases2_5_we0_local;
reg    ap_predicate_pred967_state19;
reg    biases2_9_ce0_local;
reg   [0:0] biases2_9_address0_local;
reg    biases2_9_we0_local;
reg    ap_predicate_pred978_state19;
reg    biases2_13_ce0_local;
reg   [0:0] biases2_13_address0_local;
reg    biases2_13_we0_local;
reg    ap_predicate_pred989_state19;
reg    biases2_17_ce0_local;
reg   [0:0] biases2_17_address0_local;
reg    biases2_17_we0_local;
reg    ap_predicate_pred1000_state19;
reg    biases2_21_ce0_local;
reg   [0:0] biases2_21_address0_local;
reg    biases2_21_we0_local;
reg    ap_predicate_pred1011_state19;
reg    biases2_25_ce0_local;
reg   [0:0] biases2_25_address0_local;
reg    biases2_25_we0_local;
reg    ap_predicate_pred1022_state19;
reg    biases2_29_ce0_local;
reg   [0:0] biases2_29_address0_local;
reg    biases2_29_we0_local;
reg    ap_predicate_pred1044_state19;
reg    biases2_2_ce0_local;
reg   [0:0] biases2_2_address0_local;
reg    biases2_2_we0_local;
reg    ap_predicate_pred949_state20;
wire   [63:0] bitcast_ln159_34_fu_1634_p1;
wire    ap_block_pp0_stage19;
reg    biases2_6_ce0_local;
reg   [0:0] biases2_6_address0_local;
reg    biases2_6_we0_local;
reg    ap_predicate_pred967_state20;
reg    biases2_10_ce0_local;
reg   [0:0] biases2_10_address0_local;
reg    biases2_10_we0_local;
reg    ap_predicate_pred978_state20;
reg    biases2_14_ce0_local;
reg   [0:0] biases2_14_address0_local;
reg    biases2_14_we0_local;
reg    ap_predicate_pred989_state20;
reg    biases2_18_ce0_local;
reg   [0:0] biases2_18_address0_local;
reg    biases2_18_we0_local;
reg    ap_predicate_pred1000_state20;
reg    biases2_22_ce0_local;
reg   [0:0] biases2_22_address0_local;
reg    biases2_22_we0_local;
reg    ap_predicate_pred1011_state20;
reg    biases2_26_ce0_local;
reg   [0:0] biases2_26_address0_local;
reg    biases2_26_we0_local;
reg    ap_predicate_pred1022_state20;
reg    biases2_30_ce0_local;
reg   [0:0] biases2_30_address0_local;
reg    biases2_30_we0_local;
reg    ap_predicate_pred1044_state20;
reg    biases2_3_ce0_local;
reg   [0:0] biases2_3_address0_local;
reg    biases2_3_we0_local;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg    ap_predicate_pred949_state21;
wire   [63:0] bitcast_ln159_35_fu_1645_p1;
wire    ap_block_pp0_stage20;
reg    biases2_7_ce0_local;
reg   [0:0] biases2_7_address0_local;
reg    biases2_7_we0_local;
reg    ap_predicate_pred967_state21;
reg    biases2_11_ce0_local;
reg   [0:0] biases2_11_address0_local;
reg    biases2_11_we0_local;
reg    ap_predicate_pred978_state21;
reg    biases2_15_ce0_local;
reg   [0:0] biases2_15_address0_local;
reg    biases2_15_we0_local;
reg    ap_predicate_pred989_state21;
reg    biases2_19_ce0_local;
reg   [0:0] biases2_19_address0_local;
reg    biases2_19_we0_local;
reg    ap_predicate_pred1000_state21;
reg    biases2_23_ce0_local;
reg   [0:0] biases2_23_address0_local;
reg    biases2_23_we0_local;
reg    ap_predicate_pred1011_state21;
reg    biases2_27_ce0_local;
reg   [0:0] biases2_27_address0_local;
reg    biases2_27_we0_local;
reg    ap_predicate_pred1022_state21;
reg    biases2_31_ce0_local;
reg   [0:0] biases2_31_address0_local;
reg    biases2_31_we0_local;
reg    ap_predicate_pred1044_state21;
reg   [63:0] grp_fu_1037_p0;
reg   [63:0] grp_fu_1037_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage16;
reg   [63:0] grp_fu_1041_p0;
reg   [63:0] grp_fu_1041_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [0:0] tmp_2_fu_1084_p3;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_23_fu_1163_p17;
wire   [63:0] tmp_24_fu_1235_p2;
wire   [63:0] tmp_24_fu_1235_p4;
wire   [63:0] tmp_24_fu_1235_p6;
wire   [63:0] tmp_24_fu_1235_p8;
wire   [63:0] tmp_24_fu_1235_p10;
wire   [63:0] tmp_24_fu_1235_p12;
wire   [63:0] tmp_24_fu_1235_p14;
wire   [63:0] tmp_24_fu_1235_p16;
wire   [63:0] tmp_24_fu_1235_p17;
wire   [63:0] tmp_25_fu_1275_p17;
wire   [63:0] tmp_26_fu_1315_p17;
wire   [63:0] tmp_27_fu_1355_p17;
wire   [63:0] tmp_28_fu_1427_p2;
wire   [63:0] tmp_28_fu_1427_p4;
wire   [63:0] tmp_28_fu_1427_p6;
wire   [63:0] tmp_28_fu_1427_p8;
wire   [63:0] tmp_28_fu_1427_p10;
wire   [63:0] tmp_28_fu_1427_p12;
wire   [63:0] tmp_28_fu_1427_p14;
wire   [63:0] tmp_28_fu_1427_p16;
wire   [63:0] tmp_28_fu_1427_p17;
wire   [63:0] tmp_s_fu_1499_p2;
wire   [63:0] tmp_s_fu_1499_p4;
wire   [63:0] tmp_s_fu_1499_p6;
wire   [63:0] tmp_s_fu_1499_p8;
wire   [63:0] tmp_s_fu_1499_p10;
wire   [63:0] tmp_s_fu_1499_p12;
wire   [63:0] tmp_s_fu_1499_p14;
wire   [63:0] tmp_s_fu_1499_p16;
wire   [63:0] tmp_s_fu_1499_p17;
wire   [63:0] tmp_29_fu_1571_p2;
wire   [63:0] tmp_29_fu_1571_p4;
wire   [63:0] tmp_29_fu_1571_p6;
wire   [63:0] tmp_29_fu_1571_p8;
wire   [63:0] tmp_29_fu_1571_p10;
wire   [63:0] tmp_29_fu_1571_p12;
wire   [63:0] tmp_29_fu_1571_p14;
wire   [63:0] tmp_29_fu_1571_p16;
wire   [63:0] tmp_29_fu_1571_p17;
wire    ap_block_pp0_stage31;
reg   [1:0] grp_fu_1037_opcode;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
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
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
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
wire   [4:0] tmp_23_fu_1163_p1;
wire   [4:0] tmp_23_fu_1163_p3;
wire   [4:0] tmp_23_fu_1163_p5;
wire   [4:0] tmp_23_fu_1163_p7;
wire  signed [4:0] tmp_23_fu_1163_p9;
wire  signed [4:0] tmp_23_fu_1163_p11;
wire  signed [4:0] tmp_23_fu_1163_p13;
wire  signed [4:0] tmp_23_fu_1163_p15;
wire   [4:0] tmp_24_fu_1235_p1;
wire   [4:0] tmp_24_fu_1235_p3;
wire   [4:0] tmp_24_fu_1235_p5;
wire   [4:0] tmp_24_fu_1235_p7;
wire  signed [4:0] tmp_24_fu_1235_p9;
wire  signed [4:0] tmp_24_fu_1235_p11;
wire  signed [4:0] tmp_24_fu_1235_p13;
wire  signed [4:0] tmp_24_fu_1235_p15;
wire   [4:0] tmp_25_fu_1275_p1;
wire   [4:0] tmp_25_fu_1275_p3;
wire   [4:0] tmp_25_fu_1275_p5;
wire   [4:0] tmp_25_fu_1275_p7;
wire  signed [4:0] tmp_25_fu_1275_p9;
wire  signed [4:0] tmp_25_fu_1275_p11;
wire  signed [4:0] tmp_25_fu_1275_p13;
wire  signed [4:0] tmp_25_fu_1275_p15;
wire   [4:0] tmp_26_fu_1315_p1;
wire   [4:0] tmp_26_fu_1315_p3;
wire   [4:0] tmp_26_fu_1315_p5;
wire   [4:0] tmp_26_fu_1315_p7;
wire  signed [4:0] tmp_26_fu_1315_p9;
wire  signed [4:0] tmp_26_fu_1315_p11;
wire  signed [4:0] tmp_26_fu_1315_p13;
wire  signed [4:0] tmp_26_fu_1315_p15;
wire   [4:0] tmp_27_fu_1355_p1;
wire   [4:0] tmp_27_fu_1355_p3;
wire   [4:0] tmp_27_fu_1355_p5;
wire   [4:0] tmp_27_fu_1355_p7;
wire  signed [4:0] tmp_27_fu_1355_p9;
wire  signed [4:0] tmp_27_fu_1355_p11;
wire  signed [4:0] tmp_27_fu_1355_p13;
wire  signed [4:0] tmp_27_fu_1355_p15;
wire   [4:0] tmp_28_fu_1427_p1;
wire   [4:0] tmp_28_fu_1427_p3;
wire   [4:0] tmp_28_fu_1427_p5;
wire   [4:0] tmp_28_fu_1427_p7;
wire  signed [4:0] tmp_28_fu_1427_p9;
wire  signed [4:0] tmp_28_fu_1427_p11;
wire  signed [4:0] tmp_28_fu_1427_p13;
wire  signed [4:0] tmp_28_fu_1427_p15;
wire   [4:0] tmp_s_fu_1499_p1;
wire   [4:0] tmp_s_fu_1499_p3;
wire   [4:0] tmp_s_fu_1499_p5;
wire   [4:0] tmp_s_fu_1499_p7;
wire  signed [4:0] tmp_s_fu_1499_p9;
wire  signed [4:0] tmp_s_fu_1499_p11;
wire  signed [4:0] tmp_s_fu_1499_p13;
wire  signed [4:0] tmp_s_fu_1499_p15;
wire   [4:0] tmp_29_fu_1571_p1;
wire   [4:0] tmp_29_fu_1571_p3;
wire   [4:0] tmp_29_fu_1571_p5;
wire   [4:0] tmp_29_fu_1571_p7;
wire  signed [4:0] tmp_29_fu_1571_p9;
wire  signed [4:0] tmp_29_fu_1571_p11;
wire  signed [4:0] tmp_29_fu_1571_p13;
wire  signed [4:0] tmp_29_fu_1571_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_190 = 64'd0;
#0 i_fu_194 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1792(.din0(d_biases2_0_q0),.din1(d_biases2_4_q0),.din2(d_biases2_8_q0),.din3(d_biases2_12_q0),.din4(d_biases2_16_q0),.din5(d_biases2_20_q0),.din6(d_biases2_24_q0),.din7(d_biases2_28_q0),.def(tmp_23_fu_1163_p17),.sel(trunc_ln158_fu_1160_p1),.dout(tmp_23_fu_1163_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1793(.din0(tmp_24_fu_1235_p2),.din1(tmp_24_fu_1235_p4),.din2(tmp_24_fu_1235_p6),.din3(tmp_24_fu_1235_p8),.din4(tmp_24_fu_1235_p10),.din5(tmp_24_fu_1235_p12),.din6(tmp_24_fu_1235_p14),.din7(tmp_24_fu_1235_p16),.def(tmp_24_fu_1235_p17),.sel(trunc_ln158_fu_1160_p1),.dout(tmp_24_fu_1235_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1794(.din0(d_biases2_1_q0),.din1(d_biases2_5_q0),.din2(d_biases2_9_q0),.din3(d_biases2_13_q0),.din4(d_biases2_17_q0),.din5(d_biases2_21_q0),.din6(d_biases2_25_q0),.din7(d_biases2_29_q0),.def(tmp_25_fu_1275_p17),.sel(trunc_ln158_fu_1160_p1),.dout(tmp_25_fu_1275_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1795(.din0(d_biases2_2_q0),.din1(d_biases2_6_q0),.din2(d_biases2_10_q0),.din3(d_biases2_14_q0),.din4(d_biases2_18_q0),.din5(d_biases2_22_q0),.din6(d_biases2_26_q0),.din7(d_biases2_30_q0),.def(tmp_26_fu_1315_p17),.sel(trunc_ln158_fu_1160_p1),.dout(tmp_26_fu_1315_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1796(.din0(d_biases2_3_q0),.din1(d_biases2_7_q0),.din2(d_biases2_11_q0),.din3(d_biases2_15_q0),.din4(d_biases2_19_q0),.din5(d_biases2_23_q0),.din6(d_biases2_27_q0),.din7(d_biases2_31_q0),.def(tmp_27_fu_1355_p17),.sel(trunc_ln158_fu_1160_p1),.dout(tmp_27_fu_1355_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1797(.din0(tmp_28_fu_1427_p2),.din1(tmp_28_fu_1427_p4),.din2(tmp_28_fu_1427_p6),.din3(tmp_28_fu_1427_p8),.din4(tmp_28_fu_1427_p10),.din5(tmp_28_fu_1427_p12),.din6(tmp_28_fu_1427_p14),.din7(tmp_28_fu_1427_p16),.def(tmp_28_fu_1427_p17),.sel(trunc_ln158_fu_1160_p1),.dout(tmp_28_fu_1427_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1798(.din0(tmp_s_fu_1499_p2),.din1(tmp_s_fu_1499_p4),.din2(tmp_s_fu_1499_p6),.din3(tmp_s_fu_1499_p8),.din4(tmp_s_fu_1499_p10),.din5(tmp_s_fu_1499_p12),.din6(tmp_s_fu_1499_p14),.din7(tmp_s_fu_1499_p16),.def(tmp_s_fu_1499_p17),.sel(trunc_ln158_fu_1160_p1),.dout(tmp_s_fu_1499_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1799(.din0(tmp_29_fu_1571_p2),.din1(tmp_29_fu_1571_p4),.din2(tmp_29_fu_1571_p6),.din3(tmp_29_fu_1571_p8),.din4(tmp_29_fu_1571_p10),.din5(tmp_29_fu_1571_p12),.din6(tmp_29_fu_1571_p14),.din7(tmp_29_fu_1571_p16),.def(tmp_29_fu_1571_p17),.sel(trunc_ln158_fu_1160_p1),.dout(tmp_29_fu_1571_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage23),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage23)) begin
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
        if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_190 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        bias_norm_fu_190 <= grp_fu_1947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_194 <= 7'd0;
    end else if (((tmp_reg_1700 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        i_fu_194 <= add_ln158_fu_1660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_predicate_pred1000_state18 <= ((trunc_ln158_reg_2024 == 5'd16) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1011_state18 <= ((trunc_ln158_reg_2024 == 5'd20) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1022_state18 <= ((trunc_ln158_reg_2024 == 5'd24) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1044_state18 <= (~(trunc_ln158_reg_2024 == 5'd16) & ~(trunc_ln158_reg_2024 == 5'd12) & ~(trunc_ln158_reg_2024 == 5'd8) & ~(trunc_ln158_reg_2024 == 5'd4) & ~(trunc_ln158_reg_2024 == 5'd0) & ~(trunc_ln158_reg_2024 == 5'd24) & ~(trunc_ln158_reg_2024 == 5'd20) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred949_state18 <= ((trunc_ln158_reg_2024 == 5'd0) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred967_state18 <= ((trunc_ln158_reg_2024 == 5'd4) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred978_state18 <= ((trunc_ln158_reg_2024 == 5'd8) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred989_state18 <= ((trunc_ln158_reg_2024 == 5'd12) & (tmp_reg_1700 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_predicate_pred1000_state19 <= ((trunc_ln158_reg_2024 == 5'd16) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1011_state19 <= ((trunc_ln158_reg_2024 == 5'd20) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1022_state19 <= ((trunc_ln158_reg_2024 == 5'd24) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1044_state19 <= (~(trunc_ln158_reg_2024 == 5'd16) & ~(trunc_ln158_reg_2024 == 5'd12) & ~(trunc_ln158_reg_2024 == 5'd8) & ~(trunc_ln158_reg_2024 == 5'd4) & ~(trunc_ln158_reg_2024 == 5'd0) & ~(trunc_ln158_reg_2024 == 5'd24) & ~(trunc_ln158_reg_2024 == 5'd20) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred949_state19 <= ((trunc_ln158_reg_2024 == 5'd0) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred967_state19 <= ((trunc_ln158_reg_2024 == 5'd4) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred978_state19 <= ((trunc_ln158_reg_2024 == 5'd8) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred989_state19 <= ((trunc_ln158_reg_2024 == 5'd12) & (tmp_reg_1700 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        ap_predicate_pred1000_state20 <= ((trunc_ln158_reg_2024 == 5'd16) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1011_state20 <= ((trunc_ln158_reg_2024 == 5'd20) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1022_state20 <= ((trunc_ln158_reg_2024 == 5'd24) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1044_state20 <= (~(trunc_ln158_reg_2024 == 5'd16) & ~(trunc_ln158_reg_2024 == 5'd12) & ~(trunc_ln158_reg_2024 == 5'd8) & ~(trunc_ln158_reg_2024 == 5'd4) & ~(trunc_ln158_reg_2024 == 5'd0) & ~(trunc_ln158_reg_2024 == 5'd24) & ~(trunc_ln158_reg_2024 == 5'd20) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred949_state20 <= ((trunc_ln158_reg_2024 == 5'd0) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred967_state20 <= ((trunc_ln158_reg_2024 == 5'd4) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred978_state20 <= ((trunc_ln158_reg_2024 == 5'd8) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred989_state20 <= ((trunc_ln158_reg_2024 == 5'd12) & (tmp_reg_1700 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_predicate_pred1000_state21 <= ((trunc_ln158_reg_2024 == 5'd16) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1011_state21 <= ((trunc_ln158_reg_2024 == 5'd20) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1022_state21 <= ((trunc_ln158_reg_2024 == 5'd24) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred1044_state21 <= (~(trunc_ln158_reg_2024 == 5'd16) & ~(trunc_ln158_reg_2024 == 5'd12) & ~(trunc_ln158_reg_2024 == 5'd8) & ~(trunc_ln158_reg_2024 == 5'd4) & ~(trunc_ln158_reg_2024 == 5'd0) & ~(trunc_ln158_reg_2024 == 5'd24) & ~(trunc_ln158_reg_2024 == 5'd20) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred949_state21 <= ((trunc_ln158_reg_2024 == 5'd0) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred967_state21 <= ((trunc_ln158_reg_2024 == 5'd4) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred978_state21 <= ((trunc_ln158_reg_2024 == 5'd8) & (tmp_reg_1700 == 1'd0));
        ap_predicate_pred989_state21 <= ((trunc_ln158_reg_2024 == 5'd12) & (tmp_reg_1700 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        bias_norm_3_reg_2114 <= grp_fu_1947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_0_addr_reg_1744 <= zext_ln121_fu_1092_p1;
        biases2_10_addr_reg_1954 <= zext_ln121_fu_1092_p1;
        biases2_11_addr_reg_1994 <= zext_ln121_fu_1092_p1;
        biases2_12_addr_reg_1759 <= zext_ln121_fu_1092_p1;
        biases2_13_addr_reg_1919 <= zext_ln121_fu_1092_p1;
        biases2_14_addr_reg_1959 <= zext_ln121_fu_1092_p1;
        biases2_15_addr_reg_1999 <= zext_ln121_fu_1092_p1;
        biases2_16_addr_reg_1764 <= zext_ln121_fu_1092_p1;
        biases2_17_addr_reg_1924 <= zext_ln121_fu_1092_p1;
        biases2_18_addr_reg_1964 <= zext_ln121_fu_1092_p1;
        biases2_19_addr_reg_2004 <= zext_ln121_fu_1092_p1;
        biases2_1_addr_reg_1904 <= zext_ln121_fu_1092_p1;
        biases2_20_addr_reg_1769 <= zext_ln121_fu_1092_p1;
        biases2_21_addr_reg_1929 <= zext_ln121_fu_1092_p1;
        biases2_22_addr_reg_1969 <= zext_ln121_fu_1092_p1;
        biases2_23_addr_reg_2009 <= zext_ln121_fu_1092_p1;
        biases2_24_addr_reg_1774 <= zext_ln121_fu_1092_p1;
        biases2_25_addr_reg_1934 <= zext_ln121_fu_1092_p1;
        biases2_26_addr_reg_1974 <= zext_ln121_fu_1092_p1;
        biases2_27_addr_reg_2014 <= zext_ln121_fu_1092_p1;
        biases2_28_addr_reg_1779 <= zext_ln121_fu_1092_p1;
        biases2_29_addr_reg_1939 <= zext_ln121_fu_1092_p1;
        biases2_2_addr_reg_1944 <= zext_ln121_fu_1092_p1;
        biases2_30_addr_reg_1979 <= zext_ln121_fu_1092_p1;
        biases2_31_addr_reg_2019 <= zext_ln121_fu_1092_p1;
        biases2_3_addr_reg_1984 <= zext_ln121_fu_1092_p1;
        biases2_4_addr_reg_1749 <= zext_ln121_fu_1092_p1;
        biases2_5_addr_reg_1909 <= zext_ln121_fu_1092_p1;
        biases2_6_addr_reg_1949 <= zext_ln121_fu_1092_p1;
        biases2_7_addr_reg_1989 <= zext_ln121_fu_1092_p1;
        biases2_8_addr_reg_1754 <= zext_ln121_fu_1092_p1;
        biases2_9_addr_reg_1914 <= zext_ln121_fu_1092_p1;
        i_3_reg_1694 <= ap_sig_allocacmp_i_3;
        tmp_reg_1700 <= ap_sig_allocacmp_i_3[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul108_2_reg_2068 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul108_3_reg_2073 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        mul116_2_reg_2104 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        mul116_3_reg_2109 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1046 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1051 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_1056 <= grp_fu_1947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sub111_1_reg_2078 <= grp_fu_1947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub111_2_reg_2085 <= grp_fu_1947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sub111_3_reg_2092 <= grp_fu_1947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_23_reg_2028 <= tmp_23_fu_1163_p19;
        tmp_24_reg_2033 <= tmp_24_fu_1235_p19;
        tmp_25_reg_2038 <= tmp_25_fu_1275_p19;
        tmp_26_reg_2043 <= tmp_26_fu_1315_p19;
        tmp_27_reg_2048 <= tmp_27_fu_1355_p19;
        tmp_28_reg_2053 <= tmp_28_fu_1427_p19;
        tmp_29_reg_2063 <= tmp_29_fu_1571_p19;
        tmp_s_reg_2058 <= tmp_s_fu_1499_p19;
        trunc_ln158_reg_2024 <= trunc_ln158_fu_1160_p1;
    end
end
always @ (*) begin
    if (((tmp_reg_1700 == 1'd1) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
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
        ap_sig_allocacmp_i_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_194;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_1700 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        bias_norm_6_out_ap_vld = 1'b1;
    end else begin
        bias_norm_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases2_0_address0_local = biases2_0_addr_reg_1744;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_0_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_0_address0_local = 'bx;
        end
    end else begin
        biases2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_0_ce0_local = 1'b1;
    end else begin
        biases2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred949_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_0_we0_local = 1'b1;
    end else begin
        biases2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases2_10_address0_local = biases2_10_addr_reg_1954;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_10_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_10_address0_local = 'bx;
        end
    end else begin
        biases2_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_10_ce0_local = 1'b1;
    end else begin
        biases2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred978_state20 == 1'b1))) begin
        biases2_10_we0_local = 1'b1;
    end else begin
        biases2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases2_11_address0_local = biases2_11_addr_reg_1994;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_11_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_11_address0_local = 'bx;
        end
    end else begin
        biases2_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        biases2_11_ce0_local = 1'b1;
    end else begin
        biases2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred978_state21 == 1'b1))) begin
        biases2_11_we0_local = 1'b1;
    end else begin
        biases2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases2_12_address0_local = biases2_12_addr_reg_1759;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_12_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_12_address0_local = 'bx;
        end
    end else begin
        biases2_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_12_ce0_local = 1'b1;
    end else begin
        biases2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred989_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_12_we0_local = 1'b1;
    end else begin
        biases2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases2_13_address0_local = biases2_13_addr_reg_1919;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_13_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_13_address0_local = 'bx;
        end
    end else begin
        biases2_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_13_ce0_local = 1'b1;
    end else begin
        biases2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred989_state19 == 1'b1))) begin
        biases2_13_we0_local = 1'b1;
    end else begin
        biases2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases2_14_address0_local = biases2_14_addr_reg_1959;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_14_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_14_address0_local = 'bx;
        end
    end else begin
        biases2_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_14_ce0_local = 1'b1;
    end else begin
        biases2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred989_state20 == 1'b1))) begin
        biases2_14_we0_local = 1'b1;
    end else begin
        biases2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases2_15_address0_local = biases2_15_addr_reg_1999;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_15_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_15_address0_local = 'bx;
        end
    end else begin
        biases2_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        biases2_15_ce0_local = 1'b1;
    end else begin
        biases2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred989_state21 == 1'b1))) begin
        biases2_15_we0_local = 1'b1;
    end else begin
        biases2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases2_16_address0_local = biases2_16_addr_reg_1764;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_16_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_16_address0_local = 'bx;
        end
    end else begin
        biases2_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_16_ce0_local = 1'b1;
    end else begin
        biases2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1000_state18 == 1'b1))) begin
        biases2_16_we0_local = 1'b1;
    end else begin
        biases2_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases2_17_address0_local = biases2_17_addr_reg_1924;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_17_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_17_address0_local = 'bx;
        end
    end else begin
        biases2_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_17_ce0_local = 1'b1;
    end else begin
        biases2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1000_state19 == 1'b1))) begin
        biases2_17_we0_local = 1'b1;
    end else begin
        biases2_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases2_18_address0_local = biases2_18_addr_reg_1964;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_18_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_18_address0_local = 'bx;
        end
    end else begin
        biases2_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_18_ce0_local = 1'b1;
    end else begin
        biases2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1000_state20 == 1'b1))) begin
        biases2_18_we0_local = 1'b1;
    end else begin
        biases2_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases2_19_address0_local = biases2_19_addr_reg_2004;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_19_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_19_address0_local = 'bx;
        end
    end else begin
        biases2_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        biases2_19_ce0_local = 1'b1;
    end else begin
        biases2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1000_state21 == 1'b1))) begin
        biases2_19_we0_local = 1'b1;
    end else begin
        biases2_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases2_1_address0_local = biases2_1_addr_reg_1904;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_1_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_1_address0_local = 'bx;
        end
    end else begin
        biases2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_1_ce0_local = 1'b1;
    end else begin
        biases2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred949_state19 == 1'b1))) begin
        biases2_1_we0_local = 1'b1;
    end else begin
        biases2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases2_20_address0_local = biases2_20_addr_reg_1769;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_20_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_20_address0_local = 'bx;
        end
    end else begin
        biases2_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_20_ce0_local = 1'b1;
    end else begin
        biases2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1011_state18 == 1'b1))) begin
        biases2_20_we0_local = 1'b1;
    end else begin
        biases2_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases2_21_address0_local = biases2_21_addr_reg_1929;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_21_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_21_address0_local = 'bx;
        end
    end else begin
        biases2_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_21_ce0_local = 1'b1;
    end else begin
        biases2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1011_state19 == 1'b1))) begin
        biases2_21_we0_local = 1'b1;
    end else begin
        biases2_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases2_22_address0_local = biases2_22_addr_reg_1969;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_22_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_22_address0_local = 'bx;
        end
    end else begin
        biases2_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_22_ce0_local = 1'b1;
    end else begin
        biases2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1011_state20 == 1'b1))) begin
        biases2_22_we0_local = 1'b1;
    end else begin
        biases2_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases2_23_address0_local = biases2_23_addr_reg_2009;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_23_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_23_address0_local = 'bx;
        end
    end else begin
        biases2_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        biases2_23_ce0_local = 1'b1;
    end else begin
        biases2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1011_state21 == 1'b1))) begin
        biases2_23_we0_local = 1'b1;
    end else begin
        biases2_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases2_24_address0_local = biases2_24_addr_reg_1774;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_24_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_24_address0_local = 'bx;
        end
    end else begin
        biases2_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_24_ce0_local = 1'b1;
    end else begin
        biases2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1022_state18 == 1'b1))) begin
        biases2_24_we0_local = 1'b1;
    end else begin
        biases2_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases2_25_address0_local = biases2_25_addr_reg_1934;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_25_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_25_address0_local = 'bx;
        end
    end else begin
        biases2_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_25_ce0_local = 1'b1;
    end else begin
        biases2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1022_state19 == 1'b1))) begin
        biases2_25_we0_local = 1'b1;
    end else begin
        biases2_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases2_26_address0_local = biases2_26_addr_reg_1974;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_26_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_26_address0_local = 'bx;
        end
    end else begin
        biases2_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_26_ce0_local = 1'b1;
    end else begin
        biases2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1022_state20 == 1'b1))) begin
        biases2_26_we0_local = 1'b1;
    end else begin
        biases2_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases2_27_address0_local = biases2_27_addr_reg_2014;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_27_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_27_address0_local = 'bx;
        end
    end else begin
        biases2_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        biases2_27_ce0_local = 1'b1;
    end else begin
        biases2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1022_state21 == 1'b1))) begin
        biases2_27_we0_local = 1'b1;
    end else begin
        biases2_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases2_28_address0_local = biases2_28_addr_reg_1779;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_28_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_28_address0_local = 'bx;
        end
    end else begin
        biases2_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_28_ce0_local = 1'b1;
    end else begin
        biases2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1044_state18 == 1'b1))) begin
        biases2_28_we0_local = 1'b1;
    end else begin
        biases2_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases2_29_address0_local = biases2_29_addr_reg_1939;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_29_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_29_address0_local = 'bx;
        end
    end else begin
        biases2_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_29_ce0_local = 1'b1;
    end else begin
        biases2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1044_state19 == 1'b1))) begin
        biases2_29_we0_local = 1'b1;
    end else begin
        biases2_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases2_2_address0_local = biases2_2_addr_reg_1944;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_2_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_2_address0_local = 'bx;
        end
    end else begin
        biases2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_2_ce0_local = 1'b1;
    end else begin
        biases2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred949_state20 == 1'b1))) begin
        biases2_2_we0_local = 1'b1;
    end else begin
        biases2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases2_30_address0_local = biases2_30_addr_reg_1979;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_30_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_30_address0_local = 'bx;
        end
    end else begin
        biases2_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_30_ce0_local = 1'b1;
    end else begin
        biases2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1044_state20 == 1'b1))) begin
        biases2_30_we0_local = 1'b1;
    end else begin
        biases2_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases2_31_address0_local = biases2_31_addr_reg_2019;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_31_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_31_address0_local = 'bx;
        end
    end else begin
        biases2_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        biases2_31_ce0_local = 1'b1;
    end else begin
        biases2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1044_state21 == 1'b1))) begin
        biases2_31_we0_local = 1'b1;
    end else begin
        biases2_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases2_3_address0_local = biases2_3_addr_reg_1984;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_3_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_3_address0_local = 'bx;
        end
    end else begin
        biases2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        biases2_3_ce0_local = 1'b1;
    end else begin
        biases2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred949_state21 == 1'b1))) begin
        biases2_3_we0_local = 1'b1;
    end else begin
        biases2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases2_4_address0_local = biases2_4_addr_reg_1749;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_4_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_4_address0_local = 'bx;
        end
    end else begin
        biases2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_4_ce0_local = 1'b1;
    end else begin
        biases2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred967_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_4_we0_local = 1'b1;
    end else begin
        biases2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases2_5_address0_local = biases2_5_addr_reg_1909;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_5_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_5_address0_local = 'bx;
        end
    end else begin
        biases2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_5_ce0_local = 1'b1;
    end else begin
        biases2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred967_state19 == 1'b1))) begin
        biases2_5_we0_local = 1'b1;
    end else begin
        biases2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases2_6_address0_local = biases2_6_addr_reg_1949;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_6_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_6_address0_local = 'bx;
        end
    end else begin
        biases2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_6_ce0_local = 1'b1;
    end else begin
        biases2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred967_state20 == 1'b1))) begin
        biases2_6_we0_local = 1'b1;
    end else begin
        biases2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases2_7_address0_local = biases2_7_addr_reg_1989;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_7_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_7_address0_local = 'bx;
        end
    end else begin
        biases2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        biases2_7_ce0_local = 1'b1;
    end else begin
        biases2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred967_state21 == 1'b1))) begin
        biases2_7_we0_local = 1'b1;
    end else begin
        biases2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases2_8_address0_local = biases2_8_addr_reg_1754;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_8_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_8_address0_local = 'bx;
        end
    end else begin
        biases2_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_8_ce0_local = 1'b1;
    end else begin
        biases2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred978_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases2_8_we0_local = 1'b1;
    end else begin
        biases2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases2_9_address0_local = biases2_9_addr_reg_1914;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases2_9_address0_local = zext_ln121_fu_1092_p1;
        end else begin
            biases2_9_address0_local = 'bx;
        end
    end else begin
        biases2_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_9_ce0_local = 1'b1;
    end else begin
        biases2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred978_state19 == 1'b1))) begin
        biases2_9_we0_local = 1'b1;
    end else begin
        biases2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_0_ce0_local = 1'b1;
    end else begin
        d_biases2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_10_ce0_local = 1'b1;
    end else begin
        d_biases2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_11_ce0_local = 1'b1;
    end else begin
        d_biases2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_12_ce0_local = 1'b1;
    end else begin
        d_biases2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_13_ce0_local = 1'b1;
    end else begin
        d_biases2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_14_ce0_local = 1'b1;
    end else begin
        d_biases2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_15_ce0_local = 1'b1;
    end else begin
        d_biases2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_16_ce0_local = 1'b1;
    end else begin
        d_biases2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_17_ce0_local = 1'b1;
    end else begin
        d_biases2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_18_ce0_local = 1'b1;
    end else begin
        d_biases2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_19_ce0_local = 1'b1;
    end else begin
        d_biases2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_1_ce0_local = 1'b1;
    end else begin
        d_biases2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_20_ce0_local = 1'b1;
    end else begin
        d_biases2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_21_ce0_local = 1'b1;
    end else begin
        d_biases2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_22_ce0_local = 1'b1;
    end else begin
        d_biases2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_23_ce0_local = 1'b1;
    end else begin
        d_biases2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_24_ce0_local = 1'b1;
    end else begin
        d_biases2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_25_ce0_local = 1'b1;
    end else begin
        d_biases2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_26_ce0_local = 1'b1;
    end else begin
        d_biases2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_27_ce0_local = 1'b1;
    end else begin
        d_biases2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_28_ce0_local = 1'b1;
    end else begin
        d_biases2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_29_ce0_local = 1'b1;
    end else begin
        d_biases2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_2_ce0_local = 1'b1;
    end else begin
        d_biases2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_30_ce0_local = 1'b1;
    end else begin
        d_biases2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_31_ce0_local = 1'b1;
    end else begin
        d_biases2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_3_ce0_local = 1'b1;
    end else begin
        d_biases2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_4_ce0_local = 1'b1;
    end else begin
        d_biases2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_5_ce0_local = 1'b1;
    end else begin
        d_biases2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_6_ce0_local = 1'b1;
    end else begin
        d_biases2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_7_ce0_local = 1'b1;
    end else begin
        d_biases2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_8_ce0_local = 1'b1;
    end else begin
        d_biases2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_9_ce0_local = 1'b1;
    end else begin
        d_biases2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1700 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_1700 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_1700 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_1700 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1037_opcode = 2'd1;
    end else if ((((tmp_reg_1700 == 1'd0) & (1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1037_opcode = 2'd0;
    end else begin
        grp_fu_1037_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1037_p0 = bias_norm_3_reg_2114;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1037_p0 = reg_1056;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1037_p0 = bias_norm_fu_190;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1037_p0 = tmp_29_reg_2063;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1037_p0 = tmp_s_reg_2058;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1037_p0 = tmp_28_reg_2053;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1037_p0 = tmp_24_reg_2033;
    end else begin
        grp_fu_1037_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1037_p1 = mul116_3_reg_2109;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1037_p1 = mul116_2_reg_2104;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1037_p1 = mul108_3_reg_2073;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1037_p1 = mul108_2_reg_2068;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1037_p1 = reg_1051;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1037_p1 = reg_1046;
    end else begin
        grp_fu_1037_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_1041_p0 = sub111_3_reg_2092;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_1041_p0 = sub111_2_reg_2085;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_1041_p0 = sub111_1_reg_2078;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_1041_p0 = reg_1056;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1041_p0 = tmp_27_reg_2048;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1041_p0 = tmp_26_reg_2043;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1041_p0 = tmp_25_reg_2038;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1041_p0 = tmp_23_reg_2028;
        end else begin
            grp_fu_1041_p0 = 'bx;
        end
    end else begin
        grp_fu_1041_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1041_p1 = sub111_3_reg_2092;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1041_p1 = sub111_2_reg_2085;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1041_p1 = sub111_1_reg_2078;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1041_p1 = reg_1056;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1041_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1041_p1 = 'bx;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage23)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
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
assign add_ln158_fu_1660_p2 = (i_3_reg_1694 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage23;
assign ap_ready = ap_ready_sig;
assign bias_norm_6_out = bias_norm_fu_190;
assign biases2_0_address0 = biases2_0_address0_local;
assign biases2_0_ce0 = biases2_0_ce0_local;
assign biases2_0_d0 = bitcast_ln159_32_fu_1611_p1;
assign biases2_0_we0 = biases2_0_we0_local;
assign biases2_10_address0 = biases2_10_address0_local;
assign biases2_10_ce0 = biases2_10_ce0_local;
assign biases2_10_d0 = bitcast_ln159_34_fu_1634_p1;
assign biases2_10_we0 = biases2_10_we0_local;
assign biases2_11_address0 = biases2_11_address0_local;
assign biases2_11_ce0 = biases2_11_ce0_local;
assign biases2_11_d0 = bitcast_ln159_35_fu_1645_p1;
assign biases2_11_we0 = biases2_11_we0_local;
assign biases2_12_address0 = biases2_12_address0_local;
assign biases2_12_ce0 = biases2_12_ce0_local;
assign biases2_12_d0 = bitcast_ln159_32_fu_1611_p1;
assign biases2_12_we0 = biases2_12_we0_local;
assign biases2_13_address0 = biases2_13_address0_local;
assign biases2_13_ce0 = biases2_13_ce0_local;
assign biases2_13_d0 = bitcast_ln159_33_fu_1623_p1;
assign biases2_13_we0 = biases2_13_we0_local;
assign biases2_14_address0 = biases2_14_address0_local;
assign biases2_14_ce0 = biases2_14_ce0_local;
assign biases2_14_d0 = bitcast_ln159_34_fu_1634_p1;
assign biases2_14_we0 = biases2_14_we0_local;
assign biases2_15_address0 = biases2_15_address0_local;
assign biases2_15_ce0 = biases2_15_ce0_local;
assign biases2_15_d0 = bitcast_ln159_35_fu_1645_p1;
assign biases2_15_we0 = biases2_15_we0_local;
assign biases2_16_address0 = biases2_16_address0_local;
assign biases2_16_ce0 = biases2_16_ce0_local;
assign biases2_16_d0 = bitcast_ln159_32_fu_1611_p1;
assign biases2_16_we0 = biases2_16_we0_local;
assign biases2_17_address0 = biases2_17_address0_local;
assign biases2_17_ce0 = biases2_17_ce0_local;
assign biases2_17_d0 = bitcast_ln159_33_fu_1623_p1;
assign biases2_17_we0 = biases2_17_we0_local;
assign biases2_18_address0 = biases2_18_address0_local;
assign biases2_18_ce0 = biases2_18_ce0_local;
assign biases2_18_d0 = bitcast_ln159_34_fu_1634_p1;
assign biases2_18_we0 = biases2_18_we0_local;
assign biases2_19_address0 = biases2_19_address0_local;
assign biases2_19_ce0 = biases2_19_ce0_local;
assign biases2_19_d0 = bitcast_ln159_35_fu_1645_p1;
assign biases2_19_we0 = biases2_19_we0_local;
assign biases2_1_address0 = biases2_1_address0_local;
assign biases2_1_ce0 = biases2_1_ce0_local;
assign biases2_1_d0 = bitcast_ln159_33_fu_1623_p1;
assign biases2_1_we0 = biases2_1_we0_local;
assign biases2_20_address0 = biases2_20_address0_local;
assign biases2_20_ce0 = biases2_20_ce0_local;
assign biases2_20_d0 = bitcast_ln159_32_fu_1611_p1;
assign biases2_20_we0 = biases2_20_we0_local;
assign biases2_21_address0 = biases2_21_address0_local;
assign biases2_21_ce0 = biases2_21_ce0_local;
assign biases2_21_d0 = bitcast_ln159_33_fu_1623_p1;
assign biases2_21_we0 = biases2_21_we0_local;
assign biases2_22_address0 = biases2_22_address0_local;
assign biases2_22_ce0 = biases2_22_ce0_local;
assign biases2_22_d0 = bitcast_ln159_34_fu_1634_p1;
assign biases2_22_we0 = biases2_22_we0_local;
assign biases2_23_address0 = biases2_23_address0_local;
assign biases2_23_ce0 = biases2_23_ce0_local;
assign biases2_23_d0 = bitcast_ln159_35_fu_1645_p1;
assign biases2_23_we0 = biases2_23_we0_local;
assign biases2_24_address0 = biases2_24_address0_local;
assign biases2_24_ce0 = biases2_24_ce0_local;
assign biases2_24_d0 = bitcast_ln159_32_fu_1611_p1;
assign biases2_24_we0 = biases2_24_we0_local;
assign biases2_25_address0 = biases2_25_address0_local;
assign biases2_25_ce0 = biases2_25_ce0_local;
assign biases2_25_d0 = bitcast_ln159_33_fu_1623_p1;
assign biases2_25_we0 = biases2_25_we0_local;
assign biases2_26_address0 = biases2_26_address0_local;
assign biases2_26_ce0 = biases2_26_ce0_local;
assign biases2_26_d0 = bitcast_ln159_34_fu_1634_p1;
assign biases2_26_we0 = biases2_26_we0_local;
assign biases2_27_address0 = biases2_27_address0_local;
assign biases2_27_ce0 = biases2_27_ce0_local;
assign biases2_27_d0 = bitcast_ln159_35_fu_1645_p1;
assign biases2_27_we0 = biases2_27_we0_local;
assign biases2_28_address0 = biases2_28_address0_local;
assign biases2_28_ce0 = biases2_28_ce0_local;
assign biases2_28_d0 = bitcast_ln159_32_fu_1611_p1;
assign biases2_28_we0 = biases2_28_we0_local;
assign biases2_29_address0 = biases2_29_address0_local;
assign biases2_29_ce0 = biases2_29_ce0_local;
assign biases2_29_d0 = bitcast_ln159_33_fu_1623_p1;
assign biases2_29_we0 = biases2_29_we0_local;
assign biases2_2_address0 = biases2_2_address0_local;
assign biases2_2_ce0 = biases2_2_ce0_local;
assign biases2_2_d0 = bitcast_ln159_34_fu_1634_p1;
assign biases2_2_we0 = biases2_2_we0_local;
assign biases2_30_address0 = biases2_30_address0_local;
assign biases2_30_ce0 = biases2_30_ce0_local;
assign biases2_30_d0 = bitcast_ln159_34_fu_1634_p1;
assign biases2_30_we0 = biases2_30_we0_local;
assign biases2_31_address0 = biases2_31_address0_local;
assign biases2_31_ce0 = biases2_31_ce0_local;
assign biases2_31_d0 = bitcast_ln159_35_fu_1645_p1;
assign biases2_31_we0 = biases2_31_we0_local;
assign biases2_3_address0 = biases2_3_address0_local;
assign biases2_3_ce0 = biases2_3_ce0_local;
assign biases2_3_d0 = bitcast_ln159_35_fu_1645_p1;
assign biases2_3_we0 = biases2_3_we0_local;
assign biases2_4_address0 = biases2_4_address0_local;
assign biases2_4_ce0 = biases2_4_ce0_local;
assign biases2_4_d0 = bitcast_ln159_32_fu_1611_p1;
assign biases2_4_we0 = biases2_4_we0_local;
assign biases2_5_address0 = biases2_5_address0_local;
assign biases2_5_ce0 = biases2_5_ce0_local;
assign biases2_5_d0 = bitcast_ln159_33_fu_1623_p1;
assign biases2_5_we0 = biases2_5_we0_local;
assign biases2_6_address0 = biases2_6_address0_local;
assign biases2_6_ce0 = biases2_6_ce0_local;
assign biases2_6_d0 = bitcast_ln159_34_fu_1634_p1;
assign biases2_6_we0 = biases2_6_we0_local;
assign biases2_7_address0 = biases2_7_address0_local;
assign biases2_7_ce0 = biases2_7_ce0_local;
assign biases2_7_d0 = bitcast_ln159_35_fu_1645_p1;
assign biases2_7_we0 = biases2_7_we0_local;
assign biases2_8_address0 = biases2_8_address0_local;
assign biases2_8_ce0 = biases2_8_ce0_local;
assign biases2_8_d0 = bitcast_ln159_32_fu_1611_p1;
assign biases2_8_we0 = biases2_8_we0_local;
assign biases2_9_address0 = biases2_9_address0_local;
assign biases2_9_ce0 = biases2_9_ce0_local;
assign biases2_9_d0 = bitcast_ln159_33_fu_1623_p1;
assign biases2_9_we0 = biases2_9_we0_local;
assign bitcast_ln159_32_fu_1611_p1 = reg_1056;
assign bitcast_ln159_33_fu_1623_p1 = sub111_1_reg_2078;
assign bitcast_ln159_34_fu_1634_p1 = sub111_2_reg_2085;
assign bitcast_ln159_35_fu_1645_p1 = sub111_3_reg_2092;
assign d_biases2_0_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_0_ce0 = d_biases2_0_ce0_local;
assign d_biases2_10_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_10_ce0 = d_biases2_10_ce0_local;
assign d_biases2_11_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_11_ce0 = d_biases2_11_ce0_local;
assign d_biases2_12_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_12_ce0 = d_biases2_12_ce0_local;
assign d_biases2_13_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_13_ce0 = d_biases2_13_ce0_local;
assign d_biases2_14_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_14_ce0 = d_biases2_14_ce0_local;
assign d_biases2_15_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_15_ce0 = d_biases2_15_ce0_local;
assign d_biases2_16_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_16_ce0 = d_biases2_16_ce0_local;
assign d_biases2_17_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_17_ce0 = d_biases2_17_ce0_local;
assign d_biases2_18_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_18_ce0 = d_biases2_18_ce0_local;
assign d_biases2_19_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_19_ce0 = d_biases2_19_ce0_local;
assign d_biases2_1_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_1_ce0 = d_biases2_1_ce0_local;
assign d_biases2_20_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_20_ce0 = d_biases2_20_ce0_local;
assign d_biases2_21_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_21_ce0 = d_biases2_21_ce0_local;
assign d_biases2_22_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_22_ce0 = d_biases2_22_ce0_local;
assign d_biases2_23_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_23_ce0 = d_biases2_23_ce0_local;
assign d_biases2_24_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_24_ce0 = d_biases2_24_ce0_local;
assign d_biases2_25_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_25_ce0 = d_biases2_25_ce0_local;
assign d_biases2_26_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_26_ce0 = d_biases2_26_ce0_local;
assign d_biases2_27_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_27_ce0 = d_biases2_27_ce0_local;
assign d_biases2_28_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_28_ce0 = d_biases2_28_ce0_local;
assign d_biases2_29_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_29_ce0 = d_biases2_29_ce0_local;
assign d_biases2_2_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_2_ce0 = d_biases2_2_ce0_local;
assign d_biases2_30_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_30_ce0 = d_biases2_30_ce0_local;
assign d_biases2_31_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_31_ce0 = d_biases2_31_ce0_local;
assign d_biases2_3_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_3_ce0 = d_biases2_3_ce0_local;
assign d_biases2_4_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_4_ce0 = d_biases2_4_ce0_local;
assign d_biases2_5_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_5_ce0 = d_biases2_5_ce0_local;
assign d_biases2_6_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_6_ce0 = d_biases2_6_ce0_local;
assign d_biases2_7_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_7_ce0 = d_biases2_7_ce0_local;
assign d_biases2_8_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_8_ce0 = d_biases2_8_ce0_local;
assign d_biases2_9_address0 = zext_ln121_fu_1092_p1;
assign d_biases2_9_ce0 = d_biases2_9_ce0_local;
assign grp_fu_1947_p_ce = 1'b1;
assign grp_fu_1947_p_din0 = grp_fu_1037_p0;
assign grp_fu_1947_p_din1 = grp_fu_1037_p1;
assign grp_fu_1947_p_opcode = grp_fu_1037_opcode;
assign grp_fu_1951_p_ce = 1'b1;
assign grp_fu_1951_p_din0 = grp_fu_1041_p0;
assign grp_fu_1951_p_din1 = grp_fu_1041_p1;
assign tmp_23_fu_1163_p17 = 'bx;
assign tmp_24_fu_1235_p10 = biases2_16_q0;
assign tmp_24_fu_1235_p12 = biases2_20_q0;
assign tmp_24_fu_1235_p14 = biases2_24_q0;
assign tmp_24_fu_1235_p16 = biases2_28_q0;
assign tmp_24_fu_1235_p17 = 'bx;
assign tmp_24_fu_1235_p2 = biases2_0_q0;
assign tmp_24_fu_1235_p4 = biases2_4_q0;
assign tmp_24_fu_1235_p6 = biases2_8_q0;
assign tmp_24_fu_1235_p8 = biases2_12_q0;
assign tmp_25_fu_1275_p17 = 'bx;
assign tmp_26_fu_1315_p17 = 'bx;
assign tmp_27_fu_1355_p17 = 'bx;
assign tmp_28_fu_1427_p10 = biases2_17_q0;
assign tmp_28_fu_1427_p12 = biases2_21_q0;
assign tmp_28_fu_1427_p14 = biases2_25_q0;
assign tmp_28_fu_1427_p16 = biases2_29_q0;
assign tmp_28_fu_1427_p17 = 'bx;
assign tmp_28_fu_1427_p2 = biases2_1_q0;
assign tmp_28_fu_1427_p4 = biases2_5_q0;
assign tmp_28_fu_1427_p6 = biases2_9_q0;
assign tmp_28_fu_1427_p8 = biases2_13_q0;
assign tmp_29_fu_1571_p10 = biases2_19_q0;
assign tmp_29_fu_1571_p12 = biases2_23_q0;
assign tmp_29_fu_1571_p14 = biases2_27_q0;
assign tmp_29_fu_1571_p16 = biases2_31_q0;
assign tmp_29_fu_1571_p17 = 'bx;
assign tmp_29_fu_1571_p2 = biases2_3_q0;
assign tmp_29_fu_1571_p4 = biases2_7_q0;
assign tmp_29_fu_1571_p6 = biases2_11_q0;
assign tmp_29_fu_1571_p8 = biases2_15_q0;
assign tmp_2_fu_1084_p3 = ap_sig_allocacmp_i_3[32'd5];
assign tmp_s_fu_1499_p10 = biases2_18_q0;
assign tmp_s_fu_1499_p12 = biases2_22_q0;
assign tmp_s_fu_1499_p14 = biases2_26_q0;
assign tmp_s_fu_1499_p16 = biases2_30_q0;
assign tmp_s_fu_1499_p17 = 'bx;
assign tmp_s_fu_1499_p2 = biases2_2_q0;
assign tmp_s_fu_1499_p4 = biases2_6_q0;
assign tmp_s_fu_1499_p6 = biases2_10_q0;
assign tmp_s_fu_1499_p8 = biases2_14_q0;
assign trunc_ln158_fu_1160_p1 = i_3_reg_1694[4:0];
assign zext_ln121_fu_1092_p1 = tmp_2_fu_1084_p3;
endmodule 