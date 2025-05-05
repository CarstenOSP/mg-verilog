module backprop_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations1_address0,activations1_ce0,activations1_q0,activations1_1_address0,activations1_1_ce0,activations1_1_q0,activations1_2_address0,activations1_2_ce0,activations1_2_q0,activations1_3_address0,activations1_3_ce0,activations1_3_q0,activations1_4_address0,activations1_4_ce0,activations1_4_q0,activations1_5_address0,activations1_5_ce0,activations1_5_q0,activations1_6_address0,activations1_6_ce0,activations1_6_q0,activations1_7_address0,activations1_7_ce0,activations1_7_q0,activations1_8_address0,activations1_8_ce0,activations1_8_q0,activations1_9_address0,activations1_9_ce0,activations1_9_q0,activations1_10_address0,activations1_10_ce0,activations1_10_q0,activations1_11_address0,activations1_11_ce0,activations1_11_q0,activations1_12_address0,activations1_12_ce0,activations1_12_q0,activations1_13_address0,activations1_13_ce0,activations1_13_q0,activations1_14_address0,activations1_14_ce0,activations1_14_q0,activations1_15_address0,activations1_15_ce0,activations1_15_q0,activations1_16_address0,activations1_16_ce0,activations1_16_q0,activations1_17_address0,activations1_17_ce0,activations1_17_q0,activations1_18_address0,activations1_18_ce0,activations1_18_q0,activations1_19_address0,activations1_19_ce0,activations1_19_q0,activations1_20_address0,activations1_20_ce0,activations1_20_q0,activations1_21_address0,activations1_21_ce0,activations1_21_q0,activations1_22_address0,activations1_22_ce0,activations1_22_q0,activations1_23_address0,activations1_23_ce0,activations1_23_q0,activations1_24_address0,activations1_24_ce0,activations1_24_q0,activations1_25_address0,activations1_25_ce0,activations1_25_q0,activations1_26_address0,activations1_26_ce0,activations1_26_q0,activations1_27_address0,activations1_27_ce0,activations1_27_q0,activations1_28_address0,activations1_28_ce0,activations1_28_q0,activations1_29_address0,activations1_29_ce0,activations1_29_q0,activations1_30_address0,activations1_30_ce0,activations1_30_q0,activations1_31_address0,activations1_31_ce0,activations1_31_q0,delta_weights2_31_address0,delta_weights2_31_ce0,delta_weights2_31_we0,delta_weights2_31_d0,delta_weights2_30_address0,delta_weights2_30_ce0,delta_weights2_30_we0,delta_weights2_30_d0,delta_weights2_29_address0,delta_weights2_29_ce0,delta_weights2_29_we0,delta_weights2_29_d0,delta_weights2_28_address0,delta_weights2_28_ce0,delta_weights2_28_we0,delta_weights2_28_d0,delta_weights2_27_address0,delta_weights2_27_ce0,delta_weights2_27_we0,delta_weights2_27_d0,delta_weights2_26_address0,delta_weights2_26_ce0,delta_weights2_26_we0,delta_weights2_26_d0,delta_weights2_25_address0,delta_weights2_25_ce0,delta_weights2_25_we0,delta_weights2_25_d0,delta_weights2_24_address0,delta_weights2_24_ce0,delta_weights2_24_we0,delta_weights2_24_d0,delta_weights2_23_address0,delta_weights2_23_ce0,delta_weights2_23_we0,delta_weights2_23_d0,delta_weights2_22_address0,delta_weights2_22_ce0,delta_weights2_22_we0,delta_weights2_22_d0,delta_weights2_21_address0,delta_weights2_21_ce0,delta_weights2_21_we0,delta_weights2_21_d0,delta_weights2_20_address0,delta_weights2_20_ce0,delta_weights2_20_we0,delta_weights2_20_d0,delta_weights2_19_address0,delta_weights2_19_ce0,delta_weights2_19_we0,delta_weights2_19_d0,delta_weights2_18_address0,delta_weights2_18_ce0,delta_weights2_18_we0,delta_weights2_18_d0,delta_weights2_17_address0,delta_weights2_17_ce0,delta_weights2_17_we0,delta_weights2_17_d0,delta_weights2_16_address0,delta_weights2_16_ce0,delta_weights2_16_we0,delta_weights2_16_d0,delta_weights2_15_address0,delta_weights2_15_ce0,delta_weights2_15_we0,delta_weights2_15_d0,delta_weights2_14_address0,delta_weights2_14_ce0,delta_weights2_14_we0,delta_weights2_14_d0,delta_weights2_13_address0,delta_weights2_13_ce0,delta_weights2_13_we0,delta_weights2_13_d0,delta_weights2_12_address0,delta_weights2_12_ce0,delta_weights2_12_we0,delta_weights2_12_d0,delta_weights2_11_address0,delta_weights2_11_ce0,delta_weights2_11_we0,delta_weights2_11_d0,delta_weights2_10_address0,delta_weights2_10_ce0,delta_weights2_10_we0,delta_weights2_10_d0,delta_weights2_9_address0,delta_weights2_9_ce0,delta_weights2_9_we0,delta_weights2_9_d0,delta_weights2_8_address0,delta_weights2_8_ce0,delta_weights2_8_we0,delta_weights2_8_d0,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_address0,delta_weights2_ce0,delta_weights2_we0,delta_weights2_d0,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_q0,oracle_activations2_2_address0,oracle_activations2_2_ce0,oracle_activations2_2_q0,oracle_activations2_4_address0,oracle_activations2_4_ce0,oracle_activations2_4_q0,oracle_activations2_6_address0,oracle_activations2_6_ce0,oracle_activations2_6_q0,oracle_activations2_8_address0,oracle_activations2_8_ce0,oracle_activations2_8_q0,oracle_activations2_10_address0,oracle_activations2_10_ce0,oracle_activations2_10_q0,oracle_activations2_12_address0,oracle_activations2_12_ce0,oracle_activations2_12_q0,oracle_activations2_14_address0,oracle_activations2_14_ce0,oracle_activations2_14_q0,oracle_activations2_16_address0,oracle_activations2_16_ce0,oracle_activations2_16_q0,oracle_activations2_18_address0,oracle_activations2_18_ce0,oracle_activations2_18_q0,oracle_activations2_20_address0,oracle_activations2_20_ce0,oracle_activations2_20_q0,oracle_activations2_22_address0,oracle_activations2_22_ce0,oracle_activations2_22_q0,oracle_activations2_24_address0,oracle_activations2_24_ce0,oracle_activations2_24_q0,oracle_activations2_26_address0,oracle_activations2_26_ce0,oracle_activations2_26_q0,oracle_activations2_28_address0,oracle_activations2_28_ce0,oracle_activations2_28_q0,oracle_activations2_30_address0,oracle_activations2_30_ce0,oracle_activations2_30_q0,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_q0,oracle_activations2_3_address0,oracle_activations2_3_ce0,oracle_activations2_3_q0,oracle_activations2_5_address0,oracle_activations2_5_ce0,oracle_activations2_5_q0,oracle_activations2_7_address0,oracle_activations2_7_ce0,oracle_activations2_7_q0,oracle_activations2_9_address0,oracle_activations2_9_ce0,oracle_activations2_9_q0,oracle_activations2_11_address0,oracle_activations2_11_ce0,oracle_activations2_11_q0,oracle_activations2_13_address0,oracle_activations2_13_ce0,oracle_activations2_13_q0,oracle_activations2_15_address0,oracle_activations2_15_ce0,oracle_activations2_15_q0,oracle_activations2_17_address0,oracle_activations2_17_ce0,oracle_activations2_17_q0,oracle_activations2_19_address0,oracle_activations2_19_ce0,oracle_activations2_19_q0,oracle_activations2_21_address0,oracle_activations2_21_ce0,oracle_activations2_21_q0,oracle_activations2_23_address0,oracle_activations2_23_ce0,oracle_activations2_23_q0,oracle_activations2_25_address0,oracle_activations2_25_ce0,oracle_activations2_25_q0,oracle_activations2_27_address0,oracle_activations2_27_ce0,oracle_activations2_27_q0,oracle_activations2_29_address0,oracle_activations2_29_ce0,oracle_activations2_29_q0,oracle_activations2_31_address0,oracle_activations2_31_ce0,oracle_activations2_31_q0,grp_fu_6440_p_din0,grp_fu_6440_p_din1,grp_fu_6440_p_dout0,grp_fu_6440_p_ce,grp_fu_8437_p_din0,grp_fu_8437_p_din1,grp_fu_8437_p_dout0,grp_fu_8437_p_ce); 
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
output  [0:0] oracle_activations2_2_address0;
output   oracle_activations2_2_ce0;
input  [63:0] oracle_activations2_2_q0;
output  [0:0] oracle_activations2_4_address0;
output   oracle_activations2_4_ce0;
input  [63:0] oracle_activations2_4_q0;
output  [0:0] oracle_activations2_6_address0;
output   oracle_activations2_6_ce0;
input  [63:0] oracle_activations2_6_q0;
output  [0:0] oracle_activations2_8_address0;
output   oracle_activations2_8_ce0;
input  [63:0] oracle_activations2_8_q0;
output  [0:0] oracle_activations2_10_address0;
output   oracle_activations2_10_ce0;
input  [63:0] oracle_activations2_10_q0;
output  [0:0] oracle_activations2_12_address0;
output   oracle_activations2_12_ce0;
input  [63:0] oracle_activations2_12_q0;
output  [0:0] oracle_activations2_14_address0;
output   oracle_activations2_14_ce0;
input  [63:0] oracle_activations2_14_q0;
output  [0:0] oracle_activations2_16_address0;
output   oracle_activations2_16_ce0;
input  [63:0] oracle_activations2_16_q0;
output  [0:0] oracle_activations2_18_address0;
output   oracle_activations2_18_ce0;
input  [63:0] oracle_activations2_18_q0;
output  [0:0] oracle_activations2_20_address0;
output   oracle_activations2_20_ce0;
input  [63:0] oracle_activations2_20_q0;
output  [0:0] oracle_activations2_22_address0;
output   oracle_activations2_22_ce0;
input  [63:0] oracle_activations2_22_q0;
output  [0:0] oracle_activations2_24_address0;
output   oracle_activations2_24_ce0;
input  [63:0] oracle_activations2_24_q0;
output  [0:0] oracle_activations2_26_address0;
output   oracle_activations2_26_ce0;
input  [63:0] oracle_activations2_26_q0;
output  [0:0] oracle_activations2_28_address0;
output   oracle_activations2_28_ce0;
input  [63:0] oracle_activations2_28_q0;
output  [0:0] oracle_activations2_30_address0;
output   oracle_activations2_30_ce0;
input  [63:0] oracle_activations2_30_q0;
output  [0:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
input  [63:0] oracle_activations2_1_q0;
output  [0:0] oracle_activations2_3_address0;
output   oracle_activations2_3_ce0;
input  [63:0] oracle_activations2_3_q0;
output  [0:0] oracle_activations2_5_address0;
output   oracle_activations2_5_ce0;
input  [63:0] oracle_activations2_5_q0;
output  [0:0] oracle_activations2_7_address0;
output   oracle_activations2_7_ce0;
input  [63:0] oracle_activations2_7_q0;
output  [0:0] oracle_activations2_9_address0;
output   oracle_activations2_9_ce0;
input  [63:0] oracle_activations2_9_q0;
output  [0:0] oracle_activations2_11_address0;
output   oracle_activations2_11_ce0;
input  [63:0] oracle_activations2_11_q0;
output  [0:0] oracle_activations2_13_address0;
output   oracle_activations2_13_ce0;
input  [63:0] oracle_activations2_13_q0;
output  [0:0] oracle_activations2_15_address0;
output   oracle_activations2_15_ce0;
input  [63:0] oracle_activations2_15_q0;
output  [0:0] oracle_activations2_17_address0;
output   oracle_activations2_17_ce0;
input  [63:0] oracle_activations2_17_q0;
output  [0:0] oracle_activations2_19_address0;
output   oracle_activations2_19_ce0;
input  [63:0] oracle_activations2_19_q0;
output  [0:0] oracle_activations2_21_address0;
output   oracle_activations2_21_ce0;
input  [63:0] oracle_activations2_21_q0;
output  [0:0] oracle_activations2_23_address0;
output   oracle_activations2_23_ce0;
input  [63:0] oracle_activations2_23_q0;
output  [0:0] oracle_activations2_25_address0;
output   oracle_activations2_25_ce0;
input  [63:0] oracle_activations2_25_q0;
output  [0:0] oracle_activations2_27_address0;
output   oracle_activations2_27_ce0;
input  [63:0] oracle_activations2_27_q0;
output  [0:0] oracle_activations2_29_address0;
output   oracle_activations2_29_ce0;
input  [63:0] oracle_activations2_29_q0;
output  [0:0] oracle_activations2_31_address0;
output   oracle_activations2_31_ce0;
input  [63:0] oracle_activations2_31_q0;
output  [63:0] grp_fu_6440_p_din0;
output  [63:0] grp_fu_6440_p_din1;
input  [63:0] grp_fu_6440_p_dout0;
output   grp_fu_6440_p_ce;
output  [63:0] grp_fu_8437_p_din0;
output  [63:0] grp_fu_8437_p_din1;
input  [63:0] grp_fu_8437_p_dout0;
output   grp_fu_8437_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln93_fu_1588_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] trunc_ln93_fu_1636_p1;
reg   [4:0] trunc_ln93_reg_2108;
wire   [4:0] trunc_ln94_fu_1690_p1;
reg   [4:0] trunc_ln94_reg_2273;
reg   [4:0] trunc_ln94_reg_2273_pp0_iter1_reg;
reg   [4:0] trunc_ln94_reg_2273_pp0_iter2_reg;
reg   [4:0] trunc_ln94_reg_2273_pp0_iter3_reg;
reg   [4:0] trunc_ln94_reg_2273_pp0_iter4_reg;
reg   [4:0] trunc_ln94_reg_2273_pp0_iter5_reg;
reg   [4:0] trunc_ln94_reg_2273_pp0_iter6_reg;
reg   [4:0] trunc_ln94_reg_2273_pp0_iter7_reg;
wire   [6:0] add_ln95_fu_1744_p2;
reg   [6:0] add_ln95_reg_2359;
reg   [6:0] add_ln95_reg_2359_pp0_iter1_reg;
reg   [6:0] add_ln95_reg_2359_pp0_iter2_reg;
reg   [6:0] add_ln95_reg_2359_pp0_iter3_reg;
reg   [6:0] add_ln95_reg_2359_pp0_iter4_reg;
reg   [6:0] add_ln95_reg_2359_pp0_iter5_reg;
reg   [6:0] add_ln95_reg_2359_pp0_iter6_reg;
reg   [6:0] add_ln95_reg_2359_pp0_iter7_reg;
reg   [6:0] add_ln95_reg_2359_pp0_iter8_reg;
wire   [63:0] tmp_s_fu_1771_p67;
reg   [63:0] tmp_s_reg_2444;
wire   [63:0] tmp_158_fu_1906_p35;
reg   [63:0] tmp_158_reg_2450;
wire   [63:0] tmp_159_fu_1977_p35;
reg   [63:0] tmp_159_reg_2455;
reg   [63:0] mul_i4_reg_2460;
reg   [63:0] mul_1_i1_reg_2480;
wire   [63:0] zext_ln92_fu_1648_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln92_1_fu_1708_p1;
wire   [63:0] zext_ln95_fu_2048_p1;
reg   [6:0] j_fu_302;
wire   [6:0] add_ln94_fu_1750_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_306;
wire   [6:0] select_ln93_fu_1628_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [11:0] indvar_flatten12_fu_310;
wire   [11:0] add_ln93_fu_1594_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten12_load;
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
reg    oracle_activations2_2_ce0_local;
reg    oracle_activations2_4_ce0_local;
reg    oracle_activations2_6_ce0_local;
reg    oracle_activations2_8_ce0_local;
reg    oracle_activations2_10_ce0_local;
reg    oracle_activations2_12_ce0_local;
reg    oracle_activations2_14_ce0_local;
reg    oracle_activations2_16_ce0_local;
reg    oracle_activations2_18_ce0_local;
reg    oracle_activations2_20_ce0_local;
reg    oracle_activations2_22_ce0_local;
reg    oracle_activations2_24_ce0_local;
reg    oracle_activations2_26_ce0_local;
reg    oracle_activations2_28_ce0_local;
reg    oracle_activations2_30_ce0_local;
reg    oracle_activations2_1_ce0_local;
reg    oracle_activations2_3_ce0_local;
reg    oracle_activations2_5_ce0_local;
reg    oracle_activations2_7_ce0_local;
reg    oracle_activations2_9_ce0_local;
reg    oracle_activations2_11_ce0_local;
reg    oracle_activations2_13_ce0_local;
reg    oracle_activations2_15_ce0_local;
reg    oracle_activations2_17_ce0_local;
reg    oracle_activations2_19_ce0_local;
reg    oracle_activations2_21_ce0_local;
reg    oracle_activations2_23_ce0_local;
reg    oracle_activations2_25_ce0_local;
reg    oracle_activations2_27_ce0_local;
reg    oracle_activations2_29_ce0_local;
reg    oracle_activations2_31_ce0_local;
reg    delta_weights2_28_we0_local;
reg    ap_predicate_pred1134_state10;
reg    delta_weights2_28_ce0_local;
reg    delta_weights2_29_we0_local;
reg    delta_weights2_29_ce0_local;
reg    delta_weights2_26_we0_local;
reg    ap_predicate_pred1147_state10;
reg    delta_weights2_26_ce0_local;
reg    delta_weights2_27_we0_local;
reg    delta_weights2_27_ce0_local;
reg    delta_weights2_24_we0_local;
reg    ap_predicate_pred1160_state10;
reg    delta_weights2_24_ce0_local;
reg    delta_weights2_25_we0_local;
reg    delta_weights2_25_ce0_local;
reg    delta_weights2_22_we0_local;
reg    ap_predicate_pred1173_state10;
reg    delta_weights2_22_ce0_local;
reg    delta_weights2_23_we0_local;
reg    delta_weights2_23_ce0_local;
reg    delta_weights2_20_we0_local;
reg    ap_predicate_pred1186_state10;
reg    delta_weights2_20_ce0_local;
reg    delta_weights2_21_we0_local;
reg    delta_weights2_21_ce0_local;
reg    delta_weights2_18_we0_local;
reg    ap_predicate_pred1199_state10;
reg    delta_weights2_18_ce0_local;
reg    delta_weights2_19_we0_local;
reg    delta_weights2_19_ce0_local;
reg    delta_weights2_16_we0_local;
reg    ap_predicate_pred1212_state10;
reg    delta_weights2_16_ce0_local;
reg    delta_weights2_17_we0_local;
reg    delta_weights2_17_ce0_local;
reg    delta_weights2_14_we0_local;
reg    ap_predicate_pred1225_state10;
reg    delta_weights2_14_ce0_local;
reg    delta_weights2_15_we0_local;
reg    delta_weights2_15_ce0_local;
reg    delta_weights2_12_we0_local;
reg    ap_predicate_pred1238_state10;
reg    delta_weights2_12_ce0_local;
reg    delta_weights2_13_we0_local;
reg    delta_weights2_13_ce0_local;
reg    delta_weights2_10_we0_local;
reg    ap_predicate_pred1251_state10;
reg    delta_weights2_10_ce0_local;
reg    delta_weights2_11_we0_local;
reg    delta_weights2_11_ce0_local;
reg    delta_weights2_8_we0_local;
reg    ap_predicate_pred1264_state10;
reg    delta_weights2_8_ce0_local;
reg    delta_weights2_9_we0_local;
reg    delta_weights2_9_ce0_local;
reg    delta_weights2_6_we0_local;
reg    ap_predicate_pred1277_state10;
reg    delta_weights2_6_ce0_local;
reg    delta_weights2_7_we0_local;
reg    delta_weights2_7_ce0_local;
reg    delta_weights2_4_we0_local;
reg    ap_predicate_pred1290_state10;
reg    delta_weights2_4_ce0_local;
reg    delta_weights2_5_we0_local;
reg    delta_weights2_5_ce0_local;
reg    delta_weights2_2_we0_local;
reg    ap_predicate_pred1303_state10;
reg    delta_weights2_2_ce0_local;
reg    delta_weights2_3_we0_local;
reg    delta_weights2_3_ce0_local;
reg    delta_weights2_we0_local;
reg    ap_predicate_pred1316_state10;
reg    delta_weights2_ce0_local;
reg    delta_weights2_1_we0_local;
reg    delta_weights2_1_ce0_local;
reg    delta_weights2_30_we0_local;
reg    ap_predicate_pred1356_state10;
reg    delta_weights2_30_ce0_local;
reg    delta_weights2_31_we0_local;
reg    delta_weights2_31_ce0_local;
wire   [0:0] tmp_fu_1606_p3;
wire   [6:0] add_ln93_1_fu_1622_p2;
wire   [0:0] tmp_38_fu_1640_p3;
wire   [6:0] select_ln92_fu_1614_p3;
wire   [1:0] lshr_ln92_1_fu_1694_p4;
wire   [6:0] zext_ln92_2_fu_1704_p1;
wire   [6:0] empty_fu_1684_p2;
wire   [63:0] tmp_s_fu_1771_p65;
wire   [63:0] tmp_158_fu_1906_p33;
wire   [63:0] tmp_159_fu_1977_p33;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_s_fu_1771_p1;
wire   [4:0] tmp_s_fu_1771_p3;
wire   [4:0] tmp_s_fu_1771_p5;
wire   [4:0] tmp_s_fu_1771_p7;
wire   [4:0] tmp_s_fu_1771_p9;
wire   [4:0] tmp_s_fu_1771_p11;
wire   [4:0] tmp_s_fu_1771_p13;
wire   [4:0] tmp_s_fu_1771_p15;
wire   [4:0] tmp_s_fu_1771_p17;
wire   [4:0] tmp_s_fu_1771_p19;
wire   [4:0] tmp_s_fu_1771_p21;
wire   [4:0] tmp_s_fu_1771_p23;
wire   [4:0] tmp_s_fu_1771_p25;
wire   [4:0] tmp_s_fu_1771_p27;
wire   [4:0] tmp_s_fu_1771_p29;
wire   [4:0] tmp_s_fu_1771_p31;
wire  signed [4:0] tmp_s_fu_1771_p33;
wire  signed [4:0] tmp_s_fu_1771_p35;
wire  signed [4:0] tmp_s_fu_1771_p37;
wire  signed [4:0] tmp_s_fu_1771_p39;
wire  signed [4:0] tmp_s_fu_1771_p41;
wire  signed [4:0] tmp_s_fu_1771_p43;
wire  signed [4:0] tmp_s_fu_1771_p45;
wire  signed [4:0] tmp_s_fu_1771_p47;
wire  signed [4:0] tmp_s_fu_1771_p49;
wire  signed [4:0] tmp_s_fu_1771_p51;
wire  signed [4:0] tmp_s_fu_1771_p53;
wire  signed [4:0] tmp_s_fu_1771_p55;
wire  signed [4:0] tmp_s_fu_1771_p57;
wire  signed [4:0] tmp_s_fu_1771_p59;
wire  signed [4:0] tmp_s_fu_1771_p61;
wire  signed [4:0] tmp_s_fu_1771_p63;
wire   [4:0] tmp_158_fu_1906_p1;
wire   [4:0] tmp_158_fu_1906_p3;
wire   [4:0] tmp_158_fu_1906_p5;
wire   [4:0] tmp_158_fu_1906_p7;
wire   [4:0] tmp_158_fu_1906_p9;
wire   [4:0] tmp_158_fu_1906_p11;
wire   [4:0] tmp_158_fu_1906_p13;
wire   [4:0] tmp_158_fu_1906_p15;
wire  signed [4:0] tmp_158_fu_1906_p17;
wire  signed [4:0] tmp_158_fu_1906_p19;
wire  signed [4:0] tmp_158_fu_1906_p21;
wire  signed [4:0] tmp_158_fu_1906_p23;
wire  signed [4:0] tmp_158_fu_1906_p25;
wire  signed [4:0] tmp_158_fu_1906_p27;
wire  signed [4:0] tmp_158_fu_1906_p29;
wire  signed [4:0] tmp_158_fu_1906_p31;
wire   [4:0] tmp_159_fu_1977_p1;
wire   [4:0] tmp_159_fu_1977_p3;
wire   [4:0] tmp_159_fu_1977_p5;
wire   [4:0] tmp_159_fu_1977_p7;
wire   [4:0] tmp_159_fu_1977_p9;
wire   [4:0] tmp_159_fu_1977_p11;
wire   [4:0] tmp_159_fu_1977_p13;
wire   [4:0] tmp_159_fu_1977_p15;
wire  signed [4:0] tmp_159_fu_1977_p17;
wire  signed [4:0] tmp_159_fu_1977_p19;
wire  signed [4:0] tmp_159_fu_1977_p21;
wire  signed [4:0] tmp_159_fu_1977_p23;
wire  signed [4:0] tmp_159_fu_1977_p25;
wire  signed [4:0] tmp_159_fu_1977_p27;
wire  signed [4:0] tmp_159_fu_1977_p29;
wire  signed [4:0] tmp_159_fu_1977_p31;
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
#0 j_fu_302 = 7'd0;
#0 i_fu_306 = 7'd0;
#0 indvar_flatten12_fu_310 = 12'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1072(.din0(activations1_q0),.din1(activations1_1_q0),.din2(activations1_2_q0),.din3(activations1_3_q0),.din4(activations1_4_q0),.din5(activations1_5_q0),.din6(activations1_6_q0),.din7(activations1_7_q0),.din8(activations1_8_q0),.din9(activations1_9_q0),.din10(activations1_10_q0),.din11(activations1_11_q0),.din12(activations1_12_q0),.din13(activations1_13_q0),.din14(activations1_14_q0),.din15(activations1_15_q0),.din16(activations1_16_q0),.din17(activations1_17_q0),.din18(activations1_18_q0),.din19(activations1_19_q0),.din20(activations1_20_q0),.din21(activations1_21_q0),.din22(activations1_22_q0),.din23(activations1_23_q0),.din24(activations1_24_q0),.din25(activations1_25_q0),.din26(activations1_26_q0),.din27(activations1_27_q0),.din28(activations1_28_q0),.din29(activations1_29_q0),.din30(activations1_30_q0),.din31(activations1_31_q0),.def(tmp_s_fu_1771_p65),.sel(trunc_ln93_reg_2108),.dout(tmp_s_fu_1771_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U1073(.din0(oracle_activations2_q0),.din1(oracle_activations2_2_q0),.din2(oracle_activations2_4_q0),.din3(oracle_activations2_6_q0),.din4(oracle_activations2_8_q0),.din5(oracle_activations2_10_q0),.din6(oracle_activations2_12_q0),.din7(oracle_activations2_14_q0),.din8(oracle_activations2_16_q0),.din9(oracle_activations2_18_q0),.din10(oracle_activations2_20_q0),.din11(oracle_activations2_22_q0),.din12(oracle_activations2_24_q0),.din13(oracle_activations2_26_q0),.din14(oracle_activations2_28_q0),.din15(oracle_activations2_30_q0),.def(tmp_158_fu_1906_p33),.sel(trunc_ln94_reg_2273),.dout(tmp_158_fu_1906_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U1074(.din0(oracle_activations2_1_q0),.din1(oracle_activations2_3_q0),.din2(oracle_activations2_5_q0),.din3(oracle_activations2_7_q0),.din4(oracle_activations2_9_q0),.din5(oracle_activations2_11_q0),.din6(oracle_activations2_13_q0),.din7(oracle_activations2_15_q0),.din8(oracle_activations2_17_q0),.din9(oracle_activations2_19_q0),.din10(oracle_activations2_21_q0),.din11(oracle_activations2_23_q0),.din12(oracle_activations2_25_q0),.din13(oracle_activations2_27_q0),.din14(oracle_activations2_29_q0),.din15(oracle_activations2_31_q0),.def(tmp_159_fu_1977_p33),.sel(trunc_ln94_reg_2273),.dout(tmp_159_fu_1977_p35));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
        if (((icmp_ln93_fu_1588_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_306 <= select_ln93_fu_1628_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_306 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_1588_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten12_fu_310 <= add_ln93_fu_1594_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12_fu_310 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_1588_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_302 <= add_ln94_fu_1750_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_302 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln95_reg_2359 <= add_ln95_fu_1744_p2;
        add_ln95_reg_2359_pp0_iter1_reg <= add_ln95_reg_2359;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        tmp_158_reg_2450 <= tmp_158_fu_1906_p35;
        tmp_159_reg_2455 <= tmp_159_fu_1977_p35;
        tmp_s_reg_2444 <= tmp_s_fu_1771_p67;
        trunc_ln93_reg_2108 <= trunc_ln93_fu_1636_p1;
        trunc_ln94_reg_2273 <= trunc_ln94_fu_1690_p1;
        trunc_ln94_reg_2273_pp0_iter1_reg <= trunc_ln94_reg_2273;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln95_reg_2359_pp0_iter2_reg <= add_ln95_reg_2359_pp0_iter1_reg;
        add_ln95_reg_2359_pp0_iter3_reg <= add_ln95_reg_2359_pp0_iter2_reg;
        add_ln95_reg_2359_pp0_iter4_reg <= add_ln95_reg_2359_pp0_iter3_reg;
        add_ln95_reg_2359_pp0_iter5_reg <= add_ln95_reg_2359_pp0_iter4_reg;
        add_ln95_reg_2359_pp0_iter6_reg <= add_ln95_reg_2359_pp0_iter5_reg;
        add_ln95_reg_2359_pp0_iter7_reg <= add_ln95_reg_2359_pp0_iter6_reg;
        add_ln95_reg_2359_pp0_iter8_reg <= add_ln95_reg_2359_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_predicate_pred1134_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd28);
        ap_predicate_pred1147_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd26);
        ap_predicate_pred1160_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd24);
        ap_predicate_pred1173_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd22);
        ap_predicate_pred1186_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd20);
        ap_predicate_pred1199_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd18);
        ap_predicate_pred1212_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd16);
        ap_predicate_pred1225_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd14);
        ap_predicate_pred1238_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd12);
        ap_predicate_pred1251_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd10);
        ap_predicate_pred1264_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd8);
        ap_predicate_pred1277_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd6);
        ap_predicate_pred1290_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd4);
        ap_predicate_pred1303_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd2);
        ap_predicate_pred1316_state10 <= (trunc_ln94_reg_2273_pp0_iter7_reg == 5'd0);
        ap_predicate_pred1356_state10 <= (~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd0) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd2) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd4) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd6) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd8) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd10) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd12) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd14) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd16) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd18) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd20) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd22) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd24) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd26) & ~(trunc_ln94_reg_2273_pp0_iter7_reg == 5'd28));
        mul_1_i1_reg_2480 <= grp_fu_8437_p_dout0;
        mul_i4_reg_2460 <= grp_fu_6440_p_dout0;
        trunc_ln94_reg_2273_pp0_iter2_reg <= trunc_ln94_reg_2273_pp0_iter1_reg;
        trunc_ln94_reg_2273_pp0_iter3_reg <= trunc_ln94_reg_2273_pp0_iter2_reg;
        trunc_ln94_reg_2273_pp0_iter4_reg <= trunc_ln94_reg_2273_pp0_iter3_reg;
        trunc_ln94_reg_2273_pp0_iter5_reg <= trunc_ln94_reg_2273_pp0_iter4_reg;
        trunc_ln94_reg_2273_pp0_iter6_reg <= trunc_ln94_reg_2273_pp0_iter5_reg;
        trunc_ln94_reg_2273_pp0_iter7_reg <= trunc_ln94_reg_2273_pp0_iter6_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_10_ce0_local = 1'b1;
    end else begin
        activations1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_11_ce0_local = 1'b1;
    end else begin
        activations1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_12_ce0_local = 1'b1;
    end else begin
        activations1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_13_ce0_local = 1'b1;
    end else begin
        activations1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_14_ce0_local = 1'b1;
    end else begin
        activations1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_15_ce0_local = 1'b1;
    end else begin
        activations1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_16_ce0_local = 1'b1;
    end else begin
        activations1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_17_ce0_local = 1'b1;
    end else begin
        activations1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_18_ce0_local = 1'b1;
    end else begin
        activations1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_19_ce0_local = 1'b1;
    end else begin
        activations1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_1_ce0_local = 1'b1;
    end else begin
        activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_20_ce0_local = 1'b1;
    end else begin
        activations1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_21_ce0_local = 1'b1;
    end else begin
        activations1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_22_ce0_local = 1'b1;
    end else begin
        activations1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_23_ce0_local = 1'b1;
    end else begin
        activations1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_24_ce0_local = 1'b1;
    end else begin
        activations1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_25_ce0_local = 1'b1;
    end else begin
        activations1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_26_ce0_local = 1'b1;
    end else begin
        activations1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_27_ce0_local = 1'b1;
    end else begin
        activations1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_28_ce0_local = 1'b1;
    end else begin
        activations1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_29_ce0_local = 1'b1;
    end else begin
        activations1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_2_ce0_local = 1'b1;
    end else begin
        activations1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_30_ce0_local = 1'b1;
    end else begin
        activations1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_31_ce0_local = 1'b1;
    end else begin
        activations1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_3_ce0_local = 1'b1;
    end else begin
        activations1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_4_ce0_local = 1'b1;
    end else begin
        activations1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_5_ce0_local = 1'b1;
    end else begin
        activations1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_6_ce0_local = 1'b1;
    end else begin
        activations1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_7_ce0_local = 1'b1;
    end else begin
        activations1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_8_ce0_local = 1'b1;
    end else begin
        activations1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_9_ce0_local = 1'b1;
    end else begin
        activations1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln93_fu_1588_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_306;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12_load = indvar_flatten12_fu_310;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_302;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_10_ce0_local = 1'b1;
    end else begin
        delta_weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1251_state10 == 1'b1))) begin
        delta_weights2_10_we0_local = 1'b1;
    end else begin
        delta_weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_11_ce0_local = 1'b1;
    end else begin
        delta_weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1251_state10 == 1'b1))) begin
        delta_weights2_11_we0_local = 1'b1;
    end else begin
        delta_weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_12_ce0_local = 1'b1;
    end else begin
        delta_weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1238_state10 == 1'b1))) begin
        delta_weights2_12_we0_local = 1'b1;
    end else begin
        delta_weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_13_ce0_local = 1'b1;
    end else begin
        delta_weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1238_state10 == 1'b1))) begin
        delta_weights2_13_we0_local = 1'b1;
    end else begin
        delta_weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_14_ce0_local = 1'b1;
    end else begin
        delta_weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1225_state10 == 1'b1))) begin
        delta_weights2_14_we0_local = 1'b1;
    end else begin
        delta_weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_15_ce0_local = 1'b1;
    end else begin
        delta_weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1225_state10 == 1'b1))) begin
        delta_weights2_15_we0_local = 1'b1;
    end else begin
        delta_weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_16_ce0_local = 1'b1;
    end else begin
        delta_weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1212_state10 == 1'b1))) begin
        delta_weights2_16_we0_local = 1'b1;
    end else begin
        delta_weights2_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_17_ce0_local = 1'b1;
    end else begin
        delta_weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1212_state10 == 1'b1))) begin
        delta_weights2_17_we0_local = 1'b1;
    end else begin
        delta_weights2_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_18_ce0_local = 1'b1;
    end else begin
        delta_weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1199_state10 == 1'b1))) begin
        delta_weights2_18_we0_local = 1'b1;
    end else begin
        delta_weights2_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_19_ce0_local = 1'b1;
    end else begin
        delta_weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1199_state10 == 1'b1))) begin
        delta_weights2_19_we0_local = 1'b1;
    end else begin
        delta_weights2_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1316_state10 == 1'b1))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_20_ce0_local = 1'b1;
    end else begin
        delta_weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1186_state10 == 1'b1))) begin
        delta_weights2_20_we0_local = 1'b1;
    end else begin
        delta_weights2_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_21_ce0_local = 1'b1;
    end else begin
        delta_weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1186_state10 == 1'b1))) begin
        delta_weights2_21_we0_local = 1'b1;
    end else begin
        delta_weights2_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_22_ce0_local = 1'b1;
    end else begin
        delta_weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1173_state10 == 1'b1))) begin
        delta_weights2_22_we0_local = 1'b1;
    end else begin
        delta_weights2_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_23_ce0_local = 1'b1;
    end else begin
        delta_weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1173_state10 == 1'b1))) begin
        delta_weights2_23_we0_local = 1'b1;
    end else begin
        delta_weights2_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_24_ce0_local = 1'b1;
    end else begin
        delta_weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1160_state10 == 1'b1))) begin
        delta_weights2_24_we0_local = 1'b1;
    end else begin
        delta_weights2_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_25_ce0_local = 1'b1;
    end else begin
        delta_weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1160_state10 == 1'b1))) begin
        delta_weights2_25_we0_local = 1'b1;
    end else begin
        delta_weights2_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_26_ce0_local = 1'b1;
    end else begin
        delta_weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1147_state10 == 1'b1))) begin
        delta_weights2_26_we0_local = 1'b1;
    end else begin
        delta_weights2_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_27_ce0_local = 1'b1;
    end else begin
        delta_weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1147_state10 == 1'b1))) begin
        delta_weights2_27_we0_local = 1'b1;
    end else begin
        delta_weights2_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_28_ce0_local = 1'b1;
    end else begin
        delta_weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1134_state10 == 1'b1))) begin
        delta_weights2_28_we0_local = 1'b1;
    end else begin
        delta_weights2_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_29_ce0_local = 1'b1;
    end else begin
        delta_weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1134_state10 == 1'b1))) begin
        delta_weights2_29_we0_local = 1'b1;
    end else begin
        delta_weights2_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_2_ce0_local = 1'b1;
    end else begin
        delta_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1303_state10 == 1'b1))) begin
        delta_weights2_2_we0_local = 1'b1;
    end else begin
        delta_weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_30_ce0_local = 1'b1;
    end else begin
        delta_weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1356_state10 == 1'b1))) begin
        delta_weights2_30_we0_local = 1'b1;
    end else begin
        delta_weights2_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_31_ce0_local = 1'b1;
    end else begin
        delta_weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1356_state10 == 1'b1))) begin
        delta_weights2_31_we0_local = 1'b1;
    end else begin
        delta_weights2_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_3_ce0_local = 1'b1;
    end else begin
        delta_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1303_state10 == 1'b1))) begin
        delta_weights2_3_we0_local = 1'b1;
    end else begin
        delta_weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_4_ce0_local = 1'b1;
    end else begin
        delta_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1290_state10 == 1'b1))) begin
        delta_weights2_4_we0_local = 1'b1;
    end else begin
        delta_weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_5_ce0_local = 1'b1;
    end else begin
        delta_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1290_state10 == 1'b1))) begin
        delta_weights2_5_we0_local = 1'b1;
    end else begin
        delta_weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_6_ce0_local = 1'b1;
    end else begin
        delta_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1277_state10 == 1'b1))) begin
        delta_weights2_6_we0_local = 1'b1;
    end else begin
        delta_weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_7_ce0_local = 1'b1;
    end else begin
        delta_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1277_state10 == 1'b1))) begin
        delta_weights2_7_we0_local = 1'b1;
    end else begin
        delta_weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_8_ce0_local = 1'b1;
    end else begin
        delta_weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1264_state10 == 1'b1))) begin
        delta_weights2_8_we0_local = 1'b1;
    end else begin
        delta_weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_ce0_local = 1'b1;
    end else begin
        delta_weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1264_state10 == 1'b1))) begin
        delta_weights2_9_we0_local = 1'b1;
    end else begin
        delta_weights2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_ce0_local = 1'b1;
    end else begin
        delta_weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1316_state10 == 1'b1))) begin
        delta_weights2_we0_local = 1'b1;
    end else begin
        delta_weights2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_10_ce0_local = 1'b1;
    end else begin
        oracle_activations2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_11_ce0_local = 1'b1;
    end else begin
        oracle_activations2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_12_ce0_local = 1'b1;
    end else begin
        oracle_activations2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_13_ce0_local = 1'b1;
    end else begin
        oracle_activations2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_14_ce0_local = 1'b1;
    end else begin
        oracle_activations2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_15_ce0_local = 1'b1;
    end else begin
        oracle_activations2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_16_ce0_local = 1'b1;
    end else begin
        oracle_activations2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_17_ce0_local = 1'b1;
    end else begin
        oracle_activations2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_18_ce0_local = 1'b1;
    end else begin
        oracle_activations2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_19_ce0_local = 1'b1;
    end else begin
        oracle_activations2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_20_ce0_local = 1'b1;
    end else begin
        oracle_activations2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_21_ce0_local = 1'b1;
    end else begin
        oracle_activations2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_22_ce0_local = 1'b1;
    end else begin
        oracle_activations2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_23_ce0_local = 1'b1;
    end else begin
        oracle_activations2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_24_ce0_local = 1'b1;
    end else begin
        oracle_activations2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_25_ce0_local = 1'b1;
    end else begin
        oracle_activations2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_26_ce0_local = 1'b1;
    end else begin
        oracle_activations2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_27_ce0_local = 1'b1;
    end else begin
        oracle_activations2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_28_ce0_local = 1'b1;
    end else begin
        oracle_activations2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_29_ce0_local = 1'b1;
    end else begin
        oracle_activations2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_30_ce0_local = 1'b1;
    end else begin
        oracle_activations2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_31_ce0_local = 1'b1;
    end else begin
        oracle_activations2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_3_ce0_local = 1'b1;
    end else begin
        oracle_activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_4_ce0_local = 1'b1;
    end else begin
        oracle_activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_5_ce0_local = 1'b1;
    end else begin
        oracle_activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_6_ce0_local = 1'b1;
    end else begin
        oracle_activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_7_ce0_local = 1'b1;
    end else begin
        oracle_activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_8_ce0_local = 1'b1;
    end else begin
        oracle_activations2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_9_ce0_local = 1'b1;
    end else begin
        oracle_activations2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign activations1_10_address0 = zext_ln92_fu_1648_p1;
assign activations1_10_ce0 = activations1_10_ce0_local;
assign activations1_11_address0 = zext_ln92_fu_1648_p1;
assign activations1_11_ce0 = activations1_11_ce0_local;
assign activations1_12_address0 = zext_ln92_fu_1648_p1;
assign activations1_12_ce0 = activations1_12_ce0_local;
assign activations1_13_address0 = zext_ln92_fu_1648_p1;
assign activations1_13_ce0 = activations1_13_ce0_local;
assign activations1_14_address0 = zext_ln92_fu_1648_p1;
assign activations1_14_ce0 = activations1_14_ce0_local;
assign activations1_15_address0 = zext_ln92_fu_1648_p1;
assign activations1_15_ce0 = activations1_15_ce0_local;
assign activations1_16_address0 = zext_ln92_fu_1648_p1;
assign activations1_16_ce0 = activations1_16_ce0_local;
assign activations1_17_address0 = zext_ln92_fu_1648_p1;
assign activations1_17_ce0 = activations1_17_ce0_local;
assign activations1_18_address0 = zext_ln92_fu_1648_p1;
assign activations1_18_ce0 = activations1_18_ce0_local;
assign activations1_19_address0 = zext_ln92_fu_1648_p1;
assign activations1_19_ce0 = activations1_19_ce0_local;
assign activations1_1_address0 = zext_ln92_fu_1648_p1;
assign activations1_1_ce0 = activations1_1_ce0_local;
assign activations1_20_address0 = zext_ln92_fu_1648_p1;
assign activations1_20_ce0 = activations1_20_ce0_local;
assign activations1_21_address0 = zext_ln92_fu_1648_p1;
assign activations1_21_ce0 = activations1_21_ce0_local;
assign activations1_22_address0 = zext_ln92_fu_1648_p1;
assign activations1_22_ce0 = activations1_22_ce0_local;
assign activations1_23_address0 = zext_ln92_fu_1648_p1;
assign activations1_23_ce0 = activations1_23_ce0_local;
assign activations1_24_address0 = zext_ln92_fu_1648_p1;
assign activations1_24_ce0 = activations1_24_ce0_local;
assign activations1_25_address0 = zext_ln92_fu_1648_p1;
assign activations1_25_ce0 = activations1_25_ce0_local;
assign activations1_26_address0 = zext_ln92_fu_1648_p1;
assign activations1_26_ce0 = activations1_26_ce0_local;
assign activations1_27_address0 = zext_ln92_fu_1648_p1;
assign activations1_27_ce0 = activations1_27_ce0_local;
assign activations1_28_address0 = zext_ln92_fu_1648_p1;
assign activations1_28_ce0 = activations1_28_ce0_local;
assign activations1_29_address0 = zext_ln92_fu_1648_p1;
assign activations1_29_ce0 = activations1_29_ce0_local;
assign activations1_2_address0 = zext_ln92_fu_1648_p1;
assign activations1_2_ce0 = activations1_2_ce0_local;
assign activations1_30_address0 = zext_ln92_fu_1648_p1;
assign activations1_30_ce0 = activations1_30_ce0_local;
assign activations1_31_address0 = zext_ln92_fu_1648_p1;
assign activations1_31_ce0 = activations1_31_ce0_local;
assign activations1_3_address0 = zext_ln92_fu_1648_p1;
assign activations1_3_ce0 = activations1_3_ce0_local;
assign activations1_4_address0 = zext_ln92_fu_1648_p1;
assign activations1_4_ce0 = activations1_4_ce0_local;
assign activations1_5_address0 = zext_ln92_fu_1648_p1;
assign activations1_5_ce0 = activations1_5_ce0_local;
assign activations1_6_address0 = zext_ln92_fu_1648_p1;
assign activations1_6_ce0 = activations1_6_ce0_local;
assign activations1_7_address0 = zext_ln92_fu_1648_p1;
assign activations1_7_ce0 = activations1_7_ce0_local;
assign activations1_8_address0 = zext_ln92_fu_1648_p1;
assign activations1_8_ce0 = activations1_8_ce0_local;
assign activations1_9_address0 = zext_ln92_fu_1648_p1;
assign activations1_9_ce0 = activations1_9_ce0_local;
assign activations1_address0 = zext_ln92_fu_1648_p1;
assign activations1_ce0 = activations1_ce0_local;
assign add_ln93_1_fu_1622_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln93_fu_1594_p2 = (ap_sig_allocacmp_indvar_flatten12_load + 12'd1);
assign add_ln94_fu_1750_p2 = (select_ln92_fu_1614_p3 + 7'd2);
assign add_ln95_fu_1744_p2 = (zext_ln92_2_fu_1704_p1 + empty_fu_1684_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights2_10_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_10_ce0 = delta_weights2_10_ce0_local;
assign delta_weights2_10_d0 = mul_i4_reg_2460;
assign delta_weights2_10_we0 = delta_weights2_10_we0_local;
assign delta_weights2_11_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_11_ce0 = delta_weights2_11_ce0_local;
assign delta_weights2_11_d0 = mul_1_i1_reg_2480;
assign delta_weights2_11_we0 = delta_weights2_11_we0_local;
assign delta_weights2_12_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_12_ce0 = delta_weights2_12_ce0_local;
assign delta_weights2_12_d0 = mul_i4_reg_2460;
assign delta_weights2_12_we0 = delta_weights2_12_we0_local;
assign delta_weights2_13_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_13_ce0 = delta_weights2_13_ce0_local;
assign delta_weights2_13_d0 = mul_1_i1_reg_2480;
assign delta_weights2_13_we0 = delta_weights2_13_we0_local;
assign delta_weights2_14_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_14_ce0 = delta_weights2_14_ce0_local;
assign delta_weights2_14_d0 = mul_i4_reg_2460;
assign delta_weights2_14_we0 = delta_weights2_14_we0_local;
assign delta_weights2_15_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_15_ce0 = delta_weights2_15_ce0_local;
assign delta_weights2_15_d0 = mul_1_i1_reg_2480;
assign delta_weights2_15_we0 = delta_weights2_15_we0_local;
assign delta_weights2_16_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_16_ce0 = delta_weights2_16_ce0_local;
assign delta_weights2_16_d0 = mul_i4_reg_2460;
assign delta_weights2_16_we0 = delta_weights2_16_we0_local;
assign delta_weights2_17_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_17_ce0 = delta_weights2_17_ce0_local;
assign delta_weights2_17_d0 = mul_1_i1_reg_2480;
assign delta_weights2_17_we0 = delta_weights2_17_we0_local;
assign delta_weights2_18_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_18_ce0 = delta_weights2_18_ce0_local;
assign delta_weights2_18_d0 = mul_i4_reg_2460;
assign delta_weights2_18_we0 = delta_weights2_18_we0_local;
assign delta_weights2_19_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_19_ce0 = delta_weights2_19_ce0_local;
assign delta_weights2_19_d0 = mul_1_i1_reg_2480;
assign delta_weights2_19_we0 = delta_weights2_19_we0_local;
assign delta_weights2_1_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_d0 = mul_1_i1_reg_2480;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_20_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_20_ce0 = delta_weights2_20_ce0_local;
assign delta_weights2_20_d0 = mul_i4_reg_2460;
assign delta_weights2_20_we0 = delta_weights2_20_we0_local;
assign delta_weights2_21_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_21_ce0 = delta_weights2_21_ce0_local;
assign delta_weights2_21_d0 = mul_1_i1_reg_2480;
assign delta_weights2_21_we0 = delta_weights2_21_we0_local;
assign delta_weights2_22_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_22_ce0 = delta_weights2_22_ce0_local;
assign delta_weights2_22_d0 = mul_i4_reg_2460;
assign delta_weights2_22_we0 = delta_weights2_22_we0_local;
assign delta_weights2_23_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_23_ce0 = delta_weights2_23_ce0_local;
assign delta_weights2_23_d0 = mul_1_i1_reg_2480;
assign delta_weights2_23_we0 = delta_weights2_23_we0_local;
assign delta_weights2_24_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_24_ce0 = delta_weights2_24_ce0_local;
assign delta_weights2_24_d0 = mul_i4_reg_2460;
assign delta_weights2_24_we0 = delta_weights2_24_we0_local;
assign delta_weights2_25_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_25_ce0 = delta_weights2_25_ce0_local;
assign delta_weights2_25_d0 = mul_1_i1_reg_2480;
assign delta_weights2_25_we0 = delta_weights2_25_we0_local;
assign delta_weights2_26_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_26_ce0 = delta_weights2_26_ce0_local;
assign delta_weights2_26_d0 = mul_i4_reg_2460;
assign delta_weights2_26_we0 = delta_weights2_26_we0_local;
assign delta_weights2_27_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_27_ce0 = delta_weights2_27_ce0_local;
assign delta_weights2_27_d0 = mul_1_i1_reg_2480;
assign delta_weights2_27_we0 = delta_weights2_27_we0_local;
assign delta_weights2_28_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_28_ce0 = delta_weights2_28_ce0_local;
assign delta_weights2_28_d0 = mul_i4_reg_2460;
assign delta_weights2_28_we0 = delta_weights2_28_we0_local;
assign delta_weights2_29_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_29_ce0 = delta_weights2_29_ce0_local;
assign delta_weights2_29_d0 = mul_1_i1_reg_2480;
assign delta_weights2_29_we0 = delta_weights2_29_we0_local;
assign delta_weights2_2_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_2_ce0 = delta_weights2_2_ce0_local;
assign delta_weights2_2_d0 = mul_i4_reg_2460;
assign delta_weights2_2_we0 = delta_weights2_2_we0_local;
assign delta_weights2_30_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_30_ce0 = delta_weights2_30_ce0_local;
assign delta_weights2_30_d0 = mul_i4_reg_2460;
assign delta_weights2_30_we0 = delta_weights2_30_we0_local;
assign delta_weights2_31_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_31_ce0 = delta_weights2_31_ce0_local;
assign delta_weights2_31_d0 = mul_1_i1_reg_2480;
assign delta_weights2_31_we0 = delta_weights2_31_we0_local;
assign delta_weights2_3_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_3_ce0 = delta_weights2_3_ce0_local;
assign delta_weights2_3_d0 = mul_1_i1_reg_2480;
assign delta_weights2_3_we0 = delta_weights2_3_we0_local;
assign delta_weights2_4_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_4_ce0 = delta_weights2_4_ce0_local;
assign delta_weights2_4_d0 = mul_i4_reg_2460;
assign delta_weights2_4_we0 = delta_weights2_4_we0_local;
assign delta_weights2_5_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_5_ce0 = delta_weights2_5_ce0_local;
assign delta_weights2_5_d0 = mul_1_i1_reg_2480;
assign delta_weights2_5_we0 = delta_weights2_5_we0_local;
assign delta_weights2_6_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_6_ce0 = delta_weights2_6_ce0_local;
assign delta_weights2_6_d0 = mul_i4_reg_2460;
assign delta_weights2_6_we0 = delta_weights2_6_we0_local;
assign delta_weights2_7_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_7_ce0 = delta_weights2_7_ce0_local;
assign delta_weights2_7_d0 = mul_1_i1_reg_2480;
assign delta_weights2_7_we0 = delta_weights2_7_we0_local;
assign delta_weights2_8_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_8_ce0 = delta_weights2_8_ce0_local;
assign delta_weights2_8_d0 = mul_i4_reg_2460;
assign delta_weights2_8_we0 = delta_weights2_8_we0_local;
assign delta_weights2_9_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_9_ce0 = delta_weights2_9_ce0_local;
assign delta_weights2_9_d0 = mul_1_i1_reg_2480;
assign delta_weights2_9_we0 = delta_weights2_9_we0_local;
assign delta_weights2_address0 = zext_ln95_fu_2048_p1;
assign delta_weights2_ce0 = delta_weights2_ce0_local;
assign delta_weights2_d0 = mul_i4_reg_2460;
assign delta_weights2_we0 = delta_weights2_we0_local;
assign empty_fu_1684_p2 = select_ln93_fu_1628_p3 << 7'd1;
assign grp_fu_6440_p_ce = 1'b1;
assign grp_fu_6440_p_din0 = tmp_s_reg_2444;
assign grp_fu_6440_p_din1 = tmp_158_reg_2450;
assign grp_fu_8437_p_ce = 1'b1;
assign grp_fu_8437_p_din0 = tmp_s_reg_2444;
assign grp_fu_8437_p_din1 = tmp_159_reg_2455;
assign icmp_ln93_fu_1588_p2 = ((ap_sig_allocacmp_indvar_flatten12_load == 12'd2048) ? 1'b1 : 1'b0);
assign lshr_ln92_1_fu_1694_p4 = {{select_ln92_fu_1614_p3[6:5]}};
assign oracle_activations2_10_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_10_ce0 = oracle_activations2_10_ce0_local;
assign oracle_activations2_11_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_11_ce0 = oracle_activations2_11_ce0_local;
assign oracle_activations2_12_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_12_ce0 = oracle_activations2_12_ce0_local;
assign oracle_activations2_13_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_13_ce0 = oracle_activations2_13_ce0_local;
assign oracle_activations2_14_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_14_ce0 = oracle_activations2_14_ce0_local;
assign oracle_activations2_15_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_15_ce0 = oracle_activations2_15_ce0_local;
assign oracle_activations2_16_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_16_ce0 = oracle_activations2_16_ce0_local;
assign oracle_activations2_17_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_17_ce0 = oracle_activations2_17_ce0_local;
assign oracle_activations2_18_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_18_ce0 = oracle_activations2_18_ce0_local;
assign oracle_activations2_19_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_19_ce0 = oracle_activations2_19_ce0_local;
assign oracle_activations2_1_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_20_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_20_ce0 = oracle_activations2_20_ce0_local;
assign oracle_activations2_21_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_21_ce0 = oracle_activations2_21_ce0_local;
assign oracle_activations2_22_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_22_ce0 = oracle_activations2_22_ce0_local;
assign oracle_activations2_23_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_23_ce0 = oracle_activations2_23_ce0_local;
assign oracle_activations2_24_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_24_ce0 = oracle_activations2_24_ce0_local;
assign oracle_activations2_25_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_25_ce0 = oracle_activations2_25_ce0_local;
assign oracle_activations2_26_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_26_ce0 = oracle_activations2_26_ce0_local;
assign oracle_activations2_27_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_27_ce0 = oracle_activations2_27_ce0_local;
assign oracle_activations2_28_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_28_ce0 = oracle_activations2_28_ce0_local;
assign oracle_activations2_29_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_29_ce0 = oracle_activations2_29_ce0_local;
assign oracle_activations2_2_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_2_ce0 = oracle_activations2_2_ce0_local;
assign oracle_activations2_30_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_30_ce0 = oracle_activations2_30_ce0_local;
assign oracle_activations2_31_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_31_ce0 = oracle_activations2_31_ce0_local;
assign oracle_activations2_3_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_3_ce0 = oracle_activations2_3_ce0_local;
assign oracle_activations2_4_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_4_ce0 = oracle_activations2_4_ce0_local;
assign oracle_activations2_5_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_5_ce0 = oracle_activations2_5_ce0_local;
assign oracle_activations2_6_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_6_ce0 = oracle_activations2_6_ce0_local;
assign oracle_activations2_7_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_7_ce0 = oracle_activations2_7_ce0_local;
assign oracle_activations2_8_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_8_ce0 = oracle_activations2_8_ce0_local;
assign oracle_activations2_9_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_9_ce0 = oracle_activations2_9_ce0_local;
assign oracle_activations2_address0 = zext_ln92_1_fu_1708_p1;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign select_ln92_fu_1614_p3 = ((tmp_fu_1606_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln93_fu_1628_p3 = ((tmp_fu_1606_p3[0:0] == 1'b1) ? add_ln93_1_fu_1622_p2 : ap_sig_allocacmp_i_load);
assign tmp_158_fu_1906_p33 = 'bx;
assign tmp_159_fu_1977_p33 = 'bx;
assign tmp_38_fu_1640_p3 = select_ln93_fu_1628_p3[32'd5];
assign tmp_fu_1606_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_1771_p65 = 'bx;
assign trunc_ln93_fu_1636_p1 = select_ln93_fu_1628_p3[4:0];
assign trunc_ln94_fu_1690_p1 = select_ln92_fu_1614_p3[4:0];
assign zext_ln92_1_fu_1708_p1 = lshr_ln92_1_fu_1694_p4;
assign zext_ln92_2_fu_1704_p1 = lshr_ln92_1_fu_1694_p4;
assign zext_ln92_fu_1648_p1 = tmp_38_fu_1640_p3;
assign zext_ln95_fu_2048_p1 = add_ln95_reg_2359_pp0_iter8_reg;
endmodule 