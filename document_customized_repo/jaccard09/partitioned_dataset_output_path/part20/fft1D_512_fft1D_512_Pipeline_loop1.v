
module fft1D_512_fft1D_512_Pipeline_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_31_address0,DATA_y_31_ce0,DATA_y_31_we0,DATA_y_31_d0,DATA_y_30_address0,DATA_y_30_ce0,DATA_y_30_we0,DATA_y_30_d0,DATA_y_29_address0,DATA_y_29_ce0,DATA_y_29_we0,DATA_y_29_d0,DATA_y_28_address0,DATA_y_28_ce0,DATA_y_28_we0,DATA_y_28_d0,DATA_y_27_address0,DATA_y_27_ce0,DATA_y_27_we0,DATA_y_27_d0,DATA_y_26_address0,DATA_y_26_ce0,DATA_y_26_we0,DATA_y_26_d0,DATA_y_25_address0,DATA_y_25_ce0,DATA_y_25_we0,DATA_y_25_d0,DATA_y_24_address0,DATA_y_24_ce0,DATA_y_24_we0,DATA_y_24_d0,DATA_y_23_address0,DATA_y_23_ce0,DATA_y_23_we0,DATA_y_23_d0,DATA_y_22_address0,DATA_y_22_ce0,DATA_y_22_we0,DATA_y_22_d0,DATA_y_21_address0,DATA_y_21_ce0,DATA_y_21_we0,DATA_y_21_d0,DATA_y_20_address0,DATA_y_20_ce0,DATA_y_20_we0,DATA_y_20_d0,DATA_y_19_address0,DATA_y_19_ce0,DATA_y_19_we0,DATA_y_19_d0,DATA_y_18_address0,DATA_y_18_ce0,DATA_y_18_we0,DATA_y_18_d0,DATA_y_17_address0,DATA_y_17_ce0,DATA_y_17_we0,DATA_y_17_d0,DATA_y_16_address0,DATA_y_16_ce0,DATA_y_16_we0,DATA_y_16_d0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_we0,DATA_y_15_d0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_we0,DATA_y_14_d0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_we0,DATA_y_13_d0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_we0,DATA_y_12_d0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_we0,DATA_y_11_d0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_we0,DATA_y_10_d0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_we0,DATA_y_9_d0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_we0,DATA_y_8_d0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,work_x_address0,work_x_ce0,work_x_q0,work_x_address1,work_x_ce1,work_x_q1,work_y_address0,work_y_ce0,work_y_q0,work_y_address1,work_y_ce1,work_y_q1,grp_fu_996_p_din0,grp_fu_996_p_din1,grp_fu_996_p_opcode,grp_fu_996_p_dout0,grp_fu_996_p_ce,grp_fu_1000_p_din0,grp_fu_1000_p_din1,grp_fu_1000_p_opcode,grp_fu_1000_p_dout0,grp_fu_1000_p_ce,grp_fu_1004_p_din0,grp_fu_1004_p_din1,grp_fu_1004_p_opcode,grp_fu_1004_p_dout0,grp_fu_1004_p_ce,grp_fu_1008_p_din0,grp_fu_1008_p_din1,grp_fu_1008_p_opcode,grp_fu_1008_p_dout0,grp_fu_1008_p_ce,grp_fu_1012_p_din0,grp_fu_1012_p_din1,grp_fu_1012_p_opcode,grp_fu_1012_p_dout0,grp_fu_1012_p_ce,grp_fu_1016_p_din0,grp_fu_1016_p_din1,grp_fu_1016_p_opcode,grp_fu_1016_p_dout0,grp_fu_1016_p_ce,grp_fu_1020_p_din0,grp_fu_1020_p_din1,grp_fu_1020_p_opcode,grp_fu_1020_p_dout0,grp_fu_1020_p_ce,grp_fu_1024_p_din0,grp_fu_1024_p_din1,grp_fu_1024_p_opcode,grp_fu_1024_p_dout0,grp_fu_1024_p_ce,grp_fu_1028_p_din0,grp_fu_1028_p_din1,grp_fu_1028_p_opcode,grp_fu_1028_p_dout0,grp_fu_1028_p_ce,grp_fu_1032_p_din0,grp_fu_1032_p_din1,grp_fu_1032_p_opcode,grp_fu_1032_p_dout0,grp_fu_1032_p_ce,grp_fu_1036_p_din0,grp_fu_1036_p_din1,grp_fu_1036_p_opcode,grp_fu_1036_p_dout0,grp_fu_1036_p_ce,grp_fu_1040_p_din0,grp_fu_1040_p_din1,grp_fu_1040_p_opcode,grp_fu_1040_p_dout0,grp_fu_1040_p_ce,grp_fu_1044_p_din0,grp_fu_1044_p_din1,grp_fu_1044_p_opcode,grp_fu_1044_p_dout0,grp_fu_1044_p_ce,grp_fu_1048_p_din0,grp_fu_1048_p_din1,grp_fu_1048_p_opcode,grp_fu_1048_p_dout0,grp_fu_1048_p_ce,grp_fu_1052_p_din0,grp_fu_1052_p_din1,grp_fu_1052_p_opcode,grp_fu_1052_p_dout0,grp_fu_1052_p_ce,grp_fu_1056_p_din0,grp_fu_1056_p_din1,grp_fu_1056_p_dout0,grp_fu_1056_p_ce,grp_fu_1060_p_din0,grp_fu_1060_p_din1,grp_fu_1060_p_dout0,grp_fu_1060_p_ce,grp_fu_1064_p_din0,grp_fu_1064_p_din1,grp_fu_1064_p_dout0,grp_fu_1064_p_ce,grp_twiddles8_fu_1068_p_din1,grp_twiddles8_fu_1068_p_din2,grp_twiddles8_fu_1068_p_din3,grp_twiddles8_fu_1068_p_din4,grp_twiddles8_fu_1068_p_din5,grp_twiddles8_fu_1068_p_din6,grp_twiddles8_fu_1068_p_din7,grp_twiddles8_fu_1068_p_din8,grp_twiddles8_fu_1068_p_din9,grp_twiddles8_fu_1068_p_din10,grp_twiddles8_fu_1068_p_din11,grp_twiddles8_fu_1068_p_din12,grp_twiddles8_fu_1068_p_din13,grp_twiddles8_fu_1068_p_din14,grp_twiddles8_fu_1068_p_din15,grp_twiddles8_fu_1068_p_din16,grp_twiddles8_fu_1068_p_dout0_0,grp_twiddles8_fu_1068_p_dout0_1,grp_twiddles8_fu_1068_p_dout0_2,grp_twiddles8_fu_1068_p_dout0_3,grp_twiddles8_fu_1068_p_dout0_4,grp_twiddles8_fu_1068_p_dout0_5,grp_twiddles8_fu_1068_p_dout0_6,grp_twiddles8_fu_1068_p_dout0_7,grp_twiddles8_fu_1068_p_dout0_8,grp_twiddles8_fu_1068_p_dout0_9,grp_twiddles8_fu_1068_p_dout0_10,grp_twiddles8_fu_1068_p_dout0_11,grp_twiddles8_fu_1068_p_dout0_12,grp_twiddles8_fu_1068_p_dout0_13,grp_twiddles8_fu_1068_p_ce);  
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
output  [3:0] DATA_y_31_address0;
output   DATA_y_31_ce0;
output   DATA_y_31_we0;
output  [63:0] DATA_y_31_d0;
output  [3:0] DATA_y_30_address0;
output   DATA_y_30_ce0;
output   DATA_y_30_we0;
output  [63:0] DATA_y_30_d0;
output  [3:0] DATA_y_29_address0;
output   DATA_y_29_ce0;
output   DATA_y_29_we0;
output  [63:0] DATA_y_29_d0;
output  [3:0] DATA_y_28_address0;
output   DATA_y_28_ce0;
output   DATA_y_28_we0;
output  [63:0] DATA_y_28_d0;
output  [3:0] DATA_y_27_address0;
output   DATA_y_27_ce0;
output   DATA_y_27_we0;
output  [63:0] DATA_y_27_d0;
output  [3:0] DATA_y_26_address0;
output   DATA_y_26_ce0;
output   DATA_y_26_we0;
output  [63:0] DATA_y_26_d0;
output  [3:0] DATA_y_25_address0;
output   DATA_y_25_ce0;
output   DATA_y_25_we0;
output  [63:0] DATA_y_25_d0;
output  [3:0] DATA_y_24_address0;
output   DATA_y_24_ce0;
output   DATA_y_24_we0;
output  [63:0] DATA_y_24_d0;
output  [3:0] DATA_y_23_address0;
output   DATA_y_23_ce0;
output   DATA_y_23_we0;
output  [63:0] DATA_y_23_d0;
output  [3:0] DATA_y_22_address0;
output   DATA_y_22_ce0;
output   DATA_y_22_we0;
output  [63:0] DATA_y_22_d0;
output  [3:0] DATA_y_21_address0;
output   DATA_y_21_ce0;
output   DATA_y_21_we0;
output  [63:0] DATA_y_21_d0;
output  [3:0] DATA_y_20_address0;
output   DATA_y_20_ce0;
output   DATA_y_20_we0;
output  [63:0] DATA_y_20_d0;
output  [3:0] DATA_y_19_address0;
output   DATA_y_19_ce0;
output   DATA_y_19_we0;
output  [63:0] DATA_y_19_d0;
output  [3:0] DATA_y_18_address0;
output   DATA_y_18_ce0;
output   DATA_y_18_we0;
output  [63:0] DATA_y_18_d0;
output  [3:0] DATA_y_17_address0;
output   DATA_y_17_ce0;
output   DATA_y_17_we0;
output  [63:0] DATA_y_17_d0;
output  [3:0] DATA_y_16_address0;
output   DATA_y_16_ce0;
output   DATA_y_16_we0;
output  [63:0] DATA_y_16_d0;
output  [3:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
output   DATA_y_15_we0;
output  [63:0] DATA_y_15_d0;
output  [3:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
output   DATA_y_14_we0;
output  [63:0] DATA_y_14_d0;
output  [3:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
output   DATA_y_13_we0;
output  [63:0] DATA_y_13_d0;
output  [3:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
output   DATA_y_12_we0;
output  [63:0] DATA_y_12_d0;
output  [3:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
output   DATA_y_11_we0;
output  [63:0] DATA_y_11_d0;
output  [3:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
output   DATA_y_10_we0;
output  [63:0] DATA_y_10_d0;
output  [3:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
output   DATA_y_9_we0;
output  [63:0] DATA_y_9_d0;
output  [3:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
output   DATA_y_8_we0;
output  [63:0] DATA_y_8_d0;
output  [3:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
output   DATA_y_7_we0;
output  [63:0] DATA_y_7_d0;
output  [3:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
output   DATA_y_6_we0;
output  [63:0] DATA_y_6_d0;
output  [3:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
output   DATA_y_5_we0;
output  [63:0] DATA_y_5_d0;
output  [3:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
output   DATA_y_4_we0;
output  [63:0] DATA_y_4_d0;
output  [3:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [3:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [3:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [3:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
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
output  [63:0] grp_fu_996_p_din0;
output  [63:0] grp_fu_996_p_din1;
output  [0:0] grp_fu_996_p_opcode;
input  [63:0] grp_fu_996_p_dout0;
output   grp_fu_996_p_ce;
output  [63:0] grp_fu_1000_p_din0;
output  [63:0] grp_fu_1000_p_din1;
output  [0:0] grp_fu_1000_p_opcode;
input  [63:0] grp_fu_1000_p_dout0;
output   grp_fu_1000_p_ce;
output  [63:0] grp_fu_1004_p_din0;
output  [63:0] grp_fu_1004_p_din1;
output  [1:0] grp_fu_1004_p_opcode;
input  [63:0] grp_fu_1004_p_dout0;
output   grp_fu_1004_p_ce;
output  [63:0] grp_fu_1008_p_din0;
output  [63:0] grp_fu_1008_p_din1;
output  [0:0] grp_fu_1008_p_opcode;
input  [63:0] grp_fu_1008_p_dout0;
output   grp_fu_1008_p_ce;
output  [63:0] grp_fu_1012_p_din0;
output  [63:0] grp_fu_1012_p_din1;
output  [1:0] grp_fu_1012_p_opcode;
input  [63:0] grp_fu_1012_p_dout0;
output   grp_fu_1012_p_ce;
output  [63:0] grp_fu_1016_p_din0;
output  [63:0] grp_fu_1016_p_din1;
output  [0:0] grp_fu_1016_p_opcode;
input  [63:0] grp_fu_1016_p_dout0;
output   grp_fu_1016_p_ce;
output  [63:0] grp_fu_1020_p_din0;
output  [63:0] grp_fu_1020_p_din1;
output  [1:0] grp_fu_1020_p_opcode;
input  [63:0] grp_fu_1020_p_dout0;
output   grp_fu_1020_p_ce;
output  [63:0] grp_fu_1024_p_din0;
output  [63:0] grp_fu_1024_p_din1;
output  [1:0] grp_fu_1024_p_opcode;
input  [63:0] grp_fu_1024_p_dout0;
output   grp_fu_1024_p_ce;
output  [63:0] grp_fu_1028_p_din0;
output  [63:0] grp_fu_1028_p_din1;
output  [1:0] grp_fu_1028_p_opcode;
input  [63:0] grp_fu_1028_p_dout0;
output   grp_fu_1028_p_ce;
output  [63:0] grp_fu_1032_p_din0;
output  [63:0] grp_fu_1032_p_din1;
output  [1:0] grp_fu_1032_p_opcode;
input  [63:0] grp_fu_1032_p_dout0;
output   grp_fu_1032_p_ce;
output  [63:0] grp_fu_1036_p_din0;
output  [63:0] grp_fu_1036_p_din1;
output  [1:0] grp_fu_1036_p_opcode;
input  [63:0] grp_fu_1036_p_dout0;
output   grp_fu_1036_p_ce;
output  [63:0] grp_fu_1040_p_din0;
output  [63:0] grp_fu_1040_p_din1;
output  [1:0] grp_fu_1040_p_opcode;
input  [63:0] grp_fu_1040_p_dout0;
output   grp_fu_1040_p_ce;
output  [63:0] grp_fu_1044_p_din0;
output  [63:0] grp_fu_1044_p_din1;
output  [1:0] grp_fu_1044_p_opcode;
input  [63:0] grp_fu_1044_p_dout0;
output   grp_fu_1044_p_ce;
output  [63:0] grp_fu_1048_p_din0;
output  [63:0] grp_fu_1048_p_din1;
output  [1:0] grp_fu_1048_p_opcode;
input  [63:0] grp_fu_1048_p_dout0;
output   grp_fu_1048_p_ce;
output  [63:0] grp_fu_1052_p_din0;
output  [63:0] grp_fu_1052_p_din1;
output  [0:0] grp_fu_1052_p_opcode;
input  [63:0] grp_fu_1052_p_dout0;
output   grp_fu_1052_p_ce;
output  [63:0] grp_fu_1056_p_din0;
output  [63:0] grp_fu_1056_p_din1;
input  [63:0] grp_fu_1056_p_dout0;
output   grp_fu_1056_p_ce;
output  [63:0] grp_fu_1060_p_din0;
output  [63:0] grp_fu_1060_p_din1;
input  [63:0] grp_fu_1060_p_dout0;
output   grp_fu_1060_p_ce;
output  [63:0] grp_fu_1064_p_din0;
output  [63:0] grp_fu_1064_p_din1;
input  [63:0] grp_fu_1064_p_dout0;
output   grp_fu_1064_p_ce;
output  [63:0] grp_twiddles8_fu_1068_p_din1;
output  [63:0] grp_twiddles8_fu_1068_p_din2;
output  [63:0] grp_twiddles8_fu_1068_p_din3;
output  [63:0] grp_twiddles8_fu_1068_p_din4;
output  [63:0] grp_twiddles8_fu_1068_p_din5;
output  [63:0] grp_twiddles8_fu_1068_p_din6;
output  [63:0] grp_twiddles8_fu_1068_p_din7;
output  [63:0] grp_twiddles8_fu_1068_p_din8;
output  [63:0] grp_twiddles8_fu_1068_p_din9;
output  [63:0] grp_twiddles8_fu_1068_p_din10;
output  [63:0] grp_twiddles8_fu_1068_p_din11;
output  [63:0] grp_twiddles8_fu_1068_p_din12;
output  [63:0] grp_twiddles8_fu_1068_p_din13;
output  [63:0] grp_twiddles8_fu_1068_p_din14;
output  [5:0] grp_twiddles8_fu_1068_p_din15;
output  [9:0] grp_twiddles8_fu_1068_p_din16;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_0;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_1;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_2;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_3;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_4;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_5;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_6;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_7;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_8;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_9;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_10;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_11;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_12;
input  [63:0] grp_twiddles8_fu_1068_p_dout0_13;
output   grp_twiddles8_fu_1068_p_ce;
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
reg   [0:0] tmp_30_reg_2502;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1197;
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
reg   [63:0] reg_1201;
reg   [63:0] reg_1205;
reg   [63:0] reg_1209;
reg   [63:0] reg_1213;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_1217;
reg   [63:0] reg_1221;
reg   [63:0] reg_1225;
reg   [63:0] reg_1229;
reg   [63:0] reg_1233;
reg   [63:0] reg_1237;
reg   [63:0] reg_1242;
reg   [63:0] reg_1247;
reg   [63:0] reg_1252;
reg   [63:0] reg_1257;
reg   [63:0] reg_1262;
reg   [63:0] reg_1267;
reg   [63:0] reg_1272;
reg   [63:0] reg_1280;
reg   [63:0] reg_1288;
reg   [63:0] reg_1296;
reg   [63:0] reg_1304;
reg   [63:0] reg_1312;
reg   [63:0] reg_1320;
reg   [6:0] tid_7_reg_2489;
wire   [0:0] tmp_30_fu_1336_p3;
reg   [0:0] tmp_30_reg_2502_pp0_iter1_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter2_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter3_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter4_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter5_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter6_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter7_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter8_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter9_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter10_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter11_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter12_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter13_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter14_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter15_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter16_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter17_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter18_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter19_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter20_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter21_reg;
reg   [0:0] tmp_30_reg_2502_pp0_iter22_reg;
wire   [5:0] trunc_ln127_1_fu_1348_p1;
reg   [5:0] trunc_ln127_1_reg_2506;
reg   [5:0] trunc_ln127_1_reg_2506_pp0_iter1_reg;
reg   [5:0] trunc_ln127_1_reg_2506_pp0_iter2_reg;
reg   [5:0] trunc_ln127_1_reg_2506_pp0_iter3_reg;
reg   [5:0] trunc_ln127_1_reg_2506_pp0_iter4_reg;
reg   [5:0] trunc_ln127_1_reg_2506_pp0_iter5_reg;
reg   [5:0] trunc_ln127_1_reg_2506_pp0_iter6_reg;
reg   [5:0] trunc_ln127_1_reg_2506_pp0_iter7_reg;
reg   [5:0] trunc_ln127_1_reg_2506_pp0_iter8_reg;
wire  signed [6:0] zext_ln130_cast_fu_1352_p3;
reg  signed [6:0] zext_ln130_cast_reg_2511;
wire   [0:0] icmp_ln163_fu_1376_p2;
reg   [0:0] icmp_ln163_reg_2536;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter1_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter2_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter3_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter4_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter5_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter6_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter7_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter8_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter9_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter10_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter11_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter12_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter13_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter14_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter15_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter16_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter17_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter18_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter19_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter20_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter21_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter22_reg;
reg   [0:0] icmp_ln163_reg_2536_pp0_iter23_reg;
wire   [8:0] zext_ln127_1_fu_1382_p1;
reg   [8:0] zext_ln127_1_reg_2540;
wire   [7:0] zext_ln127_2_fu_1406_p1;
reg   [7:0] zext_ln127_2_reg_2566;
wire   [63:0] c0_x_119_fu_1432_p1;
wire   [63:0] c0_x_121_fu_1438_p1;
wire   [63:0] bitcast_ln134_fu_1444_p1;
wire   [63:0] bitcast_ln136_fu_1450_p1;
wire   [63:0] c0_y_119_fu_1456_p1;
wire   [63:0] c0_y_121_fu_1462_p1;
wire   [63:0] bitcast_ln143_fu_1468_p1;
wire   [63:0] bitcast_ln145_fu_1474_p1;
wire   [63:0] c0_x_123_fu_1529_p1;
wire   [5:0] tmp_49_fu_1535_p4;
reg   [5:0] tmp_49_reg_2685;
wire   [63:0] c0_x_125_fu_1560_p1;
wire   [63:0] bitcast_ln134_1_fu_1566_p1;
wire   [63:0] bitcast_ln136_1_fu_1582_p1;
wire   [63:0] c0_y_123_fu_1588_p1;
wire   [63:0] c0_y_125_fu_1594_p1;
wire   [63:0] bitcast_ln143_1_fu_1600_p1;
wire   [63:0] bitcast_ln145_1_fu_1606_p1;
wire   [63:0] zext_ln127_fu_1612_p1;
reg   [63:0] zext_ln127_reg_2752;
reg   [63:0] zext_ln127_reg_2752_pp0_iter1_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter2_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter3_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter4_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter5_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter6_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter7_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter8_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter9_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter10_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter11_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter12_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter13_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter14_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter15_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter16_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter17_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter18_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter19_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter20_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter21_reg;
reg   [63:0] zext_ln127_reg_2752_pp0_iter22_reg;
wire   [63:0] c0_x_120_fu_1617_p1;
wire   [63:0] bitcast_ln135_fu_1636_p1;
wire   [63:0] c0_y_120_fu_1642_p1;
wire   [63:0] bitcast_ln144_fu_1648_p1;
reg   [3:0] lshr_ln_reg_2808;
reg   [3:0] lshr_ln_reg_2808_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_2808_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_2808_pp0_iter3_reg;
wire   [5:0] or_ln2_fu_1672_p3;
reg   [5:0] or_ln2_reg_2813;
reg   [5:0] or_ln2_reg_2813_pp0_iter1_reg;
reg   [5:0] or_ln2_reg_2813_pp0_iter2_reg;
reg   [5:0] or_ln2_reg_2813_pp0_iter3_reg;
reg   [5:0] or_ln2_reg_2813_pp0_iter4_reg;
reg   [5:0] or_ln2_reg_2813_pp0_iter5_reg;
reg   [5:0] or_ln2_reg_2813_pp0_iter6_reg;
reg   [5:0] or_ln2_reg_2813_pp0_iter7_reg;
wire   [63:0] zext_ln129_fu_1680_p1;
reg   [63:0] zext_ln129_reg_2818;
reg   [63:0] zext_ln129_reg_2818_pp0_iter1_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter2_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter3_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter4_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter5_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter6_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter7_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter8_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter9_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter10_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter11_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter12_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter13_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter14_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter15_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter16_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter17_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter18_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter19_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter20_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter21_reg;
reg   [63:0] zext_ln129_reg_2818_pp0_iter22_reg;
wire   [63:0] c0_x_124_fu_1686_p1;
wire   [63:0] bitcast_ln135_1_fu_1711_p1;
wire   [63:0] c0_y_124_fu_1717_p1;
wire   [63:0] bitcast_ln144_1_fu_1723_p1;
wire   [63:0] c0_x_fu_1739_p1;
wire   [63:0] bitcast_ln133_fu_1745_p1;
wire   [63:0] c0_y_fu_1751_p1;
wire   [63:0] bitcast_ln142_fu_1757_p1;
wire   [63:0] c0_x_122_fu_1763_p1;
wire   [63:0] bitcast_ln133_1_fu_1769_p1;
wire   [63:0] c0_y_122_fu_1775_p1;
wire   [63:0] bitcast_ln142_1_fu_1781_p1;
reg   [63:0] c0_x_5_reg_2922;
reg   [63:0] c0_y_5_reg_2928;
reg   [63:0] tmp_1_reg_2934;
reg   [63:0] sub3_reg_2940;
reg   [63:0] add6_reg_2946;
reg   [63:0] add7_reg_2952;
wire   [63:0] bitcast_ln148_1_fu_1816_p1;
wire   [63:0] bitcast_ln148_3_fu_1850_p1;
wire   [63:0] bitcast_ln148_9_fu_1885_p1;
wire   [63:0] bitcast_ln148_11_fu_1921_p1;
reg   [63:0] c0_x_15_reg_2980;
reg   [63:0] c0_y_15_reg_2986;
reg   [63:0] tmp_1_3_reg_2992;
reg   [63:0] sub104_1_reg_2998;
reg   [63:0] add127_1_reg_3004;
reg   [63:0] add130_1_reg_3010;
reg   [63:0] add4_reg_3016;
reg   [63:0] add5_reg_3022;
reg   [63:0] tmp_1_1_reg_3028;
reg   [63:0] tmp_1_1_reg_3028_pp0_iter2_reg;
reg   [63:0] sub5_reg_3034;
reg   [63:0] sub5_reg_3034_pp0_iter2_reg;
wire   [63:0] bitcast_ln148_21_fu_1956_p1;
wire   [63:0] bitcast_ln148_23_fu_1990_p1;
wire   [63:0] bitcast_ln148_29_fu_2025_p1;
wire   [63:0] bitcast_ln148_31_fu_2061_p1;
reg   [63:0] add111_1_reg_3062;
reg   [63:0] add114_1_reg_3068;
reg   [63:0] tmp_1_4_reg_3074;
reg   [63:0] sub120_1_reg_3080;
reg   [63:0] c0_x_4_reg_3086;
reg   [63:0] c0_y_4_reg_3092;
reg   [63:0] c0_x_8_reg_3098;
reg   [63:0] c0_x_8_reg_3098_pp0_iter2_reg;
reg   [63:0] c0_y_8_reg_3104;
reg   [63:0] c0_y_8_reg_3104_pp0_iter2_reg;
reg   [63:0] c0_x_21_reg_3110;
reg   [63:0] c0_y_21_reg_3116;
reg   [63:0] c0_x_13_reg_3122;
reg   [63:0] c0_x_13_reg_3122_pp0_iter3_reg;
reg   [63:0] c0_y_13_reg_3128;
reg   [63:0] c0_y_13_reg_3128_pp0_iter3_reg;
reg   [63:0] sub8_reg_3134;
reg   [63:0] add8_reg_3139;
reg   [63:0] sub1_reg_3144;
reg   [63:0] add1_reg_3149;
reg   [63:0] tmp_reg_3154;
reg   [63:0] tmp_reg_3154_pp0_iter3_reg;
reg   [63:0] sub2_reg_3160;
reg   [63:0] sub2_reg_3160_pp0_iter3_reg;
reg   [63:0] add2_reg_3166;
reg   [63:0] add3_reg_3172;
reg   [63:0] mul6_reg_3178;
reg   [63:0] mul9_reg_3183;
reg   [63:0] sub143_1_reg_3188;
reg   [63:0] add149_1_reg_3193;
reg   [63:0] sub169_1_reg_3198;
reg   [63:0] add175_1_reg_3203;
reg   [63:0] tmp_3_reg_3208;
reg   [63:0] tmp_3_reg_3208_pp0_iter3_reg;
reg   [63:0] sub208_1_reg_3214;
reg   [63:0] sub208_1_reg_3214_pp0_iter3_reg;
reg   [63:0] mul154_1_reg_3220;
reg   [63:0] mul161_1_reg_3225;
reg   [63:0] add199_1_reg_3230;
reg   [63:0] add202_1_reg_3236;
wire   [63:0] bitcast_ln148_5_fu_2096_p1;
wire   [63:0] bitcast_ln148_7_fu_2130_p1;
wire   [63:0] bitcast_ln148_25_fu_2164_p1;
wire   [63:0] bitcast_ln148_27_fu_2198_p1;
reg   [63:0] c0_x_6_reg_3262;
reg   [63:0] c0_y_6_reg_3268;
reg   [63:0] c0_x_7_reg_3274;
reg   [63:0] c0_x_7_reg_3274_pp0_iter3_reg;
reg   [63:0] c0_y_7_reg_3280;
reg   [63:0] c0_y_7_reg_3280_pp0_iter3_reg;
reg   [63:0] c0_x_18_reg_3286;
reg   [63:0] c0_y_18_reg_3292;
reg   [63:0] c0_x_19_reg_3298;
reg   [63:0] c0_x_19_reg_3298_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_3304;
reg   [63:0] c0_y_19_reg_3304_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_3304_pp0_iter5_reg;
reg   [63:0] c0_x_9_reg_3310;
reg   [63:0] c0_y_9_reg_3316;
reg   [63:0] mul3_reg_3322;
reg   [63:0] mul5_reg_3328;
reg   [63:0] mul_reg_3334;
reg   [63:0] mul1_reg_3339;
reg   [63:0] c0_x_20_reg_3344;
reg   [63:0] c0_y_20_reg_3350;
reg   [63:0] mul170_1_reg_3356;
wire   [63:0] bitcast_ln148_13_fu_2232_p1;
wire   [63:0] bitcast_ln148_15_fu_2266_p1;
reg   [63:0] mul176_1_reg_3372;
reg   [63:0] sub9_reg_3378;
reg   [63:0] add9_reg_3384;
reg   [63:0] sub157_1_reg_3390;
reg   [63:0] add162_1_reg_3396;
reg   [63:0] mul212_1_reg_3402;
wire   [63:0] bitcast_ln148_33_fu_2300_p1;
reg   [63:0] mul219_1_reg_3412;
reg   [63:0] data_x_1_reg_3417;
reg   [63:0] data_x_1_reg_3417_pp0_iter4_reg;
reg   [63:0] data_x_1_reg_3417_pp0_iter5_reg;
reg   [63:0] data_x_1_reg_3417_pp0_iter6_reg;
reg   [63:0] data_x_1_reg_3417_pp0_iter7_reg;
reg   [63:0] data_y_1_reg_3422;
reg   [63:0] data_y_1_reg_3422_pp0_iter4_reg;
reg   [63:0] data_y_1_reg_3422_pp0_iter5_reg;
reg   [63:0] data_y_1_reg_3422_pp0_iter6_reg;
reg   [63:0] data_y_1_reg_3422_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_35_fu_2334_p1;
reg   [63:0] data_x_1_2_reg_3432;
reg   [63:0] data_x_1_2_reg_3432_pp0_iter5_reg;
reg   [63:0] data_x_1_2_reg_3432_pp0_iter6_reg;
reg   [63:0] data_x_1_2_reg_3432_pp0_iter7_reg;
reg   [63:0] data_x_1_2_reg_3432_pp0_iter8_reg;
reg   [63:0] data_y_1_2_reg_3437;
reg   [63:0] data_y_1_2_reg_3437_pp0_iter5_reg;
reg   [63:0] data_y_1_2_reg_3437_pp0_iter6_reg;
reg   [63:0] data_y_1_2_reg_3437_pp0_iter7_reg;
reg   [63:0] data_y_1_2_reg_3437_pp0_iter8_reg;
reg   [63:0] data_x_0_reg_3442;
reg   [63:0] data_y_0_reg_3447;
reg   [63:0] add_reg_3453;
reg   [63:0] tmp_2_reg_3459;
reg   [63:0] tmp_2_reg_3459_pp0_iter5_reg;
reg   [63:0] data_x_0_1_reg_3465;
reg   [63:0] data_y_0_1_reg_3470;
reg   [63:0] sub10_reg_3476;
wire   [63:0] zext_ln154_fu_2339_p1;
reg   [63:0] zext_ln154_reg_3482;
reg   [63:0] zext_ln154_reg_3482_pp0_iter5_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter6_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter7_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter8_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter9_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter10_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter11_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter12_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter13_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter14_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter15_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter16_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter17_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter18_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter19_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter20_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter21_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter22_reg;
reg   [63:0] zext_ln154_reg_3482_pp0_iter23_reg;
reg   [63:0] sub4_reg_3514;
reg   [63:0] sub6_reg_3520;
reg   [63:0] add10_reg_3526;
reg   [63:0] add278_1_reg_3532;
reg   [63:0] tmp_4_reg_3538;
reg   [63:0] tmp_4_reg_3538_pp0_iter5_reg;
reg   [63:0] sub287_1_reg_3544;
reg   [63:0] sub287_1_reg_3544_pp0_iter5_reg;
reg   [63:0] c0_x_11_reg_3550;
reg   [63:0] c0_y_11_reg_3556;
reg   [63:0] c0_x_10_reg_3562;
reg   [63:0] c0_x_10_reg_3562_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3568;
reg   [63:0] c0_y_10_reg_3568_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3568_pp0_iter6_reg;
reg   [63:0] sub215_1_reg_3574;
reg   [63:0] sub220_1_reg_3580;
reg   [63:0] c0_x_23_reg_3586;
reg   [63:0] c0_y_23_reg_3592;
reg   [63:0] c0_x_22_reg_3598;
reg   [63:0] c0_x_22_reg_3598_pp0_iter5_reg;
reg   [63:0] c0_x_22_reg_3598_pp0_iter6_reg;
reg   [63:0] c0_y_22_reg_3604;
reg   [63:0] c0_y_22_reg_3604_pp0_iter5_reg;
reg   [63:0] c0_y_22_reg_3604_pp0_iter6_reg;
reg   [63:0] add281_1_reg_3610;
reg   [63:0] mul2_reg_3616;
wire   [63:0] bitcast_ln148_17_fu_2375_p1;
reg   [63:0] data_x_2_reg_3626;
reg   [63:0] data_x_2_reg_3626_pp0_iter6_reg;
reg   [63:0] data_x_2_reg_3626_pp0_iter7_reg;
reg   [63:0] data_y_2_reg_3631;
reg   [63:0] data_y_2_reg_3631_pp0_iter6_reg;
reg   [63:0] data_y_2_reg_3631_pp0_iter7_reg;
reg   [63:0] data_x_3_reg_3636;
reg   [63:0] data_x_3_reg_3636_pp0_iter6_reg;
reg   [63:0] data_x_3_reg_3636_pp0_iter7_reg;
reg   [63:0] data_y_3_reg_3641;
reg   [63:0] data_y_3_reg_3641_pp0_iter6_reg;
reg   [63:0] data_y_3_reg_3641_pp0_iter7_reg;
reg   [63:0] mul4_reg_3646;
reg   [63:0] data_x_4_reg_3651;
reg   [63:0] data_x_4_reg_3651_pp0_iter6_reg;
reg   [63:0] data_x_4_reg_3651_pp0_iter7_reg;
reg   [63:0] data_y_4_reg_3656;
reg   [63:0] data_y_4_reg_3656_pp0_iter6_reg;
reg   [63:0] data_y_4_reg_3656_pp0_iter7_reg;
reg   [63:0] data_x_5_reg_3661;
reg   [63:0] data_x_5_reg_3661_pp0_iter6_reg;
reg   [63:0] data_x_5_reg_3661_pp0_iter7_reg;
reg   [63:0] mul291_1_reg_3666;
wire   [63:0] bitcast_ln148_19_fu_2409_p1;
reg   [63:0] data_y_5_reg_3676;
reg   [63:0] data_y_5_reg_3676_pp0_iter6_reg;
reg   [63:0] data_y_5_reg_3676_pp0_iter7_reg;
reg   [63:0] data_x_2_2_reg_3681;
reg   [63:0] data_x_2_2_reg_3681_pp0_iter6_reg;
reg   [63:0] data_x_2_2_reg_3681_pp0_iter7_reg;
reg   [63:0] data_y_2_2_reg_3686;
reg   [63:0] data_y_2_2_reg_3686_pp0_iter6_reg;
reg   [63:0] data_y_2_2_reg_3686_pp0_iter7_reg;
reg   [63:0] data_x_3_2_reg_3691;
reg   [63:0] data_x_3_2_reg_3691_pp0_iter6_reg;
reg   [63:0] data_x_3_2_reg_3691_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_37_fu_2443_p1;
reg   [63:0] mul298_1_reg_3701;
reg   [63:0] sub11_reg_3706;
reg   [63:0] data_y_3_2_reg_3712;
reg   [63:0] data_y_3_2_reg_3712_pp0_iter7_reg;
reg   [63:0] data_y_3_2_reg_3712_pp0_iter8_reg;
wire   [63:0] bitcast_ln148_39_fu_2477_p1;
reg   [63:0] data_x_4_2_reg_3722;
reg   [63:0] data_x_4_2_reg_3722_pp0_iter7_reg;
reg   [63:0] data_x_4_2_reg_3722_pp0_iter8_reg;
reg   [63:0] data_y_4_2_reg_3727;
reg   [63:0] data_y_4_2_reg_3727_pp0_iter7_reg;
reg   [63:0] data_y_4_2_reg_3727_pp0_iter8_reg;
reg   [63:0] data_x_5_2_reg_3732;
reg   [63:0] data_x_5_2_reg_3732_pp0_iter7_reg;
reg   [63:0] data_x_5_2_reg_3732_pp0_iter8_reg;
reg   [63:0] data_y_5_2_reg_3737;
reg   [63:0] data_y_5_2_reg_3737_pp0_iter7_reg;
reg   [63:0] data_y_5_2_reg_3737_pp0_iter8_reg;
reg   [63:0] sub12_reg_3742;
reg   [63:0] sub294_1_reg_3748;
reg   [63:0] sub299_1_reg_3754;
reg   [63:0] data_x_6_reg_3760;
reg   [63:0] data_x_6_reg_3760_pp0_iter8_reg;
reg   [63:0] data_x_7_reg_3765;
reg   [63:0] data_x_7_reg_3765_pp0_iter8_reg;
reg   [63:0] data_y_6_reg_3770;
reg   [63:0] data_y_7_reg_3775;
reg   [63:0] data_x_6_2_reg_3780;
reg   [63:0] data_y_6_2_reg_3785;
reg   [63:0] data_x_7_2_reg_3790;
reg   [63:0] data_y_7_2_reg_3795;
reg   [3:0] DATA_y_9_addr_reg_3800;
reg   [3:0] DATA_y_25_addr_reg_3805;
reg   [3:0] DATA_y_10_addr_reg_3810;
reg   [3:0] DATA_y_26_addr_reg_3815;
reg   [3:0] DATA_y_11_addr_reg_3820;
reg   [3:0] DATA_y_27_addr_reg_3825;
reg   [3:0] DATA_y_12_addr_reg_3830;
reg   [3:0] DATA_y_28_addr_reg_3835;
reg   [3:0] DATA_y_13_addr_reg_3840;
reg   [3:0] DATA_y_29_addr_reg_3845;
reg   [3:0] DATA_y_14_addr_reg_3850;
reg   [3:0] DATA_y_30_addr_reg_3855;
reg   [3:0] DATA_y_15_addr_reg_3860;
reg   [3:0] DATA_y_31_addr_reg_3865;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage5_subdone;
reg   [63:0] grp_twiddles8_fu_1030_a_x_1_read;
reg   [63:0] grp_twiddles8_fu_1030_a_x_2_read;
reg   [63:0] grp_twiddles8_fu_1030_a_x_3_read;
reg   [63:0] grp_twiddles8_fu_1030_a_x_4_read;
reg   [63:0] grp_twiddles8_fu_1030_a_x_5_read;
reg   [63:0] grp_twiddles8_fu_1030_a_x_6_read;
reg   [63:0] grp_twiddles8_fu_1030_a_x_7_read;
reg   [63:0] grp_twiddles8_fu_1030_a_y_1_read;
reg   [63:0] grp_twiddles8_fu_1030_a_y_2_read;
reg   [63:0] grp_twiddles8_fu_1030_a_y_3_read;
reg   [63:0] grp_twiddles8_fu_1030_a_y_4_read;
reg   [63:0] grp_twiddles8_fu_1030_a_y_5_read;
reg   [63:0] grp_twiddles8_fu_1030_a_y_6_read;
reg   [63:0] grp_twiddles8_fu_1030_a_y_7_read;
reg   [5:0] grp_twiddles8_fu_1030_i;
reg    grp_twiddles8_fu_1030_ap_ce;
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
wire   [63:0] zext_ln130_fu_1360_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln132_fu_1370_p1;
wire   [63:0] zext_ln134_fu_1391_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln136_fu_1400_p1;
wire   [63:0] zext_ln130_1_fu_1415_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln132_1_fu_1426_p1;
wire   [63:0] zext_ln134_1_fu_1485_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln136_1_fu_1500_p1;
wire   [63:0] zext_ln131_fu_1513_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln135_fu_1523_p1;
wire   [63:0] zext_ln131_1_fu_1554_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln135_1_fu_1576_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln133_fu_1630_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln133_2_fu_1705_p1;
reg   [6:0] tid_fu_178;
wire   [6:0] add_ln127_fu_1729_p2;
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
reg    DATA_x_we1_local;
reg    DATA_x_ce1_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_y_16_we0_local;
reg    DATA_y_16_ce0_local;
reg    DATA_y_24_we0_local;
reg    DATA_y_24_ce0_local;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_y_8_we0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg   [5:0] DATA_x_1_address0_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg   [5:0] DATA_x_2_address0_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg   [5:0] DATA_x_3_address0_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg   [5:0] DATA_x_4_address0_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg   [5:0] DATA_x_5_address0_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg   [5:0] DATA_x_6_address0_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
reg   [5:0] DATA_x_7_address0_local;
reg    DATA_y_17_we0_local;
reg    DATA_y_17_ce0_local;
reg    DATA_y_18_we0_local;
reg    DATA_y_18_ce0_local;
reg    DATA_y_19_we0_local;
reg    DATA_y_19_ce0_local;
reg    DATA_y_20_we0_local;
reg    DATA_y_20_ce0_local;
reg    DATA_y_21_we0_local;
reg    DATA_y_21_ce0_local;
reg    DATA_y_22_we0_local;
reg    DATA_y_22_ce0_local;
reg    DATA_y_23_we0_local;
reg    DATA_y_23_ce0_local;
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
reg    DATA_y_25_we0_local;
reg    DATA_y_25_ce0_local;
reg    DATA_y_26_we0_local;
reg    DATA_y_26_ce0_local;
reg    DATA_y_27_we0_local;
reg    DATA_y_27_ce0_local;
reg    DATA_y_28_we0_local;
reg    DATA_y_28_ce0_local;
reg    DATA_y_29_we0_local;
reg    DATA_y_29_ce0_local;
reg    DATA_y_30_we0_local;
reg    DATA_y_30_ce0_local;
reg    DATA_y_31_we0_local;
reg    DATA_y_31_ce0_local;
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
reg   [63:0] grp_fu_1063_p0;
reg   [63:0] grp_fu_1063_p1;
reg   [63:0] grp_fu_1067_p0;
reg   [63:0] grp_fu_1067_p1;
reg   [63:0] grp_fu_1071_p0;
reg   [63:0] grp_fu_1071_p1;
reg   [63:0] grp_fu_1075_p0;
reg   [63:0] grp_fu_1075_p1;
reg   [63:0] grp_fu_1079_p0;
reg   [63:0] grp_fu_1079_p1;
reg   [63:0] grp_fu_1083_p0;
reg   [63:0] grp_fu_1083_p1;
reg   [63:0] grp_fu_1087_p0;
reg   [63:0] grp_fu_1087_p1;
reg   [63:0] grp_fu_1091_p0;
reg   [63:0] grp_fu_1091_p1;
reg   [63:0] grp_fu_1095_p0;
reg   [63:0] grp_fu_1095_p1;
reg   [63:0] grp_fu_1099_p0;
reg   [63:0] grp_fu_1099_p1;
reg   [63:0] grp_fu_1103_p0;
reg   [63:0] grp_fu_1103_p1;
reg   [63:0] grp_fu_1107_p0;
reg   [63:0] grp_fu_1107_p1;
reg   [63:0] grp_fu_1111_p0;
reg   [63:0] grp_fu_1111_p1;
reg   [63:0] grp_fu_1115_p0;
reg   [63:0] grp_fu_1115_p1;
reg   [63:0] grp_fu_1119_p0;
reg   [63:0] grp_fu_1119_p1;
reg   [63:0] grp_fu_1123_p0;
reg   [63:0] grp_fu_1123_p1;
reg   [63:0] grp_fu_1128_p0;
reg   [63:0] grp_fu_1128_p1;
reg   [63:0] grp_fu_1135_p0;
reg   [63:0] grp_fu_1135_p1;
wire  signed [7:0] sext_ln132_fu_1366_p1;
wire   [1:0] trunc_ln127_fu_1344_p1;
wire   [8:0] add_ln134_fu_1385_p2;
wire  signed [8:0] sext_ln136_fu_1397_p1;
wire   [7:0] add_ln130_fu_1409_p2;
wire   [8:0] add_ln132_fu_1421_p2;
wire   [8:0] add_ln134_1_fu_1480_p2;
wire   [6:0] add_ln136_fu_1491_p2;
wire  signed [8:0] sext_ln136_1_fu_1496_p1;
wire  signed [7:0] zext_ln131_cast_fu_1506_p3;
wire  signed [8:0] sext_ln135_fu_1519_p1;
wire  signed [7:0] zext_ln131_1_cast_fu_1544_p4;
wire  signed [8:0] sext_ln135_1_fu_1572_p1;
wire   [8:0] zext_ln133_cast_fu_1623_p3;
wire   [4:0] tmp_s_fu_1663_p4;
wire   [6:0] zext_ln133_1_fu_1692_p1;
wire   [8:0] zext_ln133_1_cast_fu_1695_p4;
wire   [63:0] bitcast_ln148_fu_1787_p1;
wire   [0:0] bit_sel2_fu_1790_p3;
wire   [0:0] xor_ln148_19_fu_1798_p2;
wire   [62:0] trunc_ln148_fu_1804_p1;
wire   [63:0] xor_ln1_fu_1808_p3;
wire   [63:0] bitcast_ln148_2_fu_1821_p1;
wire   [0:0] bit_sel3_fu_1824_p3;
wire   [0:0] xor_ln148_fu_1832_p2;
wire   [62:0] trunc_ln148_1_fu_1838_p1;
wire   [63:0] xor_ln148_1_fu_1842_p3;
wire   [63:0] bitcast_ln148_8_fu_1855_p1;
wire   [0:0] bit_sel8_fu_1859_p3;
wire   [0:0] xor_ln148_22_fu_1867_p2;
wire   [62:0] trunc_ln148_4_fu_1873_p1;
wire   [63:0] xor_ln148_4_fu_1877_p3;
wire   [63:0] bitcast_ln148_10_fu_1891_p1;
wire   [0:0] bit_sel9_fu_1895_p3;
wire   [0:0] xor_ln148_23_fu_1903_p2;
wire   [62:0] trunc_ln148_5_fu_1909_p1;
wire   [63:0] xor_ln148_5_fu_1913_p3;
wire   [63:0] bitcast_ln148_20_fu_1927_p1;
wire   [0:0] bit_sel17_fu_1930_p3;
wire   [0:0] xor_ln148_28_fu_1938_p2;
wire   [62:0] trunc_ln148_10_fu_1944_p1;
wire   [63:0] xor_ln148_s_fu_1948_p3;
wire   [63:0] bitcast_ln148_22_fu_1961_p1;
wire   [0:0] bit_sel18_fu_1964_p3;
wire   [0:0] xor_ln148_29_fu_1972_p2;
wire   [62:0] trunc_ln148_11_fu_1978_p1;
wire   [63:0] xor_ln148_10_fu_1982_p3;
wire   [63:0] bitcast_ln148_28_fu_1995_p1;
wire   [0:0] bit_sel13_fu_1999_p3;
wire   [0:0] xor_ln148_32_fu_2007_p2;
wire   [62:0] trunc_ln148_14_fu_2013_p1;
wire   [63:0] xor_ln148_13_fu_2017_p3;
wire   [63:0] bitcast_ln148_30_fu_2031_p1;
wire   [0:0] bit_sel10_fu_2035_p3;
wire   [0:0] xor_ln148_33_fu_2043_p2;
wire   [62:0] trunc_ln148_15_fu_2049_p1;
wire   [63:0] xor_ln148_14_fu_2053_p3;
wire   [63:0] bitcast_ln148_4_fu_2067_p1;
wire   [0:0] bit_sel5_fu_2070_p3;
wire   [0:0] xor_ln148_20_fu_2078_p2;
wire   [62:0] trunc_ln148_2_fu_2084_p1;
wire   [63:0] xor_ln148_2_fu_2088_p3;
wire   [63:0] bitcast_ln148_6_fu_2101_p1;
wire   [0:0] bit_sel6_fu_2104_p3;
wire   [0:0] xor_ln148_21_fu_2112_p2;
wire   [62:0] trunc_ln148_3_fu_2118_p1;
wire   [63:0] xor_ln148_3_fu_2122_p3;
wire   [63:0] bitcast_ln148_24_fu_2135_p1;
wire   [0:0] bit_sel19_fu_2138_p3;
wire   [0:0] xor_ln148_30_fu_2146_p2;
wire   [62:0] trunc_ln148_12_fu_2152_p1;
wire   [63:0] xor_ln148_11_fu_2156_p3;
wire   [63:0] bitcast_ln148_26_fu_2169_p1;
wire   [0:0] bit_sel16_fu_2172_p3;
wire   [0:0] xor_ln148_31_fu_2180_p2;
wire   [62:0] trunc_ln148_13_fu_2186_p1;
wire   [63:0] xor_ln148_12_fu_2190_p3;
wire   [63:0] bitcast_ln148_12_fu_2203_p1;
wire   [0:0] bit_sel11_fu_2206_p3;
wire   [0:0] xor_ln148_24_fu_2214_p2;
wire   [62:0] trunc_ln148_6_fu_2220_p1;
wire   [63:0] xor_ln148_6_fu_2224_p3;
wire   [63:0] bitcast_ln148_14_fu_2237_p1;
wire   [0:0] bit_sel12_fu_2240_p3;
wire   [0:0] xor_ln148_25_fu_2248_p2;
wire   [62:0] trunc_ln148_7_fu_2254_p1;
wire   [63:0] xor_ln148_7_fu_2258_p3;
wire   [63:0] bitcast_ln148_32_fu_2271_p1;
wire   [0:0] bit_sel7_fu_2274_p3;
wire   [0:0] xor_ln148_34_fu_2282_p2;
wire   [62:0] trunc_ln148_16_fu_2288_p1;
wire   [63:0] xor_ln148_15_fu_2292_p3;
wire   [63:0] bitcast_ln148_34_fu_2305_p1;
wire   [0:0] bit_sel4_fu_2308_p3;
wire   [0:0] xor_ln148_35_fu_2316_p2;
wire   [62:0] trunc_ln148_17_fu_2322_p1;
wire   [63:0] xor_ln148_16_fu_2326_p3;
wire   [63:0] bitcast_ln148_16_fu_2346_p1;
wire   [0:0] bit_sel14_fu_2349_p3;
wire   [0:0] xor_ln148_26_fu_2357_p2;
wire   [62:0] trunc_ln148_8_fu_2363_p1;
wire   [63:0] xor_ln148_8_fu_2367_p3;
wire   [63:0] bitcast_ln148_18_fu_2380_p1;
wire   [0:0] bit_sel15_fu_2383_p3;
wire   [0:0] xor_ln148_27_fu_2391_p2;
wire   [62:0] trunc_ln148_9_fu_2397_p1;
wire   [63:0] xor_ln148_9_fu_2401_p3;
wire   [63:0] bitcast_ln148_36_fu_2414_p1;
wire   [0:0] bit_sel1_fu_2417_p3;
wire   [0:0] xor_ln148_36_fu_2425_p2;
wire   [62:0] trunc_ln148_18_fu_2431_p1;
wire   [63:0] xor_ln148_17_fu_2435_p3;
wire   [63:0] bitcast_ln148_38_fu_2448_p1;
wire   [0:0] bit_sel_fu_2451_p3;
wire   [0:0] xor_ln148_37_fu_2459_p2;
wire   [62:0] trunc_ln148_19_fu_2465_p1;
wire   [63:0] xor_ln148_18_fu_2469_p3;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage2_00001;
reg   [1:0] grp_fu_1071_opcode;
reg   [1:0] grp_fu_1079_opcode;
reg   [1:0] grp_fu_1087_opcode;
reg   [1:0] grp_fu_1091_opcode;
reg   [1:0] grp_fu_1095_opcode;
reg   [1:0] grp_fu_1099_opcode;
reg   [1:0] grp_fu_1103_opcode;
reg   [1:0] grp_fu_1107_opcode;
reg   [1:0] grp_fu_1111_opcode;
reg   [1:0] grp_fu_1115_opcode;
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
#0 tid_fu_178 = 7'd0;
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
        tid_fu_178 <= 7'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_30_reg_2502 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        tid_fu_178 <= add_ln127_fu_1729_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_10_addr_reg_3810 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_11_addr_reg_3820 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_12_addr_reg_3830 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_13_addr_reg_3840 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_14_addr_reg_3850 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_15_addr_reg_3860 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_25_addr_reg_3805 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_26_addr_reg_3815 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_27_addr_reg_3825 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_28_addr_reg_3835 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_29_addr_reg_3845 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_30_addr_reg_3855 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_31_addr_reg_3865 <= zext_ln154_reg_3482_pp0_iter23_reg;
        DATA_y_9_addr_reg_3800 <= zext_ln154_reg_3482_pp0_iter23_reg;
        sub208_1_reg_3214_pp0_iter3_reg <= sub208_1_reg_3214;
        sub287_1_reg_3544_pp0_iter5_reg <= sub287_1_reg_3544;
        tmp_3_reg_3208_pp0_iter3_reg <= tmp_3_reg_3208;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add10_reg_3526 <= grp_fu_1012_p_dout0;
        add278_1_reg_3532 <= grp_fu_1016_p_dout0;
        sub4_reg_3514 <= grp_fu_1004_p_dout0;
        sub6_reg_3520 <= grp_fu_1008_p_dout0;
        tmp_4_reg_3538 <= grp_fu_1020_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add111_1_reg_3062 <= grp_fu_996_p_dout0;
        add114_1_reg_3068 <= grp_fu_1000_p_dout0;
        sub120_1_reg_3080 <= grp_fu_1008_p_dout0;
        tmp_1_4_reg_3074 <= grp_fu_1004_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add127_1_reg_3004 <= grp_fu_1012_p_dout0;
        add130_1_reg_3010 <= grp_fu_1016_p_dout0;
        c0_x_15_reg_2980 <= grp_fu_996_p_dout0;
        c0_y_15_reg_2986 <= grp_fu_1000_p_dout0;
        sub104_1_reg_2998 <= grp_fu_1008_p_dout0;
        tmp_1_3_reg_2992 <= grp_fu_1004_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add149_1_reg_3193 <= grp_fu_1032_p_dout0;
        add175_1_reg_3203 <= grp_fu_1040_p_dout0;
        mul6_reg_3178 <= grp_fu_1056_p_dout0;
        mul9_reg_3183 <= grp_fu_1060_p_dout0;
        sub143_1_reg_3188 <= grp_fu_1028_p_dout0;
        sub169_1_reg_3198 <= grp_fu_1036_p_dout0;
        sub208_1_reg_3214 <= grp_fu_1048_p_dout0;
        tmp_3_reg_3208 <= grp_fu_1044_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add162_1_reg_3396 <= grp_fu_1032_p_dout0;
        add9_reg_3384 <= grp_fu_1024_p_dout0;
        mul212_1_reg_3402 <= grp_fu_1064_p_dout0;
        sub157_1_reg_3390 <= grp_fu_1028_p_dout0;
        sub9_reg_3378 <= grp_fu_1020_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add199_1_reg_3230 <= grp_fu_1012_p_dout0;
        add202_1_reg_3236 <= grp_fu_1016_p_dout0;
        mul154_1_reg_3220 <= grp_fu_1056_p_dout0;
        mul161_1_reg_3225 <= grp_fu_1060_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add1_reg_3149 <= grp_fu_1040_p_dout0;
        add8_reg_3139 <= grp_fu_1032_p_dout0;
        sub1_reg_3144 <= grp_fu_1036_p_dout0;
        sub2_reg_3160 <= grp_fu_1048_p_dout0;
        sub8_reg_3134 <= grp_fu_1028_p_dout0;
        tmp_reg_3154 <= grp_fu_1044_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add281_1_reg_3610 <= grp_fu_1032_p_dout0;
        c0_x_22_reg_3598 <= grp_fu_1024_p_dout0;
        c0_x_23_reg_3586 <= grp_fu_1016_p_dout0;
        c0_y_22_reg_3604 <= grp_fu_1028_p_dout0;
        c0_y_23_reg_3592 <= grp_fu_1020_p_dout0;
        sub220_1_reg_3580 <= grp_fu_1012_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add2_reg_3166 <= grp_fu_996_p_dout0;
        add3_reg_3172 <= grp_fu_1000_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add4_reg_3016 <= grp_fu_996_p_dout0;
        add5_reg_3022 <= grp_fu_1000_p_dout0;
        sub5_reg_3034 <= grp_fu_1008_p_dout0;
        tmp_1_1_reg_3028 <= grp_fu_1004_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add6_reg_2946 <= grp_fu_1012_p_dout0;
        add7_reg_2952 <= grp_fu_1016_p_dout0;
        c0_x_5_reg_2922 <= grp_fu_996_p_dout0;
        c0_y_5_reg_2928 <= grp_fu_1000_p_dout0;
        sub3_reg_2940 <= grp_fu_1008_p_dout0;
        tmp_1_reg_2934 <= grp_fu_1004_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add_reg_3453 <= grp_fu_1004_p_dout0;
        data_x_0_1_reg_3465 <= grp_fu_1012_p_dout0;
        data_x_0_reg_3442 <= grp_fu_996_p_dout0;
        data_y_0_1_reg_3470 <= grp_fu_1016_p_dout0;
        data_y_0_reg_3447 <= grp_fu_1000_p_dout0;
        tmp_2_reg_3459 <= grp_fu_1008_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3562 <= grp_fu_1044_p_dout0;
        c0_x_11_reg_3550 <= grp_fu_1036_p_dout0;
        c0_y_10_reg_3568 <= grp_fu_1048_p_dout0;
        c0_y_11_reg_3556 <= grp_fu_1040_p_dout0;
        sub215_1_reg_3574 <= grp_fu_1052_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3562_pp0_iter5_reg <= c0_x_10_reg_3562;
        c0_y_10_reg_3568_pp0_iter5_reg <= c0_y_10_reg_3568;
        c0_y_10_reg_3568_pp0_iter6_reg <= c0_y_10_reg_3568_pp0_iter5_reg;
        sub5_reg_3034_pp0_iter2_reg <= sub5_reg_3034;
        tmp_1_1_reg_3028_pp0_iter2_reg <= tmp_1_1_reg_3028;
        tmp_49_reg_2685 <= {{tid_7_reg_2489[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_3122 <= grp_fu_1004_p_dout0;
        c0_x_21_reg_3110 <= grp_fu_996_p_dout0;
        c0_y_13_reg_3128 <= grp_fu_1008_p_dout0;
        c0_y_21_reg_3116 <= grp_fu_1000_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_3122_pp0_iter3_reg <= c0_x_13_reg_3122;
        c0_x_19_reg_3298_pp0_iter4_reg <= c0_x_19_reg_3298;
        c0_y_13_reg_3128_pp0_iter3_reg <= c0_y_13_reg_3128;
        c0_y_19_reg_3304_pp0_iter4_reg <= c0_y_19_reg_3304;
        c0_y_19_reg_3304_pp0_iter5_reg <= c0_y_19_reg_3304_pp0_iter4_reg;
        data_x_1_2_reg_3432_pp0_iter5_reg <= data_x_1_2_reg_3432;
        data_x_1_2_reg_3432_pp0_iter6_reg <= data_x_1_2_reg_3432_pp0_iter5_reg;
        data_x_1_2_reg_3432_pp0_iter7_reg <= data_x_1_2_reg_3432_pp0_iter6_reg;
        data_x_1_2_reg_3432_pp0_iter8_reg <= data_x_1_2_reg_3432_pp0_iter7_reg;
        data_x_4_2_reg_3722_pp0_iter7_reg <= data_x_4_2_reg_3722;
        data_x_4_2_reg_3722_pp0_iter8_reg <= data_x_4_2_reg_3722_pp0_iter7_reg;
        data_x_5_2_reg_3732_pp0_iter7_reg <= data_x_5_2_reg_3732;
        data_x_5_2_reg_3732_pp0_iter8_reg <= data_x_5_2_reg_3732_pp0_iter7_reg;
        data_y_1_2_reg_3437_pp0_iter5_reg <= data_y_1_2_reg_3437;
        data_y_1_2_reg_3437_pp0_iter6_reg <= data_y_1_2_reg_3437_pp0_iter5_reg;
        data_y_1_2_reg_3437_pp0_iter7_reg <= data_y_1_2_reg_3437_pp0_iter6_reg;
        data_y_1_2_reg_3437_pp0_iter8_reg <= data_y_1_2_reg_3437_pp0_iter7_reg;
        data_y_3_2_reg_3712_pp0_iter7_reg <= data_y_3_2_reg_3712;
        data_y_3_2_reg_3712_pp0_iter8_reg <= data_y_3_2_reg_3712_pp0_iter7_reg;
        data_y_4_2_reg_3727_pp0_iter7_reg <= data_y_4_2_reg_3727;
        data_y_4_2_reg_3727_pp0_iter8_reg <= data_y_4_2_reg_3727_pp0_iter7_reg;
        icmp_ln163_reg_2536 <= icmp_ln163_fu_1376_p2;
        icmp_ln163_reg_2536_pp0_iter10_reg <= icmp_ln163_reg_2536_pp0_iter9_reg;
        icmp_ln163_reg_2536_pp0_iter11_reg <= icmp_ln163_reg_2536_pp0_iter10_reg;
        icmp_ln163_reg_2536_pp0_iter12_reg <= icmp_ln163_reg_2536_pp0_iter11_reg;
        icmp_ln163_reg_2536_pp0_iter13_reg <= icmp_ln163_reg_2536_pp0_iter12_reg;
        icmp_ln163_reg_2536_pp0_iter14_reg <= icmp_ln163_reg_2536_pp0_iter13_reg;
        icmp_ln163_reg_2536_pp0_iter15_reg <= icmp_ln163_reg_2536_pp0_iter14_reg;
        icmp_ln163_reg_2536_pp0_iter16_reg <= icmp_ln163_reg_2536_pp0_iter15_reg;
        icmp_ln163_reg_2536_pp0_iter17_reg <= icmp_ln163_reg_2536_pp0_iter16_reg;
        icmp_ln163_reg_2536_pp0_iter18_reg <= icmp_ln163_reg_2536_pp0_iter17_reg;
        icmp_ln163_reg_2536_pp0_iter19_reg <= icmp_ln163_reg_2536_pp0_iter18_reg;
        icmp_ln163_reg_2536_pp0_iter1_reg <= icmp_ln163_reg_2536;
        icmp_ln163_reg_2536_pp0_iter20_reg <= icmp_ln163_reg_2536_pp0_iter19_reg;
        icmp_ln163_reg_2536_pp0_iter21_reg <= icmp_ln163_reg_2536_pp0_iter20_reg;
        icmp_ln163_reg_2536_pp0_iter22_reg <= icmp_ln163_reg_2536_pp0_iter21_reg;
        icmp_ln163_reg_2536_pp0_iter23_reg <= icmp_ln163_reg_2536_pp0_iter22_reg;
        icmp_ln163_reg_2536_pp0_iter2_reg <= icmp_ln163_reg_2536_pp0_iter1_reg;
        icmp_ln163_reg_2536_pp0_iter3_reg <= icmp_ln163_reg_2536_pp0_iter2_reg;
        icmp_ln163_reg_2536_pp0_iter4_reg <= icmp_ln163_reg_2536_pp0_iter3_reg;
        icmp_ln163_reg_2536_pp0_iter5_reg <= icmp_ln163_reg_2536_pp0_iter4_reg;
        icmp_ln163_reg_2536_pp0_iter6_reg <= icmp_ln163_reg_2536_pp0_iter5_reg;
        icmp_ln163_reg_2536_pp0_iter7_reg <= icmp_ln163_reg_2536_pp0_iter6_reg;
        icmp_ln163_reg_2536_pp0_iter8_reg <= icmp_ln163_reg_2536_pp0_iter7_reg;
        icmp_ln163_reg_2536_pp0_iter9_reg <= icmp_ln163_reg_2536_pp0_iter8_reg;
        tid_7_reg_2489 <= ap_sig_allocacmp_tid_7;
        tmp_30_reg_2502 <= ap_sig_allocacmp_tid_7[32'd6];
        tmp_30_reg_2502_pp0_iter10_reg <= tmp_30_reg_2502_pp0_iter9_reg;
        tmp_30_reg_2502_pp0_iter11_reg <= tmp_30_reg_2502_pp0_iter10_reg;
        tmp_30_reg_2502_pp0_iter12_reg <= tmp_30_reg_2502_pp0_iter11_reg;
        tmp_30_reg_2502_pp0_iter13_reg <= tmp_30_reg_2502_pp0_iter12_reg;
        tmp_30_reg_2502_pp0_iter14_reg <= tmp_30_reg_2502_pp0_iter13_reg;
        tmp_30_reg_2502_pp0_iter15_reg <= tmp_30_reg_2502_pp0_iter14_reg;
        tmp_30_reg_2502_pp0_iter16_reg <= tmp_30_reg_2502_pp0_iter15_reg;
        tmp_30_reg_2502_pp0_iter17_reg <= tmp_30_reg_2502_pp0_iter16_reg;
        tmp_30_reg_2502_pp0_iter18_reg <= tmp_30_reg_2502_pp0_iter17_reg;
        tmp_30_reg_2502_pp0_iter19_reg <= tmp_30_reg_2502_pp0_iter18_reg;
        tmp_30_reg_2502_pp0_iter1_reg <= tmp_30_reg_2502;
        tmp_30_reg_2502_pp0_iter20_reg <= tmp_30_reg_2502_pp0_iter19_reg;
        tmp_30_reg_2502_pp0_iter21_reg <= tmp_30_reg_2502_pp0_iter20_reg;
        tmp_30_reg_2502_pp0_iter22_reg <= tmp_30_reg_2502_pp0_iter21_reg;
        tmp_30_reg_2502_pp0_iter2_reg <= tmp_30_reg_2502_pp0_iter1_reg;
        tmp_30_reg_2502_pp0_iter3_reg <= tmp_30_reg_2502_pp0_iter2_reg;
        tmp_30_reg_2502_pp0_iter4_reg <= tmp_30_reg_2502_pp0_iter3_reg;
        tmp_30_reg_2502_pp0_iter5_reg <= tmp_30_reg_2502_pp0_iter4_reg;
        tmp_30_reg_2502_pp0_iter6_reg <= tmp_30_reg_2502_pp0_iter5_reg;
        tmp_30_reg_2502_pp0_iter7_reg <= tmp_30_reg_2502_pp0_iter6_reg;
        tmp_30_reg_2502_pp0_iter8_reg <= tmp_30_reg_2502_pp0_iter7_reg;
        tmp_30_reg_2502_pp0_iter9_reg <= tmp_30_reg_2502_pp0_iter8_reg;
        trunc_ln127_1_reg_2506 <= trunc_ln127_1_fu_1348_p1;
        trunc_ln127_1_reg_2506_pp0_iter1_reg <= trunc_ln127_1_reg_2506;
        trunc_ln127_1_reg_2506_pp0_iter2_reg <= trunc_ln127_1_reg_2506_pp0_iter1_reg;
        trunc_ln127_1_reg_2506_pp0_iter3_reg <= trunc_ln127_1_reg_2506_pp0_iter2_reg;
        trunc_ln127_1_reg_2506_pp0_iter4_reg <= trunc_ln127_1_reg_2506_pp0_iter3_reg;
        trunc_ln127_1_reg_2506_pp0_iter5_reg <= trunc_ln127_1_reg_2506_pp0_iter4_reg;
        trunc_ln127_1_reg_2506_pp0_iter6_reg <= trunc_ln127_1_reg_2506_pp0_iter5_reg;
        trunc_ln127_1_reg_2506_pp0_iter7_reg <= trunc_ln127_1_reg_2506_pp0_iter6_reg;
        trunc_ln127_1_reg_2506_pp0_iter8_reg <= trunc_ln127_1_reg_2506_pp0_iter7_reg;
        zext_ln130_cast_reg_2511[5 : 0] <= zext_ln130_cast_fu_1352_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_18_reg_3286 <= grp_fu_1012_p_dout0;
        c0_x_19_reg_3298 <= grp_fu_1020_p_dout0;
        c0_y_18_reg_3292 <= grp_fu_1016_p_dout0;
        c0_y_19_reg_3304 <= grp_fu_1024_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        c0_x_20_reg_3344 <= grp_fu_1056_p_dout0;
        c0_y_20_reg_3350 <= grp_fu_1060_p_dout0;
        mul170_1_reg_3356 <= grp_fu_1064_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        c0_x_22_reg_3598_pp0_iter5_reg <= c0_x_22_reg_3598;
        c0_x_22_reg_3598_pp0_iter6_reg <= c0_x_22_reg_3598_pp0_iter5_reg;
        c0_y_22_reg_3604_pp0_iter5_reg <= c0_y_22_reg_3604;
        c0_y_22_reg_3604_pp0_iter6_reg <= c0_y_22_reg_3604_pp0_iter5_reg;
        data_x_4_reg_3651_pp0_iter6_reg <= data_x_4_reg_3651;
        data_x_4_reg_3651_pp0_iter7_reg <= data_x_4_reg_3651_pp0_iter6_reg;
        data_x_5_reg_3661_pp0_iter6_reg <= data_x_5_reg_3661;
        data_x_5_reg_3661_pp0_iter7_reg <= data_x_5_reg_3661_pp0_iter6_reg;
        data_y_4_reg_3656_pp0_iter6_reg <= data_y_4_reg_3656;
        data_y_4_reg_3656_pp0_iter7_reg <= data_y_4_reg_3656_pp0_iter6_reg;
        zext_ln127_reg_2752[6 : 0] <= zext_ln127_fu_1612_p1[6 : 0];
        zext_ln127_reg_2752_pp0_iter10_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter9_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter11_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter10_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter12_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter11_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter13_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter12_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter14_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter13_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter15_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter14_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter16_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter15_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter17_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter16_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter18_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter17_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter19_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter18_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter1_reg[6 : 0] <= zext_ln127_reg_2752[6 : 0];
        zext_ln127_reg_2752_pp0_iter20_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter19_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter21_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter20_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter22_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter21_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter2_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter1_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter3_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter2_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter4_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter3_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter5_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter4_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter6_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter5_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter7_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter6_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter8_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter7_reg[6 : 0];
        zext_ln127_reg_2752_pp0_iter9_reg[6 : 0] <= zext_ln127_reg_2752_pp0_iter8_reg[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_4_reg_3086 <= grp_fu_996_p_dout0;
        c0_x_8_reg_3098 <= grp_fu_1004_p_dout0;
        c0_y_4_reg_3092 <= grp_fu_1000_p_dout0;
        c0_y_8_reg_3104 <= grp_fu_1008_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_6_reg_3262 <= grp_fu_1012_p_dout0;
        c0_x_7_reg_3274 <= grp_fu_1020_p_dout0;
        c0_y_6_reg_3268 <= grp_fu_1016_p_dout0;
        c0_y_7_reg_3280 <= grp_fu_1024_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_7_reg_3274_pp0_iter3_reg <= c0_x_7_reg_3274;
        c0_x_8_reg_3098_pp0_iter2_reg <= c0_x_8_reg_3098;
        c0_y_7_reg_3280_pp0_iter3_reg <= c0_y_7_reg_3280;
        c0_y_8_reg_3104_pp0_iter2_reg <= c0_y_8_reg_3104;
        data_x_1_reg_3417_pp0_iter4_reg <= data_x_1_reg_3417;
        data_x_1_reg_3417_pp0_iter5_reg <= data_x_1_reg_3417_pp0_iter4_reg;
        data_x_1_reg_3417_pp0_iter6_reg <= data_x_1_reg_3417_pp0_iter5_reg;
        data_x_1_reg_3417_pp0_iter7_reg <= data_x_1_reg_3417_pp0_iter6_reg;
        data_x_2_2_reg_3681_pp0_iter6_reg <= data_x_2_2_reg_3681;
        data_x_2_2_reg_3681_pp0_iter7_reg <= data_x_2_2_reg_3681_pp0_iter6_reg;
        data_x_3_2_reg_3691_pp0_iter6_reg <= data_x_3_2_reg_3691;
        data_x_3_2_reg_3691_pp0_iter7_reg <= data_x_3_2_reg_3691_pp0_iter6_reg;
        data_y_1_reg_3422_pp0_iter4_reg <= data_y_1_reg_3422;
        data_y_1_reg_3422_pp0_iter5_reg <= data_y_1_reg_3422_pp0_iter4_reg;
        data_y_1_reg_3422_pp0_iter6_reg <= data_y_1_reg_3422_pp0_iter5_reg;
        data_y_1_reg_3422_pp0_iter7_reg <= data_y_1_reg_3422_pp0_iter6_reg;
        data_y_2_2_reg_3686_pp0_iter6_reg <= data_y_2_2_reg_3686;
        data_y_2_2_reg_3686_pp0_iter7_reg <= data_y_2_2_reg_3686_pp0_iter6_reg;
        data_y_5_reg_3676_pp0_iter6_reg <= data_y_5_reg_3676;
        data_y_5_reg_3676_pp0_iter7_reg <= data_y_5_reg_3676_pp0_iter6_reg;
        lshr_ln_reg_2808 <= {{tid_7_reg_2489[5:2]}};
        lshr_ln_reg_2808_pp0_iter1_reg <= lshr_ln_reg_2808;
        lshr_ln_reg_2808_pp0_iter2_reg <= lshr_ln_reg_2808_pp0_iter1_reg;
        lshr_ln_reg_2808_pp0_iter3_reg <= lshr_ln_reg_2808_pp0_iter2_reg;
        or_ln2_reg_2813[5 : 1] <= or_ln2_fu_1672_p3[5 : 1];
        or_ln2_reg_2813_pp0_iter1_reg[5 : 1] <= or_ln2_reg_2813[5 : 1];
        or_ln2_reg_2813_pp0_iter2_reg[5 : 1] <= or_ln2_reg_2813_pp0_iter1_reg[5 : 1];
        or_ln2_reg_2813_pp0_iter3_reg[5 : 1] <= or_ln2_reg_2813_pp0_iter2_reg[5 : 1];
        or_ln2_reg_2813_pp0_iter4_reg[5 : 1] <= or_ln2_reg_2813_pp0_iter3_reg[5 : 1];
        or_ln2_reg_2813_pp0_iter5_reg[5 : 1] <= or_ln2_reg_2813_pp0_iter4_reg[5 : 1];
        or_ln2_reg_2813_pp0_iter6_reg[5 : 1] <= or_ln2_reg_2813_pp0_iter5_reg[5 : 1];
        or_ln2_reg_2813_pp0_iter7_reg[5 : 1] <= or_ln2_reg_2813_pp0_iter6_reg[5 : 1];
        zext_ln129_reg_2818[5 : 1] <= zext_ln129_fu_1680_p1[5 : 1];
        zext_ln129_reg_2818_pp0_iter10_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter9_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter11_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter10_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter12_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter11_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter13_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter12_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter14_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter13_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter15_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter14_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter16_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter15_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter17_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter16_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter18_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter17_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter19_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter18_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter1_reg[5 : 1] <= zext_ln129_reg_2818[5 : 1];
        zext_ln129_reg_2818_pp0_iter20_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter19_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter21_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter20_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter22_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter21_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter2_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter1_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter3_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter2_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter4_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter3_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter5_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter4_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter6_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter5_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter7_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter6_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter8_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter7_reg[5 : 1];
        zext_ln129_reg_2818_pp0_iter9_reg[5 : 1] <= zext_ln129_reg_2818_pp0_iter8_reg[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        c0_x_9_reg_3310 <= grp_fu_1056_p_dout0;
        c0_y_9_reg_3316 <= grp_fu_1060_p_dout0;
        mul3_reg_3322 <= grp_fu_1064_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_1_2_reg_3432 <= grp_fu_1028_p_dout0;
        data_y_1_2_reg_3437 <= grp_fu_1032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_1_reg_3417 <= grp_fu_1028_p_dout0;
        data_y_1_reg_3422 <= grp_fu_1032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_2_2_reg_3681 <= grp_fu_1040_p_dout0;
        data_x_3_2_reg_3691 <= grp_fu_1048_p_dout0;
        data_y_2_2_reg_3686 <= grp_fu_1044_p_dout0;
        data_y_5_reg_3676 <= grp_fu_1036_p_dout0;
        mul298_1_reg_3701 <= grp_fu_1056_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3626 <= grp_fu_1024_p_dout0;
        data_x_3_reg_3636 <= grp_fu_1032_p_dout0;
        data_y_2_reg_3631 <= grp_fu_1028_p_dout0;
        data_y_3_reg_3641 <= grp_fu_1036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3626_pp0_iter6_reg <= data_x_2_reg_3626;
        data_x_2_reg_3626_pp0_iter7_reg <= data_x_2_reg_3626_pp0_iter6_reg;
        data_x_3_reg_3636_pp0_iter6_reg <= data_x_3_reg_3636;
        data_x_3_reg_3636_pp0_iter7_reg <= data_x_3_reg_3636_pp0_iter6_reg;
        data_y_2_reg_3631_pp0_iter6_reg <= data_y_2_reg_3631;
        data_y_2_reg_3631_pp0_iter7_reg <= data_y_2_reg_3631_pp0_iter6_reg;
        data_y_3_reg_3641_pp0_iter6_reg <= data_y_3_reg_3641;
        data_y_3_reg_3641_pp0_iter7_reg <= data_y_3_reg_3641_pp0_iter6_reg;
        tmp_4_reg_3538_pp0_iter5_reg <= tmp_4_reg_3538;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_4_2_reg_3722 <= grp_fu_1044_p_dout0;
        data_x_5_2_reg_3732 <= grp_fu_1052_p_dout0;
        data_y_3_2_reg_3712 <= grp_fu_1040_p_dout0;
        data_y_4_2_reg_3727 <= grp_fu_1048_p_dout0;
        sub11_reg_3706 <= grp_fu_1036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        data_x_4_reg_3651 <= grp_fu_1036_p_dout0;
        data_x_5_reg_3661 <= grp_fu_1044_p_dout0;
        data_y_4_reg_3656 <= grp_fu_1040_p_dout0;
        mul291_1_reg_3666 <= grp_fu_1064_p_dout0;
        mul4_reg_3646 <= grp_fu_1060_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_2_reg_3780 <= grp_fu_1040_p_dout0;
        data_x_7_2_reg_3790 <= grp_fu_1048_p_dout0;
        data_y_6_2_reg_3785 <= grp_fu_1044_p_dout0;
        data_y_6_reg_3770 <= grp_fu_1032_p_dout0;
        data_y_7_2_reg_3795 <= grp_fu_1052_p_dout0;
        data_y_7_reg_3775 <= grp_fu_1036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_3760 <= grp_fu_1024_p_dout0;
        data_x_7_reg_3765 <= grp_fu_1028_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_3760_pp0_iter8_reg <= data_x_6_reg_3760;
        data_x_7_reg_3765_pp0_iter8_reg <= data_x_7_reg_3765;
        data_y_5_2_reg_3737_pp0_iter7_reg <= data_y_5_2_reg_3737;
        data_y_5_2_reg_3737_pp0_iter8_reg <= data_y_5_2_reg_3737_pp0_iter7_reg;
        tmp_2_reg_3459_pp0_iter5_reg <= tmp_2_reg_3459;
        zext_ln127_1_reg_2540[6 : 0] <= zext_ln127_1_fu_1382_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_y_5_2_reg_3737 <= grp_fu_1020_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        mul176_1_reg_3372 <= grp_fu_1064_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        mul1_reg_3339 <= grp_fu_1064_p_dout0;
        mul5_reg_3328 <= grp_fu_1056_p_dout0;
        mul_reg_3334 <= grp_fu_1060_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        mul219_1_reg_3412 <= grp_fu_1056_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul2_reg_3616 <= grp_fu_1056_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        reg_1197 <= work_x_q1;
        reg_1201 <= work_x_q0;
        reg_1205 <= work_y_q1;
        reg_1209 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_1213 <= work_x_q1;
        reg_1217 <= work_x_q0;
        reg_1221 <= work_y_q1;
        reg_1225 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_1229 <= grp_fu_1020_p_dout0;
        reg_1233 <= grp_fu_1024_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        reg_1237 <= grp_twiddles8_fu_1068_p_dout0_0;
        reg_1242 <= grp_twiddles8_fu_1068_p_dout0_1;
        reg_1247 <= grp_twiddles8_fu_1068_p_dout0_2;
        reg_1252 <= grp_twiddles8_fu_1068_p_dout0_3;
        reg_1257 <= grp_twiddles8_fu_1068_p_dout0_4;
        reg_1262 <= grp_twiddles8_fu_1068_p_dout0_5;
        reg_1267 <= grp_twiddles8_fu_1068_p_dout0_6;
        reg_1272 <= grp_twiddles8_fu_1068_p_dout0_7;
        reg_1280 <= grp_twiddles8_fu_1068_p_dout0_8;
        reg_1288 <= grp_twiddles8_fu_1068_p_dout0_9;
        reg_1296 <= grp_twiddles8_fu_1068_p_dout0_10;
        reg_1304 <= grp_twiddles8_fu_1068_p_dout0_11;
        reg_1312 <= grp_twiddles8_fu_1068_p_dout0_12;
        reg_1320 <= grp_twiddles8_fu_1068_p_dout0_13;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub10_reg_3476 <= grp_fu_1052_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        sub12_reg_3742 <= grp_fu_1048_p_dout0;
        sub294_1_reg_3748 <= grp_fu_1052_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        sub287_1_reg_3544 <= grp_fu_1052_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        sub299_1_reg_3754 <= grp_fu_1052_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub2_reg_3160_pp0_iter3_reg <= sub2_reg_3160;
        tmp_reg_3154_pp0_iter3_reg <= tmp_reg_3154;
        zext_ln127_2_reg_2566[6 : 0] <= zext_ln127_2_fu_1406_p1[6 : 0];
        zext_ln154_reg_3482[3 : 0] <= zext_ln154_fu_2339_p1[3 : 0];
        zext_ln154_reg_3482_pp0_iter10_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter9_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter11_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter10_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter12_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter11_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter13_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter12_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter14_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter13_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter15_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter14_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter16_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter15_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter17_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter16_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter18_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter17_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter19_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter18_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter20_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter19_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter21_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter20_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter22_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter21_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter23_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter22_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter5_reg[3 : 0] <= zext_ln154_reg_3482[3 : 0];
        zext_ln154_reg_3482_pp0_iter6_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter5_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter7_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter6_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter8_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter7_reg[3 : 0];
        zext_ln154_reg_3482_pp0_iter9_reg[3 : 0] <= zext_ln154_reg_3482_pp0_iter8_reg[3 : 0];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_1_address0_local = zext_ln129_reg_2818_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_1_address0_local = zext_ln127_reg_2752_pp0_iter22_reg;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_2_address0_local = zext_ln129_reg_2818_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_2_address0_local = zext_ln127_reg_2752_pp0_iter22_reg;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_3_address0_local = zext_ln129_reg_2818_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_3_address0_local = zext_ln127_reg_2752_pp0_iter22_reg;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_4_address0_local = zext_ln129_reg_2818_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_4_address0_local = zext_ln127_reg_2752_pp0_iter22_reg;
        end else begin
            DATA_x_4_address0_local = 'bx;
        end
    end else begin
        DATA_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_5_address0_local = zext_ln129_reg_2818_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_5_address0_local = zext_ln127_reg_2752_pp0_iter22_reg;
        end else begin
            DATA_x_5_address0_local = 'bx;
        end
    end else begin
        DATA_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_6_address0_local = zext_ln129_reg_2818_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_6_address0_local = zext_ln127_reg_2752_pp0_iter22_reg;
        end else begin
            DATA_x_6_address0_local = 'bx;
        end
    end else begin
        DATA_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_7_address0_local = zext_ln129_reg_2818_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_7_address0_local = zext_ln127_reg_2752_pp0_iter22_reg;
        end else begin
            DATA_x_7_address0_local = 'bx;
        end
    end else begin
        DATA_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
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
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_15_we0_local = 1'b1;
    end else begin
        DATA_y_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_16_ce0_local = 1'b1;
    end else begin
        DATA_y_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln163_reg_2536_pp0_iter4_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_16_we0_local = 1'b1;
    end else begin
        DATA_y_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_17_ce0_local = 1'b1;
    end else begin
        DATA_y_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_17_we0_local = 1'b1;
    end else begin
        DATA_y_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_18_ce0_local = 1'b1;
    end else begin
        DATA_y_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_18_we0_local = 1'b1;
    end else begin
        DATA_y_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_19_ce0_local = 1'b1;
    end else begin
        DATA_y_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_19_we0_local = 1'b1;
    end else begin
        DATA_y_19_we0_local = 1'b0;
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_20_ce0_local = 1'b1;
    end else begin
        DATA_y_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_20_we0_local = 1'b1;
    end else begin
        DATA_y_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_21_ce0_local = 1'b1;
    end else begin
        DATA_y_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_21_we0_local = 1'b1;
    end else begin
        DATA_y_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_22_ce0_local = 1'b1;
    end else begin
        DATA_y_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_22_we0_local = 1'b1;
    end else begin
        DATA_y_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_23_ce0_local = 1'b1;
    end else begin
        DATA_y_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_23_we0_local = 1'b1;
    end else begin
        DATA_y_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_24_ce0_local = 1'b1;
    end else begin
        DATA_y_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln163_reg_2536_pp0_iter4_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_24_we0_local = 1'b1;
    end else begin
        DATA_y_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_25_ce0_local = 1'b1;
    end else begin
        DATA_y_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_25_we0_local = 1'b1;
    end else begin
        DATA_y_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_26_ce0_local = 1'b1;
    end else begin
        DATA_y_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_26_we0_local = 1'b1;
    end else begin
        DATA_y_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_27_ce0_local = 1'b1;
    end else begin
        DATA_y_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_27_we0_local = 1'b1;
    end else begin
        DATA_y_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_28_ce0_local = 1'b1;
    end else begin
        DATA_y_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_28_we0_local = 1'b1;
    end else begin
        DATA_y_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_29_ce0_local = 1'b1;
    end else begin
        DATA_y_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_29_we0_local = 1'b1;
    end else begin
        DATA_y_29_we0_local = 1'b0;
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_30_ce0_local = 1'b1;
    end else begin
        DATA_y_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_30_we0_local = 1'b1;
    end else begin
        DATA_y_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_31_ce0_local = 1'b1;
    end else begin
        DATA_y_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_31_we0_local = 1'b1;
    end else begin
        DATA_y_31_we0_local = 1'b0;
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
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
    if (((icmp_ln163_reg_2536_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln163_reg_2536_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
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
    if (((icmp_ln163_reg_2536_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_30_reg_2502 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (tmp_30_reg_2502_pp0_iter22_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
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
        ap_sig_allocacmp_tid_7 = tid_fu_178;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1063_p0 = c0_x_6_reg_3262;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1063_p0 = c0_x_5_reg_2922;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1063_p0 = c0_x_122_fu_1763_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1063_p0 = c0_x_fu_1739_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1063_p0 = c0_x_124_fu_1686_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1063_p0 = c0_x_120_fu_1617_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1063_p0 = c0_x_123_fu_1529_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1063_p0 = c0_x_119_fu_1432_p1;
    end else begin
        grp_fu_1063_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1063_p1 = add2_reg_3166;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1063_p1 = add6_reg_2946;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1063_p1 = bitcast_ln133_1_fu_1769_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1063_p1 = bitcast_ln133_fu_1745_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1063_p1 = bitcast_ln135_1_fu_1711_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1063_p1 = bitcast_ln135_fu_1636_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1063_p1 = bitcast_ln134_1_fu_1566_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1063_p1 = bitcast_ln134_fu_1444_p1;
    end else begin
        grp_fu_1063_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1067_p0 = c0_y_6_reg_3268;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1067_p0 = c0_y_5_reg_2928;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1067_p0 = c0_y_122_fu_1775_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1067_p0 = c0_y_fu_1751_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1067_p0 = c0_y_124_fu_1717_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1067_p0 = c0_y_120_fu_1642_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1067_p0 = c0_y_123_fu_1588_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1067_p0 = c0_y_119_fu_1456_p1;
    end else begin
        grp_fu_1067_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1067_p1 = add3_reg_3172;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1067_p1 = add7_reg_2952;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1067_p1 = bitcast_ln142_1_fu_1781_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1067_p1 = bitcast_ln142_fu_1757_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1067_p1 = bitcast_ln144_1_fu_1723_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1067_p1 = bitcast_ln144_fu_1648_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1067_p1 = bitcast_ln143_1_fu_1600_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1067_p1 = bitcast_ln143_fu_1468_p1;
    end else begin
        grp_fu_1067_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_30_reg_2502 == 1'd0) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_30_reg_2502 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_30_reg_2502 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_30_reg_2502 == 1'd0) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_1071_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_1071_opcode = 2'd0;
    end else begin
        grp_fu_1071_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1071_p0 = mul_reg_3334;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1071_p0 = c0_x_9_reg_3310;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1071_p0 = c0_x_122_fu_1763_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1071_p0 = c0_x_fu_1739_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1071_p0 = c0_x_124_fu_1686_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1071_p0 = c0_x_120_fu_1617_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1071_p0 = c0_x_123_fu_1529_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1071_p0 = c0_x_119_fu_1432_p1;
    end else begin
        grp_fu_1071_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1071_p1 = bitcast_ln148_13_fu_2232_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1071_p1 = mul3_reg_3322;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1071_p1 = bitcast_ln133_1_fu_1769_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1071_p1 = bitcast_ln133_fu_1745_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1071_p1 = bitcast_ln135_1_fu_1711_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1071_p1 = bitcast_ln135_fu_1636_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1071_p1 = bitcast_ln134_1_fu_1566_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1071_p1 = bitcast_ln134_fu_1444_p1;
    end else begin
        grp_fu_1071_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1075_p0 = bitcast_ln148_15_fu_2266_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1075_p0 = c0_x_9_reg_3310;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1075_p0 = c0_y_122_fu_1775_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1075_p0 = c0_y_fu_1751_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1075_p0 = c0_y_124_fu_1717_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1075_p0 = c0_y_120_fu_1642_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1075_p0 = c0_y_123_fu_1588_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1075_p0 = c0_y_119_fu_1456_p1;
    end else begin
        grp_fu_1075_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1075_p1 = mul1_reg_3339;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1075_p1 = mul3_reg_3322;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1075_p1 = bitcast_ln142_1_fu_1781_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1075_p1 = bitcast_ln142_fu_1757_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1075_p1 = bitcast_ln144_1_fu_1723_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1075_p1 = bitcast_ln144_fu_1648_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1075_p1 = bitcast_ln143_1_fu_1600_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1075_p1 = bitcast_ln143_fu_1468_p1;
    end else begin
        grp_fu_1075_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_1079_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_30_reg_2502 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_30_reg_2502 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_1079_opcode = 2'd0;
    end else begin
        grp_fu_1079_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1079_p0 = bitcast_ln148_35_fu_2334_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1079_p0 = c0_y_9_reg_3316;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1079_p0 = c0_x_18_reg_3286;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1079_p0 = c0_x_21_reg_3110;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1079_p0 = c0_x_4_reg_3086;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1079_p0 = c0_x_15_reg_2980;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1079_p0 = c0_x_125_fu_1560_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1079_p0 = c0_x_121_fu_1438_p1;
    end else begin
        grp_fu_1079_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1079_p1 = mul219_1_reg_3412;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1079_p1 = mul5_reg_3328;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1079_p1 = add199_1_reg_3230;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1079_p1 = add111_1_reg_3062;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1079_p1 = add4_reg_3016;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1079_p1 = add127_1_reg_3004;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1079_p1 = bitcast_ln136_1_fu_1582_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1079_p1 = bitcast_ln136_fu_1450_p1;
    end else begin
        grp_fu_1079_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1083_p0 = c0_x_13_reg_3122_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1083_p0 = c0_x_20_reg_3344;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1083_p0 = c0_y_18_reg_3292;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1083_p0 = c0_y_21_reg_3116;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1083_p0 = c0_y_4_reg_3092;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1083_p0 = c0_y_15_reg_2986;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1083_p0 = c0_y_125_fu_1594_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1083_p0 = c0_y_121_fu_1462_p1;
    end else begin
        grp_fu_1083_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1083_p1 = sub157_1_reg_3390;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1083_p1 = mul170_1_reg_3356;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1083_p1 = add202_1_reg_3236;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1083_p1 = add114_1_reg_3068;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1083_p1 = add5_reg_3022;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1083_p1 = add130_1_reg_3010;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1083_p1 = bitcast_ln145_1_fu_1606_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1083_p1 = bitcast_ln145_fu_1474_p1;
    end else begin
        grp_fu_1083_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_30_reg_2502 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_30_reg_2502 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_1087_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_1087_opcode = 2'd0;
    end else begin
        grp_fu_1087_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1087_p0 = c0_y_23_reg_3592;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1087_p0 = c0_y_13_reg_3128_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1087_p0 = c0_x_20_reg_3344;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1087_p0 = mul6_reg_3178;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1087_p0 = c0_x_21_reg_3110;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1087_p0 = c0_x_4_reg_3086;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1087_p0 = c0_x_125_fu_1560_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1087_p0 = c0_x_121_fu_1438_p1;
    end else begin
        grp_fu_1087_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1087_p1 = add281_1_reg_3610;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1087_p1 = add162_1_reg_3396;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1087_p1 = mul170_1_reg_3356;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1087_p1 = bitcast_ln148_5_fu_2096_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1087_p1 = add111_1_reg_3062;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1087_p1 = add4_reg_3016;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1087_p1 = bitcast_ln136_1_fu_1582_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1087_p1 = bitcast_ln136_fu_1450_p1;
    end else begin
        grp_fu_1087_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_30_reg_2502 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_30_reg_2502 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_1091_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_1091_opcode = 2'd0;
    end else begin
        grp_fu_1091_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1091_p0 = c0_x_10_reg_3562_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1091_p0 = c0_x_7_reg_3274_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1091_p0 = c0_x_13_reg_3122_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1091_p0 = bitcast_ln148_7_fu_2130_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1091_p0 = c0_y_21_reg_3116;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1091_p0 = c0_y_4_reg_3092;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1091_p0 = c0_y_125_fu_1594_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1091_p0 = c0_y_121_fu_1462_p1;
    end else begin
        grp_fu_1091_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1091_p1 = sub11_reg_3706;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1091_p1 = sub4_reg_3514;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1091_p1 = sub157_1_reg_3390;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1091_p1 = mul9_reg_3183;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1091_p1 = add114_1_reg_3068;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1091_p1 = add5_reg_3022;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1091_p1 = bitcast_ln145_1_fu_1606_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1091_p1 = bitcast_ln145_fu_1474_p1;
    end else begin
        grp_fu_1091_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_1095_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001))) begin
        grp_fu_1095_opcode = 2'd0;
    end else begin
        grp_fu_1095_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1095_p0 = c0_x_10_reg_3562_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1095_p0 = c0_y_7_reg_3280_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1095_p0 = c0_y_13_reg_3128_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1095_p0 = c0_x_18_reg_3286;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1095_p0 = c0_x_6_reg_3262;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1095_p0 = mul154_1_reg_3220;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1095_p0 = tmp_1_3_reg_2992;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1095_p0 = tmp_1_reg_2934;
    end else begin
        grp_fu_1095_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1095_p1 = sub11_reg_3706;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1095_p1 = sub6_reg_3520;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1095_p1 = add162_1_reg_3396;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1095_p1 = add199_1_reg_3230;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1095_p1 = add2_reg_3166;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1095_p1 = bitcast_ln148_25_fu_2164_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1095_p1 = bitcast_ln148_21_fu_1956_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1095_p1 = bitcast_ln148_1_fu_1816_p1;
    end else begin
        grp_fu_1095_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_1099_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_1099_opcode = 2'd0;
    end else begin
        grp_fu_1099_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1099_p0 = c0_y_10_reg_3568_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1099_p0 = c0_x_7_reg_3274_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1099_p0 = c0_y_20_reg_3350;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1099_p0 = c0_y_18_reg_3292;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1099_p0 = c0_y_6_reg_3268;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1099_p0 = bitcast_ln148_27_fu_2198_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1099_p0 = bitcast_ln148_23_fu_1990_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1099_p0 = bitcast_ln148_3_fu_1850_p1;
    end else begin
        grp_fu_1099_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1099_p1 = sub12_reg_3742;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1099_p1 = sub4_reg_3514;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1099_p1 = mul176_1_reg_3372;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1099_p1 = add202_1_reg_3236;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1099_p1 = add3_reg_3172;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1099_p1 = mul161_1_reg_3225;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1099_p1 = sub104_1_reg_2998;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1099_p1 = sub3_reg_2940;
    end else begin
        grp_fu_1099_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_1103_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1103_opcode = 2'd0;
    end else begin
        grp_fu_1103_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1103_p0 = c0_y_10_reg_3568_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1103_p0 = mul2_reg_3616;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1103_p0 = c0_y_11_reg_3556;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1103_p0 = c0_x_11_reg_3550;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1103_p0 = c0_y_7_reg_3280_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1103_p0 = c0_x_8_reg_3098_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1103_p0 = bitcast_ln148_29_fu_2025_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1103_p0 = bitcast_ln148_9_fu_1885_p1;
    end else begin
        grp_fu_1103_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1103_p1 = sub12_reg_3742;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1103_p1 = bitcast_ln148_17_fu_2375_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1103_p1 = add10_reg_3526;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1103_p1 = add_reg_3453;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1103_p1 = sub6_reg_3520;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1103_p1 = sub9_reg_3378;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1103_p1 = bitcast_ln148_31_fu_2061_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1103_p1 = bitcast_ln148_11_fu_1921_p1;
    end else begin
        grp_fu_1103_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_1107_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1107_opcode = 2'd0;
    end else begin
        grp_fu_1107_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1107_p0 = c0_x_22_reg_3598_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1107_p0 = c0_y_19_reg_3304_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1107_p0 = c0_x_19_reg_3298_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1107_p0 = c0_y_11_reg_3556;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1107_p0 = c0_y_8_reg_3104_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1107_p0 = bitcast_ln148_29_fu_2025_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1107_p0 = bitcast_ln148_9_fu_1885_p1;
    end else begin
        grp_fu_1107_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1107_p1 = sub294_1_reg_3748;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1107_p1 = sub220_1_reg_3580;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1107_p1 = sub215_1_reg_3574;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1107_p1 = add10_reg_3526;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1107_p1 = add9_reg_3384;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1107_p1 = bitcast_ln148_31_fu_2061_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1107_p1 = bitcast_ln148_11_fu_1921_p1;
    end else begin
        grp_fu_1107_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1111_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_1111_opcode = 2'd0;
    end else begin
        grp_fu_1111_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1111_p0 = c0_y_22_reg_3604_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1111_p0 = c0_x_23_reg_3586;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1111_p0 = c0_y_19_reg_3304_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1111_p0 = c0_x_11_reg_3550;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1111_p0 = c0_x_8_reg_3098_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1111_p0 = c0_x_15_reg_2980;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1111_p0 = c0_x_5_reg_2922;
    end else begin
        grp_fu_1111_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1111_p1 = sub299_1_reg_3754;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1111_p1 = add278_1_reg_3532;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1111_p1 = sub220_1_reg_3580;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1111_p1 = add_reg_3453;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1111_p1 = sub9_reg_3378;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1111_p1 = add127_1_reg_3004;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1111_p1 = add6_reg_2946;
    end else begin
        grp_fu_1111_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1115_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_1115_opcode = 2'd0;
    end else begin
        grp_fu_1115_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1115_p0 = c0_x_22_reg_3598_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1115_p0 = bitcast_ln148_19_fu_2409_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1115_p0 = c0_y_23_reg_3592;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1115_p0 = c0_x_19_reg_3298_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1115_p0 = c0_y_8_reg_3104_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1115_p0 = c0_y_15_reg_2986;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1115_p0 = c0_y_5_reg_2928;
    end else begin
        grp_fu_1115_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1115_p1 = sub294_1_reg_3748;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1115_p1 = mul4_reg_3646;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1115_p1 = add281_1_reg_3610;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1115_p1 = sub215_1_reg_3574;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1115_p1 = add9_reg_3384;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1115_p1 = add130_1_reg_3010;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1115_p1 = add7_reg_2952;
    end else begin
        grp_fu_1115_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1119_p0 = c0_y_22_reg_3604_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1119_p0 = bitcast_ln148_39_fu_2477_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1119_p0 = mul291_1_reg_3666;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1119_p0 = c0_x_23_reg_3586;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1119_p0 = mul212_1_reg_3402;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1119_p0 = c0_y_20_reg_3350;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1119_p0 = c0_y_9_reg_3316;
    end else begin
        grp_fu_1119_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1119_p1 = sub299_1_reg_3754;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1119_p1 = mul298_1_reg_3701;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1119_p1 = bitcast_ln148_37_fu_2443_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1119_p1 = add278_1_reg_3532;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1119_p1 = bitcast_ln148_33_fu_2300_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1119_p1 = mul176_1_reg_3372;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1119_p1 = mul5_reg_3328;
    end else begin
        grp_fu_1119_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1123_p0 = sub287_1_reg_3544;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1123_p0 = tmp_2_reg_3459;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1123_p0 = sub208_1_reg_3214;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1123_p0 = sub143_1_reg_3188;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1123_p0 = add1_reg_3149;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1123_p0 = sub8_reg_3134;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1123_p0 = tmp_1_4_reg_3074;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1123_p0 = tmp_1_1_reg_3028;
    end else begin
        grp_fu_1123_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_1123_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_1123_p1 = 64'd0;
    end else begin
        grp_fu_1123_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1128_p0 = sub10_reg_3476;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1128_p0 = add149_1_reg_3193;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1128_p0 = tmp_reg_3154;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1128_p0 = add8_reg_3139;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1128_p0 = sub120_1_reg_3080;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1128_p0 = sub5_reg_3034;
    end else begin
        grp_fu_1128_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_1128_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_1128_p1 = 64'd0;
    end else begin
        grp_fu_1128_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1135_p0 = tmp_4_reg_3538;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1135_p0 = tmp_3_reg_3208;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1135_p0 = add175_1_reg_3203;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1135_p0 = sub169_1_reg_3198;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1135_p0 = sub2_reg_3160;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1135_p0 = sub1_reg_3144;
    end else begin
        grp_fu_1135_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_1135_p1 = 64'd0;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_1135_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_1135_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_x_1_read = data_x_1_2_reg_3432_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_x_1_read = data_x_1_reg_3417_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1030_a_x_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_x_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_x_2_read = data_x_2_2_reg_3681_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_x_2_read = data_x_2_reg_3626_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1030_a_x_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_x_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_x_3_read = data_x_3_2_reg_3691_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_x_3_read = data_x_3_reg_3636_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1030_a_x_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_x_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_x_4_read = data_x_4_2_reg_3722_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_x_4_read = data_x_4_reg_3651_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1030_a_x_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_x_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_x_5_read = data_x_5_2_reg_3732_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_x_5_read = data_x_5_reg_3661_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1030_a_x_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_x_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_x_6_read = data_x_6_2_reg_3780;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_x_6_read = data_x_6_reg_3760_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_1030_a_x_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_x_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_x_7_read = data_x_7_2_reg_3790;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_x_7_read = data_x_7_reg_3765_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_1030_a_x_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_x_7_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_y_1_read = data_y_1_2_reg_3437_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_y_1_read = data_y_1_reg_3422_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1030_a_y_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_y_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_y_2_read = data_y_2_2_reg_3686_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_y_2_read = data_y_2_reg_3631_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1030_a_y_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_y_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_y_3_read = data_y_3_2_reg_3712_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_y_3_read = data_y_3_reg_3641_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1030_a_y_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_y_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_y_4_read = data_y_4_2_reg_3727_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_y_4_read = data_y_4_reg_3656_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1030_a_y_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_y_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_y_5_read = data_y_5_2_reg_3737_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_y_5_read = data_y_5_reg_3676_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1030_a_y_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_y_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_y_6_read = data_y_6_2_reg_3785;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_y_6_read = data_y_6_reg_3770;
        end else begin
            grp_twiddles8_fu_1030_a_y_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_y_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_a_y_7_read = data_y_7_2_reg_3795;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_a_y_7_read = data_y_7_reg_3775;
        end else begin
            grp_twiddles8_fu_1030_a_y_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_a_y_7_read = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001_ignoreCallOp1578)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp1575)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001_ignoreCallOp1582)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001_ignoreCallOp1580)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp1576)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp1588)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp1586)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001_ignoreCallOp1584)))) begin
        grp_twiddles8_fu_1030_ap_ce = 1'b1;
    end else begin
        grp_twiddles8_fu_1030_ap_ce = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1577))) begin
            grp_twiddles8_fu_1030_i = or_ln2_reg_2813_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1575))) begin
            grp_twiddles8_fu_1030_i = trunc_ln127_1_reg_2506_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_1030_i = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1030_i = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_x_address0_local = zext_ln133_2_fu_1705_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address0_local = zext_ln133_fu_1630_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address0_local = zext_ln135_1_fu_1576_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address0_local = zext_ln135_fu_1523_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address0_local = zext_ln136_1_fu_1500_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address0_local = zext_ln132_1_fu_1426_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address0_local = zext_ln136_fu_1400_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address0_local = zext_ln132_fu_1370_p1;
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
            work_x_address1_local = zext_ln129_fu_1680_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address1_local = zext_ln127_fu_1612_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address1_local = zext_ln131_1_fu_1554_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address1_local = zext_ln131_fu_1513_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address1_local = zext_ln134_1_fu_1485_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address1_local = zext_ln130_1_fu_1415_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address1_local = zext_ln134_fu_1391_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address1_local = zext_ln130_fu_1360_p1;
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
            work_y_address0_local = zext_ln133_2_fu_1705_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address0_local = zext_ln133_fu_1630_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address0_local = zext_ln135_1_fu_1576_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address0_local = zext_ln135_fu_1523_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address0_local = zext_ln136_1_fu_1500_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address0_local = zext_ln132_1_fu_1426_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address0_local = zext_ln136_fu_1400_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address0_local = zext_ln132_fu_1370_p1;
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
            work_y_address1_local = zext_ln129_fu_1680_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address1_local = zext_ln127_fu_1612_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address1_local = zext_ln131_1_fu_1554_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address1_local = zext_ln131_fu_1513_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address1_local = zext_ln134_1_fu_1485_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address1_local = zext_ln130_1_fu_1415_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address1_local = zext_ln134_fu_1391_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address1_local = zext_ln130_fu_1360_p1;
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
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = reg_1237;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = reg_1242;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = reg_1247;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = DATA_x_4_address0_local;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = reg_1252;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = DATA_x_5_address0_local;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = reg_1257;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = DATA_x_6_address0_local;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = reg_1262;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = DATA_x_7_address0_local;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = reg_1267;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_address0 = zext_ln129_reg_2818_pp0_iter3_reg;
assign DATA_x_address1 = zext_ln127_reg_2752_pp0_iter3_reg;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = data_x_0_1_reg_3465;
assign DATA_x_d1 = data_x_0_reg_3442;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign DATA_y_10_address0 = DATA_y_10_addr_reg_3810;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_10_d0 = reg_1280;
assign DATA_y_10_we0 = DATA_y_10_we0_local;
assign DATA_y_11_address0 = DATA_y_11_addr_reg_3820;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_11_d0 = reg_1288;
assign DATA_y_11_we0 = DATA_y_11_we0_local;
assign DATA_y_12_address0 = DATA_y_12_addr_reg_3830;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_12_d0 = reg_1296;
assign DATA_y_12_we0 = DATA_y_12_we0_local;
assign DATA_y_13_address0 = DATA_y_13_addr_reg_3840;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_13_d0 = reg_1304;
assign DATA_y_13_we0 = DATA_y_13_we0_local;
assign DATA_y_14_address0 = DATA_y_14_addr_reg_3850;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_14_d0 = reg_1312;
assign DATA_y_14_we0 = DATA_y_14_we0_local;
assign DATA_y_15_address0 = DATA_y_15_addr_reg_3860;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_15_d0 = reg_1320;
assign DATA_y_15_we0 = DATA_y_15_we0_local;
assign DATA_y_16_address0 = zext_ln154_fu_2339_p1;
assign DATA_y_16_ce0 = DATA_y_16_ce0_local;
assign DATA_y_16_d0 = data_y_0_reg_3447;
assign DATA_y_16_we0 = DATA_y_16_we0_local;
assign DATA_y_17_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_17_ce0 = DATA_y_17_ce0_local;
assign DATA_y_17_d0 = reg_1272;
assign DATA_y_17_we0 = DATA_y_17_we0_local;
assign DATA_y_18_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_18_ce0 = DATA_y_18_ce0_local;
assign DATA_y_18_d0 = reg_1280;
assign DATA_y_18_we0 = DATA_y_18_we0_local;
assign DATA_y_19_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_19_ce0 = DATA_y_19_ce0_local;
assign DATA_y_19_d0 = reg_1288;
assign DATA_y_19_we0 = DATA_y_19_we0_local;
assign DATA_y_1_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_1272;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_20_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_20_ce0 = DATA_y_20_ce0_local;
assign DATA_y_20_d0 = reg_1296;
assign DATA_y_20_we0 = DATA_y_20_we0_local;
assign DATA_y_21_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_21_ce0 = DATA_y_21_ce0_local;
assign DATA_y_21_d0 = reg_1304;
assign DATA_y_21_we0 = DATA_y_21_we0_local;
assign DATA_y_22_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_22_ce0 = DATA_y_22_ce0_local;
assign DATA_y_22_d0 = reg_1312;
assign DATA_y_22_we0 = DATA_y_22_we0_local;
assign DATA_y_23_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_23_ce0 = DATA_y_23_ce0_local;
assign DATA_y_23_d0 = reg_1320;
assign DATA_y_23_we0 = DATA_y_23_we0_local;
assign DATA_y_24_address0 = zext_ln154_fu_2339_p1;
assign DATA_y_24_ce0 = DATA_y_24_ce0_local;
assign DATA_y_24_d0 = data_y_0_1_reg_3470;
assign DATA_y_24_we0 = DATA_y_24_we0_local;
assign DATA_y_25_address0 = DATA_y_25_addr_reg_3805;
assign DATA_y_25_ce0 = DATA_y_25_ce0_local;
assign DATA_y_25_d0 = reg_1272;
assign DATA_y_25_we0 = DATA_y_25_we0_local;
assign DATA_y_26_address0 = DATA_y_26_addr_reg_3815;
assign DATA_y_26_ce0 = DATA_y_26_ce0_local;
assign DATA_y_26_d0 = reg_1280;
assign DATA_y_26_we0 = DATA_y_26_we0_local;
assign DATA_y_27_address0 = DATA_y_27_addr_reg_3825;
assign DATA_y_27_ce0 = DATA_y_27_ce0_local;
assign DATA_y_27_d0 = reg_1288;
assign DATA_y_27_we0 = DATA_y_27_we0_local;
assign DATA_y_28_address0 = DATA_y_28_addr_reg_3835;
assign DATA_y_28_ce0 = DATA_y_28_ce0_local;
assign DATA_y_28_d0 = reg_1296;
assign DATA_y_28_we0 = DATA_y_28_we0_local;
assign DATA_y_29_address0 = DATA_y_29_addr_reg_3845;
assign DATA_y_29_ce0 = DATA_y_29_ce0_local;
assign DATA_y_29_d0 = reg_1304;
assign DATA_y_29_we0 = DATA_y_29_we0_local;
assign DATA_y_2_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_1280;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_30_address0 = DATA_y_30_addr_reg_3855;
assign DATA_y_30_ce0 = DATA_y_30_ce0_local;
assign DATA_y_30_d0 = reg_1312;
assign DATA_y_30_we0 = DATA_y_30_we0_local;
assign DATA_y_31_address0 = DATA_y_31_addr_reg_3865;
assign DATA_y_31_ce0 = DATA_y_31_ce0_local;
assign DATA_y_31_d0 = reg_1320;
assign DATA_y_31_we0 = DATA_y_31_we0_local;
assign DATA_y_3_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_1288;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_1296;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_1304;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_1312;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = zext_ln154_reg_3482_pp0_iter23_reg;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_1320;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_8_address0 = zext_ln154_fu_2339_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_8_d0 = data_y_0_1_reg_3470;
assign DATA_y_8_we0 = DATA_y_8_we0_local;
assign DATA_y_9_address0 = DATA_y_9_addr_reg_3800;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_9_d0 = reg_1272;
assign DATA_y_9_we0 = DATA_y_9_we0_local;
assign DATA_y_address0 = zext_ln154_fu_2339_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = data_y_0_reg_3447;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln127_fu_1729_p2 = (tid_7_reg_2489 + 7'd2);
assign add_ln130_fu_1409_p2 = (zext_ln127_2_fu_1406_p1 + 8'd65);
assign add_ln132_fu_1421_p2 = (zext_ln127_1_reg_2540 + 9'd193);
assign add_ln134_1_fu_1480_p2 = ($signed(zext_ln127_1_reg_2540) + $signed(9'd321));
assign add_ln134_fu_1385_p2 = ($signed(zext_ln127_1_fu_1382_p1) + $signed(9'd320));
assign add_ln136_fu_1491_p2 = ($signed(tid_7_reg_2489) + $signed(7'd65));
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
assign bit_sel10_fu_2035_p3 = bitcast_ln148_30_fu_2031_p1[64'd63];
assign bit_sel11_fu_2206_p3 = bitcast_ln148_12_fu_2203_p1[64'd63];
assign bit_sel12_fu_2240_p3 = bitcast_ln148_14_fu_2237_p1[64'd63];
assign bit_sel13_fu_1999_p3 = bitcast_ln148_28_fu_1995_p1[64'd63];
assign bit_sel14_fu_2349_p3 = bitcast_ln148_16_fu_2346_p1[64'd63];
assign bit_sel15_fu_2383_p3 = bitcast_ln148_18_fu_2380_p1[64'd63];
assign bit_sel16_fu_2172_p3 = bitcast_ln148_26_fu_2169_p1[64'd63];
assign bit_sel17_fu_1930_p3 = bitcast_ln148_20_fu_1927_p1[64'd63];
assign bit_sel18_fu_1964_p3 = bitcast_ln148_22_fu_1961_p1[64'd63];
assign bit_sel19_fu_2138_p3 = bitcast_ln148_24_fu_2135_p1[64'd63];
assign bit_sel1_fu_2417_p3 = bitcast_ln148_36_fu_2414_p1[64'd63];
assign bit_sel2_fu_1790_p3 = bitcast_ln148_fu_1787_p1[64'd63];
assign bit_sel3_fu_1824_p3 = bitcast_ln148_2_fu_1821_p1[64'd63];
assign bit_sel4_fu_2308_p3 = bitcast_ln148_34_fu_2305_p1[64'd63];
assign bit_sel5_fu_2070_p3 = bitcast_ln148_4_fu_2067_p1[64'd63];
assign bit_sel6_fu_2104_p3 = bitcast_ln148_6_fu_2101_p1[64'd63];
assign bit_sel7_fu_2274_p3 = bitcast_ln148_32_fu_2271_p1[64'd63];
assign bit_sel8_fu_1859_p3 = bitcast_ln148_8_fu_1855_p1[64'd63];
assign bit_sel9_fu_1895_p3 = bitcast_ln148_10_fu_1891_p1[64'd63];
assign bit_sel_fu_2451_p3 = bitcast_ln148_38_fu_2448_p1[64'd63];
assign bitcast_ln133_1_fu_1769_p1 = reg_1201;
assign bitcast_ln133_fu_1745_p1 = reg_1201;
assign bitcast_ln134_1_fu_1566_p1 = reg_1213;
assign bitcast_ln134_fu_1444_p1 = reg_1213;
assign bitcast_ln135_1_fu_1711_p1 = reg_1201;
assign bitcast_ln135_fu_1636_p1 = reg_1201;
assign bitcast_ln136_1_fu_1582_p1 = reg_1217;
assign bitcast_ln136_fu_1450_p1 = reg_1217;
assign bitcast_ln142_1_fu_1781_p1 = reg_1209;
assign bitcast_ln142_fu_1757_p1 = reg_1209;
assign bitcast_ln143_1_fu_1600_p1 = reg_1221;
assign bitcast_ln143_fu_1468_p1 = reg_1221;
assign bitcast_ln144_1_fu_1723_p1 = reg_1209;
assign bitcast_ln144_fu_1648_p1 = reg_1209;
assign bitcast_ln145_1_fu_1606_p1 = reg_1225;
assign bitcast_ln145_fu_1474_p1 = reg_1225;
assign bitcast_ln148_10_fu_1891_p1 = reg_1233;
assign bitcast_ln148_11_fu_1921_p1 = xor_ln148_5_fu_1913_p3;
assign bitcast_ln148_12_fu_2203_p1 = sub2_reg_3160_pp0_iter3_reg;
assign bitcast_ln148_13_fu_2232_p1 = xor_ln148_6_fu_2224_p3;
assign bitcast_ln148_14_fu_2237_p1 = tmp_reg_3154_pp0_iter3_reg;
assign bitcast_ln148_15_fu_2266_p1 = xor_ln148_7_fu_2258_p3;
assign bitcast_ln148_16_fu_2346_p1 = sub10_reg_3476;
assign bitcast_ln148_17_fu_2375_p1 = xor_ln148_8_fu_2367_p3;
assign bitcast_ln148_18_fu_2380_p1 = tmp_2_reg_3459_pp0_iter5_reg;
assign bitcast_ln148_19_fu_2409_p1 = xor_ln148_9_fu_2401_p3;
assign bitcast_ln148_1_fu_1816_p1 = xor_ln1_fu_1808_p3;
assign bitcast_ln148_20_fu_1927_p1 = sub104_1_reg_2998;
assign bitcast_ln148_21_fu_1956_p1 = xor_ln148_s_fu_1948_p3;
assign bitcast_ln148_22_fu_1961_p1 = tmp_1_3_reg_2992;
assign bitcast_ln148_23_fu_1990_p1 = xor_ln148_10_fu_1982_p3;
assign bitcast_ln148_24_fu_2135_p1 = sub120_1_reg_3080;
assign bitcast_ln148_25_fu_2164_p1 = xor_ln148_11_fu_2156_p3;
assign bitcast_ln148_26_fu_2169_p1 = tmp_1_4_reg_3074;
assign bitcast_ln148_27_fu_2198_p1 = xor_ln148_12_fu_2190_p3;
assign bitcast_ln148_28_fu_1995_p1 = reg_1229;
assign bitcast_ln148_29_fu_2025_p1 = xor_ln148_13_fu_2017_p3;
assign bitcast_ln148_2_fu_1821_p1 = tmp_1_reg_2934;
assign bitcast_ln148_30_fu_2031_p1 = reg_1233;
assign bitcast_ln148_31_fu_2061_p1 = xor_ln148_14_fu_2053_p3;
assign bitcast_ln148_32_fu_2271_p1 = sub208_1_reg_3214_pp0_iter3_reg;
assign bitcast_ln148_33_fu_2300_p1 = xor_ln148_15_fu_2292_p3;
assign bitcast_ln148_34_fu_2305_p1 = tmp_3_reg_3208_pp0_iter3_reg;
assign bitcast_ln148_35_fu_2334_p1 = xor_ln148_16_fu_2326_p3;
assign bitcast_ln148_36_fu_2414_p1 = sub287_1_reg_3544_pp0_iter5_reg;
assign bitcast_ln148_37_fu_2443_p1 = xor_ln148_17_fu_2435_p3;
assign bitcast_ln148_38_fu_2448_p1 = tmp_4_reg_3538_pp0_iter5_reg;
assign bitcast_ln148_39_fu_2477_p1 = xor_ln148_18_fu_2469_p3;
assign bitcast_ln148_3_fu_1850_p1 = xor_ln148_1_fu_1842_p3;
assign bitcast_ln148_4_fu_2067_p1 = sub5_reg_3034_pp0_iter2_reg;
assign bitcast_ln148_5_fu_2096_p1 = xor_ln148_2_fu_2088_p3;
assign bitcast_ln148_6_fu_2101_p1 = tmp_1_1_reg_3028_pp0_iter2_reg;
assign bitcast_ln148_7_fu_2130_p1 = xor_ln148_3_fu_2122_p3;
assign bitcast_ln148_8_fu_1855_p1 = reg_1229;
assign bitcast_ln148_9_fu_1885_p1 = xor_ln148_4_fu_1877_p3;
assign bitcast_ln148_fu_1787_p1 = sub3_reg_2940;
assign c0_x_119_fu_1432_p1 = reg_1197;
assign c0_x_120_fu_1617_p1 = reg_1197;
assign c0_x_121_fu_1438_p1 = reg_1201;
assign c0_x_122_fu_1763_p1 = reg_1197;
assign c0_x_123_fu_1529_p1 = reg_1197;
assign c0_x_124_fu_1686_p1 = reg_1197;
assign c0_x_125_fu_1560_p1 = reg_1201;
assign c0_x_fu_1739_p1 = reg_1197;
assign c0_y_119_fu_1456_p1 = reg_1205;
assign c0_y_120_fu_1642_p1 = reg_1205;
assign c0_y_121_fu_1462_p1 = reg_1209;
assign c0_y_122_fu_1775_p1 = reg_1205;
assign c0_y_123_fu_1588_p1 = reg_1205;
assign c0_y_124_fu_1717_p1 = reg_1205;
assign c0_y_125_fu_1594_p1 = reg_1209;
assign c0_y_fu_1751_p1 = reg_1205;
assign grp_fu_1000_p_ce = 1'b1;
assign grp_fu_1000_p_din0 = grp_fu_1067_p0;
assign grp_fu_1000_p_din1 = grp_fu_1067_p1;
assign grp_fu_1000_p_opcode = 2'd0;
assign grp_fu_1004_p_ce = 1'b1;
assign grp_fu_1004_p_din0 = grp_fu_1071_p0;
assign grp_fu_1004_p_din1 = grp_fu_1071_p1;
assign grp_fu_1004_p_opcode = grp_fu_1071_opcode;
assign grp_fu_1008_p_ce = 1'b1;
assign grp_fu_1008_p_din0 = grp_fu_1075_p0;
assign grp_fu_1008_p_din1 = grp_fu_1075_p1;
assign grp_fu_1008_p_opcode = 2'd1;
assign grp_fu_1012_p_ce = 1'b1;
assign grp_fu_1012_p_din0 = grp_fu_1079_p0;
assign grp_fu_1012_p_din1 = grp_fu_1079_p1;
assign grp_fu_1012_p_opcode = grp_fu_1079_opcode;
assign grp_fu_1016_p_ce = 1'b1;
assign grp_fu_1016_p_din0 = grp_fu_1083_p0;
assign grp_fu_1016_p_din1 = grp_fu_1083_p1;
assign grp_fu_1016_p_opcode = 2'd0;
assign grp_fu_1020_p_ce = 1'b1;
assign grp_fu_1020_p_din0 = grp_fu_1087_p0;
assign grp_fu_1020_p_din1 = grp_fu_1087_p1;
assign grp_fu_1020_p_opcode = grp_fu_1087_opcode;
assign grp_fu_1024_p_ce = 1'b1;
assign grp_fu_1024_p_din0 = grp_fu_1091_p0;
assign grp_fu_1024_p_din1 = grp_fu_1091_p1;
assign grp_fu_1024_p_opcode = grp_fu_1091_opcode;
assign grp_fu_1028_p_ce = 1'b1;
assign grp_fu_1028_p_din0 = grp_fu_1095_p0;
assign grp_fu_1028_p_din1 = grp_fu_1095_p1;
assign grp_fu_1028_p_opcode = grp_fu_1095_opcode;
assign grp_fu_1032_p_ce = 1'b1;
assign grp_fu_1032_p_din0 = grp_fu_1099_p0;
assign grp_fu_1032_p_din1 = grp_fu_1099_p1;
assign grp_fu_1032_p_opcode = grp_fu_1099_opcode;
assign grp_fu_1036_p_ce = 1'b1;
assign grp_fu_1036_p_din0 = grp_fu_1103_p0;
assign grp_fu_1036_p_din1 = grp_fu_1103_p1;
assign grp_fu_1036_p_opcode = grp_fu_1103_opcode;
assign grp_fu_1040_p_ce = 1'b1;
assign grp_fu_1040_p_din0 = grp_fu_1107_p0;
assign grp_fu_1040_p_din1 = grp_fu_1107_p1;
assign grp_fu_1040_p_opcode = grp_fu_1107_opcode;
assign grp_fu_1044_p_ce = 1'b1;
assign grp_fu_1044_p_din0 = grp_fu_1111_p0;
assign grp_fu_1044_p_din1 = grp_fu_1111_p1;
assign grp_fu_1044_p_opcode = grp_fu_1111_opcode;
assign grp_fu_1048_p_ce = 1'b1;
assign grp_fu_1048_p_din0 = grp_fu_1115_p0;
assign grp_fu_1048_p_din1 = grp_fu_1115_p1;
assign grp_fu_1048_p_opcode = grp_fu_1115_opcode;
assign grp_fu_1052_p_ce = 1'b1;
assign grp_fu_1052_p_din0 = grp_fu_1119_p0;
assign grp_fu_1052_p_din1 = grp_fu_1119_p1;
assign grp_fu_1052_p_opcode = 2'd1;
assign grp_fu_1056_p_ce = 1'b1;
assign grp_fu_1056_p_din0 = grp_fu_1123_p0;
assign grp_fu_1056_p_din1 = grp_fu_1123_p1;
assign grp_fu_1060_p_ce = 1'b1;
assign grp_fu_1060_p_din0 = grp_fu_1128_p0;
assign grp_fu_1060_p_din1 = grp_fu_1128_p1;
assign grp_fu_1064_p_ce = 1'b1;
assign grp_fu_1064_p_din0 = grp_fu_1135_p0;
assign grp_fu_1064_p_din1 = grp_fu_1135_p1;
assign grp_fu_996_p_ce = 1'b1;
assign grp_fu_996_p_din0 = grp_fu_1063_p0;
assign grp_fu_996_p_din1 = grp_fu_1063_p1;
assign grp_fu_996_p_opcode = 2'd0;
assign grp_twiddles8_fu_1068_p_ce = grp_twiddles8_fu_1030_ap_ce;
assign grp_twiddles8_fu_1068_p_din1 = grp_twiddles8_fu_1030_a_x_1_read;
assign grp_twiddles8_fu_1068_p_din10 = grp_twiddles8_fu_1030_a_y_3_read;
assign grp_twiddles8_fu_1068_p_din11 = grp_twiddles8_fu_1030_a_y_4_read;
assign grp_twiddles8_fu_1068_p_din12 = grp_twiddles8_fu_1030_a_y_5_read;
assign grp_twiddles8_fu_1068_p_din13 = grp_twiddles8_fu_1030_a_y_6_read;
assign grp_twiddles8_fu_1068_p_din14 = grp_twiddles8_fu_1030_a_y_7_read;
assign grp_twiddles8_fu_1068_p_din15 = grp_twiddles8_fu_1030_i;
assign grp_twiddles8_fu_1068_p_din16 = 10'd512;
assign grp_twiddles8_fu_1068_p_din2 = grp_twiddles8_fu_1030_a_x_2_read;
assign grp_twiddles8_fu_1068_p_din3 = grp_twiddles8_fu_1030_a_x_3_read;
assign grp_twiddles8_fu_1068_p_din4 = grp_twiddles8_fu_1030_a_x_4_read;
assign grp_twiddles8_fu_1068_p_din5 = grp_twiddles8_fu_1030_a_x_5_read;
assign grp_twiddles8_fu_1068_p_din6 = grp_twiddles8_fu_1030_a_x_6_read;
assign grp_twiddles8_fu_1068_p_din7 = grp_twiddles8_fu_1030_a_x_7_read;
assign grp_twiddles8_fu_1068_p_din8 = grp_twiddles8_fu_1030_a_y_1_read;
assign grp_twiddles8_fu_1068_p_din9 = grp_twiddles8_fu_1030_a_y_2_read;
assign icmp_ln163_fu_1376_p2 = ((trunc_ln127_fu_1344_p1 == 2'd0) ? 1'b1 : 1'b0);
assign or_ln2_fu_1672_p3 = {{tmp_s_fu_1663_p4}, {1'd1}};
assign sext_ln132_fu_1366_p1 = zext_ln130_cast_fu_1352_p3;
assign sext_ln135_1_fu_1572_p1 = zext_ln131_1_cast_fu_1544_p4;
assign sext_ln135_fu_1519_p1 = zext_ln131_cast_fu_1506_p3;
assign sext_ln136_1_fu_1496_p1 = $signed(add_ln136_fu_1491_p2);
assign sext_ln136_fu_1397_p1 = zext_ln130_cast_reg_2511;
assign tmp_30_fu_1336_p3 = ap_sig_allocacmp_tid_7[32'd6];
assign tmp_49_fu_1535_p4 = {{tid_7_reg_2489[6:1]}};
assign tmp_s_fu_1663_p4 = {{tid_7_reg_2489[5:1]}};
assign trunc_ln127_1_fu_1348_p1 = ap_sig_allocacmp_tid_7[5:0];
assign trunc_ln127_fu_1344_p1 = ap_sig_allocacmp_tid_7[1:0];
assign trunc_ln148_10_fu_1944_p1 = bitcast_ln148_20_fu_1927_p1[62:0];
assign trunc_ln148_11_fu_1978_p1 = bitcast_ln148_22_fu_1961_p1[62:0];
assign trunc_ln148_12_fu_2152_p1 = bitcast_ln148_24_fu_2135_p1[62:0];
assign trunc_ln148_13_fu_2186_p1 = bitcast_ln148_26_fu_2169_p1[62:0];
assign trunc_ln148_14_fu_2013_p1 = bitcast_ln148_28_fu_1995_p1[62:0];
assign trunc_ln148_15_fu_2049_p1 = bitcast_ln148_30_fu_2031_p1[62:0];
assign trunc_ln148_16_fu_2288_p1 = bitcast_ln148_32_fu_2271_p1[62:0];
assign trunc_ln148_17_fu_2322_p1 = bitcast_ln148_34_fu_2305_p1[62:0];
assign trunc_ln148_18_fu_2431_p1 = bitcast_ln148_36_fu_2414_p1[62:0];
assign trunc_ln148_19_fu_2465_p1 = bitcast_ln148_38_fu_2448_p1[62:0];
assign trunc_ln148_1_fu_1838_p1 = bitcast_ln148_2_fu_1821_p1[62:0];
assign trunc_ln148_2_fu_2084_p1 = bitcast_ln148_4_fu_2067_p1[62:0];
assign trunc_ln148_3_fu_2118_p1 = bitcast_ln148_6_fu_2101_p1[62:0];
assign trunc_ln148_4_fu_1873_p1 = bitcast_ln148_8_fu_1855_p1[62:0];
assign trunc_ln148_5_fu_1909_p1 = bitcast_ln148_10_fu_1891_p1[62:0];
assign trunc_ln148_6_fu_2220_p1 = bitcast_ln148_12_fu_2203_p1[62:0];
assign trunc_ln148_7_fu_2254_p1 = bitcast_ln148_14_fu_2237_p1[62:0];
assign trunc_ln148_8_fu_2363_p1 = bitcast_ln148_16_fu_2346_p1[62:0];
assign trunc_ln148_9_fu_2397_p1 = bitcast_ln148_18_fu_2380_p1[62:0];
assign trunc_ln148_fu_1804_p1 = bitcast_ln148_fu_1787_p1[62:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign xor_ln148_10_fu_1982_p3 = {{xor_ln148_29_fu_1972_p2}, {trunc_ln148_11_fu_1978_p1}};
assign xor_ln148_11_fu_2156_p3 = {{xor_ln148_30_fu_2146_p2}, {trunc_ln148_12_fu_2152_p1}};
assign xor_ln148_12_fu_2190_p3 = {{xor_ln148_31_fu_2180_p2}, {trunc_ln148_13_fu_2186_p1}};
assign xor_ln148_13_fu_2017_p3 = {{xor_ln148_32_fu_2007_p2}, {trunc_ln148_14_fu_2013_p1}};
assign xor_ln148_14_fu_2053_p3 = {{xor_ln148_33_fu_2043_p2}, {trunc_ln148_15_fu_2049_p1}};
assign xor_ln148_15_fu_2292_p3 = {{xor_ln148_34_fu_2282_p2}, {trunc_ln148_16_fu_2288_p1}};
assign xor_ln148_16_fu_2326_p3 = {{xor_ln148_35_fu_2316_p2}, {trunc_ln148_17_fu_2322_p1}};
assign xor_ln148_17_fu_2435_p3 = {{xor_ln148_36_fu_2425_p2}, {trunc_ln148_18_fu_2431_p1}};
assign xor_ln148_18_fu_2469_p3 = {{xor_ln148_37_fu_2459_p2}, {trunc_ln148_19_fu_2465_p1}};
assign xor_ln148_19_fu_1798_p2 = (bit_sel2_fu_1790_p3 ^ 1'd1);
assign xor_ln148_1_fu_1842_p3 = {{xor_ln148_fu_1832_p2}, {trunc_ln148_1_fu_1838_p1}};
assign xor_ln148_20_fu_2078_p2 = (bit_sel5_fu_2070_p3 ^ 1'd1);
assign xor_ln148_21_fu_2112_p2 = (bit_sel6_fu_2104_p3 ^ 1'd1);
assign xor_ln148_22_fu_1867_p2 = (bit_sel8_fu_1859_p3 ^ 1'd1);
assign xor_ln148_23_fu_1903_p2 = (bit_sel9_fu_1895_p3 ^ 1'd1);
assign xor_ln148_24_fu_2214_p2 = (bit_sel11_fu_2206_p3 ^ 1'd1);
assign xor_ln148_25_fu_2248_p2 = (bit_sel12_fu_2240_p3 ^ 1'd1);
assign xor_ln148_26_fu_2357_p2 = (bit_sel14_fu_2349_p3 ^ 1'd1);
assign xor_ln148_27_fu_2391_p2 = (bit_sel15_fu_2383_p3 ^ 1'd1);
assign xor_ln148_28_fu_1938_p2 = (bit_sel17_fu_1930_p3 ^ 1'd1);
assign xor_ln148_29_fu_1972_p2 = (bit_sel18_fu_1964_p3 ^ 1'd1);
assign xor_ln148_2_fu_2088_p3 = {{xor_ln148_20_fu_2078_p2}, {trunc_ln148_2_fu_2084_p1}};
assign xor_ln148_30_fu_2146_p2 = (bit_sel19_fu_2138_p3 ^ 1'd1);
assign xor_ln148_31_fu_2180_p2 = (bit_sel16_fu_2172_p3 ^ 1'd1);
assign xor_ln148_32_fu_2007_p2 = (bit_sel13_fu_1999_p3 ^ 1'd1);
assign xor_ln148_33_fu_2043_p2 = (bit_sel10_fu_2035_p3 ^ 1'd1);
assign xor_ln148_34_fu_2282_p2 = (bit_sel7_fu_2274_p3 ^ 1'd1);
assign xor_ln148_35_fu_2316_p2 = (bit_sel4_fu_2308_p3 ^ 1'd1);
assign xor_ln148_36_fu_2425_p2 = (bit_sel1_fu_2417_p3 ^ 1'd1);
assign xor_ln148_37_fu_2459_p2 = (bit_sel_fu_2451_p3 ^ 1'd1);
assign xor_ln148_3_fu_2122_p3 = {{xor_ln148_21_fu_2112_p2}, {trunc_ln148_3_fu_2118_p1}};
assign xor_ln148_4_fu_1877_p3 = {{xor_ln148_22_fu_1867_p2}, {trunc_ln148_4_fu_1873_p1}};
assign xor_ln148_5_fu_1913_p3 = {{xor_ln148_23_fu_1903_p2}, {trunc_ln148_5_fu_1909_p1}};
assign xor_ln148_6_fu_2224_p3 = {{xor_ln148_24_fu_2214_p2}, {trunc_ln148_6_fu_2220_p1}};
assign xor_ln148_7_fu_2258_p3 = {{xor_ln148_25_fu_2248_p2}, {trunc_ln148_7_fu_2254_p1}};
assign xor_ln148_8_fu_2367_p3 = {{xor_ln148_26_fu_2357_p2}, {trunc_ln148_8_fu_2363_p1}};
assign xor_ln148_9_fu_2401_p3 = {{xor_ln148_27_fu_2391_p2}, {trunc_ln148_9_fu_2397_p1}};
assign xor_ln148_fu_1832_p2 = (bit_sel3_fu_1824_p3 ^ 1'd1);
assign xor_ln148_s_fu_1948_p3 = {{xor_ln148_28_fu_1938_p2}, {trunc_ln148_10_fu_1944_p1}};
assign xor_ln1_fu_1808_p3 = {{xor_ln148_19_fu_1798_p2}, {trunc_ln148_fu_1804_p1}};
assign zext_ln127_1_fu_1382_p1 = tid_7_reg_2489;
assign zext_ln127_2_fu_1406_p1 = tid_7_reg_2489;
assign zext_ln127_fu_1612_p1 = tid_7_reg_2489;
assign zext_ln129_fu_1680_p1 = or_ln2_fu_1672_p3;
assign zext_ln130_1_fu_1415_p1 = add_ln130_fu_1409_p2;
assign zext_ln130_cast_fu_1352_p3 = {{1'd1}, {trunc_ln127_1_fu_1348_p1}};
assign zext_ln130_fu_1360_p1 = $unsigned(zext_ln130_cast_fu_1352_p3);
assign zext_ln131_1_cast_fu_1544_p4 = {{{{1'd1}, {tmp_49_fu_1535_p4}}}, {1'd1}};
assign zext_ln131_1_fu_1554_p1 = $unsigned(zext_ln131_1_cast_fu_1544_p4);
assign zext_ln131_cast_fu_1506_p3 = {{1'd1}, {tid_7_reg_2489}};
assign zext_ln131_fu_1513_p1 = $unsigned(zext_ln131_cast_fu_1506_p3);
assign zext_ln132_1_fu_1426_p1 = add_ln132_fu_1421_p2;
assign zext_ln132_fu_1370_p1 = $unsigned(sext_ln132_fu_1366_p1);
assign zext_ln133_1_cast_fu_1695_p4 = {{{{1'd1}, {zext_ln133_1_fu_1692_p1}}}, {1'd1}};
assign zext_ln133_1_fu_1692_p1 = tmp_49_reg_2685;
assign zext_ln133_2_fu_1705_p1 = zext_ln133_1_cast_fu_1695_p4;
assign zext_ln133_cast_fu_1623_p3 = {{1'd1}, {zext_ln127_2_reg_2566}};
assign zext_ln133_fu_1630_p1 = zext_ln133_cast_fu_1623_p3;
assign zext_ln134_1_fu_1485_p1 = add_ln134_1_fu_1480_p2;
assign zext_ln134_fu_1391_p1 = add_ln134_fu_1385_p2;
assign zext_ln135_1_fu_1576_p1 = $unsigned(sext_ln135_1_fu_1572_p1);
assign zext_ln135_fu_1523_p1 = $unsigned(sext_ln135_fu_1519_p1);
assign zext_ln136_1_fu_1500_p1 = $unsigned(sext_ln136_1_fu_1496_p1);
assign zext_ln136_fu_1400_p1 = $unsigned(sext_ln136_fu_1397_p1);
assign zext_ln154_fu_2339_p1 = lshr_ln_reg_2808_pp0_iter3_reg;
always @ (posedge ap_clk) begin
    zext_ln130_cast_reg_2511[6] <= 1'b1;
    zext_ln127_1_reg_2540[8:7] <= 2'b00;
    zext_ln127_2_reg_2566[7] <= 1'b0;
    zext_ln127_reg_2752[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter3_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter4_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter5_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter6_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter7_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter8_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter9_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter10_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter11_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter12_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter13_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter14_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter15_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter16_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter17_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter18_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter19_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter20_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter21_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2752_pp0_iter22_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    or_ln2_reg_2813[0] <= 1'b1;
    or_ln2_reg_2813_pp0_iter1_reg[0] <= 1'b1;
    or_ln2_reg_2813_pp0_iter2_reg[0] <= 1'b1;
    or_ln2_reg_2813_pp0_iter3_reg[0] <= 1'b1;
    or_ln2_reg_2813_pp0_iter4_reg[0] <= 1'b1;
    or_ln2_reg_2813_pp0_iter5_reg[0] <= 1'b1;
    or_ln2_reg_2813_pp0_iter6_reg[0] <= 1'b1;
    or_ln2_reg_2813_pp0_iter7_reg[0] <= 1'b1;
    zext_ln129_reg_2818[0] <= 1'b1;
    zext_ln129_reg_2818[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter1_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter2_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter3_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter4_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter4_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter5_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter5_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter6_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter6_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter7_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter7_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter8_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter8_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter9_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter9_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter10_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter10_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter11_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter11_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter12_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter12_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter13_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter13_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter14_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter14_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter15_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter15_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter16_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter16_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter17_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter17_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter18_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter18_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter19_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter19_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter20_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter20_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter21_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter21_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2818_pp0_iter22_reg[0] <= 1'b1;
    zext_ln129_reg_2818_pp0_iter22_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter5_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter6_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter7_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter8_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter9_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter10_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter11_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter12_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter13_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter14_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter15_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter16_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter17_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter18_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter19_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter20_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter21_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter22_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3482_pp0_iter23_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
