
module fft1D_512_fft1D_512_Pipeline_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_we0,DATA_y_8_d0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_we0,DATA_y_9_d0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_we0,DATA_y_10_d0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_we0,DATA_y_11_d0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_we0,DATA_y_12_d0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_we0,DATA_y_13_d0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_we0,DATA_y_14_d0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_we0,DATA_y_15_d0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_x_31_address0,DATA_x_31_ce0,DATA_x_31_we0,DATA_x_31_d0,DATA_x_30_address0,DATA_x_30_ce0,DATA_x_30_we0,DATA_x_30_d0,DATA_x_29_address0,DATA_x_29_ce0,DATA_x_29_we0,DATA_x_29_d0,DATA_x_28_address0,DATA_x_28_ce0,DATA_x_28_we0,DATA_x_28_d0,DATA_x_27_address0,DATA_x_27_ce0,DATA_x_27_we0,DATA_x_27_d0,DATA_x_26_address0,DATA_x_26_ce0,DATA_x_26_we0,DATA_x_26_d0,DATA_x_25_address0,DATA_x_25_ce0,DATA_x_25_we0,DATA_x_25_d0,DATA_x_24_address0,DATA_x_24_ce0,DATA_x_24_we0,DATA_x_24_d0,DATA_x_23_address0,DATA_x_23_ce0,DATA_x_23_we0,DATA_x_23_d0,DATA_x_22_address0,DATA_x_22_ce0,DATA_x_22_we0,DATA_x_22_d0,DATA_x_21_address0,DATA_x_21_ce0,DATA_x_21_we0,DATA_x_21_d0,DATA_x_20_address0,DATA_x_20_ce0,DATA_x_20_we0,DATA_x_20_d0,DATA_x_19_address0,DATA_x_19_ce0,DATA_x_19_we0,DATA_x_19_d0,DATA_x_18_address0,DATA_x_18_ce0,DATA_x_18_we0,DATA_x_18_d0,DATA_x_17_address0,DATA_x_17_ce0,DATA_x_17_we0,DATA_x_17_d0,DATA_x_16_address0,DATA_x_16_ce0,DATA_x_16_we0,DATA_x_16_d0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_we0,DATA_x_15_d0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_we0,DATA_x_14_d0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_we0,DATA_x_13_d0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_we0,DATA_x_12_d0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_we0,DATA_x_11_d0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_we0,DATA_x_10_d0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_we0,DATA_x_9_d0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_we0,DATA_x_8_d0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,work_x_address0,work_x_ce0,work_x_q0,work_x_address1,work_x_ce1,work_x_q1,work_y_address0,work_y_ce0,work_y_q0,work_y_address1,work_y_ce1,work_y_q1,grp_fu_1092_p_din0,grp_fu_1092_p_din1,grp_fu_1092_p_opcode,grp_fu_1092_p_dout0,grp_fu_1092_p_ce,grp_fu_1096_p_din0,grp_fu_1096_p_din1,grp_fu_1096_p_opcode,grp_fu_1096_p_dout0,grp_fu_1096_p_ce,grp_fu_1100_p_din0,grp_fu_1100_p_din1,grp_fu_1100_p_opcode,grp_fu_1100_p_dout0,grp_fu_1100_p_ce,grp_fu_1104_p_din0,grp_fu_1104_p_din1,grp_fu_1104_p_opcode,grp_fu_1104_p_dout0,grp_fu_1104_p_ce,grp_fu_1108_p_din0,grp_fu_1108_p_din1,grp_fu_1108_p_opcode,grp_fu_1108_p_dout0,grp_fu_1108_p_ce,grp_fu_1112_p_din0,grp_fu_1112_p_din1,grp_fu_1112_p_opcode,grp_fu_1112_p_dout0,grp_fu_1112_p_ce,grp_fu_1116_p_din0,grp_fu_1116_p_din1,grp_fu_1116_p_opcode,grp_fu_1116_p_dout0,grp_fu_1116_p_ce,grp_fu_1120_p_din0,grp_fu_1120_p_din1,grp_fu_1120_p_opcode,grp_fu_1120_p_dout0,grp_fu_1120_p_ce,grp_fu_1124_p_din0,grp_fu_1124_p_din1,grp_fu_1124_p_opcode,grp_fu_1124_p_dout0,grp_fu_1124_p_ce,grp_fu_1128_p_din0,grp_fu_1128_p_din1,grp_fu_1128_p_opcode,grp_fu_1128_p_dout0,grp_fu_1128_p_ce,grp_fu_1132_p_din0,grp_fu_1132_p_din1,grp_fu_1132_p_opcode,grp_fu_1132_p_dout0,grp_fu_1132_p_ce,grp_fu_1136_p_din0,grp_fu_1136_p_din1,grp_fu_1136_p_opcode,grp_fu_1136_p_dout0,grp_fu_1136_p_ce,grp_fu_1140_p_din0,grp_fu_1140_p_din1,grp_fu_1140_p_opcode,grp_fu_1140_p_dout0,grp_fu_1140_p_ce,grp_fu_1144_p_din0,grp_fu_1144_p_din1,grp_fu_1144_p_opcode,grp_fu_1144_p_dout0,grp_fu_1144_p_ce,grp_fu_1148_p_din0,grp_fu_1148_p_din1,grp_fu_1148_p_opcode,grp_fu_1148_p_dout0,grp_fu_1148_p_ce,grp_fu_1152_p_din0,grp_fu_1152_p_din1,grp_fu_1152_p_dout0,grp_fu_1152_p_ce,grp_fu_1156_p_din0,grp_fu_1156_p_din1,grp_fu_1156_p_dout0,grp_fu_1156_p_ce,grp_fu_1160_p_din0,grp_fu_1160_p_din1,grp_fu_1160_p_dout0,grp_fu_1160_p_ce,grp_twiddles8_fu_1164_p_din1,grp_twiddles8_fu_1164_p_din2,grp_twiddles8_fu_1164_p_din3,grp_twiddles8_fu_1164_p_din4,grp_twiddles8_fu_1164_p_din5,grp_twiddles8_fu_1164_p_din6,grp_twiddles8_fu_1164_p_din7,grp_twiddles8_fu_1164_p_din8,grp_twiddles8_fu_1164_p_din9,grp_twiddles8_fu_1164_p_din10,grp_twiddles8_fu_1164_p_din11,grp_twiddles8_fu_1164_p_din12,grp_twiddles8_fu_1164_p_din13,grp_twiddles8_fu_1164_p_din14,grp_twiddles8_fu_1164_p_din15,grp_twiddles8_fu_1164_p_din16,grp_twiddles8_fu_1164_p_dout0_0,grp_twiddles8_fu_1164_p_dout0_1,grp_twiddles8_fu_1164_p_dout0_2,grp_twiddles8_fu_1164_p_dout0_3,grp_twiddles8_fu_1164_p_dout0_4,grp_twiddles8_fu_1164_p_dout0_5,grp_twiddles8_fu_1164_p_dout0_6,grp_twiddles8_fu_1164_p_dout0_7,grp_twiddles8_fu_1164_p_dout0_8,grp_twiddles8_fu_1164_p_dout0_9,grp_twiddles8_fu_1164_p_dout0_10,grp_twiddles8_fu_1164_p_dout0_11,grp_twiddles8_fu_1164_p_dout0_12,grp_twiddles8_fu_1164_p_dout0_13,grp_twiddles8_fu_1164_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
output   DATA_y_8_we0;
output  [63:0] DATA_y_8_d0;
output  [4:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
output   DATA_y_9_we0;
output  [63:0] DATA_y_9_d0;
output  [4:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
output   DATA_y_10_we0;
output  [63:0] DATA_y_10_d0;
output  [4:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
output   DATA_y_11_we0;
output  [63:0] DATA_y_11_d0;
output  [4:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
output   DATA_y_12_we0;
output  [63:0] DATA_y_12_d0;
output  [4:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
output   DATA_y_13_we0;
output  [63:0] DATA_y_13_d0;
output  [4:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
output   DATA_y_14_we0;
output  [63:0] DATA_y_14_d0;
output  [4:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
output   DATA_y_15_we0;
output  [63:0] DATA_y_15_d0;
output  [4:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
output   DATA_y_7_we0;
output  [63:0] DATA_y_7_d0;
output  [4:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
output   DATA_y_6_we0;
output  [63:0] DATA_y_6_d0;
output  [4:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
output   DATA_y_5_we0;
output  [63:0] DATA_y_5_d0;
output  [4:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
output   DATA_y_4_we0;
output  [63:0] DATA_y_4_d0;
output  [4:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [4:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [4:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [4:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [3:0] DATA_x_31_address0;
output   DATA_x_31_ce0;
output   DATA_x_31_we0;
output  [63:0] DATA_x_31_d0;
output  [3:0] DATA_x_30_address0;
output   DATA_x_30_ce0;
output   DATA_x_30_we0;
output  [63:0] DATA_x_30_d0;
output  [3:0] DATA_x_29_address0;
output   DATA_x_29_ce0;
output   DATA_x_29_we0;
output  [63:0] DATA_x_29_d0;
output  [3:0] DATA_x_28_address0;
output   DATA_x_28_ce0;
output   DATA_x_28_we0;
output  [63:0] DATA_x_28_d0;
output  [3:0] DATA_x_27_address0;
output   DATA_x_27_ce0;
output   DATA_x_27_we0;
output  [63:0] DATA_x_27_d0;
output  [3:0] DATA_x_26_address0;
output   DATA_x_26_ce0;
output   DATA_x_26_we0;
output  [63:0] DATA_x_26_d0;
output  [3:0] DATA_x_25_address0;
output   DATA_x_25_ce0;
output   DATA_x_25_we0;
output  [63:0] DATA_x_25_d0;
output  [3:0] DATA_x_24_address0;
output   DATA_x_24_ce0;
output   DATA_x_24_we0;
output  [63:0] DATA_x_24_d0;
output  [3:0] DATA_x_23_address0;
output   DATA_x_23_ce0;
output   DATA_x_23_we0;
output  [63:0] DATA_x_23_d0;
output  [3:0] DATA_x_22_address0;
output   DATA_x_22_ce0;
output   DATA_x_22_we0;
output  [63:0] DATA_x_22_d0;
output  [3:0] DATA_x_21_address0;
output   DATA_x_21_ce0;
output   DATA_x_21_we0;
output  [63:0] DATA_x_21_d0;
output  [3:0] DATA_x_20_address0;
output   DATA_x_20_ce0;
output   DATA_x_20_we0;
output  [63:0] DATA_x_20_d0;
output  [3:0] DATA_x_19_address0;
output   DATA_x_19_ce0;
output   DATA_x_19_we0;
output  [63:0] DATA_x_19_d0;
output  [3:0] DATA_x_18_address0;
output   DATA_x_18_ce0;
output   DATA_x_18_we0;
output  [63:0] DATA_x_18_d0;
output  [3:0] DATA_x_17_address0;
output   DATA_x_17_ce0;
output   DATA_x_17_we0;
output  [63:0] DATA_x_17_d0;
output  [3:0] DATA_x_16_address0;
output   DATA_x_16_ce0;
output   DATA_x_16_we0;
output  [63:0] DATA_x_16_d0;
output  [3:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
output   DATA_x_15_we0;
output  [63:0] DATA_x_15_d0;
output  [3:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
output   DATA_x_14_we0;
output  [63:0] DATA_x_14_d0;
output  [3:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
output   DATA_x_13_we0;
output  [63:0] DATA_x_13_d0;
output  [3:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
output   DATA_x_12_we0;
output  [63:0] DATA_x_12_d0;
output  [3:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
output   DATA_x_11_we0;
output  [63:0] DATA_x_11_d0;
output  [3:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
output   DATA_x_10_we0;
output  [63:0] DATA_x_10_d0;
output  [3:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
output   DATA_x_9_we0;
output  [63:0] DATA_x_9_d0;
output  [3:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
output   DATA_x_8_we0;
output  [63:0] DATA_x_8_d0;
output  [3:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [3:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [3:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [3:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [3:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [3:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [3:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [3:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [8:0] work_x_address0;
output   work_x_ce0;
input  [63:0] work_x_q0;
output  [8:0] work_x_address1;
output   work_x_ce1;
input  [63:0] work_x_q1;
output  [8:0] work_y_address0;
output   work_y_ce0;
input  [63:0] work_y_q0;
output  [8:0] work_y_address1;
output   work_y_ce1;
input  [63:0] work_y_q1;
output  [63:0] grp_fu_1092_p_din0;
output  [63:0] grp_fu_1092_p_din1;
output  [0:0] grp_fu_1092_p_opcode;
input  [63:0] grp_fu_1092_p_dout0;
output   grp_fu_1092_p_ce;
output  [63:0] grp_fu_1096_p_din0;
output  [63:0] grp_fu_1096_p_din1;
output  [0:0] grp_fu_1096_p_opcode;
input  [63:0] grp_fu_1096_p_dout0;
output   grp_fu_1096_p_ce;
output  [63:0] grp_fu_1100_p_din0;
output  [63:0] grp_fu_1100_p_din1;
output  [1:0] grp_fu_1100_p_opcode;
input  [63:0] grp_fu_1100_p_dout0;
output   grp_fu_1100_p_ce;
output  [63:0] grp_fu_1104_p_din0;
output  [63:0] grp_fu_1104_p_din1;
output  [0:0] grp_fu_1104_p_opcode;
input  [63:0] grp_fu_1104_p_dout0;
output   grp_fu_1104_p_ce;
output  [63:0] grp_fu_1108_p_din0;
output  [63:0] grp_fu_1108_p_din1;
output  [1:0] grp_fu_1108_p_opcode;
input  [63:0] grp_fu_1108_p_dout0;
output   grp_fu_1108_p_ce;
output  [63:0] grp_fu_1112_p_din0;
output  [63:0] grp_fu_1112_p_din1;
output  [0:0] grp_fu_1112_p_opcode;
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
output  [63:0] grp_twiddles8_fu_1164_p_din1;
output  [63:0] grp_twiddles8_fu_1164_p_din2;
output  [63:0] grp_twiddles8_fu_1164_p_din3;
output  [63:0] grp_twiddles8_fu_1164_p_din4;
output  [63:0] grp_twiddles8_fu_1164_p_din5;
output  [63:0] grp_twiddles8_fu_1164_p_din6;
output  [63:0] grp_twiddles8_fu_1164_p_din7;
output  [63:0] grp_twiddles8_fu_1164_p_din8;
output  [63:0] grp_twiddles8_fu_1164_p_din9;
output  [63:0] grp_twiddles8_fu_1164_p_din10;
output  [63:0] grp_twiddles8_fu_1164_p_din11;
output  [63:0] grp_twiddles8_fu_1164_p_din12;
output  [63:0] grp_twiddles8_fu_1164_p_din13;
output  [63:0] grp_twiddles8_fu_1164_p_din14;
output  [5:0] grp_twiddles8_fu_1164_p_din15;
output  [9:0] grp_twiddles8_fu_1164_p_din16;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_0;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_1;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_2;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_3;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_4;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_5;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_6;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_7;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_8;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_9;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_10;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_11;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_12;
input  [63:0] grp_twiddles8_fu_1164_p_dout0_13;
output   grp_twiddles8_fu_1164_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_31_reg_2566;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1249;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1253;
reg   [63:0] reg_1257;
reg   [63:0] reg_1261;
reg   [63:0] reg_1265;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_1269;
reg   [63:0] reg_1273;
reg   [63:0] reg_1277;
reg   [63:0] reg_1281;
reg   [63:0] reg_1285;
reg   [63:0] reg_1289;
reg   [63:0] reg_1297;
reg   [63:0] reg_1305;
reg   [63:0] reg_1313;
reg   [63:0] reg_1321;
reg   [63:0] reg_1329;
reg   [63:0] reg_1337;
reg   [63:0] reg_1345;
reg   [63:0] reg_1351;
reg   [63:0] reg_1357;
reg   [63:0] reg_1363;
reg   [63:0] reg_1369;
reg   [63:0] reg_1375;
reg   [63:0] reg_1381;
reg   [6:0] tid_7_reg_2553;
wire   [0:0] tmp_31_fu_1395_p3;
reg   [0:0] tmp_31_reg_2566_pp0_iter1_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter2_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter3_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter4_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter5_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter6_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter7_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter8_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter9_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter10_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter11_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter12_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter13_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter14_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter15_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter16_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter17_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter18_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter19_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter20_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter21_reg;
reg   [0:0] tmp_31_reg_2566_pp0_iter22_reg;
wire   [5:0] trunc_ln127_1_fu_1407_p1;
reg   [5:0] trunc_ln127_1_reg_2570;
reg   [5:0] trunc_ln127_1_reg_2570_pp0_iter1_reg;
reg   [5:0] trunc_ln127_1_reg_2570_pp0_iter2_reg;
reg   [5:0] trunc_ln127_1_reg_2570_pp0_iter3_reg;
reg   [5:0] trunc_ln127_1_reg_2570_pp0_iter4_reg;
reg   [5:0] trunc_ln127_1_reg_2570_pp0_iter5_reg;
reg   [5:0] trunc_ln127_1_reg_2570_pp0_iter6_reg;
reg   [5:0] trunc_ln127_1_reg_2570_pp0_iter7_reg;
reg   [5:0] trunc_ln127_1_reg_2570_pp0_iter8_reg;
wire  signed [6:0] zext_ln130_cast_fu_1411_p3;
reg  signed [6:0] zext_ln130_cast_reg_2575;
wire   [0:0] icmp_ln154_fu_1435_p2;
reg   [0:0] icmp_ln154_reg_2600;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter1_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter2_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter3_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter4_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter5_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter6_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter7_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter8_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter9_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter10_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter11_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter12_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter13_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter14_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter15_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter16_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter17_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter18_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter19_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter20_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter21_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter22_reg;
reg   [0:0] icmp_ln154_reg_2600_pp0_iter23_reg;
wire   [8:0] zext_ln127_1_fu_1441_p1;
reg   [8:0] zext_ln127_1_reg_2604;
wire   [7:0] zext_ln127_2_fu_1465_p1;
reg   [7:0] zext_ln127_2_reg_2630;
wire   [63:0] c0_x_66_fu_1491_p1;
wire   [63:0] c0_x_68_fu_1497_p1;
wire   [63:0] bitcast_ln134_fu_1503_p1;
wire   [63:0] bitcast_ln136_fu_1509_p1;
wire   [63:0] c0_y_66_fu_1515_p1;
wire   [63:0] c0_y_68_fu_1521_p1;
wire   [63:0] bitcast_ln143_fu_1527_p1;
wire   [63:0] bitcast_ln145_fu_1533_p1;
wire   [63:0] c0_x_70_fu_1588_p1;
wire   [5:0] tmp_s_fu_1594_p4;
reg   [5:0] tmp_s_reg_2749;
wire   [63:0] c0_x_72_fu_1619_p1;
wire   [63:0] bitcast_ln134_1_fu_1625_p1;
wire   [63:0] bitcast_ln136_1_fu_1641_p1;
wire   [63:0] c0_y_70_fu_1647_p1;
wire   [63:0] c0_y_72_fu_1653_p1;
wire   [63:0] bitcast_ln143_1_fu_1659_p1;
wire   [63:0] bitcast_ln145_1_fu_1665_p1;
wire   [63:0] c0_x_67_fu_1676_p1;
wire   [63:0] bitcast_ln135_fu_1695_p1;
wire   [63:0] c0_y_67_fu_1701_p1;
wire   [63:0] bitcast_ln144_fu_1707_p1;
wire   [4:0] lshr_ln_fu_1713_p4;
reg   [4:0] lshr_ln_reg_2860;
reg   [4:0] lshr_ln_reg_2860_pp0_iter1_reg;
reg   [4:0] lshr_ln_reg_2860_pp0_iter2_reg;
reg   [4:0] lshr_ln_reg_2860_pp0_iter3_reg;
reg   [3:0] lshr_ln154_1_reg_2865;
reg   [3:0] lshr_ln154_1_reg_2865_pp0_iter1_reg;
reg   [3:0] lshr_ln154_1_reg_2865_pp0_iter2_reg;
reg   [3:0] lshr_ln154_1_reg_2865_pp0_iter3_reg;
wire   [5:0] or_ln3_fu_1731_p3;
reg   [5:0] or_ln3_reg_2870;
reg   [5:0] or_ln3_reg_2870_pp0_iter1_reg;
reg   [5:0] or_ln3_reg_2870_pp0_iter2_reg;
reg   [5:0] or_ln3_reg_2870_pp0_iter3_reg;
reg   [5:0] or_ln3_reg_2870_pp0_iter4_reg;
reg   [5:0] or_ln3_reg_2870_pp0_iter5_reg;
reg   [5:0] or_ln3_reg_2870_pp0_iter6_reg;
reg   [5:0] or_ln3_reg_2870_pp0_iter7_reg;
wire   [63:0] c0_x_71_fu_1745_p1;
wire   [63:0] bitcast_ln135_1_fu_1770_p1;
wire   [63:0] c0_y_71_fu_1776_p1;
wire   [63:0] bitcast_ln144_1_fu_1782_p1;
wire   [63:0] c0_x_fu_1798_p1;
wire   [63:0] bitcast_ln133_fu_1804_p1;
wire   [63:0] c0_y_fu_1810_p1;
wire   [63:0] bitcast_ln142_fu_1816_p1;
wire   [63:0] c0_x_69_fu_1822_p1;
wire   [63:0] bitcast_ln133_1_fu_1828_p1;
wire   [63:0] c0_y_69_fu_1834_p1;
wire   [63:0] bitcast_ln142_1_fu_1840_p1;
reg   [63:0] c0_x_5_reg_2967;
reg   [63:0] c0_y_5_reg_2973;
reg   [63:0] tmp_1_reg_2979;
reg   [63:0] sub3_reg_2985;
reg   [63:0] add6_reg_2991;
reg   [63:0] add7_reg_2997;
wire   [63:0] bitcast_ln148_1_fu_1875_p1;
wire   [63:0] bitcast_ln148_3_fu_1909_p1;
wire   [63:0] bitcast_ln148_9_fu_1944_p1;
wire   [63:0] bitcast_ln148_11_fu_1980_p1;
reg   [63:0] c0_x_15_reg_3025;
reg   [63:0] c0_y_15_reg_3031;
reg   [63:0] tmp_1_3_reg_3037;
reg   [63:0] sub104_1_reg_3043;
reg   [63:0] add127_1_reg_3049;
reg   [63:0] add130_1_reg_3055;
reg   [63:0] add4_reg_3061;
reg   [63:0] add5_reg_3067;
reg   [63:0] tmp_1_1_reg_3073;
reg   [63:0] tmp_1_1_reg_3073_pp0_iter2_reg;
reg   [63:0] sub5_reg_3079;
reg   [63:0] sub5_reg_3079_pp0_iter2_reg;
wire   [63:0] bitcast_ln148_21_fu_2015_p1;
wire   [63:0] bitcast_ln148_23_fu_2049_p1;
wire   [63:0] bitcast_ln148_29_fu_2084_p1;
wire   [63:0] bitcast_ln148_31_fu_2120_p1;
reg   [63:0] add111_1_reg_3107;
reg   [63:0] add114_1_reg_3113;
reg   [63:0] tmp_1_4_reg_3119;
reg   [63:0] sub120_1_reg_3125;
reg   [63:0] c0_x_4_reg_3131;
reg   [63:0] c0_y_4_reg_3137;
reg   [63:0] c0_x_8_reg_3143;
reg   [63:0] c0_x_8_reg_3143_pp0_iter2_reg;
reg   [63:0] c0_y_8_reg_3149;
reg   [63:0] c0_y_8_reg_3149_pp0_iter2_reg;
reg   [63:0] c0_x_21_reg_3155;
reg   [63:0] c0_y_21_reg_3161;
reg   [63:0] c0_x_13_reg_3167;
reg   [63:0] c0_x_13_reg_3167_pp0_iter3_reg;
reg   [63:0] c0_y_13_reg_3173;
reg   [63:0] c0_y_13_reg_3173_pp0_iter3_reg;
reg   [63:0] sub8_reg_3179;
reg   [63:0] add8_reg_3184;
reg   [63:0] sub1_reg_3189;
reg   [63:0] add1_reg_3194;
reg   [63:0] tmp_reg_3199;
reg   [63:0] tmp_reg_3199_pp0_iter3_reg;
reg   [63:0] sub2_reg_3205;
reg   [63:0] sub2_reg_3205_pp0_iter3_reg;
reg   [63:0] add2_reg_3211;
reg   [63:0] add3_reg_3217;
reg   [63:0] mul6_reg_3223;
reg   [63:0] mul9_reg_3228;
reg   [63:0] sub143_1_reg_3233;
reg   [63:0] add149_1_reg_3238;
reg   [63:0] sub169_1_reg_3243;
reg   [63:0] add175_1_reg_3248;
reg   [63:0] tmp_3_reg_3253;
reg   [63:0] tmp_3_reg_3253_pp0_iter3_reg;
reg   [63:0] sub208_1_reg_3259;
reg   [63:0] sub208_1_reg_3259_pp0_iter3_reg;
reg   [63:0] mul154_1_reg_3265;
reg   [63:0] mul161_1_reg_3270;
reg   [63:0] add199_1_reg_3275;
reg   [63:0] add202_1_reg_3281;
wire   [63:0] bitcast_ln148_5_fu_2155_p1;
wire   [63:0] bitcast_ln148_7_fu_2189_p1;
wire   [63:0] bitcast_ln148_25_fu_2223_p1;
wire   [63:0] bitcast_ln148_27_fu_2257_p1;
reg   [63:0] c0_x_6_reg_3307;
reg   [63:0] c0_y_6_reg_3313;
reg   [63:0] c0_x_7_reg_3319;
reg   [63:0] c0_x_7_reg_3319_pp0_iter3_reg;
reg   [63:0] c0_y_7_reg_3325;
reg   [63:0] c0_y_7_reg_3325_pp0_iter3_reg;
reg   [63:0] c0_x_18_reg_3331;
reg   [63:0] c0_y_18_reg_3337;
reg   [63:0] c0_x_19_reg_3343;
reg   [63:0] c0_x_19_reg_3343_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_3349;
reg   [63:0] c0_y_19_reg_3349_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_3349_pp0_iter5_reg;
reg   [63:0] c0_x_9_reg_3355;
reg   [63:0] c0_y_9_reg_3361;
reg   [63:0] mul3_reg_3367;
reg   [63:0] mul5_reg_3373;
reg   [63:0] mul_reg_3379;
reg   [63:0] mul1_reg_3384;
reg   [63:0] c0_x_20_reg_3389;
reg   [63:0] c0_y_20_reg_3395;
reg   [63:0] mul170_1_reg_3401;
wire   [63:0] bitcast_ln148_13_fu_2291_p1;
wire   [63:0] bitcast_ln148_15_fu_2325_p1;
reg   [63:0] mul176_1_reg_3417;
reg   [63:0] sub9_reg_3423;
reg   [63:0] add9_reg_3429;
reg   [63:0] sub157_1_reg_3435;
reg   [63:0] add162_1_reg_3441;
reg   [63:0] mul212_1_reg_3447;
wire   [63:0] bitcast_ln148_33_fu_2359_p1;
reg   [63:0] mul219_1_reg_3457;
reg   [63:0] data_x_1_reg_3462;
reg   [63:0] data_x_1_reg_3462_pp0_iter4_reg;
reg   [63:0] data_x_1_reg_3462_pp0_iter5_reg;
reg   [63:0] data_x_1_reg_3462_pp0_iter6_reg;
reg   [63:0] data_x_1_reg_3462_pp0_iter7_reg;
reg   [63:0] data_y_1_reg_3467;
reg   [63:0] data_y_1_reg_3467_pp0_iter4_reg;
reg   [63:0] data_y_1_reg_3467_pp0_iter5_reg;
reg   [63:0] data_y_1_reg_3467_pp0_iter6_reg;
reg   [63:0] data_y_1_reg_3467_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_35_fu_2393_p1;
reg   [63:0] data_x_1_2_reg_3477;
reg   [63:0] data_x_1_2_reg_3477_pp0_iter5_reg;
reg   [63:0] data_x_1_2_reg_3477_pp0_iter6_reg;
reg   [63:0] data_x_1_2_reg_3477_pp0_iter7_reg;
reg   [63:0] data_x_1_2_reg_3477_pp0_iter8_reg;
reg   [63:0] data_y_1_2_reg_3482;
reg   [63:0] data_y_1_2_reg_3482_pp0_iter5_reg;
reg   [63:0] data_y_1_2_reg_3482_pp0_iter6_reg;
reg   [63:0] data_y_1_2_reg_3482_pp0_iter7_reg;
reg   [63:0] data_y_1_2_reg_3482_pp0_iter8_reg;
reg   [63:0] data_x_0_reg_3487;
reg   [63:0] data_y_0_reg_3493;
reg   [63:0] add_reg_3498;
reg   [63:0] tmp_2_reg_3504;
reg   [63:0] tmp_2_reg_3504_pp0_iter5_reg;
reg   [63:0] data_x_0_1_reg_3510;
reg   [63:0] data_y_0_1_reg_3516;
reg   [63:0] sub10_reg_3521;
wire   [63:0] zext_ln154_fu_2398_p1;
reg   [63:0] zext_ln154_reg_3527;
reg   [63:0] zext_ln154_reg_3527_pp0_iter5_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter6_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter7_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter8_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter9_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter10_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter11_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter12_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter13_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter14_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter15_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter16_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter17_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter18_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter19_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter20_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter21_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter22_reg;
reg   [63:0] zext_ln154_reg_3527_pp0_iter23_reg;
wire   [63:0] zext_ln154_1_fu_2403_p1;
reg   [63:0] zext_ln154_1_reg_3545;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter5_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter6_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter7_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter8_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter9_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter10_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter11_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter12_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter13_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter14_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter15_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter16_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter17_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter18_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter19_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter20_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter21_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter22_reg;
reg   [63:0] zext_ln154_1_reg_3545_pp0_iter23_reg;
reg   [63:0] sub4_reg_3577;
reg   [63:0] sub6_reg_3583;
reg   [63:0] add10_reg_3589;
reg   [63:0] add278_1_reg_3595;
reg   [63:0] tmp_4_reg_3601;
reg   [63:0] tmp_4_reg_3601_pp0_iter5_reg;
reg   [63:0] sub287_1_reg_3607;
reg   [63:0] sub287_1_reg_3607_pp0_iter5_reg;
reg   [63:0] c0_x_11_reg_3613;
reg   [63:0] c0_y_11_reg_3619;
reg   [63:0] c0_x_10_reg_3625;
reg   [63:0] c0_x_10_reg_3625_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3631;
reg   [63:0] c0_y_10_reg_3631_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3631_pp0_iter6_reg;
reg   [63:0] sub215_1_reg_3637;
reg   [63:0] sub220_1_reg_3643;
reg   [63:0] c0_x_23_reg_3649;
reg   [63:0] c0_y_23_reg_3655;
reg   [63:0] c0_x_22_reg_3661;
reg   [63:0] c0_x_22_reg_3661_pp0_iter5_reg;
reg   [63:0] c0_x_22_reg_3661_pp0_iter6_reg;
reg   [63:0] c0_y_22_reg_3667;
reg   [63:0] c0_y_22_reg_3667_pp0_iter5_reg;
reg   [63:0] c0_y_22_reg_3667_pp0_iter6_reg;
reg   [63:0] add281_1_reg_3673;
reg   [63:0] mul2_reg_3679;
wire   [63:0] bitcast_ln148_17_fu_2439_p1;
reg   [63:0] data_x_2_reg_3689;
reg   [63:0] data_x_2_reg_3689_pp0_iter6_reg;
reg   [63:0] data_x_2_reg_3689_pp0_iter7_reg;
reg   [63:0] data_y_2_reg_3694;
reg   [63:0] data_y_2_reg_3694_pp0_iter6_reg;
reg   [63:0] data_y_2_reg_3694_pp0_iter7_reg;
reg   [63:0] data_x_3_reg_3699;
reg   [63:0] data_x_3_reg_3699_pp0_iter6_reg;
reg   [63:0] data_x_3_reg_3699_pp0_iter7_reg;
reg   [63:0] data_y_3_reg_3704;
reg   [63:0] data_y_3_reg_3704_pp0_iter6_reg;
reg   [63:0] data_y_3_reg_3704_pp0_iter7_reg;
reg   [63:0] mul4_reg_3709;
reg   [63:0] data_x_4_reg_3714;
reg   [63:0] data_x_4_reg_3714_pp0_iter6_reg;
reg   [63:0] data_x_4_reg_3714_pp0_iter7_reg;
reg   [63:0] data_y_4_reg_3719;
reg   [63:0] data_y_4_reg_3719_pp0_iter6_reg;
reg   [63:0] data_y_4_reg_3719_pp0_iter7_reg;
reg   [63:0] data_x_5_reg_3724;
reg   [63:0] data_x_5_reg_3724_pp0_iter6_reg;
reg   [63:0] data_x_5_reg_3724_pp0_iter7_reg;
reg   [63:0] mul291_1_reg_3729;
wire   [63:0] bitcast_ln148_19_fu_2473_p1;
reg   [63:0] data_y_5_reg_3739;
reg   [63:0] data_y_5_reg_3739_pp0_iter6_reg;
reg   [63:0] data_y_5_reg_3739_pp0_iter7_reg;
reg   [63:0] data_x_2_2_reg_3744;
reg   [63:0] data_x_2_2_reg_3744_pp0_iter6_reg;
reg   [63:0] data_x_2_2_reg_3744_pp0_iter7_reg;
reg   [63:0] data_y_2_2_reg_3749;
reg   [63:0] data_y_2_2_reg_3749_pp0_iter6_reg;
reg   [63:0] data_y_2_2_reg_3749_pp0_iter7_reg;
reg   [63:0] data_x_3_2_reg_3754;
reg   [63:0] data_x_3_2_reg_3754_pp0_iter6_reg;
reg   [63:0] data_x_3_2_reg_3754_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_37_fu_2507_p1;
reg   [63:0] mul298_1_reg_3764;
reg   [63:0] sub11_reg_3769;
reg   [63:0] data_y_3_2_reg_3775;
reg   [63:0] data_y_3_2_reg_3775_pp0_iter7_reg;
reg   [63:0] data_y_3_2_reg_3775_pp0_iter8_reg;
wire   [63:0] bitcast_ln148_39_fu_2541_p1;
reg   [63:0] data_x_4_2_reg_3785;
reg   [63:0] data_x_4_2_reg_3785_pp0_iter7_reg;
reg   [63:0] data_x_4_2_reg_3785_pp0_iter8_reg;
reg   [63:0] data_y_4_2_reg_3790;
reg   [63:0] data_y_4_2_reg_3790_pp0_iter7_reg;
reg   [63:0] data_y_4_2_reg_3790_pp0_iter8_reg;
reg   [63:0] data_x_5_2_reg_3795;
reg   [63:0] data_x_5_2_reg_3795_pp0_iter7_reg;
reg   [63:0] data_x_5_2_reg_3795_pp0_iter8_reg;
reg   [63:0] data_y_5_2_reg_3800;
reg   [63:0] data_y_5_2_reg_3800_pp0_iter7_reg;
reg   [63:0] data_y_5_2_reg_3800_pp0_iter8_reg;
reg   [63:0] sub12_reg_3805;
reg   [63:0] sub294_1_reg_3811;
reg   [63:0] sub299_1_reg_3817;
reg   [63:0] data_x_6_reg_3823;
reg   [63:0] data_x_6_reg_3823_pp0_iter8_reg;
reg   [63:0] data_x_7_reg_3828;
reg   [63:0] data_x_7_reg_3828_pp0_iter8_reg;
reg   [63:0] data_y_6_reg_3833;
reg   [63:0] data_y_7_reg_3838;
reg   [63:0] data_x_6_2_reg_3843;
reg   [63:0] data_y_6_2_reg_3848;
reg   [63:0] data_x_7_2_reg_3853;
reg   [63:0] data_y_7_2_reg_3858;
reg   [3:0] DATA_x_9_addr_reg_3863;
reg   [3:0] DATA_x_25_addr_reg_3868;
reg   [3:0] DATA_x_10_addr_reg_3873;
reg   [3:0] DATA_x_26_addr_reg_3878;
reg   [3:0] DATA_x_11_addr_reg_3883;
reg   [3:0] DATA_x_27_addr_reg_3888;
reg   [3:0] DATA_x_12_addr_reg_3893;
reg   [3:0] DATA_x_28_addr_reg_3898;
reg   [3:0] DATA_x_13_addr_reg_3903;
reg   [3:0] DATA_x_29_addr_reg_3908;
reg   [3:0] DATA_x_14_addr_reg_3913;
reg   [3:0] DATA_x_30_addr_reg_3918;
reg   [3:0] DATA_x_15_addr_reg_3923;
reg   [3:0] DATA_x_31_addr_reg_3928;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage5_subdone;
reg   [63:0] grp_twiddles8_fu_1082_a_x_1_read;
reg   [63:0] grp_twiddles8_fu_1082_a_x_2_read;
reg   [63:0] grp_twiddles8_fu_1082_a_x_3_read;
reg   [63:0] grp_twiddles8_fu_1082_a_x_4_read;
reg   [63:0] grp_twiddles8_fu_1082_a_x_5_read;
reg   [63:0] grp_twiddles8_fu_1082_a_x_6_read;
reg   [63:0] grp_twiddles8_fu_1082_a_x_7_read;
reg   [63:0] grp_twiddles8_fu_1082_a_y_1_read;
reg   [63:0] grp_twiddles8_fu_1082_a_y_2_read;
reg   [63:0] grp_twiddles8_fu_1082_a_y_3_read;
reg   [63:0] grp_twiddles8_fu_1082_a_y_4_read;
reg   [63:0] grp_twiddles8_fu_1082_a_y_5_read;
reg   [63:0] grp_twiddles8_fu_1082_a_y_6_read;
reg   [63:0] grp_twiddles8_fu_1082_a_y_7_read;
reg   [5:0] grp_twiddles8_fu_1082_i;
reg    grp_twiddles8_fu_1082_ap_ce;
wire    ap_block_pp0_stage2_11001_ignoreCallOp1575;
wire    ap_block_pp0_stage3_11001_ignoreCallOp1576;
wire    ap_block_pp0_stage4_11001_ignoreCallOp1578;
wire    ap_block_pp0_stage5_11001_ignoreCallOp1580;
wire    ap_block_pp0_stage6_11001_ignoreCallOp1582;
wire    ap_block_pp0_stage7_11001_ignoreCallOp1584;
wire    ap_block_pp0_stage1_11001_ignoreCallOp1588;
wire    ap_block_pp0_stage0_11001_ignoreCallOp1586;
wire    ap_block_pp0_stage2_ignoreCallOp1575;
wire    ap_block_pp0_stage3_ignoreCallOp1577;
wire   [63:0] zext_ln130_fu_1419_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln132_fu_1429_p1;
wire   [63:0] zext_ln134_fu_1450_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln136_fu_1459_p1;
wire   [63:0] zext_ln130_1_fu_1474_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln132_1_fu_1485_p1;
wire   [63:0] zext_ln134_1_fu_1544_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln136_1_fu_1559_p1;
wire   [63:0] zext_ln131_fu_1572_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln135_fu_1582_p1;
wire   [63:0] zext_ln131_1_fu_1613_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln135_1_fu_1635_p1;
wire   [63:0] zext_ln127_fu_1671_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln133_fu_1689_p1;
wire   [63:0] zext_ln129_fu_1739_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln133_2_fu_1764_p1;
reg   [6:0] tid_fu_194;
wire   [6:0] add_ln127_fu_1788_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_7;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
reg    DATA_x_16_we0_local;
reg    DATA_x_16_ce0_local;
reg    DATA_x_24_we0_local;
reg    DATA_x_24_ce0_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_8_we0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_y_8_we0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_x_17_we0_local;
reg    DATA_x_17_ce0_local;
reg    DATA_x_18_we0_local;
reg    DATA_x_18_ce0_local;
reg    DATA_x_19_we0_local;
reg    DATA_x_19_ce0_local;
reg    DATA_x_20_we0_local;
reg    DATA_x_20_ce0_local;
reg    DATA_x_21_we0_local;
reg    DATA_x_21_ce0_local;
reg    DATA_x_22_we0_local;
reg    DATA_x_22_ce0_local;
reg    DATA_x_23_we0_local;
reg    DATA_x_23_ce0_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_we0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_we0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_we0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_we0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_x_25_we0_local;
reg    DATA_x_25_ce0_local;
reg    DATA_x_26_we0_local;
reg    DATA_x_26_ce0_local;
reg    DATA_x_27_we0_local;
reg    DATA_x_27_ce0_local;
reg    DATA_x_28_we0_local;
reg    DATA_x_28_ce0_local;
reg    DATA_x_29_we0_local;
reg    DATA_x_29_ce0_local;
reg    DATA_x_30_we0_local;
reg    DATA_x_30_ce0_local;
reg    DATA_x_31_we0_local;
reg    DATA_x_31_ce0_local;
reg    DATA_x_9_we0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_10_we0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_11_we0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_12_we0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_13_we0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_14_we0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_15_we0_local;
reg    DATA_x_15_ce0_local;
reg    DATA_y_9_we0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_10_we0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_11_we0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_12_we0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_13_we0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_14_we0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_15_we0_local;
reg    DATA_y_15_ce0_local;
reg   [63:0] grp_fu_1115_p0;
reg   [63:0] grp_fu_1115_p1;
reg   [63:0] grp_fu_1119_p0;
reg   [63:0] grp_fu_1119_p1;
reg   [63:0] grp_fu_1123_p0;
reg   [63:0] grp_fu_1123_p1;
reg   [63:0] grp_fu_1127_p0;
reg   [63:0] grp_fu_1127_p1;
reg   [63:0] grp_fu_1131_p0;
reg   [63:0] grp_fu_1131_p1;
reg   [63:0] grp_fu_1135_p0;
reg   [63:0] grp_fu_1135_p1;
reg   [63:0] grp_fu_1139_p0;
reg   [63:0] grp_fu_1139_p1;
reg   [63:0] grp_fu_1143_p0;
reg   [63:0] grp_fu_1143_p1;
reg   [63:0] grp_fu_1147_p0;
reg   [63:0] grp_fu_1147_p1;
reg   [63:0] grp_fu_1151_p0;
reg   [63:0] grp_fu_1151_p1;
reg   [63:0] grp_fu_1155_p0;
reg   [63:0] grp_fu_1155_p1;
reg   [63:0] grp_fu_1159_p0;
reg   [63:0] grp_fu_1159_p1;
reg   [63:0] grp_fu_1163_p0;
reg   [63:0] grp_fu_1163_p1;
reg   [63:0] grp_fu_1167_p0;
reg   [63:0] grp_fu_1167_p1;
reg   [63:0] grp_fu_1171_p0;
reg   [63:0] grp_fu_1171_p1;
reg   [63:0] grp_fu_1175_p0;
reg   [63:0] grp_fu_1175_p1;
reg   [63:0] grp_fu_1180_p0;
reg   [63:0] grp_fu_1180_p1;
reg   [63:0] grp_fu_1187_p0;
reg   [63:0] grp_fu_1187_p1;
wire  signed [7:0] sext_ln132_fu_1425_p1;
wire   [1:0] trunc_ln127_fu_1403_p1;
wire   [8:0] add_ln134_fu_1444_p2;
wire  signed [8:0] sext_ln136_fu_1456_p1;
wire   [7:0] add_ln130_fu_1468_p2;
wire   [8:0] add_ln132_fu_1480_p2;
wire   [8:0] add_ln134_1_fu_1539_p2;
wire   [6:0] add_ln136_fu_1550_p2;
wire  signed [8:0] sext_ln136_1_fu_1555_p1;
wire  signed [7:0] zext_ln131_cast_fu_1565_p3;
wire  signed [8:0] sext_ln135_fu_1578_p1;
wire  signed [7:0] zext_ln131_1_cast_fu_1603_p4;
wire  signed [8:0] sext_ln135_1_fu_1631_p1;
wire   [8:0] zext_ln133_cast_fu_1682_p3;
wire   [6:0] zext_ln133_1_fu_1751_p1;
wire   [8:0] zext_ln133_1_cast_fu_1754_p4;
wire   [63:0] bitcast_ln148_fu_1846_p1;
wire   [0:0] bit_sel2_fu_1849_p3;
wire   [0:0] xor_ln148_19_fu_1857_p2;
wire   [62:0] trunc_ln148_fu_1863_p1;
wire   [63:0] xor_ln1_fu_1867_p3;
wire   [63:0] bitcast_ln148_2_fu_1880_p1;
wire   [0:0] bit_sel3_fu_1883_p3;
wire   [0:0] xor_ln148_fu_1891_p2;
wire   [62:0] trunc_ln148_1_fu_1897_p1;
wire   [63:0] xor_ln148_1_fu_1901_p3;
wire   [63:0] bitcast_ln148_8_fu_1914_p1;
wire   [0:0] bit_sel8_fu_1918_p3;
wire   [0:0] xor_ln148_22_fu_1926_p2;
wire   [62:0] trunc_ln148_4_fu_1932_p1;
wire   [63:0] xor_ln148_4_fu_1936_p3;
wire   [63:0] bitcast_ln148_10_fu_1950_p1;
wire   [0:0] bit_sel9_fu_1954_p3;
wire   [0:0] xor_ln148_23_fu_1962_p2;
wire   [62:0] trunc_ln148_5_fu_1968_p1;
wire   [63:0] xor_ln148_5_fu_1972_p3;
wire   [63:0] bitcast_ln148_20_fu_1986_p1;
wire   [0:0] bit_sel17_fu_1989_p3;
wire   [0:0] xor_ln148_28_fu_1997_p2;
wire   [62:0] trunc_ln148_10_fu_2003_p1;
wire   [63:0] xor_ln148_s_fu_2007_p3;
wire   [63:0] bitcast_ln148_22_fu_2020_p1;
wire   [0:0] bit_sel18_fu_2023_p3;
wire   [0:0] xor_ln148_29_fu_2031_p2;
wire   [62:0] trunc_ln148_11_fu_2037_p1;
wire   [63:0] xor_ln148_10_fu_2041_p3;
wire   [63:0] bitcast_ln148_28_fu_2054_p1;
wire   [0:0] bit_sel13_fu_2058_p3;
wire   [0:0] xor_ln148_32_fu_2066_p2;
wire   [62:0] trunc_ln148_14_fu_2072_p1;
wire   [63:0] xor_ln148_13_fu_2076_p3;
wire   [63:0] bitcast_ln148_30_fu_2090_p1;
wire   [0:0] bit_sel10_fu_2094_p3;
wire   [0:0] xor_ln148_33_fu_2102_p2;
wire   [62:0] trunc_ln148_15_fu_2108_p1;
wire   [63:0] xor_ln148_14_fu_2112_p3;
wire   [63:0] bitcast_ln148_4_fu_2126_p1;
wire   [0:0] bit_sel5_fu_2129_p3;
wire   [0:0] xor_ln148_20_fu_2137_p2;
wire   [62:0] trunc_ln148_2_fu_2143_p1;
wire   [63:0] xor_ln148_2_fu_2147_p3;
wire   [63:0] bitcast_ln148_6_fu_2160_p1;
wire   [0:0] bit_sel6_fu_2163_p3;
wire   [0:0] xor_ln148_21_fu_2171_p2;
wire   [62:0] trunc_ln148_3_fu_2177_p1;
wire   [63:0] xor_ln148_3_fu_2181_p3;
wire   [63:0] bitcast_ln148_24_fu_2194_p1;
wire   [0:0] bit_sel19_fu_2197_p3;
wire   [0:0] xor_ln148_30_fu_2205_p2;
wire   [62:0] trunc_ln148_12_fu_2211_p1;
wire   [63:0] xor_ln148_11_fu_2215_p3;
wire   [63:0] bitcast_ln148_26_fu_2228_p1;
wire   [0:0] bit_sel16_fu_2231_p3;
wire   [0:0] xor_ln148_31_fu_2239_p2;
wire   [62:0] trunc_ln148_13_fu_2245_p1;
wire   [63:0] xor_ln148_12_fu_2249_p3;
wire   [63:0] bitcast_ln148_12_fu_2262_p1;
wire   [0:0] bit_sel11_fu_2265_p3;
wire   [0:0] xor_ln148_24_fu_2273_p2;
wire   [62:0] trunc_ln148_6_fu_2279_p1;
wire   [63:0] xor_ln148_6_fu_2283_p3;
wire   [63:0] bitcast_ln148_14_fu_2296_p1;
wire   [0:0] bit_sel12_fu_2299_p3;
wire   [0:0] xor_ln148_25_fu_2307_p2;
wire   [62:0] trunc_ln148_7_fu_2313_p1;
wire   [63:0] xor_ln148_7_fu_2317_p3;
wire   [63:0] bitcast_ln148_32_fu_2330_p1;
wire   [0:0] bit_sel7_fu_2333_p3;
wire   [0:0] xor_ln148_34_fu_2341_p2;
wire   [62:0] trunc_ln148_16_fu_2347_p1;
wire   [63:0] xor_ln148_15_fu_2351_p3;
wire   [63:0] bitcast_ln148_34_fu_2364_p1;
wire   [0:0] bit_sel4_fu_2367_p3;
wire   [0:0] xor_ln148_35_fu_2375_p2;
wire   [62:0] trunc_ln148_17_fu_2381_p1;
wire   [63:0] xor_ln148_16_fu_2385_p3;
wire   [63:0] bitcast_ln148_16_fu_2410_p1;
wire   [0:0] bit_sel14_fu_2413_p3;
wire   [0:0] xor_ln148_26_fu_2421_p2;
wire   [62:0] trunc_ln148_8_fu_2427_p1;
wire   [63:0] xor_ln148_8_fu_2431_p3;
wire   [63:0] bitcast_ln148_18_fu_2444_p1;
wire   [0:0] bit_sel15_fu_2447_p3;
wire   [0:0] xor_ln148_27_fu_2455_p2;
wire   [62:0] trunc_ln148_9_fu_2461_p1;
wire   [63:0] xor_ln148_9_fu_2465_p3;
wire   [63:0] bitcast_ln148_36_fu_2478_p1;
wire   [0:0] bit_sel1_fu_2481_p3;
wire   [0:0] xor_ln148_36_fu_2489_p2;
wire   [62:0] trunc_ln148_18_fu_2495_p1;
wire   [63:0] xor_ln148_17_fu_2499_p3;
wire   [63:0] bitcast_ln148_38_fu_2512_p1;
wire   [0:0] bit_sel_fu_2515_p3;
wire   [0:0] xor_ln148_37_fu_2523_p2;
wire   [62:0] trunc_ln148_19_fu_2529_p1;
wire   [63:0] xor_ln148_18_fu_2533_p3;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage2_00001;
reg   [1:0] grp_fu_1123_opcode;
reg   [1:0] grp_fu_1131_opcode;
reg   [1:0] grp_fu_1139_opcode;
reg   [1:0] grp_fu_1143_opcode;
reg   [1:0] grp_fu_1147_opcode;
reg   [1:0] grp_fu_1151_opcode;
reg   [1:0] grp_fu_1155_opcode;
reg   [1:0] grp_fu_1159_opcode;
reg   [1:0] grp_fu_1163_opcode;
reg   [1:0] grp_fu_1167_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter22_stage5;
reg    ap_idle_pp0_0to21;
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
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to23;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
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
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_194 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter22_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
            ap_enable_reg_pp0_iter23 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tid_fu_194 <= 7'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_31_reg_2566 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        tid_fu_194 <= add_ln127_fu_1788_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_10_addr_reg_3873 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_11_addr_reg_3883 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_12_addr_reg_3893 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_13_addr_reg_3903 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_14_addr_reg_3913 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_15_addr_reg_3923 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_25_addr_reg_3868 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_26_addr_reg_3878 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_27_addr_reg_3888 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_28_addr_reg_3898 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_29_addr_reg_3908 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_30_addr_reg_3918 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_31_addr_reg_3928 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        DATA_x_9_addr_reg_3863 <= zext_ln154_1_reg_3545_pp0_iter23_reg;
        sub208_1_reg_3259_pp0_iter3_reg <= sub208_1_reg_3259;
        sub287_1_reg_3607_pp0_iter5_reg <= sub287_1_reg_3607;
        tmp_3_reg_3253_pp0_iter3_reg <= tmp_3_reg_3253;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add10_reg_3589 <= grp_fu_1108_p_dout0;
        add278_1_reg_3595 <= grp_fu_1112_p_dout0;
        sub4_reg_3577 <= grp_fu_1100_p_dout0;
        sub6_reg_3583 <= grp_fu_1104_p_dout0;
        tmp_4_reg_3601 <= grp_fu_1116_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add111_1_reg_3107 <= grp_fu_1092_p_dout0;
        add114_1_reg_3113 <= grp_fu_1096_p_dout0;
        sub120_1_reg_3125 <= grp_fu_1104_p_dout0;
        tmp_1_4_reg_3119 <= grp_fu_1100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add127_1_reg_3049 <= grp_fu_1108_p_dout0;
        add130_1_reg_3055 <= grp_fu_1112_p_dout0;
        c0_x_15_reg_3025 <= grp_fu_1092_p_dout0;
        c0_y_15_reg_3031 <= grp_fu_1096_p_dout0;
        sub104_1_reg_3043 <= grp_fu_1104_p_dout0;
        tmp_1_3_reg_3037 <= grp_fu_1100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add149_1_reg_3238 <= grp_fu_1128_p_dout0;
        add175_1_reg_3248 <= grp_fu_1136_p_dout0;
        mul6_reg_3223 <= grp_fu_1152_p_dout0;
        mul9_reg_3228 <= grp_fu_1156_p_dout0;
        sub143_1_reg_3233 <= grp_fu_1124_p_dout0;
        sub169_1_reg_3243 <= grp_fu_1132_p_dout0;
        sub208_1_reg_3259 <= grp_fu_1144_p_dout0;
        tmp_3_reg_3253 <= grp_fu_1140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add162_1_reg_3441 <= grp_fu_1128_p_dout0;
        add9_reg_3429 <= grp_fu_1120_p_dout0;
        mul212_1_reg_3447 <= grp_fu_1160_p_dout0;
        sub157_1_reg_3435 <= grp_fu_1124_p_dout0;
        sub9_reg_3423 <= grp_fu_1116_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add199_1_reg_3275 <= grp_fu_1108_p_dout0;
        add202_1_reg_3281 <= grp_fu_1112_p_dout0;
        mul154_1_reg_3265 <= grp_fu_1152_p_dout0;
        mul161_1_reg_3270 <= grp_fu_1156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add1_reg_3194 <= grp_fu_1136_p_dout0;
        add8_reg_3184 <= grp_fu_1128_p_dout0;
        sub1_reg_3189 <= grp_fu_1132_p_dout0;
        sub2_reg_3205 <= grp_fu_1144_p_dout0;
        sub8_reg_3179 <= grp_fu_1124_p_dout0;
        tmp_reg_3199 <= grp_fu_1140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add281_1_reg_3673 <= grp_fu_1128_p_dout0;
        c0_x_22_reg_3661 <= grp_fu_1120_p_dout0;
        c0_x_23_reg_3649 <= grp_fu_1112_p_dout0;
        c0_y_22_reg_3667 <= grp_fu_1124_p_dout0;
        c0_y_23_reg_3655 <= grp_fu_1116_p_dout0;
        sub220_1_reg_3643 <= grp_fu_1108_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add2_reg_3211 <= grp_fu_1092_p_dout0;
        add3_reg_3217 <= grp_fu_1096_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add4_reg_3061 <= grp_fu_1092_p_dout0;
        add5_reg_3067 <= grp_fu_1096_p_dout0;
        sub5_reg_3079 <= grp_fu_1104_p_dout0;
        tmp_1_1_reg_3073 <= grp_fu_1100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add6_reg_2991 <= grp_fu_1108_p_dout0;
        add7_reg_2997 <= grp_fu_1112_p_dout0;
        c0_x_5_reg_2967 <= grp_fu_1092_p_dout0;
        c0_y_5_reg_2973 <= grp_fu_1096_p_dout0;
        sub3_reg_2985 <= grp_fu_1104_p_dout0;
        tmp_1_reg_2979 <= grp_fu_1100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add_reg_3498 <= grp_fu_1100_p_dout0;
        data_x_0_1_reg_3510 <= grp_fu_1108_p_dout0;
        data_x_0_reg_3487 <= grp_fu_1092_p_dout0;
        data_y_0_1_reg_3516 <= grp_fu_1112_p_dout0;
        data_y_0_reg_3493 <= grp_fu_1096_p_dout0;
        tmp_2_reg_3504 <= grp_fu_1104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3625 <= grp_fu_1140_p_dout0;
        c0_x_11_reg_3613 <= grp_fu_1132_p_dout0;
        c0_y_10_reg_3631 <= grp_fu_1144_p_dout0;
        c0_y_11_reg_3619 <= grp_fu_1136_p_dout0;
        sub215_1_reg_3637 <= grp_fu_1148_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3625_pp0_iter5_reg <= c0_x_10_reg_3625;
        c0_y_10_reg_3631_pp0_iter5_reg <= c0_y_10_reg_3631;
        c0_y_10_reg_3631_pp0_iter6_reg <= c0_y_10_reg_3631_pp0_iter5_reg;
        sub5_reg_3079_pp0_iter2_reg <= sub5_reg_3079;
        tmp_1_1_reg_3073_pp0_iter2_reg <= tmp_1_1_reg_3073;
        tmp_s_reg_2749 <= {{tid_7_reg_2553[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_3167 <= grp_fu_1100_p_dout0;
        c0_x_21_reg_3155 <= grp_fu_1092_p_dout0;
        c0_y_13_reg_3173 <= grp_fu_1104_p_dout0;
        c0_y_21_reg_3161 <= grp_fu_1096_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_3167_pp0_iter3_reg <= c0_x_13_reg_3167;
        c0_x_19_reg_3343_pp0_iter4_reg <= c0_x_19_reg_3343;
        c0_y_13_reg_3173_pp0_iter3_reg <= c0_y_13_reg_3173;
        c0_y_19_reg_3349_pp0_iter4_reg <= c0_y_19_reg_3349;
        c0_y_19_reg_3349_pp0_iter5_reg <= c0_y_19_reg_3349_pp0_iter4_reg;
        data_x_1_2_reg_3477_pp0_iter5_reg <= data_x_1_2_reg_3477;
        data_x_1_2_reg_3477_pp0_iter6_reg <= data_x_1_2_reg_3477_pp0_iter5_reg;
        data_x_1_2_reg_3477_pp0_iter7_reg <= data_x_1_2_reg_3477_pp0_iter6_reg;
        data_x_1_2_reg_3477_pp0_iter8_reg <= data_x_1_2_reg_3477_pp0_iter7_reg;
        data_x_4_2_reg_3785_pp0_iter7_reg <= data_x_4_2_reg_3785;
        data_x_4_2_reg_3785_pp0_iter8_reg <= data_x_4_2_reg_3785_pp0_iter7_reg;
        data_x_5_2_reg_3795_pp0_iter7_reg <= data_x_5_2_reg_3795;
        data_x_5_2_reg_3795_pp0_iter8_reg <= data_x_5_2_reg_3795_pp0_iter7_reg;
        data_y_1_2_reg_3482_pp0_iter5_reg <= data_y_1_2_reg_3482;
        data_y_1_2_reg_3482_pp0_iter6_reg <= data_y_1_2_reg_3482_pp0_iter5_reg;
        data_y_1_2_reg_3482_pp0_iter7_reg <= data_y_1_2_reg_3482_pp0_iter6_reg;
        data_y_1_2_reg_3482_pp0_iter8_reg <= data_y_1_2_reg_3482_pp0_iter7_reg;
        data_y_3_2_reg_3775_pp0_iter7_reg <= data_y_3_2_reg_3775;
        data_y_3_2_reg_3775_pp0_iter8_reg <= data_y_3_2_reg_3775_pp0_iter7_reg;
        data_y_4_2_reg_3790_pp0_iter7_reg <= data_y_4_2_reg_3790;
        data_y_4_2_reg_3790_pp0_iter8_reg <= data_y_4_2_reg_3790_pp0_iter7_reg;
        icmp_ln154_reg_2600 <= icmp_ln154_fu_1435_p2;
        icmp_ln154_reg_2600_pp0_iter10_reg <= icmp_ln154_reg_2600_pp0_iter9_reg;
        icmp_ln154_reg_2600_pp0_iter11_reg <= icmp_ln154_reg_2600_pp0_iter10_reg;
        icmp_ln154_reg_2600_pp0_iter12_reg <= icmp_ln154_reg_2600_pp0_iter11_reg;
        icmp_ln154_reg_2600_pp0_iter13_reg <= icmp_ln154_reg_2600_pp0_iter12_reg;
        icmp_ln154_reg_2600_pp0_iter14_reg <= icmp_ln154_reg_2600_pp0_iter13_reg;
        icmp_ln154_reg_2600_pp0_iter15_reg <= icmp_ln154_reg_2600_pp0_iter14_reg;
        icmp_ln154_reg_2600_pp0_iter16_reg <= icmp_ln154_reg_2600_pp0_iter15_reg;
        icmp_ln154_reg_2600_pp0_iter17_reg <= icmp_ln154_reg_2600_pp0_iter16_reg;
        icmp_ln154_reg_2600_pp0_iter18_reg <= icmp_ln154_reg_2600_pp0_iter17_reg;
        icmp_ln154_reg_2600_pp0_iter19_reg <= icmp_ln154_reg_2600_pp0_iter18_reg;
        icmp_ln154_reg_2600_pp0_iter1_reg <= icmp_ln154_reg_2600;
        icmp_ln154_reg_2600_pp0_iter20_reg <= icmp_ln154_reg_2600_pp0_iter19_reg;
        icmp_ln154_reg_2600_pp0_iter21_reg <= icmp_ln154_reg_2600_pp0_iter20_reg;
        icmp_ln154_reg_2600_pp0_iter22_reg <= icmp_ln154_reg_2600_pp0_iter21_reg;
        icmp_ln154_reg_2600_pp0_iter23_reg <= icmp_ln154_reg_2600_pp0_iter22_reg;
        icmp_ln154_reg_2600_pp0_iter2_reg <= icmp_ln154_reg_2600_pp0_iter1_reg;
        icmp_ln154_reg_2600_pp0_iter3_reg <= icmp_ln154_reg_2600_pp0_iter2_reg;
        icmp_ln154_reg_2600_pp0_iter4_reg <= icmp_ln154_reg_2600_pp0_iter3_reg;
        icmp_ln154_reg_2600_pp0_iter5_reg <= icmp_ln154_reg_2600_pp0_iter4_reg;
        icmp_ln154_reg_2600_pp0_iter6_reg <= icmp_ln154_reg_2600_pp0_iter5_reg;
        icmp_ln154_reg_2600_pp0_iter7_reg <= icmp_ln154_reg_2600_pp0_iter6_reg;
        icmp_ln154_reg_2600_pp0_iter8_reg <= icmp_ln154_reg_2600_pp0_iter7_reg;
        icmp_ln154_reg_2600_pp0_iter9_reg <= icmp_ln154_reg_2600_pp0_iter8_reg;
        tid_7_reg_2553 <= ap_sig_allocacmp_tid_7;
        tmp_31_reg_2566 <= ap_sig_allocacmp_tid_7[32'd6];
        tmp_31_reg_2566_pp0_iter10_reg <= tmp_31_reg_2566_pp0_iter9_reg;
        tmp_31_reg_2566_pp0_iter11_reg <= tmp_31_reg_2566_pp0_iter10_reg;
        tmp_31_reg_2566_pp0_iter12_reg <= tmp_31_reg_2566_pp0_iter11_reg;
        tmp_31_reg_2566_pp0_iter13_reg <= tmp_31_reg_2566_pp0_iter12_reg;
        tmp_31_reg_2566_pp0_iter14_reg <= tmp_31_reg_2566_pp0_iter13_reg;
        tmp_31_reg_2566_pp0_iter15_reg <= tmp_31_reg_2566_pp0_iter14_reg;
        tmp_31_reg_2566_pp0_iter16_reg <= tmp_31_reg_2566_pp0_iter15_reg;
        tmp_31_reg_2566_pp0_iter17_reg <= tmp_31_reg_2566_pp0_iter16_reg;
        tmp_31_reg_2566_pp0_iter18_reg <= tmp_31_reg_2566_pp0_iter17_reg;
        tmp_31_reg_2566_pp0_iter19_reg <= tmp_31_reg_2566_pp0_iter18_reg;
        tmp_31_reg_2566_pp0_iter1_reg <= tmp_31_reg_2566;
        tmp_31_reg_2566_pp0_iter20_reg <= tmp_31_reg_2566_pp0_iter19_reg;
        tmp_31_reg_2566_pp0_iter21_reg <= tmp_31_reg_2566_pp0_iter20_reg;
        tmp_31_reg_2566_pp0_iter22_reg <= tmp_31_reg_2566_pp0_iter21_reg;
        tmp_31_reg_2566_pp0_iter2_reg <= tmp_31_reg_2566_pp0_iter1_reg;
        tmp_31_reg_2566_pp0_iter3_reg <= tmp_31_reg_2566_pp0_iter2_reg;
        tmp_31_reg_2566_pp0_iter4_reg <= tmp_31_reg_2566_pp0_iter3_reg;
        tmp_31_reg_2566_pp0_iter5_reg <= tmp_31_reg_2566_pp0_iter4_reg;
        tmp_31_reg_2566_pp0_iter6_reg <= tmp_31_reg_2566_pp0_iter5_reg;
        tmp_31_reg_2566_pp0_iter7_reg <= tmp_31_reg_2566_pp0_iter6_reg;
        tmp_31_reg_2566_pp0_iter8_reg <= tmp_31_reg_2566_pp0_iter7_reg;
        tmp_31_reg_2566_pp0_iter9_reg <= tmp_31_reg_2566_pp0_iter8_reg;
        trunc_ln127_1_reg_2570 <= trunc_ln127_1_fu_1407_p1;
        trunc_ln127_1_reg_2570_pp0_iter1_reg <= trunc_ln127_1_reg_2570;
        trunc_ln127_1_reg_2570_pp0_iter2_reg <= trunc_ln127_1_reg_2570_pp0_iter1_reg;
        trunc_ln127_1_reg_2570_pp0_iter3_reg <= trunc_ln127_1_reg_2570_pp0_iter2_reg;
        trunc_ln127_1_reg_2570_pp0_iter4_reg <= trunc_ln127_1_reg_2570_pp0_iter3_reg;
        trunc_ln127_1_reg_2570_pp0_iter5_reg <= trunc_ln127_1_reg_2570_pp0_iter4_reg;
        trunc_ln127_1_reg_2570_pp0_iter6_reg <= trunc_ln127_1_reg_2570_pp0_iter5_reg;
        trunc_ln127_1_reg_2570_pp0_iter7_reg <= trunc_ln127_1_reg_2570_pp0_iter6_reg;
        trunc_ln127_1_reg_2570_pp0_iter8_reg <= trunc_ln127_1_reg_2570_pp0_iter7_reg;
        zext_ln130_cast_reg_2575[5 : 0] <= zext_ln130_cast_fu_1411_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_18_reg_3331 <= grp_fu_1108_p_dout0;
        c0_x_19_reg_3343 <= grp_fu_1116_p_dout0;
        c0_y_18_reg_3337 <= grp_fu_1112_p_dout0;
        c0_y_19_reg_3349 <= grp_fu_1120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        c0_x_20_reg_3389 <= grp_fu_1152_p_dout0;
        c0_y_20_reg_3395 <= grp_fu_1156_p_dout0;
        mul170_1_reg_3401 <= grp_fu_1160_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        c0_x_22_reg_3661_pp0_iter5_reg <= c0_x_22_reg_3661;
        c0_x_22_reg_3661_pp0_iter6_reg <= c0_x_22_reg_3661_pp0_iter5_reg;
        c0_y_22_reg_3667_pp0_iter5_reg <= c0_y_22_reg_3667;
        c0_y_22_reg_3667_pp0_iter6_reg <= c0_y_22_reg_3667_pp0_iter5_reg;
        data_x_4_reg_3714_pp0_iter6_reg <= data_x_4_reg_3714;
        data_x_4_reg_3714_pp0_iter7_reg <= data_x_4_reg_3714_pp0_iter6_reg;
        data_x_5_reg_3724_pp0_iter6_reg <= data_x_5_reg_3724;
        data_x_5_reg_3724_pp0_iter7_reg <= data_x_5_reg_3724_pp0_iter6_reg;
        data_y_4_reg_3719_pp0_iter6_reg <= data_y_4_reg_3719;
        data_y_4_reg_3719_pp0_iter7_reg <= data_y_4_reg_3719_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_4_reg_3131 <= grp_fu_1092_p_dout0;
        c0_x_8_reg_3143 <= grp_fu_1100_p_dout0;
        c0_y_4_reg_3137 <= grp_fu_1096_p_dout0;
        c0_y_8_reg_3149 <= grp_fu_1104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_6_reg_3307 <= grp_fu_1108_p_dout0;
        c0_x_7_reg_3319 <= grp_fu_1116_p_dout0;
        c0_y_6_reg_3313 <= grp_fu_1112_p_dout0;
        c0_y_7_reg_3325 <= grp_fu_1120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_7_reg_3319_pp0_iter3_reg <= c0_x_7_reg_3319;
        c0_x_8_reg_3143_pp0_iter2_reg <= c0_x_8_reg_3143;
        c0_y_7_reg_3325_pp0_iter3_reg <= c0_y_7_reg_3325;
        c0_y_8_reg_3149_pp0_iter2_reg <= c0_y_8_reg_3149;
        data_x_1_reg_3462_pp0_iter4_reg <= data_x_1_reg_3462;
        data_x_1_reg_3462_pp0_iter5_reg <= data_x_1_reg_3462_pp0_iter4_reg;
        data_x_1_reg_3462_pp0_iter6_reg <= data_x_1_reg_3462_pp0_iter5_reg;
        data_x_1_reg_3462_pp0_iter7_reg <= data_x_1_reg_3462_pp0_iter6_reg;
        data_x_2_2_reg_3744_pp0_iter6_reg <= data_x_2_2_reg_3744;
        data_x_2_2_reg_3744_pp0_iter7_reg <= data_x_2_2_reg_3744_pp0_iter6_reg;
        data_x_3_2_reg_3754_pp0_iter6_reg <= data_x_3_2_reg_3754;
        data_x_3_2_reg_3754_pp0_iter7_reg <= data_x_3_2_reg_3754_pp0_iter6_reg;
        data_y_1_reg_3467_pp0_iter4_reg <= data_y_1_reg_3467;
        data_y_1_reg_3467_pp0_iter5_reg <= data_y_1_reg_3467_pp0_iter4_reg;
        data_y_1_reg_3467_pp0_iter6_reg <= data_y_1_reg_3467_pp0_iter5_reg;
        data_y_1_reg_3467_pp0_iter7_reg <= data_y_1_reg_3467_pp0_iter6_reg;
        data_y_2_2_reg_3749_pp0_iter6_reg <= data_y_2_2_reg_3749;
        data_y_2_2_reg_3749_pp0_iter7_reg <= data_y_2_2_reg_3749_pp0_iter6_reg;
        data_y_5_reg_3739_pp0_iter6_reg <= data_y_5_reg_3739;
        data_y_5_reg_3739_pp0_iter7_reg <= data_y_5_reg_3739_pp0_iter6_reg;
        lshr_ln154_1_reg_2865 <= {{tid_7_reg_2553[5:2]}};
        lshr_ln154_1_reg_2865_pp0_iter1_reg <= lshr_ln154_1_reg_2865;
        lshr_ln154_1_reg_2865_pp0_iter2_reg <= lshr_ln154_1_reg_2865_pp0_iter1_reg;
        lshr_ln154_1_reg_2865_pp0_iter3_reg <= lshr_ln154_1_reg_2865_pp0_iter2_reg;
        lshr_ln_reg_2860 <= {{tid_7_reg_2553[5:1]}};
        lshr_ln_reg_2860_pp0_iter1_reg <= lshr_ln_reg_2860;
        lshr_ln_reg_2860_pp0_iter2_reg <= lshr_ln_reg_2860_pp0_iter1_reg;
        lshr_ln_reg_2860_pp0_iter3_reg <= lshr_ln_reg_2860_pp0_iter2_reg;
        or_ln3_reg_2870[5 : 1] <= or_ln3_fu_1731_p3[5 : 1];
        or_ln3_reg_2870_pp0_iter1_reg[5 : 1] <= or_ln3_reg_2870[5 : 1];
        or_ln3_reg_2870_pp0_iter2_reg[5 : 1] <= or_ln3_reg_2870_pp0_iter1_reg[5 : 1];
        or_ln3_reg_2870_pp0_iter3_reg[5 : 1] <= or_ln3_reg_2870_pp0_iter2_reg[5 : 1];
        or_ln3_reg_2870_pp0_iter4_reg[5 : 1] <= or_ln3_reg_2870_pp0_iter3_reg[5 : 1];
        or_ln3_reg_2870_pp0_iter5_reg[5 : 1] <= or_ln3_reg_2870_pp0_iter4_reg[5 : 1];
        or_ln3_reg_2870_pp0_iter6_reg[5 : 1] <= or_ln3_reg_2870_pp0_iter5_reg[5 : 1];
        or_ln3_reg_2870_pp0_iter7_reg[5 : 1] <= or_ln3_reg_2870_pp0_iter6_reg[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        c0_x_9_reg_3355 <= grp_fu_1152_p_dout0;
        c0_y_9_reg_3361 <= grp_fu_1156_p_dout0;
        mul3_reg_3367 <= grp_fu_1160_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_1_2_reg_3477 <= grp_fu_1124_p_dout0;
        data_y_1_2_reg_3482 <= grp_fu_1128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_1_reg_3462 <= grp_fu_1124_p_dout0;
        data_y_1_reg_3467 <= grp_fu_1128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_2_2_reg_3744 <= grp_fu_1136_p_dout0;
        data_x_3_2_reg_3754 <= grp_fu_1144_p_dout0;
        data_y_2_2_reg_3749 <= grp_fu_1140_p_dout0;
        data_y_5_reg_3739 <= grp_fu_1132_p_dout0;
        mul298_1_reg_3764 <= grp_fu_1152_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3689 <= grp_fu_1120_p_dout0;
        data_x_3_reg_3699 <= grp_fu_1128_p_dout0;
        data_y_2_reg_3694 <= grp_fu_1124_p_dout0;
        data_y_3_reg_3704 <= grp_fu_1132_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3689_pp0_iter6_reg <= data_x_2_reg_3689;
        data_x_2_reg_3689_pp0_iter7_reg <= data_x_2_reg_3689_pp0_iter6_reg;
        data_x_3_reg_3699_pp0_iter6_reg <= data_x_3_reg_3699;
        data_x_3_reg_3699_pp0_iter7_reg <= data_x_3_reg_3699_pp0_iter6_reg;
        data_y_2_reg_3694_pp0_iter6_reg <= data_y_2_reg_3694;
        data_y_2_reg_3694_pp0_iter7_reg <= data_y_2_reg_3694_pp0_iter6_reg;
        data_y_3_reg_3704_pp0_iter6_reg <= data_y_3_reg_3704;
        data_y_3_reg_3704_pp0_iter7_reg <= data_y_3_reg_3704_pp0_iter6_reg;
        tmp_4_reg_3601_pp0_iter5_reg <= tmp_4_reg_3601;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_4_2_reg_3785 <= grp_fu_1140_p_dout0;
        data_x_5_2_reg_3795 <= grp_fu_1148_p_dout0;
        data_y_3_2_reg_3775 <= grp_fu_1136_p_dout0;
        data_y_4_2_reg_3790 <= grp_fu_1144_p_dout0;
        sub11_reg_3769 <= grp_fu_1132_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        data_x_4_reg_3714 <= grp_fu_1132_p_dout0;
        data_x_5_reg_3724 <= grp_fu_1140_p_dout0;
        data_y_4_reg_3719 <= grp_fu_1136_p_dout0;
        mul291_1_reg_3729 <= grp_fu_1160_p_dout0;
        mul4_reg_3709 <= grp_fu_1156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_2_reg_3843 <= grp_fu_1136_p_dout0;
        data_x_7_2_reg_3853 <= grp_fu_1144_p_dout0;
        data_y_6_2_reg_3848 <= grp_fu_1140_p_dout0;
        data_y_6_reg_3833 <= grp_fu_1128_p_dout0;
        data_y_7_2_reg_3858 <= grp_fu_1148_p_dout0;
        data_y_7_reg_3838 <= grp_fu_1132_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_3823 <= grp_fu_1120_p_dout0;
        data_x_7_reg_3828 <= grp_fu_1124_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_3823_pp0_iter8_reg <= data_x_6_reg_3823;
        data_x_7_reg_3828_pp0_iter8_reg <= data_x_7_reg_3828;
        data_y_5_2_reg_3800_pp0_iter7_reg <= data_y_5_2_reg_3800;
        data_y_5_2_reg_3800_pp0_iter8_reg <= data_y_5_2_reg_3800_pp0_iter7_reg;
        tmp_2_reg_3504_pp0_iter5_reg <= tmp_2_reg_3504;
        zext_ln127_1_reg_2604[6 : 0] <= zext_ln127_1_fu_1441_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_y_5_2_reg_3800 <= grp_fu_1116_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        mul176_1_reg_3417 <= grp_fu_1160_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        mul1_reg_3384 <= grp_fu_1160_p_dout0;
        mul5_reg_3373 <= grp_fu_1152_p_dout0;
        mul_reg_3379 <= grp_fu_1156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        mul219_1_reg_3457 <= grp_fu_1152_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul2_reg_3679 <= grp_fu_1152_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        reg_1249 <= work_x_q1;
        reg_1253 <= work_x_q0;
        reg_1257 <= work_y_q1;
        reg_1261 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_1265 <= work_x_q1;
        reg_1269 <= work_x_q0;
        reg_1273 <= work_y_q1;
        reg_1277 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_1281 <= grp_fu_1116_p_dout0;
        reg_1285 <= grp_fu_1120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        reg_1289 <= grp_twiddles8_fu_1164_p_dout0_0;
        reg_1297 <= grp_twiddles8_fu_1164_p_dout0_1;
        reg_1305 <= grp_twiddles8_fu_1164_p_dout0_2;
        reg_1313 <= grp_twiddles8_fu_1164_p_dout0_3;
        reg_1321 <= grp_twiddles8_fu_1164_p_dout0_4;
        reg_1329 <= grp_twiddles8_fu_1164_p_dout0_5;
        reg_1337 <= grp_twiddles8_fu_1164_p_dout0_6;
        reg_1345 <= grp_twiddles8_fu_1164_p_dout0_7;
        reg_1351 <= grp_twiddles8_fu_1164_p_dout0_8;
        reg_1357 <= grp_twiddles8_fu_1164_p_dout0_9;
        reg_1363 <= grp_twiddles8_fu_1164_p_dout0_10;
        reg_1369 <= grp_twiddles8_fu_1164_p_dout0_11;
        reg_1375 <= grp_twiddles8_fu_1164_p_dout0_12;
        reg_1381 <= grp_twiddles8_fu_1164_p_dout0_13;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub10_reg_3521 <= grp_fu_1148_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        sub12_reg_3805 <= grp_fu_1144_p_dout0;
        sub294_1_reg_3811 <= grp_fu_1148_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        sub287_1_reg_3607 <= grp_fu_1148_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        sub299_1_reg_3817 <= grp_fu_1148_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub2_reg_3205_pp0_iter3_reg <= sub2_reg_3205;
        tmp_reg_3199_pp0_iter3_reg <= tmp_reg_3199;
        zext_ln127_2_reg_2630[6 : 0] <= zext_ln127_2_fu_1465_p1[6 : 0];
        zext_ln154_1_reg_3545[3 : 0] <= zext_ln154_1_fu_2403_p1[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter10_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter9_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter11_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter10_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter12_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter11_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter13_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter12_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter14_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter13_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter15_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter14_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter16_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter15_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter17_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter16_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter18_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter17_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter19_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter18_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter20_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter19_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter21_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter20_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter22_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter21_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter23_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter22_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter5_reg[3 : 0] <= zext_ln154_1_reg_3545[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter6_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter5_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter7_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter6_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter8_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter7_reg[3 : 0];
        zext_ln154_1_reg_3545_pp0_iter9_reg[3 : 0] <= zext_ln154_1_reg_3545_pp0_iter8_reg[3 : 0];
        zext_ln154_reg_3527[4 : 0] <= zext_ln154_fu_2398_p1[4 : 0];
        zext_ln154_reg_3527_pp0_iter10_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter9_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter11_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter10_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter12_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter11_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter13_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter12_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter14_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter13_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter15_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter14_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter16_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter15_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter17_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter16_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter18_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter17_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter19_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter18_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter20_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter19_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter21_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter20_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter22_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter21_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter23_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter22_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter5_reg[4 : 0] <= zext_ln154_reg_3527[4 : 0];
        zext_ln154_reg_3527_pp0_iter6_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter5_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter7_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter6_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter8_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter7_reg[4 : 0];
        zext_ln154_reg_3527_pp0_iter9_reg[4 : 0] <= zext_ln154_reg_3527_pp0_iter8_reg[4 : 0];
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_10_we0_local = 1'b1;
    end else begin
        DATA_x_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_11_we0_local = 1'b1;
    end else begin
        DATA_x_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_12_we0_local = 1'b1;
    end else begin
        DATA_x_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_13_we0_local = 1'b1;
    end else begin
        DATA_x_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_14_we0_local = 1'b1;
    end else begin
        DATA_x_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_15_we0_local = 1'b1;
    end else begin
        DATA_x_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_16_ce0_local = 1'b1;
    end else begin
        DATA_x_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2600_pp0_iter4_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_16_we0_local = 1'b1;
    end else begin
        DATA_x_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_17_ce0_local = 1'b1;
    end else begin
        DATA_x_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_17_we0_local = 1'b1;
    end else begin
        DATA_x_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_18_ce0_local = 1'b1;
    end else begin
        DATA_x_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_18_we0_local = 1'b1;
    end else begin
        DATA_x_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_19_ce0_local = 1'b1;
    end else begin
        DATA_x_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_19_we0_local = 1'b1;
    end else begin
        DATA_x_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_20_ce0_local = 1'b1;
    end else begin
        DATA_x_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_20_we0_local = 1'b1;
    end else begin
        DATA_x_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_21_ce0_local = 1'b1;
    end else begin
        DATA_x_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_21_we0_local = 1'b1;
    end else begin
        DATA_x_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_22_ce0_local = 1'b1;
    end else begin
        DATA_x_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_22_we0_local = 1'b1;
    end else begin
        DATA_x_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_23_ce0_local = 1'b1;
    end else begin
        DATA_x_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_23_we0_local = 1'b1;
    end else begin
        DATA_x_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_24_ce0_local = 1'b1;
    end else begin
        DATA_x_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2600_pp0_iter4_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_24_we0_local = 1'b1;
    end else begin
        DATA_x_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_25_ce0_local = 1'b1;
    end else begin
        DATA_x_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_25_we0_local = 1'b1;
    end else begin
        DATA_x_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_26_ce0_local = 1'b1;
    end else begin
        DATA_x_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_26_we0_local = 1'b1;
    end else begin
        DATA_x_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_27_ce0_local = 1'b1;
    end else begin
        DATA_x_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_27_we0_local = 1'b1;
    end else begin
        DATA_x_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_28_ce0_local = 1'b1;
    end else begin
        DATA_x_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_28_we0_local = 1'b1;
    end else begin
        DATA_x_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_29_ce0_local = 1'b1;
    end else begin
        DATA_x_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_29_we0_local = 1'b1;
    end else begin
        DATA_x_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_30_ce0_local = 1'b1;
    end else begin
        DATA_x_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_30_we0_local = 1'b1;
    end else begin
        DATA_x_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_31_ce0_local = 1'b1;
    end else begin
        DATA_x_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_31_we0_local = 1'b1;
    end else begin
        DATA_x_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2600_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_8_we0_local = 1'b1;
    end else begin
        DATA_x_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2600_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_9_we0_local = 1'b1;
    end else begin
        DATA_x_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2600_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_10_we0_local = 1'b1;
    end else begin
        DATA_y_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_11_we0_local = 1'b1;
    end else begin
        DATA_y_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_12_we0_local = 1'b1;
    end else begin
        DATA_y_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_13_we0_local = 1'b1;
    end else begin
        DATA_y_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_14_we0_local = 1'b1;
    end else begin
        DATA_y_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_15_we0_local = 1'b1;
    end else begin
        DATA_y_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_8_we0_local = 1'b1;
    end else begin
        DATA_y_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_9_we0_local = 1'b1;
    end else begin
        DATA_y_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_31_reg_2566 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (tmp_31_reg_2566_pp0_iter22_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
        ap_condition_exit_pp0_iter22_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter22_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter22_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to21 = 1'b1;
    end else begin
        ap_idle_pp0_0to21 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to23 = 1'b1;
    end else begin
        ap_idle_pp0_1to23 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_tid_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_7 = tid_fu_194;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1115_p0 = c0_x_6_reg_3307;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1115_p0 = c0_x_5_reg_2967;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1115_p0 = c0_x_69_fu_1822_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1115_p0 = c0_x_fu_1798_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1115_p0 = c0_x_71_fu_1745_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1115_p0 = c0_x_67_fu_1676_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1115_p0 = c0_x_70_fu_1588_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1115_p0 = c0_x_66_fu_1491_p1;
    end else begin
        grp_fu_1115_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1115_p1 = add2_reg_3211;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1115_p1 = add6_reg_2991;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1115_p1 = bitcast_ln133_1_fu_1828_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1115_p1 = bitcast_ln133_fu_1804_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1115_p1 = bitcast_ln135_1_fu_1770_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1115_p1 = bitcast_ln135_fu_1695_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1115_p1 = bitcast_ln134_1_fu_1625_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1115_p1 = bitcast_ln134_fu_1503_p1;
    end else begin
        grp_fu_1115_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1119_p0 = c0_y_6_reg_3313;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1119_p0 = c0_y_5_reg_2973;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1119_p0 = c0_y_69_fu_1834_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1119_p0 = c0_y_fu_1810_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1119_p0 = c0_y_71_fu_1776_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1119_p0 = c0_y_67_fu_1701_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1119_p0 = c0_y_70_fu_1647_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1119_p0 = c0_y_66_fu_1515_p1;
    end else begin
        grp_fu_1119_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1119_p1 = add3_reg_3217;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1119_p1 = add7_reg_2997;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1119_p1 = bitcast_ln142_1_fu_1840_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1119_p1 = bitcast_ln142_fu_1816_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1119_p1 = bitcast_ln144_1_fu_1782_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1119_p1 = bitcast_ln144_fu_1707_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1119_p1 = bitcast_ln143_1_fu_1659_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1119_p1 = bitcast_ln143_fu_1527_p1;
    end else begin
        grp_fu_1119_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_31_reg_2566 == 1'd0) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_31_reg_2566 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_31_reg_2566 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_31_reg_2566 == 1'd0) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_1123_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_1123_opcode = 2'd0;
    end else begin
        grp_fu_1123_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1123_p0 = mul_reg_3379;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1123_p0 = c0_x_9_reg_3355;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1123_p0 = c0_x_69_fu_1822_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1123_p0 = c0_x_fu_1798_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1123_p0 = c0_x_71_fu_1745_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1123_p0 = c0_x_67_fu_1676_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1123_p0 = c0_x_70_fu_1588_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1123_p0 = c0_x_66_fu_1491_p1;
    end else begin
        grp_fu_1123_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1123_p1 = bitcast_ln148_13_fu_2291_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1123_p1 = mul3_reg_3367;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1123_p1 = bitcast_ln133_1_fu_1828_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1123_p1 = bitcast_ln133_fu_1804_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1123_p1 = bitcast_ln135_1_fu_1770_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1123_p1 = bitcast_ln135_fu_1695_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1123_p1 = bitcast_ln134_1_fu_1625_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1123_p1 = bitcast_ln134_fu_1503_p1;
    end else begin
        grp_fu_1123_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1127_p0 = bitcast_ln148_15_fu_2325_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1127_p0 = c0_x_9_reg_3355;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1127_p0 = c0_y_69_fu_1834_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1127_p0 = c0_y_fu_1810_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1127_p0 = c0_y_71_fu_1776_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1127_p0 = c0_y_67_fu_1701_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1127_p0 = c0_y_70_fu_1647_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1127_p0 = c0_y_66_fu_1515_p1;
    end else begin
        grp_fu_1127_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1127_p1 = mul1_reg_3384;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1127_p1 = mul3_reg_3367;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1127_p1 = bitcast_ln142_1_fu_1840_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1127_p1 = bitcast_ln142_fu_1816_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1127_p1 = bitcast_ln144_1_fu_1782_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1127_p1 = bitcast_ln144_fu_1707_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1127_p1 = bitcast_ln143_1_fu_1659_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1127_p1 = bitcast_ln143_fu_1527_p1;
    end else begin
        grp_fu_1127_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_1131_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_31_reg_2566 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_31_reg_2566 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_1131_opcode = 2'd0;
    end else begin
        grp_fu_1131_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1131_p0 = bitcast_ln148_35_fu_2393_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1131_p0 = c0_y_9_reg_3361;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1131_p0 = c0_x_18_reg_3331;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1131_p0 = c0_x_21_reg_3155;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1131_p0 = c0_x_4_reg_3131;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1131_p0 = c0_x_15_reg_3025;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1131_p0 = c0_x_72_fu_1619_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1131_p0 = c0_x_68_fu_1497_p1;
    end else begin
        grp_fu_1131_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1131_p1 = mul219_1_reg_3457;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1131_p1 = mul5_reg_3373;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1131_p1 = add199_1_reg_3275;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1131_p1 = add111_1_reg_3107;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1131_p1 = add4_reg_3061;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1131_p1 = add127_1_reg_3049;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1131_p1 = bitcast_ln136_1_fu_1641_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1131_p1 = bitcast_ln136_fu_1509_p1;
    end else begin
        grp_fu_1131_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1135_p0 = c0_x_13_reg_3167_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1135_p0 = c0_x_20_reg_3389;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1135_p0 = c0_y_18_reg_3337;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1135_p0 = c0_y_21_reg_3161;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1135_p0 = c0_y_4_reg_3137;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1135_p0 = c0_y_15_reg_3031;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1135_p0 = c0_y_72_fu_1653_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1135_p0 = c0_y_68_fu_1521_p1;
    end else begin
        grp_fu_1135_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1135_p1 = sub157_1_reg_3435;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1135_p1 = mul170_1_reg_3401;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1135_p1 = add202_1_reg_3281;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1135_p1 = add114_1_reg_3113;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1135_p1 = add5_reg_3067;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1135_p1 = add130_1_reg_3055;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1135_p1 = bitcast_ln145_1_fu_1665_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1135_p1 = bitcast_ln145_fu_1533_p1;
    end else begin
        grp_fu_1135_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_31_reg_2566 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_31_reg_2566 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_1139_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_1139_opcode = 2'd0;
    end else begin
        grp_fu_1139_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1139_p0 = c0_y_23_reg_3655;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1139_p0 = c0_y_13_reg_3173_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1139_p0 = c0_x_20_reg_3389;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1139_p0 = mul6_reg_3223;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1139_p0 = c0_x_21_reg_3155;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1139_p0 = c0_x_4_reg_3131;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1139_p0 = c0_x_72_fu_1619_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1139_p0 = c0_x_68_fu_1497_p1;
    end else begin
        grp_fu_1139_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1139_p1 = add281_1_reg_3673;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1139_p1 = add162_1_reg_3441;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1139_p1 = mul170_1_reg_3401;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1139_p1 = bitcast_ln148_5_fu_2155_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1139_p1 = add111_1_reg_3107;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1139_p1 = add4_reg_3061;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1139_p1 = bitcast_ln136_1_fu_1641_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1139_p1 = bitcast_ln136_fu_1509_p1;
    end else begin
        grp_fu_1139_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_31_reg_2566 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_31_reg_2566 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_1143_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_1143_opcode = 2'd0;
    end else begin
        grp_fu_1143_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1143_p0 = c0_x_10_reg_3625_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1143_p0 = c0_x_7_reg_3319_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1143_p0 = c0_x_13_reg_3167_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1143_p0 = bitcast_ln148_7_fu_2189_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1143_p0 = c0_y_21_reg_3161;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1143_p0 = c0_y_4_reg_3137;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1143_p0 = c0_y_72_fu_1653_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1143_p0 = c0_y_68_fu_1521_p1;
    end else begin
        grp_fu_1143_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1143_p1 = sub11_reg_3769;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1143_p1 = sub4_reg_3577;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1143_p1 = sub157_1_reg_3435;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1143_p1 = mul9_reg_3228;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1143_p1 = add114_1_reg_3113;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1143_p1 = add5_reg_3067;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1143_p1 = bitcast_ln145_1_fu_1665_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1143_p1 = bitcast_ln145_fu_1533_p1;
    end else begin
        grp_fu_1143_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_1147_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001))) begin
        grp_fu_1147_opcode = 2'd0;
    end else begin
        grp_fu_1147_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1147_p0 = c0_x_10_reg_3625_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1147_p0 = c0_y_7_reg_3325_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1147_p0 = c0_y_13_reg_3173_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1147_p0 = c0_x_18_reg_3331;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1147_p0 = c0_x_6_reg_3307;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1147_p0 = mul154_1_reg_3265;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1147_p0 = tmp_1_3_reg_3037;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1147_p0 = tmp_1_reg_2979;
    end else begin
        grp_fu_1147_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1147_p1 = sub11_reg_3769;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1147_p1 = sub6_reg_3583;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1147_p1 = add162_1_reg_3441;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1147_p1 = add199_1_reg_3275;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1147_p1 = add2_reg_3211;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1147_p1 = bitcast_ln148_25_fu_2223_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1147_p1 = bitcast_ln148_21_fu_2015_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1147_p1 = bitcast_ln148_1_fu_1875_p1;
    end else begin
        grp_fu_1147_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_1151_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_1151_opcode = 2'd0;
    end else begin
        grp_fu_1151_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1151_p0 = c0_y_10_reg_3631_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1151_p0 = c0_x_7_reg_3319_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1151_p0 = c0_y_20_reg_3395;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1151_p0 = c0_y_18_reg_3337;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1151_p0 = c0_y_6_reg_3313;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1151_p0 = bitcast_ln148_27_fu_2257_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1151_p0 = bitcast_ln148_23_fu_2049_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1151_p0 = bitcast_ln148_3_fu_1909_p1;
    end else begin
        grp_fu_1151_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1151_p1 = sub12_reg_3805;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1151_p1 = sub4_reg_3577;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1151_p1 = mul176_1_reg_3417;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1151_p1 = add202_1_reg_3281;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1151_p1 = add3_reg_3217;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1151_p1 = mul161_1_reg_3270;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1151_p1 = sub104_1_reg_3043;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1151_p1 = sub3_reg_2985;
    end else begin
        grp_fu_1151_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_1155_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1155_opcode = 2'd0;
    end else begin
        grp_fu_1155_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1155_p0 = c0_y_10_reg_3631_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1155_p0 = mul2_reg_3679;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1155_p0 = c0_y_11_reg_3619;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1155_p0 = c0_x_11_reg_3613;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1155_p0 = c0_y_7_reg_3325_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1155_p0 = c0_x_8_reg_3143_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1155_p0 = bitcast_ln148_29_fu_2084_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1155_p0 = bitcast_ln148_9_fu_1944_p1;
    end else begin
        grp_fu_1155_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1155_p1 = sub12_reg_3805;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1155_p1 = bitcast_ln148_17_fu_2439_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1155_p1 = add10_reg_3589;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1155_p1 = add_reg_3498;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1155_p1 = sub6_reg_3583;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1155_p1 = sub9_reg_3423;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1155_p1 = bitcast_ln148_31_fu_2120_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1155_p1 = bitcast_ln148_11_fu_1980_p1;
    end else begin
        grp_fu_1155_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_1159_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1159_opcode = 2'd0;
    end else begin
        grp_fu_1159_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1159_p0 = c0_x_22_reg_3661_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1159_p0 = c0_y_19_reg_3349_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1159_p0 = c0_x_19_reg_3343_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1159_p0 = c0_y_11_reg_3619;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1159_p0 = c0_y_8_reg_3149_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1159_p0 = bitcast_ln148_29_fu_2084_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1159_p0 = bitcast_ln148_9_fu_1944_p1;
    end else begin
        grp_fu_1159_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1159_p1 = sub294_1_reg_3811;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1159_p1 = sub220_1_reg_3643;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1159_p1 = sub215_1_reg_3637;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1159_p1 = add10_reg_3589;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1159_p1 = add9_reg_3429;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1159_p1 = bitcast_ln148_31_fu_2120_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1159_p1 = bitcast_ln148_11_fu_1980_p1;
    end else begin
        grp_fu_1159_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1163_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_1163_opcode = 2'd0;
    end else begin
        grp_fu_1163_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1163_p0 = c0_y_22_reg_3667_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1163_p0 = c0_x_23_reg_3649;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1163_p0 = c0_y_19_reg_3349_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1163_p0 = c0_x_11_reg_3613;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1163_p0 = c0_x_8_reg_3143_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1163_p0 = c0_x_15_reg_3025;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1163_p0 = c0_x_5_reg_2967;
    end else begin
        grp_fu_1163_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1163_p1 = sub299_1_reg_3817;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1163_p1 = add278_1_reg_3595;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1163_p1 = sub220_1_reg_3643;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1163_p1 = add_reg_3498;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1163_p1 = sub9_reg_3423;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1163_p1 = add127_1_reg_3049;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1163_p1 = add6_reg_2991;
    end else begin
        grp_fu_1163_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1167_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_1167_opcode = 2'd0;
    end else begin
        grp_fu_1167_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1167_p0 = c0_x_22_reg_3661_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1167_p0 = bitcast_ln148_19_fu_2473_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1167_p0 = c0_y_23_reg_3655;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1167_p0 = c0_x_19_reg_3343_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1167_p0 = c0_y_8_reg_3149_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1167_p0 = c0_y_15_reg_3031;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1167_p0 = c0_y_5_reg_2973;
    end else begin
        grp_fu_1167_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1167_p1 = sub294_1_reg_3811;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1167_p1 = mul4_reg_3709;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1167_p1 = add281_1_reg_3673;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1167_p1 = sub215_1_reg_3637;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1167_p1 = add9_reg_3429;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1167_p1 = add130_1_reg_3055;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1167_p1 = add7_reg_2997;
    end else begin
        grp_fu_1167_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1171_p0 = c0_y_22_reg_3667_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1171_p0 = bitcast_ln148_39_fu_2541_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1171_p0 = mul291_1_reg_3729;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1171_p0 = c0_x_23_reg_3649;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1171_p0 = mul212_1_reg_3447;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1171_p0 = c0_y_20_reg_3395;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1171_p0 = c0_y_9_reg_3361;
    end else begin
        grp_fu_1171_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1171_p1 = sub299_1_reg_3817;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1171_p1 = mul298_1_reg_3764;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1171_p1 = bitcast_ln148_37_fu_2507_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1171_p1 = add278_1_reg_3595;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1171_p1 = bitcast_ln148_33_fu_2359_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1171_p1 = mul176_1_reg_3417;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1171_p1 = mul5_reg_3373;
    end else begin
        grp_fu_1171_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1175_p0 = sub287_1_reg_3607;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1175_p0 = tmp_2_reg_3504;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1175_p0 = sub208_1_reg_3259;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1175_p0 = sub143_1_reg_3233;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1175_p0 = add1_reg_3194;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1175_p0 = sub8_reg_3179;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1175_p0 = tmp_1_4_reg_3119;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1175_p0 = tmp_1_1_reg_3073;
    end else begin
        grp_fu_1175_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_1175_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_1175_p1 = 64'd0;
    end else begin
        grp_fu_1175_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1180_p0 = sub10_reg_3521;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1180_p0 = add149_1_reg_3238;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1180_p0 = tmp_reg_3199;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1180_p0 = add8_reg_3184;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1180_p0 = sub120_1_reg_3125;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1180_p0 = sub5_reg_3079;
    end else begin
        grp_fu_1180_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_1180_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_1180_p1 = 64'd0;
    end else begin
        grp_fu_1180_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1187_p0 = tmp_4_reg_3601;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1187_p0 = tmp_3_reg_3253;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1187_p0 = add175_1_reg_3248;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1187_p0 = sub169_1_reg_3243;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1187_p0 = sub2_reg_3205;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1187_p0 = sub1_reg_3189;
    end else begin
        grp_fu_1187_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_1187_p1 = 64'd0;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_1187_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_1187_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_x_1_read = data_x_1_2_reg_3477_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_x_1_read = data_x_1_reg_3462_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1082_a_x_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_x_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_x_2_read = data_x_2_2_reg_3744_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_x_2_read = data_x_2_reg_3689_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1082_a_x_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_x_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_x_3_read = data_x_3_2_reg_3754_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_x_3_read = data_x_3_reg_3699_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1082_a_x_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_x_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_x_4_read = data_x_4_2_reg_3785_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_x_4_read = data_x_4_reg_3714_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1082_a_x_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_x_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_x_5_read = data_x_5_2_reg_3795_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_x_5_read = data_x_5_reg_3724_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1082_a_x_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_x_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_x_6_read = data_x_6_2_reg_3843;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_x_6_read = data_x_6_reg_3823_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_1082_a_x_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_x_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_x_7_read = data_x_7_2_reg_3853;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_x_7_read = data_x_7_reg_3828_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_1082_a_x_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_x_7_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_y_1_read = data_y_1_2_reg_3482_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_y_1_read = data_y_1_reg_3467_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1082_a_y_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_y_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_y_2_read = data_y_2_2_reg_3749_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_y_2_read = data_y_2_reg_3694_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1082_a_y_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_y_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_y_3_read = data_y_3_2_reg_3775_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_y_3_read = data_y_3_reg_3704_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1082_a_y_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_y_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_y_4_read = data_y_4_2_reg_3790_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_y_4_read = data_y_4_reg_3719_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1082_a_y_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_y_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_y_5_read = data_y_5_2_reg_3800_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_y_5_read = data_y_5_reg_3739_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1082_a_y_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_y_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_y_6_read = data_y_6_2_reg_3848;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_y_6_read = data_y_6_reg_3833;
        end else begin
            grp_twiddles8_fu_1082_a_y_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_y_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_a_y_7_read = data_y_7_2_reg_3858;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_a_y_7_read = data_y_7_reg_3838;
        end else begin
            grp_twiddles8_fu_1082_a_y_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_a_y_7_read = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001_ignoreCallOp1578)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp1575)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001_ignoreCallOp1582)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001_ignoreCallOp1580)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp1576)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp1588)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp1586)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001_ignoreCallOp1584)))) begin
        grp_twiddles8_fu_1082_ap_ce = 1'b1;
    end else begin
        grp_twiddles8_fu_1082_ap_ce = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1082_i = or_ln3_reg_2870_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1082_i = trunc_ln127_1_reg_2570_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_1082_i = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1082_i = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_x_address0_local = zext_ln133_2_fu_1764_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address0_local = zext_ln133_fu_1689_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address0_local = zext_ln135_1_fu_1635_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address0_local = zext_ln135_fu_1582_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address0_local = zext_ln136_1_fu_1559_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address0_local = zext_ln132_1_fu_1485_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address0_local = zext_ln136_fu_1459_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address0_local = zext_ln132_fu_1429_p1;
        end else begin
            work_x_address0_local = 'bx;
        end
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_x_address1_local = zext_ln129_fu_1739_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address1_local = zext_ln127_fu_1671_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address1_local = zext_ln131_1_fu_1613_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address1_local = zext_ln131_fu_1572_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address1_local = zext_ln134_1_fu_1544_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address1_local = zext_ln130_1_fu_1474_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address1_local = zext_ln134_fu_1450_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address1_local = zext_ln130_fu_1419_p1;
        end else begin
            work_x_address1_local = 'bx;
        end
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_y_address0_local = zext_ln133_2_fu_1764_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address0_local = zext_ln133_fu_1689_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address0_local = zext_ln135_1_fu_1635_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address0_local = zext_ln135_fu_1582_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address0_local = zext_ln136_1_fu_1559_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address0_local = zext_ln132_1_fu_1485_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address0_local = zext_ln136_fu_1459_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address0_local = zext_ln132_fu_1429_p1;
        end else begin
            work_y_address0_local = 'bx;
        end
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_y_address1_local = zext_ln129_fu_1739_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address1_local = zext_ln127_fu_1671_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address1_local = zext_ln131_1_fu_1613_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address1_local = zext_ln131_fu_1572_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address1_local = zext_ln134_1_fu_1544_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address1_local = zext_ln130_1_fu_1474_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address1_local = zext_ln134_fu_1450_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address1_local = zext_ln130_fu_1419_p1;
        end else begin
            work_y_address1_local = 'bx;
        end
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to23 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_10_address0 = DATA_x_10_addr_reg_3873;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_10_d0 = reg_1297;
assign DATA_x_10_we0 = DATA_x_10_we0_local;
assign DATA_x_11_address0 = DATA_x_11_addr_reg_3883;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_11_d0 = reg_1305;
assign DATA_x_11_we0 = DATA_x_11_we0_local;
assign DATA_x_12_address0 = DATA_x_12_addr_reg_3893;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_12_d0 = reg_1313;
assign DATA_x_12_we0 = DATA_x_12_we0_local;
assign DATA_x_13_address0 = DATA_x_13_addr_reg_3903;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_13_d0 = reg_1321;
assign DATA_x_13_we0 = DATA_x_13_we0_local;
assign DATA_x_14_address0 = DATA_x_14_addr_reg_3913;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_14_d0 = reg_1329;
assign DATA_x_14_we0 = DATA_x_14_we0_local;
assign DATA_x_15_address0 = DATA_x_15_addr_reg_3923;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_15_d0 = reg_1337;
assign DATA_x_15_we0 = DATA_x_15_we0_local;
assign DATA_x_16_address0 = zext_ln154_1_fu_2403_p1;
assign DATA_x_16_ce0 = DATA_x_16_ce0_local;
assign DATA_x_16_d0 = data_x_0_reg_3487;
assign DATA_x_16_we0 = DATA_x_16_we0_local;
assign DATA_x_17_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_17_ce0 = DATA_x_17_ce0_local;
assign DATA_x_17_d0 = reg_1289;
assign DATA_x_17_we0 = DATA_x_17_we0_local;
assign DATA_x_18_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_18_ce0 = DATA_x_18_ce0_local;
assign DATA_x_18_d0 = reg_1297;
assign DATA_x_18_we0 = DATA_x_18_we0_local;
assign DATA_x_19_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_19_ce0 = DATA_x_19_ce0_local;
assign DATA_x_19_d0 = reg_1305;
assign DATA_x_19_we0 = DATA_x_19_we0_local;
assign DATA_x_1_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = reg_1289;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_20_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_20_ce0 = DATA_x_20_ce0_local;
assign DATA_x_20_d0 = reg_1313;
assign DATA_x_20_we0 = DATA_x_20_we0_local;
assign DATA_x_21_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_21_ce0 = DATA_x_21_ce0_local;
assign DATA_x_21_d0 = reg_1321;
assign DATA_x_21_we0 = DATA_x_21_we0_local;
assign DATA_x_22_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_22_ce0 = DATA_x_22_ce0_local;
assign DATA_x_22_d0 = reg_1329;
assign DATA_x_22_we0 = DATA_x_22_we0_local;
assign DATA_x_23_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_23_ce0 = DATA_x_23_ce0_local;
assign DATA_x_23_d0 = reg_1337;
assign DATA_x_23_we0 = DATA_x_23_we0_local;
assign DATA_x_24_address0 = zext_ln154_1_fu_2403_p1;
assign DATA_x_24_ce0 = DATA_x_24_ce0_local;
assign DATA_x_24_d0 = data_x_0_1_reg_3510;
assign DATA_x_24_we0 = DATA_x_24_we0_local;
assign DATA_x_25_address0 = DATA_x_25_addr_reg_3868;
assign DATA_x_25_ce0 = DATA_x_25_ce0_local;
assign DATA_x_25_d0 = reg_1289;
assign DATA_x_25_we0 = DATA_x_25_we0_local;
assign DATA_x_26_address0 = DATA_x_26_addr_reg_3878;
assign DATA_x_26_ce0 = DATA_x_26_ce0_local;
assign DATA_x_26_d0 = reg_1297;
assign DATA_x_26_we0 = DATA_x_26_we0_local;
assign DATA_x_27_address0 = DATA_x_27_addr_reg_3888;
assign DATA_x_27_ce0 = DATA_x_27_ce0_local;
assign DATA_x_27_d0 = reg_1305;
assign DATA_x_27_we0 = DATA_x_27_we0_local;
assign DATA_x_28_address0 = DATA_x_28_addr_reg_3898;
assign DATA_x_28_ce0 = DATA_x_28_ce0_local;
assign DATA_x_28_d0 = reg_1313;
assign DATA_x_28_we0 = DATA_x_28_we0_local;
assign DATA_x_29_address0 = DATA_x_29_addr_reg_3908;
assign DATA_x_29_ce0 = DATA_x_29_ce0_local;
assign DATA_x_29_d0 = reg_1321;
assign DATA_x_29_we0 = DATA_x_29_we0_local;
assign DATA_x_2_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = reg_1297;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_30_address0 = DATA_x_30_addr_reg_3918;
assign DATA_x_30_ce0 = DATA_x_30_ce0_local;
assign DATA_x_30_d0 = reg_1329;
assign DATA_x_30_we0 = DATA_x_30_we0_local;
assign DATA_x_31_address0 = DATA_x_31_addr_reg_3928;
assign DATA_x_31_ce0 = DATA_x_31_ce0_local;
assign DATA_x_31_d0 = reg_1337;
assign DATA_x_31_we0 = DATA_x_31_we0_local;
assign DATA_x_3_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = reg_1305;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = reg_1313;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = reg_1321;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = reg_1329;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = zext_ln154_1_reg_3545_pp0_iter23_reg;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = reg_1337;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_8_address0 = zext_ln154_1_fu_2403_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_8_d0 = data_x_0_1_reg_3510;
assign DATA_x_8_we0 = DATA_x_8_we0_local;
assign DATA_x_9_address0 = DATA_x_9_addr_reg_3863;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_9_d0 = reg_1289;
assign DATA_x_9_we0 = DATA_x_9_we0_local;
assign DATA_x_address0 = zext_ln154_1_fu_2403_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_d0 = data_x_0_reg_3487;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_y_10_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_10_d0 = reg_1351;
assign DATA_y_10_we0 = DATA_y_10_we0_local;
assign DATA_y_11_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_11_d0 = reg_1357;
assign DATA_y_11_we0 = DATA_y_11_we0_local;
assign DATA_y_12_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_12_d0 = reg_1363;
assign DATA_y_12_we0 = DATA_y_12_we0_local;
assign DATA_y_13_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_13_d0 = reg_1369;
assign DATA_y_13_we0 = DATA_y_13_we0_local;
assign DATA_y_14_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_14_d0 = reg_1375;
assign DATA_y_14_we0 = DATA_y_14_we0_local;
assign DATA_y_15_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_15_d0 = reg_1381;
assign DATA_y_15_we0 = DATA_y_15_we0_local;
assign DATA_y_1_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_1345;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_2_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_1351;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_3_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_1357;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_1363;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_1369;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_1375;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_1381;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_8_address0 = zext_ln154_fu_2398_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_8_d0 = data_y_0_1_reg_3516;
assign DATA_y_8_we0 = DATA_y_8_we0_local;
assign DATA_y_9_address0 = zext_ln154_reg_3527_pp0_iter23_reg;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_9_d0 = reg_1345;
assign DATA_y_9_we0 = DATA_y_9_we0_local;
assign DATA_y_address0 = zext_ln154_fu_2398_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = data_y_0_reg_3493;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln127_fu_1788_p2 = (tid_7_reg_2553 + 7'd2);
assign add_ln130_fu_1468_p2 = (zext_ln127_2_fu_1465_p1 + 8'd65);
assign add_ln132_fu_1480_p2 = (zext_ln127_1_reg_2604 + 9'd193);
assign add_ln134_1_fu_1539_p2 = ($signed(zext_ln127_1_reg_2604) + $signed(9'd321));
assign add_ln134_fu_1444_p2 = ($signed(zext_ln127_1_fu_1441_p1) + $signed(9'd320));
assign add_ln136_fu_1550_p2 = ($signed(tid_7_reg_2553) + $signed(7'd65));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001_ignoreCallOp1586 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001_ignoreCallOp1588 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001_ignoreCallOp1575 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp1575 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001_ignoreCallOp1576 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp1577 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001_ignoreCallOp1578 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001_ignoreCallOp1580 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001_ignoreCallOp1582 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001_ignoreCallOp1584 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bit_sel10_fu_2094_p3 = bitcast_ln148_30_fu_2090_p1[64'd63];
assign bit_sel11_fu_2265_p3 = bitcast_ln148_12_fu_2262_p1[64'd63];
assign bit_sel12_fu_2299_p3 = bitcast_ln148_14_fu_2296_p1[64'd63];
assign bit_sel13_fu_2058_p3 = bitcast_ln148_28_fu_2054_p1[64'd63];
assign bit_sel14_fu_2413_p3 = bitcast_ln148_16_fu_2410_p1[64'd63];
assign bit_sel15_fu_2447_p3 = bitcast_ln148_18_fu_2444_p1[64'd63];
assign bit_sel16_fu_2231_p3 = bitcast_ln148_26_fu_2228_p1[64'd63];
assign bit_sel17_fu_1989_p3 = bitcast_ln148_20_fu_1986_p1[64'd63];
assign bit_sel18_fu_2023_p3 = bitcast_ln148_22_fu_2020_p1[64'd63];
assign bit_sel19_fu_2197_p3 = bitcast_ln148_24_fu_2194_p1[64'd63];
assign bit_sel1_fu_2481_p3 = bitcast_ln148_36_fu_2478_p1[64'd63];
assign bit_sel2_fu_1849_p3 = bitcast_ln148_fu_1846_p1[64'd63];
assign bit_sel3_fu_1883_p3 = bitcast_ln148_2_fu_1880_p1[64'd63];
assign bit_sel4_fu_2367_p3 = bitcast_ln148_34_fu_2364_p1[64'd63];
assign bit_sel5_fu_2129_p3 = bitcast_ln148_4_fu_2126_p1[64'd63];
assign bit_sel6_fu_2163_p3 = bitcast_ln148_6_fu_2160_p1[64'd63];
assign bit_sel7_fu_2333_p3 = bitcast_ln148_32_fu_2330_p1[64'd63];
assign bit_sel8_fu_1918_p3 = bitcast_ln148_8_fu_1914_p1[64'd63];
assign bit_sel9_fu_1954_p3 = bitcast_ln148_10_fu_1950_p1[64'd63];
assign bit_sel_fu_2515_p3 = bitcast_ln148_38_fu_2512_p1[64'd63];
assign bitcast_ln133_1_fu_1828_p1 = reg_1253;
assign bitcast_ln133_fu_1804_p1 = reg_1253;
assign bitcast_ln134_1_fu_1625_p1 = reg_1265;
assign bitcast_ln134_fu_1503_p1 = reg_1265;
assign bitcast_ln135_1_fu_1770_p1 = reg_1253;
assign bitcast_ln135_fu_1695_p1 = reg_1253;
assign bitcast_ln136_1_fu_1641_p1 = reg_1269;
assign bitcast_ln136_fu_1509_p1 = reg_1269;
assign bitcast_ln142_1_fu_1840_p1 = reg_1261;
assign bitcast_ln142_fu_1816_p1 = reg_1261;
assign bitcast_ln143_1_fu_1659_p1 = reg_1273;
assign bitcast_ln143_fu_1527_p1 = reg_1273;
assign bitcast_ln144_1_fu_1782_p1 = reg_1261;
assign bitcast_ln144_fu_1707_p1 = reg_1261;
assign bitcast_ln145_1_fu_1665_p1 = reg_1277;
assign bitcast_ln145_fu_1533_p1 = reg_1277;
assign bitcast_ln148_10_fu_1950_p1 = reg_1285;
assign bitcast_ln148_11_fu_1980_p1 = xor_ln148_5_fu_1972_p3;
assign bitcast_ln148_12_fu_2262_p1 = sub2_reg_3205_pp0_iter3_reg;
assign bitcast_ln148_13_fu_2291_p1 = xor_ln148_6_fu_2283_p3;
assign bitcast_ln148_14_fu_2296_p1 = tmp_reg_3199_pp0_iter3_reg;
assign bitcast_ln148_15_fu_2325_p1 = xor_ln148_7_fu_2317_p3;
assign bitcast_ln148_16_fu_2410_p1 = sub10_reg_3521;
assign bitcast_ln148_17_fu_2439_p1 = xor_ln148_8_fu_2431_p3;
assign bitcast_ln148_18_fu_2444_p1 = tmp_2_reg_3504_pp0_iter5_reg;
assign bitcast_ln148_19_fu_2473_p1 = xor_ln148_9_fu_2465_p3;
assign bitcast_ln148_1_fu_1875_p1 = xor_ln1_fu_1867_p3;
assign bitcast_ln148_20_fu_1986_p1 = sub104_1_reg_3043;
assign bitcast_ln148_21_fu_2015_p1 = xor_ln148_s_fu_2007_p3;
assign bitcast_ln148_22_fu_2020_p1 = tmp_1_3_reg_3037;
assign bitcast_ln148_23_fu_2049_p1 = xor_ln148_10_fu_2041_p3;
assign bitcast_ln148_24_fu_2194_p1 = sub120_1_reg_3125;
assign bitcast_ln148_25_fu_2223_p1 = xor_ln148_11_fu_2215_p3;
assign bitcast_ln148_26_fu_2228_p1 = tmp_1_4_reg_3119;
assign bitcast_ln148_27_fu_2257_p1 = xor_ln148_12_fu_2249_p3;
assign bitcast_ln148_28_fu_2054_p1 = reg_1281;
assign bitcast_ln148_29_fu_2084_p1 = xor_ln148_13_fu_2076_p3;
assign bitcast_ln148_2_fu_1880_p1 = tmp_1_reg_2979;
assign bitcast_ln148_30_fu_2090_p1 = reg_1285;
assign bitcast_ln148_31_fu_2120_p1 = xor_ln148_14_fu_2112_p3;
assign bitcast_ln148_32_fu_2330_p1 = sub208_1_reg_3259_pp0_iter3_reg;
assign bitcast_ln148_33_fu_2359_p1 = xor_ln148_15_fu_2351_p3;
assign bitcast_ln148_34_fu_2364_p1 = tmp_3_reg_3253_pp0_iter3_reg;
assign bitcast_ln148_35_fu_2393_p1 = xor_ln148_16_fu_2385_p3;
assign bitcast_ln148_36_fu_2478_p1 = sub287_1_reg_3607_pp0_iter5_reg;
assign bitcast_ln148_37_fu_2507_p1 = xor_ln148_17_fu_2499_p3;
assign bitcast_ln148_38_fu_2512_p1 = tmp_4_reg_3601_pp0_iter5_reg;
assign bitcast_ln148_39_fu_2541_p1 = xor_ln148_18_fu_2533_p3;
assign bitcast_ln148_3_fu_1909_p1 = xor_ln148_1_fu_1901_p3;
assign bitcast_ln148_4_fu_2126_p1 = sub5_reg_3079_pp0_iter2_reg;
assign bitcast_ln148_5_fu_2155_p1 = xor_ln148_2_fu_2147_p3;
assign bitcast_ln148_6_fu_2160_p1 = tmp_1_1_reg_3073_pp0_iter2_reg;
assign bitcast_ln148_7_fu_2189_p1 = xor_ln148_3_fu_2181_p3;
assign bitcast_ln148_8_fu_1914_p1 = reg_1281;
assign bitcast_ln148_9_fu_1944_p1 = xor_ln148_4_fu_1936_p3;
assign bitcast_ln148_fu_1846_p1 = sub3_reg_2985;
assign c0_x_66_fu_1491_p1 = reg_1249;
assign c0_x_67_fu_1676_p1 = reg_1249;
assign c0_x_68_fu_1497_p1 = reg_1253;
assign c0_x_69_fu_1822_p1 = reg_1249;
assign c0_x_70_fu_1588_p1 = reg_1249;
assign c0_x_71_fu_1745_p1 = reg_1249;
assign c0_x_72_fu_1619_p1 = reg_1253;
assign c0_x_fu_1798_p1 = reg_1249;
assign c0_y_66_fu_1515_p1 = reg_1257;
assign c0_y_67_fu_1701_p1 = reg_1257;
assign c0_y_68_fu_1521_p1 = reg_1261;
assign c0_y_69_fu_1834_p1 = reg_1257;
assign c0_y_70_fu_1647_p1 = reg_1257;
assign c0_y_71_fu_1776_p1 = reg_1257;
assign c0_y_72_fu_1653_p1 = reg_1261;
assign c0_y_fu_1810_p1 = reg_1257;
assign grp_fu_1092_p_ce = 1'b1;
assign grp_fu_1092_p_din0 = grp_fu_1115_p0;
assign grp_fu_1092_p_din1 = grp_fu_1115_p1;
assign grp_fu_1092_p_opcode = 2'd0;
assign grp_fu_1096_p_ce = 1'b1;
assign grp_fu_1096_p_din0 = grp_fu_1119_p0;
assign grp_fu_1096_p_din1 = grp_fu_1119_p1;
assign grp_fu_1096_p_opcode = 2'd0;
assign grp_fu_1100_p_ce = 1'b1;
assign grp_fu_1100_p_din0 = grp_fu_1123_p0;
assign grp_fu_1100_p_din1 = grp_fu_1123_p1;
assign grp_fu_1100_p_opcode = grp_fu_1123_opcode;
assign grp_fu_1104_p_ce = 1'b1;
assign grp_fu_1104_p_din0 = grp_fu_1127_p0;
assign grp_fu_1104_p_din1 = grp_fu_1127_p1;
assign grp_fu_1104_p_opcode = 2'd1;
assign grp_fu_1108_p_ce = 1'b1;
assign grp_fu_1108_p_din0 = grp_fu_1131_p0;
assign grp_fu_1108_p_din1 = grp_fu_1131_p1;
assign grp_fu_1108_p_opcode = grp_fu_1131_opcode;
assign grp_fu_1112_p_ce = 1'b1;
assign grp_fu_1112_p_din0 = grp_fu_1135_p0;
assign grp_fu_1112_p_din1 = grp_fu_1135_p1;
assign grp_fu_1112_p_opcode = 2'd0;
assign grp_fu_1116_p_ce = 1'b1;
assign grp_fu_1116_p_din0 = grp_fu_1139_p0;
assign grp_fu_1116_p_din1 = grp_fu_1139_p1;
assign grp_fu_1116_p_opcode = grp_fu_1139_opcode;
assign grp_fu_1120_p_ce = 1'b1;
assign grp_fu_1120_p_din0 = grp_fu_1143_p0;
assign grp_fu_1120_p_din1 = grp_fu_1143_p1;
assign grp_fu_1120_p_opcode = grp_fu_1143_opcode;
assign grp_fu_1124_p_ce = 1'b1;
assign grp_fu_1124_p_din0 = grp_fu_1147_p0;
assign grp_fu_1124_p_din1 = grp_fu_1147_p1;
assign grp_fu_1124_p_opcode = grp_fu_1147_opcode;
assign grp_fu_1128_p_ce = 1'b1;
assign grp_fu_1128_p_din0 = grp_fu_1151_p0;
assign grp_fu_1128_p_din1 = grp_fu_1151_p1;
assign grp_fu_1128_p_opcode = grp_fu_1151_opcode;
assign grp_fu_1132_p_ce = 1'b1;
assign grp_fu_1132_p_din0 = grp_fu_1155_p0;
assign grp_fu_1132_p_din1 = grp_fu_1155_p1;
assign grp_fu_1132_p_opcode = grp_fu_1155_opcode;
assign grp_fu_1136_p_ce = 1'b1;
assign grp_fu_1136_p_din0 = grp_fu_1159_p0;
assign grp_fu_1136_p_din1 = grp_fu_1159_p1;
assign grp_fu_1136_p_opcode = grp_fu_1159_opcode;
assign grp_fu_1140_p_ce = 1'b1;
assign grp_fu_1140_p_din0 = grp_fu_1163_p0;
assign grp_fu_1140_p_din1 = grp_fu_1163_p1;
assign grp_fu_1140_p_opcode = grp_fu_1163_opcode;
assign grp_fu_1144_p_ce = 1'b1;
assign grp_fu_1144_p_din0 = grp_fu_1167_p0;
assign grp_fu_1144_p_din1 = grp_fu_1167_p1;
assign grp_fu_1144_p_opcode = grp_fu_1167_opcode;
assign grp_fu_1148_p_ce = 1'b1;
assign grp_fu_1148_p_din0 = grp_fu_1171_p0;
assign grp_fu_1148_p_din1 = grp_fu_1171_p1;
assign grp_fu_1148_p_opcode = 2'd1;
assign grp_fu_1152_p_ce = 1'b1;
assign grp_fu_1152_p_din0 = grp_fu_1175_p0;
assign grp_fu_1152_p_din1 = grp_fu_1175_p1;
assign grp_fu_1156_p_ce = 1'b1;
assign grp_fu_1156_p_din0 = grp_fu_1180_p0;
assign grp_fu_1156_p_din1 = grp_fu_1180_p1;
assign grp_fu_1160_p_ce = 1'b1;
assign grp_fu_1160_p_din0 = grp_fu_1187_p0;
assign grp_fu_1160_p_din1 = grp_fu_1187_p1;
assign grp_twiddles8_fu_1164_p_ce = grp_twiddles8_fu_1082_ap_ce;
assign grp_twiddles8_fu_1164_p_din1 = grp_twiddles8_fu_1082_a_x_1_read;
assign grp_twiddles8_fu_1164_p_din10 = grp_twiddles8_fu_1082_a_y_3_read;
assign grp_twiddles8_fu_1164_p_din11 = grp_twiddles8_fu_1082_a_y_4_read;
assign grp_twiddles8_fu_1164_p_din12 = grp_twiddles8_fu_1082_a_y_5_read;
assign grp_twiddles8_fu_1164_p_din13 = grp_twiddles8_fu_1082_a_y_6_read;
assign grp_twiddles8_fu_1164_p_din14 = grp_twiddles8_fu_1082_a_y_7_read;
assign grp_twiddles8_fu_1164_p_din15 = grp_twiddles8_fu_1082_i;
assign grp_twiddles8_fu_1164_p_din16 = 10'd512;
assign grp_twiddles8_fu_1164_p_din2 = grp_twiddles8_fu_1082_a_x_2_read;
assign grp_twiddles8_fu_1164_p_din3 = grp_twiddles8_fu_1082_a_x_3_read;
assign grp_twiddles8_fu_1164_p_din4 = grp_twiddles8_fu_1082_a_x_4_read;
assign grp_twiddles8_fu_1164_p_din5 = grp_twiddles8_fu_1082_a_x_5_read;
assign grp_twiddles8_fu_1164_p_din6 = grp_twiddles8_fu_1082_a_x_6_read;
assign grp_twiddles8_fu_1164_p_din7 = grp_twiddles8_fu_1082_a_x_7_read;
assign grp_twiddles8_fu_1164_p_din8 = grp_twiddles8_fu_1082_a_y_1_read;
assign grp_twiddles8_fu_1164_p_din9 = grp_twiddles8_fu_1082_a_y_2_read;
assign icmp_ln154_fu_1435_p2 = ((trunc_ln127_fu_1403_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1713_p4 = {{tid_7_reg_2553[5:1]}};
assign or_ln3_fu_1731_p3 = {{lshr_ln_fu_1713_p4}, {1'd1}};
assign sext_ln132_fu_1425_p1 = zext_ln130_cast_fu_1411_p3;
assign sext_ln135_1_fu_1631_p1 = zext_ln131_1_cast_fu_1603_p4;
assign sext_ln135_fu_1578_p1 = zext_ln131_cast_fu_1565_p3;
assign sext_ln136_1_fu_1555_p1 = $signed(add_ln136_fu_1550_p2);
assign sext_ln136_fu_1456_p1 = zext_ln130_cast_reg_2575;
assign tmp_31_fu_1395_p3 = ap_sig_allocacmp_tid_7[32'd6];
assign tmp_s_fu_1594_p4 = {{tid_7_reg_2553[6:1]}};
assign trunc_ln127_1_fu_1407_p1 = ap_sig_allocacmp_tid_7[5:0];
assign trunc_ln127_fu_1403_p1 = ap_sig_allocacmp_tid_7[1:0];
assign trunc_ln148_10_fu_2003_p1 = bitcast_ln148_20_fu_1986_p1[62:0];
assign trunc_ln148_11_fu_2037_p1 = bitcast_ln148_22_fu_2020_p1[62:0];
assign trunc_ln148_12_fu_2211_p1 = bitcast_ln148_24_fu_2194_p1[62:0];
assign trunc_ln148_13_fu_2245_p1 = bitcast_ln148_26_fu_2228_p1[62:0];
assign trunc_ln148_14_fu_2072_p1 = bitcast_ln148_28_fu_2054_p1[62:0];
assign trunc_ln148_15_fu_2108_p1 = bitcast_ln148_30_fu_2090_p1[62:0];
assign trunc_ln148_16_fu_2347_p1 = bitcast_ln148_32_fu_2330_p1[62:0];
assign trunc_ln148_17_fu_2381_p1 = bitcast_ln148_34_fu_2364_p1[62:0];
assign trunc_ln148_18_fu_2495_p1 = bitcast_ln148_36_fu_2478_p1[62:0];
assign trunc_ln148_19_fu_2529_p1 = bitcast_ln148_38_fu_2512_p1[62:0];
assign trunc_ln148_1_fu_1897_p1 = bitcast_ln148_2_fu_1880_p1[62:0];
assign trunc_ln148_2_fu_2143_p1 = bitcast_ln148_4_fu_2126_p1[62:0];
assign trunc_ln148_3_fu_2177_p1 = bitcast_ln148_6_fu_2160_p1[62:0];
assign trunc_ln148_4_fu_1932_p1 = bitcast_ln148_8_fu_1914_p1[62:0];
assign trunc_ln148_5_fu_1968_p1 = bitcast_ln148_10_fu_1950_p1[62:0];
assign trunc_ln148_6_fu_2279_p1 = bitcast_ln148_12_fu_2262_p1[62:0];
assign trunc_ln148_7_fu_2313_p1 = bitcast_ln148_14_fu_2296_p1[62:0];
assign trunc_ln148_8_fu_2427_p1 = bitcast_ln148_16_fu_2410_p1[62:0];
assign trunc_ln148_9_fu_2461_p1 = bitcast_ln148_18_fu_2444_p1[62:0];
assign trunc_ln148_fu_1863_p1 = bitcast_ln148_fu_1846_p1[62:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign xor_ln148_10_fu_2041_p3 = {{xor_ln148_29_fu_2031_p2}, {trunc_ln148_11_fu_2037_p1}};
assign xor_ln148_11_fu_2215_p3 = {{xor_ln148_30_fu_2205_p2}, {trunc_ln148_12_fu_2211_p1}};
assign xor_ln148_12_fu_2249_p3 = {{xor_ln148_31_fu_2239_p2}, {trunc_ln148_13_fu_2245_p1}};
assign xor_ln148_13_fu_2076_p3 = {{xor_ln148_32_fu_2066_p2}, {trunc_ln148_14_fu_2072_p1}};
assign xor_ln148_14_fu_2112_p3 = {{xor_ln148_33_fu_2102_p2}, {trunc_ln148_15_fu_2108_p1}};
assign xor_ln148_15_fu_2351_p3 = {{xor_ln148_34_fu_2341_p2}, {trunc_ln148_16_fu_2347_p1}};
assign xor_ln148_16_fu_2385_p3 = {{xor_ln148_35_fu_2375_p2}, {trunc_ln148_17_fu_2381_p1}};
assign xor_ln148_17_fu_2499_p3 = {{xor_ln148_36_fu_2489_p2}, {trunc_ln148_18_fu_2495_p1}};
assign xor_ln148_18_fu_2533_p3 = {{xor_ln148_37_fu_2523_p2}, {trunc_ln148_19_fu_2529_p1}};
assign xor_ln148_19_fu_1857_p2 = (bit_sel2_fu_1849_p3 ^ 1'd1);
assign xor_ln148_1_fu_1901_p3 = {{xor_ln148_fu_1891_p2}, {trunc_ln148_1_fu_1897_p1}};
assign xor_ln148_20_fu_2137_p2 = (bit_sel5_fu_2129_p3 ^ 1'd1);
assign xor_ln148_21_fu_2171_p2 = (bit_sel6_fu_2163_p3 ^ 1'd1);
assign xor_ln148_22_fu_1926_p2 = (bit_sel8_fu_1918_p3 ^ 1'd1);
assign xor_ln148_23_fu_1962_p2 = (bit_sel9_fu_1954_p3 ^ 1'd1);
assign xor_ln148_24_fu_2273_p2 = (bit_sel11_fu_2265_p3 ^ 1'd1);
assign xor_ln148_25_fu_2307_p2 = (bit_sel12_fu_2299_p3 ^ 1'd1);
assign xor_ln148_26_fu_2421_p2 = (bit_sel14_fu_2413_p3 ^ 1'd1);
assign xor_ln148_27_fu_2455_p2 = (bit_sel15_fu_2447_p3 ^ 1'd1);
assign xor_ln148_28_fu_1997_p2 = (bit_sel17_fu_1989_p3 ^ 1'd1);
assign xor_ln148_29_fu_2031_p2 = (bit_sel18_fu_2023_p3 ^ 1'd1);
assign xor_ln148_2_fu_2147_p3 = {{xor_ln148_20_fu_2137_p2}, {trunc_ln148_2_fu_2143_p1}};
assign xor_ln148_30_fu_2205_p2 = (bit_sel19_fu_2197_p3 ^ 1'd1);
assign xor_ln148_31_fu_2239_p2 = (bit_sel16_fu_2231_p3 ^ 1'd1);
assign xor_ln148_32_fu_2066_p2 = (bit_sel13_fu_2058_p3 ^ 1'd1);
assign xor_ln148_33_fu_2102_p2 = (bit_sel10_fu_2094_p3 ^ 1'd1);
assign xor_ln148_34_fu_2341_p2 = (bit_sel7_fu_2333_p3 ^ 1'd1);
assign xor_ln148_35_fu_2375_p2 = (bit_sel4_fu_2367_p3 ^ 1'd1);
assign xor_ln148_36_fu_2489_p2 = (bit_sel1_fu_2481_p3 ^ 1'd1);
assign xor_ln148_37_fu_2523_p2 = (bit_sel_fu_2515_p3 ^ 1'd1);
assign xor_ln148_3_fu_2181_p3 = {{xor_ln148_21_fu_2171_p2}, {trunc_ln148_3_fu_2177_p1}};
assign xor_ln148_4_fu_1936_p3 = {{xor_ln148_22_fu_1926_p2}, {trunc_ln148_4_fu_1932_p1}};
assign xor_ln148_5_fu_1972_p3 = {{xor_ln148_23_fu_1962_p2}, {trunc_ln148_5_fu_1968_p1}};
assign xor_ln148_6_fu_2283_p3 = {{xor_ln148_24_fu_2273_p2}, {trunc_ln148_6_fu_2279_p1}};
assign xor_ln148_7_fu_2317_p3 = {{xor_ln148_25_fu_2307_p2}, {trunc_ln148_7_fu_2313_p1}};
assign xor_ln148_8_fu_2431_p3 = {{xor_ln148_26_fu_2421_p2}, {trunc_ln148_8_fu_2427_p1}};
assign xor_ln148_9_fu_2465_p3 = {{xor_ln148_27_fu_2455_p2}, {trunc_ln148_9_fu_2461_p1}};
assign xor_ln148_fu_1891_p2 = (bit_sel3_fu_1883_p3 ^ 1'd1);
assign xor_ln148_s_fu_2007_p3 = {{xor_ln148_28_fu_1997_p2}, {trunc_ln148_10_fu_2003_p1}};
assign xor_ln1_fu_1867_p3 = {{xor_ln148_19_fu_1857_p2}, {trunc_ln148_fu_1863_p1}};
assign zext_ln127_1_fu_1441_p1 = tid_7_reg_2553;
assign zext_ln127_2_fu_1465_p1 = tid_7_reg_2553;
assign zext_ln127_fu_1671_p1 = tid_7_reg_2553;
assign zext_ln129_fu_1739_p1 = or_ln3_fu_1731_p3;
assign zext_ln130_1_fu_1474_p1 = add_ln130_fu_1468_p2;
assign zext_ln130_cast_fu_1411_p3 = {{1'd1}, {trunc_ln127_1_fu_1407_p1}};
assign zext_ln130_fu_1419_p1 = $unsigned(zext_ln130_cast_fu_1411_p3);
assign zext_ln131_1_cast_fu_1603_p4 = {{{{1'd1}, {tmp_s_fu_1594_p4}}}, {1'd1}};
assign zext_ln131_1_fu_1613_p1 = $unsigned(zext_ln131_1_cast_fu_1603_p4);
assign zext_ln131_cast_fu_1565_p3 = {{1'd1}, {tid_7_reg_2553}};
assign zext_ln131_fu_1572_p1 = $unsigned(zext_ln131_cast_fu_1565_p3);
assign zext_ln132_1_fu_1485_p1 = add_ln132_fu_1480_p2;
assign zext_ln132_fu_1429_p1 = $unsigned(sext_ln132_fu_1425_p1);
assign zext_ln133_1_cast_fu_1754_p4 = {{{{1'd1}, {zext_ln133_1_fu_1751_p1}}}, {1'd1}};
assign zext_ln133_1_fu_1751_p1 = tmp_s_reg_2749;
assign zext_ln133_2_fu_1764_p1 = zext_ln133_1_cast_fu_1754_p4;
assign zext_ln133_cast_fu_1682_p3 = {{1'd1}, {zext_ln127_2_reg_2630}};
assign zext_ln133_fu_1689_p1 = zext_ln133_cast_fu_1682_p3;
assign zext_ln134_1_fu_1544_p1 = add_ln134_1_fu_1539_p2;
assign zext_ln134_fu_1450_p1 = add_ln134_fu_1444_p2;
assign zext_ln135_1_fu_1635_p1 = $unsigned(sext_ln135_1_fu_1631_p1);
assign zext_ln135_fu_1582_p1 = $unsigned(sext_ln135_fu_1578_p1);
assign zext_ln136_1_fu_1559_p1 = $unsigned(sext_ln136_1_fu_1555_p1);
assign zext_ln136_fu_1459_p1 = $unsigned(sext_ln136_fu_1456_p1);
assign zext_ln154_1_fu_2403_p1 = lshr_ln154_1_reg_2865_pp0_iter3_reg;
assign zext_ln154_fu_2398_p1 = lshr_ln_reg_2860_pp0_iter3_reg;
always @ (posedge ap_clk) begin
    zext_ln130_cast_reg_2575[6] <= 1'b1;
    zext_ln127_1_reg_2604[8:7] <= 2'b00;
    zext_ln127_2_reg_2630[7] <= 1'b0;
    or_ln3_reg_2870[0] <= 1'b1;
    or_ln3_reg_2870_pp0_iter1_reg[0] <= 1'b1;
    or_ln3_reg_2870_pp0_iter2_reg[0] <= 1'b1;
    or_ln3_reg_2870_pp0_iter3_reg[0] <= 1'b1;
    or_ln3_reg_2870_pp0_iter4_reg[0] <= 1'b1;
    or_ln3_reg_2870_pp0_iter5_reg[0] <= 1'b1;
    or_ln3_reg_2870_pp0_iter6_reg[0] <= 1'b1;
    or_ln3_reg_2870_pp0_iter7_reg[0] <= 1'b1;
    zext_ln154_reg_3527[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter5_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter6_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter7_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter8_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter9_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter10_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter11_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter12_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter13_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter14_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter15_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter16_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter17_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter18_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter19_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter20_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter21_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter22_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3527_pp0_iter23_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter5_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter6_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter7_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter8_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter9_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter10_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter11_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter12_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter13_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter14_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter15_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter16_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter17_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter18_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter19_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter20_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter21_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter22_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3545_pp0_iter23_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
