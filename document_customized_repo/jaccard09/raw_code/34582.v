module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_4_address1,delta_weights2_4_ce1,delta_weights2_4_we1,delta_weights2_4_d1,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_5_address1,delta_weights2_5_ce1,delta_weights2_5_we1,delta_weights2_5_d1,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_6_address1,delta_weights2_6_ce1,delta_weights2_6_we1,delta_weights2_6_d1,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_7_address1,delta_weights2_7_ce1,delta_weights2_7_we1,delta_weights2_7_d1,delta_weights2_8_address0,delta_weights2_8_ce0,delta_weights2_8_we0,delta_weights2_8_d0,delta_weights2_8_address1,delta_weights2_8_ce1,delta_weights2_8_we1,delta_weights2_8_d1,delta_weights2_9_address0,delta_weights2_9_ce0,delta_weights2_9_we0,delta_weights2_9_d0,delta_weights2_9_address1,delta_weights2_9_ce1,delta_weights2_9_we1,delta_weights2_9_d1,delta_weights2_10_address0,delta_weights2_10_ce0,delta_weights2_10_we0,delta_weights2_10_d0,delta_weights2_10_address1,delta_weights2_10_ce1,delta_weights2_10_we1,delta_weights2_10_d1,delta_weights2_11_address0,delta_weights2_11_ce0,delta_weights2_11_we0,delta_weights2_11_d0,delta_weights2_11_address1,delta_weights2_11_ce1,delta_weights2_11_we1,delta_weights2_11_d1,delta_weights2_12_address0,delta_weights2_12_ce0,delta_weights2_12_we0,delta_weights2_12_d0,delta_weights2_12_address1,delta_weights2_12_ce1,delta_weights2_12_we1,delta_weights2_12_d1,delta_weights2_13_address0,delta_weights2_13_ce0,delta_weights2_13_we0,delta_weights2_13_d0,delta_weights2_13_address1,delta_weights2_13_ce1,delta_weights2_13_we1,delta_weights2_13_d1,delta_weights2_14_address0,delta_weights2_14_ce0,delta_weights2_14_we0,delta_weights2_14_d0,delta_weights2_14_address1,delta_weights2_14_ce1,delta_weights2_14_we1,delta_weights2_14_d1,delta_weights2_15_address0,delta_weights2_15_ce0,delta_weights2_15_we0,delta_weights2_15_d0,delta_weights2_15_address1,delta_weights2_15_ce1,delta_weights2_15_we1,delta_weights2_15_d1,delta_weights2_16_address0,delta_weights2_16_ce0,delta_weights2_16_we0,delta_weights2_16_d0,delta_weights2_16_address1,delta_weights2_16_ce1,delta_weights2_16_we1,delta_weights2_16_d1,delta_weights2_17_address0,delta_weights2_17_ce0,delta_weights2_17_we0,delta_weights2_17_d0,delta_weights2_17_address1,delta_weights2_17_ce1,delta_weights2_17_we1,delta_weights2_17_d1,delta_weights2_18_address0,delta_weights2_18_ce0,delta_weights2_18_we0,delta_weights2_18_d0,delta_weights2_18_address1,delta_weights2_18_ce1,delta_weights2_18_we1,delta_weights2_18_d1,delta_weights2_19_address0,delta_weights2_19_ce0,delta_weights2_19_we0,delta_weights2_19_d0,delta_weights2_19_address1,delta_weights2_19_ce1,delta_weights2_19_we1,delta_weights2_19_d1,delta_weights2_20_address0,delta_weights2_20_ce0,delta_weights2_20_we0,delta_weights2_20_d0,delta_weights2_20_address1,delta_weights2_20_ce1,delta_weights2_20_we1,delta_weights2_20_d1,delta_weights2_21_address0,delta_weights2_21_ce0,delta_weights2_21_we0,delta_weights2_21_d0,delta_weights2_21_address1,delta_weights2_21_ce1,delta_weights2_21_we1,delta_weights2_21_d1,delta_weights2_22_address0,delta_weights2_22_ce0,delta_weights2_22_we0,delta_weights2_22_d0,delta_weights2_22_address1,delta_weights2_22_ce1,delta_weights2_22_we1,delta_weights2_22_d1,delta_weights2_23_address0,delta_weights2_23_ce0,delta_weights2_23_we0,delta_weights2_23_d0,delta_weights2_23_address1,delta_weights2_23_ce1,delta_weights2_23_we1,delta_weights2_23_d1,delta_weights2_24_address0,delta_weights2_24_ce0,delta_weights2_24_we0,delta_weights2_24_d0,delta_weights2_24_address1,delta_weights2_24_ce1,delta_weights2_24_we1,delta_weights2_24_d1,delta_weights2_25_address0,delta_weights2_25_ce0,delta_weights2_25_we0,delta_weights2_25_d0,delta_weights2_25_address1,delta_weights2_25_ce1,delta_weights2_25_we1,delta_weights2_25_d1,delta_weights2_26_address0,delta_weights2_26_ce0,delta_weights2_26_we0,delta_weights2_26_d0,delta_weights2_26_address1,delta_weights2_26_ce1,delta_weights2_26_we1,delta_weights2_26_d1,delta_weights2_27_address0,delta_weights2_27_ce0,delta_weights2_27_we0,delta_weights2_27_d0,delta_weights2_27_address1,delta_weights2_27_ce1,delta_weights2_27_we1,delta_weights2_27_d1,delta_weights2_28_address0,delta_weights2_28_ce0,delta_weights2_28_we0,delta_weights2_28_d0,delta_weights2_28_address1,delta_weights2_28_ce1,delta_weights2_28_we1,delta_weights2_28_d1,delta_weights2_29_address0,delta_weights2_29_ce0,delta_weights2_29_we0,delta_weights2_29_d0,delta_weights2_29_address1,delta_weights2_29_ce1,delta_weights2_29_we1,delta_weights2_29_d1,delta_weights2_30_address0,delta_weights2_30_ce0,delta_weights2_30_we0,delta_weights2_30_d0,delta_weights2_30_address1,delta_weights2_30_ce1,delta_weights2_30_we1,delta_weights2_30_d1,delta_weights2_31_address0,delta_weights2_31_ce0,delta_weights2_31_we0,delta_weights2_31_d0,delta_weights2_31_address1,delta_weights2_31_ce1,delta_weights2_31_we1,delta_weights2_31_d1,output_difference_address0,output_difference_ce0,output_difference_q0,output_difference_address1,output_difference_ce1,output_difference_q1,output_difference_address2,output_difference_ce2,output_difference_q2,output_difference_address3,output_difference_ce3,output_difference_q3,output_difference_address4,output_difference_ce4,output_difference_q4,output_difference_address5,output_difference_ce5,output_difference_q5,output_difference_address6,output_difference_ce6,output_difference_q6,output_difference_address7,output_difference_ce7,output_difference_q7,output_difference_address8,output_difference_ce8,output_difference_q8,output_difference_address9,output_difference_ce9,output_difference_q9,output_difference_address10,output_difference_ce10,output_difference_q10,output_difference_address11,output_difference_ce11,output_difference_q11,output_difference_address12,output_difference_ce12,output_difference_q12,output_difference_address13,output_difference_ce13,output_difference_q13,output_difference_address14,output_difference_ce14,output_difference_q14,output_difference_address15,output_difference_ce15,output_difference_q15,output_difference_address16,output_difference_ce16,output_difference_q16,last_activations_address0,last_activations_ce0,last_activations_q0,grp_fu_3151_p_din0,grp_fu_3151_p_din1,grp_fu_3151_p_dout0,grp_fu_3151_p_ce,grp_fu_3155_p_din0,grp_fu_3155_p_din1,grp_fu_3155_p_dout0,grp_fu_3155_p_ce,grp_fu_3159_p_din0,grp_fu_3159_p_din1,grp_fu_3159_p_dout0,grp_fu_3159_p_ce,grp_fu_3163_p_din0,grp_fu_3163_p_din1,grp_fu_3163_p_dout0,grp_fu_3163_p_ce,grp_fu_3167_p_din0,grp_fu_3167_p_din1,grp_fu_3167_p_dout0,grp_fu_3167_p_ce,grp_fu_3171_p_din0,grp_fu_3171_p_din1,grp_fu_3171_p_dout0,grp_fu_3171_p_ce,grp_fu_3175_p_din0,grp_fu_3175_p_din1,grp_fu_3175_p_dout0,grp_fu_3175_p_ce,grp_fu_3179_p_din0,grp_fu_3179_p_din1,grp_fu_3179_p_dout0,grp_fu_3179_p_ce,grp_fu_3183_p_din0,grp_fu_3183_p_din1,grp_fu_3183_p_dout0,grp_fu_3183_p_ce,grp_fu_3187_p_din0,grp_fu_3187_p_din1,grp_fu_3187_p_dout0,grp_fu_3187_p_ce,grp_fu_3191_p_din0,grp_fu_3191_p_din1,grp_fu_3191_p_dout0,grp_fu_3191_p_ce,grp_fu_3195_p_din0,grp_fu_3195_p_din1,grp_fu_3195_p_dout0,grp_fu_3195_p_ce,grp_fu_3199_p_din0,grp_fu_3199_p_din1,grp_fu_3199_p_dout0,grp_fu_3199_p_ce,grp_fu_3203_p_din0,grp_fu_3203_p_din1,grp_fu_3203_p_dout0,grp_fu_3203_p_ce,grp_fu_3207_p_din0,grp_fu_3207_p_din1,grp_fu_3207_p_dout0,grp_fu_3207_p_ce,grp_fu_3211_p_din0,grp_fu_3211_p_din1,grp_fu_3211_p_dout0,grp_fu_3211_p_ce,grp_fu_3215_p_din0,grp_fu_3215_p_din1,grp_fu_3215_p_dout0,grp_fu_3215_p_ce,grp_fu_3219_p_din0,grp_fu_3219_p_din1,grp_fu_3219_p_dout0,grp_fu_3219_p_ce,grp_fu_3223_p_din0,grp_fu_3223_p_din1,grp_fu_3223_p_dout0,grp_fu_3223_p_ce,grp_fu_3227_p_din0,grp_fu_3227_p_din1,grp_fu_3227_p_dout0,grp_fu_3227_p_ce,grp_fu_3231_p_din0,grp_fu_3231_p_din1,grp_fu_3231_p_dout0,grp_fu_3231_p_ce,grp_fu_3235_p_din0,grp_fu_3235_p_din1,grp_fu_3235_p_dout0,grp_fu_3235_p_ce,grp_fu_3239_p_din0,grp_fu_3239_p_din1,grp_fu_3239_p_dout0,grp_fu_3239_p_ce,grp_fu_3243_p_din0,grp_fu_3243_p_din1,grp_fu_3243_p_dout0,grp_fu_3243_p_ce,grp_fu_3247_p_din0,grp_fu_3247_p_din1,grp_fu_3247_p_dout0,grp_fu_3247_p_ce,grp_fu_3251_p_din0,grp_fu_3251_p_din1,grp_fu_3251_p_dout0,grp_fu_3251_p_ce,grp_fu_3255_p_din0,grp_fu_3255_p_din1,grp_fu_3255_p_dout0,grp_fu_3255_p_ce,grp_fu_3259_p_din0,grp_fu_3259_p_din1,grp_fu_3259_p_dout0,grp_fu_3259_p_ce,grp_fu_3263_p_din0,grp_fu_3263_p_din1,grp_fu_3263_p_dout0,grp_fu_3263_p_ce,grp_fu_3267_p_din0,grp_fu_3267_p_din1,grp_fu_3267_p_dout0,grp_fu_3267_p_ce,grp_fu_3271_p_din0,grp_fu_3271_p_din1,grp_fu_3271_p_dout0,grp_fu_3271_p_ce,grp_fu_3275_p_din0,grp_fu_3275_p_din1,grp_fu_3275_p_dout0,grp_fu_3275_p_ce,grp_fu_3279_p_din0,grp_fu_3279_p_din1,grp_fu_3279_p_dout0,grp_fu_3279_p_ce,grp_fu_3283_p_din0,grp_fu_3283_p_din1,grp_fu_3283_p_dout0,grp_fu_3283_p_ce,grp_fu_3287_p_din0,grp_fu_3287_p_din1,grp_fu_3287_p_dout0,grp_fu_3287_p_ce,grp_fu_3315_p_din0,grp_fu_3315_p_din1,grp_fu_3315_p_dout0,grp_fu_3315_p_ce,grp_fu_3319_p_din0,grp_fu_3319_p_din1,grp_fu_3319_p_dout0,grp_fu_3319_p_ce,grp_fu_3323_p_din0,grp_fu_3323_p_din1,grp_fu_3323_p_dout0,grp_fu_3323_p_ce,grp_fu_3327_p_din0,grp_fu_3327_p_din1,grp_fu_3327_p_dout0,grp_fu_3327_p_ce,grp_fu_3331_p_din0,grp_fu_3331_p_din1,grp_fu_3331_p_dout0,grp_fu_3331_p_ce,grp_fu_3335_p_din0,grp_fu_3335_p_din1,grp_fu_3335_p_dout0,grp_fu_3335_p_ce,grp_fu_3339_p_din0,grp_fu_3339_p_din1,grp_fu_3339_p_dout0,grp_fu_3339_p_ce,grp_fu_3343_p_din0,grp_fu_3343_p_din1,grp_fu_3343_p_dout0,grp_fu_3343_p_ce,grp_fu_3347_p_din0,grp_fu_3347_p_din1,grp_fu_3347_p_dout0,grp_fu_3347_p_ce,grp_fu_3351_p_din0,grp_fu_3351_p_din1,grp_fu_3351_p_dout0,grp_fu_3351_p_ce,grp_fu_3355_p_din0,grp_fu_3355_p_din1,grp_fu_3355_p_dout0,grp_fu_3355_p_ce,grp_fu_3359_p_din0,grp_fu_3359_p_din1,grp_fu_3359_p_dout0,grp_fu_3359_p_ce,grp_fu_3363_p_din0,grp_fu_3363_p_din1,grp_fu_3363_p_dout0,grp_fu_3363_p_ce,grp_fu_3375_p_din0,grp_fu_3375_p_din1,grp_fu_3375_p_dout0,grp_fu_3375_p_ce,grp_fu_3379_p_din0,grp_fu_3379_p_din1,grp_fu_3379_p_dout0,grp_fu_3379_p_ce,grp_fu_3383_p_din0,grp_fu_3383_p_din1,grp_fu_3383_p_dout0,grp_fu_3383_p_ce,grp_fu_3387_p_din0,grp_fu_3387_p_din1,grp_fu_3387_p_dout0,grp_fu_3387_p_ce,grp_fu_3391_p_din0,grp_fu_3391_p_din1,grp_fu_3391_p_dout0,grp_fu_3391_p_ce,grp_fu_3395_p_din0,grp_fu_3395_p_din1,grp_fu_3395_p_dout0,grp_fu_3395_p_ce,grp_fu_3399_p_din0,grp_fu_3399_p_din1,grp_fu_3399_p_dout0,grp_fu_3399_p_ce,grp_fu_3403_p_din0,grp_fu_3403_p_din1,grp_fu_3403_p_dout0,grp_fu_3403_p_ce,grp_fu_3407_p_din0,grp_fu_3407_p_din1,grp_fu_3407_p_dout0,grp_fu_3407_p_ce,grp_fu_3411_p_din0,grp_fu_3411_p_din1,grp_fu_3411_p_dout0,grp_fu_3411_p_ce,grp_fu_3415_p_din0,grp_fu_3415_p_din1,grp_fu_3415_p_dout0,grp_fu_3415_p_ce,grp_fu_3419_p_din0,grp_fu_3419_p_din1,grp_fu_3419_p_dout0,grp_fu_3419_p_ce,grp_fu_3423_p_din0,grp_fu_3423_p_din1,grp_fu_3423_p_dout0,grp_fu_3423_p_ce,grp_fu_3427_p_din0,grp_fu_3427_p_din1,grp_fu_3427_p_dout0,grp_fu_3427_p_ce,grp_fu_3431_p_din0,grp_fu_3431_p_din1,grp_fu_3431_p_dout0,grp_fu_3431_p_ce,grp_fu_3435_p_din0,grp_fu_3435_p_din1,grp_fu_3435_p_dout0,grp_fu_3435_p_ce); 
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
output  [6:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [6:0] delta_weights2_0_address1;
output   delta_weights2_0_ce1;
output   delta_weights2_0_we1;
output  [63:0] delta_weights2_0_d1;
output  [6:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [6:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
output  [6:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [6:0] delta_weights2_2_address1;
output   delta_weights2_2_ce1;
output   delta_weights2_2_we1;
output  [63:0] delta_weights2_2_d1;
output  [6:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [6:0] delta_weights2_3_address1;
output   delta_weights2_3_ce1;
output   delta_weights2_3_we1;
output  [63:0] delta_weights2_3_d1;
output  [6:0] delta_weights2_4_address0;
output   delta_weights2_4_ce0;
output   delta_weights2_4_we0;
output  [63:0] delta_weights2_4_d0;
output  [6:0] delta_weights2_4_address1;
output   delta_weights2_4_ce1;
output   delta_weights2_4_we1;
output  [63:0] delta_weights2_4_d1;
output  [6:0] delta_weights2_5_address0;
output   delta_weights2_5_ce0;
output   delta_weights2_5_we0;
output  [63:0] delta_weights2_5_d0;
output  [6:0] delta_weights2_5_address1;
output   delta_weights2_5_ce1;
output   delta_weights2_5_we1;
output  [63:0] delta_weights2_5_d1;
output  [6:0] delta_weights2_6_address0;
output   delta_weights2_6_ce0;
output   delta_weights2_6_we0;
output  [63:0] delta_weights2_6_d0;
output  [6:0] delta_weights2_6_address1;
output   delta_weights2_6_ce1;
output   delta_weights2_6_we1;
output  [63:0] delta_weights2_6_d1;
output  [6:0] delta_weights2_7_address0;
output   delta_weights2_7_ce0;
output   delta_weights2_7_we0;
output  [63:0] delta_weights2_7_d0;
output  [6:0] delta_weights2_7_address1;
output   delta_weights2_7_ce1;
output   delta_weights2_7_we1;
output  [63:0] delta_weights2_7_d1;
output  [6:0] delta_weights2_8_address0;
output   delta_weights2_8_ce0;
output   delta_weights2_8_we0;
output  [63:0] delta_weights2_8_d0;
output  [6:0] delta_weights2_8_address1;
output   delta_weights2_8_ce1;
output   delta_weights2_8_we1;
output  [63:0] delta_weights2_8_d1;
output  [6:0] delta_weights2_9_address0;
output   delta_weights2_9_ce0;
output   delta_weights2_9_we0;
output  [63:0] delta_weights2_9_d0;
output  [6:0] delta_weights2_9_address1;
output   delta_weights2_9_ce1;
output   delta_weights2_9_we1;
output  [63:0] delta_weights2_9_d1;
output  [6:0] delta_weights2_10_address0;
output   delta_weights2_10_ce0;
output   delta_weights2_10_we0;
output  [63:0] delta_weights2_10_d0;
output  [6:0] delta_weights2_10_address1;
output   delta_weights2_10_ce1;
output   delta_weights2_10_we1;
output  [63:0] delta_weights2_10_d1;
output  [6:0] delta_weights2_11_address0;
output   delta_weights2_11_ce0;
output   delta_weights2_11_we0;
output  [63:0] delta_weights2_11_d0;
output  [6:0] delta_weights2_11_address1;
output   delta_weights2_11_ce1;
output   delta_weights2_11_we1;
output  [63:0] delta_weights2_11_d1;
output  [6:0] delta_weights2_12_address0;
output   delta_weights2_12_ce0;
output   delta_weights2_12_we0;
output  [63:0] delta_weights2_12_d0;
output  [6:0] delta_weights2_12_address1;
output   delta_weights2_12_ce1;
output   delta_weights2_12_we1;
output  [63:0] delta_weights2_12_d1;
output  [6:0] delta_weights2_13_address0;
output   delta_weights2_13_ce0;
output   delta_weights2_13_we0;
output  [63:0] delta_weights2_13_d0;
output  [6:0] delta_weights2_13_address1;
output   delta_weights2_13_ce1;
output   delta_weights2_13_we1;
output  [63:0] delta_weights2_13_d1;
output  [6:0] delta_weights2_14_address0;
output   delta_weights2_14_ce0;
output   delta_weights2_14_we0;
output  [63:0] delta_weights2_14_d0;
output  [6:0] delta_weights2_14_address1;
output   delta_weights2_14_ce1;
output   delta_weights2_14_we1;
output  [63:0] delta_weights2_14_d1;
output  [6:0] delta_weights2_15_address0;
output   delta_weights2_15_ce0;
output   delta_weights2_15_we0;
output  [63:0] delta_weights2_15_d0;
output  [6:0] delta_weights2_15_address1;
output   delta_weights2_15_ce1;
output   delta_weights2_15_we1;
output  [63:0] delta_weights2_15_d1;
output  [6:0] delta_weights2_16_address0;
output   delta_weights2_16_ce0;
output   delta_weights2_16_we0;
output  [63:0] delta_weights2_16_d0;
output  [6:0] delta_weights2_16_address1;
output   delta_weights2_16_ce1;
output   delta_weights2_16_we1;
output  [63:0] delta_weights2_16_d1;
output  [6:0] delta_weights2_17_address0;
output   delta_weights2_17_ce0;
output   delta_weights2_17_we0;
output  [63:0] delta_weights2_17_d0;
output  [6:0] delta_weights2_17_address1;
output   delta_weights2_17_ce1;
output   delta_weights2_17_we1;
output  [63:0] delta_weights2_17_d1;
output  [6:0] delta_weights2_18_address0;
output   delta_weights2_18_ce0;
output   delta_weights2_18_we0;
output  [63:0] delta_weights2_18_d0;
output  [6:0] delta_weights2_18_address1;
output   delta_weights2_18_ce1;
output   delta_weights2_18_we1;
output  [63:0] delta_weights2_18_d1;
output  [6:0] delta_weights2_19_address0;
output   delta_weights2_19_ce0;
output   delta_weights2_19_we0;
output  [63:0] delta_weights2_19_d0;
output  [6:0] delta_weights2_19_address1;
output   delta_weights2_19_ce1;
output   delta_weights2_19_we1;
output  [63:0] delta_weights2_19_d1;
output  [6:0] delta_weights2_20_address0;
output   delta_weights2_20_ce0;
output   delta_weights2_20_we0;
output  [63:0] delta_weights2_20_d0;
output  [6:0] delta_weights2_20_address1;
output   delta_weights2_20_ce1;
output   delta_weights2_20_we1;
output  [63:0] delta_weights2_20_d1;
output  [6:0] delta_weights2_21_address0;
output   delta_weights2_21_ce0;
output   delta_weights2_21_we0;
output  [63:0] delta_weights2_21_d0;
output  [6:0] delta_weights2_21_address1;
output   delta_weights2_21_ce1;
output   delta_weights2_21_we1;
output  [63:0] delta_weights2_21_d1;
output  [6:0] delta_weights2_22_address0;
output   delta_weights2_22_ce0;
output   delta_weights2_22_we0;
output  [63:0] delta_weights2_22_d0;
output  [6:0] delta_weights2_22_address1;
output   delta_weights2_22_ce1;
output   delta_weights2_22_we1;
output  [63:0] delta_weights2_22_d1;
output  [6:0] delta_weights2_23_address0;
output   delta_weights2_23_ce0;
output   delta_weights2_23_we0;
output  [63:0] delta_weights2_23_d0;
output  [6:0] delta_weights2_23_address1;
output   delta_weights2_23_ce1;
output   delta_weights2_23_we1;
output  [63:0] delta_weights2_23_d1;
output  [6:0] delta_weights2_24_address0;
output   delta_weights2_24_ce0;
output   delta_weights2_24_we0;
output  [63:0] delta_weights2_24_d0;
output  [6:0] delta_weights2_24_address1;
output   delta_weights2_24_ce1;
output   delta_weights2_24_we1;
output  [63:0] delta_weights2_24_d1;
output  [6:0] delta_weights2_25_address0;
output   delta_weights2_25_ce0;
output   delta_weights2_25_we0;
output  [63:0] delta_weights2_25_d0;
output  [6:0] delta_weights2_25_address1;
output   delta_weights2_25_ce1;
output   delta_weights2_25_we1;
output  [63:0] delta_weights2_25_d1;
output  [6:0] delta_weights2_26_address0;
output   delta_weights2_26_ce0;
output   delta_weights2_26_we0;
output  [63:0] delta_weights2_26_d0;
output  [6:0] delta_weights2_26_address1;
output   delta_weights2_26_ce1;
output   delta_weights2_26_we1;
output  [63:0] delta_weights2_26_d1;
output  [6:0] delta_weights2_27_address0;
output   delta_weights2_27_ce0;
output   delta_weights2_27_we0;
output  [63:0] delta_weights2_27_d0;
output  [6:0] delta_weights2_27_address1;
output   delta_weights2_27_ce1;
output   delta_weights2_27_we1;
output  [63:0] delta_weights2_27_d1;
output  [6:0] delta_weights2_28_address0;
output   delta_weights2_28_ce0;
output   delta_weights2_28_we0;
output  [63:0] delta_weights2_28_d0;
output  [6:0] delta_weights2_28_address1;
output   delta_weights2_28_ce1;
output   delta_weights2_28_we1;
output  [63:0] delta_weights2_28_d1;
output  [6:0] delta_weights2_29_address0;
output   delta_weights2_29_ce0;
output   delta_weights2_29_we0;
output  [63:0] delta_weights2_29_d0;
output  [6:0] delta_weights2_29_address1;
output   delta_weights2_29_ce1;
output   delta_weights2_29_we1;
output  [63:0] delta_weights2_29_d1;
output  [6:0] delta_weights2_30_address0;
output   delta_weights2_30_ce0;
output   delta_weights2_30_we0;
output  [63:0] delta_weights2_30_d0;
output  [6:0] delta_weights2_30_address1;
output   delta_weights2_30_ce1;
output   delta_weights2_30_we1;
output  [63:0] delta_weights2_30_d1;
output  [6:0] delta_weights2_31_address0;
output   delta_weights2_31_ce0;
output   delta_weights2_31_we0;
output  [63:0] delta_weights2_31_d0;
output  [6:0] delta_weights2_31_address1;
output   delta_weights2_31_ce1;
output   delta_weights2_31_we1;
output  [63:0] delta_weights2_31_d1;
output  [5:0] output_difference_address0;
output   output_difference_ce0;
input  [63:0] output_difference_q0;
output  [5:0] output_difference_address1;
output   output_difference_ce1;
input  [63:0] output_difference_q1;
output  [5:0] output_difference_address2;
output   output_difference_ce2;
input  [63:0] output_difference_q2;
output  [5:0] output_difference_address3;
output   output_difference_ce3;
input  [63:0] output_difference_q3;
output  [5:0] output_difference_address4;
output   output_difference_ce4;
input  [63:0] output_difference_q4;
output  [5:0] output_difference_address5;
output   output_difference_ce5;
input  [63:0] output_difference_q5;
output  [5:0] output_difference_address6;
output   output_difference_ce6;
input  [63:0] output_difference_q6;
output  [5:0] output_difference_address7;
output   output_difference_ce7;
input  [63:0] output_difference_q7;
output  [5:0] output_difference_address8;
output   output_difference_ce8;
input  [63:0] output_difference_q8;
output  [5:0] output_difference_address9;
output   output_difference_ce9;
input  [63:0] output_difference_q9;
output  [5:0] output_difference_address10;
output   output_difference_ce10;
input  [63:0] output_difference_q10;
output  [5:0] output_difference_address11;
output   output_difference_ce11;
input  [63:0] output_difference_q11;
output  [5:0] output_difference_address12;
output   output_difference_ce12;
input  [63:0] output_difference_q12;
output  [5:0] output_difference_address13;
output   output_difference_ce13;
input  [63:0] output_difference_q13;
output  [5:0] output_difference_address14;
output   output_difference_ce14;
input  [63:0] output_difference_q14;
output  [5:0] output_difference_address15;
output   output_difference_ce15;
input  [63:0] output_difference_q15;
output  [5:0] output_difference_address16;
output   output_difference_ce16;
input  [63:0] output_difference_q16;
output  [5:0] last_activations_address0;
output   last_activations_ce0;
input  [63:0] last_activations_q0;
output  [63:0] grp_fu_3151_p_din0;
output  [63:0] grp_fu_3151_p_din1;
input  [63:0] grp_fu_3151_p_dout0;
output   grp_fu_3151_p_ce;
output  [63:0] grp_fu_3155_p_din0;
output  [63:0] grp_fu_3155_p_din1;
input  [63:0] grp_fu_3155_p_dout0;
output   grp_fu_3155_p_ce;
output  [63:0] grp_fu_3159_p_din0;
output  [63:0] grp_fu_3159_p_din1;
input  [63:0] grp_fu_3159_p_dout0;
output   grp_fu_3159_p_ce;
output  [63:0] grp_fu_3163_p_din0;
output  [63:0] grp_fu_3163_p_din1;
input  [63:0] grp_fu_3163_p_dout0;
output   grp_fu_3163_p_ce;
output  [63:0] grp_fu_3167_p_din0;
output  [63:0] grp_fu_3167_p_din1;
input  [63:0] grp_fu_3167_p_dout0;
output   grp_fu_3167_p_ce;
output  [63:0] grp_fu_3171_p_din0;
output  [63:0] grp_fu_3171_p_din1;
input  [63:0] grp_fu_3171_p_dout0;
output   grp_fu_3171_p_ce;
output  [63:0] grp_fu_3175_p_din0;
output  [63:0] grp_fu_3175_p_din1;
input  [63:0] grp_fu_3175_p_dout0;
output   grp_fu_3175_p_ce;
output  [63:0] grp_fu_3179_p_din0;
output  [63:0] grp_fu_3179_p_din1;
input  [63:0] grp_fu_3179_p_dout0;
output   grp_fu_3179_p_ce;
output  [63:0] grp_fu_3183_p_din0;
output  [63:0] grp_fu_3183_p_din1;
input  [63:0] grp_fu_3183_p_dout0;
output   grp_fu_3183_p_ce;
output  [63:0] grp_fu_3187_p_din0;
output  [63:0] grp_fu_3187_p_din1;
input  [63:0] grp_fu_3187_p_dout0;
output   grp_fu_3187_p_ce;
output  [63:0] grp_fu_3191_p_din0;
output  [63:0] grp_fu_3191_p_din1;
input  [63:0] grp_fu_3191_p_dout0;
output   grp_fu_3191_p_ce;
output  [63:0] grp_fu_3195_p_din0;
output  [63:0] grp_fu_3195_p_din1;
input  [63:0] grp_fu_3195_p_dout0;
output   grp_fu_3195_p_ce;
output  [63:0] grp_fu_3199_p_din0;
output  [63:0] grp_fu_3199_p_din1;
input  [63:0] grp_fu_3199_p_dout0;
output   grp_fu_3199_p_ce;
output  [63:0] grp_fu_3203_p_din0;
output  [63:0] grp_fu_3203_p_din1;
input  [63:0] grp_fu_3203_p_dout0;
output   grp_fu_3203_p_ce;
output  [63:0] grp_fu_3207_p_din0;
output  [63:0] grp_fu_3207_p_din1;
input  [63:0] grp_fu_3207_p_dout0;
output   grp_fu_3207_p_ce;
output  [63:0] grp_fu_3211_p_din0;
output  [63:0] grp_fu_3211_p_din1;
input  [63:0] grp_fu_3211_p_dout0;
output   grp_fu_3211_p_ce;
output  [63:0] grp_fu_3215_p_din0;
output  [63:0] grp_fu_3215_p_din1;
input  [63:0] grp_fu_3215_p_dout0;
output   grp_fu_3215_p_ce;
output  [63:0] grp_fu_3219_p_din0;
output  [63:0] grp_fu_3219_p_din1;
input  [63:0] grp_fu_3219_p_dout0;
output   grp_fu_3219_p_ce;
output  [63:0] grp_fu_3223_p_din0;
output  [63:0] grp_fu_3223_p_din1;
input  [63:0] grp_fu_3223_p_dout0;
output   grp_fu_3223_p_ce;
output  [63:0] grp_fu_3227_p_din0;
output  [63:0] grp_fu_3227_p_din1;
input  [63:0] grp_fu_3227_p_dout0;
output   grp_fu_3227_p_ce;
output  [63:0] grp_fu_3231_p_din0;
output  [63:0] grp_fu_3231_p_din1;
input  [63:0] grp_fu_3231_p_dout0;
output   grp_fu_3231_p_ce;
output  [63:0] grp_fu_3235_p_din0;
output  [63:0] grp_fu_3235_p_din1;
input  [63:0] grp_fu_3235_p_dout0;
output   grp_fu_3235_p_ce;
output  [63:0] grp_fu_3239_p_din0;
output  [63:0] grp_fu_3239_p_din1;
input  [63:0] grp_fu_3239_p_dout0;
output   grp_fu_3239_p_ce;
output  [63:0] grp_fu_3243_p_din0;
output  [63:0] grp_fu_3243_p_din1;
input  [63:0] grp_fu_3243_p_dout0;
output   grp_fu_3243_p_ce;
output  [63:0] grp_fu_3247_p_din0;
output  [63:0] grp_fu_3247_p_din1;
input  [63:0] grp_fu_3247_p_dout0;
output   grp_fu_3247_p_ce;
output  [63:0] grp_fu_3251_p_din0;
output  [63:0] grp_fu_3251_p_din1;
input  [63:0] grp_fu_3251_p_dout0;
output   grp_fu_3251_p_ce;
output  [63:0] grp_fu_3255_p_din0;
output  [63:0] grp_fu_3255_p_din1;
input  [63:0] grp_fu_3255_p_dout0;
output   grp_fu_3255_p_ce;
output  [63:0] grp_fu_3259_p_din0;
output  [63:0] grp_fu_3259_p_din1;
input  [63:0] grp_fu_3259_p_dout0;
output   grp_fu_3259_p_ce;
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
output  [63:0] grp_fu_3375_p_din0;
output  [63:0] grp_fu_3375_p_din1;
input  [63:0] grp_fu_3375_p_dout0;
output   grp_fu_3375_p_ce;
output  [63:0] grp_fu_3379_p_din0;
output  [63:0] grp_fu_3379_p_din1;
input  [63:0] grp_fu_3379_p_dout0;
output   grp_fu_3379_p_ce;
output  [63:0] grp_fu_3383_p_din0;
output  [63:0] grp_fu_3383_p_din1;
input  [63:0] grp_fu_3383_p_dout0;
output   grp_fu_3383_p_ce;
output  [63:0] grp_fu_3387_p_din0;
output  [63:0] grp_fu_3387_p_din1;
input  [63:0] grp_fu_3387_p_dout0;
output   grp_fu_3387_p_ce;
output  [63:0] grp_fu_3391_p_din0;
output  [63:0] grp_fu_3391_p_din1;
input  [63:0] grp_fu_3391_p_dout0;
output   grp_fu_3391_p_ce;
output  [63:0] grp_fu_3395_p_din0;
output  [63:0] grp_fu_3395_p_din1;
input  [63:0] grp_fu_3395_p_dout0;
output   grp_fu_3395_p_ce;
output  [63:0] grp_fu_3399_p_din0;
output  [63:0] grp_fu_3399_p_din1;
input  [63:0] grp_fu_3399_p_dout0;
output   grp_fu_3399_p_ce;
output  [63:0] grp_fu_3403_p_din0;
output  [63:0] grp_fu_3403_p_din1;
input  [63:0] grp_fu_3403_p_dout0;
output   grp_fu_3403_p_ce;
output  [63:0] grp_fu_3407_p_din0;
output  [63:0] grp_fu_3407_p_din1;
input  [63:0] grp_fu_3407_p_dout0;
output   grp_fu_3407_p_ce;
output  [63:0] grp_fu_3411_p_din0;
output  [63:0] grp_fu_3411_p_din1;
input  [63:0] grp_fu_3411_p_dout0;
output   grp_fu_3411_p_ce;
output  [63:0] grp_fu_3415_p_din0;
output  [63:0] grp_fu_3415_p_din1;
input  [63:0] grp_fu_3415_p_dout0;
output   grp_fu_3415_p_ce;
output  [63:0] grp_fu_3419_p_din0;
output  [63:0] grp_fu_3419_p_din1;
input  [63:0] grp_fu_3419_p_dout0;
output   grp_fu_3419_p_ce;
output  [63:0] grp_fu_3423_p_din0;
output  [63:0] grp_fu_3423_p_din1;
input  [63:0] grp_fu_3423_p_dout0;
output   grp_fu_3423_p_ce;
output  [63:0] grp_fu_3427_p_din0;
output  [63:0] grp_fu_3427_p_din1;
input  [63:0] grp_fu_3427_p_dout0;
output   grp_fu_3427_p_ce;
output  [63:0] grp_fu_3431_p_din0;
output  [63:0] grp_fu_3431_p_din1;
input  [63:0] grp_fu_3431_p_dout0;
output   grp_fu_3431_p_ce;
output  [63:0] grp_fu_3435_p_din0;
output  [63:0] grp_fu_3435_p_din1;
input  [63:0] grp_fu_3435_p_dout0;
output   grp_fu_3435_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_load_reg_1059;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_load_1_reg_1064;
reg   [63:0] output_difference_load_2_reg_1069;
reg   [63:0] output_difference_load_3_reg_1074;
reg   [63:0] output_difference_load_4_reg_1079;
reg   [63:0] output_difference_load_5_reg_1084;
reg   [63:0] output_difference_load_6_reg_1089;
reg   [63:0] output_difference_load_7_reg_1094;
reg   [63:0] output_difference_load_8_reg_1099;
reg   [63:0] output_difference_load_9_reg_1104;
reg   [63:0] output_difference_load_10_reg_1109;
reg   [63:0] output_difference_load_11_reg_1114;
reg   [63:0] output_difference_load_12_reg_1119;
reg   [63:0] output_difference_load_13_reg_1209;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_load_14_reg_1214;
reg   [63:0] output_difference_load_15_reg_1219;
reg   [63:0] output_difference_load_16_reg_1224;
reg   [63:0] output_difference_load_17_reg_1229;
reg   [63:0] output_difference_load_18_reg_1234;
reg   [63:0] output_difference_load_19_reg_1239;
reg   [63:0] output_difference_load_20_reg_1244;
reg   [63:0] output_difference_load_21_reg_1249;
reg   [63:0] output_difference_load_22_reg_1254;
reg   [63:0] output_difference_load_23_reg_1259;
reg   [63:0] output_difference_load_24_reg_1264;
reg   [63:0] output_difference_load_25_reg_1269;
reg   [63:0] output_difference_load_26_reg_1274;
reg   [63:0] output_difference_load_27_reg_1279;
reg   [63:0] output_difference_load_28_reg_1284;
reg   [63:0] output_difference_load_29_reg_1289;
reg   [63:0] output_difference_load_30_reg_1379;
wire    ap_CS_fsm_state4;
reg   [63:0] output_difference_load_31_reg_1384;
reg   [63:0] output_difference_load_32_reg_1389;
reg   [63:0] output_difference_load_33_reg_1394;
reg   [63:0] output_difference_load_34_reg_1399;
reg   [63:0] output_difference_load_35_reg_1404;
reg   [63:0] output_difference_load_36_reg_1409;
reg   [63:0] output_difference_load_37_reg_1414;
reg   [63:0] output_difference_load_38_reg_1419;
reg   [63:0] output_difference_load_39_reg_1424;
reg   [63:0] output_difference_load_40_reg_1429;
reg   [63:0] output_difference_load_41_reg_1434;
reg   [63:0] output_difference_load_42_reg_1439;
reg   [63:0] output_difference_load_43_reg_1444;
reg   [63:0] output_difference_load_44_reg_1449;
reg   [63:0] output_difference_load_45_reg_1454;
reg   [63:0] output_difference_load_46_reg_1459;
reg   [63:0] output_difference_load_47_reg_1549;
wire    ap_CS_fsm_state5;
reg   [63:0] output_difference_load_48_reg_1554;
reg   [63:0] output_difference_load_49_reg_1559;
reg   [63:0] output_difference_load_50_reg_1564;
reg   [63:0] output_difference_load_51_reg_1569;
reg   [63:0] output_difference_load_52_reg_1574;
reg   [63:0] output_difference_load_53_reg_1579;
reg   [63:0] output_difference_load_54_reg_1584;
reg   [63:0] output_difference_load_55_reg_1589;
reg   [63:0] output_difference_load_56_reg_1594;
reg   [63:0] output_difference_load_57_reg_1599;
reg   [63:0] output_difference_load_58_reg_1604;
reg   [63:0] output_difference_load_59_reg_1609;
reg   [63:0] output_difference_load_60_reg_1614;
reg   [63:0] output_difference_load_61_reg_1619;
reg   [63:0] output_difference_load_62_reg_1624;
reg   [63:0] output_difference_load_63_reg_1629;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_start;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_done;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_idle;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_ready;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_d1;
wire   [5:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_last_activations_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_last_activations_ce0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1634_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1634_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1634_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1638_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1638_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1638_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1642_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1642_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1642_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1646_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1646_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1646_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1650_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1650_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1650_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1654_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1654_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1654_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1658_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1658_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1658_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1662_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1662_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1662_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1666_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1666_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1666_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1670_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1670_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1670_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1674_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1674_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1674_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1678_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1678_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1678_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1682_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1682_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1682_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1686_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1686_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1686_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1690_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1690_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1690_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1694_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1694_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1694_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1698_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1698_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1698_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1702_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1702_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1702_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1706_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1706_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1706_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1710_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1710_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1710_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1714_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1714_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1714_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1718_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1718_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1718_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1722_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1722_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1722_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1726_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1726_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1726_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1730_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1730_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1730_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1734_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1734_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1734_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1738_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1738_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1738_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1742_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1742_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1742_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1746_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1746_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1746_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1750_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1750_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1750_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1754_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1754_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1754_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1758_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1758_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1758_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1762_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1762_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1762_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1766_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1766_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1766_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1770_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1770_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1770_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1774_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1774_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1774_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1778_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1778_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1778_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1782_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1782_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1782_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1786_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1786_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1786_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1790_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1790_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1790_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1794_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1794_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1794_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1798_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1798_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1798_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1802_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1802_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1802_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1806_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1806_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1806_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1810_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1810_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1810_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1814_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1814_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1814_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1818_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1818_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1818_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1822_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1822_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1822_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1826_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1826_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1826_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1830_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1830_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1830_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1834_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1834_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1834_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1838_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1838_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1838_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1842_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1842_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1842_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1846_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1846_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1846_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1850_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1850_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1850_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1854_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1854_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1854_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1858_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1858_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1858_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1862_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1862_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1862_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1866_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1866_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1866_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1870_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1870_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1870_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1874_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1874_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1874_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1878_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1878_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1878_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1882_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1882_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1882_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1886_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1886_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1886_p_ce;
reg    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    output_difference_ce12_local;
reg   [5:0] output_difference_address12_local;
reg    output_difference_ce11_local;
reg   [5:0] output_difference_address11_local;
reg    output_difference_ce10_local;
reg   [5:0] output_difference_address10_local;
reg    output_difference_ce9_local;
reg   [5:0] output_difference_address9_local;
reg    output_difference_ce8_local;
reg   [5:0] output_difference_address8_local;
reg    output_difference_ce7_local;
reg   [5:0] output_difference_address7_local;
reg    output_difference_ce6_local;
reg   [5:0] output_difference_address6_local;
reg    output_difference_ce5_local;
reg   [5:0] output_difference_address5_local;
reg    output_difference_ce4_local;
reg   [5:0] output_difference_address4_local;
reg    output_difference_ce3_local;
reg   [5:0] output_difference_address3_local;
reg    output_difference_ce2_local;
reg   [5:0] output_difference_address2_local;
reg    output_difference_ce1_local;
reg   [5:0] output_difference_address1_local;
reg    output_difference_ce0_local;
reg   [5:0] output_difference_address0_local;
reg    output_difference_ce16_local;
reg   [5:0] output_difference_address16_local;
reg    output_difference_ce15_local;
reg   [5:0] output_difference_address15_local;
reg    output_difference_ce14_local;
reg   [5:0] output_difference_address14_local;
reg    output_difference_ce13_local;
reg   [5:0] output_difference_address13_local;
reg    grp_fu_1634_ce;
reg    grp_fu_1638_ce;
reg    grp_fu_1642_ce;
reg    grp_fu_1646_ce;
reg    grp_fu_1650_ce;
reg    grp_fu_1654_ce;
reg    grp_fu_1658_ce;
reg    grp_fu_1662_ce;
reg    grp_fu_1666_ce;
reg    grp_fu_1670_ce;
reg    grp_fu_1674_ce;
reg    grp_fu_1678_ce;
reg    grp_fu_1682_ce;
reg    grp_fu_1686_ce;
reg    grp_fu_1690_ce;
reg    grp_fu_1694_ce;
reg    grp_fu_1698_ce;
reg    grp_fu_1702_ce;
reg    grp_fu_1706_ce;
reg    grp_fu_1710_ce;
reg    grp_fu_1714_ce;
reg    grp_fu_1718_ce;
reg    grp_fu_1722_ce;
reg    grp_fu_1726_ce;
reg    grp_fu_1730_ce;
reg    grp_fu_1734_ce;
reg    grp_fu_1738_ce;
reg    grp_fu_1742_ce;
reg    grp_fu_1746_ce;
reg    grp_fu_1750_ce;
reg    grp_fu_1754_ce;
reg    grp_fu_1758_ce;
reg    grp_fu_1762_ce;
reg    grp_fu_1766_ce;
reg    grp_fu_1770_ce;
reg    grp_fu_1774_ce;
reg    grp_fu_1778_ce;
reg    grp_fu_1782_ce;
reg    grp_fu_1786_ce;
reg    grp_fu_1790_ce;
reg    grp_fu_1794_ce;
reg    grp_fu_1798_ce;
reg    grp_fu_1802_ce;
reg    grp_fu_1806_ce;
reg    grp_fu_1810_ce;
reg    grp_fu_1814_ce;
reg    grp_fu_1818_ce;
reg    grp_fu_1822_ce;
reg    grp_fu_1826_ce;
reg    grp_fu_1830_ce;
reg    grp_fu_1834_ce;
reg    grp_fu_1838_ce;
reg    grp_fu_1842_ce;
reg    grp_fu_1846_ce;
reg    grp_fu_1850_ce;
reg    grp_fu_1854_ce;
reg    grp_fu_1858_ce;
reg    grp_fu_1862_ce;
reg    grp_fu_1866_ce;
reg    grp_fu_1870_ce;
reg    grp_fu_1874_ce;
reg    grp_fu_1878_ce;
reg    grp_fu_1882_ce;
reg    grp_fu_1886_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_start),.ap_done(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_done),.ap_idle(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_idle),.ap_ready(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_ready),.delta_weights2_31_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_address0),.delta_weights2_31_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_ce0),.delta_weights2_31_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_we0),.delta_weights2_31_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_d0),.delta_weights2_31_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_address1),.delta_weights2_31_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_ce1),.delta_weights2_31_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_we1),.delta_weights2_31_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_d1),.delta_weights2_30_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_address0),.delta_weights2_30_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_ce0),.delta_weights2_30_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_we0),.delta_weights2_30_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_d0),.delta_weights2_30_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_address1),.delta_weights2_30_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_ce1),.delta_weights2_30_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_we1),.delta_weights2_30_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_d1),.delta_weights2_29_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_address0),.delta_weights2_29_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_ce0),.delta_weights2_29_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_we0),.delta_weights2_29_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_d0),.delta_weights2_29_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_address1),.delta_weights2_29_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_ce1),.delta_weights2_29_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_we1),.delta_weights2_29_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_d1),.delta_weights2_28_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_address0),.delta_weights2_28_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_ce0),.delta_weights2_28_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_we0),.delta_weights2_28_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_d0),.delta_weights2_28_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_address1),.delta_weights2_28_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_ce1),.delta_weights2_28_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_we1),.delta_weights2_28_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_d1),.delta_weights2_27_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_address0),.delta_weights2_27_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_ce0),.delta_weights2_27_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_we0),.delta_weights2_27_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_d0),.delta_weights2_27_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_address1),.delta_weights2_27_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_ce1),.delta_weights2_27_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_we1),.delta_weights2_27_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_d1),.delta_weights2_26_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_address0),.delta_weights2_26_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_ce0),.delta_weights2_26_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_we0),.delta_weights2_26_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_d0),.delta_weights2_26_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_address1),.delta_weights2_26_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_ce1),.delta_weights2_26_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_we1),.delta_weights2_26_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_d1),.delta_weights2_25_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_address0),.delta_weights2_25_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_ce0),.delta_weights2_25_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_we0),.delta_weights2_25_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_d0),.delta_weights2_25_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_address1),.delta_weights2_25_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_ce1),.delta_weights2_25_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_we1),.delta_weights2_25_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_d1),.delta_weights2_24_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_address0),.delta_weights2_24_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_ce0),.delta_weights2_24_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_we0),.delta_weights2_24_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_d0),.delta_weights2_24_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_address1),.delta_weights2_24_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_ce1),.delta_weights2_24_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_we1),.delta_weights2_24_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_d1),.delta_weights2_23_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_address0),.delta_weights2_23_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_ce0),.delta_weights2_23_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_we0),.delta_weights2_23_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_d0),.delta_weights2_23_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_address1),.delta_weights2_23_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_ce1),.delta_weights2_23_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_we1),.delta_weights2_23_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_d1),.delta_weights2_22_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_address0),.delta_weights2_22_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_ce0),.delta_weights2_22_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_we0),.delta_weights2_22_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_d0),.delta_weights2_22_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_address1),.delta_weights2_22_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_ce1),.delta_weights2_22_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_we1),.delta_weights2_22_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_d1),.delta_weights2_21_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_address0),.delta_weights2_21_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_ce0),.delta_weights2_21_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_we0),.delta_weights2_21_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_d0),.delta_weights2_21_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_address1),.delta_weights2_21_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_ce1),.delta_weights2_21_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_we1),.delta_weights2_21_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_d1),.delta_weights2_20_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_address0),.delta_weights2_20_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_ce0),.delta_weights2_20_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_we0),.delta_weights2_20_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_d0),.delta_weights2_20_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_address1),.delta_weights2_20_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_ce1),.delta_weights2_20_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_we1),.delta_weights2_20_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_d1),.delta_weights2_19_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_address0),.delta_weights2_19_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_ce0),.delta_weights2_19_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_we0),.delta_weights2_19_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_d0),.delta_weights2_19_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_address1),.delta_weights2_19_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_ce1),.delta_weights2_19_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_we1),.delta_weights2_19_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_d1),.delta_weights2_18_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_address0),.delta_weights2_18_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_ce0),.delta_weights2_18_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_we0),.delta_weights2_18_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_d0),.delta_weights2_18_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_address1),.delta_weights2_18_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_ce1),.delta_weights2_18_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_we1),.delta_weights2_18_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_d1),.delta_weights2_17_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_address0),.delta_weights2_17_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_ce0),.delta_weights2_17_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_we0),.delta_weights2_17_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_d0),.delta_weights2_17_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_address1),.delta_weights2_17_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_ce1),.delta_weights2_17_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_we1),.delta_weights2_17_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_d1),.delta_weights2_16_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_address0),.delta_weights2_16_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_ce0),.delta_weights2_16_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_we0),.delta_weights2_16_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_d0),.delta_weights2_16_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_address1),.delta_weights2_16_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_ce1),.delta_weights2_16_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_we1),.delta_weights2_16_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_d1),.delta_weights2_15_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_address0),.delta_weights2_15_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_ce0),.delta_weights2_15_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_we0),.delta_weights2_15_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_d0),.delta_weights2_15_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_address1),.delta_weights2_15_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_ce1),.delta_weights2_15_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_we1),.delta_weights2_15_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_d1),.delta_weights2_14_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_address0),.delta_weights2_14_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_ce0),.delta_weights2_14_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_we0),.delta_weights2_14_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_d0),.delta_weights2_14_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_address1),.delta_weights2_14_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_ce1),.delta_weights2_14_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_we1),.delta_weights2_14_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_d1),.delta_weights2_13_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_address0),.delta_weights2_13_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_ce0),.delta_weights2_13_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_we0),.delta_weights2_13_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_d0),.delta_weights2_13_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_address1),.delta_weights2_13_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_ce1),.delta_weights2_13_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_we1),.delta_weights2_13_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_d1),.delta_weights2_12_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_address0),.delta_weights2_12_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_ce0),.delta_weights2_12_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_we0),.delta_weights2_12_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_d0),.delta_weights2_12_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_address1),.delta_weights2_12_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_ce1),.delta_weights2_12_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_we1),.delta_weights2_12_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_d1),.delta_weights2_11_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_address0),.delta_weights2_11_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_ce0),.delta_weights2_11_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_we0),.delta_weights2_11_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_d0),.delta_weights2_11_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_address1),.delta_weights2_11_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_ce1),.delta_weights2_11_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_we1),.delta_weights2_11_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_d1),.delta_weights2_10_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_address0),.delta_weights2_10_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_ce0),.delta_weights2_10_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_we0),.delta_weights2_10_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_d0),.delta_weights2_10_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_address1),.delta_weights2_10_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_ce1),.delta_weights2_10_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_we1),.delta_weights2_10_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_d1),.delta_weights2_9_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_address0),.delta_weights2_9_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_ce0),.delta_weights2_9_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_we0),.delta_weights2_9_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_d0),.delta_weights2_9_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_address1),.delta_weights2_9_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_ce1),.delta_weights2_9_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_we1),.delta_weights2_9_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_d1),.delta_weights2_8_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_address0),.delta_weights2_8_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_ce0),.delta_weights2_8_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_we0),.delta_weights2_8_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_d0),.delta_weights2_8_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_address1),.delta_weights2_8_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_ce1),.delta_weights2_8_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_we1),.delta_weights2_8_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_d1),.delta_weights2_7_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_address0),.delta_weights2_7_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_ce0),.delta_weights2_7_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_we0),.delta_weights2_7_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_d0),.delta_weights2_7_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_address1),.delta_weights2_7_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_ce1),.delta_weights2_7_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_we1),.delta_weights2_7_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_d1),.delta_weights2_6_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_address0),.delta_weights2_6_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_ce0),.delta_weights2_6_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_we0),.delta_weights2_6_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_d0),.delta_weights2_6_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_address1),.delta_weights2_6_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_ce1),.delta_weights2_6_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_we1),.delta_weights2_6_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_d1),.delta_weights2_5_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_address0),.delta_weights2_5_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_ce0),.delta_weights2_5_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_we0),.delta_weights2_5_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_d0),.delta_weights2_5_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_address1),.delta_weights2_5_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_ce1),.delta_weights2_5_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_we1),.delta_weights2_5_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_d1),.delta_weights2_4_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_address0),.delta_weights2_4_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_ce0),.delta_weights2_4_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_we0),.delta_weights2_4_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_d0),.delta_weights2_4_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_address1),.delta_weights2_4_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_ce1),.delta_weights2_4_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_we1),.delta_weights2_4_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_d1),.delta_weights2_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_address0),.delta_weights2_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_ce0),.delta_weights2_3_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_we0),.delta_weights2_3_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_d0),.delta_weights2_3_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_address1),.delta_weights2_3_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_ce1),.delta_weights2_3_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_we1),.delta_weights2_3_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_d1),.delta_weights2_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_address0),.delta_weights2_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_ce0),.delta_weights2_2_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_we0),.delta_weights2_2_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_d0),.delta_weights2_2_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_address1),.delta_weights2_2_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_ce1),.delta_weights2_2_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_we1),.delta_weights2_2_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_d1),.delta_weights2_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_we0),.delta_weights2_1_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_d0),.delta_weights2_1_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_we1),.delta_weights2_1_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_d1),.delta_weights2_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_address0),.delta_weights2_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_ce0),.delta_weights2_0_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_we0),.delta_weights2_0_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_d0),.delta_weights2_0_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_address1),.delta_weights2_0_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_ce1),.delta_weights2_0_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_we1),.delta_weights2_0_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_d1),.last_activations_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_last_activations_address0),.last_activations_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_last_activations_ce0),.last_activations_q0(last_activations_q0),.output_difference_load(output_difference_load_reg_1059),.output_difference_load_1(output_difference_load_1_reg_1064),.output_difference_load_2(output_difference_load_2_reg_1069),.output_difference_load_3(output_difference_load_3_reg_1074),.output_difference_load_4(output_difference_load_4_reg_1079),.output_difference_load_5(output_difference_load_5_reg_1084),.output_difference_load_6(output_difference_load_6_reg_1089),.output_difference_load_7(output_difference_load_7_reg_1094),.output_difference_load_8(output_difference_load_8_reg_1099),.output_difference_load_9(output_difference_load_9_reg_1104),.output_difference_load_10(output_difference_load_10_reg_1109),.output_difference_load_11(output_difference_load_11_reg_1114),.output_difference_load_12(output_difference_load_12_reg_1119),.output_difference_load_13(output_difference_load_13_reg_1209),.output_difference_load_14(output_difference_load_14_reg_1214),.output_difference_load_15(output_difference_load_15_reg_1219),.output_difference_load_16(output_difference_load_16_reg_1224),.output_difference_load_17(output_difference_load_17_reg_1229),.output_difference_load_18(output_difference_load_18_reg_1234),.output_difference_load_19(output_difference_load_19_reg_1239),.output_difference_load_20(output_difference_load_20_reg_1244),.output_difference_load_21(output_difference_load_21_reg_1249),.output_difference_load_22(output_difference_load_22_reg_1254),.output_difference_load_23(output_difference_load_23_reg_1259),.output_difference_load_24(output_difference_load_24_reg_1264),.output_difference_load_25(output_difference_load_25_reg_1269),.output_difference_load_26(output_difference_load_26_reg_1274),.output_difference_load_27(output_difference_load_27_reg_1279),.output_difference_load_28(output_difference_load_28_reg_1284),.output_difference_load_29(output_difference_load_29_reg_1289),.output_difference_load_30(output_difference_load_30_reg_1379),.output_difference_load_31(output_difference_load_31_reg_1384),.output_difference_load_32(output_difference_load_32_reg_1389),.output_difference_load_33(output_difference_load_33_reg_1394),.output_difference_load_34(output_difference_load_34_reg_1399),.output_difference_load_35(output_difference_load_35_reg_1404),.output_difference_load_36(output_difference_load_36_reg_1409),.output_difference_load_37(output_difference_load_37_reg_1414),.output_difference_load_38(output_difference_load_38_reg_1419),.output_difference_load_39(output_difference_load_39_reg_1424),.output_difference_load_40(output_difference_load_40_reg_1429),.output_difference_load_41(output_difference_load_41_reg_1434),.output_difference_load_42(output_difference_load_42_reg_1439),.output_difference_load_43(output_difference_load_43_reg_1444),.output_difference_load_44(output_difference_load_44_reg_1449),.output_difference_load_45(output_difference_load_45_reg_1454),.output_difference_load_46(output_difference_load_46_reg_1459),.output_difference_load_47(output_difference_load_47_reg_1549),.output_difference_load_48(output_difference_load_48_reg_1554),.output_difference_load_49(output_difference_load_49_reg_1559),.output_difference_load_50(output_difference_load_50_reg_1564),.output_difference_load_51(output_difference_load_51_reg_1569),.output_difference_load_52(output_difference_load_52_reg_1574),.output_difference_load_53(output_difference_load_53_reg_1579),.output_difference_load_54(output_difference_load_54_reg_1584),.output_difference_load_55(output_difference_load_55_reg_1589),.output_difference_load_56(output_difference_load_56_reg_1594),.output_difference_load_57(output_difference_load_57_reg_1599),.output_difference_load_58(output_difference_load_58_reg_1604),.output_difference_load_59(output_difference_load_59_reg_1609),.output_difference_load_60(output_difference_load_60_reg_1614),.output_difference_load_61(output_difference_load_61_reg_1619),.output_difference_load_62(output_difference_load_62_reg_1624),.output_difference_load_63(output_difference_load_63_reg_1629),.grp_fu_1634_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1634_p_din0),.grp_fu_1634_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1634_p_din1),.grp_fu_1634_p_dout0(grp_fu_3151_p_dout0),.grp_fu_1634_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1634_p_ce),.grp_fu_1638_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1638_p_din0),.grp_fu_1638_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1638_p_din1),.grp_fu_1638_p_dout0(grp_fu_3155_p_dout0),.grp_fu_1638_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1638_p_ce),.grp_fu_1642_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1642_p_din0),.grp_fu_1642_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1642_p_din1),.grp_fu_1642_p_dout0(grp_fu_3159_p_dout0),.grp_fu_1642_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1642_p_ce),.grp_fu_1646_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1646_p_din0),.grp_fu_1646_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1646_p_din1),.grp_fu_1646_p_dout0(grp_fu_3163_p_dout0),.grp_fu_1646_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1646_p_ce),.grp_fu_1650_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1650_p_din0),.grp_fu_1650_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1650_p_din1),.grp_fu_1650_p_dout0(grp_fu_3167_p_dout0),.grp_fu_1650_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1650_p_ce),.grp_fu_1654_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1654_p_din0),.grp_fu_1654_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1654_p_din1),.grp_fu_1654_p_dout0(grp_fu_3171_p_dout0),.grp_fu_1654_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1654_p_ce),.grp_fu_1658_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1658_p_din0),.grp_fu_1658_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1658_p_din1),.grp_fu_1658_p_dout0(grp_fu_3175_p_dout0),.grp_fu_1658_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1658_p_ce),.grp_fu_1662_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1662_p_din0),.grp_fu_1662_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1662_p_din1),.grp_fu_1662_p_dout0(grp_fu_3179_p_dout0),.grp_fu_1662_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1662_p_ce),.grp_fu_1666_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1666_p_din0),.grp_fu_1666_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1666_p_din1),.grp_fu_1666_p_dout0(grp_fu_3183_p_dout0),.grp_fu_1666_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1666_p_ce),.grp_fu_1670_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1670_p_din0),.grp_fu_1670_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1670_p_din1),.grp_fu_1670_p_dout0(grp_fu_3187_p_dout0),.grp_fu_1670_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1670_p_ce),.grp_fu_1674_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1674_p_din0),.grp_fu_1674_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1674_p_din1),.grp_fu_1674_p_dout0(grp_fu_3191_p_dout0),.grp_fu_1674_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1674_p_ce),.grp_fu_1678_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1678_p_din0),.grp_fu_1678_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1678_p_din1),.grp_fu_1678_p_dout0(grp_fu_3195_p_dout0),.grp_fu_1678_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1678_p_ce),.grp_fu_1682_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1682_p_din0),.grp_fu_1682_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1682_p_din1),.grp_fu_1682_p_dout0(grp_fu_3199_p_dout0),.grp_fu_1682_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1682_p_ce),.grp_fu_1686_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1686_p_din0),.grp_fu_1686_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1686_p_din1),.grp_fu_1686_p_dout0(grp_fu_3203_p_dout0),.grp_fu_1686_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1686_p_ce),.grp_fu_1690_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1690_p_din0),.grp_fu_1690_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1690_p_din1),.grp_fu_1690_p_dout0(grp_fu_3207_p_dout0),.grp_fu_1690_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1690_p_ce),.grp_fu_1694_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1694_p_din0),.grp_fu_1694_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1694_p_din1),.grp_fu_1694_p_dout0(grp_fu_3211_p_dout0),.grp_fu_1694_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1694_p_ce),.grp_fu_1698_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1698_p_din0),.grp_fu_1698_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1698_p_din1),.grp_fu_1698_p_dout0(grp_fu_3215_p_dout0),.grp_fu_1698_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1698_p_ce),.grp_fu_1702_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1702_p_din0),.grp_fu_1702_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1702_p_din1),.grp_fu_1702_p_dout0(grp_fu_3219_p_dout0),.grp_fu_1702_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1702_p_ce),.grp_fu_1706_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1706_p_din0),.grp_fu_1706_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1706_p_din1),.grp_fu_1706_p_dout0(grp_fu_3223_p_dout0),.grp_fu_1706_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1706_p_ce),.grp_fu_1710_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1710_p_din0),.grp_fu_1710_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1710_p_din1),.grp_fu_1710_p_dout0(grp_fu_3227_p_dout0),.grp_fu_1710_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1710_p_ce),.grp_fu_1714_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1714_p_din0),.grp_fu_1714_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1714_p_din1),.grp_fu_1714_p_dout0(grp_fu_3231_p_dout0),.grp_fu_1714_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1714_p_ce),.grp_fu_1718_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1718_p_din0),.grp_fu_1718_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1718_p_din1),.grp_fu_1718_p_dout0(grp_fu_3235_p_dout0),.grp_fu_1718_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1718_p_ce),.grp_fu_1722_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1722_p_din0),.grp_fu_1722_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1722_p_din1),.grp_fu_1722_p_dout0(grp_fu_3239_p_dout0),.grp_fu_1722_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1722_p_ce),.grp_fu_1726_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1726_p_din0),.grp_fu_1726_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1726_p_din1),.grp_fu_1726_p_dout0(grp_fu_3243_p_dout0),.grp_fu_1726_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1726_p_ce),.grp_fu_1730_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1730_p_din0),.grp_fu_1730_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1730_p_din1),.grp_fu_1730_p_dout0(grp_fu_3247_p_dout0),.grp_fu_1730_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1730_p_ce),.grp_fu_1734_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1734_p_din0),.grp_fu_1734_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1734_p_din1),.grp_fu_1734_p_dout0(grp_fu_3251_p_dout0),.grp_fu_1734_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1734_p_ce),.grp_fu_1738_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1738_p_din0),.grp_fu_1738_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1738_p_din1),.grp_fu_1738_p_dout0(grp_fu_3255_p_dout0),.grp_fu_1738_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1738_p_ce),.grp_fu_1742_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1742_p_din0),.grp_fu_1742_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1742_p_din1),.grp_fu_1742_p_dout0(grp_fu_3259_p_dout0),.grp_fu_1742_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1742_p_ce),.grp_fu_1746_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1746_p_din0),.grp_fu_1746_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1746_p_din1),.grp_fu_1746_p_dout0(grp_fu_3263_p_dout0),.grp_fu_1746_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1746_p_ce),.grp_fu_1750_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1750_p_din0),.grp_fu_1750_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1750_p_din1),.grp_fu_1750_p_dout0(grp_fu_3267_p_dout0),.grp_fu_1750_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1750_p_ce),.grp_fu_1754_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1754_p_din0),.grp_fu_1754_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1754_p_din1),.grp_fu_1754_p_dout0(grp_fu_3271_p_dout0),.grp_fu_1754_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1754_p_ce),.grp_fu_1758_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1758_p_din0),.grp_fu_1758_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1758_p_din1),.grp_fu_1758_p_dout0(grp_fu_3275_p_dout0),.grp_fu_1758_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1758_p_ce),.grp_fu_1762_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1762_p_din0),.grp_fu_1762_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1762_p_din1),.grp_fu_1762_p_dout0(grp_fu_3279_p_dout0),.grp_fu_1762_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1762_p_ce),.grp_fu_1766_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1766_p_din0),.grp_fu_1766_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1766_p_din1),.grp_fu_1766_p_dout0(grp_fu_3283_p_dout0),.grp_fu_1766_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1766_p_ce),.grp_fu_1770_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1770_p_din0),.grp_fu_1770_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1770_p_din1),.grp_fu_1770_p_dout0(grp_fu_3287_p_dout0),.grp_fu_1770_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1770_p_ce),.grp_fu_1774_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1774_p_din0),.grp_fu_1774_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1774_p_din1),.grp_fu_1774_p_dout0(grp_fu_3315_p_dout0),.grp_fu_1774_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1774_p_ce),.grp_fu_1778_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1778_p_din0),.grp_fu_1778_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1778_p_din1),.grp_fu_1778_p_dout0(grp_fu_3319_p_dout0),.grp_fu_1778_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1778_p_ce),.grp_fu_1782_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1782_p_din0),.grp_fu_1782_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1782_p_din1),.grp_fu_1782_p_dout0(grp_fu_3323_p_dout0),.grp_fu_1782_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1782_p_ce),.grp_fu_1786_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1786_p_din0),.grp_fu_1786_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1786_p_din1),.grp_fu_1786_p_dout0(grp_fu_3327_p_dout0),.grp_fu_1786_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1786_p_ce),.grp_fu_1790_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1790_p_din0),.grp_fu_1790_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1790_p_din1),.grp_fu_1790_p_dout0(grp_fu_3331_p_dout0),.grp_fu_1790_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1790_p_ce),.grp_fu_1794_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1794_p_din0),.grp_fu_1794_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1794_p_din1),.grp_fu_1794_p_dout0(grp_fu_3335_p_dout0),.grp_fu_1794_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1794_p_ce),.grp_fu_1798_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1798_p_din0),.grp_fu_1798_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1798_p_din1),.grp_fu_1798_p_dout0(grp_fu_3339_p_dout0),.grp_fu_1798_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1798_p_ce),.grp_fu_1802_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1802_p_din0),.grp_fu_1802_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1802_p_din1),.grp_fu_1802_p_dout0(grp_fu_3343_p_dout0),.grp_fu_1802_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1802_p_ce),.grp_fu_1806_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1806_p_din0),.grp_fu_1806_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1806_p_din1),.grp_fu_1806_p_dout0(grp_fu_3347_p_dout0),.grp_fu_1806_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1806_p_ce),.grp_fu_1810_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1810_p_din0),.grp_fu_1810_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1810_p_din1),.grp_fu_1810_p_dout0(grp_fu_3351_p_dout0),.grp_fu_1810_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1810_p_ce),.grp_fu_1814_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1814_p_din0),.grp_fu_1814_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1814_p_din1),.grp_fu_1814_p_dout0(grp_fu_3355_p_dout0),.grp_fu_1814_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1814_p_ce),.grp_fu_1818_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1818_p_din0),.grp_fu_1818_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1818_p_din1),.grp_fu_1818_p_dout0(grp_fu_3359_p_dout0),.grp_fu_1818_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1818_p_ce),.grp_fu_1822_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1822_p_din0),.grp_fu_1822_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1822_p_din1),.grp_fu_1822_p_dout0(grp_fu_3363_p_dout0),.grp_fu_1822_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1822_p_ce),.grp_fu_1826_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1826_p_din0),.grp_fu_1826_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1826_p_din1),.grp_fu_1826_p_dout0(grp_fu_3375_p_dout0),.grp_fu_1826_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1826_p_ce),.grp_fu_1830_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1830_p_din0),.grp_fu_1830_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1830_p_din1),.grp_fu_1830_p_dout0(grp_fu_3379_p_dout0),.grp_fu_1830_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1830_p_ce),.grp_fu_1834_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1834_p_din0),.grp_fu_1834_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1834_p_din1),.grp_fu_1834_p_dout0(grp_fu_3383_p_dout0),.grp_fu_1834_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1834_p_ce),.grp_fu_1838_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1838_p_din0),.grp_fu_1838_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1838_p_din1),.grp_fu_1838_p_dout0(grp_fu_3387_p_dout0),.grp_fu_1838_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1838_p_ce),.grp_fu_1842_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1842_p_din0),.grp_fu_1842_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1842_p_din1),.grp_fu_1842_p_dout0(grp_fu_3391_p_dout0),.grp_fu_1842_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1842_p_ce),.grp_fu_1846_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1846_p_din0),.grp_fu_1846_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1846_p_din1),.grp_fu_1846_p_dout0(grp_fu_3395_p_dout0),.grp_fu_1846_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1846_p_ce),.grp_fu_1850_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1850_p_din0),.grp_fu_1850_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1850_p_din1),.grp_fu_1850_p_dout0(grp_fu_3399_p_dout0),.grp_fu_1850_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1850_p_ce),.grp_fu_1854_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1854_p_din0),.grp_fu_1854_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1854_p_din1),.grp_fu_1854_p_dout0(grp_fu_3403_p_dout0),.grp_fu_1854_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1854_p_ce),.grp_fu_1858_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1858_p_din0),.grp_fu_1858_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1858_p_din1),.grp_fu_1858_p_dout0(grp_fu_3407_p_dout0),.grp_fu_1858_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1858_p_ce),.grp_fu_1862_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1862_p_din0),.grp_fu_1862_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1862_p_din1),.grp_fu_1862_p_dout0(grp_fu_3411_p_dout0),.grp_fu_1862_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1862_p_ce),.grp_fu_1866_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1866_p_din0),.grp_fu_1866_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1866_p_din1),.grp_fu_1866_p_dout0(grp_fu_3415_p_dout0),.grp_fu_1866_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1866_p_ce),.grp_fu_1870_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1870_p_din0),.grp_fu_1870_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1870_p_din1),.grp_fu_1870_p_dout0(grp_fu_3419_p_dout0),.grp_fu_1870_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1870_p_ce),.grp_fu_1874_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1874_p_din0),.grp_fu_1874_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1874_p_din1),.grp_fu_1874_p_dout0(grp_fu_3423_p_dout0),.grp_fu_1874_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1874_p_ce),.grp_fu_1878_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1878_p_din0),.grp_fu_1878_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1878_p_din1),.grp_fu_1878_p_dout0(grp_fu_3427_p_dout0),.grp_fu_1878_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1878_p_ce),.grp_fu_1882_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1882_p_din0),.grp_fu_1882_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1882_p_din1),.grp_fu_1882_p_dout0(grp_fu_3431_p_dout0),.grp_fu_1882_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1882_p_ce),.grp_fu_1886_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1886_p_din0),.grp_fu_1886_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1886_p_din1),.grp_fu_1886_p_dout0(grp_fu_3435_p_dout0),.grp_fu_1886_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1886_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_load_10_reg_1109 <= output_difference_q2;
        output_difference_load_11_reg_1114 <= output_difference_q1;
        output_difference_load_12_reg_1119 <= output_difference_q0;
        output_difference_load_1_reg_1064 <= output_difference_q11;
        output_difference_load_2_reg_1069 <= output_difference_q10;
        output_difference_load_3_reg_1074 <= output_difference_q9;
        output_difference_load_4_reg_1079 <= output_difference_q8;
        output_difference_load_5_reg_1084 <= output_difference_q7;
        output_difference_load_6_reg_1089 <= output_difference_q6;
        output_difference_load_7_reg_1094 <= output_difference_q5;
        output_difference_load_8_reg_1099 <= output_difference_q4;
        output_difference_load_9_reg_1104 <= output_difference_q3;
        output_difference_load_reg_1059 <= output_difference_q12;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_load_13_reg_1209 <= output_difference_q16;
        output_difference_load_14_reg_1214 <= output_difference_q15;
        output_difference_load_15_reg_1219 <= output_difference_q14;
        output_difference_load_16_reg_1224 <= output_difference_q13;
        output_difference_load_17_reg_1229 <= output_difference_q12;
        output_difference_load_18_reg_1234 <= output_difference_q11;
        output_difference_load_19_reg_1239 <= output_difference_q10;
        output_difference_load_20_reg_1244 <= output_difference_q9;
        output_difference_load_21_reg_1249 <= output_difference_q8;
        output_difference_load_22_reg_1254 <= output_difference_q7;
        output_difference_load_23_reg_1259 <= output_difference_q6;
        output_difference_load_24_reg_1264 <= output_difference_q5;
        output_difference_load_25_reg_1269 <= output_difference_q4;
        output_difference_load_26_reg_1274 <= output_difference_q3;
        output_difference_load_27_reg_1279 <= output_difference_q2;
        output_difference_load_28_reg_1284 <= output_difference_q1;
        output_difference_load_29_reg_1289 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_load_30_reg_1379 <= output_difference_q1;
        output_difference_load_31_reg_1384 <= output_difference_q2;
        output_difference_load_32_reg_1389 <= output_difference_q3;
        output_difference_load_33_reg_1394 <= output_difference_q4;
        output_difference_load_34_reg_1399 <= output_difference_q5;
        output_difference_load_35_reg_1404 <= output_difference_q6;
        output_difference_load_36_reg_1409 <= output_difference_q7;
        output_difference_load_37_reg_1414 <= output_difference_q0;
        output_difference_load_38_reg_1419 <= output_difference_q9;
        output_difference_load_39_reg_1424 <= output_difference_q10;
        output_difference_load_40_reg_1429 <= output_difference_q11;
        output_difference_load_41_reg_1434 <= output_difference_q12;
        output_difference_load_42_reg_1439 <= output_difference_q8;
        output_difference_load_43_reg_1444 <= output_difference_q13;
        output_difference_load_44_reg_1449 <= output_difference_q14;
        output_difference_load_45_reg_1454 <= output_difference_q15;
        output_difference_load_46_reg_1459 <= output_difference_q16;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_load_47_reg_1549 <= output_difference_q1;
        output_difference_load_48_reg_1554 <= output_difference_q2;
        output_difference_load_49_reg_1559 <= output_difference_q3;
        output_difference_load_50_reg_1564 <= output_difference_q4;
        output_difference_load_51_reg_1569 <= output_difference_q5;
        output_difference_load_52_reg_1574 <= output_difference_q6;
        output_difference_load_53_reg_1579 <= output_difference_q7;
        output_difference_load_54_reg_1584 <= output_difference_q0;
        output_difference_load_55_reg_1589 <= output_difference_q9;
        output_difference_load_56_reg_1594 <= output_difference_q10;
        output_difference_load_57_reg_1599 <= output_difference_q11;
        output_difference_load_58_reg_1604 <= output_difference_q12;
        output_difference_load_59_reg_1609 <= output_difference_q8;
        output_difference_load_60_reg_1614 <= output_difference_q13;
        output_difference_load_61_reg_1619 <= output_difference_q14;
        output_difference_load_62_reg_1624 <= output_difference_q15;
        output_difference_load_63_reg_1629 <= output_difference_q16;
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
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
    if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1634_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1634_p_ce;
    end else begin
        grp_fu_1634_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1638_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1638_p_ce;
    end else begin
        grp_fu_1638_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1642_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1642_p_ce;
    end else begin
        grp_fu_1642_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1646_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1646_p_ce;
    end else begin
        grp_fu_1646_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1650_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1650_p_ce;
    end else begin
        grp_fu_1650_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1654_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1654_p_ce;
    end else begin
        grp_fu_1654_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1658_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1658_p_ce;
    end else begin
        grp_fu_1658_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1662_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1662_p_ce;
    end else begin
        grp_fu_1662_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1666_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1666_p_ce;
    end else begin
        grp_fu_1666_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1670_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1670_p_ce;
    end else begin
        grp_fu_1670_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1674_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1674_p_ce;
    end else begin
        grp_fu_1674_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1678_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1678_p_ce;
    end else begin
        grp_fu_1678_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1682_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1682_p_ce;
    end else begin
        grp_fu_1682_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1686_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1686_p_ce;
    end else begin
        grp_fu_1686_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1690_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1690_p_ce;
    end else begin
        grp_fu_1690_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1694_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1694_p_ce;
    end else begin
        grp_fu_1694_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1698_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1698_p_ce;
    end else begin
        grp_fu_1698_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1702_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1702_p_ce;
    end else begin
        grp_fu_1702_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1706_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1706_p_ce;
    end else begin
        grp_fu_1706_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1710_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1710_p_ce;
    end else begin
        grp_fu_1710_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1714_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1714_p_ce;
    end else begin
        grp_fu_1714_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1718_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1718_p_ce;
    end else begin
        grp_fu_1718_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1722_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1722_p_ce;
    end else begin
        grp_fu_1722_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1726_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1726_p_ce;
    end else begin
        grp_fu_1726_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1730_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1730_p_ce;
    end else begin
        grp_fu_1730_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1734_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1734_p_ce;
    end else begin
        grp_fu_1734_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1738_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1738_p_ce;
    end else begin
        grp_fu_1738_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1742_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1742_p_ce;
    end else begin
        grp_fu_1742_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1746_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1746_p_ce;
    end else begin
        grp_fu_1746_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1750_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1750_p_ce;
    end else begin
        grp_fu_1750_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1754_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1754_p_ce;
    end else begin
        grp_fu_1754_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1758_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1758_p_ce;
    end else begin
        grp_fu_1758_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1762_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1762_p_ce;
    end else begin
        grp_fu_1762_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1766_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1766_p_ce;
    end else begin
        grp_fu_1766_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1770_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1770_p_ce;
    end else begin
        grp_fu_1770_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1774_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1774_p_ce;
    end else begin
        grp_fu_1774_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1778_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1778_p_ce;
    end else begin
        grp_fu_1778_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1782_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1782_p_ce;
    end else begin
        grp_fu_1782_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1786_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1786_p_ce;
    end else begin
        grp_fu_1786_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1790_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1790_p_ce;
    end else begin
        grp_fu_1790_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1794_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1794_p_ce;
    end else begin
        grp_fu_1794_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1798_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1798_p_ce;
    end else begin
        grp_fu_1798_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1802_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1802_p_ce;
    end else begin
        grp_fu_1802_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1806_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1806_p_ce;
    end else begin
        grp_fu_1806_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1810_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1810_p_ce;
    end else begin
        grp_fu_1810_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1814_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1814_p_ce;
    end else begin
        grp_fu_1814_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1818_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1818_p_ce;
    end else begin
        grp_fu_1818_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1822_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1822_p_ce;
    end else begin
        grp_fu_1822_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1826_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1826_p_ce;
    end else begin
        grp_fu_1826_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1830_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1830_p_ce;
    end else begin
        grp_fu_1830_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1834_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1834_p_ce;
    end else begin
        grp_fu_1834_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1838_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1838_p_ce;
    end else begin
        grp_fu_1838_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1842_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1842_p_ce;
    end else begin
        grp_fu_1842_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1846_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1846_p_ce;
    end else begin
        grp_fu_1846_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1850_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1850_p_ce;
    end else begin
        grp_fu_1850_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1854_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1854_p_ce;
    end else begin
        grp_fu_1854_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1858_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1858_p_ce;
    end else begin
        grp_fu_1858_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1862_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1862_p_ce;
    end else begin
        grp_fu_1862_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1866_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1866_p_ce;
    end else begin
        grp_fu_1866_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1870_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1870_p_ce;
    end else begin
        grp_fu_1870_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1874_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1874_p_ce;
    end else begin
        grp_fu_1874_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1878_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1878_p_ce;
    end else begin
        grp_fu_1878_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1882_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1882_p_ce;
    end else begin
        grp_fu_1882_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1886_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1886_p_ce;
    end else begin
        grp_fu_1886_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address0_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address0_local = 64'd12;
    end else begin
        output_difference_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address10_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address10_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address10_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address10_local = 64'd2;
    end else begin
        output_difference_address10_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address11_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address11_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address11_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address11_local = 64'd1;
    end else begin
        output_difference_address11_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address12_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address12_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address12_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address12_local = 64'd0;
    end else begin
        output_difference_address12_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address13_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address13_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address13_local = 64'd16;
    end else begin
        output_difference_address13_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address14_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address14_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address14_local = 64'd15;
    end else begin
        output_difference_address14_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address15_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address15_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address15_local = 64'd14;
    end else begin
        output_difference_address15_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address16_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address16_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address16_local = 64'd13;
    end else begin
        output_difference_address16_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address1_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address1_local = 64'd11;
    end else begin
        output_difference_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address2_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address2_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address2_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address2_local = 64'd10;
    end else begin
        output_difference_address2_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address3_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address3_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address3_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address3_local = 64'd9;
    end else begin
        output_difference_address3_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address4_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address4_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address4_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address4_local = 64'd8;
    end else begin
        output_difference_address4_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address5_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address5_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address5_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address5_local = 64'd7;
    end else begin
        output_difference_address5_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address6_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address6_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address6_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address6_local = 64'd6;
    end else begin
        output_difference_address6_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address7_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address7_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address7_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address7_local = 64'd5;
    end else begin
        output_difference_address7_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address8_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address8_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address8_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address8_local = 64'd4;
    end else begin
        output_difference_address8_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address9_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address9_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address9_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address9_local = 64'd3;
    end else begin
        output_difference_address9_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce0_local = 1'b1;
    end else begin
        output_difference_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce10_local = 1'b1;
    end else begin
        output_difference_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce11_local = 1'b1;
    end else begin
        output_difference_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce12_local = 1'b1;
    end else begin
        output_difference_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        output_difference_ce13_local = 1'b1;
    end else begin
        output_difference_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        output_difference_ce14_local = 1'b1;
    end else begin
        output_difference_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        output_difference_ce15_local = 1'b1;
    end else begin
        output_difference_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        output_difference_ce16_local = 1'b1;
    end else begin
        output_difference_ce16_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce1_local = 1'b1;
    end else begin
        output_difference_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce2_local = 1'b1;
    end else begin
        output_difference_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce3_local = 1'b1;
    end else begin
        output_difference_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce4_local = 1'b1;
    end else begin
        output_difference_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce5_local = 1'b1;
    end else begin
        output_difference_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce6_local = 1'b1;
    end else begin
        output_difference_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce7_local = 1'b1;
    end else begin
        output_difference_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce8_local = 1'b1;
    end else begin
        output_difference_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_difference_ce9_local = 1'b1;
    end else begin
        output_difference_ce9_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign delta_weights2_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_address0;
