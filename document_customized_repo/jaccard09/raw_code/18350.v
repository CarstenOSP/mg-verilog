module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_8_address1,delta_weights3_8_ce1,delta_weights3_8_we1,delta_weights3_8_d1,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_9_address1,delta_weights3_9_ce1,delta_weights3_9_we1,delta_weights3_9_d1,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_10_address1,delta_weights3_10_ce1,delta_weights3_10_we1,delta_weights3_10_d1,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_11_address1,delta_weights3_11_ce1,delta_weights3_11_we1,delta_weights3_11_d1,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_12_address1,delta_weights3_12_ce1,delta_weights3_12_we1,delta_weights3_12_d1,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_13_address1,delta_weights3_13_ce1,delta_weights3_13_we1,delta_weights3_13_d1,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_14_address1,delta_weights3_14_ce1,delta_weights3_14_we1,delta_weights3_14_d1,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_15_address1,delta_weights3_15_ce1,delta_weights3_15_we1,delta_weights3_15_d1,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_16_address1,delta_weights3_16_ce1,delta_weights3_16_we1,delta_weights3_16_d1,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_17_address1,delta_weights3_17_ce1,delta_weights3_17_we1,delta_weights3_17_d1,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_18_address1,delta_weights3_18_ce1,delta_weights3_18_we1,delta_weights3_18_d1,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_19_address1,delta_weights3_19_ce1,delta_weights3_19_we1,delta_weights3_19_d1,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_20_address1,delta_weights3_20_ce1,delta_weights3_20_we1,delta_weights3_20_d1,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_21_address1,delta_weights3_21_ce1,delta_weights3_21_we1,delta_weights3_21_d1,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_22_address1,delta_weights3_22_ce1,delta_weights3_22_we1,delta_weights3_22_d1,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_23_address1,delta_weights3_23_ce1,delta_weights3_23_we1,delta_weights3_23_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_0_address1,last_activations_0_ce1,last_activations_0_q1,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_1_address1,last_activations_1_ce1,last_activations_1_q1,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_2_address1,last_activations_2_ce1,last_activations_2_q1,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_3_address1,last_activations_3_ce1,last_activations_3_q1,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_4_address1,last_activations_4_ce1,last_activations_4_q1,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_5_address1,last_activations_5_ce1,last_activations_5_q1,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_6_address1,last_activations_6_ce1,last_activations_6_q1,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_7_address1,last_activations_7_ce1,last_activations_7_q1,grp_fu_3247_p_din0,grp_fu_3247_p_din1,grp_fu_3247_p_dout0,grp_fu_3247_p_ce,grp_fu_3251_p_din0,grp_fu_3251_p_din1,grp_fu_3251_p_dout0,grp_fu_3251_p_ce,grp_fu_3263_p_din0,grp_fu_3263_p_din1,grp_fu_3263_p_dout0,grp_fu_3263_p_ce,grp_fu_3267_p_din0,grp_fu_3267_p_din1,grp_fu_3267_p_dout0,grp_fu_3267_p_ce,grp_fu_3271_p_din0,grp_fu_3271_p_din1,grp_fu_3271_p_dout0,grp_fu_3271_p_ce,grp_fu_3275_p_din0,grp_fu_3275_p_din1,grp_fu_3275_p_dout0,grp_fu_3275_p_ce,grp_fu_3279_p_din0,grp_fu_3279_p_din1,grp_fu_3279_p_dout0,grp_fu_3279_p_ce,grp_fu_3283_p_din0,grp_fu_3283_p_din1,grp_fu_3283_p_dout0,grp_fu_3283_p_ce,grp_fu_3287_p_din0,grp_fu_3287_p_din1,grp_fu_3287_p_dout0,grp_fu_3287_p_ce,grp_fu_3291_p_din0,grp_fu_3291_p_din1,grp_fu_3291_p_dout0,grp_fu_3291_p_ce,grp_fu_3295_p_din0,grp_fu_3295_p_din1,grp_fu_3295_p_dout0,grp_fu_3295_p_ce,grp_fu_3299_p_din0,grp_fu_3299_p_din1,grp_fu_3299_p_dout0,grp_fu_3299_p_ce,grp_fu_3303_p_din0,grp_fu_3303_p_din1,grp_fu_3303_p_dout0,grp_fu_3303_p_ce,grp_fu_3307_p_din0,grp_fu_3307_p_din1,grp_fu_3307_p_dout0,grp_fu_3307_p_ce,grp_fu_3311_p_din0,grp_fu_3311_p_din1,grp_fu_3311_p_dout0,grp_fu_3311_p_ce,grp_fu_3315_p_din0,grp_fu_3315_p_din1,grp_fu_3315_p_dout0,grp_fu_3315_p_ce,grp_fu_3319_p_din0,grp_fu_3319_p_din1,grp_fu_3319_p_dout0,grp_fu_3319_p_ce,grp_fu_3323_p_din0,grp_fu_3323_p_din1,grp_fu_3323_p_dout0,grp_fu_3323_p_ce,grp_fu_3327_p_din0,grp_fu_3327_p_din1,grp_fu_3327_p_dout0,grp_fu_3327_p_ce,grp_fu_3331_p_din0,grp_fu_3331_p_din1,grp_fu_3331_p_dout0,grp_fu_3331_p_ce,grp_fu_3335_p_din0,grp_fu_3335_p_din1,grp_fu_3335_p_dout0,grp_fu_3335_p_ce,grp_fu_3339_p_din0,grp_fu_3339_p_din1,grp_fu_3339_p_dout0,grp_fu_3339_p_ce,grp_fu_3343_p_din0,grp_fu_3343_p_din1,grp_fu_3343_p_dout0,grp_fu_3343_p_ce,grp_fu_3347_p_din0,grp_fu_3347_p_din1,grp_fu_3347_p_dout0,grp_fu_3347_p_ce,grp_fu_3351_p_din0,grp_fu_3351_p_din1,grp_fu_3351_p_dout0,grp_fu_3351_p_ce,grp_fu_3355_p_din0,grp_fu_3355_p_din1,grp_fu_3355_p_dout0,grp_fu_3355_p_ce,grp_fu_3359_p_din0,grp_fu_3359_p_din1,grp_fu_3359_p_dout0,grp_fu_3359_p_ce,grp_fu_3363_p_din0,grp_fu_3363_p_din1,grp_fu_3363_p_dout0,grp_fu_3363_p_ce,grp_fu_3367_p_din0,grp_fu_3367_p_din1,grp_fu_3367_p_dout0,grp_fu_3367_p_ce); 
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
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [2:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [2:0] last_activations_0_address1;
output   last_activations_0_ce1;
input  [63:0] last_activations_0_q1;
output  [2:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [2:0] last_activations_1_address1;
output   last_activations_1_ce1;
input  [63:0] last_activations_1_q1;
output  [2:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [2:0] last_activations_2_address1;
output   last_activations_2_ce1;
input  [63:0] last_activations_2_q1;
output  [2:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [2:0] last_activations_3_address1;
output   last_activations_3_ce1;
input  [63:0] last_activations_3_q1;
output  [2:0] last_activations_4_address0;
output   last_activations_4_ce0;
input  [63:0] last_activations_4_q0;
output  [2:0] last_activations_4_address1;
output   last_activations_4_ce1;
input  [63:0] last_activations_4_q1;
output  [2:0] last_activations_5_address0;
output   last_activations_5_ce0;
input  [63:0] last_activations_5_q0;
output  [2:0] last_activations_5_address1;
output   last_activations_5_ce1;
input  [63:0] last_activations_5_q1;
output  [2:0] last_activations_6_address0;
output   last_activations_6_ce0;
input  [63:0] last_activations_6_q0;
output  [2:0] last_activations_6_address1;
output   last_activations_6_ce1;
input  [63:0] last_activations_6_q1;
output  [2:0] last_activations_7_address0;
output   last_activations_7_ce0;
input  [63:0] last_activations_7_q0;
output  [2:0] last_activations_7_address1;
output   last_activations_7_ce1;
input  [63:0] last_activations_7_q1;
output  [63:0] grp_fu_3247_p_din0;
output  [63:0] grp_fu_3247_p_din1;
input  [63:0] grp_fu_3247_p_dout0;
output   grp_fu_3247_p_ce;
output  [63:0] grp_fu_3251_p_din0;
output  [63:0] grp_fu_3251_p_din1;
input  [63:0] grp_fu_3251_p_dout0;
output   grp_fu_3251_p_ce;
output  [63:0] grp_fu_3263_p_din0;
output  [63:0] grp_fu_3263_p_din1;
input  [63:0] grp_fu_3263_p_dout0;
output   grp_fu_3263_p_ce;
output  [63:0] grp_fu_3267_p_din0;
output  [63:0] grp_fu_3267_p_din1;
input  [63:0] grp_fu_3267_p_dout0;
output   grp_fu_3267_p_ce;
output  [63:0] grp_fu_3271_p_din0;
output  [63:0] grp_fu_3271_p_din1;
input  [63:0] grp_fu_3271_p_dout0;
output   grp_fu_3271_p_ce;
output  [63:0] grp_fu_3275_p_din0;
output  [63:0] grp_fu_3275_p_din1;
input  [63:0] grp_fu_3275_p_dout0;
output   grp_fu_3275_p_ce;
output  [63:0] grp_fu_3279_p_din0;
output  [63:0] grp_fu_3279_p_din1;
input  [63:0] grp_fu_3279_p_dout0;
output   grp_fu_3279_p_ce;
output  [63:0] grp_fu_3283_p_din0;
output  [63:0] grp_fu_3283_p_din1;
input  [63:0] grp_fu_3283_p_dout0;
output   grp_fu_3283_p_ce;
output  [63:0] grp_fu_3287_p_din0;
output  [63:0] grp_fu_3287_p_din1;
input  [63:0] grp_fu_3287_p_dout0;
output   grp_fu_3287_p_ce;
output  [63:0] grp_fu_3291_p_din0;
output  [63:0] grp_fu_3291_p_din1;
input  [63:0] grp_fu_3291_p_dout0;
output   grp_fu_3291_p_ce;
output  [63:0] grp_fu_3295_p_din0;
output  [63:0] grp_fu_3295_p_din1;
input  [63:0] grp_fu_3295_p_dout0;
output   grp_fu_3295_p_ce;
output  [63:0] grp_fu_3299_p_din0;
output  [63:0] grp_fu_3299_p_din1;
input  [63:0] grp_fu_3299_p_dout0;
output   grp_fu_3299_p_ce;
output  [63:0] grp_fu_3303_p_din0;
output  [63:0] grp_fu_3303_p_din1;
input  [63:0] grp_fu_3303_p_dout0;
output   grp_fu_3303_p_ce;
output  [63:0] grp_fu_3307_p_din0;
output  [63:0] grp_fu_3307_p_din1;
input  [63:0] grp_fu_3307_p_dout0;
output   grp_fu_3307_p_ce;
output  [63:0] grp_fu_3311_p_din0;
output  [63:0] grp_fu_3311_p_din1;
input  [63:0] grp_fu_3311_p_dout0;
output   grp_fu_3311_p_ce;
output  [63:0] grp_fu_3315_p_din0;
output  [63:0] grp_fu_3315_p_din1;
input  [63:0] grp_fu_3315_p_dout0;
output   grp_fu_3315_p_ce;
output  [63:0] grp_fu_3319_p_din0;
output  [63:0] grp_fu_3319_p_din1;
input  [63:0] grp_fu_3319_p_dout0;
output   grp_fu_3319_p_ce;
output  [63:0] grp_fu_3323_p_din0;
output  [63:0] grp_fu_3323_p_din1;
input  [63:0] grp_fu_3323_p_dout0;
output   grp_fu_3323_p_ce;
output  [63:0] grp_fu_3327_p_din0;
output  [63:0] grp_fu_3327_p_din1;
input  [63:0] grp_fu_3327_p_dout0;
output   grp_fu_3327_p_ce;
output  [63:0] grp_fu_3331_p_din0;
output  [63:0] grp_fu_3331_p_din1;
input  [63:0] grp_fu_3331_p_dout0;
output   grp_fu_3331_p_ce;
output  [63:0] grp_fu_3335_p_din0;
output  [63:0] grp_fu_3335_p_din1;
input  [63:0] grp_fu_3335_p_dout0;
output   grp_fu_3335_p_ce;
output  [63:0] grp_fu_3339_p_din0;
output  [63:0] grp_fu_3339_p_din1;
input  [63:0] grp_fu_3339_p_dout0;
output   grp_fu_3339_p_ce;
output  [63:0] grp_fu_3343_p_din0;
output  [63:0] grp_fu_3343_p_din1;
input  [63:0] grp_fu_3343_p_dout0;
output   grp_fu_3343_p_ce;
output  [63:0] grp_fu_3347_p_din0;
output  [63:0] grp_fu_3347_p_din1;
input  [63:0] grp_fu_3347_p_dout0;
output   grp_fu_3347_p_ce;
output  [63:0] grp_fu_3351_p_din0;
output  [63:0] grp_fu_3351_p_din1;
input  [63:0] grp_fu_3351_p_dout0;
output   grp_fu_3351_p_ce;
output  [63:0] grp_fu_3355_p_din0;
output  [63:0] grp_fu_3355_p_din1;
input  [63:0] grp_fu_3355_p_dout0;
output   grp_fu_3355_p_ce;
output  [63:0] grp_fu_3359_p_din0;
output  [63:0] grp_fu_3359_p_din1;
input  [63:0] grp_fu_3359_p_dout0;
output   grp_fu_3359_p_ce;
output  [63:0] grp_fu_3363_p_din0;
output  [63:0] grp_fu_3363_p_din1;
input  [63:0] grp_fu_3363_p_dout0;
output   grp_fu_3363_p_ce;
output  [63:0] grp_fu_3367_p_din0;
output  [63:0] grp_fu_3367_p_din1;
input  [63:0] grp_fu_3367_p_dout0;
output   grp_fu_3367_p_ce;
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
wire   [0:0] tmp_54_fu_1136_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln72_fu_1154_p1;
reg   [63:0] zext_ln72_reg_1278;
reg   [63:0] zext_ln72_reg_1278_pp0_iter1_reg;
reg   [63:0] zext_ln72_reg_1278_pp0_iter2_reg;
reg   [63:0] zext_ln72_reg_1278_pp0_iter3_reg;
reg   [63:0] zext_ln72_reg_1278_pp0_iter4_reg;
reg   [63:0] zext_ln72_reg_1278_pp0_iter5_reg;
reg   [63:0] zext_ln72_reg_1278_pp0_iter6_reg;
reg   [63:0] zext_ln72_reg_1278_pp0_iter7_reg;
reg   [63:0] zext_ln72_reg_1278_pp0_iter8_reg;
wire   [63:0] p_cast_fu_1184_p1;
reg   [63:0] p_cast_reg_1346;
reg   [63:0] p_cast_reg_1346_pp0_iter1_reg;
reg   [63:0] p_cast_reg_1346_pp0_iter2_reg;
reg   [63:0] p_cast_reg_1346_pp0_iter3_reg;
reg   [63:0] p_cast_reg_1346_pp0_iter4_reg;
reg   [63:0] p_cast_reg_1346_pp0_iter5_reg;
reg   [63:0] p_cast_reg_1346_pp0_iter6_reg;
reg   [63:0] p_cast_reg_1346_pp0_iter7_reg;
reg   [63:0] p_cast_reg_1346_pp0_iter8_reg;
reg   [63:0] last_activations_0_load_reg_1414;
reg   [63:0] last_activations_1_load_reg_1421;
reg   [63:0] last_activations_2_load_reg_1428;
reg   [63:0] last_activations_3_load_reg_1435;
reg   [63:0] last_activations_4_load_reg_1442;
reg   [63:0] last_activations_5_load_reg_1449;
reg   [63:0] last_activations_6_load_reg_1456;
reg   [63:0] last_activations_7_load_reg_1463;
reg   [63:0] last_activations_0_load_1_reg_1470;
reg   [63:0] last_activations_1_load_1_reg_1477;
reg   [63:0] last_activations_2_load_1_reg_1484;
reg   [63:0] last_activations_3_load_1_reg_1491;
reg   [63:0] last_activations_4_load_1_reg_1498;
reg   [63:0] last_activations_5_load_1_reg_1505;
reg   [63:0] last_activations_6_load_1_reg_1512;
reg   [63:0] last_activations_7_load_1_reg_1519;
wire   [63:0] grp_fu_936_p2;
reg   [63:0] mul_reg_1526;
wire   [63:0] grp_fu_940_p2;
reg   [63:0] mul_s_reg_1531;
wire   [63:0] grp_fu_944_p2;
reg   [63:0] mul_16_reg_1536;
wire   [63:0] grp_fu_948_p2;
reg   [63:0] mul_1_reg_1541;
wire   [63:0] grp_fu_952_p2;
reg   [63:0] mul_1_1_reg_1546;
wire   [63:0] grp_fu_956_p2;
reg   [63:0] mul_1_2_reg_1551;
wire   [63:0] grp_fu_960_p2;
reg   [63:0] mul_2_reg_1556;
wire   [63:0] grp_fu_964_p2;
reg   [63:0] mul_2_1_reg_1561;
wire   [63:0] grp_fu_968_p2;
reg   [63:0] mul_2_2_reg_1566;
wire   [63:0] grp_fu_972_p2;
reg   [63:0] mul_3_reg_1571;
wire   [63:0] grp_fu_976_p2;
reg   [63:0] mul_3_1_reg_1576;
wire   [63:0] grp_fu_980_p2;
reg   [63:0] mul_3_2_reg_1581;
wire   [63:0] grp_fu_984_p2;
reg   [63:0] mul_4_reg_1586;
wire   [63:0] grp_fu_988_p2;
reg   [63:0] mul_4_1_reg_1591;
wire   [63:0] grp_fu_992_p2;
reg   [63:0] mul_4_2_reg_1596;
wire   [63:0] grp_fu_996_p2;
reg   [63:0] mul_5_reg_1601;
reg   [63:0] mul_5_1_reg_1606;
reg   [63:0] mul_5_2_reg_1611;
reg   [63:0] mul_6_reg_1616;
reg   [63:0] mul_6_1_reg_1621;
reg   [63:0] mul_6_2_reg_1626;
reg   [63:0] mul_7_reg_1631;
reg   [63:0] mul_7_1_reg_1636;
reg   [63:0] mul_7_2_reg_1641;
reg   [63:0] mul_8_reg_1646;
reg   [63:0] mul_8_1_reg_1651;
reg   [63:0] mul_8_2_reg_1656;
reg   [63:0] mul_9_reg_1661;
reg   [63:0] mul_9_1_reg_1666;
reg   [63:0] mul_9_2_reg_1671;
reg   [63:0] mul_10_reg_1676;
reg   [63:0] mul_10_1_reg_1681;
reg   [63:0] mul_10_2_reg_1686;
reg   [63:0] mul_11_reg_1691;
reg   [63:0] mul_11_1_reg_1696;
reg   [63:0] mul_11_2_reg_1701;
reg   [63:0] mul_12_reg_1706;
reg   [63:0] mul_12_1_reg_1711;
reg   [63:0] mul_12_2_reg_1716;
reg   [63:0] mul_13_reg_1721;
reg   [63:0] mul_13_1_reg_1726;
reg   [63:0] mul_13_2_reg_1731;
reg   [63:0] mul_14_reg_1736;
reg   [63:0] mul_14_1_reg_1741;
reg   [63:0] mul_14_2_reg_1746;
wire   [63:0] grp_fu_1116_p2;
reg   [63:0] mul_15_reg_1751;
wire   [63:0] grp_fu_1120_p2;
reg   [63:0] mul_15_1_reg_1756;
wire   [63:0] grp_fu_1124_p2;
reg   [63:0] mul_15_2_reg_1761;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_114;
wire   [6:0] add_ln73_fu_1196_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_11;
reg    last_activations_0_ce1_local;
reg    last_activations_0_ce0_local;
reg    last_activations_1_ce1_local;
reg    last_activations_1_ce0_local;
reg    last_activations_2_ce1_local;
reg    last_activations_2_ce0_local;
reg    last_activations_3_ce1_local;
reg    last_activations_3_ce0_local;
reg    last_activations_4_ce1_local;
reg    last_activations_4_ce0_local;
reg    last_activations_5_ce1_local;
reg    last_activations_5_ce0_local;
reg    last_activations_6_ce1_local;
reg    last_activations_6_ce0_local;
reg    last_activations_7_ce1_local;
reg    last_activations_7_ce0_local;
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg    delta_weights3_0_we0_local;
reg    delta_weights3_0_ce0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg    delta_weights3_2_we1_local;
reg    delta_weights3_2_ce1_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg    delta_weights3_3_we1_local;
reg    delta_weights3_3_ce1_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg    delta_weights3_4_we1_local;
reg    delta_weights3_4_ce1_local;
reg    delta_weights3_4_we0_local;
reg    delta_weights3_4_ce0_local;
reg    delta_weights3_5_we1_local;
reg    delta_weights3_5_ce1_local;
reg    delta_weights3_5_we0_local;
reg    delta_weights3_5_ce0_local;
reg    delta_weights3_6_we1_local;
reg    delta_weights3_6_ce1_local;
reg    delta_weights3_6_we0_local;
reg    delta_weights3_6_ce0_local;
reg    delta_weights3_7_we1_local;
reg    delta_weights3_7_ce1_local;
reg    delta_weights3_7_we0_local;
reg    delta_weights3_7_ce0_local;
reg    delta_weights3_8_we1_local;
reg    delta_weights3_8_ce1_local;
reg    delta_weights3_8_we0_local;
reg    delta_weights3_8_ce0_local;
reg    delta_weights3_9_we1_local;
reg    delta_weights3_9_ce1_local;
reg    delta_weights3_9_we0_local;
reg    delta_weights3_9_ce0_local;
reg    delta_weights3_10_we1_local;
reg    delta_weights3_10_ce1_local;
reg    delta_weights3_10_we0_local;
reg    delta_weights3_10_ce0_local;
reg    delta_weights3_11_we1_local;
reg    delta_weights3_11_ce1_local;
reg    delta_weights3_11_we0_local;
reg    delta_weights3_11_ce0_local;
reg    delta_weights3_12_we1_local;
reg    delta_weights3_12_ce1_local;
reg    delta_weights3_12_we0_local;
reg    delta_weights3_12_ce0_local;
reg    delta_weights3_13_we1_local;
reg    delta_weights3_13_ce1_local;
reg    delta_weights3_13_we0_local;
reg    delta_weights3_13_ce0_local;
reg    delta_weights3_14_we1_local;
reg    delta_weights3_14_ce1_local;
reg    delta_weights3_14_we0_local;
reg    delta_weights3_14_ce0_local;
reg    delta_weights3_15_we1_local;
reg    delta_weights3_15_ce1_local;
reg    delta_weights3_15_we0_local;
reg    delta_weights3_15_ce0_local;
reg    delta_weights3_16_we1_local;
reg    delta_weights3_16_ce1_local;
reg    delta_weights3_16_we0_local;
reg    delta_weights3_16_ce0_local;
reg    delta_weights3_17_we1_local;
reg    delta_weights3_17_ce1_local;
reg    delta_weights3_17_we0_local;
reg    delta_weights3_17_ce0_local;
reg    delta_weights3_18_we1_local;
reg    delta_weights3_18_ce1_local;
reg    delta_weights3_18_we0_local;
reg    delta_weights3_18_ce0_local;
reg    delta_weights3_19_we1_local;
reg    delta_weights3_19_ce1_local;
reg    delta_weights3_19_we0_local;
reg    delta_weights3_19_ce0_local;
reg    delta_weights3_20_we1_local;
reg    delta_weights3_20_ce1_local;
reg    delta_weights3_20_we0_local;
reg    delta_weights3_20_ce0_local;
reg    delta_weights3_21_we1_local;
reg    delta_weights3_21_ce1_local;
reg    delta_weights3_21_we0_local;
reg    delta_weights3_21_ce0_local;
reg    delta_weights3_22_we1_local;
reg    delta_weights3_22_ce1_local;
reg    delta_weights3_22_we0_local;
reg    delta_weights3_22_ce0_local;
reg    delta_weights3_23_we1_local;
reg    delta_weights3_23_ce1_local;
reg    delta_weights3_23_we0_local;
reg    delta_weights3_23_ce0_local;
wire   [2:0] lshr_ln_fu_1144_p4;
wire   [1:0] tmp_fu_1166_p4;
wire   [2:0] tmp_s_fu_1176_p3;
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
#0 i_fu_114 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U188(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_0_load_reg_1414),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_936_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U189(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_0_load_reg_1414),.din1(output_difference_0_1_val),.ce(1'b1),.dout(grp_fu_940_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U190(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_0_load_reg_1414),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_944_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U191(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_1_load_reg_1421),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_948_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U192(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_1_load_reg_1421),.din1(output_difference_0_1_val),.ce(1'b1),.dout(grp_fu_952_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U193(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_1_load_reg_1421),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_956_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U194(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_2_load_reg_1428),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_960_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U195(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_2_load_reg_1428),.din1(output_difference_0_1_val),.ce(1'b1),.dout(grp_fu_964_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U196(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_2_load_reg_1428),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_968_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U197(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_3_load_reg_1435),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_972_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U198(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_3_load_reg_1435),.din1(output_difference_0_1_val),.ce(1'b1),.dout(grp_fu_976_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U199(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_3_load_reg_1435),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_980_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U200(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_4_load_reg_1442),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_984_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U201(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_4_load_reg_1442),.din1(output_difference_0_1_val),.ce(1'b1),.dout(grp_fu_988_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U202(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_4_load_reg_1442),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_992_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U203(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_5_load_reg_1449),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_996_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U233(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_7_load_1_reg_1519),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_1116_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U234(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_7_load_1_reg_1519),.din1(output_difference_0_1_val),.ce(1'b1),.dout(grp_fu_1120_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U235(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_7_load_1_reg_1519),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_1124_p2));
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
        if (((tmp_54_fu_1136_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_114 <= add_ln73_fu_1196_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_114 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        p_cast_reg_1346[2 : 1] <= p_cast_fu_1184_p1[2 : 1];
        p_cast_reg_1346_pp0_iter1_reg[2 : 1] <= p_cast_reg_1346[2 : 1];
        zext_ln72_reg_1278[2 : 0] <= zext_ln72_fu_1154_p1[2 : 0];
        zext_ln72_reg_1278_pp0_iter1_reg[2 : 0] <= zext_ln72_reg_1278[2 : 0];
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
        mul_10_1_reg_1681 <= grp_fu_3315_p_dout0;
        mul_10_2_reg_1686 <= grp_fu_3319_p_dout0;
        mul_10_reg_1676 <= grp_fu_3311_p_dout0;
        mul_11_1_reg_1696 <= grp_fu_3327_p_dout0;
        mul_11_2_reg_1701 <= grp_fu_3331_p_dout0;
        mul_11_reg_1691 <= grp_fu_3323_p_dout0;
        mul_12_1_reg_1711 <= grp_fu_3339_p_dout0;
        mul_12_2_reg_1716 <= grp_fu_3343_p_dout0;
        mul_12_reg_1706 <= grp_fu_3335_p_dout0;
        mul_13_1_reg_1726 <= grp_fu_3351_p_dout0;
        mul_13_2_reg_1731 <= grp_fu_3355_p_dout0;
        mul_13_reg_1721 <= grp_fu_3347_p_dout0;
        mul_14_1_reg_1741 <= grp_fu_3363_p_dout0;
        mul_14_2_reg_1746 <= grp_fu_3367_p_dout0;
        mul_14_reg_1736 <= grp_fu_3359_p_dout0;
        mul_15_1_reg_1756 <= grp_fu_1120_p2;
        mul_15_2_reg_1761 <= grp_fu_1124_p2;
        mul_15_reg_1751 <= grp_fu_1116_p2;
        mul_16_reg_1536 <= grp_fu_944_p2;
        mul_1_1_reg_1546 <= grp_fu_952_p2;
        mul_1_2_reg_1551 <= grp_fu_956_p2;
        mul_1_reg_1541 <= grp_fu_948_p2;
        mul_2_1_reg_1561 <= grp_fu_964_p2;
        mul_2_2_reg_1566 <= grp_fu_968_p2;
        mul_2_reg_1556 <= grp_fu_960_p2;
        mul_3_1_reg_1576 <= grp_fu_976_p2;
        mul_3_2_reg_1581 <= grp_fu_980_p2;
        mul_3_reg_1571 <= grp_fu_972_p2;
        mul_4_1_reg_1591 <= grp_fu_988_p2;
        mul_4_2_reg_1596 <= grp_fu_992_p2;
        mul_4_reg_1586 <= grp_fu_984_p2;
        mul_5_1_reg_1606 <= grp_fu_3247_p_dout0;
        mul_5_2_reg_1611 <= grp_fu_3251_p_dout0;
        mul_5_reg_1601 <= grp_fu_996_p2;
        mul_6_1_reg_1621 <= grp_fu_3267_p_dout0;
        mul_6_2_reg_1626 <= grp_fu_3271_p_dout0;
        mul_6_reg_1616 <= grp_fu_3263_p_dout0;
        mul_7_1_reg_1636 <= grp_fu_3279_p_dout0;
        mul_7_2_reg_1641 <= grp_fu_3283_p_dout0;
        mul_7_reg_1631 <= grp_fu_3275_p_dout0;
        mul_8_1_reg_1651 <= grp_fu_3291_p_dout0;
        mul_8_2_reg_1656 <= grp_fu_3295_p_dout0;
        mul_8_reg_1646 <= grp_fu_3287_p_dout0;
        mul_9_1_reg_1666 <= grp_fu_3303_p_dout0;
        mul_9_2_reg_1671 <= grp_fu_3307_p_dout0;
        mul_9_reg_1661 <= grp_fu_3299_p_dout0;
        mul_reg_1526 <= grp_fu_936_p2;
        mul_s_reg_1531 <= grp_fu_940_p2;
        p_cast_reg_1346_pp0_iter2_reg[2 : 1] <= p_cast_reg_1346_pp0_iter1_reg[2 : 1];
        p_cast_reg_1346_pp0_iter3_reg[2 : 1] <= p_cast_reg_1346_pp0_iter2_reg[2 : 1];
        p_cast_reg_1346_pp0_iter4_reg[2 : 1] <= p_cast_reg_1346_pp0_iter3_reg[2 : 1];
        p_cast_reg_1346_pp0_iter5_reg[2 : 1] <= p_cast_reg_1346_pp0_iter4_reg[2 : 1];
        p_cast_reg_1346_pp0_iter6_reg[2 : 1] <= p_cast_reg_1346_pp0_iter5_reg[2 : 1];
        p_cast_reg_1346_pp0_iter7_reg[2 : 1] <= p_cast_reg_1346_pp0_iter6_reg[2 : 1];
        p_cast_reg_1346_pp0_iter8_reg[2 : 1] <= p_cast_reg_1346_pp0_iter7_reg[2 : 1];
        zext_ln72_reg_1278_pp0_iter2_reg[2 : 0] <= zext_ln72_reg_1278_pp0_iter1_reg[2 : 0];
        zext_ln72_reg_1278_pp0_iter3_reg[2 : 0] <= zext_ln72_reg_1278_pp0_iter2_reg[2 : 0];
        zext_ln72_reg_1278_pp0_iter4_reg[2 : 0] <= zext_ln72_reg_1278_pp0_iter3_reg[2 : 0];
        zext_ln72_reg_1278_pp0_iter5_reg[2 : 0] <= zext_ln72_reg_1278_pp0_iter4_reg[2 : 0];
        zext_ln72_reg_1278_pp0_iter6_reg[2 : 0] <= zext_ln72_reg_1278_pp0_iter5_reg[2 : 0];
        zext_ln72_reg_1278_pp0_iter7_reg[2 : 0] <= zext_ln72_reg_1278_pp0_iter6_reg[2 : 0];
        zext_ln72_reg_1278_pp0_iter8_reg[2 : 0] <= zext_ln72_reg_1278_pp0_iter7_reg[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_0_load_1_reg_1470 <= last_activations_0_q0;
        last_activations_0_load_reg_1414 <= last_activations_0_q1;
        last_activations_1_load_1_reg_1477 <= last_activations_1_q0;
        last_activations_1_load_reg_1421 <= last_activations_1_q1;
        last_activations_2_load_1_reg_1484 <= last_activations_2_q0;
        last_activations_2_load_reg_1428 <= last_activations_2_q1;
        last_activations_3_load_1_reg_1491 <= last_activations_3_q0;
        last_activations_3_load_reg_1435 <= last_activations_3_q1;
        last_activations_4_load_1_reg_1498 <= last_activations_4_q0;
        last_activations_4_load_reg_1442 <= last_activations_4_q1;
        last_activations_5_load_1_reg_1505 <= last_activations_5_q0;
        last_activations_5_load_reg_1449 <= last_activations_5_q1;
        last_activations_6_load_1_reg_1512 <= last_activations_6_q0;
        last_activations_6_load_reg_1456 <= last_activations_6_q1;
        last_activations_7_load_1_reg_1519 <= last_activations_7_q0;
        last_activations_7_load_reg_1463 <= last_activations_7_q1;
    end
end
always @ (*) begin
    if (((tmp_54_fu_1136_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_11 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_11 = i_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_10_we1_local = 1'b1;
    end else begin
        delta_weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_11_ce1_local = 1'b1;
    end else begin
        delta_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_11_we1_local = 1'b1;
    end else begin
        delta_weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_12_we1_local = 1'b1;
    end else begin
        delta_weights3_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_13_we1_local = 1'b1;
    end else begin
        delta_weights3_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_14_we1_local = 1'b1;
    end else begin
        delta_weights3_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_15_ce1_local = 1'b1;
    end else begin
        delta_weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_15_we1_local = 1'b1;
    end else begin
        delta_weights3_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_16_ce0_local = 1'b1;
    end else begin
        delta_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_16_ce1_local = 1'b1;
    end else begin
        delta_weights3_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_16_we1_local = 1'b1;
    end else begin
        delta_weights3_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_17_ce0_local = 1'b1;
    end else begin
        delta_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_17_ce1_local = 1'b1;
    end else begin
        delta_weights3_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_17_we1_local = 1'b1;
    end else begin
        delta_weights3_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_18_ce0_local = 1'b1;
    end else begin
        delta_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_18_ce1_local = 1'b1;
    end else begin
        delta_weights3_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_18_we1_local = 1'b1;
    end else begin
        delta_weights3_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_19_ce0_local = 1'b1;
    end else begin
        delta_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_19_ce1_local = 1'b1;
    end else begin
        delta_weights3_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_19_we1_local = 1'b1;
    end else begin
        delta_weights3_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_20_ce0_local = 1'b1;
    end else begin
        delta_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_20_ce1_local = 1'b1;
    end else begin
        delta_weights3_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_20_we1_local = 1'b1;
    end else begin
        delta_weights3_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_21_ce0_local = 1'b1;
    end else begin
        delta_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_21_ce1_local = 1'b1;
    end else begin
        delta_weights3_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_21_we1_local = 1'b1;
    end else begin
        delta_weights3_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_22_ce0_local = 1'b1;
    end else begin
        delta_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_22_ce1_local = 1'b1;
    end else begin
        delta_weights3_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_22_we1_local = 1'b1;
    end else begin
        delta_weights3_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_23_ce0_local = 1'b1;
    end else begin
        delta_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_23_ce1_local = 1'b1;
    end else begin
        delta_weights3_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_23_we1_local = 1'b1;
    end else begin
        delta_weights3_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_8_we1_local = 1'b1;
    end else begin
        delta_weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
        last_activations_0_ce1_local = 1'b1;
    end else begin
        last_activations_0_ce1_local = 1'b0;
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
        last_activations_1_ce1_local = 1'b1;
    end else begin
        last_activations_1_ce1_local = 1'b0;
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
        last_activations_2_ce1_local = 1'b1;
    end else begin
        last_activations_2_ce1_local = 1'b0;
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
        last_activations_3_ce1_local = 1'b1;
    end else begin
        last_activations_3_ce1_local = 1'b0;
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
        last_activations_4_ce1_local = 1'b1;
    end else begin
        last_activations_4_ce1_local = 1'b0;
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
        last_activations_5_ce1_local = 1'b1;
    end else begin
        last_activations_5_ce1_local = 1'b0;
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
        last_activations_6_ce1_local = 1'b1;
    end else begin
        last_activations_6_ce1_local = 1'b0;
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
        last_activations_7_ce1_local = 1'b1;
    end else begin
        last_activations_7_ce1_local = 1'b0;
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
assign add_ln73_fu_1196_p2 = (ap_sig_allocacmp_i_11 + 7'd16);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_0_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = mul_8_reg_1646;
assign delta_weights3_0_d1 = mul_reg_1526;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_10_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_10_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_ce1 = delta_weights3_10_ce1_local;
assign delta_weights3_10_d0 = mul_11_1_reg_1696;
assign delta_weights3_10_d1 = mul_3_1_reg_1576;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_10_we1 = delta_weights3_10_we1_local;
assign delta_weights3_11_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_11_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_ce1 = delta_weights3_11_ce1_local;
assign delta_weights3_11_d0 = mul_11_2_reg_1701;
assign delta_weights3_11_d1 = mul_3_2_reg_1581;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_11_we1 = delta_weights3_11_we1_local;
assign delta_weights3_12_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_12_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_ce1 = delta_weights3_12_ce1_local;
assign delta_weights3_12_d0 = mul_12_reg_1706;
assign delta_weights3_12_d1 = mul_4_reg_1586;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_12_we1 = delta_weights3_12_we1_local;
assign delta_weights3_13_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_13_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_ce1 = delta_weights3_13_ce1_local;
assign delta_weights3_13_d0 = mul_12_1_reg_1711;
assign delta_weights3_13_d1 = mul_4_1_reg_1591;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_13_we1 = delta_weights3_13_we1_local;
assign delta_weights3_14_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_14_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_ce1 = delta_weights3_14_ce1_local;
assign delta_weights3_14_d0 = mul_12_2_reg_1716;
assign delta_weights3_14_d1 = mul_4_2_reg_1596;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_14_we1 = delta_weights3_14_we1_local;
assign delta_weights3_15_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_15_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_ce1 = delta_weights3_15_ce1_local;
assign delta_weights3_15_d0 = mul_13_reg_1721;
assign delta_weights3_15_d1 = mul_5_reg_1601;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_15_we1 = delta_weights3_15_we1_local;
assign delta_weights3_16_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_16_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_16_ce0 = delta_weights3_16_ce0_local;
assign delta_weights3_16_ce1 = delta_weights3_16_ce1_local;
assign delta_weights3_16_d0 = mul_13_1_reg_1726;
assign delta_weights3_16_d1 = mul_5_1_reg_1606;
assign delta_weights3_16_we0 = delta_weights3_16_we0_local;
assign delta_weights3_16_we1 = delta_weights3_16_we1_local;
assign delta_weights3_17_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_17_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_17_ce0 = delta_weights3_17_ce0_local;
assign delta_weights3_17_ce1 = delta_weights3_17_ce1_local;
assign delta_weights3_17_d0 = mul_13_2_reg_1731;
assign delta_weights3_17_d1 = mul_5_2_reg_1611;
assign delta_weights3_17_we0 = delta_weights3_17_we0_local;
assign delta_weights3_17_we1 = delta_weights3_17_we1_local;
assign delta_weights3_18_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_18_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_18_ce0 = delta_weights3_18_ce0_local;
assign delta_weights3_18_ce1 = delta_weights3_18_ce1_local;
assign delta_weights3_18_d0 = mul_14_reg_1736;
assign delta_weights3_18_d1 = mul_6_reg_1616;
assign delta_weights3_18_we0 = delta_weights3_18_we0_local;
assign delta_weights3_18_we1 = delta_weights3_18_we1_local;
assign delta_weights3_19_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_19_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_19_ce0 = delta_weights3_19_ce0_local;
assign delta_weights3_19_ce1 = delta_weights3_19_ce1_local;
assign delta_weights3_19_d0 = mul_14_1_reg_1741;
assign delta_weights3_19_d1 = mul_6_1_reg_1621;
assign delta_weights3_19_we0 = delta_weights3_19_we0_local;
assign delta_weights3_19_we1 = delta_weights3_19_we1_local;
assign delta_weights3_1_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_1_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = mul_8_1_reg_1651;
assign delta_weights3_1_d1 = mul_s_reg_1531;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_20_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_20_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_20_ce0 = delta_weights3_20_ce0_local;
assign delta_weights3_20_ce1 = delta_weights3_20_ce1_local;
assign delta_weights3_20_d0 = mul_14_2_reg_1746;
assign delta_weights3_20_d1 = mul_6_2_reg_1626;
assign delta_weights3_20_we0 = delta_weights3_20_we0_local;
assign delta_weights3_20_we1 = delta_weights3_20_we1_local;
assign delta_weights3_21_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_21_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_21_ce0 = delta_weights3_21_ce0_local;
assign delta_weights3_21_ce1 = delta_weights3_21_ce1_local;
assign delta_weights3_21_d0 = mul_15_reg_1751;
assign delta_weights3_21_d1 = mul_7_reg_1631;
assign delta_weights3_21_we0 = delta_weights3_21_we0_local;
assign delta_weights3_21_we1 = delta_weights3_21_we1_local;
assign delta_weights3_22_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_22_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_22_ce0 = delta_weights3_22_ce0_local;
assign delta_weights3_22_ce1 = delta_weights3_22_ce1_local;
assign delta_weights3_22_d0 = mul_15_1_reg_1756;
assign delta_weights3_22_d1 = mul_7_1_reg_1636;
assign delta_weights3_22_we0 = delta_weights3_22_we0_local;
assign delta_weights3_22_we1 = delta_weights3_22_we1_local;
assign delta_weights3_23_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_23_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_23_ce0 = delta_weights3_23_ce0_local;
assign delta_weights3_23_ce1 = delta_weights3_23_ce1_local;
assign delta_weights3_23_d0 = mul_15_2_reg_1761;
assign delta_weights3_23_d1 = mul_7_2_reg_1641;
assign delta_weights3_23_we0 = delta_weights3_23_we0_local;
assign delta_weights3_23_we1 = delta_weights3_23_we1_local;
assign delta_weights3_2_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_2_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = mul_8_2_reg_1656;
assign delta_weights3_2_d1 = mul_16_reg_1536;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_3_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = mul_9_reg_1661;
assign delta_weights3_3_d1 = mul_1_reg_1541;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_4_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_4_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = mul_9_1_reg_1666;
assign delta_weights3_4_d1 = mul_1_1_reg_1546;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_5_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_5_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = mul_9_2_reg_1671;
assign delta_weights3_5_d1 = mul_1_2_reg_1551;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_6_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_6_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = mul_10_reg_1676;
assign delta_weights3_6_d1 = mul_2_reg_1556;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_7_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = mul_10_1_reg_1681;
assign delta_weights3_7_d1 = mul_2_1_reg_1561;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign delta_weights3_8_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_8_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_ce1 = delta_weights3_8_ce1_local;
assign delta_weights3_8_d0 = mul_10_2_reg_1686;
assign delta_weights3_8_d1 = mul_2_2_reg_1566;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_8_we1 = delta_weights3_8_we1_local;
assign delta_weights3_9_address0 = p_cast_reg_1346_pp0_iter8_reg;
assign delta_weights3_9_address1 = zext_ln72_reg_1278_pp0_iter8_reg;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_ce1 = delta_weights3_9_ce1_local;
assign delta_weights3_9_d0 = mul_11_reg_1691;
assign delta_weights3_9_d1 = mul_3_reg_1571;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_9_we1 = delta_weights3_9_we1_local;
assign grp_fu_3247_p_ce = 1'b1;
assign grp_fu_3247_p_din0 = last_activations_5_load_reg_1449;
assign grp_fu_3247_p_din1 = output_difference_0_1_val;
assign grp_fu_3251_p_ce = 1'b1;
assign grp_fu_3251_p_din0 = last_activations_5_load_reg_1449;
assign grp_fu_3251_p_din1 = output_difference_0_2_val;
assign grp_fu_3263_p_ce = 1'b1;
assign grp_fu_3263_p_din0 = last_activations_6_load_reg_1456;
assign grp_fu_3263_p_din1 = output_difference_0_0_val;
assign grp_fu_3267_p_ce = 1'b1;
assign grp_fu_3267_p_din0 = last_activations_6_load_reg_1456;
assign grp_fu_3267_p_din1 = output_difference_0_1_val;
assign grp_fu_3271_p_ce = 1'b1;
assign grp_fu_3271_p_din0 = last_activations_6_load_reg_1456;
assign grp_fu_3271_p_din1 = output_difference_0_2_val;
assign grp_fu_3275_p_ce = 1'b1;
assign grp_fu_3275_p_din0 = last_activations_7_load_reg_1463;
assign grp_fu_3275_p_din1 = output_difference_0_0_val;
assign grp_fu_3279_p_ce = 1'b1;
assign grp_fu_3279_p_din0 = last_activations_7_load_reg_1463;
assign grp_fu_3279_p_din1 = output_difference_0_1_val;
assign grp_fu_3283_p_ce = 1'b1;
assign grp_fu_3283_p_din0 = last_activations_7_load_reg_1463;
assign grp_fu_3283_p_din1 = output_difference_0_2_val;
assign grp_fu_3287_p_ce = 1'b1;
assign grp_fu_3287_p_din0 = last_activations_0_load_1_reg_1470;
assign grp_fu_3287_p_din1 = output_difference_0_0_val;
assign grp_fu_3291_p_ce = 1'b1;
assign grp_fu_3291_p_din0 = last_activations_0_load_1_reg_1470;
assign grp_fu_3291_p_din1 = output_difference_0_1_val;
assign grp_fu_3295_p_ce = 1'b1;
assign grp_fu_3295_p_din0 = last_activations_0_load_1_reg_1470;
assign grp_fu_3295_p_din1 = output_difference_0_2_val;
assign grp_fu_3299_p_ce = 1'b1;
assign grp_fu_3299_p_din0 = last_activations_1_load_1_reg_1477;
assign grp_fu_3299_p_din1 = output_difference_0_0_val;
assign grp_fu_3303_p_ce = 1'b1;
assign grp_fu_3303_p_din0 = last_activations_1_load_1_reg_1477;
assign grp_fu_3303_p_din1 = output_difference_0_1_val;
assign grp_fu_3307_p_ce = 1'b1;
assign grp_fu_3307_p_din0 = last_activations_1_load_1_reg_1477;
assign grp_fu_3307_p_din1 = output_difference_0_2_val;
assign grp_fu_3311_p_ce = 1'b1;
assign grp_fu_3311_p_din0 = last_activations_2_load_1_reg_1484;
assign grp_fu_3311_p_din1 = output_difference_0_0_val;
assign grp_fu_3315_p_ce = 1'b1;
assign grp_fu_3315_p_din0 = last_activations_2_load_1_reg_1484;
assign grp_fu_3315_p_din1 = output_difference_0_1_val;
assign grp_fu_3319_p_ce = 1'b1;
assign grp_fu_3319_p_din0 = last_activations_2_load_1_reg_1484;
assign grp_fu_3319_p_din1 = output_difference_0_2_val;
assign grp_fu_3323_p_ce = 1'b1;
assign grp_fu_3323_p_din0 = last_activations_3_load_1_reg_1491;
assign grp_fu_3323_p_din1 = output_difference_0_0_val;
assign grp_fu_3327_p_ce = 1'b1;
assign grp_fu_3327_p_din0 = last_activations_3_load_1_reg_1491;
assign grp_fu_3327_p_din1 = output_difference_0_1_val;
assign grp_fu_3331_p_ce = 1'b1;
assign grp_fu_3331_p_din0 = last_activations_3_load_1_reg_1491;
assign grp_fu_3331_p_din1 = output_difference_0_2_val;
assign grp_fu_3335_p_ce = 1'b1;
assign grp_fu_3335_p_din0 = last_activations_4_load_1_reg_1498;
assign grp_fu_3335_p_din1 = output_difference_0_0_val;
assign grp_fu_3339_p_ce = 1'b1;
assign grp_fu_3339_p_din0 = last_activations_4_load_1_reg_1498;
assign grp_fu_3339_p_din1 = output_difference_0_1_val;
assign grp_fu_3343_p_ce = 1'b1;
assign grp_fu_3343_p_din0 = last_activations_4_load_1_reg_1498;
assign grp_fu_3343_p_din1 = output_difference_0_2_val;
assign grp_fu_3347_p_ce = 1'b1;
assign grp_fu_3347_p_din0 = last_activations_5_load_1_reg_1505;
assign grp_fu_3347_p_din1 = output_difference_0_0_val;
assign grp_fu_3351_p_ce = 1'b1;
assign grp_fu_3351_p_din0 = last_activations_5_load_1_reg_1505;
assign grp_fu_3351_p_din1 = output_difference_0_1_val;
assign grp_fu_3355_p_ce = 1'b1;
assign grp_fu_3355_p_din0 = last_activations_5_load_1_reg_1505;
assign grp_fu_3355_p_din1 = output_difference_0_2_val;
assign grp_fu_3359_p_ce = 1'b1;
assign grp_fu_3359_p_din0 = last_activations_6_load_1_reg_1512;
assign grp_fu_3359_p_din1 = output_difference_0_0_val;
assign grp_fu_3363_p_ce = 1'b1;
assign grp_fu_3363_p_din0 = last_activations_6_load_1_reg_1512;
assign grp_fu_3363_p_din1 = output_difference_0_1_val;
assign grp_fu_3367_p_ce = 1'b1;
assign grp_fu_3367_p_din0 = last_activations_6_load_1_reg_1512;
assign grp_fu_3367_p_din1 = output_difference_0_2_val;
assign last_activations_0_address0 = p_cast_fu_1184_p1;
assign last_activations_0_address1 = zext_ln72_fu_1154_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_0_ce1 = last_activations_0_ce1_local;
assign last_activations_1_address0 = p_cast_fu_1184_p1;
assign last_activations_1_address1 = zext_ln72_fu_1154_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_1_ce1 = last_activations_1_ce1_local;
assign last_activations_2_address0 = p_cast_fu_1184_p1;
assign last_activations_2_address1 = zext_ln72_fu_1154_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_2_ce1 = last_activations_2_ce1_local;
assign last_activations_3_address0 = p_cast_fu_1184_p1;
assign last_activations_3_address1 = zext_ln72_fu_1154_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_3_ce1 = last_activations_3_ce1_local;
assign last_activations_4_address0 = p_cast_fu_1184_p1;
assign last_activations_4_address1 = zext_ln72_fu_1154_p1;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_4_ce1 = last_activations_4_ce1_local;
assign last_activations_5_address0 = p_cast_fu_1184_p1;
assign last_activations_5_address1 = zext_ln72_fu_1154_p1;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_5_ce1 = last_activations_5_ce1_local;
assign last_activations_6_address0 = p_cast_fu_1184_p1;
assign last_activations_6_address1 = zext_ln72_fu_1154_p1;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_6_ce1 = last_activations_6_ce1_local;
assign last_activations_7_address0 = p_cast_fu_1184_p1;
assign last_activations_7_address1 = zext_ln72_fu_1154_p1;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
assign last_activations_7_ce1 = last_activations_7_ce1_local;
assign lshr_ln_fu_1144_p4 = {{ap_sig_allocacmp_i_11[5:3]}};
assign p_cast_fu_1184_p1 = tmp_s_fu_1176_p3;
assign tmp_54_fu_1136_p3 = ap_sig_allocacmp_i_11[32'd6];
assign tmp_fu_1166_p4 = {{ap_sig_allocacmp_i_11[5:4]}};
assign tmp_s_fu_1176_p3 = {{tmp_fu_1166_p4}, {1'd1}};
assign zext_ln72_fu_1154_p1 = lshr_ln_fu_1144_p4;
always @ (posedge ap_clk) begin
    zext_ln72_reg_1278[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_1278_pp0_iter1_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_1278_pp0_iter2_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_1278_pp0_iter3_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_1278_pp0_iter4_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_1278_pp0_iter5_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_1278_pp0_iter6_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_1278_pp0_iter7_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_1278_pp0_iter8_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_1346[0] <= 1'b1;
    p_cast_reg_1346[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_1346_pp0_iter1_reg[0] <= 1'b1;
    p_cast_reg_1346_pp0_iter1_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_1346_pp0_iter2_reg[0] <= 1'b1;
    p_cast_reg_1346_pp0_iter2_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_1346_pp0_iter3_reg[0] <= 1'b1;
    p_cast_reg_1346_pp0_iter3_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_1346_pp0_iter4_reg[0] <= 1'b1;
    p_cast_reg_1346_pp0_iter4_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_1346_pp0_iter5_reg[0] <= 1'b1;
    p_cast_reg_1346_pp0_iter5_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_1346_pp0_iter6_reg[0] <= 1'b1;
    p_cast_reg_1346_pp0_iter6_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_1346_pp0_iter7_reg[0] <= 1'b1;
    p_cast_reg_1346_pp0_iter7_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_1346_pp0_iter8_reg[0] <= 1'b1;
    p_cast_reg_1346_pp0_iter8_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 