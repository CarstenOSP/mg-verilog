
module backprop_update_weights_37_38_1_Pipeline_up_weight_loop6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_31_address0,biases2_31_ce0,biases2_31_we0,biases2_31_d0,biases2_31_q0,biases2_30_address0,biases2_30_ce0,biases2_30_we0,biases2_30_d0,biases2_30_q0,biases2_29_address0,biases2_29_ce0,biases2_29_we0,biases2_29_d0,biases2_29_q0,biases2_28_address0,biases2_28_ce0,biases2_28_we0,biases2_28_d0,biases2_28_q0,biases2_27_address0,biases2_27_ce0,biases2_27_we0,biases2_27_d0,biases2_27_q0,biases2_26_address0,biases2_26_ce0,biases2_26_we0,biases2_26_d0,biases2_26_q0,biases2_25_address0,biases2_25_ce0,biases2_25_we0,biases2_25_d0,biases2_25_q0,biases2_24_address0,biases2_24_ce0,biases2_24_we0,biases2_24_d0,biases2_24_q0,biases2_23_address0,biases2_23_ce0,biases2_23_we0,biases2_23_d0,biases2_23_q0,biases2_22_address0,biases2_22_ce0,biases2_22_we0,biases2_22_d0,biases2_22_q0,biases2_21_address0,biases2_21_ce0,biases2_21_we0,biases2_21_d0,biases2_21_q0,biases2_20_address0,biases2_20_ce0,biases2_20_we0,biases2_20_d0,biases2_20_q0,biases2_19_address0,biases2_19_ce0,biases2_19_we0,biases2_19_d0,biases2_19_q0,biases2_18_address0,biases2_18_ce0,biases2_18_we0,biases2_18_d0,biases2_18_q0,biases2_17_address0,biases2_17_ce0,biases2_17_we0,biases2_17_d0,biases2_17_q0,biases2_16_address0,biases2_16_ce0,biases2_16_we0,biases2_16_d0,biases2_16_q0,biases2_15_address0,biases2_15_ce0,biases2_15_we0,biases2_15_d0,biases2_15_q0,biases2_14_address0,biases2_14_ce0,biases2_14_we0,biases2_14_d0,biases2_14_q0,biases2_13_address0,biases2_13_ce0,biases2_13_we0,biases2_13_d0,biases2_13_q0,biases2_12_address0,biases2_12_ce0,biases2_12_we0,biases2_12_d0,biases2_12_q0,biases2_11_address0,biases2_11_ce0,biases2_11_we0,biases2_11_d0,biases2_11_q0,biases2_10_address0,biases2_10_ce0,biases2_10_we0,biases2_10_d0,biases2_10_q0,biases2_9_address0,biases2_9_ce0,biases2_9_we0,biases2_9_d0,biases2_9_q0,biases2_8_address0,biases2_8_ce0,biases2_8_we0,biases2_8_d0,biases2_8_q0,biases2_7_address0,biases2_7_ce0,biases2_7_we0,biases2_7_d0,biases2_7_q0,biases2_6_address0,biases2_6_ce0,biases2_6_we0,biases2_6_d0,biases2_6_q0,biases2_5_address0,biases2_5_ce0,biases2_5_we0,biases2_5_d0,biases2_5_q0,biases2_4_address0,biases2_4_ce0,biases2_4_we0,biases2_4_d0,biases2_4_q0,biases2_3_address0,biases2_3_ce0,biases2_3_we0,biases2_3_d0,biases2_3_q0,biases2_2_address0,biases2_2_ce0,biases2_2_we0,biases2_2_d0,biases2_2_q0,biases2_1_address0,biases2_1_ce0,biases2_1_we0,biases2_1_d0,biases2_1_q0,biases2_0_address0,biases2_0_ce0,biases2_0_we0,biases2_0_d0,biases2_0_q0,d_biases2_0_address0,d_biases2_0_ce0,d_biases2_0_q0,d_biases2_1_address0,d_biases2_1_ce0,d_biases2_1_q0,d_biases2_2_address0,d_biases2_2_ce0,d_biases2_2_q0,d_biases2_3_address0,d_biases2_3_ce0,d_biases2_3_q0,d_biases2_4_address0,d_biases2_4_ce0,d_biases2_4_q0,d_biases2_5_address0,d_biases2_5_ce0,d_biases2_5_q0,d_biases2_6_address0,d_biases2_6_ce0,d_biases2_6_q0,d_biases2_7_address0,d_biases2_7_ce0,d_biases2_7_q0,d_biases2_8_address0,d_biases2_8_ce0,d_biases2_8_q0,d_biases2_9_address0,d_biases2_9_ce0,d_biases2_9_q0,d_biases2_10_address0,d_biases2_10_ce0,d_biases2_10_q0,d_biases2_11_address0,d_biases2_11_ce0,d_biases2_11_q0,d_biases2_12_address0,d_biases2_12_ce0,d_biases2_12_q0,d_biases2_13_address0,d_biases2_13_ce0,d_biases2_13_q0,d_biases2_14_address0,d_biases2_14_ce0,d_biases2_14_q0,d_biases2_15_address0,d_biases2_15_ce0,d_biases2_15_q0,d_biases2_16_address0,d_biases2_16_ce0,d_biases2_16_q0,d_biases2_17_address0,d_biases2_17_ce0,d_biases2_17_q0,d_biases2_18_address0,d_biases2_18_ce0,d_biases2_18_q0,d_biases2_19_address0,d_biases2_19_ce0,d_biases2_19_q0,d_biases2_20_address0,d_biases2_20_ce0,d_biases2_20_q0,d_biases2_21_address0,d_biases2_21_ce0,d_biases2_21_q0,d_biases2_22_address0,d_biases2_22_ce0,d_biases2_22_q0,d_biases2_23_address0,d_biases2_23_ce0,d_biases2_23_q0,d_biases2_24_address0,d_biases2_24_ce0,d_biases2_24_q0,d_biases2_25_address0,d_biases2_25_ce0,d_biases2_25_q0,d_biases2_26_address0,d_biases2_26_ce0,d_biases2_26_q0,d_biases2_27_address0,d_biases2_27_ce0,d_biases2_27_q0,d_biases2_28_address0,d_biases2_28_ce0,d_biases2_28_q0,d_biases2_29_address0,d_biases2_29_ce0,d_biases2_29_q0,d_biases2_30_address0,d_biases2_30_ce0,d_biases2_30_q0,d_biases2_31_address0,d_biases2_31_ce0,d_biases2_31_q0,bias_norm_4_out,bias_norm_4_out_ap_vld,grp_fu_1947_p_din0,grp_fu_1947_p_din1,grp_fu_1947_p_opcode,grp_fu_1947_p_dout0,grp_fu_1947_p_ce,grp_fu_1951_p_din0,grp_fu_1951_p_din1,grp_fu_1951_p_dout0,grp_fu_1951_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
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
output  [0:0] d_biases2_1_address0;
output   d_biases2_1_ce0;
input  [63:0] d_biases2_1_q0;
output  [0:0] d_biases2_2_address0;
output   d_biases2_2_ce0;
input  [63:0] d_biases2_2_q0;
output  [0:0] d_biases2_3_address0;
output   d_biases2_3_ce0;
input  [63:0] d_biases2_3_q0;
output  [0:0] d_biases2_4_address0;
output   d_biases2_4_ce0;
input  [63:0] d_biases2_4_q0;
output  [0:0] d_biases2_5_address0;
output   d_biases2_5_ce0;
input  [63:0] d_biases2_5_q0;
output  [0:0] d_biases2_6_address0;
output   d_biases2_6_ce0;
input  [63:0] d_biases2_6_q0;
output  [0:0] d_biases2_7_address0;
output   d_biases2_7_ce0;
input  [63:0] d_biases2_7_q0;
output  [0:0] d_biases2_8_address0;
output   d_biases2_8_ce0;
input  [63:0] d_biases2_8_q0;
output  [0:0] d_biases2_9_address0;
output   d_biases2_9_ce0;
input  [63:0] d_biases2_9_q0;
output  [0:0] d_biases2_10_address0;
output   d_biases2_10_ce0;
input  [63:0] d_biases2_10_q0;
output  [0:0] d_biases2_11_address0;
output   d_biases2_11_ce0;
input  [63:0] d_biases2_11_q0;
output  [0:0] d_biases2_12_address0;
output   d_biases2_12_ce0;
input  [63:0] d_biases2_12_q0;
output  [0:0] d_biases2_13_address0;
output   d_biases2_13_ce0;
input  [63:0] d_biases2_13_q0;
output  [0:0] d_biases2_14_address0;
output   d_biases2_14_ce0;
input  [63:0] d_biases2_14_q0;
output  [0:0] d_biases2_15_address0;
output   d_biases2_15_ce0;
input  [63:0] d_biases2_15_q0;
output  [0:0] d_biases2_16_address0;
output   d_biases2_16_ce0;
input  [63:0] d_biases2_16_q0;
output  [0:0] d_biases2_17_address0;
output   d_biases2_17_ce0;
input  [63:0] d_biases2_17_q0;
output  [0:0] d_biases2_18_address0;
output   d_biases2_18_ce0;
input  [63:0] d_biases2_18_q0;
output  [0:0] d_biases2_19_address0;
output   d_biases2_19_ce0;
input  [63:0] d_biases2_19_q0;
output  [0:0] d_biases2_20_address0;
output   d_biases2_20_ce0;
input  [63:0] d_biases2_20_q0;
output  [0:0] d_biases2_21_address0;
output   d_biases2_21_ce0;
input  [63:0] d_biases2_21_q0;
output  [0:0] d_biases2_22_address0;
output   d_biases2_22_ce0;
input  [63:0] d_biases2_22_q0;
output  [0:0] d_biases2_23_address0;
output   d_biases2_23_ce0;
input  [63:0] d_biases2_23_q0;
output  [0:0] d_biases2_24_address0;
output   d_biases2_24_ce0;
input  [63:0] d_biases2_24_q0;
output  [0:0] d_biases2_25_address0;
output   d_biases2_25_ce0;
input  [63:0] d_biases2_25_q0;
output  [0:0] d_biases2_26_address0;
output   d_biases2_26_ce0;
input  [63:0] d_biases2_26_q0;
output  [0:0] d_biases2_27_address0;
output   d_biases2_27_ce0;
input  [63:0] d_biases2_27_q0;
output  [0:0] d_biases2_28_address0;
output   d_biases2_28_ce0;
input  [63:0] d_biases2_28_q0;
output  [0:0] d_biases2_29_address0;
output   d_biases2_29_ce0;
input  [63:0] d_biases2_29_q0;
output  [0:0] d_biases2_30_address0;
output   d_biases2_30_ce0;
input  [63:0] d_biases2_30_q0;
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
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln158_reg_1632;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln158_fu_1075_p2;
reg   [0:0] icmp_ln158_reg_1632_pp0_iter1_reg;
reg   [0:0] icmp_ln158_reg_1632_pp0_iter2_reg;
reg   [0:0] icmp_ln158_reg_1632_pp0_iter3_reg;
wire   [6:0] add_ln158_fu_1081_p2;
reg   [6:0] add_ln158_reg_1636;
wire   [4:0] trunc_ln158_fu_1087_p1;
reg   [4:0] trunc_ln158_reg_1641;
reg   [4:0] trunc_ln158_reg_1641_pp0_iter1_reg;
reg   [4:0] trunc_ln158_reg_1641_pp0_iter2_reg;
reg   [0:0] biases2_0_addr_reg_1807;
reg   [0:0] biases2_0_addr_reg_1807_pp0_iter1_reg;
reg   [0:0] biases2_0_addr_reg_1807_pp0_iter2_reg;
reg   [0:0] biases2_1_addr_reg_1812;
reg   [0:0] biases2_1_addr_reg_1812_pp0_iter1_reg;
reg   [0:0] biases2_1_addr_reg_1812_pp0_iter2_reg;
reg   [0:0] biases2_2_addr_reg_1817;
reg   [0:0] biases2_2_addr_reg_1817_pp0_iter1_reg;
reg   [0:0] biases2_2_addr_reg_1817_pp0_iter2_reg;
reg   [0:0] biases2_3_addr_reg_1822;
reg   [0:0] biases2_3_addr_reg_1822_pp0_iter1_reg;
reg   [0:0] biases2_3_addr_reg_1822_pp0_iter2_reg;
reg   [0:0] biases2_4_addr_reg_1827;
reg   [0:0] biases2_4_addr_reg_1827_pp0_iter1_reg;
reg   [0:0] biases2_4_addr_reg_1827_pp0_iter2_reg;
reg   [0:0] biases2_5_addr_reg_1832;
reg   [0:0] biases2_5_addr_reg_1832_pp0_iter1_reg;
reg   [0:0] biases2_5_addr_reg_1832_pp0_iter2_reg;
reg   [0:0] biases2_6_addr_reg_1837;
reg   [0:0] biases2_6_addr_reg_1837_pp0_iter1_reg;
reg   [0:0] biases2_6_addr_reg_1837_pp0_iter2_reg;
reg   [0:0] biases2_7_addr_reg_1842;
reg   [0:0] biases2_7_addr_reg_1842_pp0_iter1_reg;
reg   [0:0] biases2_7_addr_reg_1842_pp0_iter2_reg;
reg   [0:0] biases2_8_addr_reg_1847;
reg   [0:0] biases2_8_addr_reg_1847_pp0_iter1_reg;
reg   [0:0] biases2_8_addr_reg_1847_pp0_iter2_reg;
reg   [0:0] biases2_9_addr_reg_1852;
reg   [0:0] biases2_9_addr_reg_1852_pp0_iter1_reg;
reg   [0:0] biases2_9_addr_reg_1852_pp0_iter2_reg;
reg   [0:0] biases2_10_addr_reg_1857;
reg   [0:0] biases2_10_addr_reg_1857_pp0_iter1_reg;
reg   [0:0] biases2_10_addr_reg_1857_pp0_iter2_reg;
reg   [0:0] biases2_11_addr_reg_1862;
reg   [0:0] biases2_11_addr_reg_1862_pp0_iter1_reg;
reg   [0:0] biases2_11_addr_reg_1862_pp0_iter2_reg;
reg   [0:0] biases2_12_addr_reg_1867;
reg   [0:0] biases2_12_addr_reg_1867_pp0_iter1_reg;
reg   [0:0] biases2_12_addr_reg_1867_pp0_iter2_reg;
reg   [0:0] biases2_13_addr_reg_1872;
reg   [0:0] biases2_13_addr_reg_1872_pp0_iter1_reg;
reg   [0:0] biases2_13_addr_reg_1872_pp0_iter2_reg;
reg   [0:0] biases2_14_addr_reg_1877;
reg   [0:0] biases2_14_addr_reg_1877_pp0_iter1_reg;
reg   [0:0] biases2_14_addr_reg_1877_pp0_iter2_reg;
reg   [0:0] biases2_15_addr_reg_1882;
reg   [0:0] biases2_15_addr_reg_1882_pp0_iter1_reg;
reg   [0:0] biases2_15_addr_reg_1882_pp0_iter2_reg;
reg   [0:0] biases2_16_addr_reg_1887;
reg   [0:0] biases2_16_addr_reg_1887_pp0_iter1_reg;
reg   [0:0] biases2_16_addr_reg_1887_pp0_iter2_reg;
reg   [0:0] biases2_17_addr_reg_1892;
reg   [0:0] biases2_17_addr_reg_1892_pp0_iter1_reg;
reg   [0:0] biases2_17_addr_reg_1892_pp0_iter2_reg;
reg   [0:0] biases2_18_addr_reg_1897;
reg   [0:0] biases2_18_addr_reg_1897_pp0_iter1_reg;
reg   [0:0] biases2_18_addr_reg_1897_pp0_iter2_reg;
reg   [0:0] biases2_19_addr_reg_1902;
reg   [0:0] biases2_19_addr_reg_1902_pp0_iter1_reg;
reg   [0:0] biases2_19_addr_reg_1902_pp0_iter2_reg;
reg   [0:0] biases2_20_addr_reg_1907;
reg   [0:0] biases2_20_addr_reg_1907_pp0_iter1_reg;
reg   [0:0] biases2_20_addr_reg_1907_pp0_iter2_reg;
reg   [0:0] biases2_21_addr_reg_1912;
reg   [0:0] biases2_21_addr_reg_1912_pp0_iter1_reg;
reg   [0:0] biases2_21_addr_reg_1912_pp0_iter2_reg;
reg   [0:0] biases2_22_addr_reg_1917;
reg   [0:0] biases2_22_addr_reg_1917_pp0_iter1_reg;
reg   [0:0] biases2_22_addr_reg_1917_pp0_iter2_reg;
reg   [0:0] biases2_23_addr_reg_1922;
reg   [0:0] biases2_23_addr_reg_1922_pp0_iter1_reg;
reg   [0:0] biases2_23_addr_reg_1922_pp0_iter2_reg;
reg   [0:0] biases2_24_addr_reg_1927;
reg   [0:0] biases2_24_addr_reg_1927_pp0_iter1_reg;
reg   [0:0] biases2_24_addr_reg_1927_pp0_iter2_reg;
reg   [0:0] biases2_25_addr_reg_1932;
reg   [0:0] biases2_25_addr_reg_1932_pp0_iter1_reg;
reg   [0:0] biases2_25_addr_reg_1932_pp0_iter2_reg;
reg   [0:0] biases2_26_addr_reg_1937;
reg   [0:0] biases2_26_addr_reg_1937_pp0_iter1_reg;
reg   [0:0] biases2_26_addr_reg_1937_pp0_iter2_reg;
reg   [0:0] biases2_27_addr_reg_1942;
reg   [0:0] biases2_27_addr_reg_1942_pp0_iter1_reg;
reg   [0:0] biases2_27_addr_reg_1942_pp0_iter2_reg;
reg   [0:0] biases2_28_addr_reg_1947;
reg   [0:0] biases2_28_addr_reg_1947_pp0_iter1_reg;
reg   [0:0] biases2_28_addr_reg_1947_pp0_iter2_reg;
reg   [0:0] biases2_29_addr_reg_1952;
reg   [0:0] biases2_29_addr_reg_1952_pp0_iter1_reg;
reg   [0:0] biases2_29_addr_reg_1952_pp0_iter2_reg;
reg   [0:0] biases2_30_addr_reg_1957;
reg   [0:0] biases2_30_addr_reg_1957_pp0_iter1_reg;
reg   [0:0] biases2_30_addr_reg_1957_pp0_iter2_reg;
reg   [0:0] biases2_31_addr_reg_1962;
reg   [0:0] biases2_31_addr_reg_1962_pp0_iter1_reg;
reg   [0:0] biases2_31_addr_reg_1962_pp0_iter2_reg;
wire   [63:0] tmp_7_fu_1167_p67;
reg   [63:0] tmp_7_reg_1967;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] mul3_reg_1972;
wire   [63:0] tmp_8_fu_1434_p67;
reg   [63:0] tmp_8_reg_1977;
reg   [63:0] sub2_reg_1982;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] mul6_reg_1989;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln121_fu_1099_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] bias_norm_fu_238;
reg   [63:0] ap_sig_allocacmp_bias_norm_load_1;
wire    ap_block_pp0_stage3;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage3;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] i_fu_242;
reg   [6:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage3_01001;
reg    d_biases2_0_ce0_local;
reg    d_biases2_1_ce0_local;
reg    d_biases2_2_ce0_local;
reg    d_biases2_3_ce0_local;
reg    d_biases2_4_ce0_local;
reg    d_biases2_5_ce0_local;
reg    d_biases2_6_ce0_local;
reg    d_biases2_7_ce0_local;
reg    d_biases2_8_ce0_local;
reg    d_biases2_9_ce0_local;
reg    d_biases2_10_ce0_local;
reg    d_biases2_11_ce0_local;
reg    d_biases2_12_ce0_local;
reg    d_biases2_13_ce0_local;
reg    d_biases2_14_ce0_local;
reg    d_biases2_15_ce0_local;
reg    d_biases2_16_ce0_local;
reg    d_biases2_17_ce0_local;
reg    d_biases2_18_ce0_local;
reg    d_biases2_19_ce0_local;
reg    d_biases2_20_ce0_local;
reg    d_biases2_21_ce0_local;
reg    d_biases2_22_ce0_local;
reg    d_biases2_23_ce0_local;
reg    d_biases2_24_ce0_local;
reg    d_biases2_25_ce0_local;
reg    d_biases2_26_ce0_local;
reg    d_biases2_27_ce0_local;
reg    d_biases2_28_ce0_local;
reg    d_biases2_29_ce0_local;
reg    d_biases2_30_ce0_local;
reg    d_biases2_31_ce0_local;
reg    biases2_0_ce0_local;
reg   [0:0] biases2_0_address0_local;
reg    biases2_0_we0_local;
reg    ap_predicate_pred990_state18;
wire   [63:0] bitcast_ln159_32_fu_1569_p1;
reg    biases2_1_ce0_local;
reg   [0:0] biases2_1_address0_local;
reg    biases2_1_we0_local;
reg    ap_predicate_pred1003_state18;
reg    biases2_2_ce0_local;
reg   [0:0] biases2_2_address0_local;
reg    biases2_2_we0_local;
reg    ap_predicate_pred1013_state18;
reg    biases2_3_ce0_local;
reg   [0:0] biases2_3_address0_local;
reg    biases2_3_we0_local;
reg    ap_predicate_pred1023_state18;
reg    biases2_4_ce0_local;
reg   [0:0] biases2_4_address0_local;
reg    biases2_4_we0_local;
reg    ap_predicate_pred1033_state18;
reg    biases2_5_ce0_local;
reg   [0:0] biases2_5_address0_local;
reg    biases2_5_we0_local;
reg    ap_predicate_pred1043_state18;
reg    biases2_6_ce0_local;
reg   [0:0] biases2_6_address0_local;
reg    biases2_6_we0_local;
reg    ap_predicate_pred1053_state18;
reg    biases2_7_ce0_local;
reg   [0:0] biases2_7_address0_local;
reg    biases2_7_we0_local;
reg    ap_predicate_pred1063_state18;
reg    biases2_8_ce0_local;
reg   [0:0] biases2_8_address0_local;
reg    biases2_8_we0_local;
reg    ap_predicate_pred1073_state18;
reg    biases2_9_ce0_local;
reg   [0:0] biases2_9_address0_local;
reg    biases2_9_we0_local;
reg    ap_predicate_pred1083_state18;
reg    biases2_10_ce0_local;
reg   [0:0] biases2_10_address0_local;
reg    biases2_10_we0_local;
reg    ap_predicate_pred1093_state18;
reg    biases2_11_ce0_local;
reg   [0:0] biases2_11_address0_local;
reg    biases2_11_we0_local;
reg    ap_predicate_pred1103_state18;
reg    biases2_12_ce0_local;
reg   [0:0] biases2_12_address0_local;
reg    biases2_12_we0_local;
reg    ap_predicate_pred1113_state18;
reg    biases2_13_ce0_local;
reg   [0:0] biases2_13_address0_local;
reg    biases2_13_we0_local;
reg    ap_predicate_pred1123_state18;
reg    biases2_14_ce0_local;
reg   [0:0] biases2_14_address0_local;
reg    biases2_14_we0_local;
reg    ap_predicate_pred1133_state18;
reg    biases2_15_ce0_local;
reg   [0:0] biases2_15_address0_local;
reg    biases2_15_we0_local;
reg    ap_predicate_pred1143_state18;
reg    biases2_16_ce0_local;
reg   [0:0] biases2_16_address0_local;
reg    biases2_16_we0_local;
reg    ap_predicate_pred1153_state18;
reg    biases2_17_ce0_local;
reg   [0:0] biases2_17_address0_local;
reg    biases2_17_we0_local;
reg    ap_predicate_pred1163_state18;
reg    biases2_18_ce0_local;
reg   [0:0] biases2_18_address0_local;
reg    biases2_18_we0_local;
reg    ap_predicate_pred1173_state18;
reg    biases2_19_ce0_local;
reg   [0:0] biases2_19_address0_local;
reg    biases2_19_we0_local;
reg    ap_predicate_pred1183_state18;
reg    biases2_20_ce0_local;
reg   [0:0] biases2_20_address0_local;
reg    biases2_20_we0_local;
reg    ap_predicate_pred1193_state18;
reg    biases2_21_ce0_local;
reg   [0:0] biases2_21_address0_local;
reg    biases2_21_we0_local;
reg    ap_predicate_pred1203_state18;
reg    biases2_22_ce0_local;
reg   [0:0] biases2_22_address0_local;
reg    biases2_22_we0_local;
reg    ap_predicate_pred1213_state18;
reg    biases2_23_ce0_local;
reg   [0:0] biases2_23_address0_local;
reg    biases2_23_we0_local;
reg    ap_predicate_pred1223_state18;
reg    biases2_24_ce0_local;
reg   [0:0] biases2_24_address0_local;
reg    biases2_24_we0_local;
reg    ap_predicate_pred1233_state18;
reg    biases2_25_ce0_local;
reg   [0:0] biases2_25_address0_local;
reg    biases2_25_we0_local;
reg    ap_predicate_pred1243_state18;
reg    biases2_26_ce0_local;
reg   [0:0] biases2_26_address0_local;
reg    biases2_26_we0_local;
reg    ap_predicate_pred1253_state18;
reg    biases2_27_ce0_local;
reg   [0:0] biases2_27_address0_local;
reg    biases2_27_we0_local;
reg    ap_predicate_pred1263_state18;
reg    biases2_28_ce0_local;
reg   [0:0] biases2_28_address0_local;
reg    biases2_28_we0_local;
reg    ap_predicate_pred1273_state18;
reg    biases2_29_ce0_local;
reg   [0:0] biases2_29_address0_local;
reg    biases2_29_we0_local;
reg    ap_predicate_pred1283_state18;
reg    biases2_30_ce0_local;
reg   [0:0] biases2_30_address0_local;
reg    biases2_30_we0_local;
reg    ap_predicate_pred1293_state18;
reg    biases2_31_ce0_local;
reg   [0:0] biases2_31_address0_local;
reg    biases2_31_we0_local;
reg    ap_predicate_pred1303_state18;
reg   [63:0] grp_fu_1053_p0;
reg   [63:0] grp_fu_1053_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_1057_p0;
reg   [63:0] grp_fu_1057_p1;
wire   [0:0] tmp_fu_1091_p3;
wire   [63:0] tmp_7_fu_1167_p65;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_8_fu_1434_p2;
wire   [63:0] tmp_8_fu_1434_p4;
wire   [63:0] tmp_8_fu_1434_p6;
wire   [63:0] tmp_8_fu_1434_p8;
wire   [63:0] tmp_8_fu_1434_p10;
wire   [63:0] tmp_8_fu_1434_p12;
wire   [63:0] tmp_8_fu_1434_p14;
wire   [63:0] tmp_8_fu_1434_p16;
wire   [63:0] tmp_8_fu_1434_p18;
wire   [63:0] tmp_8_fu_1434_p20;
wire   [63:0] tmp_8_fu_1434_p22;
wire   [63:0] tmp_8_fu_1434_p24;
wire   [63:0] tmp_8_fu_1434_p26;
wire   [63:0] tmp_8_fu_1434_p28;
wire   [63:0] tmp_8_fu_1434_p30;
wire   [63:0] tmp_8_fu_1434_p32;
wire   [63:0] tmp_8_fu_1434_p34;
wire   [63:0] tmp_8_fu_1434_p36;
wire   [63:0] tmp_8_fu_1434_p38;
wire   [63:0] tmp_8_fu_1434_p40;
wire   [63:0] tmp_8_fu_1434_p42;
wire   [63:0] tmp_8_fu_1434_p44;
wire   [63:0] tmp_8_fu_1434_p46;
wire   [63:0] tmp_8_fu_1434_p48;
wire   [63:0] tmp_8_fu_1434_p50;
wire   [63:0] tmp_8_fu_1434_p52;
wire   [63:0] tmp_8_fu_1434_p54;
wire   [63:0] tmp_8_fu_1434_p56;
wire   [63:0] tmp_8_fu_1434_p58;
wire   [63:0] tmp_8_fu_1434_p60;
wire   [63:0] tmp_8_fu_1434_p62;
wire   [63:0] tmp_8_fu_1434_p64;
wire   [63:0] tmp_8_fu_1434_p65;
reg   [1:0] grp_fu_1053_opcode;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_7_fu_1167_p1;
wire   [4:0] tmp_7_fu_1167_p3;
wire   [4:0] tmp_7_fu_1167_p5;
wire   [4:0] tmp_7_fu_1167_p7;
wire   [4:0] tmp_7_fu_1167_p9;
wire   [4:0] tmp_7_fu_1167_p11;
wire   [4:0] tmp_7_fu_1167_p13;
wire   [4:0] tmp_7_fu_1167_p15;
wire   [4:0] tmp_7_fu_1167_p17;
wire   [4:0] tmp_7_fu_1167_p19;
wire   [4:0] tmp_7_fu_1167_p21;
wire   [4:0] tmp_7_fu_1167_p23;
wire   [4:0] tmp_7_fu_1167_p25;
wire   [4:0] tmp_7_fu_1167_p27;
wire   [4:0] tmp_7_fu_1167_p29;
wire   [4:0] tmp_7_fu_1167_p31;
wire  signed [4:0] tmp_7_fu_1167_p33;
wire  signed [4:0] tmp_7_fu_1167_p35;
wire  signed [4:0] tmp_7_fu_1167_p37;
wire  signed [4:0] tmp_7_fu_1167_p39;
wire  signed [4:0] tmp_7_fu_1167_p41;
wire  signed [4:0] tmp_7_fu_1167_p43;
wire  signed [4:0] tmp_7_fu_1167_p45;
wire  signed [4:0] tmp_7_fu_1167_p47;
wire  signed [4:0] tmp_7_fu_1167_p49;
wire  signed [4:0] tmp_7_fu_1167_p51;
wire  signed [4:0] tmp_7_fu_1167_p53;
wire  signed [4:0] tmp_7_fu_1167_p55;
wire  signed [4:0] tmp_7_fu_1167_p57;
wire  signed [4:0] tmp_7_fu_1167_p59;
wire  signed [4:0] tmp_7_fu_1167_p61;
wire  signed [4:0] tmp_7_fu_1167_p63;
wire   [4:0] tmp_8_fu_1434_p1;
wire   [4:0] tmp_8_fu_1434_p3;
wire   [4:0] tmp_8_fu_1434_p5;
wire   [4:0] tmp_8_fu_1434_p7;
wire   [4:0] tmp_8_fu_1434_p9;
wire   [4:0] tmp_8_fu_1434_p11;
wire   [4:0] tmp_8_fu_1434_p13;
wire   [4:0] tmp_8_fu_1434_p15;
wire   [4:0] tmp_8_fu_1434_p17;
wire   [4:0] tmp_8_fu_1434_p19;
wire   [4:0] tmp_8_fu_1434_p21;
wire   [4:0] tmp_8_fu_1434_p23;
wire   [4:0] tmp_8_fu_1434_p25;
wire   [4:0] tmp_8_fu_1434_p27;
wire   [4:0] tmp_8_fu_1434_p29;
wire   [4:0] tmp_8_fu_1434_p31;
wire  signed [4:0] tmp_8_fu_1434_p33;
wire  signed [4:0] tmp_8_fu_1434_p35;
wire  signed [4:0] tmp_8_fu_1434_p37;
wire  signed [4:0] tmp_8_fu_1434_p39;
wire  signed [4:0] tmp_8_fu_1434_p41;
wire  signed [4:0] tmp_8_fu_1434_p43;
wire  signed [4:0] tmp_8_fu_1434_p45;
wire  signed [4:0] tmp_8_fu_1434_p47;
wire  signed [4:0] tmp_8_fu_1434_p49;
wire  signed [4:0] tmp_8_fu_1434_p51;
wire  signed [4:0] tmp_8_fu_1434_p53;
wire  signed [4:0] tmp_8_fu_1434_p55;
wire  signed [4:0] tmp_8_fu_1434_p57;
wire  signed [4:0] tmp_8_fu_1434_p59;
wire  signed [4:0] tmp_8_fu_1434_p61;
wire  signed [4:0] tmp_8_fu_1434_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_238 = 64'd0;
#0 i_fu_242 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1762(.din0(d_biases2_0_q0),.din1(d_biases2_1_q0),.din2(d_biases2_2_q0),.din3(d_biases2_3_q0),.din4(d_biases2_4_q0),.din5(d_biases2_5_q0),.din6(d_biases2_6_q0),.din7(d_biases2_7_q0),.din8(d_biases2_8_q0),.din9(d_biases2_9_q0),.din10(d_biases2_10_q0),.din11(d_biases2_11_q0),.din12(d_biases2_12_q0),.din13(d_biases2_13_q0),.din14(d_biases2_14_q0),.din15(d_biases2_15_q0),.din16(d_biases2_16_q0),.din17(d_biases2_17_q0),.din18(d_biases2_18_q0),.din19(d_biases2_19_q0),.din20(d_biases2_20_q0),.din21(d_biases2_21_q0),.din22(d_biases2_22_q0),.din23(d_biases2_23_q0),.din24(d_biases2_24_q0),.din25(d_biases2_25_q0),.din26(d_biases2_26_q0),.din27(d_biases2_27_q0),.din28(d_biases2_28_q0),.din29(d_biases2_29_q0),.din30(d_biases2_30_q0),.din31(d_biases2_31_q0),.def(tmp_7_fu_1167_p65),.sel(trunc_ln158_reg_1641),.dout(tmp_7_fu_1167_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1763(.din0(tmp_8_fu_1434_p2),.din1(tmp_8_fu_1434_p4),.din2(tmp_8_fu_1434_p6),.din3(tmp_8_fu_1434_p8),.din4(tmp_8_fu_1434_p10),.din5(tmp_8_fu_1434_p12),.din6(tmp_8_fu_1434_p14),.din7(tmp_8_fu_1434_p16),.din8(tmp_8_fu_1434_p18),.din9(tmp_8_fu_1434_p20),.din10(tmp_8_fu_1434_p22),.din11(tmp_8_fu_1434_p24),.din12(tmp_8_fu_1434_p26),.din13(tmp_8_fu_1434_p28),.din14(tmp_8_fu_1434_p30),.din15(tmp_8_fu_1434_p32),.din16(tmp_8_fu_1434_p34),.din17(tmp_8_fu_1434_p36),.din18(tmp_8_fu_1434_p38),.din19(tmp_8_fu_1434_p40),.din20(tmp_8_fu_1434_p42),.din21(tmp_8_fu_1434_p44),.din22(tmp_8_fu_1434_p46),.din23(tmp_8_fu_1434_p48),.din24(tmp_8_fu_1434_p50),.din25(tmp_8_fu_1434_p52),.din26(tmp_8_fu_1434_p54),.din27(tmp_8_fu_1434_p56),.din28(tmp_8_fu_1434_p58),.din29(tmp_8_fu_1434_p60),.din30(tmp_8_fu_1434_p62),.din31(tmp_8_fu_1434_p64),.def(tmp_8_fu_1434_p65),.sel(trunc_ln158_reg_1641_pp0_iter1_reg),.dout(tmp_8_fu_1434_p67));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_238 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bias_norm_fu_238 <= grp_fu_1947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_242 <= 7'd0;
    end else if (((icmp_ln158_reg_1632 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_242 <= add_ln158_reg_1636;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln158_reg_1636 <= add_ln158_fu_1081_p2;
        biases2_0_addr_reg_1807 <= zext_ln121_fu_1099_p1;
        biases2_0_addr_reg_1807_pp0_iter1_reg <= biases2_0_addr_reg_1807;
        biases2_0_addr_reg_1807_pp0_iter2_reg <= biases2_0_addr_reg_1807_pp0_iter1_reg;
        biases2_10_addr_reg_1857 <= zext_ln121_fu_1099_p1;
        biases2_10_addr_reg_1857_pp0_iter1_reg <= biases2_10_addr_reg_1857;
        biases2_10_addr_reg_1857_pp0_iter2_reg <= biases2_10_addr_reg_1857_pp0_iter1_reg;
        biases2_11_addr_reg_1862 <= zext_ln121_fu_1099_p1;
        biases2_11_addr_reg_1862_pp0_iter1_reg <= biases2_11_addr_reg_1862;
        biases2_11_addr_reg_1862_pp0_iter2_reg <= biases2_11_addr_reg_1862_pp0_iter1_reg;
        biases2_12_addr_reg_1867 <= zext_ln121_fu_1099_p1;
        biases2_12_addr_reg_1867_pp0_iter1_reg <= biases2_12_addr_reg_1867;
        biases2_12_addr_reg_1867_pp0_iter2_reg <= biases2_12_addr_reg_1867_pp0_iter1_reg;
        biases2_13_addr_reg_1872 <= zext_ln121_fu_1099_p1;
        biases2_13_addr_reg_1872_pp0_iter1_reg <= biases2_13_addr_reg_1872;
        biases2_13_addr_reg_1872_pp0_iter2_reg <= biases2_13_addr_reg_1872_pp0_iter1_reg;
        biases2_14_addr_reg_1877 <= zext_ln121_fu_1099_p1;
        biases2_14_addr_reg_1877_pp0_iter1_reg <= biases2_14_addr_reg_1877;
        biases2_14_addr_reg_1877_pp0_iter2_reg <= biases2_14_addr_reg_1877_pp0_iter1_reg;
        biases2_15_addr_reg_1882 <= zext_ln121_fu_1099_p1;
        biases2_15_addr_reg_1882_pp0_iter1_reg <= biases2_15_addr_reg_1882;
        biases2_15_addr_reg_1882_pp0_iter2_reg <= biases2_15_addr_reg_1882_pp0_iter1_reg;
        biases2_16_addr_reg_1887 <= zext_ln121_fu_1099_p1;
        biases2_16_addr_reg_1887_pp0_iter1_reg <= biases2_16_addr_reg_1887;
        biases2_16_addr_reg_1887_pp0_iter2_reg <= biases2_16_addr_reg_1887_pp0_iter1_reg;
        biases2_17_addr_reg_1892 <= zext_ln121_fu_1099_p1;
        biases2_17_addr_reg_1892_pp0_iter1_reg <= biases2_17_addr_reg_1892;
        biases2_17_addr_reg_1892_pp0_iter2_reg <= biases2_17_addr_reg_1892_pp0_iter1_reg;
        biases2_18_addr_reg_1897 <= zext_ln121_fu_1099_p1;
        biases2_18_addr_reg_1897_pp0_iter1_reg <= biases2_18_addr_reg_1897;
        biases2_18_addr_reg_1897_pp0_iter2_reg <= biases2_18_addr_reg_1897_pp0_iter1_reg;
        biases2_19_addr_reg_1902 <= zext_ln121_fu_1099_p1;
        biases2_19_addr_reg_1902_pp0_iter1_reg <= biases2_19_addr_reg_1902;
        biases2_19_addr_reg_1902_pp0_iter2_reg <= biases2_19_addr_reg_1902_pp0_iter1_reg;
        biases2_1_addr_reg_1812 <= zext_ln121_fu_1099_p1;
        biases2_1_addr_reg_1812_pp0_iter1_reg <= biases2_1_addr_reg_1812;
        biases2_1_addr_reg_1812_pp0_iter2_reg <= biases2_1_addr_reg_1812_pp0_iter1_reg;
        biases2_20_addr_reg_1907 <= zext_ln121_fu_1099_p1;
        biases2_20_addr_reg_1907_pp0_iter1_reg <= biases2_20_addr_reg_1907;
        biases2_20_addr_reg_1907_pp0_iter2_reg <= biases2_20_addr_reg_1907_pp0_iter1_reg;
        biases2_21_addr_reg_1912 <= zext_ln121_fu_1099_p1;
        biases2_21_addr_reg_1912_pp0_iter1_reg <= biases2_21_addr_reg_1912;
        biases2_21_addr_reg_1912_pp0_iter2_reg <= biases2_21_addr_reg_1912_pp0_iter1_reg;
        biases2_22_addr_reg_1917 <= zext_ln121_fu_1099_p1;
        biases2_22_addr_reg_1917_pp0_iter1_reg <= biases2_22_addr_reg_1917;
        biases2_22_addr_reg_1917_pp0_iter2_reg <= biases2_22_addr_reg_1917_pp0_iter1_reg;
        biases2_23_addr_reg_1922 <= zext_ln121_fu_1099_p1;
        biases2_23_addr_reg_1922_pp0_iter1_reg <= biases2_23_addr_reg_1922;
        biases2_23_addr_reg_1922_pp0_iter2_reg <= biases2_23_addr_reg_1922_pp0_iter1_reg;
        biases2_24_addr_reg_1927 <= zext_ln121_fu_1099_p1;
        biases2_24_addr_reg_1927_pp0_iter1_reg <= biases2_24_addr_reg_1927;
        biases2_24_addr_reg_1927_pp0_iter2_reg <= biases2_24_addr_reg_1927_pp0_iter1_reg;
        biases2_25_addr_reg_1932 <= zext_ln121_fu_1099_p1;
        biases2_25_addr_reg_1932_pp0_iter1_reg <= biases2_25_addr_reg_1932;
        biases2_25_addr_reg_1932_pp0_iter2_reg <= biases2_25_addr_reg_1932_pp0_iter1_reg;
        biases2_26_addr_reg_1937 <= zext_ln121_fu_1099_p1;
        biases2_26_addr_reg_1937_pp0_iter1_reg <= biases2_26_addr_reg_1937;
        biases2_26_addr_reg_1937_pp0_iter2_reg <= biases2_26_addr_reg_1937_pp0_iter1_reg;
        biases2_27_addr_reg_1942 <= zext_ln121_fu_1099_p1;
        biases2_27_addr_reg_1942_pp0_iter1_reg <= biases2_27_addr_reg_1942;
        biases2_27_addr_reg_1942_pp0_iter2_reg <= biases2_27_addr_reg_1942_pp0_iter1_reg;
        biases2_28_addr_reg_1947 <= zext_ln121_fu_1099_p1;
        biases2_28_addr_reg_1947_pp0_iter1_reg <= biases2_28_addr_reg_1947;
        biases2_28_addr_reg_1947_pp0_iter2_reg <= biases2_28_addr_reg_1947_pp0_iter1_reg;
        biases2_29_addr_reg_1952 <= zext_ln121_fu_1099_p1;
        biases2_29_addr_reg_1952_pp0_iter1_reg <= biases2_29_addr_reg_1952;
        biases2_29_addr_reg_1952_pp0_iter2_reg <= biases2_29_addr_reg_1952_pp0_iter1_reg;
        biases2_2_addr_reg_1817 <= zext_ln121_fu_1099_p1;
        biases2_2_addr_reg_1817_pp0_iter1_reg <= biases2_2_addr_reg_1817;
        biases2_2_addr_reg_1817_pp0_iter2_reg <= biases2_2_addr_reg_1817_pp0_iter1_reg;
        biases2_30_addr_reg_1957 <= zext_ln121_fu_1099_p1;
        biases2_30_addr_reg_1957_pp0_iter1_reg <= biases2_30_addr_reg_1957;
        biases2_30_addr_reg_1957_pp0_iter2_reg <= biases2_30_addr_reg_1957_pp0_iter1_reg;
        biases2_31_addr_reg_1962 <= zext_ln121_fu_1099_p1;
        biases2_31_addr_reg_1962_pp0_iter1_reg <= biases2_31_addr_reg_1962;
        biases2_31_addr_reg_1962_pp0_iter2_reg <= biases2_31_addr_reg_1962_pp0_iter1_reg;
        biases2_3_addr_reg_1822 <= zext_ln121_fu_1099_p1;
        biases2_3_addr_reg_1822_pp0_iter1_reg <= biases2_3_addr_reg_1822;
        biases2_3_addr_reg_1822_pp0_iter2_reg <= biases2_3_addr_reg_1822_pp0_iter1_reg;
        biases2_4_addr_reg_1827 <= zext_ln121_fu_1099_p1;
        biases2_4_addr_reg_1827_pp0_iter1_reg <= biases2_4_addr_reg_1827;
        biases2_4_addr_reg_1827_pp0_iter2_reg <= biases2_4_addr_reg_1827_pp0_iter1_reg;
        biases2_5_addr_reg_1832 <= zext_ln121_fu_1099_p1;
        biases2_5_addr_reg_1832_pp0_iter1_reg <= biases2_5_addr_reg_1832;
        biases2_5_addr_reg_1832_pp0_iter2_reg <= biases2_5_addr_reg_1832_pp0_iter1_reg;
        biases2_6_addr_reg_1837 <= zext_ln121_fu_1099_p1;
        biases2_6_addr_reg_1837_pp0_iter1_reg <= biases2_6_addr_reg_1837;
        biases2_6_addr_reg_1837_pp0_iter2_reg <= biases2_6_addr_reg_1837_pp0_iter1_reg;
        biases2_7_addr_reg_1842 <= zext_ln121_fu_1099_p1;
        biases2_7_addr_reg_1842_pp0_iter1_reg <= biases2_7_addr_reg_1842;
        biases2_7_addr_reg_1842_pp0_iter2_reg <= biases2_7_addr_reg_1842_pp0_iter1_reg;
        biases2_8_addr_reg_1847 <= zext_ln121_fu_1099_p1;
        biases2_8_addr_reg_1847_pp0_iter1_reg <= biases2_8_addr_reg_1847;
        biases2_8_addr_reg_1847_pp0_iter2_reg <= biases2_8_addr_reg_1847_pp0_iter1_reg;
        biases2_9_addr_reg_1852 <= zext_ln121_fu_1099_p1;
        biases2_9_addr_reg_1852_pp0_iter1_reg <= biases2_9_addr_reg_1852;
        biases2_9_addr_reg_1852_pp0_iter2_reg <= biases2_9_addr_reg_1852_pp0_iter1_reg;
        icmp_ln158_reg_1632 <= icmp_ln158_fu_1075_p2;
        icmp_ln158_reg_1632_pp0_iter1_reg <= icmp_ln158_reg_1632;
        icmp_ln158_reg_1632_pp0_iter2_reg <= icmp_ln158_reg_1632_pp0_iter1_reg;
        icmp_ln158_reg_1632_pp0_iter3_reg <= icmp_ln158_reg_1632_pp0_iter2_reg;
        trunc_ln158_reg_1641 <= trunc_ln158_fu_1087_p1;
        trunc_ln158_reg_1641_pp0_iter1_reg <= trunc_ln158_reg_1641;
        trunc_ln158_reg_1641_pp0_iter2_reg <= trunc_ln158_reg_1641_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred1003_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd1);
        ap_predicate_pred1013_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd2);
        ap_predicate_pred1023_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd3);
        ap_predicate_pred1033_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd4);
        ap_predicate_pred1043_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd5);
        ap_predicate_pred1053_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd6);
        ap_predicate_pred1063_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd7);
        ap_predicate_pred1073_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd8);
        ap_predicate_pred1083_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd9);
        ap_predicate_pred1093_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd10);
        ap_predicate_pred1103_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd11);
        ap_predicate_pred1113_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd12);
        ap_predicate_pred1123_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd13);
        ap_predicate_pred1133_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd14);
        ap_predicate_pred1143_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd15);
        ap_predicate_pred1153_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd16);
        ap_predicate_pred1163_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd17);
        ap_predicate_pred1173_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd18);
        ap_predicate_pred1183_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd19);
        ap_predicate_pred1193_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd20);
        ap_predicate_pred1203_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd21);
        ap_predicate_pred1213_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd22);
        ap_predicate_pred1223_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd23);
        ap_predicate_pred1233_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd24);
        ap_predicate_pred1243_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd25);
        ap_predicate_pred1253_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd26);
        ap_predicate_pred1263_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd27);
        ap_predicate_pred1273_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd28);
        ap_predicate_pred1283_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd29);
        ap_predicate_pred1293_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd30);
        ap_predicate_pred1303_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd31);
        ap_predicate_pred990_state18 <= (trunc_ln158_reg_1641_pp0_iter2_reg == 5'd0);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul3_reg_1972 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul6_reg_1989 <= grp_fu_1951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sub2_reg_1982 <= grp_fu_1947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_7_reg_1967 <= tmp_7_fu_1167_p67;
        tmp_8_reg_1977 <= tmp_8_fu_1434_p67;
    end
end
always @ (*) begin
    if (((icmp_ln158_reg_1632 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln158_reg_1632_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_sig_allocacmp_bias_norm_load_1 = grp_fu_1947_p_dout0;
    end else begin
        ap_sig_allocacmp_bias_norm_load_1 = bias_norm_fu_238;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_242;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln158_reg_1632_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bias_norm_4_out_ap_vld = 1'b1;
    end else begin
        bias_norm_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_0_address0_local = biases2_0_addr_reg_1807_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_0_address0_local = biases2_0_addr_reg_1807;
    end else begin
        biases2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_0_ce0_local = 1'b1;
    end else begin
        biases2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred990_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_0_we0_local = 1'b1;
    end else begin
        biases2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_10_address0_local = biases2_10_addr_reg_1857_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_10_address0_local = biases2_10_addr_reg_1857;
    end else begin
        biases2_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_10_ce0_local = 1'b1;
    end else begin
        biases2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1093_state18 == 1'b1))) begin
        biases2_10_we0_local = 1'b1;
    end else begin
        biases2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_11_address0_local = biases2_11_addr_reg_1862_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_11_address0_local = biases2_11_addr_reg_1862;
    end else begin
        biases2_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_11_ce0_local = 1'b1;
    end else begin
        biases2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1103_state18 == 1'b1))) begin
        biases2_11_we0_local = 1'b1;
    end else begin
        biases2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_12_address0_local = biases2_12_addr_reg_1867_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_12_address0_local = biases2_12_addr_reg_1867;
    end else begin
        biases2_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_12_ce0_local = 1'b1;
    end else begin
        biases2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1113_state18 == 1'b1))) begin
        biases2_12_we0_local = 1'b1;
    end else begin
        biases2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_13_address0_local = biases2_13_addr_reg_1872_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_13_address0_local = biases2_13_addr_reg_1872;
    end else begin
        biases2_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_13_ce0_local = 1'b1;
    end else begin
        biases2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1123_state18 == 1'b1))) begin
        biases2_13_we0_local = 1'b1;
    end else begin
        biases2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_14_address0_local = biases2_14_addr_reg_1877_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_14_address0_local = biases2_14_addr_reg_1877;
    end else begin
        biases2_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_14_ce0_local = 1'b1;
    end else begin
        biases2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1133_state18 == 1'b1))) begin
        biases2_14_we0_local = 1'b1;
    end else begin
        biases2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_15_address0_local = biases2_15_addr_reg_1882_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_15_address0_local = biases2_15_addr_reg_1882;
    end else begin
        biases2_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_15_ce0_local = 1'b1;
    end else begin
        biases2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1143_state18 == 1'b1))) begin
        biases2_15_we0_local = 1'b1;
    end else begin
        biases2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_16_address0_local = biases2_16_addr_reg_1887_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_16_address0_local = biases2_16_addr_reg_1887;
    end else begin
        biases2_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_16_ce0_local = 1'b1;
    end else begin
        biases2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1153_state18 == 1'b1))) begin
        biases2_16_we0_local = 1'b1;
    end else begin
        biases2_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_17_address0_local = biases2_17_addr_reg_1892_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_17_address0_local = biases2_17_addr_reg_1892;
    end else begin
        biases2_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_17_ce0_local = 1'b1;
    end else begin
        biases2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1163_state18 == 1'b1))) begin
        biases2_17_we0_local = 1'b1;
    end else begin
        biases2_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_18_address0_local = biases2_18_addr_reg_1897_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_18_address0_local = biases2_18_addr_reg_1897;
    end else begin
        biases2_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_18_ce0_local = 1'b1;
    end else begin
        biases2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1173_state18 == 1'b1))) begin
        biases2_18_we0_local = 1'b1;
    end else begin
        biases2_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_19_address0_local = biases2_19_addr_reg_1902_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_19_address0_local = biases2_19_addr_reg_1902;
    end else begin
        biases2_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_19_ce0_local = 1'b1;
    end else begin
        biases2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1183_state18 == 1'b1))) begin
        biases2_19_we0_local = 1'b1;
    end else begin
        biases2_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_1_address0_local = biases2_1_addr_reg_1812_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_1_address0_local = biases2_1_addr_reg_1812;
    end else begin
        biases2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_1_ce0_local = 1'b1;
    end else begin
        biases2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1003_state18 == 1'b1))) begin
        biases2_1_we0_local = 1'b1;
    end else begin
        biases2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_20_address0_local = biases2_20_addr_reg_1907_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_20_address0_local = biases2_20_addr_reg_1907;
    end else begin
        biases2_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_20_ce0_local = 1'b1;
    end else begin
        biases2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1193_state18 == 1'b1))) begin
        biases2_20_we0_local = 1'b1;
    end else begin
        biases2_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_21_address0_local = biases2_21_addr_reg_1912_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_21_address0_local = biases2_21_addr_reg_1912;
    end else begin
        biases2_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_21_ce0_local = 1'b1;
    end else begin
        biases2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1203_state18 == 1'b1))) begin
        biases2_21_we0_local = 1'b1;
    end else begin
        biases2_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_22_address0_local = biases2_22_addr_reg_1917_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_22_address0_local = biases2_22_addr_reg_1917;
    end else begin
        biases2_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_22_ce0_local = 1'b1;
    end else begin
        biases2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1213_state18 == 1'b1))) begin
        biases2_22_we0_local = 1'b1;
    end else begin
        biases2_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_23_address0_local = biases2_23_addr_reg_1922_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_23_address0_local = biases2_23_addr_reg_1922;
    end else begin
        biases2_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_23_ce0_local = 1'b1;
    end else begin
        biases2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1223_state18 == 1'b1))) begin
        biases2_23_we0_local = 1'b1;
    end else begin
        biases2_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_24_address0_local = biases2_24_addr_reg_1927_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_24_address0_local = biases2_24_addr_reg_1927;
    end else begin
        biases2_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_24_ce0_local = 1'b1;
    end else begin
        biases2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1233_state18 == 1'b1))) begin
        biases2_24_we0_local = 1'b1;
    end else begin
        biases2_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_25_address0_local = biases2_25_addr_reg_1932_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_25_address0_local = biases2_25_addr_reg_1932;
    end else begin
        biases2_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_25_ce0_local = 1'b1;
    end else begin
        biases2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1243_state18 == 1'b1))) begin
        biases2_25_we0_local = 1'b1;
    end else begin
        biases2_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_26_address0_local = biases2_26_addr_reg_1937_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_26_address0_local = biases2_26_addr_reg_1937;
    end else begin
        biases2_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_26_ce0_local = 1'b1;
    end else begin
        biases2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1253_state18 == 1'b1))) begin
        biases2_26_we0_local = 1'b1;
    end else begin
        biases2_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_27_address0_local = biases2_27_addr_reg_1942_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_27_address0_local = biases2_27_addr_reg_1942;
    end else begin
        biases2_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_27_ce0_local = 1'b1;
    end else begin
        biases2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1263_state18 == 1'b1))) begin
        biases2_27_we0_local = 1'b1;
    end else begin
        biases2_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_28_address0_local = biases2_28_addr_reg_1947_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_28_address0_local = biases2_28_addr_reg_1947;
    end else begin
        biases2_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_28_ce0_local = 1'b1;
    end else begin
        biases2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1273_state18 == 1'b1))) begin
        biases2_28_we0_local = 1'b1;
    end else begin
        biases2_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_29_address0_local = biases2_29_addr_reg_1952_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_29_address0_local = biases2_29_addr_reg_1952;
    end else begin
        biases2_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_29_ce0_local = 1'b1;
    end else begin
        biases2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1283_state18 == 1'b1))) begin
        biases2_29_we0_local = 1'b1;
    end else begin
        biases2_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_2_address0_local = biases2_2_addr_reg_1817_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_2_address0_local = biases2_2_addr_reg_1817;
    end else begin
        biases2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_2_ce0_local = 1'b1;
    end else begin
        biases2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1013_state18 == 1'b1))) begin
        biases2_2_we0_local = 1'b1;
    end else begin
        biases2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_30_address0_local = biases2_30_addr_reg_1957_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_30_address0_local = biases2_30_addr_reg_1957;
    end else begin
        biases2_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_30_ce0_local = 1'b1;
    end else begin
        biases2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1293_state18 == 1'b1))) begin
        biases2_30_we0_local = 1'b1;
    end else begin
        biases2_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_31_address0_local = biases2_31_addr_reg_1962_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_31_address0_local = biases2_31_addr_reg_1962;
    end else begin
        biases2_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_31_ce0_local = 1'b1;
    end else begin
        biases2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1303_state18 == 1'b1))) begin
        biases2_31_we0_local = 1'b1;
    end else begin
        biases2_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_3_address0_local = biases2_3_addr_reg_1822_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_3_address0_local = biases2_3_addr_reg_1822;
    end else begin
        biases2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_3_ce0_local = 1'b1;
    end else begin
        biases2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1023_state18 == 1'b1))) begin
        biases2_3_we0_local = 1'b1;
    end else begin
        biases2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_4_address0_local = biases2_4_addr_reg_1827_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_4_address0_local = biases2_4_addr_reg_1827;
    end else begin
        biases2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_4_ce0_local = 1'b1;
    end else begin
        biases2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1033_state18 == 1'b1))) begin
        biases2_4_we0_local = 1'b1;
    end else begin
        biases2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_5_address0_local = biases2_5_addr_reg_1832_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_5_address0_local = biases2_5_addr_reg_1832;
    end else begin
        biases2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_5_ce0_local = 1'b1;
    end else begin
        biases2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1043_state18 == 1'b1))) begin
        biases2_5_we0_local = 1'b1;
    end else begin
        biases2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_6_address0_local = biases2_6_addr_reg_1837_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_6_address0_local = biases2_6_addr_reg_1837;
    end else begin
        biases2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_6_ce0_local = 1'b1;
    end else begin
        biases2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1053_state18 == 1'b1))) begin
        biases2_6_we0_local = 1'b1;
    end else begin
        biases2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_7_address0_local = biases2_7_addr_reg_1842_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_7_address0_local = biases2_7_addr_reg_1842;
    end else begin
        biases2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_7_ce0_local = 1'b1;
    end else begin
        biases2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1063_state18 == 1'b1))) begin
        biases2_7_we0_local = 1'b1;
    end else begin
        biases2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_8_address0_local = biases2_8_addr_reg_1847_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_8_address0_local = biases2_8_addr_reg_1847;
    end else begin
        biases2_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_8_ce0_local = 1'b1;
    end else begin
        biases2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1073_state18 == 1'b1))) begin
        biases2_8_we0_local = 1'b1;
    end else begin
        biases2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_9_address0_local = biases2_9_addr_reg_1852_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_9_address0_local = biases2_9_addr_reg_1852;
    end else begin
        biases2_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_9_ce0_local = 1'b1;
    end else begin
        biases2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1083_state18 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1053_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1053_opcode = 2'd0;
    end else begin
        grp_fu_1053_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1053_p0 = ap_sig_allocacmp_bias_norm_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1053_p0 = tmp_8_reg_1977;
    end else begin
        grp_fu_1053_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1053_p1 = mul6_reg_1989;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1053_p1 = mul3_reg_1972;
    end else begin
        grp_fu_1053_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1057_p0 = sub2_reg_1982;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1057_p0 = tmp_7_reg_1967;
    end else begin
        grp_fu_1057_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1057_p1 = sub2_reg_1982;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1057_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1057_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln158_fu_1081_p2 = (ap_sig_allocacmp_i_2 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bias_norm_4_out = bias_norm_fu_238;
assign biases2_0_address0 = biases2_0_address0_local;
assign biases2_0_ce0 = biases2_0_ce0_local;
assign biases2_0_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_0_we0 = biases2_0_we0_local;
assign biases2_10_address0 = biases2_10_address0_local;
assign biases2_10_ce0 = biases2_10_ce0_local;
assign biases2_10_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_10_we0 = biases2_10_we0_local;
assign biases2_11_address0 = biases2_11_address0_local;
assign biases2_11_ce0 = biases2_11_ce0_local;
assign biases2_11_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_11_we0 = biases2_11_we0_local;
assign biases2_12_address0 = biases2_12_address0_local;
assign biases2_12_ce0 = biases2_12_ce0_local;
assign biases2_12_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_12_we0 = biases2_12_we0_local;
assign biases2_13_address0 = biases2_13_address0_local;
assign biases2_13_ce0 = biases2_13_ce0_local;
assign biases2_13_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_13_we0 = biases2_13_we0_local;
assign biases2_14_address0 = biases2_14_address0_local;
assign biases2_14_ce0 = biases2_14_ce0_local;
assign biases2_14_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_14_we0 = biases2_14_we0_local;
assign biases2_15_address0 = biases2_15_address0_local;
assign biases2_15_ce0 = biases2_15_ce0_local;
assign biases2_15_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_15_we0 = biases2_15_we0_local;
assign biases2_16_address0 = biases2_16_address0_local;
assign biases2_16_ce0 = biases2_16_ce0_local;
assign biases2_16_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_16_we0 = biases2_16_we0_local;
assign biases2_17_address0 = biases2_17_address0_local;
assign biases2_17_ce0 = biases2_17_ce0_local;
assign biases2_17_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_17_we0 = biases2_17_we0_local;
assign biases2_18_address0 = biases2_18_address0_local;
assign biases2_18_ce0 = biases2_18_ce0_local;
assign biases2_18_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_18_we0 = biases2_18_we0_local;
assign biases2_19_address0 = biases2_19_address0_local;
assign biases2_19_ce0 = biases2_19_ce0_local;
assign biases2_19_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_19_we0 = biases2_19_we0_local;
assign biases2_1_address0 = biases2_1_address0_local;
assign biases2_1_ce0 = biases2_1_ce0_local;
assign biases2_1_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_1_we0 = biases2_1_we0_local;
assign biases2_20_address0 = biases2_20_address0_local;
assign biases2_20_ce0 = biases2_20_ce0_local;
assign biases2_20_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_20_we0 = biases2_20_we0_local;
assign biases2_21_address0 = biases2_21_address0_local;
assign biases2_21_ce0 = biases2_21_ce0_local;
assign biases2_21_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_21_we0 = biases2_21_we0_local;
assign biases2_22_address0 = biases2_22_address0_local;
assign biases2_22_ce0 = biases2_22_ce0_local;
assign biases2_22_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_22_we0 = biases2_22_we0_local;
assign biases2_23_address0 = biases2_23_address0_local;
assign biases2_23_ce0 = biases2_23_ce0_local;
assign biases2_23_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_23_we0 = biases2_23_we0_local;
assign biases2_24_address0 = biases2_24_address0_local;
assign biases2_24_ce0 = biases2_24_ce0_local;
assign biases2_24_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_24_we0 = biases2_24_we0_local;
assign biases2_25_address0 = biases2_25_address0_local;
assign biases2_25_ce0 = biases2_25_ce0_local;
assign biases2_25_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_25_we0 = biases2_25_we0_local;
assign biases2_26_address0 = biases2_26_address0_local;
assign biases2_26_ce0 = biases2_26_ce0_local;
assign biases2_26_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_26_we0 = biases2_26_we0_local;
assign biases2_27_address0 = biases2_27_address0_local;
assign biases2_27_ce0 = biases2_27_ce0_local;
assign biases2_27_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_27_we0 = biases2_27_we0_local;
assign biases2_28_address0 = biases2_28_address0_local;
assign biases2_28_ce0 = biases2_28_ce0_local;
assign biases2_28_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_28_we0 = biases2_28_we0_local;
assign biases2_29_address0 = biases2_29_address0_local;
assign biases2_29_ce0 = biases2_29_ce0_local;
assign biases2_29_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_29_we0 = biases2_29_we0_local;
assign biases2_2_address0 = biases2_2_address0_local;
assign biases2_2_ce0 = biases2_2_ce0_local;
assign biases2_2_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_2_we0 = biases2_2_we0_local;
assign biases2_30_address0 = biases2_30_address0_local;
assign biases2_30_ce0 = biases2_30_ce0_local;
assign biases2_30_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_30_we0 = biases2_30_we0_local;
assign biases2_31_address0 = biases2_31_address0_local;
assign biases2_31_ce0 = biases2_31_ce0_local;
assign biases2_31_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_31_we0 = biases2_31_we0_local;
assign biases2_3_address0 = biases2_3_address0_local;
assign biases2_3_ce0 = biases2_3_ce0_local;
assign biases2_3_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_3_we0 = biases2_3_we0_local;
assign biases2_4_address0 = biases2_4_address0_local;
assign biases2_4_ce0 = biases2_4_ce0_local;
assign biases2_4_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_4_we0 = biases2_4_we0_local;
assign biases2_5_address0 = biases2_5_address0_local;
assign biases2_5_ce0 = biases2_5_ce0_local;
assign biases2_5_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_5_we0 = biases2_5_we0_local;
assign biases2_6_address0 = biases2_6_address0_local;
assign biases2_6_ce0 = biases2_6_ce0_local;
assign biases2_6_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_6_we0 = biases2_6_we0_local;
assign biases2_7_address0 = biases2_7_address0_local;
assign biases2_7_ce0 = biases2_7_ce0_local;
assign biases2_7_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_7_we0 = biases2_7_we0_local;
assign biases2_8_address0 = biases2_8_address0_local;
assign biases2_8_ce0 = biases2_8_ce0_local;
assign biases2_8_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_8_we0 = biases2_8_we0_local;
assign biases2_9_address0 = biases2_9_address0_local;
assign biases2_9_ce0 = biases2_9_ce0_local;
assign biases2_9_d0 = bitcast_ln159_32_fu_1569_p1;
assign biases2_9_we0 = biases2_9_we0_local;
assign bitcast_ln159_32_fu_1569_p1 = sub2_reg_1982;
assign d_biases2_0_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_0_ce0 = d_biases2_0_ce0_local;
assign d_biases2_10_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_10_ce0 = d_biases2_10_ce0_local;
assign d_biases2_11_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_11_ce0 = d_biases2_11_ce0_local;
assign d_biases2_12_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_12_ce0 = d_biases2_12_ce0_local;
assign d_biases2_13_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_13_ce0 = d_biases2_13_ce0_local;
assign d_biases2_14_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_14_ce0 = d_biases2_14_ce0_local;
assign d_biases2_15_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_15_ce0 = d_biases2_15_ce0_local;
assign d_biases2_16_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_16_ce0 = d_biases2_16_ce0_local;
assign d_biases2_17_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_17_ce0 = d_biases2_17_ce0_local;
assign d_biases2_18_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_18_ce0 = d_biases2_18_ce0_local;
assign d_biases2_19_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_19_ce0 = d_biases2_19_ce0_local;
assign d_biases2_1_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_1_ce0 = d_biases2_1_ce0_local;
assign d_biases2_20_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_20_ce0 = d_biases2_20_ce0_local;
assign d_biases2_21_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_21_ce0 = d_biases2_21_ce0_local;
assign d_biases2_22_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_22_ce0 = d_biases2_22_ce0_local;
assign d_biases2_23_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_23_ce0 = d_biases2_23_ce0_local;
assign d_biases2_24_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_24_ce0 = d_biases2_24_ce0_local;
assign d_biases2_25_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_25_ce0 = d_biases2_25_ce0_local;
assign d_biases2_26_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_26_ce0 = d_biases2_26_ce0_local;
assign d_biases2_27_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_27_ce0 = d_biases2_27_ce0_local;
assign d_biases2_28_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_28_ce0 = d_biases2_28_ce0_local;
assign d_biases2_29_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_29_ce0 = d_biases2_29_ce0_local;
assign d_biases2_2_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_2_ce0 = d_biases2_2_ce0_local;
assign d_biases2_30_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_30_ce0 = d_biases2_30_ce0_local;
assign d_biases2_31_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_31_ce0 = d_biases2_31_ce0_local;
assign d_biases2_3_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_3_ce0 = d_biases2_3_ce0_local;
assign d_biases2_4_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_4_ce0 = d_biases2_4_ce0_local;
assign d_biases2_5_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_5_ce0 = d_biases2_5_ce0_local;
assign d_biases2_6_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_6_ce0 = d_biases2_6_ce0_local;
assign d_biases2_7_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_7_ce0 = d_biases2_7_ce0_local;
assign d_biases2_8_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_8_ce0 = d_biases2_8_ce0_local;
assign d_biases2_9_address0 = zext_ln121_fu_1099_p1;
assign d_biases2_9_ce0 = d_biases2_9_ce0_local;
assign grp_fu_1947_p_ce = 1'b1;
assign grp_fu_1947_p_din0 = grp_fu_1053_p0;
assign grp_fu_1947_p_din1 = grp_fu_1053_p1;
assign grp_fu_1947_p_opcode = grp_fu_1053_opcode;
assign grp_fu_1951_p_ce = 1'b1;
assign grp_fu_1951_p_din0 = grp_fu_1057_p0;
assign grp_fu_1951_p_din1 = grp_fu_1057_p1;
assign icmp_ln158_fu_1075_p2 = ((ap_sig_allocacmp_i_2 == 7'd64) ? 1'b1 : 1'b0);
assign tmp_7_fu_1167_p65 = 'bx;
assign tmp_8_fu_1434_p10 = biases2_4_q0;
assign tmp_8_fu_1434_p12 = biases2_5_q0;
assign tmp_8_fu_1434_p14 = biases2_6_q0;
assign tmp_8_fu_1434_p16 = biases2_7_q0;
assign tmp_8_fu_1434_p18 = biases2_8_q0;
assign tmp_8_fu_1434_p2 = biases2_0_q0;
assign tmp_8_fu_1434_p20 = biases2_9_q0;
assign tmp_8_fu_1434_p22 = biases2_10_q0;
assign tmp_8_fu_1434_p24 = biases2_11_q0;
assign tmp_8_fu_1434_p26 = biases2_12_q0;
assign tmp_8_fu_1434_p28 = biases2_13_q0;
assign tmp_8_fu_1434_p30 = biases2_14_q0;
assign tmp_8_fu_1434_p32 = biases2_15_q0;
assign tmp_8_fu_1434_p34 = biases2_16_q0;
assign tmp_8_fu_1434_p36 = biases2_17_q0;
assign tmp_8_fu_1434_p38 = biases2_18_q0;
assign tmp_8_fu_1434_p4 = biases2_1_q0;
assign tmp_8_fu_1434_p40 = biases2_19_q0;
assign tmp_8_fu_1434_p42 = biases2_20_q0;
assign tmp_8_fu_1434_p44 = biases2_21_q0;
assign tmp_8_fu_1434_p46 = biases2_22_q0;
assign tmp_8_fu_1434_p48 = biases2_23_q0;
assign tmp_8_fu_1434_p50 = biases2_24_q0;
assign tmp_8_fu_1434_p52 = biases2_25_q0;
assign tmp_8_fu_1434_p54 = biases2_26_q0;
assign tmp_8_fu_1434_p56 = biases2_27_q0;
assign tmp_8_fu_1434_p58 = biases2_28_q0;
assign tmp_8_fu_1434_p6 = biases2_2_q0;
assign tmp_8_fu_1434_p60 = biases2_29_q0;
assign tmp_8_fu_1434_p62 = biases2_30_q0;
assign tmp_8_fu_1434_p64 = biases2_31_q0;
assign tmp_8_fu_1434_p65 = 'bx;
assign tmp_8_fu_1434_p8 = biases2_3_q0;
assign tmp_fu_1091_p3 = ap_sig_allocacmp_i_2[32'd5];
assign trunc_ln158_fu_1087_p1 = ap_sig_allocacmp_i_2[4:0];
assign zext_ln121_fu_1099_p1 = tmp_fu_1091_p3;
endmodule 
