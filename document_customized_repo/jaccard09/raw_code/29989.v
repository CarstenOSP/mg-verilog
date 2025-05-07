module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_q0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_16_address0,DATA_x_16_ce0,DATA_x_16_q0,DATA_x_24_address0,DATA_x_24_ce0,DATA_x_24_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_17_address0,DATA_x_17_ce0,DATA_x_17_q0,DATA_x_25_address0,DATA_x_25_ce0,DATA_x_25_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_18_address0,DATA_x_18_ce0,DATA_x_18_q0,DATA_x_26_address0,DATA_x_26_ce0,DATA_x_26_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_19_address0,DATA_x_19_ce0,DATA_x_19_q0,DATA_x_27_address0,DATA_x_27_ce0,DATA_x_27_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_20_address0,DATA_x_20_ce0,DATA_x_20_q0,DATA_x_28_address0,DATA_x_28_ce0,DATA_x_28_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_21_address0,DATA_x_21_ce0,DATA_x_21_q0,DATA_x_29_address0,DATA_x_29_ce0,DATA_x_29_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_22_address0,DATA_x_22_ce0,DATA_x_22_q0,DATA_x_30_address0,DATA_x_30_ce0,DATA_x_30_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,DATA_x_23_address0,DATA_x_23_ce0,DATA_x_23_q0,DATA_x_31_address0,DATA_x_31_ce0,DATA_x_31_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,grp_fu_1092_p_din0,grp_fu_1092_p_din1,grp_fu_1092_p_opcode,grp_fu_1092_p_dout0,grp_fu_1092_p_ce,grp_fu_1152_p_din0,grp_fu_1152_p_din1,grp_fu_1152_p_dout0,grp_fu_1152_p_ce,grp_fu_1156_p_din0,grp_fu_1156_p_din1,grp_fu_1156_p_dout0,grp_fu_1156_p_ce,grp_fu_1160_p_din0,grp_fu_1160_p_din1,grp_fu_1160_p_dout0,grp_fu_1160_p_ce,grp_fu_1189_p_din0,grp_fu_1189_p_din1,grp_fu_1189_p_dout0,grp_fu_1189_p_ce,grp_fu_1096_p_din0,grp_fu_1096_p_din1,grp_fu_1096_p_opcode,grp_fu_1096_p_dout0,grp_fu_1096_p_ce,grp_fu_1100_p_din0,grp_fu_1100_p_din1,grp_fu_1100_p_opcode,grp_fu_1100_p_dout0,grp_fu_1100_p_ce,grp_fu_1104_p_din0,grp_fu_1104_p_din1,grp_fu_1104_p_opcode,grp_fu_1104_p_dout0,grp_fu_1104_p_ce,grp_fu_1108_p_din0,grp_fu_1108_p_din1,grp_fu_1108_p_opcode,grp_fu_1108_p_dout0,grp_fu_1108_p_ce,grp_fu_1112_p_din0,grp_fu_1112_p_din1,grp_fu_1112_p_opcode,grp_fu_1112_p_dout0,grp_fu_1112_p_ce,grp_fu_1116_p_din0,grp_fu_1116_p_din1,grp_fu_1116_p_opcode,grp_fu_1116_p_dout0,grp_fu_1116_p_ce,grp_fu_1120_p_din0,grp_fu_1120_p_din1,grp_fu_1120_p_opcode,grp_fu_1120_p_dout0,grp_fu_1120_p_ce,grp_fu_1124_p_din0,grp_fu_1124_p_din1,grp_fu_1124_p_opcode,grp_fu_1124_p_dout0,grp_fu_1124_p_ce,grp_fu_1128_p_din0,grp_fu_1128_p_din1,grp_fu_1128_p_opcode,grp_fu_1128_p_dout0,grp_fu_1128_p_ce,grp_fu_1132_p_din0,grp_fu_1132_p_din1,grp_fu_1132_p_opcode,grp_fu_1132_p_dout0,grp_fu_1132_p_ce,grp_fu_1136_p_din0,grp_fu_1136_p_din1,grp_fu_1136_p_opcode,grp_fu_1136_p_dout0,grp_fu_1136_p_ce,grp_fu_1140_p_din0,grp_fu_1140_p_din1,grp_fu_1140_p_opcode,grp_fu_1140_p_dout0,grp_fu_1140_p_ce,grp_fu_1144_p_din0,grp_fu_1144_p_din1,grp_fu_1144_p_opcode,grp_fu_1144_p_dout0,grp_fu_1144_p_ce,grp_fu_1148_p_din0,grp_fu_1148_p_din1,grp_fu_1148_p_opcode,grp_fu_1148_p_dout0,grp_fu_1148_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [4:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
input  [63:0] DATA_y_8_q0;
output  [4:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [4:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
input  [63:0] DATA_y_9_q0;
output  [4:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [4:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
input  [63:0] DATA_y_10_q0;
output  [4:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [4:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
input  [63:0] DATA_y_11_q0;
output  [4:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [4:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
input  [63:0] DATA_y_12_q0;
output  [4:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [4:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
input  [63:0] DATA_y_13_q0;
output  [4:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [4:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
input  [63:0] DATA_y_14_q0;
output  [4:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [4:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
input  [63:0] DATA_y_15_q0;
output  [3:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [3:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
input  [63:0] DATA_x_8_q0;
output  [3:0] DATA_x_16_address0;
output   DATA_x_16_ce0;
input  [63:0] DATA_x_16_q0;
output  [3:0] DATA_x_24_address0;
output   DATA_x_24_ce0;
input  [63:0] DATA_x_24_q0;
output  [3:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [3:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
input  [63:0] DATA_x_9_q0;
output  [3:0] DATA_x_17_address0;
output   DATA_x_17_ce0;
input  [63:0] DATA_x_17_q0;
output  [3:0] DATA_x_25_address0;
output   DATA_x_25_ce0;
input  [63:0] DATA_x_25_q0;
output  [3:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [3:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
input  [63:0] DATA_x_10_q0;
output  [3:0] DATA_x_18_address0;
output   DATA_x_18_ce0;
input  [63:0] DATA_x_18_q0;
output  [3:0] DATA_x_26_address0;
output   DATA_x_26_ce0;
input  [63:0] DATA_x_26_q0;
output  [3:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [3:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
input  [63:0] DATA_x_11_q0;
output  [3:0] DATA_x_19_address0;
output   DATA_x_19_ce0;
input  [63:0] DATA_x_19_q0;
output  [3:0] DATA_x_27_address0;
output   DATA_x_27_ce0;
input  [63:0] DATA_x_27_q0;
output  [3:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [3:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
input  [63:0] DATA_x_12_q0;
output  [3:0] DATA_x_20_address0;
output   DATA_x_20_ce0;
input  [63:0] DATA_x_20_q0;
output  [3:0] DATA_x_28_address0;
output   DATA_x_28_ce0;
input  [63:0] DATA_x_28_q0;
output  [3:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [3:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
input  [63:0] DATA_x_13_q0;
output  [3:0] DATA_x_21_address0;
output   DATA_x_21_ce0;
input  [63:0] DATA_x_21_q0;
output  [3:0] DATA_x_29_address0;
output   DATA_x_29_ce0;
input  [63:0] DATA_x_29_q0;
output  [3:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [3:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
input  [63:0] DATA_x_14_q0;
output  [3:0] DATA_x_22_address0;
output   DATA_x_22_ce0;
input  [63:0] DATA_x_22_q0;
output  [3:0] DATA_x_30_address0;
output   DATA_x_30_ce0;
input  [63:0] DATA_x_30_q0;
output  [3:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [3:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
input  [63:0] DATA_x_15_q0;
output  [3:0] DATA_x_23_address0;
output   DATA_x_23_ce0;
input  [63:0] DATA_x_23_q0;
output  [3:0] DATA_x_31_address0;
output   DATA_x_31_ce0;
input  [63:0] DATA_x_31_q0;
output  [8:0] work_x_address0;
output   work_x_ce0;
output   work_x_we0;
output  [63:0] work_x_d0;
output  [8:0] work_x_address1;
output   work_x_ce1;
output   work_x_we1;
output  [63:0] work_x_d1;
output  [8:0] work_y_address0;
output   work_y_ce0;
output   work_y_we0;
output  [63:0] work_y_d0;
output  [8:0] work_y_address1;
output   work_y_ce1;
output   work_y_we1;
output  [63:0] work_y_d1;
output  [63:0] grp_fu_1092_p_din0;
output  [63:0] grp_fu_1092_p_din1;
output  [1:0] grp_fu_1092_p_opcode;
input  [63:0] grp_fu_1092_p_dout0;
output   grp_fu_1092_p_ce;
output  [63:0] grp_fu_1152_p_din0;
output  [63:0] grp_fu_1152_p_din1;
input  [63:0] grp_fu_1152_p_dout0;
output   grp_fu_1152_p_ce;
output  [63:0] grp_fu_1156_p_din0;
output  [63:0] grp_fu_1156_p_din1;
input  [63:0] grp_fu_1156_p_dout0;
output   grp_fu_1156_p_ce;
output  [63:0] grp_fu_1160_p_din0;
output  [63:0] grp_fu_1160_p_din1;
input  [63:0] grp_fu_1160_p_dout0;
output   grp_fu_1160_p_ce;
output  [63:0] grp_fu_1189_p_din0;
output  [63:0] grp_fu_1189_p_din1;
input  [63:0] grp_fu_1189_p_dout0;
output   grp_fu_1189_p_ce;
output  [63:0] grp_fu_1096_p_din0;
output  [63:0] grp_fu_1096_p_din1;
output  [1:0] grp_fu_1096_p_opcode;
input  [63:0] grp_fu_1096_p_dout0;
output   grp_fu_1096_p_ce;
output  [63:0] grp_fu_1100_p_din0;
output  [63:0] grp_fu_1100_p_din1;
output  [1:0] grp_fu_1100_p_opcode;
input  [63:0] grp_fu_1100_p_dout0;
output   grp_fu_1100_p_ce;
output  [63:0] grp_fu_1104_p_din0;
output  [63:0] grp_fu_1104_p_din1;
output  [1:0] grp_fu_1104_p_opcode;
input  [63:0] grp_fu_1104_p_dout0;
output   grp_fu_1104_p_ce;
output  [63:0] grp_fu_1108_p_din0;
output  [63:0] grp_fu_1108_p_din1;
output  [1:0] grp_fu_1108_p_opcode;
input  [63:0] grp_fu_1108_p_dout0;
output   grp_fu_1108_p_ce;
output  [63:0] grp_fu_1112_p_din0;
output  [63:0] grp_fu_1112_p_din1;
output  [1:0] grp_fu_1112_p_opcode;
input  [63:0] grp_fu_1112_p_dout0;
output   grp_fu_1112_p_ce;
output  [63:0] grp_fu_1116_p_din0;
output  [63:0] grp_fu_1116_p_din1;
output  [1:0] grp_fu_1116_p_opcode;
input  [63:0] grp_fu_1116_p_dout0;
output   grp_fu_1116_p_ce;
output  [63:0] grp_fu_1120_p_din0;
output  [63:0] grp_fu_1120_p_din1;
output  [1:0] grp_fu_1120_p_opcode;
input  [63:0] grp_fu_1120_p_dout0;
output   grp_fu_1120_p_ce;
output  [63:0] grp_fu_1124_p_din0;
output  [63:0] grp_fu_1124_p_din1;
output  [1:0] grp_fu_1124_p_opcode;
input  [63:0] grp_fu_1124_p_dout0;
output   grp_fu_1124_p_ce;
output  [63:0] grp_fu_1128_p_din0;
output  [63:0] grp_fu_1128_p_din1;
output  [1:0] grp_fu_1128_p_opcode;
input  [63:0] grp_fu_1128_p_dout0;
output   grp_fu_1128_p_ce;
output  [63:0] grp_fu_1132_p_din0;
output  [63:0] grp_fu_1132_p_din1;
output  [1:0] grp_fu_1132_p_opcode;
input  [63:0] grp_fu_1132_p_dout0;
output   grp_fu_1132_p_ce;
output  [63:0] grp_fu_1136_p_din0;
output  [63:0] grp_fu_1136_p_din1;
output  [1:0] grp_fu_1136_p_opcode;
input  [63:0] grp_fu_1136_p_dout0;
output   grp_fu_1136_p_ce;
output  [63:0] grp_fu_1140_p_din0;
output  [63:0] grp_fu_1140_p_din1;
output  [1:0] grp_fu_1140_p_opcode;
input  [63:0] grp_fu_1140_p_dout0;
output   grp_fu_1140_p_ce;
output  [63:0] grp_fu_1144_p_din0;
output  [63:0] grp_fu_1144_p_din1;
output  [1:0] grp_fu_1144_p_opcode;
input  [63:0] grp_fu_1144_p_dout0;
output   grp_fu_1144_p_ce;
output  [63:0] grp_fu_1148_p_din0;
output  [63:0] grp_fu_1148_p_din1;
output  [1:0] grp_fu_1148_p_opcode;
input  [63:0] grp_fu_1148_p_dout0;
output   grp_fu_1148_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln365_reg_1909;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_5_reg_1897;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_1897_pp0_iter1_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter2_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter3_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter4_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter5_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter6_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter7_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter8_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter9_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter10_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter11_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter12_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter13_reg;
reg   [6:0] tid_5_reg_1897_pp0_iter14_reg;
wire   [0:0] icmp_ln365_fu_1036_p2;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter1_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter2_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter3_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter4_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter5_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter6_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter7_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter8_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter9_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter10_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter11_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter12_reg;
reg   [0:0] icmp_ln365_reg_1909_pp0_iter13_reg;
wire   [63:0] c0_y_fu_1124_p3;
reg   [63:0] c0_y_reg_2153;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] c0_y_61_fu_1132_p3;
reg   [63:0] c0_y_61_reg_2159;
wire   [63:0] c0_y_62_fu_1140_p3;
reg   [63:0] c0_y_62_reg_2165;
wire   [63:0] c0_y_63_fu_1148_p3;
reg   [63:0] c0_y_63_reg_2170;
wire   [63:0] select_ln371_fu_1156_p3;
reg   [63:0] select_ln371_reg_2176;
wire   [63:0] select_ln372_fu_1164_p3;
reg   [63:0] select_ln372_reg_2182;
wire   [63:0] select_ln373_fu_1172_p3;
reg   [63:0] select_ln373_reg_2188;
wire   [63:0] select_ln374_fu_1180_p3;
reg   [63:0] select_ln374_reg_2193;
wire   [63:0] c0_x_fu_1188_p11;
reg   [63:0] c0_x_reg_2199;
wire   [63:0] c0_x_35_fu_1212_p11;
reg   [63:0] c0_x_35_reg_2205;
wire   [63:0] c0_x_36_fu_1236_p11;
reg   [63:0] c0_x_36_reg_2211;
wire   [63:0] c0_x_37_fu_1260_p11;
reg   [63:0] c0_x_37_reg_2216;
wire   [63:0] tmp_s_fu_1284_p11;
reg   [63:0] tmp_s_reg_2222;
wire   [63:0] tmp_91_fu_1308_p11;
reg   [63:0] tmp_91_reg_2228;
wire   [63:0] tmp_92_fu_1332_p11;
reg   [63:0] tmp_92_reg_2234;
wire   [63:0] tmp_93_fu_1356_p11;
reg   [63:0] tmp_93_reg_2239;
reg   [63:0] c0_x_39_reg_2245;
reg   [63:0] c0_y_36_reg_2251;
reg   [63:0] tmp_1_reg_2257;
reg   [63:0] sub_reg_2263;
reg   [63:0] tmp_1_11_reg_2269;
reg   [63:0] tmp_1_11_reg_2269_pp0_iter3_reg;
reg   [63:0] tmp_1_11_reg_2269_pp0_iter4_reg;
reg   [63:0] sub12_reg_2275;
reg   [63:0] sub12_reg_2275_pp0_iter3_reg;
reg   [63:0] sub12_reg_2275_pp0_iter4_reg;
reg   [63:0] add12_reg_2281;
reg   [63:0] add13_reg_2287;
reg   [63:0] tmp_1_12_reg_2293;
reg   [63:0] sub13_reg_2298;
reg   [63:0] c0_x_61_reg_2303;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_64_reg_2309;
reg   [63:0] c0_x_38_reg_2315;
reg   [63:0] c0_x_38_reg_2315_pp0_iter3_reg;
reg   [63:0] c0_x_38_reg_2315_pp0_iter4_reg;
reg   [63:0] c0_x_38_reg_2315_pp0_iter5_reg;
reg   [63:0] c0_x_38_reg_2315_pp0_iter6_reg;
reg   [63:0] c0_y_35_reg_2321;
reg   [63:0] c0_y_35_reg_2321_pp0_iter3_reg;
reg   [63:0] c0_y_35_reg_2321_pp0_iter4_reg;
reg   [63:0] c0_y_35_reg_2321_pp0_iter5_reg;
reg   [63:0] c0_y_35_reg_2321_pp0_iter6_reg;
reg   [63:0] add_reg_2327;
reg   [63:0] add11_reg_2333;
wire   [63:0] bitcast_ln386_1_fu_1419_p1;
wire   [63:0] bitcast_ln386_3_fu_1453_p1;
wire   [63:0] bitcast_ln386_9_fu_1487_p1;
wire   [63:0] bitcast_ln386_11_fu_1522_p1;
reg   [63:0] sub14_reg_2361;
reg   [63:0] add14_reg_2366;
reg   [63:0] mul_reg_2371;
reg   [63:0] mul6_reg_2376;
reg   [63:0] sub16_reg_2381;
reg   [63:0] add16_reg_2386;
reg   [63:0] tmp_16_reg_2391;
reg   [63:0] tmp_16_reg_2391_pp0_iter5_reg;
reg   [63:0] tmp_16_reg_2391_pp0_iter6_reg;
reg   [63:0] c0_x_62_reg_2397;
reg   [63:0] c0_y_65_reg_2403;
reg   [63:0] sub17_reg_2409;
reg   [63:0] sub17_reg_2409_pp0_iter5_reg;
reg   [63:0] sub17_reg_2409_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_1557_p1;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln386_7_fu_1591_p1;
reg   [63:0] c0_x_41_reg_2425;
reg   [63:0] c0_x_41_reg_2425_pp0_iter5_reg;
reg   [63:0] c0_x_41_reg_2425_pp0_iter6_reg;
reg   [63:0] c0_x_41_reg_2425_pp0_iter7_reg;
reg   [63:0] c0_x_41_reg_2425_pp0_iter8_reg;
reg   [63:0] c0_y_38_reg_2431;
reg   [63:0] c0_y_38_reg_2431_pp0_iter5_reg;
reg   [63:0] c0_y_38_reg_2431_pp0_iter6_reg;
reg   [63:0] c0_y_38_reg_2431_pp0_iter7_reg;
reg   [63:0] c0_y_38_reg_2431_pp0_iter8_reg;
reg   [63:0] add17_reg_2437;
reg   [63:0] add18_reg_2443;
reg   [63:0] c0_x_40_reg_2449;
reg   [63:0] c0_y_37_reg_2455;
reg   [63:0] mul7_reg_2461;
reg   [63:0] mul8_reg_2467;
reg   [63:0] mul9_reg_2473;
reg   [63:0] mul10_reg_2478;
reg   [63:0] sub15_reg_2483;
reg   [63:0] add15_reg_2489;
reg   [63:0] sub20_reg_2495;
reg   [63:0] sub20_reg_2495_pp0_iter7_reg;
reg   [63:0] sub20_reg_2495_pp0_iter8_reg;
reg   [63:0] sub20_reg_2495_pp0_iter9_reg;
reg   [63:0] sub20_reg_2495_pp0_iter10_reg;
reg   [63:0] sub20_reg_2495_pp0_iter11_reg;
reg   [63:0] sub20_reg_2495_pp0_iter12_reg;
reg   [63:0] sub20_reg_2495_pp0_iter13_reg;
reg   [63:0] sub21_reg_2500;
reg   [63:0] sub21_reg_2500_pp0_iter7_reg;
reg   [63:0] sub21_reg_2500_pp0_iter8_reg;
reg   [63:0] sub21_reg_2500_pp0_iter9_reg;
reg   [63:0] sub21_reg_2500_pp0_iter10_reg;
reg   [63:0] sub21_reg_2500_pp0_iter11_reg;
reg   [63:0] sub21_reg_2500_pp0_iter12_reg;
reg   [63:0] sub21_reg_2500_pp0_iter13_reg;
wire   [63:0] bitcast_ln386_13_fu_1625_p1;
wire   [63:0] bitcast_ln386_15_fu_1659_p1;
reg   [63:0] add19_reg_2515;
reg   [63:0] add19_reg_2515_pp0_iter8_reg;
reg   [63:0] add19_reg_2515_pp0_iter9_reg;
reg   [63:0] add19_reg_2515_pp0_iter10_reg;
reg   [63:0] add19_reg_2515_pp0_iter11_reg;
reg   [63:0] add19_reg_2515_pp0_iter12_reg;
reg   [63:0] add19_reg_2515_pp0_iter13_reg;
reg   [63:0] add20_reg_2520;
reg   [63:0] add20_reg_2520_pp0_iter8_reg;
reg   [63:0] add20_reg_2520_pp0_iter9_reg;
reg   [63:0] add20_reg_2520_pp0_iter10_reg;
reg   [63:0] add20_reg_2520_pp0_iter11_reg;
reg   [63:0] add20_reg_2520_pp0_iter12_reg;
reg   [63:0] add20_reg_2520_pp0_iter13_reg;
reg   [63:0] add23_reg_2525;
reg   [63:0] add23_reg_2525_pp0_iter9_reg;
reg   [63:0] add24_reg_2530;
reg   [63:0] add24_reg_2530_pp0_iter9_reg;
reg   [63:0] tmp_17_reg_2535;
reg   [63:0] tmp_17_reg_2535_pp0_iter9_reg;
reg   [63:0] sub24_reg_2541;
reg   [63:0] sub24_reg_2541_pp0_iter9_reg;
reg   [63:0] c0_x_63_reg_2547;
reg   [63:0] c0_y_66_reg_2552;
reg   [63:0] c0_x_42_reg_2557;
reg   [63:0] c0_x_42_reg_2557_pp0_iter9_reg;
reg   [63:0] c0_x_42_reg_2557_pp0_iter10_reg;
reg   [63:0] c0_x_42_reg_2557_pp0_iter11_reg;
reg   [63:0] c0_y_39_reg_2563;
reg   [63:0] c0_y_39_reg_2563_pp0_iter9_reg;
reg   [63:0] c0_y_39_reg_2563_pp0_iter10_reg;
reg   [63:0] c0_y_39_reg_2563_pp0_iter11_reg;
reg   [63:0] sub18_reg_2569;
reg   [63:0] sub19_reg_2575;
reg   [63:0] mul11_reg_2581;
reg   [63:0] mul12_reg_2586;
wire   [63:0] bitcast_ln386_17_fu_1693_p1;
wire   [63:0] bitcast_ln386_19_fu_1727_p1;
reg   [63:0] add21_reg_2601;
reg   [63:0] add21_reg_2601_pp0_iter11_reg;
reg   [63:0] add21_reg_2601_pp0_iter12_reg;
reg   [63:0] add25_reg_2606;
reg   [63:0] add25_reg_2606_pp0_iter11_reg;
reg   [63:0] add25_reg_2606_pp0_iter12_reg;
reg   [63:0] add26_reg_2611;
reg   [63:0] add26_reg_2611_pp0_iter11_reg;
reg   [63:0] add26_reg_2611_pp0_iter12_reg;
reg   [63:0] add22_reg_2616;
reg   [63:0] add22_reg_2616_pp0_iter12_reg;
reg   [63:0] add22_reg_2616_pp0_iter13_reg;
reg   [63:0] sub22_reg_2621;
reg   [63:0] sub22_reg_2621_pp0_iter12_reg;
reg   [63:0] sub22_reg_2621_pp0_iter13_reg;
reg   [63:0] sub22_reg_2621_pp0_iter14_reg;
reg   [63:0] sub23_reg_2626;
reg   [63:0] sub23_reg_2626_pp0_iter12_reg;
reg   [63:0] sub23_reg_2626_pp0_iter13_reg;
reg   [63:0] sub23_reg_2626_pp0_iter14_reg;
reg   [63:0] sub27_reg_2631;
reg   [63:0] sub27_reg_2631_pp0_iter12_reg;
reg   [63:0] sub27_reg_2631_pp0_iter13_reg;
reg   [63:0] sub27_reg_2631_pp0_iter14_reg;
reg   [63:0] sub28_reg_2636;
reg   [63:0] sub28_reg_2636_pp0_iter12_reg;
reg   [63:0] sub28_reg_2636_pp0_iter13_reg;
reg   [63:0] sub28_reg_2636_pp0_iter14_reg;
reg   [63:0] sub25_reg_2641;
reg   [63:0] sub26_reg_2647;
reg   [63:0] add27_reg_2653;
reg   [63:0] add28_reg_2658;
wire  signed [6:0] zext_ln390_cast_fu_1735_p3;
reg  signed [6:0] zext_ln390_cast_reg_2663;
wire  signed [7:0] zext_ln391_cast_fu_1753_p3;
reg  signed [7:0] zext_ln391_cast_reg_2669;
reg   [63:0] sub29_reg_2674;
reg   [63:0] sub30_reg_2679;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln367_1_fu_1098_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln367_fu_1052_p1;
wire   [63:0] zext_ln390_fu_1743_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln391_fu_1760_p1;
wire   [63:0] zext_ln365_fu_1778_p1;
wire   [63:0] zext_ln392_fu_1790_p1;
wire   [63:0] zext_ln393_1_fu_1819_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_1832_p1;
wire   [63:0] zext_ln394_fu_1859_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln396_fu_1872_p1;
reg   [6:0] tid_fu_170;
wire   [6:0] add_ln365_fu_1380_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_y_15_ce0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_16_ce0_local;
reg    DATA_x_24_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_17_ce0_local;
reg    DATA_x_25_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_18_ce0_local;
reg    DATA_x_26_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_19_ce0_local;
reg    DATA_x_27_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_20_ce0_local;
reg    DATA_x_28_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_21_ce0_local;
reg    DATA_x_29_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_22_ce0_local;
reg    DATA_x_30_ce0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_15_ce0_local;
reg    DATA_x_23_ce0_local;
reg    DATA_x_31_ce0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_1749_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_1766_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln389_fu_1783_p1;
wire   [63:0] bitcast_ln392_fu_1796_p1;
wire   [63:0] bitcast_ln393_fu_1825_p1;
wire   [63:0] bitcast_ln395_fu_1838_p1;
wire   [63:0] bitcast_ln394_fu_1865_p1;
wire   [63:0] bitcast_ln396_fu_1878_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_1770_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_1774_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln398_fu_1800_p1;
wire   [63:0] bitcast_ln401_fu_1804_p1;
wire   [63:0] bitcast_ln402_fu_1842_p1;
wire   [63:0] bitcast_ln404_fu_1846_p1;
wire   [63:0] bitcast_ln403_fu_1882_p1;
wire   [63:0] bitcast_ln405_fu_1886_p1;
reg   [63:0] grp_fu_944_p0;
reg   [63:0] grp_fu_944_p1;
reg   [63:0] grp_fu_948_p0;
reg   [63:0] grp_fu_948_p1;
reg   [63:0] grp_fu_952_p0;
reg   [63:0] grp_fu_952_p1;
reg   [63:0] grp_fu_956_p0;
reg   [63:0] grp_fu_956_p1;
reg   [63:0] grp_fu_960_p0;
reg   [63:0] grp_fu_960_p1;
reg   [63:0] grp_fu_964_p0;
reg   [63:0] grp_fu_964_p1;
reg   [63:0] grp_fu_968_p0;
reg   [63:0] grp_fu_968_p1;
reg   [63:0] grp_fu_972_p0;
reg   [63:0] grp_fu_972_p1;
reg   [63:0] grp_fu_976_p0;
reg   [63:0] grp_fu_976_p1;
reg   [63:0] grp_fu_980_p0;
reg   [63:0] grp_fu_980_p1;
reg   [63:0] grp_fu_984_p0;
reg   [63:0] grp_fu_984_p1;
reg   [63:0] grp_fu_988_p0;
reg   [63:0] grp_fu_988_p1;
reg   [63:0] grp_fu_992_p0;
reg   [63:0] grp_fu_992_p1;
reg   [63:0] grp_fu_996_p0;
reg   [63:0] grp_fu_996_p1;
reg   [63:0] grp_fu_1000_p0;
reg   [63:0] grp_fu_1000_p1;
reg   [63:0] grp_fu_1004_p0;
reg   [63:0] grp_fu_1004_p1;
reg   [63:0] grp_fu_1009_p0;
reg   [63:0] grp_fu_1009_p1;
reg   [63:0] grp_fu_1016_p0;
reg   [63:0] grp_fu_1016_p1;
reg   [63:0] grp_fu_1021_p0;
reg   [63:0] grp_fu_1021_p1;
wire   [3:0] lshr_ln_fu_1042_p4;
wire   [4:0] lshr_ln367_1_fu_1088_p4;
wire   [0:0] trunc_ln365_fu_1118_p1;
wire   [63:0] c0_x_fu_1188_p9;
wire   [1:0] trunc_ln365_1_fu_1121_p1;
wire   [63:0] c0_x_35_fu_1212_p9;
wire   [63:0] c0_x_36_fu_1236_p9;
wire   [63:0] c0_x_37_fu_1260_p9;
wire   [63:0] tmp_s_fu_1284_p9;
wire   [63:0] tmp_91_fu_1308_p9;
wire   [63:0] tmp_92_fu_1332_p9;
wire   [63:0] tmp_93_fu_1356_p9;
wire   [63:0] bitcast_ln386_fu_1390_p1;
wire   [0:0] bit_sel_fu_1393_p3;
wire   [0:0] xor_ln386_10_fu_1401_p2;
wire   [62:0] trunc_ln386_fu_1407_p1;
wire   [63:0] xor_ln3_fu_1411_p3;
wire   [63:0] bitcast_ln386_2_fu_1424_p1;
wire   [0:0] bit_sel40_fu_1427_p3;
wire   [0:0] xor_ln386_fu_1435_p2;
wire   [62:0] trunc_ln386_1_fu_1441_p1;
wire   [63:0] xor_ln386_1_fu_1445_p3;
wire   [63:0] bitcast_ln386_8_fu_1458_p1;
wire   [0:0] bit_sel43_fu_1461_p3;
wire   [0:0] xor_ln386_13_fu_1469_p2;
wire   [62:0] trunc_ln386_4_fu_1475_p1;
wire   [63:0] xor_ln386_4_fu_1479_p3;
wire   [63:0] bitcast_ln386_10_fu_1493_p1;
wire   [0:0] bit_sel44_fu_1496_p3;
wire   [0:0] xor_ln386_14_fu_1504_p2;
wire   [62:0] trunc_ln386_5_fu_1510_p1;
wire   [63:0] xor_ln386_5_fu_1514_p3;
wire   [63:0] bitcast_ln386_4_fu_1528_p1;
wire   [0:0] bit_sel41_fu_1531_p3;
wire   [0:0] xor_ln386_11_fu_1539_p2;
wire   [62:0] trunc_ln386_2_fu_1545_p1;
wire   [63:0] xor_ln386_2_fu_1549_p3;
wire   [63:0] bitcast_ln386_6_fu_1562_p1;
wire   [0:0] bit_sel42_fu_1565_p3;
wire   [0:0] xor_ln386_12_fu_1573_p2;
wire   [62:0] trunc_ln386_3_fu_1579_p1;
wire   [63:0] xor_ln386_3_fu_1583_p3;
wire   [63:0] bitcast_ln386_12_fu_1596_p1;
wire   [0:0] bit_sel45_fu_1599_p3;
wire   [0:0] xor_ln386_15_fu_1607_p2;
wire   [62:0] trunc_ln386_6_fu_1613_p1;
wire   [63:0] xor_ln386_6_fu_1617_p3;
wire   [63:0] bitcast_ln386_14_fu_1630_p1;
wire   [0:0] bit_sel46_fu_1633_p3;
wire   [0:0] xor_ln386_16_fu_1641_p2;
wire   [62:0] trunc_ln386_7_fu_1647_p1;
wire   [63:0] xor_ln386_7_fu_1651_p3;
wire   [63:0] bitcast_ln386_16_fu_1664_p1;
wire   [0:0] bit_sel47_fu_1667_p3;
wire   [0:0] xor_ln386_17_fu_1675_p2;
wire   [62:0] trunc_ln386_8_fu_1681_p1;
wire   [63:0] xor_ln386_8_fu_1685_p3;
wire   [63:0] bitcast_ln386_18_fu_1698_p1;
wire   [0:0] bit_sel48_fu_1701_p3;
wire   [0:0] xor_ln386_18_fu_1709_p2;
wire   [62:0] trunc_ln386_9_fu_1715_p1;
wire   [63:0] xor_ln386_9_fu_1719_p3;
wire   [5:0] trunc_ln390_fu_1732_p1;
wire  signed [7:0] sext_ln392_fu_1787_p1;
wire   [7:0] zext_ln393_fu_1808_p1;
wire   [8:0] zext_ln393_cast_fu_1811_p3;
wire  signed [8:0] sext_ln395_fu_1829_p1;
wire   [8:0] zext_ln365_1_fu_1850_p1;
wire   [8:0] add_ln394_fu_1853_p2;
wire  signed [8:0] sext_ln396_fu_1869_p1;
reg   [1:0] grp_fu_944_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg   [1:0] grp_fu_948_opcode;
reg   [1:0] grp_fu_952_opcode;
reg   [1:0] grp_fu_956_opcode;
reg   [1:0] grp_fu_960_opcode;
reg   [1:0] grp_fu_964_opcode;
reg   [1:0] grp_fu_968_opcode;
reg   [1:0] grp_fu_972_opcode;
reg   [1:0] grp_fu_976_opcode;
reg   [1:0] grp_fu_980_opcode;
reg   [1:0] grp_fu_984_opcode;
reg   [1:0] grp_fu_988_opcode;
reg   [1:0] grp_fu_992_opcode;
reg   [1:0] grp_fu_996_opcode;
reg   [1:0] grp_fu_1000_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter13_stage2;
reg    ap_idle_pp0_0to12;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to14;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] c0_x_fu_1188_p1;
wire   [1:0] c0_x_fu_1188_p3;
wire  signed [1:0] c0_x_fu_1188_p5;
wire  signed [1:0] c0_x_fu_1188_p7;
wire   [1:0] c0_x_35_fu_1212_p1;
wire   [1:0] c0_x_35_fu_1212_p3;
wire  signed [1:0] c0_x_35_fu_1212_p5;
wire  signed [1:0] c0_x_35_fu_1212_p7;
wire   [1:0] c0_x_36_fu_1236_p1;
wire   [1:0] c0_x_36_fu_1236_p3;
wire  signed [1:0] c0_x_36_fu_1236_p5;
wire  signed [1:0] c0_x_36_fu_1236_p7;
wire   [1:0] c0_x_37_fu_1260_p1;
wire   [1:0] c0_x_37_fu_1260_p3;
wire  signed [1:0] c0_x_37_fu_1260_p5;
wire  signed [1:0] c0_x_37_fu_1260_p7;
wire   [1:0] tmp_s_fu_1284_p1;
wire   [1:0] tmp_s_fu_1284_p3;
wire  signed [1:0] tmp_s_fu_1284_p5;
wire  signed [1:0] tmp_s_fu_1284_p7;
wire   [1:0] tmp_91_fu_1308_p1;
wire   [1:0] tmp_91_fu_1308_p3;
wire  signed [1:0] tmp_91_fu_1308_p5;
wire  signed [1:0] tmp_91_fu_1308_p7;
wire   [1:0] tmp_92_fu_1332_p1;
wire   [1:0] tmp_92_fu_1332_p3;
wire  signed [1:0] tmp_92_fu_1332_p5;
wire  signed [1:0] tmp_92_fu_1332_p7;
wire   [1:0] tmp_93_fu_1356_p1;
wire   [1:0] tmp_93_fu_1356_p3;
wire  signed [1:0] tmp_93_fu_1356_p5;
wire  signed [1:0] tmp_93_fu_1356_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_170 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U979(.din0(DATA_x_q0),.din1(DATA_x_8_q0),.din2(DATA_x_16_q0),.din3(DATA_x_24_q0),.def(c0_x_fu_1188_p9),.sel(trunc_ln365_1_fu_1121_p1),.dout(c0_x_fu_1188_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U980(.din0(DATA_x_1_q0),.din1(DATA_x_9_q0),.din2(DATA_x_17_q0),.din3(DATA_x_25_q0),.def(c0_x_35_fu_1212_p9),.sel(trunc_ln365_1_fu_1121_p1),.dout(c0_x_35_fu_1212_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U981(.din0(DATA_x_2_q0),.din1(DATA_x_10_q0),.din2(DATA_x_18_q0),.din3(DATA_x_26_q0),.def(c0_x_36_fu_1236_p9),.sel(trunc_ln365_1_fu_1121_p1),.dout(c0_x_36_fu_1236_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U982(.din0(DATA_x_3_q0),.din1(DATA_x_11_q0),.din2(DATA_x_19_q0),.din3(DATA_x_27_q0),.def(c0_x_37_fu_1260_p9),.sel(trunc_ln365_1_fu_1121_p1),.dout(c0_x_37_fu_1260_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U983(.din0(DATA_x_4_q0),.din1(DATA_x_12_q0),.din2(DATA_x_20_q0),.din3(DATA_x_28_q0),.def(tmp_s_fu_1284_p9),.sel(trunc_ln365_1_fu_1121_p1),.dout(tmp_s_fu_1284_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U984(.din0(DATA_x_5_q0),.din1(DATA_x_13_q0),.din2(DATA_x_21_q0),.din3(DATA_x_29_q0),.def(tmp_91_fu_1308_p9),.sel(trunc_ln365_1_fu_1121_p1),.dout(tmp_91_fu_1308_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U985(.din0(DATA_x_6_q0),.din1(DATA_x_14_q0),.din2(DATA_x_22_q0),.din3(DATA_x_30_q0),.def(tmp_92_fu_1332_p9),.sel(trunc_ln365_1_fu_1121_p1),.dout(tmp_92_fu_1332_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U986(.din0(DATA_x_7_q0),.din1(DATA_x_15_q0),.din2(DATA_x_23_q0),.din3(DATA_x_31_q0),.def(tmp_93_fu_1356_p9),.sel(trunc_ln365_1_fu_1121_p1),.dout(tmp_93_fu_1356_p11));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter14 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_170 <= 7'd0;
    end else if (((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_170 <= add_ln365_fu_1380_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_reg_2333 <= grp_fu_1116_p_dout0;
        add_reg_2327 <= grp_fu_1112_p_dout0;
        c0_x_38_reg_2315 <= grp_fu_1104_p_dout0;
        c0_x_61_reg_2303 <= grp_fu_1096_p_dout0;
        c0_y_35_reg_2321 <= grp_fu_1108_p_dout0;
        c0_y_64_reg_2309 <= grp_fu_1100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add12_reg_2281 <= grp_fu_1120_p_dout0;
        add13_reg_2287 <= grp_fu_1124_p_dout0;
        c0_x_39_reg_2245 <= grp_fu_1096_p_dout0;
        c0_y_36_reg_2251 <= grp_fu_1100_p_dout0;
        sub12_reg_2275 <= grp_fu_1116_p_dout0;
        sub13_reg_2298 <= grp_fu_1132_p_dout0;
        sub_reg_2263 <= grp_fu_1108_p_dout0;
        tmp_1_11_reg_2269 <= grp_fu_1112_p_dout0;
        tmp_1_12_reg_2293 <= grp_fu_1128_p_dout0;
        tmp_1_reg_2257 <= grp_fu_1104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add14_reg_2366 <= grp_fu_1140_p_dout0;
        add16_reg_2386 <= grp_fu_1148_p_dout0;
        mul6_reg_2376 <= grp_fu_1156_p_dout0;
        mul_reg_2371 <= grp_fu_1152_p_dout0;
        sub14_reg_2361 <= grp_fu_1136_p_dout0;
        sub16_reg_2381 <= grp_fu_1144_p_dout0;
        tmp_16_reg_2391 <= grp_fu_1092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_2489 <= grp_fu_1136_p_dout0;
        sub15_reg_2483 <= grp_fu_1132_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_2437 <= grp_fu_1104_p_dout0;
        add18_reg_2443 <= grp_fu_1108_p_dout0;
        c0_x_41_reg_2425 <= grp_fu_1096_p_dout0;
        c0_y_38_reg_2431 <= grp_fu_1100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_2515 <= grp_fu_1096_p_dout0;
        add20_reg_2520 <= grp_fu_1100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_2515_pp0_iter10_reg <= add19_reg_2515_pp0_iter9_reg;
        add19_reg_2515_pp0_iter11_reg <= add19_reg_2515_pp0_iter10_reg;
        add19_reg_2515_pp0_iter12_reg <= add19_reg_2515_pp0_iter11_reg;
        add19_reg_2515_pp0_iter13_reg <= add19_reg_2515_pp0_iter12_reg;
        add19_reg_2515_pp0_iter8_reg <= add19_reg_2515;
        add19_reg_2515_pp0_iter9_reg <= add19_reg_2515_pp0_iter8_reg;
        add20_reg_2520_pp0_iter10_reg <= add20_reg_2520_pp0_iter9_reg;
        add20_reg_2520_pp0_iter11_reg <= add20_reg_2520_pp0_iter10_reg;
        add20_reg_2520_pp0_iter12_reg <= add20_reg_2520_pp0_iter11_reg;
        add20_reg_2520_pp0_iter13_reg <= add20_reg_2520_pp0_iter12_reg;
        add20_reg_2520_pp0_iter8_reg <= add20_reg_2520;
        add20_reg_2520_pp0_iter9_reg <= add20_reg_2520_pp0_iter8_reg;
        add22_reg_2616_pp0_iter12_reg <= add22_reg_2616;
        add22_reg_2616_pp0_iter13_reg <= add22_reg_2616_pp0_iter12_reg;
        add23_reg_2525_pp0_iter9_reg <= add23_reg_2525;
        add24_reg_2530_pp0_iter9_reg <= add24_reg_2530;
        icmp_ln365_reg_1909 <= icmp_ln365_fu_1036_p2;
        icmp_ln365_reg_1909_pp0_iter10_reg <= icmp_ln365_reg_1909_pp0_iter9_reg;
        icmp_ln365_reg_1909_pp0_iter11_reg <= icmp_ln365_reg_1909_pp0_iter10_reg;
        icmp_ln365_reg_1909_pp0_iter12_reg <= icmp_ln365_reg_1909_pp0_iter11_reg;
        icmp_ln365_reg_1909_pp0_iter13_reg <= icmp_ln365_reg_1909_pp0_iter12_reg;
        icmp_ln365_reg_1909_pp0_iter1_reg <= icmp_ln365_reg_1909;
        icmp_ln365_reg_1909_pp0_iter2_reg <= icmp_ln365_reg_1909_pp0_iter1_reg;
        icmp_ln365_reg_1909_pp0_iter3_reg <= icmp_ln365_reg_1909_pp0_iter2_reg;
        icmp_ln365_reg_1909_pp0_iter4_reg <= icmp_ln365_reg_1909_pp0_iter3_reg;
        icmp_ln365_reg_1909_pp0_iter5_reg <= icmp_ln365_reg_1909_pp0_iter4_reg;
        icmp_ln365_reg_1909_pp0_iter6_reg <= icmp_ln365_reg_1909_pp0_iter5_reg;
        icmp_ln365_reg_1909_pp0_iter7_reg <= icmp_ln365_reg_1909_pp0_iter6_reg;
        icmp_ln365_reg_1909_pp0_iter8_reg <= icmp_ln365_reg_1909_pp0_iter7_reg;
        icmp_ln365_reg_1909_pp0_iter9_reg <= icmp_ln365_reg_1909_pp0_iter8_reg;
        sub22_reg_2621_pp0_iter12_reg <= sub22_reg_2621;
        sub22_reg_2621_pp0_iter13_reg <= sub22_reg_2621_pp0_iter12_reg;
        sub22_reg_2621_pp0_iter14_reg <= sub22_reg_2621_pp0_iter13_reg;
        sub23_reg_2626_pp0_iter12_reg <= sub23_reg_2626;
        sub23_reg_2626_pp0_iter13_reg <= sub23_reg_2626_pp0_iter12_reg;
        sub23_reg_2626_pp0_iter14_reg <= sub23_reg_2626_pp0_iter13_reg;
        sub24_reg_2541_pp0_iter9_reg <= sub24_reg_2541;
        sub27_reg_2631_pp0_iter12_reg <= sub27_reg_2631;
        sub27_reg_2631_pp0_iter13_reg <= sub27_reg_2631_pp0_iter12_reg;
        sub27_reg_2631_pp0_iter14_reg <= sub27_reg_2631_pp0_iter13_reg;
        sub28_reg_2636_pp0_iter12_reg <= sub28_reg_2636;
        sub28_reg_2636_pp0_iter13_reg <= sub28_reg_2636_pp0_iter12_reg;
        sub28_reg_2636_pp0_iter14_reg <= sub28_reg_2636_pp0_iter13_reg;
        tid_5_reg_1897 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_1897_pp0_iter10_reg <= tid_5_reg_1897_pp0_iter9_reg;
        tid_5_reg_1897_pp0_iter11_reg <= tid_5_reg_1897_pp0_iter10_reg;
        tid_5_reg_1897_pp0_iter12_reg <= tid_5_reg_1897_pp0_iter11_reg;
        tid_5_reg_1897_pp0_iter13_reg <= tid_5_reg_1897_pp0_iter12_reg;
        tid_5_reg_1897_pp0_iter14_reg <= tid_5_reg_1897_pp0_iter13_reg;
        tid_5_reg_1897_pp0_iter1_reg <= tid_5_reg_1897;
        tid_5_reg_1897_pp0_iter2_reg <= tid_5_reg_1897_pp0_iter1_reg;
        tid_5_reg_1897_pp0_iter3_reg <= tid_5_reg_1897_pp0_iter2_reg;
        tid_5_reg_1897_pp0_iter4_reg <= tid_5_reg_1897_pp0_iter3_reg;
        tid_5_reg_1897_pp0_iter5_reg <= tid_5_reg_1897_pp0_iter4_reg;
        tid_5_reg_1897_pp0_iter6_reg <= tid_5_reg_1897_pp0_iter5_reg;
        tid_5_reg_1897_pp0_iter7_reg <= tid_5_reg_1897_pp0_iter6_reg;
        tid_5_reg_1897_pp0_iter8_reg <= tid_5_reg_1897_pp0_iter7_reg;
        tid_5_reg_1897_pp0_iter9_reg <= tid_5_reg_1897_pp0_iter8_reg;
        tmp_17_reg_2535_pp0_iter9_reg <= tmp_17_reg_2535;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_2601 <= grp_fu_1128_p_dout0;
        add25_reg_2606 <= grp_fu_1132_p_dout0;
        add26_reg_2611 <= grp_fu_1136_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_2601_pp0_iter11_reg <= add21_reg_2601;
        add21_reg_2601_pp0_iter12_reg <= add21_reg_2601_pp0_iter11_reg;
        add25_reg_2606_pp0_iter11_reg <= add25_reg_2606;
        add25_reg_2606_pp0_iter12_reg <= add25_reg_2606_pp0_iter11_reg;
        add26_reg_2611_pp0_iter11_reg <= add26_reg_2611;
        add26_reg_2611_pp0_iter12_reg <= add26_reg_2611_pp0_iter11_reg;
        c0_x_41_reg_2425_pp0_iter5_reg <= c0_x_41_reg_2425;
        c0_x_41_reg_2425_pp0_iter6_reg <= c0_x_41_reg_2425_pp0_iter5_reg;
        c0_x_41_reg_2425_pp0_iter7_reg <= c0_x_41_reg_2425_pp0_iter6_reg;
        c0_x_41_reg_2425_pp0_iter8_reg <= c0_x_41_reg_2425_pp0_iter7_reg;
        c0_y_38_reg_2431_pp0_iter5_reg <= c0_y_38_reg_2431;
        c0_y_38_reg_2431_pp0_iter6_reg <= c0_y_38_reg_2431_pp0_iter5_reg;
        c0_y_38_reg_2431_pp0_iter7_reg <= c0_y_38_reg_2431_pp0_iter6_reg;
        c0_y_38_reg_2431_pp0_iter8_reg <= c0_y_38_reg_2431_pp0_iter7_reg;
        sub20_reg_2495_pp0_iter10_reg <= sub20_reg_2495_pp0_iter9_reg;
        sub20_reg_2495_pp0_iter11_reg <= sub20_reg_2495_pp0_iter10_reg;
        sub20_reg_2495_pp0_iter12_reg <= sub20_reg_2495_pp0_iter11_reg;
        sub20_reg_2495_pp0_iter13_reg <= sub20_reg_2495_pp0_iter12_reg;
        sub20_reg_2495_pp0_iter7_reg <= sub20_reg_2495;
        sub20_reg_2495_pp0_iter8_reg <= sub20_reg_2495_pp0_iter7_reg;
        sub20_reg_2495_pp0_iter9_reg <= sub20_reg_2495_pp0_iter8_reg;
        sub21_reg_2500_pp0_iter10_reg <= sub21_reg_2500_pp0_iter9_reg;
        sub21_reg_2500_pp0_iter11_reg <= sub21_reg_2500_pp0_iter10_reg;
        sub21_reg_2500_pp0_iter12_reg <= sub21_reg_2500_pp0_iter11_reg;
        sub21_reg_2500_pp0_iter13_reg <= sub21_reg_2500_pp0_iter12_reg;
        sub21_reg_2500_pp0_iter7_reg <= sub21_reg_2500;
        sub21_reg_2500_pp0_iter8_reg <= sub21_reg_2500_pp0_iter7_reg;
        sub21_reg_2500_pp0_iter9_reg <= sub21_reg_2500_pp0_iter8_reg;
        zext_ln390_cast_reg_2663[5 : 0] <= zext_ln390_cast_fu_1735_p3[5 : 0];
        zext_ln391_cast_reg_2669[6 : 0] <= zext_ln391_cast_fu_1753_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add22_reg_2616 <= grp_fu_1120_p_dout0;
        sub22_reg_2621 <= grp_fu_1124_p_dout0;
        sub23_reg_2626 <= grp_fu_1128_p_dout0;
        sub27_reg_2631 <= grp_fu_1132_p_dout0;
        sub28_reg_2636 <= grp_fu_1136_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_2525 <= grp_fu_1104_p_dout0;
        add24_reg_2530 <= grp_fu_1108_p_dout0;
        sub24_reg_2541 <= grp_fu_1116_p_dout0;
        tmp_17_reg_2535 <= grp_fu_1112_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add27_reg_2653 <= grp_fu_1148_p_dout0;
        add28_reg_2658 <= grp_fu_1092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c0_x_35_reg_2205 <= c0_x_35_fu_1212_p11;
        c0_x_36_reg_2211 <= c0_x_36_fu_1236_p11;
        c0_x_37_reg_2216 <= c0_x_37_fu_1260_p11;
        c0_x_reg_2199 <= c0_x_fu_1188_p11;
        c0_y_61_reg_2159 <= c0_y_61_fu_1132_p3;
        c0_y_62_reg_2165 <= c0_y_62_fu_1140_p3;
        c0_y_63_reg_2170 <= c0_y_63_fu_1148_p3;
        c0_y_reg_2153 <= c0_y_fu_1124_p3;
        select_ln371_reg_2176 <= select_ln371_fu_1156_p3;
        select_ln372_reg_2182 <= select_ln372_fu_1164_p3;
        select_ln373_reg_2188 <= select_ln373_fu_1172_p3;
        select_ln374_reg_2193 <= select_ln374_fu_1180_p3;
        sub12_reg_2275_pp0_iter3_reg <= sub12_reg_2275;
        sub12_reg_2275_pp0_iter4_reg <= sub12_reg_2275_pp0_iter3_reg;
        tmp_16_reg_2391_pp0_iter5_reg <= tmp_16_reg_2391;
        tmp_16_reg_2391_pp0_iter6_reg <= tmp_16_reg_2391_pp0_iter5_reg;
        tmp_1_11_reg_2269_pp0_iter3_reg <= tmp_1_11_reg_2269;
        tmp_1_11_reg_2269_pp0_iter4_reg <= tmp_1_11_reg_2269_pp0_iter3_reg;
        tmp_91_reg_2228 <= tmp_91_fu_1308_p11;
        tmp_92_reg_2234 <= tmp_92_fu_1332_p11;
        tmp_93_reg_2239 <= tmp_93_fu_1356_p11;
        tmp_s_reg_2222 <= tmp_s_fu_1284_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_38_reg_2315_pp0_iter3_reg <= c0_x_38_reg_2315;
        c0_x_38_reg_2315_pp0_iter4_reg <= c0_x_38_reg_2315_pp0_iter3_reg;
        c0_x_38_reg_2315_pp0_iter5_reg <= c0_x_38_reg_2315_pp0_iter4_reg;
        c0_x_38_reg_2315_pp0_iter6_reg <= c0_x_38_reg_2315_pp0_iter5_reg;
        c0_x_42_reg_2557_pp0_iter10_reg <= c0_x_42_reg_2557_pp0_iter9_reg;
        c0_x_42_reg_2557_pp0_iter11_reg <= c0_x_42_reg_2557_pp0_iter10_reg;
        c0_x_42_reg_2557_pp0_iter9_reg <= c0_x_42_reg_2557;
        c0_y_35_reg_2321_pp0_iter3_reg <= c0_y_35_reg_2321;
        c0_y_35_reg_2321_pp0_iter4_reg <= c0_y_35_reg_2321_pp0_iter3_reg;
        c0_y_35_reg_2321_pp0_iter5_reg <= c0_y_35_reg_2321_pp0_iter4_reg;
        c0_y_35_reg_2321_pp0_iter6_reg <= c0_y_35_reg_2321_pp0_iter5_reg;
        c0_y_39_reg_2563_pp0_iter10_reg <= c0_y_39_reg_2563_pp0_iter9_reg;
        c0_y_39_reg_2563_pp0_iter11_reg <= c0_y_39_reg_2563_pp0_iter10_reg;
        c0_y_39_reg_2563_pp0_iter9_reg <= c0_y_39_reg_2563;
        sub17_reg_2409_pp0_iter5_reg <= sub17_reg_2409;
        sub17_reg_2409_pp0_iter6_reg <= sub17_reg_2409_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_40_reg_2449 <= grp_fu_1152_p_dout0;
        c0_y_37_reg_2455 <= grp_fu_1156_p_dout0;
        mul7_reg_2461 <= grp_fu_1160_p_dout0;
        mul8_reg_2467 <= grp_fu_1189_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_42_reg_2557 <= grp_fu_1148_p_dout0;
        c0_x_63_reg_2547 <= grp_fu_1140_p_dout0;
        c0_y_39_reg_2563 <= grp_fu_1092_p_dout0;
        c0_y_66_reg_2552 <= grp_fu_1144_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_62_reg_2397 <= grp_fu_1120_p_dout0;
        c0_y_65_reg_2403 <= grp_fu_1124_p_dout0;
        sub17_reg_2409 <= grp_fu_1128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul10_reg_2478 <= grp_fu_1189_p_dout0;
        mul9_reg_2473 <= grp_fu_1160_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul11_reg_2581 <= grp_fu_1152_p_dout0;
        mul12_reg_2586 <= grp_fu_1156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub18_reg_2569 <= grp_fu_1120_p_dout0;
        sub19_reg_2575 <= grp_fu_1124_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub20_reg_2495 <= grp_fu_1112_p_dout0;
        sub21_reg_2500 <= grp_fu_1116_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_2641 <= grp_fu_1140_p_dout0;
        sub26_reg_2647 <= grp_fu_1144_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub29_reg_2674 <= grp_fu_1140_p_dout0;
        sub30_reg_2679 <= grp_fu_1144_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_16_ce0_local = 1'b1;
    end else begin
        DATA_x_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_17_ce0_local = 1'b1;
    end else begin
        DATA_x_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_18_ce0_local = 1'b1;
    end else begin
        DATA_x_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_19_ce0_local = 1'b1;
    end else begin
        DATA_x_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_20_ce0_local = 1'b1;
    end else begin
        DATA_x_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_21_ce0_local = 1'b1;
    end else begin
        DATA_x_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_22_ce0_local = 1'b1;
    end else begin
        DATA_x_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_23_ce0_local = 1'b1;
    end else begin
        DATA_x_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_24_ce0_local = 1'b1;
    end else begin
        DATA_x_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_25_ce0_local = 1'b1;
    end else begin
        DATA_x_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_26_ce0_local = 1'b1;
    end else begin
        DATA_x_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_27_ce0_local = 1'b1;
    end else begin
        DATA_x_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_28_ce0_local = 1'b1;
    end else begin
        DATA_x_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_29_ce0_local = 1'b1;
    end else begin
        DATA_x_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_30_ce0_local = 1'b1;
    end else begin
        DATA_x_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_31_ce0_local = 1'b1;
    end else begin
        DATA_x_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln365_reg_1909 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln365_reg_1909_pp0_iter13_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to12 = 1'b1;
    end else begin
        ap_idle_pp0_0to12 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to14 = 1'b1;
    end else begin
        ap_idle_pp0_1to14 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_170;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1000_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1000_opcode = 2'd0;
    end else begin
        grp_fu_1000_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1000_p0 = c0_y_39_reg_2563_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1000_p0 = c0_y_35_reg_2321_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1000_p0 = c0_x_39_reg_2245;
    end else begin
        grp_fu_1000_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1000_p1 = sub26_reg_2647;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1000_p1 = add15_reg_2489;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1000_p1 = add12_reg_2281;
    end else begin
        grp_fu_1000_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1004_p0 = tmp_17_reg_2535;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1004_p0 = sub14_reg_2361;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1004_p0 = tmp_1_11_reg_2269;
    end else begin
        grp_fu_1004_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1004_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1004_p1 = 64'd0;
    end else begin
        grp_fu_1004_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1009_p0 = sub24_reg_2541;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1009_p0 = add14_reg_2366;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1009_p0 = sub12_reg_2275;
    end else begin
        grp_fu_1009_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1009_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1009_p1 = 64'd0;
    end else begin
        grp_fu_1009_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1016_p0 = tmp_16_reg_2391;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1016_p0 = sub16_reg_2381;
        end else begin
            grp_fu_1016_p0 = 'bx;
        end
    end else begin
        grp_fu_1016_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1016_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1016_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_1016_p1 = 'bx;
        end
    end else begin
        grp_fu_1016_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1021_p0 = sub17_reg_2409;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1021_p0 = add16_reg_2386;
        end else begin
            grp_fu_1021_p0 = 'bx;
        end
    end else begin
        grp_fu_1021_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1021_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1021_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_1021_p1 = 'bx;
        end
    end else begin
        grp_fu_1021_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_944_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_944_opcode = 2'd0;
    end else begin
        grp_fu_944_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_944_p0 = c0_x_62_reg_2397;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_944_p0 = c0_x_61_reg_2303;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_944_p0 = c0_x_reg_2199;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_944_p0 = c0_x_35_reg_2205;
    end else begin
        grp_fu_944_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_944_p1 = add17_reg_2437;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_944_p1 = add_reg_2327;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_944_p1 = tmp_s_reg_2222;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_944_p1 = tmp_91_reg_2228;
    end else begin
        grp_fu_944_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_948_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_948_opcode = 2'd0;
    end else begin
        grp_fu_948_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_948_p0 = c0_y_65_reg_2403;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_948_p0 = c0_y_64_reg_2309;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_948_p0 = c0_y_reg_2153;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_948_p0 = c0_y_61_reg_2159;
    end else begin
        grp_fu_948_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_948_p1 = add18_reg_2443;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_948_p1 = add11_reg_2333;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_948_p1 = select_ln371_reg_2176;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_948_p1 = select_ln372_reg_2182;
    end else begin
        grp_fu_948_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_952_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_952_opcode = 2'd0;
    end else begin
        grp_fu_952_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_952_p0 = c0_x_40_reg_2449;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_952_p0 = c0_x_39_reg_2245;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_952_p0 = c0_x_reg_2199;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_952_p0 = c0_x_35_reg_2205;
    end else begin
        grp_fu_952_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_952_p1 = mul7_reg_2461;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_952_p1 = add12_reg_2281;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_952_p1 = tmp_s_reg_2222;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_952_p1 = tmp_91_reg_2228;
    end else begin
        grp_fu_952_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_956_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_956_opcode = 2'd0;
    end else begin
        grp_fu_956_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_956_p0 = c0_y_37_reg_2455;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_956_p0 = c0_y_36_reg_2251;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_956_p0 = c0_y_reg_2153;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_956_p0 = c0_y_61_reg_2159;
    end else begin
        grp_fu_956_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_956_p1 = mul8_reg_2467;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_956_p1 = add13_reg_2287;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_956_p1 = select_ln371_reg_2176;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_956_p1 = select_ln372_reg_2182;
    end else begin
        grp_fu_956_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_960_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_960_opcode = 2'd0;
    end else begin
        grp_fu_960_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_960_p0 = c0_x_40_reg_2449;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_960_p0 = c0_x_62_reg_2397;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_960_p0 = c0_x_36_reg_2211;
    end else begin
        grp_fu_960_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_960_p1 = mul7_reg_2461;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_960_p1 = add17_reg_2437;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_960_p1 = tmp_92_reg_2234;
    end else begin
        grp_fu_960_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_964_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_964_opcode = 2'd0;
    end else begin
        grp_fu_964_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_964_p0 = c0_y_37_reg_2455;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_964_p0 = c0_y_65_reg_2403;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_964_p0 = c0_y_62_reg_2165;
    end else begin
        grp_fu_964_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_964_p1 = mul8_reg_2467;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_964_p1 = add18_reg_2443;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_964_p1 = select_ln373_reg_2188;
    end else begin
        grp_fu_964_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_968_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_968_opcode = 2'd0;
    end else begin
        grp_fu_968_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_968_p0 = c0_y_38_reg_2431_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_968_p0 = mul9_reg_2473;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_968_p0 = c0_x_61_reg_2303;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_968_p0 = c0_x_37_reg_2216;
    end else begin
        grp_fu_968_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_968_p1 = sub19_reg_2575;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_968_p1 = bitcast_ln386_13_fu_1625_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_968_p1 = add_reg_2327;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_968_p1 = tmp_93_reg_2239;
    end else begin
        grp_fu_968_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_972_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_972_opcode = 2'd0;
    end else begin
        grp_fu_972_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_972_p0 = c0_x_41_reg_2425_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_972_p0 = bitcast_ln386_15_fu_1659_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_972_p0 = c0_y_64_reg_2309;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_972_p0 = c0_y_63_reg_2170;
    end else begin
        grp_fu_972_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_972_p1 = sub18_reg_2569;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_972_p1 = mul10_reg_2478;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_972_p1 = add11_reg_2333;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_972_p1 = select_ln374_reg_2193;
    end else begin
        grp_fu_972_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_976_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_976_opcode = 2'd0;
    end else begin
        grp_fu_976_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_976_p0 = c0_y_38_reg_2431_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_976_p0 = c0_x_41_reg_2425_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_976_p0 = c0_y_36_reg_2251;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_976_p0 = c0_x_37_reg_2216;
    end else begin
        grp_fu_976_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_976_p1 = sub19_reg_2575;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_976_p1 = sub18_reg_2569;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_976_p1 = add13_reg_2287;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_976_p1 = tmp_93_reg_2239;
    end else begin
        grp_fu_976_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1909 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_980_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_980_opcode = 2'd0;
    end else begin
        grp_fu_980_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_980_p0 = c0_x_63_reg_2547;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_980_p0 = mul_reg_2371;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_980_p0 = c0_y_63_reg_2170;
    end else begin
        grp_fu_980_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_980_p1 = add23_reg_2525_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_980_p1 = add23_reg_2525;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_980_p1 = bitcast_ln386_5_fu_1557_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_980_p1 = select_ln374_reg_2193;
    end else begin
        grp_fu_980_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_984_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_984_opcode = 2'd0;
    end else begin
        grp_fu_984_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_984_p0 = c0_y_66_reg_2552;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_984_p0 = bitcast_ln386_7_fu_1591_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_984_p0 = tmp_1_reg_2257;
    end else begin
        grp_fu_984_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_984_p1 = add24_reg_2530_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_984_p1 = add24_reg_2530;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_984_p1 = mul6_reg_2376;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_984_p1 = bitcast_ln386_1_fu_1419_p1;
    end else begin
        grp_fu_984_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_988_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_988_opcode = 2'd0;
    end else begin
        grp_fu_988_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_988_p0 = c0_x_42_reg_2557_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_988_p0 = mul11_reg_2581;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_988_p0 = c0_x_38_reg_2315_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_988_p0 = bitcast_ln386_3_fu_1453_p1;
    end else begin
        grp_fu_988_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_988_p1 = sub25_reg_2641;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_988_p1 = bitcast_ln386_17_fu_1693_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_988_p1 = sub15_reg_2483;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_988_p1 = sub_reg_2263;
    end else begin
        grp_fu_988_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_992_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_992_opcode = 2'd0;
    end else begin
        grp_fu_992_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_992_p0 = c0_y_39_reg_2563_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_992_p0 = bitcast_ln386_19_fu_1727_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_992_p0 = c0_y_35_reg_2321_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_992_p0 = bitcast_ln386_9_fu_1487_p1;
    end else begin
        grp_fu_992_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_992_p1 = sub26_reg_2647;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_992_p1 = mul12_reg_2586;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_992_p1 = add15_reg_2489;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_992_p1 = bitcast_ln386_11_fu_1522_p1;
    end else begin
        grp_fu_992_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_996_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_996_opcode = 2'd0;
    end else begin
        grp_fu_996_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_996_p0 = c0_x_42_reg_2557_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_996_p0 = c0_x_38_reg_2315_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_996_p0 = bitcast_ln386_9_fu_1487_p1;
    end else begin
        grp_fu_996_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_996_p1 = sub25_reg_2641;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_996_p1 = sub15_reg_2483;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_996_p1 = bitcast_ln386_11_fu_1522_p1;
    end else begin
        grp_fu_996_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address0_local = zext_ln396_fu_1872_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address0_local = zext_ln395_fu_1832_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address0_local = zext_ln392_fu_1790_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address0_local = zext_ln391_fu_1760_p1;
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln394_fu_1859_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln393_1_fu_1819_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_fu_1778_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln390_fu_1743_p1;
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d0_local = bitcast_ln396_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d0_local = bitcast_ln395_fu_1838_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d0_local = bitcast_ln392_fu_1796_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d0_local = bitcast_ln391_fu_1766_p1;
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln394_fu_1865_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln393_fu_1825_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_1783_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln390_fu_1749_p1;
    end else begin
        work_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we0_local = 1'b1;
    end else begin
        work_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we1_local = 1'b1;
    end else begin
        work_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address0_local = zext_ln396_fu_1872_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address0_local = zext_ln395_fu_1832_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address0_local = zext_ln392_fu_1790_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address0_local = zext_ln391_fu_1760_p1;
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln394_fu_1859_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln393_1_fu_1819_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_fu_1778_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln390_fu_1743_p1;
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d0_local = bitcast_ln405_fu_1886_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d0_local = bitcast_ln404_fu_1846_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d0_local = bitcast_ln401_fu_1804_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d0_local = bitcast_ln400_fu_1774_p1;
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln403_fu_1882_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln402_fu_1842_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_1800_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln399_fu_1770_p1;
    end else begin
        work_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we0_local = 1'b1;
    end else begin
        work_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we1_local = 1'b1;
    end else begin
        work_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to14 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_10_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_16_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_16_ce0 = DATA_x_16_ce0_local;
assign DATA_x_17_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_17_ce0 = DATA_x_17_ce0_local;
assign DATA_x_18_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_18_ce0 = DATA_x_18_ce0_local;
assign DATA_x_19_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_19_ce0 = DATA_x_19_ce0_local;
assign DATA_x_1_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_20_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_20_ce0 = DATA_x_20_ce0_local;
assign DATA_x_21_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_21_ce0 = DATA_x_21_ce0_local;
assign DATA_x_22_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_22_ce0 = DATA_x_22_ce0_local;
assign DATA_x_23_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_23_ce0 = DATA_x_23_ce0_local;
assign DATA_x_24_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_24_ce0 = DATA_x_24_ce0_local;
assign DATA_x_25_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_25_ce0 = DATA_x_25_ce0_local;
assign DATA_x_26_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_26_ce0 = DATA_x_26_ce0_local;
assign DATA_x_27_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_27_ce0 = DATA_x_27_ce0_local;
assign DATA_x_28_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_28_ce0 = DATA_x_28_ce0_local;
assign DATA_x_29_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_29_ce0 = DATA_x_29_ce0_local;
assign DATA_x_2_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_30_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_30_ce0 = DATA_x_30_ce0_local;
assign DATA_x_31_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_31_ce0 = DATA_x_31_ce0_local;
assign DATA_x_3_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln367_fu_1052_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_10_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_11_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_12_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_13_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_14_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_15_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_1_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_2_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_3_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_8_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_9_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_address0 = zext_ln367_1_fu_1098_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln365_fu_1380_p2 = (tid_5_reg_1897 + 7'd1);
assign add_ln394_fu_1853_p2 = ($signed(zext_ln365_1_fu_1850_p1) + $signed(9'd320));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bit_sel40_fu_1427_p3 = bitcast_ln386_2_fu_1424_p1[64'd63];
assign bit_sel41_fu_1531_p3 = bitcast_ln386_4_fu_1528_p1[64'd63];
assign bit_sel42_fu_1565_p3 = bitcast_ln386_6_fu_1562_p1[64'd63];
assign bit_sel43_fu_1461_p3 = bitcast_ln386_8_fu_1458_p1[64'd63];
assign bit_sel44_fu_1496_p3 = bitcast_ln386_10_fu_1493_p1[64'd63];
assign bit_sel45_fu_1599_p3 = bitcast_ln386_12_fu_1596_p1[64'd63];
assign bit_sel46_fu_1633_p3 = bitcast_ln386_14_fu_1630_p1[64'd63];
assign bit_sel47_fu_1667_p3 = bitcast_ln386_16_fu_1664_p1[64'd63];
assign bit_sel48_fu_1701_p3 = bitcast_ln386_18_fu_1698_p1[64'd63];
assign bit_sel_fu_1393_p3 = bitcast_ln386_fu_1390_p1[64'd63];
assign bitcast_ln386_10_fu_1493_p1 = sub13_reg_2298;
assign bitcast_ln386_11_fu_1522_p1 = xor_ln386_5_fu_1514_p3;
assign bitcast_ln386_12_fu_1596_p1 = sub17_reg_2409_pp0_iter6_reg;
assign bitcast_ln386_13_fu_1625_p1 = xor_ln386_6_fu_1617_p3;
assign bitcast_ln386_14_fu_1630_p1 = tmp_16_reg_2391_pp0_iter6_reg;
assign bitcast_ln386_15_fu_1659_p1 = xor_ln386_7_fu_1651_p3;
assign bitcast_ln386_16_fu_1664_p1 = sub24_reg_2541_pp0_iter9_reg;
assign bitcast_ln386_17_fu_1693_p1 = xor_ln386_8_fu_1685_p3;
assign bitcast_ln386_18_fu_1698_p1 = tmp_17_reg_2535_pp0_iter9_reg;
assign bitcast_ln386_19_fu_1727_p1 = xor_ln386_9_fu_1719_p3;
assign bitcast_ln386_1_fu_1419_p1 = xor_ln3_fu_1411_p3;
assign bitcast_ln386_2_fu_1424_p1 = tmp_1_reg_2257;
assign bitcast_ln386_3_fu_1453_p1 = xor_ln386_1_fu_1445_p3;
assign bitcast_ln386_4_fu_1528_p1 = sub12_reg_2275_pp0_iter4_reg;
assign bitcast_ln386_5_fu_1557_p1 = xor_ln386_2_fu_1549_p3;
assign bitcast_ln386_6_fu_1562_p1 = tmp_1_11_reg_2269_pp0_iter4_reg;
assign bitcast_ln386_7_fu_1591_p1 = xor_ln386_3_fu_1583_p3;
assign bitcast_ln386_8_fu_1458_p1 = tmp_1_12_reg_2293;
assign bitcast_ln386_9_fu_1487_p1 = xor_ln386_4_fu_1479_p3;
assign bitcast_ln386_fu_1390_p1 = sub_reg_2263;
assign bitcast_ln389_fu_1783_p1 = add19_reg_2515_pp0_iter13_reg;
assign bitcast_ln390_fu_1749_p1 = add25_reg_2606_pp0_iter12_reg;
assign bitcast_ln391_fu_1766_p1 = add21_reg_2601_pp0_iter12_reg;
assign bitcast_ln392_fu_1796_p1 = add27_reg_2653;
assign bitcast_ln393_fu_1825_p1 = sub20_reg_2495_pp0_iter13_reg;
assign bitcast_ln394_fu_1865_p1 = sub27_reg_2631_pp0_iter14_reg;
assign bitcast_ln395_fu_1838_p1 = sub22_reg_2621_pp0_iter14_reg;
assign bitcast_ln396_fu_1878_p1 = sub29_reg_2674;
assign bitcast_ln398_fu_1800_p1 = add20_reg_2520_pp0_iter13_reg;
assign bitcast_ln399_fu_1770_p1 = add26_reg_2611_pp0_iter12_reg;
assign bitcast_ln400_fu_1774_p1 = add22_reg_2616_pp0_iter13_reg;
assign bitcast_ln401_fu_1804_p1 = add28_reg_2658;
assign bitcast_ln402_fu_1842_p1 = sub21_reg_2500_pp0_iter13_reg;
assign bitcast_ln403_fu_1882_p1 = sub28_reg_2636_pp0_iter14_reg;
assign bitcast_ln404_fu_1846_p1 = sub23_reg_2626_pp0_iter14_reg;
assign bitcast_ln405_fu_1886_p1 = sub30_reg_2679;
assign c0_x_35_fu_1212_p9 = 'bx;
assign c0_x_36_fu_1236_p9 = 'bx;
assign c0_x_37_fu_1260_p9 = 'bx;
assign c0_x_fu_1188_p9 = 'bx;
assign c0_y_61_fu_1132_p3 = ((trunc_ln365_fu_1118_p1[0:0] == 1'b1) ? DATA_y_9_q0 : DATA_y_1_q0);
assign c0_y_62_fu_1140_p3 = ((trunc_ln365_fu_1118_p1[0:0] == 1'b1) ? DATA_y_10_q0 : DATA_y_2_q0);
assign c0_y_63_fu_1148_p3 = ((trunc_ln365_fu_1118_p1[0:0] == 1'b1) ? DATA_y_11_q0 : DATA_y_3_q0);
assign c0_y_fu_1124_p3 = ((trunc_ln365_fu_1118_p1[0:0] == 1'b1) ? DATA_y_8_q0 : DATA_y_q0);
assign grp_fu_1092_p_ce = 1'b1;
assign grp_fu_1092_p_din0 = grp_fu_1000_p0;
assign grp_fu_1092_p_din1 = grp_fu_1000_p1;
assign grp_fu_1092_p_opcode = grp_fu_1000_opcode;
assign grp_fu_1096_p_ce = 1'b1;
assign grp_fu_1096_p_din0 = grp_fu_944_p0;
assign grp_fu_1096_p_din1 = grp_fu_944_p1;
assign grp_fu_1096_p_opcode = grp_fu_944_opcode;
assign grp_fu_1100_p_ce = 1'b1;
assign grp_fu_1100_p_din0 = grp_fu_948_p0;
assign grp_fu_1100_p_din1 = grp_fu_948_p1;
assign grp_fu_1100_p_opcode = grp_fu_948_opcode;
assign grp_fu_1104_p_ce = 1'b1;
assign grp_fu_1104_p_din0 = grp_fu_952_p0;
assign grp_fu_1104_p_din1 = grp_fu_952_p1;
assign grp_fu_1104_p_opcode = grp_fu_952_opcode;
assign grp_fu_1108_p_ce = 1'b1;
assign grp_fu_1108_p_din0 = grp_fu_956_p0;
assign grp_fu_1108_p_din1 = grp_fu_956_p1;
assign grp_fu_1108_p_opcode = grp_fu_956_opcode;
assign grp_fu_1112_p_ce = 1'b1;
assign grp_fu_1112_p_din0 = grp_fu_960_p0;
assign grp_fu_1112_p_din1 = grp_fu_960_p1;
assign grp_fu_1112_p_opcode = grp_fu_960_opcode;
assign grp_fu_1116_p_ce = 1'b1;
assign grp_fu_1116_p_din0 = grp_fu_964_p0;
assign grp_fu_1116_p_din1 = grp_fu_964_p1;
assign grp_fu_1116_p_opcode = grp_fu_964_opcode;
assign grp_fu_1120_p_ce = 1'b1;
assign grp_fu_1120_p_din0 = grp_fu_968_p0;
assign grp_fu_1120_p_din1 = grp_fu_968_p1;
assign grp_fu_1120_p_opcode = grp_fu_968_opcode;
assign grp_fu_1124_p_ce = 1'b1;
assign grp_fu_1124_p_din0 = grp_fu_972_p0;
assign grp_fu_1124_p_din1 = grp_fu_972_p1;
assign grp_fu_1124_p_opcode = grp_fu_972_opcode;
assign grp_fu_1128_p_ce = 1'b1;
assign grp_fu_1128_p_din0 = grp_fu_976_p0;
assign grp_fu_1128_p_din1 = grp_fu_976_p1;
assign grp_fu_1128_p_opcode = grp_fu_976_opcode;
assign grp_fu_1132_p_ce = 1'b1;
assign grp_fu_1132_p_din0 = grp_fu_980_p0;
assign grp_fu_1132_p_din1 = grp_fu_980_p1;
assign grp_fu_1132_p_opcode = grp_fu_980_opcode;
assign grp_fu_1136_p_ce = 1'b1;
assign grp_fu_1136_p_din0 = grp_fu_984_p0;
assign grp_fu_1136_p_din1 = grp_fu_984_p1;
assign grp_fu_1136_p_opcode = grp_fu_984_opcode;
assign grp_fu_1140_p_ce = 1'b1;
assign grp_fu_1140_p_din0 = grp_fu_988_p0;
assign grp_fu_1140_p_din1 = grp_fu_988_p1;
assign grp_fu_1140_p_opcode = grp_fu_988_opcode;
assign grp_fu_1144_p_ce = 1'b1;
assign grp_fu_1144_p_din0 = grp_fu_992_p0;
assign grp_fu_1144_p_din1 = grp_fu_992_p1;
assign grp_fu_1144_p_opcode = grp_fu_992_opcode;
assign grp_fu_1148_p_ce = 1'b1;
assign grp_fu_1148_p_din0 = grp_fu_996_p0;
assign grp_fu_1148_p_din1 = grp_fu_996_p1;
assign grp_fu_1148_p_opcode = grp_fu_996_opcode;
assign grp_fu_1152_p_ce = 1'b1;
assign grp_fu_1152_p_din0 = grp_fu_1004_p0;
assign grp_fu_1152_p_din1 = grp_fu_1004_p1;
assign grp_fu_1156_p_ce = 1'b1;
assign grp_fu_1156_p_din0 = grp_fu_1009_p0;
assign grp_fu_1156_p_din1 = grp_fu_1009_p1;
assign grp_fu_1160_p_ce = 1'b1;
assign grp_fu_1160_p_din0 = grp_fu_1016_p0;
assign grp_fu_1160_p_din1 = grp_fu_1016_p1;
assign grp_fu_1189_p_ce = 1'b1;
assign grp_fu_1189_p_din0 = grp_fu_1021_p0;
assign grp_fu_1189_p_din1 = grp_fu_1021_p1;
assign icmp_ln365_fu_1036_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln367_1_fu_1088_p4 = {{ap_sig_allocacmp_tid_5[5:1]}};
assign lshr_ln_fu_1042_p4 = {{ap_sig_allocacmp_tid_5[5:2]}};
assign select_ln371_fu_1156_p3 = ((trunc_ln365_fu_1118_p1[0:0] == 1'b1) ? DATA_y_12_q0 : DATA_y_4_q0);
assign select_ln372_fu_1164_p3 = ((trunc_ln365_fu_1118_p1[0:0] == 1'b1) ? DATA_y_13_q0 : DATA_y_5_q0);
assign select_ln373_fu_1172_p3 = ((trunc_ln365_fu_1118_p1[0:0] == 1'b1) ? DATA_y_14_q0 : DATA_y_6_q0);
assign select_ln374_fu_1180_p3 = ((trunc_ln365_fu_1118_p1[0:0] == 1'b1) ? DATA_y_15_q0 : DATA_y_7_q0);
assign sext_ln392_fu_1787_p1 = zext_ln390_cast_reg_2663;
assign sext_ln395_fu_1829_p1 = zext_ln391_cast_reg_2669;
assign sext_ln396_fu_1869_p1 = zext_ln390_cast_reg_2663;
assign tmp_91_fu_1308_p9 = 'bx;
assign tmp_92_fu_1332_p9 = 'bx;
assign tmp_93_fu_1356_p9 = 'bx;
assign tmp_s_fu_1284_p9 = 'bx;
assign trunc_ln365_1_fu_1121_p1 = tid_5_reg_1897[1:0];
assign trunc_ln365_fu_1118_p1 = tid_5_reg_1897[0:0];
assign trunc_ln386_1_fu_1441_p1 = bitcast_ln386_2_fu_1424_p1[62:0];
assign trunc_ln386_2_fu_1545_p1 = bitcast_ln386_4_fu_1528_p1[62:0];
assign trunc_ln386_3_fu_1579_p1 = bitcast_ln386_6_fu_1562_p1[62:0];
assign trunc_ln386_4_fu_1475_p1 = bitcast_ln386_8_fu_1458_p1[62:0];
assign trunc_ln386_5_fu_1510_p1 = bitcast_ln386_10_fu_1493_p1[62:0];
assign trunc_ln386_6_fu_1613_p1 = bitcast_ln386_12_fu_1596_p1[62:0];
assign trunc_ln386_7_fu_1647_p1 = bitcast_ln386_14_fu_1630_p1[62:0];
assign trunc_ln386_8_fu_1681_p1 = bitcast_ln386_16_fu_1664_p1[62:0];
assign trunc_ln386_9_fu_1715_p1 = bitcast_ln386_18_fu_1698_p1[62:0];
assign trunc_ln386_fu_1407_p1 = bitcast_ln386_fu_1390_p1[62:0];
assign trunc_ln390_fu_1732_p1 = tid_5_reg_1897_pp0_iter13_reg[5:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_x_d0 = work_x_d0_local;
assign work_x_d1 = work_x_d1_local;
assign work_x_we0 = work_x_we0_local;
assign work_x_we1 = work_x_we1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign work_y_d0 = work_y_d0_local;
assign work_y_d1 = work_y_d1_local;
assign work_y_we0 = work_y_we0_local;
assign work_y_we1 = work_y_we1_local;
assign xor_ln386_10_fu_1401_p2 = (bit_sel_fu_1393_p3 ^ 1'd1);
assign xor_ln386_11_fu_1539_p2 = (bit_sel41_fu_1531_p3 ^ 1'd1);
assign xor_ln386_12_fu_1573_p2 = (bit_sel42_fu_1565_p3 ^ 1'd1);
assign xor_ln386_13_fu_1469_p2 = (bit_sel43_fu_1461_p3 ^ 1'd1);
assign xor_ln386_14_fu_1504_p2 = (bit_sel44_fu_1496_p3 ^ 1'd1);
assign xor_ln386_15_fu_1607_p2 = (bit_sel45_fu_1599_p3 ^ 1'd1);
assign xor_ln386_16_fu_1641_p2 = (bit_sel46_fu_1633_p3 ^ 1'd1);
assign xor_ln386_17_fu_1675_p2 = (bit_sel47_fu_1667_p3 ^ 1'd1);
assign xor_ln386_18_fu_1709_p2 = (bit_sel48_fu_1701_p3 ^ 1'd1);
assign xor_ln386_1_fu_1445_p3 = {{xor_ln386_fu_1435_p2}, {trunc_ln386_1_fu_1441_p1}};
assign xor_ln386_2_fu_1549_p3 = {{xor_ln386_11_fu_1539_p2}, {trunc_ln386_2_fu_1545_p1}};
assign xor_ln386_3_fu_1583_p3 = {{xor_ln386_12_fu_1573_p2}, {trunc_ln386_3_fu_1579_p1}};
assign xor_ln386_4_fu_1479_p3 = {{xor_ln386_13_fu_1469_p2}, {trunc_ln386_4_fu_1475_p1}};
assign xor_ln386_5_fu_1514_p3 = {{xor_ln386_14_fu_1504_p2}, {trunc_ln386_5_fu_1510_p1}};
assign xor_ln386_6_fu_1617_p3 = {{xor_ln386_15_fu_1607_p2}, {trunc_ln386_6_fu_1613_p1}};
assign xor_ln386_7_fu_1651_p3 = {{xor_ln386_16_fu_1641_p2}, {trunc_ln386_7_fu_1647_p1}};
assign xor_ln386_8_fu_1685_p3 = {{xor_ln386_17_fu_1675_p2}, {trunc_ln386_8_fu_1681_p1}};
assign xor_ln386_9_fu_1719_p3 = {{xor_ln386_18_fu_1709_p2}, {trunc_ln386_9_fu_1715_p1}};
assign xor_ln386_fu_1435_p2 = (bit_sel40_fu_1427_p3 ^ 1'd1);
assign xor_ln3_fu_1411_p3 = {{xor_ln386_10_fu_1401_p2}, {trunc_ln386_fu_1407_p1}};
assign zext_ln365_1_fu_1850_p1 = tid_5_reg_1897_pp0_iter14_reg;
assign zext_ln365_fu_1778_p1 = tid_5_reg_1897_pp0_iter13_reg;
assign zext_ln367_1_fu_1098_p1 = lshr_ln367_1_fu_1088_p4;
assign zext_ln367_fu_1052_p1 = lshr_ln_fu_1042_p4;
assign zext_ln390_cast_fu_1735_p3 = {{1'd1}, {trunc_ln390_fu_1732_p1}};
assign zext_ln390_fu_1743_p1 = $unsigned(zext_ln390_cast_fu_1735_p3);
assign zext_ln391_cast_fu_1753_p3 = {{1'd1}, {tid_5_reg_1897_pp0_iter13_reg}};
assign zext_ln391_fu_1760_p1 = $unsigned(zext_ln391_cast_fu_1753_p3);
assign zext_ln392_fu_1790_p1 = $unsigned(sext_ln392_fu_1787_p1);
assign zext_ln393_1_fu_1819_p1 = zext_ln393_cast_fu_1811_p3;
assign zext_ln393_cast_fu_1811_p3 = {{1'd1}, {zext_ln393_fu_1808_p1}};
assign zext_ln393_fu_1808_p1 = tid_5_reg_1897_pp0_iter14_reg;
assign zext_ln394_fu_1859_p1 = add_ln394_fu_1853_p2;
assign zext_ln395_fu_1832_p1 = $unsigned(sext_ln395_fu_1829_p1);
assign zext_ln396_fu_1872_p1 = $unsigned(sext_ln396_fu_1869_p1);
always @ (posedge ap_clk) begin
    zext_ln390_cast_reg_2663[6] <= 1'b1;
    zext_ln391_cast_reg_2669[7] <= 1'b1;
end
endmodule 