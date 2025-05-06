
module backprop_matrix_vector_product_with_bias_second_layer_58_59_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_0_address0,biases2_0_ce0,biases2_0_q0,biases2_1_address0,biases2_1_ce0,biases2_1_q0,biases2_2_address0,biases2_2_ce0,biases2_2_q0,biases2_3_address0,biases2_3_ce0,biases2_3_q0,biases2_4_address0,biases2_4_ce0,biases2_4_q0,biases2_5_address0,biases2_5_ce0,biases2_5_q0,biases2_6_address0,biases2_6_ce0,biases2_6_q0,biases2_7_address0,biases2_7_ce0,biases2_7_q0,biases2_8_address0,biases2_8_ce0,biases2_8_q0,biases2_9_address0,biases2_9_ce0,biases2_9_q0,biases2_10_address0,biases2_10_ce0,biases2_10_q0,biases2_11_address0,biases2_11_ce0,biases2_11_q0,biases2_12_address0,biases2_12_ce0,biases2_12_q0,biases2_13_address0,biases2_13_ce0,biases2_13_q0,biases2_14_address0,biases2_14_ce0,biases2_14_q0,biases2_15_address0,biases2_15_ce0,biases2_15_q0,biases2_16_address0,biases2_16_ce0,biases2_16_q0,biases2_17_address0,biases2_17_ce0,biases2_17_q0,biases2_18_address0,biases2_18_ce0,biases2_18_q0,biases2_19_address0,biases2_19_ce0,biases2_19_q0,biases2_20_address0,biases2_20_ce0,biases2_20_q0,biases2_21_address0,biases2_21_ce0,biases2_21_q0,biases2_22_address0,biases2_22_ce0,biases2_22_q0,biases2_23_address0,biases2_23_ce0,biases2_23_q0,biases2_24_address0,biases2_24_ce0,biases2_24_q0,biases2_25_address0,biases2_25_ce0,biases2_25_q0,biases2_26_address0,biases2_26_ce0,biases2_26_q0,biases2_27_address0,biases2_27_ce0,biases2_27_q0,biases2_28_address0,biases2_28_ce0,biases2_28_q0,biases2_29_address0,biases2_29_ce0,biases2_29_q0,biases2_30_address0,biases2_30_ce0,biases2_30_q0,biases2_31_address0,biases2_31_ce0,biases2_31_q0,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_14_address0,weights2_14_ce0,weights2_14_q0,weights2_15_address0,weights2_15_ce0,weights2_15_q0,weights2_16_address0,weights2_16_ce0,weights2_16_q0,weights2_17_address0,weights2_17_ce0,weights2_17_q0,weights2_18_address0,weights2_18_ce0,weights2_18_q0,weights2_19_address0,weights2_19_ce0,weights2_19_q0,weights2_20_address0,weights2_20_ce0,weights2_20_q0,weights2_21_address0,weights2_21_ce0,weights2_21_q0,weights2_22_address0,weights2_22_ce0,weights2_22_q0,weights2_23_address0,weights2_23_ce0,weights2_23_q0,weights2_24_address0,weights2_24_ce0,weights2_24_q0,weights2_25_address0,weights2_25_ce0,weights2_25_q0,weights2_26_address0,weights2_26_ce0,weights2_26_q0,weights2_27_address0,weights2_27_ce0,weights2_27_q0,weights2_28_address0,weights2_28_ce0,weights2_28_q0,weights2_29_address0,weights2_29_ce0,weights2_29_q0,weights2_30_address0,weights2_30_ce0,weights2_30_q0,weights2_31_address0,weights2_31_ce0,weights2_31_q0,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_q1,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_q1,activations_2_address0,activations_2_ce0,activations_2_we0,activations_2_d0,activations_2_address1,activations_2_ce1,activations_2_q1,activations_3_address0,activations_3_ce0,activations_3_we0,activations_3_d0,activations_3_address1,activations_3_ce1,activations_3_q1,activations_4_address0,activations_4_ce0,activations_4_we0,activations_4_d0,activations_4_address1,activations_4_ce1,activations_4_q1,activations_5_address0,activations_5_ce0,activations_5_we0,activations_5_d0,activations_5_address1,activations_5_ce1,activations_5_q1,activations_6_address0,activations_6_ce0,activations_6_we0,activations_6_d0,activations_6_address1,activations_6_ce1,activations_6_q1,activations_7_address0,activations_7_ce0,activations_7_we0,activations_7_d0,activations_7_address1,activations_7_ce1,activations_7_q1,activations_8_address0,activations_8_ce0,activations_8_we0,activations_8_d0,activations_8_address1,activations_8_ce1,activations_8_q1,activations_9_address0,activations_9_ce0,activations_9_we0,activations_9_d0,activations_9_address1,activations_9_ce1,activations_9_q1,activations_10_address0,activations_10_ce0,activations_10_we0,activations_10_d0,activations_10_address1,activations_10_ce1,activations_10_q1,activations_11_address0,activations_11_ce0,activations_11_we0,activations_11_d0,activations_11_address1,activations_11_ce1,activations_11_q1,activations_12_address0,activations_12_ce0,activations_12_we0,activations_12_d0,activations_12_address1,activations_12_ce1,activations_12_q1,activations_13_address0,activations_13_ce0,activations_13_we0,activations_13_d0,activations_13_address1,activations_13_ce1,activations_13_q1,activations_14_address0,activations_14_ce0,activations_14_we0,activations_14_d0,activations_14_address1,activations_14_ce1,activations_14_q1,activations_15_address0,activations_15_ce0,activations_15_we0,activations_15_d0,activations_15_address1,activations_15_ce1,activations_15_q1,activations_16_address0,activations_16_ce0,activations_16_we0,activations_16_d0,activations_16_address1,activations_16_ce1,activations_16_q1,activations_17_address0,activations_17_ce0,activations_17_we0,activations_17_d0,activations_17_address1,activations_17_ce1,activations_17_q1,activations_18_address0,activations_18_ce0,activations_18_we0,activations_18_d0,activations_18_address1,activations_18_ce1,activations_18_q1,activations_19_address0,activations_19_ce0,activations_19_we0,activations_19_d0,activations_19_address1,activations_19_ce1,activations_19_q1,activations_20_address0,activations_20_ce0,activations_20_we0,activations_20_d0,activations_20_address1,activations_20_ce1,activations_20_q1,activations_21_address0,activations_21_ce0,activations_21_we0,activations_21_d0,activations_21_address1,activations_21_ce1,activations_21_q1,activations_22_address0,activations_22_ce0,activations_22_we0,activations_22_d0,activations_22_address1,activations_22_ce1,activations_22_q1,activations_23_address0,activations_23_ce0,activations_23_we0,activations_23_d0,activations_23_address1,activations_23_ce1,activations_23_q1,activations_24_address0,activations_24_ce0,activations_24_we0,activations_24_d0,activations_24_address1,activations_24_ce1,activations_24_q1,activations_25_address0,activations_25_ce0,activations_25_we0,activations_25_d0,activations_25_address1,activations_25_ce1,activations_25_q1,activations_26_address0,activations_26_ce0,activations_26_we0,activations_26_d0,activations_26_address1,activations_26_ce1,activations_26_q1,activations_27_address0,activations_27_ce0,activations_27_we0,activations_27_d0,activations_27_address1,activations_27_ce1,activations_27_q1,activations_28_address0,activations_28_ce0,activations_28_we0,activations_28_d0,activations_28_address1,activations_28_ce1,activations_28_q1,activations_29_address0,activations_29_ce0,activations_29_we0,activations_29_d0,activations_29_address1,activations_29_ce1,activations_29_q1,activations_30_address0,activations_30_ce0,activations_30_we0,activations_30_d0,activations_30_address1,activations_30_ce1,activations_30_q1,activations_31_address0,activations_31_ce0,activations_31_we0,activations_31_d0,activations_31_address1,activations_31_ce1,activations_31_q1,input_activations_0_address0,input_activations_0_ce0,input_activations_0_q0,input_activations_1_address0,input_activations_1_ce0,input_activations_1_q0,input_activations_2_address0,input_activations_2_ce0,input_activations_2_q0,input_activations_3_address0,input_activations_3_ce0,input_activations_3_q0,input_activations_4_address0,input_activations_4_ce0,input_activations_4_q0,input_activations_5_address0,input_activations_5_ce0,input_activations_5_q0,input_activations_6_address0,input_activations_6_ce0,input_activations_6_q0,input_activations_7_address0,input_activations_7_ce0,input_activations_7_q0,input_activations_8_address0,input_activations_8_ce0,input_activations_8_q0,input_activations_9_address0,input_activations_9_ce0,input_activations_9_q0,input_activations_10_address0,input_activations_10_ce0,input_activations_10_q0,input_activations_11_address0,input_activations_11_ce0,input_activations_11_q0,input_activations_12_address0,input_activations_12_ce0,input_activations_12_q0,input_activations_13_address0,input_activations_13_ce0,input_activations_13_q0,input_activations_14_address0,input_activations_14_ce0,input_activations_14_q0,input_activations_15_address0,input_activations_15_ce0,input_activations_15_q0,input_activations_16_address0,input_activations_16_ce0,input_activations_16_q0,input_activations_17_address0,input_activations_17_ce0,input_activations_17_q0,input_activations_18_address0,input_activations_18_ce0,input_activations_18_q0,input_activations_19_address0,input_activations_19_ce0,input_activations_19_q0,input_activations_20_address0,input_activations_20_ce0,input_activations_20_q0,input_activations_21_address0,input_activations_21_ce0,input_activations_21_q0,input_activations_22_address0,input_activations_22_ce0,input_activations_22_q0,input_activations_23_address0,input_activations_23_ce0,input_activations_23_q0,input_activations_24_address0,input_activations_24_ce0,input_activations_24_q0,input_activations_25_address0,input_activations_25_ce0,input_activations_25_q0,input_activations_26_address0,input_activations_26_ce0,input_activations_26_q0,input_activations_27_address0,input_activations_27_ce0,input_activations_27_q0,input_activations_28_address0,input_activations_28_ce0,input_activations_28_q0,input_activations_29_address0,input_activations_29_ce0,input_activations_29_q0,input_activations_30_address0,input_activations_30_ce0,input_activations_30_q0,input_activations_31_address0,input_activations_31_ce0,input_activations_31_q0,grp_fu_9536_p_din0,grp_fu_9536_p_din1,grp_fu_9536_p_opcode,grp_fu_9536_p_dout0,grp_fu_9536_p_ce,grp_fu_9728_p_din0,grp_fu_9728_p_din1,grp_fu_9728_p_dout0,grp_fu_9728_p_ce);  
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] biases2_0_address0;
output   biases2_0_ce0;
input  [63:0] biases2_0_q0;
output  [0:0] biases2_1_address0;
output   biases2_1_ce0;
input  [63:0] biases2_1_q0;
output  [0:0] biases2_2_address0;
output   biases2_2_ce0;
input  [63:0] biases2_2_q0;
output  [0:0] biases2_3_address0;
output   biases2_3_ce0;
input  [63:0] biases2_3_q0;
output  [0:0] biases2_4_address0;
output   biases2_4_ce0;
input  [63:0] biases2_4_q0;
output  [0:0] biases2_5_address0;
output   biases2_5_ce0;
input  [63:0] biases2_5_q0;
output  [0:0] biases2_6_address0;
output   biases2_6_ce0;
input  [63:0] biases2_6_q0;
output  [0:0] biases2_7_address0;
output   biases2_7_ce0;
input  [63:0] biases2_7_q0;
output  [0:0] biases2_8_address0;
output   biases2_8_ce0;
input  [63:0] biases2_8_q0;
output  [0:0] biases2_9_address0;
output   biases2_9_ce0;
input  [63:0] biases2_9_q0;
output  [0:0] biases2_10_address0;
output   biases2_10_ce0;
input  [63:0] biases2_10_q0;
output  [0:0] biases2_11_address0;
output   biases2_11_ce0;
input  [63:0] biases2_11_q0;
output  [0:0] biases2_12_address0;
output   biases2_12_ce0;
input  [63:0] biases2_12_q0;
output  [0:0] biases2_13_address0;
output   biases2_13_ce0;
input  [63:0] biases2_13_q0;
output  [0:0] biases2_14_address0;
output   biases2_14_ce0;
input  [63:0] biases2_14_q0;
output  [0:0] biases2_15_address0;
output   biases2_15_ce0;
input  [63:0] biases2_15_q0;
output  [0:0] biases2_16_address0;
output   biases2_16_ce0;
input  [63:0] biases2_16_q0;
output  [0:0] biases2_17_address0;
output   biases2_17_ce0;
input  [63:0] biases2_17_q0;
output  [0:0] biases2_18_address0;
output   biases2_18_ce0;
input  [63:0] biases2_18_q0;
output  [0:0] biases2_19_address0;
output   biases2_19_ce0;
input  [63:0] biases2_19_q0;
output  [0:0] biases2_20_address0;
output   biases2_20_ce0;
input  [63:0] biases2_20_q0;
output  [0:0] biases2_21_address0;
output   biases2_21_ce0;
input  [63:0] biases2_21_q0;
output  [0:0] biases2_22_address0;
output   biases2_22_ce0;
input  [63:0] biases2_22_q0;
output  [0:0] biases2_23_address0;
output   biases2_23_ce0;
input  [63:0] biases2_23_q0;
output  [0:0] biases2_24_address0;
output   biases2_24_ce0;
input  [63:0] biases2_24_q0;
output  [0:0] biases2_25_address0;
output   biases2_25_ce0;
input  [63:0] biases2_25_q0;
output  [0:0] biases2_26_address0;
output   biases2_26_ce0;
input  [63:0] biases2_26_q0;
output  [0:0] biases2_27_address0;
output   biases2_27_ce0;
input  [63:0] biases2_27_q0;
output  [0:0] biases2_28_address0;
output   biases2_28_ce0;
input  [63:0] biases2_28_q0;
output  [0:0] biases2_29_address0;
output   biases2_29_ce0;
input  [63:0] biases2_29_q0;
output  [0:0] biases2_30_address0;
output   biases2_30_ce0;
input  [63:0] biases2_30_q0;
output  [0:0] biases2_31_address0;
output   biases2_31_ce0;
input  [63:0] biases2_31_q0;
output  [6:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [6:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [6:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [6:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [6:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [6:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [6:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [6:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [6:0] weights2_8_address0;
output   weights2_8_ce0;
input  [63:0] weights2_8_q0;
output  [6:0] weights2_9_address0;
output   weights2_9_ce0;
input  [63:0] weights2_9_q0;
output  [6:0] weights2_10_address0;
output   weights2_10_ce0;
input  [63:0] weights2_10_q0;
output  [6:0] weights2_11_address0;
output   weights2_11_ce0;
input  [63:0] weights2_11_q0;
output  [6:0] weights2_12_address0;
output   weights2_12_ce0;
input  [63:0] weights2_12_q0;
output  [6:0] weights2_13_address0;
output   weights2_13_ce0;
input  [63:0] weights2_13_q0;
output  [6:0] weights2_14_address0;
output   weights2_14_ce0;
input  [63:0] weights2_14_q0;
output  [6:0] weights2_15_address0;
output   weights2_15_ce0;
input  [63:0] weights2_15_q0;
output  [6:0] weights2_16_address0;
output   weights2_16_ce0;
input  [63:0] weights2_16_q0;
output  [6:0] weights2_17_address0;
output   weights2_17_ce0;
input  [63:0] weights2_17_q0;
output  [6:0] weights2_18_address0;
output   weights2_18_ce0;
input  [63:0] weights2_18_q0;
output  [6:0] weights2_19_address0;
output   weights2_19_ce0;
input  [63:0] weights2_19_q0;
output  [6:0] weights2_20_address0;
output   weights2_20_ce0;
input  [63:0] weights2_20_q0;
output  [6:0] weights2_21_address0;
output   weights2_21_ce0;
input  [63:0] weights2_21_q0;
output  [6:0] weights2_22_address0;
output   weights2_22_ce0;
input  [63:0] weights2_22_q0;
output  [6:0] weights2_23_address0;
output   weights2_23_ce0;
input  [63:0] weights2_23_q0;
output  [6:0] weights2_24_address0;
output   weights2_24_ce0;
input  [63:0] weights2_24_q0;
output  [6:0] weights2_25_address0;
output   weights2_25_ce0;
input  [63:0] weights2_25_q0;
output  [6:0] weights2_26_address0;
output   weights2_26_ce0;
input  [63:0] weights2_26_q0;
output  [6:0] weights2_27_address0;
output   weights2_27_ce0;
input  [63:0] weights2_27_q0;
output  [6:0] weights2_28_address0;
output   weights2_28_ce0;
input  [63:0] weights2_28_q0;
output  [6:0] weights2_29_address0;
output   weights2_29_ce0;
input  [63:0] weights2_29_q0;
output  [6:0] weights2_30_address0;
output   weights2_30_ce0;
input  [63:0] weights2_30_q0;
output  [6:0] weights2_31_address0;
output   weights2_31_ce0;
input  [63:0] weights2_31_q0;
output  [0:0] activations_0_address0;
output   activations_0_ce0;
output   activations_0_we0;
output  [63:0] activations_0_d0;
output  [0:0] activations_0_address1;
output   activations_0_ce1;
input  [63:0] activations_0_q1;
output  [0:0] activations_1_address0;
output   activations_1_ce0;
output   activations_1_we0;
output  [63:0] activations_1_d0;
output  [0:0] activations_1_address1;
output   activations_1_ce1;
input  [63:0] activations_1_q1;
output  [0:0] activations_2_address0;
output   activations_2_ce0;
output   activations_2_we0;
output  [63:0] activations_2_d0;
output  [0:0] activations_2_address1;
output   activations_2_ce1;
input  [63:0] activations_2_q1;
output  [0:0] activations_3_address0;
output   activations_3_ce0;
output   activations_3_we0;
output  [63:0] activations_3_d0;
output  [0:0] activations_3_address1;
output   activations_3_ce1;
input  [63:0] activations_3_q1;
output  [0:0] activations_4_address0;
output   activations_4_ce0;
output   activations_4_we0;
output  [63:0] activations_4_d0;
output  [0:0] activations_4_address1;
output   activations_4_ce1;
input  [63:0] activations_4_q1;
output  [0:0] activations_5_address0;
output   activations_5_ce0;
output   activations_5_we0;
output  [63:0] activations_5_d0;
output  [0:0] activations_5_address1;
output   activations_5_ce1;
input  [63:0] activations_5_q1;
output  [0:0] activations_6_address0;
output   activations_6_ce0;
output   activations_6_we0;
output  [63:0] activations_6_d0;
output  [0:0] activations_6_address1;
output   activations_6_ce1;
input  [63:0] activations_6_q1;
output  [0:0] activations_7_address0;
output   activations_7_ce0;
output   activations_7_we0;
output  [63:0] activations_7_d0;
output  [0:0] activations_7_address1;
output   activations_7_ce1;
input  [63:0] activations_7_q1;
output  [0:0] activations_8_address0;
output   activations_8_ce0;
output   activations_8_we0;
output  [63:0] activations_8_d0;
output  [0:0] activations_8_address1;
output   activations_8_ce1;
input  [63:0] activations_8_q1;
output  [0:0] activations_9_address0;
output   activations_9_ce0;
output   activations_9_we0;
output  [63:0] activations_9_d0;
output  [0:0] activations_9_address1;
output   activations_9_ce1;
input  [63:0] activations_9_q1;
output  [0:0] activations_10_address0;
output   activations_10_ce0;
output   activations_10_we0;
output  [63:0] activations_10_d0;
output  [0:0] activations_10_address1;
output   activations_10_ce1;
input  [63:0] activations_10_q1;
output  [0:0] activations_11_address0;
output   activations_11_ce0;
output   activations_11_we0;
output  [63:0] activations_11_d0;
output  [0:0] activations_11_address1;
output   activations_11_ce1;
input  [63:0] activations_11_q1;
output  [0:0] activations_12_address0;
output   activations_12_ce0;
output   activations_12_we0;
output  [63:0] activations_12_d0;
output  [0:0] activations_12_address1;
output   activations_12_ce1;
input  [63:0] activations_12_q1;
output  [0:0] activations_13_address0;
output   activations_13_ce0;
output   activations_13_we0;
output  [63:0] activations_13_d0;
output  [0:0] activations_13_address1;
output   activations_13_ce1;
input  [63:0] activations_13_q1;
output  [0:0] activations_14_address0;
output   activations_14_ce0;
output   activations_14_we0;
output  [63:0] activations_14_d0;
output  [0:0] activations_14_address1;
output   activations_14_ce1;
input  [63:0] activations_14_q1;
output  [0:0] activations_15_address0;
output   activations_15_ce0;
output   activations_15_we0;
output  [63:0] activations_15_d0;
output  [0:0] activations_15_address1;
output   activations_15_ce1;
input  [63:0] activations_15_q1;
output  [0:0] activations_16_address0;
output   activations_16_ce0;
output   activations_16_we0;
output  [63:0] activations_16_d0;
output  [0:0] activations_16_address1;
output   activations_16_ce1;
input  [63:0] activations_16_q1;
output  [0:0] activations_17_address0;
output   activations_17_ce0;
output   activations_17_we0;
output  [63:0] activations_17_d0;
output  [0:0] activations_17_address1;
output   activations_17_ce1;
input  [63:0] activations_17_q1;
output  [0:0] activations_18_address0;
output   activations_18_ce0;
output   activations_18_we0;
output  [63:0] activations_18_d0;
output  [0:0] activations_18_address1;
output   activations_18_ce1;
input  [63:0] activations_18_q1;
output  [0:0] activations_19_address0;
output   activations_19_ce0;
output   activations_19_we0;
output  [63:0] activations_19_d0;
output  [0:0] activations_19_address1;
output   activations_19_ce1;
input  [63:0] activations_19_q1;
output  [0:0] activations_20_address0;
output   activations_20_ce0;
output   activations_20_we0;
output  [63:0] activations_20_d0;
output  [0:0] activations_20_address1;
output   activations_20_ce1;
input  [63:0] activations_20_q1;
output  [0:0] activations_21_address0;
output   activations_21_ce0;
output   activations_21_we0;
output  [63:0] activations_21_d0;
output  [0:0] activations_21_address1;
output   activations_21_ce1;
input  [63:0] activations_21_q1;
output  [0:0] activations_22_address0;
output   activations_22_ce0;
output   activations_22_we0;
output  [63:0] activations_22_d0;
output  [0:0] activations_22_address1;
output   activations_22_ce1;
input  [63:0] activations_22_q1;
output  [0:0] activations_23_address0;
output   activations_23_ce0;
output   activations_23_we0;
output  [63:0] activations_23_d0;
output  [0:0] activations_23_address1;
output   activations_23_ce1;
input  [63:0] activations_23_q1;
output  [0:0] activations_24_address0;
output   activations_24_ce0;
output   activations_24_we0;
output  [63:0] activations_24_d0;
output  [0:0] activations_24_address1;
output   activations_24_ce1;
input  [63:0] activations_24_q1;
output  [0:0] activations_25_address0;
output   activations_25_ce0;
output   activations_25_we0;
output  [63:0] activations_25_d0;
output  [0:0] activations_25_address1;
output   activations_25_ce1;
input  [63:0] activations_25_q1;
output  [0:0] activations_26_address0;
output   activations_26_ce0;
output   activations_26_we0;
output  [63:0] activations_26_d0;
output  [0:0] activations_26_address1;
output   activations_26_ce1;
input  [63:0] activations_26_q1;
output  [0:0] activations_27_address0;
output   activations_27_ce0;
output   activations_27_we0;
output  [63:0] activations_27_d0;
output  [0:0] activations_27_address1;
output   activations_27_ce1;
input  [63:0] activations_27_q1;
output  [0:0] activations_28_address0;
output   activations_28_ce0;
output   activations_28_we0;
output  [63:0] activations_28_d0;
output  [0:0] activations_28_address1;
output   activations_28_ce1;
input  [63:0] activations_28_q1;
output  [0:0] activations_29_address0;
output   activations_29_ce0;
output   activations_29_we0;
output  [63:0] activations_29_d0;
output  [0:0] activations_29_address1;
output   activations_29_ce1;
input  [63:0] activations_29_q1;
output  [0:0] activations_30_address0;
output   activations_30_ce0;
output   activations_30_we0;
output  [63:0] activations_30_d0;
output  [0:0] activations_30_address1;
output   activations_30_ce1;
input  [63:0] activations_30_q1;
output  [0:0] activations_31_address0;
output   activations_31_ce0;
output   activations_31_we0;
output  [63:0] activations_31_d0;
output  [0:0] activations_31_address1;
output   activations_31_ce1;
input  [63:0] activations_31_q1;
output  [0:0] input_activations_0_address0;
output   input_activations_0_ce0;
input  [63:0] input_activations_0_q0;
output  [0:0] input_activations_1_address0;
output   input_activations_1_ce0;
input  [63:0] input_activations_1_q0;
output  [0:0] input_activations_2_address0;
output   input_activations_2_ce0;
input  [63:0] input_activations_2_q0;
output  [0:0] input_activations_3_address0;
output   input_activations_3_ce0;
input  [63:0] input_activations_3_q0;
output  [0:0] input_activations_4_address0;
output   input_activations_4_ce0;
input  [63:0] input_activations_4_q0;
output  [0:0] input_activations_5_address0;
output   input_activations_5_ce0;
input  [63:0] input_activations_5_q0;
output  [0:0] input_activations_6_address0;
output   input_activations_6_ce0;
input  [63:0] input_activations_6_q0;
output  [0:0] input_activations_7_address0;
output   input_activations_7_ce0;
input  [63:0] input_activations_7_q0;
output  [0:0] input_activations_8_address0;
output   input_activations_8_ce0;
input  [63:0] input_activations_8_q0;
output  [0:0] input_activations_9_address0;
output   input_activations_9_ce0;
input  [63:0] input_activations_9_q0;
output  [0:0] input_activations_10_address0;
output   input_activations_10_ce0;
input  [63:0] input_activations_10_q0;
output  [0:0] input_activations_11_address0;
output   input_activations_11_ce0;
input  [63:0] input_activations_11_q0;
output  [0:0] input_activations_12_address0;
output   input_activations_12_ce0;
input  [63:0] input_activations_12_q0;
output  [0:0] input_activations_13_address0;
output   input_activations_13_ce0;
input  [63:0] input_activations_13_q0;
output  [0:0] input_activations_14_address0;
output   input_activations_14_ce0;
input  [63:0] input_activations_14_q0;
output  [0:0] input_activations_15_address0;
output   input_activations_15_ce0;
input  [63:0] input_activations_15_q0;
output  [0:0] input_activations_16_address0;
output   input_activations_16_ce0;
input  [63:0] input_activations_16_q0;
output  [0:0] input_activations_17_address0;
output   input_activations_17_ce0;
input  [63:0] input_activations_17_q0;
output  [0:0] input_activations_18_address0;
output   input_activations_18_ce0;
input  [63:0] input_activations_18_q0;
output  [0:0] input_activations_19_address0;
output   input_activations_19_ce0;
input  [63:0] input_activations_19_q0;
output  [0:0] input_activations_20_address0;
output   input_activations_20_ce0;
input  [63:0] input_activations_20_q0;
output  [0:0] input_activations_21_address0;
output   input_activations_21_ce0;
input  [63:0] input_activations_21_q0;
output  [0:0] input_activations_22_address0;
output   input_activations_22_ce0;
input  [63:0] input_activations_22_q0;
output  [0:0] input_activations_23_address0;
output   input_activations_23_ce0;
input  [63:0] input_activations_23_q0;
output  [0:0] input_activations_24_address0;
output   input_activations_24_ce0;
input  [63:0] input_activations_24_q0;
output  [0:0] input_activations_25_address0;
output   input_activations_25_ce0;
input  [63:0] input_activations_25_q0;
output  [0:0] input_activations_26_address0;
output   input_activations_26_ce0;
input  [63:0] input_activations_26_q0;
output  [0:0] input_activations_27_address0;
output   input_activations_27_ce0;
input  [63:0] input_activations_27_q0;
output  [0:0] input_activations_28_address0;
output   input_activations_28_ce0;
input  [63:0] input_activations_28_q0;
output  [0:0] input_activations_29_address0;
output   input_activations_29_ce0;
input  [63:0] input_activations_29_q0;
output  [0:0] input_activations_30_address0;
output   input_activations_30_ce0;
input  [63:0] input_activations_30_q0;
output  [0:0] input_activations_31_address0;
output   input_activations_31_ce0;
input  [63:0] input_activations_31_q0;
output  [63:0] grp_fu_9536_p_din0;
output  [63:0] grp_fu_9536_p_din1;
output  [0:0] grp_fu_9536_p_opcode;
input  [63:0] grp_fu_9536_p_dout0;
output   grp_fu_9536_p_ce;
output  [63:0] grp_fu_9728_p_din0;
output  [63:0] grp_fu_9728_p_din1;
input  [63:0] grp_fu_9728_p_dout0;
output   grp_fu_9728_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[0:0] activations_0_address0;
reg activations_0_ce0;
reg activations_0_we0;
reg[63:0] activations_0_d0;
reg activations_0_ce1;
reg[0:0] activations_1_address0;
reg activations_1_ce0;
reg activations_1_we0;
reg[63:0] activations_1_d0;
reg activations_1_ce1;
reg[0:0] activations_2_address0;
reg activations_2_ce0;
reg activations_2_we0;
reg[63:0] activations_2_d0;
reg activations_2_ce1;
reg[0:0] activations_3_address0;
reg activations_3_ce0;
reg activations_3_we0;
reg[63:0] activations_3_d0;
reg activations_3_ce1;
reg[0:0] activations_4_address0;
reg activations_4_ce0;
reg activations_4_we0;
reg[63:0] activations_4_d0;
reg activations_4_ce1;
reg[0:0] activations_5_address0;
reg activations_5_ce0;
reg activations_5_we0;
reg[63:0] activations_5_d0;
reg activations_5_ce1;
reg[0:0] activations_6_address0;
reg activations_6_ce0;
reg activations_6_we0;
reg[63:0] activations_6_d0;
reg activations_6_ce1;
reg[0:0] activations_7_address0;
reg activations_7_ce0;
reg activations_7_we0;
reg[63:0] activations_7_d0;
reg activations_7_ce1;
reg[0:0] activations_8_address0;
reg activations_8_ce0;
reg activations_8_we0;
reg[63:0] activations_8_d0;
reg activations_8_ce1;
reg[0:0] activations_9_address0;
reg activations_9_ce0;
reg activations_9_we0;
reg[63:0] activations_9_d0;
reg activations_9_ce1;
reg[0:0] activations_10_address0;
reg activations_10_ce0;
reg activations_10_we0;
reg[63:0] activations_10_d0;
reg activations_10_ce1;
reg[0:0] activations_11_address0;
reg activations_11_ce0;
reg activations_11_we0;
reg[63:0] activations_11_d0;
reg activations_11_ce1;
reg[0:0] activations_12_address0;
reg activations_12_ce0;
reg activations_12_we0;
reg[63:0] activations_12_d0;
reg activations_12_ce1;
reg[0:0] activations_13_address0;
reg activations_13_ce0;
reg activations_13_we0;
reg[63:0] activations_13_d0;
reg activations_13_ce1;
reg[0:0] activations_14_address0;
reg activations_14_ce0;
reg activations_14_we0;
reg[63:0] activations_14_d0;
reg activations_14_ce1;
reg[0:0] activations_15_address0;
reg activations_15_ce0;
reg activations_15_we0;
reg[63:0] activations_15_d0;
reg activations_15_ce1;
reg[0:0] activations_16_address0;
reg activations_16_ce0;
reg activations_16_we0;
reg[63:0] activations_16_d0;
reg activations_16_ce1;
reg[0:0] activations_17_address0;
reg activations_17_ce0;
reg activations_17_we0;
reg[63:0] activations_17_d0;
reg activations_17_ce1;
reg[0:0] activations_18_address0;
reg activations_18_ce0;
reg activations_18_we0;
reg[63:0] activations_18_d0;
reg activations_18_ce1;
reg[0:0] activations_19_address0;
reg activations_19_ce0;
reg activations_19_we0;
reg[63:0] activations_19_d0;
reg activations_19_ce1;
reg[0:0] activations_20_address0;
reg activations_20_ce0;
reg activations_20_we0;
reg[63:0] activations_20_d0;
reg activations_20_ce1;
reg[0:0] activations_21_address0;
reg activations_21_ce0;
reg activations_21_we0;
reg[63:0] activations_21_d0;
reg activations_21_ce1;
reg[0:0] activations_22_address0;
reg activations_22_ce0;
reg activations_22_we0;
reg[63:0] activations_22_d0;
reg activations_22_ce1;
reg[0:0] activations_23_address0;
reg activations_23_ce0;
reg activations_23_we0;
reg[63:0] activations_23_d0;
reg activations_23_ce1;
reg[0:0] activations_24_address0;
reg activations_24_ce0;
reg activations_24_we0;
reg[63:0] activations_24_d0;
reg activations_24_ce1;
reg[0:0] activations_25_address0;
reg activations_25_ce0;
reg activations_25_we0;
reg[63:0] activations_25_d0;
reg activations_25_ce1;
reg[0:0] activations_26_address0;
reg activations_26_ce0;
reg activations_26_we0;
reg[63:0] activations_26_d0;
reg activations_26_ce1;
reg[0:0] activations_27_address0;
reg activations_27_ce0;
reg activations_27_we0;
reg[63:0] activations_27_d0;
reg activations_27_ce1;
reg[0:0] activations_28_address0;
reg activations_28_ce0;
reg activations_28_we0;
reg[63:0] activations_28_d0;
reg activations_28_ce1;
reg[0:0] activations_29_address0;
reg activations_29_ce0;
reg activations_29_we0;
reg[63:0] activations_29_d0;
reg activations_29_ce1;
reg[0:0] activations_30_address0;
reg activations_30_ce0;
reg activations_30_we0;
reg[63:0] activations_30_d0;
reg activations_30_ce1;
reg[0:0] activations_31_address0;
reg activations_31_ce0;
reg activations_31_we0;
reg[63:0] activations_31_d0;
reg activations_31_ce1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln44_fu_1054_p2;
reg   [0:0] icmp_ln44_reg_1171;
wire    ap_CS_fsm_state2;
wire   [6:0] add_ln44_fu_1060_p2;
reg   [6:0] add_ln44_reg_1175;
wire    ap_CS_fsm_state3;
wire   [4:0] trunc_ln44_fu_1065_p1;
reg   [4:0] trunc_ln44_reg_1180;
reg   [0:0] tmp_reg_1184;
wire   [6:0] empty_fu_1075_p2;
reg   [6:0] empty_reg_1189;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_ready;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_0_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_0_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_1_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_1_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_2_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_2_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_3_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_3_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_4_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_4_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_5_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_5_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_6_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_6_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_7_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_7_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_8_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_8_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_9_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_9_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_10_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_10_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_11_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_11_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_12_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_12_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_13_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_13_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_14_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_14_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_15_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_15_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_16_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_16_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_16_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_16_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_17_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_17_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_17_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_17_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_18_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_18_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_18_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_18_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_19_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_19_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_19_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_19_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_20_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_20_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_20_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_20_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_21_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_21_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_21_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_21_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_22_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_22_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_22_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_22_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_23_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_23_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_23_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_23_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_24_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_24_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_24_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_24_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_25_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_25_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_25_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_25_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_26_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_26_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_26_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_26_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_27_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_27_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_27_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_27_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_28_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_28_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_28_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_28_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_29_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_29_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_29_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_29_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_30_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_30_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_30_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_30_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_31_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_31_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_31_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_31_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1198_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1198_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1198_p_ce;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_ready;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_d0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_ce1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_0_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_1_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_2_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_2_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_3_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_3_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_4_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_4_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_5_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_5_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_6_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_6_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_7_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_7_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_8_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_8_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_9_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_9_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_10_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_10_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_11_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_11_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_12_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_12_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_13_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_13_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_14_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_14_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_15_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_15_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_16_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_16_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_17_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_17_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_18_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_18_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_19_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_19_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_20_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_20_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_21_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_21_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_22_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_22_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_23_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_23_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_24_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_24_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_25_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_25_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_26_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_26_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_27_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_27_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_28_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_28_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_29_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_29_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_30_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_30_ce0;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_31_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_31_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_ce;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln43_fu_1081_p1;
wire    ap_CS_fsm_state5;
reg   [6:0] i_fu_356;
reg    activations_30_we0_local;
reg    ap_predicate_pred1554_state5;
reg    activations_30_ce0_local;
reg    activations_29_we0_local;
reg    ap_predicate_pred1566_state5;
reg    activations_29_ce0_local;
reg    activations_28_we0_local;
reg    ap_predicate_pred1575_state5;
reg    activations_28_ce0_local;
reg    activations_27_we0_local;
reg    ap_predicate_pred1584_state5;
reg    activations_27_ce0_local;
reg    activations_26_we0_local;
reg    ap_predicate_pred1593_state5;
reg    activations_26_ce0_local;
reg    activations_25_we0_local;
reg    ap_predicate_pred1602_state5;
reg    activations_25_ce0_local;
reg    activations_24_we0_local;
reg    ap_predicate_pred1611_state5;
reg    activations_24_ce0_local;
reg    activations_23_we0_local;
reg    ap_predicate_pred1620_state5;
reg    activations_23_ce0_local;
reg    activations_22_we0_local;
reg    ap_predicate_pred1629_state5;
reg    activations_22_ce0_local;
reg    activations_21_we0_local;
reg    ap_predicate_pred1638_state5;
reg    activations_21_ce0_local;
reg    activations_20_we0_local;
reg    ap_predicate_pred1647_state5;
reg    activations_20_ce0_local;
reg    activations_19_we0_local;
reg    ap_predicate_pred1656_state5;
reg    activations_19_ce0_local;
reg    activations_18_we0_local;
reg    ap_predicate_pred1665_state5;
reg    activations_18_ce0_local;
reg    activations_17_we0_local;
reg    ap_predicate_pred1674_state5;
reg    activations_17_ce0_local;
reg    activations_16_we0_local;
reg    ap_predicate_pred1683_state5;
reg    activations_16_ce0_local;
reg    activations_15_we0_local;
reg    ap_predicate_pred1692_state5;
reg    activations_15_ce0_local;
reg    activations_14_we0_local;
reg    ap_predicate_pred1701_state5;
reg    activations_14_ce0_local;
reg    activations_13_we0_local;
reg    ap_predicate_pred1710_state5;
reg    activations_13_ce0_local;
reg    activations_12_we0_local;
reg    ap_predicate_pred1719_state5;
reg    activations_12_ce0_local;
reg    activations_11_we0_local;
reg    ap_predicate_pred1728_state5;
reg    activations_11_ce0_local;
reg    activations_10_we0_local;
reg    ap_predicate_pred1737_state5;
reg    activations_10_ce0_local;
reg    activations_9_we0_local;
reg    ap_predicate_pred1746_state5;
reg    activations_9_ce0_local;
reg    activations_8_we0_local;
reg    ap_predicate_pred1755_state5;
reg    activations_8_ce0_local;
reg    activations_7_we0_local;
reg    ap_predicate_pred1764_state5;
reg    activations_7_ce0_local;
reg    activations_6_we0_local;
reg    ap_predicate_pred1773_state5;
reg    activations_6_ce0_local;
reg    activations_5_we0_local;
reg    ap_predicate_pred1782_state5;
reg    activations_5_ce0_local;
reg    activations_4_we0_local;
reg    ap_predicate_pred1791_state5;
reg    activations_4_ce0_local;
reg    activations_3_we0_local;
reg    ap_predicate_pred1800_state5;
reg    activations_3_ce0_local;
reg    activations_2_we0_local;
reg    ap_predicate_pred1809_state5;
reg    activations_2_ce0_local;
reg    activations_1_we0_local;
reg    ap_predicate_pred1818_state5;
reg    activations_1_ce0_local;
reg    activations_0_we0_local;
reg    ap_predicate_pred1827_state5;
reg    activations_0_ce0_local;
reg    activations_31_we0_local;
reg    ap_predicate_pred1836_state5;
reg    activations_31_ce0_local;
reg   [63:0] grp_fu_1194_p0;
reg   [63:0] grp_fu_1194_p1;
reg   [1:0] grp_fu_1194_opcode;
reg    grp_fu_1194_ce;
reg    grp_fu_1198_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_start_reg = 1'b0;
#0 i_fu_356 = 7'd0;
end
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_ready),.empty(empty_reg_1189),.weights2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_0_address0),.weights2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.input_activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_0_address0),.input_activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_0_ce0),.input_activations_0_q0(input_activations_0_q0),.weights2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_1_address0),.weights2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.input_activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_1_address0),.input_activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_1_ce0),.input_activations_1_q0(input_activations_1_q0),.weights2_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_2_address0),.weights2_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_2_ce0),.weights2_2_q0(weights2_2_q0),.input_activations_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_2_address0),.input_activations_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_2_ce0),.input_activations_2_q0(input_activations_2_q0),.weights2_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_3_address0),.weights2_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_3_ce0),.weights2_3_q0(weights2_3_q0),.input_activations_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_3_address0),.input_activations_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_3_ce0),.input_activations_3_q0(input_activations_3_q0),.weights2_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_4_address0),.weights2_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_4_ce0),.weights2_4_q0(weights2_4_q0),.input_activations_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_4_address0),.input_activations_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_4_ce0),.input_activations_4_q0(input_activations_4_q0),.weights2_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_5_address0),.weights2_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_5_ce0),.weights2_5_q0(weights2_5_q0),.input_activations_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_5_address0),.input_activations_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_5_ce0),.input_activations_5_q0(input_activations_5_q0),.weights2_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_6_address0),.weights2_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_6_ce0),.weights2_6_q0(weights2_6_q0),.input_activations_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_6_address0),.input_activations_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_6_ce0),.input_activations_6_q0(input_activations_6_q0),.weights2_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_7_address0),.weights2_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_7_ce0),.weights2_7_q0(weights2_7_q0),.input_activations_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_7_address0),.input_activations_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_7_ce0),.input_activations_7_q0(input_activations_7_q0),.weights2_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_8_address0),.weights2_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_8_ce0),.weights2_8_q0(weights2_8_q0),.input_activations_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_8_address0),.input_activations_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_8_ce0),.input_activations_8_q0(input_activations_8_q0),.weights2_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_9_address0),.weights2_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_9_ce0),.weights2_9_q0(weights2_9_q0),.input_activations_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_9_address0),.input_activations_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_9_ce0),.input_activations_9_q0(input_activations_9_q0),.weights2_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_10_address0),.weights2_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_10_ce0),.weights2_10_q0(weights2_10_q0),.input_activations_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_10_address0),.input_activations_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_10_ce0),.input_activations_10_q0(input_activations_10_q0),.weights2_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_11_address0),.weights2_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_11_ce0),.weights2_11_q0(weights2_11_q0),.input_activations_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_11_address0),.input_activations_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_11_ce0),.input_activations_11_q0(input_activations_11_q0),.weights2_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_12_address0),.weights2_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_12_ce0),.weights2_12_q0(weights2_12_q0),.input_activations_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_12_address0),.input_activations_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_12_ce0),.input_activations_12_q0(input_activations_12_q0),.weights2_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_13_address0),.weights2_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_13_ce0),.weights2_13_q0(weights2_13_q0),.input_activations_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_13_address0),.input_activations_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_13_ce0),.input_activations_13_q0(input_activations_13_q0),.weights2_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_14_address0),.weights2_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_14_ce0),.weights2_14_q0(weights2_14_q0),.input_activations_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_14_address0),.input_activations_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_14_ce0),.input_activations_14_q0(input_activations_14_q0),.weights2_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_15_address0),.weights2_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_15_ce0),.weights2_15_q0(weights2_15_q0),.input_activations_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_15_address0),.input_activations_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_15_ce0),.input_activations_15_q0(input_activations_15_q0),.weights2_16_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_16_address0),.weights2_16_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_16_ce0),.weights2_16_q0(weights2_16_q0),.input_activations_16_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_16_address0),.input_activations_16_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_16_ce0),.input_activations_16_q0(input_activations_16_q0),.weights2_17_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_17_address0),.weights2_17_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_17_ce0),.weights2_17_q0(weights2_17_q0),.input_activations_17_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_17_address0),.input_activations_17_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_17_ce0),.input_activations_17_q0(input_activations_17_q0),.weights2_18_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_18_address0),.weights2_18_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_18_ce0),.weights2_18_q0(weights2_18_q0),.input_activations_18_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_18_address0),.input_activations_18_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_18_ce0),.input_activations_18_q0(input_activations_18_q0),.weights2_19_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_19_address0),.weights2_19_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_19_ce0),.weights2_19_q0(weights2_19_q0),.input_activations_19_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_19_address0),.input_activations_19_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_19_ce0),.input_activations_19_q0(input_activations_19_q0),.weights2_20_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_20_address0),.weights2_20_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_20_ce0),.weights2_20_q0(weights2_20_q0),.input_activations_20_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_20_address0),.input_activations_20_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_20_ce0),.input_activations_20_q0(input_activations_20_q0),.weights2_21_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_21_address0),.weights2_21_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_21_ce0),.weights2_21_q0(weights2_21_q0),.input_activations_21_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_21_address0),.input_activations_21_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_21_ce0),.input_activations_21_q0(input_activations_21_q0),.weights2_22_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_22_address0),.weights2_22_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_22_ce0),.weights2_22_q0(weights2_22_q0),.input_activations_22_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_22_address0),.input_activations_22_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_22_ce0),.input_activations_22_q0(input_activations_22_q0),.weights2_23_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_23_address0),.weights2_23_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_23_ce0),.weights2_23_q0(weights2_23_q0),.input_activations_23_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_23_address0),.input_activations_23_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_23_ce0),.input_activations_23_q0(input_activations_23_q0),.weights2_24_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_24_address0),.weights2_24_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_24_ce0),.weights2_24_q0(weights2_24_q0),.input_activations_24_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_24_address0),.input_activations_24_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_24_ce0),.input_activations_24_q0(input_activations_24_q0),.weights2_25_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_25_address0),.weights2_25_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_25_ce0),.weights2_25_q0(weights2_25_q0),.input_activations_25_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_25_address0),.input_activations_25_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_25_ce0),.input_activations_25_q0(input_activations_25_q0),.weights2_26_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_26_address0),.weights2_26_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_26_ce0),.weights2_26_q0(weights2_26_q0),.input_activations_26_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_26_address0),.input_activations_26_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_26_ce0),.input_activations_26_q0(input_activations_26_q0),.weights2_27_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_27_address0),.weights2_27_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_27_ce0),.weights2_27_q0(weights2_27_q0),.input_activations_27_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_27_address0),.input_activations_27_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_27_ce0),.input_activations_27_q0(input_activations_27_q0),.weights2_28_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_28_address0),.weights2_28_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_28_ce0),.weights2_28_q0(weights2_28_q0),.input_activations_28_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_28_address0),.input_activations_28_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_28_ce0),.input_activations_28_q0(input_activations_28_q0),.weights2_29_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_29_address0),.weights2_29_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_29_ce0),.weights2_29_q0(weights2_29_q0),.input_activations_29_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_29_address0),.input_activations_29_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_29_ce0),.input_activations_29_q0(input_activations_29_q0),.weights2_30_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_30_address0),.weights2_30_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_30_ce0),.weights2_30_q0(weights2_30_q0),.input_activations_30_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_30_address0),.input_activations_30_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_30_ce0),.input_activations_30_q0(input_activations_30_q0),.weights2_31_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_31_address0),.weights2_31_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_31_ce0),.weights2_31_q0(weights2_31_q0),.input_activations_31_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_31_address0),.input_activations_31_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_31_ce0),.input_activations_31_q0(input_activations_31_q0),.add114_out(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out),.add114_out_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out_ap_vld),.grp_fu_1194_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_din0),.grp_fu_1194_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_din1),.grp_fu_1194_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_opcode),.grp_fu_1194_p_dout0(grp_fu_9536_p_dout0),.grp_fu_1194_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_ce),.grp_fu_1198_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1198_p_din0),.grp_fu_1198_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1198_p_din1),.grp_fu_1198_p_dout0(grp_fu_9728_p_dout0),.grp_fu_1198_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1198_p_ce));
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_ready),.activations_31_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_address0),.activations_31_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_ce0),.activations_31_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_we0),.activations_31_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_d0),.activations_31_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_address1),.activations_31_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_ce1),.activations_31_q1(activations_31_q1),.activations_30_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_address0),.activations_30_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_ce0),.activations_30_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_we0),.activations_30_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_d0),.activations_30_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_address1),.activations_30_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_ce1),.activations_30_q1(activations_30_q1),.activations_29_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_address0),.activations_29_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_ce0),.activations_29_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_we0),.activations_29_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_d0),.activations_29_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_address1),.activations_29_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_ce1),.activations_29_q1(activations_29_q1),.activations_28_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_address0),.activations_28_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_ce0),.activations_28_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_we0),.activations_28_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_d0),.activations_28_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_address1),.activations_28_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_ce1),.activations_28_q1(activations_28_q1),.activations_27_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_address0),.activations_27_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_ce0),.activations_27_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_we0),.activations_27_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_d0),.activations_27_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_address1),.activations_27_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_ce1),.activations_27_q1(activations_27_q1),.activations_26_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_address0),.activations_26_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_ce0),.activations_26_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_we0),.activations_26_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_d0),.activations_26_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_address1),.activations_26_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_ce1),.activations_26_q1(activations_26_q1),.activations_25_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_address0),.activations_25_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_ce0),.activations_25_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_we0),.activations_25_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_d0),.activations_25_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_address1),.activations_25_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_ce1),.activations_25_q1(activations_25_q1),.activations_24_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_address0),.activations_24_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_ce0),.activations_24_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_we0),.activations_24_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_d0),.activations_24_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_address1),.activations_24_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_ce1),.activations_24_q1(activations_24_q1),.activations_23_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_address0),.activations_23_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_ce0),.activations_23_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_we0),.activations_23_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_d0),.activations_23_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_address1),.activations_23_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_ce1),.activations_23_q1(activations_23_q1),.activations_22_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_address0),.activations_22_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_ce0),.activations_22_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_we0),.activations_22_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_d0),.activations_22_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_address1),.activations_22_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_ce1),.activations_22_q1(activations_22_q1),.activations_21_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_address0),.activations_21_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_ce0),.activations_21_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_we0),.activations_21_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_d0),.activations_21_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_address1),.activations_21_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_ce1),.activations_21_q1(activations_21_q1),.activations_20_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_address0),.activations_20_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_ce0),.activations_20_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_we0),.activations_20_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_d0),.activations_20_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_address1),.activations_20_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_ce1),.activations_20_q1(activations_20_q1),.activations_19_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_address0),.activations_19_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_ce0),.activations_19_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_we0),.activations_19_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_d0),.activations_19_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_address1),.activations_19_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_ce1),.activations_19_q1(activations_19_q1),.activations_18_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_address0),.activations_18_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_ce0),.activations_18_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_we0),.activations_18_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_d0),.activations_18_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_address1),.activations_18_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_ce1),.activations_18_q1(activations_18_q1),.activations_17_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_address0),.activations_17_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_ce0),.activations_17_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_we0),.activations_17_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_d0),.activations_17_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_address1),.activations_17_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_ce1),.activations_17_q1(activations_17_q1),.activations_16_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_address0),.activations_16_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_ce0),.activations_16_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_we0),.activations_16_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_d0),.activations_16_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_address1),.activations_16_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_ce1),.activations_16_q1(activations_16_q1),.activations_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_address0),.activations_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_ce0),.activations_15_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_we0),.activations_15_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_d0),.activations_15_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_address1),.activations_15_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_ce1),.activations_15_q1(activations_15_q1),.activations_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_address0),.activations_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_ce0),.activations_14_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_we0),.activations_14_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_d0),.activations_14_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_address1),.activations_14_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_ce1),.activations_14_q1(activations_14_q1),.activations_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_address0),.activations_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_ce0),.activations_13_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_we0),.activations_13_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_d0),.activations_13_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_address1),.activations_13_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_ce1),.activations_13_q1(activations_13_q1),.activations_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_address0),.activations_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_ce0),.activations_12_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_we0),.activations_12_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_d0),.activations_12_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_address1),.activations_12_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_ce1),.activations_12_q1(activations_12_q1),.activations_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_address0),.activations_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_ce0),.activations_11_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_we0),.activations_11_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_d0),.activations_11_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_address1),.activations_11_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_ce1),.activations_11_q1(activations_11_q1),.activations_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_address0),.activations_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_ce0),.activations_10_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_we0),.activations_10_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_d0),.activations_10_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_address1),.activations_10_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_ce1),.activations_10_q1(activations_10_q1),.activations_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_address0),.activations_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_ce0),.activations_9_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_we0),.activations_9_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_d0),.activations_9_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_address1),.activations_9_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_ce1),.activations_9_q1(activations_9_q1),.activations_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_address0),.activations_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_ce0),.activations_8_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_we0),.activations_8_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_d0),.activations_8_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_address1),.activations_8_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_ce1),.activations_8_q1(activations_8_q1),.activations_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_address0),.activations_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_ce0),.activations_7_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_we0),.activations_7_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_d0),.activations_7_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_address1),.activations_7_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_ce1),.activations_7_q1(activations_7_q1),.activations_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_address0),.activations_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_ce0),.activations_6_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_we0),.activations_6_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_d0),.activations_6_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_address1),.activations_6_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_ce1),.activations_6_q1(activations_6_q1),.activations_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_address0),.activations_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_ce0),.activations_5_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_we0),.activations_5_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_d0),.activations_5_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_address1),.activations_5_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_ce1),.activations_5_q1(activations_5_q1),.activations_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_address0),.activations_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_ce0),.activations_4_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_we0),.activations_4_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_d0),.activations_4_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_address1),.activations_4_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_ce1),.activations_4_q1(activations_4_q1),.activations_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_address0),.activations_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_ce0),.activations_3_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_we0),.activations_3_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_d0),.activations_3_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_address1),.activations_3_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_ce1),.activations_3_q1(activations_3_q1),.activations_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_address0),.activations_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_ce0),.activations_2_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_we0),.activations_2_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_d0),.activations_2_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_address1),.activations_2_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_ce1),.activations_2_q1(activations_2_q1),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_ce1),.activations_1_q1(activations_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_ce1),.activations_0_q1(activations_0_q1),.biases2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_0_address0),.biases2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_0_ce0),.biases2_0_q0(biases2_0_q0),.biases2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_1_address0),.biases2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_1_ce0),.biases2_1_q0(biases2_1_q0),.biases2_2_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_2_address0),.biases2_2_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_2_ce0),.biases2_2_q0(biases2_2_q0),.biases2_3_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_3_address0),.biases2_3_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_3_ce0),.biases2_3_q0(biases2_3_q0),.biases2_4_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_4_address0),.biases2_4_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_4_ce0),.biases2_4_q0(biases2_4_q0),.biases2_5_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_5_address0),.biases2_5_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_5_ce0),.biases2_5_q0(biases2_5_q0),.biases2_6_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_6_address0),.biases2_6_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_6_ce0),.biases2_6_q0(biases2_6_q0),.biases2_7_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_7_address0),.biases2_7_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_7_ce0),.biases2_7_q0(biases2_7_q0),.biases2_8_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_8_address0),.biases2_8_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_8_ce0),.biases2_8_q0(biases2_8_q0),.biases2_9_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_9_address0),.biases2_9_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_9_ce0),.biases2_9_q0(biases2_9_q0),.biases2_10_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_10_address0),.biases2_10_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_10_ce0),.biases2_10_q0(biases2_10_q0),.biases2_11_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_11_address0),.biases2_11_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_11_ce0),.biases2_11_q0(biases2_11_q0),.biases2_12_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_12_address0),.biases2_12_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_12_ce0),.biases2_12_q0(biases2_12_q0),.biases2_13_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_13_address0),.biases2_13_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_13_ce0),.biases2_13_q0(biases2_13_q0),.biases2_14_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_14_address0),.biases2_14_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_14_ce0),.biases2_14_q0(biases2_14_q0),.biases2_15_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_15_address0),.biases2_15_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_15_ce0),.biases2_15_q0(biases2_15_q0),.biases2_16_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_16_address0),.biases2_16_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_16_ce0),.biases2_16_q0(biases2_16_q0),.biases2_17_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_17_address0),.biases2_17_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_17_ce0),.biases2_17_q0(biases2_17_q0),.biases2_18_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_18_address0),.biases2_18_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_18_ce0),.biases2_18_q0(biases2_18_q0),.biases2_19_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_19_address0),.biases2_19_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_19_ce0),.biases2_19_q0(biases2_19_q0),.biases2_20_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_20_address0),.biases2_20_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_20_ce0),.biases2_20_q0(biases2_20_q0),.biases2_21_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_21_address0),.biases2_21_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_21_ce0),.biases2_21_q0(biases2_21_q0),.biases2_22_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_22_address0),.biases2_22_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_22_ce0),.biases2_22_q0(biases2_22_q0),.biases2_23_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_23_address0),.biases2_23_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_23_ce0),.biases2_23_q0(biases2_23_q0),.biases2_24_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_24_address0),.biases2_24_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_24_ce0),.biases2_24_q0(biases2_24_q0),.biases2_25_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_25_address0),.biases2_25_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_25_ce0),.biases2_25_q0(biases2_25_q0),.biases2_26_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_26_address0),.biases2_26_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_26_ce0),.biases2_26_q0(biases2_26_q0),.biases2_27_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_27_address0),.biases2_27_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_27_ce0),.biases2_27_q0(biases2_27_q0),.biases2_28_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_28_address0),.biases2_28_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_28_ce0),.biases2_28_q0(biases2_28_q0),.biases2_29_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_29_address0),.biases2_29_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_29_ce0),.biases2_29_q0(biases2_29_q0),.biases2_30_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_30_address0),.biases2_30_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_30_ce0),.biases2_30_q0(biases2_30_q0),.biases2_31_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_31_address0),.biases2_31_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_31_ce0),.biases2_31_q0(biases2_31_q0),.grp_fu_1194_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_din0),.grp_fu_1194_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_din1),.grp_fu_1194_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_opcode),.grp_fu_1194_p_dout0(grp_fu_9536_p_dout0),.grp_fu_1194_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln44_reg_1171 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln44_reg_1171 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_356 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_fu_356 <= add_ln44_reg_1175;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln44_reg_1175 <= add_ln44_fu_1060_p2;
        empty_reg_1189[6 : 1] <= empty_fu_1075_p2[6 : 1];
        tmp_reg_1184 <= i_fu_356[32'd5];
        trunc_ln44_reg_1180 <= trunc_ln44_fu_1065_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_predicate_pred1554_state5 <= (trunc_ln44_reg_1180 == 5'd30);
        ap_predicate_pred1566_state5 <= (trunc_ln44_reg_1180 == 5'd29);
        ap_predicate_pred1575_state5 <= (trunc_ln44_reg_1180 == 5'd28);
        ap_predicate_pred1584_state5 <= (trunc_ln44_reg_1180 == 5'd27);
        ap_predicate_pred1593_state5 <= (trunc_ln44_reg_1180 == 5'd26);
        ap_predicate_pred1602_state5 <= (trunc_ln44_reg_1180 == 5'd25);
        ap_predicate_pred1611_state5 <= (trunc_ln44_reg_1180 == 5'd24);
        ap_predicate_pred1620_state5 <= (trunc_ln44_reg_1180 == 5'd23);
        ap_predicate_pred1629_state5 <= (trunc_ln44_reg_1180 == 5'd22);
        ap_predicate_pred1638_state5 <= (trunc_ln44_reg_1180 == 5'd21);
        ap_predicate_pred1647_state5 <= (trunc_ln44_reg_1180 == 5'd20);
        ap_predicate_pred1656_state5 <= (trunc_ln44_reg_1180 == 5'd19);
        ap_predicate_pred1665_state5 <= (trunc_ln44_reg_1180 == 5'd18);
        ap_predicate_pred1674_state5 <= (trunc_ln44_reg_1180 == 5'd17);
        ap_predicate_pred1683_state5 <= (trunc_ln44_reg_1180 == 5'd16);
        ap_predicate_pred1692_state5 <= (trunc_ln44_reg_1180 == 5'd15);
        ap_predicate_pred1701_state5 <= (trunc_ln44_reg_1180 == 5'd14);
        ap_predicate_pred1710_state5 <= (trunc_ln44_reg_1180 == 5'd13);
        ap_predicate_pred1719_state5 <= (trunc_ln44_reg_1180 == 5'd12);
        ap_predicate_pred1728_state5 <= (trunc_ln44_reg_1180 == 5'd11);
        ap_predicate_pred1737_state5 <= (trunc_ln44_reg_1180 == 5'd10);
        ap_predicate_pred1746_state5 <= (trunc_ln44_reg_1180 == 5'd9);
        ap_predicate_pred1755_state5 <= (trunc_ln44_reg_1180 == 5'd8);
        ap_predicate_pred1764_state5 <= (trunc_ln44_reg_1180 == 5'd7);
        ap_predicate_pred1773_state5 <= (trunc_ln44_reg_1180 == 5'd6);
        ap_predicate_pred1782_state5 <= (trunc_ln44_reg_1180 == 5'd5);
        ap_predicate_pred1791_state5 <= (trunc_ln44_reg_1180 == 5'd4);
        ap_predicate_pred1800_state5 <= (trunc_ln44_reg_1180 == 5'd3);
        ap_predicate_pred1809_state5 <= (trunc_ln44_reg_1180 == 5'd2);
        ap_predicate_pred1818_state5 <= (trunc_ln44_reg_1180 == 5'd1);
        ap_predicate_pred1827_state5 <= (trunc_ln44_reg_1180 == 5'd0);
        ap_predicate_pred1836_state5 <= (trunc_ln44_reg_1180 == 5'd31);
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln44_reg_1171 <= icmp_ln44_fu_1054_p2;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_address0;
    end else begin
        activations_0_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_ce0;
    end else begin
        activations_0_ce0 = activations_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_0_ce0_local = 1'b1;
    end else begin
        activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_ce1;
    end else begin
        activations_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_d0;
    end else begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_we0;
    end else begin
        activations_0_we0 = activations_0_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1827_state5 == 1'b1))) begin
        activations_0_we0_local = 1'b1;
    end else begin
        activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_address0;
    end else begin
        activations_10_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_ce0;
    end else begin
        activations_10_ce0 = activations_10_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_10_ce0_local = 1'b1;
    end else begin
        activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_10_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_ce1;
    end else begin
        activations_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_10_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_d0;
    end else begin
        activations_10_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_10_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_we0;
    end else begin
        activations_10_we0 = activations_10_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1737_state5 == 1'b1))) begin
        activations_10_we0_local = 1'b1;
    end else begin
        activations_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_address0;
    end else begin
        activations_11_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_ce0;
    end else begin
        activations_11_ce0 = activations_11_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_11_ce0_local = 1'b1;
    end else begin
        activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_11_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_ce1;
    end else begin
        activations_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_11_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_d0;
    end else begin
        activations_11_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_11_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_we0;
    end else begin
        activations_11_we0 = activations_11_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1728_state5 == 1'b1))) begin
        activations_11_we0_local = 1'b1;
    end else begin
        activations_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_address0;
    end else begin
        activations_12_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_ce0;
    end else begin
        activations_12_ce0 = activations_12_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_12_ce0_local = 1'b1;
    end else begin
        activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_12_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_ce1;
    end else begin
        activations_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_12_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_d0;
    end else begin
        activations_12_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_12_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_we0;
    end else begin
        activations_12_we0 = activations_12_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1719_state5 == 1'b1))) begin
        activations_12_we0_local = 1'b1;
    end else begin
        activations_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_address0;
    end else begin
        activations_13_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_ce0;
    end else begin
        activations_13_ce0 = activations_13_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_13_ce0_local = 1'b1;
    end else begin
        activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_13_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_ce1;
    end else begin
        activations_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_13_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_d0;
    end else begin
        activations_13_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_13_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_we0;
    end else begin
        activations_13_we0 = activations_13_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1710_state5 == 1'b1))) begin
        activations_13_we0_local = 1'b1;
    end else begin
        activations_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_address0;
    end else begin
        activations_14_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_ce0;
    end else begin
        activations_14_ce0 = activations_14_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_14_ce0_local = 1'b1;
    end else begin
        activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_14_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_ce1;
    end else begin
        activations_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_14_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_d0;
    end else begin
        activations_14_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_14_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_we0;
    end else begin
        activations_14_we0 = activations_14_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1701_state5 == 1'b1))) begin
        activations_14_we0_local = 1'b1;
    end else begin
        activations_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_address0;
    end else begin
        activations_15_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_ce0;
    end else begin
        activations_15_ce0 = activations_15_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_15_ce0_local = 1'b1;
    end else begin
        activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_15_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_ce1;
    end else begin
        activations_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_15_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_d0;
    end else begin
        activations_15_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_15_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_we0;
    end else begin
        activations_15_we0 = activations_15_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1692_state5 == 1'b1))) begin
        activations_15_we0_local = 1'b1;
    end else begin
        activations_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_16_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_address0;
    end else begin
        activations_16_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_16_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_ce0;
    end else begin
        activations_16_ce0 = activations_16_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_16_ce0_local = 1'b1;
    end else begin
        activations_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_16_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_ce1;
    end else begin
        activations_16_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_16_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_d0;
    end else begin
        activations_16_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_16_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_we0;
    end else begin
        activations_16_we0 = activations_16_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1683_state5 == 1'b1))) begin
        activations_16_we0_local = 1'b1;
    end else begin
        activations_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_17_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_address0;
    end else begin
        activations_17_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_17_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_ce0;
    end else begin
        activations_17_ce0 = activations_17_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_17_ce0_local = 1'b1;
    end else begin
        activations_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_17_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_ce1;
    end else begin
        activations_17_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_17_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_d0;
    end else begin
        activations_17_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_17_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_we0;
    end else begin
        activations_17_we0 = activations_17_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1674_state5 == 1'b1))) begin
        activations_17_we0_local = 1'b1;
    end else begin
        activations_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_18_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_address0;
    end else begin
        activations_18_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_18_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_ce0;
    end else begin
        activations_18_ce0 = activations_18_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_18_ce0_local = 1'b1;
    end else begin
        activations_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_18_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_ce1;
    end else begin
        activations_18_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_18_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_d0;
    end else begin
        activations_18_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_18_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_we0;
    end else begin
        activations_18_we0 = activations_18_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1665_state5 == 1'b1))) begin
        activations_18_we0_local = 1'b1;
    end else begin
        activations_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_19_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_address0;
    end else begin
        activations_19_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_19_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_ce0;
    end else begin
        activations_19_ce0 = activations_19_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_19_ce0_local = 1'b1;
    end else begin
        activations_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_19_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_ce1;
    end else begin
        activations_19_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_19_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_d0;
    end else begin
        activations_19_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_19_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_we0;
    end else begin
        activations_19_we0 = activations_19_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1656_state5 == 1'b1))) begin
        activations_19_we0_local = 1'b1;
    end else begin
        activations_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_address0;
    end else begin
        activations_1_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_ce0;
    end else begin
        activations_1_ce0 = activations_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_1_ce0_local = 1'b1;
    end else begin
        activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_ce1;
    end else begin
        activations_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_d0;
    end else begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_we0;
    end else begin
        activations_1_we0 = activations_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1818_state5 == 1'b1))) begin
        activations_1_we0_local = 1'b1;
    end else begin
        activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_20_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_address0;
    end else begin
        activations_20_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_20_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_ce0;
    end else begin
        activations_20_ce0 = activations_20_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_20_ce0_local = 1'b1;
    end else begin
        activations_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_20_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_ce1;
    end else begin
        activations_20_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_20_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_d0;
    end else begin
        activations_20_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_20_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_we0;
    end else begin
        activations_20_we0 = activations_20_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1647_state5 == 1'b1))) begin
        activations_20_we0_local = 1'b1;
    end else begin
        activations_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_21_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_address0;
    end else begin
        activations_21_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_21_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_ce0;
    end else begin
        activations_21_ce0 = activations_21_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_21_ce0_local = 1'b1;
    end else begin
        activations_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_21_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_ce1;
    end else begin
        activations_21_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_21_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_d0;
    end else begin
        activations_21_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_21_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_we0;
    end else begin
        activations_21_we0 = activations_21_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1638_state5 == 1'b1))) begin
        activations_21_we0_local = 1'b1;
    end else begin
        activations_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_22_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_address0;
    end else begin
        activations_22_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_22_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_ce0;
    end else begin
        activations_22_ce0 = activations_22_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_22_ce0_local = 1'b1;
    end else begin
        activations_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_22_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_ce1;
    end else begin
        activations_22_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_22_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_d0;
    end else begin
        activations_22_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_22_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_we0;
    end else begin
        activations_22_we0 = activations_22_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1629_state5 == 1'b1))) begin
        activations_22_we0_local = 1'b1;
    end else begin
        activations_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_23_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_address0;
    end else begin
        activations_23_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_23_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_ce0;
    end else begin
        activations_23_ce0 = activations_23_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_23_ce0_local = 1'b1;
    end else begin
        activations_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_23_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_ce1;
    end else begin
        activations_23_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_23_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_d0;
    end else begin
        activations_23_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_23_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_we0;
    end else begin
        activations_23_we0 = activations_23_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1620_state5 == 1'b1))) begin
        activations_23_we0_local = 1'b1;
    end else begin
        activations_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_24_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_address0;
    end else begin
        activations_24_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_24_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_ce0;
    end else begin
        activations_24_ce0 = activations_24_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_24_ce0_local = 1'b1;
    end else begin
        activations_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_24_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_ce1;
    end else begin
        activations_24_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_24_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_d0;
    end else begin
        activations_24_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_24_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_we0;
    end else begin
        activations_24_we0 = activations_24_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1611_state5 == 1'b1))) begin
        activations_24_we0_local = 1'b1;
    end else begin
        activations_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_25_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_address0;
    end else begin
        activations_25_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_25_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_ce0;
    end else begin
        activations_25_ce0 = activations_25_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_25_ce0_local = 1'b1;
    end else begin
        activations_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_25_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_ce1;
    end else begin
        activations_25_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_25_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_d0;
    end else begin
        activations_25_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_25_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_we0;
    end else begin
        activations_25_we0 = activations_25_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1602_state5 == 1'b1))) begin
        activations_25_we0_local = 1'b1;
    end else begin
        activations_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_26_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_address0;
    end else begin
        activations_26_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_26_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_ce0;
    end else begin
        activations_26_ce0 = activations_26_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_26_ce0_local = 1'b1;
    end else begin
        activations_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_26_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_ce1;
    end else begin
        activations_26_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_26_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_d0;
    end else begin
        activations_26_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_26_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_we0;
    end else begin
        activations_26_we0 = activations_26_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1593_state5 == 1'b1))) begin
        activations_26_we0_local = 1'b1;
    end else begin
        activations_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_27_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_address0;
    end else begin
        activations_27_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_27_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_ce0;
    end else begin
        activations_27_ce0 = activations_27_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_27_ce0_local = 1'b1;
    end else begin
        activations_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_27_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_ce1;
    end else begin
        activations_27_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_27_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_d0;
    end else begin
        activations_27_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_27_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_we0;
    end else begin
        activations_27_we0 = activations_27_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1584_state5 == 1'b1))) begin
        activations_27_we0_local = 1'b1;
    end else begin
        activations_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_28_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_address0;
    end else begin
        activations_28_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_28_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_ce0;
    end else begin
        activations_28_ce0 = activations_28_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_28_ce0_local = 1'b1;
    end else begin
        activations_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_28_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_ce1;
    end else begin
        activations_28_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_28_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_d0;
    end else begin
        activations_28_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_28_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_we0;
    end else begin
        activations_28_we0 = activations_28_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1575_state5 == 1'b1))) begin
        activations_28_we0_local = 1'b1;
    end else begin
        activations_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_29_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_address0;
    end else begin
        activations_29_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_29_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_ce0;
    end else begin
        activations_29_ce0 = activations_29_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_29_ce0_local = 1'b1;
    end else begin
        activations_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_29_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_ce1;
    end else begin
        activations_29_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_29_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_d0;
    end else begin
        activations_29_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_29_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_we0;
    end else begin
        activations_29_we0 = activations_29_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1566_state5 == 1'b1))) begin
        activations_29_we0_local = 1'b1;
    end else begin
        activations_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_address0;
    end else begin
        activations_2_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_ce0;
    end else begin
        activations_2_ce0 = activations_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_2_ce0_local = 1'b1;
    end else begin
        activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_ce1;
    end else begin
        activations_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_d0;
    end else begin
        activations_2_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_2_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_we0;
    end else begin
        activations_2_we0 = activations_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1809_state5 == 1'b1))) begin
        activations_2_we0_local = 1'b1;
    end else begin
        activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_30_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_address0;
    end else begin
        activations_30_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_30_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_ce0;
    end else begin
        activations_30_ce0 = activations_30_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_30_ce0_local = 1'b1;
    end else begin
        activations_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_30_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_ce1;
    end else begin
        activations_30_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_30_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_d0;
    end else begin
        activations_30_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_30_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_we0;
    end else begin
        activations_30_we0 = activations_30_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1554_state5 == 1'b1))) begin
        activations_30_we0_local = 1'b1;
    end else begin
        activations_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_31_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_address0;
    end else begin
        activations_31_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_31_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_ce0;
    end else begin
        activations_31_ce0 = activations_31_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_31_ce0_local = 1'b1;
    end else begin
        activations_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_31_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_ce1;
    end else begin
        activations_31_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_31_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_d0;
    end else begin
        activations_31_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_31_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_we0;
    end else begin
        activations_31_we0 = activations_31_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1836_state5 == 1'b1))) begin
        activations_31_we0_local = 1'b1;
    end else begin
        activations_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_address0;
    end else begin
        activations_3_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_ce0;
    end else begin
        activations_3_ce0 = activations_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_3_ce0_local = 1'b1;
    end else begin
        activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_ce1;
    end else begin
        activations_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_d0;
    end else begin
        activations_3_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_3_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_we0;
    end else begin
        activations_3_we0 = activations_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1800_state5 == 1'b1))) begin
        activations_3_we0_local = 1'b1;
    end else begin
        activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_address0;
    end else begin
        activations_4_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_ce0;
    end else begin
        activations_4_ce0 = activations_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_4_ce0_local = 1'b1;
    end else begin
        activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_ce1;
    end else begin
        activations_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_d0;
    end else begin
        activations_4_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_4_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_we0;
    end else begin
        activations_4_we0 = activations_4_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1791_state5 == 1'b1))) begin
        activations_4_we0_local = 1'b1;
    end else begin
        activations_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_address0;
    end else begin
        activations_5_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_ce0;
    end else begin
        activations_5_ce0 = activations_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_5_ce0_local = 1'b1;
    end else begin
        activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_ce1;
    end else begin
        activations_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_d0;
    end else begin
        activations_5_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_5_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_we0;
    end else begin
        activations_5_we0 = activations_5_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1782_state5 == 1'b1))) begin
        activations_5_we0_local = 1'b1;
    end else begin
        activations_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_address0;
    end else begin
        activations_6_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_ce0;
    end else begin
        activations_6_ce0 = activations_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_6_ce0_local = 1'b1;
    end else begin
        activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_ce1;
    end else begin
        activations_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_d0;
    end else begin
        activations_6_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_6_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_we0;
    end else begin
        activations_6_we0 = activations_6_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1773_state5 == 1'b1))) begin
        activations_6_we0_local = 1'b1;
    end else begin
        activations_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_address0;
    end else begin
        activations_7_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_ce0;
    end else begin
        activations_7_ce0 = activations_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_7_ce0_local = 1'b1;
    end else begin
        activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_ce1;
    end else begin
        activations_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_d0;
    end else begin
        activations_7_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_7_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_we0;
    end else begin
        activations_7_we0 = activations_7_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1764_state5 == 1'b1))) begin
        activations_7_we0_local = 1'b1;
    end else begin
        activations_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_address0;
    end else begin
        activations_8_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_ce0;
    end else begin
        activations_8_ce0 = activations_8_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_8_ce0_local = 1'b1;
    end else begin
        activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_8_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_ce1;
    end else begin
        activations_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_8_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_d0;
    end else begin
        activations_8_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_8_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_we0;
    end else begin
        activations_8_we0 = activations_8_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1755_state5 == 1'b1))) begin
        activations_8_we0_local = 1'b1;
    end else begin
        activations_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_address0;
    end else begin
        activations_9_address0 = zext_ln43_fu_1081_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_ce0;
    end else begin
        activations_9_ce0 = activations_9_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_9_ce0_local = 1'b1;
    end else begin
        activations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_9_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_ce1;
    end else begin
        activations_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_9_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_d0;
    end else begin
        activations_9_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        activations_9_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_we0;
    end else begin
        activations_9_we0 = activations_9_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_pred1746_state5 == 1'b1))) begin
        activations_9_we0_local = 1'b1;
    end else begin
        activations_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_done == 1'b1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1194_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1194_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_ce;
    end else begin
        grp_fu_1194_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1194_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1194_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_opcode;
    end else begin
        grp_fu_1194_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1194_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1194_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_din0;
    end else begin
        grp_fu_1194_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1194_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_grp_fu_1194_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1194_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1194_p_din1;
    end else begin
        grp_fu_1194_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1198_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1198_p_ce;
    end else begin
        grp_fu_1198_ce = 1'b1;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln44_reg_1171 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_0_address1;
assign activations_10_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_10_address1;
assign activations_11_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_11_address1;
assign activations_12_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_12_address1;
assign activations_13_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_13_address1;
assign activations_14_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_14_address1;
assign activations_15_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_15_address1;
assign activations_16_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_16_address1;
assign activations_17_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_17_address1;
assign activations_18_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_18_address1;
assign activations_19_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_19_address1;
assign activations_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_1_address1;
assign activations_20_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_20_address1;
assign activations_21_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_21_address1;
assign activations_22_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_22_address1;
assign activations_23_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_23_address1;
assign activations_24_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_24_address1;
assign activations_25_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_25_address1;
assign activations_26_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_26_address1;
assign activations_27_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_27_address1;
assign activations_28_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_28_address1;
assign activations_29_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_29_address1;
assign activations_2_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_2_address1;
assign activations_30_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_30_address1;
assign activations_31_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_31_address1;
assign activations_3_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_3_address1;
assign activations_4_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_4_address1;
assign activations_5_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_5_address1;
assign activations_6_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_6_address1;
assign activations_7_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_7_address1;
assign activations_8_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_8_address1;
assign activations_9_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_activations_9_address1;
assign add_ln44_fu_1060_p2 = (i_fu_356 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign biases2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_0_address0;
assign biases2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_0_ce0;
assign biases2_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_10_address0;
assign biases2_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_10_ce0;
assign biases2_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_11_address0;
assign biases2_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_11_ce0;
assign biases2_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_12_address0;
assign biases2_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_12_ce0;
assign biases2_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_13_address0;
assign biases2_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_13_ce0;
assign biases2_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_14_address0;
assign biases2_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_14_ce0;
assign biases2_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_15_address0;
assign biases2_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_15_ce0;
assign biases2_16_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_16_address0;
assign biases2_16_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_16_ce0;
assign biases2_17_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_17_address0;
assign biases2_17_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_17_ce0;
assign biases2_18_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_18_address0;
assign biases2_18_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_18_ce0;
assign biases2_19_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_19_address0;
assign biases2_19_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_19_ce0;
assign biases2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_1_address0;
assign biases2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_1_ce0;
assign biases2_20_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_20_address0;
assign biases2_20_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_20_ce0;
assign biases2_21_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_21_address0;
assign biases2_21_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_21_ce0;
assign biases2_22_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_22_address0;
assign biases2_22_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_22_ce0;
assign biases2_23_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_23_address0;
assign biases2_23_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_23_ce0;
assign biases2_24_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_24_address0;
assign biases2_24_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_24_ce0;
assign biases2_25_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_25_address0;
assign biases2_25_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_25_ce0;
assign biases2_26_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_26_address0;
assign biases2_26_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_26_ce0;
assign biases2_27_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_27_address0;
assign biases2_27_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_27_ce0;
assign biases2_28_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_28_address0;
assign biases2_28_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_28_ce0;
assign biases2_29_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_29_address0;
assign biases2_29_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_29_ce0;
assign biases2_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_2_address0;
assign biases2_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_2_ce0;
assign biases2_30_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_30_address0;
assign biases2_30_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_30_ce0;
assign biases2_31_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_31_address0;
assign biases2_31_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_31_ce0;
assign biases2_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_3_address0;
assign biases2_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_3_ce0;
assign biases2_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_4_address0;
assign biases2_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_4_ce0;
assign biases2_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_5_address0;
assign biases2_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_5_ce0;
assign biases2_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_6_address0;
assign biases2_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_6_ce0;
assign biases2_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_7_address0;
assign biases2_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_7_ce0;
assign biases2_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_8_address0;
assign biases2_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_8_ce0;
assign biases2_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_9_address0;
assign biases2_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_biases2_9_ce0;
assign empty_fu_1075_p2 = i_fu_356 << 7'd1;
assign grp_fu_9536_p_ce = grp_fu_1194_ce;
assign grp_fu_9536_p_din0 = grp_fu_1194_p0;
assign grp_fu_9536_p_din1 = grp_fu_1194_p1;
assign grp_fu_9536_p_opcode = grp_fu_1194_opcode;
assign grp_fu_9728_p_ce = grp_fu_1198_ce;
assign grp_fu_9728_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1198_p_din0;
assign grp_fu_9728_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_grp_fu_1198_p_din1;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_914_ap_start_reg;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_ap_start_reg;
assign icmp_ln44_fu_1054_p2 = ((i_fu_356 == 7'd64) ? 1'b1 : 1'b0);
assign input_activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_0_address0;
assign input_activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_0_ce0;
assign input_activations_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_10_address0;
assign input_activations_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_10_ce0;
assign input_activations_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_11_address0;
assign input_activations_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_11_ce0;
assign input_activations_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_12_address0;
assign input_activations_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_12_ce0;
assign input_activations_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_13_address0;
assign input_activations_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_13_ce0;
assign input_activations_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_14_address0;
assign input_activations_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_14_ce0;
assign input_activations_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_15_address0;
assign input_activations_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_15_ce0;
assign input_activations_16_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_16_address0;
assign input_activations_16_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_16_ce0;
assign input_activations_17_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_17_address0;
assign input_activations_17_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_17_ce0;
assign input_activations_18_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_18_address0;
assign input_activations_18_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_18_ce0;
assign input_activations_19_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_19_address0;
assign input_activations_19_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_19_ce0;
assign input_activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_1_address0;
assign input_activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_1_ce0;
assign input_activations_20_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_20_address0;
assign input_activations_20_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_20_ce0;
assign input_activations_21_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_21_address0;
assign input_activations_21_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_21_ce0;
assign input_activations_22_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_22_address0;
assign input_activations_22_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_22_ce0;
assign input_activations_23_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_23_address0;
assign input_activations_23_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_23_ce0;
assign input_activations_24_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_24_address0;
assign input_activations_24_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_24_ce0;
assign input_activations_25_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_25_address0;
assign input_activations_25_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_25_ce0;
assign input_activations_26_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_26_address0;
assign input_activations_26_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_26_ce0;
assign input_activations_27_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_27_address0;
assign input_activations_27_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_27_ce0;
assign input_activations_28_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_28_address0;
assign input_activations_28_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_28_ce0;
assign input_activations_29_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_29_address0;
assign input_activations_29_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_29_ce0;
assign input_activations_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_2_address0;
assign input_activations_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_2_ce0;
assign input_activations_30_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_30_address0;
assign input_activations_30_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_30_ce0;
assign input_activations_31_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_31_address0;
assign input_activations_31_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_31_ce0;
assign input_activations_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_3_address0;
assign input_activations_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_3_ce0;
assign input_activations_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_4_address0;
assign input_activations_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_4_ce0;
assign input_activations_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_5_address0;
assign input_activations_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_5_ce0;
assign input_activations_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_6_address0;
assign input_activations_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_6_ce0;
assign input_activations_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_7_address0;
assign input_activations_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_7_ce0;
assign input_activations_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_8_address0;
assign input_activations_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_8_ce0;
assign input_activations_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_9_address0;
assign input_activations_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_input_activations_9_ce0;
assign trunc_ln44_fu_1065_p1 = i_fu_356[4:0];
assign weights2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_0_address0;
assign weights2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_0_ce0;
assign weights2_10_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_10_address0;
assign weights2_10_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_10_ce0;
assign weights2_11_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_11_address0;
assign weights2_11_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_11_ce0;
assign weights2_12_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_12_address0;
assign weights2_12_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_12_ce0;
assign weights2_13_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_13_address0;
assign weights2_13_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_13_ce0;
assign weights2_14_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_14_address0;
assign weights2_14_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_14_ce0;
assign weights2_15_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_15_address0;
assign weights2_15_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_15_ce0;
assign weights2_16_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_16_address0;
assign weights2_16_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_16_ce0;
assign weights2_17_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_17_address0;
assign weights2_17_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_17_ce0;
assign weights2_18_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_18_address0;
assign weights2_18_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_18_ce0;
assign weights2_19_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_19_address0;
assign weights2_19_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_19_ce0;
assign weights2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_1_address0;
assign weights2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_1_ce0;
assign weights2_20_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_20_address0;
assign weights2_20_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_20_ce0;
assign weights2_21_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_21_address0;
assign weights2_21_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_21_ce0;
assign weights2_22_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_22_address0;
assign weights2_22_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_22_ce0;
assign weights2_23_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_23_address0;
assign weights2_23_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_23_ce0;
assign weights2_24_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_24_address0;
assign weights2_24_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_24_ce0;
assign weights2_25_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_25_address0;
assign weights2_25_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_25_ce0;
assign weights2_26_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_26_address0;
assign weights2_26_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_26_ce0;
assign weights2_27_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_27_address0;
assign weights2_27_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_27_ce0;
assign weights2_28_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_28_address0;
assign weights2_28_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_28_ce0;
assign weights2_29_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_29_address0;
assign weights2_29_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_29_ce0;
assign weights2_2_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_2_address0;
assign weights2_2_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_2_ce0;
assign weights2_30_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_30_address0;
assign weights2_30_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_30_ce0;
assign weights2_31_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_31_address0;
assign weights2_31_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_31_ce0;
assign weights2_3_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_3_address0;
assign weights2_3_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_3_ce0;
assign weights2_4_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_4_address0;
assign weights2_4_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_4_ce0;
assign weights2_5_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_5_address0;
assign weights2_5_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_5_ce0;
assign weights2_6_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_6_address0;
assign weights2_6_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_6_ce0;
assign weights2_7_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_7_address0;
assign weights2_7_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_7_ce0;
assign weights2_8_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_8_address0;
assign weights2_8_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_8_ce0;
assign weights2_9_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_9_address0;
assign weights2_9_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_780_weights2_9_ce0;
assign zext_ln43_fu_1081_p1 = tmp_reg_1184;
always @ (posedge ap_clk) begin
    empty_reg_1189[0] <= 1'b0;
end
endmodule 
