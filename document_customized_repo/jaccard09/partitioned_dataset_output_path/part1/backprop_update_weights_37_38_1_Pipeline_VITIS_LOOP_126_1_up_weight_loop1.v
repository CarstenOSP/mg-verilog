
module backprop_update_weights_37_38_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_31_address0,weights1_31_ce0,weights1_31_we0,weights1_31_d0,weights1_31_q0,weights1_30_address0,weights1_30_ce0,weights1_30_we0,weights1_30_d0,weights1_30_q0,weights1_29_address0,weights1_29_ce0,weights1_29_we0,weights1_29_d0,weights1_29_q0,weights1_28_address0,weights1_28_ce0,weights1_28_we0,weights1_28_d0,weights1_28_q0,weights1_27_address0,weights1_27_ce0,weights1_27_we0,weights1_27_d0,weights1_27_q0,weights1_26_address0,weights1_26_ce0,weights1_26_we0,weights1_26_d0,weights1_26_q0,weights1_25_address0,weights1_25_ce0,weights1_25_we0,weights1_25_d0,weights1_25_q0,weights1_24_address0,weights1_24_ce0,weights1_24_we0,weights1_24_d0,weights1_24_q0,weights1_23_address0,weights1_23_ce0,weights1_23_we0,weights1_23_d0,weights1_23_q0,weights1_22_address0,weights1_22_ce0,weights1_22_we0,weights1_22_d0,weights1_22_q0,weights1_21_address0,weights1_21_ce0,weights1_21_we0,weights1_21_d0,weights1_21_q0,weights1_20_address0,weights1_20_ce0,weights1_20_we0,weights1_20_d0,weights1_20_q0,weights1_19_address0,weights1_19_ce0,weights1_19_we0,weights1_19_d0,weights1_19_q0,weights1_18_address0,weights1_18_ce0,weights1_18_we0,weights1_18_d0,weights1_18_q0,weights1_17_address0,weights1_17_ce0,weights1_17_we0,weights1_17_d0,weights1_17_q0,weights1_16_address0,weights1_16_ce0,weights1_16_we0,weights1_16_d0,weights1_16_q0,weights1_15_address0,weights1_15_ce0,weights1_15_we0,weights1_15_d0,weights1_15_q0,weights1_14_address0,weights1_14_ce0,weights1_14_we0,weights1_14_d0,weights1_14_q0,weights1_13_address0,weights1_13_ce0,weights1_13_we0,weights1_13_d0,weights1_13_q0,weights1_12_address0,weights1_12_ce0,weights1_12_we0,weights1_12_d0,weights1_12_q0,weights1_11_address0,weights1_11_ce0,weights1_11_we0,weights1_11_d0,weights1_11_q0,weights1_10_address0,weights1_10_ce0,weights1_10_we0,weights1_10_d0,weights1_10_q0,weights1_9_address0,weights1_9_ce0,weights1_9_we0,weights1_9_d0,weights1_9_q0,weights1_8_address0,weights1_8_ce0,weights1_8_we0,weights1_8_d0,weights1_8_q0,weights1_7_address0,weights1_7_ce0,weights1_7_we0,weights1_7_d0,weights1_7_q0,weights1_6_address0,weights1_6_ce0,weights1_6_we0,weights1_6_d0,weights1_6_q0,weights1_5_address0,weights1_5_ce0,weights1_5_we0,weights1_5_d0,weights1_5_q0,weights1_4_address0,weights1_4_ce0,weights1_4_we0,weights1_4_d0,weights1_4_q0,weights1_3_address0,weights1_3_ce0,weights1_3_we0,weights1_3_d0,weights1_3_q0,weights1_2_address0,weights1_2_ce0,weights1_2_we0,weights1_2_d0,weights1_2_q0,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,d_weights1_0_address0,d_weights1_0_ce0,d_weights1_0_q0,d_weights1_1_address0,d_weights1_1_ce0,d_weights1_1_q0,d_weights1_2_address0,d_weights1_2_ce0,d_weights1_2_q0,d_weights1_3_address0,d_weights1_3_ce0,d_weights1_3_q0,d_weights1_4_address0,d_weights1_4_ce0,d_weights1_4_q0,d_weights1_5_address0,d_weights1_5_ce0,d_weights1_5_q0,d_weights1_6_address0,d_weights1_6_ce0,d_weights1_6_q0,d_weights1_7_address0,d_weights1_7_ce0,d_weights1_7_q0,d_weights1_8_address0,d_weights1_8_ce0,d_weights1_8_q0,d_weights1_9_address0,d_weights1_9_ce0,d_weights1_9_q0,d_weights1_10_address0,d_weights1_10_ce0,d_weights1_10_q0,d_weights1_11_address0,d_weights1_11_ce0,d_weights1_11_q0,d_weights1_12_address0,d_weights1_12_ce0,d_weights1_12_q0,d_weights1_13_address0,d_weights1_13_ce0,d_weights1_13_q0,d_weights1_14_address0,d_weights1_14_ce0,d_weights1_14_q0,d_weights1_15_address0,d_weights1_15_ce0,d_weights1_15_q0,d_weights1_16_address0,d_weights1_16_ce0,d_weights1_16_q0,d_weights1_17_address0,d_weights1_17_ce0,d_weights1_17_q0,d_weights1_18_address0,d_weights1_18_ce0,d_weights1_18_q0,d_weights1_19_address0,d_weights1_19_ce0,d_weights1_19_q0,d_weights1_20_address0,d_weights1_20_ce0,d_weights1_20_q0,d_weights1_21_address0,d_weights1_21_ce0,d_weights1_21_q0,d_weights1_22_address0,d_weights1_22_ce0,d_weights1_22_q0,d_weights1_23_address0,d_weights1_23_ce0,d_weights1_23_q0,d_weights1_24_address0,d_weights1_24_ce0,d_weights1_24_q0,d_weights1_25_address0,d_weights1_25_ce0,d_weights1_25_q0,d_weights1_26_address0,d_weights1_26_ce0,d_weights1_26_q0,d_weights1_27_address0,d_weights1_27_ce0,d_weights1_27_q0,d_weights1_28_address0,d_weights1_28_ce0,d_weights1_28_q0,d_weights1_29_address0,d_weights1_29_ce0,d_weights1_29_q0,d_weights1_30_address0,d_weights1_30_ce0,d_weights1_30_q0,d_weights1_31_address0,d_weights1_31_ce0,d_weights1_31_q0,norm_2_out,norm_2_out_ap_vld,grp_fu_1919_p_din0,grp_fu_1919_p_din1,grp_fu_1919_p_opcode,grp_fu_1919_p_dout0,grp_fu_1919_p_ce,grp_fu_1923_p_din0,grp_fu_1923_p_din1,grp_fu_1923_p_dout0,grp_fu_1923_p_ce);  
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
output  [4:0] weights1_31_address0;
output   weights1_31_ce0;
output   weights1_31_we0;
output  [63:0] weights1_31_d0;
input  [63:0] weights1_31_q0;
output  [4:0] weights1_30_address0;
output   weights1_30_ce0;
output   weights1_30_we0;
output  [63:0] weights1_30_d0;
input  [63:0] weights1_30_q0;
output  [4:0] weights1_29_address0;
output   weights1_29_ce0;
output   weights1_29_we0;
output  [63:0] weights1_29_d0;
input  [63:0] weights1_29_q0;
output  [4:0] weights1_28_address0;
output   weights1_28_ce0;
output   weights1_28_we0;
output  [63:0] weights1_28_d0;
input  [63:0] weights1_28_q0;
output  [4:0] weights1_27_address0;
output   weights1_27_ce0;
output   weights1_27_we0;
output  [63:0] weights1_27_d0;
input  [63:0] weights1_27_q0;
output  [4:0] weights1_26_address0;
output   weights1_26_ce0;
output   weights1_26_we0;
output  [63:0] weights1_26_d0;
input  [63:0] weights1_26_q0;
output  [4:0] weights1_25_address0;
output   weights1_25_ce0;
output   weights1_25_we0;
output  [63:0] weights1_25_d0;
input  [63:0] weights1_25_q0;
output  [4:0] weights1_24_address0;
output   weights1_24_ce0;
output   weights1_24_we0;
output  [63:0] weights1_24_d0;
input  [63:0] weights1_24_q0;
output  [4:0] weights1_23_address0;
output   weights1_23_ce0;
output   weights1_23_we0;
output  [63:0] weights1_23_d0;
input  [63:0] weights1_23_q0;
output  [4:0] weights1_22_address0;
output   weights1_22_ce0;
output   weights1_22_we0;
output  [63:0] weights1_22_d0;
input  [63:0] weights1_22_q0;
output  [4:0] weights1_21_address0;
output   weights1_21_ce0;
output   weights1_21_we0;
output  [63:0] weights1_21_d0;
input  [63:0] weights1_21_q0;
output  [4:0] weights1_20_address0;
output   weights1_20_ce0;
output   weights1_20_we0;
output  [63:0] weights1_20_d0;
input  [63:0] weights1_20_q0;
output  [4:0] weights1_19_address0;
output   weights1_19_ce0;
output   weights1_19_we0;
output  [63:0] weights1_19_d0;
input  [63:0] weights1_19_q0;
output  [4:0] weights1_18_address0;
output   weights1_18_ce0;
output   weights1_18_we0;
output  [63:0] weights1_18_d0;
input  [63:0] weights1_18_q0;
output  [4:0] weights1_17_address0;
output   weights1_17_ce0;
output   weights1_17_we0;
output  [63:0] weights1_17_d0;
input  [63:0] weights1_17_q0;
output  [4:0] weights1_16_address0;
output   weights1_16_ce0;
output   weights1_16_we0;
output  [63:0] weights1_16_d0;
input  [63:0] weights1_16_q0;
output  [4:0] weights1_15_address0;
output   weights1_15_ce0;
output   weights1_15_we0;
output  [63:0] weights1_15_d0;
input  [63:0] weights1_15_q0;
output  [4:0] weights1_14_address0;
output   weights1_14_ce0;
output   weights1_14_we0;
output  [63:0] weights1_14_d0;
input  [63:0] weights1_14_q0;
output  [4:0] weights1_13_address0;
output   weights1_13_ce0;
output   weights1_13_we0;
output  [63:0] weights1_13_d0;
input  [63:0] weights1_13_q0;
output  [4:0] weights1_12_address0;
output   weights1_12_ce0;
output   weights1_12_we0;
output  [63:0] weights1_12_d0;
input  [63:0] weights1_12_q0;
output  [4:0] weights1_11_address0;
output   weights1_11_ce0;
output   weights1_11_we0;
output  [63:0] weights1_11_d0;
input  [63:0] weights1_11_q0;
output  [4:0] weights1_10_address0;
output   weights1_10_ce0;
output   weights1_10_we0;
output  [63:0] weights1_10_d0;
input  [63:0] weights1_10_q0;
output  [4:0] weights1_9_address0;
output   weights1_9_ce0;
output   weights1_9_we0;
output  [63:0] weights1_9_d0;
input  [63:0] weights1_9_q0;
output  [4:0] weights1_8_address0;
output   weights1_8_ce0;
output   weights1_8_we0;
output  [63:0] weights1_8_d0;
input  [63:0] weights1_8_q0;
output  [4:0] weights1_7_address0;
output   weights1_7_ce0;
output   weights1_7_we0;
output  [63:0] weights1_7_d0;
input  [63:0] weights1_7_q0;
output  [4:0] weights1_6_address0;
output   weights1_6_ce0;
output   weights1_6_we0;
output  [63:0] weights1_6_d0;
input  [63:0] weights1_6_q0;
output  [4:0] weights1_5_address0;
output   weights1_5_ce0;
output   weights1_5_we0;
output  [63:0] weights1_5_d0;
input  [63:0] weights1_5_q0;
output  [4:0] weights1_4_address0;
output   weights1_4_ce0;
output   weights1_4_we0;
output  [63:0] weights1_4_d0;
input  [63:0] weights1_4_q0;
output  [4:0] weights1_3_address0;
output   weights1_3_ce0;
output   weights1_3_we0;
output  [63:0] weights1_3_d0;
input  [63:0] weights1_3_q0;
output  [4:0] weights1_2_address0;
output   weights1_2_ce0;
output   weights1_2_we0;
output  [63:0] weights1_2_d0;
input  [63:0] weights1_2_q0;
output  [4:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
input  [63:0] weights1_1_q0;
output  [4:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
input  [63:0] weights1_0_q0;
output  [4:0] d_weights1_0_address0;
output   d_weights1_0_ce0;
input  [63:0] d_weights1_0_q0;
output  [4:0] d_weights1_1_address0;
output   d_weights1_1_ce0;
input  [63:0] d_weights1_1_q0;
output  [4:0] d_weights1_2_address0;
output   d_weights1_2_ce0;
input  [63:0] d_weights1_2_q0;
output  [4:0] d_weights1_3_address0;
output   d_weights1_3_ce0;
input  [63:0] d_weights1_3_q0;
output  [4:0] d_weights1_4_address0;
output   d_weights1_4_ce0;
input  [63:0] d_weights1_4_q0;
output  [4:0] d_weights1_5_address0;
output   d_weights1_5_ce0;
input  [63:0] d_weights1_5_q0;
output  [4:0] d_weights1_6_address0;
output   d_weights1_6_ce0;
input  [63:0] d_weights1_6_q0;
output  [4:0] d_weights1_7_address0;
output   d_weights1_7_ce0;
input  [63:0] d_weights1_7_q0;
output  [4:0] d_weights1_8_address0;
output   d_weights1_8_ce0;
input  [63:0] d_weights1_8_q0;
output  [4:0] d_weights1_9_address0;
output   d_weights1_9_ce0;
input  [63:0] d_weights1_9_q0;
output  [4:0] d_weights1_10_address0;
output   d_weights1_10_ce0;
input  [63:0] d_weights1_10_q0;
output  [4:0] d_weights1_11_address0;
output   d_weights1_11_ce0;
input  [63:0] d_weights1_11_q0;
output  [4:0] d_weights1_12_address0;
output   d_weights1_12_ce0;
input  [63:0] d_weights1_12_q0;
output  [4:0] d_weights1_13_address0;
output   d_weights1_13_ce0;
input  [63:0] d_weights1_13_q0;
output  [4:0] d_weights1_14_address0;
output   d_weights1_14_ce0;
input  [63:0] d_weights1_14_q0;
output  [4:0] d_weights1_15_address0;
output   d_weights1_15_ce0;
input  [63:0] d_weights1_15_q0;
output  [4:0] d_weights1_16_address0;
output   d_weights1_16_ce0;
input  [63:0] d_weights1_16_q0;
output  [4:0] d_weights1_17_address0;
output   d_weights1_17_ce0;
input  [63:0] d_weights1_17_q0;
output  [4:0] d_weights1_18_address0;
output   d_weights1_18_ce0;
input  [63:0] d_weights1_18_q0;
output  [4:0] d_weights1_19_address0;
output   d_weights1_19_ce0;
input  [63:0] d_weights1_19_q0;
output  [4:0] d_weights1_20_address0;
output   d_weights1_20_ce0;
input  [63:0] d_weights1_20_q0;
output  [4:0] d_weights1_21_address0;
output   d_weights1_21_ce0;
input  [63:0] d_weights1_21_q0;
output  [4:0] d_weights1_22_address0;
output   d_weights1_22_ce0;
input  [63:0] d_weights1_22_q0;
output  [4:0] d_weights1_23_address0;
output   d_weights1_23_ce0;
input  [63:0] d_weights1_23_q0;
output  [4:0] d_weights1_24_address0;
output   d_weights1_24_ce0;
input  [63:0] d_weights1_24_q0;
output  [4:0] d_weights1_25_address0;
output   d_weights1_25_ce0;
input  [63:0] d_weights1_25_q0;
output  [4:0] d_weights1_26_address0;
output   d_weights1_26_ce0;
input  [63:0] d_weights1_26_q0;
output  [4:0] d_weights1_27_address0;
output   d_weights1_27_ce0;
input  [63:0] d_weights1_27_q0;
output  [4:0] d_weights1_28_address0;
output   d_weights1_28_ce0;
input  [63:0] d_weights1_28_q0;
output  [4:0] d_weights1_29_address0;
output   d_weights1_29_ce0;
input  [63:0] d_weights1_29_q0;
output  [4:0] d_weights1_30_address0;
output   d_weights1_30_ce0;
input  [63:0] d_weights1_30_q0;
output  [4:0] d_weights1_31_address0;
output   d_weights1_31_ce0;
input  [63:0] d_weights1_31_q0;
output  [63:0] norm_2_out;
output   norm_2_out_ap_vld;
output  [63:0] grp_fu_1919_p_din0;
output  [63:0] grp_fu_1919_p_din1;
output  [1:0] grp_fu_1919_p_opcode;
input  [63:0] grp_fu_1919_p_dout0;
output   grp_fu_1919_p_ce;
output  [63:0] grp_fu_1923_p_din0;
output  [63:0] grp_fu_1923_p_din1;
input  [63:0] grp_fu_1923_p_dout0;
output   grp_fu_1923_p_ce;
reg ap_idle;
reg norm_2_out_ap_vld;
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
reg   [0:0] icmp_ln126_reg_1732;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln126_fu_1137_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln126_reg_1732_pp0_iter1_reg;
reg   [0:0] icmp_ln126_reg_1732_pp0_iter2_reg;
reg   [0:0] icmp_ln126_reg_1732_pp0_iter3_reg;
wire   [9:0] add_ln126_fu_1143_p2;
reg   [9:0] add_ln126_reg_1736;
wire   [6:0] select_ln121_fu_1161_p3;
reg   [6:0] select_ln121_reg_1741;
wire   [3:0] select_ln126_fu_1175_p3;
reg   [3:0] select_ln126_reg_1746;
wire   [4:0] trunc_ln127_fu_1183_p1;
reg   [4:0] trunc_ln127_reg_1751;
reg   [4:0] trunc_ln127_reg_1751_pp0_iter1_reg;
reg   [4:0] trunc_ln127_reg_1751_pp0_iter2_reg;
wire   [63:0] zext_ln128_fu_1203_p1;
reg   [63:0] zext_ln128_reg_1757;
wire   [63:0] tmp_2_fu_1239_p67;
reg   [63:0] tmp_2_reg_1953;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [4:0] weights1_0_addr_reg_1958;
reg   [4:0] weights1_0_addr_reg_1958_pp0_iter2_reg;
reg   [4:0] weights1_1_addr_reg_1963;
reg   [4:0] weights1_1_addr_reg_1963_pp0_iter2_reg;
reg   [4:0] weights1_2_addr_reg_1968;
reg   [4:0] weights1_2_addr_reg_1968_pp0_iter2_reg;
reg   [4:0] weights1_3_addr_reg_1973;
reg   [4:0] weights1_3_addr_reg_1973_pp0_iter2_reg;
reg   [4:0] weights1_4_addr_reg_1978;
reg   [4:0] weights1_4_addr_reg_1978_pp0_iter2_reg;
reg   [4:0] weights1_5_addr_reg_1983;
reg   [4:0] weights1_5_addr_reg_1983_pp0_iter2_reg;
reg   [4:0] weights1_6_addr_reg_1988;
reg   [4:0] weights1_6_addr_reg_1988_pp0_iter2_reg;
reg   [4:0] weights1_7_addr_reg_1993;
reg   [4:0] weights1_7_addr_reg_1993_pp0_iter2_reg;
reg   [4:0] weights1_8_addr_reg_1998;
reg   [4:0] weights1_8_addr_reg_1998_pp0_iter2_reg;
reg   [4:0] weights1_9_addr_reg_2003;
reg   [4:0] weights1_9_addr_reg_2003_pp0_iter2_reg;
reg   [4:0] weights1_10_addr_reg_2008;
reg   [4:0] weights1_10_addr_reg_2008_pp0_iter2_reg;
reg   [4:0] weights1_11_addr_reg_2013;
reg   [4:0] weights1_11_addr_reg_2013_pp0_iter2_reg;
reg   [4:0] weights1_12_addr_reg_2018;
reg   [4:0] weights1_12_addr_reg_2018_pp0_iter2_reg;
reg   [4:0] weights1_13_addr_reg_2023;
reg   [4:0] weights1_13_addr_reg_2023_pp0_iter2_reg;
reg   [4:0] weights1_14_addr_reg_2028;
reg   [4:0] weights1_14_addr_reg_2028_pp0_iter2_reg;
reg   [4:0] weights1_15_addr_reg_2033;
reg   [4:0] weights1_15_addr_reg_2033_pp0_iter2_reg;
reg   [4:0] weights1_16_addr_reg_2038;
reg   [4:0] weights1_16_addr_reg_2038_pp0_iter2_reg;
reg   [4:0] weights1_17_addr_reg_2043;
reg   [4:0] weights1_17_addr_reg_2043_pp0_iter2_reg;
reg   [4:0] weights1_18_addr_reg_2048;
reg   [4:0] weights1_18_addr_reg_2048_pp0_iter2_reg;
reg   [4:0] weights1_19_addr_reg_2053;
reg   [4:0] weights1_19_addr_reg_2053_pp0_iter2_reg;
reg   [4:0] weights1_20_addr_reg_2058;
reg   [4:0] weights1_20_addr_reg_2058_pp0_iter2_reg;
reg   [4:0] weights1_21_addr_reg_2063;
reg   [4:0] weights1_21_addr_reg_2063_pp0_iter2_reg;
reg   [4:0] weights1_22_addr_reg_2068;
reg   [4:0] weights1_22_addr_reg_2068_pp0_iter2_reg;
reg   [4:0] weights1_23_addr_reg_2073;
reg   [4:0] weights1_23_addr_reg_2073_pp0_iter2_reg;
reg   [4:0] weights1_24_addr_reg_2078;
reg   [4:0] weights1_24_addr_reg_2078_pp0_iter2_reg;
reg   [4:0] weights1_25_addr_reg_2083;
reg   [4:0] weights1_25_addr_reg_2083_pp0_iter2_reg;
reg   [4:0] weights1_26_addr_reg_2088;
reg   [4:0] weights1_26_addr_reg_2088_pp0_iter2_reg;
reg   [4:0] weights1_27_addr_reg_2093;
reg   [4:0] weights1_27_addr_reg_2093_pp0_iter2_reg;
reg   [4:0] weights1_28_addr_reg_2098;
reg   [4:0] weights1_28_addr_reg_2098_pp0_iter2_reg;
reg   [4:0] weights1_29_addr_reg_2103;
reg   [4:0] weights1_29_addr_reg_2103_pp0_iter2_reg;
reg   [4:0] weights1_30_addr_reg_2108;
reg   [4:0] weights1_30_addr_reg_2108_pp0_iter2_reg;
reg   [4:0] weights1_31_addr_reg_2113;
reg   [4:0] weights1_31_addr_reg_2113_pp0_iter2_reg;
reg   [63:0] mul4_reg_2118;
wire   [63:0] tmp_3_fu_1520_p67;
reg   [63:0] tmp_3_reg_2123;
reg   [63:0] sub_reg_2128;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] mul2_reg_2135;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_2_fu_250;
reg   [63:0] ap_sig_allocacmp_norm_2_load;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage4;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] j_fu_254;
wire   [6:0] add_ln127_fu_1374_p2;
reg   [3:0] i_fu_258;
reg   [9:0] indvar_flatten_fu_262;
wire    ap_block_pp0_stage4_01001;
reg    d_weights1_0_ce0_local;
reg    d_weights1_1_ce0_local;
reg    d_weights1_2_ce0_local;
reg    d_weights1_3_ce0_local;
reg    d_weights1_4_ce0_local;
reg    d_weights1_5_ce0_local;
reg    d_weights1_6_ce0_local;
reg    d_weights1_7_ce0_local;
reg    d_weights1_8_ce0_local;
reg    d_weights1_9_ce0_local;
reg    d_weights1_10_ce0_local;
reg    d_weights1_11_ce0_local;
reg    d_weights1_12_ce0_local;
reg    d_weights1_13_ce0_local;
reg    d_weights1_14_ce0_local;
reg    d_weights1_15_ce0_local;
reg    d_weights1_16_ce0_local;
reg    d_weights1_17_ce0_local;
reg    d_weights1_18_ce0_local;
reg    d_weights1_19_ce0_local;
reg    d_weights1_20_ce0_local;
reg    d_weights1_21_ce0_local;
reg    d_weights1_22_ce0_local;
reg    d_weights1_23_ce0_local;
reg    d_weights1_24_ce0_local;
reg    d_weights1_25_ce0_local;
reg    d_weights1_26_ce0_local;
reg    d_weights1_27_ce0_local;
reg    d_weights1_28_ce0_local;
reg    d_weights1_29_ce0_local;
reg    d_weights1_30_ce0_local;
reg    d_weights1_31_ce0_local;
reg    weights1_0_ce0_local;
reg   [4:0] weights1_0_address0_local;
reg    weights1_0_we0_local;
reg    ap_predicate_pred979_state19;
wire   [63:0] bitcast_ln128_32_fu_1655_p1;
reg    weights1_1_ce0_local;
reg   [4:0] weights1_1_address0_local;
reg    weights1_1_we0_local;
reg    ap_predicate_pred992_state19;
reg    weights1_2_ce0_local;
reg   [4:0] weights1_2_address0_local;
reg    weights1_2_we0_local;
reg    ap_predicate_pred1002_state19;
reg    weights1_3_ce0_local;
reg   [4:0] weights1_3_address0_local;
reg    weights1_3_we0_local;
reg    ap_predicate_pred1012_state19;
reg    weights1_4_ce0_local;
reg   [4:0] weights1_4_address0_local;
reg    weights1_4_we0_local;
reg    ap_predicate_pred1022_state19;
reg    weights1_5_ce0_local;
reg   [4:0] weights1_5_address0_local;
reg    weights1_5_we0_local;
reg    ap_predicate_pred1032_state19;
reg    weights1_6_ce0_local;
reg   [4:0] weights1_6_address0_local;
reg    weights1_6_we0_local;
reg    ap_predicate_pred1042_state19;
reg    weights1_7_ce0_local;
reg   [4:0] weights1_7_address0_local;
reg    weights1_7_we0_local;
reg    ap_predicate_pred1052_state19;
reg    weights1_8_ce0_local;
reg   [4:0] weights1_8_address0_local;
reg    weights1_8_we0_local;
reg    ap_predicate_pred1062_state19;
reg    weights1_9_ce0_local;
reg   [4:0] weights1_9_address0_local;
reg    weights1_9_we0_local;
reg    ap_predicate_pred1072_state19;
reg    weights1_10_ce0_local;
reg   [4:0] weights1_10_address0_local;
reg    weights1_10_we0_local;
reg    ap_predicate_pred1082_state19;
reg    weights1_11_ce0_local;
reg   [4:0] weights1_11_address0_local;
reg    weights1_11_we0_local;
reg    ap_predicate_pred1092_state19;
reg    weights1_12_ce0_local;
reg   [4:0] weights1_12_address0_local;
reg    weights1_12_we0_local;
reg    ap_predicate_pred1102_state19;
reg    weights1_13_ce0_local;
reg   [4:0] weights1_13_address0_local;
reg    weights1_13_we0_local;
reg    ap_predicate_pred1112_state19;
reg    weights1_14_ce0_local;
reg   [4:0] weights1_14_address0_local;
reg    weights1_14_we0_local;
reg    ap_predicate_pred1122_state19;
reg    weights1_15_ce0_local;
reg   [4:0] weights1_15_address0_local;
reg    weights1_15_we0_local;
reg    ap_predicate_pred1132_state19;
reg    weights1_16_ce0_local;
reg   [4:0] weights1_16_address0_local;
reg    weights1_16_we0_local;
reg    ap_predicate_pred1142_state19;
reg    weights1_17_ce0_local;
reg   [4:0] weights1_17_address0_local;
reg    weights1_17_we0_local;
reg    ap_predicate_pred1152_state19;
reg    weights1_18_ce0_local;
reg   [4:0] weights1_18_address0_local;
reg    weights1_18_we0_local;
reg    ap_predicate_pred1162_state19;
reg    weights1_19_ce0_local;
reg   [4:0] weights1_19_address0_local;
reg    weights1_19_we0_local;
reg    ap_predicate_pred1172_state19;
reg    weights1_20_ce0_local;
reg   [4:0] weights1_20_address0_local;
reg    weights1_20_we0_local;
reg    ap_predicate_pred1182_state19;
reg    weights1_21_ce0_local;
reg   [4:0] weights1_21_address0_local;
reg    weights1_21_we0_local;
reg    ap_predicate_pred1192_state19;
reg    weights1_22_ce0_local;
reg   [4:0] weights1_22_address0_local;
reg    weights1_22_we0_local;
reg    ap_predicate_pred1202_state19;
reg    weights1_23_ce0_local;
reg   [4:0] weights1_23_address0_local;
reg    weights1_23_we0_local;
reg    ap_predicate_pred1212_state19;
reg    weights1_24_ce0_local;
reg   [4:0] weights1_24_address0_local;
reg    weights1_24_we0_local;
reg    ap_predicate_pred1222_state19;
reg    weights1_25_ce0_local;
reg   [4:0] weights1_25_address0_local;
reg    weights1_25_we0_local;
reg    ap_predicate_pred1232_state19;
reg    weights1_26_ce0_local;
reg   [4:0] weights1_26_address0_local;
reg    weights1_26_we0_local;
reg    ap_predicate_pred1242_state19;
reg    weights1_27_ce0_local;
reg   [4:0] weights1_27_address0_local;
reg    weights1_27_we0_local;
reg    ap_predicate_pred1252_state19;
reg    weights1_28_ce0_local;
reg   [4:0] weights1_28_address0_local;
reg    weights1_28_we0_local;
reg    ap_predicate_pred1262_state19;
reg    weights1_29_ce0_local;
reg   [4:0] weights1_29_address0_local;
reg    weights1_29_we0_local;
reg    ap_predicate_pred1272_state19;
reg    weights1_30_ce0_local;
reg   [4:0] weights1_30_address0_local;
reg    weights1_30_we0_local;
reg    ap_predicate_pred1282_state19;
reg    weights1_31_ce0_local;
reg   [4:0] weights1_31_address0_local;
reg    weights1_31_we0_local;
reg    ap_predicate_pred1292_state19;
wire    ap_block_pp0_stage0;
reg   [63:0] grp_fu_1105_p0;
reg   [63:0] grp_fu_1105_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_1109_p0;
reg   [63:0] grp_fu_1109_p1;
wire   [0:0] icmp_ln127_fu_1155_p2;
wire   [3:0] add_ln126_1_fu_1169_p2;
wire   [0:0] tmp_fu_1187_p3;
wire   [4:0] or_ln_fu_1195_p3;
wire   [63:0] tmp_2_fu_1239_p65;
wire    ap_block_pp0_stage2;
wire   [63:0] tmp_3_fu_1520_p2;
wire   [63:0] tmp_3_fu_1520_p4;
wire   [63:0] tmp_3_fu_1520_p6;
wire   [63:0] tmp_3_fu_1520_p8;
wire   [63:0] tmp_3_fu_1520_p10;
wire   [63:0] tmp_3_fu_1520_p12;
wire   [63:0] tmp_3_fu_1520_p14;
wire   [63:0] tmp_3_fu_1520_p16;
wire   [63:0] tmp_3_fu_1520_p18;
wire   [63:0] tmp_3_fu_1520_p20;
wire   [63:0] tmp_3_fu_1520_p22;
wire   [63:0] tmp_3_fu_1520_p24;
wire   [63:0] tmp_3_fu_1520_p26;
wire   [63:0] tmp_3_fu_1520_p28;
wire   [63:0] tmp_3_fu_1520_p30;
wire   [63:0] tmp_3_fu_1520_p32;
wire   [63:0] tmp_3_fu_1520_p34;
wire   [63:0] tmp_3_fu_1520_p36;
wire   [63:0] tmp_3_fu_1520_p38;
wire   [63:0] tmp_3_fu_1520_p40;
wire   [63:0] tmp_3_fu_1520_p42;
wire   [63:0] tmp_3_fu_1520_p44;
wire   [63:0] tmp_3_fu_1520_p46;
wire   [63:0] tmp_3_fu_1520_p48;
wire   [63:0] tmp_3_fu_1520_p50;
wire   [63:0] tmp_3_fu_1520_p52;
wire   [63:0] tmp_3_fu_1520_p54;
wire   [63:0] tmp_3_fu_1520_p56;
wire   [63:0] tmp_3_fu_1520_p58;
wire   [63:0] tmp_3_fu_1520_p60;
wire   [63:0] tmp_3_fu_1520_p62;
wire   [63:0] tmp_3_fu_1520_p64;
wire   [63:0] tmp_3_fu_1520_p65;
reg   [1:0] grp_fu_1105_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_2_fu_1239_p1;
wire   [4:0] tmp_2_fu_1239_p3;
wire   [4:0] tmp_2_fu_1239_p5;
wire   [4:0] tmp_2_fu_1239_p7;
wire   [4:0] tmp_2_fu_1239_p9;
wire   [4:0] tmp_2_fu_1239_p11;
wire   [4:0] tmp_2_fu_1239_p13;
wire   [4:0] tmp_2_fu_1239_p15;
wire   [4:0] tmp_2_fu_1239_p17;
wire   [4:0] tmp_2_fu_1239_p19;
wire   [4:0] tmp_2_fu_1239_p21;
wire   [4:0] tmp_2_fu_1239_p23;
wire   [4:0] tmp_2_fu_1239_p25;
wire   [4:0] tmp_2_fu_1239_p27;
wire   [4:0] tmp_2_fu_1239_p29;
wire   [4:0] tmp_2_fu_1239_p31;
wire  signed [4:0] tmp_2_fu_1239_p33;
wire  signed [4:0] tmp_2_fu_1239_p35;
wire  signed [4:0] tmp_2_fu_1239_p37;
wire  signed [4:0] tmp_2_fu_1239_p39;
wire  signed [4:0] tmp_2_fu_1239_p41;
wire  signed [4:0] tmp_2_fu_1239_p43;
wire  signed [4:0] tmp_2_fu_1239_p45;
wire  signed [4:0] tmp_2_fu_1239_p47;
wire  signed [4:0] tmp_2_fu_1239_p49;
wire  signed [4:0] tmp_2_fu_1239_p51;
wire  signed [4:0] tmp_2_fu_1239_p53;
wire  signed [4:0] tmp_2_fu_1239_p55;
wire  signed [4:0] tmp_2_fu_1239_p57;
wire  signed [4:0] tmp_2_fu_1239_p59;
wire  signed [4:0] tmp_2_fu_1239_p61;
wire  signed [4:0] tmp_2_fu_1239_p63;
wire   [4:0] tmp_3_fu_1520_p1;
wire   [4:0] tmp_3_fu_1520_p3;
wire   [4:0] tmp_3_fu_1520_p5;
wire   [4:0] tmp_3_fu_1520_p7;
wire   [4:0] tmp_3_fu_1520_p9;
wire   [4:0] tmp_3_fu_1520_p11;
wire   [4:0] tmp_3_fu_1520_p13;
wire   [4:0] tmp_3_fu_1520_p15;
wire   [4:0] tmp_3_fu_1520_p17;
wire   [4:0] tmp_3_fu_1520_p19;
wire   [4:0] tmp_3_fu_1520_p21;
wire   [4:0] tmp_3_fu_1520_p23;
wire   [4:0] tmp_3_fu_1520_p25;
wire   [4:0] tmp_3_fu_1520_p27;
wire   [4:0] tmp_3_fu_1520_p29;
wire   [4:0] tmp_3_fu_1520_p31;
wire  signed [4:0] tmp_3_fu_1520_p33;
wire  signed [4:0] tmp_3_fu_1520_p35;
wire  signed [4:0] tmp_3_fu_1520_p37;
wire  signed [4:0] tmp_3_fu_1520_p39;
wire  signed [4:0] tmp_3_fu_1520_p41;
wire  signed [4:0] tmp_3_fu_1520_p43;
wire  signed [4:0] tmp_3_fu_1520_p45;
wire  signed [4:0] tmp_3_fu_1520_p47;
wire  signed [4:0] tmp_3_fu_1520_p49;
wire  signed [4:0] tmp_3_fu_1520_p51;
wire  signed [4:0] tmp_3_fu_1520_p53;
wire  signed [4:0] tmp_3_fu_1520_p55;
wire  signed [4:0] tmp_3_fu_1520_p57;
wire  signed [4:0] tmp_3_fu_1520_p59;
wire  signed [4:0] tmp_3_fu_1520_p61;
wire  signed [4:0] tmp_3_fu_1520_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_2_fu_250 = 64'd0;
#0 j_fu_254 = 7'd0;
#0 i_fu_258 = 4'd0;
#0 indvar_flatten_fu_262 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1485(.din0(d_weights1_0_q0),.din1(d_weights1_1_q0),.din2(d_weights1_2_q0),.din3(d_weights1_3_q0),.din4(d_weights1_4_q0),.din5(d_weights1_5_q0),.din6(d_weights1_6_q0),.din7(d_weights1_7_q0),.din8(d_weights1_8_q0),.din9(d_weights1_9_q0),.din10(d_weights1_10_q0),.din11(d_weights1_11_q0),.din12(d_weights1_12_q0),.din13(d_weights1_13_q0),.din14(d_weights1_14_q0),.din15(d_weights1_15_q0),.din16(d_weights1_16_q0),.din17(d_weights1_17_q0),.din18(d_weights1_18_q0),.din19(d_weights1_19_q0),.din20(d_weights1_20_q0),.din21(d_weights1_21_q0),.din22(d_weights1_22_q0),.din23(d_weights1_23_q0),.din24(d_weights1_24_q0),.din25(d_weights1_25_q0),.din26(d_weights1_26_q0),.din27(d_weights1_27_q0),.din28(d_weights1_28_q0),.din29(d_weights1_29_q0),.din30(d_weights1_30_q0),.din31(d_weights1_31_q0),.def(tmp_2_fu_1239_p65),.sel(trunc_ln127_reg_1751),.dout(tmp_2_fu_1239_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1486(.din0(tmp_3_fu_1520_p2),.din1(tmp_3_fu_1520_p4),.din2(tmp_3_fu_1520_p6),.din3(tmp_3_fu_1520_p8),.din4(tmp_3_fu_1520_p10),.din5(tmp_3_fu_1520_p12),.din6(tmp_3_fu_1520_p14),.din7(tmp_3_fu_1520_p16),.din8(tmp_3_fu_1520_p18),.din9(tmp_3_fu_1520_p20),.din10(tmp_3_fu_1520_p22),.din11(tmp_3_fu_1520_p24),.din12(tmp_3_fu_1520_p26),.din13(tmp_3_fu_1520_p28),.din14(tmp_3_fu_1520_p30),.din15(tmp_3_fu_1520_p32),.din16(tmp_3_fu_1520_p34),.din17(tmp_3_fu_1520_p36),.din18(tmp_3_fu_1520_p38),.din19(tmp_3_fu_1520_p40),.din20(tmp_3_fu_1520_p42),.din21(tmp_3_fu_1520_p44),.din22(tmp_3_fu_1520_p46),.din23(tmp_3_fu_1520_p48),.din24(tmp_3_fu_1520_p50),.din25(tmp_3_fu_1520_p52),.din26(tmp_3_fu_1520_p54),.din27(tmp_3_fu_1520_p56),.din28(tmp_3_fu_1520_p58),.din29(tmp_3_fu_1520_p60),.din30(tmp_3_fu_1520_p62),.din31(tmp_3_fu_1520_p64),.def(tmp_3_fu_1520_p65),.sel(trunc_ln127_reg_1751_pp0_iter1_reg),.dout(tmp_3_fu_1520_p67));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_258 <= 4'd0;
    end else if (((icmp_ln126_reg_1732 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_258 <= select_ln126_reg_1746;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_262 <= 10'd0;
    end else if (((icmp_ln126_reg_1732 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten_fu_262 <= add_ln126_reg_1736;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_254 <= 7'd0;
    end else if (((icmp_ln126_reg_1732 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_254 <= add_ln127_fu_1374_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_2_fu_250 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_2_fu_250 <= grp_fu_1919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln126_reg_1736 <= add_ln126_fu_1143_p2;
        icmp_ln126_reg_1732 <= icmp_ln126_fu_1137_p2;
        icmp_ln126_reg_1732_pp0_iter1_reg <= icmp_ln126_reg_1732;
        icmp_ln126_reg_1732_pp0_iter2_reg <= icmp_ln126_reg_1732_pp0_iter1_reg;
        icmp_ln126_reg_1732_pp0_iter3_reg <= icmp_ln126_reg_1732_pp0_iter2_reg;
        select_ln121_reg_1741 <= select_ln121_fu_1161_p3;
        select_ln126_reg_1746 <= select_ln126_fu_1175_p3;
        trunc_ln127_reg_1751 <= trunc_ln127_fu_1183_p1;
        trunc_ln127_reg_1751_pp0_iter1_reg <= trunc_ln127_reg_1751;
        trunc_ln127_reg_1751_pp0_iter2_reg <= trunc_ln127_reg_1751_pp0_iter1_reg;
        weights1_0_addr_reg_1958 <= zext_ln128_reg_1757;
        weights1_0_addr_reg_1958_pp0_iter2_reg <= weights1_0_addr_reg_1958;
        weights1_10_addr_reg_2008 <= zext_ln128_reg_1757;
        weights1_10_addr_reg_2008_pp0_iter2_reg <= weights1_10_addr_reg_2008;
        weights1_11_addr_reg_2013 <= zext_ln128_reg_1757;
        weights1_11_addr_reg_2013_pp0_iter2_reg <= weights1_11_addr_reg_2013;
        weights1_12_addr_reg_2018 <= zext_ln128_reg_1757;
        weights1_12_addr_reg_2018_pp0_iter2_reg <= weights1_12_addr_reg_2018;
        weights1_13_addr_reg_2023 <= zext_ln128_reg_1757;
        weights1_13_addr_reg_2023_pp0_iter2_reg <= weights1_13_addr_reg_2023;
        weights1_14_addr_reg_2028 <= zext_ln128_reg_1757;
        weights1_14_addr_reg_2028_pp0_iter2_reg <= weights1_14_addr_reg_2028;
        weights1_15_addr_reg_2033 <= zext_ln128_reg_1757;
        weights1_15_addr_reg_2033_pp0_iter2_reg <= weights1_15_addr_reg_2033;
        weights1_16_addr_reg_2038 <= zext_ln128_reg_1757;
        weights1_16_addr_reg_2038_pp0_iter2_reg <= weights1_16_addr_reg_2038;
        weights1_17_addr_reg_2043 <= zext_ln128_reg_1757;
        weights1_17_addr_reg_2043_pp0_iter2_reg <= weights1_17_addr_reg_2043;
        weights1_18_addr_reg_2048 <= zext_ln128_reg_1757;
        weights1_18_addr_reg_2048_pp0_iter2_reg <= weights1_18_addr_reg_2048;
        weights1_19_addr_reg_2053 <= zext_ln128_reg_1757;
        weights1_19_addr_reg_2053_pp0_iter2_reg <= weights1_19_addr_reg_2053;
        weights1_1_addr_reg_1963 <= zext_ln128_reg_1757;
        weights1_1_addr_reg_1963_pp0_iter2_reg <= weights1_1_addr_reg_1963;
        weights1_20_addr_reg_2058 <= zext_ln128_reg_1757;
        weights1_20_addr_reg_2058_pp0_iter2_reg <= weights1_20_addr_reg_2058;
        weights1_21_addr_reg_2063 <= zext_ln128_reg_1757;
        weights1_21_addr_reg_2063_pp0_iter2_reg <= weights1_21_addr_reg_2063;
        weights1_22_addr_reg_2068 <= zext_ln128_reg_1757;
        weights1_22_addr_reg_2068_pp0_iter2_reg <= weights1_22_addr_reg_2068;
        weights1_23_addr_reg_2073 <= zext_ln128_reg_1757;
        weights1_23_addr_reg_2073_pp0_iter2_reg <= weights1_23_addr_reg_2073;
        weights1_24_addr_reg_2078 <= zext_ln128_reg_1757;
        weights1_24_addr_reg_2078_pp0_iter2_reg <= weights1_24_addr_reg_2078;
        weights1_25_addr_reg_2083 <= zext_ln128_reg_1757;
        weights1_25_addr_reg_2083_pp0_iter2_reg <= weights1_25_addr_reg_2083;
        weights1_26_addr_reg_2088 <= zext_ln128_reg_1757;
        weights1_26_addr_reg_2088_pp0_iter2_reg <= weights1_26_addr_reg_2088;
        weights1_27_addr_reg_2093 <= zext_ln128_reg_1757;
        weights1_27_addr_reg_2093_pp0_iter2_reg <= weights1_27_addr_reg_2093;
        weights1_28_addr_reg_2098 <= zext_ln128_reg_1757;
        weights1_28_addr_reg_2098_pp0_iter2_reg <= weights1_28_addr_reg_2098;
        weights1_29_addr_reg_2103 <= zext_ln128_reg_1757;
        weights1_29_addr_reg_2103_pp0_iter2_reg <= weights1_29_addr_reg_2103;
        weights1_2_addr_reg_1968 <= zext_ln128_reg_1757;
        weights1_2_addr_reg_1968_pp0_iter2_reg <= weights1_2_addr_reg_1968;
        weights1_30_addr_reg_2108 <= zext_ln128_reg_1757;
        weights1_30_addr_reg_2108_pp0_iter2_reg <= weights1_30_addr_reg_2108;
        weights1_31_addr_reg_2113 <= zext_ln128_reg_1757;
        weights1_31_addr_reg_2113_pp0_iter2_reg <= weights1_31_addr_reg_2113;
        weights1_3_addr_reg_1973 <= zext_ln128_reg_1757;
        weights1_3_addr_reg_1973_pp0_iter2_reg <= weights1_3_addr_reg_1973;
        weights1_4_addr_reg_1978 <= zext_ln128_reg_1757;
        weights1_4_addr_reg_1978_pp0_iter2_reg <= weights1_4_addr_reg_1978;
        weights1_5_addr_reg_1983 <= zext_ln128_reg_1757;
        weights1_5_addr_reg_1983_pp0_iter2_reg <= weights1_5_addr_reg_1983;
        weights1_6_addr_reg_1988 <= zext_ln128_reg_1757;
        weights1_6_addr_reg_1988_pp0_iter2_reg <= weights1_6_addr_reg_1988;
        weights1_7_addr_reg_1993 <= zext_ln128_reg_1757;
        weights1_7_addr_reg_1993_pp0_iter2_reg <= weights1_7_addr_reg_1993;
        weights1_8_addr_reg_1998 <= zext_ln128_reg_1757;
        weights1_8_addr_reg_1998_pp0_iter2_reg <= weights1_8_addr_reg_1998;
        weights1_9_addr_reg_2003 <= zext_ln128_reg_1757;
        weights1_9_addr_reg_2003_pp0_iter2_reg <= weights1_9_addr_reg_2003;
        zext_ln128_reg_1757[4 : 0] <= zext_ln128_fu_1203_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred1002_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd2);
        ap_predicate_pred1012_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd3);
        ap_predicate_pred1022_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd4);
        ap_predicate_pred1032_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd5);
        ap_predicate_pred1042_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd6);
        ap_predicate_pred1052_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd7);
        ap_predicate_pred1062_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd8);
        ap_predicate_pred1072_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd9);
        ap_predicate_pred1082_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd10);
        ap_predicate_pred1092_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd11);
        ap_predicate_pred1102_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd12);
        ap_predicate_pred1112_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd13);
        ap_predicate_pred1122_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd14);
        ap_predicate_pred1132_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd15);
        ap_predicate_pred1142_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd16);
        ap_predicate_pred1152_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd17);
        ap_predicate_pred1162_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd18);
        ap_predicate_pred1172_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd19);
        ap_predicate_pred1182_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd20);
        ap_predicate_pred1192_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd21);
        ap_predicate_pred1202_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd22);
        ap_predicate_pred1212_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd23);
        ap_predicate_pred1222_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd24);
        ap_predicate_pred1232_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd25);
        ap_predicate_pred1242_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd26);
        ap_predicate_pred1252_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd27);
        ap_predicate_pred1262_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd28);
        ap_predicate_pred1272_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd29);
        ap_predicate_pred1282_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd30);
        ap_predicate_pred1292_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd31);
        ap_predicate_pred979_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd0);
        ap_predicate_pred992_state19 <= (trunc_ln127_reg_1751_pp0_iter2_reg == 5'd1);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul2_reg_2135 <= grp_fu_1923_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul4_reg_2118 <= grp_fu_1923_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub_reg_2128 <= grp_fu_1919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_1953 <= tmp_2_fu_1239_p67;
        tmp_3_reg_2123 <= tmp_3_fu_1520_p67;
    end
end
always @ (*) begin
    if (((icmp_ln126_reg_1732 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln126_reg_1732_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_norm_2_load = grp_fu_1919_p_dout0;
    end else begin
        ap_sig_allocacmp_norm_2_load = norm_2_fu_250;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_0_ce0_local = 1'b1;
    end else begin
        d_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_10_ce0_local = 1'b1;
    end else begin
        d_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_11_ce0_local = 1'b1;
    end else begin
        d_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_12_ce0_local = 1'b1;
    end else begin
        d_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_13_ce0_local = 1'b1;
    end else begin
        d_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_14_ce0_local = 1'b1;
    end else begin
        d_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_15_ce0_local = 1'b1;
    end else begin
        d_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_16_ce0_local = 1'b1;
    end else begin
        d_weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_17_ce0_local = 1'b1;
    end else begin
        d_weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_18_ce0_local = 1'b1;
    end else begin
        d_weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_19_ce0_local = 1'b1;
    end else begin
        d_weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_1_ce0_local = 1'b1;
    end else begin
        d_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_20_ce0_local = 1'b1;
    end else begin
        d_weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_21_ce0_local = 1'b1;
    end else begin
        d_weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_22_ce0_local = 1'b1;
    end else begin
        d_weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_23_ce0_local = 1'b1;
    end else begin
        d_weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_24_ce0_local = 1'b1;
    end else begin
        d_weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_25_ce0_local = 1'b1;
    end else begin
        d_weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_26_ce0_local = 1'b1;
    end else begin
        d_weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_27_ce0_local = 1'b1;
    end else begin
        d_weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_28_ce0_local = 1'b1;
    end else begin
        d_weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_29_ce0_local = 1'b1;
    end else begin
        d_weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_2_ce0_local = 1'b1;
    end else begin
        d_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_30_ce0_local = 1'b1;
    end else begin
        d_weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_31_ce0_local = 1'b1;
    end else begin
        d_weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_3_ce0_local = 1'b1;
    end else begin
        d_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_4_ce0_local = 1'b1;
    end else begin
        d_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_5_ce0_local = 1'b1;
    end else begin
        d_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_6_ce0_local = 1'b1;
    end else begin
        d_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_7_ce0_local = 1'b1;
    end else begin
        d_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_8_ce0_local = 1'b1;
    end else begin
        d_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_9_ce0_local = 1'b1;
    end else begin
        d_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1105_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1105_opcode = 2'd0;
    end else begin
        grp_fu_1105_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1105_p0 = ap_sig_allocacmp_norm_2_load;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1105_p0 = tmp_3_reg_2123;
    end else begin
        grp_fu_1105_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1105_p1 = mul2_reg_2135;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1105_p1 = mul4_reg_2118;
    end else begin
        grp_fu_1105_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1109_p0 = sub_reg_2128;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1109_p0 = tmp_2_reg_1953;
    end else begin
        grp_fu_1109_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1109_p1 = sub_reg_2128;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1109_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1109_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln126_reg_1732_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_2_out_ap_vld = 1'b1;
    end else begin
        norm_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_address0_local = weights1_0_addr_reg_1958_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred979_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_we0_local = 1'b1;
    end else begin
        weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_10_address0_local = weights1_10_addr_reg_2008_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_10_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_10_ce0_local = 1'b1;
    end else begin
        weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1082_state19 == 1'b1))) begin
        weights1_10_we0_local = 1'b1;
    end else begin
        weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_11_address0_local = weights1_11_addr_reg_2013_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_11_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_11_ce0_local = 1'b1;
    end else begin
        weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1092_state19 == 1'b1))) begin
        weights1_11_we0_local = 1'b1;
    end else begin
        weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_12_address0_local = weights1_12_addr_reg_2018_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_12_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_12_ce0_local = 1'b1;
    end else begin
        weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1102_state19 == 1'b1))) begin
        weights1_12_we0_local = 1'b1;
    end else begin
        weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_13_address0_local = weights1_13_addr_reg_2023_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_13_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_13_ce0_local = 1'b1;
    end else begin
        weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1112_state19 == 1'b1))) begin
        weights1_13_we0_local = 1'b1;
    end else begin
        weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_14_address0_local = weights1_14_addr_reg_2028_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_14_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_14_ce0_local = 1'b1;
    end else begin
        weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1122_state19 == 1'b1))) begin
        weights1_14_we0_local = 1'b1;
    end else begin
        weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_15_address0_local = weights1_15_addr_reg_2033_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_15_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_15_ce0_local = 1'b1;
    end else begin
        weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1132_state19 == 1'b1))) begin
        weights1_15_we0_local = 1'b1;
    end else begin
        weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_16_address0_local = weights1_16_addr_reg_2038_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_16_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_16_ce0_local = 1'b1;
    end else begin
        weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1142_state19 == 1'b1))) begin
        weights1_16_we0_local = 1'b1;
    end else begin
        weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_17_address0_local = weights1_17_addr_reg_2043_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_17_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_17_ce0_local = 1'b1;
    end else begin
        weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1152_state19 == 1'b1))) begin
        weights1_17_we0_local = 1'b1;
    end else begin
        weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_18_address0_local = weights1_18_addr_reg_2048_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_18_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_18_ce0_local = 1'b1;
    end else begin
        weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1162_state19 == 1'b1))) begin
        weights1_18_we0_local = 1'b1;
    end else begin
        weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_19_address0_local = weights1_19_addr_reg_2053_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_19_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_19_ce0_local = 1'b1;
    end else begin
        weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1172_state19 == 1'b1))) begin
        weights1_19_we0_local = 1'b1;
    end else begin
        weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_address0_local = weights1_1_addr_reg_1963_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_1_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred992_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_we0_local = 1'b1;
    end else begin
        weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_20_address0_local = weights1_20_addr_reg_2058_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_20_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_20_ce0_local = 1'b1;
    end else begin
        weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1182_state19 == 1'b1))) begin
        weights1_20_we0_local = 1'b1;
    end else begin
        weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_21_address0_local = weights1_21_addr_reg_2063_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_21_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_21_ce0_local = 1'b1;
    end else begin
        weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1192_state19 == 1'b1))) begin
        weights1_21_we0_local = 1'b1;
    end else begin
        weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_22_address0_local = weights1_22_addr_reg_2068_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_22_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_22_ce0_local = 1'b1;
    end else begin
        weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1202_state19 == 1'b1))) begin
        weights1_22_we0_local = 1'b1;
    end else begin
        weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_23_address0_local = weights1_23_addr_reg_2073_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_23_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_23_ce0_local = 1'b1;
    end else begin
        weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1212_state19 == 1'b1))) begin
        weights1_23_we0_local = 1'b1;
    end else begin
        weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_24_address0_local = weights1_24_addr_reg_2078_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_24_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_24_ce0_local = 1'b1;
    end else begin
        weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1222_state19 == 1'b1))) begin
        weights1_24_we0_local = 1'b1;
    end else begin
        weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_25_address0_local = weights1_25_addr_reg_2083_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_25_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_25_ce0_local = 1'b1;
    end else begin
        weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1232_state19 == 1'b1))) begin
        weights1_25_we0_local = 1'b1;
    end else begin
        weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_26_address0_local = weights1_26_addr_reg_2088_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_26_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_26_ce0_local = 1'b1;
    end else begin
        weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1242_state19 == 1'b1))) begin
        weights1_26_we0_local = 1'b1;
    end else begin
        weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_27_address0_local = weights1_27_addr_reg_2093_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_27_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_27_ce0_local = 1'b1;
    end else begin
        weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1252_state19 == 1'b1))) begin
        weights1_27_we0_local = 1'b1;
    end else begin
        weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_28_address0_local = weights1_28_addr_reg_2098_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_28_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_28_ce0_local = 1'b1;
    end else begin
        weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1262_state19 == 1'b1))) begin
        weights1_28_we0_local = 1'b1;
    end else begin
        weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_29_address0_local = weights1_29_addr_reg_2103_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_29_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_29_ce0_local = 1'b1;
    end else begin
        weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1272_state19 == 1'b1))) begin
        weights1_29_we0_local = 1'b1;
    end else begin
        weights1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_2_address0_local = weights1_2_addr_reg_1968_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_2_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_2_ce0_local = 1'b1;
    end else begin
        weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1002_state19 == 1'b1))) begin
        weights1_2_we0_local = 1'b1;
    end else begin
        weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_30_address0_local = weights1_30_addr_reg_2108_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_30_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_30_ce0_local = 1'b1;
    end else begin
        weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1282_state19 == 1'b1))) begin
        weights1_30_we0_local = 1'b1;
    end else begin
        weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_31_address0_local = weights1_31_addr_reg_2113_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_31_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_31_ce0_local = 1'b1;
    end else begin
        weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1292_state19 == 1'b1))) begin
        weights1_31_we0_local = 1'b1;
    end else begin
        weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_3_address0_local = weights1_3_addr_reg_1973_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_3_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_3_ce0_local = 1'b1;
    end else begin
        weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1012_state19 == 1'b1))) begin
        weights1_3_we0_local = 1'b1;
    end else begin
        weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_4_address0_local = weights1_4_addr_reg_1978_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_4_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_4_ce0_local = 1'b1;
    end else begin
        weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1022_state19 == 1'b1))) begin
        weights1_4_we0_local = 1'b1;
    end else begin
        weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_5_address0_local = weights1_5_addr_reg_1983_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_5_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_5_ce0_local = 1'b1;
    end else begin
        weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1032_state19 == 1'b1))) begin
        weights1_5_we0_local = 1'b1;
    end else begin
        weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_6_address0_local = weights1_6_addr_reg_1988_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_6_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_6_ce0_local = 1'b1;
    end else begin
        weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1042_state19 == 1'b1))) begin
        weights1_6_we0_local = 1'b1;
    end else begin
        weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_7_address0_local = weights1_7_addr_reg_1993_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_7_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_7_ce0_local = 1'b1;
    end else begin
        weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1052_state19 == 1'b1))) begin
        weights1_7_we0_local = 1'b1;
    end else begin
        weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_8_address0_local = weights1_8_addr_reg_1998_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_8_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_8_ce0_local = 1'b1;
    end else begin
        weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1062_state19 == 1'b1))) begin
        weights1_8_we0_local = 1'b1;
    end else begin
        weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_9_address0_local = weights1_9_addr_reg_2003_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_9_address0_local = zext_ln128_reg_1757;
    end else begin
        weights1_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_9_ce0_local = 1'b1;
    end else begin
        weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1072_state19 == 1'b1))) begin
        weights1_9_we0_local = 1'b1;
    end else begin
        weights1_9_we0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
assign add_ln126_1_fu_1169_p2 = (i_fu_258 + 4'd1);
assign add_ln126_fu_1143_p2 = (indvar_flatten_fu_262 + 10'd1);
assign add_ln127_fu_1374_p2 = (select_ln121_reg_1741 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln128_32_fu_1655_p1 = sub_reg_2128;
assign d_weights1_0_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_0_ce0 = d_weights1_0_ce0_local;
assign d_weights1_10_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_10_ce0 = d_weights1_10_ce0_local;
assign d_weights1_11_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_11_ce0 = d_weights1_11_ce0_local;
assign d_weights1_12_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_12_ce0 = d_weights1_12_ce0_local;
assign d_weights1_13_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_13_ce0 = d_weights1_13_ce0_local;
assign d_weights1_14_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_14_ce0 = d_weights1_14_ce0_local;
assign d_weights1_15_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_15_ce0 = d_weights1_15_ce0_local;
assign d_weights1_16_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_16_ce0 = d_weights1_16_ce0_local;
assign d_weights1_17_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_17_ce0 = d_weights1_17_ce0_local;
assign d_weights1_18_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_18_ce0 = d_weights1_18_ce0_local;
assign d_weights1_19_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_19_ce0 = d_weights1_19_ce0_local;
assign d_weights1_1_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_1_ce0 = d_weights1_1_ce0_local;
assign d_weights1_20_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_20_ce0 = d_weights1_20_ce0_local;
assign d_weights1_21_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_21_ce0 = d_weights1_21_ce0_local;
assign d_weights1_22_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_22_ce0 = d_weights1_22_ce0_local;
assign d_weights1_23_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_23_ce0 = d_weights1_23_ce0_local;
assign d_weights1_24_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_24_ce0 = d_weights1_24_ce0_local;
assign d_weights1_25_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_25_ce0 = d_weights1_25_ce0_local;
assign d_weights1_26_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_26_ce0 = d_weights1_26_ce0_local;
assign d_weights1_27_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_27_ce0 = d_weights1_27_ce0_local;
assign d_weights1_28_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_28_ce0 = d_weights1_28_ce0_local;
assign d_weights1_29_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_29_ce0 = d_weights1_29_ce0_local;
assign d_weights1_2_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_2_ce0 = d_weights1_2_ce0_local;
assign d_weights1_30_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_30_ce0 = d_weights1_30_ce0_local;
assign d_weights1_31_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_31_ce0 = d_weights1_31_ce0_local;
assign d_weights1_3_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_3_ce0 = d_weights1_3_ce0_local;
assign d_weights1_4_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_4_ce0 = d_weights1_4_ce0_local;
assign d_weights1_5_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_5_ce0 = d_weights1_5_ce0_local;
assign d_weights1_6_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_6_ce0 = d_weights1_6_ce0_local;
assign d_weights1_7_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_7_ce0 = d_weights1_7_ce0_local;
assign d_weights1_8_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_8_ce0 = d_weights1_8_ce0_local;
assign d_weights1_9_address0 = zext_ln128_fu_1203_p1;
assign d_weights1_9_ce0 = d_weights1_9_ce0_local;
assign grp_fu_1919_p_ce = 1'b1;
assign grp_fu_1919_p_din0 = grp_fu_1105_p0;
assign grp_fu_1919_p_din1 = grp_fu_1105_p1;
assign grp_fu_1919_p_opcode = grp_fu_1105_opcode;
assign grp_fu_1923_p_ce = 1'b1;
assign grp_fu_1923_p_din0 = grp_fu_1109_p0;
assign grp_fu_1923_p_din1 = grp_fu_1109_p1;
assign icmp_ln126_fu_1137_p2 = ((indvar_flatten_fu_262 == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln127_fu_1155_p2 = ((j_fu_254 == 7'd64) ? 1'b1 : 1'b0);
assign norm_2_out = norm_2_fu_250;
assign or_ln_fu_1195_p3 = {{select_ln126_fu_1175_p3}, {tmp_fu_1187_p3}};
assign select_ln121_fu_1161_p3 = ((icmp_ln127_fu_1155_p2[0:0] == 1'b1) ? 7'd0 : j_fu_254);
assign select_ln126_fu_1175_p3 = ((icmp_ln127_fu_1155_p2[0:0] == 1'b1) ? add_ln126_1_fu_1169_p2 : i_fu_258);
assign tmp_2_fu_1239_p65 = 'bx;
assign tmp_3_fu_1520_p10 = weights1_4_q0;
assign tmp_3_fu_1520_p12 = weights1_5_q0;
assign tmp_3_fu_1520_p14 = weights1_6_q0;
assign tmp_3_fu_1520_p16 = weights1_7_q0;
assign tmp_3_fu_1520_p18 = weights1_8_q0;
assign tmp_3_fu_1520_p2 = weights1_0_q0;
assign tmp_3_fu_1520_p20 = weights1_9_q0;
assign tmp_3_fu_1520_p22 = weights1_10_q0;
assign tmp_3_fu_1520_p24 = weights1_11_q0;
assign tmp_3_fu_1520_p26 = weights1_12_q0;
assign tmp_3_fu_1520_p28 = weights1_13_q0;
assign tmp_3_fu_1520_p30 = weights1_14_q0;
assign tmp_3_fu_1520_p32 = weights1_15_q0;
assign tmp_3_fu_1520_p34 = weights1_16_q0;
assign tmp_3_fu_1520_p36 = weights1_17_q0;
assign tmp_3_fu_1520_p38 = weights1_18_q0;
assign tmp_3_fu_1520_p4 = weights1_1_q0;
assign tmp_3_fu_1520_p40 = weights1_19_q0;
assign tmp_3_fu_1520_p42 = weights1_20_q0;
assign tmp_3_fu_1520_p44 = weights1_21_q0;
assign tmp_3_fu_1520_p46 = weights1_22_q0;
assign tmp_3_fu_1520_p48 = weights1_23_q0;
assign tmp_3_fu_1520_p50 = weights1_24_q0;
assign tmp_3_fu_1520_p52 = weights1_25_q0;
assign tmp_3_fu_1520_p54 = weights1_26_q0;
assign tmp_3_fu_1520_p56 = weights1_27_q0;
assign tmp_3_fu_1520_p58 = weights1_28_q0;
assign tmp_3_fu_1520_p6 = weights1_2_q0;
assign tmp_3_fu_1520_p60 = weights1_29_q0;
assign tmp_3_fu_1520_p62 = weights1_30_q0;
assign tmp_3_fu_1520_p64 = weights1_31_q0;
assign tmp_3_fu_1520_p65 = 'bx;
assign tmp_3_fu_1520_p8 = weights1_3_q0;
assign tmp_fu_1187_p3 = select_ln121_fu_1161_p3[32'd5];
assign trunc_ln127_fu_1183_p1 = select_ln121_fu_1161_p3[4:0];
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_0_we0 = weights1_0_we0_local;
assign weights1_10_address0 = weights1_10_address0_local;
assign weights1_10_ce0 = weights1_10_ce0_local;
assign weights1_10_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_10_we0 = weights1_10_we0_local;
assign weights1_11_address0 = weights1_11_address0_local;
assign weights1_11_ce0 = weights1_11_ce0_local;
assign weights1_11_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_11_we0 = weights1_11_we0_local;
assign weights1_12_address0 = weights1_12_address0_local;
assign weights1_12_ce0 = weights1_12_ce0_local;
assign weights1_12_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_12_we0 = weights1_12_we0_local;
assign weights1_13_address0 = weights1_13_address0_local;
assign weights1_13_ce0 = weights1_13_ce0_local;
assign weights1_13_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_13_we0 = weights1_13_we0_local;
assign weights1_14_address0 = weights1_14_address0_local;
assign weights1_14_ce0 = weights1_14_ce0_local;
assign weights1_14_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_14_we0 = weights1_14_we0_local;
assign weights1_15_address0 = weights1_15_address0_local;
assign weights1_15_ce0 = weights1_15_ce0_local;
assign weights1_15_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_15_we0 = weights1_15_we0_local;
assign weights1_16_address0 = weights1_16_address0_local;
assign weights1_16_ce0 = weights1_16_ce0_local;
assign weights1_16_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_16_we0 = weights1_16_we0_local;
assign weights1_17_address0 = weights1_17_address0_local;
assign weights1_17_ce0 = weights1_17_ce0_local;
assign weights1_17_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_17_we0 = weights1_17_we0_local;
assign weights1_18_address0 = weights1_18_address0_local;
assign weights1_18_ce0 = weights1_18_ce0_local;
assign weights1_18_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_18_we0 = weights1_18_we0_local;
assign weights1_19_address0 = weights1_19_address0_local;
assign weights1_19_ce0 = weights1_19_ce0_local;
assign weights1_19_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_19_we0 = weights1_19_we0_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_1_we0 = weights1_1_we0_local;
assign weights1_20_address0 = weights1_20_address0_local;
assign weights1_20_ce0 = weights1_20_ce0_local;
assign weights1_20_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_20_we0 = weights1_20_we0_local;
assign weights1_21_address0 = weights1_21_address0_local;
assign weights1_21_ce0 = weights1_21_ce0_local;
assign weights1_21_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_21_we0 = weights1_21_we0_local;
assign weights1_22_address0 = weights1_22_address0_local;
assign weights1_22_ce0 = weights1_22_ce0_local;
assign weights1_22_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_22_we0 = weights1_22_we0_local;
assign weights1_23_address0 = weights1_23_address0_local;
assign weights1_23_ce0 = weights1_23_ce0_local;
assign weights1_23_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_23_we0 = weights1_23_we0_local;
assign weights1_24_address0 = weights1_24_address0_local;
assign weights1_24_ce0 = weights1_24_ce0_local;
assign weights1_24_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_24_we0 = weights1_24_we0_local;
assign weights1_25_address0 = weights1_25_address0_local;
assign weights1_25_ce0 = weights1_25_ce0_local;
assign weights1_25_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_25_we0 = weights1_25_we0_local;
assign weights1_26_address0 = weights1_26_address0_local;
assign weights1_26_ce0 = weights1_26_ce0_local;
assign weights1_26_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_26_we0 = weights1_26_we0_local;
assign weights1_27_address0 = weights1_27_address0_local;
assign weights1_27_ce0 = weights1_27_ce0_local;
assign weights1_27_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_27_we0 = weights1_27_we0_local;
assign weights1_28_address0 = weights1_28_address0_local;
assign weights1_28_ce0 = weights1_28_ce0_local;
assign weights1_28_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_28_we0 = weights1_28_we0_local;
assign weights1_29_address0 = weights1_29_address0_local;
assign weights1_29_ce0 = weights1_29_ce0_local;
assign weights1_29_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_29_we0 = weights1_29_we0_local;
assign weights1_2_address0 = weights1_2_address0_local;
assign weights1_2_ce0 = weights1_2_ce0_local;
assign weights1_2_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_2_we0 = weights1_2_we0_local;
assign weights1_30_address0 = weights1_30_address0_local;
assign weights1_30_ce0 = weights1_30_ce0_local;
assign weights1_30_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_30_we0 = weights1_30_we0_local;
assign weights1_31_address0 = weights1_31_address0_local;
assign weights1_31_ce0 = weights1_31_ce0_local;
assign weights1_31_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_31_we0 = weights1_31_we0_local;
assign weights1_3_address0 = weights1_3_address0_local;
assign weights1_3_ce0 = weights1_3_ce0_local;
assign weights1_3_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_3_we0 = weights1_3_we0_local;
assign weights1_4_address0 = weights1_4_address0_local;
assign weights1_4_ce0 = weights1_4_ce0_local;
assign weights1_4_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_4_we0 = weights1_4_we0_local;
assign weights1_5_address0 = weights1_5_address0_local;
assign weights1_5_ce0 = weights1_5_ce0_local;
assign weights1_5_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_5_we0 = weights1_5_we0_local;
assign weights1_6_address0 = weights1_6_address0_local;
assign weights1_6_ce0 = weights1_6_ce0_local;
assign weights1_6_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_6_we0 = weights1_6_we0_local;
assign weights1_7_address0 = weights1_7_address0_local;
assign weights1_7_ce0 = weights1_7_ce0_local;
assign weights1_7_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_7_we0 = weights1_7_we0_local;
assign weights1_8_address0 = weights1_8_address0_local;
assign weights1_8_ce0 = weights1_8_ce0_local;
assign weights1_8_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_8_we0 = weights1_8_we0_local;
assign weights1_9_address0 = weights1_9_address0_local;
assign weights1_9_ce0 = weights1_9_ce0_local;
assign weights1_9_d0 = bitcast_ln128_32_fu_1655_p1;
assign weights1_9_we0 = weights1_9_we0_local;
assign zext_ln128_fu_1203_p1 = or_ln_fu_1195_p3;
always @ (posedge ap_clk) begin
    zext_ln128_reg_1757[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 
