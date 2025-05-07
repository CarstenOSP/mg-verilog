module fft1D_512_fft1D_512_Pipeline_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_31_address0,DATA_y_31_ce0,DATA_y_31_we0,DATA_y_31_d0,DATA_y_30_address0,DATA_y_30_ce0,DATA_y_30_we0,DATA_y_30_d0,DATA_y_29_address0,DATA_y_29_ce0,DATA_y_29_we0,DATA_y_29_d0,DATA_y_28_address0,DATA_y_28_ce0,DATA_y_28_we0,DATA_y_28_d0,DATA_y_27_address0,DATA_y_27_ce0,DATA_y_27_we0,DATA_y_27_d0,DATA_y_26_address0,DATA_y_26_ce0,DATA_y_26_we0,DATA_y_26_d0,DATA_y_25_address0,DATA_y_25_ce0,DATA_y_25_we0,DATA_y_25_d0,DATA_y_24_address0,DATA_y_24_ce0,DATA_y_24_we0,DATA_y_24_d0,DATA_y_23_address0,DATA_y_23_ce0,DATA_y_23_we0,DATA_y_23_d0,DATA_y_22_address0,DATA_y_22_ce0,DATA_y_22_we0,DATA_y_22_d0,DATA_y_21_address0,DATA_y_21_ce0,DATA_y_21_we0,DATA_y_21_d0,DATA_y_20_address0,DATA_y_20_ce0,DATA_y_20_we0,DATA_y_20_d0,DATA_y_19_address0,DATA_y_19_ce0,DATA_y_19_we0,DATA_y_19_d0,DATA_y_18_address0,DATA_y_18_ce0,DATA_y_18_we0,DATA_y_18_d0,DATA_y_17_address0,DATA_y_17_ce0,DATA_y_17_we0,DATA_y_17_d0,DATA_y_16_address0,DATA_y_16_ce0,DATA_y_16_we0,DATA_y_16_d0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_we0,DATA_y_15_d0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_we0,DATA_y_14_d0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_we0,DATA_y_13_d0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_we0,DATA_y_12_d0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_we0,DATA_y_11_d0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_we0,DATA_y_10_d0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_we0,DATA_y_9_d0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_we0,DATA_y_8_d0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_11_address0,smem_11_ce0,smem_11_q0,smem_11_address1,smem_11_ce1,smem_11_q1,smem_12_address0,smem_12_ce0,smem_12_q0,smem_12_address1,smem_12_ce1,smem_12_q1,smem_13_address0,smem_13_ce0,smem_13_q0,smem_13_address1,smem_13_ce1,smem_13_q1,smem_14_address0,smem_14_ce0,smem_14_q0,smem_14_address1,smem_14_ce1,smem_14_q1,smem_15_address0,smem_15_ce0,smem_15_q0,smem_15_address1,smem_15_ce1,smem_15_q1,smem_16_address0,smem_16_ce0,smem_16_q0,smem_16_address1,smem_16_ce1,smem_16_q1,smem_17_address0,smem_17_ce0,smem_17_q0,smem_17_address1,smem_17_ce1,smem_17_q1,smem_18_address0,smem_18_ce0,smem_18_q0,smem_18_address1,smem_18_ce1,smem_18_q1,smem_19_address0,smem_19_ce0,smem_19_q0,smem_19_address1,smem_19_ce1,smem_19_q1,smem_20_address0,smem_20_ce0,smem_20_q0,smem_20_address1,smem_20_ce1,smem_20_q1,smem_21_address0,smem_21_ce0,smem_21_q0,smem_21_address1,smem_21_ce1,smem_21_q1,smem_22_address0,smem_22_ce0,smem_22_q0,smem_22_address1,smem_22_ce1,smem_22_q1,smem_23_address0,smem_23_ce0,smem_23_q0,smem_23_address1,smem_23_ce1,smem_23_q1,smem_24_address0,smem_24_ce0,smem_24_q0,smem_24_address1,smem_24_ce1,smem_24_q1,smem_25_address0,smem_25_ce0,smem_25_q0,smem_25_address1,smem_25_ce1,smem_25_q1,smem_26_address0,smem_26_ce0,smem_26_q0,smem_26_address1,smem_26_ce1,smem_26_q1,smem_27_address0,smem_27_ce0,smem_27_q0,smem_27_address1,smem_27_ce1,smem_27_q1,smem_28_address0,smem_28_ce0,smem_28_q0,smem_28_address1,smem_28_ce1,smem_28_q1,smem_29_address0,smem_29_ce0,smem_29_q0,smem_29_address1,smem_29_ce1,smem_29_q1,smem_30_address0,smem_30_ce0,smem_30_q0,smem_30_address1,smem_30_ce1,smem_30_q1,smem_31_address0,smem_31_ce0,smem_31_q0,smem_31_address1,smem_31_ce1,smem_31_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
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
output  [4:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [4:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [4:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [4:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [4:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [4:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [4:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [4:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [4:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [4:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
output  [4:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [4:0] smem_5_address1;
output   smem_5_ce1;
input  [63:0] smem_5_q1;
output  [4:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [4:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
output  [4:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [4:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
output  [4:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [4:0] smem_8_address1;
output   smem_8_ce1;
input  [63:0] smem_8_q1;
output  [4:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [4:0] smem_9_address1;
output   smem_9_ce1;
input  [63:0] smem_9_q1;
output  [4:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [4:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
output  [4:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [4:0] smem_11_address1;
output   smem_11_ce1;
input  [63:0] smem_11_q1;
output  [4:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [4:0] smem_12_address1;
output   smem_12_ce1;
input  [63:0] smem_12_q1;
output  [4:0] smem_13_address0;
output   smem_13_ce0;
input  [63:0] smem_13_q0;
output  [4:0] smem_13_address1;
output   smem_13_ce1;
input  [63:0] smem_13_q1;
output  [4:0] smem_14_address0;
output   smem_14_ce0;
input  [63:0] smem_14_q0;
output  [4:0] smem_14_address1;
output   smem_14_ce1;
input  [63:0] smem_14_q1;
output  [4:0] smem_15_address0;
output   smem_15_ce0;
input  [63:0] smem_15_q0;
output  [4:0] smem_15_address1;
output   smem_15_ce1;
input  [63:0] smem_15_q1;
output  [4:0] smem_16_address0;
output   smem_16_ce0;
input  [63:0] smem_16_q0;
output  [4:0] smem_16_address1;
output   smem_16_ce1;
input  [63:0] smem_16_q1;
output  [4:0] smem_17_address0;
output   smem_17_ce0;
input  [63:0] smem_17_q0;
output  [4:0] smem_17_address1;
output   smem_17_ce1;
input  [63:0] smem_17_q1;
output  [4:0] smem_18_address0;
output   smem_18_ce0;
input  [63:0] smem_18_q0;
output  [4:0] smem_18_address1;
output   smem_18_ce1;
input  [63:0] smem_18_q1;
output  [4:0] smem_19_address0;
output   smem_19_ce0;
input  [63:0] smem_19_q0;
output  [4:0] smem_19_address1;
output   smem_19_ce1;
input  [63:0] smem_19_q1;
output  [4:0] smem_20_address0;
output   smem_20_ce0;
input  [63:0] smem_20_q0;
output  [4:0] smem_20_address1;
output   smem_20_ce1;
input  [63:0] smem_20_q1;
output  [4:0] smem_21_address0;
output   smem_21_ce0;
input  [63:0] smem_21_q0;
output  [4:0] smem_21_address1;
output   smem_21_ce1;
input  [63:0] smem_21_q1;
output  [4:0] smem_22_address0;
output   smem_22_ce0;
input  [63:0] smem_22_q0;
output  [4:0] smem_22_address1;
output   smem_22_ce1;
input  [63:0] smem_22_q1;
output  [4:0] smem_23_address0;
output   smem_23_ce0;
input  [63:0] smem_23_q0;
output  [4:0] smem_23_address1;
output   smem_23_ce1;
input  [63:0] smem_23_q1;
output  [4:0] smem_24_address0;
output   smem_24_ce0;
input  [63:0] smem_24_q0;
output  [4:0] smem_24_address1;
output   smem_24_ce1;
input  [63:0] smem_24_q1;
output  [4:0] smem_25_address0;
output   smem_25_ce0;
input  [63:0] smem_25_q0;
output  [4:0] smem_25_address1;
output   smem_25_ce1;
input  [63:0] smem_25_q1;
output  [4:0] smem_26_address0;
output   smem_26_ce0;
input  [63:0] smem_26_q0;
output  [4:0] smem_26_address1;
output   smem_26_ce1;
input  [63:0] smem_26_q1;
output  [4:0] smem_27_address0;
output   smem_27_ce0;
input  [63:0] smem_27_q0;
output  [4:0] smem_27_address1;
output   smem_27_ce1;
input  [63:0] smem_27_q1;
output  [4:0] smem_28_address0;
output   smem_28_ce0;
input  [63:0] smem_28_q0;
output  [4:0] smem_28_address1;
output   smem_28_ce1;
input  [63:0] smem_28_q1;
output  [4:0] smem_29_address0;
output   smem_29_ce0;
input  [63:0] smem_29_q0;
output  [4:0] smem_29_address1;
output   smem_29_ce1;
input  [63:0] smem_29_q1;
output  [4:0] smem_30_address0;
output   smem_30_ce0;
input  [63:0] smem_30_q0;
output  [4:0] smem_30_address1;
output   smem_30_ce1;
input  [63:0] smem_30_q1;
output  [4:0] smem_31_address0;
output   smem_31_ce0;
input  [63:0] smem_31_q0;
output  [4:0] smem_31_address1;
output   smem_31_ce1;
input  [63:0] smem_31_q1;
reg ap_idle;
reg smem_ce0;
reg smem_ce1;
reg smem_1_ce0;
reg smem_1_ce1;
reg smem_2_ce0;
reg smem_2_ce1;
reg smem_3_ce0;
reg smem_3_ce1;
reg smem_4_ce0;
reg smem_4_ce1;
reg smem_5_ce0;
reg smem_5_ce1;
reg smem_6_ce0;
reg smem_6_ce1;
reg smem_7_ce0;
reg smem_7_ce1;
reg smem_8_ce0;
reg smem_8_ce1;
reg smem_9_ce0;
reg smem_9_ce1;
reg smem_10_ce0;
reg smem_10_ce1;
reg smem_11_ce0;
reg smem_11_ce1;
reg smem_12_ce0;
reg smem_12_ce1;
reg smem_13_ce0;
reg smem_13_ce1;
reg smem_14_ce0;
reg smem_14_ce1;
reg smem_15_ce0;
reg smem_15_ce1;
reg smem_16_ce0;
reg smem_16_ce1;
reg smem_17_ce0;
reg smem_17_ce1;
reg smem_18_ce0;
reg smem_18_ce1;
reg smem_19_ce0;
reg smem_19_ce1;
reg smem_20_ce0;
reg smem_20_ce1;
reg smem_21_ce0;
reg smem_21_ce1;
reg smem_22_ce0;
reg smem_22_ce1;
reg smem_23_ce0;
reg smem_23_ce1;
reg smem_24_ce0;
reg smem_24_ce1;
reg smem_25_ce0;
reg smem_25_ce1;
reg smem_26_ce0;
reg smem_26_ce1;
reg smem_27_ce0;
reg smem_27_ce1;
reg smem_28_ce0;
reg smem_28_ce1;
reg smem_29_ce0;
reg smem_29_ce1;
reg smem_30_ce0;
reg smem_30_ce1;
reg smem_31_ce0;
reg smem_31_ce1;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_931;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [63:0] reg_716;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_724;
reg   [63:0] reg_732;
reg   [63:0] reg_740;
reg   [63:0] reg_748;
reg   [63:0] reg_756;
reg   [63:0] reg_764;
reg   [63:0] reg_772;
reg   [6:0] tid_reg_921;
wire   [0:0] tmp_fu_788_p3;
wire   [2:0] hi_1_fu_796_p4;
reg   [2:0] hi_1_reg_935;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] zext_ln220_fu_840_p1;
reg   [63:0] zext_ln220_reg_940;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [8:0] zext_ln114_fu_852_p1;
reg   [8:0] zext_ln114_reg_968;
wire   [0:0] grp_fu_677_p3;
reg   [0:0] tmp_28_reg_974;
wire   [8:0] add_ln232_2_fu_909_p2;
reg   [8:0] add_ln232_2_reg_982;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_608_ap_start;
wire    grp_loady8_fu_608_ap_done;
wire    grp_loady8_fu_608_ap_idle;
wire    grp_loady8_fu_608_ap_ready;
wire   [4:0] grp_loady8_fu_608_x_0_address0;
wire    grp_loady8_fu_608_x_0_ce0;
wire   [4:0] grp_loady8_fu_608_x_0_address1;
wire    grp_loady8_fu_608_x_0_ce1;
wire   [4:0] grp_loady8_fu_608_x_1_address0;
wire    grp_loady8_fu_608_x_1_ce0;
wire   [4:0] grp_loady8_fu_608_x_1_address1;
wire    grp_loady8_fu_608_x_1_ce1;
wire   [4:0] grp_loady8_fu_608_x_2_address0;
wire    grp_loady8_fu_608_x_2_ce0;
wire   [4:0] grp_loady8_fu_608_x_2_address1;
wire    grp_loady8_fu_608_x_2_ce1;
wire   [4:0] grp_loady8_fu_608_x_3_address0;
wire    grp_loady8_fu_608_x_3_ce0;
wire   [4:0] grp_loady8_fu_608_x_3_address1;
wire    grp_loady8_fu_608_x_3_ce1;
wire   [4:0] grp_loady8_fu_608_x_4_address0;
wire    grp_loady8_fu_608_x_4_ce0;
wire   [4:0] grp_loady8_fu_608_x_4_address1;
wire    grp_loady8_fu_608_x_4_ce1;
wire   [4:0] grp_loady8_fu_608_x_5_address0;
wire    grp_loady8_fu_608_x_5_ce0;
wire   [4:0] grp_loady8_fu_608_x_5_address1;
wire    grp_loady8_fu_608_x_5_ce1;
wire   [4:0] grp_loady8_fu_608_x_6_address0;
wire    grp_loady8_fu_608_x_6_ce0;
wire   [4:0] grp_loady8_fu_608_x_6_address1;
wire    grp_loady8_fu_608_x_6_ce1;
wire   [4:0] grp_loady8_fu_608_x_7_address0;
wire    grp_loady8_fu_608_x_7_ce0;
wire   [4:0] grp_loady8_fu_608_x_7_address1;
wire    grp_loady8_fu_608_x_7_ce1;
wire   [4:0] grp_loady8_fu_608_x_8_address0;
wire    grp_loady8_fu_608_x_8_ce0;
wire   [4:0] grp_loady8_fu_608_x_8_address1;
wire    grp_loady8_fu_608_x_8_ce1;
wire   [4:0] grp_loady8_fu_608_x_9_address0;
wire    grp_loady8_fu_608_x_9_ce0;
wire   [4:0] grp_loady8_fu_608_x_9_address1;
wire    grp_loady8_fu_608_x_9_ce1;
wire   [4:0] grp_loady8_fu_608_x_10_address0;
wire    grp_loady8_fu_608_x_10_ce0;
wire   [4:0] grp_loady8_fu_608_x_10_address1;
wire    grp_loady8_fu_608_x_10_ce1;
wire   [4:0] grp_loady8_fu_608_x_11_address0;
wire    grp_loady8_fu_608_x_11_ce0;
wire   [4:0] grp_loady8_fu_608_x_11_address1;
wire    grp_loady8_fu_608_x_11_ce1;
wire   [4:0] grp_loady8_fu_608_x_12_address0;
wire    grp_loady8_fu_608_x_12_ce0;
wire   [4:0] grp_loady8_fu_608_x_12_address1;
wire    grp_loady8_fu_608_x_12_ce1;
wire   [4:0] grp_loady8_fu_608_x_13_address0;
wire    grp_loady8_fu_608_x_13_ce0;
wire   [4:0] grp_loady8_fu_608_x_13_address1;
wire    grp_loady8_fu_608_x_13_ce1;
wire   [4:0] grp_loady8_fu_608_x_14_address0;
wire    grp_loady8_fu_608_x_14_ce0;
wire   [4:0] grp_loady8_fu_608_x_14_address1;
wire    grp_loady8_fu_608_x_14_ce1;
wire   [4:0] grp_loady8_fu_608_x_15_address0;
wire    grp_loady8_fu_608_x_15_ce0;
wire   [4:0] grp_loady8_fu_608_x_15_address1;
wire    grp_loady8_fu_608_x_15_ce1;
wire   [4:0] grp_loady8_fu_608_x_16_address0;
wire    grp_loady8_fu_608_x_16_ce0;
wire   [4:0] grp_loady8_fu_608_x_16_address1;
wire    grp_loady8_fu_608_x_16_ce1;
wire   [4:0] grp_loady8_fu_608_x_17_address0;
wire    grp_loady8_fu_608_x_17_ce0;
wire   [4:0] grp_loady8_fu_608_x_17_address1;
wire    grp_loady8_fu_608_x_17_ce1;
wire   [4:0] grp_loady8_fu_608_x_18_address0;
wire    grp_loady8_fu_608_x_18_ce0;
wire   [4:0] grp_loady8_fu_608_x_18_address1;
wire    grp_loady8_fu_608_x_18_ce1;
wire   [4:0] grp_loady8_fu_608_x_19_address0;
wire    grp_loady8_fu_608_x_19_ce0;
wire   [4:0] grp_loady8_fu_608_x_19_address1;
wire    grp_loady8_fu_608_x_19_ce1;
wire   [4:0] grp_loady8_fu_608_x_20_address0;
wire    grp_loady8_fu_608_x_20_ce0;
wire   [4:0] grp_loady8_fu_608_x_20_address1;
wire    grp_loady8_fu_608_x_20_ce1;
wire   [4:0] grp_loady8_fu_608_x_21_address0;
wire    grp_loady8_fu_608_x_21_ce0;
wire   [4:0] grp_loady8_fu_608_x_21_address1;
wire    grp_loady8_fu_608_x_21_ce1;
wire   [4:0] grp_loady8_fu_608_x_22_address0;
wire    grp_loady8_fu_608_x_22_ce0;
wire   [4:0] grp_loady8_fu_608_x_22_address1;
wire    grp_loady8_fu_608_x_22_ce1;
wire   [4:0] grp_loady8_fu_608_x_23_address0;
wire    grp_loady8_fu_608_x_23_ce0;
wire   [4:0] grp_loady8_fu_608_x_23_address1;
wire    grp_loady8_fu_608_x_23_ce1;
wire   [4:0] grp_loady8_fu_608_x_24_address0;
wire    grp_loady8_fu_608_x_24_ce0;
wire   [4:0] grp_loady8_fu_608_x_24_address1;
wire    grp_loady8_fu_608_x_24_ce1;
wire   [4:0] grp_loady8_fu_608_x_25_address0;
wire    grp_loady8_fu_608_x_25_ce0;
wire   [4:0] grp_loady8_fu_608_x_25_address1;
wire    grp_loady8_fu_608_x_25_ce1;
wire   [4:0] grp_loady8_fu_608_x_26_address0;
wire    grp_loady8_fu_608_x_26_ce0;
wire   [4:0] grp_loady8_fu_608_x_26_address1;
wire    grp_loady8_fu_608_x_26_ce1;
wire   [4:0] grp_loady8_fu_608_x_27_address0;
wire    grp_loady8_fu_608_x_27_ce0;
wire   [4:0] grp_loady8_fu_608_x_27_address1;
wire    grp_loady8_fu_608_x_27_ce1;
wire   [4:0] grp_loady8_fu_608_x_28_address0;
wire    grp_loady8_fu_608_x_28_ce0;
wire   [4:0] grp_loady8_fu_608_x_28_address1;
wire    grp_loady8_fu_608_x_28_ce1;
wire   [4:0] grp_loady8_fu_608_x_29_address0;
wire    grp_loady8_fu_608_x_29_ce0;
wire   [4:0] grp_loady8_fu_608_x_29_address1;
wire    grp_loady8_fu_608_x_29_ce1;
wire   [4:0] grp_loady8_fu_608_x_30_address0;
wire    grp_loady8_fu_608_x_30_ce0;
wire   [4:0] grp_loady8_fu_608_x_30_address1;
wire    grp_loady8_fu_608_x_30_ce1;
wire   [4:0] grp_loady8_fu_608_x_31_address0;
wire    grp_loady8_fu_608_x_31_ce0;
wire   [4:0] grp_loady8_fu_608_x_31_address1;
wire    grp_loady8_fu_608_x_31_ce1;
reg   [8:0] grp_loady8_fu_608_offset;
wire   [63:0] grp_loady8_fu_608_ap_return_0;
wire   [63:0] grp_loady8_fu_608_ap_return_1;
wire   [63:0] grp_loady8_fu_608_ap_return_2;
wire   [63:0] grp_loady8_fu_608_ap_return_3;
wire   [63:0] grp_loady8_fu_608_ap_return_4;
wire   [63:0] grp_loady8_fu_608_ap_return_5;
wire   [63:0] grp_loady8_fu_608_ap_return_6;
wire   [63:0] grp_loady8_fu_608_ap_return_7;
reg    grp_loady8_fu_608_ap_start_reg;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_ignoreCallOp30;
wire    ap_block_pp0_stage3_ignoreCallOp31;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_ignoreCallOp64;
wire    ap_block_pp0_stage6_ignoreCallOp65;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_ignoreCallOp95;
wire    ap_block_pp0_stage9_ignoreCallOp96;
wire    ap_block_pp0_stage11_ignoreCallOp122;
wire    ap_block_pp0_stage0_ignoreCallOp123;
wire   [8:0] add_ln_fu_808_p5;
wire    ap_block_pp0_stage1_ignoreCallOp27;
wire   [8:0] add_ln232_fu_876_p2;
wire    ap_block_pp0_stage4_ignoreCallOp55;
wire   [8:0] add_ln232_1_fu_893_p2;
wire    ap_block_pp0_stage7_ignoreCallOp86;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_ignoreCallOp113;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage1;
reg   [6:0] tid_4_fu_188;
wire   [6:0] add_ln219_fu_821_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
wire    ap_block_pp0_stage0;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
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
reg    DATA_y_8_we0_local;
reg    DATA_y_8_ce0_local;
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
reg    DATA_y_16_we0_local;
wire    ap_block_pp0_stage10_11001;
reg    DATA_y_16_ce0_local;
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
reg    DATA_y_24_we0_local;
reg    DATA_y_24_ce0_local;
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
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage9;
wire   [2:0] trunc_ln232_fu_805_p1;
wire   [3:0] lshr_ln_fu_831_p4;
wire   [1:0] tmp_s_fu_855_p4;
wire   [8:0] mul_ln232_1_fu_864_p5;
wire   [8:0] mul_ln232_2_fu_883_p5;
wire   [8:0] mul_ln232_3_fu_899_p5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_loady8_fu_608_ap_start_reg = 1'b0;
#0 tid_4_fu_188 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_608(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_608_ap_start),.ap_done(grp_loady8_fu_608_ap_done),.ap_idle(grp_loady8_fu_608_ap_idle),.ap_ready(grp_loady8_fu_608_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_608_x_0_address0),.x_0_ce0(grp_loady8_fu_608_x_0_ce0),.x_0_q0(smem_q0),.x_0_address1(grp_loady8_fu_608_x_0_address1),.x_0_ce1(grp_loady8_fu_608_x_0_ce1),.x_0_q1(smem_q1),.x_1_address0(grp_loady8_fu_608_x_1_address0),.x_1_ce0(grp_loady8_fu_608_x_1_ce0),.x_1_q0(smem_1_q0),.x_1_address1(grp_loady8_fu_608_x_1_address1),.x_1_ce1(grp_loady8_fu_608_x_1_ce1),.x_1_q1(smem_1_q1),.x_2_address0(grp_loady8_fu_608_x_2_address0),.x_2_ce0(grp_loady8_fu_608_x_2_ce0),.x_2_q0(smem_2_q0),.x_2_address1(grp_loady8_fu_608_x_2_address1),.x_2_ce1(grp_loady8_fu_608_x_2_ce1),.x_2_q1(smem_2_q1),.x_3_address0(grp_loady8_fu_608_x_3_address0),.x_3_ce0(grp_loady8_fu_608_x_3_ce0),.x_3_q0(smem_3_q0),.x_3_address1(grp_loady8_fu_608_x_3_address1),.x_3_ce1(grp_loady8_fu_608_x_3_ce1),.x_3_q1(smem_3_q1),.x_4_address0(grp_loady8_fu_608_x_4_address0),.x_4_ce0(grp_loady8_fu_608_x_4_ce0),.x_4_q0(smem_4_q0),.x_4_address1(grp_loady8_fu_608_x_4_address1),.x_4_ce1(grp_loady8_fu_608_x_4_ce1),.x_4_q1(smem_4_q1),.x_5_address0(grp_loady8_fu_608_x_5_address0),.x_5_ce0(grp_loady8_fu_608_x_5_ce0),.x_5_q0(smem_5_q0),.x_5_address1(grp_loady8_fu_608_x_5_address1),.x_5_ce1(grp_loady8_fu_608_x_5_ce1),.x_5_q1(smem_5_q1),.x_6_address0(grp_loady8_fu_608_x_6_address0),.x_6_ce0(grp_loady8_fu_608_x_6_ce0),.x_6_q0(smem_6_q0),.x_6_address1(grp_loady8_fu_608_x_6_address1),.x_6_ce1(grp_loady8_fu_608_x_6_ce1),.x_6_q1(smem_6_q1),.x_7_address0(grp_loady8_fu_608_x_7_address0),.x_7_ce0(grp_loady8_fu_608_x_7_ce0),.x_7_q0(smem_7_q0),.x_7_address1(grp_loady8_fu_608_x_7_address1),.x_7_ce1(grp_loady8_fu_608_x_7_ce1),.x_7_q1(smem_7_q1),.x_8_address0(grp_loady8_fu_608_x_8_address0),.x_8_ce0(grp_loady8_fu_608_x_8_ce0),.x_8_q0(smem_8_q0),.x_8_address1(grp_loady8_fu_608_x_8_address1),.x_8_ce1(grp_loady8_fu_608_x_8_ce1),.x_8_q1(smem_8_q1),.x_9_address0(grp_loady8_fu_608_x_9_address0),.x_9_ce0(grp_loady8_fu_608_x_9_ce0),.x_9_q0(smem_9_q0),.x_9_address1(grp_loady8_fu_608_x_9_address1),.x_9_ce1(grp_loady8_fu_608_x_9_ce1),.x_9_q1(smem_9_q1),.x_10_address0(grp_loady8_fu_608_x_10_address0),.x_10_ce0(grp_loady8_fu_608_x_10_ce0),.x_10_q0(smem_10_q0),.x_10_address1(grp_loady8_fu_608_x_10_address1),.x_10_ce1(grp_loady8_fu_608_x_10_ce1),.x_10_q1(smem_10_q1),.x_11_address0(grp_loady8_fu_608_x_11_address0),.x_11_ce0(grp_loady8_fu_608_x_11_ce0),.x_11_q0(smem_11_q0),.x_11_address1(grp_loady8_fu_608_x_11_address1),.x_11_ce1(grp_loady8_fu_608_x_11_ce1),.x_11_q1(smem_11_q1),.x_12_address0(grp_loady8_fu_608_x_12_address0),.x_12_ce0(grp_loady8_fu_608_x_12_ce0),.x_12_q0(smem_12_q0),.x_12_address1(grp_loady8_fu_608_x_12_address1),.x_12_ce1(grp_loady8_fu_608_x_12_ce1),.x_12_q1(smem_12_q1),.x_13_address0(grp_loady8_fu_608_x_13_address0),.x_13_ce0(grp_loady8_fu_608_x_13_ce0),.x_13_q0(smem_13_q0),.x_13_address1(grp_loady8_fu_608_x_13_address1),.x_13_ce1(grp_loady8_fu_608_x_13_ce1),.x_13_q1(smem_13_q1),.x_14_address0(grp_loady8_fu_608_x_14_address0),.x_14_ce0(grp_loady8_fu_608_x_14_ce0),.x_14_q0(smem_14_q0),.x_14_address1(grp_loady8_fu_608_x_14_address1),.x_14_ce1(grp_loady8_fu_608_x_14_ce1),.x_14_q1(smem_14_q1),.x_15_address0(grp_loady8_fu_608_x_15_address0),.x_15_ce0(grp_loady8_fu_608_x_15_ce0),.x_15_q0(smem_15_q0),.x_15_address1(grp_loady8_fu_608_x_15_address1),.x_15_ce1(grp_loady8_fu_608_x_15_ce1),.x_15_q1(smem_15_q1),.x_16_address0(grp_loady8_fu_608_x_16_address0),.x_16_ce0(grp_loady8_fu_608_x_16_ce0),.x_16_q0(smem_16_q0),.x_16_address1(grp_loady8_fu_608_x_16_address1),.x_16_ce1(grp_loady8_fu_608_x_16_ce1),.x_16_q1(smem_16_q1),.x_17_address0(grp_loady8_fu_608_x_17_address0),.x_17_ce0(grp_loady8_fu_608_x_17_ce0),.x_17_q0(smem_17_q0),.x_17_address1(grp_loady8_fu_608_x_17_address1),.x_17_ce1(grp_loady8_fu_608_x_17_ce1),.x_17_q1(smem_17_q1),.x_18_address0(grp_loady8_fu_608_x_18_address0),.x_18_ce0(grp_loady8_fu_608_x_18_ce0),.x_18_q0(smem_18_q0),.x_18_address1(grp_loady8_fu_608_x_18_address1),.x_18_ce1(grp_loady8_fu_608_x_18_ce1),.x_18_q1(smem_18_q1),.x_19_address0(grp_loady8_fu_608_x_19_address0),.x_19_ce0(grp_loady8_fu_608_x_19_ce0),.x_19_q0(smem_19_q0),.x_19_address1(grp_loady8_fu_608_x_19_address1),.x_19_ce1(grp_loady8_fu_608_x_19_ce1),.x_19_q1(smem_19_q1),.x_20_address0(grp_loady8_fu_608_x_20_address0),.x_20_ce0(grp_loady8_fu_608_x_20_ce0),.x_20_q0(smem_20_q0),.x_20_address1(grp_loady8_fu_608_x_20_address1),.x_20_ce1(grp_loady8_fu_608_x_20_ce1),.x_20_q1(smem_20_q1),.x_21_address0(grp_loady8_fu_608_x_21_address0),.x_21_ce0(grp_loady8_fu_608_x_21_ce0),.x_21_q0(smem_21_q0),.x_21_address1(grp_loady8_fu_608_x_21_address1),.x_21_ce1(grp_loady8_fu_608_x_21_ce1),.x_21_q1(smem_21_q1),.x_22_address0(grp_loady8_fu_608_x_22_address0),.x_22_ce0(grp_loady8_fu_608_x_22_ce0),.x_22_q0(smem_22_q0),.x_22_address1(grp_loady8_fu_608_x_22_address1),.x_22_ce1(grp_loady8_fu_608_x_22_ce1),.x_22_q1(smem_22_q1),.x_23_address0(grp_loady8_fu_608_x_23_address0),.x_23_ce0(grp_loady8_fu_608_x_23_ce0),.x_23_q0(smem_23_q0),.x_23_address1(grp_loady8_fu_608_x_23_address1),.x_23_ce1(grp_loady8_fu_608_x_23_ce1),.x_23_q1(smem_23_q1),.x_24_address0(grp_loady8_fu_608_x_24_address0),.x_24_ce0(grp_loady8_fu_608_x_24_ce0),.x_24_q0(smem_24_q0),.x_24_address1(grp_loady8_fu_608_x_24_address1),.x_24_ce1(grp_loady8_fu_608_x_24_ce1),.x_24_q1(smem_24_q1),.x_25_address0(grp_loady8_fu_608_x_25_address0),.x_25_ce0(grp_loady8_fu_608_x_25_ce0),.x_25_q0(smem_25_q0),.x_25_address1(grp_loady8_fu_608_x_25_address1),.x_25_ce1(grp_loady8_fu_608_x_25_ce1),.x_25_q1(smem_25_q1),.x_26_address0(grp_loady8_fu_608_x_26_address0),.x_26_ce0(grp_loady8_fu_608_x_26_ce0),.x_26_q0(smem_26_q0),.x_26_address1(grp_loady8_fu_608_x_26_address1),.x_26_ce1(grp_loady8_fu_608_x_26_ce1),.x_26_q1(smem_26_q1),.x_27_address0(grp_loady8_fu_608_x_27_address0),.x_27_ce0(grp_loady8_fu_608_x_27_ce0),.x_27_q0(smem_27_q0),.x_27_address1(grp_loady8_fu_608_x_27_address1),.x_27_ce1(grp_loady8_fu_608_x_27_ce1),.x_27_q1(smem_27_q1),.x_28_address0(grp_loady8_fu_608_x_28_address0),.x_28_ce0(grp_loady8_fu_608_x_28_ce0),.x_28_q0(smem_28_q0),.x_28_address1(grp_loady8_fu_608_x_28_address1),.x_28_ce1(grp_loady8_fu_608_x_28_ce1),.x_28_q1(smem_28_q1),.x_29_address0(grp_loady8_fu_608_x_29_address0),.x_29_ce0(grp_loady8_fu_608_x_29_ce0),.x_29_q0(smem_29_q0),.x_29_address1(grp_loady8_fu_608_x_29_address1),.x_29_ce1(grp_loady8_fu_608_x_29_ce1),.x_29_q1(smem_29_q1),.x_30_address0(grp_loady8_fu_608_x_30_address0),.x_30_ce0(grp_loady8_fu_608_x_30_ce0),.x_30_q0(smem_30_q0),.x_30_address1(grp_loady8_fu_608_x_30_address1),.x_30_ce1(grp_loady8_fu_608_x_30_ce1),.x_30_q1(smem_30_q1),.x_31_address0(grp_loady8_fu_608_x_31_address0),.x_31_ce0(grp_loady8_fu_608_x_31_ce0),.x_31_q0(smem_31_q0),.x_31_address1(grp_loady8_fu_608_x_31_address1),.x_31_ce1(grp_loady8_fu_608_x_31_ce1),.x_31_q1(smem_31_q1),.offset(grp_loady8_fu_608_offset),.ap_return_0(grp_loady8_fu_608_ap_return_0),.ap_return_1(grp_loady8_fu_608_ap_return_1),.ap_return_2(grp_loady8_fu_608_ap_return_2),.ap_return_3(grp_loady8_fu_608_ap_return_3),.ap_return_4(grp_loady8_fu_608_ap_return_4),.ap_return_5(grp_loady8_fu_608_ap_return_5),.ap_return_6(grp_loady8_fu_608_ap_return_6),.ap_return_7(grp_loady8_fu_608_ap_return_7));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_608_ap_start_reg <= 1'b0;
    end else begin
        if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_fu_788_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            grp_loady8_fu_608_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_608_ap_ready == 1'b1)) begin
            grp_loady8_fu_608_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_4_fu_188 <= 7'd0;
    end else if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_4_fu_188 <= add_ln219_fu_821_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln232_2_reg_982 <= add_ln232_2_fu_909_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        hi_1_reg_935 <= {{tid_reg_921[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_716 <= grp_loady8_fu_608_ap_return_0;
        reg_724 <= grp_loady8_fu_608_ap_return_1;
        reg_732 <= grp_loady8_fu_608_ap_return_2;
        reg_740 <= grp_loady8_fu_608_ap_return_3;
        reg_748 <= grp_loady8_fu_608_ap_return_4;
        reg_756 <= grp_loady8_fu_608_ap_return_5;
        reg_764 <= grp_loady8_fu_608_ap_return_6;
        reg_772 <= grp_loady8_fu_608_ap_return_7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_reg_921 <= ap_sig_allocacmp_tid;
        tmp_reg_931 <= ap_sig_allocacmp_tid[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_28_reg_974 <= tid_reg_921[32'd2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        zext_ln114_reg_968[2 : 0] <= zext_ln114_fu_852_p1[2 : 0];
        zext_ln220_reg_940[3 : 0] <= zext_ln220_fu_840_p1[3 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_10_we0_local = 1'b1;
    end else begin
        DATA_y_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_11_we0_local = 1'b1;
    end else begin
        DATA_y_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_12_we0_local = 1'b1;
    end else begin
        DATA_y_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_13_we0_local = 1'b1;
    end else begin
        DATA_y_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_14_we0_local = 1'b1;
    end else begin
        DATA_y_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_15_we0_local = 1'b1;
    end else begin
        DATA_y_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_16_ce0_local = 1'b1;
    end else begin
        DATA_y_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_16_we0_local = 1'b1;
    end else begin
        DATA_y_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_17_ce0_local = 1'b1;
    end else begin
        DATA_y_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_17_we0_local = 1'b1;
    end else begin
        DATA_y_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_18_ce0_local = 1'b1;
    end else begin
        DATA_y_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_18_we0_local = 1'b1;
    end else begin
        DATA_y_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_19_ce0_local = 1'b1;
    end else begin
        DATA_y_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_19_we0_local = 1'b1;
    end else begin
        DATA_y_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_20_ce0_local = 1'b1;
    end else begin
        DATA_y_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_20_we0_local = 1'b1;
    end else begin
        DATA_y_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_21_ce0_local = 1'b1;
    end else begin
        DATA_y_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_21_we0_local = 1'b1;
    end else begin
        DATA_y_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_22_ce0_local = 1'b1;
    end else begin
        DATA_y_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_22_we0_local = 1'b1;
    end else begin
        DATA_y_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_23_ce0_local = 1'b1;
    end else begin
        DATA_y_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_y_23_we0_local = 1'b1;
    end else begin
        DATA_y_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_24_ce0_local = 1'b1;
    end else begin
        DATA_y_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_24_we0_local = 1'b1;
    end else begin
        DATA_y_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_25_ce0_local = 1'b1;
    end else begin
        DATA_y_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_25_we0_local = 1'b1;
    end else begin
        DATA_y_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_26_ce0_local = 1'b1;
    end else begin
        DATA_y_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_26_we0_local = 1'b1;
    end else begin
        DATA_y_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_27_ce0_local = 1'b1;
    end else begin
        DATA_y_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_27_we0_local = 1'b1;
    end else begin
        DATA_y_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_28_ce0_local = 1'b1;
    end else begin
        DATA_y_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_28_we0_local = 1'b1;
    end else begin
        DATA_y_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_29_ce0_local = 1'b1;
    end else begin
        DATA_y_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_29_we0_local = 1'b1;
    end else begin
        DATA_y_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_30_ce0_local = 1'b1;
    end else begin
        DATA_y_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_30_we0_local = 1'b1;
    end else begin
        DATA_y_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_31_ce0_local = 1'b1;
    end else begin
        DATA_y_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_31_we0_local = 1'b1;
    end else begin
        DATA_y_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_8_we0_local = 1'b1;
    end else begin
        DATA_y_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_9_we0_local = 1'b1;
    end else begin
        DATA_y_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_4_fu_188;
    end
end
always @ (*) begin
    if (((tmp_reg_931 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if (((1'b0 == ap_block_pp0_stage10_ignoreCallOp113) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_loady8_fu_608_offset = add_ln232_2_reg_982;
        end else if (((1'b0 == ap_block_pp0_stage7_ignoreCallOp86) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_loady8_fu_608_offset = add_ln232_1_fu_893_p2;
        end else if (((1'b0 == ap_block_pp0_stage4_ignoreCallOp55) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_loady8_fu_608_offset = add_ln232_fu_876_p2;
        end else if (((1'b0 == ap_block_pp0_stage1_ignoreCallOp27) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_loady8_fu_608_offset = add_ln_fu_808_p5;
        end else begin
            grp_loady8_fu_608_offset = 'bx;
        end
    end else begin
        grp_loady8_fu_608_offset = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_10_ce0 = grp_loady8_fu_608_x_10_ce0;
    end else begin
        smem_10_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_10_ce1 = grp_loady8_fu_608_x_10_ce1;
    end else begin
        smem_10_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_11_ce0 = grp_loady8_fu_608_x_11_ce0;
    end else begin
        smem_11_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_11_ce1 = grp_loady8_fu_608_x_11_ce1;
    end else begin
        smem_11_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_12_ce0 = grp_loady8_fu_608_x_12_ce0;
    end else begin
        smem_12_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_12_ce1 = grp_loady8_fu_608_x_12_ce1;
    end else begin
        smem_12_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_13_ce0 = grp_loady8_fu_608_x_13_ce0;
    end else begin
        smem_13_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_13_ce1 = grp_loady8_fu_608_x_13_ce1;
    end else begin
        smem_13_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_14_ce0 = grp_loady8_fu_608_x_14_ce0;
    end else begin
        smem_14_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_14_ce1 = grp_loady8_fu_608_x_14_ce1;
    end else begin
        smem_14_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_15_ce0 = grp_loady8_fu_608_x_15_ce0;
    end else begin
        smem_15_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_15_ce1 = grp_loady8_fu_608_x_15_ce1;
    end else begin
        smem_15_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_16_ce0 = grp_loady8_fu_608_x_16_ce0;
    end else begin
        smem_16_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_16_ce1 = grp_loady8_fu_608_x_16_ce1;
    end else begin
        smem_16_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_17_ce0 = grp_loady8_fu_608_x_17_ce0;
    end else begin
        smem_17_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_17_ce1 = grp_loady8_fu_608_x_17_ce1;
    end else begin
        smem_17_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_18_ce0 = grp_loady8_fu_608_x_18_ce0;
    end else begin
        smem_18_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_18_ce1 = grp_loady8_fu_608_x_18_ce1;
    end else begin
        smem_18_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_19_ce0 = grp_loady8_fu_608_x_19_ce0;
    end else begin
        smem_19_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_19_ce1 = grp_loady8_fu_608_x_19_ce1;
    end else begin
        smem_19_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce0 = grp_loady8_fu_608_x_1_ce0;
    end else begin
        smem_1_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce1 = grp_loady8_fu_608_x_1_ce1;
    end else begin
        smem_1_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_20_ce0 = grp_loady8_fu_608_x_20_ce0;
    end else begin
        smem_20_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_20_ce1 = grp_loady8_fu_608_x_20_ce1;
    end else begin
        smem_20_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_21_ce0 = grp_loady8_fu_608_x_21_ce0;
    end else begin
        smem_21_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_21_ce1 = grp_loady8_fu_608_x_21_ce1;
    end else begin
        smem_21_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_22_ce0 = grp_loady8_fu_608_x_22_ce0;
    end else begin
        smem_22_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_22_ce1 = grp_loady8_fu_608_x_22_ce1;
    end else begin
        smem_22_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_23_ce0 = grp_loady8_fu_608_x_23_ce0;
    end else begin
        smem_23_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_23_ce1 = grp_loady8_fu_608_x_23_ce1;
    end else begin
        smem_23_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_24_ce0 = grp_loady8_fu_608_x_24_ce0;
    end else begin
        smem_24_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_24_ce1 = grp_loady8_fu_608_x_24_ce1;
    end else begin
        smem_24_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_25_ce0 = grp_loady8_fu_608_x_25_ce0;
    end else begin
        smem_25_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_25_ce1 = grp_loady8_fu_608_x_25_ce1;
    end else begin
        smem_25_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_26_ce0 = grp_loady8_fu_608_x_26_ce0;
    end else begin
        smem_26_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_26_ce1 = grp_loady8_fu_608_x_26_ce1;
    end else begin
        smem_26_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_27_ce0 = grp_loady8_fu_608_x_27_ce0;
    end else begin
        smem_27_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_27_ce1 = grp_loady8_fu_608_x_27_ce1;
    end else begin
        smem_27_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_28_ce0 = grp_loady8_fu_608_x_28_ce0;
    end else begin
        smem_28_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_28_ce1 = grp_loady8_fu_608_x_28_ce1;
    end else begin
        smem_28_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_29_ce0 = grp_loady8_fu_608_x_29_ce0;
    end else begin
        smem_29_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_29_ce1 = grp_loady8_fu_608_x_29_ce1;
    end else begin
        smem_29_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce0 = grp_loady8_fu_608_x_2_ce0;
    end else begin
        smem_2_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce1 = grp_loady8_fu_608_x_2_ce1;
    end else begin
        smem_2_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_30_ce0 = grp_loady8_fu_608_x_30_ce0;
    end else begin
        smem_30_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_30_ce1 = grp_loady8_fu_608_x_30_ce1;
    end else begin
        smem_30_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_31_ce0 = grp_loady8_fu_608_x_31_ce0;
    end else begin
        smem_31_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_31_ce1 = grp_loady8_fu_608_x_31_ce1;
    end else begin
        smem_31_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce0 = grp_loady8_fu_608_x_3_ce0;
    end else begin
        smem_3_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce1 = grp_loady8_fu_608_x_3_ce1;
    end else begin
        smem_3_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce0 = grp_loady8_fu_608_x_4_ce0;
    end else begin
        smem_4_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce1 = grp_loady8_fu_608_x_4_ce1;
    end else begin
        smem_4_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce0 = grp_loady8_fu_608_x_5_ce0;
    end else begin
        smem_5_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce1 = grp_loady8_fu_608_x_5_ce1;
    end else begin
        smem_5_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_ce0 = grp_loady8_fu_608_x_6_ce0;
    end else begin
        smem_6_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_ce1 = grp_loady8_fu_608_x_6_ce1;
    end else begin
        smem_6_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_7_ce0 = grp_loady8_fu_608_x_7_ce0;
    end else begin
        smem_7_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_7_ce1 = grp_loady8_fu_608_x_7_ce1;
    end else begin
        smem_7_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_8_ce0 = grp_loady8_fu_608_x_8_ce0;
    end else begin
        smem_8_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_8_ce1 = grp_loady8_fu_608_x_8_ce1;
    end else begin
        smem_8_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_9_ce0 = grp_loady8_fu_608_x_9_ce0;
    end else begin
        smem_9_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_9_ce1 = grp_loady8_fu_608_x_9_ce1;
    end else begin
        smem_9_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce0 = grp_loady8_fu_608_x_0_ce0;
    end else begin
        smem_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp123) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp122) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp96) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_931 == 1'd0) & (1'b0== ap_block_pp0_stage2_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce1 = grp_loady8_fu_608_x_0_ce1;
    end else begin
        smem_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_y_10_address0 = zext_ln220_reg_940;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_10_d0 = reg_732;
assign DATA_y_10_we0 = DATA_y_10_we0_local;
assign DATA_y_11_address0 = zext_ln220_reg_940;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_11_d0 = reg_740;
assign DATA_y_11_we0 = DATA_y_11_we0_local;
assign DATA_y_12_address0 = zext_ln220_reg_940;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_12_d0 = reg_748;
assign DATA_y_12_we0 = DATA_y_12_we0_local;
assign DATA_y_13_address0 = zext_ln220_reg_940;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_13_d0 = reg_756;
assign DATA_y_13_we0 = DATA_y_13_we0_local;
assign DATA_y_14_address0 = zext_ln220_reg_940;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_14_d0 = reg_764;
assign DATA_y_14_we0 = DATA_y_14_we0_local;
assign DATA_y_15_address0 = zext_ln220_reg_940;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_15_d0 = reg_772;
assign DATA_y_15_we0 = DATA_y_15_we0_local;
assign DATA_y_16_address0 = zext_ln220_reg_940;
assign DATA_y_16_ce0 = DATA_y_16_ce0_local;
assign DATA_y_16_d0 = reg_716;
assign DATA_y_16_we0 = DATA_y_16_we0_local;
assign DATA_y_17_address0 = zext_ln220_reg_940;
assign DATA_y_17_ce0 = DATA_y_17_ce0_local;
assign DATA_y_17_d0 = reg_724;
assign DATA_y_17_we0 = DATA_y_17_we0_local;
assign DATA_y_18_address0 = zext_ln220_reg_940;
assign DATA_y_18_ce0 = DATA_y_18_ce0_local;
assign DATA_y_18_d0 = reg_732;
assign DATA_y_18_we0 = DATA_y_18_we0_local;
assign DATA_y_19_address0 = zext_ln220_reg_940;
assign DATA_y_19_ce0 = DATA_y_19_ce0_local;
assign DATA_y_19_d0 = reg_740;
assign DATA_y_19_we0 = DATA_y_19_we0_local;
assign DATA_y_1_address0 = zext_ln220_fu_840_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_724;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_20_address0 = zext_ln220_reg_940;
assign DATA_y_20_ce0 = DATA_y_20_ce0_local;
assign DATA_y_20_d0 = reg_748;
assign DATA_y_20_we0 = DATA_y_20_we0_local;
assign DATA_y_21_address0 = zext_ln220_reg_940;
assign DATA_y_21_ce0 = DATA_y_21_ce0_local;
assign DATA_y_21_d0 = reg_756;
assign DATA_y_21_we0 = DATA_y_21_we0_local;
assign DATA_y_22_address0 = zext_ln220_reg_940;
assign DATA_y_22_ce0 = DATA_y_22_ce0_local;
assign DATA_y_22_d0 = reg_764;
assign DATA_y_22_we0 = DATA_y_22_we0_local;
assign DATA_y_23_address0 = zext_ln220_reg_940;
assign DATA_y_23_ce0 = DATA_y_23_ce0_local;
assign DATA_y_23_d0 = reg_772;
assign DATA_y_23_we0 = DATA_y_23_we0_local;
assign DATA_y_24_address0 = zext_ln220_reg_940;
assign DATA_y_24_ce0 = DATA_y_24_ce0_local;
assign DATA_y_24_d0 = reg_716;
assign DATA_y_24_we0 = DATA_y_24_we0_local;
assign DATA_y_25_address0 = zext_ln220_reg_940;
assign DATA_y_25_ce0 = DATA_y_25_ce0_local;
assign DATA_y_25_d0 = reg_724;
assign DATA_y_25_we0 = DATA_y_25_we0_local;
assign DATA_y_26_address0 = zext_ln220_reg_940;
assign DATA_y_26_ce0 = DATA_y_26_ce0_local;
assign DATA_y_26_d0 = reg_732;
assign DATA_y_26_we0 = DATA_y_26_we0_local;
assign DATA_y_27_address0 = zext_ln220_reg_940;
assign DATA_y_27_ce0 = DATA_y_27_ce0_local;
assign DATA_y_27_d0 = reg_740;
assign DATA_y_27_we0 = DATA_y_27_we0_local;
assign DATA_y_28_address0 = zext_ln220_reg_940;
assign DATA_y_28_ce0 = DATA_y_28_ce0_local;
assign DATA_y_28_d0 = reg_748;
assign DATA_y_28_we0 = DATA_y_28_we0_local;
assign DATA_y_29_address0 = zext_ln220_reg_940;
assign DATA_y_29_ce0 = DATA_y_29_ce0_local;
assign DATA_y_29_d0 = reg_756;
assign DATA_y_29_we0 = DATA_y_29_we0_local;
assign DATA_y_2_address0 = zext_ln220_fu_840_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_732;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_30_address0 = zext_ln220_reg_940;
assign DATA_y_30_ce0 = DATA_y_30_ce0_local;
assign DATA_y_30_d0 = reg_764;
assign DATA_y_30_we0 = DATA_y_30_we0_local;
assign DATA_y_31_address0 = zext_ln220_reg_940;
assign DATA_y_31_ce0 = DATA_y_31_ce0_local;
assign DATA_y_31_d0 = reg_772;
assign DATA_y_31_we0 = DATA_y_31_we0_local;
assign DATA_y_3_address0 = zext_ln220_fu_840_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_740;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = zext_ln220_fu_840_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_748;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = zext_ln220_fu_840_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_756;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = zext_ln220_fu_840_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_764;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = zext_ln220_fu_840_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_772;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_8_address0 = zext_ln220_reg_940;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_8_d0 = reg_716;
assign DATA_y_8_we0 = DATA_y_8_we0_local;
assign DATA_y_9_address0 = zext_ln220_reg_940;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_9_d0 = reg_724;
assign DATA_y_9_we0 = DATA_y_9_we0_local;
assign DATA_y_address0 = zext_ln220_fu_840_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = reg_716;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln219_fu_821_p2 = (tid_reg_921 + 7'd4);
assign add_ln232_1_fu_893_p2 = (mul_ln232_2_fu_883_p5 + zext_ln114_reg_968);
assign add_ln232_2_fu_909_p2 = (mul_ln232_3_fu_899_p5 + zext_ln114_reg_968);
assign add_ln232_fu_876_p2 = (mul_ln232_1_fu_864_p5 + zext_ln114_fu_852_p1);
assign add_ln_fu_808_p5 = {{{{trunc_ln232_fu_805_p1}, {2'd0}}, {grp_fu_677_p3}}, {hi_1_fu_796_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp123 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_ignoreCallOp113 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_ignoreCallOp122 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_ignoreCallOp55 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_ignoreCallOp64 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_ignoreCallOp65 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_ignoreCallOp86 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_ignoreCallOp95 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_ignoreCallOp96 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_677_p3 = tid_reg_921[32'd2];
assign grp_loady8_fu_608_ap_start = grp_loady8_fu_608_ap_start_reg;
assign hi_1_fu_796_p4 = {{tid_reg_921[5:3]}};
assign lshr_ln_fu_831_p4 = {{tid_reg_921[5:2]}};
assign mul_ln232_1_fu_864_p5 = {{{{tmp_s_fu_855_p4}, {3'd4}}, {tmp_s_fu_855_p4}}, {2'd2}};
assign mul_ln232_2_fu_883_p5 = {{{{tmp_28_reg_974}, {4'd8}}, {tmp_28_reg_974}}, {3'd4}};
assign mul_ln232_3_fu_899_p5 = {{{{tmp_28_reg_974}, {4'd12}}, {tmp_28_reg_974}}, {3'd6}};
assign smem_10_address0 = grp_loady8_fu_608_x_10_address0;
assign smem_10_address1 = grp_loady8_fu_608_x_10_address1;
assign smem_11_address0 = grp_loady8_fu_608_x_11_address0;
assign smem_11_address1 = grp_loady8_fu_608_x_11_address1;
assign smem_12_address0 = grp_loady8_fu_608_x_12_address0;
assign smem_12_address1 = grp_loady8_fu_608_x_12_address1;
assign smem_13_address0 = grp_loady8_fu_608_x_13_address0;
assign smem_13_address1 = grp_loady8_fu_608_x_13_address1;
assign smem_14_address0 = grp_loady8_fu_608_x_14_address0;
assign smem_14_address1 = grp_loady8_fu_608_x_14_address1;
assign smem_15_address0 = grp_loady8_fu_608_x_15_address0;
assign smem_15_address1 = grp_loady8_fu_608_x_15_address1;
assign smem_16_address0 = grp_loady8_fu_608_x_16_address0;
assign smem_16_address1 = grp_loady8_fu_608_x_16_address1;
assign smem_17_address0 = grp_loady8_fu_608_x_17_address0;
assign smem_17_address1 = grp_loady8_fu_608_x_17_address1;
assign smem_18_address0 = grp_loady8_fu_608_x_18_address0;
assign smem_18_address1 = grp_loady8_fu_608_x_18_address1;
assign smem_19_address0 = grp_loady8_fu_608_x_19_address0;
assign smem_19_address1 = grp_loady8_fu_608_x_19_address1;
assign smem_1_address0 = grp_loady8_fu_608_x_1_address0;
assign smem_1_address1 = grp_loady8_fu_608_x_1_address1;
assign smem_20_address0 = grp_loady8_fu_608_x_20_address0;
assign smem_20_address1 = grp_loady8_fu_608_x_20_address1;
assign smem_21_address0 = grp_loady8_fu_608_x_21_address0;
assign smem_21_address1 = grp_loady8_fu_608_x_21_address1;
assign smem_22_address0 = grp_loady8_fu_608_x_22_address0;
assign smem_22_address1 = grp_loady8_fu_608_x_22_address1;
assign smem_23_address0 = grp_loady8_fu_608_x_23_address0;
assign smem_23_address1 = grp_loady8_fu_608_x_23_address1;
assign smem_24_address0 = grp_loady8_fu_608_x_24_address0;
assign smem_24_address1 = grp_loady8_fu_608_x_24_address1;
assign smem_25_address0 = grp_loady8_fu_608_x_25_address0;
assign smem_25_address1 = grp_loady8_fu_608_x_25_address1;
assign smem_26_address0 = grp_loady8_fu_608_x_26_address0;
assign smem_26_address1 = grp_loady8_fu_608_x_26_address1;
assign smem_27_address0 = grp_loady8_fu_608_x_27_address0;
assign smem_27_address1 = grp_loady8_fu_608_x_27_address1;
assign smem_28_address0 = grp_loady8_fu_608_x_28_address0;
assign smem_28_address1 = grp_loady8_fu_608_x_28_address1;
assign smem_29_address0 = grp_loady8_fu_608_x_29_address0;
assign smem_29_address1 = grp_loady8_fu_608_x_29_address1;
assign smem_2_address0 = grp_loady8_fu_608_x_2_address0;
assign smem_2_address1 = grp_loady8_fu_608_x_2_address1;
assign smem_30_address0 = grp_loady8_fu_608_x_30_address0;
assign smem_30_address1 = grp_loady8_fu_608_x_30_address1;
assign smem_31_address0 = grp_loady8_fu_608_x_31_address0;
assign smem_31_address1 = grp_loady8_fu_608_x_31_address1;
assign smem_3_address0 = grp_loady8_fu_608_x_3_address0;
assign smem_3_address1 = grp_loady8_fu_608_x_3_address1;
assign smem_4_address0 = grp_loady8_fu_608_x_4_address0;
assign smem_4_address1 = grp_loady8_fu_608_x_4_address1;
assign smem_5_address0 = grp_loady8_fu_608_x_5_address0;
assign smem_5_address1 = grp_loady8_fu_608_x_5_address1;
assign smem_6_address0 = grp_loady8_fu_608_x_6_address0;
assign smem_6_address1 = grp_loady8_fu_608_x_6_address1;
assign smem_7_address0 = grp_loady8_fu_608_x_7_address0;
assign smem_7_address1 = grp_loady8_fu_608_x_7_address1;
assign smem_8_address0 = grp_loady8_fu_608_x_8_address0;
assign smem_8_address1 = grp_loady8_fu_608_x_8_address1;
assign smem_9_address0 = grp_loady8_fu_608_x_9_address0;
assign smem_9_address1 = grp_loady8_fu_608_x_9_address1;
assign smem_address0 = grp_loady8_fu_608_x_0_address0;
assign smem_address1 = grp_loady8_fu_608_x_0_address1;
assign tmp_fu_788_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_855_p4 = {{tid_reg_921[2:1]}};
assign trunc_ln232_fu_805_p1 = tid_reg_921[2:0];
assign zext_ln114_fu_852_p1 = hi_1_reg_935;
assign zext_ln220_fu_840_p1 = lshr_ln_fu_831_p4;
always @ (posedge ap_clk) begin
    zext_ln220_reg_940[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln114_reg_968[8:3] <= 6'b000000;
end
endmodule 