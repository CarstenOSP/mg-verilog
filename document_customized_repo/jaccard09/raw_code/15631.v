module backprop_update_weights_37_38_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_31_address0,weights2_31_ce0,weights2_31_we0,weights2_31_d0,weights2_31_q0,weights2_30_address0,weights2_30_ce0,weights2_30_we0,weights2_30_d0,weights2_30_q0,weights2_29_address0,weights2_29_ce0,weights2_29_we0,weights2_29_d0,weights2_29_q0,weights2_28_address0,weights2_28_ce0,weights2_28_we0,weights2_28_d0,weights2_28_q0,weights2_27_address0,weights2_27_ce0,weights2_27_we0,weights2_27_d0,weights2_27_q0,weights2_26_address0,weights2_26_ce0,weights2_26_we0,weights2_26_d0,weights2_26_q0,weights2_25_address0,weights2_25_ce0,weights2_25_we0,weights2_25_d0,weights2_25_q0,weights2_24_address0,weights2_24_ce0,weights2_24_we0,weights2_24_d0,weights2_24_q0,weights2_23_address0,weights2_23_ce0,weights2_23_we0,weights2_23_d0,weights2_23_q0,weights2_22_address0,weights2_22_ce0,weights2_22_we0,weights2_22_d0,weights2_22_q0,weights2_21_address0,weights2_21_ce0,weights2_21_we0,weights2_21_d0,weights2_21_q0,weights2_20_address0,weights2_20_ce0,weights2_20_we0,weights2_20_d0,weights2_20_q0,weights2_19_address0,weights2_19_ce0,weights2_19_we0,weights2_19_d0,weights2_19_q0,weights2_18_address0,weights2_18_ce0,weights2_18_we0,weights2_18_d0,weights2_18_q0,weights2_17_address0,weights2_17_ce0,weights2_17_we0,weights2_17_d0,weights2_17_q0,weights2_16_address0,weights2_16_ce0,weights2_16_we0,weights2_16_d0,weights2_16_q0,weights2_15_address0,weights2_15_ce0,weights2_15_we0,weights2_15_d0,weights2_15_q0,weights2_14_address0,weights2_14_ce0,weights2_14_we0,weights2_14_d0,weights2_14_q0,weights2_13_address0,weights2_13_ce0,weights2_13_we0,weights2_13_d0,weights2_13_q0,weights2_12_address0,weights2_12_ce0,weights2_12_we0,weights2_12_d0,weights2_12_q0,weights2_11_address0,weights2_11_ce0,weights2_11_we0,weights2_11_d0,weights2_11_q0,weights2_10_address0,weights2_10_ce0,weights2_10_we0,weights2_10_d0,weights2_10_q0,weights2_9_address0,weights2_9_ce0,weights2_9_we0,weights2_9_d0,weights2_9_q0,weights2_8_address0,weights2_8_ce0,weights2_8_we0,weights2_8_d0,weights2_8_q0,weights2_7_address0,weights2_7_ce0,weights2_7_we0,weights2_7_d0,weights2_7_q0,weights2_6_address0,weights2_6_ce0,weights2_6_we0,weights2_6_d0,weights2_6_q0,weights2_5_address0,weights2_5_ce0,weights2_5_we0,weights2_5_d0,weights2_5_q0,weights2_4_address0,weights2_4_ce0,weights2_4_we0,weights2_4_d0,weights2_4_q0,weights2_3_address0,weights2_3_ce0,weights2_3_we0,weights2_3_d0,weights2_3_q0,weights2_2_address0,weights2_2_ce0,weights2_2_we0,weights2_2_d0,weights2_2_q0,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,d_weights2_0_address0,d_weights2_0_ce0,d_weights2_0_q0,d_weights2_1_address0,d_weights2_1_ce0,d_weights2_1_q0,d_weights2_2_address0,d_weights2_2_ce0,d_weights2_2_q0,d_weights2_3_address0,d_weights2_3_ce0,d_weights2_3_q0,d_weights2_4_address0,d_weights2_4_ce0,d_weights2_4_q0,d_weights2_5_address0,d_weights2_5_ce0,d_weights2_5_q0,d_weights2_6_address0,d_weights2_6_ce0,d_weights2_6_q0,d_weights2_7_address0,d_weights2_7_ce0,d_weights2_7_q0,d_weights2_8_address0,d_weights2_8_ce0,d_weights2_8_q0,d_weights2_9_address0,d_weights2_9_ce0,d_weights2_9_q0,d_weights2_10_address0,d_weights2_10_ce0,d_weights2_10_q0,d_weights2_11_address0,d_weights2_11_ce0,d_weights2_11_q0,d_weights2_12_address0,d_weights2_12_ce0,d_weights2_12_q0,d_weights2_13_address0,d_weights2_13_ce0,d_weights2_13_q0,d_weights2_14_address0,d_weights2_14_ce0,d_weights2_14_q0,d_weights2_15_address0,d_weights2_15_ce0,d_weights2_15_q0,d_weights2_16_address0,d_weights2_16_ce0,d_weights2_16_q0,d_weights2_17_address0,d_weights2_17_ce0,d_weights2_17_q0,d_weights2_18_address0,d_weights2_18_ce0,d_weights2_18_q0,d_weights2_19_address0,d_weights2_19_ce0,d_weights2_19_q0,d_weights2_20_address0,d_weights2_20_ce0,d_weights2_20_q0,d_weights2_21_address0,d_weights2_21_ce0,d_weights2_21_q0,d_weights2_22_address0,d_weights2_22_ce0,d_weights2_22_q0,d_weights2_23_address0,d_weights2_23_ce0,d_weights2_23_q0,d_weights2_24_address0,d_weights2_24_ce0,d_weights2_24_q0,d_weights2_25_address0,d_weights2_25_ce0,d_weights2_25_q0,d_weights2_26_address0,d_weights2_26_ce0,d_weights2_26_q0,d_weights2_27_address0,d_weights2_27_ce0,d_weights2_27_q0,d_weights2_28_address0,d_weights2_28_ce0,d_weights2_28_q0,d_weights2_29_address0,d_weights2_29_ce0,d_weights2_29_q0,d_weights2_30_address0,d_weights2_30_ce0,d_weights2_30_q0,d_weights2_31_address0,d_weights2_31_ce0,d_weights2_31_q0,norm_4_out,norm_4_out_ap_vld,grp_fu_1939_p_din0,grp_fu_1939_p_din1,grp_fu_1939_p_opcode,grp_fu_1939_p_dout0,grp_fu_1939_p_ce,grp_fu_1943_p_din0,grp_fu_1943_p_din1,grp_fu_1943_p_dout0,grp_fu_1943_p_ce); 
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
output  [6:0] weights2_31_address0;
output   weights2_31_ce0;
output   weights2_31_we0;
output  [63:0] weights2_31_d0;
input  [63:0] weights2_31_q0;
output  [6:0] weights2_30_address0;
output   weights2_30_ce0;
output   weights2_30_we0;
output  [63:0] weights2_30_d0;
input  [63:0] weights2_30_q0;
output  [6:0] weights2_29_address0;
output   weights2_29_ce0;
output   weights2_29_we0;
output  [63:0] weights2_29_d0;
input  [63:0] weights2_29_q0;
output  [6:0] weights2_28_address0;
output   weights2_28_ce0;
output   weights2_28_we0;
output  [63:0] weights2_28_d0;
input  [63:0] weights2_28_q0;
output  [6:0] weights2_27_address0;
output   weights2_27_ce0;
output   weights2_27_we0;
output  [63:0] weights2_27_d0;
input  [63:0] weights2_27_q0;
output  [6:0] weights2_26_address0;
output   weights2_26_ce0;
output   weights2_26_we0;
output  [63:0] weights2_26_d0;
input  [63:0] weights2_26_q0;
output  [6:0] weights2_25_address0;
output   weights2_25_ce0;
output   weights2_25_we0;
output  [63:0] weights2_25_d0;
input  [63:0] weights2_25_q0;
output  [6:0] weights2_24_address0;
output   weights2_24_ce0;
output   weights2_24_we0;
output  [63:0] weights2_24_d0;
input  [63:0] weights2_24_q0;
output  [6:0] weights2_23_address0;
output   weights2_23_ce0;
output   weights2_23_we0;
output  [63:0] weights2_23_d0;
input  [63:0] weights2_23_q0;
output  [6:0] weights2_22_address0;
output   weights2_22_ce0;
output   weights2_22_we0;
output  [63:0] weights2_22_d0;
input  [63:0] weights2_22_q0;
output  [6:0] weights2_21_address0;
output   weights2_21_ce0;
output   weights2_21_we0;
output  [63:0] weights2_21_d0;
input  [63:0] weights2_21_q0;
output  [6:0] weights2_20_address0;
output   weights2_20_ce0;
output   weights2_20_we0;
output  [63:0] weights2_20_d0;
input  [63:0] weights2_20_q0;
output  [6:0] weights2_19_address0;
output   weights2_19_ce0;
output   weights2_19_we0;
output  [63:0] weights2_19_d0;
input  [63:0] weights2_19_q0;
output  [6:0] weights2_18_address0;
output   weights2_18_ce0;
output   weights2_18_we0;
output  [63:0] weights2_18_d0;
input  [63:0] weights2_18_q0;
output  [6:0] weights2_17_address0;
output   weights2_17_ce0;
output   weights2_17_we0;
output  [63:0] weights2_17_d0;
input  [63:0] weights2_17_q0;
output  [6:0] weights2_16_address0;
output   weights2_16_ce0;
output   weights2_16_we0;
output  [63:0] weights2_16_d0;
input  [63:0] weights2_16_q0;
output  [6:0] weights2_15_address0;
output   weights2_15_ce0;
output   weights2_15_we0;
output  [63:0] weights2_15_d0;
input  [63:0] weights2_15_q0;
output  [6:0] weights2_14_address0;
output   weights2_14_ce0;
output   weights2_14_we0;
output  [63:0] weights2_14_d0;
input  [63:0] weights2_14_q0;
output  [6:0] weights2_13_address0;
output   weights2_13_ce0;
output   weights2_13_we0;
output  [63:0] weights2_13_d0;
input  [63:0] weights2_13_q0;
output  [6:0] weights2_12_address0;
output   weights2_12_ce0;
output   weights2_12_we0;
output  [63:0] weights2_12_d0;
input  [63:0] weights2_12_q0;
output  [6:0] weights2_11_address0;
output   weights2_11_ce0;
output   weights2_11_we0;
output  [63:0] weights2_11_d0;
input  [63:0] weights2_11_q0;
output  [6:0] weights2_10_address0;
output   weights2_10_ce0;
output   weights2_10_we0;
output  [63:0] weights2_10_d0;
input  [63:0] weights2_10_q0;
output  [6:0] weights2_9_address0;
output   weights2_9_ce0;
output   weights2_9_we0;
output  [63:0] weights2_9_d0;
input  [63:0] weights2_9_q0;
output  [6:0] weights2_8_address0;
output   weights2_8_ce0;
output   weights2_8_we0;
output  [63:0] weights2_8_d0;
input  [63:0] weights2_8_q0;
output  [6:0] weights2_7_address0;
output   weights2_7_ce0;
output   weights2_7_we0;
output  [63:0] weights2_7_d0;
input  [63:0] weights2_7_q0;
output  [6:0] weights2_6_address0;
output   weights2_6_ce0;
output   weights2_6_we0;
output  [63:0] weights2_6_d0;
input  [63:0] weights2_6_q0;
output  [6:0] weights2_5_address0;
output   weights2_5_ce0;
output   weights2_5_we0;
output  [63:0] weights2_5_d0;
input  [63:0] weights2_5_q0;
output  [6:0] weights2_4_address0;
output   weights2_4_ce0;
output   weights2_4_we0;
output  [63:0] weights2_4_d0;
input  [63:0] weights2_4_q0;
output  [6:0] weights2_3_address0;
output   weights2_3_ce0;
output   weights2_3_we0;
output  [63:0] weights2_3_d0;
input  [63:0] weights2_3_q0;
output  [6:0] weights2_2_address0;
output   weights2_2_ce0;
output   weights2_2_we0;
output  [63:0] weights2_2_d0;
input  [63:0] weights2_2_q0;
output  [6:0] weights2_1_address0;
output   weights2_1_ce0;
output   weights2_1_we0;
output  [63:0] weights2_1_d0;
input  [63:0] weights2_1_q0;
output  [6:0] weights2_0_address0;
output   weights2_0_ce0;
output   weights2_0_we0;
output  [63:0] weights2_0_d0;
input  [63:0] weights2_0_q0;
output  [6:0] d_weights2_0_address0;
output   d_weights2_0_ce0;
input  [63:0] d_weights2_0_q0;
output  [6:0] d_weights2_1_address0;
output   d_weights2_1_ce0;
input  [63:0] d_weights2_1_q0;
output  [6:0] d_weights2_2_address0;
output   d_weights2_2_ce0;
input  [63:0] d_weights2_2_q0;
output  [6:0] d_weights2_3_address0;
output   d_weights2_3_ce0;
input  [63:0] d_weights2_3_q0;
output  [6:0] d_weights2_4_address0;
output   d_weights2_4_ce0;
input  [63:0] d_weights2_4_q0;
output  [6:0] d_weights2_5_address0;
output   d_weights2_5_ce0;
input  [63:0] d_weights2_5_q0;
output  [6:0] d_weights2_6_address0;
output   d_weights2_6_ce0;
input  [63:0] d_weights2_6_q0;
output  [6:0] d_weights2_7_address0;
output   d_weights2_7_ce0;
input  [63:0] d_weights2_7_q0;
output  [6:0] d_weights2_8_address0;
output   d_weights2_8_ce0;
input  [63:0] d_weights2_8_q0;
output  [6:0] d_weights2_9_address0;
output   d_weights2_9_ce0;
input  [63:0] d_weights2_9_q0;
output  [6:0] d_weights2_10_address0;
output   d_weights2_10_ce0;
input  [63:0] d_weights2_10_q0;
output  [6:0] d_weights2_11_address0;
output   d_weights2_11_ce0;
input  [63:0] d_weights2_11_q0;
output  [6:0] d_weights2_12_address0;
output   d_weights2_12_ce0;
input  [63:0] d_weights2_12_q0;
output  [6:0] d_weights2_13_address0;
output   d_weights2_13_ce0;
input  [63:0] d_weights2_13_q0;
output  [6:0] d_weights2_14_address0;
output   d_weights2_14_ce0;
input  [63:0] d_weights2_14_q0;
output  [6:0] d_weights2_15_address0;
output   d_weights2_15_ce0;
input  [63:0] d_weights2_15_q0;
output  [6:0] d_weights2_16_address0;
output   d_weights2_16_ce0;
input  [63:0] d_weights2_16_q0;
output  [6:0] d_weights2_17_address0;
output   d_weights2_17_ce0;
input  [63:0] d_weights2_17_q0;
output  [6:0] d_weights2_18_address0;
output   d_weights2_18_ce0;
input  [63:0] d_weights2_18_q0;
output  [6:0] d_weights2_19_address0;
output   d_weights2_19_ce0;
input  [63:0] d_weights2_19_q0;
output  [6:0] d_weights2_20_address0;
output   d_weights2_20_ce0;
input  [63:0] d_weights2_20_q0;
output  [6:0] d_weights2_21_address0;
output   d_weights2_21_ce0;
input  [63:0] d_weights2_21_q0;
output  [6:0] d_weights2_22_address0;
output   d_weights2_22_ce0;
input  [63:0] d_weights2_22_q0;
output  [6:0] d_weights2_23_address0;
output   d_weights2_23_ce0;
input  [63:0] d_weights2_23_q0;
output  [6:0] d_weights2_24_address0;
output   d_weights2_24_ce0;
input  [63:0] d_weights2_24_q0;
output  [6:0] d_weights2_25_address0;
output   d_weights2_25_ce0;
input  [63:0] d_weights2_25_q0;
output  [6:0] d_weights2_26_address0;
output   d_weights2_26_ce0;
input  [63:0] d_weights2_26_q0;
output  [6:0] d_weights2_27_address0;
output   d_weights2_27_ce0;
input  [63:0] d_weights2_27_q0;
output  [6:0] d_weights2_28_address0;
output   d_weights2_28_ce0;
input  [63:0] d_weights2_28_q0;
output  [6:0] d_weights2_29_address0;
output   d_weights2_29_ce0;
input  [63:0] d_weights2_29_q0;
output  [6:0] d_weights2_30_address0;
output   d_weights2_30_ce0;
input  [63:0] d_weights2_30_q0;
output  [6:0] d_weights2_31_address0;
output   d_weights2_31_ce0;
input  [63:0] d_weights2_31_q0;
output  [63:0] norm_4_out;
output   norm_4_out_ap_vld;
output  [63:0] grp_fu_1939_p_din0;
output  [63:0] grp_fu_1939_p_din1;
output  [1:0] grp_fu_1939_p_opcode;
input  [63:0] grp_fu_1939_p_dout0;
output   grp_fu_1939_p_ce;
output  [63:0] grp_fu_1943_p_din0;
output  [63:0] grp_fu_1943_p_din1;
input  [63:0] grp_fu_1943_p_dout0;
output   grp_fu_1943_p_ce;
reg ap_idle;
reg norm_4_out_ap_vld;
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
reg   [0:0] icmp_ln152_reg_1737;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln152_fu_1133_p2;
reg   [0:0] icmp_ln152_reg_1737_pp0_iter1_reg;
reg   [0:0] icmp_ln152_reg_1737_pp0_iter2_reg;
reg   [0:0] icmp_ln152_reg_1737_pp0_iter3_reg;
wire   [12:0] add_ln152_fu_1139_p2;
reg   [12:0] add_ln152_reg_1741;
wire   [6:0] select_ln121_fu_1157_p3;
reg   [6:0] select_ln121_reg_1746;
wire   [6:0] select_ln152_fu_1171_p3;
reg   [6:0] select_ln152_reg_1751;
wire   [4:0] trunc_ln153_fu_1185_p1;
reg   [4:0] trunc_ln153_reg_1756;
reg   [4:0] trunc_ln153_reg_1756_pp0_iter1_reg;
reg   [4:0] trunc_ln153_reg_1756_pp0_iter2_reg;
wire   [6:0] add_ln154_fu_1203_p2;
reg   [6:0] add_ln154_reg_1762;
wire   [63:0] zext_ln154_fu_1209_p1;
reg   [63:0] zext_ln154_reg_1767;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_9_fu_1262_p67;
reg   [63:0] tmp_9_reg_1963;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [6:0] weights2_0_addr_reg_1968;
reg   [6:0] weights2_0_addr_reg_1968_pp0_iter2_reg;
reg   [6:0] weights2_1_addr_reg_1973;
reg   [6:0] weights2_1_addr_reg_1973_pp0_iter2_reg;
reg   [6:0] weights2_2_addr_reg_1978;
reg   [6:0] weights2_2_addr_reg_1978_pp0_iter2_reg;
reg   [6:0] weights2_3_addr_reg_1983;
reg   [6:0] weights2_3_addr_reg_1983_pp0_iter2_reg;
reg   [6:0] weights2_4_addr_reg_1988;
reg   [6:0] weights2_4_addr_reg_1988_pp0_iter2_reg;
reg   [6:0] weights2_5_addr_reg_1993;
reg   [6:0] weights2_5_addr_reg_1993_pp0_iter2_reg;
reg   [6:0] weights2_6_addr_reg_1998;
reg   [6:0] weights2_6_addr_reg_1998_pp0_iter2_reg;
reg   [6:0] weights2_7_addr_reg_2003;
reg   [6:0] weights2_7_addr_reg_2003_pp0_iter2_reg;
reg   [6:0] weights2_8_addr_reg_2008;
reg   [6:0] weights2_8_addr_reg_2008_pp0_iter2_reg;
reg   [6:0] weights2_9_addr_reg_2013;
reg   [6:0] weights2_9_addr_reg_2013_pp0_iter2_reg;
reg   [6:0] weights2_10_addr_reg_2018;
reg   [6:0] weights2_10_addr_reg_2018_pp0_iter2_reg;
reg   [6:0] weights2_11_addr_reg_2023;
reg   [6:0] weights2_11_addr_reg_2023_pp0_iter2_reg;
reg   [6:0] weights2_12_addr_reg_2028;
reg   [6:0] weights2_12_addr_reg_2028_pp0_iter2_reg;
reg   [6:0] weights2_13_addr_reg_2033;
reg   [6:0] weights2_13_addr_reg_2033_pp0_iter2_reg;
reg   [6:0] weights2_14_addr_reg_2038;
reg   [6:0] weights2_14_addr_reg_2038_pp0_iter2_reg;
reg   [6:0] weights2_15_addr_reg_2043;
reg   [6:0] weights2_15_addr_reg_2043_pp0_iter2_reg;
reg   [6:0] weights2_16_addr_reg_2048;
reg   [6:0] weights2_16_addr_reg_2048_pp0_iter2_reg;
reg   [6:0] weights2_17_addr_reg_2053;
reg   [6:0] weights2_17_addr_reg_2053_pp0_iter2_reg;
reg   [6:0] weights2_18_addr_reg_2058;
reg   [6:0] weights2_18_addr_reg_2058_pp0_iter2_reg;
reg   [6:0] weights2_19_addr_reg_2063;
reg   [6:0] weights2_19_addr_reg_2063_pp0_iter2_reg;
reg   [6:0] weights2_20_addr_reg_2068;
reg   [6:0] weights2_20_addr_reg_2068_pp0_iter2_reg;
reg   [6:0] weights2_21_addr_reg_2073;
reg   [6:0] weights2_21_addr_reg_2073_pp0_iter2_reg;
reg   [6:0] weights2_22_addr_reg_2078;
reg   [6:0] weights2_22_addr_reg_2078_pp0_iter2_reg;
reg   [6:0] weights2_23_addr_reg_2083;
reg   [6:0] weights2_23_addr_reg_2083_pp0_iter2_reg;
reg   [6:0] weights2_24_addr_reg_2088;
reg   [6:0] weights2_24_addr_reg_2088_pp0_iter2_reg;
reg   [6:0] weights2_25_addr_reg_2093;
reg   [6:0] weights2_25_addr_reg_2093_pp0_iter2_reg;
reg   [6:0] weights2_26_addr_reg_2098;
reg   [6:0] weights2_26_addr_reg_2098_pp0_iter2_reg;
reg   [6:0] weights2_27_addr_reg_2103;
reg   [6:0] weights2_27_addr_reg_2103_pp0_iter2_reg;
reg   [6:0] weights2_28_addr_reg_2108;
reg   [6:0] weights2_28_addr_reg_2108_pp0_iter2_reg;
reg   [6:0] weights2_29_addr_reg_2113;
reg   [6:0] weights2_29_addr_reg_2113_pp0_iter2_reg;
reg   [6:0] weights2_30_addr_reg_2118;
reg   [6:0] weights2_30_addr_reg_2118_pp0_iter2_reg;
reg   [6:0] weights2_31_addr_reg_2123;
reg   [6:0] weights2_31_addr_reg_2123_pp0_iter2_reg;
reg   [63:0] mul5_reg_2128;
wire   [63:0] tmp_s_fu_1525_p67;
reg   [63:0] tmp_s_reg_2133;
reg   [63:0] sub3_reg_2138;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] mul7_reg_2145;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_fu_246;
reg   [63:0] ap_sig_allocacmp_norm_load_2;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage4;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] j_fu_250;
wire   [6:0] add_ln153_fu_1244_p2;
reg   [6:0] ap_sig_allocacmp_j_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_4_fu_254;
reg   [6:0] ap_sig_allocacmp_i_4_load;
reg   [12:0] indvar_flatten13_fu_258;
reg   [12:0] ap_sig_allocacmp_indvar_flatten13_load;
wire    ap_block_pp0_stage4_01001;
reg    d_weights2_0_ce0_local;
reg    d_weights2_1_ce0_local;
reg    d_weights2_2_ce0_local;
reg    d_weights2_3_ce0_local;
reg    d_weights2_4_ce0_local;
reg    d_weights2_5_ce0_local;
reg    d_weights2_6_ce0_local;
reg    d_weights2_7_ce0_local;
reg    d_weights2_8_ce0_local;
reg    d_weights2_9_ce0_local;
reg    d_weights2_10_ce0_local;
reg    d_weights2_11_ce0_local;
reg    d_weights2_12_ce0_local;
reg    d_weights2_13_ce0_local;
reg    d_weights2_14_ce0_local;
reg    d_weights2_15_ce0_local;
reg    d_weights2_16_ce0_local;
reg    d_weights2_17_ce0_local;
reg    d_weights2_18_ce0_local;
reg    d_weights2_19_ce0_local;
reg    d_weights2_20_ce0_local;
reg    d_weights2_21_ce0_local;
reg    d_weights2_22_ce0_local;
reg    d_weights2_23_ce0_local;
reg    d_weights2_24_ce0_local;
reg    d_weights2_25_ce0_local;
reg    d_weights2_26_ce0_local;
reg    d_weights2_27_ce0_local;
reg    d_weights2_28_ce0_local;
reg    d_weights2_29_ce0_local;
reg    d_weights2_30_ce0_local;
reg    d_weights2_31_ce0_local;
reg    weights2_0_ce0_local;
reg   [6:0] weights2_0_address0_local;
reg    weights2_0_we0_local;
reg    ap_predicate_pred1112_state19;
wire   [63:0] bitcast_ln154_32_fu_1660_p1;
reg    weights2_1_ce0_local;
reg   [6:0] weights2_1_address0_local;
reg    weights2_1_we0_local;
reg    ap_predicate_pred1124_state19;
reg    weights2_2_ce0_local;
reg   [6:0] weights2_2_address0_local;
reg    weights2_2_we0_local;
reg    ap_predicate_pred1133_state19;
reg    weights2_3_ce0_local;
reg   [6:0] weights2_3_address0_local;
reg    weights2_3_we0_local;
reg    ap_predicate_pred1142_state19;
reg    weights2_4_ce0_local;
reg   [6:0] weights2_4_address0_local;
reg    weights2_4_we0_local;
reg    ap_predicate_pred1151_state19;
reg    weights2_5_ce0_local;
reg   [6:0] weights2_5_address0_local;
reg    weights2_5_we0_local;
reg    ap_predicate_pred1160_state19;
reg    weights2_6_ce0_local;
reg   [6:0] weights2_6_address0_local;
reg    weights2_6_we0_local;
reg    ap_predicate_pred1169_state19;
reg    weights2_7_ce0_local;
reg   [6:0] weights2_7_address0_local;
reg    weights2_7_we0_local;
reg    ap_predicate_pred1178_state19;
reg    weights2_8_ce0_local;
reg   [6:0] weights2_8_address0_local;
reg    weights2_8_we0_local;
reg    ap_predicate_pred1187_state19;
reg    weights2_9_ce0_local;
reg   [6:0] weights2_9_address0_local;
reg    weights2_9_we0_local;
reg    ap_predicate_pred1196_state19;
reg    weights2_10_ce0_local;
reg   [6:0] weights2_10_address0_local;
reg    weights2_10_we0_local;
reg    ap_predicate_pred1205_state19;
reg    weights2_11_ce0_local;
reg   [6:0] weights2_11_address0_local;
reg    weights2_11_we0_local;
reg    ap_predicate_pred1214_state19;
reg    weights2_12_ce0_local;
reg   [6:0] weights2_12_address0_local;
reg    weights2_12_we0_local;
reg    ap_predicate_pred1223_state19;
reg    weights2_13_ce0_local;
reg   [6:0] weights2_13_address0_local;
reg    weights2_13_we0_local;
reg    ap_predicate_pred1232_state19;
reg    weights2_14_ce0_local;
reg   [6:0] weights2_14_address0_local;
reg    weights2_14_we0_local;
reg    ap_predicate_pred1241_state19;
reg    weights2_15_ce0_local;
reg   [6:0] weights2_15_address0_local;
reg    weights2_15_we0_local;
reg    ap_predicate_pred1250_state19;
reg    weights2_16_ce0_local;
reg   [6:0] weights2_16_address0_local;
reg    weights2_16_we0_local;
reg    ap_predicate_pred1259_state19;
reg    weights2_17_ce0_local;
reg   [6:0] weights2_17_address0_local;
reg    weights2_17_we0_local;
reg    ap_predicate_pred1268_state19;
reg    weights2_18_ce0_local;
reg   [6:0] weights2_18_address0_local;
reg    weights2_18_we0_local;
reg    ap_predicate_pred1277_state19;
reg    weights2_19_ce0_local;
reg   [6:0] weights2_19_address0_local;
reg    weights2_19_we0_local;
reg    ap_predicate_pred1286_state19;
reg    weights2_20_ce0_local;
reg   [6:0] weights2_20_address0_local;
reg    weights2_20_we0_local;
reg    ap_predicate_pred1295_state19;
reg    weights2_21_ce0_local;
reg   [6:0] weights2_21_address0_local;
reg    weights2_21_we0_local;
reg    ap_predicate_pred1304_state19;
reg    weights2_22_ce0_local;
reg   [6:0] weights2_22_address0_local;
reg    weights2_22_we0_local;
reg    ap_predicate_pred1313_state19;
reg    weights2_23_ce0_local;
reg   [6:0] weights2_23_address0_local;
reg    weights2_23_we0_local;
reg    ap_predicate_pred1322_state19;
reg    weights2_24_ce0_local;
reg   [6:0] weights2_24_address0_local;
reg    weights2_24_we0_local;
reg    ap_predicate_pred1331_state19;
reg    weights2_25_ce0_local;
reg   [6:0] weights2_25_address0_local;
reg    weights2_25_we0_local;
reg    ap_predicate_pred1340_state19;
reg    weights2_26_ce0_local;
reg   [6:0] weights2_26_address0_local;
reg    weights2_26_we0_local;
reg    ap_predicate_pred1349_state19;
reg    weights2_27_ce0_local;
reg   [6:0] weights2_27_address0_local;
reg    weights2_27_we0_local;
reg    ap_predicate_pred1358_state19;
reg    weights2_28_ce0_local;
reg   [6:0] weights2_28_address0_local;
reg    weights2_28_we0_local;
reg    ap_predicate_pred1367_state19;
reg    weights2_29_ce0_local;
reg   [6:0] weights2_29_address0_local;
reg    weights2_29_we0_local;
reg    ap_predicate_pred1376_state19;
reg    weights2_30_ce0_local;
reg   [6:0] weights2_30_address0_local;
reg    weights2_30_we0_local;
reg    ap_predicate_pred1385_state19;
reg    weights2_31_ce0_local;
reg   [6:0] weights2_31_address0_local;
reg    weights2_31_we0_local;
reg    ap_predicate_pred1394_state19;
reg   [63:0] grp_fu_1101_p0;
reg   [63:0] grp_fu_1101_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_1105_p0;
reg   [63:0] grp_fu_1105_p1;
wire   [0:0] icmp_ln153_fu_1151_p2;
wire   [6:0] add_ln152_1_fu_1165_p2;
wire   [1:0] lshr_ln1_fu_1189_p4;
wire   [6:0] zext_ln154_1_fu_1199_p1;
wire   [6:0] empty_fu_1179_p2;
wire   [63:0] tmp_9_fu_1262_p65;
wire    ap_block_pp0_stage2;
wire   [63:0] tmp_s_fu_1525_p2;
wire   [63:0] tmp_s_fu_1525_p4;
wire   [63:0] tmp_s_fu_1525_p6;
wire   [63:0] tmp_s_fu_1525_p8;
wire   [63:0] tmp_s_fu_1525_p10;
wire   [63:0] tmp_s_fu_1525_p12;
wire   [63:0] tmp_s_fu_1525_p14;
wire   [63:0] tmp_s_fu_1525_p16;
wire   [63:0] tmp_s_fu_1525_p18;
wire   [63:0] tmp_s_fu_1525_p20;
wire   [63:0] tmp_s_fu_1525_p22;
wire   [63:0] tmp_s_fu_1525_p24;
wire   [63:0] tmp_s_fu_1525_p26;
wire   [63:0] tmp_s_fu_1525_p28;
wire   [63:0] tmp_s_fu_1525_p30;
wire   [63:0] tmp_s_fu_1525_p32;
wire   [63:0] tmp_s_fu_1525_p34;
wire   [63:0] tmp_s_fu_1525_p36;
wire   [63:0] tmp_s_fu_1525_p38;
wire   [63:0] tmp_s_fu_1525_p40;
wire   [63:0] tmp_s_fu_1525_p42;
wire   [63:0] tmp_s_fu_1525_p44;
wire   [63:0] tmp_s_fu_1525_p46;
wire   [63:0] tmp_s_fu_1525_p48;
wire   [63:0] tmp_s_fu_1525_p50;
wire   [63:0] tmp_s_fu_1525_p52;
wire   [63:0] tmp_s_fu_1525_p54;
wire   [63:0] tmp_s_fu_1525_p56;
wire   [63:0] tmp_s_fu_1525_p58;
wire   [63:0] tmp_s_fu_1525_p60;
wire   [63:0] tmp_s_fu_1525_p62;
wire   [63:0] tmp_s_fu_1525_p64;
wire   [63:0] tmp_s_fu_1525_p65;
reg   [1:0] grp_fu_1101_opcode;
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
wire   [4:0] tmp_9_fu_1262_p1;
wire   [4:0] tmp_9_fu_1262_p3;
wire   [4:0] tmp_9_fu_1262_p5;
wire   [4:0] tmp_9_fu_1262_p7;
wire   [4:0] tmp_9_fu_1262_p9;
wire   [4:0] tmp_9_fu_1262_p11;
wire   [4:0] tmp_9_fu_1262_p13;
wire   [4:0] tmp_9_fu_1262_p15;
wire   [4:0] tmp_9_fu_1262_p17;
wire   [4:0] tmp_9_fu_1262_p19;
wire   [4:0] tmp_9_fu_1262_p21;
wire   [4:0] tmp_9_fu_1262_p23;
wire   [4:0] tmp_9_fu_1262_p25;
wire   [4:0] tmp_9_fu_1262_p27;
wire   [4:0] tmp_9_fu_1262_p29;
wire   [4:0] tmp_9_fu_1262_p31;
wire  signed [4:0] tmp_9_fu_1262_p33;
wire  signed [4:0] tmp_9_fu_1262_p35;
wire  signed [4:0] tmp_9_fu_1262_p37;
wire  signed [4:0] tmp_9_fu_1262_p39;
wire  signed [4:0] tmp_9_fu_1262_p41;
wire  signed [4:0] tmp_9_fu_1262_p43;
wire  signed [4:0] tmp_9_fu_1262_p45;
wire  signed [4:0] tmp_9_fu_1262_p47;
wire  signed [4:0] tmp_9_fu_1262_p49;
wire  signed [4:0] tmp_9_fu_1262_p51;
wire  signed [4:0] tmp_9_fu_1262_p53;
wire  signed [4:0] tmp_9_fu_1262_p55;
wire  signed [4:0] tmp_9_fu_1262_p57;
wire  signed [4:0] tmp_9_fu_1262_p59;
wire  signed [4:0] tmp_9_fu_1262_p61;
wire  signed [4:0] tmp_9_fu_1262_p63;
wire   [4:0] tmp_s_fu_1525_p1;
wire   [4:0] tmp_s_fu_1525_p3;
wire   [4:0] tmp_s_fu_1525_p5;
wire   [4:0] tmp_s_fu_1525_p7;
wire   [4:0] tmp_s_fu_1525_p9;
wire   [4:0] tmp_s_fu_1525_p11;
wire   [4:0] tmp_s_fu_1525_p13;
wire   [4:0] tmp_s_fu_1525_p15;
wire   [4:0] tmp_s_fu_1525_p17;
wire   [4:0] tmp_s_fu_1525_p19;
wire   [4:0] tmp_s_fu_1525_p21;
wire   [4:0] tmp_s_fu_1525_p23;
wire   [4:0] tmp_s_fu_1525_p25;
wire   [4:0] tmp_s_fu_1525_p27;
wire   [4:0] tmp_s_fu_1525_p29;
wire   [4:0] tmp_s_fu_1525_p31;
wire  signed [4:0] tmp_s_fu_1525_p33;
wire  signed [4:0] tmp_s_fu_1525_p35;
wire  signed [4:0] tmp_s_fu_1525_p37;
wire  signed [4:0] tmp_s_fu_1525_p39;
wire  signed [4:0] tmp_s_fu_1525_p41;
wire  signed [4:0] tmp_s_fu_1525_p43;
wire  signed [4:0] tmp_s_fu_1525_p45;
wire  signed [4:0] tmp_s_fu_1525_p47;
wire  signed [4:0] tmp_s_fu_1525_p49;
wire  signed [4:0] tmp_s_fu_1525_p51;
wire  signed [4:0] tmp_s_fu_1525_p53;
wire  signed [4:0] tmp_s_fu_1525_p55;
wire  signed [4:0] tmp_s_fu_1525_p57;
wire  signed [4:0] tmp_s_fu_1525_p59;
wire  signed [4:0] tmp_s_fu_1525_p61;
wire  signed [4:0] tmp_s_fu_1525_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_246 = 64'd0;
#0 j_fu_250 = 7'd0;
#0 i_4_fu_254 = 7'd0;
#0 indvar_flatten13_fu_258 = 13'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1693(.din0(d_weights2_0_q0),.din1(d_weights2_1_q0),.din2(d_weights2_2_q0),.din3(d_weights2_3_q0),.din4(d_weights2_4_q0),.din5(d_weights2_5_q0),.din6(d_weights2_6_q0),.din7(d_weights2_7_q0),.din8(d_weights2_8_q0),.din9(d_weights2_9_q0),.din10(d_weights2_10_q0),.din11(d_weights2_11_q0),.din12(d_weights2_12_q0),.din13(d_weights2_13_q0),.din14(d_weights2_14_q0),.din15(d_weights2_15_q0),.din16(d_weights2_16_q0),.din17(d_weights2_17_q0),.din18(d_weights2_18_q0),.din19(d_weights2_19_q0),.din20(d_weights2_20_q0),.din21(d_weights2_21_q0),.din22(d_weights2_22_q0),.din23(d_weights2_23_q0),.din24(d_weights2_24_q0),.din25(d_weights2_25_q0),.din26(d_weights2_26_q0),.din27(d_weights2_27_q0),.din28(d_weights2_28_q0),.din29(d_weights2_29_q0),.din30(d_weights2_30_q0),.din31(d_weights2_31_q0),.def(tmp_9_fu_1262_p65),.sel(trunc_ln153_reg_1756),.dout(tmp_9_fu_1262_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1694(.din0(tmp_s_fu_1525_p2),.din1(tmp_s_fu_1525_p4),.din2(tmp_s_fu_1525_p6),.din3(tmp_s_fu_1525_p8),.din4(tmp_s_fu_1525_p10),.din5(tmp_s_fu_1525_p12),.din6(tmp_s_fu_1525_p14),.din7(tmp_s_fu_1525_p16),.din8(tmp_s_fu_1525_p18),.din9(tmp_s_fu_1525_p20),.din10(tmp_s_fu_1525_p22),.din11(tmp_s_fu_1525_p24),.din12(tmp_s_fu_1525_p26),.din13(tmp_s_fu_1525_p28),.din14(tmp_s_fu_1525_p30),.din15(tmp_s_fu_1525_p32),.din16(tmp_s_fu_1525_p34),.din17(tmp_s_fu_1525_p36),.din18(tmp_s_fu_1525_p38),.din19(tmp_s_fu_1525_p40),.din20(tmp_s_fu_1525_p42),.din21(tmp_s_fu_1525_p44),.din22(tmp_s_fu_1525_p46),.din23(tmp_s_fu_1525_p48),.din24(tmp_s_fu_1525_p50),.din25(tmp_s_fu_1525_p52),.din26(tmp_s_fu_1525_p54),.din27(tmp_s_fu_1525_p56),.din28(tmp_s_fu_1525_p58),.din29(tmp_s_fu_1525_p60),.din30(tmp_s_fu_1525_p62),.din31(tmp_s_fu_1525_p64),.def(tmp_s_fu_1525_p65),.sel(trunc_ln153_reg_1756_pp0_iter1_reg),.dout(tmp_s_fu_1525_p67));
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
        i_4_fu_254 <= 7'd0;
    end else if (((icmp_ln152_reg_1737 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_4_fu_254 <= select_ln152_reg_1751;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten13_fu_258 <= 13'd0;
    end else if (((icmp_ln152_reg_1737 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten13_fu_258 <= add_ln152_reg_1741;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_250 <= 7'd0;
    end else if (((icmp_ln152_reg_1737 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_250 <= add_ln153_fu_1244_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_fu_246 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_fu_246 <= grp_fu_1939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln152_reg_1741 <= add_ln152_fu_1139_p2;
        add_ln154_reg_1762 <= add_ln154_fu_1203_p2;
        icmp_ln152_reg_1737 <= icmp_ln152_fu_1133_p2;
        icmp_ln152_reg_1737_pp0_iter1_reg <= icmp_ln152_reg_1737;
        icmp_ln152_reg_1737_pp0_iter2_reg <= icmp_ln152_reg_1737_pp0_iter1_reg;
        icmp_ln152_reg_1737_pp0_iter3_reg <= icmp_ln152_reg_1737_pp0_iter2_reg;
        select_ln121_reg_1746 <= select_ln121_fu_1157_p3;
        select_ln152_reg_1751 <= select_ln152_fu_1171_p3;
        trunc_ln153_reg_1756 <= trunc_ln153_fu_1185_p1;
        trunc_ln153_reg_1756_pp0_iter1_reg <= trunc_ln153_reg_1756;
        trunc_ln153_reg_1756_pp0_iter2_reg <= trunc_ln153_reg_1756_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred1112_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd0);
        ap_predicate_pred1124_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd1);
        ap_predicate_pred1133_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd2);
        ap_predicate_pred1142_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd3);
        ap_predicate_pred1151_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd4);
        ap_predicate_pred1160_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd5);
        ap_predicate_pred1169_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd6);
        ap_predicate_pred1178_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd7);
        ap_predicate_pred1187_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd8);
        ap_predicate_pred1196_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd9);
        ap_predicate_pred1205_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd10);
        ap_predicate_pred1214_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd11);
        ap_predicate_pred1223_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd12);
        ap_predicate_pred1232_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd13);
        ap_predicate_pred1241_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd14);
        ap_predicate_pred1250_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd15);
        ap_predicate_pred1259_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd16);
        ap_predicate_pred1268_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd17);
        ap_predicate_pred1277_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd18);
        ap_predicate_pred1286_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd19);
        ap_predicate_pred1295_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd20);
        ap_predicate_pred1304_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd21);
        ap_predicate_pred1313_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd22);
        ap_predicate_pred1322_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd23);
        ap_predicate_pred1331_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd24);
        ap_predicate_pred1340_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd25);
        ap_predicate_pred1349_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd26);
        ap_predicate_pred1358_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd27);
        ap_predicate_pred1367_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd28);
        ap_predicate_pred1376_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd29);
        ap_predicate_pred1385_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd30);
        ap_predicate_pred1394_state19 <= (trunc_ln153_reg_1756_pp0_iter2_reg == 5'd31);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul5_reg_2128 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul7_reg_2145 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub3_reg_2138 <= grp_fu_1939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_9_reg_1963 <= tmp_9_fu_1262_p67;
        tmp_s_reg_2133 <= tmp_s_fu_1525_p67;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_addr_reg_1968 <= zext_ln154_reg_1767;
        weights2_0_addr_reg_1968_pp0_iter2_reg <= weights2_0_addr_reg_1968;
        weights2_10_addr_reg_2018 <= zext_ln154_reg_1767;
        weights2_10_addr_reg_2018_pp0_iter2_reg <= weights2_10_addr_reg_2018;
        weights2_11_addr_reg_2023 <= zext_ln154_reg_1767;
        weights2_11_addr_reg_2023_pp0_iter2_reg <= weights2_11_addr_reg_2023;
        weights2_12_addr_reg_2028 <= zext_ln154_reg_1767;
        weights2_12_addr_reg_2028_pp0_iter2_reg <= weights2_12_addr_reg_2028;
        weights2_13_addr_reg_2033 <= zext_ln154_reg_1767;
        weights2_13_addr_reg_2033_pp0_iter2_reg <= weights2_13_addr_reg_2033;
        weights2_14_addr_reg_2038 <= zext_ln154_reg_1767;
        weights2_14_addr_reg_2038_pp0_iter2_reg <= weights2_14_addr_reg_2038;
        weights2_15_addr_reg_2043 <= zext_ln154_reg_1767;
        weights2_15_addr_reg_2043_pp0_iter2_reg <= weights2_15_addr_reg_2043;
        weights2_16_addr_reg_2048 <= zext_ln154_reg_1767;
        weights2_16_addr_reg_2048_pp0_iter2_reg <= weights2_16_addr_reg_2048;
        weights2_17_addr_reg_2053 <= zext_ln154_reg_1767;
        weights2_17_addr_reg_2053_pp0_iter2_reg <= weights2_17_addr_reg_2053;
        weights2_18_addr_reg_2058 <= zext_ln154_reg_1767;
        weights2_18_addr_reg_2058_pp0_iter2_reg <= weights2_18_addr_reg_2058;
        weights2_19_addr_reg_2063 <= zext_ln154_reg_1767;
        weights2_19_addr_reg_2063_pp0_iter2_reg <= weights2_19_addr_reg_2063;
        weights2_1_addr_reg_1973 <= zext_ln154_reg_1767;
        weights2_1_addr_reg_1973_pp0_iter2_reg <= weights2_1_addr_reg_1973;
        weights2_20_addr_reg_2068 <= zext_ln154_reg_1767;
        weights2_20_addr_reg_2068_pp0_iter2_reg <= weights2_20_addr_reg_2068;
        weights2_21_addr_reg_2073 <= zext_ln154_reg_1767;
        weights2_21_addr_reg_2073_pp0_iter2_reg <= weights2_21_addr_reg_2073;
        weights2_22_addr_reg_2078 <= zext_ln154_reg_1767;
        weights2_22_addr_reg_2078_pp0_iter2_reg <= weights2_22_addr_reg_2078;
        weights2_23_addr_reg_2083 <= zext_ln154_reg_1767;
        weights2_23_addr_reg_2083_pp0_iter2_reg <= weights2_23_addr_reg_2083;
        weights2_24_addr_reg_2088 <= zext_ln154_reg_1767;
        weights2_24_addr_reg_2088_pp0_iter2_reg <= weights2_24_addr_reg_2088;
        weights2_25_addr_reg_2093 <= zext_ln154_reg_1767;
        weights2_25_addr_reg_2093_pp0_iter2_reg <= weights2_25_addr_reg_2093;
        weights2_26_addr_reg_2098 <= zext_ln154_reg_1767;
        weights2_26_addr_reg_2098_pp0_iter2_reg <= weights2_26_addr_reg_2098;
        weights2_27_addr_reg_2103 <= zext_ln154_reg_1767;
        weights2_27_addr_reg_2103_pp0_iter2_reg <= weights2_27_addr_reg_2103;
        weights2_28_addr_reg_2108 <= zext_ln154_reg_1767;
        weights2_28_addr_reg_2108_pp0_iter2_reg <= weights2_28_addr_reg_2108;
        weights2_29_addr_reg_2113 <= zext_ln154_reg_1767;
        weights2_29_addr_reg_2113_pp0_iter2_reg <= weights2_29_addr_reg_2113;
        weights2_2_addr_reg_1978 <= zext_ln154_reg_1767;
        weights2_2_addr_reg_1978_pp0_iter2_reg <= weights2_2_addr_reg_1978;
        weights2_30_addr_reg_2118 <= zext_ln154_reg_1767;
        weights2_30_addr_reg_2118_pp0_iter2_reg <= weights2_30_addr_reg_2118;
        weights2_31_addr_reg_2123 <= zext_ln154_reg_1767;
        weights2_31_addr_reg_2123_pp0_iter2_reg <= weights2_31_addr_reg_2123;
        weights2_3_addr_reg_1983 <= zext_ln154_reg_1767;
        weights2_3_addr_reg_1983_pp0_iter2_reg <= weights2_3_addr_reg_1983;
        weights2_4_addr_reg_1988 <= zext_ln154_reg_1767;
        weights2_4_addr_reg_1988_pp0_iter2_reg <= weights2_4_addr_reg_1988;
        weights2_5_addr_reg_1993 <= zext_ln154_reg_1767;
        weights2_5_addr_reg_1993_pp0_iter2_reg <= weights2_5_addr_reg_1993;
        weights2_6_addr_reg_1998 <= zext_ln154_reg_1767;
        weights2_6_addr_reg_1998_pp0_iter2_reg <= weights2_6_addr_reg_1998;
        weights2_7_addr_reg_2003 <= zext_ln154_reg_1767;
        weights2_7_addr_reg_2003_pp0_iter2_reg <= weights2_7_addr_reg_2003;
        weights2_8_addr_reg_2008 <= zext_ln154_reg_1767;
        weights2_8_addr_reg_2008_pp0_iter2_reg <= weights2_8_addr_reg_2008;
        weights2_9_addr_reg_2013 <= zext_ln154_reg_1767;
        weights2_9_addr_reg_2013_pp0_iter2_reg <= weights2_9_addr_reg_2013;
        zext_ln154_reg_1767[6 : 0] <= zext_ln154_fu_1209_p1[6 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln152_reg_1737 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln152_reg_1737_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4_load = i_4_fu_254;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten13_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_258;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_250;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_norm_load_2 = grp_fu_1939_p_dout0;
    end else begin
        ap_sig_allocacmp_norm_load_2 = norm_fu_246;
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
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1101_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1101_opcode = 2'd0;
    end else begin
        grp_fu_1101_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1101_p0 = ap_sig_allocacmp_norm_load_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1101_p0 = tmp_s_reg_2133;
    end else begin
        grp_fu_1101_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1101_p1 = mul7_reg_2145;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1101_p1 = mul5_reg_2128;
    end else begin
        grp_fu_1101_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1105_p0 = sub3_reg_2138;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1105_p0 = tmp_9_reg_1963;
    end else begin
        grp_fu_1105_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1105_p1 = sub3_reg_2138;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1105_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1105_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln152_reg_1737_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_4_out_ap_vld = 1'b1;
    end else begin
        norm_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_address0_local = weights2_0_addr_reg_1968_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1112_state19 == 1'b1))) begin
        weights2_0_we0_local = 1'b1;
    end else begin
        weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_10_address0_local = weights2_10_addr_reg_2018_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_10_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_10_ce0_local = 1'b1;
    end else begin
        weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1205_state19 == 1'b1))) begin
        weights2_10_we0_local = 1'b1;
    end else begin
        weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_11_address0_local = weights2_11_addr_reg_2023_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_11_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_11_ce0_local = 1'b1;
    end else begin
        weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1214_state19 == 1'b1))) begin
        weights2_11_we0_local = 1'b1;
    end else begin
        weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_12_address0_local = weights2_12_addr_reg_2028_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_12_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_12_ce0_local = 1'b1;
    end else begin
        weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1223_state19 == 1'b1))) begin
        weights2_12_we0_local = 1'b1;
    end else begin
        weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_13_address0_local = weights2_13_addr_reg_2033_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_13_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_13_ce0_local = 1'b1;
    end else begin
        weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1232_state19 == 1'b1))) begin
        weights2_13_we0_local = 1'b1;
    end else begin
        weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_14_address0_local = weights2_14_addr_reg_2038_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_14_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_14_ce0_local = 1'b1;
    end else begin
        weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1241_state19 == 1'b1))) begin
        weights2_14_we0_local = 1'b1;
    end else begin
        weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_15_address0_local = weights2_15_addr_reg_2043_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_15_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_15_ce0_local = 1'b1;
    end else begin
        weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1250_state19 == 1'b1))) begin
        weights2_15_we0_local = 1'b1;
    end else begin
        weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_16_address0_local = weights2_16_addr_reg_2048_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_16_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_16_ce0_local = 1'b1;
    end else begin
        weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1259_state19 == 1'b1))) begin
        weights2_16_we0_local = 1'b1;
    end else begin
        weights2_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_17_address0_local = weights2_17_addr_reg_2053_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_17_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_17_ce0_local = 1'b1;
    end else begin
        weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1268_state19 == 1'b1))) begin
        weights2_17_we0_local = 1'b1;
    end else begin
        weights2_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_18_address0_local = weights2_18_addr_reg_2058_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_18_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_18_ce0_local = 1'b1;
    end else begin
        weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1277_state19 == 1'b1))) begin
        weights2_18_we0_local = 1'b1;
    end else begin
        weights2_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_19_address0_local = weights2_19_addr_reg_2063_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_19_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_19_ce0_local = 1'b1;
    end else begin
        weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1286_state19 == 1'b1))) begin
        weights2_19_we0_local = 1'b1;
    end else begin
        weights2_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_1_address0_local = weights2_1_addr_reg_1973_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_1_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1124_state19 == 1'b1))) begin
        weights2_1_we0_local = 1'b1;
    end else begin
        weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_20_address0_local = weights2_20_addr_reg_2068_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_20_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_20_ce0_local = 1'b1;
    end else begin
        weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1295_state19 == 1'b1))) begin
        weights2_20_we0_local = 1'b1;
    end else begin
        weights2_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_21_address0_local = weights2_21_addr_reg_2073_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_21_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_21_ce0_local = 1'b1;
    end else begin
        weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1304_state19 == 1'b1))) begin
        weights2_21_we0_local = 1'b1;
    end else begin
        weights2_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_22_address0_local = weights2_22_addr_reg_2078_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_22_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_22_ce0_local = 1'b1;
    end else begin
        weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1313_state19 == 1'b1))) begin
        weights2_22_we0_local = 1'b1;
    end else begin
        weights2_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_23_address0_local = weights2_23_addr_reg_2083_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_23_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_23_ce0_local = 1'b1;
    end else begin
        weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1322_state19 == 1'b1))) begin
        weights2_23_we0_local = 1'b1;
    end else begin
        weights2_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_24_address0_local = weights2_24_addr_reg_2088_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_24_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_24_ce0_local = 1'b1;
    end else begin
        weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1331_state19 == 1'b1))) begin
        weights2_24_we0_local = 1'b1;
    end else begin
        weights2_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_25_address0_local = weights2_25_addr_reg_2093_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_25_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_25_ce0_local = 1'b1;
    end else begin
        weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1340_state19 == 1'b1))) begin
        weights2_25_we0_local = 1'b1;
    end else begin
        weights2_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_26_address0_local = weights2_26_addr_reg_2098_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_26_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_26_ce0_local = 1'b1;
    end else begin
        weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1349_state19 == 1'b1))) begin
        weights2_26_we0_local = 1'b1;
    end else begin
        weights2_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_27_address0_local = weights2_27_addr_reg_2103_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_27_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_27_ce0_local = 1'b1;
    end else begin
        weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1358_state19 == 1'b1))) begin
        weights2_27_we0_local = 1'b1;
    end else begin
        weights2_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_28_address0_local = weights2_28_addr_reg_2108_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_28_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_28_ce0_local = 1'b1;
    end else begin
        weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1367_state19 == 1'b1))) begin
        weights2_28_we0_local = 1'b1;
    end else begin
        weights2_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_29_address0_local = weights2_29_addr_reg_2113_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_29_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_29_ce0_local = 1'b1;
    end else begin
        weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1376_state19 == 1'b1))) begin
        weights2_29_we0_local = 1'b1;
    end else begin
        weights2_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_2_address0_local = weights2_2_addr_reg_1978_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_2_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1133_state19 == 1'b1))) begin
        weights2_2_we0_local = 1'b1;
    end else begin
        weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_30_address0_local = weights2_30_addr_reg_2118_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_30_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_30_ce0_local = 1'b1;
    end else begin
        weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1385_state19 == 1'b1))) begin
        weights2_30_we0_local = 1'b1;
    end else begin
        weights2_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_31_address0_local = weights2_31_addr_reg_2123_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_31_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_31_ce0_local = 1'b1;
    end else begin
        weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1394_state19 == 1'b1))) begin
        weights2_31_we0_local = 1'b1;
    end else begin
        weights2_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_3_address0_local = weights2_3_addr_reg_1983_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_3_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1142_state19 == 1'b1))) begin
        weights2_3_we0_local = 1'b1;
    end else begin
        weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_4_address0_local = weights2_4_addr_reg_1988_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_4_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_4_ce0_local = 1'b1;
    end else begin
        weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1151_state19 == 1'b1))) begin
        weights2_4_we0_local = 1'b1;
    end else begin
        weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_5_address0_local = weights2_5_addr_reg_1993_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_5_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_5_ce0_local = 1'b1;
    end else begin
        weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1160_state19 == 1'b1))) begin
        weights2_5_we0_local = 1'b1;
    end else begin
        weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_6_address0_local = weights2_6_addr_reg_1998_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_6_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_6_ce0_local = 1'b1;
    end else begin
        weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1169_state19 == 1'b1))) begin
        weights2_6_we0_local = 1'b1;
    end else begin
        weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_7_address0_local = weights2_7_addr_reg_2003_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_7_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_7_ce0_local = 1'b1;
    end else begin
        weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1178_state19 == 1'b1))) begin
        weights2_7_we0_local = 1'b1;
    end else begin
        weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_8_address0_local = weights2_8_addr_reg_2008_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_8_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_8_ce0_local = 1'b1;
    end else begin
        weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1187_state19 == 1'b1))) begin
        weights2_8_we0_local = 1'b1;
    end else begin
        weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_9_address0_local = weights2_9_addr_reg_2013_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_9_address0_local = zext_ln154_reg_1767;
    end else begin
        weights2_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_9_ce0_local = 1'b1;
    end else begin
        weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1196_state19 == 1'b1))) begin
        weights2_9_we0_local = 1'b1;
    end else begin
        weights2_9_we0_local = 1'b0;
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
assign add_ln152_1_fu_1165_p2 = (ap_sig_allocacmp_i_4_load + 7'd1);
assign add_ln152_fu_1139_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 13'd1);
assign add_ln153_fu_1244_p2 = (select_ln121_reg_1746 + 7'd1);
assign add_ln154_fu_1203_p2 = (zext_ln154_1_fu_1199_p1 + empty_fu_1179_p2);
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
assign bitcast_ln154_32_fu_1660_p1 = sub3_reg_2138;
assign d_weights2_0_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_0_ce0 = d_weights2_0_ce0_local;
assign d_weights2_10_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_10_ce0 = d_weights2_10_ce0_local;
assign d_weights2_11_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_11_ce0 = d_weights2_11_ce0_local;
assign d_weights2_12_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_12_ce0 = d_weights2_12_ce0_local;
assign d_weights2_13_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_13_ce0 = d_weights2_13_ce0_local;
assign d_weights2_14_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_14_ce0 = d_weights2_14_ce0_local;
assign d_weights2_15_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_15_ce0 = d_weights2_15_ce0_local;
assign d_weights2_16_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_16_ce0 = d_weights2_16_ce0_local;
assign d_weights2_17_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_17_ce0 = d_weights2_17_ce0_local;
assign d_weights2_18_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_18_ce0 = d_weights2_18_ce0_local;
assign d_weights2_19_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_19_ce0 = d_weights2_19_ce0_local;
assign d_weights2_1_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_1_ce0 = d_weights2_1_ce0_local;
assign d_weights2_20_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_20_ce0 = d_weights2_20_ce0_local;
assign d_weights2_21_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_21_ce0 = d_weights2_21_ce0_local;
assign d_weights2_22_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_22_ce0 = d_weights2_22_ce0_local;
assign d_weights2_23_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_23_ce0 = d_weights2_23_ce0_local;
assign d_weights2_24_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_24_ce0 = d_weights2_24_ce0_local;
assign d_weights2_25_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_25_ce0 = d_weights2_25_ce0_local;
assign d_weights2_26_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_26_ce0 = d_weights2_26_ce0_local;
assign d_weights2_27_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_27_ce0 = d_weights2_27_ce0_local;
assign d_weights2_28_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_28_ce0 = d_weights2_28_ce0_local;
assign d_weights2_29_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_29_ce0 = d_weights2_29_ce0_local;
assign d_weights2_2_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_2_ce0 = d_weights2_2_ce0_local;
assign d_weights2_30_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_30_ce0 = d_weights2_30_ce0_local;
assign d_weights2_31_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_31_ce0 = d_weights2_31_ce0_local;
assign d_weights2_3_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_3_ce0 = d_weights2_3_ce0_local;
assign d_weights2_4_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_4_ce0 = d_weights2_4_ce0_local;
assign d_weights2_5_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_5_ce0 = d_weights2_5_ce0_local;
assign d_weights2_6_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_6_ce0 = d_weights2_6_ce0_local;
assign d_weights2_7_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_7_ce0 = d_weights2_7_ce0_local;
assign d_weights2_8_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_8_ce0 = d_weights2_8_ce0_local;
assign d_weights2_9_address0 = zext_ln154_fu_1209_p1;
assign d_weights2_9_ce0 = d_weights2_9_ce0_local;
assign empty_fu_1179_p2 = select_ln152_fu_1171_p3 << 7'd1;
assign grp_fu_1939_p_ce = 1'b1;
assign grp_fu_1939_p_din0 = grp_fu_1101_p0;
assign grp_fu_1939_p_din1 = grp_fu_1101_p1;
assign grp_fu_1939_p_opcode = grp_fu_1101_opcode;
assign grp_fu_1943_p_ce = 1'b1;
assign grp_fu_1943_p_din0 = grp_fu_1105_p0;
assign grp_fu_1943_p_din1 = grp_fu_1105_p1;
assign icmp_ln152_fu_1133_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln153_fu_1151_p2 = ((ap_sig_allocacmp_j_load == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1189_p4 = {{select_ln121_fu_1157_p3[6:5]}};
assign norm_4_out = norm_fu_246;
assign select_ln121_fu_1157_p3 = ((icmp_ln153_fu_1151_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln152_fu_1171_p3 = ((icmp_ln153_fu_1151_p2[0:0] == 1'b1) ? add_ln152_1_fu_1165_p2 : ap_sig_allocacmp_i_4_load);
assign tmp_9_fu_1262_p65 = 'bx;
assign tmp_s_fu_1525_p10 = weights2_4_q0;
assign tmp_s_fu_1525_p12 = weights2_5_q0;
assign tmp_s_fu_1525_p14 = weights2_6_q0;
assign tmp_s_fu_1525_p16 = weights2_7_q0;
assign tmp_s_fu_1525_p18 = weights2_8_q0;
assign tmp_s_fu_1525_p2 = weights2_0_q0;
assign tmp_s_fu_1525_p20 = weights2_9_q0;
assign tmp_s_fu_1525_p22 = weights2_10_q0;
assign tmp_s_fu_1525_p24 = weights2_11_q0;
assign tmp_s_fu_1525_p26 = weights2_12_q0;
assign tmp_s_fu_1525_p28 = weights2_13_q0;
assign tmp_s_fu_1525_p30 = weights2_14_q0;
assign tmp_s_fu_1525_p32 = weights2_15_q0;
assign tmp_s_fu_1525_p34 = weights2_16_q0;
assign tmp_s_fu_1525_p36 = weights2_17_q0;
assign tmp_s_fu_1525_p38 = weights2_18_q0;
assign tmp_s_fu_1525_p4 = weights2_1_q0;
assign tmp_s_fu_1525_p40 = weights2_19_q0;
assign tmp_s_fu_1525_p42 = weights2_20_q0;
assign tmp_s_fu_1525_p44 = weights2_21_q0;
assign tmp_s_fu_1525_p46 = weights2_22_q0;
assign tmp_s_fu_1525_p48 = weights2_23_q0;
assign tmp_s_fu_1525_p50 = weights2_24_q0;
assign tmp_s_fu_1525_p52 = weights2_25_q0;
assign tmp_s_fu_1525_p54 = weights2_26_q0;
assign tmp_s_fu_1525_p56 = weights2_27_q0;
assign tmp_s_fu_1525_p58 = weights2_28_q0;
assign tmp_s_fu_1525_p6 = weights2_2_q0;
assign tmp_s_fu_1525_p60 = weights2_29_q0;
assign tmp_s_fu_1525_p62 = weights2_30_q0;
assign tmp_s_fu_1525_p64 = weights2_31_q0;
assign tmp_s_fu_1525_p65 = 'bx;
assign tmp_s_fu_1525_p8 = weights2_3_q0;
assign trunc_ln153_fu_1185_p1 = select_ln121_fu_1157_p3[4:0];
assign weights2_0_address0 = weights2_0_address0_local;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_0_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_0_we0 = weights2_0_we0_local;
assign weights2_10_address0 = weights2_10_address0_local;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_10_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_10_we0 = weights2_10_we0_local;
assign weights2_11_address0 = weights2_11_address0_local;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_11_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_11_we0 = weights2_11_we0_local;
assign weights2_12_address0 = weights2_12_address0_local;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_12_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_12_we0 = weights2_12_we0_local;
assign weights2_13_address0 = weights2_13_address0_local;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_13_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_13_we0 = weights2_13_we0_local;
assign weights2_14_address0 = weights2_14_address0_local;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_14_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_14_we0 = weights2_14_we0_local;
assign weights2_15_address0 = weights2_15_address0_local;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_15_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_15_we0 = weights2_15_we0_local;
assign weights2_16_address0 = weights2_16_address0_local;
assign weights2_16_ce0 = weights2_16_ce0_local;
assign weights2_16_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_16_we0 = weights2_16_we0_local;
assign weights2_17_address0 = weights2_17_address0_local;
assign weights2_17_ce0 = weights2_17_ce0_local;
assign weights2_17_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_17_we0 = weights2_17_we0_local;
assign weights2_18_address0 = weights2_18_address0_local;
assign weights2_18_ce0 = weights2_18_ce0_local;
assign weights2_18_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_18_we0 = weights2_18_we0_local;
assign weights2_19_address0 = weights2_19_address0_local;
assign weights2_19_ce0 = weights2_19_ce0_local;
assign weights2_19_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_19_we0 = weights2_19_we0_local;
assign weights2_1_address0 = weights2_1_address0_local;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_1_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_1_we0 = weights2_1_we0_local;
assign weights2_20_address0 = weights2_20_address0_local;
assign weights2_20_ce0 = weights2_20_ce0_local;
assign weights2_20_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_20_we0 = weights2_20_we0_local;
assign weights2_21_address0 = weights2_21_address0_local;
assign weights2_21_ce0 = weights2_21_ce0_local;
assign weights2_21_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_21_we0 = weights2_21_we0_local;
assign weights2_22_address0 = weights2_22_address0_local;
assign weights2_22_ce0 = weights2_22_ce0_local;
assign weights2_22_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_22_we0 = weights2_22_we0_local;
assign weights2_23_address0 = weights2_23_address0_local;
assign weights2_23_ce0 = weights2_23_ce0_local;
assign weights2_23_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_23_we0 = weights2_23_we0_local;
assign weights2_24_address0 = weights2_24_address0_local;
assign weights2_24_ce0 = weights2_24_ce0_local;
assign weights2_24_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_24_we0 = weights2_24_we0_local;
assign weights2_25_address0 = weights2_25_address0_local;
assign weights2_25_ce0 = weights2_25_ce0_local;
assign weights2_25_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_25_we0 = weights2_25_we0_local;
assign weights2_26_address0 = weights2_26_address0_local;
assign weights2_26_ce0 = weights2_26_ce0_local;
assign weights2_26_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_26_we0 = weights2_26_we0_local;
assign weights2_27_address0 = weights2_27_address0_local;
assign weights2_27_ce0 = weights2_27_ce0_local;
assign weights2_27_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_27_we0 = weights2_27_we0_local;
assign weights2_28_address0 = weights2_28_address0_local;
assign weights2_28_ce0 = weights2_28_ce0_local;
assign weights2_28_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_28_we0 = weights2_28_we0_local;
assign weights2_29_address0 = weights2_29_address0_local;
assign weights2_29_ce0 = weights2_29_ce0_local;
assign weights2_29_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_29_we0 = weights2_29_we0_local;
assign weights2_2_address0 = weights2_2_address0_local;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_2_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_2_we0 = weights2_2_we0_local;
assign weights2_30_address0 = weights2_30_address0_local;
assign weights2_30_ce0 = weights2_30_ce0_local;
assign weights2_30_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_30_we0 = weights2_30_we0_local;
assign weights2_31_address0 = weights2_31_address0_local;
assign weights2_31_ce0 = weights2_31_ce0_local;
assign weights2_31_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_31_we0 = weights2_31_we0_local;
assign weights2_3_address0 = weights2_3_address0_local;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_3_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_3_we0 = weights2_3_we0_local;
assign weights2_4_address0 = weights2_4_address0_local;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_4_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_4_we0 = weights2_4_we0_local;
assign weights2_5_address0 = weights2_5_address0_local;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_5_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_5_we0 = weights2_5_we0_local;
assign weights2_6_address0 = weights2_6_address0_local;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_6_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_6_we0 = weights2_6_we0_local;
assign weights2_7_address0 = weights2_7_address0_local;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_7_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_7_we0 = weights2_7_we0_local;
assign weights2_8_address0 = weights2_8_address0_local;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_8_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_8_we0 = weights2_8_we0_local;
assign weights2_9_address0 = weights2_9_address0_local;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign weights2_9_d0 = bitcast_ln154_32_fu_1660_p1;
assign weights2_9_we0 = weights2_9_we0_local;
assign zext_ln154_1_fu_1199_p1 = lshr_ln1_fu_1189_p4;
assign zext_ln154_fu_1209_p1 = add_ln154_reg_1762;
always @ (posedge ap_clk) begin
    zext_ln154_reg_1767[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 