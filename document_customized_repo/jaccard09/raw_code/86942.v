module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_16_address0,DATA_x_16_ce0,DATA_x_16_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_17_address0,DATA_x_17_ce0,DATA_x_17_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_18_address0,DATA_x_18_ce0,DATA_x_18_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_19_address0,DATA_x_19_ce0,DATA_x_19_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_20_address0,DATA_x_20_ce0,DATA_x_20_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_21_address0,DATA_x_21_ce0,DATA_x_21_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_22_address0,DATA_x_22_ce0,DATA_x_22_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_23_address0,DATA_x_23_ce0,DATA_x_23_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_q0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_q0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_q0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_q0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_q0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_q0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_q0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_q0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_24_address0,DATA_x_24_ce0,DATA_x_24_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_25_address0,DATA_x_25_ce0,DATA_x_25_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_26_address0,DATA_x_26_ce0,DATA_x_26_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_27_address0,DATA_x_27_ce0,DATA_x_27_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_28_address0,DATA_x_28_ce0,DATA_x_28_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_29_address0,DATA_x_29_ce0,DATA_x_29_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_30_address0,DATA_x_30_ce0,DATA_x_30_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,DATA_x_31_address0,DATA_x_31_ce0,DATA_x_31_q0,grp_fu_1092_p_din0,grp_fu_1092_p_din1,grp_fu_1092_p_opcode,grp_fu_1092_p_dout0,grp_fu_1092_p_ce,grp_fu_1096_p_din0,grp_fu_1096_p_din1,grp_fu_1096_p_opcode,grp_fu_1096_p_dout0,grp_fu_1096_p_ce,grp_fu_1100_p_din0,grp_fu_1100_p_din1,grp_fu_1100_p_opcode,grp_fu_1100_p_dout0,grp_fu_1100_p_ce,grp_fu_1104_p_din0,grp_fu_1104_p_din1,grp_fu_1104_p_opcode,grp_fu_1104_p_dout0,grp_fu_1104_p_ce,grp_fu_1108_p_din0,grp_fu_1108_p_din1,grp_fu_1108_p_opcode,grp_fu_1108_p_dout0,grp_fu_1108_p_ce,grp_fu_1112_p_din0,grp_fu_1112_p_din1,grp_fu_1112_p_opcode,grp_fu_1112_p_dout0,grp_fu_1112_p_ce,grp_fu_1116_p_din0,grp_fu_1116_p_din1,grp_fu_1116_p_opcode,grp_fu_1116_p_dout0,grp_fu_1116_p_ce,grp_fu_1120_p_din0,grp_fu_1120_p_din1,grp_fu_1120_p_opcode,grp_fu_1120_p_dout0,grp_fu_1120_p_ce,grp_fu_1124_p_din0,grp_fu_1124_p_din1,grp_fu_1124_p_opcode,grp_fu_1124_p_dout0,grp_fu_1124_p_ce,grp_fu_1128_p_din0,grp_fu_1128_p_din1,grp_fu_1128_p_opcode,grp_fu_1128_p_dout0,grp_fu_1128_p_ce,grp_fu_1132_p_din0,grp_fu_1132_p_din1,grp_fu_1132_p_opcode,grp_fu_1132_p_dout0,grp_fu_1132_p_ce,grp_fu_1136_p_din0,grp_fu_1136_p_din1,grp_fu_1136_p_opcode,grp_fu_1136_p_dout0,grp_fu_1136_p_ce,grp_fu_1140_p_din0,grp_fu_1140_p_din1,grp_fu_1140_p_opcode,grp_fu_1140_p_dout0,grp_fu_1140_p_ce,grp_fu_1144_p_din0,grp_fu_1144_p_din1,grp_fu_1144_p_opcode,grp_fu_1144_p_dout0,grp_fu_1144_p_ce,grp_fu_1148_p_din0,grp_fu_1148_p_din1,grp_fu_1148_p_opcode,grp_fu_1148_p_dout0,grp_fu_1148_p_ce,grp_fu_1189_p_din0,grp_fu_1189_p_din1,grp_fu_1189_p_opcode,grp_fu_1189_p_dout0,grp_fu_1189_p_ce,grp_fu_1193_p_din0,grp_fu_1193_p_din1,grp_fu_1193_p_opcode,grp_fu_1193_p_dout0,grp_fu_1193_p_ce,grp_fu_1197_p_din0,grp_fu_1197_p_din1,grp_fu_1197_p_opcode,grp_fu_1197_p_dout0,grp_fu_1197_p_ce,grp_fu_1152_p_din0,grp_fu_1152_p_din1,grp_fu_1152_p_dout0,grp_fu_1152_p_ce,grp_fu_1156_p_din0,grp_fu_1156_p_din1,grp_fu_1156_p_dout0,grp_fu_1156_p_ce,grp_fu_1160_p_din0,grp_fu_1160_p_din1,grp_fu_1160_p_dout0,grp_fu_1160_p_ce,grp_fu_1201_p_din0,grp_fu_1201_p_din1,grp_fu_1201_p_dout0,grp_fu_1201_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 11'd1;
parameter    ap_ST_fsm_pp0_stage1 = 11'd2;
parameter    ap_ST_fsm_pp0_stage2 = 11'd4;
parameter    ap_ST_fsm_pp0_stage3 = 11'd8;
parameter    ap_ST_fsm_pp0_stage4 = 11'd16;
parameter    ap_ST_fsm_pp0_stage5 = 11'd32;
parameter    ap_ST_fsm_pp0_stage6 = 11'd64;
parameter    ap_ST_fsm_pp0_stage7 = 11'd128;
parameter    ap_ST_fsm_pp0_stage8 = 11'd256;
parameter    ap_ST_fsm_pp0_stage9 = 11'd512;
parameter    ap_ST_fsm_pp0_stage10 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [4:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [4:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [4:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [4:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [4:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [4:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [4:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [3:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [3:0] DATA_x_16_address0;
output   DATA_x_16_ce0;
input  [63:0] DATA_x_16_q0;
output  [3:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [3:0] DATA_x_17_address0;
output   DATA_x_17_ce0;
input  [63:0] DATA_x_17_q0;
output  [3:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [3:0] DATA_x_18_address0;
output   DATA_x_18_ce0;
input  [63:0] DATA_x_18_q0;
output  [3:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [3:0] DATA_x_19_address0;
output   DATA_x_19_ce0;
input  [63:0] DATA_x_19_q0;
output  [3:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [3:0] DATA_x_20_address0;
output   DATA_x_20_ce0;
input  [63:0] DATA_x_20_q0;
output  [3:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [3:0] DATA_x_21_address0;
output   DATA_x_21_ce0;
input  [63:0] DATA_x_21_q0;
output  [3:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [3:0] DATA_x_22_address0;
output   DATA_x_22_ce0;
input  [63:0] DATA_x_22_q0;
output  [3:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [3:0] DATA_x_23_address0;
output   DATA_x_23_ce0;
input  [63:0] DATA_x_23_q0;
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
output  [4:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
input  [63:0] DATA_y_8_q0;
output  [4:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
input  [63:0] DATA_y_9_q0;
output  [4:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
input  [63:0] DATA_y_10_q0;
output  [4:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
input  [63:0] DATA_y_11_q0;
output  [4:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
input  [63:0] DATA_y_12_q0;
output  [4:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
input  [63:0] DATA_y_13_q0;
output  [4:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
input  [63:0] DATA_y_14_q0;
output  [4:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
input  [63:0] DATA_y_15_q0;
output  [3:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
input  [63:0] DATA_x_8_q0;
output  [3:0] DATA_x_24_address0;
output   DATA_x_24_ce0;
input  [63:0] DATA_x_24_q0;
output  [3:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
input  [63:0] DATA_x_9_q0;
output  [3:0] DATA_x_25_address0;
output   DATA_x_25_ce0;
input  [63:0] DATA_x_25_q0;
output  [3:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
input  [63:0] DATA_x_10_q0;
output  [3:0] DATA_x_26_address0;
output   DATA_x_26_ce0;
input  [63:0] DATA_x_26_q0;
output  [3:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
input  [63:0] DATA_x_11_q0;
output  [3:0] DATA_x_27_address0;
output   DATA_x_27_ce0;
input  [63:0] DATA_x_27_q0;
output  [3:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
input  [63:0] DATA_x_12_q0;
output  [3:0] DATA_x_28_address0;
output   DATA_x_28_ce0;
input  [63:0] DATA_x_28_q0;
output  [3:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
input  [63:0] DATA_x_13_q0;
output  [3:0] DATA_x_29_address0;
output   DATA_x_29_ce0;
input  [63:0] DATA_x_29_q0;
output  [3:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
input  [63:0] DATA_x_14_q0;
output  [3:0] DATA_x_30_address0;
output   DATA_x_30_ce0;
input  [63:0] DATA_x_30_q0;
output  [3:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
input  [63:0] DATA_x_15_q0;
output  [3:0] DATA_x_31_address0;
output   DATA_x_31_ce0;
input  [63:0] DATA_x_31_q0;
output  [63:0] grp_fu_1092_p_din0;
output  [63:0] grp_fu_1092_p_din1;
output  [1:0] grp_fu_1092_p_opcode;
input  [63:0] grp_fu_1092_p_dout0;
output   grp_fu_1092_p_ce;
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
output  [63:0] grp_fu_1189_p_din0;
output  [63:0] grp_fu_1189_p_din1;
output  [1:0] grp_fu_1189_p_opcode;
input  [63:0] grp_fu_1189_p_dout0;
output   grp_fu_1189_p_ce;
output  [63:0] grp_fu_1193_p_din0;
output  [63:0] grp_fu_1193_p_din1;
output  [1:0] grp_fu_1193_p_opcode;
input  [63:0] grp_fu_1193_p_dout0;
output   grp_fu_1193_p_ce;
output  [63:0] grp_fu_1197_p_din0;
output  [63:0] grp_fu_1197_p_din1;
output  [1:0] grp_fu_1197_p_opcode;
input  [63:0] grp_fu_1197_p_dout0;
output   grp_fu_1197_p_ce;
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
output  [63:0] grp_fu_1201_p_din0;
output  [63:0] grp_fu_1201_p_din1;
input  [63:0] grp_fu_1201_p_dout0;
output   grp_fu_1201_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] tmp_reg_2498;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1176;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1182;
reg   [63:0] reg_1188;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_1193;
reg   [63:0] reg_1198;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_1204;
reg   [6:0] tid_5_reg_2485;
reg   [6:0] tid_5_reg_2485_pp0_iter1_reg;
reg   [6:0] tid_5_reg_2485_pp0_iter2_reg;
reg   [6:0] tid_5_reg_2485_pp0_iter3_reg;
reg   [6:0] tid_5_reg_2485_pp0_iter4_reg;
reg   [6:0] tid_5_reg_2485_pp0_iter5_reg;
wire   [4:0] lshr_ln367_1_fu_1272_p4;
reg   [4:0] lshr_ln367_1_reg_2502;
reg   [4:0] lshr_ln367_1_reg_2502_pp0_iter1_reg;
reg   [4:0] lshr_ln367_1_reg_2502_pp0_iter2_reg;
reg   [4:0] lshr_ln367_1_reg_2502_pp0_iter3_reg;
reg   [4:0] lshr_ln367_1_reg_2502_pp0_iter4_reg;
reg   [4:0] lshr_ln367_1_reg_2502_pp0_iter5_reg;
reg   [63:0] c0_y_reg_2747;
reg   [63:0] c0_y_61_reg_2753;
reg   [63:0] c0_y_62_reg_2759;
reg   [63:0] c0_y_63_reg_2764;
reg   [63:0] DATA_y_4_load_reg_2770;
reg   [63:0] DATA_y_5_load_reg_2776;
reg   [63:0] DATA_y_6_load_reg_2782;
reg   [63:0] DATA_y_7_load_reg_2787;
wire   [63:0] c0_x_fu_1311_p3;
reg   [63:0] c0_x_reg_2793;
wire   [63:0] c0_x_61_fu_1319_p3;
reg   [63:0] c0_x_61_reg_2799;
wire   [63:0] c0_x_62_fu_1327_p3;
reg   [63:0] c0_x_62_reg_2805;
wire   [63:0] c0_x_63_fu_1335_p3;
reg   [63:0] c0_x_63_reg_2810;
wire   [63:0] select_ln380_fu_1343_p3;
reg   [63:0] select_ln380_reg_2816;
wire   [63:0] select_ln381_fu_1351_p3;
reg   [63:0] select_ln381_reg_2822;
wire   [63:0] select_ln382_fu_1359_p3;
reg   [63:0] select_ln382_reg_2828;
wire   [63:0] select_ln383_fu_1367_p3;
reg   [63:0] select_ln383_reg_2833;
reg   [63:0] c0_y_67_reg_2839;
reg   [63:0] c0_y_68_reg_2845;
reg   [63:0] c0_y_69_reg_2851;
reg   [63:0] c0_y_70_reg_2857;
reg   [63:0] DATA_y_12_load_reg_2863;
reg   [63:0] DATA_y_13_load_reg_2869;
reg   [63:0] DATA_y_14_load_reg_2875;
reg   [63:0] DATA_y_15_load_reg_2881;
wire   [63:0] c0_x_67_fu_1375_p3;
reg   [63:0] c0_x_67_reg_2887;
wire   [63:0] c0_x_68_fu_1383_p3;
reg   [63:0] c0_x_68_reg_2893;
wire   [63:0] c0_x_69_fu_1391_p3;
reg   [63:0] c0_x_69_reg_2899;
wire   [63:0] c0_x_70_fu_1399_p3;
reg   [63:0] c0_x_70_reg_2905;
wire   [63:0] select_ln380_1_fu_1407_p3;
reg   [63:0] select_ln380_1_reg_2911;
wire   [63:0] select_ln381_1_fu_1415_p3;
reg   [63:0] select_ln381_1_reg_2917;
wire   [63:0] select_ln382_1_fu_1423_p3;
reg   [63:0] select_ln382_1_reg_2923;
wire   [63:0] select_ln383_1_fu_1431_p3;
reg   [63:0] select_ln383_1_reg_2929;
reg   [63:0] c0_x_36_reg_2935;
reg   [63:0] c0_y_36_reg_2941;
reg   [63:0] tmp_1_reg_2947;
reg   [63:0] sub_reg_2953;
reg   [63:0] tmp_1_11_reg_2959;
reg   [63:0] sub12_reg_2965;
reg   [63:0] add12_reg_2971;
reg   [63:0] add13_reg_2977;
reg   [63:0] c0_x_41_reg_2983;
reg   [63:0] c0_y_41_reg_2989;
reg   [63:0] tmp_1_15_reg_2995;
reg   [63:0] sub1591_1_reg_3001;
reg   [63:0] tmp_1_13_reg_3007;
reg   [63:0] sub1607_1_reg_3013;
reg   [63:0] c0_x_64_reg_3019;
reg   [63:0] c0_y_64_reg_3025;
reg   [63:0] c0_x_35_reg_3031;
reg   [63:0] c0_x_35_reg_3031_pp0_iter1_reg;
reg   [63:0] c0_y_35_reg_3037;
reg   [63:0] c0_y_35_reg_3037_pp0_iter1_reg;
reg   [63:0] add_reg_3043;
reg   [63:0] add11_reg_3049;
wire   [63:0] bitcast_ln386_1_fu_1468_p1;
wire   [63:0] bitcast_ln386_3_fu_1502_p1;
wire   [63:0] bitcast_ln386_9_fu_1537_p1;
wire   [63:0] bitcast_ln386_11_fu_1573_p1;
reg   [63:0] c0_x_71_reg_3077;
reg   [63:0] c0_y_71_reg_3083;
reg   [63:0] c0_x_40_reg_3089;
reg   [63:0] c0_x_40_reg_3089_pp0_iter1_reg;
reg   [63:0] c0_y_40_reg_3095;
reg   [63:0] c0_y_40_reg_3095_pp0_iter1_reg;
reg   [63:0] add1598_1_reg_3101;
reg   [63:0] add1601_1_reg_3107;
reg   [63:0] add1614_1_reg_3113;
reg   [63:0] add1617_1_reg_3119;
wire   [63:0] bitcast_ln386_21_fu_1608_p1;
wire   [63:0] bitcast_ln386_23_fu_1642_p1;
wire   [63:0] bitcast_ln386_29_fu_1677_p1;
wire   [63:0] bitcast_ln386_31_fu_1713_p1;
reg   [63:0] mul_reg_3147;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] mul6_reg_3152;
reg   [63:0] mul1641_1_reg_3157;
reg   [63:0] mul1648_1_reg_3162;
reg   [63:0] sub14_reg_3167;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] add14_reg_3172;
wire   [63:0] bitcast_ln386_5_fu_1758_p1;
wire   [63:0] bitcast_ln386_7_fu_1792_p1;
reg   [63:0] sub16_reg_3187;
reg   [63:0] add16_reg_3192;
reg   [63:0] add17_reg_3197;
reg   [63:0] add18_reg_3203;
reg   [63:0] tmp_16_reg_3209;
reg   [63:0] sub17_reg_3215;
reg   [63:0] sub1630_1_reg_3221;
reg   [63:0] add1636_1_reg_3226;
wire   [63:0] bitcast_ln386_25_fu_1826_p1;
wire   [63:0] bitcast_ln386_27_fu_1860_p1;
reg   [63:0] sub1656_1_reg_3241;
reg   [63:0] add1662_1_reg_3246;
reg   [63:0] c0_x_65_reg_3251;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] c0_y_65_reg_3257;
reg   [63:0] c0_x_38_reg_3263;
reg   [63:0] c0_x_38_reg_3263_pp0_iter2_reg;
reg   [63:0] c0_y_38_reg_3269;
reg   [63:0] c0_y_38_reg_3269_pp0_iter2_reg;
reg   [63:0] c0_x_72_reg_3275;
reg   [63:0] c0_y_72_reg_3281;
reg   [63:0] c0_x_43_reg_3287;
reg   [63:0] c0_x_43_reg_3287_pp0_iter2_reg;
reg   [63:0] c0_y_43_reg_3293;
reg   [63:0] c0_y_43_reg_3293_pp0_iter2_reg;
reg   [63:0] add1689_1_reg_3299;
reg   [63:0] add1692_1_reg_3305;
reg   [63:0] tmp_18_reg_3311;
reg   [63:0] sub1698_1_reg_3317;
reg   [63:0] c0_x_37_reg_3323;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_37_reg_3329;
reg   [63:0] sub15_reg_3335;
reg   [63:0] add15_reg_3341;
reg   [63:0] mul7_reg_3347;
reg   [63:0] mul8_reg_3353;
reg   [63:0] sub1644_1_reg_3359;
reg   [63:0] add1649_1_reg_3365;
reg   [63:0] c0_x_42_reg_3371;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] c0_y_42_reg_3377;
reg   [63:0] mul1657_1_reg_3383;
reg   [63:0] mul1663_1_reg_3389;
reg   [63:0] mul9_reg_3395;
reg   [63:0] mul10_reg_3400;
reg   [63:0] add19_reg_3405;
reg   [63:0] add19_reg_3405_pp0_iter3_reg;
reg   [63:0] add19_reg_3405_pp0_iter4_reg;
reg   [63:0] add20_reg_3410;
reg   [63:0] add20_reg_3410_pp0_iter3_reg;
reg   [63:0] add20_reg_3410_pp0_iter4_reg;
reg   [63:0] sub20_reg_3415;
reg   [63:0] sub20_reg_3415_pp0_iter3_reg;
reg   [63:0] sub20_reg_3415_pp0_iter4_reg;
reg   [63:0] sub21_reg_3420;
reg   [63:0] sub21_reg_3420_pp0_iter3_reg;
reg   [63:0] sub21_reg_3420_pp0_iter4_reg;
reg   [63:0] mul1702_1_reg_3425;
reg   [63:0] mul1709_1_reg_3430;
reg   [63:0] add1717_1_reg_3435;
reg   [63:0] add1717_1_reg_3435_pp0_iter3_reg;
reg   [63:0] add1717_1_reg_3435_pp0_iter4_reg;
reg   [63:0] add1720_1_reg_3440;
reg   [63:0] add1720_1_reg_3440_pp0_iter3_reg;
reg   [63:0] add1720_1_reg_3440_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_3445;
reg   [63:0] sub1723_1_reg_3445_pp0_iter3_reg;
reg   [63:0] sub1723_1_reg_3445_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_3445_pp0_iter5_reg;
reg   [63:0] sub1726_1_reg_3450;
reg   [63:0] sub1726_1_reg_3450_pp0_iter3_reg;
reg   [63:0] sub1726_1_reg_3450_pp0_iter4_reg;
reg   [63:0] sub1726_1_reg_3450_pp0_iter5_reg;
wire   [63:0] bitcast_ln386_13_fu_1894_p1;
wire   [63:0] bitcast_ln386_15_fu_1928_p1;
wire   [63:0] bitcast_ln386_33_fu_1962_p1;
wire   [63:0] bitcast_ln386_35_fu_1996_p1;
reg   [63:0] c0_x_66_reg_3475;
reg   [63:0] c0_y_66_reg_3481;
reg   [63:0] c0_x_39_reg_3487;
reg   [63:0] c0_x_39_reg_3487_pp0_iter4_reg;
reg   [63:0] c0_y_39_reg_3493;
reg   [63:0] c0_y_39_reg_3493_pp0_iter4_reg;
reg   [63:0] add23_reg_3499;
reg   [63:0] add24_reg_3505;
reg   [63:0] c0_x_73_reg_3511;
reg   [63:0] c0_y_73_reg_3517;
reg   [63:0] c0_x_44_reg_3523;
reg   [63:0] c0_x_44_reg_3523_pp0_iter4_reg;
reg   [63:0] c0_y_44_reg_3529;
reg   [63:0] c0_y_44_reg_3529_pp0_iter4_reg;
reg   [63:0] tmp_19_reg_3535;
reg   [63:0] sub1777_1_reg_3541;
reg   [63:0] sub18_reg_3547;
reg   [63:0] sub19_reg_3553;
reg   [63:0] sub1705_1_reg_3559;
reg   [63:0] sub1710_1_reg_3565;
reg   [63:0] mul11_reg_3571;
reg   [63:0] mul12_reg_3576;
wire   [63:0] bitcast_ln386_17_fu_2031_p1;
wire   [63:0] bitcast_ln386_19_fu_2066_p1;
reg   [63:0] mul1781_1_reg_3591;
reg   [63:0] mul1788_1_reg_3596;
reg   [63:0] add25_reg_3601;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] add25_reg_3601_pp0_iter4_reg;
reg   [63:0] add26_reg_3606;
reg   [63:0] add26_reg_3606_pp0_iter4_reg;
reg   [63:0] sub27_reg_3611;
reg   [63:0] sub27_reg_3611_pp0_iter4_reg;
reg   [63:0] sub28_reg_3616;
reg   [63:0] sub28_reg_3616_pp0_iter4_reg;
wire   [63:0] bitcast_ln386_37_fu_2100_p1;
wire   [63:0] bitcast_ln386_39_fu_2134_p1;
reg   [63:0] add1796_1_reg_3631;
reg   [63:0] add1796_1_reg_3631_pp0_iter4_reg;
reg   [63:0] add1799_1_reg_3636;
reg   [63:0] add1799_1_reg_3636_pp0_iter4_reg;
reg   [63:0] sub1802_1_reg_3641;
reg   [63:0] sub1802_1_reg_3641_pp0_iter4_reg;
reg   [63:0] sub1805_1_reg_3646;
reg   [63:0] sub1805_1_reg_3646_pp0_iter4_reg;
reg   [63:0] add21_reg_3651;
reg   [63:0] add22_reg_3656;
reg   [63:0] sub22_reg_3661;
reg   [63:0] sub22_reg_3661_pp0_iter5_reg;
reg   [63:0] sub23_reg_3666;
reg   [63:0] sub23_reg_3666_pp0_iter5_reg;
reg   [63:0] add1733_1_reg_3671;
reg   [63:0] add1733_1_reg_3671_pp0_iter5_reg;
reg   [63:0] add1736_1_reg_3676;
reg   [63:0] add1736_1_reg_3676_pp0_iter5_reg;
reg   [63:0] sub1739_1_reg_3681;
reg   [63:0] sub1739_1_reg_3681_pp0_iter5_reg;
reg   [63:0] sub1742_1_reg_3686;
reg   [63:0] sub1742_1_reg_3686_pp0_iter5_reg;
reg   [63:0] sub25_reg_3691;
reg   [63:0] sub26_reg_3697;
wire  signed [6:0] zext_ln390_cast_fu_2142_p3;
reg  signed [6:0] zext_ln390_cast_reg_3703;
reg   [63:0] add27_reg_3709;
reg   [63:0] add28_reg_3714;
wire  signed [7:0] zext_ln391_cast_fu_2173_p3;
reg  signed [7:0] zext_ln391_cast_reg_3719;
reg   [63:0] add1812_1_reg_3724;
reg   [63:0] add1815_1_reg_3729;
reg   [63:0] sub1818_1_reg_3734;
reg   [63:0] sub1821_1_reg_3739;
wire   [8:0] zext_ln365_1_fu_2277_p1;
reg   [8:0] zext_ln365_1_reg_3744;
wire   [5:0] tmp_s_fu_2340_p4;
reg   [5:0] tmp_s_reg_3750;
wire  signed [7:0] zext_ln391_1_cast_fu_2349_p4;
reg  signed [7:0] zext_ln391_1_cast_reg_3755;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln367_1_fu_1282_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln367_fu_1236_p1;
wire   [63:0] zext_ln390_fu_2150_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln365_fu_2164_p1;
wire   [63:0] zext_ln391_fu_2180_p1;
wire   [63:0] zext_ln392_fu_2201_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_2214_p1;
wire   [63:0] zext_ln393_fu_2243_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln390_1_fu_2263_p1;
wire   [63:0] zext_ln394_fu_2286_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln396_fu_2299_p1;
wire   [63:0] zext_ln367_2_fu_2326_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln391_1_fu_2359_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln392_1_fu_2378_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln393_2_fu_2405_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln394_1_fu_2424_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln395_1_fu_2441_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln396_1_fu_2464_p1;
reg   [6:0] tid_fu_178;
wire   [6:0] add_ln365_fu_1719_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_16_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_17_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_18_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_19_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_20_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_21_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_22_ce0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_23_ce0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_15_ce0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_24_ce0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_25_ce0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_26_ce0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_27_ce0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_28_ce0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_29_ce0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_30_ce0_local;
reg    DATA_x_15_ce0_local;
reg    DATA_x_31_ce0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_2156_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
wire   [63:0] bitcast_ln389_fu_2169_p1;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_2186_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln392_fu_2207_p1;
wire   [63:0] bitcast_ln395_fu_2220_p1;
wire   [63:0] bitcast_ln393_fu_2249_p1;
wire   [63:0] bitcast_ln390_1_fu_2269_p1;
wire   [63:0] bitcast_ln394_fu_2292_p1;
wire   [63:0] bitcast_ln396_fu_2305_p1;
wire   [63:0] bitcast_ln389_1_fu_2332_p1;
wire   [63:0] bitcast_ln391_1_fu_2365_p1;
wire   [63:0] bitcast_ln392_1_fu_2384_p1;
wire   [63:0] bitcast_ln393_1_fu_2411_p1;
wire   [63:0] bitcast_ln394_1_fu_2430_p1;
wire   [63:0] bitcast_ln395_1_fu_2447_p1;
wire   [63:0] bitcast_ln396_1_fu_2470_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_2160_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
wire   [63:0] bitcast_ln398_fu_2190_p1;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_2194_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln401_fu_2224_p1;
wire   [63:0] bitcast_ln404_fu_2228_p1;
wire   [63:0] bitcast_ln402_fu_2253_p1;
wire   [63:0] bitcast_ln399_1_fu_2273_p1;
wire   [63:0] bitcast_ln403_fu_2310_p1;
wire   [63:0] bitcast_ln405_fu_2314_p1;
wire   [63:0] bitcast_ln398_1_fu_2336_p1;
wire   [63:0] bitcast_ln400_1_fu_2369_p1;
wire   [63:0] bitcast_ln401_1_fu_2388_p1;
wire   [63:0] bitcast_ln402_1_fu_2415_p1;
wire   [63:0] bitcast_ln403_1_fu_2434_p1;
wire   [63:0] bitcast_ln404_1_fu_2451_p1;
wire   [63:0] bitcast_ln405_1_fu_2474_p1;
reg   [63:0] grp_fu_1080_p0;
reg   [63:0] grp_fu_1080_p1;
reg   [63:0] grp_fu_1084_p0;
reg   [63:0] grp_fu_1084_p1;
reg   [63:0] grp_fu_1088_p0;
reg   [63:0] grp_fu_1088_p1;
reg   [63:0] grp_fu_1092_p0;
reg   [63:0] grp_fu_1092_p1;
reg   [63:0] grp_fu_1096_p0;
reg   [63:0] grp_fu_1096_p1;
reg   [63:0] grp_fu_1100_p0;
reg   [63:0] grp_fu_1100_p1;
reg   [63:0] grp_fu_1104_p0;
reg   [63:0] grp_fu_1104_p1;
reg   [63:0] grp_fu_1108_p0;
reg   [63:0] grp_fu_1108_p1;
reg   [63:0] grp_fu_1112_p0;
reg   [63:0] grp_fu_1112_p1;
reg   [63:0] grp_fu_1116_p0;
reg   [63:0] grp_fu_1116_p1;
reg   [63:0] grp_fu_1120_p0;
reg   [63:0] grp_fu_1120_p1;
reg   [63:0] grp_fu_1124_p0;
reg   [63:0] grp_fu_1124_p1;
reg   [63:0] grp_fu_1128_p0;
reg   [63:0] grp_fu_1128_p1;
reg   [63:0] grp_fu_1132_p0;
reg   [63:0] grp_fu_1132_p1;
reg   [63:0] grp_fu_1136_p0;
reg   [63:0] grp_fu_1136_p1;
reg   [63:0] grp_fu_1140_p0;
reg   [63:0] grp_fu_1140_p1;
reg   [63:0] grp_fu_1144_p0;
reg   [63:0] grp_fu_1144_p1;
reg   [63:0] grp_fu_1148_p0;
reg   [63:0] grp_fu_1148_p1;
reg   [63:0] grp_fu_1152_p0;
reg   [63:0] grp_fu_1152_p1;
reg   [63:0] grp_fu_1157_p0;
reg   [63:0] grp_fu_1157_p1;
reg   [63:0] grp_fu_1162_p0;
reg   [63:0] grp_fu_1162_p1;
reg   [63:0] grp_fu_1167_p0;
reg   [63:0] grp_fu_1167_p1;
wire   [3:0] lshr_ln_fu_1226_p4;
wire   [1:0] trunc_ln365_fu_1302_p1;
wire   [0:0] icmp_ln376_fu_1305_p2;
wire   [63:0] bitcast_ln386_fu_1439_p1;
wire   [0:0] bit_sel_fu_1442_p3;
wire   [0:0] xor_ln386_19_fu_1450_p2;
wire   [62:0] trunc_ln386_fu_1456_p1;
wire   [63:0] xor_ln3_fu_1460_p3;
wire   [63:0] bitcast_ln386_2_fu_1473_p1;
wire   [0:0] bit_sel40_fu_1476_p3;
wire   [0:0] xor_ln386_fu_1484_p2;
wire   [62:0] trunc_ln386_1_fu_1490_p1;
wire   [63:0] xor_ln386_1_fu_1494_p3;
wire   [63:0] bitcast_ln386_8_fu_1507_p1;
wire   [0:0] bit_sel43_fu_1511_p3;
wire   [0:0] xor_ln386_22_fu_1519_p2;
wire   [62:0] trunc_ln386_4_fu_1525_p1;
wire   [63:0] xor_ln386_4_fu_1529_p3;
wire   [63:0] bitcast_ln386_10_fu_1543_p1;
wire   [0:0] bit_sel44_fu_1547_p3;
wire   [0:0] xor_ln386_23_fu_1555_p2;
wire   [62:0] trunc_ln386_5_fu_1561_p1;
wire   [63:0] xor_ln386_5_fu_1565_p3;
wire   [63:0] bitcast_ln386_20_fu_1579_p1;
wire   [0:0] bit_sel49_fu_1582_p3;
wire   [0:0] xor_ln386_28_fu_1590_p2;
wire   [62:0] trunc_ln386_10_fu_1596_p1;
wire   [63:0] xor_ln386_s_fu_1600_p3;
wire   [63:0] bitcast_ln386_22_fu_1613_p1;
wire   [0:0] bit_sel50_fu_1616_p3;
wire   [0:0] xor_ln386_29_fu_1624_p2;
wire   [62:0] trunc_ln386_11_fu_1630_p1;
wire   [63:0] xor_ln386_10_fu_1634_p3;
wire   [63:0] bitcast_ln386_28_fu_1647_p1;
wire   [0:0] bit_sel53_fu_1651_p3;
wire   [0:0] xor_ln386_32_fu_1659_p2;
wire   [62:0] trunc_ln386_14_fu_1665_p1;
wire   [63:0] xor_ln386_13_fu_1669_p3;
wire   [63:0] bitcast_ln386_30_fu_1683_p1;
wire   [0:0] bit_sel54_fu_1687_p3;
wire   [0:0] xor_ln386_33_fu_1695_p2;
wire   [62:0] trunc_ln386_15_fu_1701_p1;
wire   [63:0] xor_ln386_14_fu_1705_p3;
wire   [63:0] bitcast_ln386_4_fu_1729_p1;
wire   [0:0] bit_sel41_fu_1732_p3;
wire   [0:0] xor_ln386_20_fu_1740_p2;
wire   [62:0] trunc_ln386_2_fu_1746_p1;
wire   [63:0] xor_ln386_2_fu_1750_p3;
wire   [63:0] bitcast_ln386_6_fu_1763_p1;
wire   [0:0] bit_sel42_fu_1766_p3;
wire   [0:0] xor_ln386_21_fu_1774_p2;
wire   [62:0] trunc_ln386_3_fu_1780_p1;
wire   [63:0] xor_ln386_3_fu_1784_p3;
wire   [63:0] bitcast_ln386_24_fu_1797_p1;
wire   [0:0] bit_sel51_fu_1800_p3;
wire   [0:0] xor_ln386_30_fu_1808_p2;
wire   [62:0] trunc_ln386_12_fu_1814_p1;
wire   [63:0] xor_ln386_11_fu_1818_p3;
wire   [63:0] bitcast_ln386_26_fu_1831_p1;
wire   [0:0] bit_sel52_fu_1834_p3;
wire   [0:0] xor_ln386_31_fu_1842_p2;
wire   [62:0] trunc_ln386_13_fu_1848_p1;
wire   [63:0] xor_ln386_12_fu_1852_p3;
wire   [63:0] bitcast_ln386_12_fu_1865_p1;
wire   [0:0] bit_sel45_fu_1868_p3;
wire   [0:0] xor_ln386_24_fu_1876_p2;
wire   [62:0] trunc_ln386_6_fu_1882_p1;
wire   [63:0] xor_ln386_6_fu_1886_p3;
wire   [63:0] bitcast_ln386_14_fu_1899_p1;
wire   [0:0] bit_sel46_fu_1902_p3;
wire   [0:0] xor_ln386_25_fu_1910_p2;
wire   [62:0] trunc_ln386_7_fu_1916_p1;
wire   [63:0] xor_ln386_7_fu_1920_p3;
wire   [63:0] bitcast_ln386_32_fu_1933_p1;
wire   [0:0] bit_sel55_fu_1936_p3;
wire   [0:0] xor_ln386_34_fu_1944_p2;
wire   [62:0] trunc_ln386_16_fu_1950_p1;
wire   [63:0] xor_ln386_15_fu_1954_p3;
wire   [63:0] bitcast_ln386_34_fu_1967_p1;
wire   [0:0] bit_sel56_fu_1970_p3;
wire   [0:0] xor_ln386_35_fu_1978_p2;
wire   [62:0] trunc_ln386_17_fu_1984_p1;
wire   [63:0] xor_ln386_16_fu_1988_p3;
wire   [63:0] bitcast_ln386_16_fu_2001_p1;
wire   [0:0] bit_sel47_fu_2005_p3;
wire   [0:0] xor_ln386_26_fu_2013_p2;
wire   [62:0] trunc_ln386_8_fu_2019_p1;
wire   [63:0] xor_ln386_8_fu_2023_p3;
wire   [63:0] bitcast_ln386_18_fu_2036_p1;
wire   [0:0] bit_sel48_fu_2040_p3;
wire   [0:0] xor_ln386_27_fu_2048_p2;
wire   [62:0] trunc_ln386_9_fu_2054_p1;
wire   [63:0] xor_ln386_9_fu_2058_p3;
wire   [63:0] bitcast_ln386_36_fu_2071_p1;
wire   [0:0] bit_sel57_fu_2074_p3;
wire   [0:0] xor_ln386_36_fu_2082_p2;
wire   [62:0] trunc_ln386_18_fu_2088_p1;
wire   [63:0] xor_ln386_17_fu_2092_p3;
wire   [63:0] bitcast_ln386_38_fu_2105_p1;
wire   [0:0] bit_sel58_fu_2108_p3;
wire   [0:0] xor_ln386_37_fu_2116_p2;
wire   [62:0] trunc_ln386_19_fu_2122_p1;
wire   [63:0] xor_ln386_18_fu_2126_p3;
wire   [5:0] trunc_ln390_fu_2139_p1;
wire  signed [7:0] sext_ln392_fu_2198_p1;
wire  signed [8:0] sext_ln395_fu_2211_p1;
wire   [7:0] zext_ln365_2_fu_2232_p1;
wire   [8:0] zext_ln393_cast_fu_2235_p3;
wire   [7:0] add_ln390_fu_2257_p2;
wire   [8:0] add_ln394_fu_2280_p2;
wire  signed [8:0] sext_ln396_fu_2296_p1;
wire   [5:0] or_ln_fu_2319_p3;
wire   [8:0] add_ln392_fu_2373_p2;
wire   [6:0] zext_ln393_1_fu_2392_p1;
wire   [8:0] zext_ln393_1_cast_fu_2395_p4;
wire   [8:0] add_ln394_1_fu_2419_p2;
wire  signed [8:0] sext_ln395_1_fu_2438_p1;
wire   [6:0] add_ln396_fu_2455_p2;
wire  signed [8:0] sext_ln396_1_fu_2460_p1;
reg   [1:0] grp_fu_1080_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg   [1:0] grp_fu_1084_opcode;
reg   [1:0] grp_fu_1088_opcode;
reg   [1:0] grp_fu_1092_opcode;
reg   [1:0] grp_fu_1096_opcode;
reg   [1:0] grp_fu_1100_opcode;
reg   [1:0] grp_fu_1104_opcode;
reg   [1:0] grp_fu_1108_opcode;
reg   [1:0] grp_fu_1112_opcode;
reg   [1:0] grp_fu_1116_opcode;
reg   [1:0] grp_fu_1120_opcode;
reg   [1:0] grp_fu_1124_opcode;
reg   [1:0] grp_fu_1128_opcode;
reg   [1:0] grp_fu_1132_opcode;
reg   [1:0] grp_fu_1136_opcode;
reg   [1:0] grp_fu_1140_opcode;
reg   [1:0] grp_fu_1144_opcode;
reg   [1:0] grp_fu_1148_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [10:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_178 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_178 <= 7'd0;
    end else if (((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tid_fu_178 <= add_ln365_fu_1719_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_12_load_reg_2863 <= DATA_y_12_q0;
        DATA_y_13_load_reg_2869 <= DATA_y_13_q0;
        DATA_y_14_load_reg_2875 <= DATA_y_14_q0;
        DATA_y_15_load_reg_2881 <= DATA_y_15_q0;
        DATA_y_4_load_reg_2770 <= DATA_y_4_q0;
        DATA_y_5_load_reg_2776 <= DATA_y_5_q0;
        DATA_y_6_load_reg_2782 <= DATA_y_6_q0;
        DATA_y_7_load_reg_2787 <= DATA_y_7_q0;
        add1733_1_reg_3671_pp0_iter5_reg <= add1733_1_reg_3671;
        add1736_1_reg_3676_pp0_iter5_reg <= add1736_1_reg_3676;
        c0_x_61_reg_2799 <= c0_x_61_fu_1319_p3;
        c0_x_62_reg_2805 <= c0_x_62_fu_1327_p3;
        c0_x_63_reg_2810 <= c0_x_63_fu_1335_p3;
        c0_x_67_reg_2887 <= c0_x_67_fu_1375_p3;
        c0_x_68_reg_2893 <= c0_x_68_fu_1383_p3;
        c0_x_69_reg_2899 <= c0_x_69_fu_1391_p3;
        c0_x_70_reg_2905 <= c0_x_70_fu_1399_p3;
        c0_x_reg_2793 <= c0_x_fu_1311_p3;
        c0_y_61_reg_2753 <= DATA_y_1_q0;
        c0_y_62_reg_2759 <= DATA_y_2_q0;
        c0_y_63_reg_2764 <= DATA_y_3_q0;
        c0_y_67_reg_2839 <= DATA_y_8_q0;
        c0_y_68_reg_2845 <= DATA_y_9_q0;
        c0_y_69_reg_2851 <= DATA_y_10_q0;
        c0_y_70_reg_2857 <= DATA_y_11_q0;
        c0_y_reg_2747 <= DATA_y_q0;
        select_ln380_1_reg_2911 <= select_ln380_1_fu_1407_p3;
        select_ln380_reg_2816 <= select_ln380_fu_1343_p3;
        select_ln381_1_reg_2917 <= select_ln381_1_fu_1415_p3;
        select_ln381_reg_2822 <= select_ln381_fu_1351_p3;
        select_ln382_1_reg_2923 <= select_ln382_1_fu_1423_p3;
        select_ln382_reg_2828 <= select_ln382_fu_1359_p3;
        select_ln383_1_reg_2929 <= select_ln383_1_fu_1431_p3;
        select_ln383_reg_2833 <= select_ln383_fu_1367_p3;
        sub1739_1_reg_3681_pp0_iter5_reg <= sub1739_1_reg_3681;
        sub1742_1_reg_3686_pp0_iter5_reg <= sub1742_1_reg_3686;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add11_reg_3049 <= grp_fu_1112_p_dout0;
        add1598_1_reg_3101 <= grp_fu_1132_p_dout0;
        add1601_1_reg_3107 <= grp_fu_1136_p_dout0;
        add1614_1_reg_3113 <= grp_fu_1140_p_dout0;
        add1617_1_reg_3119 <= grp_fu_1144_p_dout0;
        add_reg_3043 <= grp_fu_1108_p_dout0;
        c0_x_35_reg_3031 <= grp_fu_1100_p_dout0;
        c0_x_40_reg_3089 <= grp_fu_1124_p_dout0;
        c0_x_64_reg_3019 <= grp_fu_1092_p_dout0;
        c0_x_71_reg_3077 <= grp_fu_1116_p_dout0;
        c0_y_35_reg_3037 <= grp_fu_1104_p_dout0;
        c0_y_40_reg_3095 <= grp_fu_1128_p_dout0;
        c0_y_64_reg_3025 <= grp_fu_1096_p_dout0;
        c0_y_71_reg_3083 <= grp_fu_1120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add12_reg_2971 <= grp_fu_1116_p_dout0;
        add13_reg_2977 <= grp_fu_1120_p_dout0;
        c0_x_36_reg_2935 <= grp_fu_1092_p_dout0;
        c0_x_41_reg_2983 <= grp_fu_1132_p_dout0;
        c0_y_36_reg_2941 <= grp_fu_1096_p_dout0;
        c0_y_41_reg_2989 <= grp_fu_1136_p_dout0;
        sub12_reg_2965 <= grp_fu_1112_p_dout0;
        sub1591_1_reg_3001 <= grp_fu_1144_p_dout0;
        sub1607_1_reg_3013 <= grp_fu_1189_p_dout0;
        sub_reg_2953 <= grp_fu_1104_p_dout0;
        tmp_1_11_reg_2959 <= grp_fu_1108_p_dout0;
        tmp_1_13_reg_3007 <= grp_fu_1148_p_dout0;
        tmp_1_15_reg_2995 <= grp_fu_1140_p_dout0;
        tmp_1_reg_2947 <= grp_fu_1100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add14_reg_3172 <= grp_fu_1096_p_dout0;
        add1636_1_reg_3226 <= grp_fu_1128_p_dout0;
        add1662_1_reg_3246 <= grp_fu_1136_p_dout0;
        add16_reg_3192 <= grp_fu_1104_p_dout0;
        add17_reg_3197 <= grp_fu_1108_p_dout0;
        add18_reg_3203 <= grp_fu_1112_p_dout0;
        sub14_reg_3167 <= grp_fu_1092_p_dout0;
        sub1630_1_reg_3221 <= grp_fu_1124_p_dout0;
        sub1656_1_reg_3241 <= grp_fu_1132_p_dout0;
        sub16_reg_3187 <= grp_fu_1100_p_dout0;
        sub17_reg_3215 <= grp_fu_1120_p_dout0;
        tmp_16_reg_3209 <= grp_fu_1116_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_3341 <= grp_fu_1096_p_dout0;
        add1649_1_reg_3365 <= grp_fu_1104_p_dout0;
        c0_x_37_reg_3323 <= grp_fu_1152_p_dout0;
        c0_y_37_reg_3329 <= grp_fu_1156_p_dout0;
        mul7_reg_3347 <= grp_fu_1160_p_dout0;
        mul8_reg_3353 <= grp_fu_1201_p_dout0;
        sub15_reg_3335 <= grp_fu_1092_p_dout0;
        sub1644_1_reg_3359 <= grp_fu_1100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add1689_1_reg_3299 <= grp_fu_1124_p_dout0;
        add1692_1_reg_3305 <= grp_fu_1128_p_dout0;
        c0_x_38_reg_3263 <= grp_fu_1100_p_dout0;
        c0_x_43_reg_3287 <= grp_fu_1116_p_dout0;
        c0_x_65_reg_3251 <= grp_fu_1092_p_dout0;
        c0_x_72_reg_3275 <= grp_fu_1108_p_dout0;
        c0_y_38_reg_3269 <= grp_fu_1104_p_dout0;
        c0_y_43_reg_3293 <= grp_fu_1120_p_dout0;
        c0_y_65_reg_3257 <= grp_fu_1096_p_dout0;
        c0_y_72_reg_3281 <= grp_fu_1112_p_dout0;
        sub1698_1_reg_3317 <= grp_fu_1136_p_dout0;
        tmp_18_reg_3311 <= grp_fu_1132_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1717_1_reg_3435 <= grp_fu_1108_p_dout0;
        add1720_1_reg_3440 <= grp_fu_1112_p_dout0;
        add19_reg_3405 <= grp_fu_1092_p_dout0;
        add20_reg_3410 <= grp_fu_1096_p_dout0;
        mul10_reg_3400 <= grp_fu_1156_p_dout0;
        mul1702_1_reg_3425 <= grp_fu_1160_p_dout0;
        mul1709_1_reg_3430 <= grp_fu_1201_p_dout0;
        mul9_reg_3395 <= grp_fu_1152_p_dout0;
        sub1723_1_reg_3445 <= grp_fu_1116_p_dout0;
        sub1726_1_reg_3450 <= grp_fu_1120_p_dout0;
        sub20_reg_3415 <= grp_fu_1100_p_dout0;
        sub21_reg_3420 <= grp_fu_1104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1717_1_reg_3435_pp0_iter3_reg <= add1717_1_reg_3435;
        add1717_1_reg_3435_pp0_iter4_reg <= add1717_1_reg_3435_pp0_iter3_reg;
        add1720_1_reg_3440_pp0_iter3_reg <= add1720_1_reg_3440;
        add1720_1_reg_3440_pp0_iter4_reg <= add1720_1_reg_3440_pp0_iter3_reg;
        add19_reg_3405_pp0_iter3_reg <= add19_reg_3405;
        add19_reg_3405_pp0_iter4_reg <= add19_reg_3405_pp0_iter3_reg;
        add20_reg_3410_pp0_iter3_reg <= add20_reg_3410;
        add20_reg_3410_pp0_iter4_reg <= add20_reg_3410_pp0_iter3_reg;
        sub1723_1_reg_3445_pp0_iter3_reg <= sub1723_1_reg_3445;
        sub1723_1_reg_3445_pp0_iter4_reg <= sub1723_1_reg_3445_pp0_iter3_reg;
        sub1723_1_reg_3445_pp0_iter5_reg <= sub1723_1_reg_3445_pp0_iter4_reg;
        sub1726_1_reg_3450_pp0_iter3_reg <= sub1726_1_reg_3450;
        sub1726_1_reg_3450_pp0_iter4_reg <= sub1726_1_reg_3450_pp0_iter3_reg;
        sub1726_1_reg_3450_pp0_iter5_reg <= sub1726_1_reg_3450_pp0_iter4_reg;
        sub20_reg_3415_pp0_iter3_reg <= sub20_reg_3415;
        sub20_reg_3415_pp0_iter4_reg <= sub20_reg_3415_pp0_iter3_reg;
        sub21_reg_3420_pp0_iter3_reg <= sub21_reg_3420;
        sub21_reg_3420_pp0_iter4_reg <= sub21_reg_3420_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1733_1_reg_3671 <= grp_fu_1108_p_dout0;
        add1736_1_reg_3676 <= grp_fu_1112_p_dout0;
        sub1739_1_reg_3681 <= grp_fu_1116_p_dout0;
        sub1742_1_reg_3686 <= grp_fu_1120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add1796_1_reg_3631 <= grp_fu_1108_p_dout0;
        add1799_1_reg_3636 <= grp_fu_1112_p_dout0;
        add25_reg_3601 <= grp_fu_1092_p_dout0;
        add26_reg_3606 <= grp_fu_1096_p_dout0;
        sub1802_1_reg_3641 <= grp_fu_1116_p_dout0;
        sub1805_1_reg_3646 <= grp_fu_1120_p_dout0;
        sub27_reg_3611 <= grp_fu_1100_p_dout0;
        sub28_reg_3616 <= grp_fu_1104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add1796_1_reg_3631_pp0_iter4_reg <= add1796_1_reg_3631;
        add1799_1_reg_3636_pp0_iter4_reg <= add1799_1_reg_3636;
        add25_reg_3601_pp0_iter4_reg <= add25_reg_3601;
        add26_reg_3606_pp0_iter4_reg <= add26_reg_3606;
        sub1802_1_reg_3641_pp0_iter4_reg <= sub1802_1_reg_3641;
        sub1805_1_reg_3646_pp0_iter4_reg <= sub1805_1_reg_3646;
        sub27_reg_3611_pp0_iter4_reg <= sub27_reg_3611;
        sub28_reg_3616_pp0_iter4_reg <= sub28_reg_3616;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1812_1_reg_3724 <= grp_fu_1132_p_dout0;
        add1815_1_reg_3729 <= grp_fu_1136_p_dout0;
        sub1818_1_reg_3734 <= grp_fu_1140_p_dout0;
        sub1821_1_reg_3739 <= grp_fu_1144_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add21_reg_3651 <= grp_fu_1140_p_dout0;
        add22_reg_3656 <= grp_fu_1144_p_dout0;
        sub22_reg_3661 <= grp_fu_1148_p_dout0;
        sub23_reg_3666 <= grp_fu_1189_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_3499 <= grp_fu_1100_p_dout0;
        add24_reg_3505 <= grp_fu_1104_p_dout0;
        c0_x_39_reg_3487 <= grp_fu_1092_p_dout0;
        c0_x_44_reg_3523 <= grp_fu_1116_p_dout0;
        c0_x_73_reg_3511 <= grp_fu_1108_p_dout0;
        c0_y_39_reg_3493 <= grp_fu_1096_p_dout0;
        c0_y_44_reg_3529 <= grp_fu_1120_p_dout0;
        c0_y_73_reg_3517 <= grp_fu_1112_p_dout0;
        sub1777_1_reg_3541 <= grp_fu_1136_p_dout0;
        tmp_19_reg_3535 <= grp_fu_1132_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add27_reg_3709 <= grp_fu_1193_p_dout0;
        add28_reg_3714 <= grp_fu_1197_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        c0_x_35_reg_3031_pp0_iter1_reg <= c0_x_35_reg_3031;
        c0_x_40_reg_3089_pp0_iter1_reg <= c0_x_40_reg_3089;
        c0_y_35_reg_3037_pp0_iter1_reg <= c0_y_35_reg_3037;
        c0_y_40_reg_3095_pp0_iter1_reg <= c0_y_40_reg_3095;
        zext_ln390_cast_reg_3703[5 : 0] <= zext_ln390_cast_fu_2142_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        c0_x_38_reg_3263_pp0_iter2_reg <= c0_x_38_reg_3263;
        c0_x_43_reg_3287_pp0_iter2_reg <= c0_x_43_reg_3287;
        c0_y_38_reg_3269_pp0_iter2_reg <= c0_y_38_reg_3269;
        c0_y_43_reg_3293_pp0_iter2_reg <= c0_y_43_reg_3293;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_39_reg_3487_pp0_iter4_reg <= c0_x_39_reg_3487;
        c0_x_44_reg_3523_pp0_iter4_reg <= c0_x_44_reg_3523;
        c0_y_39_reg_3493_pp0_iter4_reg <= c0_y_39_reg_3493;
        c0_y_44_reg_3529_pp0_iter4_reg <= c0_y_44_reg_3529;
        lshr_ln367_1_reg_2502 <= {{ap_sig_allocacmp_tid_5[5:1]}};
        lshr_ln367_1_reg_2502_pp0_iter1_reg <= lshr_ln367_1_reg_2502;
        lshr_ln367_1_reg_2502_pp0_iter2_reg <= lshr_ln367_1_reg_2502_pp0_iter1_reg;
        lshr_ln367_1_reg_2502_pp0_iter3_reg <= lshr_ln367_1_reg_2502_pp0_iter2_reg;
        lshr_ln367_1_reg_2502_pp0_iter4_reg <= lshr_ln367_1_reg_2502_pp0_iter3_reg;
        lshr_ln367_1_reg_2502_pp0_iter5_reg <= lshr_ln367_1_reg_2502_pp0_iter4_reg;
        sub22_reg_3661_pp0_iter5_reg <= sub22_reg_3661;
        sub23_reg_3666_pp0_iter5_reg <= sub23_reg_3666;
        tid_5_reg_2485 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_2485_pp0_iter1_reg <= tid_5_reg_2485;
        tid_5_reg_2485_pp0_iter2_reg <= tid_5_reg_2485_pp0_iter1_reg;
        tid_5_reg_2485_pp0_iter3_reg <= tid_5_reg_2485_pp0_iter2_reg;
        tid_5_reg_2485_pp0_iter4_reg <= tid_5_reg_2485_pp0_iter3_reg;
        tid_5_reg_2485_pp0_iter5_reg <= tid_5_reg_2485_pp0_iter4_reg;
        tmp_reg_2498 <= ap_sig_allocacmp_tid_5[32'd6];
        zext_ln391_cast_reg_3719[6 : 0] <= zext_ln391_cast_fu_2173_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c0_x_42_reg_3371 <= grp_fu_1152_p_dout0;
        c0_y_42_reg_3377 <= grp_fu_1156_p_dout0;
        mul1657_1_reg_3383 <= grp_fu_1160_p_dout0;
        mul1663_1_reg_3389 <= grp_fu_1201_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        c0_x_66_reg_3475 <= grp_fu_1148_p_dout0;
        c0_y_66_reg_3481 <= grp_fu_1189_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul11_reg_3571 <= grp_fu_1152_p_dout0;
        mul12_reg_3576 <= grp_fu_1156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul1641_1_reg_3157 <= grp_fu_1160_p_dout0;
        mul1648_1_reg_3162 <= grp_fu_1201_p_dout0;
        mul6_reg_3152 <= grp_fu_1156_p_dout0;
        mul_reg_3147 <= grp_fu_1152_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul1781_1_reg_3591 <= grp_fu_1152_p_dout0;
        mul1788_1_reg_3596 <= grp_fu_1156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1176 <= grp_fu_1124_p_dout0;
        reg_1182 <= grp_fu_1128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1188 <= grp_fu_1193_p_dout0;
        reg_1193 <= grp_fu_1197_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1198 <= grp_fu_1124_p_dout0;
        reg_1204 <= grp_fu_1128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub1705_1_reg_3559 <= grp_fu_1100_p_dout0;
        sub1710_1_reg_3565 <= grp_fu_1104_p_dout0;
        sub18_reg_3547 <= grp_fu_1092_p_dout0;
        sub19_reg_3553 <= grp_fu_1096_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_3691 <= grp_fu_1092_p_dout0;
        sub26_reg_3697 <= grp_fu_1096_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_s_reg_3750 <= {{tid_5_reg_2485_pp0_iter5_reg[6:1]}};
        zext_ln391_1_cast_reg_3755[6 : 1] <= zext_ln391_1_cast_fu_2349_p4[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln365_1_reg_3744[6 : 0] <= zext_ln365_1_fu_2277_p1[6 : 0];
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
    if (((tmp_reg_2498 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_178;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1080_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1080_opcode = 2'd0;
    end else begin
        grp_fu_1080_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1080_p0 = mul11_reg_3571;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1080_p0 = c0_x_66_reg_3475;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1080_p0 = mul9_reg_3395;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1080_p0 = c0_x_35_reg_3031_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1080_p0 = c0_x_65_reg_3251;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1080_p0 = mul_reg_3147;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1080_p0 = c0_x_64_reg_3019;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1080_p0 = tmp_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1080_p0 = c0_x_reg_2793;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1080_p0 = c0_x_61_reg_2799;
    end else begin
        grp_fu_1080_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1080_p1 = bitcast_ln386_17_fu_2031_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1080_p1 = add23_reg_3499;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1080_p1 = bitcast_ln386_13_fu_1894_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1080_p1 = sub15_reg_3335;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1080_p1 = add17_reg_3197;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1080_p1 = bitcast_ln386_5_fu_1758_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1080_p1 = add_reg_3043;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1080_p1 = bitcast_ln386_1_fu_1468_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1080_p1 = select_ln380_reg_2816;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1080_p1 = select_ln381_reg_2822;
    end else begin
        grp_fu_1080_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1084_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1084_opcode = 2'd0;
    end else begin
        grp_fu_1084_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1084_p0 = bitcast_ln386_19_fu_2066_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1084_p0 = c0_y_66_reg_3481;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1084_p0 = bitcast_ln386_15_fu_1928_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1084_p0 = c0_y_35_reg_3037_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1084_p0 = c0_y_65_reg_3257;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1084_p0 = bitcast_ln386_7_fu_1792_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1084_p0 = c0_y_64_reg_3025;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1084_p0 = bitcast_ln386_3_fu_1502_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1084_p0 = c0_y_reg_2747;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1084_p0 = c0_y_61_reg_2753;
    end else begin
        grp_fu_1084_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1084_p1 = mul12_reg_3576;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1084_p1 = add24_reg_3505;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1084_p1 = mul10_reg_3400;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1084_p1 = add15_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1084_p1 = add18_reg_3203;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1084_p1 = mul6_reg_3152;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1084_p1 = add11_reg_3049;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1084_p1 = sub_reg_2953;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1084_p1 = DATA_y_4_load_reg_2770;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1084_p1 = DATA_y_5_load_reg_2776;
    end else begin
        grp_fu_1084_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1088_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1088_opcode = 2'd0;
    end else begin
        grp_fu_1088_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1088_p0 = c0_x_66_reg_3475;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1088_p0 = mul1702_1_reg_3425;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1088_p0 = c0_x_37_reg_3323;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1088_p0 = c0_x_65_reg_3251;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1088_p0 = mul1641_1_reg_3157;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1088_p0 = c0_x_64_reg_3019;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1088_p0 = bitcast_ln386_9_fu_1537_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1088_p0 = c0_x_reg_2793;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1088_p0 = c0_x_61_reg_2799;
    end else begin
        grp_fu_1088_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1088_p1 = add23_reg_3499;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1088_p1 = bitcast_ln386_33_fu_1962_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1088_p1 = mul7_reg_3347;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1088_p1 = add17_reg_3197;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1088_p1 = bitcast_ln386_25_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1088_p1 = add_reg_3043;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1088_p1 = bitcast_ln386_11_fu_1573_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1088_p1 = select_ln380_reg_2816;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1088_p1 = select_ln381_reg_2822;
    end else begin
        grp_fu_1088_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1092_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1092_opcode = 2'd0;
    end else begin
        grp_fu_1092_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1092_p0 = c0_y_66_reg_3481;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1092_p0 = bitcast_ln386_35_fu_1996_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1092_p0 = c0_y_37_reg_3329;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1092_p0 = c0_y_65_reg_3257;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1092_p0 = bitcast_ln386_27_fu_1860_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1092_p0 = c0_y_64_reg_3025;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1092_p0 = bitcast_ln386_9_fu_1537_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1092_p0 = c0_y_reg_2747;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1092_p0 = c0_y_61_reg_2753;
    end else begin
        grp_fu_1092_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1092_p1 = add24_reg_3505;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1092_p1 = mul1709_1_reg_3430;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1092_p1 = mul8_reg_3353;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1092_p1 = add18_reg_3203;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1092_p1 = mul1648_1_reg_3162;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1092_p1 = add11_reg_3049;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1092_p1 = bitcast_ln386_11_fu_1573_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1092_p1 = DATA_y_4_load_reg_2770;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1092_p1 = DATA_y_5_load_reg_2776;
    end else begin
        grp_fu_1092_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1096_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1096_opcode = 2'd0;
    end else begin
        grp_fu_1096_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1096_p0 = c0_x_43_reg_3287_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1096_p0 = c0_x_73_reg_3511;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1096_p0 = c0_x_40_reg_3089_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1096_p0 = c0_x_72_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1096_p0 = c0_x_71_reg_3077;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1096_p0 = c0_x_36_reg_2935;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1096_p0 = c0_x_62_reg_2805;
    end else begin
        grp_fu_1096_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1096_p1 = sub1705_1_reg_3559;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1096_p1 = reg_1176;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1096_p1 = sub1644_1_reg_3359;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1096_p1 = add1689_1_reg_3299;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1096_p1 = add1598_1_reg_3101;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1096_p1 = add12_reg_2971;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1096_p1 = select_ln382_reg_2828;
    end else begin
        grp_fu_1096_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1100_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1100_opcode = 2'd0;
    end else begin
        grp_fu_1100_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1100_p0 = c0_y_43_reg_3293_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1100_p0 = c0_y_73_reg_3517;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1100_p0 = c0_y_40_reg_3095_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1100_p0 = c0_y_72_reg_3281;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1100_p0 = c0_y_71_reg_3083;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1100_p0 = c0_y_36_reg_2941;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1100_p0 = c0_y_62_reg_2759;
    end else begin
        grp_fu_1100_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1100_p1 = sub1710_1_reg_3565;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1100_p1 = reg_1182;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1100_p1 = add1649_1_reg_3365;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1100_p1 = add1692_1_reg_3305;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1100_p1 = add1601_1_reg_3107;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1100_p1 = add13_reg_2977;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1100_p1 = DATA_y_6_load_reg_2782;
    end else begin
        grp_fu_1100_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1104_opcode = 2'd1;
    end else if ((((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1104_opcode = 2'd0;
    end else begin
        grp_fu_1104_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1104_p0 = c0_x_43_reg_3287_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1104_p0 = c0_x_73_reg_3511;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1104_p0 = c0_x_40_reg_3089_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1104_p0 = c0_x_72_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1104_p0 = c0_x_71_reg_3077;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1104_p0 = c0_x_36_reg_2935;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1104_p0 = c0_x_67_reg_2887;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1104_p0 = c0_x_63_reg_2810;
    end else begin
        grp_fu_1104_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1104_p1 = sub1705_1_reg_3559;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1104_p1 = reg_1176;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1104_p1 = sub1644_1_reg_3359;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1104_p1 = add1689_1_reg_3299;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1104_p1 = add1598_1_reg_3101;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1104_p1 = add12_reg_2971;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1104_p1 = select_ln380_1_reg_2911;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1104_p1 = select_ln383_reg_2833;
    end else begin
        grp_fu_1104_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1108_opcode = 2'd1;
    end else if ((((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1108_opcode = 2'd0;
    end else begin
        grp_fu_1108_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1108_p0 = c0_y_43_reg_3293_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1108_p0 = c0_y_73_reg_3517;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1108_p0 = c0_y_40_reg_3095_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1108_p0 = c0_y_72_reg_3281;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1108_p0 = c0_y_71_reg_3083;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1108_p0 = c0_y_36_reg_2941;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1108_p0 = c0_y_67_reg_2839;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1108_p0 = c0_y_63_reg_2764;
    end else begin
        grp_fu_1108_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1108_p1 = sub1710_1_reg_3565;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1108_p1 = reg_1182;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1108_p1 = add1649_1_reg_3365;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1108_p1 = add1692_1_reg_3305;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1108_p1 = add1601_1_reg_3107;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1108_p1 = add13_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1108_p1 = DATA_y_12_load_reg_2863;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1108_p1 = DATA_y_7_load_reg_2787;
    end else begin
        grp_fu_1108_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1112_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1112_opcode = 2'd0;
    end else begin
        grp_fu_1112_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1112_p0 = c0_x_39_reg_3487_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1112_p0 = mul1781_1_reg_3591;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1112_p0 = c0_x_42_reg_3371;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1112_p0 = c0_x_41_reg_2983;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1112_p0 = tmp_1_15_reg_2995;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1112_p0 = c0_x_67_reg_2887;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1112_p0 = c0_x_63_reg_2810;
    end else begin
        grp_fu_1112_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1112_p1 = sub25_reg_3691;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1112_p1 = bitcast_ln386_37_fu_2100_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1112_p1 = mul1657_1_reg_3383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1112_p1 = add1614_1_reg_3113;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1112_p1 = bitcast_ln386_21_fu_1608_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1112_p1 = select_ln380_1_reg_2911;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1112_p1 = select_ln383_reg_2833;
    end else begin
        grp_fu_1112_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1116_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1116_opcode = 2'd0;
    end else begin
        grp_fu_1116_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1116_p0 = c0_y_39_reg_3493_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1116_p0 = bitcast_ln386_39_fu_2134_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1116_p0 = c0_y_42_reg_3377;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1116_p0 = c0_y_41_reg_2989;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1116_p0 = bitcast_ln386_23_fu_1642_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1116_p0 = c0_y_67_reg_2839;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1116_p0 = c0_y_63_reg_2764;
    end else begin
        grp_fu_1116_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1116_p1 = sub26_reg_3697;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1116_p1 = mul1788_1_reg_3596;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1116_p1 = mul1663_1_reg_3389;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1116_p1 = add1617_1_reg_3119;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1116_p1 = sub1591_1_reg_3001;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1116_p1 = DATA_y_12_load_reg_2863;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1116_p1 = DATA_y_7_load_reg_2787;
    end else begin
        grp_fu_1116_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1120_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1120_opcode = 2'd0;
    end else begin
        grp_fu_1120_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1120_p0 = c0_x_44_reg_3523_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1120_p0 = c0_x_42_reg_3371;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1120_p0 = c0_x_41_reg_2983;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1120_p0 = bitcast_ln386_29_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1120_p0 = c0_x_69_reg_2899;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1120_p0 = c0_x_68_reg_2893;
    end else begin
        grp_fu_1120_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1120_p1 = reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1120_p1 = mul1657_1_reg_3383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1120_p1 = add1614_1_reg_3113;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1120_p1 = bitcast_ln386_31_fu_1713_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1120_p1 = select_ln382_1_reg_2923;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1120_p1 = select_ln381_1_reg_2917;
    end else begin
        grp_fu_1120_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1124_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1124_opcode = 2'd0;
    end else begin
        grp_fu_1124_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1124_p0 = c0_y_44_reg_3529_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1124_p0 = c0_y_42_reg_3377;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1124_p0 = c0_y_41_reg_2989;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1124_p0 = bitcast_ln386_29_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1124_p0 = c0_y_69_reg_2851;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1124_p0 = c0_y_68_reg_2845;
    end else begin
        grp_fu_1124_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1124_p1 = reg_1204;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1124_p1 = mul1663_1_reg_3389;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1124_p1 = add1617_1_reg_3119;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1124_p1 = bitcast_ln386_31_fu_1713_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1124_p1 = DATA_y_14_load_reg_2875;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1124_p1 = DATA_y_13_load_reg_2869;
    end else begin
        grp_fu_1124_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1128_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1128_opcode = 2'd0;
    end else begin
        grp_fu_1128_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1128_p0 = c0_x_44_reg_3523_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1128_p0 = c0_x_38_reg_3263_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1128_p0 = c0_x_70_reg_2905;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1128_p0 = c0_x_68_reg_2893;
    end else begin
        grp_fu_1128_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1128_p1 = reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1128_p1 = sub18_reg_3547;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1128_p1 = select_ln383_1_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1128_p1 = select_ln381_1_reg_2917;
    end else begin
        grp_fu_1128_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1132_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1132_opcode = 2'd0;
    end else begin
        grp_fu_1132_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1132_p0 = c0_y_44_reg_3529_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1132_p0 = c0_y_38_reg_3269_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1132_p0 = c0_y_70_reg_2857;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1132_p0 = c0_y_68_reg_2845;
    end else begin
        grp_fu_1132_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1132_p1 = reg_1204;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1132_p1 = sub19_reg_3553;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1132_p1 = DATA_y_15_load_reg_2881;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1132_p1 = DATA_y_13_load_reg_2869;
    end else begin
        grp_fu_1132_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1136_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1136_opcode = 2'd0;
    end else begin
        grp_fu_1136_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1136_p0 = c0_x_38_reg_3263_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1136_p0 = c0_x_35_reg_3031_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1136_p0 = c0_x_69_reg_2899;
    end else begin
        grp_fu_1136_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1136_p1 = sub18_reg_3547;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1136_p1 = sub15_reg_3335;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1136_p1 = select_ln382_1_reg_2923;
    end else begin
        grp_fu_1136_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1140_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1140_opcode = 2'd0;
    end else begin
        grp_fu_1140_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1140_p0 = c0_y_38_reg_3269_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1140_p0 = c0_y_35_reg_3037_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1140_p0 = c0_y_69_reg_2851;
    end else begin
        grp_fu_1140_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1140_p1 = sub19_reg_3553;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1140_p1 = add15_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1140_p1 = DATA_y_14_load_reg_2875;
    end else begin
        grp_fu_1140_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1144_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1144_opcode = 2'd0;
    end else begin
        grp_fu_1144_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1144_p0 = c0_x_39_reg_3487_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1144_p0 = c0_x_37_reg_3323;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1144_p0 = c0_x_70_reg_2905;
    end else begin
        grp_fu_1144_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1144_p1 = sub25_reg_3691;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1144_p1 = mul7_reg_3347;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1144_p1 = select_ln383_1_reg_2929;
    end else begin
        grp_fu_1144_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1148_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1148_opcode = 2'd0;
    end else begin
        grp_fu_1148_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1148_p0 = c0_y_39_reg_3493_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1148_p0 = c0_y_37_reg_3329;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1148_p0 = c0_y_70_reg_2857;
    end else begin
        grp_fu_1148_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1148_p1 = sub26_reg_3697;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1148_p1 = mul8_reg_3353;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1148_p1 = DATA_y_15_load_reg_2881;
    end else begin
        grp_fu_1148_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1152_p0 = tmp_19_reg_3535;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1152_p0 = reg_1188;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1152_p0 = tmp_16_reg_3209;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1152_p0 = sub1630_1_reg_3221;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1152_p0 = sub14_reg_3167;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1152_p0 = tmp_1_11_reg_2959;
    end else begin
        grp_fu_1152_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1152_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1152_p1 = 64'd0;
    end else begin
        grp_fu_1152_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1157_p0 = sub1777_1_reg_3541;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1157_p0 = reg_1193;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1157_p0 = sub17_reg_3215;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1157_p0 = add1636_1_reg_3226;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1157_p0 = add14_reg_3172;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1157_p0 = sub12_reg_2965;
    end else begin
        grp_fu_1157_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1157_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1157_p1 = 64'd0;
    end else begin
        grp_fu_1157_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1162_p0 = tmp_18_reg_3311;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1162_p0 = sub1656_1_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1162_p0 = sub16_reg_3187;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1162_p0 = tmp_1_13_reg_3007;
    end else begin
        grp_fu_1162_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1162_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1162_p1 = 64'd0;
    end else begin
        grp_fu_1162_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1167_p0 = sub1698_1_reg_3317;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1167_p0 = add1662_1_reg_3246;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1167_p0 = add16_reg_3192;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1167_p0 = sub1607_1_reg_3013;
    end else begin
        grp_fu_1167_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1167_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1167_p1 = 64'd0;
    end else begin
        grp_fu_1167_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_x_address0_local = zext_ln396_1_fu_2464_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_address0_local = zext_ln394_1_fu_2424_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_address0_local = zext_ln392_1_fu_2378_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_address0_local = zext_ln367_2_fu_2326_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_address0_local = zext_ln396_fu_2299_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_address0_local = zext_ln390_1_fu_2263_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_address0_local = zext_ln395_fu_2214_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_address0_local = zext_ln391_fu_2180_p1;
        end else begin
            work_x_address0_local = 'bx;
        end
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_address1_local = zext_ln395_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_address1_local = zext_ln393_2_fu_2405_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_address1_local = zext_ln391_1_fu_2359_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln394_fu_2286_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln393_fu_2243_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln392_fu_2201_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_fu_2164_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_address1_local = zext_ln390_fu_2150_p1;
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_x_d0_local = bitcast_ln396_1_fu_2470_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_d0_local = bitcast_ln394_1_fu_2430_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_d0_local = bitcast_ln392_1_fu_2384_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_d0_local = bitcast_ln389_1_fu_2332_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_d0_local = bitcast_ln396_fu_2305_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_d0_local = bitcast_ln390_1_fu_2269_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_d0_local = bitcast_ln395_fu_2220_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_d0_local = bitcast_ln391_fu_2186_p1;
        end else begin
            work_x_d0_local = 'bx;
        end
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_d1_local = bitcast_ln395_1_fu_2447_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_d1_local = bitcast_ln393_1_fu_2411_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_d1_local = bitcast_ln391_1_fu_2365_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln394_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln393_fu_2249_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln392_fu_2207_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_2169_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_d1_local = bitcast_ln390_fu_2156_p1;
    end else begin
        work_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we0_local = 1'b1;
    end else begin
        work_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_x_we1_local = 1'b1;
    end else begin
        work_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_y_address0_local = zext_ln396_1_fu_2464_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_address0_local = zext_ln394_1_fu_2424_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_address0_local = zext_ln392_1_fu_2378_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_address0_local = zext_ln367_2_fu_2326_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_address0_local = zext_ln396_fu_2299_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_address0_local = zext_ln390_1_fu_2263_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_address0_local = zext_ln395_fu_2214_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_address0_local = zext_ln391_fu_2180_p1;
        end else begin
            work_y_address0_local = 'bx;
        end
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_address1_local = zext_ln395_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_address1_local = zext_ln393_2_fu_2405_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_address1_local = zext_ln391_1_fu_2359_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln394_fu_2286_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln393_fu_2243_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln392_fu_2201_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_fu_2164_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_address1_local = zext_ln390_fu_2150_p1;
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_y_d0_local = bitcast_ln405_1_fu_2474_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_d0_local = bitcast_ln403_1_fu_2434_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_d0_local = bitcast_ln401_1_fu_2388_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_d0_local = bitcast_ln398_1_fu_2336_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_d0_local = bitcast_ln405_fu_2314_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_d0_local = bitcast_ln399_1_fu_2273_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_d0_local = bitcast_ln404_fu_2228_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_d0_local = bitcast_ln400_fu_2194_p1;
        end else begin
            work_y_d0_local = 'bx;
        end
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_d1_local = bitcast_ln404_1_fu_2451_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_d1_local = bitcast_ln402_1_fu_2415_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_d1_local = bitcast_ln400_1_fu_2369_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln403_fu_2310_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln402_fu_2253_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln401_fu_2224_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_2190_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_d1_local = bitcast_ln399_fu_2160_p1;
    end else begin
        work_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we0_local = 1'b1;
    end else begin
        work_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_y_we1_local = 1'b1;
    end else begin
        work_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_10_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_16_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_16_ce0 = DATA_x_16_ce0_local;
assign DATA_x_17_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_17_ce0 = DATA_x_17_ce0_local;
assign DATA_x_18_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_18_ce0 = DATA_x_18_ce0_local;
assign DATA_x_19_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_19_ce0 = DATA_x_19_ce0_local;
assign DATA_x_1_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_20_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_20_ce0 = DATA_x_20_ce0_local;
assign DATA_x_21_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_21_ce0 = DATA_x_21_ce0_local;
assign DATA_x_22_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_22_ce0 = DATA_x_22_ce0_local;
assign DATA_x_23_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_23_ce0 = DATA_x_23_ce0_local;
assign DATA_x_24_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_24_ce0 = DATA_x_24_ce0_local;
assign DATA_x_25_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_25_ce0 = DATA_x_25_ce0_local;
assign DATA_x_26_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_26_ce0 = DATA_x_26_ce0_local;
assign DATA_x_27_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_27_ce0 = DATA_x_27_ce0_local;
assign DATA_x_28_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_28_ce0 = DATA_x_28_ce0_local;
assign DATA_x_29_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_29_ce0 = DATA_x_29_ce0_local;
assign DATA_x_2_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_30_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_30_ce0 = DATA_x_30_ce0_local;
assign DATA_x_31_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_31_ce0 = DATA_x_31_ce0_local;
assign DATA_x_3_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln367_fu_1236_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_10_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_11_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_12_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_13_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_14_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_15_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_1_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_2_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_3_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_8_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_9_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_address0 = zext_ln367_1_fu_1282_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln365_fu_1719_p2 = (tid_5_reg_2485 + 7'd2);
assign add_ln390_fu_2257_p2 = (zext_ln365_2_fu_2232_p1 + 8'd65);
assign add_ln392_fu_2373_p2 = (zext_ln365_1_reg_3744 + 9'd193);
assign add_ln394_1_fu_2419_p2 = ($signed(zext_ln365_1_reg_3744) + $signed(9'd321));
assign add_ln394_fu_2280_p2 = ($signed(zext_ln365_1_fu_2277_p1) + $signed(9'd320));
assign add_ln396_fu_2455_p2 = ($signed(tid_5_reg_2485_pp0_iter5_reg) + $signed(7'd65));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign bit_sel40_fu_1476_p3 = bitcast_ln386_2_fu_1473_p1[64'd63];
assign bit_sel41_fu_1732_p3 = bitcast_ln386_4_fu_1729_p1[64'd63];
assign bit_sel42_fu_1766_p3 = bitcast_ln386_6_fu_1763_p1[64'd63];
assign bit_sel43_fu_1511_p3 = bitcast_ln386_8_fu_1507_p1[64'd63];
assign bit_sel44_fu_1547_p3 = bitcast_ln386_10_fu_1543_p1[64'd63];
assign bit_sel45_fu_1868_p3 = bitcast_ln386_12_fu_1865_p1[64'd63];
assign bit_sel46_fu_1902_p3 = bitcast_ln386_14_fu_1899_p1[64'd63];
assign bit_sel47_fu_2005_p3 = bitcast_ln386_16_fu_2001_p1[64'd63];
assign bit_sel48_fu_2040_p3 = bitcast_ln386_18_fu_2036_p1[64'd63];
assign bit_sel49_fu_1582_p3 = bitcast_ln386_20_fu_1579_p1[64'd63];
assign bit_sel50_fu_1616_p3 = bitcast_ln386_22_fu_1613_p1[64'd63];
assign bit_sel51_fu_1800_p3 = bitcast_ln386_24_fu_1797_p1[64'd63];
assign bit_sel52_fu_1834_p3 = bitcast_ln386_26_fu_1831_p1[64'd63];
assign bit_sel53_fu_1651_p3 = bitcast_ln386_28_fu_1647_p1[64'd63];
assign bit_sel54_fu_1687_p3 = bitcast_ln386_30_fu_1683_p1[64'd63];
assign bit_sel55_fu_1936_p3 = bitcast_ln386_32_fu_1933_p1[64'd63];
assign bit_sel56_fu_1970_p3 = bitcast_ln386_34_fu_1967_p1[64'd63];
assign bit_sel57_fu_2074_p3 = bitcast_ln386_36_fu_2071_p1[64'd63];
assign bit_sel58_fu_2108_p3 = bitcast_ln386_38_fu_2105_p1[64'd63];
assign bit_sel_fu_1442_p3 = bitcast_ln386_fu_1439_p1[64'd63];
assign bitcast_ln386_10_fu_1543_p1 = reg_1182;
assign bitcast_ln386_11_fu_1573_p1 = xor_ln386_5_fu_1565_p3;
assign bitcast_ln386_12_fu_1865_p1 = sub17_reg_3215;
assign bitcast_ln386_13_fu_1894_p1 = xor_ln386_6_fu_1886_p3;
assign bitcast_ln386_14_fu_1899_p1 = tmp_16_reg_3209;
assign bitcast_ln386_15_fu_1928_p1 = xor_ln386_7_fu_1920_p3;
assign bitcast_ln386_16_fu_2001_p1 = reg_1193;
assign bitcast_ln386_17_fu_2031_p1 = xor_ln386_8_fu_2023_p3;
assign bitcast_ln386_18_fu_2036_p1 = reg_1188;
assign bitcast_ln386_19_fu_2066_p1 = xor_ln386_9_fu_2058_p3;
assign bitcast_ln386_1_fu_1468_p1 = xor_ln3_fu_1460_p3;
assign bitcast_ln386_20_fu_1579_p1 = sub1591_1_reg_3001;
assign bitcast_ln386_21_fu_1608_p1 = xor_ln386_s_fu_1600_p3;
assign bitcast_ln386_22_fu_1613_p1 = tmp_1_15_reg_2995;
assign bitcast_ln386_23_fu_1642_p1 = xor_ln386_10_fu_1634_p3;
assign bitcast_ln386_24_fu_1797_p1 = sub1607_1_reg_3013;
assign bitcast_ln386_25_fu_1826_p1 = xor_ln386_11_fu_1818_p3;
assign bitcast_ln386_26_fu_1831_p1 = tmp_1_13_reg_3007;
assign bitcast_ln386_27_fu_1860_p1 = xor_ln386_12_fu_1852_p3;
assign bitcast_ln386_28_fu_1647_p1 = reg_1188;
assign bitcast_ln386_29_fu_1677_p1 = xor_ln386_13_fu_1669_p3;
assign bitcast_ln386_2_fu_1473_p1 = tmp_1_reg_2947;
assign bitcast_ln386_30_fu_1683_p1 = reg_1193;
assign bitcast_ln386_31_fu_1713_p1 = xor_ln386_14_fu_1705_p3;
assign bitcast_ln386_32_fu_1933_p1 = sub1698_1_reg_3317;
assign bitcast_ln386_33_fu_1962_p1 = xor_ln386_15_fu_1954_p3;
assign bitcast_ln386_34_fu_1967_p1 = tmp_18_reg_3311;
assign bitcast_ln386_35_fu_1996_p1 = xor_ln386_16_fu_1988_p3;
assign bitcast_ln386_36_fu_2071_p1 = sub1777_1_reg_3541;
assign bitcast_ln386_37_fu_2100_p1 = xor_ln386_17_fu_2092_p3;
assign bitcast_ln386_38_fu_2105_p1 = tmp_19_reg_3535;
assign bitcast_ln386_39_fu_2134_p1 = xor_ln386_18_fu_2126_p3;
assign bitcast_ln386_3_fu_1502_p1 = xor_ln386_1_fu_1494_p3;
assign bitcast_ln386_4_fu_1729_p1 = sub12_reg_2965;
assign bitcast_ln386_5_fu_1758_p1 = xor_ln386_2_fu_1750_p3;
assign bitcast_ln386_6_fu_1763_p1 = tmp_1_11_reg_2959;
assign bitcast_ln386_7_fu_1792_p1 = xor_ln386_3_fu_1784_p3;
assign bitcast_ln386_8_fu_1507_p1 = reg_1176;
assign bitcast_ln386_9_fu_1537_p1 = xor_ln386_4_fu_1529_p3;
assign bitcast_ln386_fu_1439_p1 = sub_reg_2953;
assign bitcast_ln389_1_fu_2332_p1 = add1717_1_reg_3435_pp0_iter4_reg;
assign bitcast_ln389_fu_2169_p1 = add19_reg_3405_pp0_iter4_reg;
assign bitcast_ln390_1_fu_2269_p1 = add1796_1_reg_3631_pp0_iter4_reg;
assign bitcast_ln390_fu_2156_p1 = add25_reg_3601_pp0_iter4_reg;
assign bitcast_ln391_1_fu_2365_p1 = add1733_1_reg_3671_pp0_iter5_reg;
assign bitcast_ln391_fu_2186_p1 = add21_reg_3651;
assign bitcast_ln392_1_fu_2384_p1 = add1812_1_reg_3724;
assign bitcast_ln392_fu_2207_p1 = add27_reg_3709;
assign bitcast_ln393_1_fu_2411_p1 = sub1723_1_reg_3445_pp0_iter5_reg;
assign bitcast_ln393_fu_2249_p1 = sub20_reg_3415_pp0_iter4_reg;
assign bitcast_ln394_1_fu_2430_p1 = sub1802_1_reg_3641_pp0_iter4_reg;
assign bitcast_ln394_fu_2292_p1 = sub27_reg_3611_pp0_iter4_reg;
assign bitcast_ln395_1_fu_2447_p1 = sub1739_1_reg_3681_pp0_iter5_reg;
assign bitcast_ln395_fu_2220_p1 = sub22_reg_3661_pp0_iter5_reg;
assign bitcast_ln396_1_fu_2470_p1 = sub1818_1_reg_3734;
assign bitcast_ln396_fu_2305_p1 = reg_1198;
assign bitcast_ln398_1_fu_2336_p1 = add1720_1_reg_3440_pp0_iter4_reg;
assign bitcast_ln398_fu_2190_p1 = add20_reg_3410_pp0_iter4_reg;
assign bitcast_ln399_1_fu_2273_p1 = add1799_1_reg_3636_pp0_iter4_reg;
assign bitcast_ln399_fu_2160_p1 = add26_reg_3606_pp0_iter4_reg;
assign bitcast_ln400_1_fu_2369_p1 = add1736_1_reg_3676_pp0_iter5_reg;
assign bitcast_ln400_fu_2194_p1 = add22_reg_3656;
assign bitcast_ln401_1_fu_2388_p1 = add1815_1_reg_3729;
assign bitcast_ln401_fu_2224_p1 = add28_reg_3714;
assign bitcast_ln402_1_fu_2415_p1 = sub1726_1_reg_3450_pp0_iter5_reg;
assign bitcast_ln402_fu_2253_p1 = sub21_reg_3420_pp0_iter4_reg;
assign bitcast_ln403_1_fu_2434_p1 = sub1805_1_reg_3646_pp0_iter4_reg;
assign bitcast_ln403_fu_2310_p1 = sub28_reg_3616_pp0_iter4_reg;
assign bitcast_ln404_1_fu_2451_p1 = sub1742_1_reg_3686_pp0_iter5_reg;
assign bitcast_ln404_fu_2228_p1 = sub23_reg_3666_pp0_iter5_reg;
assign bitcast_ln405_1_fu_2474_p1 = sub1821_1_reg_3739;
assign bitcast_ln405_fu_2314_p1 = reg_1204;
assign c0_x_61_fu_1319_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_17_q0 : DATA_x_1_q0);
assign c0_x_62_fu_1327_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_18_q0 : DATA_x_2_q0);
assign c0_x_63_fu_1335_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_19_q0 : DATA_x_3_q0);
assign c0_x_67_fu_1375_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_24_q0 : DATA_x_8_q0);
assign c0_x_68_fu_1383_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_25_q0 : DATA_x_9_q0);
assign c0_x_69_fu_1391_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_26_q0 : DATA_x_10_q0);
assign c0_x_70_fu_1399_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_27_q0 : DATA_x_11_q0);
assign c0_x_fu_1311_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_16_q0 : DATA_x_q0);
assign grp_fu_1092_p_ce = 1'b1;
assign grp_fu_1092_p_din0 = grp_fu_1080_p0;
assign grp_fu_1092_p_din1 = grp_fu_1080_p1;
assign grp_fu_1092_p_opcode = grp_fu_1080_opcode;
assign grp_fu_1096_p_ce = 1'b1;
assign grp_fu_1096_p_din0 = grp_fu_1084_p0;
assign grp_fu_1096_p_din1 = grp_fu_1084_p1;
assign grp_fu_1096_p_opcode = grp_fu_1084_opcode;
assign grp_fu_1100_p_ce = 1'b1;
assign grp_fu_1100_p_din0 = grp_fu_1088_p0;
assign grp_fu_1100_p_din1 = grp_fu_1088_p1;
assign grp_fu_1100_p_opcode = grp_fu_1088_opcode;
assign grp_fu_1104_p_ce = 1'b1;
assign grp_fu_1104_p_din0 = grp_fu_1092_p0;
assign grp_fu_1104_p_din1 = grp_fu_1092_p1;
assign grp_fu_1104_p_opcode = grp_fu_1092_opcode;
assign grp_fu_1108_p_ce = 1'b1;
assign grp_fu_1108_p_din0 = grp_fu_1096_p0;
assign grp_fu_1108_p_din1 = grp_fu_1096_p1;
assign grp_fu_1108_p_opcode = grp_fu_1096_opcode;
assign grp_fu_1112_p_ce = 1'b1;
assign grp_fu_1112_p_din0 = grp_fu_1100_p0;
assign grp_fu_1112_p_din1 = grp_fu_1100_p1;
assign grp_fu_1112_p_opcode = grp_fu_1100_opcode;
assign grp_fu_1116_p_ce = 1'b1;
assign grp_fu_1116_p_din0 = grp_fu_1104_p0;
assign grp_fu_1116_p_din1 = grp_fu_1104_p1;
assign grp_fu_1116_p_opcode = grp_fu_1104_opcode;
assign grp_fu_1120_p_ce = 1'b1;
assign grp_fu_1120_p_din0 = grp_fu_1108_p0;
assign grp_fu_1120_p_din1 = grp_fu_1108_p1;
assign grp_fu_1120_p_opcode = grp_fu_1108_opcode;
assign grp_fu_1124_p_ce = 1'b1;
assign grp_fu_1124_p_din0 = grp_fu_1112_p0;
assign grp_fu_1124_p_din1 = grp_fu_1112_p1;
assign grp_fu_1124_p_opcode = grp_fu_1112_opcode;
assign grp_fu_1128_p_ce = 1'b1;
assign grp_fu_1128_p_din0 = grp_fu_1116_p0;
assign grp_fu_1128_p_din1 = grp_fu_1116_p1;
assign grp_fu_1128_p_opcode = grp_fu_1116_opcode;
assign grp_fu_1132_p_ce = 1'b1;
assign grp_fu_1132_p_din0 = grp_fu_1120_p0;
assign grp_fu_1132_p_din1 = grp_fu_1120_p1;
assign grp_fu_1132_p_opcode = grp_fu_1120_opcode;
assign grp_fu_1136_p_ce = 1'b1;
assign grp_fu_1136_p_din0 = grp_fu_1124_p0;
assign grp_fu_1136_p_din1 = grp_fu_1124_p1;
assign grp_fu_1136_p_opcode = grp_fu_1124_opcode;
assign grp_fu_1140_p_ce = 1'b1;
assign grp_fu_1140_p_din0 = grp_fu_1128_p0;
assign grp_fu_1140_p_din1 = grp_fu_1128_p1;
assign grp_fu_1140_p_opcode = grp_fu_1128_opcode;
assign grp_fu_1144_p_ce = 1'b1;
assign grp_fu_1144_p_din0 = grp_fu_1132_p0;
assign grp_fu_1144_p_din1 = grp_fu_1132_p1;
assign grp_fu_1144_p_opcode = grp_fu_1132_opcode;
assign grp_fu_1148_p_ce = 1'b1;
assign grp_fu_1148_p_din0 = grp_fu_1136_p0;
assign grp_fu_1148_p_din1 = grp_fu_1136_p1;
assign grp_fu_1148_p_opcode = grp_fu_1136_opcode;
assign grp_fu_1152_p_ce = 1'b1;
assign grp_fu_1152_p_din0 = grp_fu_1152_p0;
assign grp_fu_1152_p_din1 = grp_fu_1152_p1;
assign grp_fu_1156_p_ce = 1'b1;
assign grp_fu_1156_p_din0 = grp_fu_1157_p0;
assign grp_fu_1156_p_din1 = grp_fu_1157_p1;
assign grp_fu_1160_p_ce = 1'b1;
assign grp_fu_1160_p_din0 = grp_fu_1162_p0;
assign grp_fu_1160_p_din1 = grp_fu_1162_p1;
assign grp_fu_1189_p_ce = 1'b1;
assign grp_fu_1189_p_din0 = grp_fu_1140_p0;
assign grp_fu_1189_p_din1 = grp_fu_1140_p1;
assign grp_fu_1189_p_opcode = grp_fu_1140_opcode;
assign grp_fu_1193_p_ce = 1'b1;
assign grp_fu_1193_p_din0 = grp_fu_1144_p0;
assign grp_fu_1193_p_din1 = grp_fu_1144_p1;
assign grp_fu_1193_p_opcode = grp_fu_1144_opcode;
assign grp_fu_1197_p_ce = 1'b1;
assign grp_fu_1197_p_din0 = grp_fu_1148_p0;
assign grp_fu_1197_p_din1 = grp_fu_1148_p1;
assign grp_fu_1197_p_opcode = grp_fu_1148_opcode;
assign grp_fu_1201_p_ce = 1'b1;
assign grp_fu_1201_p_din0 = grp_fu_1167_p0;
assign grp_fu_1201_p_din1 = grp_fu_1167_p1;
assign icmp_ln376_fu_1305_p2 = ((trunc_ln365_fu_1302_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln367_1_fu_1272_p4 = {{ap_sig_allocacmp_tid_5[5:1]}};
assign lshr_ln_fu_1226_p4 = {{ap_sig_allocacmp_tid_5[5:2]}};
assign or_ln_fu_2319_p3 = {{lshr_ln367_1_reg_2502_pp0_iter5_reg}, {1'd1}};
assign select_ln380_1_fu_1407_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_28_q0 : DATA_x_12_q0);
assign select_ln380_fu_1343_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_20_q0 : DATA_x_4_q0);
assign select_ln381_1_fu_1415_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_29_q0 : DATA_x_13_q0);
assign select_ln381_fu_1351_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_21_q0 : DATA_x_5_q0);
assign select_ln382_1_fu_1423_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_30_q0 : DATA_x_14_q0);
assign select_ln382_fu_1359_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_22_q0 : DATA_x_6_q0);
assign select_ln383_1_fu_1431_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_31_q0 : DATA_x_15_q0);
assign select_ln383_fu_1367_p3 = ((icmp_ln376_fu_1305_p2[0:0] == 1'b1) ? DATA_x_23_q0 : DATA_x_7_q0);
assign sext_ln392_fu_2198_p1 = zext_ln390_cast_reg_3703;
assign sext_ln395_1_fu_2438_p1 = zext_ln391_1_cast_reg_3755;
assign sext_ln395_fu_2211_p1 = zext_ln391_cast_reg_3719;
assign sext_ln396_1_fu_2460_p1 = $signed(add_ln396_fu_2455_p2);
assign sext_ln396_fu_2296_p1 = zext_ln390_cast_reg_3703;
assign tmp_s_fu_2340_p4 = {{tid_5_reg_2485_pp0_iter5_reg[6:1]}};
assign trunc_ln365_fu_1302_p1 = tid_5_reg_2485[1:0];
assign trunc_ln386_10_fu_1596_p1 = bitcast_ln386_20_fu_1579_p1[62:0];
assign trunc_ln386_11_fu_1630_p1 = bitcast_ln386_22_fu_1613_p1[62:0];
assign trunc_ln386_12_fu_1814_p1 = bitcast_ln386_24_fu_1797_p1[62:0];
assign trunc_ln386_13_fu_1848_p1 = bitcast_ln386_26_fu_1831_p1[62:0];
assign trunc_ln386_14_fu_1665_p1 = bitcast_ln386_28_fu_1647_p1[62:0];
assign trunc_ln386_15_fu_1701_p1 = bitcast_ln386_30_fu_1683_p1[62:0];
assign trunc_ln386_16_fu_1950_p1 = bitcast_ln386_32_fu_1933_p1[62:0];
assign trunc_ln386_17_fu_1984_p1 = bitcast_ln386_34_fu_1967_p1[62:0];
assign trunc_ln386_18_fu_2088_p1 = bitcast_ln386_36_fu_2071_p1[62:0];
assign trunc_ln386_19_fu_2122_p1 = bitcast_ln386_38_fu_2105_p1[62:0];
assign trunc_ln386_1_fu_1490_p1 = bitcast_ln386_2_fu_1473_p1[62:0];
assign trunc_ln386_2_fu_1746_p1 = bitcast_ln386_4_fu_1729_p1[62:0];
assign trunc_ln386_3_fu_1780_p1 = bitcast_ln386_6_fu_1763_p1[62:0];
assign trunc_ln386_4_fu_1525_p1 = bitcast_ln386_8_fu_1507_p1[62:0];
assign trunc_ln386_5_fu_1561_p1 = bitcast_ln386_10_fu_1543_p1[62:0];
assign trunc_ln386_6_fu_1882_p1 = bitcast_ln386_12_fu_1865_p1[62:0];
assign trunc_ln386_7_fu_1916_p1 = bitcast_ln386_14_fu_1899_p1[62:0];
assign trunc_ln386_8_fu_2019_p1 = bitcast_ln386_16_fu_2001_p1[62:0];
assign trunc_ln386_9_fu_2054_p1 = bitcast_ln386_18_fu_2036_p1[62:0];
assign trunc_ln386_fu_1456_p1 = bitcast_ln386_fu_1439_p1[62:0];
assign trunc_ln390_fu_2139_p1 = tid_5_reg_2485_pp0_iter4_reg[5:0];
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
assign xor_ln386_10_fu_1634_p3 = {{xor_ln386_29_fu_1624_p2}, {trunc_ln386_11_fu_1630_p1}};
assign xor_ln386_11_fu_1818_p3 = {{xor_ln386_30_fu_1808_p2}, {trunc_ln386_12_fu_1814_p1}};
assign xor_ln386_12_fu_1852_p3 = {{xor_ln386_31_fu_1842_p2}, {trunc_ln386_13_fu_1848_p1}};
assign xor_ln386_13_fu_1669_p3 = {{xor_ln386_32_fu_1659_p2}, {trunc_ln386_14_fu_1665_p1}};
assign xor_ln386_14_fu_1705_p3 = {{xor_ln386_33_fu_1695_p2}, {trunc_ln386_15_fu_1701_p1}};
assign xor_ln386_15_fu_1954_p3 = {{xor_ln386_34_fu_1944_p2}, {trunc_ln386_16_fu_1950_p1}};
assign xor_ln386_16_fu_1988_p3 = {{xor_ln386_35_fu_1978_p2}, {trunc_ln386_17_fu_1984_p1}};
assign xor_ln386_17_fu_2092_p3 = {{xor_ln386_36_fu_2082_p2}, {trunc_ln386_18_fu_2088_p1}};
assign xor_ln386_18_fu_2126_p3 = {{xor_ln386_37_fu_2116_p2}, {trunc_ln386_19_fu_2122_p1}};
assign xor_ln386_19_fu_1450_p2 = (bit_sel_fu_1442_p3 ^ 1'd1);
assign xor_ln386_1_fu_1494_p3 = {{xor_ln386_fu_1484_p2}, {trunc_ln386_1_fu_1490_p1}};
assign xor_ln386_20_fu_1740_p2 = (bit_sel41_fu_1732_p3 ^ 1'd1);
assign xor_ln386_21_fu_1774_p2 = (bit_sel42_fu_1766_p3 ^ 1'd1);
assign xor_ln386_22_fu_1519_p2 = (bit_sel43_fu_1511_p3 ^ 1'd1);
assign xor_ln386_23_fu_1555_p2 = (bit_sel44_fu_1547_p3 ^ 1'd1);
assign xor_ln386_24_fu_1876_p2 = (bit_sel45_fu_1868_p3 ^ 1'd1);
assign xor_ln386_25_fu_1910_p2 = (bit_sel46_fu_1902_p3 ^ 1'd1);
assign xor_ln386_26_fu_2013_p2 = (bit_sel47_fu_2005_p3 ^ 1'd1);
assign xor_ln386_27_fu_2048_p2 = (bit_sel48_fu_2040_p3 ^ 1'd1);
assign xor_ln386_28_fu_1590_p2 = (bit_sel49_fu_1582_p3 ^ 1'd1);
assign xor_ln386_29_fu_1624_p2 = (bit_sel50_fu_1616_p3 ^ 1'd1);
assign xor_ln386_2_fu_1750_p3 = {{xor_ln386_20_fu_1740_p2}, {trunc_ln386_2_fu_1746_p1}};
assign xor_ln386_30_fu_1808_p2 = (bit_sel51_fu_1800_p3 ^ 1'd1);
assign xor_ln386_31_fu_1842_p2 = (bit_sel52_fu_1834_p3 ^ 1'd1);
assign xor_ln386_32_fu_1659_p2 = (bit_sel53_fu_1651_p3 ^ 1'd1);
assign xor_ln386_33_fu_1695_p2 = (bit_sel54_fu_1687_p3 ^ 1'd1);
assign xor_ln386_34_fu_1944_p2 = (bit_sel55_fu_1936_p3 ^ 1'd1);
assign xor_ln386_35_fu_1978_p2 = (bit_sel56_fu_1970_p3 ^ 1'd1);
assign xor_ln386_36_fu_2082_p2 = (bit_sel57_fu_2074_p3 ^ 1'd1);
assign xor_ln386_37_fu_2116_p2 = (bit_sel58_fu_2108_p3 ^ 1'd1);
assign xor_ln386_3_fu_1784_p3 = {{xor_ln386_21_fu_1774_p2}, {trunc_ln386_3_fu_1780_p1}};
assign xor_ln386_4_fu_1529_p3 = {{xor_ln386_22_fu_1519_p2}, {trunc_ln386_4_fu_1525_p1}};
assign xor_ln386_5_fu_1565_p3 = {{xor_ln386_23_fu_1555_p2}, {trunc_ln386_5_fu_1561_p1}};
assign xor_ln386_6_fu_1886_p3 = {{xor_ln386_24_fu_1876_p2}, {trunc_ln386_6_fu_1882_p1}};
assign xor_ln386_7_fu_1920_p3 = {{xor_ln386_25_fu_1910_p2}, {trunc_ln386_7_fu_1916_p1}};
assign xor_ln386_8_fu_2023_p3 = {{xor_ln386_26_fu_2013_p2}, {trunc_ln386_8_fu_2019_p1}};
assign xor_ln386_9_fu_2058_p3 = {{xor_ln386_27_fu_2048_p2}, {trunc_ln386_9_fu_2054_p1}};
assign xor_ln386_fu_1484_p2 = (bit_sel40_fu_1476_p3 ^ 1'd1);
assign xor_ln386_s_fu_1600_p3 = {{xor_ln386_28_fu_1590_p2}, {trunc_ln386_10_fu_1596_p1}};
assign xor_ln3_fu_1460_p3 = {{xor_ln386_19_fu_1450_p2}, {trunc_ln386_fu_1456_p1}};
assign zext_ln365_1_fu_2277_p1 = tid_5_reg_2485_pp0_iter5_reg;
assign zext_ln365_2_fu_2232_p1 = tid_5_reg_2485_pp0_iter5_reg;
assign zext_ln365_fu_2164_p1 = tid_5_reg_2485_pp0_iter4_reg;
assign zext_ln367_1_fu_1282_p1 = lshr_ln367_1_fu_1272_p4;
assign zext_ln367_2_fu_2326_p1 = or_ln_fu_2319_p3;
assign zext_ln367_fu_1236_p1 = lshr_ln_fu_1226_p4;
assign zext_ln390_1_fu_2263_p1 = add_ln390_fu_2257_p2;
assign zext_ln390_cast_fu_2142_p3 = {{1'd1}, {trunc_ln390_fu_2139_p1}};
assign zext_ln390_fu_2150_p1 = $unsigned(zext_ln390_cast_fu_2142_p3);
assign zext_ln391_1_cast_fu_2349_p4 = {{{{1'd1}, {tmp_s_fu_2340_p4}}}, {1'd1}};
assign zext_ln391_1_fu_2359_p1 = $unsigned(zext_ln391_1_cast_fu_2349_p4);
assign zext_ln391_cast_fu_2173_p3 = {{1'd1}, {tid_5_reg_2485_pp0_iter4_reg}};
assign zext_ln391_fu_2180_p1 = $unsigned(zext_ln391_cast_fu_2173_p3);
assign zext_ln392_1_fu_2378_p1 = add_ln392_fu_2373_p2;
assign zext_ln392_fu_2201_p1 = $unsigned(sext_ln392_fu_2198_p1);
assign zext_ln393_1_cast_fu_2395_p4 = {{{{1'd1}, {zext_ln393_1_fu_2392_p1}}}, {1'd1}};
assign zext_ln393_1_fu_2392_p1 = tmp_s_reg_3750;
assign zext_ln393_2_fu_2405_p1 = zext_ln393_1_cast_fu_2395_p4;
assign zext_ln393_cast_fu_2235_p3 = {{1'd1}, {zext_ln365_2_fu_2232_p1}};
assign zext_ln393_fu_2243_p1 = zext_ln393_cast_fu_2235_p3;
assign zext_ln394_1_fu_2424_p1 = add_ln394_1_fu_2419_p2;
assign zext_ln394_fu_2286_p1 = add_ln394_fu_2280_p2;
assign zext_ln395_1_fu_2441_p1 = $unsigned(sext_ln395_1_fu_2438_p1);
assign zext_ln395_fu_2214_p1 = $unsigned(sext_ln395_fu_2211_p1);
assign zext_ln396_1_fu_2464_p1 = $unsigned(sext_ln396_1_fu_2460_p1);
assign zext_ln396_fu_2299_p1 = $unsigned(sext_ln396_fu_2296_p1);
always @ (posedge ap_clk) begin
    zext_ln390_cast_reg_3703[6] <= 1'b1;
    zext_ln391_cast_reg_3719[7] <= 1'b1;
    zext_ln365_1_reg_3744[8:7] <= 2'b00;
    zext_ln391_1_cast_reg_3755[0] <= 1'b1;
    zext_ln391_1_cast_reg_3755[7] <= 1'b1;
end
endmodule 