assign delta_weights2_0_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_address1;
assign delta_weights2_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_ce0;
assign delta_weights2_0_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_ce1;
assign delta_weights2_0_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_d0;
assign delta_weights2_0_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_d1;
assign delta_weights2_0_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_we0;
assign delta_weights2_0_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_0_we1;
assign delta_weights2_10_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_address0;
assign delta_weights2_10_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_address1;
assign delta_weights2_10_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_ce0;
assign delta_weights2_10_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_ce1;
assign delta_weights2_10_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_d0;
assign delta_weights2_10_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_d1;
assign delta_weights2_10_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_we0;
assign delta_weights2_10_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_10_we1;
assign delta_weights2_11_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_address0;
assign delta_weights2_11_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_address1;
assign delta_weights2_11_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_ce0;
assign delta_weights2_11_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_ce1;
assign delta_weights2_11_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_d0;
assign delta_weights2_11_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_d1;
assign delta_weights2_11_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_we0;
assign delta_weights2_11_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_11_we1;
assign delta_weights2_12_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_address0;
assign delta_weights2_12_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_address1;
assign delta_weights2_12_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_ce0;
assign delta_weights2_12_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_ce1;
assign delta_weights2_12_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_d0;
assign delta_weights2_12_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_d1;
assign delta_weights2_12_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_we0;
assign delta_weights2_12_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_12_we1;
assign delta_weights2_13_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_address0;
assign delta_weights2_13_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_address1;
assign delta_weights2_13_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_ce0;
assign delta_weights2_13_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_ce1;
assign delta_weights2_13_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_d0;
assign delta_weights2_13_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_d1;
assign delta_weights2_13_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_we0;
assign delta_weights2_13_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_13_we1;
assign delta_weights2_14_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_address0;
assign delta_weights2_14_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_address1;
assign delta_weights2_14_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_ce0;
assign delta_weights2_14_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_ce1;
assign delta_weights2_14_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_d0;
assign delta_weights2_14_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_d1;
assign delta_weights2_14_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_we0;
assign delta_weights2_14_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_14_we1;
assign delta_weights2_15_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_address0;
assign delta_weights2_15_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_address1;
assign delta_weights2_15_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_ce0;
assign delta_weights2_15_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_ce1;
assign delta_weights2_15_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_d0;
assign delta_weights2_15_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_d1;
assign delta_weights2_15_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_we0;
assign delta_weights2_15_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_15_we1;
assign delta_weights2_16_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_address0;
assign delta_weights2_16_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_address1;
assign delta_weights2_16_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_ce0;
assign delta_weights2_16_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_ce1;
assign delta_weights2_16_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_d0;
assign delta_weights2_16_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_d1;
assign delta_weights2_16_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_we0;
assign delta_weights2_16_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_16_we1;
assign delta_weights2_17_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_address0;
assign delta_weights2_17_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_address1;
assign delta_weights2_17_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_ce0;
assign delta_weights2_17_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_ce1;
assign delta_weights2_17_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_d0;
assign delta_weights2_17_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_d1;
assign delta_weights2_17_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_we0;
assign delta_weights2_17_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_17_we1;
assign delta_weights2_18_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_address0;
assign delta_weights2_18_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_address1;
assign delta_weights2_18_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_ce0;
assign delta_weights2_18_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_ce1;
assign delta_weights2_18_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_d0;
assign delta_weights2_18_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_d1;
assign delta_weights2_18_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_we0;
assign delta_weights2_18_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_18_we1;
assign delta_weights2_19_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_address0;
assign delta_weights2_19_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_address1;
assign delta_weights2_19_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_ce0;
assign delta_weights2_19_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_ce1;
assign delta_weights2_19_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_d0;
assign delta_weights2_19_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_d1;
assign delta_weights2_19_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_we0;
assign delta_weights2_19_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_19_we1;
assign delta_weights2_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_address0;
assign delta_weights2_1_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_address1;
assign delta_weights2_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_ce0;
assign delta_weights2_1_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_ce1;
assign delta_weights2_1_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_d0;
assign delta_weights2_1_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_d1;
assign delta_weights2_1_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_we0;
assign delta_weights2_1_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_1_we1;
assign delta_weights2_20_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_address0;
assign delta_weights2_20_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_address1;
assign delta_weights2_20_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_ce0;
assign delta_weights2_20_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_ce1;
assign delta_weights2_20_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_d0;
assign delta_weights2_20_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_d1;
assign delta_weights2_20_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_we0;
assign delta_weights2_20_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_20_we1;
assign delta_weights2_21_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_address0;
assign delta_weights2_21_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_address1;
assign delta_weights2_21_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_ce0;
assign delta_weights2_21_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_ce1;
assign delta_weights2_21_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_d0;
assign delta_weights2_21_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_d1;
assign delta_weights2_21_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_we0;
assign delta_weights2_21_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_21_we1;
assign delta_weights2_22_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_address0;
assign delta_weights2_22_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_address1;
assign delta_weights2_22_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_ce0;
assign delta_weights2_22_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_ce1;
assign delta_weights2_22_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_d0;
assign delta_weights2_22_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_d1;
assign delta_weights2_22_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_we0;
assign delta_weights2_22_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_22_we1;
assign delta_weights2_23_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_address0;
assign delta_weights2_23_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_address1;
assign delta_weights2_23_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_ce0;
assign delta_weights2_23_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_ce1;
assign delta_weights2_23_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_d0;
assign delta_weights2_23_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_d1;
assign delta_weights2_23_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_we0;
assign delta_weights2_23_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_23_we1;
assign delta_weights2_24_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_address0;
assign delta_weights2_24_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_address1;
assign delta_weights2_24_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_ce0;
assign delta_weights2_24_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_ce1;
assign delta_weights2_24_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_d0;
assign delta_weights2_24_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_d1;
assign delta_weights2_24_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_we0;
assign delta_weights2_24_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_24_we1;
assign delta_weights2_25_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_address0;
assign delta_weights2_25_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_address1;
assign delta_weights2_25_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_ce0;
assign delta_weights2_25_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_ce1;
assign delta_weights2_25_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_d0;
assign delta_weights2_25_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_d1;
assign delta_weights2_25_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_we0;
assign delta_weights2_25_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_25_we1;
assign delta_weights2_26_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_address0;
assign delta_weights2_26_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_address1;
assign delta_weights2_26_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_ce0;
assign delta_weights2_26_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_ce1;
assign delta_weights2_26_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_d0;
assign delta_weights2_26_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_d1;
assign delta_weights2_26_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_we0;
assign delta_weights2_26_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_26_we1;
assign delta_weights2_27_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_address0;
assign delta_weights2_27_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_address1;
assign delta_weights2_27_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_ce0;
assign delta_weights2_27_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_ce1;
assign delta_weights2_27_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_d0;
assign delta_weights2_27_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_d1;
assign delta_weights2_27_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_we0;
assign delta_weights2_27_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_27_we1;
assign delta_weights2_28_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_address0;
assign delta_weights2_28_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_address1;
assign delta_weights2_28_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_ce0;
assign delta_weights2_28_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_ce1;
assign delta_weights2_28_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_d0;
assign delta_weights2_28_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_d1;
assign delta_weights2_28_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_we0;
assign delta_weights2_28_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_28_we1;
assign delta_weights2_29_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_address0;
assign delta_weights2_29_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_address1;
assign delta_weights2_29_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_ce0;
assign delta_weights2_29_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_ce1;
assign delta_weights2_29_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_d0;
assign delta_weights2_29_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_d1;
assign delta_weights2_29_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_we0;
assign delta_weights2_29_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_29_we1;
assign delta_weights2_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_address0;
assign delta_weights2_2_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_address1;
assign delta_weights2_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_ce0;
assign delta_weights2_2_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_ce1;
assign delta_weights2_2_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_d0;
assign delta_weights2_2_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_d1;
assign delta_weights2_2_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_we0;
assign delta_weights2_2_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_2_we1;
assign delta_weights2_30_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_address0;
assign delta_weights2_30_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_address1;
assign delta_weights2_30_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_ce0;
assign delta_weights2_30_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_ce1;
assign delta_weights2_30_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_d0;
assign delta_weights2_30_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_d1;
assign delta_weights2_30_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_we0;
assign delta_weights2_30_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_30_we1;
assign delta_weights2_31_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_address0;
assign delta_weights2_31_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_address1;
assign delta_weights2_31_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_ce0;
assign delta_weights2_31_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_ce1;
assign delta_weights2_31_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_d0;
assign delta_weights2_31_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_d1;
assign delta_weights2_31_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_we0;
assign delta_weights2_31_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_31_we1;
assign delta_weights2_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_address0;
assign delta_weights2_3_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_address1;
assign delta_weights2_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_ce0;
assign delta_weights2_3_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_ce1;
assign delta_weights2_3_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_d0;
assign delta_weights2_3_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_d1;
assign delta_weights2_3_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_we0;
assign delta_weights2_3_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_3_we1;
assign delta_weights2_4_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_address0;
assign delta_weights2_4_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_address1;
assign delta_weights2_4_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_ce0;
assign delta_weights2_4_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_ce1;
assign delta_weights2_4_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_d0;
assign delta_weights2_4_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_d1;
assign delta_weights2_4_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_we0;
assign delta_weights2_4_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_4_we1;
assign delta_weights2_5_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_address0;
assign delta_weights2_5_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_address1;
assign delta_weights2_5_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_ce0;
assign delta_weights2_5_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_ce1;
assign delta_weights2_5_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_d0;
assign delta_weights2_5_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_d1;
assign delta_weights2_5_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_we0;
assign delta_weights2_5_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_5_we1;
assign delta_weights2_6_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_address0;
assign delta_weights2_6_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_address1;
assign delta_weights2_6_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_ce0;
assign delta_weights2_6_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_ce1;
assign delta_weights2_6_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_d0;
assign delta_weights2_6_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_d1;
assign delta_weights2_6_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_we0;
assign delta_weights2_6_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_6_we1;
assign delta_weights2_7_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_address0;
assign delta_weights2_7_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_address1;
assign delta_weights2_7_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_ce0;
assign delta_weights2_7_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_ce1;
assign delta_weights2_7_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_d0;
assign delta_weights2_7_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_d1;
assign delta_weights2_7_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_we0;
assign delta_weights2_7_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_7_we1;
assign delta_weights2_8_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_address0;
assign delta_weights2_8_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_address1;
assign delta_weights2_8_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_ce0;
assign delta_weights2_8_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_ce1;
assign delta_weights2_8_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_d0;
assign delta_weights2_8_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_d1;
assign delta_weights2_8_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_we0;
assign delta_weights2_8_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_8_we1;
assign delta_weights2_9_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_address0;
assign delta_weights2_9_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_address1;
assign delta_weights2_9_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_ce0;
assign delta_weights2_9_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_ce1;
assign delta_weights2_9_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_d0;
assign delta_weights2_9_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_d1;
assign delta_weights2_9_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_we0;
assign delta_weights2_9_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_delta_weights2_9_we1;
assign grp_fu_3151_p_ce = grp_fu_1634_ce;
assign grp_fu_3151_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1634_p_din0;
assign grp_fu_3151_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1634_p_din1;
assign grp_fu_3155_p_ce = grp_fu_1638_ce;
assign grp_fu_3155_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1638_p_din0;
assign grp_fu_3155_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1638_p_din1;
assign grp_fu_3159_p_ce = grp_fu_1642_ce;
assign grp_fu_3159_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1642_p_din0;
assign grp_fu_3159_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1642_p_din1;
assign grp_fu_3163_p_ce = grp_fu_1646_ce;
assign grp_fu_3163_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1646_p_din0;
assign grp_fu_3163_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1646_p_din1;
assign grp_fu_3167_p_ce = grp_fu_1650_ce;
assign grp_fu_3167_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1650_p_din0;
assign grp_fu_3167_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1650_p_din1;
assign grp_fu_3171_p_ce = grp_fu_1654_ce;
assign grp_fu_3171_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1654_p_din0;
assign grp_fu_3171_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1654_p_din1;
assign grp_fu_3175_p_ce = grp_fu_1658_ce;
assign grp_fu_3175_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1658_p_din0;
assign grp_fu_3175_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1658_p_din1;
assign grp_fu_3179_p_ce = grp_fu_1662_ce;
assign grp_fu_3179_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1662_p_din0;
assign grp_fu_3179_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1662_p_din1;
assign grp_fu_3183_p_ce = grp_fu_1666_ce;
assign grp_fu_3183_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1666_p_din0;
assign grp_fu_3183_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1666_p_din1;
assign grp_fu_3187_p_ce = grp_fu_1670_ce;
assign grp_fu_3187_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1670_p_din0;
assign grp_fu_3187_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1670_p_din1;
assign grp_fu_3191_p_ce = grp_fu_1674_ce;
assign grp_fu_3191_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1674_p_din0;
assign grp_fu_3191_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1674_p_din1;
assign grp_fu_3195_p_ce = grp_fu_1678_ce;
assign grp_fu_3195_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1678_p_din0;
assign grp_fu_3195_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1678_p_din1;
assign grp_fu_3199_p_ce = grp_fu_1682_ce;
assign grp_fu_3199_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1682_p_din0;
assign grp_fu_3199_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1682_p_din1;
assign grp_fu_3203_p_ce = grp_fu_1686_ce;
assign grp_fu_3203_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1686_p_din0;
assign grp_fu_3203_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1686_p_din1;
assign grp_fu_3207_p_ce = grp_fu_1690_ce;
assign grp_fu_3207_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1690_p_din0;
assign grp_fu_3207_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1690_p_din1;
assign grp_fu_3211_p_ce = grp_fu_1694_ce;
assign grp_fu_3211_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1694_p_din0;
assign grp_fu_3211_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1694_p_din1;
assign grp_fu_3215_p_ce = grp_fu_1698_ce;
assign grp_fu_3215_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1698_p_din0;
assign grp_fu_3215_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1698_p_din1;
assign grp_fu_3219_p_ce = grp_fu_1702_ce;
assign grp_fu_3219_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1702_p_din0;
assign grp_fu_3219_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1702_p_din1;
assign grp_fu_3223_p_ce = grp_fu_1706_ce;
assign grp_fu_3223_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1706_p_din0;
assign grp_fu_3223_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1706_p_din1;
assign grp_fu_3227_p_ce = grp_fu_1710_ce;
assign grp_fu_3227_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1710_p_din0;
assign grp_fu_3227_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1710_p_din1;
assign grp_fu_3231_p_ce = grp_fu_1714_ce;
assign grp_fu_3231_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1714_p_din0;
assign grp_fu_3231_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1714_p_din1;
assign grp_fu_3235_p_ce = grp_fu_1718_ce;
assign grp_fu_3235_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1718_p_din0;
assign grp_fu_3235_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1718_p_din1;
assign grp_fu_3239_p_ce = grp_fu_1722_ce;
assign grp_fu_3239_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1722_p_din0;
assign grp_fu_3239_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1722_p_din1;
assign grp_fu_3243_p_ce = grp_fu_1726_ce;
assign grp_fu_3243_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1726_p_din0;
assign grp_fu_3243_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1726_p_din1;
assign grp_fu_3247_p_ce = grp_fu_1730_ce;
assign grp_fu_3247_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1730_p_din0;
assign grp_fu_3247_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1730_p_din1;
assign grp_fu_3251_p_ce = grp_fu_1734_ce;
assign grp_fu_3251_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1734_p_din0;
assign grp_fu_3251_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1734_p_din1;
assign grp_fu_3255_p_ce = grp_fu_1738_ce;
assign grp_fu_3255_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1738_p_din0;
assign grp_fu_3255_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1738_p_din1;
assign grp_fu_3259_p_ce = grp_fu_1742_ce;
assign grp_fu_3259_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1742_p_din0;
assign grp_fu_3259_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1742_p_din1;
assign grp_fu_3263_p_ce = grp_fu_1746_ce;
assign grp_fu_3263_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1746_p_din0;
assign grp_fu_3263_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1746_p_din1;
assign grp_fu_3267_p_ce = grp_fu_1750_ce;
assign grp_fu_3267_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1750_p_din0;
assign grp_fu_3267_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1750_p_din1;
assign grp_fu_3271_p_ce = grp_fu_1754_ce;
assign grp_fu_3271_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1754_p_din0;
assign grp_fu_3271_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1754_p_din1;
assign grp_fu_3275_p_ce = grp_fu_1758_ce;
assign grp_fu_3275_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1758_p_din0;
assign grp_fu_3275_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1758_p_din1;
assign grp_fu_3279_p_ce = grp_fu_1762_ce;
assign grp_fu_3279_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1762_p_din0;
assign grp_fu_3279_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1762_p_din1;
assign grp_fu_3283_p_ce = grp_fu_1766_ce;
assign grp_fu_3283_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1766_p_din0;
assign grp_fu_3283_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1766_p_din1;
assign grp_fu_3287_p_ce = grp_fu_1770_ce;
assign grp_fu_3287_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1770_p_din0;
assign grp_fu_3287_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1770_p_din1;
assign grp_fu_3315_p_ce = grp_fu_1774_ce;
assign grp_fu_3315_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1774_p_din0;
assign grp_fu_3315_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1774_p_din1;
assign grp_fu_3319_p_ce = grp_fu_1778_ce;
assign grp_fu_3319_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1778_p_din0;
assign grp_fu_3319_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1778_p_din1;
assign grp_fu_3323_p_ce = grp_fu_1782_ce;
assign grp_fu_3323_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1782_p_din0;
assign grp_fu_3323_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1782_p_din1;
assign grp_fu_3327_p_ce = grp_fu_1786_ce;
assign grp_fu_3327_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1786_p_din0;
assign grp_fu_3327_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1786_p_din1;
assign grp_fu_3331_p_ce = grp_fu_1790_ce;
assign grp_fu_3331_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1790_p_din0;
assign grp_fu_3331_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1790_p_din1;
assign grp_fu_3335_p_ce = grp_fu_1794_ce;
assign grp_fu_3335_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1794_p_din0;
assign grp_fu_3335_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1794_p_din1;
assign grp_fu_3339_p_ce = grp_fu_1798_ce;
assign grp_fu_3339_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1798_p_din0;
assign grp_fu_3339_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1798_p_din1;
assign grp_fu_3343_p_ce = grp_fu_1802_ce;
assign grp_fu_3343_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1802_p_din0;
assign grp_fu_3343_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1802_p_din1;
assign grp_fu_3347_p_ce = grp_fu_1806_ce;
assign grp_fu_3347_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1806_p_din0;
assign grp_fu_3347_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1806_p_din1;
assign grp_fu_3351_p_ce = grp_fu_1810_ce;
assign grp_fu_3351_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1810_p_din0;
assign grp_fu_3351_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1810_p_din1;
assign grp_fu_3355_p_ce = grp_fu_1814_ce;
assign grp_fu_3355_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1814_p_din0;
assign grp_fu_3355_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1814_p_din1;
assign grp_fu_3359_p_ce = grp_fu_1818_ce;
assign grp_fu_3359_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1818_p_din0;
assign grp_fu_3359_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1818_p_din1;
assign grp_fu_3363_p_ce = grp_fu_1822_ce;
assign grp_fu_3363_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1822_p_din0;
assign grp_fu_3363_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1822_p_din1;
assign grp_fu_3375_p_ce = grp_fu_1826_ce;
assign grp_fu_3375_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1826_p_din0;
assign grp_fu_3375_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1826_p_din1;
assign grp_fu_3379_p_ce = grp_fu_1830_ce;
assign grp_fu_3379_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1830_p_din0;
assign grp_fu_3379_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1830_p_din1;
assign grp_fu_3383_p_ce = grp_fu_1834_ce;
assign grp_fu_3383_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1834_p_din0;
assign grp_fu_3383_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1834_p_din1;
assign grp_fu_3387_p_ce = grp_fu_1838_ce;
assign grp_fu_3387_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1838_p_din0;
assign grp_fu_3387_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1838_p_din1;
assign grp_fu_3391_p_ce = grp_fu_1842_ce;
assign grp_fu_3391_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1842_p_din0;
assign grp_fu_3391_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1842_p_din1;
assign grp_fu_3395_p_ce = grp_fu_1846_ce;
assign grp_fu_3395_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1846_p_din0;
assign grp_fu_3395_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1846_p_din1;
assign grp_fu_3399_p_ce = grp_fu_1850_ce;
assign grp_fu_3399_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1850_p_din0;
assign grp_fu_3399_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1850_p_din1;
assign grp_fu_3403_p_ce = grp_fu_1854_ce;
assign grp_fu_3403_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1854_p_din0;
assign grp_fu_3403_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1854_p_din1;
assign grp_fu_3407_p_ce = grp_fu_1858_ce;
assign grp_fu_3407_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1858_p_din0;
assign grp_fu_3407_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1858_p_din1;
assign grp_fu_3411_p_ce = grp_fu_1862_ce;
assign grp_fu_3411_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1862_p_din0;
assign grp_fu_3411_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1862_p_din1;
assign grp_fu_3415_p_ce = grp_fu_1866_ce;
assign grp_fu_3415_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1866_p_din0;
assign grp_fu_3415_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1866_p_din1;
assign grp_fu_3419_p_ce = grp_fu_1870_ce;
assign grp_fu_3419_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1870_p_din0;
assign grp_fu_3419_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1870_p_din1;
assign grp_fu_3423_p_ce = grp_fu_1874_ce;
assign grp_fu_3423_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1874_p_din0;
assign grp_fu_3423_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1874_p_din1;
assign grp_fu_3427_p_ce = grp_fu_1878_ce;
assign grp_fu_3427_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1878_p_din0;
assign grp_fu_3427_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1878_p_din1;
assign grp_fu_3431_p_ce = grp_fu_1882_ce;
assign grp_fu_3431_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1882_p_din0;
assign grp_fu_3431_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1882_p_din1;
assign grp_fu_3435_p_ce = grp_fu_1886_ce;
assign grp_fu_3435_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1886_p_din0;
assign grp_fu_3435_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_grp_fu_1886_p_din1;
assign grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_start = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_ap_start_reg;
assign last_activations_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_last_activations_address0;
assign last_activations_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_843_last_activations_ce0;
assign output_difference_address0 = output_difference_address0_local;
assign output_difference_address1 = output_difference_address1_local;
assign output_difference_address10 = output_difference_address10_local;
assign output_difference_address11 = output_difference_address11_local;
assign output_difference_address12 = output_difference_address12_local;
assign output_difference_address13 = output_difference_address13_local;
assign output_difference_address14 = output_difference_address14_local;
assign output_difference_address15 = output_difference_address15_local;
assign output_difference_address16 = output_difference_address16_local;
assign output_difference_address2 = output_difference_address2_local;
assign output_difference_address3 = output_difference_address3_local;
assign output_difference_address4 = output_difference_address4_local;
assign output_difference_address5 = output_difference_address5_local;
assign output_difference_address6 = output_difference_address6_local;
assign output_difference_address7 = output_difference_address7_local;
assign output_difference_address8 = output_difference_address8_local;
assign output_difference_address9 = output_difference_address9_local;
assign output_difference_ce0 = output_difference_ce0_local;
assign output_difference_ce1 = output_difference_ce1_local;
assign output_difference_ce10 = output_difference_ce10_local;
assign output_difference_ce11 = output_difference_ce11_local;
assign output_difference_ce12 = output_difference_ce12_local;
assign output_difference_ce13 = output_difference_ce13_local;
assign output_difference_ce14 = output_difference_ce14_local;
assign output_difference_ce15 = output_difference_ce15_local;
assign output_difference_ce16 = output_difference_ce16_local;
assign output_difference_ce2 = output_difference_ce2_local;
assign output_difference_ce3 = output_difference_ce3_local;
assign output_difference_ce4 = output_difference_ce4_local;
assign output_difference_ce5 = output_difference_ce5_local;
assign output_difference_ce6 = output_difference_ce6_local;
assign output_difference_ce7 = output_difference_ce7_local;
assign output_difference_ce8 = output_difference_ce8_local;
assign output_difference_ce9 = output_difference_ce9_local;
endmodule 