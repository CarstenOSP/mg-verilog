module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_31_address0,smem_31_ce0,smem_31_we0,smem_31_d0,smem_31_address1,smem_31_ce1,smem_31_we1,smem_31_d1,smem_30_address0,smem_30_ce0,smem_30_we0,smem_30_d0,smem_30_address1,smem_30_ce1,smem_30_we1,smem_30_d1,smem_29_address0,smem_29_ce0,smem_29_we0,smem_29_d0,smem_29_address1,smem_29_ce1,smem_29_we1,smem_29_d1,smem_28_address0,smem_28_ce0,smem_28_we0,smem_28_d0,smem_28_address1,smem_28_ce1,smem_28_we1,smem_28_d1,smem_27_address0,smem_27_ce0,smem_27_we0,smem_27_d0,smem_27_address1,smem_27_ce1,smem_27_we1,smem_27_d1,smem_26_address0,smem_26_ce0,smem_26_we0,smem_26_d0,smem_26_address1,smem_26_ce1,smem_26_we1,smem_26_d1,smem_25_address0,smem_25_ce0,smem_25_we0,smem_25_d0,smem_25_address1,smem_25_ce1,smem_25_we1,smem_25_d1,smem_24_address0,smem_24_ce0,smem_24_we0,smem_24_d0,smem_24_address1,smem_24_ce1,smem_24_we1,smem_24_d1,smem_23_address0,smem_23_ce0,smem_23_we0,smem_23_d0,smem_23_address1,smem_23_ce1,smem_23_we1,smem_23_d1,smem_22_address0,smem_22_ce0,smem_22_we0,smem_22_d0,smem_22_address1,smem_22_ce1,smem_22_we1,smem_22_d1,smem_21_address0,smem_21_ce0,smem_21_we0,smem_21_d0,smem_21_address1,smem_21_ce1,smem_21_we1,smem_21_d1,smem_20_address0,smem_20_ce0,smem_20_we0,smem_20_d0,smem_20_address1,smem_20_ce1,smem_20_we1,smem_20_d1,smem_19_address0,smem_19_ce0,smem_19_we0,smem_19_d0,smem_19_address1,smem_19_ce1,smem_19_we1,smem_19_d1,smem_18_address0,smem_18_ce0,smem_18_we0,smem_18_d0,smem_18_address1,smem_18_ce1,smem_18_we1,smem_18_d1,smem_17_address0,smem_17_ce0,smem_17_we0,smem_17_d0,smem_17_address1,smem_17_ce1,smem_17_we1,smem_17_d1,smem_16_address0,smem_16_ce0,smem_16_we0,smem_16_d0,smem_16_address1,smem_16_ce1,smem_16_we1,smem_16_d1,smem_15_address0,smem_15_ce0,smem_15_we0,smem_15_d0,smem_15_address1,smem_15_ce1,smem_15_we1,smem_15_d1,smem_14_address0,smem_14_ce0,smem_14_we0,smem_14_d0,smem_14_address1,smem_14_ce1,smem_14_we1,smem_14_d1,smem_13_address0,smem_13_ce0,smem_13_we0,smem_13_d0,smem_13_address1,smem_13_ce1,smem_13_we1,smem_13_d1,smem_12_address0,smem_12_ce0,smem_12_we0,smem_12_d0,smem_12_address1,smem_12_ce1,smem_12_we1,smem_12_d1,smem_11_address0,smem_11_ce0,smem_11_we0,smem_11_d0,smem_11_address1,smem_11_ce1,smem_11_we1,smem_11_d1,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_10_address1,smem_10_ce1,smem_10_we1,smem_10_d1,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_9_address1,smem_9_ce1,smem_9_we1,smem_9_d1,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_8_address1,smem_8_ce1,smem_8_we1,smem_8_d1,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_7_address1,smem_7_ce1,smem_7_we1,smem_7_d1,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_6_address1,smem_6_ce1,smem_6_we1,smem_6_d1,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_q1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_q1,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_q1,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_8_address1,DATA_x_8_ce1,DATA_x_8_q1,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_9_address1,DATA_x_9_ce1,DATA_x_9_q1,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_12_address1,DATA_x_12_ce1,DATA_x_12_q1,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_13_address1,DATA_x_13_ce1,DATA_x_13_q1,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_10_address1,DATA_x_10_ce1,DATA_x_10_q1,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_11_address1,DATA_x_11_ce1,DATA_x_11_q1,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_14_address1,DATA_x_14_ce1,DATA_x_14_q1,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,DATA_x_15_address1,DATA_x_15_ce1,DATA_x_15_q1,DATA_x_16_address0,DATA_x_16_ce0,DATA_x_16_q0,DATA_x_16_address1,DATA_x_16_ce1,DATA_x_16_q1,DATA_x_17_address0,DATA_x_17_ce0,DATA_x_17_q0,DATA_x_17_address1,DATA_x_17_ce1,DATA_x_17_q1,DATA_x_20_address0,DATA_x_20_ce0,DATA_x_20_q0,DATA_x_20_address1,DATA_x_20_ce1,DATA_x_20_q1,DATA_x_21_address0,DATA_x_21_ce0,DATA_x_21_q0,DATA_x_21_address1,DATA_x_21_ce1,DATA_x_21_q1,DATA_x_18_address0,DATA_x_18_ce0,DATA_x_18_q0,DATA_x_18_address1,DATA_x_18_ce1,DATA_x_18_q1,DATA_x_19_address0,DATA_x_19_ce0,DATA_x_19_q0,DATA_x_19_address1,DATA_x_19_ce1,DATA_x_19_q1,DATA_x_22_address0,DATA_x_22_ce0,DATA_x_22_q0,DATA_x_22_address1,DATA_x_22_ce1,DATA_x_22_q1,DATA_x_23_address0,DATA_x_23_ce0,DATA_x_23_q0,DATA_x_23_address1,DATA_x_23_ce1,DATA_x_23_q1,DATA_x_24_address0,DATA_x_24_ce0,DATA_x_24_q0,DATA_x_24_address1,DATA_x_24_ce1,DATA_x_24_q1,DATA_x_25_address0,DATA_x_25_ce0,DATA_x_25_q0,DATA_x_25_address1,DATA_x_25_ce1,DATA_x_25_q1,DATA_x_28_address0,DATA_x_28_ce0,DATA_x_28_q0,DATA_x_28_address1,DATA_x_28_ce1,DATA_x_28_q1,DATA_x_29_address0,DATA_x_29_ce0,DATA_x_29_q0,DATA_x_29_address1,DATA_x_29_ce1,DATA_x_29_q1,DATA_x_26_address0,DATA_x_26_ce0,DATA_x_26_q0,DATA_x_26_address1,DATA_x_26_ce1,DATA_x_26_q1,DATA_x_27_address0,DATA_x_27_ce0,DATA_x_27_q0,DATA_x_27_address1,DATA_x_27_ce1,DATA_x_27_q1,DATA_x_30_address0,DATA_x_30_ce0,DATA_x_30_q0,DATA_x_30_address1,DATA_x_30_ce1,DATA_x_30_q1,DATA_x_31_address0,DATA_x_31_ce0,DATA_x_31_q0,DATA_x_31_address1,DATA_x_31_ce1,DATA_x_31_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] smem_31_address0;
output   smem_31_ce0;
output   smem_31_we0;
output  [63:0] smem_31_d0;
output  [4:0] smem_31_address1;
output   smem_31_ce1;
output   smem_31_we1;
output  [63:0] smem_31_d1;
output  [4:0] smem_30_address0;
output   smem_30_ce0;
output   smem_30_we0;
output  [63:0] smem_30_d0;
output  [4:0] smem_30_address1;
output   smem_30_ce1;
output   smem_30_we1;
output  [63:0] smem_30_d1;
output  [4:0] smem_29_address0;
output   smem_29_ce0;
output   smem_29_we0;
output  [63:0] smem_29_d0;
output  [4:0] smem_29_address1;
output   smem_29_ce1;
output   smem_29_we1;
output  [63:0] smem_29_d1;
output  [4:0] smem_28_address0;
output   smem_28_ce0;
output   smem_28_we0;
output  [63:0] smem_28_d0;
output  [4:0] smem_28_address1;
output   smem_28_ce1;
output   smem_28_we1;
output  [63:0] smem_28_d1;
output  [4:0] smem_27_address0;
output   smem_27_ce0;
output   smem_27_we0;
output  [63:0] smem_27_d0;
output  [4:0] smem_27_address1;
output   smem_27_ce1;
output   smem_27_we1;
output  [63:0] smem_27_d1;
output  [4:0] smem_26_address0;
output   smem_26_ce0;
output   smem_26_we0;
output  [63:0] smem_26_d0;
output  [4:0] smem_26_address1;
output   smem_26_ce1;
output   smem_26_we1;
output  [63:0] smem_26_d1;
output  [4:0] smem_25_address0;
output   smem_25_ce0;
output   smem_25_we0;
output  [63:0] smem_25_d0;
output  [4:0] smem_25_address1;
output   smem_25_ce1;
output   smem_25_we1;
output  [63:0] smem_25_d1;
output  [4:0] smem_24_address0;
output   smem_24_ce0;
output   smem_24_we0;
output  [63:0] smem_24_d0;
output  [4:0] smem_24_address1;
output   smem_24_ce1;
output   smem_24_we1;
output  [63:0] smem_24_d1;
output  [4:0] smem_23_address0;
output   smem_23_ce0;
output   smem_23_we0;
output  [63:0] smem_23_d0;
output  [4:0] smem_23_address1;
output   smem_23_ce1;
output   smem_23_we1;
output  [63:0] smem_23_d1;
output  [4:0] smem_22_address0;
output   smem_22_ce0;
output   smem_22_we0;
output  [63:0] smem_22_d0;
output  [4:0] smem_22_address1;
output   smem_22_ce1;
output   smem_22_we1;
output  [63:0] smem_22_d1;
output  [4:0] smem_21_address0;
output   smem_21_ce0;
output   smem_21_we0;
output  [63:0] smem_21_d0;
output  [4:0] smem_21_address1;
output   smem_21_ce1;
output   smem_21_we1;
output  [63:0] smem_21_d1;
output  [4:0] smem_20_address0;
output   smem_20_ce0;
output   smem_20_we0;
output  [63:0] smem_20_d0;
output  [4:0] smem_20_address1;
output   smem_20_ce1;
output   smem_20_we1;
output  [63:0] smem_20_d1;
output  [4:0] smem_19_address0;
output   smem_19_ce0;
output   smem_19_we0;
output  [63:0] smem_19_d0;
output  [4:0] smem_19_address1;
output   smem_19_ce1;
output   smem_19_we1;
output  [63:0] smem_19_d1;
output  [4:0] smem_18_address0;
output   smem_18_ce0;
output   smem_18_we0;
output  [63:0] smem_18_d0;
output  [4:0] smem_18_address1;
output   smem_18_ce1;
output   smem_18_we1;
output  [63:0] smem_18_d1;
output  [4:0] smem_17_address0;
output   smem_17_ce0;
output   smem_17_we0;
output  [63:0] smem_17_d0;
output  [4:0] smem_17_address1;
output   smem_17_ce1;
output   smem_17_we1;
output  [63:0] smem_17_d1;
output  [4:0] smem_16_address0;
output   smem_16_ce0;
output   smem_16_we0;
output  [63:0] smem_16_d0;
output  [4:0] smem_16_address1;
output   smem_16_ce1;
output   smem_16_we1;
output  [63:0] smem_16_d1;
output  [4:0] smem_15_address0;
output   smem_15_ce0;
output   smem_15_we0;
output  [63:0] smem_15_d0;
output  [4:0] smem_15_address1;
output   smem_15_ce1;
output   smem_15_we1;
output  [63:0] smem_15_d1;
output  [4:0] smem_14_address0;
output   smem_14_ce0;
output   smem_14_we0;
output  [63:0] smem_14_d0;
output  [4:0] smem_14_address1;
output   smem_14_ce1;
output   smem_14_we1;
output  [63:0] smem_14_d1;
output  [4:0] smem_13_address0;
output   smem_13_ce0;
output   smem_13_we0;
output  [63:0] smem_13_d0;
output  [4:0] smem_13_address1;
output   smem_13_ce1;
output   smem_13_we1;
output  [63:0] smem_13_d1;
output  [4:0] smem_12_address0;
output   smem_12_ce0;
output   smem_12_we0;
output  [63:0] smem_12_d0;
output  [4:0] smem_12_address1;
output   smem_12_ce1;
output   smem_12_we1;
output  [63:0] smem_12_d1;
output  [4:0] smem_11_address0;
output   smem_11_ce0;
output   smem_11_we0;
output  [63:0] smem_11_d0;
output  [4:0] smem_11_address1;
output   smem_11_ce1;
output   smem_11_we1;
output  [63:0] smem_11_d1;
output  [4:0] smem_10_address0;
output   smem_10_ce0;
output   smem_10_we0;
output  [63:0] smem_10_d0;
output  [4:0] smem_10_address1;
output   smem_10_ce1;
output   smem_10_we1;
output  [63:0] smem_10_d1;
output  [4:0] smem_9_address0;
output   smem_9_ce0;
output   smem_9_we0;
output  [63:0] smem_9_d0;
output  [4:0] smem_9_address1;
output   smem_9_ce1;
output   smem_9_we1;
output  [63:0] smem_9_d1;
output  [4:0] smem_8_address0;
output   smem_8_ce0;
output   smem_8_we0;
output  [63:0] smem_8_d0;
output  [4:0] smem_8_address1;
output   smem_8_ce1;
output   smem_8_we1;
output  [63:0] smem_8_d1;
output  [4:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [4:0] smem_7_address1;
output   smem_7_ce1;
output   smem_7_we1;
output  [63:0] smem_7_d1;
output  [4:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [4:0] smem_6_address1;
output   smem_6_ce1;
output   smem_6_we1;
output  [63:0] smem_6_d1;
output  [4:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [4:0] smem_5_address1;
output   smem_5_ce1;
output   smem_5_we1;
output  [63:0] smem_5_d1;
output  [4:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [4:0] smem_4_address1;
output   smem_4_ce1;
output   smem_4_we1;
output  [63:0] smem_4_d1;
output  [4:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [4:0] smem_3_address1;
output   smem_3_ce1;
output   smem_3_we1;
output  [63:0] smem_3_d1;
output  [4:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [4:0] smem_2_address1;
output   smem_2_ce1;
output   smem_2_we1;
output  [63:0] smem_2_d1;
output  [4:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [4:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [4:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [4:0] smem_address1;
output   smem_ce1;
output   smem_we1;
output  [63:0] smem_d1;
output  [3:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [3:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [3:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [3:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [3:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [3:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
input  [63:0] DATA_x_4_q1;
output  [3:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [3:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
input  [63:0] DATA_x_5_q1;
output  [3:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [3:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [3:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [3:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
output  [3:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [3:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
input  [63:0] DATA_x_6_q1;
output  [3:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [3:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
input  [63:0] DATA_x_7_q1;
output  [3:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
input  [63:0] DATA_x_8_q0;
output  [3:0] DATA_x_8_address1;
output   DATA_x_8_ce1;
input  [63:0] DATA_x_8_q1;
output  [3:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
input  [63:0] DATA_x_9_q0;
output  [3:0] DATA_x_9_address1;
output   DATA_x_9_ce1;
input  [63:0] DATA_x_9_q1;
output  [3:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
input  [63:0] DATA_x_12_q0;
output  [3:0] DATA_x_12_address1;
output   DATA_x_12_ce1;
input  [63:0] DATA_x_12_q1;
output  [3:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
input  [63:0] DATA_x_13_q0;
output  [3:0] DATA_x_13_address1;
output   DATA_x_13_ce1;
input  [63:0] DATA_x_13_q1;
output  [3:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
input  [63:0] DATA_x_10_q0;
output  [3:0] DATA_x_10_address1;
output   DATA_x_10_ce1;
input  [63:0] DATA_x_10_q1;
output  [3:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
input  [63:0] DATA_x_11_q0;
output  [3:0] DATA_x_11_address1;
output   DATA_x_11_ce1;
input  [63:0] DATA_x_11_q1;
output  [3:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
input  [63:0] DATA_x_14_q0;
output  [3:0] DATA_x_14_address1;
output   DATA_x_14_ce1;
input  [63:0] DATA_x_14_q1;
output  [3:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
input  [63:0] DATA_x_15_q0;
output  [3:0] DATA_x_15_address1;
output   DATA_x_15_ce1;
input  [63:0] DATA_x_15_q1;
output  [3:0] DATA_x_16_address0;
output   DATA_x_16_ce0;
input  [63:0] DATA_x_16_q0;
output  [3:0] DATA_x_16_address1;
output   DATA_x_16_ce1;
input  [63:0] DATA_x_16_q1;
output  [3:0] DATA_x_17_address0;
output   DATA_x_17_ce0;
input  [63:0] DATA_x_17_q0;
output  [3:0] DATA_x_17_address1;
output   DATA_x_17_ce1;
input  [63:0] DATA_x_17_q1;
output  [3:0] DATA_x_20_address0;
output   DATA_x_20_ce0;
input  [63:0] DATA_x_20_q0;
output  [3:0] DATA_x_20_address1;
output   DATA_x_20_ce1;
input  [63:0] DATA_x_20_q1;
output  [3:0] DATA_x_21_address0;
output   DATA_x_21_ce0;
input  [63:0] DATA_x_21_q0;
output  [3:0] DATA_x_21_address1;
output   DATA_x_21_ce1;
input  [63:0] DATA_x_21_q1;
output  [3:0] DATA_x_18_address0;
output   DATA_x_18_ce0;
input  [63:0] DATA_x_18_q0;
output  [3:0] DATA_x_18_address1;
output   DATA_x_18_ce1;
input  [63:0] DATA_x_18_q1;
output  [3:0] DATA_x_19_address0;
output   DATA_x_19_ce0;
input  [63:0] DATA_x_19_q0;
output  [3:0] DATA_x_19_address1;
output   DATA_x_19_ce1;
input  [63:0] DATA_x_19_q1;
output  [3:0] DATA_x_22_address0;
output   DATA_x_22_ce0;
input  [63:0] DATA_x_22_q0;
output  [3:0] DATA_x_22_address1;
output   DATA_x_22_ce1;
input  [63:0] DATA_x_22_q1;
output  [3:0] DATA_x_23_address0;
output   DATA_x_23_ce0;
input  [63:0] DATA_x_23_q0;
output  [3:0] DATA_x_23_address1;
output   DATA_x_23_ce1;
input  [63:0] DATA_x_23_q1;
output  [3:0] DATA_x_24_address0;
output   DATA_x_24_ce0;
input  [63:0] DATA_x_24_q0;
output  [3:0] DATA_x_24_address1;
output   DATA_x_24_ce1;
input  [63:0] DATA_x_24_q1;
output  [3:0] DATA_x_25_address0;
output   DATA_x_25_ce0;
input  [63:0] DATA_x_25_q0;
output  [3:0] DATA_x_25_address1;
output   DATA_x_25_ce1;
input  [63:0] DATA_x_25_q1;
output  [3:0] DATA_x_28_address0;
output   DATA_x_28_ce0;
input  [63:0] DATA_x_28_q0;
output  [3:0] DATA_x_28_address1;
output   DATA_x_28_ce1;
input  [63:0] DATA_x_28_q1;
output  [3:0] DATA_x_29_address0;
output   DATA_x_29_ce0;
input  [63:0] DATA_x_29_q0;
output  [3:0] DATA_x_29_address1;
output   DATA_x_29_ce1;
input  [63:0] DATA_x_29_q1;
output  [3:0] DATA_x_26_address0;
output   DATA_x_26_ce0;
input  [63:0] DATA_x_26_q0;
output  [3:0] DATA_x_26_address1;
output   DATA_x_26_ce1;
input  [63:0] DATA_x_26_q1;
output  [3:0] DATA_x_27_address0;
output   DATA_x_27_ce0;
input  [63:0] DATA_x_27_q0;
output  [3:0] DATA_x_27_address1;
output   DATA_x_27_ce1;
input  [63:0] DATA_x_27_q1;
output  [3:0] DATA_x_30_address0;
output   DATA_x_30_ce0;
input  [63:0] DATA_x_30_q0;
output  [3:0] DATA_x_30_address1;
output   DATA_x_30_ce1;
input  [63:0] DATA_x_30_q1;
output  [3:0] DATA_x_31_address0;
output   DATA_x_31_ce0;
input  [63:0] DATA_x_31_q0;
output  [3:0] DATA_x_31_address1;
output   DATA_x_31_ce1;
input  [63:0] DATA_x_31_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_3710_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_3_reg_5206;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_3_reg_5206_pp0_iter1_reg;
reg   [1:0] trunc_ln9_reg_5218;
reg   [1:0] trunc_ln9_reg_5218_pp0_iter1_reg;
wire   [63:0] zext_ln298_1_fu_3738_p1;
reg   [63:0] zext_ln298_1_reg_5222;
wire   [63:0] zext_ln298_2_fu_3776_p1;
reg   [63:0] zext_ln298_2_reg_5322;
wire   [8:0] zext_ln294_1_fu_3807_p1;
reg   [8:0] zext_ln294_1_reg_5422;
wire   [7:0] zext_ln294_2_fu_3810_p1;
reg   [7:0] zext_ln294_2_reg_5441;
wire   [0:0] tmp_23_fu_3813_p3;
reg   [0:0] tmp_23_reg_5453;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln298_fu_3820_p1;
wire   [63:0] zext_ln300_fu_3872_p1;
wire   [63:0] zext_ln302_fu_3896_p1;
wire   [63:0] zext_ln304_fu_3920_p1;
wire   [63:0] zext_ln300_1_fu_3944_p1;
wire   [63:0] zext_ln302_1_fu_3968_p1;
wire   [63:0] zext_ln304_1_fu_3992_p1;
wire   [63:0] zext_ln300_2_fu_4016_p1;
wire   [63:0] zext_ln302_2_fu_4040_p1;
wire   [63:0] zext_ln304_2_fu_4064_p1;
wire   [63:0] zext_ln300_3_fu_4088_p1;
wire   [63:0] zext_ln302_3_fu_4112_p1;
wire   [63:0] zext_ln304_3_fu_4136_p1;
wire   [63:0] zext_ln300_4_fu_4160_p1;
wire   [63:0] zext_ln302_4_fu_4184_p1;
wire   [63:0] zext_ln304_4_fu_4208_p1;
wire   [63:0] zext_ln300_5_fu_4232_p1;
wire   [63:0] zext_ln302_5_fu_4256_p1;
wire   [63:0] zext_ln304_5_fu_4280_p1;
wire   [63:0] zext_ln300_6_fu_4304_p1;
wire   [63:0] zext_ln302_6_fu_4328_p1;
wire   [63:0] zext_ln304_6_fu_4352_p1;
wire   [63:0] zext_ln300_7_fu_4376_p1;
wire   [63:0] zext_ln302_7_fu_4400_p1;
wire   [63:0] zext_ln304_7_fu_4424_p1;
wire   [63:0] select_ln299_fu_4435_p3;
wire   [63:0] zext_ln301_fu_4461_p1;
wire   [63:0] zext_ln303_fu_4488_p1;
wire   [63:0] zext_ln305_fu_4512_p1;
wire   [63:0] zext_ln299_fu_4535_p1;
wire   [63:0] zext_ln301_1_fu_4558_p1;
wire   [63:0] zext_ln303_1_fu_4585_p1;
wire   [63:0] zext_ln305_1_fu_4609_p1;
wire   [63:0] zext_ln299_1_fu_4632_p1;
wire   [63:0] zext_ln301_2_fu_4655_p1;
wire   [63:0] zext_ln303_2_fu_4682_p1;
wire   [63:0] zext_ln305_2_fu_4706_p1;
wire   [63:0] zext_ln299_2_fu_4729_p1;
wire   [63:0] zext_ln301_3_fu_4752_p1;
wire   [63:0] zext_ln303_3_fu_4779_p1;
wire   [63:0] zext_ln305_3_fu_4803_p1;
wire   [63:0] zext_ln299_3_fu_4826_p1;
wire   [63:0] zext_ln301_4_fu_4849_p1;
wire   [63:0] zext_ln303_4_fu_4876_p1;
wire   [63:0] zext_ln305_4_fu_4900_p1;
wire   [63:0] zext_ln299_4_fu_4923_p1;
wire   [63:0] zext_ln301_5_fu_4946_p1;
wire   [63:0] zext_ln303_5_fu_4973_p1;
wire   [63:0] zext_ln305_5_fu_4997_p1;
wire   [63:0] zext_ln299_5_fu_5020_p1;
wire   [63:0] zext_ln301_6_fu_5043_p1;
wire   [63:0] zext_ln303_6_fu_5070_p1;
wire   [63:0] zext_ln305_6_fu_5094_p1;
wire   [63:0] zext_ln299_6_fu_5117_p1;
wire   [63:0] zext_ln301_7_fu_5140_p1;
wire   [63:0] zext_ln303_7_fu_5167_p1;
wire   [63:0] zext_ln305_7_fu_5191_p1;
reg   [6:0] tid_fu_306;
wire   [6:0] add_ln294_fu_3796_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg    DATA_x_ce0_local;
reg    DATA_x_4_ce1_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_6_ce1_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_8_ce1_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_12_ce1_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_10_ce1_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_14_ce1_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_16_ce1_local;
reg    DATA_x_16_ce0_local;
reg    DATA_x_20_ce1_local;
reg    DATA_x_20_ce0_local;
reg    DATA_x_18_ce1_local;
reg    DATA_x_18_ce0_local;
reg    DATA_x_22_ce1_local;
reg    DATA_x_22_ce0_local;
reg    DATA_x_24_ce1_local;
reg    DATA_x_24_ce0_local;
reg    DATA_x_28_ce1_local;
reg    DATA_x_28_ce0_local;
reg    DATA_x_26_ce1_local;
reg    DATA_x_26_ce0_local;
reg    DATA_x_30_ce1_local;
reg    DATA_x_30_ce0_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_5_ce1_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_7_ce1_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_9_ce1_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_13_ce1_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_11_ce1_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_15_ce1_local;
reg    DATA_x_15_ce0_local;
reg    DATA_x_17_ce1_local;
reg    DATA_x_17_ce0_local;
reg    DATA_x_21_ce1_local;
reg    DATA_x_21_ce0_local;
reg    DATA_x_19_ce1_local;
reg    DATA_x_19_ce0_local;
reg    DATA_x_23_ce1_local;
reg    DATA_x_23_ce0_local;
reg    DATA_x_25_ce1_local;
reg    DATA_x_25_ce0_local;
reg    DATA_x_29_ce1_local;
reg    DATA_x_29_ce0_local;
reg    DATA_x_27_ce1_local;
reg    DATA_x_27_ce0_local;
reg    DATA_x_31_ce1_local;
reg    DATA_x_31_ce0_local;
reg    smem_16_we1_local;
reg   [63:0] smem_16_d1_local;
reg    smem_16_ce1_local;
reg   [4:0] smem_16_address1_local;
reg    smem_16_we0_local;
reg   [63:0] smem_16_d0_local;
reg    smem_16_ce0_local;
reg   [4:0] smem_16_address0_local;
reg    smem_24_we1_local;
reg   [63:0] smem_24_d1_local;
reg    smem_24_ce1_local;
reg   [4:0] smem_24_address1_local;
reg    smem_24_we0_local;
reg   [63:0] smem_24_d0_local;
reg    smem_24_ce0_local;
reg   [4:0] smem_24_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [4:0] smem_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [4:0] smem_address0_local;
reg    smem_8_we1_local;
reg   [63:0] smem_8_d1_local;
reg    smem_8_ce1_local;
reg   [4:0] smem_8_address1_local;
reg    smem_8_we0_local;
reg   [63:0] smem_8_d0_local;
reg    smem_8_ce0_local;
reg   [4:0] smem_8_address0_local;
reg    smem_17_we1_local;
reg   [63:0] smem_17_d1_local;
reg    smem_17_ce1_local;
reg   [4:0] smem_17_address1_local;
reg    smem_17_we0_local;
reg   [63:0] smem_17_d0_local;
reg    smem_17_ce0_local;
reg   [4:0] smem_17_address0_local;
reg    smem_25_we1_local;
reg   [63:0] smem_25_d1_local;
reg    smem_25_ce1_local;
reg   [4:0] smem_25_address1_local;
reg    smem_25_we0_local;
reg   [63:0] smem_25_d0_local;
reg    smem_25_ce0_local;
reg   [4:0] smem_25_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [4:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [4:0] smem_1_address0_local;
reg    smem_9_we1_local;
reg   [63:0] smem_9_d1_local;
reg    smem_9_ce1_local;
reg   [4:0] smem_9_address1_local;
reg    smem_9_we0_local;
reg   [63:0] smem_9_d0_local;
reg    smem_9_ce0_local;
reg   [4:0] smem_9_address0_local;
reg    smem_18_we1_local;
reg   [63:0] smem_18_d1_local;
reg    smem_18_ce1_local;
reg   [4:0] smem_18_address1_local;
reg    smem_18_we0_local;
reg   [63:0] smem_18_d0_local;
reg    smem_18_ce0_local;
reg   [4:0] smem_18_address0_local;
reg    smem_26_we1_local;
reg   [63:0] smem_26_d1_local;
reg    smem_26_ce1_local;
reg   [4:0] smem_26_address1_local;
reg    smem_26_we0_local;
reg   [63:0] smem_26_d0_local;
reg    smem_26_ce0_local;
reg   [4:0] smem_26_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [4:0] smem_2_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [4:0] smem_2_address0_local;
reg    smem_10_we1_local;
reg   [63:0] smem_10_d1_local;
reg    smem_10_ce1_local;
reg   [4:0] smem_10_address1_local;
reg    smem_10_we0_local;
reg   [63:0] smem_10_d0_local;
reg    smem_10_ce0_local;
reg   [4:0] smem_10_address0_local;
reg    smem_19_we1_local;
reg   [63:0] smem_19_d1_local;
reg    smem_19_ce1_local;
reg   [4:0] smem_19_address1_local;
reg    smem_19_we0_local;
reg   [63:0] smem_19_d0_local;
reg    smem_19_ce0_local;
reg   [4:0] smem_19_address0_local;
reg    smem_27_we1_local;
reg   [63:0] smem_27_d1_local;
reg    smem_27_ce1_local;
reg   [4:0] smem_27_address1_local;
reg    smem_27_we0_local;
reg   [63:0] smem_27_d0_local;
reg    smem_27_ce0_local;
reg   [4:0] smem_27_address0_local;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [4:0] smem_3_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [4:0] smem_3_address0_local;
reg    smem_11_we1_local;
reg   [63:0] smem_11_d1_local;
reg    smem_11_ce1_local;
reg   [4:0] smem_11_address1_local;
reg    smem_11_we0_local;
reg   [63:0] smem_11_d0_local;
reg    smem_11_ce0_local;
reg   [4:0] smem_11_address0_local;
reg    smem_20_we1_local;
reg   [63:0] smem_20_d1_local;
reg    smem_20_ce1_local;
reg   [4:0] smem_20_address1_local;
reg    smem_20_we0_local;
reg   [63:0] smem_20_d0_local;
reg    smem_20_ce0_local;
reg   [4:0] smem_20_address0_local;
reg    smem_28_we1_local;
reg   [63:0] smem_28_d1_local;
reg    smem_28_ce1_local;
reg   [4:0] smem_28_address1_local;
reg    smem_28_we0_local;
reg   [63:0] smem_28_d0_local;
reg    smem_28_ce0_local;
reg   [4:0] smem_28_address0_local;
reg    smem_4_we1_local;
reg   [63:0] smem_4_d1_local;
reg    smem_4_ce1_local;
reg   [4:0] smem_4_address1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [4:0] smem_4_address0_local;
reg    smem_12_we1_local;
reg   [63:0] smem_12_d1_local;
reg    smem_12_ce1_local;
reg   [4:0] smem_12_address1_local;
reg    smem_12_we0_local;
reg   [63:0] smem_12_d0_local;
reg    smem_12_ce0_local;
reg   [4:0] smem_12_address0_local;
reg    smem_21_we1_local;
reg   [63:0] smem_21_d1_local;
reg    smem_21_ce1_local;
reg   [4:0] smem_21_address1_local;
reg    smem_21_we0_local;
reg   [63:0] smem_21_d0_local;
reg    smem_21_ce0_local;
reg   [4:0] smem_21_address0_local;
reg    smem_29_we1_local;
reg   [63:0] smem_29_d1_local;
reg    smem_29_ce1_local;
reg   [4:0] smem_29_address1_local;
reg    smem_29_we0_local;
reg   [63:0] smem_29_d0_local;
reg    smem_29_ce0_local;
reg   [4:0] smem_29_address0_local;
reg    smem_5_we1_local;
reg   [63:0] smem_5_d1_local;
reg    smem_5_ce1_local;
reg   [4:0] smem_5_address1_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [4:0] smem_5_address0_local;
reg    smem_13_we1_local;
reg   [63:0] smem_13_d1_local;
reg    smem_13_ce1_local;
reg   [4:0] smem_13_address1_local;
reg    smem_13_we0_local;
reg   [63:0] smem_13_d0_local;
reg    smem_13_ce0_local;
reg   [4:0] smem_13_address0_local;
reg    smem_22_we1_local;
reg   [63:0] smem_22_d1_local;
reg    smem_22_ce1_local;
reg   [4:0] smem_22_address1_local;
reg    smem_22_we0_local;
reg   [63:0] smem_22_d0_local;
reg    smem_22_ce0_local;
reg   [4:0] smem_22_address0_local;
reg    smem_30_we1_local;
reg   [63:0] smem_30_d1_local;
reg    smem_30_ce1_local;
reg   [4:0] smem_30_address1_local;
reg    smem_30_we0_local;
reg   [63:0] smem_30_d0_local;
reg    smem_30_ce0_local;
reg   [4:0] smem_30_address0_local;
reg    smem_6_we1_local;
reg   [63:0] smem_6_d1_local;
reg    smem_6_ce1_local;
reg   [4:0] smem_6_address1_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [4:0] smem_6_address0_local;
reg    smem_14_we1_local;
reg   [63:0] smem_14_d1_local;
reg    smem_14_ce1_local;
reg   [4:0] smem_14_address1_local;
reg    smem_14_we0_local;
reg   [63:0] smem_14_d0_local;
reg    smem_14_ce0_local;
reg   [4:0] smem_14_address0_local;
reg    smem_23_we1_local;
reg   [63:0] smem_23_d1_local;
reg    smem_23_ce1_local;
reg   [4:0] smem_23_address1_local;
reg    smem_23_we0_local;
reg   [63:0] smem_23_d0_local;
reg    smem_23_ce0_local;
reg   [4:0] smem_23_address0_local;
reg    smem_31_we1_local;
reg   [63:0] smem_31_d1_local;
reg    smem_31_ce1_local;
reg   [4:0] smem_31_address1_local;
reg    smem_31_we0_local;
reg   [63:0] smem_31_d0_local;
reg    smem_31_ce0_local;
reg   [4:0] smem_31_address0_local;
reg    smem_7_we1_local;
reg   [63:0] smem_7_d1_local;
reg    smem_7_ce1_local;
reg   [4:0] smem_7_address1_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [4:0] smem_7_address0_local;
reg    smem_15_we1_local;
reg   [63:0] smem_15_d1_local;
reg    smem_15_ce1_local;
reg   [4:0] smem_15_address1_local;
reg    smem_15_we0_local;
reg   [63:0] smem_15_d0_local;
reg    smem_15_ce0_local;
reg   [4:0] smem_15_address0_local;
wire   [3:0] lshr_ln298_1_fu_3728_p4;
wire   [2:0] tmp_s_fu_3758_p4;
wire   [3:0] or_ln_fu_3768_p3;
wire   [7:0] add_ln300_fu_3856_p2;
wire   [2:0] lshr_ln_fu_3862_p4;
wire   [7:0] add_ln302_fu_3880_p2;
wire   [2:0] lshr_ln16_fu_3886_p4;
wire   [8:0] add_ln304_fu_3904_p2;
wire   [3:0] lshr_ln17_fu_3910_p4;
wire   [7:0] add_ln300_1_fu_3928_p2;
wire   [2:0] lshr_ln300_1_fu_3934_p4;
wire   [7:0] add_ln302_1_fu_3952_p2;
wire   [2:0] lshr_ln302_1_fu_3958_p4;
wire   [8:0] add_ln304_1_fu_3976_p2;
wire   [3:0] lshr_ln304_1_fu_3982_p4;
wire   [7:0] add_ln300_2_fu_4000_p2;
wire   [2:0] lshr_ln300_2_fu_4006_p4;
wire   [7:0] add_ln302_2_fu_4024_p2;
wire   [2:0] lshr_ln302_2_fu_4030_p4;
wire   [8:0] add_ln304_2_fu_4048_p2;
wire   [3:0] lshr_ln304_2_fu_4054_p4;
wire   [7:0] add_ln300_3_fu_4072_p2;
wire   [2:0] lshr_ln300_3_fu_4078_p4;
wire   [7:0] add_ln302_3_fu_4096_p2;
wire   [2:0] lshr_ln302_3_fu_4102_p4;
wire   [8:0] add_ln304_3_fu_4120_p2;
wire   [3:0] lshr_ln304_3_fu_4126_p4;
wire   [7:0] add_ln300_4_fu_4144_p2;
wire   [2:0] lshr_ln300_4_fu_4150_p4;
wire   [7:0] add_ln302_4_fu_4168_p2;
wire   [2:0] lshr_ln302_4_fu_4174_p4;
wire   [8:0] add_ln304_4_fu_4192_p2;
wire   [3:0] lshr_ln304_4_fu_4198_p4;
wire   [7:0] add_ln300_5_fu_4216_p2;
wire   [2:0] lshr_ln300_5_fu_4222_p4;
wire   [7:0] add_ln302_5_fu_4240_p2;
wire   [2:0] lshr_ln302_5_fu_4246_p4;
wire   [8:0] add_ln304_5_fu_4264_p2;
wire   [3:0] lshr_ln304_5_fu_4270_p4;
wire   [7:0] add_ln300_6_fu_4288_p2;
wire   [2:0] lshr_ln300_6_fu_4294_p4;
wire   [7:0] add_ln302_6_fu_4312_p2;
wire   [2:0] lshr_ln302_6_fu_4318_p4;
wire   [8:0] add_ln304_6_fu_4336_p2;
wire   [3:0] lshr_ln304_6_fu_4342_p4;
wire   [7:0] add_ln300_7_fu_4360_p2;
wire   [2:0] lshr_ln300_7_fu_4366_p4;
wire   [7:0] add_ln302_7_fu_4384_p2;
wire   [2:0] lshr_ln302_7_fu_4390_p4;
wire   [8:0] add_ln304_7_fu_4408_p2;
wire   [3:0] lshr_ln304_7_fu_4414_p4;
wire   [8:0] add_ln301_fu_4446_p2;
wire   [3:0] lshr_ln15_fu_4451_p4;
wire   [7:0] add_ln303_fu_4469_p2;
wire   [2:0] trunc_ln_fu_4474_p4;
wire  signed [3:0] sext_ln303_fu_4484_p1;
wire   [9:0] zext_ln294_fu_4432_p1;
wire   [9:0] add_ln305_fu_4496_p2;
wire   [4:0] lshr_ln18_fu_4502_p4;
wire   [8:0] add_ln299_fu_4520_p2;
wire   [3:0] lshr_ln19_fu_4525_p4;
wire   [8:0] add_ln301_1_fu_4543_p2;
wire   [3:0] lshr_ln301_1_fu_4548_p4;
wire   [7:0] add_ln303_1_fu_4566_p2;
wire   [2:0] trunc_ln303_1_fu_4571_p4;
wire  signed [3:0] sext_ln303_1_fu_4581_p1;
wire   [9:0] add_ln305_1_fu_4593_p2;
wire   [4:0] lshr_ln305_1_fu_4599_p4;
wire   [8:0] add_ln299_1_fu_4617_p2;
wire   [3:0] lshr_ln299_1_fu_4622_p4;
wire   [8:0] add_ln301_2_fu_4640_p2;
wire   [3:0] lshr_ln301_2_fu_4645_p4;
wire   [7:0] add_ln303_2_fu_4663_p2;
wire   [2:0] trunc_ln303_2_fu_4668_p4;
wire  signed [3:0] sext_ln303_2_fu_4678_p1;
wire   [9:0] add_ln305_2_fu_4690_p2;
wire   [4:0] lshr_ln305_2_fu_4696_p4;
wire   [8:0] add_ln299_2_fu_4714_p2;
wire   [3:0] lshr_ln299_2_fu_4719_p4;
wire   [8:0] add_ln301_3_fu_4737_p2;
wire   [3:0] lshr_ln301_3_fu_4742_p4;
wire   [7:0] add_ln303_3_fu_4760_p2;
wire   [2:0] trunc_ln303_3_fu_4765_p4;
wire  signed [3:0] sext_ln303_3_fu_4775_p1;
wire   [9:0] add_ln305_3_fu_4787_p2;
wire   [4:0] lshr_ln305_3_fu_4793_p4;
wire   [8:0] add_ln299_3_fu_4811_p2;
wire   [3:0] lshr_ln299_3_fu_4816_p4;
wire   [8:0] add_ln301_4_fu_4834_p2;
wire   [3:0] lshr_ln301_4_fu_4839_p4;
wire   [7:0] add_ln303_4_fu_4857_p2;
wire   [2:0] trunc_ln303_4_fu_4862_p4;
wire  signed [3:0] sext_ln303_4_fu_4872_p1;
wire   [9:0] add_ln305_4_fu_4884_p2;
wire   [4:0] lshr_ln305_4_fu_4890_p4;
wire   [8:0] add_ln299_4_fu_4908_p2;
wire   [3:0] lshr_ln299_4_fu_4913_p4;
wire   [8:0] add_ln301_5_fu_4931_p2;
wire   [3:0] lshr_ln301_5_fu_4936_p4;
wire   [7:0] add_ln303_5_fu_4954_p2;
wire   [2:0] trunc_ln303_5_fu_4959_p4;
wire  signed [3:0] sext_ln303_5_fu_4969_p1;
wire   [9:0] add_ln305_5_fu_4981_p2;
wire   [4:0] lshr_ln305_5_fu_4987_p4;
wire   [8:0] add_ln299_5_fu_5005_p2;
wire   [3:0] lshr_ln299_5_fu_5010_p4;
wire   [8:0] add_ln301_6_fu_5028_p2;
wire   [3:0] lshr_ln301_6_fu_5033_p4;
wire   [7:0] add_ln303_6_fu_5051_p2;
wire   [2:0] trunc_ln303_6_fu_5056_p4;
wire  signed [3:0] sext_ln303_6_fu_5066_p1;
wire   [9:0] add_ln305_6_fu_5078_p2;
wire   [4:0] lshr_ln305_6_fu_5084_p4;
wire   [8:0] add_ln299_6_fu_5102_p2;
wire   [3:0] lshr_ln299_6_fu_5107_p4;
wire   [8:0] add_ln301_7_fu_5125_p2;
wire   [3:0] lshr_ln301_7_fu_5130_p4;
wire   [7:0] add_ln303_7_fu_5148_p2;
wire   [2:0] trunc_ln303_7_fu_5153_p4;
wire  signed [3:0] sext_ln303_7_fu_5163_p1;
wire   [9:0] add_ln305_7_fu_5175_p2;
wire   [4:0] lshr_ln305_7_fu_5181_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_850;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 tid_fu_306 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_3710_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_306 <= add_ln294_fu_3796_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_306 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        tid_3_reg_5206 <= ap_sig_allocacmp_tid_3;
        tid_3_reg_5206_pp0_iter1_reg <= tid_3_reg_5206;
        tmp_23_reg_5453 <= tid_3_reg_5206[32'd5];
        trunc_ln9_reg_5218 <= {{ap_sig_allocacmp_tid_3[4:3]}};
        trunc_ln9_reg_5218_pp0_iter1_reg <= trunc_ln9_reg_5218;
        zext_ln294_1_reg_5422[6 : 0] <= zext_ln294_1_fu_3807_p1[6 : 0];
        zext_ln294_2_reg_5441[6 : 0] <= zext_ln294_2_fu_3810_p1[6 : 0];
        zext_ln298_1_reg_5222[3 : 0] <= zext_ln298_1_fu_3738_p1[3 : 0];
        zext_ln298_2_reg_5322[3 : 1] <= zext_ln298_2_fu_3776_p1[3 : 1];
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
        DATA_x_10_ce1_local = 1'b1;
    end else begin
        DATA_x_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_11_ce1_local = 1'b1;
    end else begin
        DATA_x_11_ce1_local = 1'b0;
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
        DATA_x_12_ce1_local = 1'b1;
    end else begin
        DATA_x_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_13_ce1_local = 1'b1;
    end else begin
        DATA_x_13_ce1_local = 1'b0;
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
        DATA_x_14_ce1_local = 1'b1;
    end else begin
        DATA_x_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_15_ce1_local = 1'b1;
    end else begin
        DATA_x_15_ce1_local = 1'b0;
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
        DATA_x_16_ce1_local = 1'b1;
    end else begin
        DATA_x_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_17_ce0_local = 1'b1;
    end else begin
        DATA_x_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_17_ce1_local = 1'b1;
    end else begin
        DATA_x_17_ce1_local = 1'b0;
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
        DATA_x_18_ce1_local = 1'b1;
    end else begin
        DATA_x_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_19_ce0_local = 1'b1;
    end else begin
        DATA_x_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_19_ce1_local = 1'b1;
    end else begin
        DATA_x_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
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
        DATA_x_20_ce1_local = 1'b1;
    end else begin
        DATA_x_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_21_ce0_local = 1'b1;
    end else begin
        DATA_x_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_21_ce1_local = 1'b1;
    end else begin
        DATA_x_21_ce1_local = 1'b0;
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
        DATA_x_22_ce1_local = 1'b1;
    end else begin
        DATA_x_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_23_ce0_local = 1'b1;
    end else begin
        DATA_x_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_23_ce1_local = 1'b1;
    end else begin
        DATA_x_23_ce1_local = 1'b0;
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
        DATA_x_24_ce1_local = 1'b1;
    end else begin
        DATA_x_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_25_ce0_local = 1'b1;
    end else begin
        DATA_x_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_25_ce1_local = 1'b1;
    end else begin
        DATA_x_25_ce1_local = 1'b0;
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
        DATA_x_26_ce1_local = 1'b1;
    end else begin
        DATA_x_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_27_ce0_local = 1'b1;
    end else begin
        DATA_x_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_27_ce1_local = 1'b1;
    end else begin
        DATA_x_27_ce1_local = 1'b0;
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
        DATA_x_28_ce1_local = 1'b1;
    end else begin
        DATA_x_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_29_ce0_local = 1'b1;
    end else begin
        DATA_x_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_29_ce1_local = 1'b1;
    end else begin
        DATA_x_29_ce1_local = 1'b0;
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
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
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
        DATA_x_30_ce1_local = 1'b1;
    end else begin
        DATA_x_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_31_ce0_local = 1'b1;
    end else begin
        DATA_x_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_31_ce1_local = 1'b1;
    end else begin
        DATA_x_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
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
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
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
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
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
        DATA_x_8_ce1_local = 1'b1;
    end else begin
        DATA_x_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_9_ce1_local = 1'b1;
    end else begin
        DATA_x_9_ce1_local = 1'b0;
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
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_3710_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_306;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_10_address0_local = zext_ln303_2_fu_4682_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_10_address0_local = zext_ln301_2_fu_4655_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_10_address0_local = zext_ln299_1_fu_4632_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_10_address0_local = zext_ln305_2_fu_4706_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_10_address1_local = zext_ln302_2_fu_4040_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_10_address1_local = zext_ln300_2_fu_4016_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_10_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_10_address1_local = zext_ln304_2_fu_4064_p1;
        end else begin
            smem_10_address1_local = 'bx;
        end
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_10_d0_local = DATA_x_19_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_10_d0_local = DATA_x_21_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_10_d0_local = DATA_x_17_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_10_d0_local = DATA_x_23_q1;
        end else begin
            smem_10_d0_local = 'bx;
        end
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_10_d1_local = DATA_x_18_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_10_d1_local = DATA_x_20_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_10_d1_local = DATA_x_16_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_10_d1_local = DATA_x_22_q1;
        end else begin
            smem_10_d1_local = 'bx;
        end
    end else begin
        smem_10_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_we1_local = 1'b1;
    end else begin
        smem_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_11_address0_local = zext_ln303_3_fu_4779_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_11_address0_local = zext_ln301_3_fu_4752_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_11_address0_local = zext_ln299_2_fu_4729_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_11_address0_local = zext_ln305_3_fu_4803_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_11_address1_local = zext_ln302_3_fu_4112_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_11_address1_local = zext_ln300_3_fu_4088_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_11_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_11_address1_local = zext_ln304_3_fu_4136_p1;
        end else begin
            smem_11_address1_local = 'bx;
        end
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_11_d0_local = DATA_x_27_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_11_d0_local = DATA_x_29_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_11_d0_local = DATA_x_25_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_11_d0_local = DATA_x_31_q1;
        end else begin
            smem_11_d0_local = 'bx;
        end
    end else begin
        smem_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_11_d1_local = DATA_x_26_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_11_d1_local = DATA_x_28_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_11_d1_local = DATA_x_24_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_11_d1_local = DATA_x_30_q1;
        end else begin
            smem_11_d1_local = 'bx;
        end
    end else begin
        smem_11_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_11_we0_local = 1'b1;
    end else begin
        smem_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_we1_local = 1'b1;
    end else begin
        smem_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_12_address0_local = zext_ln303_4_fu_4876_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_12_address0_local = zext_ln301_4_fu_4849_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_12_address0_local = zext_ln299_3_fu_4826_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_12_address0_local = zext_ln305_4_fu_4900_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_12_address1_local = zext_ln302_4_fu_4184_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_12_address1_local = zext_ln300_4_fu_4160_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_12_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_12_address1_local = zext_ln304_4_fu_4208_p1;
        end else begin
            smem_12_address1_local = 'bx;
        end
    end else begin
        smem_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_12_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_12_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_12_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_12_d0_local = DATA_x_7_q0;
        end else begin
            smem_12_d0_local = 'bx;
        end
    end else begin
        smem_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_12_d1_local = DATA_x_2_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_12_d1_local = DATA_x_4_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_12_d1_local = DATA_x_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_12_d1_local = DATA_x_6_q0;
        end else begin
            smem_12_d1_local = 'bx;
        end
    end else begin
        smem_12_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_12_we0_local = 1'b1;
    end else begin
        smem_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_we1_local = 1'b1;
    end else begin
        smem_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_13_address0_local = zext_ln303_5_fu_4973_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_13_address0_local = zext_ln301_5_fu_4946_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_13_address0_local = zext_ln299_4_fu_4923_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_13_address0_local = zext_ln305_5_fu_4997_p1;
        end else begin
            smem_13_address0_local = 'bx;
        end
    end else begin
        smem_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_13_address1_local = zext_ln302_5_fu_4256_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_13_address1_local = zext_ln300_5_fu_4232_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_13_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_13_address1_local = zext_ln304_5_fu_4280_p1;
        end else begin
            smem_13_address1_local = 'bx;
        end
    end else begin
        smem_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_13_ce0_local = 1'b1;
    end else begin
        smem_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_13_ce1_local = 1'b1;
    end else begin
        smem_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_13_d0_local = DATA_x_11_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_13_d0_local = DATA_x_13_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_13_d0_local = DATA_x_9_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_13_d0_local = DATA_x_15_q0;
        end else begin
            smem_13_d0_local = 'bx;
        end
    end else begin
        smem_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_13_d1_local = DATA_x_10_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_13_d1_local = DATA_x_12_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_13_d1_local = DATA_x_8_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_13_d1_local = DATA_x_14_q0;
        end else begin
            smem_13_d1_local = 'bx;
        end
    end else begin
        smem_13_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_13_we0_local = 1'b1;
    end else begin
        smem_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_13_we1_local = 1'b1;
    end else begin
        smem_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_14_address0_local = zext_ln303_6_fu_5070_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_14_address0_local = zext_ln301_6_fu_5043_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_14_address0_local = zext_ln299_5_fu_5020_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_14_address0_local = zext_ln305_6_fu_5094_p1;
        end else begin
            smem_14_address0_local = 'bx;
        end
    end else begin
        smem_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_14_address1_local = zext_ln302_6_fu_4328_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_14_address1_local = zext_ln300_6_fu_4304_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_14_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_14_address1_local = zext_ln304_6_fu_4352_p1;
        end else begin
            smem_14_address1_local = 'bx;
        end
    end else begin
        smem_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_14_ce0_local = 1'b1;
    end else begin
        smem_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_14_ce1_local = 1'b1;
    end else begin
        smem_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_14_d0_local = DATA_x_19_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_14_d0_local = DATA_x_21_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_14_d0_local = DATA_x_17_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_14_d0_local = DATA_x_23_q0;
        end else begin
            smem_14_d0_local = 'bx;
        end
    end else begin
        smem_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_14_d1_local = DATA_x_18_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_14_d1_local = DATA_x_20_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_14_d1_local = DATA_x_16_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_14_d1_local = DATA_x_22_q0;
        end else begin
            smem_14_d1_local = 'bx;
        end
    end else begin
        smem_14_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_14_we0_local = 1'b1;
    end else begin
        smem_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_14_we1_local = 1'b1;
    end else begin
        smem_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_15_address0_local = zext_ln303_7_fu_5167_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_15_address0_local = zext_ln301_7_fu_5140_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_15_address0_local = zext_ln299_6_fu_5117_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_15_address0_local = zext_ln305_7_fu_5191_p1;
        end else begin
            smem_15_address0_local = 'bx;
        end
    end else begin
        smem_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_15_address1_local = zext_ln302_7_fu_4400_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_15_address1_local = zext_ln300_7_fu_4376_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_15_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_15_address1_local = zext_ln304_7_fu_4424_p1;
        end else begin
            smem_15_address1_local = 'bx;
        end
    end else begin
        smem_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_15_ce0_local = 1'b1;
    end else begin
        smem_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_15_ce1_local = 1'b1;
    end else begin
        smem_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_15_d0_local = DATA_x_27_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_15_d0_local = DATA_x_29_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_15_d0_local = DATA_x_25_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_15_d0_local = DATA_x_31_q0;
        end else begin
            smem_15_d0_local = 'bx;
        end
    end else begin
        smem_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_15_d1_local = DATA_x_26_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_15_d1_local = DATA_x_28_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_15_d1_local = DATA_x_24_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_15_d1_local = DATA_x_30_q0;
        end else begin
            smem_15_d1_local = 'bx;
        end
    end else begin
        smem_15_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_15_we0_local = 1'b1;
    end else begin
        smem_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_15_we1_local = 1'b1;
    end else begin
        smem_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_16_address0_local = zext_ln305_fu_4512_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_16_address0_local = zext_ln303_fu_4488_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_16_address0_local = zext_ln301_fu_4461_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_16_address0_local = select_ln299_fu_4435_p3;
        end else begin
            smem_16_address0_local = 'bx;
        end
    end else begin
        smem_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_16_address1_local = zext_ln304_fu_3920_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_16_address1_local = zext_ln302_fu_3896_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_16_address1_local = zext_ln300_fu_3872_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_16_address1_local = zext_ln298_fu_3820_p1;
        end else begin
            smem_16_address1_local = 'bx;
        end
    end else begin
        smem_16_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_16_ce0_local = 1'b1;
    end else begin
        smem_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_16_ce1_local = 1'b1;
    end else begin
        smem_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_16_d0_local = DATA_x_7_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_16_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_16_d0_local = DATA_x_5_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_16_d0_local = DATA_x_1_q1;
        end else begin
            smem_16_d0_local = 'bx;
        end
    end else begin
        smem_16_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_16_d1_local = DATA_x_6_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_16_d1_local = DATA_x_2_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_16_d1_local = DATA_x_4_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_16_d1_local = DATA_x_q1;
        end else begin
            smem_16_d1_local = 'bx;
        end
    end else begin
        smem_16_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_16_we0_local = 1'b1;
    end else begin
        smem_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_16_we1_local = 1'b1;
    end else begin
        smem_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_17_address0_local = zext_ln305_1_fu_4609_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_17_address0_local = zext_ln303_1_fu_4585_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_17_address0_local = zext_ln301_1_fu_4558_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_17_address0_local = zext_ln299_fu_4535_p1;
        end else begin
            smem_17_address0_local = 'bx;
        end
    end else begin
        smem_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_17_address1_local = zext_ln304_1_fu_3992_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_17_address1_local = zext_ln302_1_fu_3968_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_17_address1_local = zext_ln300_1_fu_3944_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_17_address1_local = zext_ln298_fu_3820_p1;
        end else begin
            smem_17_address1_local = 'bx;
        end
    end else begin
        smem_17_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_17_ce0_local = 1'b1;
    end else begin
        smem_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_17_ce1_local = 1'b1;
    end else begin
        smem_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_17_d0_local = DATA_x_15_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_17_d0_local = DATA_x_11_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_17_d0_local = DATA_x_13_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_17_d0_local = DATA_x_9_q1;
        end else begin
            smem_17_d0_local = 'bx;
        end
    end else begin
        smem_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_17_d1_local = DATA_x_14_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_17_d1_local = DATA_x_10_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_17_d1_local = DATA_x_12_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_17_d1_local = DATA_x_8_q1;
        end else begin
            smem_17_d1_local = 'bx;
        end
    end else begin
        smem_17_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_17_we0_local = 1'b1;
    end else begin
        smem_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_17_we1_local = 1'b1;
    end else begin
        smem_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_18_address0_local = zext_ln305_2_fu_4706_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_18_address0_local = zext_ln303_2_fu_4682_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_18_address0_local = zext_ln301_2_fu_4655_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_18_address0_local = zext_ln299_1_fu_4632_p1;
        end else begin
            smem_18_address0_local = 'bx;
        end
    end else begin
        smem_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_18_address1_local = zext_ln304_2_fu_4064_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_18_address1_local = zext_ln302_2_fu_4040_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_18_address1_local = zext_ln300_2_fu_4016_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_18_address1_local = zext_ln298_fu_3820_p1;
        end else begin
            smem_18_address1_local = 'bx;
        end
    end else begin
        smem_18_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_18_ce0_local = 1'b1;
    end else begin
        smem_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_18_ce1_local = 1'b1;
    end else begin
        smem_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_18_d0_local = DATA_x_23_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_18_d0_local = DATA_x_19_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_18_d0_local = DATA_x_21_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_18_d0_local = DATA_x_17_q1;
        end else begin
            smem_18_d0_local = 'bx;
        end
    end else begin
        smem_18_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_18_d1_local = DATA_x_22_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_18_d1_local = DATA_x_18_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_18_d1_local = DATA_x_20_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_18_d1_local = DATA_x_16_q1;
        end else begin
            smem_18_d1_local = 'bx;
        end
    end else begin
        smem_18_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_18_we0_local = 1'b1;
    end else begin
        smem_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_18_we1_local = 1'b1;
    end else begin
        smem_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_19_address0_local = zext_ln305_3_fu_4803_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_19_address0_local = zext_ln303_3_fu_4779_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_19_address0_local = zext_ln301_3_fu_4752_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_19_address0_local = zext_ln299_2_fu_4729_p1;
        end else begin
            smem_19_address0_local = 'bx;
        end
    end else begin
        smem_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_19_address1_local = zext_ln304_3_fu_4136_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_19_address1_local = zext_ln302_3_fu_4112_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_19_address1_local = zext_ln300_3_fu_4088_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_19_address1_local = zext_ln298_fu_3820_p1;
        end else begin
            smem_19_address1_local = 'bx;
        end
    end else begin
        smem_19_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_19_ce0_local = 1'b1;
    end else begin
        smem_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_19_ce1_local = 1'b1;
    end else begin
        smem_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_19_d0_local = DATA_x_31_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_19_d0_local = DATA_x_27_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_19_d0_local = DATA_x_29_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_19_d0_local = DATA_x_25_q1;
        end else begin
            smem_19_d0_local = 'bx;
        end
    end else begin
        smem_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_19_d1_local = DATA_x_30_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_19_d1_local = DATA_x_26_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_19_d1_local = DATA_x_28_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_19_d1_local = DATA_x_24_q1;
        end else begin
            smem_19_d1_local = 'bx;
        end
    end else begin
        smem_19_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_19_we0_local = 1'b1;
    end else begin
        smem_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_19_we1_local = 1'b1;
    end else begin
        smem_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_1_address0_local = zext_ln301_1_fu_4558_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_1_address0_local = zext_ln299_fu_4535_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_1_address0_local = zext_ln305_1_fu_4609_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_1_address0_local = zext_ln303_1_fu_4585_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_1_address1_local = zext_ln300_1_fu_3944_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_1_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_1_address1_local = zext_ln304_1_fu_3992_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_1_address1_local = zext_ln302_1_fu_3968_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_1_d0_local = DATA_x_13_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_1_d0_local = DATA_x_9_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_1_d0_local = DATA_x_15_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_1_d0_local = DATA_x_11_q1;
        end else begin
            smem_1_d0_local = 'bx;
        end
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_1_d1_local = DATA_x_12_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_1_d1_local = DATA_x_8_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_1_d1_local = DATA_x_14_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_1_d1_local = DATA_x_10_q1;
        end else begin
            smem_1_d1_local = 'bx;
        end
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_20_address0_local = zext_ln305_4_fu_4900_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_20_address0_local = zext_ln303_4_fu_4876_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_20_address0_local = zext_ln301_4_fu_4849_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_20_address0_local = zext_ln299_3_fu_4826_p1;
        end else begin
            smem_20_address0_local = 'bx;
        end
    end else begin
        smem_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_20_address1_local = zext_ln304_4_fu_4208_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_20_address1_local = zext_ln302_4_fu_4184_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_20_address1_local = zext_ln300_4_fu_4160_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_20_address1_local = zext_ln298_fu_3820_p1;
        end else begin
            smem_20_address1_local = 'bx;
        end
    end else begin
        smem_20_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_20_ce0_local = 1'b1;
    end else begin
        smem_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_20_ce1_local = 1'b1;
    end else begin
        smem_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_20_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_20_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_20_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_20_d0_local = DATA_x_1_q0;
        end else begin
            smem_20_d0_local = 'bx;
        end
    end else begin
        smem_20_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_20_d1_local = DATA_x_6_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_20_d1_local = DATA_x_2_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_20_d1_local = DATA_x_4_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_20_d1_local = DATA_x_q0;
        end else begin
            smem_20_d1_local = 'bx;
        end
    end else begin
        smem_20_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_20_we0_local = 1'b1;
    end else begin
        smem_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_20_we1_local = 1'b1;
    end else begin
        smem_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_21_address0_local = zext_ln305_5_fu_4997_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_21_address0_local = zext_ln303_5_fu_4973_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_21_address0_local = zext_ln301_5_fu_4946_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_21_address0_local = zext_ln299_4_fu_4923_p1;
        end else begin
            smem_21_address0_local = 'bx;
        end
    end else begin
        smem_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_21_address1_local = zext_ln304_5_fu_4280_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_21_address1_local = zext_ln302_5_fu_4256_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_21_address1_local = zext_ln300_5_fu_4232_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_21_address1_local = zext_ln298_fu_3820_p1;
        end else begin
            smem_21_address1_local = 'bx;
        end
    end else begin
        smem_21_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_21_ce0_local = 1'b1;
    end else begin
        smem_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_21_ce1_local = 1'b1;
    end else begin
        smem_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_21_d0_local = DATA_x_15_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_21_d0_local = DATA_x_11_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_21_d0_local = DATA_x_13_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_21_d0_local = DATA_x_9_q0;
        end else begin
            smem_21_d0_local = 'bx;
        end
    end else begin
        smem_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_21_d1_local = DATA_x_14_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_21_d1_local = DATA_x_10_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_21_d1_local = DATA_x_12_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_21_d1_local = DATA_x_8_q0;
        end else begin
            smem_21_d1_local = 'bx;
        end
    end else begin
        smem_21_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_21_we0_local = 1'b1;
    end else begin
        smem_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_21_we1_local = 1'b1;
    end else begin
        smem_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_22_address0_local = zext_ln305_6_fu_5094_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_22_address0_local = zext_ln303_6_fu_5070_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_22_address0_local = zext_ln301_6_fu_5043_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_22_address0_local = zext_ln299_5_fu_5020_p1;
        end else begin
            smem_22_address0_local = 'bx;
        end
    end else begin
        smem_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_22_address1_local = zext_ln304_6_fu_4352_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_22_address1_local = zext_ln302_6_fu_4328_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_22_address1_local = zext_ln300_6_fu_4304_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_22_address1_local = zext_ln298_fu_3820_p1;
        end else begin
            smem_22_address1_local = 'bx;
        end
    end else begin
        smem_22_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_22_ce0_local = 1'b1;
    end else begin
        smem_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_22_ce1_local = 1'b1;
    end else begin
        smem_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_22_d0_local = DATA_x_23_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_22_d0_local = DATA_x_19_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_22_d0_local = DATA_x_21_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_22_d0_local = DATA_x_17_q0;
        end else begin
            smem_22_d0_local = 'bx;
        end
    end else begin
        smem_22_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_22_d1_local = DATA_x_22_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_22_d1_local = DATA_x_18_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_22_d1_local = DATA_x_20_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_22_d1_local = DATA_x_16_q0;
        end else begin
            smem_22_d1_local = 'bx;
        end
    end else begin
        smem_22_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_22_we0_local = 1'b1;
    end else begin
        smem_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_22_we1_local = 1'b1;
    end else begin
        smem_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_23_address0_local = zext_ln305_7_fu_5191_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_23_address0_local = zext_ln303_7_fu_5167_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_23_address0_local = zext_ln301_7_fu_5140_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_23_address0_local = zext_ln299_6_fu_5117_p1;
        end else begin
            smem_23_address0_local = 'bx;
        end
    end else begin
        smem_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_23_address1_local = zext_ln304_7_fu_4424_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_23_address1_local = zext_ln302_7_fu_4400_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_23_address1_local = zext_ln300_7_fu_4376_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_23_address1_local = zext_ln298_fu_3820_p1;
        end else begin
            smem_23_address1_local = 'bx;
        end
    end else begin
        smem_23_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_23_ce0_local = 1'b1;
    end else begin
        smem_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_23_ce1_local = 1'b1;
    end else begin
        smem_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_23_d0_local = DATA_x_31_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_23_d0_local = DATA_x_27_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_23_d0_local = DATA_x_29_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_23_d0_local = DATA_x_25_q0;
        end else begin
            smem_23_d0_local = 'bx;
        end
    end else begin
        smem_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_23_d1_local = DATA_x_30_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_23_d1_local = DATA_x_26_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_23_d1_local = DATA_x_28_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_23_d1_local = DATA_x_24_q0;
        end else begin
            smem_23_d1_local = 'bx;
        end
    end else begin
        smem_23_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_23_we0_local = 1'b1;
    end else begin
        smem_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_23_we1_local = 1'b1;
    end else begin
        smem_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_24_address0_local = select_ln299_fu_4435_p3;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_24_address0_local = zext_ln305_fu_4512_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_24_address0_local = zext_ln303_fu_4488_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_24_address0_local = zext_ln301_fu_4461_p1;
        end else begin
            smem_24_address0_local = 'bx;
        end
    end else begin
        smem_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_24_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_24_address1_local = zext_ln304_fu_3920_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_24_address1_local = zext_ln302_fu_3896_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_24_address1_local = zext_ln300_fu_3872_p1;
        end else begin
            smem_24_address1_local = 'bx;
        end
    end else begin
        smem_24_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_24_ce0_local = 1'b1;
    end else begin
        smem_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_24_ce1_local = 1'b1;
    end else begin
        smem_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_24_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_24_d0_local = DATA_x_7_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_24_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_24_d0_local = DATA_x_5_q1;
        end else begin
            smem_24_d0_local = 'bx;
        end
    end else begin
        smem_24_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_24_d1_local = DATA_x_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_24_d1_local = DATA_x_6_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_24_d1_local = DATA_x_2_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_24_d1_local = DATA_x_4_q1;
        end else begin
            smem_24_d1_local = 'bx;
        end
    end else begin
        smem_24_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_24_we0_local = 1'b1;
    end else begin
        smem_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_24_we1_local = 1'b1;
    end else begin
        smem_24_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_25_address0_local = zext_ln299_fu_4535_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_25_address0_local = zext_ln305_1_fu_4609_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_25_address0_local = zext_ln303_1_fu_4585_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_25_address0_local = zext_ln301_1_fu_4558_p1;
        end else begin
            smem_25_address0_local = 'bx;
        end
    end else begin
        smem_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_25_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_25_address1_local = zext_ln304_1_fu_3992_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_25_address1_local = zext_ln302_1_fu_3968_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_25_address1_local = zext_ln300_1_fu_3944_p1;
        end else begin
            smem_25_address1_local = 'bx;
        end
    end else begin
        smem_25_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_25_ce0_local = 1'b1;
    end else begin
        smem_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_25_ce1_local = 1'b1;
    end else begin
        smem_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_25_d0_local = DATA_x_9_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_25_d0_local = DATA_x_15_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_25_d0_local = DATA_x_11_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_25_d0_local = DATA_x_13_q1;
        end else begin
            smem_25_d0_local = 'bx;
        end
    end else begin
        smem_25_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_25_d1_local = DATA_x_8_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_25_d1_local = DATA_x_14_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_25_d1_local = DATA_x_10_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_25_d1_local = DATA_x_12_q1;
        end else begin
            smem_25_d1_local = 'bx;
        end
    end else begin
        smem_25_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_25_we0_local = 1'b1;
    end else begin
        smem_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_25_we1_local = 1'b1;
    end else begin
        smem_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_26_address0_local = zext_ln299_1_fu_4632_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_26_address0_local = zext_ln305_2_fu_4706_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_26_address0_local = zext_ln303_2_fu_4682_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_26_address0_local = zext_ln301_2_fu_4655_p1;
        end else begin
            smem_26_address0_local = 'bx;
        end
    end else begin
        smem_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_26_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_26_address1_local = zext_ln304_2_fu_4064_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_26_address1_local = zext_ln302_2_fu_4040_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_26_address1_local = zext_ln300_2_fu_4016_p1;
        end else begin
            smem_26_address1_local = 'bx;
        end
    end else begin
        smem_26_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_26_ce0_local = 1'b1;
    end else begin
        smem_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_26_ce1_local = 1'b1;
    end else begin
        smem_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_26_d0_local = DATA_x_17_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_26_d0_local = DATA_x_23_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_26_d0_local = DATA_x_19_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_26_d0_local = DATA_x_21_q1;
        end else begin
            smem_26_d0_local = 'bx;
        end
    end else begin
        smem_26_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_26_d1_local = DATA_x_16_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_26_d1_local = DATA_x_22_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_26_d1_local = DATA_x_18_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_26_d1_local = DATA_x_20_q1;
        end else begin
            smem_26_d1_local = 'bx;
        end
    end else begin
        smem_26_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_26_we0_local = 1'b1;
    end else begin
        smem_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_26_we1_local = 1'b1;
    end else begin
        smem_26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_27_address0_local = zext_ln299_2_fu_4729_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_27_address0_local = zext_ln305_3_fu_4803_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_27_address0_local = zext_ln303_3_fu_4779_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_27_address0_local = zext_ln301_3_fu_4752_p1;
        end else begin
            smem_27_address0_local = 'bx;
        end
    end else begin
        smem_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_27_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_27_address1_local = zext_ln304_3_fu_4136_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_27_address1_local = zext_ln302_3_fu_4112_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_27_address1_local = zext_ln300_3_fu_4088_p1;
        end else begin
            smem_27_address1_local = 'bx;
        end
    end else begin
        smem_27_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_27_ce0_local = 1'b1;
    end else begin
        smem_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_27_ce1_local = 1'b1;
    end else begin
        smem_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_27_d0_local = DATA_x_25_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_27_d0_local = DATA_x_31_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_27_d0_local = DATA_x_27_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_27_d0_local = DATA_x_29_q1;
        end else begin
            smem_27_d0_local = 'bx;
        end
    end else begin
        smem_27_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_27_d1_local = DATA_x_24_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_27_d1_local = DATA_x_30_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_27_d1_local = DATA_x_26_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_27_d1_local = DATA_x_28_q1;
        end else begin
            smem_27_d1_local = 'bx;
        end
    end else begin
        smem_27_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_27_we0_local = 1'b1;
    end else begin
        smem_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_27_we1_local = 1'b1;
    end else begin
        smem_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_28_address0_local = zext_ln299_3_fu_4826_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_28_address0_local = zext_ln305_4_fu_4900_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_28_address0_local = zext_ln303_4_fu_4876_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_28_address0_local = zext_ln301_4_fu_4849_p1;
        end else begin
            smem_28_address0_local = 'bx;
        end
    end else begin
        smem_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_28_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_28_address1_local = zext_ln304_4_fu_4208_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_28_address1_local = zext_ln302_4_fu_4184_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_28_address1_local = zext_ln300_4_fu_4160_p1;
        end else begin
            smem_28_address1_local = 'bx;
        end
    end else begin
        smem_28_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_28_ce0_local = 1'b1;
    end else begin
        smem_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_28_ce1_local = 1'b1;
    end else begin
        smem_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_28_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_28_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_28_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_28_d0_local = DATA_x_5_q0;
        end else begin
            smem_28_d0_local = 'bx;
        end
    end else begin
        smem_28_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_28_d1_local = DATA_x_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_28_d1_local = DATA_x_6_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_28_d1_local = DATA_x_2_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_28_d1_local = DATA_x_4_q0;
        end else begin
            smem_28_d1_local = 'bx;
        end
    end else begin
        smem_28_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_28_we0_local = 1'b1;
    end else begin
        smem_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_28_we1_local = 1'b1;
    end else begin
        smem_28_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_29_address0_local = zext_ln299_4_fu_4923_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_29_address0_local = zext_ln305_5_fu_4997_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_29_address0_local = zext_ln303_5_fu_4973_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_29_address0_local = zext_ln301_5_fu_4946_p1;
        end else begin
            smem_29_address0_local = 'bx;
        end
    end else begin
        smem_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_29_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_29_address1_local = zext_ln304_5_fu_4280_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_29_address1_local = zext_ln302_5_fu_4256_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_29_address1_local = zext_ln300_5_fu_4232_p1;
        end else begin
            smem_29_address1_local = 'bx;
        end
    end else begin
        smem_29_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_29_ce0_local = 1'b1;
    end else begin
        smem_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_29_ce1_local = 1'b1;
    end else begin
        smem_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_29_d0_local = DATA_x_9_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_29_d0_local = DATA_x_15_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_29_d0_local = DATA_x_11_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_29_d0_local = DATA_x_13_q0;
        end else begin
            smem_29_d0_local = 'bx;
        end
    end else begin
        smem_29_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_29_d1_local = DATA_x_8_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_29_d1_local = DATA_x_14_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_29_d1_local = DATA_x_10_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_29_d1_local = DATA_x_12_q0;
        end else begin
            smem_29_d1_local = 'bx;
        end
    end else begin
        smem_29_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_29_we0_local = 1'b1;
    end else begin
        smem_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_29_we1_local = 1'b1;
    end else begin
        smem_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_2_address0_local = zext_ln301_2_fu_4655_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_2_address0_local = zext_ln299_1_fu_4632_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_2_address0_local = zext_ln305_2_fu_4706_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_2_address0_local = zext_ln303_2_fu_4682_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_2_address1_local = zext_ln300_2_fu_4016_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_2_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_2_address1_local = zext_ln304_2_fu_4064_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_2_address1_local = zext_ln302_2_fu_4040_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_2_d0_local = DATA_x_21_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_2_d0_local = DATA_x_17_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_2_d0_local = DATA_x_23_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_2_d0_local = DATA_x_19_q1;
        end else begin
            smem_2_d0_local = 'bx;
        end
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_2_d1_local = DATA_x_20_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_2_d1_local = DATA_x_16_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_2_d1_local = DATA_x_22_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_2_d1_local = DATA_x_18_q1;
        end else begin
            smem_2_d1_local = 'bx;
        end
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_30_address0_local = zext_ln299_5_fu_5020_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_30_address0_local = zext_ln305_6_fu_5094_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_30_address0_local = zext_ln303_6_fu_5070_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_30_address0_local = zext_ln301_6_fu_5043_p1;
        end else begin
            smem_30_address0_local = 'bx;
        end
    end else begin
        smem_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_30_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_30_address1_local = zext_ln304_6_fu_4352_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_30_address1_local = zext_ln302_6_fu_4328_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_30_address1_local = zext_ln300_6_fu_4304_p1;
        end else begin
            smem_30_address1_local = 'bx;
        end
    end else begin
        smem_30_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_30_ce0_local = 1'b1;
    end else begin
        smem_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_30_ce1_local = 1'b1;
    end else begin
        smem_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_30_d0_local = DATA_x_17_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_30_d0_local = DATA_x_23_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_30_d0_local = DATA_x_19_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_30_d0_local = DATA_x_21_q0;
        end else begin
            smem_30_d0_local = 'bx;
        end
    end else begin
        smem_30_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_30_d1_local = DATA_x_16_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_30_d1_local = DATA_x_22_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_30_d1_local = DATA_x_18_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_30_d1_local = DATA_x_20_q0;
        end else begin
            smem_30_d1_local = 'bx;
        end
    end else begin
        smem_30_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_30_we0_local = 1'b1;
    end else begin
        smem_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_30_we1_local = 1'b1;
    end else begin
        smem_30_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_31_address0_local = zext_ln299_6_fu_5117_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_31_address0_local = zext_ln305_7_fu_5191_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_31_address0_local = zext_ln303_7_fu_5167_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_31_address0_local = zext_ln301_7_fu_5140_p1;
        end else begin
            smem_31_address0_local = 'bx;
        end
    end else begin
        smem_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_31_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_31_address1_local = zext_ln304_7_fu_4424_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_31_address1_local = zext_ln302_7_fu_4400_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_31_address1_local = zext_ln300_7_fu_4376_p1;
        end else begin
            smem_31_address1_local = 'bx;
        end
    end else begin
        smem_31_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_31_ce0_local = 1'b1;
    end else begin
        smem_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_31_ce1_local = 1'b1;
    end else begin
        smem_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_31_d0_local = DATA_x_25_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_31_d0_local = DATA_x_31_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_31_d0_local = DATA_x_27_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_31_d0_local = DATA_x_29_q0;
        end else begin
            smem_31_d0_local = 'bx;
        end
    end else begin
        smem_31_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_31_d1_local = DATA_x_24_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_31_d1_local = DATA_x_30_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_31_d1_local = DATA_x_26_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_31_d1_local = DATA_x_28_q0;
        end else begin
            smem_31_d1_local = 'bx;
        end
    end else begin
        smem_31_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_31_we0_local = 1'b1;
    end else begin
        smem_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_31_we1_local = 1'b1;
    end else begin
        smem_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_3_address0_local = zext_ln301_3_fu_4752_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_3_address0_local = zext_ln299_2_fu_4729_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_3_address0_local = zext_ln305_3_fu_4803_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_3_address0_local = zext_ln303_3_fu_4779_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_3_address1_local = zext_ln300_3_fu_4088_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_3_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_3_address1_local = zext_ln304_3_fu_4136_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_3_address1_local = zext_ln302_3_fu_4112_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_3_d0_local = DATA_x_29_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_3_d0_local = DATA_x_25_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_3_d0_local = DATA_x_31_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_3_d0_local = DATA_x_27_q1;
        end else begin
            smem_3_d0_local = 'bx;
        end
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_3_d1_local = DATA_x_28_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_3_d1_local = DATA_x_24_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_3_d1_local = DATA_x_30_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_3_d1_local = DATA_x_26_q1;
        end else begin
            smem_3_d1_local = 'bx;
        end
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_4_address0_local = zext_ln301_4_fu_4849_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_4_address0_local = zext_ln299_3_fu_4826_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_4_address0_local = zext_ln305_4_fu_4900_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_4_address0_local = zext_ln303_4_fu_4876_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_4_address1_local = zext_ln300_4_fu_4160_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_4_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_4_address1_local = zext_ln304_4_fu_4208_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_4_address1_local = zext_ln302_4_fu_4184_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_4_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_4_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_4_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_4_d0_local = DATA_x_3_q0;
        end else begin
            smem_4_d0_local = 'bx;
        end
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_4_d1_local = DATA_x_4_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_4_d1_local = DATA_x_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_4_d1_local = DATA_x_6_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_4_d1_local = DATA_x_2_q0;
        end else begin
            smem_4_d1_local = 'bx;
        end
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_5_address0_local = zext_ln301_5_fu_4946_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_5_address0_local = zext_ln299_4_fu_4923_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_5_address0_local = zext_ln305_5_fu_4997_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_5_address0_local = zext_ln303_5_fu_4973_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_5_address1_local = zext_ln300_5_fu_4232_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_5_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_5_address1_local = zext_ln304_5_fu_4280_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_5_address1_local = zext_ln302_5_fu_4256_p1;
        end else begin
            smem_5_address1_local = 'bx;
        end
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_5_d0_local = DATA_x_13_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_5_d0_local = DATA_x_9_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_5_d0_local = DATA_x_15_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_5_d0_local = DATA_x_11_q0;
        end else begin
            smem_5_d0_local = 'bx;
        end
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_5_d1_local = DATA_x_12_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_5_d1_local = DATA_x_8_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_5_d1_local = DATA_x_14_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_5_d1_local = DATA_x_10_q0;
        end else begin
            smem_5_d1_local = 'bx;
        end
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_6_address0_local = zext_ln301_6_fu_5043_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_6_address0_local = zext_ln299_5_fu_5020_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_6_address0_local = zext_ln305_6_fu_5094_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_6_address0_local = zext_ln303_6_fu_5070_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_6_address1_local = zext_ln300_6_fu_4304_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_6_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_6_address1_local = zext_ln304_6_fu_4352_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_6_address1_local = zext_ln302_6_fu_4328_p1;
        end else begin
            smem_6_address1_local = 'bx;
        end
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_6_d0_local = DATA_x_21_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_6_d0_local = DATA_x_17_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_6_d0_local = DATA_x_23_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_6_d0_local = DATA_x_19_q0;
        end else begin
            smem_6_d0_local = 'bx;
        end
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_6_d1_local = DATA_x_20_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_6_d1_local = DATA_x_16_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_6_d1_local = DATA_x_22_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_6_d1_local = DATA_x_18_q0;
        end else begin
            smem_6_d1_local = 'bx;
        end
    end else begin
        smem_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_we1_local = 1'b1;
    end else begin
        smem_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_7_address0_local = zext_ln301_7_fu_5140_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_7_address0_local = zext_ln299_6_fu_5117_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_7_address0_local = zext_ln305_7_fu_5191_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_7_address0_local = zext_ln303_7_fu_5167_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_7_address1_local = zext_ln300_7_fu_4376_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_7_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_7_address1_local = zext_ln304_7_fu_4424_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_7_address1_local = zext_ln302_7_fu_4400_p1;
        end else begin
            smem_7_address1_local = 'bx;
        end
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_7_d0_local = DATA_x_29_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_7_d0_local = DATA_x_25_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_7_d0_local = DATA_x_31_q0;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_7_d0_local = DATA_x_27_q0;
        end else begin
            smem_7_d0_local = 'bx;
        end
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_7_d1_local = DATA_x_28_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_7_d1_local = DATA_x_24_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_7_d1_local = DATA_x_30_q0;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_7_d1_local = DATA_x_26_q0;
        end else begin
            smem_7_d1_local = 'bx;
        end
    end else begin
        smem_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_we1_local = 1'b1;
    end else begin
        smem_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_8_address0_local = zext_ln303_fu_4488_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_8_address0_local = zext_ln301_fu_4461_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_8_address0_local = select_ln299_fu_4435_p3;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_8_address0_local = zext_ln305_fu_4512_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_8_address1_local = zext_ln302_fu_3896_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_8_address1_local = zext_ln300_fu_3872_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_8_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_8_address1_local = zext_ln304_fu_3920_p1;
        end else begin
            smem_8_address1_local = 'bx;
        end
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_8_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_8_d0_local = DATA_x_5_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_8_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_8_d0_local = DATA_x_7_q1;
        end else begin
            smem_8_d0_local = 'bx;
        end
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_8_d1_local = DATA_x_2_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_8_d1_local = DATA_x_4_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_8_d1_local = DATA_x_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_8_d1_local = DATA_x_6_q1;
        end else begin
            smem_8_d1_local = 'bx;
        end
    end else begin
        smem_8_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_we1_local = 1'b1;
    end else begin
        smem_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_9_address0_local = zext_ln303_1_fu_4585_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_9_address0_local = zext_ln301_1_fu_4558_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_9_address0_local = zext_ln299_fu_4535_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_9_address0_local = zext_ln305_1_fu_4609_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_9_address1_local = zext_ln302_1_fu_3968_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_9_address1_local = zext_ln300_1_fu_3944_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_9_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_9_address1_local = zext_ln304_1_fu_3992_p1;
        end else begin
            smem_9_address1_local = 'bx;
        end
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_9_d0_local = DATA_x_11_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_9_d0_local = DATA_x_13_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_9_d0_local = DATA_x_9_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_9_d0_local = DATA_x_15_q1;
        end else begin
            smem_9_d0_local = 'bx;
        end
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_9_d1_local = DATA_x_10_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_9_d1_local = DATA_x_12_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_9_d1_local = DATA_x_8_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_9_d1_local = DATA_x_14_q1;
        end else begin
            smem_9_d1_local = 'bx;
        end
    end else begin
        smem_9_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_we1_local = 1'b1;
    end else begin
        smem_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_address0_local = zext_ln301_fu_4461_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_address0_local = select_ln299_fu_4435_p3;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_address0_local = zext_ln305_fu_4512_p1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_address0_local = zext_ln303_fu_4488_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_address1_local = zext_ln300_fu_3872_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_address1_local = zext_ln298_fu_3820_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_address1_local = zext_ln304_fu_3920_p1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_address1_local = zext_ln302_fu_3896_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3)) begin
            smem_d0_local = DATA_x_5_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0)) begin
            smem_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1)) begin
            smem_d0_local = DATA_x_7_q1;
        end else if ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2)) begin
            smem_d0_local = DATA_x_3_q1;
        end else begin
            smem_d0_local = 'bx;
        end
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_850)) begin
        if ((trunc_ln9_reg_5218 == 2'd3)) begin
            smem_d1_local = DATA_x_4_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd0)) begin
            smem_d1_local = DATA_x_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd1)) begin
            smem_d1_local = DATA_x_6_q1;
        end else if ((trunc_ln9_reg_5218 == 2'd2)) begin
            smem_d1_local = DATA_x_2_q1;
        end else begin
            smem_d1_local = 'bx;
        end
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((trunc_ln9_reg_5218_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln9_reg_5218 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln9_reg_5218 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_10_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_10_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_10_ce1 = DATA_x_10_ce1_local;
assign DATA_x_11_address0 = zext_ln298_2_reg_5322;
assign DATA_x_11_address1 = zext_ln298_1_reg_5222;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_11_ce1 = DATA_x_11_ce1_local;
assign DATA_x_12_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_12_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_12_ce1 = DATA_x_12_ce1_local;
assign DATA_x_13_address0 = zext_ln298_2_reg_5322;
assign DATA_x_13_address1 = zext_ln298_1_reg_5222;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_13_ce1 = DATA_x_13_ce1_local;
assign DATA_x_14_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_14_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_14_ce1 = DATA_x_14_ce1_local;
assign DATA_x_15_address0 = zext_ln298_2_reg_5322;
assign DATA_x_15_address1 = zext_ln298_1_reg_5222;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_15_ce1 = DATA_x_15_ce1_local;
assign DATA_x_16_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_16_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_16_ce0 = DATA_x_16_ce0_local;
assign DATA_x_16_ce1 = DATA_x_16_ce1_local;
assign DATA_x_17_address0 = zext_ln298_2_reg_5322;
assign DATA_x_17_address1 = zext_ln298_1_reg_5222;
assign DATA_x_17_ce0 = DATA_x_17_ce0_local;
assign DATA_x_17_ce1 = DATA_x_17_ce1_local;
assign DATA_x_18_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_18_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_18_ce0 = DATA_x_18_ce0_local;
assign DATA_x_18_ce1 = DATA_x_18_ce1_local;
assign DATA_x_19_address0 = zext_ln298_2_reg_5322;
assign DATA_x_19_address1 = zext_ln298_1_reg_5222;
assign DATA_x_19_ce0 = DATA_x_19_ce0_local;
assign DATA_x_19_ce1 = DATA_x_19_ce1_local;
assign DATA_x_1_address0 = zext_ln298_2_reg_5322;
assign DATA_x_1_address1 = zext_ln298_1_reg_5222;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_20_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_20_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_20_ce0 = DATA_x_20_ce0_local;
assign DATA_x_20_ce1 = DATA_x_20_ce1_local;
assign DATA_x_21_address0 = zext_ln298_2_reg_5322;
assign DATA_x_21_address1 = zext_ln298_1_reg_5222;
assign DATA_x_21_ce0 = DATA_x_21_ce0_local;
assign DATA_x_21_ce1 = DATA_x_21_ce1_local;
assign DATA_x_22_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_22_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_22_ce0 = DATA_x_22_ce0_local;
assign DATA_x_22_ce1 = DATA_x_22_ce1_local;
assign DATA_x_23_address0 = zext_ln298_2_reg_5322;
assign DATA_x_23_address1 = zext_ln298_1_reg_5222;
assign DATA_x_23_ce0 = DATA_x_23_ce0_local;
assign DATA_x_23_ce1 = DATA_x_23_ce1_local;
assign DATA_x_24_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_24_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_24_ce0 = DATA_x_24_ce0_local;
assign DATA_x_24_ce1 = DATA_x_24_ce1_local;
assign DATA_x_25_address0 = zext_ln298_2_reg_5322;
assign DATA_x_25_address1 = zext_ln298_1_reg_5222;
assign DATA_x_25_ce0 = DATA_x_25_ce0_local;
assign DATA_x_25_ce1 = DATA_x_25_ce1_local;
assign DATA_x_26_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_26_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_26_ce0 = DATA_x_26_ce0_local;
assign DATA_x_26_ce1 = DATA_x_26_ce1_local;
assign DATA_x_27_address0 = zext_ln298_2_reg_5322;
assign DATA_x_27_address1 = zext_ln298_1_reg_5222;
assign DATA_x_27_ce0 = DATA_x_27_ce0_local;
assign DATA_x_27_ce1 = DATA_x_27_ce1_local;
assign DATA_x_28_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_28_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_28_ce0 = DATA_x_28_ce0_local;
assign DATA_x_28_ce1 = DATA_x_28_ce1_local;
assign DATA_x_29_address0 = zext_ln298_2_reg_5322;
assign DATA_x_29_address1 = zext_ln298_1_reg_5222;
assign DATA_x_29_ce0 = DATA_x_29_ce0_local;
assign DATA_x_29_ce1 = DATA_x_29_ce1_local;
assign DATA_x_2_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_2_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_30_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_30_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_30_ce0 = DATA_x_30_ce0_local;
assign DATA_x_30_ce1 = DATA_x_30_ce1_local;
assign DATA_x_31_address0 = zext_ln298_2_reg_5322;
assign DATA_x_31_address1 = zext_ln298_1_reg_5222;
assign DATA_x_31_ce0 = DATA_x_31_ce0_local;
assign DATA_x_31_ce1 = DATA_x_31_ce1_local;
assign DATA_x_3_address0 = zext_ln298_2_reg_5322;
assign DATA_x_3_address1 = zext_ln298_1_reg_5222;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_4_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_4_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_5_address0 = zext_ln298_2_reg_5322;
assign DATA_x_5_address1 = zext_ln298_1_reg_5222;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_6_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_6_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_7_address0 = zext_ln298_2_reg_5322;
assign DATA_x_7_address1 = zext_ln298_1_reg_5222;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_8_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_8_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_8_ce1 = DATA_x_8_ce1_local;
assign DATA_x_9_address0 = zext_ln298_2_reg_5322;
assign DATA_x_9_address1 = zext_ln298_1_reg_5222;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_9_ce1 = DATA_x_9_ce1_local;
assign DATA_x_address0 = zext_ln298_2_fu_3776_p1;
assign DATA_x_address1 = zext_ln298_1_fu_3738_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln294_fu_3796_p2 = (ap_sig_allocacmp_tid_3 + 7'd8);
assign add_ln299_1_fu_4617_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd290));
assign add_ln299_2_fu_4714_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd291));
assign add_ln299_3_fu_4811_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd292));
assign add_ln299_4_fu_4908_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd293));
assign add_ln299_5_fu_5005_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd294));
assign add_ln299_6_fu_5102_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd295));
assign add_ln299_fu_4520_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd289));
assign add_ln300_1_fu_3928_p2 = (zext_ln294_2_fu_3810_p1 + 8'd73);
assign add_ln300_2_fu_4000_p2 = (zext_ln294_2_fu_3810_p1 + 8'd74);
assign add_ln300_3_fu_4072_p2 = (zext_ln294_2_fu_3810_p1 + 8'd75);
assign add_ln300_4_fu_4144_p2 = (zext_ln294_2_fu_3810_p1 + 8'd76);
assign add_ln300_5_fu_4216_p2 = (zext_ln294_2_fu_3810_p1 + 8'd77);
assign add_ln300_6_fu_4288_p2 = (zext_ln294_2_fu_3810_p1 + 8'd78);
assign add_ln300_7_fu_4360_p2 = (zext_ln294_2_fu_3810_p1 + 8'd79);
assign add_ln300_fu_3856_p2 = (zext_ln294_2_fu_3810_p1 + 8'd72);
assign add_ln301_1_fu_4543_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd361));
assign add_ln301_2_fu_4640_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd362));
assign add_ln301_3_fu_4737_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd363));
assign add_ln301_4_fu_4834_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd364));
assign add_ln301_5_fu_4931_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd365));
assign add_ln301_6_fu_5028_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd366));
assign add_ln301_7_fu_5125_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd367));
assign add_ln301_fu_4446_p2 = ($signed(zext_ln294_1_reg_5422) + $signed(9'd360));
assign add_ln302_1_fu_3952_p2 = ($signed(zext_ln294_2_fu_3810_p1) + $signed(8'd145));
assign add_ln302_2_fu_4024_p2 = ($signed(zext_ln294_2_fu_3810_p1) + $signed(8'd146));
assign add_ln302_3_fu_4096_p2 = ($signed(zext_ln294_2_fu_3810_p1) + $signed(8'd147));
assign add_ln302_4_fu_4168_p2 = ($signed(zext_ln294_2_fu_3810_p1) + $signed(8'd148));
assign add_ln302_5_fu_4240_p2 = ($signed(zext_ln294_2_fu_3810_p1) + $signed(8'd149));
assign add_ln302_6_fu_4312_p2 = ($signed(zext_ln294_2_fu_3810_p1) + $signed(8'd150));
assign add_ln302_7_fu_4384_p2 = ($signed(zext_ln294_2_fu_3810_p1) + $signed(8'd151));
assign add_ln302_fu_3880_p2 = ($signed(zext_ln294_2_fu_3810_p1) + $signed(8'd144));
assign add_ln303_1_fu_4566_p2 = ($signed(zext_ln294_2_reg_5441) + $signed(8'd177));
assign add_ln303_2_fu_4663_p2 = ($signed(zext_ln294_2_reg_5441) + $signed(8'd178));
assign add_ln303_3_fu_4760_p2 = ($signed(zext_ln294_2_reg_5441) + $signed(8'd179));
assign add_ln303_4_fu_4857_p2 = ($signed(zext_ln294_2_reg_5441) + $signed(8'd180));
assign add_ln303_5_fu_4954_p2 = ($signed(zext_ln294_2_reg_5441) + $signed(8'd181));
assign add_ln303_6_fu_5051_p2 = ($signed(zext_ln294_2_reg_5441) + $signed(8'd182));
assign add_ln303_7_fu_5148_p2 = ($signed(zext_ln294_2_reg_5441) + $signed(8'd183));
assign add_ln303_fu_4469_p2 = ($signed(zext_ln294_2_reg_5441) + $signed(8'd176));
assign add_ln304_1_fu_3976_p2 = (zext_ln294_1_fu_3807_p1 + 9'd217);
assign add_ln304_2_fu_4048_p2 = (zext_ln294_1_fu_3807_p1 + 9'd218);
assign add_ln304_3_fu_4120_p2 = (zext_ln294_1_fu_3807_p1 + 9'd219);
assign add_ln304_4_fu_4192_p2 = (zext_ln294_1_fu_3807_p1 + 9'd220);
assign add_ln304_5_fu_4264_p2 = (zext_ln294_1_fu_3807_p1 + 9'd221);
assign add_ln304_6_fu_4336_p2 = (zext_ln294_1_fu_3807_p1 + 9'd222);
assign add_ln304_7_fu_4408_p2 = (zext_ln294_1_fu_3807_p1 + 9'd223);
assign add_ln304_fu_3904_p2 = (zext_ln294_1_fu_3807_p1 + 9'd216);
assign add_ln305_1_fu_4593_p2 = (zext_ln294_fu_4432_p1 + 10'd505);
assign add_ln305_2_fu_4690_p2 = (zext_ln294_fu_4432_p1 + 10'd506);
assign add_ln305_3_fu_4787_p2 = (zext_ln294_fu_4432_p1 + 10'd507);
assign add_ln305_4_fu_4884_p2 = (zext_ln294_fu_4432_p1 + 10'd508);
assign add_ln305_5_fu_4981_p2 = (zext_ln294_fu_4432_p1 + 10'd509);
assign add_ln305_6_fu_5078_p2 = (zext_ln294_fu_4432_p1 + 10'd510);
assign add_ln305_7_fu_5175_p2 = (zext_ln294_fu_4432_p1 + 10'd511);
assign add_ln305_fu_4496_p2 = (zext_ln294_fu_4432_p1 + 10'd504);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_850 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln15_fu_4451_p4 = {{add_ln301_fu_4446_p2[8:5]}};
assign lshr_ln16_fu_3886_p4 = {{add_ln302_fu_3880_p2[7:5]}};
assign lshr_ln17_fu_3910_p4 = {{add_ln304_fu_3904_p2[8:5]}};
assign lshr_ln18_fu_4502_p4 = {{add_ln305_fu_4496_p2[9:5]}};
assign lshr_ln19_fu_4525_p4 = {{add_ln299_fu_4520_p2[8:5]}};
assign lshr_ln298_1_fu_3728_p4 = {{ap_sig_allocacmp_tid_3[5:2]}};
assign lshr_ln299_1_fu_4622_p4 = {{add_ln299_1_fu_4617_p2[8:5]}};
assign lshr_ln299_2_fu_4719_p4 = {{add_ln299_2_fu_4714_p2[8:5]}};
assign lshr_ln299_3_fu_4816_p4 = {{add_ln299_3_fu_4811_p2[8:5]}};
assign lshr_ln299_4_fu_4913_p4 = {{add_ln299_4_fu_4908_p2[8:5]}};
assign lshr_ln299_5_fu_5010_p4 = {{add_ln299_5_fu_5005_p2[8:5]}};
assign lshr_ln299_6_fu_5107_p4 = {{add_ln299_6_fu_5102_p2[8:5]}};
assign lshr_ln300_1_fu_3934_p4 = {{add_ln300_1_fu_3928_p2[7:5]}};
assign lshr_ln300_2_fu_4006_p4 = {{add_ln300_2_fu_4000_p2[7:5]}};
assign lshr_ln300_3_fu_4078_p4 = {{add_ln300_3_fu_4072_p2[7:5]}};
assign lshr_ln300_4_fu_4150_p4 = {{add_ln300_4_fu_4144_p2[7:5]}};
assign lshr_ln300_5_fu_4222_p4 = {{add_ln300_5_fu_4216_p2[7:5]}};
assign lshr_ln300_6_fu_4294_p4 = {{add_ln300_6_fu_4288_p2[7:5]}};
assign lshr_ln300_7_fu_4366_p4 = {{add_ln300_7_fu_4360_p2[7:5]}};
assign lshr_ln301_1_fu_4548_p4 = {{add_ln301_1_fu_4543_p2[8:5]}};
assign lshr_ln301_2_fu_4645_p4 = {{add_ln301_2_fu_4640_p2[8:5]}};
assign lshr_ln301_3_fu_4742_p4 = {{add_ln301_3_fu_4737_p2[8:5]}};
assign lshr_ln301_4_fu_4839_p4 = {{add_ln301_4_fu_4834_p2[8:5]}};
assign lshr_ln301_5_fu_4936_p4 = {{add_ln301_5_fu_4931_p2[8:5]}};
assign lshr_ln301_6_fu_5033_p4 = {{add_ln301_6_fu_5028_p2[8:5]}};
assign lshr_ln301_7_fu_5130_p4 = {{add_ln301_7_fu_5125_p2[8:5]}};
assign lshr_ln302_1_fu_3958_p4 = {{add_ln302_1_fu_3952_p2[7:5]}};
assign lshr_ln302_2_fu_4030_p4 = {{add_ln302_2_fu_4024_p2[7:5]}};
assign lshr_ln302_3_fu_4102_p4 = {{add_ln302_3_fu_4096_p2[7:5]}};
assign lshr_ln302_4_fu_4174_p4 = {{add_ln302_4_fu_4168_p2[7:5]}};
assign lshr_ln302_5_fu_4246_p4 = {{add_ln302_5_fu_4240_p2[7:5]}};
assign lshr_ln302_6_fu_4318_p4 = {{add_ln302_6_fu_4312_p2[7:5]}};
assign lshr_ln302_7_fu_4390_p4 = {{add_ln302_7_fu_4384_p2[7:5]}};
assign lshr_ln304_1_fu_3982_p4 = {{add_ln304_1_fu_3976_p2[8:5]}};
assign lshr_ln304_2_fu_4054_p4 = {{add_ln304_2_fu_4048_p2[8:5]}};
assign lshr_ln304_3_fu_4126_p4 = {{add_ln304_3_fu_4120_p2[8:5]}};
assign lshr_ln304_4_fu_4198_p4 = {{add_ln304_4_fu_4192_p2[8:5]}};
assign lshr_ln304_5_fu_4270_p4 = {{add_ln304_5_fu_4264_p2[8:5]}};
assign lshr_ln304_6_fu_4342_p4 = {{add_ln304_6_fu_4336_p2[8:5]}};
assign lshr_ln304_7_fu_4414_p4 = {{add_ln304_7_fu_4408_p2[8:5]}};
assign lshr_ln305_1_fu_4599_p4 = {{add_ln305_1_fu_4593_p2[9:5]}};
assign lshr_ln305_2_fu_4696_p4 = {{add_ln305_2_fu_4690_p2[9:5]}};
assign lshr_ln305_3_fu_4793_p4 = {{add_ln305_3_fu_4787_p2[9:5]}};
assign lshr_ln305_4_fu_4890_p4 = {{add_ln305_4_fu_4884_p2[9:5]}};
assign lshr_ln305_5_fu_4987_p4 = {{add_ln305_5_fu_4981_p2[9:5]}};
assign lshr_ln305_6_fu_5084_p4 = {{add_ln305_6_fu_5078_p2[9:5]}};
assign lshr_ln305_7_fu_5181_p4 = {{add_ln305_7_fu_5175_p2[9:5]}};
assign lshr_ln_fu_3862_p4 = {{add_ln300_fu_3856_p2[7:5]}};
assign or_ln_fu_3768_p3 = {{tmp_s_fu_3758_p4}, {1'd1}};
assign select_ln299_fu_4435_p3 = ((tmp_23_reg_5453[0:0] == 1'b1) ? 64'd10 : 64'd9);
assign sext_ln303_1_fu_4581_p1 = $signed(trunc_ln303_1_fu_4571_p4);
assign sext_ln303_2_fu_4678_p1 = $signed(trunc_ln303_2_fu_4668_p4);
assign sext_ln303_3_fu_4775_p1 = $signed(trunc_ln303_3_fu_4765_p4);
assign sext_ln303_4_fu_4872_p1 = $signed(trunc_ln303_4_fu_4862_p4);
assign sext_ln303_5_fu_4969_p1 = $signed(trunc_ln303_5_fu_4959_p4);
assign sext_ln303_6_fu_5066_p1 = $signed(trunc_ln303_6_fu_5056_p4);
assign sext_ln303_7_fu_5163_p1 = $signed(trunc_ln303_7_fu_5153_p4);
assign sext_ln303_fu_4484_p1 = $signed(trunc_ln_fu_4474_p4);
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = smem_10_address1_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_10_d0 = smem_10_d0_local;
assign smem_10_d1 = smem_10_d1_local;
assign smem_10_we0 = smem_10_we0_local;
assign smem_10_we1 = smem_10_we1_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_address1 = smem_11_address1_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_ce1 = smem_11_ce1_local;
assign smem_11_d0 = smem_11_d0_local;
assign smem_11_d1 = smem_11_d1_local;
assign smem_11_we0 = smem_11_we0_local;
assign smem_11_we1 = smem_11_we1_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_address1 = smem_12_address1_local;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_ce1 = smem_12_ce1_local;
assign smem_12_d0 = smem_12_d0_local;
assign smem_12_d1 = smem_12_d1_local;
assign smem_12_we0 = smem_12_we0_local;
assign smem_12_we1 = smem_12_we1_local;
assign smem_13_address0 = smem_13_address0_local;
assign smem_13_address1 = smem_13_address1_local;
assign smem_13_ce0 = smem_13_ce0_local;
assign smem_13_ce1 = smem_13_ce1_local;
assign smem_13_d0 = smem_13_d0_local;
assign smem_13_d1 = smem_13_d1_local;
assign smem_13_we0 = smem_13_we0_local;
assign smem_13_we1 = smem_13_we1_local;
assign smem_14_address0 = smem_14_address0_local;
assign smem_14_address1 = smem_14_address1_local;
assign smem_14_ce0 = smem_14_ce0_local;
assign smem_14_ce1 = smem_14_ce1_local;
assign smem_14_d0 = smem_14_d0_local;
assign smem_14_d1 = smem_14_d1_local;
assign smem_14_we0 = smem_14_we0_local;
assign smem_14_we1 = smem_14_we1_local;
assign smem_15_address0 = smem_15_address0_local;
assign smem_15_address1 = smem_15_address1_local;
assign smem_15_ce0 = smem_15_ce0_local;
assign smem_15_ce1 = smem_15_ce1_local;
assign smem_15_d0 = smem_15_d0_local;
assign smem_15_d1 = smem_15_d1_local;
assign smem_15_we0 = smem_15_we0_local;
assign smem_15_we1 = smem_15_we1_local;
assign smem_16_address0 = smem_16_address0_local;
assign smem_16_address1 = smem_16_address1_local;
assign smem_16_ce0 = smem_16_ce0_local;
assign smem_16_ce1 = smem_16_ce1_local;
assign smem_16_d0 = smem_16_d0_local;
assign smem_16_d1 = smem_16_d1_local;
assign smem_16_we0 = smem_16_we0_local;
assign smem_16_we1 = smem_16_we1_local;
assign smem_17_address0 = smem_17_address0_local;
assign smem_17_address1 = smem_17_address1_local;
assign smem_17_ce0 = smem_17_ce0_local;
assign smem_17_ce1 = smem_17_ce1_local;
assign smem_17_d0 = smem_17_d0_local;
assign smem_17_d1 = smem_17_d1_local;
assign smem_17_we0 = smem_17_we0_local;
assign smem_17_we1 = smem_17_we1_local;
assign smem_18_address0 = smem_18_address0_local;
assign smem_18_address1 = smem_18_address1_local;
assign smem_18_ce0 = smem_18_ce0_local;
assign smem_18_ce1 = smem_18_ce1_local;
assign smem_18_d0 = smem_18_d0_local;
assign smem_18_d1 = smem_18_d1_local;
assign smem_18_we0 = smem_18_we0_local;
assign smem_18_we1 = smem_18_we1_local;
assign smem_19_address0 = smem_19_address0_local;
assign smem_19_address1 = smem_19_address1_local;
assign smem_19_ce0 = smem_19_ce0_local;
assign smem_19_ce1 = smem_19_ce1_local;
assign smem_19_d0 = smem_19_d0_local;
assign smem_19_d1 = smem_19_d1_local;
assign smem_19_we0 = smem_19_we0_local;
assign smem_19_we1 = smem_19_we1_local;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_d1 = smem_1_d1_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_1_we1 = smem_1_we1_local;
assign smem_20_address0 = smem_20_address0_local;
assign smem_20_address1 = smem_20_address1_local;
assign smem_20_ce0 = smem_20_ce0_local;
assign smem_20_ce1 = smem_20_ce1_local;
assign smem_20_d0 = smem_20_d0_local;
assign smem_20_d1 = smem_20_d1_local;
assign smem_20_we0 = smem_20_we0_local;
assign smem_20_we1 = smem_20_we1_local;
assign smem_21_address0 = smem_21_address0_local;
assign smem_21_address1 = smem_21_address1_local;
assign smem_21_ce0 = smem_21_ce0_local;
assign smem_21_ce1 = smem_21_ce1_local;
assign smem_21_d0 = smem_21_d0_local;
assign smem_21_d1 = smem_21_d1_local;
assign smem_21_we0 = smem_21_we0_local;
assign smem_21_we1 = smem_21_we1_local;
assign smem_22_address0 = smem_22_address0_local;
assign smem_22_address1 = smem_22_address1_local;
assign smem_22_ce0 = smem_22_ce0_local;
assign smem_22_ce1 = smem_22_ce1_local;
assign smem_22_d0 = smem_22_d0_local;
assign smem_22_d1 = smem_22_d1_local;
assign smem_22_we0 = smem_22_we0_local;
assign smem_22_we1 = smem_22_we1_local;
assign smem_23_address0 = smem_23_address0_local;
assign smem_23_address1 = smem_23_address1_local;
assign smem_23_ce0 = smem_23_ce0_local;
assign smem_23_ce1 = smem_23_ce1_local;
assign smem_23_d0 = smem_23_d0_local;
assign smem_23_d1 = smem_23_d1_local;
assign smem_23_we0 = smem_23_we0_local;
assign smem_23_we1 = smem_23_we1_local;
assign smem_24_address0 = smem_24_address0_local;
assign smem_24_address1 = smem_24_address1_local;
assign smem_24_ce0 = smem_24_ce0_local;
assign smem_24_ce1 = smem_24_ce1_local;
assign smem_24_d0 = smem_24_d0_local;
assign smem_24_d1 = smem_24_d1_local;
assign smem_24_we0 = smem_24_we0_local;
assign smem_24_we1 = smem_24_we1_local;
assign smem_25_address0 = smem_25_address0_local;
assign smem_25_address1 = smem_25_address1_local;
assign smem_25_ce0 = smem_25_ce0_local;
assign smem_25_ce1 = smem_25_ce1_local;
assign smem_25_d0 = smem_25_d0_local;
assign smem_25_d1 = smem_25_d1_local;
assign smem_25_we0 = smem_25_we0_local;
assign smem_25_we1 = smem_25_we1_local;
assign smem_26_address0 = smem_26_address0_local;
assign smem_26_address1 = smem_26_address1_local;
assign smem_26_ce0 = smem_26_ce0_local;
assign smem_26_ce1 = smem_26_ce1_local;
assign smem_26_d0 = smem_26_d0_local;
assign smem_26_d1 = smem_26_d1_local;
assign smem_26_we0 = smem_26_we0_local;
assign smem_26_we1 = smem_26_we1_local;
assign smem_27_address0 = smem_27_address0_local;
assign smem_27_address1 = smem_27_address1_local;
assign smem_27_ce0 = smem_27_ce0_local;
assign smem_27_ce1 = smem_27_ce1_local;
assign smem_27_d0 = smem_27_d0_local;
assign smem_27_d1 = smem_27_d1_local;
assign smem_27_we0 = smem_27_we0_local;
assign smem_27_we1 = smem_27_we1_local;
assign smem_28_address0 = smem_28_address0_local;
assign smem_28_address1 = smem_28_address1_local;
assign smem_28_ce0 = smem_28_ce0_local;
assign smem_28_ce1 = smem_28_ce1_local;
assign smem_28_d0 = smem_28_d0_local;
assign smem_28_d1 = smem_28_d1_local;
assign smem_28_we0 = smem_28_we0_local;
assign smem_28_we1 = smem_28_we1_local;
assign smem_29_address0 = smem_29_address0_local;
assign smem_29_address1 = smem_29_address1_local;
assign smem_29_ce0 = smem_29_ce0_local;
assign smem_29_ce1 = smem_29_ce1_local;
assign smem_29_d0 = smem_29_d0_local;
assign smem_29_d1 = smem_29_d1_local;
assign smem_29_we0 = smem_29_we0_local;
assign smem_29_we1 = smem_29_we1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_d1 = smem_2_d1_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_2_we1 = smem_2_we1_local;
assign smem_30_address0 = smem_30_address0_local;
assign smem_30_address1 = smem_30_address1_local;
assign smem_30_ce0 = smem_30_ce0_local;
assign smem_30_ce1 = smem_30_ce1_local;
assign smem_30_d0 = smem_30_d0_local;
assign smem_30_d1 = smem_30_d1_local;
assign smem_30_we0 = smem_30_we0_local;
assign smem_30_we1 = smem_30_we1_local;
assign smem_31_address0 = smem_31_address0_local;
assign smem_31_address1 = smem_31_address1_local;
assign smem_31_ce0 = smem_31_ce0_local;
assign smem_31_ce1 = smem_31_ce1_local;
assign smem_31_d0 = smem_31_d0_local;
assign smem_31_d1 = smem_31_d1_local;
assign smem_31_we0 = smem_31_we0_local;
assign smem_31_we1 = smem_31_we1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_d1 = smem_3_d1_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_3_we1 = smem_3_we1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = smem_4_address1_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_d1 = smem_4_d1_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_4_we1 = smem_4_we1_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = smem_5_address1_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_d1 = smem_5_d1_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_5_we1 = smem_5_we1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = smem_6_address1_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_d1 = smem_6_d1_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_6_we1 = smem_6_we1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = smem_7_address1_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_d1 = smem_7_d1_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_7_we1 = smem_7_we1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = smem_8_address1_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_8_d0 = smem_8_d0_local;
assign smem_8_d1 = smem_8_d1_local;
assign smem_8_we0 = smem_8_we0_local;
assign smem_8_we1 = smem_8_we1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = smem_9_address1_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_9_d0 = smem_9_d0_local;
assign smem_9_d1 = smem_9_d1_local;
assign smem_9_we0 = smem_9_we0_local;
assign smem_9_we1 = smem_9_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_23_fu_3813_p3 = tid_3_reg_5206[32'd5];
assign tmp_fu_3710_p3 = ap_sig_allocacmp_tid_3[32'd6];
assign tmp_s_fu_3758_p4 = {{ap_sig_allocacmp_tid_3[5:3]}};
assign trunc_ln303_1_fu_4571_p4 = {{add_ln303_1_fu_4566_p2[7:5]}};
assign trunc_ln303_2_fu_4668_p4 = {{add_ln303_2_fu_4663_p2[7:5]}};
assign trunc_ln303_3_fu_4765_p4 = {{add_ln303_3_fu_4760_p2[7:5]}};
assign trunc_ln303_4_fu_4862_p4 = {{add_ln303_4_fu_4857_p2[7:5]}};
assign trunc_ln303_5_fu_4959_p4 = {{add_ln303_5_fu_4954_p2[7:5]}};
assign trunc_ln303_6_fu_5056_p4 = {{add_ln303_6_fu_5051_p2[7:5]}};
assign trunc_ln303_7_fu_5153_p4 = {{add_ln303_7_fu_5148_p2[7:5]}};
assign trunc_ln_fu_4474_p4 = {{add_ln303_fu_4469_p2[7:5]}};
assign zext_ln294_1_fu_3807_p1 = tid_3_reg_5206;
assign zext_ln294_2_fu_3810_p1 = tid_3_reg_5206;
assign zext_ln294_fu_4432_p1 = tid_3_reg_5206_pp0_iter1_reg;
assign zext_ln298_1_fu_3738_p1 = lshr_ln298_1_fu_3728_p4;
assign zext_ln298_2_fu_3776_p1 = or_ln_fu_3768_p3;
assign zext_ln298_fu_3820_p1 = tmp_23_fu_3813_p3;
assign zext_ln299_1_fu_4632_p1 = lshr_ln299_1_fu_4622_p4;
assign zext_ln299_2_fu_4729_p1 = lshr_ln299_2_fu_4719_p4;
assign zext_ln299_3_fu_4826_p1 = lshr_ln299_3_fu_4816_p4;
assign zext_ln299_4_fu_4923_p1 = lshr_ln299_4_fu_4913_p4;
assign zext_ln299_5_fu_5020_p1 = lshr_ln299_5_fu_5010_p4;
assign zext_ln299_6_fu_5117_p1 = lshr_ln299_6_fu_5107_p4;
assign zext_ln299_fu_4535_p1 = lshr_ln19_fu_4525_p4;
assign zext_ln300_1_fu_3944_p1 = lshr_ln300_1_fu_3934_p4;
assign zext_ln300_2_fu_4016_p1 = lshr_ln300_2_fu_4006_p4;
assign zext_ln300_3_fu_4088_p1 = lshr_ln300_3_fu_4078_p4;
assign zext_ln300_4_fu_4160_p1 = lshr_ln300_4_fu_4150_p4;
assign zext_ln300_5_fu_4232_p1 = lshr_ln300_5_fu_4222_p4;
assign zext_ln300_6_fu_4304_p1 = lshr_ln300_6_fu_4294_p4;
assign zext_ln300_7_fu_4376_p1 = lshr_ln300_7_fu_4366_p4;
assign zext_ln300_fu_3872_p1 = lshr_ln_fu_3862_p4;
assign zext_ln301_1_fu_4558_p1 = lshr_ln301_1_fu_4548_p4;
assign zext_ln301_2_fu_4655_p1 = lshr_ln301_2_fu_4645_p4;
assign zext_ln301_3_fu_4752_p1 = lshr_ln301_3_fu_4742_p4;
assign zext_ln301_4_fu_4849_p1 = lshr_ln301_4_fu_4839_p4;
assign zext_ln301_5_fu_4946_p1 = lshr_ln301_5_fu_4936_p4;
assign zext_ln301_6_fu_5043_p1 = lshr_ln301_6_fu_5033_p4;
assign zext_ln301_7_fu_5140_p1 = lshr_ln301_7_fu_5130_p4;
assign zext_ln301_fu_4461_p1 = lshr_ln15_fu_4451_p4;
assign zext_ln302_1_fu_3968_p1 = lshr_ln302_1_fu_3958_p4;
assign zext_ln302_2_fu_4040_p1 = lshr_ln302_2_fu_4030_p4;
assign zext_ln302_3_fu_4112_p1 = lshr_ln302_3_fu_4102_p4;
assign zext_ln302_4_fu_4184_p1 = lshr_ln302_4_fu_4174_p4;
assign zext_ln302_5_fu_4256_p1 = lshr_ln302_5_fu_4246_p4;
assign zext_ln302_6_fu_4328_p1 = lshr_ln302_6_fu_4318_p4;
assign zext_ln302_7_fu_4400_p1 = lshr_ln302_7_fu_4390_p4;
assign zext_ln302_fu_3896_p1 = lshr_ln16_fu_3886_p4;
assign zext_ln303_1_fu_4585_p1 = $unsigned(sext_ln303_1_fu_4581_p1);
assign zext_ln303_2_fu_4682_p1 = $unsigned(sext_ln303_2_fu_4678_p1);
assign zext_ln303_3_fu_4779_p1 = $unsigned(sext_ln303_3_fu_4775_p1);
assign zext_ln303_4_fu_4876_p1 = $unsigned(sext_ln303_4_fu_4872_p1);
assign zext_ln303_5_fu_4973_p1 = $unsigned(sext_ln303_5_fu_4969_p1);
assign zext_ln303_6_fu_5070_p1 = $unsigned(sext_ln303_6_fu_5066_p1);
assign zext_ln303_7_fu_5167_p1 = $unsigned(sext_ln303_7_fu_5163_p1);
assign zext_ln303_fu_4488_p1 = $unsigned(sext_ln303_fu_4484_p1);
assign zext_ln304_1_fu_3992_p1 = lshr_ln304_1_fu_3982_p4;
assign zext_ln304_2_fu_4064_p1 = lshr_ln304_2_fu_4054_p4;
assign zext_ln304_3_fu_4136_p1 = lshr_ln304_3_fu_4126_p4;
assign zext_ln304_4_fu_4208_p1 = lshr_ln304_4_fu_4198_p4;
assign zext_ln304_5_fu_4280_p1 = lshr_ln304_5_fu_4270_p4;
assign zext_ln304_6_fu_4352_p1 = lshr_ln304_6_fu_4342_p4;
assign zext_ln304_7_fu_4424_p1 = lshr_ln304_7_fu_4414_p4;
assign zext_ln304_fu_3920_p1 = lshr_ln17_fu_3910_p4;
assign zext_ln305_1_fu_4609_p1 = lshr_ln305_1_fu_4599_p4;
assign zext_ln305_2_fu_4706_p1 = lshr_ln305_2_fu_4696_p4;
assign zext_ln305_3_fu_4803_p1 = lshr_ln305_3_fu_4793_p4;
assign zext_ln305_4_fu_4900_p1 = lshr_ln305_4_fu_4890_p4;
assign zext_ln305_5_fu_4997_p1 = lshr_ln305_5_fu_4987_p4;
assign zext_ln305_6_fu_5094_p1 = lshr_ln305_6_fu_5084_p4;
assign zext_ln305_7_fu_5191_p1 = lshr_ln305_7_fu_5181_p4;
assign zext_ln305_fu_4512_p1 = lshr_ln18_fu_4502_p4;
always @ (posedge ap_clk) begin
    zext_ln298_1_reg_5222[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln298_2_reg_5322[0] <= 1'b1;
    zext_ln298_2_reg_5322[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln294_1_reg_5422[8:7] <= 2'b00;
    zext_ln294_2_reg_5441[7] <= 1'b0;
end
endmodule 