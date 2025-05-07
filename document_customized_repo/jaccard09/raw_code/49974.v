module backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul40,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,training_data_8_address0,training_data_8_ce0,training_data_8_q0,training_data_9_address0,training_data_9_ce0,training_data_9_q0,training_data_10_address0,training_data_10_ce0,training_data_10_q0,training_data_11_address0,training_data_11_ce0,training_data_11_q0,training_data_12_address0,training_data_12_ce0,training_data_12_q0,training_data_13_address0,training_data_13_ce0,training_data_13_q0,training_data_14_address0,training_data_14_ce0,training_data_14_q0,training_data_15_address0,training_data_15_ce0,training_data_15_q0,training_data_16_address0,training_data_16_ce0,training_data_16_q0,training_data_17_address0,training_data_17_ce0,training_data_17_q0,training_data_18_address0,training_data_18_ce0,training_data_18_q0,training_data_19_address0,training_data_19_ce0,training_data_19_q0,training_data_20_address0,training_data_20_ce0,training_data_20_q0,training_data_21_address0,training_data_21_ce0,training_data_21_q0,training_data_22_address0,training_data_22_ce0,training_data_22_q0,training_data_23_address0,training_data_23_ce0,training_data_23_q0,training_data_24_address0,training_data_24_ce0,training_data_24_q0,training_data_25_address0,training_data_25_ce0,training_data_25_q0,training_data_26_address0,training_data_26_ce0,training_data_26_q0,training_data_27_address0,training_data_27_ce0,training_data_27_q0,training_data_28_address0,training_data_28_ce0,training_data_28_q0,training_data_29_address0,training_data_29_ce0,training_data_29_q0,training_data_30_address0,training_data_30_ce0,training_data_30_q0,training_data_31_address0,training_data_31_ce0,training_data_31_q0,delta_weights1_31_address0,delta_weights1_31_ce0,delta_weights1_31_we0,delta_weights1_31_d0,delta_weights1_30_address0,delta_weights1_30_ce0,delta_weights1_30_we0,delta_weights1_30_d0,delta_weights1_29_address0,delta_weights1_29_ce0,delta_weights1_29_we0,delta_weights1_29_d0,delta_weights1_28_address0,delta_weights1_28_ce0,delta_weights1_28_we0,delta_weights1_28_d0,delta_weights1_27_address0,delta_weights1_27_ce0,delta_weights1_27_we0,delta_weights1_27_d0,delta_weights1_26_address0,delta_weights1_26_ce0,delta_weights1_26_we0,delta_weights1_26_d0,delta_weights1_25_address0,delta_weights1_25_ce0,delta_weights1_25_we0,delta_weights1_25_d0,delta_weights1_24_address0,delta_weights1_24_ce0,delta_weights1_24_we0,delta_weights1_24_d0,delta_weights1_23_address0,delta_weights1_23_ce0,delta_weights1_23_we0,delta_weights1_23_d0,delta_weights1_22_address0,delta_weights1_22_ce0,delta_weights1_22_we0,delta_weights1_22_d0,delta_weights1_21_address0,delta_weights1_21_ce0,delta_weights1_21_we0,delta_weights1_21_d0,delta_weights1_20_address0,delta_weights1_20_ce0,delta_weights1_20_we0,delta_weights1_20_d0,delta_weights1_19_address0,delta_weights1_19_ce0,delta_weights1_19_we0,delta_weights1_19_d0,delta_weights1_18_address0,delta_weights1_18_ce0,delta_weights1_18_we0,delta_weights1_18_d0,delta_weights1_17_address0,delta_weights1_17_ce0,delta_weights1_17_we0,delta_weights1_17_d0,delta_weights1_16_address0,delta_weights1_16_ce0,delta_weights1_16_we0,delta_weights1_16_d0,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_address0,delta_weights1_ce0,delta_weights1_we0,delta_weights1_d0,oracle_activations1_address0,oracle_activations1_ce0,oracle_activations1_q0,oracle_activations1_1_address0,oracle_activations1_1_ce0,oracle_activations1_1_q0,oracle_activations1_2_address0,oracle_activations1_2_ce0,oracle_activations1_2_q0,oracle_activations1_3_address0,oracle_activations1_3_ce0,oracle_activations1_3_q0,oracle_activations1_4_address0,oracle_activations1_4_ce0,oracle_activations1_4_q0,oracle_activations1_5_address0,oracle_activations1_5_ce0,oracle_activations1_5_q0,oracle_activations1_6_address0,oracle_activations1_6_ce0,oracle_activations1_6_q0,oracle_activations1_7_address0,oracle_activations1_7_ce0,oracle_activations1_7_q0,oracle_activations1_8_address0,oracle_activations1_8_ce0,oracle_activations1_8_q0,oracle_activations1_9_address0,oracle_activations1_9_ce0,oracle_activations1_9_q0,oracle_activations1_10_address0,oracle_activations1_10_ce0,oracle_activations1_10_q0,oracle_activations1_11_address0,oracle_activations1_11_ce0,oracle_activations1_11_q0,oracle_activations1_12_address0,oracle_activations1_12_ce0,oracle_activations1_12_q0,oracle_activations1_13_address0,oracle_activations1_13_ce0,oracle_activations1_13_q0,oracle_activations1_14_address0,oracle_activations1_14_ce0,oracle_activations1_14_q0,oracle_activations1_15_address0,oracle_activations1_15_ce0,oracle_activations1_15_q0,oracle_activations1_16_address0,oracle_activations1_16_ce0,oracle_activations1_16_q0,oracle_activations1_17_address0,oracle_activations1_17_ce0,oracle_activations1_17_q0,oracle_activations1_18_address0,oracle_activations1_18_ce0,oracle_activations1_18_q0,oracle_activations1_19_address0,oracle_activations1_19_ce0,oracle_activations1_19_q0,oracle_activations1_20_address0,oracle_activations1_20_ce0,oracle_activations1_20_q0,oracle_activations1_21_address0,oracle_activations1_21_ce0,oracle_activations1_21_q0,oracle_activations1_22_address0,oracle_activations1_22_ce0,oracle_activations1_22_q0,oracle_activations1_23_address0,oracle_activations1_23_ce0,oracle_activations1_23_q0,oracle_activations1_24_address0,oracle_activations1_24_ce0,oracle_activations1_24_q0,oracle_activations1_25_address0,oracle_activations1_25_ce0,oracle_activations1_25_q0,oracle_activations1_26_address0,oracle_activations1_26_ce0,oracle_activations1_26_q0,oracle_activations1_27_address0,oracle_activations1_27_ce0,oracle_activations1_27_q0,oracle_activations1_28_address0,oracle_activations1_28_ce0,oracle_activations1_28_q0,oracle_activations1_29_address0,oracle_activations1_29_ce0,oracle_activations1_29_q0,oracle_activations1_30_address0,oracle_activations1_30_ce0,oracle_activations1_30_q0,oracle_activations1_31_address0,oracle_activations1_31_ce0,oracle_activations1_31_q0,grp_fu_21302_p_din0,grp_fu_21302_p_din1,grp_fu_21302_p_dout0,grp_fu_21302_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul40;
output  [6:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [6:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [6:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [6:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [6:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [6:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [6:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [6:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
output  [6:0] training_data_8_address0;
output   training_data_8_ce0;
input  [63:0] training_data_8_q0;
output  [6:0] training_data_9_address0;
output   training_data_9_ce0;
input  [63:0] training_data_9_q0;
output  [6:0] training_data_10_address0;
output   training_data_10_ce0;
input  [63:0] training_data_10_q0;
output  [6:0] training_data_11_address0;
output   training_data_11_ce0;
input  [63:0] training_data_11_q0;
output  [6:0] training_data_12_address0;
output   training_data_12_ce0;
input  [63:0] training_data_12_q0;
output  [6:0] training_data_13_address0;
output   training_data_13_ce0;
input  [63:0] training_data_13_q0;
output  [6:0] training_data_14_address0;
output   training_data_14_ce0;
input  [63:0] training_data_14_q0;
output  [6:0] training_data_15_address0;
output   training_data_15_ce0;
input  [63:0] training_data_15_q0;
output  [6:0] training_data_16_address0;
output   training_data_16_ce0;
input  [63:0] training_data_16_q0;
output  [6:0] training_data_17_address0;
output   training_data_17_ce0;
input  [63:0] training_data_17_q0;
output  [6:0] training_data_18_address0;
output   training_data_18_ce0;
input  [63:0] training_data_18_q0;
output  [6:0] training_data_19_address0;
output   training_data_19_ce0;
input  [63:0] training_data_19_q0;
output  [6:0] training_data_20_address0;
output   training_data_20_ce0;
input  [63:0] training_data_20_q0;
output  [6:0] training_data_21_address0;
output   training_data_21_ce0;
input  [63:0] training_data_21_q0;
output  [6:0] training_data_22_address0;
output   training_data_22_ce0;
input  [63:0] training_data_22_q0;
output  [6:0] training_data_23_address0;
output   training_data_23_ce0;
input  [63:0] training_data_23_q0;
output  [6:0] training_data_24_address0;
output   training_data_24_ce0;
input  [63:0] training_data_24_q0;
output  [6:0] training_data_25_address0;
output   training_data_25_ce0;
input  [63:0] training_data_25_q0;
output  [6:0] training_data_26_address0;
output   training_data_26_ce0;
input  [63:0] training_data_26_q0;
output  [6:0] training_data_27_address0;
output   training_data_27_ce0;
input  [63:0] training_data_27_q0;
output  [6:0] training_data_28_address0;
output   training_data_28_ce0;
input  [63:0] training_data_28_q0;
output  [6:0] training_data_29_address0;
output   training_data_29_ce0;
input  [63:0] training_data_29_q0;
output  [6:0] training_data_30_address0;
output   training_data_30_ce0;
input  [63:0] training_data_30_q0;
output  [6:0] training_data_31_address0;
output   training_data_31_ce0;
input  [63:0] training_data_31_q0;
output  [4:0] delta_weights1_31_address0;
output   delta_weights1_31_ce0;
output   delta_weights1_31_we0;
output  [63:0] delta_weights1_31_d0;
output  [4:0] delta_weights1_30_address0;
output   delta_weights1_30_ce0;
output   delta_weights1_30_we0;
output  [63:0] delta_weights1_30_d0;
output  [4:0] delta_weights1_29_address0;
output   delta_weights1_29_ce0;
output   delta_weights1_29_we0;
output  [63:0] delta_weights1_29_d0;
output  [4:0] delta_weights1_28_address0;
output   delta_weights1_28_ce0;
output   delta_weights1_28_we0;
output  [63:0] delta_weights1_28_d0;
output  [4:0] delta_weights1_27_address0;
output   delta_weights1_27_ce0;
output   delta_weights1_27_we0;
output  [63:0] delta_weights1_27_d0;
output  [4:0] delta_weights1_26_address0;
output   delta_weights1_26_ce0;
output   delta_weights1_26_we0;
output  [63:0] delta_weights1_26_d0;
output  [4:0] delta_weights1_25_address0;
output   delta_weights1_25_ce0;
output   delta_weights1_25_we0;
output  [63:0] delta_weights1_25_d0;
output  [4:0] delta_weights1_24_address0;
output   delta_weights1_24_ce0;
output   delta_weights1_24_we0;
output  [63:0] delta_weights1_24_d0;
output  [4:0] delta_weights1_23_address0;
output   delta_weights1_23_ce0;
output   delta_weights1_23_we0;
output  [63:0] delta_weights1_23_d0;
output  [4:0] delta_weights1_22_address0;
output   delta_weights1_22_ce0;
output   delta_weights1_22_we0;
output  [63:0] delta_weights1_22_d0;
output  [4:0] delta_weights1_21_address0;
output   delta_weights1_21_ce0;
output   delta_weights1_21_we0;
output  [63:0] delta_weights1_21_d0;
output  [4:0] delta_weights1_20_address0;
output   delta_weights1_20_ce0;
output   delta_weights1_20_we0;
output  [63:0] delta_weights1_20_d0;
output  [4:0] delta_weights1_19_address0;
output   delta_weights1_19_ce0;
output   delta_weights1_19_we0;
output  [63:0] delta_weights1_19_d0;
output  [4:0] delta_weights1_18_address0;
output   delta_weights1_18_ce0;
output   delta_weights1_18_we0;
output  [63:0] delta_weights1_18_d0;
output  [4:0] delta_weights1_17_address0;
output   delta_weights1_17_ce0;
output   delta_weights1_17_we0;
output  [63:0] delta_weights1_17_d0;
output  [4:0] delta_weights1_16_address0;
output   delta_weights1_16_ce0;
output   delta_weights1_16_we0;
output  [63:0] delta_weights1_16_d0;
output  [4:0] delta_weights1_15_address0;
output   delta_weights1_15_ce0;
output   delta_weights1_15_we0;
output  [63:0] delta_weights1_15_d0;
output  [4:0] delta_weights1_14_address0;
output   delta_weights1_14_ce0;
output   delta_weights1_14_we0;
output  [63:0] delta_weights1_14_d0;
output  [4:0] delta_weights1_13_address0;
output   delta_weights1_13_ce0;
output   delta_weights1_13_we0;
output  [63:0] delta_weights1_13_d0;
output  [4:0] delta_weights1_12_address0;
output   delta_weights1_12_ce0;
output   delta_weights1_12_we0;
output  [63:0] delta_weights1_12_d0;
output  [4:0] delta_weights1_11_address0;
output   delta_weights1_11_ce0;
output   delta_weights1_11_we0;
output  [63:0] delta_weights1_11_d0;
output  [4:0] delta_weights1_10_address0;
output   delta_weights1_10_ce0;
output   delta_weights1_10_we0;
output  [63:0] delta_weights1_10_d0;
output  [4:0] delta_weights1_9_address0;
output   delta_weights1_9_ce0;
output   delta_weights1_9_we0;
output  [63:0] delta_weights1_9_d0;
output  [4:0] delta_weights1_8_address0;
output   delta_weights1_8_ce0;
output   delta_weights1_8_we0;
output  [63:0] delta_weights1_8_d0;
output  [4:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [4:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [4:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [4:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [4:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [4:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [4:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [4:0] delta_weights1_address0;
output   delta_weights1_ce0;
output   delta_weights1_we0;
output  [63:0] delta_weights1_d0;
output  [0:0] oracle_activations1_address0;
output   oracle_activations1_ce0;
input  [63:0] oracle_activations1_q0;
output  [0:0] oracle_activations1_1_address0;
output   oracle_activations1_1_ce0;
input  [63:0] oracle_activations1_1_q0;
output  [0:0] oracle_activations1_2_address0;
output   oracle_activations1_2_ce0;
input  [63:0] oracle_activations1_2_q0;
output  [0:0] oracle_activations1_3_address0;
output   oracle_activations1_3_ce0;
input  [63:0] oracle_activations1_3_q0;
output  [0:0] oracle_activations1_4_address0;
output   oracle_activations1_4_ce0;
input  [63:0] oracle_activations1_4_q0;
output  [0:0] oracle_activations1_5_address0;
output   oracle_activations1_5_ce0;
input  [63:0] oracle_activations1_5_q0;
output  [0:0] oracle_activations1_6_address0;
output   oracle_activations1_6_ce0;
input  [63:0] oracle_activations1_6_q0;
output  [0:0] oracle_activations1_7_address0;
output   oracle_activations1_7_ce0;
input  [63:0] oracle_activations1_7_q0;
output  [0:0] oracle_activations1_8_address0;
output   oracle_activations1_8_ce0;
input  [63:0] oracle_activations1_8_q0;
output  [0:0] oracle_activations1_9_address0;
output   oracle_activations1_9_ce0;
input  [63:0] oracle_activations1_9_q0;
output  [0:0] oracle_activations1_10_address0;
output   oracle_activations1_10_ce0;
input  [63:0] oracle_activations1_10_q0;
output  [0:0] oracle_activations1_11_address0;
output   oracle_activations1_11_ce0;
input  [63:0] oracle_activations1_11_q0;
output  [0:0] oracle_activations1_12_address0;
output   oracle_activations1_12_ce0;
input  [63:0] oracle_activations1_12_q0;
output  [0:0] oracle_activations1_13_address0;
output   oracle_activations1_13_ce0;
input  [63:0] oracle_activations1_13_q0;
output  [0:0] oracle_activations1_14_address0;
output   oracle_activations1_14_ce0;
input  [63:0] oracle_activations1_14_q0;
output  [0:0] oracle_activations1_15_address0;
output   oracle_activations1_15_ce0;
input  [63:0] oracle_activations1_15_q0;
output  [0:0] oracle_activations1_16_address0;
output   oracle_activations1_16_ce0;
input  [63:0] oracle_activations1_16_q0;
output  [0:0] oracle_activations1_17_address0;
output   oracle_activations1_17_ce0;
input  [63:0] oracle_activations1_17_q0;
output  [0:0] oracle_activations1_18_address0;
output   oracle_activations1_18_ce0;
input  [63:0] oracle_activations1_18_q0;
output  [0:0] oracle_activations1_19_address0;
output   oracle_activations1_19_ce0;
input  [63:0] oracle_activations1_19_q0;
output  [0:0] oracle_activations1_20_address0;
output   oracle_activations1_20_ce0;
input  [63:0] oracle_activations1_20_q0;
output  [0:0] oracle_activations1_21_address0;
output   oracle_activations1_21_ce0;
input  [63:0] oracle_activations1_21_q0;
output  [0:0] oracle_activations1_22_address0;
output   oracle_activations1_22_ce0;
input  [63:0] oracle_activations1_22_q0;
output  [0:0] oracle_activations1_23_address0;
output   oracle_activations1_23_ce0;
input  [63:0] oracle_activations1_23_q0;
output  [0:0] oracle_activations1_24_address0;
output   oracle_activations1_24_ce0;
input  [63:0] oracle_activations1_24_q0;
output  [0:0] oracle_activations1_25_address0;
output   oracle_activations1_25_ce0;
input  [63:0] oracle_activations1_25_q0;
output  [0:0] oracle_activations1_26_address0;
output   oracle_activations1_26_ce0;
input  [63:0] oracle_activations1_26_q0;
output  [0:0] oracle_activations1_27_address0;
output   oracle_activations1_27_ce0;
input  [63:0] oracle_activations1_27_q0;
output  [0:0] oracle_activations1_28_address0;
output   oracle_activations1_28_ce0;
input  [63:0] oracle_activations1_28_q0;
output  [0:0] oracle_activations1_29_address0;
output   oracle_activations1_29_ce0;
input  [63:0] oracle_activations1_29_q0;
output  [0:0] oracle_activations1_30_address0;
output   oracle_activations1_30_ce0;
input  [63:0] oracle_activations1_30_q0;
output  [0:0] oracle_activations1_31_address0;
output   oracle_activations1_31_ce0;
input  [63:0] oracle_activations1_31_q0;
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
reg    ap_enable_reg_pp0_iter11;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln113_fu_1602_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln113_fu_1645_p3;
reg   [3:0] select_ln113_reg_2244;
reg   [3:0] select_ln113_reg_2244_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_2244_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_2244_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_2244_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_2244_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_2244_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_2244_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_2244_pp0_iter9_reg;
reg   [3:0] select_ln113_reg_2244_pp0_iter10_reg;
wire   [4:0] trunc_ln114_fu_1653_p1;
reg   [4:0] trunc_ln114_reg_2250;
reg   [4:0] trunc_ln114_reg_2250_pp0_iter2_reg;
reg   [4:0] trunc_ln114_reg_2250_pp0_iter3_reg;
reg   [4:0] trunc_ln114_reg_2250_pp0_iter4_reg;
reg   [4:0] trunc_ln114_reg_2250_pp0_iter5_reg;
reg   [4:0] trunc_ln114_reg_2250_pp0_iter6_reg;
reg   [4:0] trunc_ln114_reg_2250_pp0_iter7_reg;
reg   [4:0] trunc_ln114_reg_2250_pp0_iter8_reg;
reg   [4:0] trunc_ln114_reg_2250_pp0_iter9_reg;
reg   [0:0] tmp_reg_2255;
reg   [0:0] tmp_reg_2255_pp0_iter2_reg;
reg   [0:0] tmp_reg_2255_pp0_iter3_reg;
reg   [0:0] tmp_reg_2255_pp0_iter4_reg;
reg   [0:0] tmp_reg_2255_pp0_iter5_reg;
reg   [0:0] tmp_reg_2255_pp0_iter6_reg;
reg   [0:0] tmp_reg_2255_pp0_iter7_reg;
reg   [0:0] tmp_reg_2255_pp0_iter8_reg;
reg   [0:0] tmp_reg_2255_pp0_iter9_reg;
reg   [0:0] tmp_reg_2255_pp0_iter10_reg;
wire   [4:0] empty_fu_1689_p1;
reg   [4:0] empty_reg_2261;
wire   [63:0] tmp_84_fu_1902_p67;
reg   [63:0] tmp_84_reg_2586;
wire   [63:0] tmp_85_fu_2037_p67;
reg   [63:0] tmp_85_reg_2591;
reg   [63:0] mul_i5_reg_2596;
wire   [63:0] p_cast32_fu_1703_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln112_fu_1739_p1;
wire   [63:0] zext_ln115_fu_2178_p1;
reg   [6:0] j_fu_314;
wire   [6:0] add_ln114_fu_1665_p2;
wire    ap_loop_init;
reg   [3:0] i_fu_318;
reg   [9:0] indvar_flatten13_fu_322;
wire   [9:0] add_ln113_fu_1608_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten13_load;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    training_data_2_ce0_local;
reg    training_data_3_ce0_local;
reg    training_data_4_ce0_local;
reg    training_data_5_ce0_local;
reg    training_data_6_ce0_local;
reg    training_data_7_ce0_local;
reg    training_data_8_ce0_local;
reg    training_data_9_ce0_local;
reg    training_data_10_ce0_local;
reg    training_data_11_ce0_local;
reg    training_data_12_ce0_local;
reg    training_data_13_ce0_local;
reg    training_data_14_ce0_local;
reg    training_data_15_ce0_local;
reg    training_data_16_ce0_local;
reg    training_data_17_ce0_local;
reg    training_data_18_ce0_local;
reg    training_data_19_ce0_local;
reg    training_data_20_ce0_local;
reg    training_data_21_ce0_local;
reg    training_data_22_ce0_local;
reg    training_data_23_ce0_local;
reg    training_data_24_ce0_local;
reg    training_data_25_ce0_local;
reg    training_data_26_ce0_local;
reg    training_data_27_ce0_local;
reg    training_data_28_ce0_local;
reg    training_data_29_ce0_local;
reg    training_data_30_ce0_local;
reg    training_data_31_ce0_local;
reg    oracle_activations1_ce0_local;
reg    oracle_activations1_1_ce0_local;
reg    oracle_activations1_2_ce0_local;
reg    oracle_activations1_3_ce0_local;
reg    oracle_activations1_4_ce0_local;
reg    oracle_activations1_5_ce0_local;
reg    oracle_activations1_6_ce0_local;
reg    oracle_activations1_7_ce0_local;
reg    oracle_activations1_8_ce0_local;
reg    oracle_activations1_9_ce0_local;
reg    oracle_activations1_10_ce0_local;
reg    oracle_activations1_11_ce0_local;
reg    oracle_activations1_12_ce0_local;
reg    oracle_activations1_13_ce0_local;
reg    oracle_activations1_14_ce0_local;
reg    oracle_activations1_15_ce0_local;
reg    oracle_activations1_16_ce0_local;
reg    oracle_activations1_17_ce0_local;
reg    oracle_activations1_18_ce0_local;
reg    oracle_activations1_19_ce0_local;
reg    oracle_activations1_20_ce0_local;
reg    oracle_activations1_21_ce0_local;
reg    oracle_activations1_22_ce0_local;
reg    oracle_activations1_23_ce0_local;
reg    oracle_activations1_24_ce0_local;
reg    oracle_activations1_25_ce0_local;
reg    oracle_activations1_26_ce0_local;
reg    oracle_activations1_27_ce0_local;
reg    oracle_activations1_28_ce0_local;
reg    oracle_activations1_29_ce0_local;
reg    oracle_activations1_30_ce0_local;
reg    oracle_activations1_31_ce0_local;
reg    delta_weights1_30_we0_local;
reg    ap_predicate_pred1251_state12;
reg    delta_weights1_30_ce0_local;
reg    delta_weights1_29_we0_local;
reg    ap_predicate_pred1259_state12;
reg    delta_weights1_29_ce0_local;
reg    delta_weights1_28_we0_local;
reg    ap_predicate_pred1267_state12;
reg    delta_weights1_28_ce0_local;
reg    delta_weights1_27_we0_local;
reg    ap_predicate_pred1275_state12;
reg    delta_weights1_27_ce0_local;
reg    delta_weights1_26_we0_local;
reg    ap_predicate_pred1283_state12;
reg    delta_weights1_26_ce0_local;
reg    delta_weights1_25_we0_local;
reg    ap_predicate_pred1291_state12;
reg    delta_weights1_25_ce0_local;
reg    delta_weights1_24_we0_local;
reg    ap_predicate_pred1299_state12;
reg    delta_weights1_24_ce0_local;
reg    delta_weights1_23_we0_local;
reg    ap_predicate_pred1307_state12;
reg    delta_weights1_23_ce0_local;
reg    delta_weights1_22_we0_local;
reg    ap_predicate_pred1315_state12;
reg    delta_weights1_22_ce0_local;
reg    delta_weights1_21_we0_local;
reg    ap_predicate_pred1323_state12;
reg    delta_weights1_21_ce0_local;
reg    delta_weights1_20_we0_local;
reg    ap_predicate_pred1331_state12;
reg    delta_weights1_20_ce0_local;
reg    delta_weights1_19_we0_local;
reg    ap_predicate_pred1339_state12;
reg    delta_weights1_19_ce0_local;
reg    delta_weights1_18_we0_local;
reg    ap_predicate_pred1347_state12;
reg    delta_weights1_18_ce0_local;
reg    delta_weights1_17_we0_local;
reg    ap_predicate_pred1355_state12;
reg    delta_weights1_17_ce0_local;
reg    delta_weights1_16_we0_local;
reg    ap_predicate_pred1363_state12;
reg    delta_weights1_16_ce0_local;
reg    delta_weights1_15_we0_local;
reg    ap_predicate_pred1371_state12;
reg    delta_weights1_15_ce0_local;
reg    delta_weights1_14_we0_local;
reg    ap_predicate_pred1379_state12;
reg    delta_weights1_14_ce0_local;
reg    delta_weights1_13_we0_local;
reg    ap_predicate_pred1387_state12;
reg    delta_weights1_13_ce0_local;
reg    delta_weights1_12_we0_local;
reg    ap_predicate_pred1395_state12;
reg    delta_weights1_12_ce0_local;
reg    delta_weights1_11_we0_local;
reg    ap_predicate_pred1403_state12;
reg    delta_weights1_11_ce0_local;
reg    delta_weights1_10_we0_local;
reg    ap_predicate_pred1411_state12;
reg    delta_weights1_10_ce0_local;
reg    delta_weights1_9_we0_local;
reg    ap_predicate_pred1419_state12;
reg    delta_weights1_9_ce0_local;
reg    delta_weights1_8_we0_local;
reg    ap_predicate_pred1427_state12;
reg    delta_weights1_8_ce0_local;
reg    delta_weights1_7_we0_local;
reg    ap_predicate_pred1435_state12;
reg    delta_weights1_7_ce0_local;
reg    delta_weights1_6_we0_local;
reg    ap_predicate_pred1443_state12;
reg    delta_weights1_6_ce0_local;
reg    delta_weights1_5_we0_local;
reg    ap_predicate_pred1451_state12;
reg    delta_weights1_5_ce0_local;
reg    delta_weights1_4_we0_local;
reg    ap_predicate_pred1459_state12;
reg    delta_weights1_4_ce0_local;
reg    delta_weights1_3_we0_local;
reg    ap_predicate_pred1467_state12;
reg    delta_weights1_3_ce0_local;
reg    delta_weights1_2_we0_local;
reg    ap_predicate_pred1475_state12;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_1_we0_local;
reg    ap_predicate_pred1483_state12;
reg    delta_weights1_1_ce0_local;
reg    delta_weights1_we0_local;
reg    ap_predicate_pred1491_state12;
reg    delta_weights1_ce0_local;
reg    delta_weights1_31_we0_local;
reg    ap_predicate_pred1499_state12;
reg    delta_weights1_31_ce0_local;
wire   [0:0] icmp_ln114_fu_1625_p2;
wire   [3:0] add_ln113_1_fu_1639_p2;
wire   [6:0] select_ln112_fu_1631_p3;
wire   [11:0] zext_ln113_fu_1681_p1;
wire   [11:0] arrayidx10_sum226_fu_1684_p2;
wire   [6:0] tmp_s_fu_1693_p4;
wire   [63:0] tmp_84_fu_1902_p2;
wire   [63:0] tmp_84_fu_1902_p4;
wire   [63:0] tmp_84_fu_1902_p6;
wire   [63:0] tmp_84_fu_1902_p8;
wire   [63:0] tmp_84_fu_1902_p10;
wire   [63:0] tmp_84_fu_1902_p12;
wire   [63:0] tmp_84_fu_1902_p14;
wire   [63:0] tmp_84_fu_1902_p16;
wire   [63:0] tmp_84_fu_1902_p18;
wire   [63:0] tmp_84_fu_1902_p20;
wire   [63:0] tmp_84_fu_1902_p22;
wire   [63:0] tmp_84_fu_1902_p24;
wire   [63:0] tmp_84_fu_1902_p26;
wire   [63:0] tmp_84_fu_1902_p28;
wire   [63:0] tmp_84_fu_1902_p30;
wire   [63:0] tmp_84_fu_1902_p32;
wire   [63:0] tmp_84_fu_1902_p34;
wire   [63:0] tmp_84_fu_1902_p36;
wire   [63:0] tmp_84_fu_1902_p38;
wire   [63:0] tmp_84_fu_1902_p40;
wire   [63:0] tmp_84_fu_1902_p42;
wire   [63:0] tmp_84_fu_1902_p44;
wire   [63:0] tmp_84_fu_1902_p46;
wire   [63:0] tmp_84_fu_1902_p48;
wire   [63:0] tmp_84_fu_1902_p50;
wire   [63:0] tmp_84_fu_1902_p52;
wire   [63:0] tmp_84_fu_1902_p54;
wire   [63:0] tmp_84_fu_1902_p56;
wire   [63:0] tmp_84_fu_1902_p58;
wire   [63:0] tmp_84_fu_1902_p60;
wire   [63:0] tmp_84_fu_1902_p62;
wire   [63:0] tmp_84_fu_1902_p64;
wire   [63:0] tmp_84_fu_1902_p65;
wire   [63:0] tmp_85_fu_2037_p65;
wire   [4:0] or_ln4_fu_2172_p3;
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
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_84_fu_1902_p1;
wire   [4:0] tmp_84_fu_1902_p3;
wire   [4:0] tmp_84_fu_1902_p5;
wire   [4:0] tmp_84_fu_1902_p7;
wire   [4:0] tmp_84_fu_1902_p9;
wire   [4:0] tmp_84_fu_1902_p11;
wire   [4:0] tmp_84_fu_1902_p13;
wire   [4:0] tmp_84_fu_1902_p15;
wire   [4:0] tmp_84_fu_1902_p17;
wire   [4:0] tmp_84_fu_1902_p19;
wire   [4:0] tmp_84_fu_1902_p21;
wire   [4:0] tmp_84_fu_1902_p23;
wire   [4:0] tmp_84_fu_1902_p25;
wire   [4:0] tmp_84_fu_1902_p27;
wire   [4:0] tmp_84_fu_1902_p29;
wire   [4:0] tmp_84_fu_1902_p31;
wire  signed [4:0] tmp_84_fu_1902_p33;
wire  signed [4:0] tmp_84_fu_1902_p35;
wire  signed [4:0] tmp_84_fu_1902_p37;
wire  signed [4:0] tmp_84_fu_1902_p39;
wire  signed [4:0] tmp_84_fu_1902_p41;
wire  signed [4:0] tmp_84_fu_1902_p43;
wire  signed [4:0] tmp_84_fu_1902_p45;
wire  signed [4:0] tmp_84_fu_1902_p47;
wire  signed [4:0] tmp_84_fu_1902_p49;
wire  signed [4:0] tmp_84_fu_1902_p51;
wire  signed [4:0] tmp_84_fu_1902_p53;
wire  signed [4:0] tmp_84_fu_1902_p55;
wire  signed [4:0] tmp_84_fu_1902_p57;
wire  signed [4:0] tmp_84_fu_1902_p59;
wire  signed [4:0] tmp_84_fu_1902_p61;
wire  signed [4:0] tmp_84_fu_1902_p63;
wire   [4:0] tmp_85_fu_2037_p1;
wire   [4:0] tmp_85_fu_2037_p3;
wire   [4:0] tmp_85_fu_2037_p5;
wire   [4:0] tmp_85_fu_2037_p7;
wire   [4:0] tmp_85_fu_2037_p9;
wire   [4:0] tmp_85_fu_2037_p11;
wire   [4:0] tmp_85_fu_2037_p13;
wire   [4:0] tmp_85_fu_2037_p15;
wire   [4:0] tmp_85_fu_2037_p17;
wire   [4:0] tmp_85_fu_2037_p19;
wire   [4:0] tmp_85_fu_2037_p21;
wire   [4:0] tmp_85_fu_2037_p23;
wire   [4:0] tmp_85_fu_2037_p25;
wire   [4:0] tmp_85_fu_2037_p27;
wire   [4:0] tmp_85_fu_2037_p29;
wire   [4:0] tmp_85_fu_2037_p31;
wire  signed [4:0] tmp_85_fu_2037_p33;
wire  signed [4:0] tmp_85_fu_2037_p35;
wire  signed [4:0] tmp_85_fu_2037_p37;
wire  signed [4:0] tmp_85_fu_2037_p39;
wire  signed [4:0] tmp_85_fu_2037_p41;
wire  signed [4:0] tmp_85_fu_2037_p43;
wire  signed [4:0] tmp_85_fu_2037_p45;
wire  signed [4:0] tmp_85_fu_2037_p47;
wire  signed [4:0] tmp_85_fu_2037_p49;
wire  signed [4:0] tmp_85_fu_2037_p51;
wire  signed [4:0] tmp_85_fu_2037_p53;
wire  signed [4:0] tmp_85_fu_2037_p55;
wire  signed [4:0] tmp_85_fu_2037_p57;
wire  signed [4:0] tmp_85_fu_2037_p59;
wire  signed [4:0] tmp_85_fu_2037_p61;
wire  signed [4:0] tmp_85_fu_2037_p63;
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
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 j_fu_314 = 7'd0;
#0 i_fu_318 = 4'd0;
#0 indvar_flatten13_fu_322 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_x_U1970(.din0(tmp_84_fu_1902_p2),.din1(tmp_84_fu_1902_p4),.din2(tmp_84_fu_1902_p6),.din3(tmp_84_fu_1902_p8),.din4(tmp_84_fu_1902_p10),.din5(tmp_84_fu_1902_p12),.din6(tmp_84_fu_1902_p14),.din7(tmp_84_fu_1902_p16),.din8(tmp_84_fu_1902_p18),.din9(tmp_84_fu_1902_p20),.din10(tmp_84_fu_1902_p22),.din11(tmp_84_fu_1902_p24),.din12(tmp_84_fu_1902_p26),.din13(tmp_84_fu_1902_p28),.din14(tmp_84_fu_1902_p30),.din15(tmp_84_fu_1902_p32),.din16(tmp_84_fu_1902_p34),.din17(tmp_84_fu_1902_p36),.din18(tmp_84_fu_1902_p38),.din19(tmp_84_fu_1902_p40),.din20(tmp_84_fu_1902_p42),.din21(tmp_84_fu_1902_p44),.din22(tmp_84_fu_1902_p46),.din23(tmp_84_fu_1902_p48),.din24(tmp_84_fu_1902_p50),.din25(tmp_84_fu_1902_p52),.din26(tmp_84_fu_1902_p54),.din27(tmp_84_fu_1902_p56),.din28(tmp_84_fu_1902_p58),.din29(tmp_84_fu_1902_p60),.din30(tmp_84_fu_1902_p62),.din31(tmp_84_fu_1902_p64),.def(tmp_84_fu_1902_p65),.sel(empty_reg_2261),.dout(tmp_84_fu_1902_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_x_U1971(.din0(oracle_activations1_q0),.din1(oracle_activations1_1_q0),.din2(oracle_activations1_2_q0),.din3(oracle_activations1_3_q0),.din4(oracle_activations1_4_q0),.din5(oracle_activations1_5_q0),.din6(oracle_activations1_6_q0),.din7(oracle_activations1_7_q0),.din8(oracle_activations1_8_q0),.din9(oracle_activations1_9_q0),.din10(oracle_activations1_10_q0),.din11(oracle_activations1_11_q0),.din12(oracle_activations1_12_q0),.din13(oracle_activations1_13_q0),.din14(oracle_activations1_14_q0),.din15(oracle_activations1_15_q0),.din16(oracle_activations1_16_q0),.din17(oracle_activations1_17_q0),.din18(oracle_activations1_18_q0),.din19(oracle_activations1_19_q0),.din20(oracle_activations1_20_q0),.din21(oracle_activations1_21_q0),.din22(oracle_activations1_22_q0),.din23(oracle_activations1_23_q0),.din24(oracle_activations1_24_q0),.din25(oracle_activations1_25_q0),.din26(oracle_activations1_26_q0),.din27(oracle_activations1_27_q0),.din28(oracle_activations1_28_q0),.din29(oracle_activations1_29_q0),.din30(oracle_activations1_30_q0),.din31(oracle_activations1_31_q0),.def(tmp_85_fu_2037_p65),.sel(trunc_ln114_reg_2250_pp0_iter2_reg),.dout(tmp_85_fu_2037_p67));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
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
            i_fu_318 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_318 <= select_ln113_fu_1645_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1602_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten13_fu_322 <= add_ln113_fu_1608_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_322 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_314 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_314 <= add_ln114_fu_1665_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        ap_predicate_pred1251_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd30);
        ap_predicate_pred1259_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd29);
        ap_predicate_pred1267_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd28);
        ap_predicate_pred1275_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd27);
        ap_predicate_pred1283_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd26);
        ap_predicate_pred1291_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd25);
        ap_predicate_pred1299_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd24);
        ap_predicate_pred1307_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd23);
        ap_predicate_pred1315_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd22);
        ap_predicate_pred1323_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd21);
        ap_predicate_pred1331_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd20);
        ap_predicate_pred1339_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd19);
        ap_predicate_pred1347_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd18);
        ap_predicate_pred1355_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd17);
        ap_predicate_pred1363_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd16);
        ap_predicate_pred1371_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd15);
        ap_predicate_pred1379_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd14);
        ap_predicate_pred1387_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd13);
        ap_predicate_pred1395_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd12);
        ap_predicate_pred1403_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd11);
        ap_predicate_pred1411_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd10);
        ap_predicate_pred1419_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd9);
        ap_predicate_pred1427_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd8);
        ap_predicate_pred1435_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd7);
        ap_predicate_pred1443_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd6);
        ap_predicate_pred1451_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd5);
        ap_predicate_pred1459_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd4);
        ap_predicate_pred1467_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd3);
        ap_predicate_pred1475_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd2);
        ap_predicate_pred1483_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd1);
        ap_predicate_pred1491_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd0);
        ap_predicate_pred1499_state12 <= (trunc_ln114_reg_2250_pp0_iter9_reg == 5'd31);
        empty_reg_2261 <= empty_fu_1689_p1;
        mul_i5_reg_2596 <= grp_fu_21302_p_dout0;
        select_ln113_reg_2244_pp0_iter10_reg <= select_ln113_reg_2244_pp0_iter9_reg;
        select_ln113_reg_2244_pp0_iter2_reg <= select_ln113_reg_2244;
        select_ln113_reg_2244_pp0_iter3_reg <= select_ln113_reg_2244_pp0_iter2_reg;
        select_ln113_reg_2244_pp0_iter4_reg <= select_ln113_reg_2244_pp0_iter3_reg;
        select_ln113_reg_2244_pp0_iter5_reg <= select_ln113_reg_2244_pp0_iter4_reg;
        select_ln113_reg_2244_pp0_iter6_reg <= select_ln113_reg_2244_pp0_iter5_reg;
        select_ln113_reg_2244_pp0_iter7_reg <= select_ln113_reg_2244_pp0_iter6_reg;
        select_ln113_reg_2244_pp0_iter8_reg <= select_ln113_reg_2244_pp0_iter7_reg;
        select_ln113_reg_2244_pp0_iter9_reg <= select_ln113_reg_2244_pp0_iter8_reg;
        tmp_84_reg_2586 <= tmp_84_fu_1902_p67;
        tmp_85_reg_2591 <= tmp_85_fu_2037_p67;
        tmp_reg_2255_pp0_iter10_reg <= tmp_reg_2255_pp0_iter9_reg;
        tmp_reg_2255_pp0_iter2_reg <= tmp_reg_2255;
        tmp_reg_2255_pp0_iter3_reg <= tmp_reg_2255_pp0_iter2_reg;
        tmp_reg_2255_pp0_iter4_reg <= tmp_reg_2255_pp0_iter3_reg;
        tmp_reg_2255_pp0_iter5_reg <= tmp_reg_2255_pp0_iter4_reg;
        tmp_reg_2255_pp0_iter6_reg <= tmp_reg_2255_pp0_iter5_reg;
        tmp_reg_2255_pp0_iter7_reg <= tmp_reg_2255_pp0_iter6_reg;
        tmp_reg_2255_pp0_iter8_reg <= tmp_reg_2255_pp0_iter7_reg;
        tmp_reg_2255_pp0_iter9_reg <= tmp_reg_2255_pp0_iter8_reg;
        trunc_ln114_reg_2250_pp0_iter2_reg <= trunc_ln114_reg_2250;
        trunc_ln114_reg_2250_pp0_iter3_reg <= trunc_ln114_reg_2250_pp0_iter2_reg;
        trunc_ln114_reg_2250_pp0_iter4_reg <= trunc_ln114_reg_2250_pp0_iter3_reg;
        trunc_ln114_reg_2250_pp0_iter5_reg <= trunc_ln114_reg_2250_pp0_iter4_reg;
        trunc_ln114_reg_2250_pp0_iter6_reg <= trunc_ln114_reg_2250_pp0_iter5_reg;
        trunc_ln114_reg_2250_pp0_iter7_reg <= trunc_ln114_reg_2250_pp0_iter6_reg;
        trunc_ln114_reg_2250_pp0_iter8_reg <= trunc_ln114_reg_2250_pp0_iter7_reg;
        trunc_ln114_reg_2250_pp0_iter9_reg <= trunc_ln114_reg_2250_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln113_reg_2244 <= select_ln113_fu_1645_p3;
        tmp_reg_2255 <= select_ln112_fu_1631_p3[32'd5];
        trunc_ln114_reg_2250 <= trunc_ln114_fu_1653_p1;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_1602_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten13_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_322;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_10_ce0_local = 1'b1;
    end else begin
        delta_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1411_state12 == 1'b1))) begin
        delta_weights1_10_we0_local = 1'b1;
    end else begin
        delta_weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_11_ce0_local = 1'b1;
    end else begin
        delta_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1403_state12 == 1'b1))) begin
        delta_weights1_11_we0_local = 1'b1;
    end else begin
        delta_weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_12_ce0_local = 1'b1;
    end else begin
        delta_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1395_state12 == 1'b1))) begin
        delta_weights1_12_we0_local = 1'b1;
    end else begin
        delta_weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_13_ce0_local = 1'b1;
    end else begin
        delta_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1387_state12 == 1'b1))) begin
        delta_weights1_13_we0_local = 1'b1;
    end else begin
        delta_weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_14_ce0_local = 1'b1;
    end else begin
        delta_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1379_state12 == 1'b1))) begin
        delta_weights1_14_we0_local = 1'b1;
    end else begin
        delta_weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_15_ce0_local = 1'b1;
    end else begin
        delta_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1371_state12 == 1'b1))) begin
        delta_weights1_15_we0_local = 1'b1;
    end else begin
        delta_weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_16_ce0_local = 1'b1;
    end else begin
        delta_weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1363_state12 == 1'b1))) begin
        delta_weights1_16_we0_local = 1'b1;
    end else begin
        delta_weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_17_ce0_local = 1'b1;
    end else begin
        delta_weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1355_state12 == 1'b1))) begin
        delta_weights1_17_we0_local = 1'b1;
    end else begin
        delta_weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_18_ce0_local = 1'b1;
    end else begin
        delta_weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1347_state12 == 1'b1))) begin
        delta_weights1_18_we0_local = 1'b1;
    end else begin
        delta_weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_19_ce0_local = 1'b1;
    end else begin
        delta_weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1339_state12 == 1'b1))) begin
        delta_weights1_19_we0_local = 1'b1;
    end else begin
        delta_weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1483_state12 == 1'b1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_20_ce0_local = 1'b1;
    end else begin
        delta_weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1331_state12 == 1'b1))) begin
        delta_weights1_20_we0_local = 1'b1;
    end else begin
        delta_weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_21_ce0_local = 1'b1;
    end else begin
        delta_weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1323_state12 == 1'b1))) begin
        delta_weights1_21_we0_local = 1'b1;
    end else begin
        delta_weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_22_ce0_local = 1'b1;
    end else begin
        delta_weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1315_state12 == 1'b1))) begin
        delta_weights1_22_we0_local = 1'b1;
    end else begin
        delta_weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_23_ce0_local = 1'b1;
    end else begin
        delta_weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1307_state12 == 1'b1))) begin
        delta_weights1_23_we0_local = 1'b1;
    end else begin
        delta_weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_24_ce0_local = 1'b1;
    end else begin
        delta_weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1299_state12 == 1'b1))) begin
        delta_weights1_24_we0_local = 1'b1;
    end else begin
        delta_weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_25_ce0_local = 1'b1;
    end else begin
        delta_weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1291_state12 == 1'b1))) begin
        delta_weights1_25_we0_local = 1'b1;
    end else begin
        delta_weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_26_ce0_local = 1'b1;
    end else begin
        delta_weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1283_state12 == 1'b1))) begin
        delta_weights1_26_we0_local = 1'b1;
    end else begin
        delta_weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_27_ce0_local = 1'b1;
    end else begin
        delta_weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1275_state12 == 1'b1))) begin
        delta_weights1_27_we0_local = 1'b1;
    end else begin
        delta_weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_28_ce0_local = 1'b1;
    end else begin
        delta_weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1267_state12 == 1'b1))) begin
        delta_weights1_28_we0_local = 1'b1;
    end else begin
        delta_weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_29_ce0_local = 1'b1;
    end else begin
        delta_weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1259_state12 == 1'b1))) begin
        delta_weights1_29_we0_local = 1'b1;
    end else begin
        delta_weights1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1475_state12 == 1'b1))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_30_ce0_local = 1'b1;
    end else begin
        delta_weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1251_state12 == 1'b1))) begin
        delta_weights1_30_we0_local = 1'b1;
    end else begin
        delta_weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_31_ce0_local = 1'b1;
    end else begin
        delta_weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1499_state12 == 1'b1))) begin
        delta_weights1_31_we0_local = 1'b1;
    end else begin
        delta_weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1467_state12 == 1'b1))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1459_state12 == 1'b1))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1451_state12 == 1'b1))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1443_state12 == 1'b1))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1435_state12 == 1'b1))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_8_ce0_local = 1'b1;
    end else begin
        delta_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1427_state12 == 1'b1))) begin
        delta_weights1_8_we0_local = 1'b1;
    end else begin
        delta_weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_9_ce0_local = 1'b1;
    end else begin
        delta_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1419_state12 == 1'b1))) begin
        delta_weights1_9_we0_local = 1'b1;
    end else begin
        delta_weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_ce0_local = 1'b1;
    end else begin
        delta_weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (ap_predicate_pred1491_state12 == 1'b1))) begin
        delta_weights1_we0_local = 1'b1;
    end else begin
        delta_weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_10_ce0_local = 1'b1;
    end else begin
        oracle_activations1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_11_ce0_local = 1'b1;
    end else begin
        oracle_activations1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_12_ce0_local = 1'b1;
    end else begin
        oracle_activations1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_13_ce0_local = 1'b1;
    end else begin
        oracle_activations1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_14_ce0_local = 1'b1;
    end else begin
        oracle_activations1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_15_ce0_local = 1'b1;
    end else begin
        oracle_activations1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_16_ce0_local = 1'b1;
    end else begin
        oracle_activations1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_17_ce0_local = 1'b1;
    end else begin
        oracle_activations1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_18_ce0_local = 1'b1;
    end else begin
        oracle_activations1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_19_ce0_local = 1'b1;
    end else begin
        oracle_activations1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_20_ce0_local = 1'b1;
    end else begin
        oracle_activations1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_21_ce0_local = 1'b1;
    end else begin
        oracle_activations1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_22_ce0_local = 1'b1;
    end else begin
        oracle_activations1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_23_ce0_local = 1'b1;
    end else begin
        oracle_activations1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_24_ce0_local = 1'b1;
    end else begin
        oracle_activations1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_25_ce0_local = 1'b1;
    end else begin
        oracle_activations1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_26_ce0_local = 1'b1;
    end else begin
        oracle_activations1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_27_ce0_local = 1'b1;
    end else begin
        oracle_activations1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_28_ce0_local = 1'b1;
    end else begin
        oracle_activations1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_29_ce0_local = 1'b1;
    end else begin
        oracle_activations1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_2_ce0_local = 1'b1;
    end else begin
        oracle_activations1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_30_ce0_local = 1'b1;
    end else begin
        oracle_activations1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_31_ce0_local = 1'b1;
    end else begin
        oracle_activations1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_3_ce0_local = 1'b1;
    end else begin
        oracle_activations1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_4_ce0_local = 1'b1;
    end else begin
        oracle_activations1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_5_ce0_local = 1'b1;
    end else begin
        oracle_activations1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_6_ce0_local = 1'b1;
    end else begin
        oracle_activations1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_7_ce0_local = 1'b1;
    end else begin
        oracle_activations1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_8_ce0_local = 1'b1;
    end else begin
        oracle_activations1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_9_ce0_local = 1'b1;
    end else begin
        oracle_activations1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_10_ce0_local = 1'b1;
    end else begin
        training_data_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_11_ce0_local = 1'b1;
    end else begin
        training_data_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_12_ce0_local = 1'b1;
    end else begin
        training_data_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_13_ce0_local = 1'b1;
    end else begin
        training_data_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_14_ce0_local = 1'b1;
    end else begin
        training_data_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_15_ce0_local = 1'b1;
    end else begin
        training_data_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_16_ce0_local = 1'b1;
    end else begin
        training_data_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_17_ce0_local = 1'b1;
    end else begin
        training_data_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_18_ce0_local = 1'b1;
    end else begin
        training_data_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_19_ce0_local = 1'b1;
    end else begin
        training_data_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_20_ce0_local = 1'b1;
    end else begin
        training_data_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_21_ce0_local = 1'b1;
    end else begin
        training_data_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_22_ce0_local = 1'b1;
    end else begin
        training_data_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_23_ce0_local = 1'b1;
    end else begin
        training_data_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_24_ce0_local = 1'b1;
    end else begin
        training_data_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_25_ce0_local = 1'b1;
    end else begin
        training_data_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_26_ce0_local = 1'b1;
    end else begin
        training_data_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_27_ce0_local = 1'b1;
    end else begin
        training_data_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_28_ce0_local = 1'b1;
    end else begin
        training_data_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_29_ce0_local = 1'b1;
    end else begin
        training_data_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_30_ce0_local = 1'b1;
    end else begin
        training_data_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_31_ce0_local = 1'b1;
    end else begin
        training_data_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_4_ce0_local = 1'b1;
    end else begin
        training_data_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_5_ce0_local = 1'b1;
    end else begin
        training_data_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_6_ce0_local = 1'b1;
    end else begin
        training_data_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_7_ce0_local = 1'b1;
    end else begin
        training_data_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_8_ce0_local = 1'b1;
    end else begin
        training_data_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        training_data_9_ce0_local = 1'b1;
    end else begin
        training_data_9_ce0_local = 1'b0;
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
assign add_ln113_1_fu_1639_p2 = (i_fu_318 + 4'd1);
assign add_ln113_fu_1608_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 10'd1);
assign add_ln114_fu_1665_p2 = (select_ln112_fu_1631_p3 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign arrayidx10_sum226_fu_1684_p2 = (zext_ln113_fu_1681_p1 + phi_mul40);
assign delta_weights1_10_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_10_ce0 = delta_weights1_10_ce0_local;
assign delta_weights1_10_d0 = mul_i5_reg_2596;
assign delta_weights1_10_we0 = delta_weights1_10_we0_local;
assign delta_weights1_11_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_11_ce0 = delta_weights1_11_ce0_local;
assign delta_weights1_11_d0 = mul_i5_reg_2596;
assign delta_weights1_11_we0 = delta_weights1_11_we0_local;
assign delta_weights1_12_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_12_ce0 = delta_weights1_12_ce0_local;
assign delta_weights1_12_d0 = mul_i5_reg_2596;
assign delta_weights1_12_we0 = delta_weights1_12_we0_local;
assign delta_weights1_13_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_13_ce0 = delta_weights1_13_ce0_local;
assign delta_weights1_13_d0 = mul_i5_reg_2596;
assign delta_weights1_13_we0 = delta_weights1_13_we0_local;
assign delta_weights1_14_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_14_ce0 = delta_weights1_14_ce0_local;
assign delta_weights1_14_d0 = mul_i5_reg_2596;
assign delta_weights1_14_we0 = delta_weights1_14_we0_local;
assign delta_weights1_15_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_15_ce0 = delta_weights1_15_ce0_local;
assign delta_weights1_15_d0 = mul_i5_reg_2596;
assign delta_weights1_15_we0 = delta_weights1_15_we0_local;
assign delta_weights1_16_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_16_ce0 = delta_weights1_16_ce0_local;
assign delta_weights1_16_d0 = mul_i5_reg_2596;
assign delta_weights1_16_we0 = delta_weights1_16_we0_local;
assign delta_weights1_17_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_17_ce0 = delta_weights1_17_ce0_local;
assign delta_weights1_17_d0 = mul_i5_reg_2596;
assign delta_weights1_17_we0 = delta_weights1_17_we0_local;
assign delta_weights1_18_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_18_ce0 = delta_weights1_18_ce0_local;
assign delta_weights1_18_d0 = mul_i5_reg_2596;
assign delta_weights1_18_we0 = delta_weights1_18_we0_local;
assign delta_weights1_19_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_19_ce0 = delta_weights1_19_ce0_local;
assign delta_weights1_19_d0 = mul_i5_reg_2596;
assign delta_weights1_19_we0 = delta_weights1_19_we0_local;
assign delta_weights1_1_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_d0 = mul_i5_reg_2596;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_20_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_20_ce0 = delta_weights1_20_ce0_local;
assign delta_weights1_20_d0 = mul_i5_reg_2596;
assign delta_weights1_20_we0 = delta_weights1_20_we0_local;
assign delta_weights1_21_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_21_ce0 = delta_weights1_21_ce0_local;
assign delta_weights1_21_d0 = mul_i5_reg_2596;
assign delta_weights1_21_we0 = delta_weights1_21_we0_local;
assign delta_weights1_22_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_22_ce0 = delta_weights1_22_ce0_local;
assign delta_weights1_22_d0 = mul_i5_reg_2596;
assign delta_weights1_22_we0 = delta_weights1_22_we0_local;
assign delta_weights1_23_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_23_ce0 = delta_weights1_23_ce0_local;
assign delta_weights1_23_d0 = mul_i5_reg_2596;
assign delta_weights1_23_we0 = delta_weights1_23_we0_local;
assign delta_weights1_24_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_24_ce0 = delta_weights1_24_ce0_local;
assign delta_weights1_24_d0 = mul_i5_reg_2596;
assign delta_weights1_24_we0 = delta_weights1_24_we0_local;
assign delta_weights1_25_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_25_ce0 = delta_weights1_25_ce0_local;
assign delta_weights1_25_d0 = mul_i5_reg_2596;
assign delta_weights1_25_we0 = delta_weights1_25_we0_local;
assign delta_weights1_26_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_26_ce0 = delta_weights1_26_ce0_local;
assign delta_weights1_26_d0 = mul_i5_reg_2596;
assign delta_weights1_26_we0 = delta_weights1_26_we0_local;
assign delta_weights1_27_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_27_ce0 = delta_weights1_27_ce0_local;
assign delta_weights1_27_d0 = mul_i5_reg_2596;
assign delta_weights1_27_we0 = delta_weights1_27_we0_local;
assign delta_weights1_28_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_28_ce0 = delta_weights1_28_ce0_local;
assign delta_weights1_28_d0 = mul_i5_reg_2596;
assign delta_weights1_28_we0 = delta_weights1_28_we0_local;
assign delta_weights1_29_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_29_ce0 = delta_weights1_29_ce0_local;
assign delta_weights1_29_d0 = mul_i5_reg_2596;
assign delta_weights1_29_we0 = delta_weights1_29_we0_local;
assign delta_weights1_2_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_d0 = mul_i5_reg_2596;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_30_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_30_ce0 = delta_weights1_30_ce0_local;
assign delta_weights1_30_d0 = mul_i5_reg_2596;
assign delta_weights1_30_we0 = delta_weights1_30_we0_local;
assign delta_weights1_31_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_31_ce0 = delta_weights1_31_ce0_local;
assign delta_weights1_31_d0 = mul_i5_reg_2596;
assign delta_weights1_31_we0 = delta_weights1_31_we0_local;
assign delta_weights1_3_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_d0 = mul_i5_reg_2596;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_4_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_d0 = mul_i5_reg_2596;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_5_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_d0 = mul_i5_reg_2596;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_6_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_d0 = mul_i5_reg_2596;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_7_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_d0 = mul_i5_reg_2596;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_8_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_8_ce0 = delta_weights1_8_ce0_local;
assign delta_weights1_8_d0 = mul_i5_reg_2596;
assign delta_weights1_8_we0 = delta_weights1_8_we0_local;
assign delta_weights1_9_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_9_ce0 = delta_weights1_9_ce0_local;
assign delta_weights1_9_d0 = mul_i5_reg_2596;
assign delta_weights1_9_we0 = delta_weights1_9_we0_local;
assign delta_weights1_address0 = zext_ln115_fu_2178_p1;
assign delta_weights1_ce0 = delta_weights1_ce0_local;
assign delta_weights1_d0 = mul_i5_reg_2596;
assign delta_weights1_we0 = delta_weights1_we0_local;
assign empty_fu_1689_p1 = arrayidx10_sum226_fu_1684_p2[4:0];
assign grp_fu_21302_p_ce = 1'b1;
assign grp_fu_21302_p_din0 = tmp_84_reg_2586;
assign grp_fu_21302_p_din1 = tmp_85_reg_2591;
assign icmp_ln113_fu_1602_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln114_fu_1625_p2 = ((j_fu_314 == 7'd64) ? 1'b1 : 1'b0);
assign or_ln4_fu_2172_p3 = {{select_ln113_reg_2244_pp0_iter10_reg}, {tmp_reg_2255_pp0_iter10_reg}};
assign oracle_activations1_10_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_10_ce0 = oracle_activations1_10_ce0_local;
assign oracle_activations1_11_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_11_ce0 = oracle_activations1_11_ce0_local;
assign oracle_activations1_12_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_12_ce0 = oracle_activations1_12_ce0_local;
assign oracle_activations1_13_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_13_ce0 = oracle_activations1_13_ce0_local;
assign oracle_activations1_14_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_14_ce0 = oracle_activations1_14_ce0_local;
assign oracle_activations1_15_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_15_ce0 = oracle_activations1_15_ce0_local;
assign oracle_activations1_16_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_16_ce0 = oracle_activations1_16_ce0_local;
assign oracle_activations1_17_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_17_ce0 = oracle_activations1_17_ce0_local;
assign oracle_activations1_18_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_18_ce0 = oracle_activations1_18_ce0_local;
assign oracle_activations1_19_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_19_ce0 = oracle_activations1_19_ce0_local;
assign oracle_activations1_1_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_1_ce0 = oracle_activations1_1_ce0_local;
assign oracle_activations1_20_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_20_ce0 = oracle_activations1_20_ce0_local;
assign oracle_activations1_21_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_21_ce0 = oracle_activations1_21_ce0_local;
assign oracle_activations1_22_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_22_ce0 = oracle_activations1_22_ce0_local;
assign oracle_activations1_23_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_23_ce0 = oracle_activations1_23_ce0_local;
assign oracle_activations1_24_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_24_ce0 = oracle_activations1_24_ce0_local;
assign oracle_activations1_25_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_25_ce0 = oracle_activations1_25_ce0_local;
assign oracle_activations1_26_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_26_ce0 = oracle_activations1_26_ce0_local;
assign oracle_activations1_27_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_27_ce0 = oracle_activations1_27_ce0_local;
assign oracle_activations1_28_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_28_ce0 = oracle_activations1_28_ce0_local;
assign oracle_activations1_29_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_29_ce0 = oracle_activations1_29_ce0_local;
assign oracle_activations1_2_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_2_ce0 = oracle_activations1_2_ce0_local;
assign oracle_activations1_30_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_30_ce0 = oracle_activations1_30_ce0_local;
assign oracle_activations1_31_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_31_ce0 = oracle_activations1_31_ce0_local;
assign oracle_activations1_3_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_3_ce0 = oracle_activations1_3_ce0_local;
assign oracle_activations1_4_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_4_ce0 = oracle_activations1_4_ce0_local;
assign oracle_activations1_5_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_5_ce0 = oracle_activations1_5_ce0_local;
assign oracle_activations1_6_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_6_ce0 = oracle_activations1_6_ce0_local;
assign oracle_activations1_7_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_7_ce0 = oracle_activations1_7_ce0_local;
assign oracle_activations1_8_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_8_ce0 = oracle_activations1_8_ce0_local;
assign oracle_activations1_9_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_9_ce0 = oracle_activations1_9_ce0_local;
assign oracle_activations1_address0 = zext_ln112_fu_1739_p1;
assign oracle_activations1_ce0 = oracle_activations1_ce0_local;
assign p_cast32_fu_1703_p1 = tmp_s_fu_1693_p4;
assign select_ln112_fu_1631_p3 = ((icmp_ln114_fu_1625_p2[0:0] == 1'b1) ? 7'd0 : j_fu_314);
assign select_ln113_fu_1645_p3 = ((icmp_ln114_fu_1625_p2[0:0] == 1'b1) ? add_ln113_1_fu_1639_p2 : i_fu_318);
assign tmp_84_fu_1902_p10 = training_data_4_q0;
assign tmp_84_fu_1902_p12 = training_data_5_q0;
assign tmp_84_fu_1902_p14 = training_data_6_q0;
assign tmp_84_fu_1902_p16 = training_data_7_q0;
assign tmp_84_fu_1902_p18 = training_data_8_q0;
assign tmp_84_fu_1902_p2 = training_data_0_q0;
assign tmp_84_fu_1902_p20 = training_data_9_q0;
assign tmp_84_fu_1902_p22 = training_data_10_q0;
assign tmp_84_fu_1902_p24 = training_data_11_q0;
assign tmp_84_fu_1902_p26 = training_data_12_q0;
assign tmp_84_fu_1902_p28 = training_data_13_q0;
assign tmp_84_fu_1902_p30 = training_data_14_q0;
assign tmp_84_fu_1902_p32 = training_data_15_q0;
assign tmp_84_fu_1902_p34 = training_data_16_q0;
assign tmp_84_fu_1902_p36 = training_data_17_q0;
assign tmp_84_fu_1902_p38 = training_data_18_q0;
assign tmp_84_fu_1902_p4 = training_data_1_q0;
assign tmp_84_fu_1902_p40 = training_data_19_q0;
assign tmp_84_fu_1902_p42 = training_data_20_q0;
assign tmp_84_fu_1902_p44 = training_data_21_q0;
assign tmp_84_fu_1902_p46 = training_data_22_q0;
assign tmp_84_fu_1902_p48 = training_data_23_q0;
assign tmp_84_fu_1902_p50 = training_data_24_q0;
assign tmp_84_fu_1902_p52 = training_data_25_q0;
assign tmp_84_fu_1902_p54 = training_data_26_q0;
assign tmp_84_fu_1902_p56 = training_data_27_q0;
assign tmp_84_fu_1902_p58 = training_data_28_q0;
assign tmp_84_fu_1902_p6 = training_data_2_q0;
assign tmp_84_fu_1902_p60 = training_data_29_q0;
assign tmp_84_fu_1902_p62 = training_data_30_q0;
assign tmp_84_fu_1902_p64 = training_data_31_q0;
assign tmp_84_fu_1902_p65 = 'bx;
assign tmp_84_fu_1902_p8 = training_data_3_q0;
assign tmp_85_fu_2037_p65 = 'bx;
assign tmp_s_fu_1693_p4 = {{arrayidx10_sum226_fu_1684_p2[11:5]}};
assign training_data_0_address0 = p_cast32_fu_1703_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_10_address0 = p_cast32_fu_1703_p1;
assign training_data_10_ce0 = training_data_10_ce0_local;
assign training_data_11_address0 = p_cast32_fu_1703_p1;
assign training_data_11_ce0 = training_data_11_ce0_local;
assign training_data_12_address0 = p_cast32_fu_1703_p1;
assign training_data_12_ce0 = training_data_12_ce0_local;
assign training_data_13_address0 = p_cast32_fu_1703_p1;
assign training_data_13_ce0 = training_data_13_ce0_local;
assign training_data_14_address0 = p_cast32_fu_1703_p1;
assign training_data_14_ce0 = training_data_14_ce0_local;
assign training_data_15_address0 = p_cast32_fu_1703_p1;
assign training_data_15_ce0 = training_data_15_ce0_local;
assign training_data_16_address0 = p_cast32_fu_1703_p1;
assign training_data_16_ce0 = training_data_16_ce0_local;
assign training_data_17_address0 = p_cast32_fu_1703_p1;
assign training_data_17_ce0 = training_data_17_ce0_local;
assign training_data_18_address0 = p_cast32_fu_1703_p1;
assign training_data_18_ce0 = training_data_18_ce0_local;
assign training_data_19_address0 = p_cast32_fu_1703_p1;
assign training_data_19_ce0 = training_data_19_ce0_local;
assign training_data_1_address0 = p_cast32_fu_1703_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_20_address0 = p_cast32_fu_1703_p1;
assign training_data_20_ce0 = training_data_20_ce0_local;
assign training_data_21_address0 = p_cast32_fu_1703_p1;
assign training_data_21_ce0 = training_data_21_ce0_local;
assign training_data_22_address0 = p_cast32_fu_1703_p1;
assign training_data_22_ce0 = training_data_22_ce0_local;
assign training_data_23_address0 = p_cast32_fu_1703_p1;
assign training_data_23_ce0 = training_data_23_ce0_local;
assign training_data_24_address0 = p_cast32_fu_1703_p1;
assign training_data_24_ce0 = training_data_24_ce0_local;
assign training_data_25_address0 = p_cast32_fu_1703_p1;
assign training_data_25_ce0 = training_data_25_ce0_local;
assign training_data_26_address0 = p_cast32_fu_1703_p1;
assign training_data_26_ce0 = training_data_26_ce0_local;
assign training_data_27_address0 = p_cast32_fu_1703_p1;
assign training_data_27_ce0 = training_data_27_ce0_local;
assign training_data_28_address0 = p_cast32_fu_1703_p1;
assign training_data_28_ce0 = training_data_28_ce0_local;
assign training_data_29_address0 = p_cast32_fu_1703_p1;
assign training_data_29_ce0 = training_data_29_ce0_local;
assign training_data_2_address0 = p_cast32_fu_1703_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_30_address0 = p_cast32_fu_1703_p1;
assign training_data_30_ce0 = training_data_30_ce0_local;
assign training_data_31_address0 = p_cast32_fu_1703_p1;
assign training_data_31_ce0 = training_data_31_ce0_local;
assign training_data_3_address0 = p_cast32_fu_1703_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_4_address0 = p_cast32_fu_1703_p1;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_5_address0 = p_cast32_fu_1703_p1;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_6_address0 = p_cast32_fu_1703_p1;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_7_address0 = p_cast32_fu_1703_p1;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign training_data_8_address0 = p_cast32_fu_1703_p1;
assign training_data_8_ce0 = training_data_8_ce0_local;
assign training_data_9_address0 = p_cast32_fu_1703_p1;
assign training_data_9_ce0 = training_data_9_ce0_local;
assign trunc_ln114_fu_1653_p1 = select_ln112_fu_1631_p3[4:0];
assign zext_ln112_fu_1739_p1 = tmp_reg_2255;
assign zext_ln113_fu_1681_p1 = select_ln113_reg_2244;
assign zext_ln115_fu_2178_p1 = or_ln4_fu_2172_p3;
endmodule 