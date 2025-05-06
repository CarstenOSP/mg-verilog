
module backprop_update_weights_32_33_1_Pipeline_up_weight_loop6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_15_address0,biases2_15_ce0,biases2_15_we0,biases2_15_d0,biases2_15_q0,biases2_14_address0,biases2_14_ce0,biases2_14_we0,biases2_14_d0,biases2_14_q0,biases2_13_address0,biases2_13_ce0,biases2_13_we0,biases2_13_d0,biases2_13_q0,biases2_12_address0,biases2_12_ce0,biases2_12_we0,biases2_12_d0,biases2_12_q0,biases2_11_address0,biases2_11_ce0,biases2_11_we0,biases2_11_d0,biases2_11_q0,biases2_10_address0,biases2_10_ce0,biases2_10_we0,biases2_10_d0,biases2_10_q0,biases2_9_address0,biases2_9_ce0,biases2_9_we0,biases2_9_d0,biases2_9_q0,biases2_8_address0,biases2_8_ce0,biases2_8_we0,biases2_8_d0,biases2_8_q0,biases2_7_address0,biases2_7_ce0,biases2_7_we0,biases2_7_d0,biases2_7_q0,biases2_6_address0,biases2_6_ce0,biases2_6_we0,biases2_6_d0,biases2_6_q0,biases2_5_address0,biases2_5_ce0,biases2_5_we0,biases2_5_d0,biases2_5_q0,biases2_4_address0,biases2_4_ce0,biases2_4_we0,biases2_4_d0,biases2_4_q0,biases2_3_address0,biases2_3_ce0,biases2_3_we0,biases2_3_d0,biases2_3_q0,biases2_2_address0,biases2_2_ce0,biases2_2_we0,biases2_2_d0,biases2_2_q0,biases2_1_address0,biases2_1_ce0,biases2_1_we0,biases2_1_d0,biases2_1_q0,biases2_0_address0,biases2_0_ce0,biases2_0_we0,biases2_0_d0,biases2_0_q0,d_biases2_0_address0,d_biases2_0_ce0,d_biases2_0_q0,d_biases2_2_address0,d_biases2_2_ce0,d_biases2_2_q0,d_biases2_4_address0,d_biases2_4_ce0,d_biases2_4_q0,d_biases2_6_address0,d_biases2_6_ce0,d_biases2_6_q0,d_biases2_8_address0,d_biases2_8_ce0,d_biases2_8_q0,d_biases2_10_address0,d_biases2_10_ce0,d_biases2_10_q0,d_biases2_12_address0,d_biases2_12_ce0,d_biases2_12_q0,d_biases2_14_address0,d_biases2_14_ce0,d_biases2_14_q0,d_biases2_1_address0,d_biases2_1_ce0,d_biases2_1_q0,d_biases2_3_address0,d_biases2_3_ce0,d_biases2_3_q0,d_biases2_5_address0,d_biases2_5_ce0,d_biases2_5_q0,d_biases2_7_address0,d_biases2_7_ce0,d_biases2_7_q0,d_biases2_9_address0,d_biases2_9_ce0,d_biases2_9_q0,d_biases2_11_address0,d_biases2_11_ce0,d_biases2_11_q0,d_biases2_13_address0,d_biases2_13_ce0,d_biases2_13_q0,d_biases2_15_address0,d_biases2_15_ce0,d_biases2_15_q0,bias_norm_4_out,bias_norm_4_out_ap_vld,grp_fu_1147_p_din0,grp_fu_1147_p_din1,grp_fu_1147_p_opcode,grp_fu_1147_p_dout0,grp_fu_1147_p_ce,grp_fu_1151_p_din0,grp_fu_1151_p_din1,grp_fu_1151_p_dout0,grp_fu_1151_p_ce);  
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
output  [1:0] biases2_15_address0;
output   biases2_15_ce0;
output   biases2_15_we0;
output  [63:0] biases2_15_d0;
input  [63:0] biases2_15_q0;
output  [1:0] biases2_14_address0;
output   biases2_14_ce0;
output   biases2_14_we0;
output  [63:0] biases2_14_d0;
input  [63:0] biases2_14_q0;
output  [1:0] biases2_13_address0;
output   biases2_13_ce0;
output   biases2_13_we0;
output  [63:0] biases2_13_d0;
input  [63:0] biases2_13_q0;
output  [1:0] biases2_12_address0;
output   biases2_12_ce0;
output   biases2_12_we0;
output  [63:0] biases2_12_d0;
input  [63:0] biases2_12_q0;
output  [1:0] biases2_11_address0;
output   biases2_11_ce0;
output   biases2_11_we0;
output  [63:0] biases2_11_d0;
input  [63:0] biases2_11_q0;
output  [1:0] biases2_10_address0;
output   biases2_10_ce0;
output   biases2_10_we0;
output  [63:0] biases2_10_d0;
input  [63:0] biases2_10_q0;
output  [1:0] biases2_9_address0;
output   biases2_9_ce0;
output   biases2_9_we0;
output  [63:0] biases2_9_d0;
input  [63:0] biases2_9_q0;
output  [1:0] biases2_8_address0;
output   biases2_8_ce0;
output   biases2_8_we0;
output  [63:0] biases2_8_d0;
input  [63:0] biases2_8_q0;
output  [1:0] biases2_7_address0;
output   biases2_7_ce0;
output   biases2_7_we0;
output  [63:0] biases2_7_d0;
input  [63:0] biases2_7_q0;
output  [1:0] biases2_6_address0;
output   biases2_6_ce0;
output   biases2_6_we0;
output  [63:0] biases2_6_d0;
input  [63:0] biases2_6_q0;
output  [1:0] biases2_5_address0;
output   biases2_5_ce0;
output   biases2_5_we0;
output  [63:0] biases2_5_d0;
input  [63:0] biases2_5_q0;
output  [1:0] biases2_4_address0;
output   biases2_4_ce0;
output   biases2_4_we0;
output  [63:0] biases2_4_d0;
input  [63:0] biases2_4_q0;
output  [1:0] biases2_3_address0;
output   biases2_3_ce0;
output   biases2_3_we0;
output  [63:0] biases2_3_d0;
input  [63:0] biases2_3_q0;
output  [1:0] biases2_2_address0;
output   biases2_2_ce0;
output   biases2_2_we0;
output  [63:0] biases2_2_d0;
input  [63:0] biases2_2_q0;
output  [1:0] biases2_1_address0;
output   biases2_1_ce0;
output   biases2_1_we0;
output  [63:0] biases2_1_d0;
input  [63:0] biases2_1_q0;
output  [1:0] biases2_0_address0;
output   biases2_0_ce0;
output   biases2_0_we0;
output  [63:0] biases2_0_d0;
input  [63:0] biases2_0_q0;
output  [1:0] d_biases2_0_address0;
output   d_biases2_0_ce0;
input  [63:0] d_biases2_0_q0;
output  [1:0] d_biases2_2_address0;
output   d_biases2_2_ce0;
input  [63:0] d_biases2_2_q0;
output  [1:0] d_biases2_4_address0;
output   d_biases2_4_ce0;
input  [63:0] d_biases2_4_q0;
output  [1:0] d_biases2_6_address0;
output   d_biases2_6_ce0;
input  [63:0] d_biases2_6_q0;
output  [1:0] d_biases2_8_address0;
output   d_biases2_8_ce0;
input  [63:0] d_biases2_8_q0;
output  [1:0] d_biases2_10_address0;
output   d_biases2_10_ce0;
input  [63:0] d_biases2_10_q0;
output  [1:0] d_biases2_12_address0;
output   d_biases2_12_ce0;
input  [63:0] d_biases2_12_q0;
output  [1:0] d_biases2_14_address0;
output   d_biases2_14_ce0;
input  [63:0] d_biases2_14_q0;
output  [1:0] d_biases2_1_address0;
output   d_biases2_1_ce0;
input  [63:0] d_biases2_1_q0;
output  [1:0] d_biases2_3_address0;
output   d_biases2_3_ce0;
input  [63:0] d_biases2_3_q0;
output  [1:0] d_biases2_5_address0;
output   d_biases2_5_ce0;
input  [63:0] d_biases2_5_q0;
output  [1:0] d_biases2_7_address0;
output   d_biases2_7_ce0;
input  [63:0] d_biases2_7_q0;
output  [1:0] d_biases2_9_address0;
output   d_biases2_9_ce0;
input  [63:0] d_biases2_9_q0;
output  [1:0] d_biases2_11_address0;
output   d_biases2_11_ce0;
input  [63:0] d_biases2_11_q0;
output  [1:0] d_biases2_13_address0;
output   d_biases2_13_ce0;
input  [63:0] d_biases2_13_q0;
output  [1:0] d_biases2_15_address0;
output   d_biases2_15_ce0;
input  [63:0] d_biases2_15_q0;
output  [63:0] bias_norm_4_out;
output   bias_norm_4_out_ap_vld;
output  [63:0] grp_fu_1147_p_din0;
output  [63:0] grp_fu_1147_p_din1;
output  [1:0] grp_fu_1147_p_opcode;
input  [63:0] grp_fu_1147_p_dout0;
output   grp_fu_1147_p_ce;
output  [63:0] grp_fu_1151_p_din0;
output  [63:0] grp_fu_1151_p_din1;
input  [63:0] grp_fu_1151_p_dout0;
output   grp_fu_1151_p_ce;
reg ap_idle;
reg bias_norm_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] tmp_reg_930;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_3_reg_924;
reg   [0:0] tmp_reg_930_pp0_iter1_reg;
reg   [1:0] biases2_0_addr_reg_974;
reg   [1:0] biases2_0_addr_reg_974_pp0_iter1_reg;
reg   [1:0] biases2_2_addr_reg_979;
reg   [1:0] biases2_2_addr_reg_979_pp0_iter1_reg;
reg   [1:0] biases2_4_addr_reg_984;
reg   [1:0] biases2_4_addr_reg_984_pp0_iter1_reg;
reg   [1:0] biases2_6_addr_reg_989;
reg   [1:0] biases2_6_addr_reg_989_pp0_iter1_reg;
reg   [1:0] biases2_8_addr_reg_994;
reg   [1:0] biases2_8_addr_reg_994_pp0_iter1_reg;
reg   [1:0] biases2_10_addr_reg_999;
reg   [1:0] biases2_10_addr_reg_999_pp0_iter1_reg;
reg   [1:0] biases2_12_addr_reg_1004;
reg   [1:0] biases2_12_addr_reg_1004_pp0_iter1_reg;
reg   [1:0] biases2_14_addr_reg_1009;
reg   [1:0] biases2_14_addr_reg_1009_pp0_iter1_reg;
reg   [1:0] biases2_1_addr_reg_1054;
reg   [1:0] biases2_1_addr_reg_1054_pp0_iter1_reg;
reg   [1:0] biases2_3_addr_reg_1059;
reg   [1:0] biases2_3_addr_reg_1059_pp0_iter1_reg;
reg   [1:0] biases2_5_addr_reg_1064;
reg   [1:0] biases2_5_addr_reg_1064_pp0_iter1_reg;
reg   [1:0] biases2_7_addr_reg_1069;
reg   [1:0] biases2_7_addr_reg_1069_pp0_iter1_reg;
reg   [1:0] biases2_9_addr_reg_1074;
reg   [1:0] biases2_9_addr_reg_1074_pp0_iter1_reg;
reg   [1:0] biases2_11_addr_reg_1079;
reg   [1:0] biases2_11_addr_reg_1079_pp0_iter1_reg;
reg   [1:0] biases2_13_addr_reg_1084;
reg   [1:0] biases2_13_addr_reg_1084_pp0_iter1_reg;
reg   [1:0] biases2_15_addr_reg_1089;
reg   [1:0] biases2_15_addr_reg_1089_pp0_iter1_reg;
wire   [3:0] trunc_ln158_fu_637_p1;
reg   [3:0] trunc_ln158_reg_1094;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [3:0] trunc_ln158_reg_1094_pp0_iter1_reg;
wire   [63:0] tmp_11_fu_640_p19;
reg   [63:0] tmp_11_reg_1098;
wire   [63:0] tmp_12_fu_712_p19;
reg   [63:0] tmp_12_reg_1103;
wire   [63:0] tmp_s_fu_752_p19;
reg   [63:0] tmp_s_reg_1108;
wire   [63:0] tmp_13_fu_824_p19;
reg   [63:0] tmp_13_reg_1113;
reg   [63:0] mul3_reg_1118;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] mul108_1_reg_1123;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] sub2_reg_1128;
reg   [63:0] sub111_1_reg_1135;
reg   [63:0] mul5_reg_1142;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] mul116_1_reg_1152;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] bias_norm_1_reg_1157;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
wire   [63:0] zext_ln121_fu_601_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] bias_norm_fu_130;
wire    ap_block_pp0_stage7;
wire    ap_loop_init;
wire    ap_block_pp0_stage8;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage7;
reg    ap_idle_pp0_0to0;
reg   [6:0] i_fu_134;
wire   [6:0] add_ln158_fu_864_p2;
reg   [6:0] ap_sig_allocacmp_i_3;
wire    ap_block_pp0_stage7_01001;
reg    d_biases2_0_ce0_local;
reg    d_biases2_2_ce0_local;
reg    d_biases2_4_ce0_local;
reg    d_biases2_6_ce0_local;
reg    d_biases2_8_ce0_local;
reg    d_biases2_10_ce0_local;
reg    d_biases2_12_ce0_local;
reg    d_biases2_14_ce0_local;
reg    biases2_0_ce0_local;
reg   [1:0] biases2_0_address0_local;
reg    biases2_0_we0_local;
wire   [63:0] bitcast_ln159_16_fu_874_p1;
wire    ap_block_pp0_stage1;
reg    biases2_2_ce0_local;
reg   [1:0] biases2_2_address0_local;
reg    biases2_2_we0_local;
reg    biases2_4_ce0_local;
reg   [1:0] biases2_4_address0_local;
reg    biases2_4_we0_local;
reg    biases2_6_ce0_local;
reg   [1:0] biases2_6_address0_local;
reg    biases2_6_we0_local;
reg    biases2_8_ce0_local;
reg   [1:0] biases2_8_address0_local;
reg    biases2_8_we0_local;
reg    biases2_10_ce0_local;
reg   [1:0] biases2_10_address0_local;
reg    biases2_10_we0_local;
reg    biases2_12_ce0_local;
reg   [1:0] biases2_12_address0_local;
reg    biases2_12_we0_local;
reg    biases2_14_ce0_local;
reg   [1:0] biases2_14_address0_local;
reg    biases2_14_we0_local;
reg    d_biases2_1_ce0_local;
reg    d_biases2_3_ce0_local;
reg    d_biases2_5_ce0_local;
reg    d_biases2_7_ce0_local;
reg    d_biases2_9_ce0_local;
reg    d_biases2_11_ce0_local;
reg    d_biases2_13_ce0_local;
reg    d_biases2_15_ce0_local;
reg    biases2_1_ce0_local;
reg   [1:0] biases2_1_address0_local;
reg    biases2_1_we0_local;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] bitcast_ln159_17_fu_885_p1;
wire    ap_block_pp0_stage2;
reg    biases2_3_ce0_local;
reg   [1:0] biases2_3_address0_local;
reg    biases2_3_we0_local;
reg    biases2_5_ce0_local;
reg   [1:0] biases2_5_address0_local;
reg    biases2_5_we0_local;
reg    biases2_7_ce0_local;
reg   [1:0] biases2_7_address0_local;
reg    biases2_7_we0_local;
reg    biases2_9_ce0_local;
reg   [1:0] biases2_9_address0_local;
reg    biases2_9_we0_local;
reg    biases2_11_ce0_local;
reg   [1:0] biases2_11_address0_local;
reg    biases2_11_we0_local;
reg    biases2_13_ce0_local;
reg   [1:0] biases2_13_address0_local;
reg    biases2_13_we0_local;
reg    biases2_15_ce0_local;
reg   [1:0] biases2_15_address0_local;
reg    biases2_15_we0_local;
reg   [63:0] grp_fu_561_p0;
reg   [63:0] grp_fu_561_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
reg   [63:0] grp_fu_565_p0;
reg   [63:0] grp_fu_565_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [1:0] lshr_ln121_2_fu_591_p4;
wire   [63:0] tmp_11_fu_640_p17;
wire   [63:0] tmp_12_fu_712_p2;
wire   [63:0] tmp_12_fu_712_p4;
wire   [63:0] tmp_12_fu_712_p6;
wire   [63:0] tmp_12_fu_712_p8;
wire   [63:0] tmp_12_fu_712_p10;
wire   [63:0] tmp_12_fu_712_p12;
wire   [63:0] tmp_12_fu_712_p14;
wire   [63:0] tmp_12_fu_712_p16;
wire   [63:0] tmp_12_fu_712_p17;
wire   [63:0] tmp_s_fu_752_p17;
wire   [63:0] tmp_13_fu_824_p2;
wire   [63:0] tmp_13_fu_824_p4;
wire   [63:0] tmp_13_fu_824_p6;
wire   [63:0] tmp_13_fu_824_p8;
wire   [63:0] tmp_13_fu_824_p10;
wire   [63:0] tmp_13_fu_824_p12;
wire   [63:0] tmp_13_fu_824_p14;
wire   [63:0] tmp_13_fu_824_p16;
wire   [63:0] tmp_13_fu_824_p17;
wire    ap_block_pp0_stage15;
reg   [1:0] grp_fu_561_opcode;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
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
wire    ap_block_pp0_stage8_subdone;
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
wire   [3:0] tmp_11_fu_640_p1;
wire   [3:0] tmp_11_fu_640_p3;
wire   [3:0] tmp_11_fu_640_p5;
wire   [3:0] tmp_11_fu_640_p7;
wire  signed [3:0] tmp_11_fu_640_p9;
wire  signed [3:0] tmp_11_fu_640_p11;
wire  signed [3:0] tmp_11_fu_640_p13;
wire  signed [3:0] tmp_11_fu_640_p15;
wire   [3:0] tmp_12_fu_712_p1;
wire   [3:0] tmp_12_fu_712_p3;
wire   [3:0] tmp_12_fu_712_p5;
wire   [3:0] tmp_12_fu_712_p7;
wire  signed [3:0] tmp_12_fu_712_p9;
wire  signed [3:0] tmp_12_fu_712_p11;
wire  signed [3:0] tmp_12_fu_712_p13;
wire  signed [3:0] tmp_12_fu_712_p15;
wire   [3:0] tmp_s_fu_752_p1;
wire   [3:0] tmp_s_fu_752_p3;
wire   [3:0] tmp_s_fu_752_p5;
wire   [3:0] tmp_s_fu_752_p7;
wire  signed [3:0] tmp_s_fu_752_p9;
wire  signed [3:0] tmp_s_fu_752_p11;
wire  signed [3:0] tmp_s_fu_752_p13;
wire  signed [3:0] tmp_s_fu_752_p15;
wire   [3:0] tmp_13_fu_824_p1;
wire   [3:0] tmp_13_fu_824_p3;
wire   [3:0] tmp_13_fu_824_p5;
wire   [3:0] tmp_13_fu_824_p7;
wire  signed [3:0] tmp_13_fu_824_p9;
wire  signed [3:0] tmp_13_fu_824_p11;
wire  signed [3:0] tmp_13_fu_824_p13;
wire  signed [3:0] tmp_13_fu_824_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_130 = 64'd0;
#0 i_fu_134 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_U1389(.din0(d_biases2_0_q0),.din1(d_biases2_2_q0),.din2(d_biases2_4_q0),.din3(d_biases2_6_q0),.din4(d_biases2_8_q0),.din5(d_biases2_10_q0),.din6(d_biases2_12_q0),.din7(d_biases2_14_q0),.def(tmp_11_fu_640_p17),.sel(trunc_ln158_fu_637_p1),.dout(tmp_11_fu_640_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_U1390(.din0(tmp_12_fu_712_p2),.din1(tmp_12_fu_712_p4),.din2(tmp_12_fu_712_p6),.din3(tmp_12_fu_712_p8),.din4(tmp_12_fu_712_p10),.din5(tmp_12_fu_712_p12),.din6(tmp_12_fu_712_p14),.din7(tmp_12_fu_712_p16),.def(tmp_12_fu_712_p17),.sel(trunc_ln158_fu_637_p1),.dout(tmp_12_fu_712_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_U1391(.din0(d_biases2_1_q0),.din1(d_biases2_3_q0),.din2(d_biases2_5_q0),.din3(d_biases2_7_q0),.din4(d_biases2_9_q0),.din5(d_biases2_11_q0),.din6(d_biases2_13_q0),.din7(d_biases2_15_q0),.def(tmp_s_fu_752_p17),.sel(trunc_ln158_fu_637_p1),.dout(tmp_s_fu_752_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_U1392(.din0(tmp_13_fu_824_p2),.din1(tmp_13_fu_824_p4),.din2(tmp_13_fu_824_p6),.din3(tmp_13_fu_824_p8),.din4(tmp_13_fu_824_p10),.din5(tmp_13_fu_824_p12),.din6(tmp_13_fu_824_p14),.din7(tmp_13_fu_824_p16),.def(tmp_13_fu_824_p17),.sel(trunc_ln158_fu_637_p1),.dout(tmp_13_fu_824_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_130 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bias_norm_fu_130 <= grp_fu_1147_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_134 <= 7'd0;
    end else if (((tmp_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        i_fu_134 <= add_ln158_fu_864_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        bias_norm_1_reg_1157 <= grp_fu_1147_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_0_addr_reg_974 <= zext_ln121_fu_601_p1;
        biases2_0_addr_reg_974_pp0_iter1_reg <= biases2_0_addr_reg_974;
        biases2_10_addr_reg_999 <= zext_ln121_fu_601_p1;
        biases2_10_addr_reg_999_pp0_iter1_reg <= biases2_10_addr_reg_999;
        biases2_11_addr_reg_1079 <= zext_ln121_fu_601_p1;
        biases2_11_addr_reg_1079_pp0_iter1_reg <= biases2_11_addr_reg_1079;
        biases2_12_addr_reg_1004 <= zext_ln121_fu_601_p1;
        biases2_12_addr_reg_1004_pp0_iter1_reg <= biases2_12_addr_reg_1004;
        biases2_13_addr_reg_1084 <= zext_ln121_fu_601_p1;
        biases2_13_addr_reg_1084_pp0_iter1_reg <= biases2_13_addr_reg_1084;
        biases2_14_addr_reg_1009 <= zext_ln121_fu_601_p1;
        biases2_14_addr_reg_1009_pp0_iter1_reg <= biases2_14_addr_reg_1009;
        biases2_15_addr_reg_1089 <= zext_ln121_fu_601_p1;
        biases2_15_addr_reg_1089_pp0_iter1_reg <= biases2_15_addr_reg_1089;
        biases2_1_addr_reg_1054 <= zext_ln121_fu_601_p1;
        biases2_1_addr_reg_1054_pp0_iter1_reg <= biases2_1_addr_reg_1054;
        biases2_2_addr_reg_979 <= zext_ln121_fu_601_p1;
        biases2_2_addr_reg_979_pp0_iter1_reg <= biases2_2_addr_reg_979;
        biases2_3_addr_reg_1059 <= zext_ln121_fu_601_p1;
        biases2_3_addr_reg_1059_pp0_iter1_reg <= biases2_3_addr_reg_1059;
        biases2_4_addr_reg_984 <= zext_ln121_fu_601_p1;
        biases2_4_addr_reg_984_pp0_iter1_reg <= biases2_4_addr_reg_984;
        biases2_5_addr_reg_1064 <= zext_ln121_fu_601_p1;
        biases2_5_addr_reg_1064_pp0_iter1_reg <= biases2_5_addr_reg_1064;
        biases2_6_addr_reg_989 <= zext_ln121_fu_601_p1;
        biases2_6_addr_reg_989_pp0_iter1_reg <= biases2_6_addr_reg_989;
        biases2_7_addr_reg_1069 <= zext_ln121_fu_601_p1;
        biases2_7_addr_reg_1069_pp0_iter1_reg <= biases2_7_addr_reg_1069;
        biases2_8_addr_reg_994 <= zext_ln121_fu_601_p1;
        biases2_8_addr_reg_994_pp0_iter1_reg <= biases2_8_addr_reg_994;
        biases2_9_addr_reg_1074 <= zext_ln121_fu_601_p1;
        biases2_9_addr_reg_1074_pp0_iter1_reg <= biases2_9_addr_reg_1074;
        i_3_reg_924 <= ap_sig_allocacmp_i_3;
        tmp_reg_930 <= ap_sig_allocacmp_i_3[32'd6];
        tmp_reg_930_pp0_iter1_reg <= tmp_reg_930;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul108_1_reg_1123 <= grp_fu_1151_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul116_1_reg_1152 <= grp_fu_1151_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul3_reg_1118 <= grp_fu_1151_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul5_reg_1142 <= grp_fu_1151_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub111_1_reg_1135 <= grp_fu_1147_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub2_reg_1128 <= grp_fu_1147_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_11_reg_1098 <= tmp_11_fu_640_p19;
        tmp_12_reg_1103 <= tmp_12_fu_712_p19;
        tmp_13_reg_1113 <= tmp_13_fu_824_p19;
        tmp_s_reg_1108 <= tmp_s_fu_752_p19;
        trunc_ln158_reg_1094 <= trunc_ln158_fu_637_p1;
        trunc_ln158_reg_1094_pp0_iter1_reg <= trunc_ln158_reg_1094;
    end
end
always @ (*) begin
    if (((tmp_reg_930 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_930_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_i_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_930_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bias_norm_4_out_ap_vld = 1'b1;
    end else begin
        bias_norm_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_0_address0_local = biases2_0_addr_reg_974_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_0_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_0_ce0_local = 1'b1;
    end else begin
        biases2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln158_reg_1094 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_0_we0_local = 1'b1;
    end else begin
        biases2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_10_address0_local = biases2_10_addr_reg_999_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_10_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_10_ce0_local = 1'b1;
    end else begin
        biases2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln158_reg_1094 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_10_we0_local = 1'b1;
    end else begin
        biases2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_11_address0_local = biases2_11_addr_reg_1079_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_11_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_11_ce0_local = 1'b1;
    end else begin
        biases2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln158_reg_1094_pp0_iter1_reg == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_11_we0_local = 1'b1;
    end else begin
        biases2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_12_address0_local = biases2_12_addr_reg_1004_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_12_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_12_ce0_local = 1'b1;
    end else begin
        biases2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln158_reg_1094 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_12_we0_local = 1'b1;
    end else begin
        biases2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_13_address0_local = biases2_13_addr_reg_1084_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_13_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_13_ce0_local = 1'b1;
    end else begin
        biases2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln158_reg_1094_pp0_iter1_reg == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_13_we0_local = 1'b1;
    end else begin
        biases2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_14_address0_local = biases2_14_addr_reg_1009_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_14_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_14_ce0_local = 1'b1;
    end else begin
        biases2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln158_reg_1094 == 4'd12) & ~(trunc_ln158_reg_1094 == 4'd10) & ~(trunc_ln158_reg_1094 == 4'd8) & ~(trunc_ln158_reg_1094 == 4'd6) & ~(trunc_ln158_reg_1094 == 4'd4) & ~(trunc_ln158_reg_1094 == 4'd2) & ~(trunc_ln158_reg_1094 == 4'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_14_we0_local = 1'b1;
    end else begin
        biases2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_15_address0_local = biases2_15_addr_reg_1089_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_15_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_15_ce0_local = 1'b1;
    end else begin
        biases2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln158_reg_1094_pp0_iter1_reg == 4'd12) & ~(trunc_ln158_reg_1094_pp0_iter1_reg == 4'd10) & ~(trunc_ln158_reg_1094_pp0_iter1_reg == 4'd8) & ~(trunc_ln158_reg_1094_pp0_iter1_reg == 4'd6) & ~(trunc_ln158_reg_1094_pp0_iter1_reg == 4'd4) & ~(trunc_ln158_reg_1094_pp0_iter1_reg == 4'd2) & ~(trunc_ln158_reg_1094_pp0_iter1_reg == 4'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_15_we0_local = 1'b1;
    end else begin
        biases2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_1_address0_local = biases2_1_addr_reg_1054_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_1_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_1_ce0_local = 1'b1;
    end else begin
        biases2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln158_reg_1094_pp0_iter1_reg == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_1_we0_local = 1'b1;
    end else begin
        biases2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_2_address0_local = biases2_2_addr_reg_979_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_2_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_2_ce0_local = 1'b1;
    end else begin
        biases2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln158_reg_1094 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_2_we0_local = 1'b1;
    end else begin
        biases2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_3_address0_local = biases2_3_addr_reg_1059_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_3_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_3_ce0_local = 1'b1;
    end else begin
        biases2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln158_reg_1094_pp0_iter1_reg == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_3_we0_local = 1'b1;
    end else begin
        biases2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_4_address0_local = biases2_4_addr_reg_984_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_4_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_4_ce0_local = 1'b1;
    end else begin
        biases2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln158_reg_1094 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_4_we0_local = 1'b1;
    end else begin
        biases2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_5_address0_local = biases2_5_addr_reg_1064_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_5_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_5_ce0_local = 1'b1;
    end else begin
        biases2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln158_reg_1094_pp0_iter1_reg == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_5_we0_local = 1'b1;
    end else begin
        biases2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_6_address0_local = biases2_6_addr_reg_989_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_6_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_6_ce0_local = 1'b1;
    end else begin
        biases2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln158_reg_1094 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_6_we0_local = 1'b1;
    end else begin
        biases2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_7_address0_local = biases2_7_addr_reg_1069_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_7_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_7_ce0_local = 1'b1;
    end else begin
        biases2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln158_reg_1094_pp0_iter1_reg == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_7_we0_local = 1'b1;
    end else begin
        biases2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_8_address0_local = biases2_8_addr_reg_994_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_8_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_8_ce0_local = 1'b1;
    end else begin
        biases2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln158_reg_1094 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_8_we0_local = 1'b1;
    end else begin
        biases2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_9_address0_local = biases2_9_addr_reg_1074_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_9_address0_local = zext_ln121_fu_601_p1;
    end else begin
        biases2_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_9_ce0_local = 1'b1;
    end else begin
        biases2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln158_reg_1094_pp0_iter1_reg == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        d_biases2_1_ce0_local = 1'b1;
    end else begin
        d_biases2_1_ce0_local = 1'b0;
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
    if ((((tmp_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_561_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_561_opcode = 2'd0;
    end else begin
        grp_fu_561_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_561_p0 = bias_norm_1_reg_1157;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_561_p0 = bias_norm_fu_130;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_561_p0 = tmp_13_reg_1113;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_561_p0 = tmp_12_reg_1103;
    end else begin
        grp_fu_561_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_561_p1 = mul116_1_reg_1152;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_561_p1 = mul5_reg_1142;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_561_p1 = mul108_1_reg_1123;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_561_p1 = mul3_reg_1118;
    end else begin
        grp_fu_561_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_565_p0 = sub111_1_reg_1135;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_565_p0 = sub2_reg_1128;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_565_p0 = tmp_s_reg_1108;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_565_p0 = tmp_11_reg_1098;
    end else begin
        grp_fu_565_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_565_p1 = sub111_1_reg_1135;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_565_p1 = sub2_reg_1128;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_565_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_565_p1 = 'bx;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
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
assign add_ln158_fu_864_p2 = (i_3_reg_924 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bias_norm_4_out = bias_norm_fu_130;
assign biases2_0_address0 = biases2_0_address0_local;
assign biases2_0_ce0 = biases2_0_ce0_local;
assign biases2_0_d0 = bitcast_ln159_16_fu_874_p1;
assign biases2_0_we0 = biases2_0_we0_local;
assign biases2_10_address0 = biases2_10_address0_local;
assign biases2_10_ce0 = biases2_10_ce0_local;
assign biases2_10_d0 = bitcast_ln159_16_fu_874_p1;
assign biases2_10_we0 = biases2_10_we0_local;
assign biases2_11_address0 = biases2_11_address0_local;
assign biases2_11_ce0 = biases2_11_ce0_local;
assign biases2_11_d0 = bitcast_ln159_17_fu_885_p1;
assign biases2_11_we0 = biases2_11_we0_local;
assign biases2_12_address0 = biases2_12_address0_local;
assign biases2_12_ce0 = biases2_12_ce0_local;
assign biases2_12_d0 = bitcast_ln159_16_fu_874_p1;
assign biases2_12_we0 = biases2_12_we0_local;
assign biases2_13_address0 = biases2_13_address0_local;
assign biases2_13_ce0 = biases2_13_ce0_local;
assign biases2_13_d0 = bitcast_ln159_17_fu_885_p1;
assign biases2_13_we0 = biases2_13_we0_local;
assign biases2_14_address0 = biases2_14_address0_local;
assign biases2_14_ce0 = biases2_14_ce0_local;
assign biases2_14_d0 = bitcast_ln159_16_fu_874_p1;
assign biases2_14_we0 = biases2_14_we0_local;
assign biases2_15_address0 = biases2_15_address0_local;
assign biases2_15_ce0 = biases2_15_ce0_local;
assign biases2_15_d0 = bitcast_ln159_17_fu_885_p1;
assign biases2_15_we0 = biases2_15_we0_local;
assign biases2_1_address0 = biases2_1_address0_local;
assign biases2_1_ce0 = biases2_1_ce0_local;
assign biases2_1_d0 = bitcast_ln159_17_fu_885_p1;
assign biases2_1_we0 = biases2_1_we0_local;
assign biases2_2_address0 = biases2_2_address0_local;
assign biases2_2_ce0 = biases2_2_ce0_local;
assign biases2_2_d0 = bitcast_ln159_16_fu_874_p1;
assign biases2_2_we0 = biases2_2_we0_local;
assign biases2_3_address0 = biases2_3_address0_local;
assign biases2_3_ce0 = biases2_3_ce0_local;
assign biases2_3_d0 = bitcast_ln159_17_fu_885_p1;
assign biases2_3_we0 = biases2_3_we0_local;
assign biases2_4_address0 = biases2_4_address0_local;
assign biases2_4_ce0 = biases2_4_ce0_local;
assign biases2_4_d0 = bitcast_ln159_16_fu_874_p1;
assign biases2_4_we0 = biases2_4_we0_local;
assign biases2_5_address0 = biases2_5_address0_local;
assign biases2_5_ce0 = biases2_5_ce0_local;
assign biases2_5_d0 = bitcast_ln159_17_fu_885_p1;
assign biases2_5_we0 = biases2_5_we0_local;
assign biases2_6_address0 = biases2_6_address0_local;
assign biases2_6_ce0 = biases2_6_ce0_local;
assign biases2_6_d0 = bitcast_ln159_16_fu_874_p1;
assign biases2_6_we0 = biases2_6_we0_local;
assign biases2_7_address0 = biases2_7_address0_local;
assign biases2_7_ce0 = biases2_7_ce0_local;
assign biases2_7_d0 = bitcast_ln159_17_fu_885_p1;
assign biases2_7_we0 = biases2_7_we0_local;
assign biases2_8_address0 = biases2_8_address0_local;
assign biases2_8_ce0 = biases2_8_ce0_local;
assign biases2_8_d0 = bitcast_ln159_16_fu_874_p1;
assign biases2_8_we0 = biases2_8_we0_local;
assign biases2_9_address0 = biases2_9_address0_local;
assign biases2_9_ce0 = biases2_9_ce0_local;
assign biases2_9_d0 = bitcast_ln159_17_fu_885_p1;
assign biases2_9_we0 = biases2_9_we0_local;
assign bitcast_ln159_16_fu_874_p1 = sub2_reg_1128;
assign bitcast_ln159_17_fu_885_p1 = sub111_1_reg_1135;
assign d_biases2_0_address0 = zext_ln121_fu_601_p1;
assign d_biases2_0_ce0 = d_biases2_0_ce0_local;
assign d_biases2_10_address0 = zext_ln121_fu_601_p1;
assign d_biases2_10_ce0 = d_biases2_10_ce0_local;
assign d_biases2_11_address0 = zext_ln121_fu_601_p1;
assign d_biases2_11_ce0 = d_biases2_11_ce0_local;
assign d_biases2_12_address0 = zext_ln121_fu_601_p1;
assign d_biases2_12_ce0 = d_biases2_12_ce0_local;
assign d_biases2_13_address0 = zext_ln121_fu_601_p1;
assign d_biases2_13_ce0 = d_biases2_13_ce0_local;
assign d_biases2_14_address0 = zext_ln121_fu_601_p1;
assign d_biases2_14_ce0 = d_biases2_14_ce0_local;
assign d_biases2_15_address0 = zext_ln121_fu_601_p1;
assign d_biases2_15_ce0 = d_biases2_15_ce0_local;
assign d_biases2_1_address0 = zext_ln121_fu_601_p1;
assign d_biases2_1_ce0 = d_biases2_1_ce0_local;
assign d_biases2_2_address0 = zext_ln121_fu_601_p1;
assign d_biases2_2_ce0 = d_biases2_2_ce0_local;
assign d_biases2_3_address0 = zext_ln121_fu_601_p1;
assign d_biases2_3_ce0 = d_biases2_3_ce0_local;
assign d_biases2_4_address0 = zext_ln121_fu_601_p1;
assign d_biases2_4_ce0 = d_biases2_4_ce0_local;
assign d_biases2_5_address0 = zext_ln121_fu_601_p1;
assign d_biases2_5_ce0 = d_biases2_5_ce0_local;
assign d_biases2_6_address0 = zext_ln121_fu_601_p1;
assign d_biases2_6_ce0 = d_biases2_6_ce0_local;
assign d_biases2_7_address0 = zext_ln121_fu_601_p1;
assign d_biases2_7_ce0 = d_biases2_7_ce0_local;
assign d_biases2_8_address0 = zext_ln121_fu_601_p1;
assign d_biases2_8_ce0 = d_biases2_8_ce0_local;
assign d_biases2_9_address0 = zext_ln121_fu_601_p1;
assign d_biases2_9_ce0 = d_biases2_9_ce0_local;
assign grp_fu_1147_p_ce = 1'b1;
assign grp_fu_1147_p_din0 = grp_fu_561_p0;
assign grp_fu_1147_p_din1 = grp_fu_561_p1;
assign grp_fu_1147_p_opcode = grp_fu_561_opcode;
assign grp_fu_1151_p_ce = 1'b1;
assign grp_fu_1151_p_din0 = grp_fu_565_p0;
assign grp_fu_1151_p_din1 = grp_fu_565_p1;
assign lshr_ln121_2_fu_591_p4 = {{ap_sig_allocacmp_i_3[5:4]}};
assign tmp_11_fu_640_p17 = 'bx;
assign tmp_12_fu_712_p10 = biases2_8_q0;
assign tmp_12_fu_712_p12 = biases2_10_q0;
assign tmp_12_fu_712_p14 = biases2_12_q0;
assign tmp_12_fu_712_p16 = biases2_14_q0;
assign tmp_12_fu_712_p17 = 'bx;
assign tmp_12_fu_712_p2 = biases2_0_q0;
assign tmp_12_fu_712_p4 = biases2_2_q0;
assign tmp_12_fu_712_p6 = biases2_4_q0;
assign tmp_12_fu_712_p8 = biases2_6_q0;
assign tmp_13_fu_824_p10 = biases2_9_q0;
assign tmp_13_fu_824_p12 = biases2_11_q0;
assign tmp_13_fu_824_p14 = biases2_13_q0;
assign tmp_13_fu_824_p16 = biases2_15_q0;
assign tmp_13_fu_824_p17 = 'bx;
assign tmp_13_fu_824_p2 = biases2_1_q0;
assign tmp_13_fu_824_p4 = biases2_3_q0;
assign tmp_13_fu_824_p6 = biases2_5_q0;
assign tmp_13_fu_824_p8 = biases2_7_q0;
assign tmp_s_fu_752_p17 = 'bx;
assign trunc_ln158_fu_637_p1 = i_3_reg_924[3:0];
assign zext_ln121_fu_601_p1 = lshr_ln121_2_fu_591_p4;
endmodule 
