
module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_8_address1,delta_weights3_8_ce1,delta_weights3_8_we1,delta_weights3_8_d1,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_9_address1,delta_weights3_9_ce1,delta_weights3_9_we1,delta_weights3_9_d1,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_10_address1,delta_weights3_10_ce1,delta_weights3_10_we1,delta_weights3_10_d1,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_11_address1,delta_weights3_11_ce1,delta_weights3_11_we1,delta_weights3_11_d1,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_12_address1,delta_weights3_12_ce1,delta_weights3_12_we1,delta_weights3_12_d1,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_13_address1,delta_weights3_13_ce1,delta_weights3_13_we1,delta_weights3_13_d1,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_14_address1,delta_weights3_14_ce1,delta_weights3_14_we1,delta_weights3_14_d1,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_15_address1,delta_weights3_15_ce1,delta_weights3_15_we1,delta_weights3_15_d1,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_16_address1,delta_weights3_16_ce1,delta_weights3_16_we1,delta_weights3_16_d1,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_17_address1,delta_weights3_17_ce1,delta_weights3_17_we1,delta_weights3_17_d1,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_18_address1,delta_weights3_18_ce1,delta_weights3_18_we1,delta_weights3_18_d1,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_19_address1,delta_weights3_19_ce1,delta_weights3_19_we1,delta_weights3_19_d1,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_20_address1,delta_weights3_20_ce1,delta_weights3_20_we1,delta_weights3_20_d1,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_21_address1,delta_weights3_21_ce1,delta_weights3_21_we1,delta_weights3_21_d1,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_22_address1,delta_weights3_22_ce1,delta_weights3_22_we1,delta_weights3_22_d1,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_23_address1,delta_weights3_23_ce1,delta_weights3_23_we1,delta_weights3_23_d1,delta_weights3_24_address0,delta_weights3_24_ce0,delta_weights3_24_we0,delta_weights3_24_d0,delta_weights3_24_address1,delta_weights3_24_ce1,delta_weights3_24_we1,delta_weights3_24_d1,delta_weights3_25_address0,delta_weights3_25_ce0,delta_weights3_25_we0,delta_weights3_25_d0,delta_weights3_25_address1,delta_weights3_25_ce1,delta_weights3_25_we1,delta_weights3_25_d1,delta_weights3_26_address0,delta_weights3_26_ce0,delta_weights3_26_we0,delta_weights3_26_d0,delta_weights3_26_address1,delta_weights3_26_ce1,delta_weights3_26_we1,delta_weights3_26_d1,delta_weights3_27_address0,delta_weights3_27_ce0,delta_weights3_27_we0,delta_weights3_27_d0,delta_weights3_27_address1,delta_weights3_27_ce1,delta_weights3_27_we1,delta_weights3_27_d1,delta_weights3_28_address0,delta_weights3_28_ce0,delta_weights3_28_we0,delta_weights3_28_d0,delta_weights3_28_address1,delta_weights3_28_ce1,delta_weights3_28_we1,delta_weights3_28_d1,delta_weights3_29_address0,delta_weights3_29_ce0,delta_weights3_29_we0,delta_weights3_29_d0,delta_weights3_29_address1,delta_weights3_29_ce1,delta_weights3_29_we1,delta_weights3_29_d1,delta_weights3_30_address0,delta_weights3_30_ce0,delta_weights3_30_we0,delta_weights3_30_d0,delta_weights3_30_address1,delta_weights3_30_ce1,delta_weights3_30_we1,delta_weights3_30_d1,delta_weights3_31_address0,delta_weights3_31_ce0,delta_weights3_31_we0,delta_weights3_31_d0,delta_weights3_31_address1,delta_weights3_31_ce1,delta_weights3_31_we1,delta_weights3_31_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_8_address0,last_activations_8_ce0,last_activations_8_q0,last_activations_9_address0,last_activations_9_ce0,last_activations_9_q0,last_activations_10_address0,last_activations_10_ce0,last_activations_10_q0,last_activations_11_address0,last_activations_11_ce0,last_activations_11_q0,last_activations_12_address0,last_activations_12_ce0,last_activations_12_q0,last_activations_13_address0,last_activations_13_ce0,last_activations_13_q0,last_activations_14_address0,last_activations_14_ce0,last_activations_14_q0,last_activations_15_address0,last_activations_15_ce0,last_activations_15_q0,last_activations_16_address0,last_activations_16_ce0,last_activations_16_q0,last_activations_17_address0,last_activations_17_ce0,last_activations_17_q0,last_activations_18_address0,last_activations_18_ce0,last_activations_18_q0,last_activations_19_address0,last_activations_19_ce0,last_activations_19_q0,last_activations_20_address0,last_activations_20_ce0,last_activations_20_q0,last_activations_21_address0,last_activations_21_ce0,last_activations_21_q0,last_activations_22_address0,last_activations_22_ce0,last_activations_22_q0,last_activations_23_address0,last_activations_23_ce0,last_activations_23_q0,last_activations_24_address0,last_activations_24_ce0,last_activations_24_q0,last_activations_25_address0,last_activations_25_ce0,last_activations_25_q0,last_activations_26_address0,last_activations_26_ce0,last_activations_26_q0,last_activations_27_address0,last_activations_27_ce0,last_activations_27_q0,last_activations_28_address0,last_activations_28_ce0,last_activations_28_q0,last_activations_29_address0,last_activations_29_ce0,last_activations_29_q0,last_activations_30_address0,last_activations_30_ce0,last_activations_30_q0,last_activations_31_address0,last_activations_31_ce0,last_activations_31_q0,grp_fu_9728_p_din0,grp_fu_9728_p_din1,grp_fu_9728_p_dout0,grp_fu_9728_p_ce,grp_fu_9732_p_din0,grp_fu_9732_p_din1,grp_fu_9732_p_dout0,grp_fu_9732_p_ce,grp_fu_9736_p_din0,grp_fu_9736_p_din1,grp_fu_9736_p_dout0,grp_fu_9736_p_ce,grp_fu_9740_p_din0,grp_fu_9740_p_din1,grp_fu_9740_p_dout0,grp_fu_9740_p_ce,grp_fu_9744_p_din0,grp_fu_9744_p_din1,grp_fu_9744_p_dout0,grp_fu_9744_p_ce,grp_fu_9748_p_din0,grp_fu_9748_p_din1,grp_fu_9748_p_dout0,grp_fu_9748_p_ce,grp_fu_9752_p_din0,grp_fu_9752_p_din1,grp_fu_9752_p_dout0,grp_fu_9752_p_ce,grp_fu_9756_p_din0,grp_fu_9756_p_din1,grp_fu_9756_p_dout0,grp_fu_9756_p_ce,grp_fu_9760_p_din0,grp_fu_9760_p_din1,grp_fu_9760_p_dout0,grp_fu_9760_p_ce,grp_fu_9764_p_din0,grp_fu_9764_p_din1,grp_fu_9764_p_dout0,grp_fu_9764_p_ce,grp_fu_9768_p_din0,grp_fu_9768_p_din1,grp_fu_9768_p_dout0,grp_fu_9768_p_ce,grp_fu_9772_p_din0,grp_fu_9772_p_din1,grp_fu_9772_p_dout0,grp_fu_9772_p_ce,grp_fu_9776_p_din0,grp_fu_9776_p_din1,grp_fu_9776_p_dout0,grp_fu_9776_p_ce,grp_fu_9780_p_din0,grp_fu_9780_p_din1,grp_fu_9780_p_dout0,grp_fu_9780_p_ce,grp_fu_9784_p_din0,grp_fu_9784_p_din1,grp_fu_9784_p_dout0,grp_fu_9784_p_ce,grp_fu_9788_p_din0,grp_fu_9788_p_din1,grp_fu_9788_p_dout0,grp_fu_9788_p_ce,grp_fu_9792_p_din0,grp_fu_9792_p_din1,grp_fu_9792_p_dout0,grp_fu_9792_p_ce,grp_fu_9796_p_din0,grp_fu_9796_p_din1,grp_fu_9796_p_dout0,grp_fu_9796_p_ce,grp_fu_9800_p_din0,grp_fu_9800_p_din1,grp_fu_9800_p_dout0,grp_fu_9800_p_ce,grp_fu_9804_p_din0,grp_fu_9804_p_din1,grp_fu_9804_p_dout0,grp_fu_9804_p_ce,grp_fu_9808_p_din0,grp_fu_9808_p_din1,grp_fu_9808_p_dout0,grp_fu_9808_p_ce,grp_fu_9812_p_din0,grp_fu_9812_p_din1,grp_fu_9812_p_dout0,grp_fu_9812_p_ce,grp_fu_9816_p_din0,grp_fu_9816_p_din1,grp_fu_9816_p_dout0,grp_fu_9816_p_ce,grp_fu_9820_p_din0,grp_fu_9820_p_din1,grp_fu_9820_p_dout0,grp_fu_9820_p_ce,grp_fu_9824_p_din0,grp_fu_9824_p_din1,grp_fu_9824_p_dout0,grp_fu_9824_p_ce,grp_fu_9828_p_din0,grp_fu_9828_p_din1,grp_fu_9828_p_dout0,grp_fu_9828_p_ce,grp_fu_9832_p_din0,grp_fu_9832_p_din1,grp_fu_9832_p_dout0,grp_fu_9832_p_ce,grp_fu_9836_p_din0,grp_fu_9836_p_din1,grp_fu_9836_p_dout0,grp_fu_9836_p_ce,grp_fu_9840_p_din0,grp_fu_9840_p_din1,grp_fu_9840_p_dout0,grp_fu_9840_p_ce,grp_fu_9844_p_din0,grp_fu_9844_p_din1,grp_fu_9844_p_dout0,grp_fu_9844_p_ce,grp_fu_9848_p_din0,grp_fu_9848_p_din1,grp_fu_9848_p_dout0,grp_fu_9848_p_ce,grp_fu_9852_p_din0,grp_fu_9852_p_din1,grp_fu_9852_p_dout0,grp_fu_9852_p_ce,grp_fu_9856_p_din0,grp_fu_9856_p_din1,grp_fu_9856_p_dout0,grp_fu_9856_p_ce,grp_fu_9860_p_din0,grp_fu_9860_p_din1,grp_fu_9860_p_dout0,grp_fu_9860_p_ce,grp_fu_9864_p_din0,grp_fu_9864_p_din1,grp_fu_9864_p_dout0,grp_fu_9864_p_ce,grp_fu_9868_p_din0,grp_fu_9868_p_din1,grp_fu_9868_p_dout0,grp_fu_9868_p_ce,grp_fu_9872_p_din0,grp_fu_9872_p_din1,grp_fu_9872_p_dout0,grp_fu_9872_p_ce,grp_fu_9876_p_din0,grp_fu_9876_p_din1,grp_fu_9876_p_dout0,grp_fu_9876_p_ce,grp_fu_9880_p_din0,grp_fu_9880_p_din1,grp_fu_9880_p_dout0,grp_fu_9880_p_ce,grp_fu_9884_p_din0,grp_fu_9884_p_din1,grp_fu_9884_p_dout0,grp_fu_9884_p_ce,grp_fu_9888_p_din0,grp_fu_9888_p_din1,grp_fu_9888_p_dout0,grp_fu_9888_p_ce,grp_fu_9892_p_din0,grp_fu_9892_p_din1,grp_fu_9892_p_dout0,grp_fu_9892_p_ce,grp_fu_9896_p_din0,grp_fu_9896_p_din1,grp_fu_9896_p_dout0,grp_fu_9896_p_ce,grp_fu_9900_p_din0,grp_fu_9900_p_din1,grp_fu_9900_p_dout0,grp_fu_9900_p_ce,grp_fu_9904_p_din0,grp_fu_9904_p_din1,grp_fu_9904_p_dout0,grp_fu_9904_p_ce,grp_fu_9908_p_din0,grp_fu_9908_p_din1,grp_fu_9908_p_dout0,grp_fu_9908_p_ce,grp_fu_9912_p_din0,grp_fu_9912_p_din1,grp_fu_9912_p_dout0,grp_fu_9912_p_ce,grp_fu_9916_p_din0,grp_fu_9916_p_din1,grp_fu_9916_p_dout0,grp_fu_9916_p_ce);  
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
output  [2:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [2:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [2:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [2:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [2:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [2:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [2:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
output  [2:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [2:0] delta_weights3_4_address1;
output   delta_weights3_4_ce1;
output   delta_weights3_4_we1;
output  [63:0] delta_weights3_4_d1;
output  [2:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [2:0] delta_weights3_5_address1;
output   delta_weights3_5_ce1;
output   delta_weights3_5_we1;
output  [63:0] delta_weights3_5_d1;
output  [2:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [2:0] delta_weights3_6_address1;
output   delta_weights3_6_ce1;
output   delta_weights3_6_we1;
output  [63:0] delta_weights3_6_d1;
output  [2:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [2:0] delta_weights3_7_address1;
output   delta_weights3_7_ce1;
output   delta_weights3_7_we1;
output  [63:0] delta_weights3_7_d1;
output  [2:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [2:0] delta_weights3_8_address1;
output   delta_weights3_8_ce1;
output   delta_weights3_8_we1;
output  [63:0] delta_weights3_8_d1;
output  [2:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [2:0] delta_weights3_9_address1;
output   delta_weights3_9_ce1;
output   delta_weights3_9_we1;
output  [63:0] delta_weights3_9_d1;
output  [2:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [2:0] delta_weights3_10_address1;
output   delta_weights3_10_ce1;
output   delta_weights3_10_we1;
output  [63:0] delta_weights3_10_d1;
output  [2:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [2:0] delta_weights3_11_address1;
output   delta_weights3_11_ce1;
output   delta_weights3_11_we1;
output  [63:0] delta_weights3_11_d1;
output  [2:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [2:0] delta_weights3_12_address1;
output   delta_weights3_12_ce1;
output   delta_weights3_12_we1;
output  [63:0] delta_weights3_12_d1;
output  [2:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [2:0] delta_weights3_13_address1;
output   delta_weights3_13_ce1;
output   delta_weights3_13_we1;
output  [63:0] delta_weights3_13_d1;
output  [2:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [2:0] delta_weights3_14_address1;
output   delta_weights3_14_ce1;
output   delta_weights3_14_we1;
output  [63:0] delta_weights3_14_d1;
output  [2:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
output  [2:0] delta_weights3_15_address1;
output   delta_weights3_15_ce1;
output   delta_weights3_15_we1;
output  [63:0] delta_weights3_15_d1;
output  [2:0] delta_weights3_16_address0;
output   delta_weights3_16_ce0;
output   delta_weights3_16_we0;
output  [63:0] delta_weights3_16_d0;
output  [2:0] delta_weights3_16_address1;
output   delta_weights3_16_ce1;
output   delta_weights3_16_we1;
output  [63:0] delta_weights3_16_d1;
output  [2:0] delta_weights3_17_address0;
output   delta_weights3_17_ce0;
output   delta_weights3_17_we0;
output  [63:0] delta_weights3_17_d0;
output  [2:0] delta_weights3_17_address1;
output   delta_weights3_17_ce1;
output   delta_weights3_17_we1;
output  [63:0] delta_weights3_17_d1;
output  [2:0] delta_weights3_18_address0;
output   delta_weights3_18_ce0;
output   delta_weights3_18_we0;
output  [63:0] delta_weights3_18_d0;
output  [2:0] delta_weights3_18_address1;
output   delta_weights3_18_ce1;
output   delta_weights3_18_we1;
output  [63:0] delta_weights3_18_d1;
output  [2:0] delta_weights3_19_address0;
output   delta_weights3_19_ce0;
output   delta_weights3_19_we0;
output  [63:0] delta_weights3_19_d0;
output  [2:0] delta_weights3_19_address1;
output   delta_weights3_19_ce1;
output   delta_weights3_19_we1;
output  [63:0] delta_weights3_19_d1;
output  [2:0] delta_weights3_20_address0;
output   delta_weights3_20_ce0;
output   delta_weights3_20_we0;
output  [63:0] delta_weights3_20_d0;
output  [2:0] delta_weights3_20_address1;
output   delta_weights3_20_ce1;
output   delta_weights3_20_we1;
output  [63:0] delta_weights3_20_d1;
output  [2:0] delta_weights3_21_address0;
output   delta_weights3_21_ce0;
output   delta_weights3_21_we0;
output  [63:0] delta_weights3_21_d0;
output  [2:0] delta_weights3_21_address1;
output   delta_weights3_21_ce1;
output   delta_weights3_21_we1;
output  [63:0] delta_weights3_21_d1;
output  [2:0] delta_weights3_22_address0;
output   delta_weights3_22_ce0;
output   delta_weights3_22_we0;
output  [63:0] delta_weights3_22_d0;
output  [2:0] delta_weights3_22_address1;
output   delta_weights3_22_ce1;
output   delta_weights3_22_we1;
output  [63:0] delta_weights3_22_d1;
output  [2:0] delta_weights3_23_address0;
output   delta_weights3_23_ce0;
output   delta_weights3_23_we0;
output  [63:0] delta_weights3_23_d0;
output  [2:0] delta_weights3_23_address1;
output   delta_weights3_23_ce1;
output   delta_weights3_23_we1;
output  [63:0] delta_weights3_23_d1;
output  [2:0] delta_weights3_24_address0;
output   delta_weights3_24_ce0;
output   delta_weights3_24_we0;
output  [63:0] delta_weights3_24_d0;
output  [2:0] delta_weights3_24_address1;
output   delta_weights3_24_ce1;
output   delta_weights3_24_we1;
output  [63:0] delta_weights3_24_d1;
output  [2:0] delta_weights3_25_address0;
output   delta_weights3_25_ce0;
output   delta_weights3_25_we0;
output  [63:0] delta_weights3_25_d0;
output  [2:0] delta_weights3_25_address1;
output   delta_weights3_25_ce1;
output   delta_weights3_25_we1;
output  [63:0] delta_weights3_25_d1;
output  [2:0] delta_weights3_26_address0;
output   delta_weights3_26_ce0;
output   delta_weights3_26_we0;
output  [63:0] delta_weights3_26_d0;
output  [2:0] delta_weights3_26_address1;
output   delta_weights3_26_ce1;
output   delta_weights3_26_we1;
output  [63:0] delta_weights3_26_d1;
output  [2:0] delta_weights3_27_address0;
output   delta_weights3_27_ce0;
output   delta_weights3_27_we0;
output  [63:0] delta_weights3_27_d0;
output  [2:0] delta_weights3_27_address1;
output   delta_weights3_27_ce1;
output   delta_weights3_27_we1;
output  [63:0] delta_weights3_27_d1;
output  [2:0] delta_weights3_28_address0;
output   delta_weights3_28_ce0;
output   delta_weights3_28_we0;
output  [63:0] delta_weights3_28_d0;
output  [2:0] delta_weights3_28_address1;
output   delta_weights3_28_ce1;
output   delta_weights3_28_we1;
output  [63:0] delta_weights3_28_d1;
output  [2:0] delta_weights3_29_address0;
output   delta_weights3_29_ce0;
output   delta_weights3_29_we0;
output  [63:0] delta_weights3_29_d0;
output  [2:0] delta_weights3_29_address1;
output   delta_weights3_29_ce1;
output   delta_weights3_29_we1;
output  [63:0] delta_weights3_29_d1;
output  [2:0] delta_weights3_30_address0;
output   delta_weights3_30_ce0;
output   delta_weights3_30_we0;
output  [63:0] delta_weights3_30_d0;
output  [2:0] delta_weights3_30_address1;
output   delta_weights3_30_ce1;
output   delta_weights3_30_we1;
output  [63:0] delta_weights3_30_d1;
output  [2:0] delta_weights3_31_address0;
output   delta_weights3_31_ce0;
output   delta_weights3_31_we0;
output  [63:0] delta_weights3_31_d0;
output  [2:0] delta_weights3_31_address1;
output   delta_weights3_31_ce1;
output   delta_weights3_31_we1;
output  [63:0] delta_weights3_31_d1;
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
output  [63:0] grp_fu_9728_p_din0;
output  [63:0] grp_fu_9728_p_din1;
input  [63:0] grp_fu_9728_p_dout0;
output   grp_fu_9728_p_ce;
output  [63:0] grp_fu_9732_p_din0;
output  [63:0] grp_fu_9732_p_din1;
input  [63:0] grp_fu_9732_p_dout0;
output   grp_fu_9732_p_ce;
output  [63:0] grp_fu_9736_p_din0;
output  [63:0] grp_fu_9736_p_din1;
input  [63:0] grp_fu_9736_p_dout0;
output   grp_fu_9736_p_ce;
output  [63:0] grp_fu_9740_p_din0;
output  [63:0] grp_fu_9740_p_din1;
input  [63:0] grp_fu_9740_p_dout0;
output   grp_fu_9740_p_ce;
output  [63:0] grp_fu_9744_p_din0;
output  [63:0] grp_fu_9744_p_din1;
input  [63:0] grp_fu_9744_p_dout0;
output   grp_fu_9744_p_ce;
output  [63:0] grp_fu_9748_p_din0;
output  [63:0] grp_fu_9748_p_din1;
input  [63:0] grp_fu_9748_p_dout0;
output   grp_fu_9748_p_ce;
output  [63:0] grp_fu_9752_p_din0;
output  [63:0] grp_fu_9752_p_din1;
input  [63:0] grp_fu_9752_p_dout0;
output   grp_fu_9752_p_ce;
output  [63:0] grp_fu_9756_p_din0;
output  [63:0] grp_fu_9756_p_din1;
input  [63:0] grp_fu_9756_p_dout0;
output   grp_fu_9756_p_ce;
output  [63:0] grp_fu_9760_p_din0;
output  [63:0] grp_fu_9760_p_din1;
input  [63:0] grp_fu_9760_p_dout0;
output   grp_fu_9760_p_ce;
output  [63:0] grp_fu_9764_p_din0;
output  [63:0] grp_fu_9764_p_din1;
input  [63:0] grp_fu_9764_p_dout0;
output   grp_fu_9764_p_ce;
output  [63:0] grp_fu_9768_p_din0;
output  [63:0] grp_fu_9768_p_din1;
input  [63:0] grp_fu_9768_p_dout0;
output   grp_fu_9768_p_ce;
output  [63:0] grp_fu_9772_p_din0;
output  [63:0] grp_fu_9772_p_din1;
input  [63:0] grp_fu_9772_p_dout0;
output   grp_fu_9772_p_ce;
output  [63:0] grp_fu_9776_p_din0;
output  [63:0] grp_fu_9776_p_din1;
input  [63:0] grp_fu_9776_p_dout0;
output   grp_fu_9776_p_ce;
output  [63:0] grp_fu_9780_p_din0;
output  [63:0] grp_fu_9780_p_din1;
input  [63:0] grp_fu_9780_p_dout0;
output   grp_fu_9780_p_ce;
output  [63:0] grp_fu_9784_p_din0;
output  [63:0] grp_fu_9784_p_din1;
input  [63:0] grp_fu_9784_p_dout0;
output   grp_fu_9784_p_ce;
output  [63:0] grp_fu_9788_p_din0;
output  [63:0] grp_fu_9788_p_din1;
input  [63:0] grp_fu_9788_p_dout0;
output   grp_fu_9788_p_ce;
output  [63:0] grp_fu_9792_p_din0;
output  [63:0] grp_fu_9792_p_din1;
input  [63:0] grp_fu_9792_p_dout0;
output   grp_fu_9792_p_ce;
output  [63:0] grp_fu_9796_p_din0;
output  [63:0] grp_fu_9796_p_din1;
input  [63:0] grp_fu_9796_p_dout0;
output   grp_fu_9796_p_ce;
output  [63:0] grp_fu_9800_p_din0;
output  [63:0] grp_fu_9800_p_din1;
input  [63:0] grp_fu_9800_p_dout0;
output   grp_fu_9800_p_ce;
output  [63:0] grp_fu_9804_p_din0;
output  [63:0] grp_fu_9804_p_din1;
input  [63:0] grp_fu_9804_p_dout0;
output   grp_fu_9804_p_ce;
output  [63:0] grp_fu_9808_p_din0;
output  [63:0] grp_fu_9808_p_din1;
input  [63:0] grp_fu_9808_p_dout0;
output   grp_fu_9808_p_ce;
output  [63:0] grp_fu_9812_p_din0;
output  [63:0] grp_fu_9812_p_din1;
input  [63:0] grp_fu_9812_p_dout0;
output   grp_fu_9812_p_ce;
output  [63:0] grp_fu_9816_p_din0;
output  [63:0] grp_fu_9816_p_din1;
input  [63:0] grp_fu_9816_p_dout0;
output   grp_fu_9816_p_ce;
output  [63:0] grp_fu_9820_p_din0;
output  [63:0] grp_fu_9820_p_din1;
input  [63:0] grp_fu_9820_p_dout0;
output   grp_fu_9820_p_ce;
output  [63:0] grp_fu_9824_p_din0;
output  [63:0] grp_fu_9824_p_din1;
input  [63:0] grp_fu_9824_p_dout0;
output   grp_fu_9824_p_ce;
output  [63:0] grp_fu_9828_p_din0;
output  [63:0] grp_fu_9828_p_din1;
input  [63:0] grp_fu_9828_p_dout0;
output   grp_fu_9828_p_ce;
output  [63:0] grp_fu_9832_p_din0;
output  [63:0] grp_fu_9832_p_din1;
input  [63:0] grp_fu_9832_p_dout0;
output   grp_fu_9832_p_ce;
output  [63:0] grp_fu_9836_p_din0;
output  [63:0] grp_fu_9836_p_din1;
input  [63:0] grp_fu_9836_p_dout0;
output   grp_fu_9836_p_ce;
output  [63:0] grp_fu_9840_p_din0;
output  [63:0] grp_fu_9840_p_din1;
input  [63:0] grp_fu_9840_p_dout0;
output   grp_fu_9840_p_ce;
output  [63:0] grp_fu_9844_p_din0;
output  [63:0] grp_fu_9844_p_din1;
input  [63:0] grp_fu_9844_p_dout0;
output   grp_fu_9844_p_ce;
output  [63:0] grp_fu_9848_p_din0;
output  [63:0] grp_fu_9848_p_din1;
input  [63:0] grp_fu_9848_p_dout0;
output   grp_fu_9848_p_ce;
output  [63:0] grp_fu_9852_p_din0;
output  [63:0] grp_fu_9852_p_din1;
input  [63:0] grp_fu_9852_p_dout0;
output   grp_fu_9852_p_ce;
output  [63:0] grp_fu_9856_p_din0;
output  [63:0] grp_fu_9856_p_din1;
input  [63:0] grp_fu_9856_p_dout0;
output   grp_fu_9856_p_ce;
output  [63:0] grp_fu_9860_p_din0;
output  [63:0] grp_fu_9860_p_din1;
input  [63:0] grp_fu_9860_p_dout0;
output   grp_fu_9860_p_ce;
output  [63:0] grp_fu_9864_p_din0;
output  [63:0] grp_fu_9864_p_din1;
input  [63:0] grp_fu_9864_p_dout0;
output   grp_fu_9864_p_ce;
output  [63:0] grp_fu_9868_p_din0;
output  [63:0] grp_fu_9868_p_din1;
input  [63:0] grp_fu_9868_p_dout0;
output   grp_fu_9868_p_ce;
output  [63:0] grp_fu_9872_p_din0;
output  [63:0] grp_fu_9872_p_din1;
input  [63:0] grp_fu_9872_p_dout0;
output   grp_fu_9872_p_ce;
output  [63:0] grp_fu_9876_p_din0;
output  [63:0] grp_fu_9876_p_din1;
input  [63:0] grp_fu_9876_p_dout0;
output   grp_fu_9876_p_ce;
output  [63:0] grp_fu_9880_p_din0;
output  [63:0] grp_fu_9880_p_din1;
input  [63:0] grp_fu_9880_p_dout0;
output   grp_fu_9880_p_ce;
output  [63:0] grp_fu_9884_p_din0;
output  [63:0] grp_fu_9884_p_din1;
input  [63:0] grp_fu_9884_p_dout0;
output   grp_fu_9884_p_ce;
output  [63:0] grp_fu_9888_p_din0;
output  [63:0] grp_fu_9888_p_din1;
input  [63:0] grp_fu_9888_p_dout0;
output   grp_fu_9888_p_ce;
output  [63:0] grp_fu_9892_p_din0;
output  [63:0] grp_fu_9892_p_din1;
input  [63:0] grp_fu_9892_p_dout0;
output   grp_fu_9892_p_ce;
output  [63:0] grp_fu_9896_p_din0;
output  [63:0] grp_fu_9896_p_din1;
input  [63:0] grp_fu_9896_p_dout0;
output   grp_fu_9896_p_ce;
output  [63:0] grp_fu_9900_p_din0;
output  [63:0] grp_fu_9900_p_din1;
input  [63:0] grp_fu_9900_p_dout0;
output   grp_fu_9900_p_ce;
output  [63:0] grp_fu_9904_p_din0;
output  [63:0] grp_fu_9904_p_din1;
input  [63:0] grp_fu_9904_p_dout0;
output   grp_fu_9904_p_ce;
output  [63:0] grp_fu_9908_p_din0;
output  [63:0] grp_fu_9908_p_din1;
input  [63:0] grp_fu_9908_p_dout0;
output   grp_fu_9908_p_ce;
output  [63:0] grp_fu_9912_p_din0;
output  [63:0] grp_fu_9912_p_din1;
input  [63:0] grp_fu_9912_p_dout0;
output   grp_fu_9912_p_ce;
output  [63:0] grp_fu_9916_p_din0;
output  [63:0] grp_fu_9916_p_din1;
input  [63:0] grp_fu_9916_p_dout0;
output   grp_fu_9916_p_ce;
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
wire   [0:0] tmp_19_fu_1938_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_11_reg_3188;
reg   [6:0] i_11_reg_3188_pp0_iter1_reg;
reg   [6:0] i_11_reg_3188_pp0_iter2_reg;
reg   [6:0] i_11_reg_3188_pp0_iter3_reg;
reg   [6:0] i_11_reg_3188_pp0_iter4_reg;
reg   [6:0] i_11_reg_3188_pp0_iter5_reg;
reg   [6:0] i_11_reg_3188_pp0_iter6_reg;
reg   [6:0] i_11_reg_3188_pp0_iter7_reg;
reg   [6:0] i_11_reg_3188_pp0_iter8_reg;
wire   [63:0] zext_ln72_fu_1954_p1;
reg   [63:0] zext_ln72_reg_3199;
wire   [0:0] empty_fu_2002_p2;
reg   [0:0] empty_reg_3355;
wire   [63:0] tmp_fu_2008_p3;
reg   [63:0] tmp_reg_3360;
wire   [63:0] tmp_s_fu_2016_p3;
reg   [63:0] tmp_s_reg_3377;
wire   [63:0] tmp_378_fu_2024_p3;
reg   [63:0] tmp_378_reg_3384;
wire   [63:0] tmp_379_fu_2032_p3;
reg   [63:0] tmp_379_reg_3391;
wire   [63:0] tmp_380_fu_2040_p3;
reg   [63:0] tmp_380_reg_3398;
wire   [63:0] tmp_381_fu_2048_p3;
reg   [63:0] tmp_381_reg_3405;
wire   [63:0] tmp_382_fu_2056_p3;
reg   [63:0] tmp_382_reg_3412;
wire   [63:0] tmp_383_fu_2064_p3;
reg   [63:0] tmp_383_reg_3419;
wire   [63:0] tmp_384_fu_2072_p3;
reg   [63:0] tmp_384_reg_3426;
wire   [63:0] tmp_385_fu_2080_p3;
reg   [63:0] tmp_385_reg_3433;
wire   [63:0] tmp_386_fu_2088_p3;
reg   [63:0] tmp_386_reg_3440;
wire   [63:0] tmp_388_fu_2096_p3;
reg   [63:0] tmp_388_reg_3447;
wire   [63:0] tmp_389_fu_2104_p3;
reg   [63:0] tmp_389_reg_3454;
reg   [63:0] tmp_389_reg_3454_pp0_iter2_reg;
wire   [63:0] tmp_390_fu_2112_p3;
reg   [63:0] tmp_390_reg_3461;
reg   [63:0] tmp_390_reg_3461_pp0_iter2_reg;
wire   [63:0] tmp_391_fu_2120_p3;
reg   [63:0] tmp_391_reg_3468;
reg   [63:0] tmp_391_reg_3468_pp0_iter2_reg;
wire   [0:0] icmp_ln75_fu_2128_p2;
reg   [0:0] icmp_ln75_reg_3475;
reg   [0:0] icmp_ln75_reg_3475_pp0_iter2_reg;
reg   [0:0] icmp_ln75_reg_3475_pp0_iter3_reg;
reg   [0:0] icmp_ln75_reg_3475_pp0_iter4_reg;
reg   [0:0] icmp_ln75_reg_3475_pp0_iter5_reg;
reg   [0:0] icmp_ln75_reg_3475_pp0_iter6_reg;
reg   [0:0] icmp_ln75_reg_3475_pp0_iter7_reg;
reg   [0:0] icmp_ln75_reg_3475_pp0_iter8_reg;
reg   [0:0] icmp_ln75_reg_3475_pp0_iter9_reg;
wire   [63:0] tmp_387_fu_2134_p3;
reg   [63:0] tmp_387_reg_3479;
reg   [63:0] mul_reg_3486;
reg   [63:0] mul_s_reg_3492;
reg   [63:0] mul_16_reg_3498;
reg   [63:0] mul_1_reg_3504;
reg   [63:0] mul_1_1_reg_3510;
reg   [63:0] mul_1_2_reg_3516;
reg   [63:0] mul_2_reg_3522;
reg   [63:0] mul_2_1_reg_3528;
reg   [63:0] mul_2_2_reg_3534;
reg   [63:0] mul_3_reg_3540;
reg   [63:0] mul_3_1_reg_3546;
reg   [63:0] mul_3_2_reg_3552;
reg   [63:0] mul_4_reg_3558;
reg   [63:0] mul_4_1_reg_3564;
reg   [63:0] mul_4_2_reg_3570;
reg   [63:0] mul_5_reg_3576;
reg   [63:0] mul_5_1_reg_3582;
reg   [63:0] mul_5_2_reg_3588;
reg   [63:0] mul_6_reg_3594;
reg   [63:0] mul_6_1_reg_3600;
reg   [63:0] mul_6_2_reg_3606;
reg   [63:0] mul_7_reg_3612;
reg   [63:0] mul_7_1_reg_3618;
reg   [63:0] mul_7_2_reg_3624;
reg   [63:0] mul_8_reg_3630;
reg   [63:0] mul_8_1_reg_3636;
reg   [63:0] mul_8_2_reg_3642;
reg   [63:0] mul_9_reg_3648;
reg   [63:0] mul_9_1_reg_3654;
reg   [63:0] mul_9_2_reg_3660;
reg   [63:0] mul_10_reg_3666;
reg   [63:0] mul_10_1_reg_3672;
reg   [63:0] mul_10_2_reg_3678;
reg   [63:0] mul_10_2_reg_3678_pp0_iter9_reg;
reg   [63:0] mul_12_reg_3684;
reg   [63:0] mul_12_reg_3684_pp0_iter9_reg;
reg   [63:0] mul_12_1_reg_3690;
reg   [63:0] mul_12_1_reg_3690_pp0_iter9_reg;
reg   [63:0] mul_12_2_reg_3696;
reg   [63:0] mul_12_2_reg_3696_pp0_iter9_reg;
reg   [63:0] mul_13_1_reg_3702;
reg   [63:0] mul_13_1_reg_3702_pp0_iter9_reg;
reg   [63:0] mul_13_2_reg_3708;
reg   [63:0] mul_13_2_reg_3708_pp0_iter9_reg;
reg   [63:0] mul_14_reg_3714;
reg   [63:0] mul_14_reg_3714_pp0_iter9_reg;
reg   [63:0] mul_14_2_reg_3720;
reg   [63:0] mul_14_2_reg_3720_pp0_iter9_reg;
reg   [63:0] mul_15_reg_3726;
reg   [63:0] mul_15_reg_3726_pp0_iter9_reg;
reg   [63:0] mul_15_1_reg_3732;
reg   [63:0] mul_15_1_reg_3732_pp0_iter9_reg;
wire   [7:0] tmp_31_fu_2415_p3;
reg   [7:0] tmp_31_reg_3738;
reg   [2:0] delta_weights3_16_addr_2_reg_3748;
reg   [2:0] delta_weights3_20_addr_2_reg_3753;
reg   [2:0] delta_weights3_21_addr_2_reg_3758;
reg   [2:0] delta_weights3_22_addr_2_reg_3763;
reg   [2:0] delta_weights3_24_addr_2_reg_3768;
reg   [2:0] delta_weights3_25_addr_2_reg_3773;
reg   [2:0] delta_weights3_26_addr_2_reg_3778;
reg   [2:0] delta_weights3_28_addr_2_reg_3783;
reg   [63:0] mul_11_reg_3788;
reg   [63:0] mul_11_1_reg_3794;
reg   [63:0] mul_11_2_reg_3800;
reg   [63:0] mul_13_reg_3806;
reg   [63:0] mul_14_1_reg_3812;
reg   [2:0] delta_weights3_29_addr_2_reg_3818;
reg   [2:0] delta_weights3_30_addr_2_reg_3823;
reg   [63:0] mul_15_2_reg_3828;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_1_fu_2171_p1;
wire   [63:0] zext_ln75_2_fu_2223_p1;
wire   [63:0] zext_ln75_3_fu_2245_p1;
wire   [63:0] zext_ln75_4_fu_2267_p1;
wire   [63:0] zext_ln75_5_fu_2289_p1;
wire   [63:0] zext_ln75_6_fu_2311_p1;
wire   [63:0] zext_ln75_7_fu_2333_p1;
wire   [63:0] zext_ln75_8_fu_2355_p1;
wire   [63:0] zext_ln75_9_fu_2377_p1;
wire   [63:0] zext_ln75_10_fu_2399_p1;
wire   [63:0] zext_ln75_11_fu_2439_p1;
wire   [63:0] zext_ln75_12_fu_2461_p1;
wire   [63:0] zext_ln75_13_fu_2483_p1;
wire   [63:0] zext_ln75_14_fu_2505_p1;
wire   [63:0] zext_ln75_15_fu_2527_p1;
wire   [63:0] zext_ln75_16_fu_2549_p1;
wire   [63:0] zext_ln75_17_fu_2571_p1;
wire   [63:0] zext_ln75_18_fu_2593_p1;
wire   [63:0] zext_ln75_19_fu_2615_p1;
wire   [63:0] zext_ln75_20_fu_2637_p1;
wire   [63:0] zext_ln75_21_fu_2659_p1;
wire   [63:0] zext_ln75_22_fu_2681_p1;
wire   [63:0] zext_ln75_23_fu_2703_p1;
wire   [63:0] zext_ln75_24_fu_2725_p1;
wire   [63:0] zext_ln75_25_fu_2747_p1;
wire   [63:0] zext_ln75_26_fu_2769_p1;
wire   [63:0] zext_ln75_27_fu_2791_p1;
wire   [63:0] zext_ln75_31_fu_2813_p1;
wire   [63:0] zext_ln75_32_fu_2835_p1;
wire   [63:0] zext_ln75_33_fu_2857_p1;
wire   [63:0] zext_ln75_35_fu_2879_p1;
wire   [63:0] zext_ln75_36_fu_2901_p1;
wire   [63:0] zext_ln75_37_fu_2923_p1;
wire   [63:0] zext_ln75_39_fu_2945_p1;
wire   [63:0] zext_ln75_40_fu_2967_p1;
wire   [63:0] zext_ln75_41_fu_2989_p1;
wire   [63:0] zext_ln75_28_fu_3010_p1;
wire   [63:0] zext_ln75_29_fu_3031_p1;
wire   [63:0] zext_ln75_30_fu_3052_p1;
wire   [63:0] zext_ln75_34_fu_3073_p1;
wire   [63:0] zext_ln75_38_fu_3094_p1;
wire   [63:0] zext_ln75_42_fu_3115_p1;
reg   [6:0] i_fu_254;
wire   [6:0] add_ln73_fu_1988_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_11;
reg    last_activations_0_ce0_local;
reg    last_activations_16_ce0_local;
reg    last_activations_1_ce0_local;
reg    last_activations_17_ce0_local;
reg    last_activations_2_ce0_local;
reg    last_activations_18_ce0_local;
reg    last_activations_3_ce0_local;
reg    last_activations_19_ce0_local;
reg    last_activations_4_ce0_local;
reg    last_activations_20_ce0_local;
reg    last_activations_5_ce0_local;
reg    last_activations_21_ce0_local;
reg    last_activations_6_ce0_local;
reg    last_activations_22_ce0_local;
reg    last_activations_7_ce0_local;
reg    last_activations_23_ce0_local;
reg    last_activations_8_ce0_local;
reg    last_activations_24_ce0_local;
reg    last_activations_9_ce0_local;
reg    last_activations_25_ce0_local;
reg    last_activations_10_ce0_local;
reg    last_activations_26_ce0_local;
reg    last_activations_12_ce0_local;
reg    last_activations_28_ce0_local;
reg    last_activations_13_ce0_local;
reg    last_activations_29_ce0_local;
reg    last_activations_14_ce0_local;
reg    last_activations_30_ce0_local;
reg    last_activations_15_ce0_local;
reg    last_activations_31_ce0_local;
reg    last_activations_11_ce0_local;
reg    last_activations_27_ce0_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [2:0] delta_weights3_0_address0_local;
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg    delta_weights3_1_we1_local;
reg   [63:0] delta_weights3_1_d1_local;
reg    delta_weights3_1_ce1_local;
reg   [2:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg    delta_weights3_2_we1_local;
reg   [63:0] delta_weights3_2_d1_local;
reg    delta_weights3_2_ce1_local;
reg   [2:0] delta_weights3_2_address1_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg    delta_weights3_3_we1_local;
reg   [63:0] delta_weights3_3_d1_local;
reg    delta_weights3_3_ce1_local;
reg   [2:0] delta_weights3_3_address1_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [2:0] delta_weights3_4_address0_local;
reg    delta_weights3_4_we1_local;
reg    delta_weights3_4_ce1_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [2:0] delta_weights3_5_address0_local;
reg    delta_weights3_5_we1_local;
reg    delta_weights3_5_ce1_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [2:0] delta_weights3_6_address0_local;
reg    delta_weights3_6_we1_local;
reg    delta_weights3_6_ce1_local;
reg    delta_weights3_7_we1_local;
reg   [63:0] delta_weights3_7_d1_local;
reg    delta_weights3_7_ce1_local;
reg   [2:0] delta_weights3_7_address1_local;
reg    delta_weights3_7_we0_local;
reg    delta_weights3_7_ce0_local;
reg    delta_weights3_8_we0_local;
reg   [63:0] delta_weights3_8_d0_local;
reg    delta_weights3_8_ce0_local;
reg   [2:0] delta_weights3_8_address0_local;
reg    delta_weights3_8_we1_local;
reg    delta_weights3_8_ce1_local;
reg    delta_weights3_9_we0_local;
reg   [63:0] delta_weights3_9_d0_local;
reg    delta_weights3_9_ce0_local;
reg   [2:0] delta_weights3_9_address0_local;
reg    delta_weights3_9_we1_local;
reg    delta_weights3_9_ce1_local;
reg    delta_weights3_10_we0_local;
reg   [63:0] delta_weights3_10_d0_local;
reg    delta_weights3_10_ce0_local;
reg   [2:0] delta_weights3_10_address0_local;
reg    delta_weights3_10_we1_local;
reg    delta_weights3_10_ce1_local;
reg    delta_weights3_11_we1_local;
reg   [63:0] delta_weights3_11_d1_local;
reg    delta_weights3_11_ce1_local;
reg   [2:0] delta_weights3_11_address1_local;
reg    delta_weights3_11_we0_local;
reg    delta_weights3_11_ce0_local;
reg    delta_weights3_12_we0_local;
reg   [63:0] delta_weights3_12_d0_local;
reg    delta_weights3_12_ce0_local;
reg   [2:0] delta_weights3_12_address0_local;
reg    delta_weights3_12_we1_local;
reg    delta_weights3_12_ce1_local;
reg    delta_weights3_13_we0_local;
reg   [63:0] delta_weights3_13_d0_local;
reg    delta_weights3_13_ce0_local;
reg   [2:0] delta_weights3_13_address0_local;
reg    delta_weights3_13_we1_local;
reg    delta_weights3_13_ce1_local;
reg    delta_weights3_14_we0_local;
reg   [63:0] delta_weights3_14_d0_local;
reg    delta_weights3_14_ce0_local;
reg   [2:0] delta_weights3_14_address0_local;
reg    delta_weights3_14_we1_local;
reg    delta_weights3_14_ce1_local;
reg    delta_weights3_15_we1_local;
reg   [63:0] delta_weights3_15_d1_local;
reg    delta_weights3_15_ce1_local;
reg   [2:0] delta_weights3_15_address1_local;
reg    delta_weights3_15_we0_local;
reg    delta_weights3_15_ce0_local;
reg    delta_weights3_16_we1_local;
reg   [63:0] delta_weights3_16_d1_local;
reg    delta_weights3_16_ce1_local;
reg   [2:0] delta_weights3_16_address1_local;
reg    delta_weights3_16_we0_local;
reg    delta_weights3_16_ce0_local;
reg    delta_weights3_17_we1_local;
reg   [63:0] delta_weights3_17_d1_local;
reg    delta_weights3_17_ce1_local;
reg   [2:0] delta_weights3_17_address1_local;
reg    delta_weights3_17_we0_local;
reg    delta_weights3_17_ce0_local;
reg    delta_weights3_18_we1_local;
reg   [63:0] delta_weights3_18_d1_local;
reg    delta_weights3_18_ce1_local;
reg   [2:0] delta_weights3_18_address1_local;
reg    delta_weights3_18_we0_local;
reg    delta_weights3_18_ce0_local;
reg    delta_weights3_19_we1_local;
reg   [63:0] delta_weights3_19_d1_local;
reg    delta_weights3_19_ce1_local;
reg   [2:0] delta_weights3_19_address1_local;
reg    delta_weights3_19_we0_local;
reg    delta_weights3_19_ce0_local;
reg    delta_weights3_20_we1_local;
reg   [63:0] delta_weights3_20_d1_local;
reg    delta_weights3_20_ce1_local;
reg   [2:0] delta_weights3_20_address1_local;
reg    delta_weights3_20_we0_local;
reg    delta_weights3_20_ce0_local;
reg    delta_weights3_21_we1_local;
reg   [63:0] delta_weights3_21_d1_local;
reg    delta_weights3_21_ce1_local;
reg   [2:0] delta_weights3_21_address1_local;
reg    delta_weights3_21_we0_local;
reg    delta_weights3_21_ce0_local;
reg    delta_weights3_22_we1_local;
reg   [63:0] delta_weights3_22_d1_local;
reg    delta_weights3_22_ce1_local;
reg   [2:0] delta_weights3_22_address1_local;
reg    delta_weights3_22_we0_local;
reg    delta_weights3_22_ce0_local;
reg    delta_weights3_23_we1_local;
reg   [63:0] delta_weights3_23_d1_local;
reg    delta_weights3_23_ce1_local;
reg   [2:0] delta_weights3_23_address1_local;
reg    delta_weights3_23_we0_local;
reg    delta_weights3_23_ce0_local;
reg    delta_weights3_24_we1_local;
reg   [63:0] delta_weights3_24_d1_local;
reg    delta_weights3_24_ce1_local;
reg   [2:0] delta_weights3_24_address1_local;
reg    delta_weights3_24_we0_local;
reg    delta_weights3_24_ce0_local;
reg    delta_weights3_25_we1_local;
reg   [63:0] delta_weights3_25_d1_local;
reg    delta_weights3_25_ce1_local;
reg   [2:0] delta_weights3_25_address1_local;
reg    delta_weights3_25_we0_local;
reg    delta_weights3_25_ce0_local;
reg    delta_weights3_26_we1_local;
reg   [63:0] delta_weights3_26_d1_local;
reg    delta_weights3_26_ce1_local;
reg   [2:0] delta_weights3_26_address1_local;
reg    delta_weights3_26_we0_local;
reg    delta_weights3_26_ce0_local;
reg    delta_weights3_27_we1_local;
reg   [63:0] delta_weights3_27_d1_local;
reg    delta_weights3_27_ce1_local;
reg   [2:0] delta_weights3_27_address1_local;
reg    delta_weights3_27_we0_local;
reg    delta_weights3_27_ce0_local;
reg    delta_weights3_28_we1_local;
reg   [63:0] delta_weights3_28_d1_local;
reg    delta_weights3_28_ce1_local;
reg   [2:0] delta_weights3_28_address1_local;
reg    delta_weights3_28_we0_local;
reg    delta_weights3_28_ce0_local;
reg    delta_weights3_29_we1_local;
reg   [63:0] delta_weights3_29_d1_local;
reg    delta_weights3_29_ce1_local;
reg   [2:0] delta_weights3_29_address1_local;
reg    delta_weights3_29_we0_local;
reg    delta_weights3_29_ce0_local;
reg    delta_weights3_30_we1_local;
reg   [63:0] delta_weights3_30_d1_local;
reg    delta_weights3_30_ce1_local;
reg   [2:0] delta_weights3_30_address1_local;
reg    delta_weights3_30_we0_local;
reg    delta_weights3_30_ce0_local;
reg    delta_weights3_31_we1_local;
reg   [63:0] delta_weights3_31_d1_local;
reg    delta_weights3_31_ce1_local;
reg   [2:0] delta_weights3_31_address1_local;
reg    delta_weights3_31_we0_local;
reg    delta_weights3_31_ce0_local;
wire   [0:0] tmp_20_fu_1946_p3;
wire   [4:0] trunc_ln73_fu_1999_p1;
wire   [5:0] trunc_ln75_fu_2144_p1;
wire   [7:0] p_shl_fu_2147_p3;
wire   [7:0] zext_ln75_fu_2141_p1;
wire   [7:0] sub_ln75_fu_2155_p2;
wire   [2:0] lshr_ln6_fu_2161_p4;
wire   [5:0] tmp_28_fu_2189_p4;
wire   [7:0] tmp_29_fu_2199_p3;
wire   [7:0] add_ln75_fu_2207_p2;
wire   [2:0] lshr_ln75_1_fu_2213_p4;
wire   [7:0] add_ln75_1_fu_2229_p2;
wire   [2:0] lshr_ln75_2_fu_2235_p4;
wire   [7:0] empty_476_fu_2251_p2;
wire   [2:0] lshr_ln75_3_fu_2257_p4;
wire   [7:0] add_ln75_2_fu_2273_p2;
wire   [2:0] lshr_ln75_4_fu_2279_p4;
wire   [7:0] empty_477_fu_2295_p2;
wire   [2:0] lshr_ln75_5_fu_2301_p4;
wire   [7:0] add_ln75_3_fu_2317_p2;
wire   [2:0] lshr_ln75_6_fu_2323_p4;
wire   [7:0] empty_478_fu_2339_p2;
wire   [2:0] lshr_ln75_7_fu_2345_p4;
wire   [7:0] add_ln75_4_fu_2361_p2;
wire   [2:0] lshr_ln75_8_fu_2367_p4;
wire   [7:0] add_ln75_5_fu_2383_p2;
wire   [2:0] lshr_ln75_9_fu_2389_p4;
wire   [3:0] tmp_30_fu_2405_p4;
wire   [7:0] add_ln75_6_fu_2423_p2;
wire   [2:0] lshr_ln75_s_fu_2429_p4;
wire   [7:0] add_ln75_7_fu_2445_p2;
wire   [2:0] lshr_ln75_10_fu_2451_p4;
wire   [7:0] empty_479_fu_2467_p2;
wire   [2:0] lshr_ln75_11_fu_2473_p4;
wire   [7:0] add_ln75_8_fu_2489_p2;
wire   [2:0] lshr_ln75_12_fu_2495_p4;
wire   [7:0] add_ln75_9_fu_2511_p2;
wire   [2:0] lshr_ln75_13_fu_2517_p4;
wire   [7:0] empty_480_fu_2533_p2;
wire   [2:0] lshr_ln75_14_fu_2539_p4;
wire   [7:0] add_ln75_10_fu_2555_p2;
wire   [2:0] lshr_ln75_15_fu_2561_p4;
wire   [7:0] add_ln75_11_fu_2577_p2;
wire   [2:0] lshr_ln75_16_fu_2583_p4;
wire   [7:0] empty_481_fu_2599_p2;
wire   [2:0] lshr_ln75_17_fu_2605_p4;
wire   [7:0] add_ln75_12_fu_2621_p2;
wire   [2:0] lshr_ln75_18_fu_2627_p4;
wire   [7:0] add_ln75_13_fu_2643_p2;
wire   [2:0] lshr_ln75_19_fu_2649_p4;
wire   [7:0] empty_482_fu_2665_p2;
wire   [2:0] lshr_ln75_20_fu_2671_p4;
wire   [7:0] add_ln75_14_fu_2687_p2;
wire   [2:0] lshr_ln75_21_fu_2693_p4;
wire   [7:0] add_ln75_15_fu_2709_p2;
wire   [2:0] lshr_ln75_22_fu_2715_p4;
wire   [7:0] empty_483_fu_2731_p2;
wire   [2:0] lshr_ln75_23_fu_2737_p4;
wire   [7:0] add_ln75_16_fu_2753_p2;
wire   [2:0] lshr_ln75_24_fu_2759_p4;
wire   [7:0] add_ln75_17_fu_2775_p2;
wire   [2:0] lshr_ln75_25_fu_2781_p4;
wire   [7:0] empty_485_fu_2797_p2;
wire   [2:0] lshr_ln75_29_fu_2803_p4;
wire   [7:0] add_ln75_20_fu_2819_p2;
wire   [2:0] lshr_ln75_30_fu_2825_p4;
wire   [7:0] add_ln75_21_fu_2841_p2;
wire   [2:0] lshr_ln75_31_fu_2847_p4;
wire   [7:0] add_ln75_22_fu_2863_p2;
wire   [2:0] lshr_ln75_33_fu_2869_p4;
wire   [7:0] add_ln75_23_fu_2885_p2;
wire   [2:0] lshr_ln75_34_fu_2891_p4;
wire   [7:0] empty_487_fu_2907_p2;
wire   [2:0] lshr_ln75_35_fu_2913_p4;
wire   [7:0] add_ln75_25_fu_2929_p2;
wire   [2:0] lshr_ln75_37_fu_2935_p4;
wire   [7:0] empty_488_fu_2951_p2;
wire   [2:0] lshr_ln75_38_fu_2957_p4;
wire   [7:0] add_ln75_26_fu_2973_p2;
wire   [2:0] lshr_ln75_39_fu_2979_p4;
wire   [7:0] empty_484_fu_2995_p2;
wire   [2:0] lshr_ln75_26_fu_3000_p4;
wire   [7:0] add_ln75_18_fu_3016_p2;
wire   [2:0] lshr_ln75_27_fu_3021_p4;
wire   [7:0] add_ln75_19_fu_3037_p2;
wire   [2:0] lshr_ln75_28_fu_3042_p4;
wire   [7:0] empty_486_fu_3058_p2;
wire   [2:0] lshr_ln75_32_fu_3063_p4;
wire   [7:0] add_ln75_24_fu_3079_p2;
wire   [2:0] lshr_ln75_36_fu_3084_p4;
wire   [7:0] add_ln75_27_fu_3100_p2;
wire   [2:0] lshr_ln75_40_fu_3105_p4;
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
#0 i_fu_254 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        if (((tmp_19_fu_1938_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_254 <= add_ln73_fu_1988_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_254 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_3355 <= empty_fu_2002_p2;
        i_11_reg_3188 <= ap_sig_allocacmp_i_11;
        i_11_reg_3188_pp0_iter1_reg <= i_11_reg_3188;
        icmp_ln75_reg_3475 <= icmp_ln75_fu_2128_p2;
        tmp_378_reg_3384 <= tmp_378_fu_2024_p3;
        tmp_379_reg_3391 <= tmp_379_fu_2032_p3;
        tmp_380_reg_3398 <= tmp_380_fu_2040_p3;
        tmp_381_reg_3405 <= tmp_381_fu_2048_p3;
        tmp_382_reg_3412 <= tmp_382_fu_2056_p3;
        tmp_383_reg_3419 <= tmp_383_fu_2064_p3;
        tmp_384_reg_3426 <= tmp_384_fu_2072_p3;
        tmp_385_reg_3433 <= tmp_385_fu_2080_p3;
        tmp_386_reg_3440 <= tmp_386_fu_2088_p3;
        tmp_388_reg_3447 <= tmp_388_fu_2096_p3;
        tmp_389_reg_3454 <= tmp_389_fu_2104_p3;
        tmp_390_reg_3461 <= tmp_390_fu_2112_p3;
        tmp_391_reg_3468 <= tmp_391_fu_2120_p3;
        tmp_reg_3360 <= tmp_fu_2008_p3;
        tmp_s_reg_3377 <= tmp_s_fu_2016_p3;
        zext_ln72_reg_3199[0] <= zext_ln72_fu_1954_p1[0];
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
        delta_weights3_16_addr_2_reg_3748 <= zext_ln75_27_fu_2791_p1;
        delta_weights3_20_addr_2_reg_3753 <= zext_ln75_31_fu_2813_p1;
        delta_weights3_21_addr_2_reg_3758 <= zext_ln75_32_fu_2835_p1;
        delta_weights3_22_addr_2_reg_3763 <= zext_ln75_33_fu_2857_p1;
        delta_weights3_24_addr_2_reg_3768 <= zext_ln75_35_fu_2879_p1;
        delta_weights3_25_addr_2_reg_3773 <= zext_ln75_36_fu_2901_p1;
        delta_weights3_26_addr_2_reg_3778 <= zext_ln75_37_fu_2923_p1;
        delta_weights3_28_addr_2_reg_3783 <= zext_ln75_39_fu_2945_p1;
        delta_weights3_29_addr_2_reg_3818 <= zext_ln75_40_fu_2967_p1;
        delta_weights3_30_addr_2_reg_3823 <= zext_ln75_41_fu_2989_p1;
        i_11_reg_3188_pp0_iter2_reg <= i_11_reg_3188_pp0_iter1_reg;
        i_11_reg_3188_pp0_iter3_reg <= i_11_reg_3188_pp0_iter2_reg;
        i_11_reg_3188_pp0_iter4_reg <= i_11_reg_3188_pp0_iter3_reg;
        i_11_reg_3188_pp0_iter5_reg <= i_11_reg_3188_pp0_iter4_reg;
        i_11_reg_3188_pp0_iter6_reg <= i_11_reg_3188_pp0_iter5_reg;
        i_11_reg_3188_pp0_iter7_reg <= i_11_reg_3188_pp0_iter6_reg;
        i_11_reg_3188_pp0_iter8_reg <= i_11_reg_3188_pp0_iter7_reg;
        icmp_ln75_reg_3475_pp0_iter2_reg <= icmp_ln75_reg_3475;
        icmp_ln75_reg_3475_pp0_iter3_reg <= icmp_ln75_reg_3475_pp0_iter2_reg;
        icmp_ln75_reg_3475_pp0_iter4_reg <= icmp_ln75_reg_3475_pp0_iter3_reg;
        icmp_ln75_reg_3475_pp0_iter5_reg <= icmp_ln75_reg_3475_pp0_iter4_reg;
        icmp_ln75_reg_3475_pp0_iter6_reg <= icmp_ln75_reg_3475_pp0_iter5_reg;
        icmp_ln75_reg_3475_pp0_iter7_reg <= icmp_ln75_reg_3475_pp0_iter6_reg;
        icmp_ln75_reg_3475_pp0_iter8_reg <= icmp_ln75_reg_3475_pp0_iter7_reg;
        icmp_ln75_reg_3475_pp0_iter9_reg <= icmp_ln75_reg_3475_pp0_iter8_reg;
        mul_10_1_reg_3672 <= grp_fu_9852_p_dout0;
        mul_10_2_reg_3678 <= grp_fu_9856_p_dout0;
        mul_10_2_reg_3678_pp0_iter9_reg <= mul_10_2_reg_3678;
        mul_10_reg_3666 <= grp_fu_9848_p_dout0;
        mul_11_1_reg_3794 <= grp_fu_9900_p_dout0;
        mul_11_2_reg_3800 <= grp_fu_9904_p_dout0;
        mul_11_reg_3788 <= grp_fu_9896_p_dout0;
        mul_12_1_reg_3690 <= grp_fu_9864_p_dout0;
        mul_12_1_reg_3690_pp0_iter9_reg <= mul_12_1_reg_3690;
        mul_12_2_reg_3696 <= grp_fu_9868_p_dout0;
        mul_12_2_reg_3696_pp0_iter9_reg <= mul_12_2_reg_3696;
        mul_12_reg_3684 <= grp_fu_9860_p_dout0;
        mul_12_reg_3684_pp0_iter9_reg <= mul_12_reg_3684;
        mul_13_1_reg_3702 <= grp_fu_9872_p_dout0;
        mul_13_1_reg_3702_pp0_iter9_reg <= mul_13_1_reg_3702;
        mul_13_2_reg_3708 <= grp_fu_9876_p_dout0;
        mul_13_2_reg_3708_pp0_iter9_reg <= mul_13_2_reg_3708;
        mul_13_reg_3806 <= grp_fu_9908_p_dout0;
        mul_14_1_reg_3812 <= grp_fu_9912_p_dout0;
        mul_14_2_reg_3720 <= grp_fu_9884_p_dout0;
        mul_14_2_reg_3720_pp0_iter9_reg <= mul_14_2_reg_3720;
        mul_14_reg_3714 <= grp_fu_9880_p_dout0;
        mul_14_reg_3714_pp0_iter9_reg <= mul_14_reg_3714;
        mul_15_1_reg_3732 <= grp_fu_9892_p_dout0;
        mul_15_1_reg_3732_pp0_iter9_reg <= mul_15_1_reg_3732;
        mul_15_2_reg_3828 <= grp_fu_9916_p_dout0;
        mul_15_reg_3726 <= grp_fu_9888_p_dout0;
        mul_15_reg_3726_pp0_iter9_reg <= mul_15_reg_3726;
        mul_16_reg_3498 <= grp_fu_9736_p_dout0;
        mul_1_1_reg_3510 <= grp_fu_9744_p_dout0;
        mul_1_2_reg_3516 <= grp_fu_9748_p_dout0;
        mul_1_reg_3504 <= grp_fu_9740_p_dout0;
        mul_2_1_reg_3528 <= grp_fu_9756_p_dout0;
        mul_2_2_reg_3534 <= grp_fu_9760_p_dout0;
        mul_2_reg_3522 <= grp_fu_9752_p_dout0;
        mul_3_1_reg_3546 <= grp_fu_9768_p_dout0;
        mul_3_2_reg_3552 <= grp_fu_9772_p_dout0;
        mul_3_reg_3540 <= grp_fu_9764_p_dout0;
        mul_4_1_reg_3564 <= grp_fu_9780_p_dout0;
        mul_4_2_reg_3570 <= grp_fu_9784_p_dout0;
        mul_4_reg_3558 <= grp_fu_9776_p_dout0;
        mul_5_1_reg_3582 <= grp_fu_9792_p_dout0;
        mul_5_2_reg_3588 <= grp_fu_9796_p_dout0;
        mul_5_reg_3576 <= grp_fu_9788_p_dout0;
        mul_6_1_reg_3600 <= grp_fu_9804_p_dout0;
        mul_6_2_reg_3606 <= grp_fu_9808_p_dout0;
        mul_6_reg_3594 <= grp_fu_9800_p_dout0;
        mul_7_1_reg_3618 <= grp_fu_9816_p_dout0;
        mul_7_2_reg_3624 <= grp_fu_9820_p_dout0;
        mul_7_reg_3612 <= grp_fu_9812_p_dout0;
        mul_8_1_reg_3636 <= grp_fu_9828_p_dout0;
        mul_8_2_reg_3642 <= grp_fu_9832_p_dout0;
        mul_8_reg_3630 <= grp_fu_9824_p_dout0;
        mul_9_1_reg_3654 <= grp_fu_9840_p_dout0;
        mul_9_2_reg_3660 <= grp_fu_9844_p_dout0;
        mul_9_reg_3648 <= grp_fu_9836_p_dout0;
        mul_reg_3486 <= grp_fu_9728_p_dout0;
        mul_s_reg_3492 <= grp_fu_9732_p_dout0;
        tmp_31_reg_3738[7 : 4] <= tmp_31_fu_2415_p3[7 : 4];
        tmp_387_reg_3479 <= tmp_387_fu_2134_p3;
        tmp_389_reg_3454_pp0_iter2_reg <= tmp_389_reg_3454;
        tmp_390_reg_3461_pp0_iter2_reg <= tmp_390_reg_3461;
        tmp_391_reg_3468_pp0_iter2_reg <= tmp_391_reg_3468;
    end
end
always @ (*) begin
    if (((tmp_19_fu_1938_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_11 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_11 = i_fu_254;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_0_address0_local = zext_ln75_27_fu_2791_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_0_address0_local = zext_ln75_11_fu_2439_p1;
        end else begin
            delta_weights3_0_address0_local = 'bx;
        end
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_0_d0_local = mul_10_2_reg_3678;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_0_d0_local = mul_5_1_reg_3582;
        end else begin
            delta_weights3_0_d0_local = 'bx;
        end
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_10_address0_local = zext_ln75_37_fu_2923_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_10_address0_local = zext_ln75_21_fu_2659_p1;
        end else begin
            delta_weights3_10_address0_local = 'bx;
        end
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_10_ce1_local = 1'b1;
    end else begin
        delta_weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_10_d0_local = mul_14_reg_3714;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_10_d0_local = mul_8_2_reg_3642;
        end else begin
            delta_weights3_10_d0_local = 'bx;
        end
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_10_we1_local = 1'b1;
    end else begin
        delta_weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_11_address1_local = zext_ln75_1_fu_2171_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_11_address1_local = zext_ln75_22_fu_2681_p1;
        end else begin
            delta_weights3_11_address1_local = 'bx;
        end
    end else begin
        delta_weights3_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_11_ce1_local = 1'b1;
    end else begin
        delta_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_11_d1_local = mul_3_2_reg_3552;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_11_d1_local = mul_9_reg_3648;
        end else begin
            delta_weights3_11_d1_local = 'bx;
        end
    end else begin
        delta_weights3_11_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_11_we1_local = 1'b1;
    end else begin
        delta_weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_12_address0_local = zext_ln75_39_fu_2945_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_12_address0_local = zext_ln75_23_fu_2703_p1;
        end else begin
            delta_weights3_12_address0_local = 'bx;
        end
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_12_ce1_local = 1'b1;
    end else begin
        delta_weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_12_d0_local = mul_14_2_reg_3720;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_12_d0_local = mul_9_1_reg_3654;
        end else begin
            delta_weights3_12_d0_local = 'bx;
        end
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_12_we1_local = 1'b1;
    end else begin
        delta_weights3_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_13_address0_local = zext_ln75_40_fu_2967_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_13_address0_local = zext_ln75_24_fu_2725_p1;
        end else begin
            delta_weights3_13_address0_local = 'bx;
        end
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_13_ce1_local = 1'b1;
    end else begin
        delta_weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_13_d0_local = mul_15_reg_3726;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_13_d0_local = mul_9_2_reg_3660;
        end else begin
            delta_weights3_13_d0_local = 'bx;
        end
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_13_we1_local = 1'b1;
    end else begin
        delta_weights3_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_14_address0_local = zext_ln75_41_fu_2989_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_14_address0_local = zext_ln75_25_fu_2747_p1;
        end else begin
            delta_weights3_14_address0_local = 'bx;
        end
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_14_ce1_local = 1'b1;
    end else begin
        delta_weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_14_d0_local = mul_15_1_reg_3732;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_14_d0_local = mul_10_reg_3666;
        end else begin
            delta_weights3_14_d0_local = 'bx;
        end
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_14_we1_local = 1'b1;
    end else begin
        delta_weights3_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_15_address1_local = zext_ln75_1_fu_2171_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_15_address1_local = zext_ln75_26_fu_2769_p1;
        end else begin
            delta_weights3_15_address1_local = 'bx;
        end
    end else begin
        delta_weights3_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_15_ce1_local = 1'b1;
    end else begin
        delta_weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_15_d1_local = mul_5_reg_3576;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_15_d1_local = mul_10_1_reg_3672;
        end else begin
            delta_weights3_15_d1_local = 'bx;
        end
    end else begin
        delta_weights3_15_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_15_we1_local = 1'b1;
    end else begin
        delta_weights3_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_16_address1_local = zext_ln75_11_fu_2439_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_16_address1_local = zext_ln75_1_fu_2171_p1;
        end else begin
            delta_weights3_16_address1_local = 'bx;
        end
    end else begin
        delta_weights3_16_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_16_ce0_local = 1'b1;
    end else begin
        delta_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_16_ce1_local = 1'b1;
    end else begin
        delta_weights3_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_16_d1_local = mul_5_1_reg_3582;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_16_d1_local = mul_reg_3486;
        end else begin
            delta_weights3_16_d1_local = 'bx;
        end
    end else begin
        delta_weights3_16_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_16_we1_local = 1'b1;
    end else begin
        delta_weights3_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_17_address1_local = zext_ln75_12_fu_2461_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_17_address1_local = zext_ln75_1_fu_2171_p1;
        end else begin
            delta_weights3_17_address1_local = 'bx;
        end
    end else begin
        delta_weights3_17_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_17_ce0_local = 1'b1;
    end else begin
        delta_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_17_ce1_local = 1'b1;
    end else begin
        delta_weights3_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_17_d1_local = mul_5_2_reg_3588;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_17_d1_local = mul_s_reg_3492;
        end else begin
            delta_weights3_17_d1_local = 'bx;
        end
    end else begin
        delta_weights3_17_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_17_we1_local = 1'b1;
    end else begin
        delta_weights3_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_18_address1_local = zext_ln75_13_fu_2483_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_18_address1_local = zext_ln75_1_fu_2171_p1;
        end else begin
            delta_weights3_18_address1_local = 'bx;
        end
    end else begin
        delta_weights3_18_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_18_ce0_local = 1'b1;
    end else begin
        delta_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_18_ce1_local = 1'b1;
    end else begin
        delta_weights3_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_18_d1_local = mul_6_reg_3594;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_18_d1_local = mul_16_reg_3498;
        end else begin
            delta_weights3_18_d1_local = 'bx;
        end
    end else begin
        delta_weights3_18_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_18_we1_local = 1'b1;
    end else begin
        delta_weights3_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_19_address1_local = zext_ln75_14_fu_2505_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_19_address1_local = zext_ln75_1_fu_2171_p1;
        end else begin
            delta_weights3_19_address1_local = 'bx;
        end
    end else begin
        delta_weights3_19_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_19_ce0_local = 1'b1;
    end else begin
        delta_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_19_ce1_local = 1'b1;
    end else begin
        delta_weights3_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_19_d1_local = mul_6_1_reg_3600;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_19_d1_local = mul_1_reg_3504;
        end else begin
            delta_weights3_19_d1_local = 'bx;
        end
    end else begin
        delta_weights3_19_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_19_we1_local = 1'b1;
    end else begin
        delta_weights3_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_1_address1_local = zext_ln75_1_fu_2171_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_1_address1_local = zext_ln75_12_fu_2461_p1;
        end else begin
            delta_weights3_1_address1_local = 'bx;
        end
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_1_d1_local = mul_s_reg_3492;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_1_d1_local = mul_5_2_reg_3588;
        end else begin
            delta_weights3_1_d1_local = 'bx;
        end
    end else begin
        delta_weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_20_address1_local = zext_ln75_15_fu_2527_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_20_address1_local = zext_ln75_2_fu_2223_p1;
        end else begin
            delta_weights3_20_address1_local = 'bx;
        end
    end else begin
        delta_weights3_20_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_20_ce0_local = 1'b1;
    end else begin
        delta_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_20_ce1_local = 1'b1;
    end else begin
        delta_weights3_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_20_d1_local = mul_6_2_reg_3606;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_20_d1_local = mul_1_1_reg_3510;
        end else begin
            delta_weights3_20_d1_local = 'bx;
        end
    end else begin
        delta_weights3_20_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_20_we1_local = 1'b1;
    end else begin
        delta_weights3_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_21_address1_local = zext_ln75_16_fu_2549_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_21_address1_local = zext_ln75_3_fu_2245_p1;
        end else begin
            delta_weights3_21_address1_local = 'bx;
        end
    end else begin
        delta_weights3_21_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_21_ce0_local = 1'b1;
    end else begin
        delta_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_21_ce1_local = 1'b1;
    end else begin
        delta_weights3_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_21_d1_local = mul_7_reg_3612;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_21_d1_local = mul_1_2_reg_3516;
        end else begin
            delta_weights3_21_d1_local = 'bx;
        end
    end else begin
        delta_weights3_21_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_21_we1_local = 1'b1;
    end else begin
        delta_weights3_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_22_address1_local = zext_ln75_17_fu_2571_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_22_address1_local = zext_ln75_4_fu_2267_p1;
        end else begin
            delta_weights3_22_address1_local = 'bx;
        end
    end else begin
        delta_weights3_22_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_22_ce0_local = 1'b1;
    end else begin
        delta_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_22_ce1_local = 1'b1;
    end else begin
        delta_weights3_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_22_d1_local = mul_7_1_reg_3618;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_22_d1_local = mul_2_reg_3522;
        end else begin
            delta_weights3_22_d1_local = 'bx;
        end
    end else begin
        delta_weights3_22_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_22_we1_local = 1'b1;
    end else begin
        delta_weights3_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_23_address1_local = zext_ln75_18_fu_2593_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_23_address1_local = zext_ln75_1_fu_2171_p1;
        end else begin
            delta_weights3_23_address1_local = 'bx;
        end
    end else begin
        delta_weights3_23_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_23_ce0_local = 1'b1;
    end else begin
        delta_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_23_ce1_local = 1'b1;
    end else begin
        delta_weights3_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_23_d1_local = mul_7_2_reg_3624;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_23_d1_local = mul_2_1_reg_3528;
        end else begin
            delta_weights3_23_d1_local = 'bx;
        end
    end else begin
        delta_weights3_23_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_23_we1_local = 1'b1;
    end else begin
        delta_weights3_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_24_address1_local = zext_ln75_19_fu_2615_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_24_address1_local = zext_ln75_5_fu_2289_p1;
        end else begin
            delta_weights3_24_address1_local = 'bx;
        end
    end else begin
        delta_weights3_24_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_24_ce0_local = 1'b1;
    end else begin
        delta_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_24_ce1_local = 1'b1;
    end else begin
        delta_weights3_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_24_d1_local = mul_8_reg_3630;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_24_d1_local = mul_2_2_reg_3534;
        end else begin
            delta_weights3_24_d1_local = 'bx;
        end
    end else begin
        delta_weights3_24_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_24_we0_local = 1'b1;
    end else begin
        delta_weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_24_we1_local = 1'b1;
    end else begin
        delta_weights3_24_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_25_address1_local = zext_ln75_20_fu_2637_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_25_address1_local = zext_ln75_6_fu_2311_p1;
        end else begin
            delta_weights3_25_address1_local = 'bx;
        end
    end else begin
        delta_weights3_25_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_25_ce0_local = 1'b1;
    end else begin
        delta_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_25_ce1_local = 1'b1;
    end else begin
        delta_weights3_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_25_d1_local = mul_8_1_reg_3636;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_25_d1_local = mul_3_reg_3540;
        end else begin
            delta_weights3_25_d1_local = 'bx;
        end
    end else begin
        delta_weights3_25_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_25_we0_local = 1'b1;
    end else begin
        delta_weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_25_we1_local = 1'b1;
    end else begin
        delta_weights3_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_26_address1_local = zext_ln75_21_fu_2659_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_26_address1_local = zext_ln75_7_fu_2333_p1;
        end else begin
            delta_weights3_26_address1_local = 'bx;
        end
    end else begin
        delta_weights3_26_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_26_ce0_local = 1'b1;
    end else begin
        delta_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_26_ce1_local = 1'b1;
    end else begin
        delta_weights3_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_26_d1_local = mul_8_2_reg_3642;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_26_d1_local = mul_3_1_reg_3546;
        end else begin
            delta_weights3_26_d1_local = 'bx;
        end
    end else begin
        delta_weights3_26_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_26_we0_local = 1'b1;
    end else begin
        delta_weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_26_we1_local = 1'b1;
    end else begin
        delta_weights3_26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_27_address1_local = zext_ln75_22_fu_2681_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_27_address1_local = zext_ln75_1_fu_2171_p1;
        end else begin
            delta_weights3_27_address1_local = 'bx;
        end
    end else begin
        delta_weights3_27_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_27_ce0_local = 1'b1;
    end else begin
        delta_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_27_ce1_local = 1'b1;
    end else begin
        delta_weights3_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_27_d1_local = mul_9_reg_3648;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_27_d1_local = mul_3_2_reg_3552;
        end else begin
            delta_weights3_27_d1_local = 'bx;
        end
    end else begin
        delta_weights3_27_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_27_we0_local = 1'b1;
    end else begin
        delta_weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_27_we1_local = 1'b1;
    end else begin
        delta_weights3_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_28_address1_local = zext_ln75_23_fu_2703_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_28_address1_local = zext_ln75_8_fu_2355_p1;
        end else begin
            delta_weights3_28_address1_local = 'bx;
        end
    end else begin
        delta_weights3_28_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_28_ce0_local = 1'b1;
    end else begin
        delta_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_28_ce1_local = 1'b1;
    end else begin
        delta_weights3_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_28_d1_local = mul_9_1_reg_3654;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_28_d1_local = mul_4_reg_3558;
        end else begin
            delta_weights3_28_d1_local = 'bx;
        end
    end else begin
        delta_weights3_28_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_28_we0_local = 1'b1;
    end else begin
        delta_weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_28_we1_local = 1'b1;
    end else begin
        delta_weights3_28_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_29_address1_local = zext_ln75_24_fu_2725_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_29_address1_local = zext_ln75_9_fu_2377_p1;
        end else begin
            delta_weights3_29_address1_local = 'bx;
        end
    end else begin
        delta_weights3_29_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_29_ce0_local = 1'b1;
    end else begin
        delta_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_29_ce1_local = 1'b1;
    end else begin
        delta_weights3_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_29_d1_local = mul_9_2_reg_3660;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_29_d1_local = mul_4_1_reg_3564;
        end else begin
            delta_weights3_29_d1_local = 'bx;
        end
    end else begin
        delta_weights3_29_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_29_we0_local = 1'b1;
    end else begin
        delta_weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_29_we1_local = 1'b1;
    end else begin
        delta_weights3_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_2_address1_local = zext_ln75_1_fu_2171_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_2_address1_local = zext_ln75_13_fu_2483_p1;
        end else begin
            delta_weights3_2_address1_local = 'bx;
        end
    end else begin
        delta_weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_2_d1_local = mul_16_reg_3498;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_2_d1_local = mul_6_reg_3594;
        end else begin
            delta_weights3_2_d1_local = 'bx;
        end
    end else begin
        delta_weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_30_address1_local = zext_ln75_25_fu_2747_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_30_address1_local = zext_ln75_10_fu_2399_p1;
        end else begin
            delta_weights3_30_address1_local = 'bx;
        end
    end else begin
        delta_weights3_30_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_30_ce0_local = 1'b1;
    end else begin
        delta_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_30_ce1_local = 1'b1;
    end else begin
        delta_weights3_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_30_d1_local = mul_10_reg_3666;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_30_d1_local = mul_4_2_reg_3570;
        end else begin
            delta_weights3_30_d1_local = 'bx;
        end
    end else begin
        delta_weights3_30_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_30_we0_local = 1'b1;
    end else begin
        delta_weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_30_we1_local = 1'b1;
    end else begin
        delta_weights3_30_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_31_address1_local = zext_ln75_26_fu_2769_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_31_address1_local = zext_ln75_1_fu_2171_p1;
        end else begin
            delta_weights3_31_address1_local = 'bx;
        end
    end else begin
        delta_weights3_31_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_31_ce0_local = 1'b1;
    end else begin
        delta_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_31_ce1_local = 1'b1;
    end else begin
        delta_weights3_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_31_d1_local = mul_10_1_reg_3672;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_31_d1_local = mul_5_reg_3576;
        end else begin
            delta_weights3_31_d1_local = 'bx;
        end
    end else begin
        delta_weights3_31_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_31_we0_local = 1'b1;
    end else begin
        delta_weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_31_we1_local = 1'b1;
    end else begin
        delta_weights3_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_3_address1_local = zext_ln75_1_fu_2171_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_3_address1_local = zext_ln75_14_fu_2505_p1;
        end else begin
            delta_weights3_3_address1_local = 'bx;
        end
    end else begin
        delta_weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_3_d1_local = mul_1_reg_3504;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_3_d1_local = mul_6_1_reg_3600;
        end else begin
            delta_weights3_3_d1_local = 'bx;
        end
    end else begin
        delta_weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_4_address0_local = zext_ln75_31_fu_2813_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_4_address0_local = zext_ln75_15_fu_2527_p1;
        end else begin
            delta_weights3_4_address0_local = 'bx;
        end
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_4_d0_local = mul_12_reg_3684;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_4_d0_local = mul_6_2_reg_3606;
        end else begin
            delta_weights3_4_d0_local = 'bx;
        end
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_5_address0_local = zext_ln75_32_fu_2835_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_5_address0_local = zext_ln75_16_fu_2549_p1;
        end else begin
            delta_weights3_5_address0_local = 'bx;
        end
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_5_d0_local = mul_12_1_reg_3690;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_5_d0_local = mul_7_reg_3612;
        end else begin
            delta_weights3_5_d0_local = 'bx;
        end
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_6_address0_local = zext_ln75_33_fu_2857_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_6_address0_local = zext_ln75_17_fu_2571_p1;
        end else begin
            delta_weights3_6_address0_local = 'bx;
        end
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_6_ce1_local = 1'b1;
    end else begin
        delta_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_6_d0_local = mul_12_2_reg_3696;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_6_d0_local = mul_7_1_reg_3618;
        end else begin
            delta_weights3_6_d0_local = 'bx;
        end
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_7_address1_local = zext_ln75_1_fu_2171_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_7_address1_local = zext_ln75_18_fu_2593_p1;
        end else begin
            delta_weights3_7_address1_local = 'bx;
        end
    end else begin
        delta_weights3_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_7_d1_local = mul_2_1_reg_3528;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_7_d1_local = mul_7_2_reg_3624;
        end else begin
            delta_weights3_7_d1_local = 'bx;
        end
    end else begin
        delta_weights3_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_8_address0_local = zext_ln75_35_fu_2879_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_8_address0_local = zext_ln75_19_fu_2615_p1;
        end else begin
            delta_weights3_8_address0_local = 'bx;
        end
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_8_ce1_local = 1'b1;
    end else begin
        delta_weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_8_d0_local = mul_13_1_reg_3702;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_8_d0_local = mul_8_reg_3630;
        end else begin
            delta_weights3_8_d0_local = 'bx;
        end
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_8_we1_local = 1'b1;
    end else begin
        delta_weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_9_address0_local = zext_ln75_36_fu_2901_p1;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_9_address0_local = zext_ln75_20_fu_2637_p1;
        end else begin
            delta_weights3_9_address0_local = 'bx;
        end
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_9_ce1_local = 1'b1;
    end else begin
        delta_weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_9_d0_local = mul_13_2_reg_3708;
        end else if ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_9_d0_local = mul_8_1_reg_3636;
        end else begin
            delta_weights3_9_d0_local = 'bx;
        end
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln75_reg_3475_pp0_iter8_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_9_we1_local = 1'b1;
    end else begin
        delta_weights3_9_we1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln73_fu_1988_p2 = (ap_sig_allocacmp_i_11 + 7'd16);
assign add_ln75_10_fu_2555_p2 = (tmp_31_fu_2415_p3 + 8'd7);
assign add_ln75_11_fu_2577_p2 = (tmp_31_fu_2415_p3 + 8'd8);
assign add_ln75_12_fu_2621_p2 = (tmp_31_fu_2415_p3 + 8'd10);
assign add_ln75_13_fu_2643_p2 = (tmp_31_fu_2415_p3 + 8'd11);
assign add_ln75_14_fu_2687_p2 = (tmp_31_fu_2415_p3 + 8'd13);
assign add_ln75_15_fu_2709_p2 = (tmp_31_fu_2415_p3 + 8'd14);
assign add_ln75_16_fu_2753_p2 = (tmp_31_fu_2415_p3 + 8'd16);
assign add_ln75_17_fu_2775_p2 = (tmp_31_fu_2415_p3 + 8'd17);
assign add_ln75_18_fu_3016_p2 = (tmp_31_reg_3738 + 8'd19);
assign add_ln75_19_fu_3037_p2 = (tmp_31_reg_3738 + 8'd20);
assign add_ln75_1_fu_2229_p2 = (tmp_29_fu_2199_p3 + 8'd2);
assign add_ln75_20_fu_2819_p2 = (tmp_31_fu_2415_p3 + 8'd22);
assign add_ln75_21_fu_2841_p2 = (tmp_31_fu_2415_p3 + 8'd23);
assign add_ln75_22_fu_2863_p2 = (tmp_31_fu_2415_p3 + 8'd25);
assign add_ln75_23_fu_2885_p2 = (tmp_31_fu_2415_p3 + 8'd26);
assign add_ln75_24_fu_3079_p2 = (tmp_31_reg_3738 + 8'd28);
assign add_ln75_25_fu_2929_p2 = (tmp_31_fu_2415_p3 + 8'd29);
assign add_ln75_26_fu_2973_p2 = (tmp_31_fu_2415_p3 + 8'd31);
assign add_ln75_27_fu_3100_p2 = (tmp_31_reg_3738 + 8'd32);
assign add_ln75_2_fu_2273_p2 = (tmp_29_fu_2199_p3 + 8'd5);
assign add_ln75_3_fu_2317_p2 = (tmp_29_fu_2199_p3 + 8'd7);
assign add_ln75_4_fu_2361_p2 = (tmp_29_fu_2199_p3 + 8'd10);
assign add_ln75_5_fu_2383_p2 = (tmp_29_fu_2199_p3 + 8'd11);
assign add_ln75_6_fu_2423_p2 = (tmp_31_fu_2415_p3 + 8'd1);
assign add_ln75_7_fu_2445_p2 = (tmp_31_fu_2415_p3 + 8'd2);
assign add_ln75_8_fu_2489_p2 = (tmp_31_fu_2415_p3 + 8'd4);
assign add_ln75_9_fu_2511_p2 = (tmp_31_fu_2415_p3 + 8'd5);
assign add_ln75_fu_2207_p2 = (tmp_29_fu_2199_p3 + 8'd1);
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
assign delta_weights3_0_address1 = zext_ln75_1_fu_2171_p1;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_d1 = mul_reg_3486;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_10_address0 = delta_weights3_10_address0_local;
assign delta_weights3_10_address1 = zext_ln75_7_fu_2333_p1;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_ce1 = delta_weights3_10_ce1_local;
assign delta_weights3_10_d0 = delta_weights3_10_d0_local;
assign delta_weights3_10_d1 = mul_3_1_reg_3546;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_10_we1 = delta_weights3_10_we1_local;
assign delta_weights3_11_address0 = zext_ln75_38_fu_3094_p1;
assign delta_weights3_11_address1 = delta_weights3_11_address1_local;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_ce1 = delta_weights3_11_ce1_local;
assign delta_weights3_11_d0 = mul_14_1_reg_3812;
assign delta_weights3_11_d1 = delta_weights3_11_d1_local;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_11_we1 = delta_weights3_11_we1_local;
assign delta_weights3_12_address0 = delta_weights3_12_address0_local;
assign delta_weights3_12_address1 = zext_ln75_8_fu_2355_p1;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_ce1 = delta_weights3_12_ce1_local;
assign delta_weights3_12_d0 = delta_weights3_12_d0_local;
assign delta_weights3_12_d1 = mul_4_reg_3558;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_12_we1 = delta_weights3_12_we1_local;
assign delta_weights3_13_address0 = delta_weights3_13_address0_local;
assign delta_weights3_13_address1 = zext_ln75_9_fu_2377_p1;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_ce1 = delta_weights3_13_ce1_local;
assign delta_weights3_13_d0 = delta_weights3_13_d0_local;
assign delta_weights3_13_d1 = mul_4_1_reg_3564;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_13_we1 = delta_weights3_13_we1_local;
assign delta_weights3_14_address0 = delta_weights3_14_address0_local;
assign delta_weights3_14_address1 = zext_ln75_10_fu_2399_p1;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_ce1 = delta_weights3_14_ce1_local;
assign delta_weights3_14_d0 = delta_weights3_14_d0_local;
assign delta_weights3_14_d1 = mul_4_2_reg_3570;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_14_we1 = delta_weights3_14_we1_local;
assign delta_weights3_15_address0 = zext_ln75_42_fu_3115_p1;
assign delta_weights3_15_address1 = delta_weights3_15_address1_local;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_ce1 = delta_weights3_15_ce1_local;
assign delta_weights3_15_d0 = mul_15_2_reg_3828;
assign delta_weights3_15_d1 = delta_weights3_15_d1_local;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_15_we1 = delta_weights3_15_we1_local;
assign delta_weights3_16_address0 = delta_weights3_16_addr_2_reg_3748;
assign delta_weights3_16_address1 = delta_weights3_16_address1_local;
assign delta_weights3_16_ce0 = delta_weights3_16_ce0_local;
assign delta_weights3_16_ce1 = delta_weights3_16_ce1_local;
assign delta_weights3_16_d0 = mul_10_2_reg_3678_pp0_iter9_reg;
assign delta_weights3_16_d1 = delta_weights3_16_d1_local;
assign delta_weights3_16_we0 = delta_weights3_16_we0_local;
assign delta_weights3_16_we1 = delta_weights3_16_we1_local;
assign delta_weights3_17_address0 = zext_ln75_28_fu_3010_p1;
assign delta_weights3_17_address1 = delta_weights3_17_address1_local;
assign delta_weights3_17_ce0 = delta_weights3_17_ce0_local;
assign delta_weights3_17_ce1 = delta_weights3_17_ce1_local;
assign delta_weights3_17_d0 = mul_11_reg_3788;
assign delta_weights3_17_d1 = delta_weights3_17_d1_local;
assign delta_weights3_17_we0 = delta_weights3_17_we0_local;
assign delta_weights3_17_we1 = delta_weights3_17_we1_local;
assign delta_weights3_18_address0 = zext_ln75_29_fu_3031_p1;
assign delta_weights3_18_address1 = delta_weights3_18_address1_local;
assign delta_weights3_18_ce0 = delta_weights3_18_ce0_local;
assign delta_weights3_18_ce1 = delta_weights3_18_ce1_local;
assign delta_weights3_18_d0 = mul_11_1_reg_3794;
assign delta_weights3_18_d1 = delta_weights3_18_d1_local;
assign delta_weights3_18_we0 = delta_weights3_18_we0_local;
assign delta_weights3_18_we1 = delta_weights3_18_we1_local;
assign delta_weights3_19_address0 = zext_ln75_30_fu_3052_p1;
assign delta_weights3_19_address1 = delta_weights3_19_address1_local;
assign delta_weights3_19_ce0 = delta_weights3_19_ce0_local;
assign delta_weights3_19_ce1 = delta_weights3_19_ce1_local;
assign delta_weights3_19_d0 = mul_11_2_reg_3800;
assign delta_weights3_19_d1 = delta_weights3_19_d1_local;
assign delta_weights3_19_we0 = delta_weights3_19_we0_local;
assign delta_weights3_19_we1 = delta_weights3_19_we1_local;
assign delta_weights3_1_address0 = zext_ln75_28_fu_3010_p1;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = mul_11_reg_3788;
assign delta_weights3_1_d1 = delta_weights3_1_d1_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_20_address0 = delta_weights3_20_addr_2_reg_3753;
assign delta_weights3_20_address1 = delta_weights3_20_address1_local;
assign delta_weights3_20_ce0 = delta_weights3_20_ce0_local;
assign delta_weights3_20_ce1 = delta_weights3_20_ce1_local;
assign delta_weights3_20_d0 = mul_12_reg_3684_pp0_iter9_reg;
assign delta_weights3_20_d1 = delta_weights3_20_d1_local;
assign delta_weights3_20_we0 = delta_weights3_20_we0_local;
assign delta_weights3_20_we1 = delta_weights3_20_we1_local;
assign delta_weights3_21_address0 = delta_weights3_21_addr_2_reg_3758;
assign delta_weights3_21_address1 = delta_weights3_21_address1_local;
assign delta_weights3_21_ce0 = delta_weights3_21_ce0_local;
assign delta_weights3_21_ce1 = delta_weights3_21_ce1_local;
assign delta_weights3_21_d0 = mul_12_1_reg_3690_pp0_iter9_reg;
assign delta_weights3_21_d1 = delta_weights3_21_d1_local;
assign delta_weights3_21_we0 = delta_weights3_21_we0_local;
assign delta_weights3_21_we1 = delta_weights3_21_we1_local;
assign delta_weights3_22_address0 = delta_weights3_22_addr_2_reg_3763;
assign delta_weights3_22_address1 = delta_weights3_22_address1_local;
assign delta_weights3_22_ce0 = delta_weights3_22_ce0_local;
assign delta_weights3_22_ce1 = delta_weights3_22_ce1_local;
assign delta_weights3_22_d0 = mul_12_2_reg_3696_pp0_iter9_reg;
assign delta_weights3_22_d1 = delta_weights3_22_d1_local;
assign delta_weights3_22_we0 = delta_weights3_22_we0_local;
assign delta_weights3_22_we1 = delta_weights3_22_we1_local;
assign delta_weights3_23_address0 = zext_ln75_34_fu_3073_p1;
assign delta_weights3_23_address1 = delta_weights3_23_address1_local;
assign delta_weights3_23_ce0 = delta_weights3_23_ce0_local;
assign delta_weights3_23_ce1 = delta_weights3_23_ce1_local;
assign delta_weights3_23_d0 = mul_13_reg_3806;
assign delta_weights3_23_d1 = delta_weights3_23_d1_local;
assign delta_weights3_23_we0 = delta_weights3_23_we0_local;
assign delta_weights3_23_we1 = delta_weights3_23_we1_local;
assign delta_weights3_24_address0 = delta_weights3_24_addr_2_reg_3768;
assign delta_weights3_24_address1 = delta_weights3_24_address1_local;
assign delta_weights3_24_ce0 = delta_weights3_24_ce0_local;
assign delta_weights3_24_ce1 = delta_weights3_24_ce1_local;
assign delta_weights3_24_d0 = mul_13_1_reg_3702_pp0_iter9_reg;
assign delta_weights3_24_d1 = delta_weights3_24_d1_local;
assign delta_weights3_24_we0 = delta_weights3_24_we0_local;
assign delta_weights3_24_we1 = delta_weights3_24_we1_local;
assign delta_weights3_25_address0 = delta_weights3_25_addr_2_reg_3773;
assign delta_weights3_25_address1 = delta_weights3_25_address1_local;
assign delta_weights3_25_ce0 = delta_weights3_25_ce0_local;
assign delta_weights3_25_ce1 = delta_weights3_25_ce1_local;
assign delta_weights3_25_d0 = mul_13_2_reg_3708_pp0_iter9_reg;
assign delta_weights3_25_d1 = delta_weights3_25_d1_local;
assign delta_weights3_25_we0 = delta_weights3_25_we0_local;
assign delta_weights3_25_we1 = delta_weights3_25_we1_local;
assign delta_weights3_26_address0 = delta_weights3_26_addr_2_reg_3778;
assign delta_weights3_26_address1 = delta_weights3_26_address1_local;
assign delta_weights3_26_ce0 = delta_weights3_26_ce0_local;
assign delta_weights3_26_ce1 = delta_weights3_26_ce1_local;
assign delta_weights3_26_d0 = mul_14_reg_3714_pp0_iter9_reg;
assign delta_weights3_26_d1 = delta_weights3_26_d1_local;
assign delta_weights3_26_we0 = delta_weights3_26_we0_local;
assign delta_weights3_26_we1 = delta_weights3_26_we1_local;
assign delta_weights3_27_address0 = zext_ln75_38_fu_3094_p1;
assign delta_weights3_27_address1 = delta_weights3_27_address1_local;
assign delta_weights3_27_ce0 = delta_weights3_27_ce0_local;
assign delta_weights3_27_ce1 = delta_weights3_27_ce1_local;
assign delta_weights3_27_d0 = mul_14_1_reg_3812;
assign delta_weights3_27_d1 = delta_weights3_27_d1_local;
assign delta_weights3_27_we0 = delta_weights3_27_we0_local;
assign delta_weights3_27_we1 = delta_weights3_27_we1_local;
assign delta_weights3_28_address0 = delta_weights3_28_addr_2_reg_3783;
assign delta_weights3_28_address1 = delta_weights3_28_address1_local;
assign delta_weights3_28_ce0 = delta_weights3_28_ce0_local;
assign delta_weights3_28_ce1 = delta_weights3_28_ce1_local;
assign delta_weights3_28_d0 = mul_14_2_reg_3720_pp0_iter9_reg;
assign delta_weights3_28_d1 = delta_weights3_28_d1_local;
assign delta_weights3_28_we0 = delta_weights3_28_we0_local;
assign delta_weights3_28_we1 = delta_weights3_28_we1_local;
assign delta_weights3_29_address0 = delta_weights3_29_addr_2_reg_3818;
assign delta_weights3_29_address1 = delta_weights3_29_address1_local;
assign delta_weights3_29_ce0 = delta_weights3_29_ce0_local;
assign delta_weights3_29_ce1 = delta_weights3_29_ce1_local;
assign delta_weights3_29_d0 = mul_15_reg_3726_pp0_iter9_reg;
assign delta_weights3_29_d1 = delta_weights3_29_d1_local;
assign delta_weights3_29_we0 = delta_weights3_29_we0_local;
assign delta_weights3_29_we1 = delta_weights3_29_we1_local;
assign delta_weights3_2_address0 = zext_ln75_29_fu_3031_p1;
assign delta_weights3_2_address1 = delta_weights3_2_address1_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = mul_11_1_reg_3794;
assign delta_weights3_2_d1 = delta_weights3_2_d1_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_30_address0 = delta_weights3_30_addr_2_reg_3823;
assign delta_weights3_30_address1 = delta_weights3_30_address1_local;
assign delta_weights3_30_ce0 = delta_weights3_30_ce0_local;
assign delta_weights3_30_ce1 = delta_weights3_30_ce1_local;
assign delta_weights3_30_d0 = mul_15_1_reg_3732_pp0_iter9_reg;
assign delta_weights3_30_d1 = delta_weights3_30_d1_local;
assign delta_weights3_30_we0 = delta_weights3_30_we0_local;
assign delta_weights3_30_we1 = delta_weights3_30_we1_local;
assign delta_weights3_31_address0 = zext_ln75_42_fu_3115_p1;
assign delta_weights3_31_address1 = delta_weights3_31_address1_local;
assign delta_weights3_31_ce0 = delta_weights3_31_ce0_local;
assign delta_weights3_31_ce1 = delta_weights3_31_ce1_local;
assign delta_weights3_31_d0 = mul_15_2_reg_3828;
assign delta_weights3_31_d1 = delta_weights3_31_d1_local;
assign delta_weights3_31_we0 = delta_weights3_31_we0_local;
assign delta_weights3_31_we1 = delta_weights3_31_we1_local;
assign delta_weights3_3_address0 = zext_ln75_30_fu_3052_p1;
assign delta_weights3_3_address1 = delta_weights3_3_address1_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = mul_11_2_reg_3800;
assign delta_weights3_3_d1 = delta_weights3_3_d1_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_address1 = zext_ln75_2_fu_2223_p1;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_d1 = mul_1_1_reg_3510;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_address1 = zext_ln75_3_fu_2245_p1;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_d1 = mul_1_2_reg_3516;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_address1 = zext_ln75_4_fu_2267_p1;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_d1 = mul_2_reg_3522;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = zext_ln75_34_fu_3073_p1;
assign delta_weights3_7_address1 = delta_weights3_7_address1_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = mul_13_reg_3806;
assign delta_weights3_7_d1 = delta_weights3_7_d1_local;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign delta_weights3_8_address0 = delta_weights3_8_address0_local;
assign delta_weights3_8_address1 = zext_ln75_5_fu_2289_p1;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_ce1 = delta_weights3_8_ce1_local;
assign delta_weights3_8_d0 = delta_weights3_8_d0_local;
assign delta_weights3_8_d1 = mul_2_2_reg_3534;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_8_we1 = delta_weights3_8_we1_local;
assign delta_weights3_9_address0 = delta_weights3_9_address0_local;
assign delta_weights3_9_address1 = zext_ln75_6_fu_2311_p1;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_ce1 = delta_weights3_9_ce1_local;
assign delta_weights3_9_d0 = delta_weights3_9_d0_local;
assign delta_weights3_9_d1 = mul_3_reg_3540;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_9_we1 = delta_weights3_9_we1_local;
assign empty_476_fu_2251_p2 = (tmp_29_fu_2199_p3 + 8'd3);
assign empty_477_fu_2295_p2 = (tmp_29_fu_2199_p3 + 8'd6);
assign empty_478_fu_2339_p2 = (tmp_29_fu_2199_p3 + 8'd9);
assign empty_479_fu_2467_p2 = (tmp_31_fu_2415_p3 + 8'd3);
assign empty_480_fu_2533_p2 = (tmp_31_fu_2415_p3 + 8'd6);
assign empty_481_fu_2599_p2 = (tmp_31_fu_2415_p3 + 8'd9);
assign empty_482_fu_2665_p2 = (tmp_31_fu_2415_p3 + 8'd12);
assign empty_483_fu_2731_p2 = (tmp_31_fu_2415_p3 + 8'd15);
assign empty_484_fu_2995_p2 = (tmp_31_reg_3738 + 8'd18);
assign empty_485_fu_2797_p2 = (tmp_31_fu_2415_p3 + 8'd21);
assign empty_486_fu_3058_p2 = (tmp_31_reg_3738 + 8'd24);
assign empty_487_fu_2907_p2 = (tmp_31_fu_2415_p3 + 8'd27);
assign empty_488_fu_2951_p2 = (tmp_31_fu_2415_p3 + 8'd30);
assign empty_fu_2002_p2 = ((trunc_ln73_fu_1999_p1 != 5'd0) ? 1'b1 : 1'b0);
assign grp_fu_9728_p_ce = 1'b1;
assign grp_fu_9728_p_din0 = tmp_reg_3360;
assign grp_fu_9728_p_din1 = output_difference_0_0_val;
assign grp_fu_9732_p_ce = 1'b1;
assign grp_fu_9732_p_din0 = tmp_reg_3360;
assign grp_fu_9732_p_din1 = output_difference_0_1_val;
assign grp_fu_9736_p_ce = 1'b1;
assign grp_fu_9736_p_din0 = tmp_reg_3360;
assign grp_fu_9736_p_din1 = output_difference_0_2_val;
assign grp_fu_9740_p_ce = 1'b1;
assign grp_fu_9740_p_din0 = tmp_s_reg_3377;
assign grp_fu_9740_p_din1 = output_difference_0_0_val;
assign grp_fu_9744_p_ce = 1'b1;
assign grp_fu_9744_p_din0 = tmp_s_reg_3377;
assign grp_fu_9744_p_din1 = output_difference_0_1_val;
assign grp_fu_9748_p_ce = 1'b1;
assign grp_fu_9748_p_din0 = tmp_s_reg_3377;
assign grp_fu_9748_p_din1 = output_difference_0_2_val;
assign grp_fu_9752_p_ce = 1'b1;
assign grp_fu_9752_p_din0 = tmp_378_reg_3384;
assign grp_fu_9752_p_din1 = output_difference_0_0_val;
assign grp_fu_9756_p_ce = 1'b1;
assign grp_fu_9756_p_din0 = tmp_378_reg_3384;
assign grp_fu_9756_p_din1 = output_difference_0_1_val;
assign grp_fu_9760_p_ce = 1'b1;
assign grp_fu_9760_p_din0 = tmp_378_reg_3384;
assign grp_fu_9760_p_din1 = output_difference_0_2_val;
assign grp_fu_9764_p_ce = 1'b1;
assign grp_fu_9764_p_din0 = tmp_379_reg_3391;
assign grp_fu_9764_p_din1 = output_difference_0_0_val;
assign grp_fu_9768_p_ce = 1'b1;
assign grp_fu_9768_p_din0 = tmp_379_reg_3391;
assign grp_fu_9768_p_din1 = output_difference_0_1_val;
assign grp_fu_9772_p_ce = 1'b1;
assign grp_fu_9772_p_din0 = tmp_379_reg_3391;
assign grp_fu_9772_p_din1 = output_difference_0_2_val;
assign grp_fu_9776_p_ce = 1'b1;
assign grp_fu_9776_p_din0 = tmp_380_reg_3398;
assign grp_fu_9776_p_din1 = output_difference_0_0_val;
assign grp_fu_9780_p_ce = 1'b1;
assign grp_fu_9780_p_din0 = tmp_380_reg_3398;
assign grp_fu_9780_p_din1 = output_difference_0_1_val;
assign grp_fu_9784_p_ce = 1'b1;
assign grp_fu_9784_p_din0 = tmp_380_reg_3398;
assign grp_fu_9784_p_din1 = output_difference_0_2_val;
assign grp_fu_9788_p_ce = 1'b1;
assign grp_fu_9788_p_din0 = tmp_381_reg_3405;
assign grp_fu_9788_p_din1 = output_difference_0_0_val;
assign grp_fu_9792_p_ce = 1'b1;
assign grp_fu_9792_p_din0 = tmp_381_reg_3405;
assign grp_fu_9792_p_din1 = output_difference_0_1_val;
assign grp_fu_9796_p_ce = 1'b1;
assign grp_fu_9796_p_din0 = tmp_381_reg_3405;
assign grp_fu_9796_p_din1 = output_difference_0_2_val;
assign grp_fu_9800_p_ce = 1'b1;
assign grp_fu_9800_p_din0 = tmp_382_reg_3412;
assign grp_fu_9800_p_din1 = output_difference_0_0_val;
assign grp_fu_9804_p_ce = 1'b1;
assign grp_fu_9804_p_din0 = tmp_382_reg_3412;
assign grp_fu_9804_p_din1 = output_difference_0_1_val;
assign grp_fu_9808_p_ce = 1'b1;
assign grp_fu_9808_p_din0 = tmp_382_reg_3412;
assign grp_fu_9808_p_din1 = output_difference_0_2_val;
assign grp_fu_9812_p_ce = 1'b1;
assign grp_fu_9812_p_din0 = tmp_383_reg_3419;
assign grp_fu_9812_p_din1 = output_difference_0_0_val;
assign grp_fu_9816_p_ce = 1'b1;
assign grp_fu_9816_p_din0 = tmp_383_reg_3419;
assign grp_fu_9816_p_din1 = output_difference_0_1_val;
assign grp_fu_9820_p_ce = 1'b1;
assign grp_fu_9820_p_din0 = tmp_383_reg_3419;
assign grp_fu_9820_p_din1 = output_difference_0_2_val;
assign grp_fu_9824_p_ce = 1'b1;
assign grp_fu_9824_p_din0 = tmp_384_reg_3426;
assign grp_fu_9824_p_din1 = output_difference_0_0_val;
assign grp_fu_9828_p_ce = 1'b1;
assign grp_fu_9828_p_din0 = tmp_384_reg_3426;
assign grp_fu_9828_p_din1 = output_difference_0_1_val;
assign grp_fu_9832_p_ce = 1'b1;
assign grp_fu_9832_p_din0 = tmp_384_reg_3426;
assign grp_fu_9832_p_din1 = output_difference_0_2_val;
assign grp_fu_9836_p_ce = 1'b1;
assign grp_fu_9836_p_din0 = tmp_385_reg_3433;
assign grp_fu_9836_p_din1 = output_difference_0_0_val;
assign grp_fu_9840_p_ce = 1'b1;
assign grp_fu_9840_p_din0 = tmp_385_reg_3433;
assign grp_fu_9840_p_din1 = output_difference_0_1_val;
assign grp_fu_9844_p_ce = 1'b1;
assign grp_fu_9844_p_din0 = tmp_385_reg_3433;
assign grp_fu_9844_p_din1 = output_difference_0_2_val;
assign grp_fu_9848_p_ce = 1'b1;
assign grp_fu_9848_p_din0 = tmp_386_reg_3440;
assign grp_fu_9848_p_din1 = output_difference_0_0_val;
assign grp_fu_9852_p_ce = 1'b1;
assign grp_fu_9852_p_din0 = tmp_386_reg_3440;
assign grp_fu_9852_p_din1 = output_difference_0_1_val;
assign grp_fu_9856_p_ce = 1'b1;
assign grp_fu_9856_p_din0 = tmp_386_reg_3440;
assign grp_fu_9856_p_din1 = output_difference_0_2_val;
assign grp_fu_9860_p_ce = 1'b1;
assign grp_fu_9860_p_din0 = tmp_388_reg_3447;
assign grp_fu_9860_p_din1 = output_difference_0_0_val;
assign grp_fu_9864_p_ce = 1'b1;
assign grp_fu_9864_p_din0 = tmp_388_reg_3447;
assign grp_fu_9864_p_din1 = output_difference_0_1_val;
assign grp_fu_9868_p_ce = 1'b1;
assign grp_fu_9868_p_din0 = tmp_388_reg_3447;
assign grp_fu_9868_p_din1 = output_difference_0_2_val;
assign grp_fu_9872_p_ce = 1'b1;
assign grp_fu_9872_p_din0 = tmp_389_reg_3454;
assign grp_fu_9872_p_din1 = output_difference_0_1_val;
assign grp_fu_9876_p_ce = 1'b1;
assign grp_fu_9876_p_din0 = tmp_389_reg_3454;
assign grp_fu_9876_p_din1 = output_difference_0_2_val;
assign grp_fu_9880_p_ce = 1'b1;
assign grp_fu_9880_p_din0 = tmp_390_reg_3461;
assign grp_fu_9880_p_din1 = output_difference_0_0_val;
assign grp_fu_9884_p_ce = 1'b1;
assign grp_fu_9884_p_din0 = tmp_390_reg_3461;
assign grp_fu_9884_p_din1 = output_difference_0_2_val;
assign grp_fu_9888_p_ce = 1'b1;
assign grp_fu_9888_p_din0 = tmp_391_reg_3468;
assign grp_fu_9888_p_din1 = output_difference_0_0_val;
assign grp_fu_9892_p_ce = 1'b1;
assign grp_fu_9892_p_din0 = tmp_391_reg_3468;
assign grp_fu_9892_p_din1 = output_difference_0_1_val;
assign grp_fu_9896_p_ce = 1'b1;
assign grp_fu_9896_p_din0 = tmp_387_reg_3479;
assign grp_fu_9896_p_din1 = output_difference_0_0_val;
assign grp_fu_9900_p_ce = 1'b1;
assign grp_fu_9900_p_din0 = tmp_387_reg_3479;
assign grp_fu_9900_p_din1 = output_difference_0_1_val;
assign grp_fu_9904_p_ce = 1'b1;
assign grp_fu_9904_p_din0 = tmp_387_reg_3479;
assign grp_fu_9904_p_din1 = output_difference_0_2_val;
assign grp_fu_9908_p_ce = 1'b1;
assign grp_fu_9908_p_din0 = tmp_389_reg_3454_pp0_iter2_reg;
assign grp_fu_9908_p_din1 = output_difference_0_0_val;
assign grp_fu_9912_p_ce = 1'b1;
assign grp_fu_9912_p_din0 = tmp_390_reg_3461_pp0_iter2_reg;
assign grp_fu_9912_p_din1 = output_difference_0_1_val;
assign grp_fu_9916_p_ce = 1'b1;
assign grp_fu_9916_p_din0 = tmp_391_reg_3468_pp0_iter2_reg;
assign grp_fu_9916_p_din1 = output_difference_0_2_val;
assign icmp_ln75_fu_2128_p2 = ((trunc_ln73_fu_1999_p1 == 5'd0) ? 1'b1 : 1'b0);
assign last_activations_0_address0 = zext_ln72_fu_1954_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_10_address0 = zext_ln72_fu_1954_p1;
assign last_activations_10_ce0 = last_activations_10_ce0_local;
assign last_activations_11_address0 = zext_ln72_reg_3199;
assign last_activations_11_ce0 = last_activations_11_ce0_local;
assign last_activations_12_address0 = zext_ln72_fu_1954_p1;
assign last_activations_12_ce0 = last_activations_12_ce0_local;
assign last_activations_13_address0 = zext_ln72_fu_1954_p1;
assign last_activations_13_ce0 = last_activations_13_ce0_local;
assign last_activations_14_address0 = zext_ln72_fu_1954_p1;
assign last_activations_14_ce0 = last_activations_14_ce0_local;
assign last_activations_15_address0 = zext_ln72_fu_1954_p1;
assign last_activations_15_ce0 = last_activations_15_ce0_local;
assign last_activations_16_address0 = zext_ln72_fu_1954_p1;
assign last_activations_16_ce0 = last_activations_16_ce0_local;
assign last_activations_17_address0 = zext_ln72_fu_1954_p1;
assign last_activations_17_ce0 = last_activations_17_ce0_local;
assign last_activations_18_address0 = zext_ln72_fu_1954_p1;
assign last_activations_18_ce0 = last_activations_18_ce0_local;
assign last_activations_19_address0 = zext_ln72_fu_1954_p1;
assign last_activations_19_ce0 = last_activations_19_ce0_local;
assign last_activations_1_address0 = zext_ln72_fu_1954_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_20_address0 = zext_ln72_fu_1954_p1;
assign last_activations_20_ce0 = last_activations_20_ce0_local;
assign last_activations_21_address0 = zext_ln72_fu_1954_p1;
assign last_activations_21_ce0 = last_activations_21_ce0_local;
assign last_activations_22_address0 = zext_ln72_fu_1954_p1;
assign last_activations_22_ce0 = last_activations_22_ce0_local;
assign last_activations_23_address0 = zext_ln72_fu_1954_p1;
assign last_activations_23_ce0 = last_activations_23_ce0_local;
assign last_activations_24_address0 = zext_ln72_fu_1954_p1;
assign last_activations_24_ce0 = last_activations_24_ce0_local;
assign last_activations_25_address0 = zext_ln72_fu_1954_p1;
assign last_activations_25_ce0 = last_activations_25_ce0_local;
assign last_activations_26_address0 = zext_ln72_fu_1954_p1;
assign last_activations_26_ce0 = last_activations_26_ce0_local;
assign last_activations_27_address0 = zext_ln72_reg_3199;
assign last_activations_27_ce0 = last_activations_27_ce0_local;
assign last_activations_28_address0 = zext_ln72_fu_1954_p1;
assign last_activations_28_ce0 = last_activations_28_ce0_local;
assign last_activations_29_address0 = zext_ln72_fu_1954_p1;
assign last_activations_29_ce0 = last_activations_29_ce0_local;
assign last_activations_2_address0 = zext_ln72_fu_1954_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_30_address0 = zext_ln72_fu_1954_p1;
assign last_activations_30_ce0 = last_activations_30_ce0_local;
assign last_activations_31_address0 = zext_ln72_fu_1954_p1;
assign last_activations_31_ce0 = last_activations_31_ce0_local;
assign last_activations_3_address0 = zext_ln72_fu_1954_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = zext_ln72_fu_1954_p1;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = zext_ln72_fu_1954_p1;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = zext_ln72_fu_1954_p1;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = zext_ln72_fu_1954_p1;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
assign last_activations_8_address0 = zext_ln72_fu_1954_p1;
assign last_activations_8_ce0 = last_activations_8_ce0_local;
assign last_activations_9_address0 = zext_ln72_fu_1954_p1;
assign last_activations_9_ce0 = last_activations_9_ce0_local;
assign lshr_ln6_fu_2161_p4 = {{sub_ln75_fu_2155_p2[7:5]}};
assign lshr_ln75_10_fu_2451_p4 = {{add_ln75_7_fu_2445_p2[7:5]}};
assign lshr_ln75_11_fu_2473_p4 = {{empty_479_fu_2467_p2[7:5]}};
assign lshr_ln75_12_fu_2495_p4 = {{add_ln75_8_fu_2489_p2[7:5]}};
assign lshr_ln75_13_fu_2517_p4 = {{add_ln75_9_fu_2511_p2[7:5]}};
assign lshr_ln75_14_fu_2539_p4 = {{empty_480_fu_2533_p2[7:5]}};
assign lshr_ln75_15_fu_2561_p4 = {{add_ln75_10_fu_2555_p2[7:5]}};
assign lshr_ln75_16_fu_2583_p4 = {{add_ln75_11_fu_2577_p2[7:5]}};
assign lshr_ln75_17_fu_2605_p4 = {{empty_481_fu_2599_p2[7:5]}};
assign lshr_ln75_18_fu_2627_p4 = {{add_ln75_12_fu_2621_p2[7:5]}};
assign lshr_ln75_19_fu_2649_p4 = {{add_ln75_13_fu_2643_p2[7:5]}};
assign lshr_ln75_1_fu_2213_p4 = {{add_ln75_fu_2207_p2[7:5]}};
assign lshr_ln75_20_fu_2671_p4 = {{empty_482_fu_2665_p2[7:5]}};
assign lshr_ln75_21_fu_2693_p4 = {{add_ln75_14_fu_2687_p2[7:5]}};
assign lshr_ln75_22_fu_2715_p4 = {{add_ln75_15_fu_2709_p2[7:5]}};
assign lshr_ln75_23_fu_2737_p4 = {{empty_483_fu_2731_p2[7:5]}};
assign lshr_ln75_24_fu_2759_p4 = {{add_ln75_16_fu_2753_p2[7:5]}};
assign lshr_ln75_25_fu_2781_p4 = {{add_ln75_17_fu_2775_p2[7:5]}};
assign lshr_ln75_26_fu_3000_p4 = {{empty_484_fu_2995_p2[7:5]}};
assign lshr_ln75_27_fu_3021_p4 = {{add_ln75_18_fu_3016_p2[7:5]}};
assign lshr_ln75_28_fu_3042_p4 = {{add_ln75_19_fu_3037_p2[7:5]}};
assign lshr_ln75_29_fu_2803_p4 = {{empty_485_fu_2797_p2[7:5]}};
assign lshr_ln75_2_fu_2235_p4 = {{add_ln75_1_fu_2229_p2[7:5]}};
assign lshr_ln75_30_fu_2825_p4 = {{add_ln75_20_fu_2819_p2[7:5]}};
assign lshr_ln75_31_fu_2847_p4 = {{add_ln75_21_fu_2841_p2[7:5]}};
assign lshr_ln75_32_fu_3063_p4 = {{empty_486_fu_3058_p2[7:5]}};
assign lshr_ln75_33_fu_2869_p4 = {{add_ln75_22_fu_2863_p2[7:5]}};
assign lshr_ln75_34_fu_2891_p4 = {{add_ln75_23_fu_2885_p2[7:5]}};
assign lshr_ln75_35_fu_2913_p4 = {{empty_487_fu_2907_p2[7:5]}};
assign lshr_ln75_36_fu_3084_p4 = {{add_ln75_24_fu_3079_p2[7:5]}};
assign lshr_ln75_37_fu_2935_p4 = {{add_ln75_25_fu_2929_p2[7:5]}};
assign lshr_ln75_38_fu_2957_p4 = {{empty_488_fu_2951_p2[7:5]}};
assign lshr_ln75_39_fu_2979_p4 = {{add_ln75_26_fu_2973_p2[7:5]}};
assign lshr_ln75_3_fu_2257_p4 = {{empty_476_fu_2251_p2[7:5]}};
assign lshr_ln75_40_fu_3105_p4 = {{add_ln75_27_fu_3100_p2[7:5]}};
assign lshr_ln75_4_fu_2279_p4 = {{add_ln75_2_fu_2273_p2[7:5]}};
assign lshr_ln75_5_fu_2301_p4 = {{empty_477_fu_2295_p2[7:5]}};
assign lshr_ln75_6_fu_2323_p4 = {{add_ln75_3_fu_2317_p2[7:5]}};
assign lshr_ln75_7_fu_2345_p4 = {{empty_478_fu_2339_p2[7:5]}};
assign lshr_ln75_8_fu_2367_p4 = {{add_ln75_4_fu_2361_p2[7:5]}};
assign lshr_ln75_9_fu_2389_p4 = {{add_ln75_5_fu_2383_p2[7:5]}};
assign lshr_ln75_s_fu_2429_p4 = {{add_ln75_6_fu_2423_p2[7:5]}};
assign p_shl_fu_2147_p3 = {{trunc_ln75_fu_2144_p1}, {2'd0}};
assign sub_ln75_fu_2155_p2 = (p_shl_fu_2147_p3 - zext_ln75_fu_2141_p1);
assign tmp_19_fu_1938_p3 = ap_sig_allocacmp_i_11[32'd6];
assign tmp_20_fu_1946_p3 = ap_sig_allocacmp_i_11[32'd5];
assign tmp_28_fu_2189_p4 = {{sub_ln75_fu_2155_p2[7:2]}};
assign tmp_29_fu_2199_p3 = {{tmp_28_fu_2189_p4}, {2'd3}};
assign tmp_30_fu_2405_p4 = {{sub_ln75_fu_2155_p2[7:4]}};
assign tmp_31_fu_2415_p3 = {{tmp_30_fu_2405_p4}, {4'd15}};
assign tmp_378_fu_2024_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_18_q0 : last_activations_2_q0);
assign tmp_379_fu_2032_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_19_q0 : last_activations_3_q0);
assign tmp_380_fu_2040_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_20_q0 : last_activations_4_q0);
assign tmp_381_fu_2048_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_21_q0 : last_activations_5_q0);
assign tmp_382_fu_2056_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_22_q0 : last_activations_6_q0);
assign tmp_383_fu_2064_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_23_q0 : last_activations_7_q0);
assign tmp_384_fu_2072_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_24_q0 : last_activations_8_q0);
assign tmp_385_fu_2080_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_25_q0 : last_activations_9_q0);
assign tmp_386_fu_2088_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_26_q0 : last_activations_10_q0);
assign tmp_387_fu_2134_p3 = ((empty_reg_3355[0:0] == 1'b1) ? last_activations_27_q0 : last_activations_11_q0);
assign tmp_388_fu_2096_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_28_q0 : last_activations_12_q0);
assign tmp_389_fu_2104_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_29_q0 : last_activations_13_q0);
assign tmp_390_fu_2112_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_30_q0 : last_activations_14_q0);
assign tmp_391_fu_2120_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_31_q0 : last_activations_15_q0);
assign tmp_fu_2008_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_16_q0 : last_activations_0_q0);
assign tmp_s_fu_2016_p3 = ((empty_fu_2002_p2[0:0] == 1'b1) ? last_activations_17_q0 : last_activations_1_q0);
assign trunc_ln73_fu_1999_p1 = i_11_reg_3188[4:0];
assign trunc_ln75_fu_2144_p1 = i_11_reg_3188_pp0_iter8_reg[5:0];
assign zext_ln72_fu_1954_p1 = tmp_20_fu_1946_p3;
assign zext_ln75_10_fu_2399_p1 = lshr_ln75_9_fu_2389_p4;
assign zext_ln75_11_fu_2439_p1 = lshr_ln75_s_fu_2429_p4;
assign zext_ln75_12_fu_2461_p1 = lshr_ln75_10_fu_2451_p4;
assign zext_ln75_13_fu_2483_p1 = lshr_ln75_11_fu_2473_p4;
assign zext_ln75_14_fu_2505_p1 = lshr_ln75_12_fu_2495_p4;
assign zext_ln75_15_fu_2527_p1 = lshr_ln75_13_fu_2517_p4;
assign zext_ln75_16_fu_2549_p1 = lshr_ln75_14_fu_2539_p4;
assign zext_ln75_17_fu_2571_p1 = lshr_ln75_15_fu_2561_p4;
assign zext_ln75_18_fu_2593_p1 = lshr_ln75_16_fu_2583_p4;
assign zext_ln75_19_fu_2615_p1 = lshr_ln75_17_fu_2605_p4;
assign zext_ln75_1_fu_2171_p1 = lshr_ln6_fu_2161_p4;
assign zext_ln75_20_fu_2637_p1 = lshr_ln75_18_fu_2627_p4;
assign zext_ln75_21_fu_2659_p1 = lshr_ln75_19_fu_2649_p4;
assign zext_ln75_22_fu_2681_p1 = lshr_ln75_20_fu_2671_p4;
assign zext_ln75_23_fu_2703_p1 = lshr_ln75_21_fu_2693_p4;
assign zext_ln75_24_fu_2725_p1 = lshr_ln75_22_fu_2715_p4;
assign zext_ln75_25_fu_2747_p1 = lshr_ln75_23_fu_2737_p4;
assign zext_ln75_26_fu_2769_p1 = lshr_ln75_24_fu_2759_p4;
assign zext_ln75_27_fu_2791_p1 = lshr_ln75_25_fu_2781_p4;
assign zext_ln75_28_fu_3010_p1 = lshr_ln75_26_fu_3000_p4;
assign zext_ln75_29_fu_3031_p1 = lshr_ln75_27_fu_3021_p4;
assign zext_ln75_2_fu_2223_p1 = lshr_ln75_1_fu_2213_p4;
assign zext_ln75_30_fu_3052_p1 = lshr_ln75_28_fu_3042_p4;
assign zext_ln75_31_fu_2813_p1 = lshr_ln75_29_fu_2803_p4;
assign zext_ln75_32_fu_2835_p1 = lshr_ln75_30_fu_2825_p4;
assign zext_ln75_33_fu_2857_p1 = lshr_ln75_31_fu_2847_p4;
assign zext_ln75_34_fu_3073_p1 = lshr_ln75_32_fu_3063_p4;
assign zext_ln75_35_fu_2879_p1 = lshr_ln75_33_fu_2869_p4;
assign zext_ln75_36_fu_2901_p1 = lshr_ln75_34_fu_2891_p4;
assign zext_ln75_37_fu_2923_p1 = lshr_ln75_35_fu_2913_p4;
assign zext_ln75_38_fu_3094_p1 = lshr_ln75_36_fu_3084_p4;
assign zext_ln75_39_fu_2945_p1 = lshr_ln75_37_fu_2935_p4;
assign zext_ln75_3_fu_2245_p1 = lshr_ln75_2_fu_2235_p4;
assign zext_ln75_40_fu_2967_p1 = lshr_ln75_38_fu_2957_p4;
assign zext_ln75_41_fu_2989_p1 = lshr_ln75_39_fu_2979_p4;
assign zext_ln75_42_fu_3115_p1 = lshr_ln75_40_fu_3105_p4;
assign zext_ln75_4_fu_2267_p1 = lshr_ln75_3_fu_2257_p4;
assign zext_ln75_5_fu_2289_p1 = lshr_ln75_4_fu_2279_p4;
assign zext_ln75_6_fu_2311_p1 = lshr_ln75_5_fu_2301_p4;
assign zext_ln75_7_fu_2333_p1 = lshr_ln75_6_fu_2323_p4;
assign zext_ln75_8_fu_2355_p1 = lshr_ln75_7_fu_2345_p4;
assign zext_ln75_9_fu_2377_p1 = lshr_ln75_8_fu_2367_p4;
assign zext_ln75_fu_2141_p1 = i_11_reg_3188_pp0_iter8_reg;
always @ (posedge ap_clk) begin
    zext_ln72_reg_3199[63:1] <= 63'b000000000000000000000000000000000000000000000000000000000000000;
    tmp_31_reg_3738[3:0] <= 4'b1111;
end
endmodule 
