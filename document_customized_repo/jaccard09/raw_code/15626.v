module backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,training_data_8_address0,training_data_8_ce0,training_data_8_q0,training_data_9_address0,training_data_9_ce0,training_data_9_q0,training_data_10_address0,training_data_10_ce0,training_data_10_q0,training_data_11_address0,training_data_11_ce0,training_data_11_q0,training_data_12_address0,training_data_12_ce0,training_data_12_q0,training_data_13_address0,training_data_13_ce0,training_data_13_q0,training_data_14_address0,training_data_14_ce0,training_data_14_q0,training_data_15_address0,training_data_15_ce0,training_data_15_q0,training_data_16_address0,training_data_16_ce0,training_data_16_q0,training_data_17_address0,training_data_17_ce0,training_data_17_q0,training_data_18_address0,training_data_18_ce0,training_data_18_q0,training_data_19_address0,training_data_19_ce0,training_data_19_q0,training_data_20_address0,training_data_20_ce0,training_data_20_q0,training_data_21_address0,training_data_21_ce0,training_data_21_q0,training_data_22_address0,training_data_22_ce0,training_data_22_q0,training_data_23_address0,training_data_23_ce0,training_data_23_q0,training_data_24_address0,training_data_24_ce0,training_data_24_q0,training_data_25_address0,training_data_25_ce0,training_data_25_q0,training_data_26_address0,training_data_26_ce0,training_data_26_q0,training_data_27_address0,training_data_27_ce0,training_data_27_q0,training_data_28_address0,training_data_28_ce0,training_data_28_q0,training_data_29_address0,training_data_29_ce0,training_data_29_q0,training_data_30_address0,training_data_30_ce0,training_data_30_q0,training_data_31_address0,training_data_31_ce0,training_data_31_q0,delta_weights1_31_address0,delta_weights1_31_ce0,delta_weights1_31_we0,delta_weights1_31_d0,delta_weights1_30_address0,delta_weights1_30_ce0,delta_weights1_30_we0,delta_weights1_30_d0,delta_weights1_29_address0,delta_weights1_29_ce0,delta_weights1_29_we0,delta_weights1_29_d0,delta_weights1_28_address0,delta_weights1_28_ce0,delta_weights1_28_we0,delta_weights1_28_d0,delta_weights1_27_address0,delta_weights1_27_ce0,delta_weights1_27_we0,delta_weights1_27_d0,delta_weights1_26_address0,delta_weights1_26_ce0,delta_weights1_26_we0,delta_weights1_26_d0,delta_weights1_25_address0,delta_weights1_25_ce0,delta_weights1_25_we0,delta_weights1_25_d0,delta_weights1_24_address0,delta_weights1_24_ce0,delta_weights1_24_we0,delta_weights1_24_d0,delta_weights1_23_address0,delta_weights1_23_ce0,delta_weights1_23_we0,delta_weights1_23_d0,delta_weights1_22_address0,delta_weights1_22_ce0,delta_weights1_22_we0,delta_weights1_22_d0,delta_weights1_21_address0,delta_weights1_21_ce0,delta_weights1_21_we0,delta_weights1_21_d0,delta_weights1_20_address0,delta_weights1_20_ce0,delta_weights1_20_we0,delta_weights1_20_d0,delta_weights1_19_address0,delta_weights1_19_ce0,delta_weights1_19_we0,delta_weights1_19_d0,delta_weights1_18_address0,delta_weights1_18_ce0,delta_weights1_18_we0,delta_weights1_18_d0,delta_weights1_17_address0,delta_weights1_17_ce0,delta_weights1_17_we0,delta_weights1_17_d0,delta_weights1_16_address0,delta_weights1_16_ce0,delta_weights1_16_we0,delta_weights1_16_d0,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_address0,delta_weights1_ce0,delta_weights1_we0,delta_weights1_d0,oracle_activations1_address0,oracle_activations1_ce0,oracle_activations1_q0,oracle_activations1_4_address0,oracle_activations1_4_ce0,oracle_activations1_4_q0,oracle_activations1_8_address0,oracle_activations1_8_ce0,oracle_activations1_8_q0,oracle_activations1_12_address0,oracle_activations1_12_ce0,oracle_activations1_12_q0,oracle_activations1_16_address0,oracle_activations1_16_ce0,oracle_activations1_16_q0,oracle_activations1_20_address0,oracle_activations1_20_ce0,oracle_activations1_20_q0,oracle_activations1_24_address0,oracle_activations1_24_ce0,oracle_activations1_24_q0,oracle_activations1_28_address0,oracle_activations1_28_ce0,oracle_activations1_28_q0,oracle_activations1_1_address0,oracle_activations1_1_ce0,oracle_activations1_1_q0,oracle_activations1_5_address0,oracle_activations1_5_ce0,oracle_activations1_5_q0,oracle_activations1_9_address0,oracle_activations1_9_ce0,oracle_activations1_9_q0,oracle_activations1_13_address0,oracle_activations1_13_ce0,oracle_activations1_13_q0,oracle_activations1_17_address0,oracle_activations1_17_ce0,oracle_activations1_17_q0,oracle_activations1_21_address0,oracle_activations1_21_ce0,oracle_activations1_21_q0,oracle_activations1_25_address0,oracle_activations1_25_ce0,oracle_activations1_25_q0,oracle_activations1_29_address0,oracle_activations1_29_ce0,oracle_activations1_29_q0,oracle_activations1_2_address0,oracle_activations1_2_ce0,oracle_activations1_2_q0,oracle_activations1_6_address0,oracle_activations1_6_ce0,oracle_activations1_6_q0,oracle_activations1_10_address0,oracle_activations1_10_ce0,oracle_activations1_10_q0,oracle_activations1_14_address0,oracle_activations1_14_ce0,oracle_activations1_14_q0,oracle_activations1_18_address0,oracle_activations1_18_ce0,oracle_activations1_18_q0,oracle_activations1_22_address0,oracle_activations1_22_ce0,oracle_activations1_22_q0,oracle_activations1_26_address0,oracle_activations1_26_ce0,oracle_activations1_26_q0,oracle_activations1_30_address0,oracle_activations1_30_ce0,oracle_activations1_30_q0,oracle_activations1_3_address0,oracle_activations1_3_ce0,oracle_activations1_3_q0,oracle_activations1_7_address0,oracle_activations1_7_ce0,oracle_activations1_7_q0,oracle_activations1_11_address0,oracle_activations1_11_ce0,oracle_activations1_11_q0,oracle_activations1_15_address0,oracle_activations1_15_ce0,oracle_activations1_15_q0,oracle_activations1_19_address0,oracle_activations1_19_ce0,oracle_activations1_19_q0,oracle_activations1_23_address0,oracle_activations1_23_ce0,oracle_activations1_23_q0,oracle_activations1_27_address0,oracle_activations1_27_ce0,oracle_activations1_27_q0,oracle_activations1_31_address0,oracle_activations1_31_ce0,oracle_activations1_31_q0,grp_fu_6440_p_din0,grp_fu_6440_p_din1,grp_fu_6440_p_dout0,grp_fu_6440_p_ce,grp_fu_8441_p_din0,grp_fu_8441_p_din1,grp_fu_8441_p_dout0,grp_fu_8441_p_ce,grp_fu_8445_p_din0,grp_fu_8445_p_din1,grp_fu_8445_p_dout0,grp_fu_8445_p_ce,grp_fu_8449_p_din0,grp_fu_8449_p_din1,grp_fu_8449_p_dout0,grp_fu_8449_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul;
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
output  [0:0] oracle_activations1_4_address0;
output   oracle_activations1_4_ce0;
input  [63:0] oracle_activations1_4_q0;
output  [0:0] oracle_activations1_8_address0;
output   oracle_activations1_8_ce0;
input  [63:0] oracle_activations1_8_q0;
output  [0:0] oracle_activations1_12_address0;
output   oracle_activations1_12_ce0;
input  [63:0] oracle_activations1_12_q0;
output  [0:0] oracle_activations1_16_address0;
output   oracle_activations1_16_ce0;
input  [63:0] oracle_activations1_16_q0;
output  [0:0] oracle_activations1_20_address0;
output   oracle_activations1_20_ce0;
input  [63:0] oracle_activations1_20_q0;
output  [0:0] oracle_activations1_24_address0;
output   oracle_activations1_24_ce0;
input  [63:0] oracle_activations1_24_q0;
output  [0:0] oracle_activations1_28_address0;
output   oracle_activations1_28_ce0;
input  [63:0] oracle_activations1_28_q0;
output  [0:0] oracle_activations1_1_address0;
output   oracle_activations1_1_ce0;
input  [63:0] oracle_activations1_1_q0;
output  [0:0] oracle_activations1_5_address0;
output   oracle_activations1_5_ce0;
input  [63:0] oracle_activations1_5_q0;
output  [0:0] oracle_activations1_9_address0;
output   oracle_activations1_9_ce0;
input  [63:0] oracle_activations1_9_q0;
output  [0:0] oracle_activations1_13_address0;
output   oracle_activations1_13_ce0;
input  [63:0] oracle_activations1_13_q0;
output  [0:0] oracle_activations1_17_address0;
output   oracle_activations1_17_ce0;
input  [63:0] oracle_activations1_17_q0;
output  [0:0] oracle_activations1_21_address0;
output   oracle_activations1_21_ce0;
input  [63:0] oracle_activations1_21_q0;
output  [0:0] oracle_activations1_25_address0;
output   oracle_activations1_25_ce0;
input  [63:0] oracle_activations1_25_q0;
output  [0:0] oracle_activations1_29_address0;
output   oracle_activations1_29_ce0;
input  [63:0] oracle_activations1_29_q0;
output  [0:0] oracle_activations1_2_address0;
output   oracle_activations1_2_ce0;
input  [63:0] oracle_activations1_2_q0;
output  [0:0] oracle_activations1_6_address0;
output   oracle_activations1_6_ce0;
input  [63:0] oracle_activations1_6_q0;
output  [0:0] oracle_activations1_10_address0;
output   oracle_activations1_10_ce0;
input  [63:0] oracle_activations1_10_q0;
output  [0:0] oracle_activations1_14_address0;
output   oracle_activations1_14_ce0;
input  [63:0] oracle_activations1_14_q0;
output  [0:0] oracle_activations1_18_address0;
output   oracle_activations1_18_ce0;
input  [63:0] oracle_activations1_18_q0;
output  [0:0] oracle_activations1_22_address0;
output   oracle_activations1_22_ce0;
input  [63:0] oracle_activations1_22_q0;
output  [0:0] oracle_activations1_26_address0;
output   oracle_activations1_26_ce0;
input  [63:0] oracle_activations1_26_q0;
output  [0:0] oracle_activations1_30_address0;
output   oracle_activations1_30_ce0;
input  [63:0] oracle_activations1_30_q0;
output  [0:0] oracle_activations1_3_address0;
output   oracle_activations1_3_ce0;
input  [63:0] oracle_activations1_3_q0;
output  [0:0] oracle_activations1_7_address0;
output   oracle_activations1_7_ce0;
input  [63:0] oracle_activations1_7_q0;
output  [0:0] oracle_activations1_11_address0;
output   oracle_activations1_11_ce0;
input  [63:0] oracle_activations1_11_q0;
output  [0:0] oracle_activations1_15_address0;
output   oracle_activations1_15_ce0;
input  [63:0] oracle_activations1_15_q0;
output  [0:0] oracle_activations1_19_address0;
output   oracle_activations1_19_ce0;
input  [63:0] oracle_activations1_19_q0;
output  [0:0] oracle_activations1_23_address0;
output   oracle_activations1_23_ce0;
input  [63:0] oracle_activations1_23_q0;
output  [0:0] oracle_activations1_27_address0;
output   oracle_activations1_27_ce0;
input  [63:0] oracle_activations1_27_q0;
output  [0:0] oracle_activations1_31_address0;
output   oracle_activations1_31_ce0;
input  [63:0] oracle_activations1_31_q0;
output  [63:0] grp_fu_6440_p_din0;
output  [63:0] grp_fu_6440_p_din1;
input  [63:0] grp_fu_6440_p_dout0;
output   grp_fu_6440_p_ce;
output  [63:0] grp_fu_8441_p_din0;
output  [63:0] grp_fu_8441_p_din1;
input  [63:0] grp_fu_8441_p_dout0;
output   grp_fu_8441_p_ce;
output  [63:0] grp_fu_8445_p_din0;
output  [63:0] grp_fu_8445_p_din1;
input  [63:0] grp_fu_8445_p_dout0;
output   grp_fu_8445_p_ce;
output  [63:0] grp_fu_8449_p_din0;
output  [63:0] grp_fu_8449_p_din1;
input  [63:0] grp_fu_8449_p_dout0;
output   grp_fu_8449_p_ce;
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
wire   [0:0] icmp_ln113_fu_1616_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln113_fu_1656_p3;
reg   [3:0] select_ln113_reg_2281;
reg   [3:0] select_ln113_reg_2281_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_2281_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_2281_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_2281_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_2281_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_2281_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_2281_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_2281_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_2281_pp0_iter9_reg;
wire   [4:0] trunc_ln114_fu_1664_p1;
reg   [4:0] trunc_ln114_reg_2287;
reg   [4:0] trunc_ln114_reg_2287_pp0_iter1_reg;
reg   [4:0] trunc_ln114_reg_2287_pp0_iter2_reg;
reg   [4:0] trunc_ln114_reg_2287_pp0_iter3_reg;
reg   [4:0] trunc_ln114_reg_2287_pp0_iter4_reg;
reg   [4:0] trunc_ln114_reg_2287_pp0_iter5_reg;
reg   [4:0] trunc_ln114_reg_2287_pp0_iter6_reg;
reg   [4:0] trunc_ln114_reg_2287_pp0_iter7_reg;
reg   [4:0] trunc_ln114_reg_2287_pp0_iter8_reg;
reg   [0:0] tmp_15_reg_2295;
reg   [0:0] tmp_15_reg_2295_pp0_iter1_reg;
reg   [0:0] tmp_15_reg_2295_pp0_iter2_reg;
reg   [0:0] tmp_15_reg_2295_pp0_iter3_reg;
reg   [0:0] tmp_15_reg_2295_pp0_iter4_reg;
reg   [0:0] tmp_15_reg_2295_pp0_iter5_reg;
reg   [0:0] tmp_15_reg_2295_pp0_iter6_reg;
reg   [0:0] tmp_15_reg_2295_pp0_iter7_reg;
reg   [0:0] tmp_15_reg_2295_pp0_iter8_reg;
reg   [0:0] tmp_15_reg_2295_pp0_iter9_reg;
wire   [4:0] empty_fu_1705_p1;
reg   [4:0] empty_reg_2301;
wire   [63:0] tmp_120_fu_1918_p67;
reg   [63:0] tmp_120_reg_2626;
wire   [63:0] tmp_121_fu_2053_p19;
reg   [63:0] tmp_121_reg_2634;
wire   [63:0] tmp_122_fu_2092_p19;
reg   [63:0] tmp_122_reg_2639;
wire   [63:0] tmp_123_fu_2131_p19;
reg   [63:0] tmp_123_reg_2644;
wire   [63:0] tmp_124_fu_2170_p19;
reg   [63:0] tmp_124_reg_2649;
reg   [63:0] mul_i5_reg_2654;
reg   [63:0] mul_1_i2_reg_2666;
reg   [63:0] mul_2_i2_reg_2678;
reg   [63:0] mul_3_i2_reg_2690;
wire   [63:0] p_cast22_fu_1719_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln112_fu_1755_p1;
wire   [63:0] zext_ln115_fu_2215_p1;
reg   [6:0] j_fu_316;
wire   [6:0] add_ln114_fu_1676_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_320;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [7:0] indvar_flatten19_fu_324;
wire   [7:0] add_ln113_fu_1622_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten19_load;
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
reg    oracle_activations1_4_ce0_local;
reg    oracle_activations1_8_ce0_local;
reg    oracle_activations1_12_ce0_local;
reg    oracle_activations1_16_ce0_local;
reg    oracle_activations1_20_ce0_local;
reg    oracle_activations1_24_ce0_local;
reg    oracle_activations1_28_ce0_local;
reg    oracle_activations1_1_ce0_local;
reg    oracle_activations1_5_ce0_local;
reg    oracle_activations1_9_ce0_local;
reg    oracle_activations1_13_ce0_local;
reg    oracle_activations1_17_ce0_local;
reg    oracle_activations1_21_ce0_local;
reg    oracle_activations1_25_ce0_local;
reg    oracle_activations1_29_ce0_local;
reg    oracle_activations1_2_ce0_local;
reg    oracle_activations1_6_ce0_local;
reg    oracle_activations1_10_ce0_local;
reg    oracle_activations1_14_ce0_local;
reg    oracle_activations1_18_ce0_local;
reg    oracle_activations1_22_ce0_local;
reg    oracle_activations1_26_ce0_local;
reg    oracle_activations1_30_ce0_local;
reg    oracle_activations1_3_ce0_local;
reg    oracle_activations1_7_ce0_local;
reg    oracle_activations1_11_ce0_local;
reg    oracle_activations1_15_ce0_local;
reg    oracle_activations1_19_ce0_local;
reg    oracle_activations1_23_ce0_local;
reg    oracle_activations1_27_ce0_local;
reg    oracle_activations1_31_ce0_local;
reg    delta_weights1_24_we0_local;
reg    ap_predicate_pred1204_state11;
reg    delta_weights1_24_ce0_local;
reg    delta_weights1_25_we0_local;
reg    delta_weights1_25_ce0_local;
reg    delta_weights1_26_we0_local;
reg    delta_weights1_26_ce0_local;
reg    delta_weights1_27_we0_local;
reg    delta_weights1_27_ce0_local;
reg    delta_weights1_20_we0_local;
reg    ap_predicate_pred1224_state11;
reg    delta_weights1_20_ce0_local;
reg    delta_weights1_21_we0_local;
reg    delta_weights1_21_ce0_local;
reg    delta_weights1_22_we0_local;
reg    delta_weights1_22_ce0_local;
reg    delta_weights1_23_we0_local;
reg    delta_weights1_23_ce0_local;
reg    delta_weights1_16_we0_local;
reg    ap_predicate_pred1244_state11;
reg    delta_weights1_16_ce0_local;
reg    delta_weights1_17_we0_local;
reg    delta_weights1_17_ce0_local;
reg    delta_weights1_18_we0_local;
reg    delta_weights1_18_ce0_local;
reg    delta_weights1_19_we0_local;
reg    delta_weights1_19_ce0_local;
reg    delta_weights1_12_we0_local;
reg    ap_predicate_pred1264_state11;
reg    delta_weights1_12_ce0_local;
reg    delta_weights1_13_we0_local;
reg    delta_weights1_13_ce0_local;
reg    delta_weights1_14_we0_local;
reg    delta_weights1_14_ce0_local;
reg    delta_weights1_15_we0_local;
reg    delta_weights1_15_ce0_local;
reg    delta_weights1_8_we0_local;
reg    ap_predicate_pred1284_state11;
reg    delta_weights1_8_ce0_local;
reg    delta_weights1_9_we0_local;
reg    delta_weights1_9_ce0_local;
reg    delta_weights1_10_we0_local;
reg    delta_weights1_10_ce0_local;
reg    delta_weights1_11_we0_local;
reg    delta_weights1_11_ce0_local;
reg    delta_weights1_4_we0_local;
reg    ap_predicate_pred1304_state11;
reg    delta_weights1_4_ce0_local;
reg    delta_weights1_5_we0_local;
reg    delta_weights1_5_ce0_local;
reg    delta_weights1_6_we0_local;
reg    delta_weights1_6_ce0_local;
reg    delta_weights1_7_we0_local;
reg    delta_weights1_7_ce0_local;
reg    delta_weights1_we0_local;
reg    ap_predicate_pred1324_state11;
reg    delta_weights1_ce0_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg    delta_weights1_28_we0_local;
reg    ap_predicate_pred1356_state11;
reg    delta_weights1_28_ce0_local;
reg    delta_weights1_29_we0_local;
reg    delta_weights1_29_ce0_local;
reg    delta_weights1_30_we0_local;
reg    delta_weights1_30_ce0_local;
reg    delta_weights1_31_we0_local;
reg    delta_weights1_31_ce0_local;
wire   [0:0] tmp_fu_1634_p3;
wire   [3:0] add_ln113_1_fu_1650_p2;
wire   [6:0] select_ln112_fu_1642_p3;
wire   [11:0] zext_ln113_fu_1697_p1;
wire   [11:0] arrayidx10_sum_fu_1700_p2;
wire   [6:0] tmp_s_fu_1709_p4;
wire   [63:0] tmp_120_fu_1918_p2;
wire   [63:0] tmp_120_fu_1918_p4;
wire   [63:0] tmp_120_fu_1918_p6;
wire   [63:0] tmp_120_fu_1918_p8;
wire   [63:0] tmp_120_fu_1918_p10;
wire   [63:0] tmp_120_fu_1918_p12;
wire   [63:0] tmp_120_fu_1918_p14;
wire   [63:0] tmp_120_fu_1918_p16;
wire   [63:0] tmp_120_fu_1918_p18;
wire   [63:0] tmp_120_fu_1918_p20;
wire   [63:0] tmp_120_fu_1918_p22;
wire   [63:0] tmp_120_fu_1918_p24;
wire   [63:0] tmp_120_fu_1918_p26;
wire   [63:0] tmp_120_fu_1918_p28;
wire   [63:0] tmp_120_fu_1918_p30;
wire   [63:0] tmp_120_fu_1918_p32;
wire   [63:0] tmp_120_fu_1918_p34;
wire   [63:0] tmp_120_fu_1918_p36;
wire   [63:0] tmp_120_fu_1918_p38;
wire   [63:0] tmp_120_fu_1918_p40;
wire   [63:0] tmp_120_fu_1918_p42;
wire   [63:0] tmp_120_fu_1918_p44;
wire   [63:0] tmp_120_fu_1918_p46;
wire   [63:0] tmp_120_fu_1918_p48;
wire   [63:0] tmp_120_fu_1918_p50;
wire   [63:0] tmp_120_fu_1918_p52;
wire   [63:0] tmp_120_fu_1918_p54;
wire   [63:0] tmp_120_fu_1918_p56;
wire   [63:0] tmp_120_fu_1918_p58;
wire   [63:0] tmp_120_fu_1918_p60;
wire   [63:0] tmp_120_fu_1918_p62;
wire   [63:0] tmp_120_fu_1918_p64;
wire   [63:0] tmp_120_fu_1918_p65;
wire   [63:0] tmp_121_fu_2053_p17;
wire   [63:0] tmp_122_fu_2092_p17;
wire   [63:0] tmp_123_fu_2131_p17;
wire   [63:0] tmp_124_fu_2170_p17;
wire   [4:0] or_ln2_fu_2209_p3;
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
wire   [4:0] tmp_120_fu_1918_p1;
wire   [4:0] tmp_120_fu_1918_p3;
wire   [4:0] tmp_120_fu_1918_p5;
wire   [4:0] tmp_120_fu_1918_p7;
wire   [4:0] tmp_120_fu_1918_p9;
wire   [4:0] tmp_120_fu_1918_p11;
wire   [4:0] tmp_120_fu_1918_p13;
wire   [4:0] tmp_120_fu_1918_p15;
wire   [4:0] tmp_120_fu_1918_p17;
wire   [4:0] tmp_120_fu_1918_p19;
wire   [4:0] tmp_120_fu_1918_p21;
wire   [4:0] tmp_120_fu_1918_p23;
wire   [4:0] tmp_120_fu_1918_p25;
wire   [4:0] tmp_120_fu_1918_p27;
wire   [4:0] tmp_120_fu_1918_p29;
wire   [4:0] tmp_120_fu_1918_p31;
wire  signed [4:0] tmp_120_fu_1918_p33;
wire  signed [4:0] tmp_120_fu_1918_p35;
wire  signed [4:0] tmp_120_fu_1918_p37;
wire  signed [4:0] tmp_120_fu_1918_p39;
wire  signed [4:0] tmp_120_fu_1918_p41;
wire  signed [4:0] tmp_120_fu_1918_p43;
wire  signed [4:0] tmp_120_fu_1918_p45;
wire  signed [4:0] tmp_120_fu_1918_p47;
wire  signed [4:0] tmp_120_fu_1918_p49;
wire  signed [4:0] tmp_120_fu_1918_p51;
wire  signed [4:0] tmp_120_fu_1918_p53;
wire  signed [4:0] tmp_120_fu_1918_p55;
wire  signed [4:0] tmp_120_fu_1918_p57;
wire  signed [4:0] tmp_120_fu_1918_p59;
wire  signed [4:0] tmp_120_fu_1918_p61;
wire  signed [4:0] tmp_120_fu_1918_p63;
wire   [4:0] tmp_121_fu_2053_p1;
wire   [4:0] tmp_121_fu_2053_p3;
wire   [4:0] tmp_121_fu_2053_p5;
wire   [4:0] tmp_121_fu_2053_p7;
wire  signed [4:0] tmp_121_fu_2053_p9;
wire  signed [4:0] tmp_121_fu_2053_p11;
wire  signed [4:0] tmp_121_fu_2053_p13;
wire  signed [4:0] tmp_121_fu_2053_p15;
wire   [4:0] tmp_122_fu_2092_p1;
wire   [4:0] tmp_122_fu_2092_p3;
wire   [4:0] tmp_122_fu_2092_p5;
wire   [4:0] tmp_122_fu_2092_p7;
wire  signed [4:0] tmp_122_fu_2092_p9;
wire  signed [4:0] tmp_122_fu_2092_p11;
wire  signed [4:0] tmp_122_fu_2092_p13;
wire  signed [4:0] tmp_122_fu_2092_p15;
wire   [4:0] tmp_123_fu_2131_p1;
wire   [4:0] tmp_123_fu_2131_p3;
wire   [4:0] tmp_123_fu_2131_p5;
wire   [4:0] tmp_123_fu_2131_p7;
wire  signed [4:0] tmp_123_fu_2131_p9;
wire  signed [4:0] tmp_123_fu_2131_p11;
wire  signed [4:0] tmp_123_fu_2131_p13;
wire  signed [4:0] tmp_123_fu_2131_p15;
wire   [4:0] tmp_124_fu_2170_p1;
wire   [4:0] tmp_124_fu_2170_p3;
wire   [4:0] tmp_124_fu_2170_p5;
wire   [4:0] tmp_124_fu_2170_p7;
wire  signed [4:0] tmp_124_fu_2170_p9;
wire  signed [4:0] tmp_124_fu_2170_p11;
wire  signed [4:0] tmp_124_fu_2170_p13;
wire  signed [4:0] tmp_124_fu_2170_p15;
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
#0 j_fu_316 = 7'd0;
#0 i_fu_320 = 4'd0;
#0 indvar_flatten19_fu_324 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1381(.din0(tmp_120_fu_1918_p2),.din1(tmp_120_fu_1918_p4),.din2(tmp_120_fu_1918_p6),.din3(tmp_120_fu_1918_p8),.din4(tmp_120_fu_1918_p10),.din5(tmp_120_fu_1918_p12),.din6(tmp_120_fu_1918_p14),.din7(tmp_120_fu_1918_p16),.din8(tmp_120_fu_1918_p18),.din9(tmp_120_fu_1918_p20),.din10(tmp_120_fu_1918_p22),.din11(tmp_120_fu_1918_p24),.din12(tmp_120_fu_1918_p26),.din13(tmp_120_fu_1918_p28),.din14(tmp_120_fu_1918_p30),.din15(tmp_120_fu_1918_p32),.din16(tmp_120_fu_1918_p34),.din17(tmp_120_fu_1918_p36),.din18(tmp_120_fu_1918_p38),.din19(tmp_120_fu_1918_p40),.din20(tmp_120_fu_1918_p42),.din21(tmp_120_fu_1918_p44),.din22(tmp_120_fu_1918_p46),.din23(tmp_120_fu_1918_p48),.din24(tmp_120_fu_1918_p50),.din25(tmp_120_fu_1918_p52),.din26(tmp_120_fu_1918_p54),.din27(tmp_120_fu_1918_p56),.din28(tmp_120_fu_1918_p58),.din29(tmp_120_fu_1918_p60),.din30(tmp_120_fu_1918_p62),.din31(tmp_120_fu_1918_p64),.def(tmp_120_fu_1918_p65),.sel(empty_reg_2301),.dout(tmp_120_fu_1918_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1382(.din0(oracle_activations1_q0),.din1(oracle_activations1_4_q0),.din2(oracle_activations1_8_q0),.din3(oracle_activations1_12_q0),.din4(oracle_activations1_16_q0),.din5(oracle_activations1_20_q0),.din6(oracle_activations1_24_q0),.din7(oracle_activations1_28_q0),.def(tmp_121_fu_2053_p17),.sel(trunc_ln114_reg_2287_pp0_iter1_reg),.dout(tmp_121_fu_2053_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1383(.din0(oracle_activations1_1_q0),.din1(oracle_activations1_5_q0),.din2(oracle_activations1_9_q0),.din3(oracle_activations1_13_q0),.din4(oracle_activations1_17_q0),.din5(oracle_activations1_21_q0),.din6(oracle_activations1_25_q0),.din7(oracle_activations1_29_q0),.def(tmp_122_fu_2092_p17),.sel(trunc_ln114_reg_2287_pp0_iter1_reg),.dout(tmp_122_fu_2092_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1384(.din0(oracle_activations1_2_q0),.din1(oracle_activations1_6_q0),.din2(oracle_activations1_10_q0),.din3(oracle_activations1_14_q0),.din4(oracle_activations1_18_q0),.din5(oracle_activations1_22_q0),.din6(oracle_activations1_26_q0),.din7(oracle_activations1_30_q0),.def(tmp_123_fu_2131_p17),.sel(trunc_ln114_reg_2287_pp0_iter1_reg),.dout(tmp_123_fu_2131_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1385(.din0(oracle_activations1_3_q0),.din1(oracle_activations1_7_q0),.din2(oracle_activations1_11_q0),.din3(oracle_activations1_15_q0),.din4(oracle_activations1_19_q0),.din5(oracle_activations1_23_q0),.din6(oracle_activations1_27_q0),.din7(oracle_activations1_31_q0),.def(tmp_124_fu_2170_p17),.sel(trunc_ln114_reg_2287_pp0_iter1_reg),.dout(tmp_124_fu_2170_p19));
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
        if (((icmp_ln113_fu_1616_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_320 <= select_ln113_fu_1656_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_320 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1616_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten19_fu_324 <= add_ln113_fu_1622_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten19_fu_324 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1616_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_316 <= add_ln114_fu_1676_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_316 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_2301 <= empty_fu_1705_p1;
        select_ln113_reg_2281 <= select_ln113_fu_1656_p3;
        select_ln113_reg_2281_pp0_iter1_reg <= select_ln113_reg_2281;
        tmp_15_reg_2295 <= select_ln112_fu_1642_p3[32'd5];
        tmp_15_reg_2295_pp0_iter1_reg <= tmp_15_reg_2295;
        trunc_ln114_reg_2287 <= trunc_ln114_fu_1664_p1;
        trunc_ln114_reg_2287_pp0_iter1_reg <= trunc_ln114_reg_2287;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        ap_predicate_pred1204_state11 <= (trunc_ln114_reg_2287_pp0_iter8_reg == 5'd24);
        ap_predicate_pred1224_state11 <= (trunc_ln114_reg_2287_pp0_iter8_reg == 5'd20);
        ap_predicate_pred1244_state11 <= (trunc_ln114_reg_2287_pp0_iter8_reg == 5'd16);
        ap_predicate_pred1264_state11 <= (trunc_ln114_reg_2287_pp0_iter8_reg == 5'd12);
        ap_predicate_pred1284_state11 <= (trunc_ln114_reg_2287_pp0_iter8_reg == 5'd8);
        ap_predicate_pred1304_state11 <= (trunc_ln114_reg_2287_pp0_iter8_reg == 5'd4);
        ap_predicate_pred1324_state11 <= (trunc_ln114_reg_2287_pp0_iter8_reg == 5'd0);
        ap_predicate_pred1356_state11 <= (~(trunc_ln114_reg_2287_pp0_iter8_reg == 5'd0) & ~(trunc_ln114_reg_2287_pp0_iter8_reg == 5'd4) & ~(trunc_ln114_reg_2287_pp0_iter8_reg == 5'd8) & ~(trunc_ln114_reg_2287_pp0_iter8_reg == 5'd12) & ~(trunc_ln114_reg_2287_pp0_iter8_reg == 5'd16) & ~(trunc_ln114_reg_2287_pp0_iter8_reg == 5'd20) & ~(trunc_ln114_reg_2287_pp0_iter8_reg == 5'd24));
        mul_1_i2_reg_2666 <= grp_fu_8441_p_dout0;
        mul_2_i2_reg_2678 <= grp_fu_8445_p_dout0;
        mul_3_i2_reg_2690 <= grp_fu_8449_p_dout0;
        mul_i5_reg_2654 <= grp_fu_6440_p_dout0;
        select_ln113_reg_2281_pp0_iter2_reg <= select_ln113_reg_2281_pp0_iter1_reg;
        select_ln113_reg_2281_pp0_iter3_reg <= select_ln113_reg_2281_pp0_iter2_reg;
        select_ln113_reg_2281_pp0_iter4_reg <= select_ln113_reg_2281_pp0_iter3_reg;
        select_ln113_reg_2281_pp0_iter5_reg <= select_ln113_reg_2281_pp0_iter4_reg;
        select_ln113_reg_2281_pp0_iter6_reg <= select_ln113_reg_2281_pp0_iter5_reg;
        select_ln113_reg_2281_pp0_iter7_reg <= select_ln113_reg_2281_pp0_iter6_reg;
        select_ln113_reg_2281_pp0_iter8_reg <= select_ln113_reg_2281_pp0_iter7_reg;
        select_ln113_reg_2281_pp0_iter9_reg <= select_ln113_reg_2281_pp0_iter8_reg;
        tmp_120_reg_2626 <= tmp_120_fu_1918_p67;
        tmp_121_reg_2634 <= tmp_121_fu_2053_p19;
        tmp_122_reg_2639 <= tmp_122_fu_2092_p19;
        tmp_123_reg_2644 <= tmp_123_fu_2131_p19;
        tmp_124_reg_2649 <= tmp_124_fu_2170_p19;
        tmp_15_reg_2295_pp0_iter2_reg <= tmp_15_reg_2295_pp0_iter1_reg;
        tmp_15_reg_2295_pp0_iter3_reg <= tmp_15_reg_2295_pp0_iter2_reg;
        tmp_15_reg_2295_pp0_iter4_reg <= tmp_15_reg_2295_pp0_iter3_reg;
        tmp_15_reg_2295_pp0_iter5_reg <= tmp_15_reg_2295_pp0_iter4_reg;
        tmp_15_reg_2295_pp0_iter6_reg <= tmp_15_reg_2295_pp0_iter5_reg;
        tmp_15_reg_2295_pp0_iter7_reg <= tmp_15_reg_2295_pp0_iter6_reg;
        tmp_15_reg_2295_pp0_iter8_reg <= tmp_15_reg_2295_pp0_iter7_reg;
        tmp_15_reg_2295_pp0_iter9_reg <= tmp_15_reg_2295_pp0_iter8_reg;
        trunc_ln114_reg_2287_pp0_iter2_reg <= trunc_ln114_reg_2287_pp0_iter1_reg;
        trunc_ln114_reg_2287_pp0_iter3_reg <= trunc_ln114_reg_2287_pp0_iter2_reg;
        trunc_ln114_reg_2287_pp0_iter4_reg <= trunc_ln114_reg_2287_pp0_iter3_reg;
        trunc_ln114_reg_2287_pp0_iter5_reg <= trunc_ln114_reg_2287_pp0_iter4_reg;
        trunc_ln114_reg_2287_pp0_iter6_reg <= trunc_ln114_reg_2287_pp0_iter5_reg;
        trunc_ln114_reg_2287_pp0_iter7_reg <= trunc_ln114_reg_2287_pp0_iter6_reg;
        trunc_ln114_reg_2287_pp0_iter8_reg <= trunc_ln114_reg_2287_pp0_iter7_reg;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_1616_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_320;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten19_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_324;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_316;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_10_ce0_local = 1'b1;
    end else begin
        delta_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1284_state11 == 1'b1))) begin
        delta_weights1_10_we0_local = 1'b1;
    end else begin
        delta_weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_11_ce0_local = 1'b1;
    end else begin
        delta_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1284_state11 == 1'b1))) begin
        delta_weights1_11_we0_local = 1'b1;
    end else begin
        delta_weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_12_ce0_local = 1'b1;
    end else begin
        delta_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1264_state11 == 1'b1))) begin
        delta_weights1_12_we0_local = 1'b1;
    end else begin
        delta_weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_13_ce0_local = 1'b1;
    end else begin
        delta_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1264_state11 == 1'b1))) begin
        delta_weights1_13_we0_local = 1'b1;
    end else begin
        delta_weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_14_ce0_local = 1'b1;
    end else begin
        delta_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1264_state11 == 1'b1))) begin
        delta_weights1_14_we0_local = 1'b1;
    end else begin
        delta_weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_15_ce0_local = 1'b1;
    end else begin
        delta_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1264_state11 == 1'b1))) begin
        delta_weights1_15_we0_local = 1'b1;
    end else begin
        delta_weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_16_ce0_local = 1'b1;
    end else begin
        delta_weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1244_state11 == 1'b1))) begin
        delta_weights1_16_we0_local = 1'b1;
    end else begin
        delta_weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_17_ce0_local = 1'b1;
    end else begin
        delta_weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1244_state11 == 1'b1))) begin
        delta_weights1_17_we0_local = 1'b1;
    end else begin
        delta_weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_18_ce0_local = 1'b1;
    end else begin
        delta_weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1244_state11 == 1'b1))) begin
        delta_weights1_18_we0_local = 1'b1;
    end else begin
        delta_weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_19_ce0_local = 1'b1;
    end else begin
        delta_weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1244_state11 == 1'b1))) begin
        delta_weights1_19_we0_local = 1'b1;
    end else begin
        delta_weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1324_state11 == 1'b1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_20_ce0_local = 1'b1;
    end else begin
        delta_weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1224_state11 == 1'b1))) begin
        delta_weights1_20_we0_local = 1'b1;
    end else begin
        delta_weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_21_ce0_local = 1'b1;
    end else begin
        delta_weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1224_state11 == 1'b1))) begin
        delta_weights1_21_we0_local = 1'b1;
    end else begin
        delta_weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_22_ce0_local = 1'b1;
    end else begin
        delta_weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1224_state11 == 1'b1))) begin
        delta_weights1_22_we0_local = 1'b1;
    end else begin
        delta_weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_23_ce0_local = 1'b1;
    end else begin
        delta_weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1224_state11 == 1'b1))) begin
        delta_weights1_23_we0_local = 1'b1;
    end else begin
        delta_weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_24_ce0_local = 1'b1;
    end else begin
        delta_weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1204_state11 == 1'b1))) begin
        delta_weights1_24_we0_local = 1'b1;
    end else begin
        delta_weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_25_ce0_local = 1'b1;
    end else begin
        delta_weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1204_state11 == 1'b1))) begin
        delta_weights1_25_we0_local = 1'b1;
    end else begin
        delta_weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_26_ce0_local = 1'b1;
    end else begin
        delta_weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1204_state11 == 1'b1))) begin
        delta_weights1_26_we0_local = 1'b1;
    end else begin
        delta_weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_27_ce0_local = 1'b1;
    end else begin
        delta_weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1204_state11 == 1'b1))) begin
        delta_weights1_27_we0_local = 1'b1;
    end else begin
        delta_weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_28_ce0_local = 1'b1;
    end else begin
        delta_weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1356_state11 == 1'b1))) begin
        delta_weights1_28_we0_local = 1'b1;
    end else begin
        delta_weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_29_ce0_local = 1'b1;
    end else begin
        delta_weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1356_state11 == 1'b1))) begin
        delta_weights1_29_we0_local = 1'b1;
    end else begin
        delta_weights1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1324_state11 == 1'b1))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_30_ce0_local = 1'b1;
    end else begin
        delta_weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1356_state11 == 1'b1))) begin
        delta_weights1_30_we0_local = 1'b1;
    end else begin
        delta_weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_31_ce0_local = 1'b1;
    end else begin
        delta_weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1356_state11 == 1'b1))) begin
        delta_weights1_31_we0_local = 1'b1;
    end else begin
        delta_weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1324_state11 == 1'b1))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1304_state11 == 1'b1))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1304_state11 == 1'b1))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1304_state11 == 1'b1))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1304_state11 == 1'b1))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_8_ce0_local = 1'b1;
    end else begin
        delta_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1284_state11 == 1'b1))) begin
        delta_weights1_8_we0_local = 1'b1;
    end else begin
        delta_weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_9_ce0_local = 1'b1;
    end else begin
        delta_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1284_state11 == 1'b1))) begin
        delta_weights1_9_we0_local = 1'b1;
    end else begin
        delta_weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_ce0_local = 1'b1;
    end else begin
        delta_weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1324_state11 == 1'b1))) begin
        delta_weights1_we0_local = 1'b1;
    end else begin
        delta_weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_10_ce0_local = 1'b1;
    end else begin
        oracle_activations1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_11_ce0_local = 1'b1;
    end else begin
        oracle_activations1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_12_ce0_local = 1'b1;
    end else begin
        oracle_activations1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_13_ce0_local = 1'b1;
    end else begin
        oracle_activations1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_14_ce0_local = 1'b1;
    end else begin
        oracle_activations1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_15_ce0_local = 1'b1;
    end else begin
        oracle_activations1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_16_ce0_local = 1'b1;
    end else begin
        oracle_activations1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_17_ce0_local = 1'b1;
    end else begin
        oracle_activations1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_18_ce0_local = 1'b1;
    end else begin
        oracle_activations1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_19_ce0_local = 1'b1;
    end else begin
        oracle_activations1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_20_ce0_local = 1'b1;
    end else begin
        oracle_activations1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_21_ce0_local = 1'b1;
    end else begin
        oracle_activations1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_22_ce0_local = 1'b1;
    end else begin
        oracle_activations1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_23_ce0_local = 1'b1;
    end else begin
        oracle_activations1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_24_ce0_local = 1'b1;
    end else begin
        oracle_activations1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_25_ce0_local = 1'b1;
    end else begin
        oracle_activations1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_26_ce0_local = 1'b1;
    end else begin
        oracle_activations1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_27_ce0_local = 1'b1;
    end else begin
        oracle_activations1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_28_ce0_local = 1'b1;
    end else begin
        oracle_activations1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_29_ce0_local = 1'b1;
    end else begin
        oracle_activations1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_2_ce0_local = 1'b1;
    end else begin
        oracle_activations1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_30_ce0_local = 1'b1;
    end else begin
        oracle_activations1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_31_ce0_local = 1'b1;
    end else begin
        oracle_activations1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_3_ce0_local = 1'b1;
    end else begin
        oracle_activations1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_4_ce0_local = 1'b1;
    end else begin
        oracle_activations1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_5_ce0_local = 1'b1;
    end else begin
        oracle_activations1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_6_ce0_local = 1'b1;
    end else begin
        oracle_activations1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_7_ce0_local = 1'b1;
    end else begin
        oracle_activations1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_8_ce0_local = 1'b1;
    end else begin
        oracle_activations1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_9_ce0_local = 1'b1;
    end else begin
        oracle_activations1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_10_ce0_local = 1'b1;
    end else begin
        training_data_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_11_ce0_local = 1'b1;
    end else begin
        training_data_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_12_ce0_local = 1'b1;
    end else begin
        training_data_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_13_ce0_local = 1'b1;
    end else begin
        training_data_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_14_ce0_local = 1'b1;
    end else begin
        training_data_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_15_ce0_local = 1'b1;
    end else begin
        training_data_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_16_ce0_local = 1'b1;
    end else begin
        training_data_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_17_ce0_local = 1'b1;
    end else begin
        training_data_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_18_ce0_local = 1'b1;
    end else begin
        training_data_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_19_ce0_local = 1'b1;
    end else begin
        training_data_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_20_ce0_local = 1'b1;
    end else begin
        training_data_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_21_ce0_local = 1'b1;
    end else begin
        training_data_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_22_ce0_local = 1'b1;
    end else begin
        training_data_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_23_ce0_local = 1'b1;
    end else begin
        training_data_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_24_ce0_local = 1'b1;
    end else begin
        training_data_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_25_ce0_local = 1'b1;
    end else begin
        training_data_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_26_ce0_local = 1'b1;
    end else begin
        training_data_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_27_ce0_local = 1'b1;
    end else begin
        training_data_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_28_ce0_local = 1'b1;
    end else begin
        training_data_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_29_ce0_local = 1'b1;
    end else begin
        training_data_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_30_ce0_local = 1'b1;
    end else begin
        training_data_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_31_ce0_local = 1'b1;
    end else begin
        training_data_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_4_ce0_local = 1'b1;
    end else begin
        training_data_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_5_ce0_local = 1'b1;
    end else begin
        training_data_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_6_ce0_local = 1'b1;
    end else begin
        training_data_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_7_ce0_local = 1'b1;
    end else begin
        training_data_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_8_ce0_local = 1'b1;
    end else begin
        training_data_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln113_1_fu_1650_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_1622_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 8'd1);
assign add_ln114_fu_1676_p2 = (select_ln112_fu_1642_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign arrayidx10_sum_fu_1700_p2 = (zext_ln113_fu_1697_p1 + phi_mul);
assign delta_weights1_10_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_10_ce0 = delta_weights1_10_ce0_local;
assign delta_weights1_10_d0 = mul_2_i2_reg_2678;
assign delta_weights1_10_we0 = delta_weights1_10_we0_local;
assign delta_weights1_11_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_11_ce0 = delta_weights1_11_ce0_local;
assign delta_weights1_11_d0 = mul_3_i2_reg_2690;
assign delta_weights1_11_we0 = delta_weights1_11_we0_local;
assign delta_weights1_12_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_12_ce0 = delta_weights1_12_ce0_local;
assign delta_weights1_12_d0 = mul_i5_reg_2654;
assign delta_weights1_12_we0 = delta_weights1_12_we0_local;
assign delta_weights1_13_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_13_ce0 = delta_weights1_13_ce0_local;
assign delta_weights1_13_d0 = mul_1_i2_reg_2666;
assign delta_weights1_13_we0 = delta_weights1_13_we0_local;
assign delta_weights1_14_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_14_ce0 = delta_weights1_14_ce0_local;
assign delta_weights1_14_d0 = mul_2_i2_reg_2678;
assign delta_weights1_14_we0 = delta_weights1_14_we0_local;
assign delta_weights1_15_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_15_ce0 = delta_weights1_15_ce0_local;
assign delta_weights1_15_d0 = mul_3_i2_reg_2690;
assign delta_weights1_15_we0 = delta_weights1_15_we0_local;
assign delta_weights1_16_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_16_ce0 = delta_weights1_16_ce0_local;
assign delta_weights1_16_d0 = mul_i5_reg_2654;
assign delta_weights1_16_we0 = delta_weights1_16_we0_local;
assign delta_weights1_17_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_17_ce0 = delta_weights1_17_ce0_local;
assign delta_weights1_17_d0 = mul_1_i2_reg_2666;
assign delta_weights1_17_we0 = delta_weights1_17_we0_local;
assign delta_weights1_18_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_18_ce0 = delta_weights1_18_ce0_local;
assign delta_weights1_18_d0 = mul_2_i2_reg_2678;
assign delta_weights1_18_we0 = delta_weights1_18_we0_local;
assign delta_weights1_19_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_19_ce0 = delta_weights1_19_ce0_local;
assign delta_weights1_19_d0 = mul_3_i2_reg_2690;
assign delta_weights1_19_we0 = delta_weights1_19_we0_local;
assign delta_weights1_1_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_d0 = mul_1_i2_reg_2666;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_20_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_20_ce0 = delta_weights1_20_ce0_local;
assign delta_weights1_20_d0 = mul_i5_reg_2654;
assign delta_weights1_20_we0 = delta_weights1_20_we0_local;
assign delta_weights1_21_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_21_ce0 = delta_weights1_21_ce0_local;
assign delta_weights1_21_d0 = mul_1_i2_reg_2666;
assign delta_weights1_21_we0 = delta_weights1_21_we0_local;
assign delta_weights1_22_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_22_ce0 = delta_weights1_22_ce0_local;
assign delta_weights1_22_d0 = mul_2_i2_reg_2678;
assign delta_weights1_22_we0 = delta_weights1_22_we0_local;
assign delta_weights1_23_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_23_ce0 = delta_weights1_23_ce0_local;
assign delta_weights1_23_d0 = mul_3_i2_reg_2690;
assign delta_weights1_23_we0 = delta_weights1_23_we0_local;
assign delta_weights1_24_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_24_ce0 = delta_weights1_24_ce0_local;
assign delta_weights1_24_d0 = mul_i5_reg_2654;
assign delta_weights1_24_we0 = delta_weights1_24_we0_local;
assign delta_weights1_25_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_25_ce0 = delta_weights1_25_ce0_local;
assign delta_weights1_25_d0 = mul_1_i2_reg_2666;
assign delta_weights1_25_we0 = delta_weights1_25_we0_local;
assign delta_weights1_26_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_26_ce0 = delta_weights1_26_ce0_local;
assign delta_weights1_26_d0 = mul_2_i2_reg_2678;
assign delta_weights1_26_we0 = delta_weights1_26_we0_local;
assign delta_weights1_27_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_27_ce0 = delta_weights1_27_ce0_local;
assign delta_weights1_27_d0 = mul_3_i2_reg_2690;
assign delta_weights1_27_we0 = delta_weights1_27_we0_local;
assign delta_weights1_28_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_28_ce0 = delta_weights1_28_ce0_local;
assign delta_weights1_28_d0 = mul_i5_reg_2654;
assign delta_weights1_28_we0 = delta_weights1_28_we0_local;
assign delta_weights1_29_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_29_ce0 = delta_weights1_29_ce0_local;
assign delta_weights1_29_d0 = mul_1_i2_reg_2666;
assign delta_weights1_29_we0 = delta_weights1_29_we0_local;
assign delta_weights1_2_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_d0 = mul_2_i2_reg_2678;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_30_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_30_ce0 = delta_weights1_30_ce0_local;
assign delta_weights1_30_d0 = mul_2_i2_reg_2678;
assign delta_weights1_30_we0 = delta_weights1_30_we0_local;
assign delta_weights1_31_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_31_ce0 = delta_weights1_31_ce0_local;
assign delta_weights1_31_d0 = mul_3_i2_reg_2690;
assign delta_weights1_31_we0 = delta_weights1_31_we0_local;
assign delta_weights1_3_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_d0 = mul_3_i2_reg_2690;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_4_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_d0 = mul_i5_reg_2654;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_5_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_d0 = mul_1_i2_reg_2666;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_6_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_d0 = mul_2_i2_reg_2678;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_7_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_d0 = mul_3_i2_reg_2690;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_8_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_8_ce0 = delta_weights1_8_ce0_local;
assign delta_weights1_8_d0 = mul_i5_reg_2654;
assign delta_weights1_8_we0 = delta_weights1_8_we0_local;
assign delta_weights1_9_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_9_ce0 = delta_weights1_9_ce0_local;
assign delta_weights1_9_d0 = mul_1_i2_reg_2666;
assign delta_weights1_9_we0 = delta_weights1_9_we0_local;
assign delta_weights1_address0 = zext_ln115_fu_2215_p1;
assign delta_weights1_ce0 = delta_weights1_ce0_local;
assign delta_weights1_d0 = mul_i5_reg_2654;
assign delta_weights1_we0 = delta_weights1_we0_local;
assign empty_fu_1705_p1 = arrayidx10_sum_fu_1700_p2[4:0];
assign grp_fu_6440_p_ce = 1'b1;
assign grp_fu_6440_p_din0 = tmp_120_reg_2626;
assign grp_fu_6440_p_din1 = tmp_121_reg_2634;
assign grp_fu_8441_p_ce = 1'b1;
assign grp_fu_8441_p_din0 = tmp_120_reg_2626;
assign grp_fu_8441_p_din1 = tmp_122_reg_2639;
assign grp_fu_8445_p_ce = 1'b1;
assign grp_fu_8445_p_din0 = tmp_120_reg_2626;
assign grp_fu_8445_p_din1 = tmp_123_reg_2644;
assign grp_fu_8449_p_ce = 1'b1;
assign grp_fu_8449_p_din0 = tmp_120_reg_2626;
assign grp_fu_8449_p_din1 = tmp_124_reg_2649;
assign icmp_ln113_fu_1616_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 8'd208) ? 1'b1 : 1'b0);
assign or_ln2_fu_2209_p3 = {{select_ln113_reg_2281_pp0_iter9_reg}, {tmp_15_reg_2295_pp0_iter9_reg}};
assign oracle_activations1_10_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_10_ce0 = oracle_activations1_10_ce0_local;
assign oracle_activations1_11_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_11_ce0 = oracle_activations1_11_ce0_local;
assign oracle_activations1_12_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_12_ce0 = oracle_activations1_12_ce0_local;
assign oracle_activations1_13_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_13_ce0 = oracle_activations1_13_ce0_local;
assign oracle_activations1_14_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_14_ce0 = oracle_activations1_14_ce0_local;
assign oracle_activations1_15_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_15_ce0 = oracle_activations1_15_ce0_local;
assign oracle_activations1_16_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_16_ce0 = oracle_activations1_16_ce0_local;
assign oracle_activations1_17_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_17_ce0 = oracle_activations1_17_ce0_local;
assign oracle_activations1_18_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_18_ce0 = oracle_activations1_18_ce0_local;
assign oracle_activations1_19_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_19_ce0 = oracle_activations1_19_ce0_local;
assign oracle_activations1_1_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_1_ce0 = oracle_activations1_1_ce0_local;
assign oracle_activations1_20_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_20_ce0 = oracle_activations1_20_ce0_local;
assign oracle_activations1_21_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_21_ce0 = oracle_activations1_21_ce0_local;
assign oracle_activations1_22_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_22_ce0 = oracle_activations1_22_ce0_local;
assign oracle_activations1_23_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_23_ce0 = oracle_activations1_23_ce0_local;
assign oracle_activations1_24_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_24_ce0 = oracle_activations1_24_ce0_local;
assign oracle_activations1_25_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_25_ce0 = oracle_activations1_25_ce0_local;
assign oracle_activations1_26_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_26_ce0 = oracle_activations1_26_ce0_local;
assign oracle_activations1_27_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_27_ce0 = oracle_activations1_27_ce0_local;
assign oracle_activations1_28_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_28_ce0 = oracle_activations1_28_ce0_local;
assign oracle_activations1_29_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_29_ce0 = oracle_activations1_29_ce0_local;
assign oracle_activations1_2_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_2_ce0 = oracle_activations1_2_ce0_local;
assign oracle_activations1_30_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_30_ce0 = oracle_activations1_30_ce0_local;
assign oracle_activations1_31_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_31_ce0 = oracle_activations1_31_ce0_local;
assign oracle_activations1_3_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_3_ce0 = oracle_activations1_3_ce0_local;
assign oracle_activations1_4_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_4_ce0 = oracle_activations1_4_ce0_local;
assign oracle_activations1_5_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_5_ce0 = oracle_activations1_5_ce0_local;
assign oracle_activations1_6_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_6_ce0 = oracle_activations1_6_ce0_local;
assign oracle_activations1_7_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_7_ce0 = oracle_activations1_7_ce0_local;
assign oracle_activations1_8_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_8_ce0 = oracle_activations1_8_ce0_local;
assign oracle_activations1_9_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_9_ce0 = oracle_activations1_9_ce0_local;
assign oracle_activations1_address0 = zext_ln112_fu_1755_p1;
assign oracle_activations1_ce0 = oracle_activations1_ce0_local;
assign p_cast22_fu_1719_p1 = tmp_s_fu_1709_p4;
assign select_ln112_fu_1642_p3 = ((tmp_fu_1634_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_1656_p3 = ((tmp_fu_1634_p3[0:0] == 1'b1) ? add_ln113_1_fu_1650_p2 : ap_sig_allocacmp_i_load);
assign tmp_120_fu_1918_p10 = training_data_4_q0;
assign tmp_120_fu_1918_p12 = training_data_5_q0;
assign tmp_120_fu_1918_p14 = training_data_6_q0;
assign tmp_120_fu_1918_p16 = training_data_7_q0;
assign tmp_120_fu_1918_p18 = training_data_8_q0;
assign tmp_120_fu_1918_p2 = training_data_0_q0;
assign tmp_120_fu_1918_p20 = training_data_9_q0;
assign tmp_120_fu_1918_p22 = training_data_10_q0;
assign tmp_120_fu_1918_p24 = training_data_11_q0;
assign tmp_120_fu_1918_p26 = training_data_12_q0;
assign tmp_120_fu_1918_p28 = training_data_13_q0;
assign tmp_120_fu_1918_p30 = training_data_14_q0;
assign tmp_120_fu_1918_p32 = training_data_15_q0;
assign tmp_120_fu_1918_p34 = training_data_16_q0;
assign tmp_120_fu_1918_p36 = training_data_17_q0;
assign tmp_120_fu_1918_p38 = training_data_18_q0;
assign tmp_120_fu_1918_p4 = training_data_1_q0;
assign tmp_120_fu_1918_p40 = training_data_19_q0;
assign tmp_120_fu_1918_p42 = training_data_20_q0;
assign tmp_120_fu_1918_p44 = training_data_21_q0;
assign tmp_120_fu_1918_p46 = training_data_22_q0;
assign tmp_120_fu_1918_p48 = training_data_23_q0;
assign tmp_120_fu_1918_p50 = training_data_24_q0;
assign tmp_120_fu_1918_p52 = training_data_25_q0;
assign tmp_120_fu_1918_p54 = training_data_26_q0;
assign tmp_120_fu_1918_p56 = training_data_27_q0;
assign tmp_120_fu_1918_p58 = training_data_28_q0;
assign tmp_120_fu_1918_p6 = training_data_2_q0;
assign tmp_120_fu_1918_p60 = training_data_29_q0;
assign tmp_120_fu_1918_p62 = training_data_30_q0;
assign tmp_120_fu_1918_p64 = training_data_31_q0;
assign tmp_120_fu_1918_p65 = 'bx;
assign tmp_120_fu_1918_p8 = training_data_3_q0;
assign tmp_121_fu_2053_p17 = 'bx;
assign tmp_122_fu_2092_p17 = 'bx;
assign tmp_123_fu_2131_p17 = 'bx;
assign tmp_124_fu_2170_p17 = 'bx;
assign tmp_fu_1634_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_1709_p4 = {{arrayidx10_sum_fu_1700_p2[11:5]}};
assign training_data_0_address0 = p_cast22_fu_1719_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_10_address0 = p_cast22_fu_1719_p1;
assign training_data_10_ce0 = training_data_10_ce0_local;
assign training_data_11_address0 = p_cast22_fu_1719_p1;
assign training_data_11_ce0 = training_data_11_ce0_local;
assign training_data_12_address0 = p_cast22_fu_1719_p1;
assign training_data_12_ce0 = training_data_12_ce0_local;
assign training_data_13_address0 = p_cast22_fu_1719_p1;
assign training_data_13_ce0 = training_data_13_ce0_local;
assign training_data_14_address0 = p_cast22_fu_1719_p1;
assign training_data_14_ce0 = training_data_14_ce0_local;
assign training_data_15_address0 = p_cast22_fu_1719_p1;
assign training_data_15_ce0 = training_data_15_ce0_local;
assign training_data_16_address0 = p_cast22_fu_1719_p1;
assign training_data_16_ce0 = training_data_16_ce0_local;
assign training_data_17_address0 = p_cast22_fu_1719_p1;
assign training_data_17_ce0 = training_data_17_ce0_local;
assign training_data_18_address0 = p_cast22_fu_1719_p1;
assign training_data_18_ce0 = training_data_18_ce0_local;
assign training_data_19_address0 = p_cast22_fu_1719_p1;
assign training_data_19_ce0 = training_data_19_ce0_local;
assign training_data_1_address0 = p_cast22_fu_1719_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_20_address0 = p_cast22_fu_1719_p1;
assign training_data_20_ce0 = training_data_20_ce0_local;
assign training_data_21_address0 = p_cast22_fu_1719_p1;
assign training_data_21_ce0 = training_data_21_ce0_local;
assign training_data_22_address0 = p_cast22_fu_1719_p1;
assign training_data_22_ce0 = training_data_22_ce0_local;
assign training_data_23_address0 = p_cast22_fu_1719_p1;
assign training_data_23_ce0 = training_data_23_ce0_local;
assign training_data_24_address0 = p_cast22_fu_1719_p1;
assign training_data_24_ce0 = training_data_24_ce0_local;
assign training_data_25_address0 = p_cast22_fu_1719_p1;
assign training_data_25_ce0 = training_data_25_ce0_local;
assign training_data_26_address0 = p_cast22_fu_1719_p1;
assign training_data_26_ce0 = training_data_26_ce0_local;
assign training_data_27_address0 = p_cast22_fu_1719_p1;
assign training_data_27_ce0 = training_data_27_ce0_local;
assign training_data_28_address0 = p_cast22_fu_1719_p1;
assign training_data_28_ce0 = training_data_28_ce0_local;
assign training_data_29_address0 = p_cast22_fu_1719_p1;
assign training_data_29_ce0 = training_data_29_ce0_local;
assign training_data_2_address0 = p_cast22_fu_1719_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_30_address0 = p_cast22_fu_1719_p1;
assign training_data_30_ce0 = training_data_30_ce0_local;
assign training_data_31_address0 = p_cast22_fu_1719_p1;
assign training_data_31_ce0 = training_data_31_ce0_local;
assign training_data_3_address0 = p_cast22_fu_1719_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_4_address0 = p_cast22_fu_1719_p1;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_5_address0 = p_cast22_fu_1719_p1;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_6_address0 = p_cast22_fu_1719_p1;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_7_address0 = p_cast22_fu_1719_p1;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign training_data_8_address0 = p_cast22_fu_1719_p1;
assign training_data_8_ce0 = training_data_8_ce0_local;
assign training_data_9_address0 = p_cast22_fu_1719_p1;
assign training_data_9_ce0 = training_data_9_ce0_local;
assign trunc_ln114_fu_1664_p1 = select_ln112_fu_1642_p3[4:0];
assign zext_ln112_fu_1755_p1 = tmp_15_reg_2295;
assign zext_ln113_fu_1697_p1 = select_ln113_reg_2281;
assign zext_ln115_fu_2215_p1 = or_ln2_fu_2209_p3;
endmodule 