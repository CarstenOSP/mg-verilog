module backprop_update_weights_32_33_1_Pipeline_up_weight_loop6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_31_address0,biases2_31_ce0,biases2_31_we0,biases2_31_d0,biases2_31_q0,biases2_30_address0,biases2_30_ce0,biases2_30_we0,biases2_30_d0,biases2_30_q0,biases2_29_address0,biases2_29_ce0,biases2_29_we0,biases2_29_d0,biases2_29_q0,biases2_28_address0,biases2_28_ce0,biases2_28_we0,biases2_28_d0,biases2_28_q0,biases2_27_address0,biases2_27_ce0,biases2_27_we0,biases2_27_d0,biases2_27_q0,biases2_26_address0,biases2_26_ce0,biases2_26_we0,biases2_26_d0,biases2_26_q0,biases2_25_address0,biases2_25_ce0,biases2_25_we0,biases2_25_d0,biases2_25_q0,biases2_24_address0,biases2_24_ce0,biases2_24_we0,biases2_24_d0,biases2_24_q0,biases2_23_address0,biases2_23_ce0,biases2_23_we0,biases2_23_d0,biases2_23_q0,biases2_22_address0,biases2_22_ce0,biases2_22_we0,biases2_22_d0,biases2_22_q0,biases2_21_address0,biases2_21_ce0,biases2_21_we0,biases2_21_d0,biases2_21_q0,biases2_20_address0,biases2_20_ce0,biases2_20_we0,biases2_20_d0,biases2_20_q0,biases2_19_address0,biases2_19_ce0,biases2_19_we0,biases2_19_d0,biases2_19_q0,biases2_18_address0,biases2_18_ce0,biases2_18_we0,biases2_18_d0,biases2_18_q0,biases2_17_address0,biases2_17_ce0,biases2_17_we0,biases2_17_d0,biases2_17_q0,biases2_16_address0,biases2_16_ce0,biases2_16_we0,biases2_16_d0,biases2_16_q0,biases2_15_address0,biases2_15_ce0,biases2_15_we0,biases2_15_d0,biases2_15_q0,biases2_14_address0,biases2_14_ce0,biases2_14_we0,biases2_14_d0,biases2_14_q0,biases2_13_address0,biases2_13_ce0,biases2_13_we0,biases2_13_d0,biases2_13_q0,biases2_12_address0,biases2_12_ce0,biases2_12_we0,biases2_12_d0,biases2_12_q0,biases2_11_address0,biases2_11_ce0,biases2_11_we0,biases2_11_d0,biases2_11_q0,biases2_10_address0,biases2_10_ce0,biases2_10_we0,biases2_10_d0,biases2_10_q0,biases2_9_address0,biases2_9_ce0,biases2_9_we0,biases2_9_d0,biases2_9_q0,biases2_8_address0,biases2_8_ce0,biases2_8_we0,biases2_8_d0,biases2_8_q0,biases2_7_address0,biases2_7_ce0,biases2_7_we0,biases2_7_d0,biases2_7_q0,biases2_6_address0,biases2_6_ce0,biases2_6_we0,biases2_6_d0,biases2_6_q0,biases2_5_address0,biases2_5_ce0,biases2_5_we0,biases2_5_d0,biases2_5_q0,biases2_4_address0,biases2_4_ce0,biases2_4_we0,biases2_4_d0,biases2_4_q0,biases2_3_address0,biases2_3_ce0,biases2_3_we0,biases2_3_d0,biases2_3_q0,biases2_2_address0,biases2_2_ce0,biases2_2_we0,biases2_2_d0,biases2_2_q0,biases2_1_address0,biases2_1_ce0,biases2_1_we0,biases2_1_d0,biases2_1_q0,biases2_0_address0,biases2_0_ce0,biases2_0_we0,biases2_0_d0,biases2_0_q0,d_biases2_0_address0,d_biases2_0_ce0,d_biases2_0_q0,d_biases2_2_address0,d_biases2_2_ce0,d_biases2_2_q0,d_biases2_4_address0,d_biases2_4_ce0,d_biases2_4_q0,d_biases2_6_address0,d_biases2_6_ce0,d_biases2_6_q0,d_biases2_8_address0,d_biases2_8_ce0,d_biases2_8_q0,d_biases2_10_address0,d_biases2_10_ce0,d_biases2_10_q0,d_biases2_12_address0,d_biases2_12_ce0,d_biases2_12_q0,d_biases2_14_address0,d_biases2_14_ce0,d_biases2_14_q0,d_biases2_16_address0,d_biases2_16_ce0,d_biases2_16_q0,d_biases2_18_address0,d_biases2_18_ce0,d_biases2_18_q0,d_biases2_20_address0,d_biases2_20_ce0,d_biases2_20_q0,d_biases2_22_address0,d_biases2_22_ce0,d_biases2_22_q0,d_biases2_24_address0,d_biases2_24_ce0,d_biases2_24_q0,d_biases2_26_address0,d_biases2_26_ce0,d_biases2_26_q0,d_biases2_28_address0,d_biases2_28_ce0,d_biases2_28_q0,d_biases2_30_address0,d_biases2_30_ce0,d_biases2_30_q0,d_biases2_1_address0,d_biases2_1_ce0,d_biases2_1_q0,d_biases2_3_address0,d_biases2_3_ce0,d_biases2_3_q0,d_biases2_5_address0,d_biases2_5_ce0,d_biases2_5_q0,d_biases2_7_address0,d_biases2_7_ce0,d_biases2_7_q0,d_biases2_9_address0,d_biases2_9_ce0,d_biases2_9_q0,d_biases2_11_address0,d_biases2_11_ce0,d_biases2_11_q0,d_biases2_13_address0,d_biases2_13_ce0,d_biases2_13_q0,d_biases2_15_address0,d_biases2_15_ce0,d_biases2_15_q0,d_biases2_17_address0,d_biases2_17_ce0,d_biases2_17_q0,d_biases2_19_address0,d_biases2_19_ce0,d_biases2_19_q0,d_biases2_21_address0,d_biases2_21_ce0,d_biases2_21_q0,d_biases2_23_address0,d_biases2_23_ce0,d_biases2_23_q0,d_biases2_25_address0,d_biases2_25_ce0,d_biases2_25_q0,d_biases2_27_address0,d_biases2_27_ce0,d_biases2_27_q0,d_biases2_29_address0,d_biases2_29_ce0,d_biases2_29_q0,d_biases2_31_address0,d_biases2_31_ce0,d_biases2_31_q0,bias_norm_4_out,bias_norm_4_out_ap_vld,grp_fu_1947_p_din0,grp_fu_1947_p_din1,grp_fu_1947_p_opcode,grp_fu_1947_p_dout0,grp_fu_1947_p_ce,grp_fu_1951_p_din0,grp_fu_1951_p_din1,grp_fu_1951_p_dout0,grp_fu_1951_p_ce); 
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
output  [0:0] d_biases2_2_address0;
output   d_biases2_2_ce0;
input  [63:0] d_biases2_2_q0;
output  [0:0] d_biases2_4_address0;
output   d_biases2_4_ce0;
input  [63:0] d_biases2_4_q0;
output  [0:0] d_biases2_6_address0;
output   d_biases2_6_ce0;
input  [63:0] d_biases2_6_q0;
output  [0:0] d_biases2_8_address0;
output   d_biases2_8_ce0;
input  [63:0] d_biases2_8_q0;
output  [0:0] d_biases2_10_address0;
output   d_biases2_10_ce0;
input  [63:0] d_biases2_10_q0;
output  [0:0] d_biases2_12_address0;
output   d_biases2_12_ce0;
input  [63:0] d_biases2_12_q0;
output  [0:0] d_biases2_14_address0;
output   d_biases2_14_ce0;
input  [63:0] d_biases2_14_q0;
output  [0:0] d_biases2_16_address0;
output   d_biases2_16_ce0;
input  [63:0] d_biases2_16_q0;
output  [0:0] d_biases2_18_address0;
output   d_biases2_18_ce0;
input  [63:0] d_biases2_18_q0;
output  [0:0] d_biases2_20_address0;
output   d_biases2_20_ce0;
input  [63:0] d_biases2_20_q0;
output  [0:0] d_biases2_22_address0;
output   d_biases2_22_ce0;
input  [63:0] d_biases2_22_q0;
output  [0:0] d_biases2_24_address0;
output   d_biases2_24_ce0;
input  [63:0] d_biases2_24_q0;
output  [0:0] d_biases2_26_address0;
output   d_biases2_26_ce0;
input  [63:0] d_biases2_26_q0;
output  [0:0] d_biases2_28_address0;
output   d_biases2_28_ce0;
input  [63:0] d_biases2_28_q0;
output  [0:0] d_biases2_30_address0;
output   d_biases2_30_ce0;
input  [63:0] d_biases2_30_q0;
output  [0:0] d_biases2_1_address0;
output   d_biases2_1_ce0;
input  [63:0] d_biases2_1_q0;
output  [0:0] d_biases2_3_address0;
output   d_biases2_3_ce0;
input  [63:0] d_biases2_3_q0;
output  [0:0] d_biases2_5_address0;
output   d_biases2_5_ce0;
input  [63:0] d_biases2_5_q0;
output  [0:0] d_biases2_7_address0;
output   d_biases2_7_ce0;
input  [63:0] d_biases2_7_q0;
output  [0:0] d_biases2_9_address0;
output   d_biases2_9_ce0;
input  [63:0] d_biases2_9_q0;
output  [0:0] d_biases2_11_address0;
output   d_biases2_11_ce0;
input  [63:0] d_biases2_11_q0;
output  [0:0] d_biases2_13_address0;
output   d_biases2_13_ce0;
input  [63:0] d_biases2_13_q0;
output  [0:0] d_biases2_15_address0;
output   d_biases2_15_ce0;
input  [63:0] d_biases2_15_q0;
output  [0:0] d_biases2_17_address0;
output   d_biases2_17_ce0;
input  [63:0] d_biases2_17_q0;
output  [0:0] d_biases2_19_address0;
output   d_biases2_19_ce0;
input  [63:0] d_biases2_19_q0;
output  [0:0] d_biases2_21_address0;
output   d_biases2_21_ce0;
input  [63:0] d_biases2_21_q0;
output  [0:0] d_biases2_23_address0;
output   d_biases2_23_ce0;
input  [63:0] d_biases2_23_q0;
output  [0:0] d_biases2_25_address0;
output   d_biases2_25_ce0;
input  [63:0] d_biases2_25_q0;
output  [0:0] d_biases2_27_address0;
output   d_biases2_27_ce0;
input  [63:0] d_biases2_27_q0;
output  [0:0] d_biases2_29_address0;
output   d_biases2_29_ce0;
input  [63:0] d_biases2_29_q0;
output  [0:0] d_biases2_31_address0;
output   d_biases2_31_ce0;
input  [63:0] d_biases2_31_q0;
output  [63:0] bias_norm_4_out;
output   bias_norm_4_out_ap_vld;
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
reg bias_norm_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] tmp_reg_1660;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_3_reg_1654;
reg   [0:0] tmp_reg_1660_pp0_iter1_reg;
reg   [0:0] biases2_0_addr_reg_1744;
reg   [0:0] biases2_0_addr_reg_1744_pp0_iter1_reg;
reg   [0:0] biases2_2_addr_reg_1749;
reg   [0:0] biases2_2_addr_reg_1749_pp0_iter1_reg;
reg   [0:0] biases2_4_addr_reg_1754;
reg   [0:0] biases2_4_addr_reg_1754_pp0_iter1_reg;
reg   [0:0] biases2_6_addr_reg_1759;
reg   [0:0] biases2_6_addr_reg_1759_pp0_iter1_reg;
reg   [0:0] biases2_8_addr_reg_1764;
reg   [0:0] biases2_8_addr_reg_1764_pp0_iter1_reg;
reg   [0:0] biases2_10_addr_reg_1769;
reg   [0:0] biases2_10_addr_reg_1769_pp0_iter1_reg;
reg   [0:0] biases2_12_addr_reg_1774;
reg   [0:0] biases2_12_addr_reg_1774_pp0_iter1_reg;
reg   [0:0] biases2_14_addr_reg_1779;
reg   [0:0] biases2_14_addr_reg_1779_pp0_iter1_reg;
reg   [0:0] biases2_16_addr_reg_1784;
reg   [0:0] biases2_16_addr_reg_1784_pp0_iter1_reg;
reg   [0:0] biases2_18_addr_reg_1789;
reg   [0:0] biases2_18_addr_reg_1789_pp0_iter1_reg;
reg   [0:0] biases2_20_addr_reg_1794;
reg   [0:0] biases2_20_addr_reg_1794_pp0_iter1_reg;
reg   [0:0] biases2_22_addr_reg_1799;
reg   [0:0] biases2_22_addr_reg_1799_pp0_iter1_reg;
reg   [0:0] biases2_24_addr_reg_1804;
reg   [0:0] biases2_24_addr_reg_1804_pp0_iter1_reg;
reg   [0:0] biases2_26_addr_reg_1809;
reg   [0:0] biases2_26_addr_reg_1809_pp0_iter1_reg;
reg   [0:0] biases2_28_addr_reg_1814;
reg   [0:0] biases2_28_addr_reg_1814_pp0_iter1_reg;
reg   [0:0] biases2_30_addr_reg_1819;
reg   [0:0] biases2_30_addr_reg_1819_pp0_iter1_reg;
reg   [0:0] biases2_1_addr_reg_1904;
reg   [0:0] biases2_1_addr_reg_1904_pp0_iter1_reg;
reg   [0:0] biases2_3_addr_reg_1909;
reg   [0:0] biases2_3_addr_reg_1909_pp0_iter1_reg;
reg   [0:0] biases2_5_addr_reg_1914;
reg   [0:0] biases2_5_addr_reg_1914_pp0_iter1_reg;
reg   [0:0] biases2_7_addr_reg_1919;
reg   [0:0] biases2_7_addr_reg_1919_pp0_iter1_reg;
reg   [0:0] biases2_9_addr_reg_1924;
reg   [0:0] biases2_9_addr_reg_1924_pp0_iter1_reg;
reg   [0:0] biases2_11_addr_reg_1929;
reg   [0:0] biases2_11_addr_reg_1929_pp0_iter1_reg;
reg   [0:0] biases2_13_addr_reg_1934;
reg   [0:0] biases2_13_addr_reg_1934_pp0_iter1_reg;
reg   [0:0] biases2_15_addr_reg_1939;
reg   [0:0] biases2_15_addr_reg_1939_pp0_iter1_reg;
reg   [0:0] biases2_17_addr_reg_1944;
reg   [0:0] biases2_17_addr_reg_1944_pp0_iter1_reg;
reg   [0:0] biases2_19_addr_reg_1949;
reg   [0:0] biases2_19_addr_reg_1949_pp0_iter1_reg;
reg   [0:0] biases2_21_addr_reg_1954;
reg   [0:0] biases2_21_addr_reg_1954_pp0_iter1_reg;
reg   [0:0] biases2_23_addr_reg_1959;
reg   [0:0] biases2_23_addr_reg_1959_pp0_iter1_reg;
reg   [0:0] biases2_25_addr_reg_1964;
reg   [0:0] biases2_25_addr_reg_1964_pp0_iter1_reg;
reg   [0:0] biases2_27_addr_reg_1969;
reg   [0:0] biases2_27_addr_reg_1969_pp0_iter1_reg;
reg   [0:0] biases2_29_addr_reg_1974;
reg   [0:0] biases2_29_addr_reg_1974_pp0_iter1_reg;
reg   [0:0] biases2_31_addr_reg_1979;
reg   [0:0] biases2_31_addr_reg_1979_pp0_iter1_reg;
wire   [4:0] trunc_ln158_fu_1159_p1;
reg   [4:0] trunc_ln158_reg_1984;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_11_fu_1162_p35;
reg   [63:0] tmp_11_reg_1988;
wire   [63:0] tmp_12_fu_1298_p35;
reg   [63:0] tmp_12_reg_1993;
wire   [63:0] tmp_s_fu_1370_p35;
reg   [63:0] tmp_s_reg_1998;
wire   [63:0] tmp_13_fu_1506_p35;
reg   [63:0] tmp_13_reg_2003;
reg   [63:0] mul3_reg_2008;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] mul108_1_reg_2013;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] sub2_reg_2018;
reg   [63:0] sub111_1_reg_2025;
reg   [63:0] mul5_reg_2032;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] mul116_1_reg_2042;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] bias_norm_1_reg_2047;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
wire   [63:0] zext_ln121_fu_1091_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] bias_norm_fu_206;
wire    ap_block_pp0_stage7;
wire    ap_loop_init;
wire    ap_block_pp0_stage8;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage7;
reg    ap_idle_pp0_0to0;
reg   [6:0] i_fu_210;
wire   [6:0] add_ln158_fu_1578_p2;
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
reg    d_biases2_16_ce0_local;
reg    d_biases2_18_ce0_local;
reg    d_biases2_20_ce0_local;
reg    d_biases2_22_ce0_local;
reg    d_biases2_24_ce0_local;
reg    d_biases2_26_ce0_local;
reg    d_biases2_28_ce0_local;
reg    d_biases2_30_ce0_local;
reg    biases2_0_ce0_local;
reg   [0:0] biases2_0_address0_local;
reg    biases2_0_we0_local;
reg    ap_predicate_pred928_state18;
wire   [63:0] bitcast_ln159_32_fu_1588_p1;
wire    ap_block_pp0_stage1;
reg    biases2_2_ce0_local;
reg   [0:0] biases2_2_address0_local;
reg    biases2_2_we0_local;
reg    ap_predicate_pred944_state18;
reg    biases2_4_ce0_local;
reg   [0:0] biases2_4_address0_local;
reg    biases2_4_we0_local;
reg    ap_predicate_pred954_state18;
reg    biases2_6_ce0_local;
reg   [0:0] biases2_6_address0_local;
reg    biases2_6_we0_local;
reg    ap_predicate_pred964_state18;
reg    biases2_8_ce0_local;
reg   [0:0] biases2_8_address0_local;
reg    biases2_8_we0_local;
reg    ap_predicate_pred974_state18;
reg    biases2_10_ce0_local;
reg   [0:0] biases2_10_address0_local;
reg    biases2_10_we0_local;
reg    ap_predicate_pred984_state18;
reg    biases2_12_ce0_local;
reg   [0:0] biases2_12_address0_local;
reg    biases2_12_we0_local;
reg    ap_predicate_pred994_state18;
reg    biases2_14_ce0_local;
reg   [0:0] biases2_14_address0_local;
reg    biases2_14_we0_local;
reg    ap_predicate_pred1004_state18;
reg    biases2_16_ce0_local;
reg   [0:0] biases2_16_address0_local;
reg    biases2_16_we0_local;
reg    ap_predicate_pred1014_state18;
reg    biases2_18_ce0_local;
reg   [0:0] biases2_18_address0_local;
reg    biases2_18_we0_local;
reg    ap_predicate_pred1024_state18;
reg    biases2_20_ce0_local;
reg   [0:0] biases2_20_address0_local;
reg    biases2_20_we0_local;
reg    ap_predicate_pred1034_state18;
reg    biases2_22_ce0_local;
reg   [0:0] biases2_22_address0_local;
reg    biases2_22_we0_local;
reg    ap_predicate_pred1044_state18;
reg    biases2_24_ce0_local;
reg   [0:0] biases2_24_address0_local;
reg    biases2_24_we0_local;
reg    ap_predicate_pred1054_state18;
reg    biases2_26_ce0_local;
reg   [0:0] biases2_26_address0_local;
reg    biases2_26_we0_local;
reg    ap_predicate_pred1064_state18;
reg    biases2_28_ce0_local;
reg   [0:0] biases2_28_address0_local;
reg    biases2_28_we0_local;
reg    ap_predicate_pred1074_state18;
reg    biases2_30_ce0_local;
reg   [0:0] biases2_30_address0_local;
reg    biases2_30_we0_local;
reg    ap_predicate_pred1111_state18;
reg    d_biases2_1_ce0_local;
reg    d_biases2_3_ce0_local;
reg    d_biases2_5_ce0_local;
reg    d_biases2_7_ce0_local;
reg    d_biases2_9_ce0_local;
reg    d_biases2_11_ce0_local;
reg    d_biases2_13_ce0_local;
reg    d_biases2_15_ce0_local;
reg    d_biases2_17_ce0_local;
reg    d_biases2_19_ce0_local;
reg    d_biases2_21_ce0_local;
reg    d_biases2_23_ce0_local;
reg    d_biases2_25_ce0_local;
reg    d_biases2_27_ce0_local;
reg    d_biases2_29_ce0_local;
reg    d_biases2_31_ce0_local;
reg    biases2_1_ce0_local;
reg   [0:0] biases2_1_address0_local;
reg    biases2_1_we0_local;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg    ap_predicate_pred928_state19;
wire   [63:0] bitcast_ln159_33_fu_1607_p1;
wire    ap_block_pp0_stage2;
reg    biases2_3_ce0_local;
reg   [0:0] biases2_3_address0_local;
reg    biases2_3_we0_local;
reg    ap_predicate_pred944_state19;
reg    biases2_5_ce0_local;
reg   [0:0] biases2_5_address0_local;
reg    biases2_5_we0_local;
reg    ap_predicate_pred954_state19;
reg    biases2_7_ce0_local;
reg   [0:0] biases2_7_address0_local;
reg    biases2_7_we0_local;
reg    ap_predicate_pred964_state19;
reg    biases2_9_ce0_local;
reg   [0:0] biases2_9_address0_local;
reg    biases2_9_we0_local;
reg    ap_predicate_pred974_state19;
reg    biases2_11_ce0_local;
reg   [0:0] biases2_11_address0_local;
reg    biases2_11_we0_local;
reg    ap_predicate_pred984_state19;
reg    biases2_13_ce0_local;
reg   [0:0] biases2_13_address0_local;
reg    biases2_13_we0_local;
reg    ap_predicate_pred994_state19;
reg    biases2_15_ce0_local;
reg   [0:0] biases2_15_address0_local;
reg    biases2_15_we0_local;
reg    ap_predicate_pred1004_state19;
reg    biases2_17_ce0_local;
reg   [0:0] biases2_17_address0_local;
reg    biases2_17_we0_local;
reg    ap_predicate_pred1014_state19;
reg    biases2_19_ce0_local;
reg   [0:0] biases2_19_address0_local;
reg    biases2_19_we0_local;
reg    ap_predicate_pred1024_state19;
reg    biases2_21_ce0_local;
reg   [0:0] biases2_21_address0_local;
reg    biases2_21_we0_local;
reg    ap_predicate_pred1034_state19;
reg    biases2_23_ce0_local;
reg   [0:0] biases2_23_address0_local;
reg    biases2_23_we0_local;
reg    ap_predicate_pred1044_state19;
reg    biases2_25_ce0_local;
reg   [0:0] biases2_25_address0_local;
reg    biases2_25_we0_local;
reg    ap_predicate_pred1054_state19;
reg    biases2_27_ce0_local;
reg   [0:0] biases2_27_address0_local;
reg    biases2_27_we0_local;
reg    ap_predicate_pred1064_state19;
reg    biases2_29_ce0_local;
reg   [0:0] biases2_29_address0_local;
reg    biases2_29_we0_local;
reg    ap_predicate_pred1074_state19;
reg    biases2_31_ce0_local;
reg   [0:0] biases2_31_address0_local;
reg    biases2_31_we0_local;
reg    ap_predicate_pred1111_state19;
reg   [63:0] grp_fu_1053_p0;
reg   [63:0] grp_fu_1053_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
reg   [63:0] grp_fu_1057_p0;
reg   [63:0] grp_fu_1057_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [0:0] tmp_2_fu_1083_p3;
wire   [63:0] tmp_11_fu_1162_p33;
wire   [63:0] tmp_12_fu_1298_p2;
wire   [63:0] tmp_12_fu_1298_p4;
wire   [63:0] tmp_12_fu_1298_p6;
wire   [63:0] tmp_12_fu_1298_p8;
wire   [63:0] tmp_12_fu_1298_p10;
wire   [63:0] tmp_12_fu_1298_p12;
wire   [63:0] tmp_12_fu_1298_p14;
wire   [63:0] tmp_12_fu_1298_p16;
wire   [63:0] tmp_12_fu_1298_p18;
wire   [63:0] tmp_12_fu_1298_p20;
wire   [63:0] tmp_12_fu_1298_p22;
wire   [63:0] tmp_12_fu_1298_p24;
wire   [63:0] tmp_12_fu_1298_p26;
wire   [63:0] tmp_12_fu_1298_p28;
wire   [63:0] tmp_12_fu_1298_p30;
wire   [63:0] tmp_12_fu_1298_p32;
wire   [63:0] tmp_12_fu_1298_p33;
wire   [63:0] tmp_s_fu_1370_p33;
wire   [63:0] tmp_13_fu_1506_p2;
wire   [63:0] tmp_13_fu_1506_p4;
wire   [63:0] tmp_13_fu_1506_p6;
wire   [63:0] tmp_13_fu_1506_p8;
wire   [63:0] tmp_13_fu_1506_p10;
wire   [63:0] tmp_13_fu_1506_p12;
wire   [63:0] tmp_13_fu_1506_p14;
wire   [63:0] tmp_13_fu_1506_p16;
wire   [63:0] tmp_13_fu_1506_p18;
wire   [63:0] tmp_13_fu_1506_p20;
wire   [63:0] tmp_13_fu_1506_p22;
wire   [63:0] tmp_13_fu_1506_p24;
wire   [63:0] tmp_13_fu_1506_p26;
wire   [63:0] tmp_13_fu_1506_p28;
wire   [63:0] tmp_13_fu_1506_p30;
wire   [63:0] tmp_13_fu_1506_p32;
wire   [63:0] tmp_13_fu_1506_p33;
wire    ap_block_pp0_stage15;
reg   [1:0] grp_fu_1053_opcode;
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
wire   [4:0] tmp_11_fu_1162_p1;
wire   [4:0] tmp_11_fu_1162_p3;
wire   [4:0] tmp_11_fu_1162_p5;
wire   [4:0] tmp_11_fu_1162_p7;
wire   [4:0] tmp_11_fu_1162_p9;
wire   [4:0] tmp_11_fu_1162_p11;
wire   [4:0] tmp_11_fu_1162_p13;
wire   [4:0] tmp_11_fu_1162_p15;
wire  signed [4:0] tmp_11_fu_1162_p17;
wire  signed [4:0] tmp_11_fu_1162_p19;
wire  signed [4:0] tmp_11_fu_1162_p21;
wire  signed [4:0] tmp_11_fu_1162_p23;
wire  signed [4:0] tmp_11_fu_1162_p25;
wire  signed [4:0] tmp_11_fu_1162_p27;
wire  signed [4:0] tmp_11_fu_1162_p29;
wire  signed [4:0] tmp_11_fu_1162_p31;
wire   [4:0] tmp_12_fu_1298_p1;
wire   [4:0] tmp_12_fu_1298_p3;
wire   [4:0] tmp_12_fu_1298_p5;
wire   [4:0] tmp_12_fu_1298_p7;
wire   [4:0] tmp_12_fu_1298_p9;
wire   [4:0] tmp_12_fu_1298_p11;
wire   [4:0] tmp_12_fu_1298_p13;
wire   [4:0] tmp_12_fu_1298_p15;
wire  signed [4:0] tmp_12_fu_1298_p17;
wire  signed [4:0] tmp_12_fu_1298_p19;
wire  signed [4:0] tmp_12_fu_1298_p21;
wire  signed [4:0] tmp_12_fu_1298_p23;
wire  signed [4:0] tmp_12_fu_1298_p25;
wire  signed [4:0] tmp_12_fu_1298_p27;
wire  signed [4:0] tmp_12_fu_1298_p29;
wire  signed [4:0] tmp_12_fu_1298_p31;
wire   [4:0] tmp_s_fu_1370_p1;
wire   [4:0] tmp_s_fu_1370_p3;
wire   [4:0] tmp_s_fu_1370_p5;
wire   [4:0] tmp_s_fu_1370_p7;
wire   [4:0] tmp_s_fu_1370_p9;
wire   [4:0] tmp_s_fu_1370_p11;
wire   [4:0] tmp_s_fu_1370_p13;
wire   [4:0] tmp_s_fu_1370_p15;
wire  signed [4:0] tmp_s_fu_1370_p17;
wire  signed [4:0] tmp_s_fu_1370_p19;
wire  signed [4:0] tmp_s_fu_1370_p21;
wire  signed [4:0] tmp_s_fu_1370_p23;
wire  signed [4:0] tmp_s_fu_1370_p25;
wire  signed [4:0] tmp_s_fu_1370_p27;
wire  signed [4:0] tmp_s_fu_1370_p29;
wire  signed [4:0] tmp_s_fu_1370_p31;
wire   [4:0] tmp_13_fu_1506_p1;
wire   [4:0] tmp_13_fu_1506_p3;
wire   [4:0] tmp_13_fu_1506_p5;
wire   [4:0] tmp_13_fu_1506_p7;
wire   [4:0] tmp_13_fu_1506_p9;
wire   [4:0] tmp_13_fu_1506_p11;
wire   [4:0] tmp_13_fu_1506_p13;
wire   [4:0] tmp_13_fu_1506_p15;
wire  signed [4:0] tmp_13_fu_1506_p17;
wire  signed [4:0] tmp_13_fu_1506_p19;
wire  signed [4:0] tmp_13_fu_1506_p21;
wire  signed [4:0] tmp_13_fu_1506_p23;
wire  signed [4:0] tmp_13_fu_1506_p25;
wire  signed [4:0] tmp_13_fu_1506_p27;
wire  signed [4:0] tmp_13_fu_1506_p29;
wire  signed [4:0] tmp_13_fu_1506_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_206 = 64'd0;
#0 i_fu_210 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2359(.din0(d_biases2_0_q0),.din1(d_biases2_2_q0),.din2(d_biases2_4_q0),.din3(d_biases2_6_q0),.din4(d_biases2_8_q0),.din5(d_biases2_10_q0),.din6(d_biases2_12_q0),.din7(d_biases2_14_q0),.din8(d_biases2_16_q0),.din9(d_biases2_18_q0),.din10(d_biases2_20_q0),.din11(d_biases2_22_q0),.din12(d_biases2_24_q0),.din13(d_biases2_26_q0),.din14(d_biases2_28_q0),.din15(d_biases2_30_q0),.def(tmp_11_fu_1162_p33),.sel(trunc_ln158_fu_1159_p1),.dout(tmp_11_fu_1162_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2360(.din0(tmp_12_fu_1298_p2),.din1(tmp_12_fu_1298_p4),.din2(tmp_12_fu_1298_p6),.din3(tmp_12_fu_1298_p8),.din4(tmp_12_fu_1298_p10),.din5(tmp_12_fu_1298_p12),.din6(tmp_12_fu_1298_p14),.din7(tmp_12_fu_1298_p16),.din8(tmp_12_fu_1298_p18),.din9(tmp_12_fu_1298_p20),.din10(tmp_12_fu_1298_p22),.din11(tmp_12_fu_1298_p24),.din12(tmp_12_fu_1298_p26),.din13(tmp_12_fu_1298_p28),.din14(tmp_12_fu_1298_p30),.din15(tmp_12_fu_1298_p32),.def(tmp_12_fu_1298_p33),.sel(trunc_ln158_fu_1159_p1),.dout(tmp_12_fu_1298_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2361(.din0(d_biases2_1_q0),.din1(d_biases2_3_q0),.din2(d_biases2_5_q0),.din3(d_biases2_7_q0),.din4(d_biases2_9_q0),.din5(d_biases2_11_q0),.din6(d_biases2_13_q0),.din7(d_biases2_15_q0),.din8(d_biases2_17_q0),.din9(d_biases2_19_q0),.din10(d_biases2_21_q0),.din11(d_biases2_23_q0),.din12(d_biases2_25_q0),.din13(d_biases2_27_q0),.din14(d_biases2_29_q0),.din15(d_biases2_31_q0),.def(tmp_s_fu_1370_p33),.sel(trunc_ln158_fu_1159_p1),.dout(tmp_s_fu_1370_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2362(.din0(tmp_13_fu_1506_p2),.din1(tmp_13_fu_1506_p4),.din2(tmp_13_fu_1506_p6),.din3(tmp_13_fu_1506_p8),.din4(tmp_13_fu_1506_p10),.din5(tmp_13_fu_1506_p12),.din6(tmp_13_fu_1506_p14),.din7(tmp_13_fu_1506_p16),.din8(tmp_13_fu_1506_p18),.din9(tmp_13_fu_1506_p20),.din10(tmp_13_fu_1506_p22),.din11(tmp_13_fu_1506_p24),.din12(tmp_13_fu_1506_p26),.din13(tmp_13_fu_1506_p28),.din14(tmp_13_fu_1506_p30),.din15(tmp_13_fu_1506_p32),.def(tmp_13_fu_1506_p33),.sel(trunc_ln158_fu_1159_p1),.dout(tmp_13_fu_1506_p35));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_206 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bias_norm_fu_206 <= grp_fu_1947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_210 <= 7'd0;
    end else if (((tmp_reg_1660 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        i_fu_210 <= add_ln158_fu_1578_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred1004_state18 <= (trunc_ln158_reg_1984 == 5'd14);
        ap_predicate_pred1014_state18 <= (trunc_ln158_reg_1984 == 5'd16);
        ap_predicate_pred1024_state18 <= (trunc_ln158_reg_1984 == 5'd18);
        ap_predicate_pred1034_state18 <= (trunc_ln158_reg_1984 == 5'd20);
        ap_predicate_pred1044_state18 <= (trunc_ln158_reg_1984 == 5'd22);
        ap_predicate_pred1054_state18 <= (trunc_ln158_reg_1984 == 5'd24);
        ap_predicate_pred1064_state18 <= (trunc_ln158_reg_1984 == 5'd26);
        ap_predicate_pred1074_state18 <= (trunc_ln158_reg_1984 == 5'd28);
        ap_predicate_pred1111_state18 <= (~(trunc_ln158_reg_1984 == 5'd12) & ~(trunc_ln158_reg_1984 == 5'd10) & ~(trunc_ln158_reg_1984 == 5'd8) & ~(trunc_ln158_reg_1984 == 5'd6) & ~(trunc_ln158_reg_1984 == 5'd4) & ~(trunc_ln158_reg_1984 == 5'd2) & ~(trunc_ln158_reg_1984 == 5'd0) & ~(trunc_ln158_reg_1984 == 5'd28) & ~(trunc_ln158_reg_1984 == 5'd26) & ~(trunc_ln158_reg_1984 == 5'd24) & ~(trunc_ln158_reg_1984 == 5'd22) & ~(trunc_ln158_reg_1984 == 5'd20) & ~(trunc_ln158_reg_1984 == 5'd18) & ~(trunc_ln158_reg_1984 == 5'd16) & ~(trunc_ln158_reg_1984 == 5'd14));
        ap_predicate_pred928_state18 <= (trunc_ln158_reg_1984 == 5'd0);
        ap_predicate_pred944_state18 <= (trunc_ln158_reg_1984 == 5'd2);
        ap_predicate_pred954_state18 <= (trunc_ln158_reg_1984 == 5'd4);
        ap_predicate_pred964_state18 <= (trunc_ln158_reg_1984 == 5'd6);
        ap_predicate_pred974_state18 <= (trunc_ln158_reg_1984 == 5'd8);
        ap_predicate_pred984_state18 <= (trunc_ln158_reg_1984 == 5'd10);
        ap_predicate_pred994_state18 <= (trunc_ln158_reg_1984 == 5'd12);
        biases2_0_addr_reg_1744 <= zext_ln121_fu_1091_p1;
        biases2_0_addr_reg_1744_pp0_iter1_reg <= biases2_0_addr_reg_1744;
        biases2_10_addr_reg_1769 <= zext_ln121_fu_1091_p1;
        biases2_10_addr_reg_1769_pp0_iter1_reg <= biases2_10_addr_reg_1769;
        biases2_11_addr_reg_1929 <= zext_ln121_fu_1091_p1;
        biases2_11_addr_reg_1929_pp0_iter1_reg <= biases2_11_addr_reg_1929;
        biases2_12_addr_reg_1774 <= zext_ln121_fu_1091_p1;
        biases2_12_addr_reg_1774_pp0_iter1_reg <= biases2_12_addr_reg_1774;
        biases2_13_addr_reg_1934 <= zext_ln121_fu_1091_p1;
        biases2_13_addr_reg_1934_pp0_iter1_reg <= biases2_13_addr_reg_1934;
        biases2_14_addr_reg_1779 <= zext_ln121_fu_1091_p1;
        biases2_14_addr_reg_1779_pp0_iter1_reg <= biases2_14_addr_reg_1779;
        biases2_15_addr_reg_1939 <= zext_ln121_fu_1091_p1;
        biases2_15_addr_reg_1939_pp0_iter1_reg <= biases2_15_addr_reg_1939;
        biases2_16_addr_reg_1784 <= zext_ln121_fu_1091_p1;
        biases2_16_addr_reg_1784_pp0_iter1_reg <= biases2_16_addr_reg_1784;
        biases2_17_addr_reg_1944 <= zext_ln121_fu_1091_p1;
        biases2_17_addr_reg_1944_pp0_iter1_reg <= biases2_17_addr_reg_1944;
        biases2_18_addr_reg_1789 <= zext_ln121_fu_1091_p1;
        biases2_18_addr_reg_1789_pp0_iter1_reg <= biases2_18_addr_reg_1789;
        biases2_19_addr_reg_1949 <= zext_ln121_fu_1091_p1;
        biases2_19_addr_reg_1949_pp0_iter1_reg <= biases2_19_addr_reg_1949;
        biases2_1_addr_reg_1904 <= zext_ln121_fu_1091_p1;
        biases2_1_addr_reg_1904_pp0_iter1_reg <= biases2_1_addr_reg_1904;
        biases2_20_addr_reg_1794 <= zext_ln121_fu_1091_p1;
        biases2_20_addr_reg_1794_pp0_iter1_reg <= biases2_20_addr_reg_1794;
        biases2_21_addr_reg_1954 <= zext_ln121_fu_1091_p1;
        biases2_21_addr_reg_1954_pp0_iter1_reg <= biases2_21_addr_reg_1954;
        biases2_22_addr_reg_1799 <= zext_ln121_fu_1091_p1;
        biases2_22_addr_reg_1799_pp0_iter1_reg <= biases2_22_addr_reg_1799;
        biases2_23_addr_reg_1959 <= zext_ln121_fu_1091_p1;
        biases2_23_addr_reg_1959_pp0_iter1_reg <= biases2_23_addr_reg_1959;
        biases2_24_addr_reg_1804 <= zext_ln121_fu_1091_p1;
        biases2_24_addr_reg_1804_pp0_iter1_reg <= biases2_24_addr_reg_1804;
        biases2_25_addr_reg_1964 <= zext_ln121_fu_1091_p1;
        biases2_25_addr_reg_1964_pp0_iter1_reg <= biases2_25_addr_reg_1964;
        biases2_26_addr_reg_1809 <= zext_ln121_fu_1091_p1;
        biases2_26_addr_reg_1809_pp0_iter1_reg <= biases2_26_addr_reg_1809;
        biases2_27_addr_reg_1969 <= zext_ln121_fu_1091_p1;
        biases2_27_addr_reg_1969_pp0_iter1_reg <= biases2_27_addr_reg_1969;
        biases2_28_addr_reg_1814 <= zext_ln121_fu_1091_p1;
        biases2_28_addr_reg_1814_pp0_iter1_reg <= biases2_28_addr_reg_1814;
        biases2_29_addr_reg_1974 <= zext_ln121_fu_1091_p1;
        biases2_29_addr_reg_1974_pp0_iter1_reg <= biases2_29_addr_reg_1974;
        biases2_2_addr_reg_1749 <= zext_ln121_fu_1091_p1;
        biases2_2_addr_reg_1749_pp0_iter1_reg <= biases2_2_addr_reg_1749;
        biases2_30_addr_reg_1819 <= zext_ln121_fu_1091_p1;
        biases2_30_addr_reg_1819_pp0_iter1_reg <= biases2_30_addr_reg_1819;
        biases2_31_addr_reg_1979 <= zext_ln121_fu_1091_p1;
        biases2_31_addr_reg_1979_pp0_iter1_reg <= biases2_31_addr_reg_1979;
        biases2_3_addr_reg_1909 <= zext_ln121_fu_1091_p1;
        biases2_3_addr_reg_1909_pp0_iter1_reg <= biases2_3_addr_reg_1909;
        biases2_4_addr_reg_1754 <= zext_ln121_fu_1091_p1;
        biases2_4_addr_reg_1754_pp0_iter1_reg <= biases2_4_addr_reg_1754;
        biases2_5_addr_reg_1914 <= zext_ln121_fu_1091_p1;
        biases2_5_addr_reg_1914_pp0_iter1_reg <= biases2_5_addr_reg_1914;
        biases2_6_addr_reg_1759 <= zext_ln121_fu_1091_p1;
        biases2_6_addr_reg_1759_pp0_iter1_reg <= biases2_6_addr_reg_1759;
        biases2_7_addr_reg_1919 <= zext_ln121_fu_1091_p1;
        biases2_7_addr_reg_1919_pp0_iter1_reg <= biases2_7_addr_reg_1919;
        biases2_8_addr_reg_1764 <= zext_ln121_fu_1091_p1;
        biases2_8_addr_reg_1764_pp0_iter1_reg <= biases2_8_addr_reg_1764;
        biases2_9_addr_reg_1924 <= zext_ln121_fu_1091_p1;
        biases2_9_addr_reg_1924_pp0_iter1_reg <= biases2_9_addr_reg_1924;
        i_3_reg_1654 <= ap_sig_allocacmp_i_3;
        tmp_reg_1660 <= ap_sig_allocacmp_i_3[32'd6];
        tmp_reg_1660_pp0_iter1_reg <= tmp_reg_1660;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1004_state19 <= (trunc_ln158_reg_1984 == 5'd14);
        ap_predicate_pred1014_state19 <= (trunc_ln158_reg_1984 == 5'd16);
        ap_predicate_pred1024_state19 <= (trunc_ln158_reg_1984 == 5'd18);
        ap_predicate_pred1034_state19 <= (trunc_ln158_reg_1984 == 5'd20);
        ap_predicate_pred1044_state19 <= (trunc_ln158_reg_1984 == 5'd22);
        ap_predicate_pred1054_state19 <= (trunc_ln158_reg_1984 == 5'd24);
        ap_predicate_pred1064_state19 <= (trunc_ln158_reg_1984 == 5'd26);
        ap_predicate_pred1074_state19 <= (trunc_ln158_reg_1984 == 5'd28);
        ap_predicate_pred1111_state19 <= (~(trunc_ln158_reg_1984 == 5'd12) & ~(trunc_ln158_reg_1984 == 5'd10) & ~(trunc_ln158_reg_1984 == 5'd8) & ~(trunc_ln158_reg_1984 == 5'd6) & ~(trunc_ln158_reg_1984 == 5'd4) & ~(trunc_ln158_reg_1984 == 5'd2) & ~(trunc_ln158_reg_1984 == 5'd0) & ~(trunc_ln158_reg_1984 == 5'd28) & ~(trunc_ln158_reg_1984 == 5'd26) & ~(trunc_ln158_reg_1984 == 5'd24) & ~(trunc_ln158_reg_1984 == 5'd22) & ~(trunc_ln158_reg_1984 == 5'd20) & ~(trunc_ln158_reg_1984 == 5'd18) & ~(trunc_ln158_reg_1984 == 5'd16) & ~(trunc_ln158_reg_1984 == 5'd14));
        ap_predicate_pred928_state19 <= (trunc_ln158_reg_1984 == 5'd0);
        ap_predicate_pred944_state19 <= (trunc_ln158_reg_1984 == 5'd2);
        ap_predicate_pred954_state19 <= (trunc_ln158_reg_1984 == 5'd4);
        ap_predicate_pred964_state19 <= (trunc_ln158_reg_1984 == 5'd6);
        ap_predicate_pred974_state19 <= (trunc_ln158_reg_1984 == 5'd8);
        ap_predicate_pred984_state19 <= (trunc_ln158_reg_1984 == 5'd10);
        ap_predicate_pred994_state19 <= (trunc_ln158_reg_1984 == 5'd12);
        tmp_11_reg_1988 <= tmp_11_fu_1162_p35;
        tmp_12_reg_1993 <= tmp_12_fu_1298_p35;
        tmp_13_reg_2003 <= tmp_13_fu_1506_p35;
        tmp_s_reg_1998 <= tmp_s_fu_1370_p35;
        trunc_ln158_reg_1984 <= trunc_ln158_fu_1159_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        bias_norm_1_reg_2047 <= grp_fu_1947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul108_1_reg_2013 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul116_1_reg_2042 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul3_reg_2008 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul5_reg_2032 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub111_1_reg_2025 <= grp_fu_1947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub2_reg_2018 <= grp_fu_1947_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_1660 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (tmp_reg_1660_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_210;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_reg_1660_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bias_norm_4_out_ap_vld = 1'b1;
    end else begin
        bias_norm_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_0_address0_local = biases2_0_addr_reg_1744_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_0_address0_local = zext_ln121_fu_1091_p1;
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
    if (((ap_predicate_pred928_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_0_we0_local = 1'b1;
    end else begin
        biases2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_10_address0_local = biases2_10_addr_reg_1769_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_10_address0_local = zext_ln121_fu_1091_p1;
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
    if (((ap_predicate_pred984_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_10_we0_local = 1'b1;
    end else begin
        biases2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_11_address0_local = biases2_11_addr_reg_1929_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_11_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_11_ce0_local = 1'b1;
    end else begin
        biases2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred984_state19 == 1'b1))) begin
        biases2_11_we0_local = 1'b1;
    end else begin
        biases2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_12_address0_local = biases2_12_addr_reg_1774_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_12_address0_local = zext_ln121_fu_1091_p1;
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
    if (((ap_predicate_pred994_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_12_we0_local = 1'b1;
    end else begin
        biases2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_13_address0_local = biases2_13_addr_reg_1934_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_13_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_13_ce0_local = 1'b1;
    end else begin
        biases2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred994_state19 == 1'b1))) begin
        biases2_13_we0_local = 1'b1;
    end else begin
        biases2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_14_address0_local = biases2_14_addr_reg_1779_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_14_address0_local = zext_ln121_fu_1091_p1;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1004_state18 == 1'b1))) begin
        biases2_14_we0_local = 1'b1;
    end else begin
        biases2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_15_address0_local = biases2_15_addr_reg_1939_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_15_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_15_ce0_local = 1'b1;
    end else begin
        biases2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1004_state19 == 1'b1))) begin
        biases2_15_we0_local = 1'b1;
    end else begin
        biases2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_16_address0_local = biases2_16_addr_reg_1784_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_16_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_16_ce0_local = 1'b1;
    end else begin
        biases2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1014_state18 == 1'b1))) begin
        biases2_16_we0_local = 1'b1;
    end else begin
        biases2_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_17_address0_local = biases2_17_addr_reg_1944_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_17_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_17_ce0_local = 1'b1;
    end else begin
        biases2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1014_state19 == 1'b1))) begin
        biases2_17_we0_local = 1'b1;
    end else begin
        biases2_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_18_address0_local = biases2_18_addr_reg_1789_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_18_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_18_ce0_local = 1'b1;
    end else begin
        biases2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1024_state18 == 1'b1))) begin
        biases2_18_we0_local = 1'b1;
    end else begin
        biases2_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_19_address0_local = biases2_19_addr_reg_1949_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_19_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_19_ce0_local = 1'b1;
    end else begin
        biases2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1024_state19 == 1'b1))) begin
        biases2_19_we0_local = 1'b1;
    end else begin
        biases2_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_1_address0_local = biases2_1_addr_reg_1904_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_1_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_1_ce0_local = 1'b1;
    end else begin
        biases2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred928_state19 == 1'b1))) begin
        biases2_1_we0_local = 1'b1;
    end else begin
        biases2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_20_address0_local = biases2_20_addr_reg_1794_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_20_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_20_ce0_local = 1'b1;
    end else begin
        biases2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1034_state18 == 1'b1))) begin
        biases2_20_we0_local = 1'b1;
    end else begin
        biases2_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_21_address0_local = biases2_21_addr_reg_1954_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_21_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_21_ce0_local = 1'b1;
    end else begin
        biases2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1034_state19 == 1'b1))) begin
        biases2_21_we0_local = 1'b1;
    end else begin
        biases2_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_22_address0_local = biases2_22_addr_reg_1799_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_22_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_22_ce0_local = 1'b1;
    end else begin
        biases2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1044_state18 == 1'b1))) begin
        biases2_22_we0_local = 1'b1;
    end else begin
        biases2_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_23_address0_local = biases2_23_addr_reg_1959_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_23_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_23_ce0_local = 1'b1;
    end else begin
        biases2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1044_state19 == 1'b1))) begin
        biases2_23_we0_local = 1'b1;
    end else begin
        biases2_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_24_address0_local = biases2_24_addr_reg_1804_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_24_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_24_ce0_local = 1'b1;
    end else begin
        biases2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1054_state18 == 1'b1))) begin
        biases2_24_we0_local = 1'b1;
    end else begin
        biases2_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_25_address0_local = biases2_25_addr_reg_1964_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_25_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_25_ce0_local = 1'b1;
    end else begin
        biases2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1054_state19 == 1'b1))) begin
        biases2_25_we0_local = 1'b1;
    end else begin
        biases2_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_26_address0_local = biases2_26_addr_reg_1809_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_26_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_26_ce0_local = 1'b1;
    end else begin
        biases2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1064_state18 == 1'b1))) begin
        biases2_26_we0_local = 1'b1;
    end else begin
        biases2_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_27_address0_local = biases2_27_addr_reg_1969_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_27_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_27_ce0_local = 1'b1;
    end else begin
        biases2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1064_state19 == 1'b1))) begin
        biases2_27_we0_local = 1'b1;
    end else begin
        biases2_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_28_address0_local = biases2_28_addr_reg_1814_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_28_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_28_ce0_local = 1'b1;
    end else begin
        biases2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1074_state18 == 1'b1))) begin
        biases2_28_we0_local = 1'b1;
    end else begin
        biases2_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_29_address0_local = biases2_29_addr_reg_1974_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_29_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_29_ce0_local = 1'b1;
    end else begin
        biases2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1074_state19 == 1'b1))) begin
        biases2_29_we0_local = 1'b1;
    end else begin
        biases2_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_2_address0_local = biases2_2_addr_reg_1749_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_2_address0_local = zext_ln121_fu_1091_p1;
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
    if (((ap_predicate_pred944_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_2_we0_local = 1'b1;
    end else begin
        biases2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_30_address0_local = biases2_30_addr_reg_1819_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_30_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_30_ce0_local = 1'b1;
    end else begin
        biases2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1111_state18 == 1'b1))) begin
        biases2_30_we0_local = 1'b1;
    end else begin
        biases2_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_31_address0_local = biases2_31_addr_reg_1979_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_31_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_31_ce0_local = 1'b1;
    end else begin
        biases2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1111_state19 == 1'b1))) begin
        biases2_31_we0_local = 1'b1;
    end else begin
        biases2_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_3_address0_local = biases2_3_addr_reg_1909_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_3_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_3_ce0_local = 1'b1;
    end else begin
        biases2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred944_state19 == 1'b1))) begin
        biases2_3_we0_local = 1'b1;
    end else begin
        biases2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_4_address0_local = biases2_4_addr_reg_1754_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_4_address0_local = zext_ln121_fu_1091_p1;
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
    if (((ap_predicate_pred954_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_4_we0_local = 1'b1;
    end else begin
        biases2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_5_address0_local = biases2_5_addr_reg_1914_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_5_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_5_ce0_local = 1'b1;
    end else begin
        biases2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred954_state19 == 1'b1))) begin
        biases2_5_we0_local = 1'b1;
    end else begin
        biases2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_6_address0_local = biases2_6_addr_reg_1759_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_6_address0_local = zext_ln121_fu_1091_p1;
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
    if (((ap_predicate_pred964_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_6_we0_local = 1'b1;
    end else begin
        biases2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_7_address0_local = biases2_7_addr_reg_1919_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_7_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_7_ce0_local = 1'b1;
    end else begin
        biases2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred964_state19 == 1'b1))) begin
        biases2_7_we0_local = 1'b1;
    end else begin
        biases2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_8_address0_local = biases2_8_addr_reg_1764_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_8_address0_local = zext_ln121_fu_1091_p1;
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
    if (((ap_predicate_pred974_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_8_we0_local = 1'b1;
    end else begin
        biases2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_9_address0_local = biases2_9_addr_reg_1924_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_9_address0_local = zext_ln121_fu_1091_p1;
    end else begin
        biases2_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_9_ce0_local = 1'b1;
    end else begin
        biases2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred974_state19 == 1'b1))) begin
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
    if ((((tmp_reg_1660 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_1660 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1053_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1053_opcode = 2'd0;
    end else begin
        grp_fu_1053_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1053_p0 = bias_norm_1_reg_2047;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1053_p0 = bias_norm_fu_206;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1053_p0 = tmp_13_reg_2003;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1053_p0 = tmp_12_reg_1993;
    end else begin
        grp_fu_1053_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1053_p1 = mul116_1_reg_2042;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1053_p1 = mul5_reg_2032;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1053_p1 = mul108_1_reg_2013;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1053_p1 = mul3_reg_2008;
    end else begin
        grp_fu_1053_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1057_p0 = sub111_1_reg_2025;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1057_p0 = sub2_reg_2018;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1057_p0 = tmp_s_reg_1998;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1057_p0 = tmp_11_reg_1988;
    end else begin
        grp_fu_1057_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1057_p1 = sub111_1_reg_2025;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1057_p1 = sub2_reg_2018;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1057_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1057_p1 = 'bx;
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
assign add_ln158_fu_1578_p2 = (i_3_reg_1654 + 7'd2);
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
assign bias_norm_4_out = bias_norm_fu_206;
assign biases2_0_address0 = biases2_0_address0_local;
assign biases2_0_ce0 = biases2_0_ce0_local;
assign biases2_0_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_0_we0 = biases2_0_we0_local;
assign biases2_10_address0 = biases2_10_address0_local;
assign biases2_10_ce0 = biases2_10_ce0_local;
assign biases2_10_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_10_we0 = biases2_10_we0_local;
assign biases2_11_address0 = biases2_11_address0_local;
assign biases2_11_ce0 = biases2_11_ce0_local;
assign biases2_11_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_11_we0 = biases2_11_we0_local;
assign biases2_12_address0 = biases2_12_address0_local;
assign biases2_12_ce0 = biases2_12_ce0_local;
assign biases2_12_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_12_we0 = biases2_12_we0_local;
assign biases2_13_address0 = biases2_13_address0_local;
assign biases2_13_ce0 = biases2_13_ce0_local;
assign biases2_13_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_13_we0 = biases2_13_we0_local;
assign biases2_14_address0 = biases2_14_address0_local;
assign biases2_14_ce0 = biases2_14_ce0_local;
assign biases2_14_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_14_we0 = biases2_14_we0_local;
assign biases2_15_address0 = biases2_15_address0_local;
assign biases2_15_ce0 = biases2_15_ce0_local;
assign biases2_15_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_15_we0 = biases2_15_we0_local;
assign biases2_16_address0 = biases2_16_address0_local;
assign biases2_16_ce0 = biases2_16_ce0_local;
assign biases2_16_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_16_we0 = biases2_16_we0_local;
assign biases2_17_address0 = biases2_17_address0_local;
assign biases2_17_ce0 = biases2_17_ce0_local;
assign biases2_17_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_17_we0 = biases2_17_we0_local;
assign biases2_18_address0 = biases2_18_address0_local;
assign biases2_18_ce0 = biases2_18_ce0_local;
assign biases2_18_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_18_we0 = biases2_18_we0_local;
assign biases2_19_address0 = biases2_19_address0_local;
assign biases2_19_ce0 = biases2_19_ce0_local;
assign biases2_19_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_19_we0 = biases2_19_we0_local;
assign biases2_1_address0 = biases2_1_address0_local;
assign biases2_1_ce0 = biases2_1_ce0_local;
assign biases2_1_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_1_we0 = biases2_1_we0_local;
assign biases2_20_address0 = biases2_20_address0_local;
assign biases2_20_ce0 = biases2_20_ce0_local;
assign biases2_20_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_20_we0 = biases2_20_we0_local;
assign biases2_21_address0 = biases2_21_address0_local;
assign biases2_21_ce0 = biases2_21_ce0_local;
assign biases2_21_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_21_we0 = biases2_21_we0_local;
assign biases2_22_address0 = biases2_22_address0_local;
assign biases2_22_ce0 = biases2_22_ce0_local;
assign biases2_22_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_22_we0 = biases2_22_we0_local;
assign biases2_23_address0 = biases2_23_address0_local;
assign biases2_23_ce0 = biases2_23_ce0_local;
assign biases2_23_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_23_we0 = biases2_23_we0_local;
assign biases2_24_address0 = biases2_24_address0_local;
assign biases2_24_ce0 = biases2_24_ce0_local;
assign biases2_24_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_24_we0 = biases2_24_we0_local;
assign biases2_25_address0 = biases2_25_address0_local;
assign biases2_25_ce0 = biases2_25_ce0_local;
assign biases2_25_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_25_we0 = biases2_25_we0_local;
assign biases2_26_address0 = biases2_26_address0_local;
assign biases2_26_ce0 = biases2_26_ce0_local;
assign biases2_26_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_26_we0 = biases2_26_we0_local;
assign biases2_27_address0 = biases2_27_address0_local;
assign biases2_27_ce0 = biases2_27_ce0_local;
assign biases2_27_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_27_we0 = biases2_27_we0_local;
assign biases2_28_address0 = biases2_28_address0_local;
assign biases2_28_ce0 = biases2_28_ce0_local;
assign biases2_28_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_28_we0 = biases2_28_we0_local;
assign biases2_29_address0 = biases2_29_address0_local;
assign biases2_29_ce0 = biases2_29_ce0_local;
assign biases2_29_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_29_we0 = biases2_29_we0_local;
assign biases2_2_address0 = biases2_2_address0_local;
assign biases2_2_ce0 = biases2_2_ce0_local;
assign biases2_2_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_2_we0 = biases2_2_we0_local;
assign biases2_30_address0 = biases2_30_address0_local;
assign biases2_30_ce0 = biases2_30_ce0_local;
assign biases2_30_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_30_we0 = biases2_30_we0_local;
assign biases2_31_address0 = biases2_31_address0_local;
assign biases2_31_ce0 = biases2_31_ce0_local;
assign biases2_31_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_31_we0 = biases2_31_we0_local;
assign biases2_3_address0 = biases2_3_address0_local;
assign biases2_3_ce0 = biases2_3_ce0_local;
assign biases2_3_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_3_we0 = biases2_3_we0_local;
assign biases2_4_address0 = biases2_4_address0_local;
assign biases2_4_ce0 = biases2_4_ce0_local;
assign biases2_4_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_4_we0 = biases2_4_we0_local;
assign biases2_5_address0 = biases2_5_address0_local;
assign biases2_5_ce0 = biases2_5_ce0_local;
assign biases2_5_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_5_we0 = biases2_5_we0_local;
assign biases2_6_address0 = biases2_6_address0_local;
assign biases2_6_ce0 = biases2_6_ce0_local;
assign biases2_6_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_6_we0 = biases2_6_we0_local;
assign biases2_7_address0 = biases2_7_address0_local;
assign biases2_7_ce0 = biases2_7_ce0_local;
assign biases2_7_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_7_we0 = biases2_7_we0_local;
assign biases2_8_address0 = biases2_8_address0_local;
assign biases2_8_ce0 = biases2_8_ce0_local;
assign biases2_8_d0 = bitcast_ln159_32_fu_1588_p1;
assign biases2_8_we0 = biases2_8_we0_local;
assign biases2_9_address0 = biases2_9_address0_local;
assign biases2_9_ce0 = biases2_9_ce0_local;
assign biases2_9_d0 = bitcast_ln159_33_fu_1607_p1;
assign biases2_9_we0 = biases2_9_we0_local;
assign bitcast_ln159_32_fu_1588_p1 = sub2_reg_2018;
assign bitcast_ln159_33_fu_1607_p1 = sub111_1_reg_2025;
assign d_biases2_0_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_0_ce0 = d_biases2_0_ce0_local;
assign d_biases2_10_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_10_ce0 = d_biases2_10_ce0_local;
assign d_biases2_11_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_11_ce0 = d_biases2_11_ce0_local;
assign d_biases2_12_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_12_ce0 = d_biases2_12_ce0_local;
assign d_biases2_13_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_13_ce0 = d_biases2_13_ce0_local;
assign d_biases2_14_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_14_ce0 = d_biases2_14_ce0_local;
assign d_biases2_15_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_15_ce0 = d_biases2_15_ce0_local;
assign d_biases2_16_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_16_ce0 = d_biases2_16_ce0_local;
assign d_biases2_17_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_17_ce0 = d_biases2_17_ce0_local;
assign d_biases2_18_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_18_ce0 = d_biases2_18_ce0_local;
assign d_biases2_19_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_19_ce0 = d_biases2_19_ce0_local;
assign d_biases2_1_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_1_ce0 = d_biases2_1_ce0_local;
assign d_biases2_20_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_20_ce0 = d_biases2_20_ce0_local;
assign d_biases2_21_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_21_ce0 = d_biases2_21_ce0_local;
assign d_biases2_22_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_22_ce0 = d_biases2_22_ce0_local;
assign d_biases2_23_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_23_ce0 = d_biases2_23_ce0_local;
assign d_biases2_24_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_24_ce0 = d_biases2_24_ce0_local;
assign d_biases2_25_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_25_ce0 = d_biases2_25_ce0_local;
assign d_biases2_26_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_26_ce0 = d_biases2_26_ce0_local;
assign d_biases2_27_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_27_ce0 = d_biases2_27_ce0_local;
assign d_biases2_28_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_28_ce0 = d_biases2_28_ce0_local;
assign d_biases2_29_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_29_ce0 = d_biases2_29_ce0_local;
assign d_biases2_2_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_2_ce0 = d_biases2_2_ce0_local;
assign d_biases2_30_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_30_ce0 = d_biases2_30_ce0_local;
assign d_biases2_31_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_31_ce0 = d_biases2_31_ce0_local;
assign d_biases2_3_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_3_ce0 = d_biases2_3_ce0_local;
assign d_biases2_4_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_4_ce0 = d_biases2_4_ce0_local;
assign d_biases2_5_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_5_ce0 = d_biases2_5_ce0_local;
assign d_biases2_6_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_6_ce0 = d_biases2_6_ce0_local;
assign d_biases2_7_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_7_ce0 = d_biases2_7_ce0_local;
assign d_biases2_8_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_8_ce0 = d_biases2_8_ce0_local;
assign d_biases2_9_address0 = zext_ln121_fu_1091_p1;
assign d_biases2_9_ce0 = d_biases2_9_ce0_local;
assign grp_fu_1947_p_ce = 1'b1;
assign grp_fu_1947_p_din0 = grp_fu_1053_p0;
assign grp_fu_1947_p_din1 = grp_fu_1053_p1;
assign grp_fu_1947_p_opcode = grp_fu_1053_opcode;
assign grp_fu_1951_p_ce = 1'b1;
assign grp_fu_1951_p_din0 = grp_fu_1057_p0;
assign grp_fu_1951_p_din1 = grp_fu_1057_p1;
assign tmp_11_fu_1162_p33 = 'bx;
assign tmp_12_fu_1298_p10 = biases2_8_q0;
assign tmp_12_fu_1298_p12 = biases2_10_q0;
assign tmp_12_fu_1298_p14 = biases2_12_q0;
assign tmp_12_fu_1298_p16 = biases2_14_q0;
assign tmp_12_fu_1298_p18 = biases2_16_q0;
assign tmp_12_fu_1298_p2 = biases2_0_q0;
assign tmp_12_fu_1298_p20 = biases2_18_q0;
assign tmp_12_fu_1298_p22 = biases2_20_q0;
assign tmp_12_fu_1298_p24 = biases2_22_q0;
assign tmp_12_fu_1298_p26 = biases2_24_q0;
assign tmp_12_fu_1298_p28 = biases2_26_q0;
assign tmp_12_fu_1298_p30 = biases2_28_q0;
assign tmp_12_fu_1298_p32 = biases2_30_q0;
assign tmp_12_fu_1298_p33 = 'bx;
assign tmp_12_fu_1298_p4 = biases2_2_q0;
assign tmp_12_fu_1298_p6 = biases2_4_q0;
assign tmp_12_fu_1298_p8 = biases2_6_q0;
assign tmp_13_fu_1506_p10 = biases2_9_q0;
assign tmp_13_fu_1506_p12 = biases2_11_q0;
assign tmp_13_fu_1506_p14 = biases2_13_q0;
assign tmp_13_fu_1506_p16 = biases2_15_q0;
assign tmp_13_fu_1506_p18 = biases2_17_q0;
assign tmp_13_fu_1506_p2 = biases2_1_q0;
assign tmp_13_fu_1506_p20 = biases2_19_q0;
assign tmp_13_fu_1506_p22 = biases2_21_q0;
assign tmp_13_fu_1506_p24 = biases2_23_q0;
assign tmp_13_fu_1506_p26 = biases2_25_q0;
assign tmp_13_fu_1506_p28 = biases2_27_q0;
assign tmp_13_fu_1506_p30 = biases2_29_q0;
assign tmp_13_fu_1506_p32 = biases2_31_q0;
assign tmp_13_fu_1506_p33 = 'bx;
assign tmp_13_fu_1506_p4 = biases2_3_q0;
assign tmp_13_fu_1506_p6 = biases2_5_q0;
assign tmp_13_fu_1506_p8 = biases2_7_q0;
assign tmp_2_fu_1083_p3 = ap_sig_allocacmp_i_3[32'd5];
assign tmp_s_fu_1370_p33 = 'bx;
assign trunc_ln158_fu_1159_p1 = i_3_reg_1654[4:0];
assign zext_ln121_fu_1091_p1 = tmp_2_fu_1083_p3;
endmodule 