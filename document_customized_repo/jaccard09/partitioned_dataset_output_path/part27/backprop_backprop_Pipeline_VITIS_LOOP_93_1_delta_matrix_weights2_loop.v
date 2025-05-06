
module backprop_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations1_address0,activations1_ce0,activations1_q0,activations1_1_address0,activations1_1_ce0,activations1_1_q0,activations1_2_address0,activations1_2_ce0,activations1_2_q0,activations1_3_address0,activations1_3_ce0,activations1_3_q0,activations1_4_address0,activations1_4_ce0,activations1_4_q0,activations1_5_address0,activations1_5_ce0,activations1_5_q0,activations1_6_address0,activations1_6_ce0,activations1_6_q0,activations1_7_address0,activations1_7_ce0,activations1_7_q0,activations1_8_address0,activations1_8_ce0,activations1_8_q0,activations1_9_address0,activations1_9_ce0,activations1_9_q0,activations1_10_address0,activations1_10_ce0,activations1_10_q0,activations1_11_address0,activations1_11_ce0,activations1_11_q0,activations1_12_address0,activations1_12_ce0,activations1_12_q0,activations1_13_address0,activations1_13_ce0,activations1_13_q0,activations1_14_address0,activations1_14_ce0,activations1_14_q0,activations1_15_address0,activations1_15_ce0,activations1_15_q0,activations1_16_address0,activations1_16_ce0,activations1_16_q0,activations1_17_address0,activations1_17_ce0,activations1_17_q0,activations1_18_address0,activations1_18_ce0,activations1_18_q0,activations1_19_address0,activations1_19_ce0,activations1_19_q0,activations1_20_address0,activations1_20_ce0,activations1_20_q0,activations1_21_address0,activations1_21_ce0,activations1_21_q0,activations1_22_address0,activations1_22_ce0,activations1_22_q0,activations1_23_address0,activations1_23_ce0,activations1_23_q0,activations1_24_address0,activations1_24_ce0,activations1_24_q0,activations1_25_address0,activations1_25_ce0,activations1_25_q0,activations1_26_address0,activations1_26_ce0,activations1_26_q0,activations1_27_address0,activations1_27_ce0,activations1_27_q0,activations1_28_address0,activations1_28_ce0,activations1_28_q0,activations1_29_address0,activations1_29_ce0,activations1_29_q0,activations1_30_address0,activations1_30_ce0,activations1_30_q0,activations1_31_address0,activations1_31_ce0,activations1_31_q0,delta_weights2_31_address0,delta_weights2_31_ce0,delta_weights2_31_we0,delta_weights2_31_d0,delta_weights2_30_address0,delta_weights2_30_ce0,delta_weights2_30_we0,delta_weights2_30_d0,delta_weights2_29_address0,delta_weights2_29_ce0,delta_weights2_29_we0,delta_weights2_29_d0,delta_weights2_28_address0,delta_weights2_28_ce0,delta_weights2_28_we0,delta_weights2_28_d0,delta_weights2_27_address0,delta_weights2_27_ce0,delta_weights2_27_we0,delta_weights2_27_d0,delta_weights2_26_address0,delta_weights2_26_ce0,delta_weights2_26_we0,delta_weights2_26_d0,delta_weights2_25_address0,delta_weights2_25_ce0,delta_weights2_25_we0,delta_weights2_25_d0,delta_weights2_24_address0,delta_weights2_24_ce0,delta_weights2_24_we0,delta_weights2_24_d0,delta_weights2_23_address0,delta_weights2_23_ce0,delta_weights2_23_we0,delta_weights2_23_d0,delta_weights2_22_address0,delta_weights2_22_ce0,delta_weights2_22_we0,delta_weights2_22_d0,delta_weights2_21_address0,delta_weights2_21_ce0,delta_weights2_21_we0,delta_weights2_21_d0,delta_weights2_20_address0,delta_weights2_20_ce0,delta_weights2_20_we0,delta_weights2_20_d0,delta_weights2_19_address0,delta_weights2_19_ce0,delta_weights2_19_we0,delta_weights2_19_d0,delta_weights2_18_address0,delta_weights2_18_ce0,delta_weights2_18_we0,delta_weights2_18_d0,delta_weights2_17_address0,delta_weights2_17_ce0,delta_weights2_17_we0,delta_weights2_17_d0,delta_weights2_16_address0,delta_weights2_16_ce0,delta_weights2_16_we0,delta_weights2_16_d0,delta_weights2_15_address0,delta_weights2_15_ce0,delta_weights2_15_we0,delta_weights2_15_d0,delta_weights2_14_address0,delta_weights2_14_ce0,delta_weights2_14_we0,delta_weights2_14_d0,delta_weights2_13_address0,delta_weights2_13_ce0,delta_weights2_13_we0,delta_weights2_13_d0,delta_weights2_12_address0,delta_weights2_12_ce0,delta_weights2_12_we0,delta_weights2_12_d0,delta_weights2_11_address0,delta_weights2_11_ce0,delta_weights2_11_we0,delta_weights2_11_d0,delta_weights2_10_address0,delta_weights2_10_ce0,delta_weights2_10_we0,delta_weights2_10_d0,delta_weights2_9_address0,delta_weights2_9_ce0,delta_weights2_9_we0,delta_weights2_9_d0,delta_weights2_8_address0,delta_weights2_8_ce0,delta_weights2_8_we0,delta_weights2_8_d0,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_address0,delta_weights2_ce0,delta_weights2_we0,delta_weights2_d0,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_q0,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_q0,oracle_activations2_2_address0,oracle_activations2_2_ce0,oracle_activations2_2_q0,oracle_activations2_3_address0,oracle_activations2_3_ce0,oracle_activations2_3_q0,oracle_activations2_4_address0,oracle_activations2_4_ce0,oracle_activations2_4_q0,oracle_activations2_5_address0,oracle_activations2_5_ce0,oracle_activations2_5_q0,oracle_activations2_6_address0,oracle_activations2_6_ce0,oracle_activations2_6_q0,oracle_activations2_7_address0,oracle_activations2_7_ce0,oracle_activations2_7_q0,oracle_activations2_8_address0,oracle_activations2_8_ce0,oracle_activations2_8_q0,oracle_activations2_9_address0,oracle_activations2_9_ce0,oracle_activations2_9_q0,oracle_activations2_10_address0,oracle_activations2_10_ce0,oracle_activations2_10_q0,oracle_activations2_11_address0,oracle_activations2_11_ce0,oracle_activations2_11_q0,oracle_activations2_12_address0,oracle_activations2_12_ce0,oracle_activations2_12_q0,oracle_activations2_13_address0,oracle_activations2_13_ce0,oracle_activations2_13_q0,oracle_activations2_14_address0,oracle_activations2_14_ce0,oracle_activations2_14_q0,oracle_activations2_15_address0,oracle_activations2_15_ce0,oracle_activations2_15_q0,oracle_activations2_16_address0,oracle_activations2_16_ce0,oracle_activations2_16_q0,oracle_activations2_17_address0,oracle_activations2_17_ce0,oracle_activations2_17_q0,oracle_activations2_18_address0,oracle_activations2_18_ce0,oracle_activations2_18_q0,oracle_activations2_19_address0,oracle_activations2_19_ce0,oracle_activations2_19_q0,oracle_activations2_20_address0,oracle_activations2_20_ce0,oracle_activations2_20_q0,oracle_activations2_21_address0,oracle_activations2_21_ce0,oracle_activations2_21_q0,oracle_activations2_22_address0,oracle_activations2_22_ce0,oracle_activations2_22_q0,oracle_activations2_23_address0,oracle_activations2_23_ce0,oracle_activations2_23_q0,oracle_activations2_24_address0,oracle_activations2_24_ce0,oracle_activations2_24_q0,oracle_activations2_25_address0,oracle_activations2_25_ce0,oracle_activations2_25_q0,oracle_activations2_26_address0,oracle_activations2_26_ce0,oracle_activations2_26_q0,oracle_activations2_27_address0,oracle_activations2_27_ce0,oracle_activations2_27_q0,oracle_activations2_28_address0,oracle_activations2_28_ce0,oracle_activations2_28_q0,oracle_activations2_29_address0,oracle_activations2_29_ce0,oracle_activations2_29_q0,oracle_activations2_30_address0,oracle_activations2_30_ce0,oracle_activations2_30_q0,oracle_activations2_31_address0,oracle_activations2_31_ce0,oracle_activations2_31_q0,grp_fu_21302_p_din0,grp_fu_21302_p_din1,grp_fu_21302_p_dout0,grp_fu_21302_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] activations1_address0;
output   activations1_ce0;
input  [63:0] activations1_q0;
output  [0:0] activations1_1_address0;
output   activations1_1_ce0;
input  [63:0] activations1_1_q0;
output  [0:0] activations1_2_address0;
output   activations1_2_ce0;
input  [63:0] activations1_2_q0;
output  [0:0] activations1_3_address0;
output   activations1_3_ce0;
input  [63:0] activations1_3_q0;
output  [0:0] activations1_4_address0;
output   activations1_4_ce0;
input  [63:0] activations1_4_q0;
output  [0:0] activations1_5_address0;
output   activations1_5_ce0;
input  [63:0] activations1_5_q0;
output  [0:0] activations1_6_address0;
output   activations1_6_ce0;
input  [63:0] activations1_6_q0;
output  [0:0] activations1_7_address0;
output   activations1_7_ce0;
input  [63:0] activations1_7_q0;
output  [0:0] activations1_8_address0;
output   activations1_8_ce0;
input  [63:0] activations1_8_q0;
output  [0:0] activations1_9_address0;
output   activations1_9_ce0;
input  [63:0] activations1_9_q0;
output  [0:0] activations1_10_address0;
output   activations1_10_ce0;
input  [63:0] activations1_10_q0;
output  [0:0] activations1_11_address0;
output   activations1_11_ce0;
input  [63:0] activations1_11_q0;
output  [0:0] activations1_12_address0;
output   activations1_12_ce0;
input  [63:0] activations1_12_q0;
output  [0:0] activations1_13_address0;
output   activations1_13_ce0;
input  [63:0] activations1_13_q0;
output  [0:0] activations1_14_address0;
output   activations1_14_ce0;
input  [63:0] activations1_14_q0;
output  [0:0] activations1_15_address0;
output   activations1_15_ce0;
input  [63:0] activations1_15_q0;
output  [0:0] activations1_16_address0;
output   activations1_16_ce0;
input  [63:0] activations1_16_q0;
output  [0:0] activations1_17_address0;
output   activations1_17_ce0;
input  [63:0] activations1_17_q0;
output  [0:0] activations1_18_address0;
output   activations1_18_ce0;
input  [63:0] activations1_18_q0;
output  [0:0] activations1_19_address0;
output   activations1_19_ce0;
input  [63:0] activations1_19_q0;
output  [0:0] activations1_20_address0;
output   activations1_20_ce0;
input  [63:0] activations1_20_q0;
output  [0:0] activations1_21_address0;
output   activations1_21_ce0;
input  [63:0] activations1_21_q0;
output  [0:0] activations1_22_address0;
output   activations1_22_ce0;
input  [63:0] activations1_22_q0;
output  [0:0] activations1_23_address0;
output   activations1_23_ce0;
input  [63:0] activations1_23_q0;
output  [0:0] activations1_24_address0;
output   activations1_24_ce0;
input  [63:0] activations1_24_q0;
output  [0:0] activations1_25_address0;
output   activations1_25_ce0;
input  [63:0] activations1_25_q0;
output  [0:0] activations1_26_address0;
output   activations1_26_ce0;
input  [63:0] activations1_26_q0;
output  [0:0] activations1_27_address0;
output   activations1_27_ce0;
input  [63:0] activations1_27_q0;
output  [0:0] activations1_28_address0;
output   activations1_28_ce0;
input  [63:0] activations1_28_q0;
output  [0:0] activations1_29_address0;
output   activations1_29_ce0;
input  [63:0] activations1_29_q0;
output  [0:0] activations1_30_address0;
output   activations1_30_ce0;
input  [63:0] activations1_30_q0;
output  [0:0] activations1_31_address0;
output   activations1_31_ce0;
input  [63:0] activations1_31_q0;
output  [6:0] delta_weights2_31_address0;
output   delta_weights2_31_ce0;
output   delta_weights2_31_we0;
output  [63:0] delta_weights2_31_d0;
output  [6:0] delta_weights2_30_address0;
output   delta_weights2_30_ce0;
output   delta_weights2_30_we0;
output  [63:0] delta_weights2_30_d0;
output  [6:0] delta_weights2_29_address0;
output   delta_weights2_29_ce0;
output   delta_weights2_29_we0;
output  [63:0] delta_weights2_29_d0;
output  [6:0] delta_weights2_28_address0;
output   delta_weights2_28_ce0;
output   delta_weights2_28_we0;
output  [63:0] delta_weights2_28_d0;
output  [6:0] delta_weights2_27_address0;
output   delta_weights2_27_ce0;
output   delta_weights2_27_we0;
output  [63:0] delta_weights2_27_d0;
output  [6:0] delta_weights2_26_address0;
output   delta_weights2_26_ce0;
output   delta_weights2_26_we0;
output  [63:0] delta_weights2_26_d0;
output  [6:0] delta_weights2_25_address0;
output   delta_weights2_25_ce0;
output   delta_weights2_25_we0;
output  [63:0] delta_weights2_25_d0;
output  [6:0] delta_weights2_24_address0;
output   delta_weights2_24_ce0;
output   delta_weights2_24_we0;
output  [63:0] delta_weights2_24_d0;
output  [6:0] delta_weights2_23_address0;
output   delta_weights2_23_ce0;
output   delta_weights2_23_we0;
output  [63:0] delta_weights2_23_d0;
output  [6:0] delta_weights2_22_address0;
output   delta_weights2_22_ce0;
output   delta_weights2_22_we0;
output  [63:0] delta_weights2_22_d0;
output  [6:0] delta_weights2_21_address0;
output   delta_weights2_21_ce0;
output   delta_weights2_21_we0;
output  [63:0] delta_weights2_21_d0;
output  [6:0] delta_weights2_20_address0;
output   delta_weights2_20_ce0;
output   delta_weights2_20_we0;
output  [63:0] delta_weights2_20_d0;
output  [6:0] delta_weights2_19_address0;
output   delta_weights2_19_ce0;
output   delta_weights2_19_we0;
output  [63:0] delta_weights2_19_d0;
output  [6:0] delta_weights2_18_address0;
output   delta_weights2_18_ce0;
output   delta_weights2_18_we0;
output  [63:0] delta_weights2_18_d0;
output  [6:0] delta_weights2_17_address0;
output   delta_weights2_17_ce0;
output   delta_weights2_17_we0;
output  [63:0] delta_weights2_17_d0;
output  [6:0] delta_weights2_16_address0;
output   delta_weights2_16_ce0;
output   delta_weights2_16_we0;
output  [63:0] delta_weights2_16_d0;
output  [6:0] delta_weights2_15_address0;
output   delta_weights2_15_ce0;
output   delta_weights2_15_we0;
output  [63:0] delta_weights2_15_d0;
output  [6:0] delta_weights2_14_address0;
output   delta_weights2_14_ce0;
output   delta_weights2_14_we0;
output  [63:0] delta_weights2_14_d0;
output  [6:0] delta_weights2_13_address0;
output   delta_weights2_13_ce0;
output   delta_weights2_13_we0;
output  [63:0] delta_weights2_13_d0;
output  [6:0] delta_weights2_12_address0;
output   delta_weights2_12_ce0;
output   delta_weights2_12_we0;
output  [63:0] delta_weights2_12_d0;
output  [6:0] delta_weights2_11_address0;
output   delta_weights2_11_ce0;
output   delta_weights2_11_we0;
output  [63:0] delta_weights2_11_d0;
output  [6:0] delta_weights2_10_address0;
output   delta_weights2_10_ce0;
output   delta_weights2_10_we0;
output  [63:0] delta_weights2_10_d0;
output  [6:0] delta_weights2_9_address0;
output   delta_weights2_9_ce0;
output   delta_weights2_9_we0;
output  [63:0] delta_weights2_9_d0;
output  [6:0] delta_weights2_8_address0;
output   delta_weights2_8_ce0;
output   delta_weights2_8_we0;
output  [63:0] delta_weights2_8_d0;
output  [6:0] delta_weights2_7_address0;
output   delta_weights2_7_ce0;
output   delta_weights2_7_we0;
output  [63:0] delta_weights2_7_d0;
output  [6:0] delta_weights2_6_address0;
output   delta_weights2_6_ce0;
output   delta_weights2_6_we0;
output  [63:0] delta_weights2_6_d0;
output  [6:0] delta_weights2_5_address0;
output   delta_weights2_5_ce0;
output   delta_weights2_5_we0;
output  [63:0] delta_weights2_5_d0;
output  [6:0] delta_weights2_4_address0;
output   delta_weights2_4_ce0;
output   delta_weights2_4_we0;
output  [63:0] delta_weights2_4_d0;
output  [6:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [6:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [6:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [6:0] delta_weights2_address0;
output   delta_weights2_ce0;
output   delta_weights2_we0;
output  [63:0] delta_weights2_d0;
output  [0:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
input  [63:0] oracle_activations2_q0;
output  [0:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
input  [63:0] oracle_activations2_1_q0;
output  [0:0] oracle_activations2_2_address0;
output   oracle_activations2_2_ce0;
input  [63:0] oracle_activations2_2_q0;
output  [0:0] oracle_activations2_3_address0;
output   oracle_activations2_3_ce0;
input  [63:0] oracle_activations2_3_q0;
output  [0:0] oracle_activations2_4_address0;
output   oracle_activations2_4_ce0;
input  [63:0] oracle_activations2_4_q0;
output  [0:0] oracle_activations2_5_address0;
output   oracle_activations2_5_ce0;
input  [63:0] oracle_activations2_5_q0;
output  [0:0] oracle_activations2_6_address0;
output   oracle_activations2_6_ce0;
input  [63:0] oracle_activations2_6_q0;
output  [0:0] oracle_activations2_7_address0;
output   oracle_activations2_7_ce0;
input  [63:0] oracle_activations2_7_q0;
output  [0:0] oracle_activations2_8_address0;
output   oracle_activations2_8_ce0;
input  [63:0] oracle_activations2_8_q0;
output  [0:0] oracle_activations2_9_address0;
output   oracle_activations2_9_ce0;
input  [63:0] oracle_activations2_9_q0;
output  [0:0] oracle_activations2_10_address0;
output   oracle_activations2_10_ce0;
input  [63:0] oracle_activations2_10_q0;
output  [0:0] oracle_activations2_11_address0;
output   oracle_activations2_11_ce0;
input  [63:0] oracle_activations2_11_q0;
output  [0:0] oracle_activations2_12_address0;
output   oracle_activations2_12_ce0;
input  [63:0] oracle_activations2_12_q0;
output  [0:0] oracle_activations2_13_address0;
output   oracle_activations2_13_ce0;
input  [63:0] oracle_activations2_13_q0;
output  [0:0] oracle_activations2_14_address0;
output   oracle_activations2_14_ce0;
input  [63:0] oracle_activations2_14_q0;
output  [0:0] oracle_activations2_15_address0;
output   oracle_activations2_15_ce0;
input  [63:0] oracle_activations2_15_q0;
output  [0:0] oracle_activations2_16_address0;
output   oracle_activations2_16_ce0;
input  [63:0] oracle_activations2_16_q0;
output  [0:0] oracle_activations2_17_address0;
output   oracle_activations2_17_ce0;
input  [63:0] oracle_activations2_17_q0;
output  [0:0] oracle_activations2_18_address0;
output   oracle_activations2_18_ce0;
input  [63:0] oracle_activations2_18_q0;
output  [0:0] oracle_activations2_19_address0;
output   oracle_activations2_19_ce0;
input  [63:0] oracle_activations2_19_q0;
output  [0:0] oracle_activations2_20_address0;
output   oracle_activations2_20_ce0;
input  [63:0] oracle_activations2_20_q0;
output  [0:0] oracle_activations2_21_address0;
output   oracle_activations2_21_ce0;
input  [63:0] oracle_activations2_21_q0;
output  [0:0] oracle_activations2_22_address0;
output   oracle_activations2_22_ce0;
input  [63:0] oracle_activations2_22_q0;
output  [0:0] oracle_activations2_23_address0;
output   oracle_activations2_23_ce0;
input  [63:0] oracle_activations2_23_q0;
output  [0:0] oracle_activations2_24_address0;
output   oracle_activations2_24_ce0;
input  [63:0] oracle_activations2_24_q0;
output  [0:0] oracle_activations2_25_address0;
output   oracle_activations2_25_ce0;
input  [63:0] oracle_activations2_25_q0;
output  [0:0] oracle_activations2_26_address0;
output   oracle_activations2_26_ce0;
input  [63:0] oracle_activations2_26_q0;
output  [0:0] oracle_activations2_27_address0;
output   oracle_activations2_27_ce0;
input  [63:0] oracle_activations2_27_q0;
output  [0:0] oracle_activations2_28_address0;
output   oracle_activations2_28_ce0;
input  [63:0] oracle_activations2_28_q0;
output  [0:0] oracle_activations2_29_address0;
output   oracle_activations2_29_ce0;
input  [63:0] oracle_activations2_29_q0;
output  [0:0] oracle_activations2_30_address0;
output   oracle_activations2_30_ce0;
input  [63:0] oracle_activations2_30_q0;
output  [0:0] oracle_activations2_31_address0;
output   oracle_activations2_31_ce0;
input  [63:0] oracle_activations2_31_q0;
output  [63:0] grp_fu_21302_p_din0;
output  [63:0] grp_fu_21302_p_din1;
input  [63:0] grp_fu_21302_p_dout0;
output   grp_fu_21302_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln93_fu_1582_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] trunc_ln93_fu_1633_p1;
reg   [4:0] trunc_ln93_reg_2093;
wire   [4:0] trunc_ln94_fu_1687_p1;
reg   [4:0] trunc_ln94_reg_2258;
reg   [4:0] trunc_ln94_reg_2258_pp0_iter2_reg;
reg   [4:0] trunc_ln94_reg_2258_pp0_iter3_reg;
reg   [4:0] trunc_ln94_reg_2258_pp0_iter4_reg;
reg   [4:0] trunc_ln94_reg_2258_pp0_iter5_reg;
reg   [4:0] trunc_ln94_reg_2258_pp0_iter6_reg;
reg   [4:0] trunc_ln94_reg_2258_pp0_iter7_reg;
reg   [4:0] trunc_ln94_reg_2258_pp0_iter8_reg;
wire   [6:0] add_ln95_fu_1741_p2;
reg   [6:0] add_ln95_reg_2423;
reg   [6:0] add_ln95_reg_2423_pp0_iter2_reg;
reg   [6:0] add_ln95_reg_2423_pp0_iter3_reg;
reg   [6:0] add_ln95_reg_2423_pp0_iter4_reg;
reg   [6:0] add_ln95_reg_2423_pp0_iter5_reg;
reg   [6:0] add_ln95_reg_2423_pp0_iter6_reg;
reg   [6:0] add_ln95_reg_2423_pp0_iter7_reg;
reg   [6:0] add_ln95_reg_2423_pp0_iter8_reg;
reg   [6:0] add_ln95_reg_2423_pp0_iter9_reg;
wire   [63:0] tmp_s_fu_1763_p67;
reg   [63:0] tmp_s_reg_2428;
wire   [63:0] tmp_32_fu_1898_p67;
reg   [63:0] tmp_32_reg_2433;
reg   [63:0] mul_i4_reg_2438;
wire   [63:0] zext_ln92_fu_1645_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln92_1_fu_1705_p1;
wire   [63:0] zext_ln95_fu_2033_p1;
reg   [6:0] j_fu_300;
wire   [6:0] add_ln94_fu_1747_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_304;
wire   [6:0] select_ln93_fu_1625_p3;
reg   [12:0] indvar_flatten6_fu_308;
wire   [12:0] add_ln93_fu_1588_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    activations1_ce0_local;
reg    activations1_1_ce0_local;
reg    activations1_2_ce0_local;
reg    activations1_3_ce0_local;
reg    activations1_4_ce0_local;
reg    activations1_5_ce0_local;
reg    activations1_6_ce0_local;
reg    activations1_7_ce0_local;
reg    activations1_8_ce0_local;
reg    activations1_9_ce0_local;
reg    activations1_10_ce0_local;
reg    activations1_11_ce0_local;
reg    activations1_12_ce0_local;
reg    activations1_13_ce0_local;
reg    activations1_14_ce0_local;
reg    activations1_15_ce0_local;
reg    activations1_16_ce0_local;
reg    activations1_17_ce0_local;
reg    activations1_18_ce0_local;
reg    activations1_19_ce0_local;
reg    activations1_20_ce0_local;
reg    activations1_21_ce0_local;
reg    activations1_22_ce0_local;
reg    activations1_23_ce0_local;
reg    activations1_24_ce0_local;
reg    activations1_25_ce0_local;
reg    activations1_26_ce0_local;
reg    activations1_27_ce0_local;
reg    activations1_28_ce0_local;
reg    activations1_29_ce0_local;
reg    activations1_30_ce0_local;
reg    activations1_31_ce0_local;
reg    oracle_activations2_ce0_local;
reg    oracle_activations2_1_ce0_local;
reg    oracle_activations2_2_ce0_local;
reg    oracle_activations2_3_ce0_local;
reg    oracle_activations2_4_ce0_local;
reg    oracle_activations2_5_ce0_local;
reg    oracle_activations2_6_ce0_local;
reg    oracle_activations2_7_ce0_local;
reg    oracle_activations2_8_ce0_local;
reg    oracle_activations2_9_ce0_local;
reg    oracle_activations2_10_ce0_local;
reg    oracle_activations2_11_ce0_local;
reg    oracle_activations2_12_ce0_local;
reg    oracle_activations2_13_ce0_local;
reg    oracle_activations2_14_ce0_local;
reg    oracle_activations2_15_ce0_local;
reg    oracle_activations2_16_ce0_local;
reg    oracle_activations2_17_ce0_local;
reg    oracle_activations2_18_ce0_local;
reg    oracle_activations2_19_ce0_local;
reg    oracle_activations2_20_ce0_local;
reg    oracle_activations2_21_ce0_local;
reg    oracle_activations2_22_ce0_local;
reg    oracle_activations2_23_ce0_local;
reg    oracle_activations2_24_ce0_local;
reg    oracle_activations2_25_ce0_local;
reg    oracle_activations2_26_ce0_local;
reg    oracle_activations2_27_ce0_local;
reg    oracle_activations2_28_ce0_local;
reg    oracle_activations2_29_ce0_local;
reg    oracle_activations2_30_ce0_local;
reg    oracle_activations2_31_ce0_local;
reg    delta_weights2_30_we0_local;
reg    ap_predicate_pred1130_state11;
reg    delta_weights2_30_ce0_local;
reg    delta_weights2_29_we0_local;
reg    ap_predicate_pred1139_state11;
reg    delta_weights2_29_ce0_local;
reg    delta_weights2_28_we0_local;
reg    ap_predicate_pred1148_state11;
reg    delta_weights2_28_ce0_local;
reg    delta_weights2_27_we0_local;
reg    ap_predicate_pred1157_state11;
reg    delta_weights2_27_ce0_local;
reg    delta_weights2_26_we0_local;
reg    ap_predicate_pred1166_state11;
reg    delta_weights2_26_ce0_local;
reg    delta_weights2_25_we0_local;
reg    ap_predicate_pred1175_state11;
reg    delta_weights2_25_ce0_local;
reg    delta_weights2_24_we0_local;
reg    ap_predicate_pred1184_state11;
reg    delta_weights2_24_ce0_local;
reg    delta_weights2_23_we0_local;
reg    ap_predicate_pred1193_state11;
reg    delta_weights2_23_ce0_local;
reg    delta_weights2_22_we0_local;
reg    ap_predicate_pred1202_state11;
reg    delta_weights2_22_ce0_local;
reg    delta_weights2_21_we0_local;
reg    ap_predicate_pred1211_state11;
reg    delta_weights2_21_ce0_local;
reg    delta_weights2_20_we0_local;
reg    ap_predicate_pred1220_state11;
reg    delta_weights2_20_ce0_local;
reg    delta_weights2_19_we0_local;
reg    ap_predicate_pred1229_state11;
reg    delta_weights2_19_ce0_local;
reg    delta_weights2_18_we0_local;
reg    ap_predicate_pred1238_state11;
reg    delta_weights2_18_ce0_local;
reg    delta_weights2_17_we0_local;
reg    ap_predicate_pred1247_state11;
reg    delta_weights2_17_ce0_local;
reg    delta_weights2_16_we0_local;
reg    ap_predicate_pred1256_state11;
reg    delta_weights2_16_ce0_local;
reg    delta_weights2_15_we0_local;
reg    ap_predicate_pred1265_state11;
reg    delta_weights2_15_ce0_local;
reg    delta_weights2_14_we0_local;
reg    ap_predicate_pred1274_state11;
reg    delta_weights2_14_ce0_local;
reg    delta_weights2_13_we0_local;
reg    ap_predicate_pred1283_state11;
reg    delta_weights2_13_ce0_local;
reg    delta_weights2_12_we0_local;
reg    ap_predicate_pred1292_state11;
reg    delta_weights2_12_ce0_local;
reg    delta_weights2_11_we0_local;
reg    ap_predicate_pred1301_state11;
reg    delta_weights2_11_ce0_local;
reg    delta_weights2_10_we0_local;
reg    ap_predicate_pred1310_state11;
reg    delta_weights2_10_ce0_local;
reg    delta_weights2_9_we0_local;
reg    ap_predicate_pred1319_state11;
reg    delta_weights2_9_ce0_local;
reg    delta_weights2_8_we0_local;
reg    ap_predicate_pred1328_state11;
reg    delta_weights2_8_ce0_local;
reg    delta_weights2_7_we0_local;
reg    ap_predicate_pred1337_state11;
reg    delta_weights2_7_ce0_local;
reg    delta_weights2_6_we0_local;
reg    ap_predicate_pred1346_state11;
reg    delta_weights2_6_ce0_local;
reg    delta_weights2_5_we0_local;
reg    ap_predicate_pred1355_state11;
reg    delta_weights2_5_ce0_local;
reg    delta_weights2_4_we0_local;
reg    ap_predicate_pred1364_state11;
reg    delta_weights2_4_ce0_local;
reg    delta_weights2_3_we0_local;
reg    ap_predicate_pred1373_state11;
reg    delta_weights2_3_ce0_local;
reg    delta_weights2_2_we0_local;
reg    ap_predicate_pred1382_state11;
reg    delta_weights2_2_ce0_local;
reg    delta_weights2_1_we0_local;
reg    ap_predicate_pred1391_state11;
reg    delta_weights2_1_ce0_local;
reg    delta_weights2_we0_local;
reg    ap_predicate_pred1400_state11;
reg    delta_weights2_ce0_local;
reg    delta_weights2_31_we0_local;
reg    ap_predicate_pred1409_state11;
reg    delta_weights2_31_ce0_local;
wire   [0:0] icmp_ln94_fu_1605_p2;
wire   [6:0] add_ln93_1_fu_1619_p2;
wire   [0:0] tmp_fu_1637_p3;
wire   [6:0] select_ln92_fu_1611_p3;
wire   [1:0] lshr_ln92_1_fu_1691_p4;
wire   [6:0] zext_ln92_2_fu_1701_p1;
wire   [6:0] empty_fu_1681_p2;
wire   [63:0] tmp_s_fu_1763_p65;
wire   [63:0] tmp_32_fu_1898_p65;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_s_fu_1763_p1;
wire   [4:0] tmp_s_fu_1763_p3;
wire   [4:0] tmp_s_fu_1763_p5;
wire   [4:0] tmp_s_fu_1763_p7;
wire   [4:0] tmp_s_fu_1763_p9;
wire   [4:0] tmp_s_fu_1763_p11;
wire   [4:0] tmp_s_fu_1763_p13;
wire   [4:0] tmp_s_fu_1763_p15;
wire   [4:0] tmp_s_fu_1763_p17;
wire   [4:0] tmp_s_fu_1763_p19;
wire   [4:0] tmp_s_fu_1763_p21;
wire   [4:0] tmp_s_fu_1763_p23;
wire   [4:0] tmp_s_fu_1763_p25;
wire   [4:0] tmp_s_fu_1763_p27;
wire   [4:0] tmp_s_fu_1763_p29;
wire   [4:0] tmp_s_fu_1763_p31;
wire  signed [4:0] tmp_s_fu_1763_p33;
wire  signed [4:0] tmp_s_fu_1763_p35;
wire  signed [4:0] tmp_s_fu_1763_p37;
wire  signed [4:0] tmp_s_fu_1763_p39;
wire  signed [4:0] tmp_s_fu_1763_p41;
wire  signed [4:0] tmp_s_fu_1763_p43;
wire  signed [4:0] tmp_s_fu_1763_p45;
wire  signed [4:0] tmp_s_fu_1763_p47;
wire  signed [4:0] tmp_s_fu_1763_p49;
wire  signed [4:0] tmp_s_fu_1763_p51;
wire  signed [4:0] tmp_s_fu_1763_p53;
wire  signed [4:0] tmp_s_fu_1763_p55;
wire  signed [4:0] tmp_s_fu_1763_p57;
wire  signed [4:0] tmp_s_fu_1763_p59;
wire  signed [4:0] tmp_s_fu_1763_p61;
wire  signed [4:0] tmp_s_fu_1763_p63;
wire   [4:0] tmp_32_fu_1898_p1;
wire   [4:0] tmp_32_fu_1898_p3;
wire   [4:0] tmp_32_fu_1898_p5;
wire   [4:0] tmp_32_fu_1898_p7;
wire   [4:0] tmp_32_fu_1898_p9;
wire   [4:0] tmp_32_fu_1898_p11;
wire   [4:0] tmp_32_fu_1898_p13;
wire   [4:0] tmp_32_fu_1898_p15;
wire   [4:0] tmp_32_fu_1898_p17;
wire   [4:0] tmp_32_fu_1898_p19;
wire   [4:0] tmp_32_fu_1898_p21;
wire   [4:0] tmp_32_fu_1898_p23;
wire   [4:0] tmp_32_fu_1898_p25;
wire   [4:0] tmp_32_fu_1898_p27;
wire   [4:0] tmp_32_fu_1898_p29;
wire   [4:0] tmp_32_fu_1898_p31;
wire  signed [4:0] tmp_32_fu_1898_p33;
wire  signed [4:0] tmp_32_fu_1898_p35;
wire  signed [4:0] tmp_32_fu_1898_p37;
wire  signed [4:0] tmp_32_fu_1898_p39;
wire  signed [4:0] tmp_32_fu_1898_p41;
wire  signed [4:0] tmp_32_fu_1898_p43;
wire  signed [4:0] tmp_32_fu_1898_p45;
wire  signed [4:0] tmp_32_fu_1898_p47;
wire  signed [4:0] tmp_32_fu_1898_p49;
wire  signed [4:0] tmp_32_fu_1898_p51;
wire  signed [4:0] tmp_32_fu_1898_p53;
wire  signed [4:0] tmp_32_fu_1898_p55;
wire  signed [4:0] tmp_32_fu_1898_p57;
wire  signed [4:0] tmp_32_fu_1898_p59;
wire  signed [4:0] tmp_32_fu_1898_p61;
wire  signed [4:0] tmp_32_fu_1898_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
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
#0 j_fu_300 = 7'd0;
#0 i_fu_304 = 7'd0;
#0 indvar_flatten6_fu_308 = 13'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_x_U1581(.din0(activations1_q0),.din1(activations1_1_q0),.din2(activations1_2_q0),.din3(activations1_3_q0),.din4(activations1_4_q0),.din5(activations1_5_q0),.din6(activations1_6_q0),.din7(activations1_7_q0),.din8(activations1_8_q0),.din9(activations1_9_q0),.din10(activations1_10_q0),.din11(activations1_11_q0),.din12(activations1_12_q0),.din13(activations1_13_q0),.din14(activations1_14_q0),.din15(activations1_15_q0),.din16(activations1_16_q0),.din17(activations1_17_q0),.din18(activations1_18_q0),.din19(activations1_19_q0),.din20(activations1_20_q0),.din21(activations1_21_q0),.din22(activations1_22_q0),.din23(activations1_23_q0),.din24(activations1_24_q0),.din25(activations1_25_q0),.din26(activations1_26_q0),.din27(activations1_27_q0),.din28(activations1_28_q0),.din29(activations1_29_q0),.din30(activations1_30_q0),.din31(activations1_31_q0),.def(tmp_s_fu_1763_p65),.sel(trunc_ln93_reg_2093),.dout(tmp_s_fu_1763_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_x_U1582(.din0(oracle_activations2_q0),.din1(oracle_activations2_1_q0),.din2(oracle_activations2_2_q0),.din3(oracle_activations2_3_q0),.din4(oracle_activations2_4_q0),.din5(oracle_activations2_5_q0),.din6(oracle_activations2_6_q0),.din7(oracle_activations2_7_q0),.din8(oracle_activations2_8_q0),.din9(oracle_activations2_9_q0),.din10(oracle_activations2_10_q0),.din11(oracle_activations2_11_q0),.din12(oracle_activations2_12_q0),.din13(oracle_activations2_13_q0),.din14(oracle_activations2_14_q0),.din15(oracle_activations2_15_q0),.din16(oracle_activations2_16_q0),.din17(oracle_activations2_17_q0),.din18(oracle_activations2_18_q0),.din19(oracle_activations2_19_q0),.din20(oracle_activations2_20_q0),.din21(oracle_activations2_21_q0),.din22(oracle_activations2_22_q0),.din23(oracle_activations2_23_q0),.din24(oracle_activations2_24_q0),.din25(oracle_activations2_25_q0),.din26(oracle_activations2_26_q0),.din27(oracle_activations2_27_q0),.din28(oracle_activations2_28_q0),.din29(oracle_activations2_29_q0),.din30(oracle_activations2_30_q0),.din31(oracle_activations2_31_q0),.def(tmp_32_fu_1898_p65),.sel(trunc_ln94_reg_2258),.dout(tmp_32_fu_1898_p67));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_304 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_304 <= select_ln93_fu_1625_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_1582_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten6_fu_308 <= add_ln93_fu_1588_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_308 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_300 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_300 <= add_ln94_fu_1747_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln95_reg_2423 <= add_ln95_fu_1741_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln93_reg_2093 <= trunc_ln93_fu_1633_p1;
        trunc_ln94_reg_2258 <= trunc_ln94_fu_1687_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln95_reg_2423_pp0_iter2_reg <= add_ln95_reg_2423;
        add_ln95_reg_2423_pp0_iter3_reg <= add_ln95_reg_2423_pp0_iter2_reg;
        add_ln95_reg_2423_pp0_iter4_reg <= add_ln95_reg_2423_pp0_iter3_reg;
        add_ln95_reg_2423_pp0_iter5_reg <= add_ln95_reg_2423_pp0_iter4_reg;
        add_ln95_reg_2423_pp0_iter6_reg <= add_ln95_reg_2423_pp0_iter5_reg;
        add_ln95_reg_2423_pp0_iter7_reg <= add_ln95_reg_2423_pp0_iter6_reg;
        add_ln95_reg_2423_pp0_iter8_reg <= add_ln95_reg_2423_pp0_iter7_reg;
        add_ln95_reg_2423_pp0_iter9_reg <= add_ln95_reg_2423_pp0_iter8_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        ap_predicate_pred1130_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd30);
        ap_predicate_pred1139_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd29);
        ap_predicate_pred1148_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd28);
        ap_predicate_pred1157_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd27);
        ap_predicate_pred1166_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd26);
        ap_predicate_pred1175_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd25);
        ap_predicate_pred1184_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd24);
        ap_predicate_pred1193_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd23);
        ap_predicate_pred1202_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd22);
        ap_predicate_pred1211_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd21);
        ap_predicate_pred1220_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd20);
        ap_predicate_pred1229_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd19);
        ap_predicate_pred1238_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd18);
        ap_predicate_pred1247_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd17);
        ap_predicate_pred1256_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd16);
        ap_predicate_pred1265_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd15);
        ap_predicate_pred1274_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd14);
        ap_predicate_pred1283_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd13);
        ap_predicate_pred1292_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd12);
        ap_predicate_pred1301_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd11);
        ap_predicate_pred1310_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd10);
        ap_predicate_pred1319_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd9);
        ap_predicate_pred1328_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd8);
        ap_predicate_pred1337_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd7);
        ap_predicate_pred1346_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd6);
        ap_predicate_pred1355_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd5);
        ap_predicate_pred1364_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd4);
        ap_predicate_pred1373_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd3);
        ap_predicate_pred1382_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd2);
        ap_predicate_pred1391_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd1);
        ap_predicate_pred1400_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd0);
        ap_predicate_pred1409_state11 <= (trunc_ln94_reg_2258_pp0_iter8_reg == 5'd31);
        mul_i4_reg_2438 <= grp_fu_21302_p_dout0;
        tmp_32_reg_2433 <= tmp_32_fu_1898_p67;
        tmp_s_reg_2428 <= tmp_s_fu_1763_p67;
        trunc_ln94_reg_2258_pp0_iter2_reg <= trunc_ln94_reg_2258;
        trunc_ln94_reg_2258_pp0_iter3_reg <= trunc_ln94_reg_2258_pp0_iter2_reg;
        trunc_ln94_reg_2258_pp0_iter4_reg <= trunc_ln94_reg_2258_pp0_iter3_reg;
        trunc_ln94_reg_2258_pp0_iter5_reg <= trunc_ln94_reg_2258_pp0_iter4_reg;
        trunc_ln94_reg_2258_pp0_iter6_reg <= trunc_ln94_reg_2258_pp0_iter5_reg;
        trunc_ln94_reg_2258_pp0_iter7_reg <= trunc_ln94_reg_2258_pp0_iter6_reg;
        trunc_ln94_reg_2258_pp0_iter8_reg <= trunc_ln94_reg_2258_pp0_iter7_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_10_ce0_local = 1'b1;
    end else begin
        activations1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_11_ce0_local = 1'b1;
    end else begin
        activations1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_12_ce0_local = 1'b1;
    end else begin
        activations1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_13_ce0_local = 1'b1;
    end else begin
        activations1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_14_ce0_local = 1'b1;
    end else begin
        activations1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_15_ce0_local = 1'b1;
    end else begin
        activations1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_16_ce0_local = 1'b1;
    end else begin
        activations1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_17_ce0_local = 1'b1;
    end else begin
        activations1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_18_ce0_local = 1'b1;
    end else begin
        activations1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_19_ce0_local = 1'b1;
    end else begin
        activations1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_1_ce0_local = 1'b1;
    end else begin
        activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_20_ce0_local = 1'b1;
    end else begin
        activations1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_21_ce0_local = 1'b1;
    end else begin
        activations1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_22_ce0_local = 1'b1;
    end else begin
        activations1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_23_ce0_local = 1'b1;
    end else begin
        activations1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_24_ce0_local = 1'b1;
    end else begin
        activations1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_25_ce0_local = 1'b1;
    end else begin
        activations1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_26_ce0_local = 1'b1;
    end else begin
        activations1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_27_ce0_local = 1'b1;
    end else begin
        activations1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_28_ce0_local = 1'b1;
    end else begin
        activations1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_29_ce0_local = 1'b1;
    end else begin
        activations1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_2_ce0_local = 1'b1;
    end else begin
        activations1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_30_ce0_local = 1'b1;
    end else begin
        activations1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_31_ce0_local = 1'b1;
    end else begin
        activations1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_3_ce0_local = 1'b1;
    end else begin
        activations1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_4_ce0_local = 1'b1;
    end else begin
        activations1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_5_ce0_local = 1'b1;
    end else begin
        activations1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_6_ce0_local = 1'b1;
    end else begin
        activations1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_7_ce0_local = 1'b1;
    end else begin
        activations1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_8_ce0_local = 1'b1;
    end else begin
        activations1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_9_ce0_local = 1'b1;
    end else begin
        activations1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln93_fu_1582_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten6_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_308;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_10_ce0_local = 1'b1;
    end else begin
        delta_weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1310_state11 == 1'b1))) begin
        delta_weights2_10_we0_local = 1'b1;
    end else begin
        delta_weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_11_ce0_local = 1'b1;
    end else begin
        delta_weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1301_state11 == 1'b1))) begin
        delta_weights2_11_we0_local = 1'b1;
    end else begin
        delta_weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_12_ce0_local = 1'b1;
    end else begin
        delta_weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1292_state11 == 1'b1))) begin
        delta_weights2_12_we0_local = 1'b1;
    end else begin
        delta_weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_13_ce0_local = 1'b1;
    end else begin
        delta_weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1283_state11 == 1'b1))) begin
        delta_weights2_13_we0_local = 1'b1;
    end else begin
        delta_weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_14_ce0_local = 1'b1;
    end else begin
        delta_weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1274_state11 == 1'b1))) begin
        delta_weights2_14_we0_local = 1'b1;
    end else begin
        delta_weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_15_ce0_local = 1'b1;
    end else begin
        delta_weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1265_state11 == 1'b1))) begin
        delta_weights2_15_we0_local = 1'b1;
    end else begin
        delta_weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_16_ce0_local = 1'b1;
    end else begin
        delta_weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1256_state11 == 1'b1))) begin
        delta_weights2_16_we0_local = 1'b1;
    end else begin
        delta_weights2_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_17_ce0_local = 1'b1;
    end else begin
        delta_weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1247_state11 == 1'b1))) begin
        delta_weights2_17_we0_local = 1'b1;
    end else begin
        delta_weights2_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_18_ce0_local = 1'b1;
    end else begin
        delta_weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1238_state11 == 1'b1))) begin
        delta_weights2_18_we0_local = 1'b1;
    end else begin
        delta_weights2_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_19_ce0_local = 1'b1;
    end else begin
        delta_weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1229_state11 == 1'b1))) begin
        delta_weights2_19_we0_local = 1'b1;
    end else begin
        delta_weights2_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1391_state11 == 1'b1))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_20_ce0_local = 1'b1;
    end else begin
        delta_weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1220_state11 == 1'b1))) begin
        delta_weights2_20_we0_local = 1'b1;
    end else begin
        delta_weights2_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_21_ce0_local = 1'b1;
    end else begin
        delta_weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1211_state11 == 1'b1))) begin
        delta_weights2_21_we0_local = 1'b1;
    end else begin
        delta_weights2_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_22_ce0_local = 1'b1;
    end else begin
        delta_weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1202_state11 == 1'b1))) begin
        delta_weights2_22_we0_local = 1'b1;
    end else begin
        delta_weights2_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_23_ce0_local = 1'b1;
    end else begin
        delta_weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1193_state11 == 1'b1))) begin
        delta_weights2_23_we0_local = 1'b1;
    end else begin
        delta_weights2_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_24_ce0_local = 1'b1;
    end else begin
        delta_weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1184_state11 == 1'b1))) begin
        delta_weights2_24_we0_local = 1'b1;
    end else begin
        delta_weights2_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_25_ce0_local = 1'b1;
    end else begin
        delta_weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1175_state11 == 1'b1))) begin
        delta_weights2_25_we0_local = 1'b1;
    end else begin
        delta_weights2_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_26_ce0_local = 1'b1;
    end else begin
        delta_weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1166_state11 == 1'b1))) begin
        delta_weights2_26_we0_local = 1'b1;
    end else begin
        delta_weights2_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_27_ce0_local = 1'b1;
    end else begin
        delta_weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1157_state11 == 1'b1))) begin
        delta_weights2_27_we0_local = 1'b1;
    end else begin
        delta_weights2_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_28_ce0_local = 1'b1;
    end else begin
        delta_weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1148_state11 == 1'b1))) begin
        delta_weights2_28_we0_local = 1'b1;
    end else begin
        delta_weights2_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_29_ce0_local = 1'b1;
    end else begin
        delta_weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1139_state11 == 1'b1))) begin
        delta_weights2_29_we0_local = 1'b1;
    end else begin
        delta_weights2_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_2_ce0_local = 1'b1;
    end else begin
        delta_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1382_state11 == 1'b1))) begin
        delta_weights2_2_we0_local = 1'b1;
    end else begin
        delta_weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_30_ce0_local = 1'b1;
    end else begin
        delta_weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1130_state11 == 1'b1))) begin
        delta_weights2_30_we0_local = 1'b1;
    end else begin
        delta_weights2_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_31_ce0_local = 1'b1;
    end else begin
        delta_weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1409_state11 == 1'b1))) begin
        delta_weights2_31_we0_local = 1'b1;
    end else begin
        delta_weights2_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_3_ce0_local = 1'b1;
    end else begin
        delta_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1373_state11 == 1'b1))) begin
        delta_weights2_3_we0_local = 1'b1;
    end else begin
        delta_weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_4_ce0_local = 1'b1;
    end else begin
        delta_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1364_state11 == 1'b1))) begin
        delta_weights2_4_we0_local = 1'b1;
    end else begin
        delta_weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_5_ce0_local = 1'b1;
    end else begin
        delta_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1355_state11 == 1'b1))) begin
        delta_weights2_5_we0_local = 1'b1;
    end else begin
        delta_weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_6_ce0_local = 1'b1;
    end else begin
        delta_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1346_state11 == 1'b1))) begin
        delta_weights2_6_we0_local = 1'b1;
    end else begin
        delta_weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_7_ce0_local = 1'b1;
    end else begin
        delta_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1337_state11 == 1'b1))) begin
        delta_weights2_7_we0_local = 1'b1;
    end else begin
        delta_weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_8_ce0_local = 1'b1;
    end else begin
        delta_weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1328_state11 == 1'b1))) begin
        delta_weights2_8_we0_local = 1'b1;
    end else begin
        delta_weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_9_ce0_local = 1'b1;
    end else begin
        delta_weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1319_state11 == 1'b1))) begin
        delta_weights2_9_we0_local = 1'b1;
    end else begin
        delta_weights2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_ce0_local = 1'b1;
    end else begin
        delta_weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1400_state11 == 1'b1))) begin
        delta_weights2_we0_local = 1'b1;
    end else begin
        delta_weights2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_10_ce0_local = 1'b1;
    end else begin
        oracle_activations2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_11_ce0_local = 1'b1;
    end else begin
        oracle_activations2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_12_ce0_local = 1'b1;
    end else begin
        oracle_activations2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_13_ce0_local = 1'b1;
    end else begin
        oracle_activations2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_14_ce0_local = 1'b1;
    end else begin
        oracle_activations2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_15_ce0_local = 1'b1;
    end else begin
        oracle_activations2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_16_ce0_local = 1'b1;
    end else begin
        oracle_activations2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_17_ce0_local = 1'b1;
    end else begin
        oracle_activations2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_18_ce0_local = 1'b1;
    end else begin
        oracle_activations2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_19_ce0_local = 1'b1;
    end else begin
        oracle_activations2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_20_ce0_local = 1'b1;
    end else begin
        oracle_activations2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_21_ce0_local = 1'b1;
    end else begin
        oracle_activations2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_22_ce0_local = 1'b1;
    end else begin
        oracle_activations2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_23_ce0_local = 1'b1;
    end else begin
        oracle_activations2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_24_ce0_local = 1'b1;
    end else begin
        oracle_activations2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_25_ce0_local = 1'b1;
    end else begin
        oracle_activations2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_26_ce0_local = 1'b1;
    end else begin
        oracle_activations2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_27_ce0_local = 1'b1;
    end else begin
        oracle_activations2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_28_ce0_local = 1'b1;
    end else begin
        oracle_activations2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_29_ce0_local = 1'b1;
    end else begin
        oracle_activations2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_30_ce0_local = 1'b1;
    end else begin
        oracle_activations2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_31_ce0_local = 1'b1;
    end else begin
        oracle_activations2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_3_ce0_local = 1'b1;
    end else begin
        oracle_activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_4_ce0_local = 1'b1;
    end else begin
        oracle_activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_5_ce0_local = 1'b1;
    end else begin
        oracle_activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_6_ce0_local = 1'b1;
    end else begin
        oracle_activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_7_ce0_local = 1'b1;
    end else begin
        oracle_activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_8_ce0_local = 1'b1;
    end else begin
        oracle_activations2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_9_ce0_local = 1'b1;
    end else begin
        oracle_activations2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
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
assign activations1_10_address0 = zext_ln92_fu_1645_p1;
assign activations1_10_ce0 = activations1_10_ce0_local;
assign activations1_11_address0 = zext_ln92_fu_1645_p1;
assign activations1_11_ce0 = activations1_11_ce0_local;
assign activations1_12_address0 = zext_ln92_fu_1645_p1;
assign activations1_12_ce0 = activations1_12_ce0_local;
assign activations1_13_address0 = zext_ln92_fu_1645_p1;
assign activations1_13_ce0 = activations1_13_ce0_local;
assign activations1_14_address0 = zext_ln92_fu_1645_p1;
assign activations1_14_ce0 = activations1_14_ce0_local;
assign activations1_15_address0 = zext_ln92_fu_1645_p1;
assign activations1_15_ce0 = activations1_15_ce0_local;
assign activations1_16_address0 = zext_ln92_fu_1645_p1;
assign activations1_16_ce0 = activations1_16_ce0_local;
assign activations1_17_address0 = zext_ln92_fu_1645_p1;
assign activations1_17_ce0 = activations1_17_ce0_local;
assign activations1_18_address0 = zext_ln92_fu_1645_p1;
assign activations1_18_ce0 = activations1_18_ce0_local;
assign activations1_19_address0 = zext_ln92_fu_1645_p1;
assign activations1_19_ce0 = activations1_19_ce0_local;
assign activations1_1_address0 = zext_ln92_fu_1645_p1;
assign activations1_1_ce0 = activations1_1_ce0_local;
assign activations1_20_address0 = zext_ln92_fu_1645_p1;
assign activations1_20_ce0 = activations1_20_ce0_local;
assign activations1_21_address0 = zext_ln92_fu_1645_p1;
assign activations1_21_ce0 = activations1_21_ce0_local;
assign activations1_22_address0 = zext_ln92_fu_1645_p1;
assign activations1_22_ce0 = activations1_22_ce0_local;
assign activations1_23_address0 = zext_ln92_fu_1645_p1;
assign activations1_23_ce0 = activations1_23_ce0_local;
assign activations1_24_address0 = zext_ln92_fu_1645_p1;
assign activations1_24_ce0 = activations1_24_ce0_local;
assign activations1_25_address0 = zext_ln92_fu_1645_p1;
assign activations1_25_ce0 = activations1_25_ce0_local;
assign activations1_26_address0 = zext_ln92_fu_1645_p1;
assign activations1_26_ce0 = activations1_26_ce0_local;
assign activations1_27_address0 = zext_ln92_fu_1645_p1;
assign activations1_27_ce0 = activations1_27_ce0_local;
assign activations1_28_address0 = zext_ln92_fu_1645_p1;
assign activations1_28_ce0 = activations1_28_ce0_local;
assign activations1_29_address0 = zext_ln92_fu_1645_p1;
assign activations1_29_ce0 = activations1_29_ce0_local;
assign activations1_2_address0 = zext_ln92_fu_1645_p1;
assign activations1_2_ce0 = activations1_2_ce0_local;
assign activations1_30_address0 = zext_ln92_fu_1645_p1;
assign activations1_30_ce0 = activations1_30_ce0_local;
assign activations1_31_address0 = zext_ln92_fu_1645_p1;
assign activations1_31_ce0 = activations1_31_ce0_local;
assign activations1_3_address0 = zext_ln92_fu_1645_p1;
assign activations1_3_ce0 = activations1_3_ce0_local;
assign activations1_4_address0 = zext_ln92_fu_1645_p1;
assign activations1_4_ce0 = activations1_4_ce0_local;
assign activations1_5_address0 = zext_ln92_fu_1645_p1;
assign activations1_5_ce0 = activations1_5_ce0_local;
assign activations1_6_address0 = zext_ln92_fu_1645_p1;
assign activations1_6_ce0 = activations1_6_ce0_local;
assign activations1_7_address0 = zext_ln92_fu_1645_p1;
assign activations1_7_ce0 = activations1_7_ce0_local;
assign activations1_8_address0 = zext_ln92_fu_1645_p1;
assign activations1_8_ce0 = activations1_8_ce0_local;
assign activations1_9_address0 = zext_ln92_fu_1645_p1;
assign activations1_9_ce0 = activations1_9_ce0_local;
assign activations1_address0 = zext_ln92_fu_1645_p1;
assign activations1_ce0 = activations1_ce0_local;
assign add_ln93_1_fu_1619_p2 = (i_fu_304 + 7'd1);
assign add_ln93_fu_1588_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 13'd1);
assign add_ln94_fu_1747_p2 = (select_ln92_fu_1611_p3 + 7'd1);
assign add_ln95_fu_1741_p2 = (zext_ln92_2_fu_1701_p1 + empty_fu_1681_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights2_10_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_10_ce0 = delta_weights2_10_ce0_local;
assign delta_weights2_10_d0 = mul_i4_reg_2438;
assign delta_weights2_10_we0 = delta_weights2_10_we0_local;
assign delta_weights2_11_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_11_ce0 = delta_weights2_11_ce0_local;
assign delta_weights2_11_d0 = mul_i4_reg_2438;
assign delta_weights2_11_we0 = delta_weights2_11_we0_local;
assign delta_weights2_12_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_12_ce0 = delta_weights2_12_ce0_local;
assign delta_weights2_12_d0 = mul_i4_reg_2438;
assign delta_weights2_12_we0 = delta_weights2_12_we0_local;
assign delta_weights2_13_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_13_ce0 = delta_weights2_13_ce0_local;
assign delta_weights2_13_d0 = mul_i4_reg_2438;
assign delta_weights2_13_we0 = delta_weights2_13_we0_local;
assign delta_weights2_14_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_14_ce0 = delta_weights2_14_ce0_local;
assign delta_weights2_14_d0 = mul_i4_reg_2438;
assign delta_weights2_14_we0 = delta_weights2_14_we0_local;
assign delta_weights2_15_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_15_ce0 = delta_weights2_15_ce0_local;
assign delta_weights2_15_d0 = mul_i4_reg_2438;
assign delta_weights2_15_we0 = delta_weights2_15_we0_local;
assign delta_weights2_16_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_16_ce0 = delta_weights2_16_ce0_local;
assign delta_weights2_16_d0 = mul_i4_reg_2438;
assign delta_weights2_16_we0 = delta_weights2_16_we0_local;
assign delta_weights2_17_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_17_ce0 = delta_weights2_17_ce0_local;
assign delta_weights2_17_d0 = mul_i4_reg_2438;
assign delta_weights2_17_we0 = delta_weights2_17_we0_local;
assign delta_weights2_18_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_18_ce0 = delta_weights2_18_ce0_local;
assign delta_weights2_18_d0 = mul_i4_reg_2438;
assign delta_weights2_18_we0 = delta_weights2_18_we0_local;
assign delta_weights2_19_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_19_ce0 = delta_weights2_19_ce0_local;
assign delta_weights2_19_d0 = mul_i4_reg_2438;
assign delta_weights2_19_we0 = delta_weights2_19_we0_local;
assign delta_weights2_1_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_d0 = mul_i4_reg_2438;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_20_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_20_ce0 = delta_weights2_20_ce0_local;
assign delta_weights2_20_d0 = mul_i4_reg_2438;
assign delta_weights2_20_we0 = delta_weights2_20_we0_local;
assign delta_weights2_21_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_21_ce0 = delta_weights2_21_ce0_local;
assign delta_weights2_21_d0 = mul_i4_reg_2438;
assign delta_weights2_21_we0 = delta_weights2_21_we0_local;
assign delta_weights2_22_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_22_ce0 = delta_weights2_22_ce0_local;
assign delta_weights2_22_d0 = mul_i4_reg_2438;
assign delta_weights2_22_we0 = delta_weights2_22_we0_local;
assign delta_weights2_23_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_23_ce0 = delta_weights2_23_ce0_local;
assign delta_weights2_23_d0 = mul_i4_reg_2438;
assign delta_weights2_23_we0 = delta_weights2_23_we0_local;
assign delta_weights2_24_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_24_ce0 = delta_weights2_24_ce0_local;
assign delta_weights2_24_d0 = mul_i4_reg_2438;
assign delta_weights2_24_we0 = delta_weights2_24_we0_local;
assign delta_weights2_25_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_25_ce0 = delta_weights2_25_ce0_local;
assign delta_weights2_25_d0 = mul_i4_reg_2438;
assign delta_weights2_25_we0 = delta_weights2_25_we0_local;
assign delta_weights2_26_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_26_ce0 = delta_weights2_26_ce0_local;
assign delta_weights2_26_d0 = mul_i4_reg_2438;
assign delta_weights2_26_we0 = delta_weights2_26_we0_local;
assign delta_weights2_27_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_27_ce0 = delta_weights2_27_ce0_local;
assign delta_weights2_27_d0 = mul_i4_reg_2438;
assign delta_weights2_27_we0 = delta_weights2_27_we0_local;
assign delta_weights2_28_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_28_ce0 = delta_weights2_28_ce0_local;
assign delta_weights2_28_d0 = mul_i4_reg_2438;
assign delta_weights2_28_we0 = delta_weights2_28_we0_local;
assign delta_weights2_29_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_29_ce0 = delta_weights2_29_ce0_local;
assign delta_weights2_29_d0 = mul_i4_reg_2438;
assign delta_weights2_29_we0 = delta_weights2_29_we0_local;
assign delta_weights2_2_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_2_ce0 = delta_weights2_2_ce0_local;
assign delta_weights2_2_d0 = mul_i4_reg_2438;
assign delta_weights2_2_we0 = delta_weights2_2_we0_local;
assign delta_weights2_30_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_30_ce0 = delta_weights2_30_ce0_local;
assign delta_weights2_30_d0 = mul_i4_reg_2438;
assign delta_weights2_30_we0 = delta_weights2_30_we0_local;
assign delta_weights2_31_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_31_ce0 = delta_weights2_31_ce0_local;
assign delta_weights2_31_d0 = mul_i4_reg_2438;
assign delta_weights2_31_we0 = delta_weights2_31_we0_local;
assign delta_weights2_3_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_3_ce0 = delta_weights2_3_ce0_local;
assign delta_weights2_3_d0 = mul_i4_reg_2438;
assign delta_weights2_3_we0 = delta_weights2_3_we0_local;
assign delta_weights2_4_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_4_ce0 = delta_weights2_4_ce0_local;
assign delta_weights2_4_d0 = mul_i4_reg_2438;
assign delta_weights2_4_we0 = delta_weights2_4_we0_local;
assign delta_weights2_5_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_5_ce0 = delta_weights2_5_ce0_local;
assign delta_weights2_5_d0 = mul_i4_reg_2438;
assign delta_weights2_5_we0 = delta_weights2_5_we0_local;
assign delta_weights2_6_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_6_ce0 = delta_weights2_6_ce0_local;
assign delta_weights2_6_d0 = mul_i4_reg_2438;
assign delta_weights2_6_we0 = delta_weights2_6_we0_local;
assign delta_weights2_7_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_7_ce0 = delta_weights2_7_ce0_local;
assign delta_weights2_7_d0 = mul_i4_reg_2438;
assign delta_weights2_7_we0 = delta_weights2_7_we0_local;
assign delta_weights2_8_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_8_ce0 = delta_weights2_8_ce0_local;
assign delta_weights2_8_d0 = mul_i4_reg_2438;
assign delta_weights2_8_we0 = delta_weights2_8_we0_local;
assign delta_weights2_9_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_9_ce0 = delta_weights2_9_ce0_local;
assign delta_weights2_9_d0 = mul_i4_reg_2438;
assign delta_weights2_9_we0 = delta_weights2_9_we0_local;
assign delta_weights2_address0 = zext_ln95_fu_2033_p1;
assign delta_weights2_ce0 = delta_weights2_ce0_local;
assign delta_weights2_d0 = mul_i4_reg_2438;
assign delta_weights2_we0 = delta_weights2_we0_local;
assign empty_fu_1681_p2 = select_ln93_fu_1625_p3 << 7'd1;
assign grp_fu_21302_p_ce = 1'b1;
assign grp_fu_21302_p_din0 = tmp_s_reg_2428;
assign grp_fu_21302_p_din1 = tmp_32_reg_2433;
assign icmp_ln93_fu_1582_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln94_fu_1605_p2 = ((j_fu_300 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln92_1_fu_1691_p4 = {{select_ln92_fu_1611_p3[6:5]}};
assign oracle_activations2_10_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_10_ce0 = oracle_activations2_10_ce0_local;
assign oracle_activations2_11_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_11_ce0 = oracle_activations2_11_ce0_local;
assign oracle_activations2_12_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_12_ce0 = oracle_activations2_12_ce0_local;
assign oracle_activations2_13_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_13_ce0 = oracle_activations2_13_ce0_local;
assign oracle_activations2_14_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_14_ce0 = oracle_activations2_14_ce0_local;
assign oracle_activations2_15_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_15_ce0 = oracle_activations2_15_ce0_local;
assign oracle_activations2_16_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_16_ce0 = oracle_activations2_16_ce0_local;
assign oracle_activations2_17_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_17_ce0 = oracle_activations2_17_ce0_local;
assign oracle_activations2_18_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_18_ce0 = oracle_activations2_18_ce0_local;
assign oracle_activations2_19_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_19_ce0 = oracle_activations2_19_ce0_local;
assign oracle_activations2_1_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_20_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_20_ce0 = oracle_activations2_20_ce0_local;
assign oracle_activations2_21_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_21_ce0 = oracle_activations2_21_ce0_local;
assign oracle_activations2_22_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_22_ce0 = oracle_activations2_22_ce0_local;
assign oracle_activations2_23_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_23_ce0 = oracle_activations2_23_ce0_local;
assign oracle_activations2_24_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_24_ce0 = oracle_activations2_24_ce0_local;
assign oracle_activations2_25_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_25_ce0 = oracle_activations2_25_ce0_local;
assign oracle_activations2_26_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_26_ce0 = oracle_activations2_26_ce0_local;
assign oracle_activations2_27_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_27_ce0 = oracle_activations2_27_ce0_local;
assign oracle_activations2_28_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_28_ce0 = oracle_activations2_28_ce0_local;
assign oracle_activations2_29_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_29_ce0 = oracle_activations2_29_ce0_local;
assign oracle_activations2_2_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_2_ce0 = oracle_activations2_2_ce0_local;
assign oracle_activations2_30_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_30_ce0 = oracle_activations2_30_ce0_local;
assign oracle_activations2_31_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_31_ce0 = oracle_activations2_31_ce0_local;
assign oracle_activations2_3_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_3_ce0 = oracle_activations2_3_ce0_local;
assign oracle_activations2_4_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_4_ce0 = oracle_activations2_4_ce0_local;
assign oracle_activations2_5_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_5_ce0 = oracle_activations2_5_ce0_local;
assign oracle_activations2_6_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_6_ce0 = oracle_activations2_6_ce0_local;
assign oracle_activations2_7_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_7_ce0 = oracle_activations2_7_ce0_local;
assign oracle_activations2_8_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_8_ce0 = oracle_activations2_8_ce0_local;
assign oracle_activations2_9_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_9_ce0 = oracle_activations2_9_ce0_local;
assign oracle_activations2_address0 = zext_ln92_1_fu_1705_p1;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign select_ln92_fu_1611_p3 = ((icmp_ln94_fu_1605_p2[0:0] == 1'b1) ? 7'd0 : j_fu_300);
assign select_ln93_fu_1625_p3 = ((icmp_ln94_fu_1605_p2[0:0] == 1'b1) ? add_ln93_1_fu_1619_p2 : i_fu_304);
assign tmp_32_fu_1898_p65 = 'bx;
assign tmp_fu_1637_p3 = select_ln93_fu_1625_p3[32'd5];
assign tmp_s_fu_1763_p65 = 'bx;
assign trunc_ln93_fu_1633_p1 = select_ln93_fu_1625_p3[4:0];
assign trunc_ln94_fu_1687_p1 = select_ln92_fu_1611_p3[4:0];
assign zext_ln92_1_fu_1705_p1 = lshr_ln92_1_fu_1691_p4;
assign zext_ln92_2_fu_1701_p1 = lshr_ln92_1_fu_1691_p4;
assign zext_ln92_fu_1645_p1 = tmp_fu_1637_p3;
assign zext_ln95_fu_2033_p1 = add_ln95_reg_2423_pp0_iter9_reg;
endmodule 
