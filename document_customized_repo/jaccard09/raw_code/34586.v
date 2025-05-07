module backprop_get_delta_matrix_weights1_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_4_address1,delta_weights1_4_ce1,delta_weights1_4_we1,delta_weights1_4_d1,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_5_address1,delta_weights1_5_ce1,delta_weights1_5_we1,delta_weights1_5_d1,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_6_address1,delta_weights1_6_ce1,delta_weights1_6_we1,delta_weights1_6_d1,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_7_address1,delta_weights1_7_ce1,delta_weights1_7_we1,delta_weights1_7_d1,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_8_address1,delta_weights1_8_ce1,delta_weights1_8_we1,delta_weights1_8_d1,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_9_address1,delta_weights1_9_ce1,delta_weights1_9_we1,delta_weights1_9_d1,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_10_address1,delta_weights1_10_ce1,delta_weights1_10_we1,delta_weights1_10_d1,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_11_address1,delta_weights1_11_ce1,delta_weights1_11_we1,delta_weights1_11_d1,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_12_address1,delta_weights1_12_ce1,delta_weights1_12_we1,delta_weights1_12_d1,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_13_address1,delta_weights1_13_ce1,delta_weights1_13_we1,delta_weights1_13_d1,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_14_address1,delta_weights1_14_ce1,delta_weights1_14_we1,delta_weights1_14_d1,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_15_address1,delta_weights1_15_ce1,delta_weights1_15_we1,delta_weights1_15_d1,delta_weights1_16_address0,delta_weights1_16_ce0,delta_weights1_16_we0,delta_weights1_16_d0,delta_weights1_16_address1,delta_weights1_16_ce1,delta_weights1_16_we1,delta_weights1_16_d1,delta_weights1_17_address0,delta_weights1_17_ce0,delta_weights1_17_we0,delta_weights1_17_d0,delta_weights1_17_address1,delta_weights1_17_ce1,delta_weights1_17_we1,delta_weights1_17_d1,delta_weights1_18_address0,delta_weights1_18_ce0,delta_weights1_18_we0,delta_weights1_18_d0,delta_weights1_18_address1,delta_weights1_18_ce1,delta_weights1_18_we1,delta_weights1_18_d1,delta_weights1_19_address0,delta_weights1_19_ce0,delta_weights1_19_we0,delta_weights1_19_d0,delta_weights1_19_address1,delta_weights1_19_ce1,delta_weights1_19_we1,delta_weights1_19_d1,delta_weights1_20_address0,delta_weights1_20_ce0,delta_weights1_20_we0,delta_weights1_20_d0,delta_weights1_20_address1,delta_weights1_20_ce1,delta_weights1_20_we1,delta_weights1_20_d1,delta_weights1_21_address0,delta_weights1_21_ce0,delta_weights1_21_we0,delta_weights1_21_d0,delta_weights1_21_address1,delta_weights1_21_ce1,delta_weights1_21_we1,delta_weights1_21_d1,delta_weights1_22_address0,delta_weights1_22_ce0,delta_weights1_22_we0,delta_weights1_22_d0,delta_weights1_22_address1,delta_weights1_22_ce1,delta_weights1_22_we1,delta_weights1_22_d1,delta_weights1_23_address0,delta_weights1_23_ce0,delta_weights1_23_we0,delta_weights1_23_d0,delta_weights1_23_address1,delta_weights1_23_ce1,delta_weights1_23_we1,delta_weights1_23_d1,delta_weights1_24_address0,delta_weights1_24_ce0,delta_weights1_24_we0,delta_weights1_24_d0,delta_weights1_24_address1,delta_weights1_24_ce1,delta_weights1_24_we1,delta_weights1_24_d1,delta_weights1_25_address0,delta_weights1_25_ce0,delta_weights1_25_we0,delta_weights1_25_d0,delta_weights1_25_address1,delta_weights1_25_ce1,delta_weights1_25_we1,delta_weights1_25_d1,delta_weights1_26_address0,delta_weights1_26_ce0,delta_weights1_26_we0,delta_weights1_26_d0,delta_weights1_26_address1,delta_weights1_26_ce1,delta_weights1_26_we1,delta_weights1_26_d1,delta_weights1_27_address0,delta_weights1_27_ce0,delta_weights1_27_we0,delta_weights1_27_d0,delta_weights1_27_address1,delta_weights1_27_ce1,delta_weights1_27_we1,delta_weights1_27_d1,delta_weights1_28_address0,delta_weights1_28_ce0,delta_weights1_28_we0,delta_weights1_28_d0,delta_weights1_28_address1,delta_weights1_28_ce1,delta_weights1_28_we1,delta_weights1_28_d1,delta_weights1_29_address0,delta_weights1_29_ce0,delta_weights1_29_we0,delta_weights1_29_d0,delta_weights1_29_address1,delta_weights1_29_ce1,delta_weights1_29_we1,delta_weights1_29_d1,delta_weights1_30_address0,delta_weights1_30_ce0,delta_weights1_30_we0,delta_weights1_30_d0,delta_weights1_30_address1,delta_weights1_30_ce1,delta_weights1_30_we1,delta_weights1_30_d1,delta_weights1_31_address0,delta_weights1_31_ce0,delta_weights1_31_we0,delta_weights1_31_d0,delta_weights1_31_address1,delta_weights1_31_ce1,delta_weights1_31_we1,delta_weights1_31_d1,output_difference_address0,output_difference_ce0,output_difference_q0,output_difference_address1,output_difference_ce1,output_difference_q1,output_difference_address2,output_difference_ce2,output_difference_q2,output_difference_address3,output_difference_ce3,output_difference_q3,output_difference_address4,output_difference_ce4,output_difference_q4,output_difference_address5,output_difference_ce5,output_difference_q5,output_difference_address6,output_difference_ce6,output_difference_q6,output_difference_address7,output_difference_ce7,output_difference_q7,output_difference_address8,output_difference_ce8,output_difference_q8,output_difference_address9,output_difference_ce9,output_difference_q9,output_difference_address10,output_difference_ce10,output_difference_q10,output_difference_address11,output_difference_ce11,output_difference_q11,output_difference_address12,output_difference_ce12,output_difference_q12,output_difference_address13,output_difference_ce13,output_difference_q13,output_difference_address14,output_difference_ce14,output_difference_q14,output_difference_address15,output_difference_ce15,output_difference_q15,output_difference_address16,output_difference_ce16,output_difference_q16,training_data_address0,training_data_ce0,training_data_q0,idx,grp_fu_3151_p_din0,grp_fu_3151_p_din1,grp_fu_3151_p_dout0,grp_fu_3151_p_ce,grp_fu_3155_p_din0,grp_fu_3155_p_din1,grp_fu_3155_p_dout0,grp_fu_3155_p_ce,grp_fu_3159_p_din0,grp_fu_3159_p_din1,grp_fu_3159_p_dout0,grp_fu_3159_p_ce,grp_fu_3163_p_din0,grp_fu_3163_p_din1,grp_fu_3163_p_dout0,grp_fu_3163_p_ce,grp_fu_3167_p_din0,grp_fu_3167_p_din1,grp_fu_3167_p_dout0,grp_fu_3167_p_ce,grp_fu_3171_p_din0,grp_fu_3171_p_din1,grp_fu_3171_p_dout0,grp_fu_3171_p_ce,grp_fu_3175_p_din0,grp_fu_3175_p_din1,grp_fu_3175_p_dout0,grp_fu_3175_p_ce,grp_fu_3179_p_din0,grp_fu_3179_p_din1,grp_fu_3179_p_dout0,grp_fu_3179_p_ce,grp_fu_3183_p_din0,grp_fu_3183_p_din1,grp_fu_3183_p_dout0,grp_fu_3183_p_ce,grp_fu_3187_p_din0,grp_fu_3187_p_din1,grp_fu_3187_p_dout0,grp_fu_3187_p_ce,grp_fu_3191_p_din0,grp_fu_3191_p_din1,grp_fu_3191_p_dout0,grp_fu_3191_p_ce,grp_fu_3195_p_din0,grp_fu_3195_p_din1,grp_fu_3195_p_dout0,grp_fu_3195_p_ce,grp_fu_3199_p_din0,grp_fu_3199_p_din1,grp_fu_3199_p_dout0,grp_fu_3199_p_ce,grp_fu_3203_p_din0,grp_fu_3203_p_din1,grp_fu_3203_p_dout0,grp_fu_3203_p_ce,grp_fu_3207_p_din0,grp_fu_3207_p_din1,grp_fu_3207_p_dout0,grp_fu_3207_p_ce,grp_fu_3211_p_din0,grp_fu_3211_p_din1,grp_fu_3211_p_dout0,grp_fu_3211_p_ce,grp_fu_3215_p_din0,grp_fu_3215_p_din1,grp_fu_3215_p_dout0,grp_fu_3215_p_ce,grp_fu_3219_p_din0,grp_fu_3219_p_din1,grp_fu_3219_p_dout0,grp_fu_3219_p_ce,grp_fu_3223_p_din0,grp_fu_3223_p_din1,grp_fu_3223_p_dout0,grp_fu_3223_p_ce,grp_fu_3227_p_din0,grp_fu_3227_p_din1,grp_fu_3227_p_dout0,grp_fu_3227_p_ce,grp_fu_3231_p_din0,grp_fu_3231_p_din1,grp_fu_3231_p_dout0,grp_fu_3231_p_ce,grp_fu_3235_p_din0,grp_fu_3235_p_din1,grp_fu_3235_p_dout0,grp_fu_3235_p_ce,grp_fu_3239_p_din0,grp_fu_3239_p_din1,grp_fu_3239_p_dout0,grp_fu_3239_p_ce,grp_fu_3243_p_din0,grp_fu_3243_p_din1,grp_fu_3243_p_dout0,grp_fu_3243_p_ce,grp_fu_3247_p_din0,grp_fu_3247_p_din1,grp_fu_3247_p_dout0,grp_fu_3247_p_ce,grp_fu_3251_p_din0,grp_fu_3251_p_din1,grp_fu_3251_p_dout0,grp_fu_3251_p_ce,grp_fu_3255_p_din0,grp_fu_3255_p_din1,grp_fu_3255_p_dout0,grp_fu_3255_p_ce,grp_fu_3259_p_din0,grp_fu_3259_p_din1,grp_fu_3259_p_dout0,grp_fu_3259_p_ce,grp_fu_3263_p_din0,grp_fu_3263_p_din1,grp_fu_3263_p_dout0,grp_fu_3263_p_ce,grp_fu_3267_p_din0,grp_fu_3267_p_din1,grp_fu_3267_p_dout0,grp_fu_3267_p_ce,grp_fu_3271_p_din0,grp_fu_3271_p_din1,grp_fu_3271_p_dout0,grp_fu_3271_p_ce,grp_fu_3275_p_din0,grp_fu_3275_p_din1,grp_fu_3275_p_dout0,grp_fu_3275_p_ce,grp_fu_3279_p_din0,grp_fu_3279_p_din1,grp_fu_3279_p_dout0,grp_fu_3279_p_ce,grp_fu_3283_p_din0,grp_fu_3283_p_din1,grp_fu_3283_p_dout0,grp_fu_3283_p_ce,grp_fu_3287_p_din0,grp_fu_3287_p_din1,grp_fu_3287_p_dout0,grp_fu_3287_p_ce,grp_fu_3315_p_din0,grp_fu_3315_p_din1,grp_fu_3315_p_dout0,grp_fu_3315_p_ce,grp_fu_3319_p_din0,grp_fu_3319_p_din1,grp_fu_3319_p_dout0,grp_fu_3319_p_ce,grp_fu_3323_p_din0,grp_fu_3323_p_din1,grp_fu_3323_p_dout0,grp_fu_3323_p_ce,grp_fu_3327_p_din0,grp_fu_3327_p_din1,grp_fu_3327_p_dout0,grp_fu_3327_p_ce,grp_fu_3331_p_din0,grp_fu_3331_p_din1,grp_fu_3331_p_dout0,grp_fu_3331_p_ce,grp_fu_3335_p_din0,grp_fu_3335_p_din1,grp_fu_3335_p_dout0,grp_fu_3335_p_ce,grp_fu_3339_p_din0,grp_fu_3339_p_din1,grp_fu_3339_p_dout0,grp_fu_3339_p_ce,grp_fu_3343_p_din0,grp_fu_3343_p_din1,grp_fu_3343_p_dout0,grp_fu_3343_p_ce,grp_fu_3347_p_din0,grp_fu_3347_p_din1,grp_fu_3347_p_dout0,grp_fu_3347_p_ce,grp_fu_3351_p_din0,grp_fu_3351_p_din1,grp_fu_3351_p_dout0,grp_fu_3351_p_ce,grp_fu_3355_p_din0,grp_fu_3355_p_din1,grp_fu_3355_p_dout0,grp_fu_3355_p_ce,grp_fu_3359_p_din0,grp_fu_3359_p_din1,grp_fu_3359_p_dout0,grp_fu_3359_p_ce,grp_fu_3363_p_din0,grp_fu_3363_p_din1,grp_fu_3363_p_dout0,grp_fu_3363_p_ce,grp_fu_3375_p_din0,grp_fu_3375_p_din1,grp_fu_3375_p_dout0,grp_fu_3375_p_ce,grp_fu_3379_p_din0,grp_fu_3379_p_din1,grp_fu_3379_p_dout0,grp_fu_3379_p_ce,grp_fu_3383_p_din0,grp_fu_3383_p_din1,grp_fu_3383_p_dout0,grp_fu_3383_p_ce,grp_fu_3387_p_din0,grp_fu_3387_p_din1,grp_fu_3387_p_dout0,grp_fu_3387_p_ce,grp_fu_3391_p_din0,grp_fu_3391_p_din1,grp_fu_3391_p_dout0,grp_fu_3391_p_ce,grp_fu_3395_p_din0,grp_fu_3395_p_din1,grp_fu_3395_p_dout0,grp_fu_3395_p_ce,grp_fu_3399_p_din0,grp_fu_3399_p_din1,grp_fu_3399_p_dout0,grp_fu_3399_p_ce,grp_fu_3403_p_din0,grp_fu_3403_p_din1,grp_fu_3403_p_dout0,grp_fu_3403_p_ce,grp_fu_3407_p_din0,grp_fu_3407_p_din1,grp_fu_3407_p_dout0,grp_fu_3407_p_ce,grp_fu_3411_p_din0,grp_fu_3411_p_din1,grp_fu_3411_p_dout0,grp_fu_3411_p_ce,grp_fu_3415_p_din0,grp_fu_3415_p_din1,grp_fu_3415_p_dout0,grp_fu_3415_p_ce,grp_fu_3419_p_din0,grp_fu_3419_p_din1,grp_fu_3419_p_dout0,grp_fu_3419_p_ce,grp_fu_3423_p_din0,grp_fu_3423_p_din1,grp_fu_3423_p_dout0,grp_fu_3423_p_ce,grp_fu_3427_p_din0,grp_fu_3427_p_din1,grp_fu_3427_p_dout0,grp_fu_3427_p_ce,grp_fu_3431_p_din0,grp_fu_3431_p_din1,grp_fu_3431_p_dout0,grp_fu_3431_p_ce,grp_fu_3435_p_din0,grp_fu_3435_p_din1,grp_fu_3435_p_dout0,grp_fu_3435_p_ce); 
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [4:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [4:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [4:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [4:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [4:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [4:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [4:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
output  [4:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [4:0] delta_weights1_4_address1;
output   delta_weights1_4_ce1;
output   delta_weights1_4_we1;
output  [63:0] delta_weights1_4_d1;
output  [4:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [4:0] delta_weights1_5_address1;
output   delta_weights1_5_ce1;
output   delta_weights1_5_we1;
output  [63:0] delta_weights1_5_d1;
output  [4:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [4:0] delta_weights1_6_address1;
output   delta_weights1_6_ce1;
output   delta_weights1_6_we1;
output  [63:0] delta_weights1_6_d1;
output  [4:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [4:0] delta_weights1_7_address1;
output   delta_weights1_7_ce1;
output   delta_weights1_7_we1;
output  [63:0] delta_weights1_7_d1;
output  [4:0] delta_weights1_8_address0;
output   delta_weights1_8_ce0;
output   delta_weights1_8_we0;
output  [63:0] delta_weights1_8_d0;
output  [4:0] delta_weights1_8_address1;
output   delta_weights1_8_ce1;
output   delta_weights1_8_we1;
output  [63:0] delta_weights1_8_d1;
output  [4:0] delta_weights1_9_address0;
output   delta_weights1_9_ce0;
output   delta_weights1_9_we0;
output  [63:0] delta_weights1_9_d0;
output  [4:0] delta_weights1_9_address1;
output   delta_weights1_9_ce1;
output   delta_weights1_9_we1;
output  [63:0] delta_weights1_9_d1;
output  [4:0] delta_weights1_10_address0;
output   delta_weights1_10_ce0;
output   delta_weights1_10_we0;
output  [63:0] delta_weights1_10_d0;
output  [4:0] delta_weights1_10_address1;
output   delta_weights1_10_ce1;
output   delta_weights1_10_we1;
output  [63:0] delta_weights1_10_d1;
output  [4:0] delta_weights1_11_address0;
output   delta_weights1_11_ce0;
output   delta_weights1_11_we0;
output  [63:0] delta_weights1_11_d0;
output  [4:0] delta_weights1_11_address1;
output   delta_weights1_11_ce1;
output   delta_weights1_11_we1;
output  [63:0] delta_weights1_11_d1;
output  [4:0] delta_weights1_12_address0;
output   delta_weights1_12_ce0;
output   delta_weights1_12_we0;
output  [63:0] delta_weights1_12_d0;
output  [4:0] delta_weights1_12_address1;
output   delta_weights1_12_ce1;
output   delta_weights1_12_we1;
output  [63:0] delta_weights1_12_d1;
output  [4:0] delta_weights1_13_address0;
output   delta_weights1_13_ce0;
output   delta_weights1_13_we0;
output  [63:0] delta_weights1_13_d0;
output  [4:0] delta_weights1_13_address1;
output   delta_weights1_13_ce1;
output   delta_weights1_13_we1;
output  [63:0] delta_weights1_13_d1;
output  [4:0] delta_weights1_14_address0;
output   delta_weights1_14_ce0;
output   delta_weights1_14_we0;
output  [63:0] delta_weights1_14_d0;
output  [4:0] delta_weights1_14_address1;
output   delta_weights1_14_ce1;
output   delta_weights1_14_we1;
output  [63:0] delta_weights1_14_d1;
output  [4:0] delta_weights1_15_address0;
output   delta_weights1_15_ce0;
output   delta_weights1_15_we0;
output  [63:0] delta_weights1_15_d0;
output  [4:0] delta_weights1_15_address1;
output   delta_weights1_15_ce1;
output   delta_weights1_15_we1;
output  [63:0] delta_weights1_15_d1;
output  [4:0] delta_weights1_16_address0;
output   delta_weights1_16_ce0;
output   delta_weights1_16_we0;
output  [63:0] delta_weights1_16_d0;
output  [4:0] delta_weights1_16_address1;
output   delta_weights1_16_ce1;
output   delta_weights1_16_we1;
output  [63:0] delta_weights1_16_d1;
output  [4:0] delta_weights1_17_address0;
output   delta_weights1_17_ce0;
output   delta_weights1_17_we0;
output  [63:0] delta_weights1_17_d0;
output  [4:0] delta_weights1_17_address1;
output   delta_weights1_17_ce1;
output   delta_weights1_17_we1;
output  [63:0] delta_weights1_17_d1;
output  [4:0] delta_weights1_18_address0;
output   delta_weights1_18_ce0;
output   delta_weights1_18_we0;
output  [63:0] delta_weights1_18_d0;
output  [4:0] delta_weights1_18_address1;
output   delta_weights1_18_ce1;
output   delta_weights1_18_we1;
output  [63:0] delta_weights1_18_d1;
output  [4:0] delta_weights1_19_address0;
output   delta_weights1_19_ce0;
output   delta_weights1_19_we0;
output  [63:0] delta_weights1_19_d0;
output  [4:0] delta_weights1_19_address1;
output   delta_weights1_19_ce1;
output   delta_weights1_19_we1;
output  [63:0] delta_weights1_19_d1;
output  [4:0] delta_weights1_20_address0;
output   delta_weights1_20_ce0;
output   delta_weights1_20_we0;
output  [63:0] delta_weights1_20_d0;
output  [4:0] delta_weights1_20_address1;
output   delta_weights1_20_ce1;
output   delta_weights1_20_we1;
output  [63:0] delta_weights1_20_d1;
output  [4:0] delta_weights1_21_address0;
output   delta_weights1_21_ce0;
output   delta_weights1_21_we0;
output  [63:0] delta_weights1_21_d0;
output  [4:0] delta_weights1_21_address1;
output   delta_weights1_21_ce1;
output   delta_weights1_21_we1;
output  [63:0] delta_weights1_21_d1;
output  [4:0] delta_weights1_22_address0;
output   delta_weights1_22_ce0;
output   delta_weights1_22_we0;
output  [63:0] delta_weights1_22_d0;
output  [4:0] delta_weights1_22_address1;
output   delta_weights1_22_ce1;
output   delta_weights1_22_we1;
output  [63:0] delta_weights1_22_d1;
output  [4:0] delta_weights1_23_address0;
output   delta_weights1_23_ce0;
output   delta_weights1_23_we0;
output  [63:0] delta_weights1_23_d0;
output  [4:0] delta_weights1_23_address1;
output   delta_weights1_23_ce1;
output   delta_weights1_23_we1;
output  [63:0] delta_weights1_23_d1;
output  [4:0] delta_weights1_24_address0;
output   delta_weights1_24_ce0;
output   delta_weights1_24_we0;
output  [63:0] delta_weights1_24_d0;
output  [4:0] delta_weights1_24_address1;
output   delta_weights1_24_ce1;
output   delta_weights1_24_we1;
output  [63:0] delta_weights1_24_d1;
output  [4:0] delta_weights1_25_address0;
output   delta_weights1_25_ce0;
output   delta_weights1_25_we0;
output  [63:0] delta_weights1_25_d0;
output  [4:0] delta_weights1_25_address1;
output   delta_weights1_25_ce1;
output   delta_weights1_25_we1;
output  [63:0] delta_weights1_25_d1;
output  [4:0] delta_weights1_26_address0;
output   delta_weights1_26_ce0;
output   delta_weights1_26_we0;
output  [63:0] delta_weights1_26_d0;
output  [4:0] delta_weights1_26_address1;
output   delta_weights1_26_ce1;
output   delta_weights1_26_we1;
output  [63:0] delta_weights1_26_d1;
output  [4:0] delta_weights1_27_address0;
output   delta_weights1_27_ce0;
output   delta_weights1_27_we0;
output  [63:0] delta_weights1_27_d0;
output  [4:0] delta_weights1_27_address1;
output   delta_weights1_27_ce1;
output   delta_weights1_27_we1;
output  [63:0] delta_weights1_27_d1;
output  [4:0] delta_weights1_28_address0;
output   delta_weights1_28_ce0;
output   delta_weights1_28_we0;
output  [63:0] delta_weights1_28_d0;
output  [4:0] delta_weights1_28_address1;
output   delta_weights1_28_ce1;
output   delta_weights1_28_we1;
output  [63:0] delta_weights1_28_d1;
output  [4:0] delta_weights1_29_address0;
output   delta_weights1_29_ce0;
output   delta_weights1_29_we0;
output  [63:0] delta_weights1_29_d0;
output  [4:0] delta_weights1_29_address1;
output   delta_weights1_29_ce1;
output   delta_weights1_29_we1;
output  [63:0] delta_weights1_29_d1;
output  [4:0] delta_weights1_30_address0;
output   delta_weights1_30_ce0;
output   delta_weights1_30_we0;
output  [63:0] delta_weights1_30_d0;
output  [4:0] delta_weights1_30_address1;
output   delta_weights1_30_ce1;
output   delta_weights1_30_we1;
output  [63:0] delta_weights1_30_d1;
output  [4:0] delta_weights1_31_address0;
output   delta_weights1_31_ce0;
output   delta_weights1_31_we0;
output  [63:0] delta_weights1_31_d0;
output  [4:0] delta_weights1_31_address1;
output   delta_weights1_31_ce1;
output   delta_weights1_31_we1;
output  [63:0] delta_weights1_31_d1;
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
output  [11:0] training_data_address0;
output   training_data_ce0;
input  [63:0] training_data_q0;
input  [11:0] idx;
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
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_load_reg_1064;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_load_64_reg_1069;
reg   [63:0] output_difference_load_65_reg_1074;
reg   [63:0] output_difference_load_66_reg_1079;
reg   [63:0] output_difference_load_67_reg_1084;
reg   [63:0] output_difference_load_68_reg_1089;
reg   [63:0] output_difference_load_69_reg_1094;
reg   [63:0] output_difference_load_70_reg_1099;
reg   [63:0] output_difference_load_71_reg_1104;
reg   [63:0] output_difference_load_72_reg_1109;
reg   [63:0] output_difference_load_73_reg_1114;
reg   [63:0] output_difference_load_74_reg_1119;
reg   [63:0] output_difference_load_75_reg_1124;
reg   [63:0] output_difference_load_76_reg_1214;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_load_77_reg_1219;
reg   [63:0] output_difference_load_78_reg_1224;
reg   [63:0] output_difference_load_79_reg_1229;
reg   [63:0] output_difference_load_80_reg_1234;
reg   [63:0] output_difference_load_81_reg_1239;
reg   [63:0] output_difference_load_82_reg_1244;
reg   [63:0] output_difference_load_83_reg_1249;
reg   [63:0] output_difference_load_84_reg_1254;
reg   [63:0] output_difference_load_85_reg_1259;
reg   [63:0] output_difference_load_86_reg_1264;
reg   [63:0] output_difference_load_87_reg_1269;
reg   [63:0] output_difference_load_88_reg_1274;
reg   [63:0] output_difference_load_89_reg_1279;
reg   [63:0] output_difference_load_90_reg_1284;
reg   [63:0] output_difference_load_91_reg_1289;
reg   [63:0] output_difference_load_92_reg_1294;
reg   [63:0] output_difference_load_93_reg_1384;
wire    ap_CS_fsm_state4;
reg   [63:0] output_difference_load_94_reg_1389;
reg   [63:0] output_difference_load_95_reg_1394;
reg   [63:0] output_difference_load_96_reg_1399;
reg   [63:0] output_difference_load_97_reg_1404;
reg   [63:0] output_difference_load_98_reg_1409;
reg   [63:0] output_difference_load_99_reg_1414;
reg   [63:0] output_difference_load_100_reg_1419;
reg   [63:0] output_difference_load_101_reg_1424;
reg   [63:0] output_difference_load_102_reg_1429;
reg   [63:0] output_difference_load_103_reg_1434;
reg   [63:0] output_difference_load_104_reg_1439;
reg   [63:0] output_difference_load_105_reg_1444;
reg   [63:0] output_difference_load_106_reg_1449;
reg   [63:0] output_difference_load_107_reg_1454;
reg   [63:0] output_difference_load_108_reg_1459;
reg   [63:0] output_difference_load_109_reg_1464;
reg   [63:0] output_difference_load_110_reg_1554;
wire    ap_CS_fsm_state5;
reg   [63:0] output_difference_load_111_reg_1559;
reg   [63:0] output_difference_load_112_reg_1564;
reg   [63:0] output_difference_load_113_reg_1569;
reg   [63:0] output_difference_load_114_reg_1574;
reg   [63:0] output_difference_load_115_reg_1579;
reg   [63:0] output_difference_load_116_reg_1584;
reg   [63:0] output_difference_load_117_reg_1589;
reg   [63:0] output_difference_load_118_reg_1594;
reg   [63:0] output_difference_load_119_reg_1599;
reg   [63:0] output_difference_load_120_reg_1604;
reg   [63:0] output_difference_load_121_reg_1609;
reg   [63:0] output_difference_load_122_reg_1614;
reg   [63:0] output_difference_load_123_reg_1619;
reg   [63:0] output_difference_load_124_reg_1624;
reg   [63:0] output_difference_load_125_reg_1629;
reg   [63:0] output_difference_load_126_reg_1634;
wire    ap_CS_fsm_state6;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_start;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_done;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_idle;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_ready;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_d1;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_ce0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_we0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_d0;
wire   [4:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_address1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_ce1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_we1;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_d1;
wire   [11:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_training_data_address0;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_training_data_ce0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1644_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1644_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1644_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1648_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1648_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1648_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1652_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1652_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1652_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1656_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1656_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1656_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1660_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1660_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1660_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1664_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1664_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1664_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1668_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1668_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1668_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1672_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1672_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1672_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1676_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1676_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1676_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1680_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1680_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1680_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1684_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1684_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1684_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1688_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1688_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1688_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1692_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1692_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1692_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1696_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1696_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1696_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1700_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1700_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1700_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1704_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1704_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1704_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1708_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1708_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1708_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1712_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1712_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1712_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1716_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1716_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1716_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1720_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1720_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1720_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1724_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1724_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1724_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1728_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1728_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1728_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1732_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1732_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1732_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1736_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1736_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1736_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1740_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1740_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1740_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1744_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1744_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1744_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1748_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1748_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1748_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1752_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1752_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1752_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1756_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1756_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1756_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1760_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1760_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1760_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1764_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1764_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1764_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1768_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1768_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1768_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1772_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1772_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1772_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1776_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1776_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1776_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1780_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1780_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1780_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1784_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1784_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1784_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1788_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1788_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1788_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1792_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1792_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1792_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1796_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1796_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1796_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1800_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1800_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1800_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1804_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1804_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1804_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1808_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1808_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1808_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1812_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1812_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1812_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1816_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1816_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1816_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1820_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1820_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1820_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1824_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1824_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1824_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1828_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1828_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1828_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1832_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1832_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1832_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1836_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1836_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1836_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1840_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1840_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1840_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1844_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1844_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1844_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1848_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1848_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1848_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1852_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1852_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1852_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1856_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1856_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1856_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1860_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1860_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1860_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1864_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1864_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1864_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1868_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1868_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1868_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1872_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1872_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1872_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1876_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1876_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1876_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1880_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1880_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1880_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1884_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1884_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1884_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1888_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1888_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1888_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1892_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1892_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1892_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1896_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1896_p_din1;
wire    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1896_p_ce;
reg    grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_start_reg;
wire    ap_CS_fsm_state7;
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
reg    grp_fu_1644_ce;
reg    grp_fu_1648_ce;
reg    grp_fu_1652_ce;
reg    grp_fu_1656_ce;
reg    grp_fu_1660_ce;
reg    grp_fu_1664_ce;
reg    grp_fu_1668_ce;
reg    grp_fu_1672_ce;
reg    grp_fu_1676_ce;
reg    grp_fu_1680_ce;
reg    grp_fu_1684_ce;
reg    grp_fu_1688_ce;
reg    grp_fu_1692_ce;
reg    grp_fu_1696_ce;
reg    grp_fu_1700_ce;
reg    grp_fu_1704_ce;
reg    grp_fu_1708_ce;
reg    grp_fu_1712_ce;
reg    grp_fu_1716_ce;
reg    grp_fu_1720_ce;
reg    grp_fu_1724_ce;
reg    grp_fu_1728_ce;
reg    grp_fu_1732_ce;
reg    grp_fu_1736_ce;
reg    grp_fu_1740_ce;
reg    grp_fu_1744_ce;
reg    grp_fu_1748_ce;
reg    grp_fu_1752_ce;
reg    grp_fu_1756_ce;
reg    grp_fu_1760_ce;
reg    grp_fu_1764_ce;
reg    grp_fu_1768_ce;
reg    grp_fu_1772_ce;
reg    grp_fu_1776_ce;
reg    grp_fu_1780_ce;
reg    grp_fu_1784_ce;
reg    grp_fu_1788_ce;
reg    grp_fu_1792_ce;
reg    grp_fu_1796_ce;
reg    grp_fu_1800_ce;
reg    grp_fu_1804_ce;
reg    grp_fu_1808_ce;
reg    grp_fu_1812_ce;
reg    grp_fu_1816_ce;
reg    grp_fu_1820_ce;
reg    grp_fu_1824_ce;
reg    grp_fu_1828_ce;
reg    grp_fu_1832_ce;
reg    grp_fu_1836_ce;
reg    grp_fu_1840_ce;
reg    grp_fu_1844_ce;
reg    grp_fu_1848_ce;
reg    grp_fu_1852_ce;
reg    grp_fu_1856_ce;
reg    grp_fu_1860_ce;
reg    grp_fu_1864_ce;
reg    grp_fu_1868_ce;
reg    grp_fu_1872_ce;
reg    grp_fu_1876_ce;
reg    grp_fu_1880_ce;
reg    grp_fu_1884_ce;
reg    grp_fu_1888_ce;
reg    grp_fu_1892_ce;
reg    grp_fu_1896_ce;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1 grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_start),.ap_done(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_done),.ap_idle(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_idle),.ap_ready(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_ready),.delta_weights1_31_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_address0),.delta_weights1_31_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_ce0),.delta_weights1_31_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_we0),.delta_weights1_31_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_d0),.delta_weights1_31_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_address1),.delta_weights1_31_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_ce1),.delta_weights1_31_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_we1),.delta_weights1_31_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_d1),.delta_weights1_30_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_address0),.delta_weights1_30_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_ce0),.delta_weights1_30_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_we0),.delta_weights1_30_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_d0),.delta_weights1_30_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_address1),.delta_weights1_30_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_ce1),.delta_weights1_30_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_we1),.delta_weights1_30_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_d1),.delta_weights1_29_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_address0),.delta_weights1_29_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_ce0),.delta_weights1_29_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_we0),.delta_weights1_29_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_d0),.delta_weights1_29_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_address1),.delta_weights1_29_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_ce1),.delta_weights1_29_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_we1),.delta_weights1_29_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_d1),.delta_weights1_28_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_address0),.delta_weights1_28_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_ce0),.delta_weights1_28_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_we0),.delta_weights1_28_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_d0),.delta_weights1_28_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_address1),.delta_weights1_28_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_ce1),.delta_weights1_28_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_we1),.delta_weights1_28_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_d1),.delta_weights1_27_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_address0),.delta_weights1_27_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_ce0),.delta_weights1_27_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_we0),.delta_weights1_27_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_d0),.delta_weights1_27_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_address1),.delta_weights1_27_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_ce1),.delta_weights1_27_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_we1),.delta_weights1_27_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_d1),.delta_weights1_26_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_address0),.delta_weights1_26_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_ce0),.delta_weights1_26_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_we0),.delta_weights1_26_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_d0),.delta_weights1_26_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_address1),.delta_weights1_26_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_ce1),.delta_weights1_26_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_we1),.delta_weights1_26_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_d1),.delta_weights1_25_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_address0),.delta_weights1_25_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_ce0),.delta_weights1_25_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_we0),.delta_weights1_25_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_d0),.delta_weights1_25_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_address1),.delta_weights1_25_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_ce1),.delta_weights1_25_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_we1),.delta_weights1_25_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_d1),.delta_weights1_24_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_address0),.delta_weights1_24_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_ce0),.delta_weights1_24_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_we0),.delta_weights1_24_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_d0),.delta_weights1_24_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_address1),.delta_weights1_24_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_ce1),.delta_weights1_24_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_we1),.delta_weights1_24_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_d1),.delta_weights1_23_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_address0),.delta_weights1_23_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_ce0),.delta_weights1_23_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_we0),.delta_weights1_23_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_d0),.delta_weights1_23_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_address1),.delta_weights1_23_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_ce1),.delta_weights1_23_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_we1),.delta_weights1_23_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_d1),.delta_weights1_22_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_address0),.delta_weights1_22_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_ce0),.delta_weights1_22_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_we0),.delta_weights1_22_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_d0),.delta_weights1_22_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_address1),.delta_weights1_22_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_ce1),.delta_weights1_22_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_we1),.delta_weights1_22_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_d1),.delta_weights1_21_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_address0),.delta_weights1_21_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_ce0),.delta_weights1_21_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_we0),.delta_weights1_21_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_d0),.delta_weights1_21_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_address1),.delta_weights1_21_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_ce1),.delta_weights1_21_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_we1),.delta_weights1_21_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_d1),.delta_weights1_20_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_address0),.delta_weights1_20_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_ce0),.delta_weights1_20_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_we0),.delta_weights1_20_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_d0),.delta_weights1_20_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_address1),.delta_weights1_20_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_ce1),.delta_weights1_20_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_we1),.delta_weights1_20_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_d1),.delta_weights1_19_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_address0),.delta_weights1_19_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_ce0),.delta_weights1_19_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_we0),.delta_weights1_19_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_d0),.delta_weights1_19_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_address1),.delta_weights1_19_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_ce1),.delta_weights1_19_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_we1),.delta_weights1_19_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_d1),.delta_weights1_18_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_address0),.delta_weights1_18_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_ce0),.delta_weights1_18_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_we0),.delta_weights1_18_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_d0),.delta_weights1_18_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_address1),.delta_weights1_18_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_ce1),.delta_weights1_18_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_we1),.delta_weights1_18_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_d1),.delta_weights1_17_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_address0),.delta_weights1_17_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_ce0),.delta_weights1_17_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_we0),.delta_weights1_17_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_d0),.delta_weights1_17_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_address1),.delta_weights1_17_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_ce1),.delta_weights1_17_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_we1),.delta_weights1_17_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_d1),.delta_weights1_16_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_address0),.delta_weights1_16_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_ce0),.delta_weights1_16_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_we0),.delta_weights1_16_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_d0),.delta_weights1_16_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_address1),.delta_weights1_16_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_ce1),.delta_weights1_16_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_we1),.delta_weights1_16_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_d1),.delta_weights1_15_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_address0),.delta_weights1_15_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_ce0),.delta_weights1_15_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_we0),.delta_weights1_15_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_d0),.delta_weights1_15_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_address1),.delta_weights1_15_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_ce1),.delta_weights1_15_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_we1),.delta_weights1_15_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_d1),.delta_weights1_14_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_address0),.delta_weights1_14_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_ce0),.delta_weights1_14_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_we0),.delta_weights1_14_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_d0),.delta_weights1_14_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_address1),.delta_weights1_14_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_ce1),.delta_weights1_14_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_we1),.delta_weights1_14_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_d1),.delta_weights1_13_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_address0),.delta_weights1_13_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_ce0),.delta_weights1_13_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_we0),.delta_weights1_13_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_d0),.delta_weights1_13_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_address1),.delta_weights1_13_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_ce1),.delta_weights1_13_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_we1),.delta_weights1_13_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_d1),.delta_weights1_12_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_address0),.delta_weights1_12_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_ce0),.delta_weights1_12_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_we0),.delta_weights1_12_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_d0),.delta_weights1_12_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_address1),.delta_weights1_12_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_ce1),.delta_weights1_12_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_we1),.delta_weights1_12_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_d1),.delta_weights1_11_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_address0),.delta_weights1_11_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_ce0),.delta_weights1_11_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_we0),.delta_weights1_11_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_d0),.delta_weights1_11_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_address1),.delta_weights1_11_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_ce1),.delta_weights1_11_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_we1),.delta_weights1_11_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_d1),.delta_weights1_10_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_address0),.delta_weights1_10_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_ce0),.delta_weights1_10_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_we0),.delta_weights1_10_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_d0),.delta_weights1_10_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_address1),.delta_weights1_10_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_ce1),.delta_weights1_10_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_we1),.delta_weights1_10_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_d1),.delta_weights1_9_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_address0),.delta_weights1_9_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_ce0),.delta_weights1_9_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_we0),.delta_weights1_9_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_d0),.delta_weights1_9_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_address1),.delta_weights1_9_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_ce1),.delta_weights1_9_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_we1),.delta_weights1_9_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_d1),.delta_weights1_8_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_address0),.delta_weights1_8_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_ce0),.delta_weights1_8_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_we0),.delta_weights1_8_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_d0),.delta_weights1_8_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_address1),.delta_weights1_8_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_ce1),.delta_weights1_8_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_we1),.delta_weights1_8_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_d1),.delta_weights1_7_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_address0),.delta_weights1_7_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_ce0),.delta_weights1_7_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_we0),.delta_weights1_7_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_d0),.delta_weights1_7_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_address1),.delta_weights1_7_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_ce1),.delta_weights1_7_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_we1),.delta_weights1_7_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_d1),.delta_weights1_6_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_address0),.delta_weights1_6_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_ce0),.delta_weights1_6_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_we0),.delta_weights1_6_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_d0),.delta_weights1_6_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_address1),.delta_weights1_6_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_ce1),.delta_weights1_6_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_we1),.delta_weights1_6_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_d1),.delta_weights1_5_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_address0),.delta_weights1_5_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_ce0),.delta_weights1_5_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_we0),.delta_weights1_5_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_d0),.delta_weights1_5_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_address1),.delta_weights1_5_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_ce1),.delta_weights1_5_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_we1),.delta_weights1_5_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_d1),.delta_weights1_4_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_address0),.delta_weights1_4_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_ce0),.delta_weights1_4_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_we0),.delta_weights1_4_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_d0),.delta_weights1_4_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_address1),.delta_weights1_4_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_ce1),.delta_weights1_4_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_we1),.delta_weights1_4_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_d1),.delta_weights1_3_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_address0),.delta_weights1_3_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_ce0),.delta_weights1_3_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_we0),.delta_weights1_3_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_d0),.delta_weights1_3_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_address1),.delta_weights1_3_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_ce1),.delta_weights1_3_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_we1),.delta_weights1_3_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_d1),.delta_weights1_2_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_address0),.delta_weights1_2_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_ce0),.delta_weights1_2_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_we0),.delta_weights1_2_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_d0),.delta_weights1_2_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_address1),.delta_weights1_2_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_ce1),.delta_weights1_2_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_we1),.delta_weights1_2_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_d1),.delta_weights1_1_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_address0),.delta_weights1_1_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_ce0),.delta_weights1_1_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_we0),.delta_weights1_1_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_d0),.delta_weights1_1_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_address1),.delta_weights1_1_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_ce1),.delta_weights1_1_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_we1),.delta_weights1_1_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_d1),.delta_weights1_0_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_address0),.delta_weights1_0_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_ce0),.delta_weights1_0_we0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_we0),.delta_weights1_0_d0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_d0),.delta_weights1_0_address1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_address1),.delta_weights1_0_ce1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_ce1),.delta_weights1_0_we1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_we1),.delta_weights1_0_d1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_d1),.idx(idx),.training_data_address0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_training_data_address0),.training_data_ce0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_training_data_ce0),.training_data_q0(training_data_q0),.output_difference_load(output_difference_load_reg_1064),.output_difference_load_64(output_difference_load_64_reg_1069),.output_difference_load_65(output_difference_load_65_reg_1074),.output_difference_load_66(output_difference_load_66_reg_1079),.output_difference_load_67(output_difference_load_67_reg_1084),.output_difference_load_68(output_difference_load_68_reg_1089),.output_difference_load_69(output_difference_load_69_reg_1094),.output_difference_load_70(output_difference_load_70_reg_1099),.output_difference_load_71(output_difference_load_71_reg_1104),.output_difference_load_72(output_difference_load_72_reg_1109),.output_difference_load_73(output_difference_load_73_reg_1114),.output_difference_load_74(output_difference_load_74_reg_1119),.output_difference_load_75(output_difference_load_75_reg_1124),.output_difference_load_76(output_difference_load_76_reg_1214),.output_difference_load_77(output_difference_load_77_reg_1219),.output_difference_load_78(output_difference_load_78_reg_1224),.output_difference_load_79(output_difference_load_79_reg_1229),.output_difference_load_80(output_difference_load_80_reg_1234),.output_difference_load_81(output_difference_load_81_reg_1239),.output_difference_load_82(output_difference_load_82_reg_1244),.output_difference_load_83(output_difference_load_83_reg_1249),.output_difference_load_84(output_difference_load_84_reg_1254),.output_difference_load_85(output_difference_load_85_reg_1259),.output_difference_load_86(output_difference_load_86_reg_1264),.output_difference_load_87(output_difference_load_87_reg_1269),.output_difference_load_88(output_difference_load_88_reg_1274),.output_difference_load_89(output_difference_load_89_reg_1279),.output_difference_load_90(output_difference_load_90_reg_1284),.output_difference_load_91(output_difference_load_91_reg_1289),.output_difference_load_92(output_difference_load_92_reg_1294),.output_difference_load_93(output_difference_load_93_reg_1384),.output_difference_load_94(output_difference_load_94_reg_1389),.output_difference_load_95(output_difference_load_95_reg_1394),.output_difference_load_96(output_difference_load_96_reg_1399),.output_difference_load_97(output_difference_load_97_reg_1404),.output_difference_load_98(output_difference_load_98_reg_1409),.output_difference_load_99(output_difference_load_99_reg_1414),.output_difference_load_100(output_difference_load_100_reg_1419),.output_difference_load_101(output_difference_load_101_reg_1424),.output_difference_load_102(output_difference_load_102_reg_1429),.output_difference_load_103(output_difference_load_103_reg_1434),.output_difference_load_104(output_difference_load_104_reg_1439),.output_difference_load_105(output_difference_load_105_reg_1444),.output_difference_load_106(output_difference_load_106_reg_1449),.output_difference_load_107(output_difference_load_107_reg_1454),.output_difference_load_108(output_difference_load_108_reg_1459),.output_difference_load_109(output_difference_load_109_reg_1464),.output_difference_load_110(output_difference_load_110_reg_1554),.output_difference_load_111(output_difference_load_111_reg_1559),.output_difference_load_112(output_difference_load_112_reg_1564),.output_difference_load_113(output_difference_load_113_reg_1569),.output_difference_load_114(output_difference_load_114_reg_1574),.output_difference_load_115(output_difference_load_115_reg_1579),.output_difference_load_116(output_difference_load_116_reg_1584),.output_difference_load_117(output_difference_load_117_reg_1589),.output_difference_load_118(output_difference_load_118_reg_1594),.output_difference_load_119(output_difference_load_119_reg_1599),.output_difference_load_120(output_difference_load_120_reg_1604),.output_difference_load_121(output_difference_load_121_reg_1609),.output_difference_load_122(output_difference_load_122_reg_1614),.output_difference_load_123(output_difference_load_123_reg_1619),.output_difference_load_124(output_difference_load_124_reg_1624),.output_difference_load_125(output_difference_load_125_reg_1629),.output_difference_load_126(output_difference_load_126_reg_1634),.grp_fu_1644_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1644_p_din0),.grp_fu_1644_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1644_p_din1),.grp_fu_1644_p_dout0(grp_fu_3151_p_dout0),.grp_fu_1644_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1644_p_ce),.grp_fu_1648_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1648_p_din0),.grp_fu_1648_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1648_p_din1),.grp_fu_1648_p_dout0(grp_fu_3155_p_dout0),.grp_fu_1648_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1648_p_ce),.grp_fu_1652_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1652_p_din0),.grp_fu_1652_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1652_p_din1),.grp_fu_1652_p_dout0(grp_fu_3159_p_dout0),.grp_fu_1652_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1652_p_ce),.grp_fu_1656_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1656_p_din0),.grp_fu_1656_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1656_p_din1),.grp_fu_1656_p_dout0(grp_fu_3163_p_dout0),.grp_fu_1656_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1656_p_ce),.grp_fu_1660_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1660_p_din0),.grp_fu_1660_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1660_p_din1),.grp_fu_1660_p_dout0(grp_fu_3167_p_dout0),.grp_fu_1660_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1660_p_ce),.grp_fu_1664_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1664_p_din0),.grp_fu_1664_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1664_p_din1),.grp_fu_1664_p_dout0(grp_fu_3171_p_dout0),.grp_fu_1664_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1664_p_ce),.grp_fu_1668_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1668_p_din0),.grp_fu_1668_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1668_p_din1),.grp_fu_1668_p_dout0(grp_fu_3175_p_dout0),.grp_fu_1668_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1668_p_ce),.grp_fu_1672_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1672_p_din0),.grp_fu_1672_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1672_p_din1),.grp_fu_1672_p_dout0(grp_fu_3179_p_dout0),.grp_fu_1672_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1672_p_ce),.grp_fu_1676_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1676_p_din0),.grp_fu_1676_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1676_p_din1),.grp_fu_1676_p_dout0(grp_fu_3183_p_dout0),.grp_fu_1676_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1676_p_ce),.grp_fu_1680_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1680_p_din0),.grp_fu_1680_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1680_p_din1),.grp_fu_1680_p_dout0(grp_fu_3187_p_dout0),.grp_fu_1680_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1680_p_ce),.grp_fu_1684_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1684_p_din0),.grp_fu_1684_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1684_p_din1),.grp_fu_1684_p_dout0(grp_fu_3191_p_dout0),.grp_fu_1684_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1684_p_ce),.grp_fu_1688_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1688_p_din0),.grp_fu_1688_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1688_p_din1),.grp_fu_1688_p_dout0(grp_fu_3195_p_dout0),.grp_fu_1688_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1688_p_ce),.grp_fu_1692_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1692_p_din0),.grp_fu_1692_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1692_p_din1),.grp_fu_1692_p_dout0(grp_fu_3199_p_dout0),.grp_fu_1692_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1692_p_ce),.grp_fu_1696_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1696_p_din0),.grp_fu_1696_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1696_p_din1),.grp_fu_1696_p_dout0(grp_fu_3203_p_dout0),.grp_fu_1696_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1696_p_ce),.grp_fu_1700_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1700_p_din0),.grp_fu_1700_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1700_p_din1),.grp_fu_1700_p_dout0(grp_fu_3207_p_dout0),.grp_fu_1700_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1700_p_ce),.grp_fu_1704_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1704_p_din0),.grp_fu_1704_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1704_p_din1),.grp_fu_1704_p_dout0(grp_fu_3211_p_dout0),.grp_fu_1704_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1704_p_ce),.grp_fu_1708_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1708_p_din0),.grp_fu_1708_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1708_p_din1),.grp_fu_1708_p_dout0(grp_fu_3215_p_dout0),.grp_fu_1708_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1708_p_ce),.grp_fu_1712_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1712_p_din0),.grp_fu_1712_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1712_p_din1),.grp_fu_1712_p_dout0(grp_fu_3219_p_dout0),.grp_fu_1712_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1712_p_ce),.grp_fu_1716_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1716_p_din0),.grp_fu_1716_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1716_p_din1),.grp_fu_1716_p_dout0(grp_fu_3223_p_dout0),.grp_fu_1716_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1716_p_ce),.grp_fu_1720_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1720_p_din0),.grp_fu_1720_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1720_p_din1),.grp_fu_1720_p_dout0(grp_fu_3227_p_dout0),.grp_fu_1720_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1720_p_ce),.grp_fu_1724_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1724_p_din0),.grp_fu_1724_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1724_p_din1),.grp_fu_1724_p_dout0(grp_fu_3231_p_dout0),.grp_fu_1724_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1724_p_ce),.grp_fu_1728_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1728_p_din0),.grp_fu_1728_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1728_p_din1),.grp_fu_1728_p_dout0(grp_fu_3235_p_dout0),.grp_fu_1728_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1728_p_ce),.grp_fu_1732_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1732_p_din0),.grp_fu_1732_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1732_p_din1),.grp_fu_1732_p_dout0(grp_fu_3239_p_dout0),.grp_fu_1732_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1732_p_ce),.grp_fu_1736_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1736_p_din0),.grp_fu_1736_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1736_p_din1),.grp_fu_1736_p_dout0(grp_fu_3243_p_dout0),.grp_fu_1736_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1736_p_ce),.grp_fu_1740_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1740_p_din0),.grp_fu_1740_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1740_p_din1),.grp_fu_1740_p_dout0(grp_fu_3247_p_dout0),.grp_fu_1740_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1740_p_ce),.grp_fu_1744_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1744_p_din0),.grp_fu_1744_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1744_p_din1),.grp_fu_1744_p_dout0(grp_fu_3251_p_dout0),.grp_fu_1744_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1744_p_ce),.grp_fu_1748_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1748_p_din0),.grp_fu_1748_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1748_p_din1),.grp_fu_1748_p_dout0(grp_fu_3255_p_dout0),.grp_fu_1748_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1748_p_ce),.grp_fu_1752_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1752_p_din0),.grp_fu_1752_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1752_p_din1),.grp_fu_1752_p_dout0(grp_fu_3259_p_dout0),.grp_fu_1752_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1752_p_ce),.grp_fu_1756_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1756_p_din0),.grp_fu_1756_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1756_p_din1),.grp_fu_1756_p_dout0(grp_fu_3263_p_dout0),.grp_fu_1756_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1756_p_ce),.grp_fu_1760_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1760_p_din0),.grp_fu_1760_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1760_p_din1),.grp_fu_1760_p_dout0(grp_fu_3267_p_dout0),.grp_fu_1760_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1760_p_ce),.grp_fu_1764_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1764_p_din0),.grp_fu_1764_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1764_p_din1),.grp_fu_1764_p_dout0(grp_fu_3271_p_dout0),.grp_fu_1764_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1764_p_ce),.grp_fu_1768_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1768_p_din0),.grp_fu_1768_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1768_p_din1),.grp_fu_1768_p_dout0(grp_fu_3275_p_dout0),.grp_fu_1768_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1768_p_ce),.grp_fu_1772_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1772_p_din0),.grp_fu_1772_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1772_p_din1),.grp_fu_1772_p_dout0(grp_fu_3279_p_dout0),.grp_fu_1772_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1772_p_ce),.grp_fu_1776_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1776_p_din0),.grp_fu_1776_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1776_p_din1),.grp_fu_1776_p_dout0(grp_fu_3283_p_dout0),.grp_fu_1776_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1776_p_ce),.grp_fu_1780_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1780_p_din1),.grp_fu_1780_p_dout0(grp_fu_3287_p_dout0),.grp_fu_1780_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1780_p_ce),.grp_fu_1784_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1784_p_din0),.grp_fu_1784_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1784_p_din1),.grp_fu_1784_p_dout0(grp_fu_3315_p_dout0),.grp_fu_1784_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1784_p_ce),.grp_fu_1788_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1788_p_din0),.grp_fu_1788_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1788_p_din1),.grp_fu_1788_p_dout0(grp_fu_3319_p_dout0),.grp_fu_1788_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1788_p_ce),.grp_fu_1792_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1792_p_din0),.grp_fu_1792_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1792_p_din1),.grp_fu_1792_p_dout0(grp_fu_3323_p_dout0),.grp_fu_1792_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1792_p_ce),.grp_fu_1796_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1796_p_din0),.grp_fu_1796_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1796_p_din1),.grp_fu_1796_p_dout0(grp_fu_3327_p_dout0),.grp_fu_1796_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1796_p_ce),.grp_fu_1800_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1800_p_din0),.grp_fu_1800_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1800_p_din1),.grp_fu_1800_p_dout0(grp_fu_3331_p_dout0),.grp_fu_1800_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1800_p_ce),.grp_fu_1804_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1804_p_din0),.grp_fu_1804_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1804_p_din1),.grp_fu_1804_p_dout0(grp_fu_3335_p_dout0),.grp_fu_1804_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1804_p_ce),.grp_fu_1808_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1808_p_din0),.grp_fu_1808_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1808_p_din1),.grp_fu_1808_p_dout0(grp_fu_3339_p_dout0),.grp_fu_1808_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1808_p_ce),.grp_fu_1812_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1812_p_din0),.grp_fu_1812_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1812_p_din1),.grp_fu_1812_p_dout0(grp_fu_3343_p_dout0),.grp_fu_1812_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1812_p_ce),.grp_fu_1816_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1816_p_din0),.grp_fu_1816_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1816_p_din1),.grp_fu_1816_p_dout0(grp_fu_3347_p_dout0),.grp_fu_1816_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1816_p_ce),.grp_fu_1820_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1820_p_din0),.grp_fu_1820_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1820_p_din1),.grp_fu_1820_p_dout0(grp_fu_3351_p_dout0),.grp_fu_1820_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1820_p_ce),.grp_fu_1824_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1824_p_din0),.grp_fu_1824_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1824_p_din1),.grp_fu_1824_p_dout0(grp_fu_3355_p_dout0),.grp_fu_1824_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1824_p_ce),.grp_fu_1828_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1828_p_din0),.grp_fu_1828_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1828_p_din1),.grp_fu_1828_p_dout0(grp_fu_3359_p_dout0),.grp_fu_1828_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1828_p_ce),.grp_fu_1832_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1832_p_din0),.grp_fu_1832_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1832_p_din1),.grp_fu_1832_p_dout0(grp_fu_3363_p_dout0),.grp_fu_1832_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1832_p_ce),.grp_fu_1836_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1836_p_din0),.grp_fu_1836_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1836_p_din1),.grp_fu_1836_p_dout0(grp_fu_3375_p_dout0),.grp_fu_1836_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1836_p_ce),.grp_fu_1840_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1840_p_din0),.grp_fu_1840_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1840_p_din1),.grp_fu_1840_p_dout0(grp_fu_3379_p_dout0),.grp_fu_1840_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1840_p_ce),.grp_fu_1844_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1844_p_din0),.grp_fu_1844_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1844_p_din1),.grp_fu_1844_p_dout0(grp_fu_3383_p_dout0),.grp_fu_1844_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1844_p_ce),.grp_fu_1848_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1848_p_din0),.grp_fu_1848_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1848_p_din1),.grp_fu_1848_p_dout0(grp_fu_3387_p_dout0),.grp_fu_1848_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1848_p_ce),.grp_fu_1852_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1852_p_din0),.grp_fu_1852_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1852_p_din1),.grp_fu_1852_p_dout0(grp_fu_3391_p_dout0),.grp_fu_1852_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1852_p_ce),.grp_fu_1856_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1856_p_din0),.grp_fu_1856_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1856_p_din1),.grp_fu_1856_p_dout0(grp_fu_3395_p_dout0),.grp_fu_1856_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1856_p_ce),.grp_fu_1860_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1860_p_din0),.grp_fu_1860_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1860_p_din1),.grp_fu_1860_p_dout0(grp_fu_3399_p_dout0),.grp_fu_1860_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1860_p_ce),.grp_fu_1864_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1864_p_din0),.grp_fu_1864_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1864_p_din1),.grp_fu_1864_p_dout0(grp_fu_3403_p_dout0),.grp_fu_1864_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1864_p_ce),.grp_fu_1868_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1868_p_din0),.grp_fu_1868_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1868_p_din1),.grp_fu_1868_p_dout0(grp_fu_3407_p_dout0),.grp_fu_1868_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1868_p_ce),.grp_fu_1872_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1872_p_din0),.grp_fu_1872_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1872_p_din1),.grp_fu_1872_p_dout0(grp_fu_3411_p_dout0),.grp_fu_1872_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1872_p_ce),.grp_fu_1876_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1876_p_din0),.grp_fu_1876_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1876_p_din1),.grp_fu_1876_p_dout0(grp_fu_3415_p_dout0),.grp_fu_1876_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1876_p_ce),.grp_fu_1880_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1880_p_din0),.grp_fu_1880_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1880_p_din1),.grp_fu_1880_p_dout0(grp_fu_3419_p_dout0),.grp_fu_1880_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1880_p_ce),.grp_fu_1884_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1884_p_din0),.grp_fu_1884_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1884_p_din1),.grp_fu_1884_p_dout0(grp_fu_3423_p_dout0),.grp_fu_1884_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1884_p_ce),.grp_fu_1888_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1888_p_din0),.grp_fu_1888_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1888_p_din1),.grp_fu_1888_p_dout0(grp_fu_3427_p_dout0),.grp_fu_1888_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1888_p_ce),.grp_fu_1892_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1892_p_din0),.grp_fu_1892_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1892_p_din1),.grp_fu_1892_p_dout0(grp_fu_3431_p_dout0),.grp_fu_1892_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1892_p_ce),.grp_fu_1896_p_din0(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1896_p_din0),.grp_fu_1896_p_din1(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1896_p_din1),.grp_fu_1896_p_dout0(grp_fu_3435_p_dout0),.grp_fu_1896_p_ce(grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1896_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_load_100_reg_1419 <= output_difference_q0;
        output_difference_load_101_reg_1424 <= output_difference_q9;
        output_difference_load_102_reg_1429 <= output_difference_q10;
        output_difference_load_103_reg_1434 <= output_difference_q11;
        output_difference_load_104_reg_1439 <= output_difference_q12;
        output_difference_load_105_reg_1444 <= output_difference_q8;
        output_difference_load_106_reg_1449 <= output_difference_q13;
        output_difference_load_107_reg_1454 <= output_difference_q14;
        output_difference_load_108_reg_1459 <= output_difference_q15;
        output_difference_load_109_reg_1464 <= output_difference_q16;
        output_difference_load_93_reg_1384 <= output_difference_q1;
        output_difference_load_94_reg_1389 <= output_difference_q2;
        output_difference_load_95_reg_1394 <= output_difference_q3;
        output_difference_load_96_reg_1399 <= output_difference_q4;
        output_difference_load_97_reg_1404 <= output_difference_q5;
        output_difference_load_98_reg_1409 <= output_difference_q6;
        output_difference_load_99_reg_1414 <= output_difference_q7;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_load_110_reg_1554 <= output_difference_q1;
        output_difference_load_111_reg_1559 <= output_difference_q2;
        output_difference_load_112_reg_1564 <= output_difference_q3;
        output_difference_load_113_reg_1569 <= output_difference_q4;
        output_difference_load_114_reg_1574 <= output_difference_q5;
        output_difference_load_115_reg_1579 <= output_difference_q6;
        output_difference_load_116_reg_1584 <= output_difference_q7;
        output_difference_load_117_reg_1589 <= output_difference_q0;
        output_difference_load_118_reg_1594 <= output_difference_q9;
        output_difference_load_119_reg_1599 <= output_difference_q10;
        output_difference_load_120_reg_1604 <= output_difference_q11;
        output_difference_load_121_reg_1609 <= output_difference_q12;
        output_difference_load_122_reg_1614 <= output_difference_q8;
        output_difference_load_123_reg_1619 <= output_difference_q13;
        output_difference_load_124_reg_1624 <= output_difference_q14;
        output_difference_load_125_reg_1629 <= output_difference_q15;
        output_difference_load_126_reg_1634 <= output_difference_q16;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_load_64_reg_1069 <= output_difference_q11;
        output_difference_load_65_reg_1074 <= output_difference_q10;
        output_difference_load_66_reg_1079 <= output_difference_q9;
        output_difference_load_67_reg_1084 <= output_difference_q8;
        output_difference_load_68_reg_1089 <= output_difference_q7;
        output_difference_load_69_reg_1094 <= output_difference_q6;
        output_difference_load_70_reg_1099 <= output_difference_q5;
        output_difference_load_71_reg_1104 <= output_difference_q4;
        output_difference_load_72_reg_1109 <= output_difference_q3;
        output_difference_load_73_reg_1114 <= output_difference_q2;
        output_difference_load_74_reg_1119 <= output_difference_q1;
        output_difference_load_75_reg_1124 <= output_difference_q0;
        output_difference_load_reg_1064 <= output_difference_q12;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_load_76_reg_1214 <= output_difference_q16;
        output_difference_load_77_reg_1219 <= output_difference_q15;
        output_difference_load_78_reg_1224 <= output_difference_q14;
        output_difference_load_79_reg_1229 <= output_difference_q13;
        output_difference_load_80_reg_1234 <= output_difference_q12;
        output_difference_load_81_reg_1239 <= output_difference_q11;
        output_difference_load_82_reg_1244 <= output_difference_q10;
        output_difference_load_83_reg_1249 <= output_difference_q9;
        output_difference_load_84_reg_1254 <= output_difference_q8;
        output_difference_load_85_reg_1259 <= output_difference_q7;
        output_difference_load_86_reg_1264 <= output_difference_q6;
        output_difference_load_87_reg_1269 <= output_difference_q5;
        output_difference_load_88_reg_1274 <= output_difference_q4;
        output_difference_load_89_reg_1279 <= output_difference_q3;
        output_difference_load_90_reg_1284 <= output_difference_q2;
        output_difference_load_91_reg_1289 <= output_difference_q1;
        output_difference_load_92_reg_1294 <= output_difference_q0;
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
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7)))) begin
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
    if (((grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1644_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1644_p_ce;
    end else begin
        grp_fu_1644_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1648_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1648_p_ce;
    end else begin
        grp_fu_1648_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1652_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1652_p_ce;
    end else begin
        grp_fu_1652_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1656_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1656_p_ce;
    end else begin
        grp_fu_1656_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1660_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1660_p_ce;
    end else begin
        grp_fu_1660_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1664_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1664_p_ce;
    end else begin
        grp_fu_1664_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1668_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1668_p_ce;
    end else begin
        grp_fu_1668_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1672_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1672_p_ce;
    end else begin
        grp_fu_1672_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1676_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1676_p_ce;
    end else begin
        grp_fu_1676_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1680_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1680_p_ce;
    end else begin
        grp_fu_1680_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1684_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1684_p_ce;
    end else begin
        grp_fu_1684_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1688_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1688_p_ce;
    end else begin
        grp_fu_1688_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1692_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1692_p_ce;
    end else begin
        grp_fu_1692_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1696_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1696_p_ce;
    end else begin
        grp_fu_1696_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1700_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1700_p_ce;
    end else begin
        grp_fu_1700_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1704_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1704_p_ce;
    end else begin
        grp_fu_1704_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1708_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1708_p_ce;
    end else begin
        grp_fu_1708_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1712_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1712_p_ce;
    end else begin
        grp_fu_1712_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1716_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1716_p_ce;
    end else begin
        grp_fu_1716_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1720_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1720_p_ce;
    end else begin
        grp_fu_1720_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1724_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1724_p_ce;
    end else begin
        grp_fu_1724_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1728_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1728_p_ce;
    end else begin
        grp_fu_1728_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1732_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1732_p_ce;
    end else begin
        grp_fu_1732_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1736_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1736_p_ce;
    end else begin
        grp_fu_1736_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1740_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1740_p_ce;
    end else begin
        grp_fu_1740_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1744_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1744_p_ce;
    end else begin
        grp_fu_1744_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1748_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1748_p_ce;
    end else begin
        grp_fu_1748_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1752_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1752_p_ce;
    end else begin
        grp_fu_1752_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1756_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1756_p_ce;
    end else begin
        grp_fu_1756_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1760_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1760_p_ce;
    end else begin
        grp_fu_1760_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1764_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1764_p_ce;
    end else begin
        grp_fu_1764_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1768_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1768_p_ce;
    end else begin
        grp_fu_1768_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1772_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1772_p_ce;
    end else begin
        grp_fu_1772_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1776_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1776_p_ce;
    end else begin
        grp_fu_1776_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1780_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1780_p_ce;
    end else begin
        grp_fu_1780_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1784_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1784_p_ce;
    end else begin
        grp_fu_1784_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1788_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1788_p_ce;
    end else begin
        grp_fu_1788_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1792_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1792_p_ce;
    end else begin
        grp_fu_1792_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1796_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1796_p_ce;
    end else begin
        grp_fu_1796_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1800_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1800_p_ce;
    end else begin
        grp_fu_1800_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1804_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1804_p_ce;
    end else begin
        grp_fu_1804_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1808_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1808_p_ce;
    end else begin
        grp_fu_1808_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1812_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1812_p_ce;
    end else begin
        grp_fu_1812_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1816_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1816_p_ce;
    end else begin
        grp_fu_1816_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1820_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1820_p_ce;
    end else begin
        grp_fu_1820_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1824_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1824_p_ce;
    end else begin
        grp_fu_1824_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1828_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1828_p_ce;
    end else begin
        grp_fu_1828_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1832_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1832_p_ce;
    end else begin
        grp_fu_1832_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1836_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1836_p_ce;
    end else begin
        grp_fu_1836_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1840_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1840_p_ce;
    end else begin
        grp_fu_1840_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1844_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1844_p_ce;
    end else begin
        grp_fu_1844_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1848_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1848_p_ce;
    end else begin
        grp_fu_1848_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1852_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1852_p_ce;
    end else begin
        grp_fu_1852_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1856_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1856_p_ce;
    end else begin
        grp_fu_1856_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1860_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1860_p_ce;
    end else begin
        grp_fu_1860_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1864_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1864_p_ce;
    end else begin
        grp_fu_1864_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1868_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1868_p_ce;
    end else begin
        grp_fu_1868_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1872_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1872_p_ce;
    end else begin
        grp_fu_1872_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1876_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1876_p_ce;
    end else begin
        grp_fu_1876_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1880_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1880_p_ce;
    end else begin
        grp_fu_1880_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1884_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1884_p_ce;
    end else begin
        grp_fu_1884_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1888_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1888_p_ce;
    end else begin
        grp_fu_1888_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1892_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1892_p_ce;
    end else begin
        grp_fu_1892_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_1896_ce = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1896_p_ce;
    end else begin
        grp_fu_1896_ce = 1'b1;
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
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
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
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign delta_weights1_0_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_address0;
assign delta_weights1_0_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_address1;
assign delta_weights1_0_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_ce0;
assign delta_weights1_0_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_ce1;
assign delta_weights1_0_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_d0;
assign delta_weights1_0_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_d1;
assign delta_weights1_0_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_we0;
assign delta_weights1_0_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_0_we1;
assign delta_weights1_10_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_address0;
assign delta_weights1_10_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_address1;
assign delta_weights1_10_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_ce0;
assign delta_weights1_10_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_ce1;
assign delta_weights1_10_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_d0;
assign delta_weights1_10_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_d1;
assign delta_weights1_10_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_we0;
assign delta_weights1_10_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_10_we1;
assign delta_weights1_11_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_address0;
assign delta_weights1_11_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_address1;
assign delta_weights1_11_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_ce0;
assign delta_weights1_11_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_ce1;
assign delta_weights1_11_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_d0;
assign delta_weights1_11_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_d1;
assign delta_weights1_11_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_we0;
assign delta_weights1_11_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_11_we1;
assign delta_weights1_12_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_address0;
assign delta_weights1_12_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_address1;
assign delta_weights1_12_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_ce0;
assign delta_weights1_12_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_ce1;
assign delta_weights1_12_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_d0;
assign delta_weights1_12_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_d1;
assign delta_weights1_12_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_we0;
assign delta_weights1_12_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_12_we1;
assign delta_weights1_13_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_address0;
assign delta_weights1_13_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_address1;
assign delta_weights1_13_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_ce0;
assign delta_weights1_13_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_ce1;
assign delta_weights1_13_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_d0;
assign delta_weights1_13_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_d1;
assign delta_weights1_13_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_we0;
assign delta_weights1_13_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_13_we1;
assign delta_weights1_14_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_address0;
assign delta_weights1_14_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_address1;
assign delta_weights1_14_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_ce0;
assign delta_weights1_14_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_ce1;
assign delta_weights1_14_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_d0;
assign delta_weights1_14_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_d1;
assign delta_weights1_14_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_we0;
assign delta_weights1_14_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_14_we1;
assign delta_weights1_15_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_address0;
assign delta_weights1_15_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_address1;
assign delta_weights1_15_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_ce0;
assign delta_weights1_15_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_ce1;
assign delta_weights1_15_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_d0;
assign delta_weights1_15_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_d1;
assign delta_weights1_15_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_we0;
assign delta_weights1_15_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_15_we1;
assign delta_weights1_16_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_address0;
assign delta_weights1_16_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_address1;
assign delta_weights1_16_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_ce0;
assign delta_weights1_16_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_ce1;
assign delta_weights1_16_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_d0;
assign delta_weights1_16_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_d1;
assign delta_weights1_16_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_we0;
assign delta_weights1_16_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_16_we1;
assign delta_weights1_17_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_address0;
assign delta_weights1_17_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_address1;
assign delta_weights1_17_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_ce0;
assign delta_weights1_17_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_ce1;
assign delta_weights1_17_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_d0;
assign delta_weights1_17_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_d1;
assign delta_weights1_17_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_we0;
assign delta_weights1_17_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_17_we1;
assign delta_weights1_18_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_address0;
assign delta_weights1_18_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_address1;
assign delta_weights1_18_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_ce0;
assign delta_weights1_18_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_ce1;
assign delta_weights1_18_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_d0;
assign delta_weights1_18_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_d1;
assign delta_weights1_18_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_we0;
assign delta_weights1_18_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_18_we1;
assign delta_weights1_19_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_address0;
assign delta_weights1_19_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_address1;
assign delta_weights1_19_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_ce0;
assign delta_weights1_19_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_ce1;
assign delta_weights1_19_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_d0;
assign delta_weights1_19_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_d1;
assign delta_weights1_19_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_we0;
assign delta_weights1_19_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_19_we1;
assign delta_weights1_1_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_address0;
assign delta_weights1_1_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_address1;
assign delta_weights1_1_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_ce0;
assign delta_weights1_1_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_ce1;
assign delta_weights1_1_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_d0;
assign delta_weights1_1_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_d1;
assign delta_weights1_1_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_we0;
assign delta_weights1_1_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_1_we1;
assign delta_weights1_20_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_address0;
assign delta_weights1_20_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_address1;
assign delta_weights1_20_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_ce0;
assign delta_weights1_20_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_ce1;
assign delta_weights1_20_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_d0;
assign delta_weights1_20_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_d1;
assign delta_weights1_20_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_we0;
assign delta_weights1_20_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_20_we1;
assign delta_weights1_21_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_address0;
assign delta_weights1_21_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_address1;
assign delta_weights1_21_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_ce0;
assign delta_weights1_21_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_ce1;
assign delta_weights1_21_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_d0;
assign delta_weights1_21_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_d1;
assign delta_weights1_21_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_we0;
assign delta_weights1_21_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_21_we1;
assign delta_weights1_22_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_address0;
assign delta_weights1_22_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_address1;
assign delta_weights1_22_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_ce0;
assign delta_weights1_22_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_ce1;
assign delta_weights1_22_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_d0;
assign delta_weights1_22_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_d1;
assign delta_weights1_22_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_we0;
assign delta_weights1_22_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_22_we1;
assign delta_weights1_23_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_address0;
assign delta_weights1_23_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_address1;
assign delta_weights1_23_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_ce0;
assign delta_weights1_23_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_ce1;
assign delta_weights1_23_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_d0;
assign delta_weights1_23_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_d1;
assign delta_weights1_23_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_we0;
assign delta_weights1_23_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_23_we1;
assign delta_weights1_24_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_address0;
assign delta_weights1_24_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_address1;
assign delta_weights1_24_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_ce0;
assign delta_weights1_24_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_ce1;
assign delta_weights1_24_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_d0;
assign delta_weights1_24_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_d1;
assign delta_weights1_24_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_we0;
assign delta_weights1_24_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_24_we1;
assign delta_weights1_25_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_address0;
assign delta_weights1_25_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_address1;
assign delta_weights1_25_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_ce0;
assign delta_weights1_25_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_ce1;
assign delta_weights1_25_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_d0;
assign delta_weights1_25_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_d1;
assign delta_weights1_25_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_we0;
assign delta_weights1_25_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_25_we1;
assign delta_weights1_26_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_address0;
assign delta_weights1_26_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_address1;
assign delta_weights1_26_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_ce0;
assign delta_weights1_26_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_ce1;
assign delta_weights1_26_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_d0;
assign delta_weights1_26_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_d1;
assign delta_weights1_26_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_we0;
assign delta_weights1_26_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_26_we1;
assign delta_weights1_27_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_address0;
assign delta_weights1_27_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_address1;
assign delta_weights1_27_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_ce0;
assign delta_weights1_27_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_ce1;
assign delta_weights1_27_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_d0;
assign delta_weights1_27_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_d1;
assign delta_weights1_27_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_we0;
assign delta_weights1_27_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_27_we1;
assign delta_weights1_28_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_address0;
assign delta_weights1_28_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_address1;
assign delta_weights1_28_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_ce0;
assign delta_weights1_28_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_ce1;
assign delta_weights1_28_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_d0;
assign delta_weights1_28_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_d1;
assign delta_weights1_28_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_we0;
assign delta_weights1_28_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_28_we1;
assign delta_weights1_29_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_address0;
assign delta_weights1_29_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_address1;
assign delta_weights1_29_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_ce0;
assign delta_weights1_29_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_ce1;
assign delta_weights1_29_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_d0;
assign delta_weights1_29_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_d1;
assign delta_weights1_29_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_we0;
assign delta_weights1_29_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_29_we1;
assign delta_weights1_2_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_address0;
assign delta_weights1_2_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_address1;
assign delta_weights1_2_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_ce0;
assign delta_weights1_2_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_ce1;
assign delta_weights1_2_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_d0;
assign delta_weights1_2_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_d1;
assign delta_weights1_2_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_we0;
assign delta_weights1_2_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_2_we1;
assign delta_weights1_30_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_address0;
assign delta_weights1_30_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_address1;
assign delta_weights1_30_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_ce0;
assign delta_weights1_30_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_ce1;
assign delta_weights1_30_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_d0;
assign delta_weights1_30_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_d1;
assign delta_weights1_30_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_we0;
assign delta_weights1_30_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_30_we1;
assign delta_weights1_31_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_address0;
assign delta_weights1_31_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_address1;
assign delta_weights1_31_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_ce0;
assign delta_weights1_31_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_ce1;
assign delta_weights1_31_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_d0;
assign delta_weights1_31_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_d1;
assign delta_weights1_31_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_we0;
assign delta_weights1_31_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_31_we1;
assign delta_weights1_3_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_address0;
assign delta_weights1_3_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_address1;
assign delta_weights1_3_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_ce0;
assign delta_weights1_3_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_ce1;
assign delta_weights1_3_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_d0;
assign delta_weights1_3_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_d1;
assign delta_weights1_3_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_we0;
assign delta_weights1_3_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_3_we1;
assign delta_weights1_4_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_address0;
assign delta_weights1_4_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_address1;
assign delta_weights1_4_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_ce0;
assign delta_weights1_4_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_ce1;
assign delta_weights1_4_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_d0;
assign delta_weights1_4_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_d1;
assign delta_weights1_4_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_we0;
assign delta_weights1_4_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_4_we1;
assign delta_weights1_5_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_address0;
assign delta_weights1_5_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_address1;
assign delta_weights1_5_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_ce0;
assign delta_weights1_5_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_ce1;
assign delta_weights1_5_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_d0;
assign delta_weights1_5_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_d1;
assign delta_weights1_5_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_we0;
assign delta_weights1_5_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_5_we1;
assign delta_weights1_6_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_address0;
assign delta_weights1_6_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_address1;
assign delta_weights1_6_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_ce0;
assign delta_weights1_6_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_ce1;
assign delta_weights1_6_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_d0;
assign delta_weights1_6_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_d1;
assign delta_weights1_6_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_we0;
assign delta_weights1_6_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_6_we1;
assign delta_weights1_7_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_address0;
assign delta_weights1_7_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_address1;
assign delta_weights1_7_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_ce0;
assign delta_weights1_7_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_ce1;
assign delta_weights1_7_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_d0;
assign delta_weights1_7_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_d1;
assign delta_weights1_7_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_we0;
assign delta_weights1_7_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_7_we1;
assign delta_weights1_8_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_address0;
assign delta_weights1_8_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_address1;
assign delta_weights1_8_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_ce0;
assign delta_weights1_8_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_ce1;
assign delta_weights1_8_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_d0;
assign delta_weights1_8_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_d1;
assign delta_weights1_8_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_we0;
assign delta_weights1_8_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_8_we1;
assign delta_weights1_9_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_address0;
assign delta_weights1_9_address1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_address1;
assign delta_weights1_9_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_ce0;
assign delta_weights1_9_ce1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_ce1;
assign delta_weights1_9_d0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_d0;
assign delta_weights1_9_d1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_d1;
assign delta_weights1_9_we0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_we0;
assign delta_weights1_9_we1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_delta_weights1_9_we1;
assign grp_fu_3151_p_ce = grp_fu_1644_ce;
assign grp_fu_3151_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1644_p_din0;
assign grp_fu_3151_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1644_p_din1;
assign grp_fu_3155_p_ce = grp_fu_1648_ce;
assign grp_fu_3155_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1648_p_din0;
assign grp_fu_3155_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1648_p_din1;
assign grp_fu_3159_p_ce = grp_fu_1652_ce;
assign grp_fu_3159_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1652_p_din0;
assign grp_fu_3159_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1652_p_din1;
assign grp_fu_3163_p_ce = grp_fu_1656_ce;
assign grp_fu_3163_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1656_p_din0;
assign grp_fu_3163_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1656_p_din1;
assign grp_fu_3167_p_ce = grp_fu_1660_ce;
assign grp_fu_3167_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1660_p_din0;
assign grp_fu_3167_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1660_p_din1;
assign grp_fu_3171_p_ce = grp_fu_1664_ce;
assign grp_fu_3171_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1664_p_din0;
assign grp_fu_3171_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1664_p_din1;
assign grp_fu_3175_p_ce = grp_fu_1668_ce;
assign grp_fu_3175_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1668_p_din0;
assign grp_fu_3175_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1668_p_din1;
assign grp_fu_3179_p_ce = grp_fu_1672_ce;
assign grp_fu_3179_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1672_p_din0;
assign grp_fu_3179_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1672_p_din1;
assign grp_fu_3183_p_ce = grp_fu_1676_ce;
assign grp_fu_3183_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1676_p_din0;
assign grp_fu_3183_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1676_p_din1;
assign grp_fu_3187_p_ce = grp_fu_1680_ce;
assign grp_fu_3187_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1680_p_din0;
assign grp_fu_3187_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1680_p_din1;
assign grp_fu_3191_p_ce = grp_fu_1684_ce;
assign grp_fu_3191_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1684_p_din0;
assign grp_fu_3191_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1684_p_din1;
assign grp_fu_3195_p_ce = grp_fu_1688_ce;
assign grp_fu_3195_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1688_p_din0;
assign grp_fu_3195_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1688_p_din1;
assign grp_fu_3199_p_ce = grp_fu_1692_ce;
assign grp_fu_3199_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1692_p_din0;
assign grp_fu_3199_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1692_p_din1;
assign grp_fu_3203_p_ce = grp_fu_1696_ce;
assign grp_fu_3203_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1696_p_din0;
assign grp_fu_3203_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1696_p_din1;
assign grp_fu_3207_p_ce = grp_fu_1700_ce;
assign grp_fu_3207_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1700_p_din0;
assign grp_fu_3207_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1700_p_din1;
assign grp_fu_3211_p_ce = grp_fu_1704_ce;
assign grp_fu_3211_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1704_p_din0;
assign grp_fu_3211_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1704_p_din1;
assign grp_fu_3215_p_ce = grp_fu_1708_ce;
assign grp_fu_3215_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1708_p_din0;
assign grp_fu_3215_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1708_p_din1;
assign grp_fu_3219_p_ce = grp_fu_1712_ce;
assign grp_fu_3219_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1712_p_din0;
assign grp_fu_3219_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1712_p_din1;
assign grp_fu_3223_p_ce = grp_fu_1716_ce;
assign grp_fu_3223_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1716_p_din0;
assign grp_fu_3223_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1716_p_din1;
assign grp_fu_3227_p_ce = grp_fu_1720_ce;
assign grp_fu_3227_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1720_p_din0;
assign grp_fu_3227_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1720_p_din1;
assign grp_fu_3231_p_ce = grp_fu_1724_ce;
assign grp_fu_3231_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1724_p_din0;
assign grp_fu_3231_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1724_p_din1;
assign grp_fu_3235_p_ce = grp_fu_1728_ce;
assign grp_fu_3235_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1728_p_din0;
assign grp_fu_3235_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1728_p_din1;
assign grp_fu_3239_p_ce = grp_fu_1732_ce;
assign grp_fu_3239_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1732_p_din0;
assign grp_fu_3239_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1732_p_din1;
assign grp_fu_3243_p_ce = grp_fu_1736_ce;
assign grp_fu_3243_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1736_p_din0;
assign grp_fu_3243_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1736_p_din1;
assign grp_fu_3247_p_ce = grp_fu_1740_ce;
assign grp_fu_3247_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1740_p_din0;
assign grp_fu_3247_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1740_p_din1;
assign grp_fu_3251_p_ce = grp_fu_1744_ce;
assign grp_fu_3251_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1744_p_din0;
assign grp_fu_3251_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1744_p_din1;
assign grp_fu_3255_p_ce = grp_fu_1748_ce;
assign grp_fu_3255_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1748_p_din0;
assign grp_fu_3255_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1748_p_din1;
assign grp_fu_3259_p_ce = grp_fu_1752_ce;
assign grp_fu_3259_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1752_p_din0;
assign grp_fu_3259_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1752_p_din1;
assign grp_fu_3263_p_ce = grp_fu_1756_ce;
assign grp_fu_3263_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1756_p_din0;
assign grp_fu_3263_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1756_p_din1;
assign grp_fu_3267_p_ce = grp_fu_1760_ce;
assign grp_fu_3267_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1760_p_din0;
assign grp_fu_3267_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1760_p_din1;
assign grp_fu_3271_p_ce = grp_fu_1764_ce;
assign grp_fu_3271_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1764_p_din0;
assign grp_fu_3271_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1764_p_din1;
assign grp_fu_3275_p_ce = grp_fu_1768_ce;
assign grp_fu_3275_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1768_p_din0;
assign grp_fu_3275_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1768_p_din1;
assign grp_fu_3279_p_ce = grp_fu_1772_ce;
assign grp_fu_3279_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1772_p_din0;
assign grp_fu_3279_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1772_p_din1;
assign grp_fu_3283_p_ce = grp_fu_1776_ce;
assign grp_fu_3283_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1776_p_din0;
assign grp_fu_3283_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1776_p_din1;
assign grp_fu_3287_p_ce = grp_fu_1780_ce;
assign grp_fu_3287_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1780_p_din0;
assign grp_fu_3287_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1780_p_din1;
assign grp_fu_3315_p_ce = grp_fu_1784_ce;
assign grp_fu_3315_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1784_p_din0;
assign grp_fu_3315_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1784_p_din1;
assign grp_fu_3319_p_ce = grp_fu_1788_ce;
assign grp_fu_3319_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1788_p_din0;
assign grp_fu_3319_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1788_p_din1;
assign grp_fu_3323_p_ce = grp_fu_1792_ce;
assign grp_fu_3323_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1792_p_din0;
assign grp_fu_3323_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1792_p_din1;
assign grp_fu_3327_p_ce = grp_fu_1796_ce;
assign grp_fu_3327_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1796_p_din0;
assign grp_fu_3327_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1796_p_din1;
assign grp_fu_3331_p_ce = grp_fu_1800_ce;
assign grp_fu_3331_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1800_p_din0;
assign grp_fu_3331_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1800_p_din1;
assign grp_fu_3335_p_ce = grp_fu_1804_ce;
assign grp_fu_3335_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1804_p_din0;
assign grp_fu_3335_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1804_p_din1;
assign grp_fu_3339_p_ce = grp_fu_1808_ce;
assign grp_fu_3339_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1808_p_din0;
assign grp_fu_3339_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1808_p_din1;
assign grp_fu_3343_p_ce = grp_fu_1812_ce;
assign grp_fu_3343_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1812_p_din0;
assign grp_fu_3343_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1812_p_din1;
assign grp_fu_3347_p_ce = grp_fu_1816_ce;
assign grp_fu_3347_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1816_p_din0;
assign grp_fu_3347_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1816_p_din1;
assign grp_fu_3351_p_ce = grp_fu_1820_ce;
assign grp_fu_3351_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1820_p_din0;
assign grp_fu_3351_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1820_p_din1;
assign grp_fu_3355_p_ce = grp_fu_1824_ce;
assign grp_fu_3355_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1824_p_din0;
assign grp_fu_3355_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1824_p_din1;
assign grp_fu_3359_p_ce = grp_fu_1828_ce;
assign grp_fu_3359_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1828_p_din0;
assign grp_fu_3359_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1828_p_din1;
assign grp_fu_3363_p_ce = grp_fu_1832_ce;
assign grp_fu_3363_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1832_p_din0;
assign grp_fu_3363_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1832_p_din1;
assign grp_fu_3375_p_ce = grp_fu_1836_ce;
assign grp_fu_3375_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1836_p_din0;
assign grp_fu_3375_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1836_p_din1;
assign grp_fu_3379_p_ce = grp_fu_1840_ce;
assign grp_fu_3379_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1840_p_din0;
assign grp_fu_3379_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1840_p_din1;
assign grp_fu_3383_p_ce = grp_fu_1844_ce;
assign grp_fu_3383_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1844_p_din0;
assign grp_fu_3383_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1844_p_din1;
assign grp_fu_3387_p_ce = grp_fu_1848_ce;
assign grp_fu_3387_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1848_p_din0;
assign grp_fu_3387_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1848_p_din1;
assign grp_fu_3391_p_ce = grp_fu_1852_ce;
assign grp_fu_3391_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1852_p_din0;
assign grp_fu_3391_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1852_p_din1;
assign grp_fu_3395_p_ce = grp_fu_1856_ce;
assign grp_fu_3395_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1856_p_din0;
assign grp_fu_3395_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1856_p_din1;
assign grp_fu_3399_p_ce = grp_fu_1860_ce;
assign grp_fu_3399_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1860_p_din0;
assign grp_fu_3399_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1860_p_din1;
assign grp_fu_3403_p_ce = grp_fu_1864_ce;
assign grp_fu_3403_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1864_p_din0;
assign grp_fu_3403_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1864_p_din1;
assign grp_fu_3407_p_ce = grp_fu_1868_ce;
assign grp_fu_3407_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1868_p_din0;
assign grp_fu_3407_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1868_p_din1;
assign grp_fu_3411_p_ce = grp_fu_1872_ce;
assign grp_fu_3411_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1872_p_din0;
assign grp_fu_3411_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1872_p_din1;
assign grp_fu_3415_p_ce = grp_fu_1876_ce;
assign grp_fu_3415_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1876_p_din0;
assign grp_fu_3415_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1876_p_din1;
assign grp_fu_3419_p_ce = grp_fu_1880_ce;
assign grp_fu_3419_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1880_p_din0;
assign grp_fu_3419_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1880_p_din1;
assign grp_fu_3423_p_ce = grp_fu_1884_ce;
assign grp_fu_3423_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1884_p_din0;
assign grp_fu_3423_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1884_p_din1;
assign grp_fu_3427_p_ce = grp_fu_1888_ce;
assign grp_fu_3427_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1888_p_din0;
assign grp_fu_3427_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1888_p_din1;
assign grp_fu_3431_p_ce = grp_fu_1892_ce;
assign grp_fu_3431_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1892_p_din0;
assign grp_fu_3431_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1892_p_din1;
assign grp_fu_3435_p_ce = grp_fu_1896_ce;
assign grp_fu_3435_p_din0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1896_p_din0;
assign grp_fu_3435_p_din1 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_grp_fu_1896_p_din1;
assign grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_start = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_ap_start_reg;
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
assign training_data_address0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_training_data_address0;
assign training_data_ce0 = grp_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1_fu_863_training_data_ce0;
endmodule 