
module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_24_address0,delta_weights3_24_ce0,delta_weights3_24_we0,delta_weights3_24_d0,delta_weights3_25_address0,delta_weights3_25_ce0,delta_weights3_25_we0,delta_weights3_25_d0,delta_weights3_26_address0,delta_weights3_26_ce0,delta_weights3_26_we0,delta_weights3_26_d0,delta_weights3_27_address0,delta_weights3_27_ce0,delta_weights3_27_we0,delta_weights3_27_d0,delta_weights3_28_address0,delta_weights3_28_ce0,delta_weights3_28_we0,delta_weights3_28_d0,delta_weights3_29_address0,delta_weights3_29_ce0,delta_weights3_29_we0,delta_weights3_29_d0,delta_weights3_30_address0,delta_weights3_30_ce0,delta_weights3_30_we0,delta_weights3_30_d0,delta_weights3_31_address0,delta_weights3_31_ce0,delta_weights3_31_we0,delta_weights3_31_d0,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_8_address0,last_activations_8_ce0,last_activations_8_q0,last_activations_9_address0,last_activations_9_ce0,last_activations_9_q0,last_activations_10_address0,last_activations_10_ce0,last_activations_10_q0,last_activations_11_address0,last_activations_11_ce0,last_activations_11_q0,last_activations_12_address0,last_activations_12_ce0,last_activations_12_q0,last_activations_13_address0,last_activations_13_ce0,last_activations_13_q0,last_activations_14_address0,last_activations_14_ce0,last_activations_14_q0,last_activations_15_address0,last_activations_15_ce0,last_activations_15_q0,last_activations_16_address0,last_activations_16_ce0,last_activations_16_q0,last_activations_17_address0,last_activations_17_ce0,last_activations_17_q0,last_activations_18_address0,last_activations_18_ce0,last_activations_18_q0,last_activations_19_address0,last_activations_19_ce0,last_activations_19_q0,last_activations_20_address0,last_activations_20_ce0,last_activations_20_q0,last_activations_21_address0,last_activations_21_ce0,last_activations_21_q0,last_activations_22_address0,last_activations_22_ce0,last_activations_22_q0,last_activations_23_address0,last_activations_23_ce0,last_activations_23_q0,last_activations_24_address0,last_activations_24_ce0,last_activations_24_q0,last_activations_25_address0,last_activations_25_ce0,last_activations_25_q0,last_activations_26_address0,last_activations_26_ce0,last_activations_26_q0,last_activations_27_address0,last_activations_27_ce0,last_activations_27_q0,last_activations_28_address0,last_activations_28_ce0,last_activations_28_q0,last_activations_29_address0,last_activations_29_ce0,last_activations_29_q0,last_activations_30_address0,last_activations_30_ce0,last_activations_30_q0,last_activations_31_address0,last_activations_31_ce0,last_activations_31_q0,grp_fu_6440_p_din0,grp_fu_6440_p_din1,grp_fu_6440_p_dout0,grp_fu_6440_p_ce,grp_fu_8489_p_din0,grp_fu_8489_p_din1,grp_fu_8489_p_dout0,grp_fu_8489_p_ce,grp_fu_8493_p_din0,grp_fu_8493_p_din1,grp_fu_8493_p_dout0,grp_fu_8493_p_ce,grp_fu_8497_p_din0,grp_fu_8497_p_din1,grp_fu_8497_p_dout0,grp_fu_8497_p_ce,grp_fu_8501_p_din0,grp_fu_8501_p_din1,grp_fu_8501_p_dout0,grp_fu_8501_p_ce,grp_fu_8505_p_din0,grp_fu_8505_p_din1,grp_fu_8505_p_dout0,grp_fu_8505_p_ce,grp_fu_8509_p_din0,grp_fu_8509_p_din1,grp_fu_8509_p_dout0,grp_fu_8509_p_ce,grp_fu_8513_p_din0,grp_fu_8513_p_din1,grp_fu_8513_p_dout0,grp_fu_8513_p_ce,grp_fu_8517_p_din0,grp_fu_8517_p_din1,grp_fu_8517_p_dout0,grp_fu_8517_p_ce,grp_fu_8521_p_din0,grp_fu_8521_p_din1,grp_fu_8521_p_dout0,grp_fu_8521_p_ce,grp_fu_8525_p_din0,grp_fu_8525_p_din1,grp_fu_8525_p_dout0,grp_fu_8525_p_ce,grp_fu_8529_p_din0,grp_fu_8529_p_din1,grp_fu_8529_p_dout0,grp_fu_8529_p_ce,grp_fu_8533_p_din0,grp_fu_8533_p_din1,grp_fu_8533_p_dout0,grp_fu_8533_p_ce,grp_fu_8537_p_din0,grp_fu_8537_p_din1,grp_fu_8537_p_dout0,grp_fu_8537_p_ce,grp_fu_8541_p_din0,grp_fu_8541_p_din1,grp_fu_8541_p_dout0,grp_fu_8541_p_ce,grp_fu_8545_p_din0,grp_fu_8545_p_din1,grp_fu_8545_p_dout0,grp_fu_8545_p_ce,grp_fu_8549_p_din0,grp_fu_8549_p_din1,grp_fu_8549_p_dout0,grp_fu_8549_p_ce,grp_fu_8553_p_din0,grp_fu_8553_p_din1,grp_fu_8553_p_dout0,grp_fu_8553_p_ce,grp_fu_8557_p_din0,grp_fu_8557_p_din1,grp_fu_8557_p_dout0,grp_fu_8557_p_ce,grp_fu_8561_p_din0,grp_fu_8561_p_din1,grp_fu_8561_p_dout0,grp_fu_8561_p_ce,grp_fu_8565_p_din0,grp_fu_8565_p_din1,grp_fu_8565_p_dout0,grp_fu_8565_p_ce,grp_fu_8569_p_din0,grp_fu_8569_p_din1,grp_fu_8569_p_dout0,grp_fu_8569_p_ce,grp_fu_8573_p_din0,grp_fu_8573_p_din1,grp_fu_8573_p_dout0,grp_fu_8573_p_ce,grp_fu_8577_p_din0,grp_fu_8577_p_din1,grp_fu_8577_p_dout0,grp_fu_8577_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [2:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [2:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [2:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [2:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [2:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [2:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [2:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [2:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [2:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [2:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [2:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [2:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [2:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [2:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [2:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
output  [2:0] delta_weights3_16_address0;
output   delta_weights3_16_ce0;
output   delta_weights3_16_we0;
output  [63:0] delta_weights3_16_d0;
output  [2:0] delta_weights3_17_address0;
output   delta_weights3_17_ce0;
output   delta_weights3_17_we0;
output  [63:0] delta_weights3_17_d0;
output  [2:0] delta_weights3_18_address0;
output   delta_weights3_18_ce0;
output   delta_weights3_18_we0;
output  [63:0] delta_weights3_18_d0;
output  [2:0] delta_weights3_19_address0;
output   delta_weights3_19_ce0;
output   delta_weights3_19_we0;
output  [63:0] delta_weights3_19_d0;
output  [2:0] delta_weights3_20_address0;
output   delta_weights3_20_ce0;
output   delta_weights3_20_we0;
output  [63:0] delta_weights3_20_d0;
output  [2:0] delta_weights3_21_address0;
output   delta_weights3_21_ce0;
output   delta_weights3_21_we0;
output  [63:0] delta_weights3_21_d0;
output  [2:0] delta_weights3_22_address0;
output   delta_weights3_22_ce0;
output   delta_weights3_22_we0;
output  [63:0] delta_weights3_22_d0;
output  [2:0] delta_weights3_23_address0;
output   delta_weights3_23_ce0;
output   delta_weights3_23_we0;
output  [63:0] delta_weights3_23_d0;
output  [2:0] delta_weights3_24_address0;
output   delta_weights3_24_ce0;
output   delta_weights3_24_we0;
output  [63:0] delta_weights3_24_d0;
output  [2:0] delta_weights3_25_address0;
output   delta_weights3_25_ce0;
output   delta_weights3_25_we0;
output  [63:0] delta_weights3_25_d0;
output  [2:0] delta_weights3_26_address0;
output   delta_weights3_26_ce0;
output   delta_weights3_26_we0;
output  [63:0] delta_weights3_26_d0;
output  [2:0] delta_weights3_27_address0;
output   delta_weights3_27_ce0;
output   delta_weights3_27_we0;
output  [63:0] delta_weights3_27_d0;
output  [2:0] delta_weights3_28_address0;
output   delta_weights3_28_ce0;
output   delta_weights3_28_we0;
output  [63:0] delta_weights3_28_d0;
output  [2:0] delta_weights3_29_address0;
output   delta_weights3_29_ce0;
output   delta_weights3_29_we0;
output  [63:0] delta_weights3_29_d0;
output  [2:0] delta_weights3_30_address0;
output   delta_weights3_30_ce0;
output   delta_weights3_30_we0;
output  [63:0] delta_weights3_30_d0;
output  [2:0] delta_weights3_31_address0;
output   delta_weights3_31_ce0;
output   delta_weights3_31_we0;
output  [63:0] delta_weights3_31_d0;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [0:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [0:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [0:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [0:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [0:0] last_activations_4_address0;
output   last_activations_4_ce0;
input  [63:0] last_activations_4_q0;
output  [0:0] last_activations_5_address0;
output   last_activations_5_ce0;
input  [63:0] last_activations_5_q0;
output  [0:0] last_activations_6_address0;
output   last_activations_6_ce0;
input  [63:0] last_activations_6_q0;
output  [0:0] last_activations_7_address0;
output   last_activations_7_ce0;
input  [63:0] last_activations_7_q0;
output  [0:0] last_activations_8_address0;
output   last_activations_8_ce0;
input  [63:0] last_activations_8_q0;
output  [0:0] last_activations_9_address0;
output   last_activations_9_ce0;
input  [63:0] last_activations_9_q0;
output  [0:0] last_activations_10_address0;
output   last_activations_10_ce0;
input  [63:0] last_activations_10_q0;
output  [0:0] last_activations_11_address0;
output   last_activations_11_ce0;
input  [63:0] last_activations_11_q0;
output  [0:0] last_activations_12_address0;
output   last_activations_12_ce0;
input  [63:0] last_activations_12_q0;
output  [0:0] last_activations_13_address0;
output   last_activations_13_ce0;
input  [63:0] last_activations_13_q0;
output  [0:0] last_activations_14_address0;
output   last_activations_14_ce0;
input  [63:0] last_activations_14_q0;
output  [0:0] last_activations_15_address0;
output   last_activations_15_ce0;
input  [63:0] last_activations_15_q0;
output  [0:0] last_activations_16_address0;
output   last_activations_16_ce0;
input  [63:0] last_activations_16_q0;
output  [0:0] last_activations_17_address0;
output   last_activations_17_ce0;
input  [63:0] last_activations_17_q0;
output  [0:0] last_activations_18_address0;
output   last_activations_18_ce0;
input  [63:0] last_activations_18_q0;
output  [0:0] last_activations_19_address0;
output   last_activations_19_ce0;
input  [63:0] last_activations_19_q0;
output  [0:0] last_activations_20_address0;
output   last_activations_20_ce0;
input  [63:0] last_activations_20_q0;
output  [0:0] last_activations_21_address0;
output   last_activations_21_ce0;
input  [63:0] last_activations_21_q0;
output  [0:0] last_activations_22_address0;
output   last_activations_22_ce0;
input  [63:0] last_activations_22_q0;
output  [0:0] last_activations_23_address0;
output   last_activations_23_ce0;
input  [63:0] last_activations_23_q0;
output  [0:0] last_activations_24_address0;
output   last_activations_24_ce0;
input  [63:0] last_activations_24_q0;
output  [0:0] last_activations_25_address0;
output   last_activations_25_ce0;
input  [63:0] last_activations_25_q0;
output  [0:0] last_activations_26_address0;
output   last_activations_26_ce0;
input  [63:0] last_activations_26_q0;
output  [0:0] last_activations_27_address0;
output   last_activations_27_ce0;
input  [63:0] last_activations_27_q0;
output  [0:0] last_activations_28_address0;
output   last_activations_28_ce0;
input  [63:0] last_activations_28_q0;
output  [0:0] last_activations_29_address0;
output   last_activations_29_ce0;
input  [63:0] last_activations_29_q0;
output  [0:0] last_activations_30_address0;
output   last_activations_30_ce0;
input  [63:0] last_activations_30_q0;
output  [0:0] last_activations_31_address0;
output   last_activations_31_ce0;
input  [63:0] last_activations_31_q0;
output  [63:0] grp_fu_6440_p_din0;
output  [63:0] grp_fu_6440_p_din1;
input  [63:0] grp_fu_6440_p_dout0;
output   grp_fu_6440_p_ce;
output  [63:0] grp_fu_8489_p_din0;
output  [63:0] grp_fu_8489_p_din1;
input  [63:0] grp_fu_8489_p_dout0;
output   grp_fu_8489_p_ce;
output  [63:0] grp_fu_8493_p_din0;
output  [63:0] grp_fu_8493_p_din1;
input  [63:0] grp_fu_8493_p_dout0;
output   grp_fu_8493_p_ce;
output  [63:0] grp_fu_8497_p_din0;
output  [63:0] grp_fu_8497_p_din1;
input  [63:0] grp_fu_8497_p_dout0;
output   grp_fu_8497_p_ce;
output  [63:0] grp_fu_8501_p_din0;
output  [63:0] grp_fu_8501_p_din1;
input  [63:0] grp_fu_8501_p_dout0;
output   grp_fu_8501_p_ce;
output  [63:0] grp_fu_8505_p_din0;
output  [63:0] grp_fu_8505_p_din1;
input  [63:0] grp_fu_8505_p_dout0;
output   grp_fu_8505_p_ce;
output  [63:0] grp_fu_8509_p_din0;
output  [63:0] grp_fu_8509_p_din1;
input  [63:0] grp_fu_8509_p_dout0;
output   grp_fu_8509_p_ce;
output  [63:0] grp_fu_8513_p_din0;
output  [63:0] grp_fu_8513_p_din1;
input  [63:0] grp_fu_8513_p_dout0;
output   grp_fu_8513_p_ce;
output  [63:0] grp_fu_8517_p_din0;
output  [63:0] grp_fu_8517_p_din1;
input  [63:0] grp_fu_8517_p_dout0;
output   grp_fu_8517_p_ce;
output  [63:0] grp_fu_8521_p_din0;
output  [63:0] grp_fu_8521_p_din1;
input  [63:0] grp_fu_8521_p_dout0;
output   grp_fu_8521_p_ce;
output  [63:0] grp_fu_8525_p_din0;
output  [63:0] grp_fu_8525_p_din1;
input  [63:0] grp_fu_8525_p_dout0;
output   grp_fu_8525_p_ce;
output  [63:0] grp_fu_8529_p_din0;
output  [63:0] grp_fu_8529_p_din1;
input  [63:0] grp_fu_8529_p_dout0;
output   grp_fu_8529_p_ce;
output  [63:0] grp_fu_8533_p_din0;
output  [63:0] grp_fu_8533_p_din1;
input  [63:0] grp_fu_8533_p_dout0;
output   grp_fu_8533_p_ce;
output  [63:0] grp_fu_8537_p_din0;
output  [63:0] grp_fu_8537_p_din1;
input  [63:0] grp_fu_8537_p_dout0;
output   grp_fu_8537_p_ce;
output  [63:0] grp_fu_8541_p_din0;
output  [63:0] grp_fu_8541_p_din1;
input  [63:0] grp_fu_8541_p_dout0;
output   grp_fu_8541_p_ce;
output  [63:0] grp_fu_8545_p_din0;
output  [63:0] grp_fu_8545_p_din1;
input  [63:0] grp_fu_8545_p_dout0;
output   grp_fu_8545_p_ce;
output  [63:0] grp_fu_8549_p_din0;
output  [63:0] grp_fu_8549_p_din1;
input  [63:0] grp_fu_8549_p_dout0;
output   grp_fu_8549_p_ce;
output  [63:0] grp_fu_8553_p_din0;
output  [63:0] grp_fu_8553_p_din1;
input  [63:0] grp_fu_8553_p_dout0;
output   grp_fu_8553_p_ce;
output  [63:0] grp_fu_8557_p_din0;
output  [63:0] grp_fu_8557_p_din1;
input  [63:0] grp_fu_8557_p_dout0;
output   grp_fu_8557_p_ce;
output  [63:0] grp_fu_8561_p_din0;
output  [63:0] grp_fu_8561_p_din1;
input  [63:0] grp_fu_8561_p_dout0;
output   grp_fu_8561_p_ce;
output  [63:0] grp_fu_8565_p_din0;
output  [63:0] grp_fu_8565_p_din1;
input  [63:0] grp_fu_8565_p_dout0;
output   grp_fu_8565_p_ce;
output  [63:0] grp_fu_8569_p_din0;
output  [63:0] grp_fu_8569_p_din1;
input  [63:0] grp_fu_8569_p_dout0;
output   grp_fu_8569_p_ce;
output  [63:0] grp_fu_8573_p_din0;
output  [63:0] grp_fu_8573_p_din1;
input  [63:0] grp_fu_8573_p_dout0;
output   grp_fu_8573_p_ce;
output  [63:0] grp_fu_8577_p_din0;
output  [63:0] grp_fu_8577_p_din1;
input  [63:0] grp_fu_8577_p_dout0;
output   grp_fu_8577_p_ce;
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
wire   [0:0] tmp_156_fu_1700_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_9_reg_2529;
reg   [6:0] i_9_reg_2529_pp0_iter1_reg;
reg   [6:0] i_9_reg_2529_pp0_iter2_reg;
reg   [6:0] i_9_reg_2529_pp0_iter3_reg;
reg   [6:0] i_9_reg_2529_pp0_iter4_reg;
reg   [6:0] i_9_reg_2529_pp0_iter5_reg;
reg   [6:0] i_9_reg_2529_pp0_iter6_reg;
reg   [6:0] i_9_reg_2529_pp0_iter7_reg;
reg   [6:0] i_9_reg_2529_pp0_iter8_reg;
wire   [4:0] trunc_ln73_fu_1763_p1;
reg   [4:0] trunc_ln73_reg_2700;
reg   [4:0] trunc_ln73_reg_2700_pp0_iter2_reg;
reg   [4:0] trunc_ln73_reg_2700_pp0_iter3_reg;
reg   [4:0] trunc_ln73_reg_2700_pp0_iter4_reg;
reg   [4:0] trunc_ln73_reg_2700_pp0_iter5_reg;
reg   [4:0] trunc_ln73_reg_2700_pp0_iter6_reg;
reg   [4:0] trunc_ln73_reg_2700_pp0_iter7_reg;
wire   [63:0] tmp_fu_1766_p11;
reg   [63:0] tmp_reg_2704;
wire   [63:0] tmp_s_fu_1790_p11;
reg   [63:0] tmp_s_reg_2711;
wire   [63:0] tmp_148_fu_1814_p11;
reg   [63:0] tmp_148_reg_2718;
wire   [63:0] tmp_149_fu_1838_p11;
reg   [63:0] tmp_149_reg_2725;
wire   [63:0] tmp_150_fu_1862_p11;
reg   [63:0] tmp_150_reg_2732;
wire   [63:0] tmp_151_fu_1886_p11;
reg   [63:0] tmp_151_reg_2739;
wire   [63:0] tmp_152_fu_1910_p11;
reg   [63:0] tmp_152_reg_2746;
wire   [63:0] tmp_153_fu_1934_p11;
reg   [63:0] tmp_153_reg_2753;
reg   [63:0] mul_reg_2760;
reg   [63:0] mul_s_reg_2768;
reg   [63:0] mul_8_reg_2776;
reg   [63:0] mul_1_reg_2784;
reg   [63:0] mul_1_1_reg_2792;
reg   [63:0] mul_1_2_reg_2800;
reg   [63:0] mul_2_reg_2808;
reg   [63:0] mul_2_1_reg_2816;
reg   [63:0] mul_2_2_reg_2824;
reg   [63:0] mul_3_reg_2832;
reg   [63:0] mul_3_1_reg_2840;
reg   [63:0] mul_3_2_reg_2848;
reg   [63:0] mul_4_reg_2856;
reg   [63:0] mul_4_1_reg_2864;
reg   [63:0] mul_4_2_reg_2872;
reg   [63:0] mul_5_reg_2880;
reg   [63:0] mul_5_1_reg_2888;
reg   [63:0] mul_5_2_reg_2896;
reg   [63:0] mul_6_reg_2904;
reg   [63:0] mul_6_1_reg_2912;
reg   [63:0] mul_6_2_reg_2920;
reg   [63:0] mul_7_reg_2928;
reg   [63:0] mul_7_1_reg_2936;
reg   [63:0] mul_7_2_reg_2944;
wire   [63:0] zext_ln72_fu_1716_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_1_fu_1988_p1;
wire   [63:0] zext_ln75_2_fu_2046_p1;
wire   [63:0] zext_ln75_3_fu_2070_p1;
wire   [63:0] zext_ln75_4_fu_2094_p1;
wire   [63:0] zext_ln75_5_fu_2118_p1;
wire   [63:0] zext_ln75_6_fu_2142_p1;
wire   [63:0] zext_ln75_7_fu_2166_p1;
wire   [63:0] zext_ln75_8_fu_2190_p1;
wire   [63:0] zext_ln75_9_fu_2214_p1;
wire   [63:0] zext_ln75_10_fu_2238_p1;
wire   [63:0] zext_ln75_11_fu_2262_p1;
wire   [63:0] zext_ln75_12_fu_2286_p1;
wire   [63:0] zext_ln75_13_fu_2310_p1;
wire   [63:0] zext_ln75_14_fu_2334_p1;
wire   [63:0] zext_ln75_15_fu_2358_p1;
wire   [63:0] zext_ln75_16_fu_2382_p1;
wire   [63:0] zext_ln75_17_fu_2406_p1;
wire   [63:0] zext_ln75_18_fu_2430_p1;
wire   [63:0] zext_ln75_19_fu_2454_p1;
wire   [63:0] zext_ln75_20_fu_2478_p1;
reg   [6:0] i_fu_230;
wire   [6:0] add_ln73_fu_1752_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_9;
reg    last_activations_0_ce0_local;
reg    last_activations_8_ce0_local;
reg    last_activations_16_ce0_local;
reg    last_activations_24_ce0_local;
reg    last_activations_1_ce0_local;
reg    last_activations_9_ce0_local;
reg    last_activations_17_ce0_local;
reg    last_activations_25_ce0_local;
reg    last_activations_2_ce0_local;
reg    last_activations_10_ce0_local;
reg    last_activations_18_ce0_local;
reg    last_activations_26_ce0_local;
reg    last_activations_3_ce0_local;
reg    last_activations_11_ce0_local;
reg    last_activations_19_ce0_local;
reg    last_activations_27_ce0_local;
reg    last_activations_4_ce0_local;
reg    last_activations_12_ce0_local;
reg    last_activations_20_ce0_local;
reg    last_activations_28_ce0_local;
reg    last_activations_5_ce0_local;
reg    last_activations_13_ce0_local;
reg    last_activations_21_ce0_local;
reg    last_activations_29_ce0_local;
reg    last_activations_6_ce0_local;
reg    last_activations_14_ce0_local;
reg    last_activations_22_ce0_local;
reg    last_activations_30_ce0_local;
reg    last_activations_7_ce0_local;
reg    last_activations_15_ce0_local;
reg    last_activations_23_ce0_local;
reg    last_activations_31_ce0_local;
reg    delta_weights3_16_we0_local;
reg    ap_predicate_pred973_state10;
reg   [63:0] delta_weights3_16_d0_local;
reg    delta_weights3_16_ce0_local;
reg   [2:0] delta_weights3_16_address0_local;
reg    ap_predicate_pred982_state10;
reg    ap_predicate_pred994_state10;
reg    delta_weights3_17_we0_local;
reg   [63:0] delta_weights3_17_d0_local;
reg    delta_weights3_17_ce0_local;
reg   [2:0] delta_weights3_17_address0_local;
reg    delta_weights3_18_we0_local;
reg   [63:0] delta_weights3_18_d0_local;
reg    delta_weights3_18_ce0_local;
reg   [2:0] delta_weights3_18_address0_local;
reg    delta_weights3_19_we0_local;
reg   [63:0] delta_weights3_19_d0_local;
reg    delta_weights3_19_ce0_local;
reg   [2:0] delta_weights3_19_address0_local;
reg    delta_weights3_20_we0_local;
reg   [63:0] delta_weights3_20_d0_local;
reg    delta_weights3_20_ce0_local;
reg   [2:0] delta_weights3_20_address0_local;
reg    delta_weights3_21_we0_local;
reg   [63:0] delta_weights3_21_d0_local;
reg    delta_weights3_21_ce0_local;
reg   [2:0] delta_weights3_21_address0_local;
reg    delta_weights3_22_we0_local;
reg   [63:0] delta_weights3_22_d0_local;
reg    delta_weights3_22_ce0_local;
reg   [2:0] delta_weights3_22_address0_local;
reg    delta_weights3_23_we0_local;
reg   [63:0] delta_weights3_23_d0_local;
reg    delta_weights3_23_ce0_local;
reg   [2:0] delta_weights3_23_address0_local;
reg    delta_weights3_24_we0_local;
reg   [63:0] delta_weights3_24_d0_local;
reg    delta_weights3_24_ce0_local;
reg   [2:0] delta_weights3_24_address0_local;
reg    ap_predicate_pred990_state10;
reg    delta_weights3_25_we0_local;
reg   [63:0] delta_weights3_25_d0_local;
reg    delta_weights3_25_ce0_local;
reg   [2:0] delta_weights3_25_address0_local;
reg    delta_weights3_26_we0_local;
reg   [63:0] delta_weights3_26_d0_local;
reg    delta_weights3_26_ce0_local;
reg   [2:0] delta_weights3_26_address0_local;
reg    delta_weights3_27_we0_local;
reg   [63:0] delta_weights3_27_d0_local;
reg    delta_weights3_27_ce0_local;
reg   [2:0] delta_weights3_27_address0_local;
reg    delta_weights3_28_we0_local;
reg   [63:0] delta_weights3_28_d0_local;
reg    delta_weights3_28_ce0_local;
reg   [2:0] delta_weights3_28_address0_local;
reg    delta_weights3_29_we0_local;
reg   [63:0] delta_weights3_29_d0_local;
reg    delta_weights3_29_ce0_local;
reg   [2:0] delta_weights3_29_address0_local;
reg    delta_weights3_30_we0_local;
reg   [63:0] delta_weights3_30_d0_local;
reg    delta_weights3_30_ce0_local;
reg   [2:0] delta_weights3_30_address0_local;
reg    delta_weights3_31_we0_local;
reg   [63:0] delta_weights3_31_d0_local;
reg    delta_weights3_31_ce0_local;
reg   [2:0] delta_weights3_31_address0_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [2:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [2:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [2:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [2:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [2:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [2:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [2:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we0_local;
reg   [63:0] delta_weights3_7_d0_local;
reg    delta_weights3_7_ce0_local;
reg   [2:0] delta_weights3_7_address0_local;
reg    delta_weights3_8_we0_local;
reg   [63:0] delta_weights3_8_d0_local;
reg    delta_weights3_8_ce0_local;
reg   [2:0] delta_weights3_8_address0_local;
reg    delta_weights3_9_we0_local;
reg   [63:0] delta_weights3_9_d0_local;
reg    delta_weights3_9_ce0_local;
reg   [2:0] delta_weights3_9_address0_local;
reg    delta_weights3_10_we0_local;
reg   [63:0] delta_weights3_10_d0_local;
reg    delta_weights3_10_ce0_local;
reg   [2:0] delta_weights3_10_address0_local;
reg    delta_weights3_11_we0_local;
reg   [63:0] delta_weights3_11_d0_local;
reg    delta_weights3_11_ce0_local;
reg   [2:0] delta_weights3_11_address0_local;
reg    delta_weights3_12_we0_local;
reg   [63:0] delta_weights3_12_d0_local;
reg    delta_weights3_12_ce0_local;
reg   [2:0] delta_weights3_12_address0_local;
reg    delta_weights3_13_we0_local;
reg   [63:0] delta_weights3_13_d0_local;
reg    delta_weights3_13_ce0_local;
reg   [2:0] delta_weights3_13_address0_local;
reg    delta_weights3_14_we0_local;
reg   [63:0] delta_weights3_14_d0_local;
reg    delta_weights3_14_ce0_local;
reg   [2:0] delta_weights3_14_address0_local;
reg    delta_weights3_15_we0_local;
reg   [63:0] delta_weights3_15_d0_local;
reg    delta_weights3_15_ce0_local;
reg   [2:0] delta_weights3_15_address0_local;
wire   [0:0] tmp_157_fu_1708_p3;
wire   [63:0] tmp_fu_1766_p9;
wire   [63:0] tmp_s_fu_1790_p9;
wire   [63:0] tmp_148_fu_1814_p9;
wire   [63:0] tmp_149_fu_1838_p9;
wire   [63:0] tmp_150_fu_1862_p9;
wire   [63:0] tmp_151_fu_1886_p9;
wire   [63:0] tmp_152_fu_1910_p9;
wire   [63:0] tmp_153_fu_1934_p9;
wire   [5:0] trunc_ln75_fu_1961_p1;
wire   [7:0] p_shl_fu_1964_p3;
wire   [7:0] zext_ln75_fu_1958_p1;
wire   [7:0] sub_ln75_fu_1972_p2;
wire   [2:0] lshr_ln_fu_1978_p4;
wire   [5:0] tmp_154_fu_2012_p4;
wire   [7:0] tmp_155_fu_2022_p3;
wire   [7:0] add_ln75_fu_2030_p2;
wire   [2:0] lshr_ln75_1_fu_2036_p4;
wire   [7:0] add_ln75_1_fu_2054_p2;
wire   [2:0] lshr_ln75_2_fu_2060_p4;
wire   [7:0] empty_fu_2078_p2;
wire   [2:0] lshr_ln75_3_fu_2084_p4;
wire   [7:0] add_ln75_2_fu_2102_p2;
wire   [2:0] lshr_ln75_4_fu_2108_p4;
wire   [7:0] empty_488_fu_2126_p2;
wire   [2:0] lshr_ln75_5_fu_2132_p4;
wire   [7:0] add_ln75_3_fu_2150_p2;
wire   [2:0] lshr_ln75_6_fu_2156_p4;
wire   [7:0] add_ln75_4_fu_2174_p2;
wire   [2:0] lshr_ln75_7_fu_2180_p4;
wire   [7:0] empty_489_fu_2198_p2;
wire   [2:0] lshr_ln75_8_fu_2204_p4;
wire   [7:0] add_ln75_5_fu_2222_p2;
wire   [2:0] lshr_ln75_9_fu_2228_p4;
wire   [7:0] add_ln75_6_fu_2246_p2;
wire   [2:0] lshr_ln75_s_fu_2252_p4;
wire   [7:0] empty_490_fu_2270_p2;
wire   [2:0] lshr_ln75_10_fu_2276_p4;
wire   [7:0] add_ln75_7_fu_2294_p2;
wire   [2:0] lshr_ln75_11_fu_2300_p4;
wire   [7:0] add_ln75_8_fu_2318_p2;
wire   [2:0] lshr_ln75_12_fu_2324_p4;
wire   [7:0] empty_491_fu_2342_p2;
wire   [2:0] lshr_ln75_13_fu_2348_p4;
wire   [7:0] add_ln75_9_fu_2366_p2;
wire   [2:0] lshr_ln75_14_fu_2372_p4;
wire   [7:0] add_ln75_10_fu_2390_p2;
wire   [2:0] lshr_ln75_15_fu_2396_p4;
wire   [7:0] empty_492_fu_2414_p2;
wire   [2:0] lshr_ln75_16_fu_2420_p4;
wire   [7:0] add_ln75_11_fu_2438_p2;
wire   [2:0] lshr_ln75_17_fu_2444_p4;
wire   [7:0] add_ln75_12_fu_2462_p2;
wire   [2:0] lshr_ln75_18_fu_2468_p4;
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
wire   [4:0] tmp_fu_1766_p1;
wire   [4:0] tmp_fu_1766_p3;
wire  signed [4:0] tmp_fu_1766_p5;
wire  signed [4:0] tmp_fu_1766_p7;
wire   [4:0] tmp_s_fu_1790_p1;
wire   [4:0] tmp_s_fu_1790_p3;
wire  signed [4:0] tmp_s_fu_1790_p5;
wire  signed [4:0] tmp_s_fu_1790_p7;
wire   [4:0] tmp_148_fu_1814_p1;
wire   [4:0] tmp_148_fu_1814_p3;
wire  signed [4:0] tmp_148_fu_1814_p5;
wire  signed [4:0] tmp_148_fu_1814_p7;
wire   [4:0] tmp_149_fu_1838_p1;
wire   [4:0] tmp_149_fu_1838_p3;
wire  signed [4:0] tmp_149_fu_1838_p5;
wire  signed [4:0] tmp_149_fu_1838_p7;
wire   [4:0] tmp_150_fu_1862_p1;
wire   [4:0] tmp_150_fu_1862_p3;
wire  signed [4:0] tmp_150_fu_1862_p5;
wire  signed [4:0] tmp_150_fu_1862_p7;
wire   [4:0] tmp_151_fu_1886_p1;
wire   [4:0] tmp_151_fu_1886_p3;
wire  signed [4:0] tmp_151_fu_1886_p5;
wire  signed [4:0] tmp_151_fu_1886_p7;
wire   [4:0] tmp_152_fu_1910_p1;
wire   [4:0] tmp_152_fu_1910_p3;
wire  signed [4:0] tmp_152_fu_1910_p5;
wire  signed [4:0] tmp_152_fu_1910_p7;
wire   [4:0] tmp_153_fu_1934_p1;
wire   [4:0] tmp_153_fu_1934_p3;
wire  signed [4:0] tmp_153_fu_1934_p5;
wire  signed [4:0] tmp_153_fu_1934_p7;
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
#0 i_fu_230 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U1092(.din0(last_activations_0_q0),.din1(last_activations_8_q0),.din2(last_activations_16_q0),.din3(last_activations_24_q0),.def(tmp_fu_1766_p9),.sel(trunc_ln73_fu_1763_p1),.dout(tmp_fu_1766_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U1093(.din0(last_activations_1_q0),.din1(last_activations_9_q0),.din2(last_activations_17_q0),.din3(last_activations_25_q0),.def(tmp_s_fu_1790_p9),.sel(trunc_ln73_fu_1763_p1),.dout(tmp_s_fu_1790_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U1094(.din0(last_activations_2_q0),.din1(last_activations_10_q0),.din2(last_activations_18_q0),.din3(last_activations_26_q0),.def(tmp_148_fu_1814_p9),.sel(trunc_ln73_fu_1763_p1),.dout(tmp_148_fu_1814_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U1095(.din0(last_activations_3_q0),.din1(last_activations_11_q0),.din2(last_activations_19_q0),.din3(last_activations_27_q0),.def(tmp_149_fu_1838_p9),.sel(trunc_ln73_fu_1763_p1),.dout(tmp_149_fu_1838_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U1096(.din0(last_activations_4_q0),.din1(last_activations_12_q0),.din2(last_activations_20_q0),.din3(last_activations_28_q0),.def(tmp_150_fu_1862_p9),.sel(trunc_ln73_fu_1763_p1),.dout(tmp_150_fu_1862_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U1097(.din0(last_activations_5_q0),.din1(last_activations_13_q0),.din2(last_activations_21_q0),.din3(last_activations_29_q0),.def(tmp_151_fu_1886_p9),.sel(trunc_ln73_fu_1763_p1),.dout(tmp_151_fu_1886_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U1098(.din0(last_activations_6_q0),.din1(last_activations_14_q0),.din2(last_activations_22_q0),.din3(last_activations_30_q0),.def(tmp_152_fu_1910_p9),.sel(trunc_ln73_fu_1763_p1),.dout(tmp_152_fu_1910_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U1099(.din0(last_activations_7_q0),.din1(last_activations_15_q0),.din2(last_activations_23_q0),.din3(last_activations_31_q0),.def(tmp_153_fu_1934_p9),.sel(trunc_ln73_fu_1763_p1),.dout(tmp_153_fu_1934_p11));
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
        if (((tmp_156_fu_1700_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_230 <= add_ln73_fu_1752_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_230 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_9_reg_2529 <= ap_sig_allocacmp_i_9;
        i_9_reg_2529_pp0_iter1_reg <= i_9_reg_2529;
        tmp_148_reg_2718 <= tmp_148_fu_1814_p11;
        tmp_149_reg_2725 <= tmp_149_fu_1838_p11;
        tmp_150_reg_2732 <= tmp_150_fu_1862_p11;
        tmp_151_reg_2739 <= tmp_151_fu_1886_p11;
        tmp_152_reg_2746 <= tmp_152_fu_1910_p11;
        tmp_153_reg_2753 <= tmp_153_fu_1934_p11;
        tmp_reg_2704 <= tmp_fu_1766_p11;
        tmp_s_reg_2711 <= tmp_s_fu_1790_p11;
        trunc_ln73_reg_2700 <= trunc_ln73_fu_1763_p1;
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
        ap_predicate_pred973_state10 <= (trunc_ln73_reg_2700_pp0_iter7_reg == 5'd16);
        ap_predicate_pred982_state10 <= (trunc_ln73_reg_2700_pp0_iter7_reg == 5'd0);
        ap_predicate_pred990_state10 <= (trunc_ln73_reg_2700_pp0_iter7_reg == 5'd8);
        ap_predicate_pred994_state10 <= (~(trunc_ln73_reg_2700_pp0_iter7_reg == 5'd8) & ~(trunc_ln73_reg_2700_pp0_iter7_reg == 5'd0) & ~(trunc_ln73_reg_2700_pp0_iter7_reg == 5'd16));
        i_9_reg_2529_pp0_iter2_reg <= i_9_reg_2529_pp0_iter1_reg;
        i_9_reg_2529_pp0_iter3_reg <= i_9_reg_2529_pp0_iter2_reg;
        i_9_reg_2529_pp0_iter4_reg <= i_9_reg_2529_pp0_iter3_reg;
        i_9_reg_2529_pp0_iter5_reg <= i_9_reg_2529_pp0_iter4_reg;
        i_9_reg_2529_pp0_iter6_reg <= i_9_reg_2529_pp0_iter5_reg;
        i_9_reg_2529_pp0_iter7_reg <= i_9_reg_2529_pp0_iter6_reg;
        i_9_reg_2529_pp0_iter8_reg <= i_9_reg_2529_pp0_iter7_reg;
        mul_1_1_reg_2792 <= grp_fu_8501_p_dout0;
        mul_1_2_reg_2800 <= grp_fu_8505_p_dout0;
        mul_1_reg_2784 <= grp_fu_8497_p_dout0;
        mul_2_1_reg_2816 <= grp_fu_8513_p_dout0;
        mul_2_2_reg_2824 <= grp_fu_8517_p_dout0;
        mul_2_reg_2808 <= grp_fu_8509_p_dout0;
        mul_3_1_reg_2840 <= grp_fu_8525_p_dout0;
        mul_3_2_reg_2848 <= grp_fu_8529_p_dout0;
        mul_3_reg_2832 <= grp_fu_8521_p_dout0;
        mul_4_1_reg_2864 <= grp_fu_8537_p_dout0;
        mul_4_2_reg_2872 <= grp_fu_8541_p_dout0;
        mul_4_reg_2856 <= grp_fu_8533_p_dout0;
        mul_5_1_reg_2888 <= grp_fu_8549_p_dout0;
        mul_5_2_reg_2896 <= grp_fu_8553_p_dout0;
        mul_5_reg_2880 <= grp_fu_8545_p_dout0;
        mul_6_1_reg_2912 <= grp_fu_8561_p_dout0;
        mul_6_2_reg_2920 <= grp_fu_8565_p_dout0;
        mul_6_reg_2904 <= grp_fu_8557_p_dout0;
        mul_7_1_reg_2936 <= grp_fu_8573_p_dout0;
        mul_7_2_reg_2944 <= grp_fu_8577_p_dout0;
        mul_7_reg_2928 <= grp_fu_8569_p_dout0;
        mul_8_reg_2776 <= grp_fu_8493_p_dout0;
        mul_reg_2760 <= grp_fu_6440_p_dout0;
        mul_s_reg_2768 <= grp_fu_8489_p_dout0;
        trunc_ln73_reg_2700_pp0_iter2_reg <= trunc_ln73_reg_2700;
        trunc_ln73_reg_2700_pp0_iter3_reg <= trunc_ln73_reg_2700_pp0_iter2_reg;
        trunc_ln73_reg_2700_pp0_iter4_reg <= trunc_ln73_reg_2700_pp0_iter3_reg;
        trunc_ln73_reg_2700_pp0_iter5_reg <= trunc_ln73_reg_2700_pp0_iter4_reg;
        trunc_ln73_reg_2700_pp0_iter6_reg <= trunc_ln73_reg_2700_pp0_iter5_reg;
        trunc_ln73_reg_2700_pp0_iter7_reg <= trunc_ln73_reg_2700_pp0_iter6_reg;
    end
end
always @ (*) begin
    if (((tmp_156_fu_1700_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_9 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_9 = i_fu_230;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_0_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_0_address0_local = zext_ln75_5_fu_2118_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_0_address0_local = zext_ln75_13_fu_2310_p1;
        end else begin
            delta_weights3_0_address0_local = 'bx;
        end
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_0_d0_local = mul_reg_2760;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_0_d0_local = mul_2_2_reg_2824;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_0_d0_local = mul_5_1_reg_2888;
        end else begin
            delta_weights3_0_d0_local = 'bx;
        end
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_7_fu_2166_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_15_fu_2358_p1;
        end else begin
            delta_weights3_10_address0_local = 'bx;
        end
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_8_reg_2776;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_3_1_reg_2840;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_6_reg_2904;
        end else begin
            delta_weights3_10_d0_local = 'bx;
        end
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_8_fu_2190_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_16_fu_2382_p1;
        end else begin
            delta_weights3_11_address0_local = 'bx;
        end
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_1_reg_2784;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_3_2_reg_2848;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_6_1_reg_2912;
        end else begin
            delta_weights3_11_d0_local = 'bx;
        end
    end else begin
        delta_weights3_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_2_fu_2046_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_9_fu_2214_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_17_fu_2406_p1;
        end else begin
            delta_weights3_12_address0_local = 'bx;
        end
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_1_1_reg_2792;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_4_reg_2856;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_6_2_reg_2920;
        end else begin
            delta_weights3_12_d0_local = 'bx;
        end
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_3_fu_2070_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_10_fu_2238_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_18_fu_2430_p1;
        end else begin
            delta_weights3_13_address0_local = 'bx;
        end
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_1_2_reg_2800;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_4_1_reg_2864;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_7_reg_2928;
        end else begin
            delta_weights3_13_d0_local = 'bx;
        end
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_4_fu_2094_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_11_fu_2262_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_19_fu_2454_p1;
        end else begin
            delta_weights3_14_address0_local = 'bx;
        end
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_2_reg_2808;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_4_2_reg_2872;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_7_1_reg_2936;
        end else begin
            delta_weights3_14_d0_local = 'bx;
        end
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_12_fu_2286_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_20_fu_2478_p1;
        end else begin
            delta_weights3_15_address0_local = 'bx;
        end
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_2_1_reg_2816;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_5_reg_2880;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_7_2_reg_2944;
        end else begin
            delta_weights3_15_d0_local = 'bx;
        end
    end else begin
        delta_weights3_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_5_fu_2118_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_13_fu_2310_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_1_fu_1988_p1;
        end else begin
            delta_weights3_16_address0_local = 'bx;
        end
    end else begin
        delta_weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_16_ce0_local = 1'b1;
    end else begin
        delta_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_2_2_reg_2824;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_5_1_reg_2888;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_reg_2760;
        end else begin
            delta_weights3_16_d0_local = 'bx;
        end
    end else begin
        delta_weights3_16_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_6_fu_2142_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_14_fu_2334_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_1_fu_1988_p1;
        end else begin
            delta_weights3_17_address0_local = 'bx;
        end
    end else begin
        delta_weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_17_ce0_local = 1'b1;
    end else begin
        delta_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_3_reg_2832;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_5_2_reg_2896;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_s_reg_2768;
        end else begin
            delta_weights3_17_d0_local = 'bx;
        end
    end else begin
        delta_weights3_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_7_fu_2166_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_15_fu_2358_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_1_fu_1988_p1;
        end else begin
            delta_weights3_18_address0_local = 'bx;
        end
    end else begin
        delta_weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_18_ce0_local = 1'b1;
    end else begin
        delta_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_3_1_reg_2840;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_6_reg_2904;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_8_reg_2776;
        end else begin
            delta_weights3_18_d0_local = 'bx;
        end
    end else begin
        delta_weights3_18_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_8_fu_2190_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_16_fu_2382_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_1_fu_1988_p1;
        end else begin
            delta_weights3_19_address0_local = 'bx;
        end
    end else begin
        delta_weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_19_ce0_local = 1'b1;
    end else begin
        delta_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_3_2_reg_2848;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_6_1_reg_2912;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_1_reg_2784;
        end else begin
            delta_weights3_19_d0_local = 'bx;
        end
    end else begin
        delta_weights3_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_6_fu_2142_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_14_fu_2334_p1;
        end else begin
            delta_weights3_1_address0_local = 'bx;
        end
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_s_reg_2768;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_3_reg_2832;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_5_2_reg_2896;
        end else begin
            delta_weights3_1_d0_local = 'bx;
        end
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_9_fu_2214_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_17_fu_2406_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_2_fu_2046_p1;
        end else begin
            delta_weights3_20_address0_local = 'bx;
        end
    end else begin
        delta_weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_20_ce0_local = 1'b1;
    end else begin
        delta_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_4_reg_2856;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_6_2_reg_2920;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_1_1_reg_2792;
        end else begin
            delta_weights3_20_d0_local = 'bx;
        end
    end else begin
        delta_weights3_20_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_10_fu_2238_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_18_fu_2430_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_3_fu_2070_p1;
        end else begin
            delta_weights3_21_address0_local = 'bx;
        end
    end else begin
        delta_weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_21_ce0_local = 1'b1;
    end else begin
        delta_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_4_1_reg_2864;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_7_reg_2928;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_1_2_reg_2800;
        end else begin
            delta_weights3_21_d0_local = 'bx;
        end
    end else begin
        delta_weights3_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_11_fu_2262_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_19_fu_2454_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_4_fu_2094_p1;
        end else begin
            delta_weights3_22_address0_local = 'bx;
        end
    end else begin
        delta_weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_22_ce0_local = 1'b1;
    end else begin
        delta_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_4_2_reg_2872;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_7_1_reg_2936;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_2_reg_2808;
        end else begin
            delta_weights3_22_d0_local = 'bx;
        end
    end else begin
        delta_weights3_22_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_12_fu_2286_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_20_fu_2478_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_1_fu_1988_p1;
        end else begin
            delta_weights3_23_address0_local = 'bx;
        end
    end else begin
        delta_weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_23_ce0_local = 1'b1;
    end else begin
        delta_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_5_reg_2880;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_7_2_reg_2944;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_2_1_reg_2816;
        end else begin
            delta_weights3_23_d0_local = 'bx;
        end
    end else begin
        delta_weights3_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_13_fu_2310_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_5_fu_2118_p1;
        end else begin
            delta_weights3_24_address0_local = 'bx;
        end
    end else begin
        delta_weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_24_ce0_local = 1'b1;
    end else begin
        delta_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_5_1_reg_2888;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_reg_2760;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_2_2_reg_2824;
        end else begin
            delta_weights3_24_d0_local = 'bx;
        end
    end else begin
        delta_weights3_24_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_24_we0_local = 1'b1;
    end else begin
        delta_weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_14_fu_2334_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_6_fu_2142_p1;
        end else begin
            delta_weights3_25_address0_local = 'bx;
        end
    end else begin
        delta_weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_25_ce0_local = 1'b1;
    end else begin
        delta_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_5_2_reg_2896;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_s_reg_2768;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_3_reg_2832;
        end else begin
            delta_weights3_25_d0_local = 'bx;
        end
    end else begin
        delta_weights3_25_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_25_we0_local = 1'b1;
    end else begin
        delta_weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_15_fu_2358_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_7_fu_2166_p1;
        end else begin
            delta_weights3_26_address0_local = 'bx;
        end
    end else begin
        delta_weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_26_ce0_local = 1'b1;
    end else begin
        delta_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_6_reg_2904;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_8_reg_2776;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_3_1_reg_2840;
        end else begin
            delta_weights3_26_d0_local = 'bx;
        end
    end else begin
        delta_weights3_26_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_26_we0_local = 1'b1;
    end else begin
        delta_weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_16_fu_2382_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_8_fu_2190_p1;
        end else begin
            delta_weights3_27_address0_local = 'bx;
        end
    end else begin
        delta_weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_27_ce0_local = 1'b1;
    end else begin
        delta_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_6_1_reg_2912;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_1_reg_2784;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_3_2_reg_2848;
        end else begin
            delta_weights3_27_d0_local = 'bx;
        end
    end else begin
        delta_weights3_27_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_27_we0_local = 1'b1;
    end else begin
        delta_weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_17_fu_2406_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_2_fu_2046_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_9_fu_2214_p1;
        end else begin
            delta_weights3_28_address0_local = 'bx;
        end
    end else begin
        delta_weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_28_ce0_local = 1'b1;
    end else begin
        delta_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_6_2_reg_2920;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_1_1_reg_2792;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_4_reg_2856;
        end else begin
            delta_weights3_28_d0_local = 'bx;
        end
    end else begin
        delta_weights3_28_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_28_we0_local = 1'b1;
    end else begin
        delta_weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_18_fu_2430_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_3_fu_2070_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_10_fu_2238_p1;
        end else begin
            delta_weights3_29_address0_local = 'bx;
        end
    end else begin
        delta_weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_29_ce0_local = 1'b1;
    end else begin
        delta_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_7_reg_2928;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_1_2_reg_2800;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_4_1_reg_2864;
        end else begin
            delta_weights3_29_d0_local = 'bx;
        end
    end else begin
        delta_weights3_29_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_29_we0_local = 1'b1;
    end else begin
        delta_weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_7_fu_2166_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_15_fu_2358_p1;
        end else begin
            delta_weights3_2_address0_local = 'bx;
        end
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_8_reg_2776;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_3_1_reg_2840;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_6_reg_2904;
        end else begin
            delta_weights3_2_d0_local = 'bx;
        end
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_19_fu_2454_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_4_fu_2094_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_11_fu_2262_p1;
        end else begin
            delta_weights3_30_address0_local = 'bx;
        end
    end else begin
        delta_weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_30_ce0_local = 1'b1;
    end else begin
        delta_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_7_1_reg_2936;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_2_reg_2808;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_4_2_reg_2872;
        end else begin
            delta_weights3_30_d0_local = 'bx;
        end
    end else begin
        delta_weights3_30_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_30_we0_local = 1'b1;
    end else begin
        delta_weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_20_fu_2478_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_12_fu_2286_p1;
        end else begin
            delta_weights3_31_address0_local = 'bx;
        end
    end else begin
        delta_weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_31_ce0_local = 1'b1;
    end else begin
        delta_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_7_2_reg_2944;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_2_1_reg_2816;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_5_reg_2880;
        end else begin
            delta_weights3_31_d0_local = 'bx;
        end
    end else begin
        delta_weights3_31_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_31_we0_local = 1'b1;
    end else begin
        delta_weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_8_fu_2190_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_16_fu_2382_p1;
        end else begin
            delta_weights3_3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_1_reg_2784;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_3_2_reg_2848;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_6_1_reg_2912;
        end else begin
            delta_weights3_3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_2_fu_2046_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_9_fu_2214_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_17_fu_2406_p1;
        end else begin
            delta_weights3_4_address0_local = 'bx;
        end
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_1_1_reg_2792;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_4_reg_2856;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_6_2_reg_2920;
        end else begin
            delta_weights3_4_d0_local = 'bx;
        end
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_3_fu_2070_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_10_fu_2238_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_18_fu_2430_p1;
        end else begin
            delta_weights3_5_address0_local = 'bx;
        end
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_1_2_reg_2800;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_4_1_reg_2864;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_7_reg_2928;
        end else begin
            delta_weights3_5_d0_local = 'bx;
        end
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_4_fu_2094_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_11_fu_2262_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_19_fu_2454_p1;
        end else begin
            delta_weights3_6_address0_local = 'bx;
        end
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_2_reg_2808;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_4_2_reg_2872;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_7_1_reg_2936;
        end else begin
            delta_weights3_6_d0_local = 'bx;
        end
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_12_fu_2286_p1;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_20_fu_2478_p1;
        end else begin
            delta_weights3_7_address0_local = 'bx;
        end
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_2_1_reg_2816;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_5_reg_2880;
        end else if ((ap_predicate_pred973_state10 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_7_2_reg_2944;
        end else begin
            delta_weights3_7_d0_local = 'bx;
        end
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred973_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_5_fu_2118_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_13_fu_2310_p1;
        end else begin
            delta_weights3_8_address0_local = 'bx;
        end
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_reg_2760;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_2_2_reg_2824;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_5_1_reg_2888;
        end else begin
            delta_weights3_8_d0_local = 'bx;
        end
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_1_fu_1988_p1;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_6_fu_2142_p1;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_14_fu_2334_p1;
        end else begin
            delta_weights3_9_address0_local = 'bx;
        end
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred994_state10 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_s_reg_2768;
        end else if ((ap_predicate_pred982_state10 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_3_reg_2832;
        end else if ((ap_predicate_pred990_state10 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_5_2_reg_2896;
        end else begin
            delta_weights3_9_d0_local = 'bx;
        end
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred994_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred990_state10 == 1'b1)))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_10_ce0_local = 1'b1;
    end else begin
        last_activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_11_ce0_local = 1'b1;
    end else begin
        last_activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_12_ce0_local = 1'b1;
    end else begin
        last_activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_13_ce0_local = 1'b1;
    end else begin
        last_activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_14_ce0_local = 1'b1;
    end else begin
        last_activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_15_ce0_local = 1'b1;
    end else begin
        last_activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_16_ce0_local = 1'b1;
    end else begin
        last_activations_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_17_ce0_local = 1'b1;
    end else begin
        last_activations_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_18_ce0_local = 1'b1;
    end else begin
        last_activations_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_19_ce0_local = 1'b1;
    end else begin
        last_activations_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_20_ce0_local = 1'b1;
    end else begin
        last_activations_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_21_ce0_local = 1'b1;
    end else begin
        last_activations_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_22_ce0_local = 1'b1;
    end else begin
        last_activations_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_23_ce0_local = 1'b1;
    end else begin
        last_activations_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_24_ce0_local = 1'b1;
    end else begin
        last_activations_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_25_ce0_local = 1'b1;
    end else begin
        last_activations_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_26_ce0_local = 1'b1;
    end else begin
        last_activations_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_27_ce0_local = 1'b1;
    end else begin
        last_activations_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_28_ce0_local = 1'b1;
    end else begin
        last_activations_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_29_ce0_local = 1'b1;
    end else begin
        last_activations_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_30_ce0_local = 1'b1;
    end else begin
        last_activations_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_31_ce0_local = 1'b1;
    end else begin
        last_activations_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_4_ce0_local = 1'b1;
    end else begin
        last_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_5_ce0_local = 1'b1;
    end else begin
        last_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_6_ce0_local = 1'b1;
    end else begin
        last_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_7_ce0_local = 1'b1;
    end else begin
        last_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_8_ce0_local = 1'b1;
    end else begin
        last_activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_9_ce0_local = 1'b1;
    end else begin
        last_activations_9_ce0_local = 1'b0;
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
assign add_ln73_fu_1752_p2 = (ap_sig_allocacmp_i_9 + 7'd8);
assign add_ln75_10_fu_2390_p2 = (tmp_155_fu_2022_p3 + 8'd17);
assign add_ln75_11_fu_2438_p2 = (tmp_155_fu_2022_p3 + 8'd19);
assign add_ln75_12_fu_2462_p2 = (tmp_155_fu_2022_p3 + 8'd20);
assign add_ln75_1_fu_2054_p2 = (tmp_155_fu_2022_p3 + 8'd2);
assign add_ln75_2_fu_2102_p2 = (tmp_155_fu_2022_p3 + 8'd5);
assign add_ln75_3_fu_2150_p2 = (tmp_155_fu_2022_p3 + 8'd7);
assign add_ln75_4_fu_2174_p2 = (tmp_155_fu_2022_p3 + 8'd8);
assign add_ln75_5_fu_2222_p2 = (tmp_155_fu_2022_p3 + 8'd10);
assign add_ln75_6_fu_2246_p2 = (tmp_155_fu_2022_p3 + 8'd11);
assign add_ln75_7_fu_2294_p2 = (tmp_155_fu_2022_p3 + 8'd13);
assign add_ln75_8_fu_2318_p2 = (tmp_155_fu_2022_p3 + 8'd14);
assign add_ln75_9_fu_2366_p2 = (tmp_155_fu_2022_p3 + 8'd16);
assign add_ln75_fu_2030_p2 = (tmp_155_fu_2022_p3 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_10_address0 = delta_weights3_10_address0_local;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_d0 = delta_weights3_10_d0_local;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_11_address0 = delta_weights3_11_address0_local;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_d0 = delta_weights3_11_d0_local;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_12_address0 = delta_weights3_12_address0_local;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_d0 = delta_weights3_12_d0_local;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_13_address0 = delta_weights3_13_address0_local;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_d0 = delta_weights3_13_d0_local;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_14_address0 = delta_weights3_14_address0_local;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_d0 = delta_weights3_14_d0_local;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_15_address0 = delta_weights3_15_address0_local;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_d0 = delta_weights3_15_d0_local;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_16_address0 = delta_weights3_16_address0_local;
assign delta_weights3_16_ce0 = delta_weights3_16_ce0_local;
assign delta_weights3_16_d0 = delta_weights3_16_d0_local;
assign delta_weights3_16_we0 = delta_weights3_16_we0_local;
assign delta_weights3_17_address0 = delta_weights3_17_address0_local;
assign delta_weights3_17_ce0 = delta_weights3_17_ce0_local;
assign delta_weights3_17_d0 = delta_weights3_17_d0_local;
assign delta_weights3_17_we0 = delta_weights3_17_we0_local;
assign delta_weights3_18_address0 = delta_weights3_18_address0_local;
assign delta_weights3_18_ce0 = delta_weights3_18_ce0_local;
assign delta_weights3_18_d0 = delta_weights3_18_d0_local;
assign delta_weights3_18_we0 = delta_weights3_18_we0_local;
assign delta_weights3_19_address0 = delta_weights3_19_address0_local;
assign delta_weights3_19_ce0 = delta_weights3_19_ce0_local;
assign delta_weights3_19_d0 = delta_weights3_19_d0_local;
assign delta_weights3_19_we0 = delta_weights3_19_we0_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_20_address0 = delta_weights3_20_address0_local;
assign delta_weights3_20_ce0 = delta_weights3_20_ce0_local;
assign delta_weights3_20_d0 = delta_weights3_20_d0_local;
assign delta_weights3_20_we0 = delta_weights3_20_we0_local;
assign delta_weights3_21_address0 = delta_weights3_21_address0_local;
assign delta_weights3_21_ce0 = delta_weights3_21_ce0_local;
assign delta_weights3_21_d0 = delta_weights3_21_d0_local;
assign delta_weights3_21_we0 = delta_weights3_21_we0_local;
assign delta_weights3_22_address0 = delta_weights3_22_address0_local;
assign delta_weights3_22_ce0 = delta_weights3_22_ce0_local;
assign delta_weights3_22_d0 = delta_weights3_22_d0_local;
assign delta_weights3_22_we0 = delta_weights3_22_we0_local;
assign delta_weights3_23_address0 = delta_weights3_23_address0_local;
assign delta_weights3_23_ce0 = delta_weights3_23_ce0_local;
assign delta_weights3_23_d0 = delta_weights3_23_d0_local;
assign delta_weights3_23_we0 = delta_weights3_23_we0_local;
assign delta_weights3_24_address0 = delta_weights3_24_address0_local;
assign delta_weights3_24_ce0 = delta_weights3_24_ce0_local;
assign delta_weights3_24_d0 = delta_weights3_24_d0_local;
assign delta_weights3_24_we0 = delta_weights3_24_we0_local;
assign delta_weights3_25_address0 = delta_weights3_25_address0_local;
assign delta_weights3_25_ce0 = delta_weights3_25_ce0_local;
assign delta_weights3_25_d0 = delta_weights3_25_d0_local;
assign delta_weights3_25_we0 = delta_weights3_25_we0_local;
assign delta_weights3_26_address0 = delta_weights3_26_address0_local;
assign delta_weights3_26_ce0 = delta_weights3_26_ce0_local;
assign delta_weights3_26_d0 = delta_weights3_26_d0_local;
assign delta_weights3_26_we0 = delta_weights3_26_we0_local;
assign delta_weights3_27_address0 = delta_weights3_27_address0_local;
assign delta_weights3_27_ce0 = delta_weights3_27_ce0_local;
assign delta_weights3_27_d0 = delta_weights3_27_d0_local;
assign delta_weights3_27_we0 = delta_weights3_27_we0_local;
assign delta_weights3_28_address0 = delta_weights3_28_address0_local;
assign delta_weights3_28_ce0 = delta_weights3_28_ce0_local;
assign delta_weights3_28_d0 = delta_weights3_28_d0_local;
assign delta_weights3_28_we0 = delta_weights3_28_we0_local;
assign delta_weights3_29_address0 = delta_weights3_29_address0_local;
assign delta_weights3_29_ce0 = delta_weights3_29_ce0_local;
assign delta_weights3_29_d0 = delta_weights3_29_d0_local;
assign delta_weights3_29_we0 = delta_weights3_29_we0_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_30_address0 = delta_weights3_30_address0_local;
assign delta_weights3_30_ce0 = delta_weights3_30_ce0_local;
assign delta_weights3_30_d0 = delta_weights3_30_d0_local;
assign delta_weights3_30_we0 = delta_weights3_30_we0_local;
assign delta_weights3_31_address0 = delta_weights3_31_address0_local;
assign delta_weights3_31_ce0 = delta_weights3_31_ce0_local;
assign delta_weights3_31_d0 = delta_weights3_31_d0_local;
assign delta_weights3_31_we0 = delta_weights3_31_we0_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_d0 = delta_weights3_7_d0_local;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_8_address0 = delta_weights3_8_address0_local;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_d0 = delta_weights3_8_d0_local;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_9_address0 = delta_weights3_9_address0_local;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_d0 = delta_weights3_9_d0_local;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign empty_488_fu_2126_p2 = (tmp_155_fu_2022_p3 + 8'd6);
assign empty_489_fu_2198_p2 = (tmp_155_fu_2022_p3 + 8'd9);
assign empty_490_fu_2270_p2 = (tmp_155_fu_2022_p3 + 8'd12);
assign empty_491_fu_2342_p2 = (tmp_155_fu_2022_p3 + 8'd15);
assign empty_492_fu_2414_p2 = (tmp_155_fu_2022_p3 + 8'd18);
assign empty_fu_2078_p2 = (tmp_155_fu_2022_p3 + 8'd3);
assign grp_fu_6440_p_ce = 1'b1;
assign grp_fu_6440_p_din0 = tmp_reg_2704;
assign grp_fu_6440_p_din1 = output_difference_0_0_val;
assign grp_fu_8489_p_ce = 1'b1;
assign grp_fu_8489_p_din0 = tmp_reg_2704;
assign grp_fu_8489_p_din1 = output_difference_0_1_val;
assign grp_fu_8493_p_ce = 1'b1;
assign grp_fu_8493_p_din0 = tmp_reg_2704;
assign grp_fu_8493_p_din1 = output_difference_0_2_val;
assign grp_fu_8497_p_ce = 1'b1;
assign grp_fu_8497_p_din0 = tmp_s_reg_2711;
assign grp_fu_8497_p_din1 = output_difference_0_0_val;
assign grp_fu_8501_p_ce = 1'b1;
assign grp_fu_8501_p_din0 = tmp_s_reg_2711;
assign grp_fu_8501_p_din1 = output_difference_0_1_val;
assign grp_fu_8505_p_ce = 1'b1;
assign grp_fu_8505_p_din0 = tmp_s_reg_2711;
assign grp_fu_8505_p_din1 = output_difference_0_2_val;
assign grp_fu_8509_p_ce = 1'b1;
assign grp_fu_8509_p_din0 = tmp_148_reg_2718;
assign grp_fu_8509_p_din1 = output_difference_0_0_val;
assign grp_fu_8513_p_ce = 1'b1;
assign grp_fu_8513_p_din0 = tmp_148_reg_2718;
assign grp_fu_8513_p_din1 = output_difference_0_1_val;
assign grp_fu_8517_p_ce = 1'b1;
assign grp_fu_8517_p_din0 = tmp_148_reg_2718;
assign grp_fu_8517_p_din1 = output_difference_0_2_val;
assign grp_fu_8521_p_ce = 1'b1;
assign grp_fu_8521_p_din0 = tmp_149_reg_2725;
assign grp_fu_8521_p_din1 = output_difference_0_0_val;
assign grp_fu_8525_p_ce = 1'b1;
assign grp_fu_8525_p_din0 = tmp_149_reg_2725;
assign grp_fu_8525_p_din1 = output_difference_0_1_val;
assign grp_fu_8529_p_ce = 1'b1;
assign grp_fu_8529_p_din0 = tmp_149_reg_2725;
assign grp_fu_8529_p_din1 = output_difference_0_2_val;
assign grp_fu_8533_p_ce = 1'b1;
assign grp_fu_8533_p_din0 = tmp_150_reg_2732;
assign grp_fu_8533_p_din1 = output_difference_0_0_val;
assign grp_fu_8537_p_ce = 1'b1;
assign grp_fu_8537_p_din0 = tmp_150_reg_2732;
assign grp_fu_8537_p_din1 = output_difference_0_1_val;
assign grp_fu_8541_p_ce = 1'b1;
assign grp_fu_8541_p_din0 = tmp_150_reg_2732;
assign grp_fu_8541_p_din1 = output_difference_0_2_val;
assign grp_fu_8545_p_ce = 1'b1;
assign grp_fu_8545_p_din0 = tmp_151_reg_2739;
assign grp_fu_8545_p_din1 = output_difference_0_0_val;
assign grp_fu_8549_p_ce = 1'b1;
assign grp_fu_8549_p_din0 = tmp_151_reg_2739;
assign grp_fu_8549_p_din1 = output_difference_0_1_val;
assign grp_fu_8553_p_ce = 1'b1;
assign grp_fu_8553_p_din0 = tmp_151_reg_2739;
assign grp_fu_8553_p_din1 = output_difference_0_2_val;
assign grp_fu_8557_p_ce = 1'b1;
assign grp_fu_8557_p_din0 = tmp_152_reg_2746;
assign grp_fu_8557_p_din1 = output_difference_0_0_val;
assign grp_fu_8561_p_ce = 1'b1;
assign grp_fu_8561_p_din0 = tmp_152_reg_2746;
assign grp_fu_8561_p_din1 = output_difference_0_1_val;
assign grp_fu_8565_p_ce = 1'b1;
assign grp_fu_8565_p_din0 = tmp_152_reg_2746;
assign grp_fu_8565_p_din1 = output_difference_0_2_val;
assign grp_fu_8569_p_ce = 1'b1;
assign grp_fu_8569_p_din0 = tmp_153_reg_2753;
assign grp_fu_8569_p_din1 = output_difference_0_0_val;
assign grp_fu_8573_p_ce = 1'b1;
assign grp_fu_8573_p_din0 = tmp_153_reg_2753;
assign grp_fu_8573_p_din1 = output_difference_0_1_val;
assign grp_fu_8577_p_ce = 1'b1;
assign grp_fu_8577_p_din0 = tmp_153_reg_2753;
assign grp_fu_8577_p_din1 = output_difference_0_2_val;
assign last_activations_0_address0 = zext_ln72_fu_1716_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_10_address0 = zext_ln72_fu_1716_p1;
assign last_activations_10_ce0 = last_activations_10_ce0_local;
assign last_activations_11_address0 = zext_ln72_fu_1716_p1;
assign last_activations_11_ce0 = last_activations_11_ce0_local;
assign last_activations_12_address0 = zext_ln72_fu_1716_p1;
assign last_activations_12_ce0 = last_activations_12_ce0_local;
assign last_activations_13_address0 = zext_ln72_fu_1716_p1;
assign last_activations_13_ce0 = last_activations_13_ce0_local;
assign last_activations_14_address0 = zext_ln72_fu_1716_p1;
assign last_activations_14_ce0 = last_activations_14_ce0_local;
assign last_activations_15_address0 = zext_ln72_fu_1716_p1;
assign last_activations_15_ce0 = last_activations_15_ce0_local;
assign last_activations_16_address0 = zext_ln72_fu_1716_p1;
assign last_activations_16_ce0 = last_activations_16_ce0_local;
assign last_activations_17_address0 = zext_ln72_fu_1716_p1;
assign last_activations_17_ce0 = last_activations_17_ce0_local;
assign last_activations_18_address0 = zext_ln72_fu_1716_p1;
assign last_activations_18_ce0 = last_activations_18_ce0_local;
assign last_activations_19_address0 = zext_ln72_fu_1716_p1;
assign last_activations_19_ce0 = last_activations_19_ce0_local;
assign last_activations_1_address0 = zext_ln72_fu_1716_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_20_address0 = zext_ln72_fu_1716_p1;
assign last_activations_20_ce0 = last_activations_20_ce0_local;
assign last_activations_21_address0 = zext_ln72_fu_1716_p1;
assign last_activations_21_ce0 = last_activations_21_ce0_local;
assign last_activations_22_address0 = zext_ln72_fu_1716_p1;
assign last_activations_22_ce0 = last_activations_22_ce0_local;
assign last_activations_23_address0 = zext_ln72_fu_1716_p1;
assign last_activations_23_ce0 = last_activations_23_ce0_local;
assign last_activations_24_address0 = zext_ln72_fu_1716_p1;
assign last_activations_24_ce0 = last_activations_24_ce0_local;
assign last_activations_25_address0 = zext_ln72_fu_1716_p1;
assign last_activations_25_ce0 = last_activations_25_ce0_local;
assign last_activations_26_address0 = zext_ln72_fu_1716_p1;
assign last_activations_26_ce0 = last_activations_26_ce0_local;
assign last_activations_27_address0 = zext_ln72_fu_1716_p1;
assign last_activations_27_ce0 = last_activations_27_ce0_local;
assign last_activations_28_address0 = zext_ln72_fu_1716_p1;
assign last_activations_28_ce0 = last_activations_28_ce0_local;
assign last_activations_29_address0 = zext_ln72_fu_1716_p1;
assign last_activations_29_ce0 = last_activations_29_ce0_local;
assign last_activations_2_address0 = zext_ln72_fu_1716_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_30_address0 = zext_ln72_fu_1716_p1;
assign last_activations_30_ce0 = last_activations_30_ce0_local;
assign last_activations_31_address0 = zext_ln72_fu_1716_p1;
assign last_activations_31_ce0 = last_activations_31_ce0_local;
assign last_activations_3_address0 = zext_ln72_fu_1716_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = zext_ln72_fu_1716_p1;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = zext_ln72_fu_1716_p1;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = zext_ln72_fu_1716_p1;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = zext_ln72_fu_1716_p1;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
assign last_activations_8_address0 = zext_ln72_fu_1716_p1;
assign last_activations_8_ce0 = last_activations_8_ce0_local;
assign last_activations_9_address0 = zext_ln72_fu_1716_p1;
assign last_activations_9_ce0 = last_activations_9_ce0_local;
assign lshr_ln75_10_fu_2276_p4 = {{empty_490_fu_2270_p2[7:5]}};
assign lshr_ln75_11_fu_2300_p4 = {{add_ln75_7_fu_2294_p2[7:5]}};
assign lshr_ln75_12_fu_2324_p4 = {{add_ln75_8_fu_2318_p2[7:5]}};
assign lshr_ln75_13_fu_2348_p4 = {{empty_491_fu_2342_p2[7:5]}};
assign lshr_ln75_14_fu_2372_p4 = {{add_ln75_9_fu_2366_p2[7:5]}};
assign lshr_ln75_15_fu_2396_p4 = {{add_ln75_10_fu_2390_p2[7:5]}};
assign lshr_ln75_16_fu_2420_p4 = {{empty_492_fu_2414_p2[7:5]}};
assign lshr_ln75_17_fu_2444_p4 = {{add_ln75_11_fu_2438_p2[7:5]}};
assign lshr_ln75_18_fu_2468_p4 = {{add_ln75_12_fu_2462_p2[7:5]}};
assign lshr_ln75_1_fu_2036_p4 = {{add_ln75_fu_2030_p2[7:5]}};
assign lshr_ln75_2_fu_2060_p4 = {{add_ln75_1_fu_2054_p2[7:5]}};
assign lshr_ln75_3_fu_2084_p4 = {{empty_fu_2078_p2[7:5]}};
assign lshr_ln75_4_fu_2108_p4 = {{add_ln75_2_fu_2102_p2[7:5]}};
assign lshr_ln75_5_fu_2132_p4 = {{empty_488_fu_2126_p2[7:5]}};
assign lshr_ln75_6_fu_2156_p4 = {{add_ln75_3_fu_2150_p2[7:5]}};
assign lshr_ln75_7_fu_2180_p4 = {{add_ln75_4_fu_2174_p2[7:5]}};
assign lshr_ln75_8_fu_2204_p4 = {{empty_489_fu_2198_p2[7:5]}};
assign lshr_ln75_9_fu_2228_p4 = {{add_ln75_5_fu_2222_p2[7:5]}};
assign lshr_ln75_s_fu_2252_p4 = {{add_ln75_6_fu_2246_p2[7:5]}};
assign lshr_ln_fu_1978_p4 = {{sub_ln75_fu_1972_p2[7:5]}};
assign p_shl_fu_1964_p3 = {{trunc_ln75_fu_1961_p1}, {2'd0}};
assign sub_ln75_fu_1972_p2 = (p_shl_fu_1964_p3 - zext_ln75_fu_1958_p1);
assign tmp_148_fu_1814_p9 = 'bx;
assign tmp_149_fu_1838_p9 = 'bx;
assign tmp_150_fu_1862_p9 = 'bx;
assign tmp_151_fu_1886_p9 = 'bx;
assign tmp_152_fu_1910_p9 = 'bx;
assign tmp_153_fu_1934_p9 = 'bx;
assign tmp_154_fu_2012_p4 = {{sub_ln75_fu_1972_p2[7:2]}};
assign tmp_155_fu_2022_p3 = {{tmp_154_fu_2012_p4}, {2'd3}};
assign tmp_156_fu_1700_p3 = ap_sig_allocacmp_i_9[32'd6];
assign tmp_157_fu_1708_p3 = ap_sig_allocacmp_i_9[32'd5];
assign tmp_fu_1766_p9 = 'bx;
assign tmp_s_fu_1790_p9 = 'bx;
assign trunc_ln73_fu_1763_p1 = i_9_reg_2529[4:0];
assign trunc_ln75_fu_1961_p1 = i_9_reg_2529_pp0_iter8_reg[5:0];
assign zext_ln72_fu_1716_p1 = tmp_157_fu_1708_p3;
assign zext_ln75_10_fu_2238_p1 = lshr_ln75_9_fu_2228_p4;
assign zext_ln75_11_fu_2262_p1 = lshr_ln75_s_fu_2252_p4;
assign zext_ln75_12_fu_2286_p1 = lshr_ln75_10_fu_2276_p4;
assign zext_ln75_13_fu_2310_p1 = lshr_ln75_11_fu_2300_p4;
assign zext_ln75_14_fu_2334_p1 = lshr_ln75_12_fu_2324_p4;
assign zext_ln75_15_fu_2358_p1 = lshr_ln75_13_fu_2348_p4;
assign zext_ln75_16_fu_2382_p1 = lshr_ln75_14_fu_2372_p4;
assign zext_ln75_17_fu_2406_p1 = lshr_ln75_15_fu_2396_p4;
assign zext_ln75_18_fu_2430_p1 = lshr_ln75_16_fu_2420_p4;
assign zext_ln75_19_fu_2454_p1 = lshr_ln75_17_fu_2444_p4;
assign zext_ln75_1_fu_1988_p1 = lshr_ln_fu_1978_p4;
assign zext_ln75_20_fu_2478_p1 = lshr_ln75_18_fu_2468_p4;
assign zext_ln75_2_fu_2046_p1 = lshr_ln75_1_fu_2036_p4;
assign zext_ln75_3_fu_2070_p1 = lshr_ln75_2_fu_2060_p4;
assign zext_ln75_4_fu_2094_p1 = lshr_ln75_3_fu_2084_p4;
assign zext_ln75_5_fu_2118_p1 = lshr_ln75_4_fu_2108_p4;
assign zext_ln75_6_fu_2142_p1 = lshr_ln75_5_fu_2132_p4;
assign zext_ln75_7_fu_2166_p1 = lshr_ln75_6_fu_2156_p4;
assign zext_ln75_8_fu_2190_p1 = lshr_ln75_7_fu_2180_p4;
assign zext_ln75_9_fu_2214_p1 = lshr_ln75_8_fu_2204_p4;
assign zext_ln75_fu_1958_p1 = i_9_reg_2529_pp0_iter8_reg;
endmodule 
