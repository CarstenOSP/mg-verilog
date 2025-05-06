
module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_4_address1,delta_weights2_4_ce1,delta_weights2_4_we1,delta_weights2_4_d1,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_5_address1,delta_weights2_5_ce1,delta_weights2_5_we1,delta_weights2_5_d1,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_6_address1,delta_weights2_6_ce1,delta_weights2_6_we1,delta_weights2_6_d1,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_7_address1,delta_weights2_7_ce1,delta_weights2_7_we1,delta_weights2_7_d1,delta_weights2_8_address0,delta_weights2_8_ce0,delta_weights2_8_we0,delta_weights2_8_d0,delta_weights2_8_address1,delta_weights2_8_ce1,delta_weights2_8_we1,delta_weights2_8_d1,delta_weights2_9_address0,delta_weights2_9_ce0,delta_weights2_9_we0,delta_weights2_9_d0,delta_weights2_9_address1,delta_weights2_9_ce1,delta_weights2_9_we1,delta_weights2_9_d1,delta_weights2_10_address0,delta_weights2_10_ce0,delta_weights2_10_we0,delta_weights2_10_d0,delta_weights2_10_address1,delta_weights2_10_ce1,delta_weights2_10_we1,delta_weights2_10_d1,delta_weights2_11_address0,delta_weights2_11_ce0,delta_weights2_11_we0,delta_weights2_11_d0,delta_weights2_11_address1,delta_weights2_11_ce1,delta_weights2_11_we1,delta_weights2_11_d1,delta_weights2_12_address0,delta_weights2_12_ce0,delta_weights2_12_we0,delta_weights2_12_d0,delta_weights2_12_address1,delta_weights2_12_ce1,delta_weights2_12_we1,delta_weights2_12_d1,delta_weights2_13_address0,delta_weights2_13_ce0,delta_weights2_13_we0,delta_weights2_13_d0,delta_weights2_13_address1,delta_weights2_13_ce1,delta_weights2_13_we1,delta_weights2_13_d1,delta_weights2_14_address0,delta_weights2_14_ce0,delta_weights2_14_we0,delta_weights2_14_d0,delta_weights2_14_address1,delta_weights2_14_ce1,delta_weights2_14_we1,delta_weights2_14_d1,delta_weights2_15_address0,delta_weights2_15_ce0,delta_weights2_15_we0,delta_weights2_15_d0,delta_weights2_15_address1,delta_weights2_15_ce1,delta_weights2_15_we1,delta_weights2_15_d1,delta_weights2_16_address0,delta_weights2_16_ce0,delta_weights2_16_we0,delta_weights2_16_d0,delta_weights2_16_address1,delta_weights2_16_ce1,delta_weights2_16_we1,delta_weights2_16_d1,delta_weights2_17_address0,delta_weights2_17_ce0,delta_weights2_17_we0,delta_weights2_17_d0,delta_weights2_17_address1,delta_weights2_17_ce1,delta_weights2_17_we1,delta_weights2_17_d1,delta_weights2_18_address0,delta_weights2_18_ce0,delta_weights2_18_we0,delta_weights2_18_d0,delta_weights2_18_address1,delta_weights2_18_ce1,delta_weights2_18_we1,delta_weights2_18_d1,delta_weights2_19_address0,delta_weights2_19_ce0,delta_weights2_19_we0,delta_weights2_19_d0,delta_weights2_19_address1,delta_weights2_19_ce1,delta_weights2_19_we1,delta_weights2_19_d1,delta_weights2_20_address0,delta_weights2_20_ce0,delta_weights2_20_we0,delta_weights2_20_d0,delta_weights2_20_address1,delta_weights2_20_ce1,delta_weights2_20_we1,delta_weights2_20_d1,delta_weights2_21_address0,delta_weights2_21_ce0,delta_weights2_21_we0,delta_weights2_21_d0,delta_weights2_21_address1,delta_weights2_21_ce1,delta_weights2_21_we1,delta_weights2_21_d1,delta_weights2_22_address0,delta_weights2_22_ce0,delta_weights2_22_we0,delta_weights2_22_d0,delta_weights2_22_address1,delta_weights2_22_ce1,delta_weights2_22_we1,delta_weights2_22_d1,delta_weights2_23_address0,delta_weights2_23_ce0,delta_weights2_23_we0,delta_weights2_23_d0,delta_weights2_23_address1,delta_weights2_23_ce1,delta_weights2_23_we1,delta_weights2_23_d1,delta_weights2_24_address0,delta_weights2_24_ce0,delta_weights2_24_we0,delta_weights2_24_d0,delta_weights2_24_address1,delta_weights2_24_ce1,delta_weights2_24_we1,delta_weights2_24_d1,delta_weights2_25_address0,delta_weights2_25_ce0,delta_weights2_25_we0,delta_weights2_25_d0,delta_weights2_25_address1,delta_weights2_25_ce1,delta_weights2_25_we1,delta_weights2_25_d1,delta_weights2_26_address0,delta_weights2_26_ce0,delta_weights2_26_we0,delta_weights2_26_d0,delta_weights2_26_address1,delta_weights2_26_ce1,delta_weights2_26_we1,delta_weights2_26_d1,delta_weights2_27_address0,delta_weights2_27_ce0,delta_weights2_27_we0,delta_weights2_27_d0,delta_weights2_27_address1,delta_weights2_27_ce1,delta_weights2_27_we1,delta_weights2_27_d1,delta_weights2_28_address0,delta_weights2_28_ce0,delta_weights2_28_we0,delta_weights2_28_d0,delta_weights2_28_address1,delta_weights2_28_ce1,delta_weights2_28_we1,delta_weights2_28_d1,delta_weights2_29_address0,delta_weights2_29_ce0,delta_weights2_29_we0,delta_weights2_29_d0,delta_weights2_29_address1,delta_weights2_29_ce1,delta_weights2_29_we1,delta_weights2_29_d1,delta_weights2_30_address0,delta_weights2_30_ce0,delta_weights2_30_we0,delta_weights2_30_d0,delta_weights2_30_address1,delta_weights2_30_ce1,delta_weights2_30_we1,delta_weights2_30_d1,delta_weights2_31_address0,delta_weights2_31_ce0,delta_weights2_31_we0,delta_weights2_31_d0,delta_weights2_31_address1,delta_weights2_31_ce1,delta_weights2_31_we1,delta_weights2_31_d1,output_difference_address0,output_difference_ce0,output_difference_q0,output_difference_address1,output_difference_ce1,output_difference_q1,last_activations_address0,last_activations_ce0,last_activations_q0,grp_fu_3151_p_din0,grp_fu_3151_p_din1,grp_fu_3151_p_dout0,grp_fu_3151_p_ce,grp_fu_3155_p_din0,grp_fu_3155_p_din1,grp_fu_3155_p_dout0,grp_fu_3155_p_ce,grp_fu_3159_p_din0,grp_fu_3159_p_din1,grp_fu_3159_p_dout0,grp_fu_3159_p_ce,grp_fu_3163_p_din0,grp_fu_3163_p_din1,grp_fu_3163_p_dout0,grp_fu_3163_p_ce,grp_fu_3167_p_din0,grp_fu_3167_p_din1,grp_fu_3167_p_dout0,grp_fu_3167_p_ce,grp_fu_3171_p_din0,grp_fu_3171_p_din1,grp_fu_3171_p_dout0,grp_fu_3171_p_ce,grp_fu_3175_p_din0,grp_fu_3175_p_din1,grp_fu_3175_p_dout0,grp_fu_3175_p_ce,grp_fu_3179_p_din0,grp_fu_3179_p_din1,grp_fu_3179_p_dout0,grp_fu_3179_p_ce,grp_fu_3183_p_din0,grp_fu_3183_p_din1,grp_fu_3183_p_dout0,grp_fu_3183_p_ce,grp_fu_3187_p_din0,grp_fu_3187_p_din1,grp_fu_3187_p_dout0,grp_fu_3187_p_ce,grp_fu_3191_p_din0,grp_fu_3191_p_din1,grp_fu_3191_p_dout0,grp_fu_3191_p_ce,grp_fu_3195_p_din0,grp_fu_3195_p_din1,grp_fu_3195_p_dout0,grp_fu_3195_p_ce,grp_fu_3199_p_din0,grp_fu_3199_p_din1,grp_fu_3199_p_dout0,grp_fu_3199_p_ce,grp_fu_3203_p_din0,grp_fu_3203_p_din1,grp_fu_3203_p_dout0,grp_fu_3203_p_ce,grp_fu_3207_p_din0,grp_fu_3207_p_din1,grp_fu_3207_p_dout0,grp_fu_3207_p_ce,grp_fu_3211_p_din0,grp_fu_3211_p_din1,grp_fu_3211_p_dout0,grp_fu_3211_p_ce,grp_fu_3215_p_din0,grp_fu_3215_p_din1,grp_fu_3215_p_dout0,grp_fu_3215_p_ce,grp_fu_3219_p_din0,grp_fu_3219_p_din1,grp_fu_3219_p_dout0,grp_fu_3219_p_ce,grp_fu_3223_p_din0,grp_fu_3223_p_din1,grp_fu_3223_p_dout0,grp_fu_3223_p_ce,grp_fu_3227_p_din0,grp_fu_3227_p_din1,grp_fu_3227_p_dout0,grp_fu_3227_p_ce,grp_fu_3231_p_din0,grp_fu_3231_p_din1,grp_fu_3231_p_dout0,grp_fu_3231_p_ce,grp_fu_3235_p_din0,grp_fu_3235_p_din1,grp_fu_3235_p_dout0,grp_fu_3235_p_ce,grp_fu_3239_p_din0,grp_fu_3239_p_din1,grp_fu_3239_p_dout0,grp_fu_3239_p_ce,grp_fu_3243_p_din0,grp_fu_3243_p_din1,grp_fu_3243_p_dout0,grp_fu_3243_p_ce,grp_fu_3247_p_din0,grp_fu_3247_p_din1,grp_fu_3247_p_dout0,grp_fu_3247_p_ce,grp_fu_3251_p_din0,grp_fu_3251_p_din1,grp_fu_3251_p_dout0,grp_fu_3251_p_ce,grp_fu_3255_p_din0,grp_fu_3255_p_din1,grp_fu_3255_p_dout0,grp_fu_3255_p_ce,grp_fu_3259_p_din0,grp_fu_3259_p_din1,grp_fu_3259_p_dout0,grp_fu_3259_p_ce,grp_fu_3263_p_din0,grp_fu_3263_p_din1,grp_fu_3263_p_dout0,grp_fu_3263_p_ce,grp_fu_3267_p_din0,grp_fu_3267_p_din1,grp_fu_3267_p_dout0,grp_fu_3267_p_ce,grp_fu_3271_p_din0,grp_fu_3271_p_din1,grp_fu_3271_p_dout0,grp_fu_3271_p_ce,grp_fu_3275_p_din0,grp_fu_3275_p_din1,grp_fu_3275_p_dout0,grp_fu_3275_p_ce,grp_fu_3279_p_din0,grp_fu_3279_p_din1,grp_fu_3279_p_dout0,grp_fu_3279_p_ce,grp_fu_3283_p_din0,grp_fu_3283_p_din1,grp_fu_3283_p_dout0,grp_fu_3283_p_ce,grp_fu_3287_p_din0,grp_fu_3287_p_din1,grp_fu_3287_p_dout0,grp_fu_3287_p_ce,grp_fu_3315_p_din0,grp_fu_3315_p_din1,grp_fu_3315_p_dout0,grp_fu_3315_p_ce,grp_fu_3319_p_din0,grp_fu_3319_p_din1,grp_fu_3319_p_dout0,grp_fu_3319_p_ce,grp_fu_3323_p_din0,grp_fu_3323_p_din1,grp_fu_3323_p_dout0,grp_fu_3323_p_ce,grp_fu_3327_p_din0,grp_fu_3327_p_din1,grp_fu_3327_p_dout0,grp_fu_3327_p_ce,grp_fu_3331_p_din0,grp_fu_3331_p_din1,grp_fu_3331_p_dout0,grp_fu_3331_p_ce,grp_fu_3335_p_din0,grp_fu_3335_p_din1,grp_fu_3335_p_dout0,grp_fu_3335_p_ce,grp_fu_3339_p_din0,grp_fu_3339_p_din1,grp_fu_3339_p_dout0,grp_fu_3339_p_ce,grp_fu_3343_p_din0,grp_fu_3343_p_din1,grp_fu_3343_p_dout0,grp_fu_3343_p_ce,grp_fu_3347_p_din0,grp_fu_3347_p_din1,grp_fu_3347_p_dout0,grp_fu_3347_p_ce,grp_fu_3351_p_din0,grp_fu_3351_p_din1,grp_fu_3351_p_dout0,grp_fu_3351_p_ce,grp_fu_3355_p_din0,grp_fu_3355_p_din1,grp_fu_3355_p_dout0,grp_fu_3355_p_ce,grp_fu_3359_p_din0,grp_fu_3359_p_din1,grp_fu_3359_p_dout0,grp_fu_3359_p_ce,grp_fu_3363_p_din0,grp_fu_3363_p_din1,grp_fu_3363_p_dout0,grp_fu_3363_p_ce,grp_fu_3375_p_din0,grp_fu_3375_p_din1,grp_fu_3375_p_dout0,grp_fu_3375_p_ce,grp_fu_3379_p_din0,grp_fu_3379_p_din1,grp_fu_3379_p_dout0,grp_fu_3379_p_ce,grp_fu_3383_p_din0,grp_fu_3383_p_din1,grp_fu_3383_p_dout0,grp_fu_3383_p_ce,grp_fu_3387_p_din0,grp_fu_3387_p_din1,grp_fu_3387_p_dout0,grp_fu_3387_p_ce,grp_fu_3391_p_din0,grp_fu_3391_p_din1,grp_fu_3391_p_dout0,grp_fu_3391_p_ce,grp_fu_3395_p_din0,grp_fu_3395_p_din1,grp_fu_3395_p_dout0,grp_fu_3395_p_ce,grp_fu_3399_p_din0,grp_fu_3399_p_din1,grp_fu_3399_p_dout0,grp_fu_3399_p_ce,grp_fu_3403_p_din0,grp_fu_3403_p_din1,grp_fu_3403_p_dout0,grp_fu_3403_p_ce,grp_fu_3407_p_din0,grp_fu_3407_p_din1,grp_fu_3407_p_dout0,grp_fu_3407_p_ce,grp_fu_3411_p_din0,grp_fu_3411_p_din1,grp_fu_3411_p_dout0,grp_fu_3411_p_ce,grp_fu_3415_p_din0,grp_fu_3415_p_din1,grp_fu_3415_p_dout0,grp_fu_3415_p_ce,grp_fu_3419_p_din0,grp_fu_3419_p_din1,grp_fu_3419_p_dout0,grp_fu_3419_p_ce,grp_fu_3423_p_din0,grp_fu_3423_p_din1,grp_fu_3423_p_dout0,grp_fu_3423_p_ce,grp_fu_3427_p_din0,grp_fu_3427_p_din1,grp_fu_3427_p_dout0,grp_fu_3427_p_ce,grp_fu_3431_p_din0,grp_fu_3431_p_din1,grp_fu_3431_p_dout0,grp_fu_3431_p_ce,grp_fu_3435_p_din0,grp_fu_3435_p_din1,grp_fu_3435_p_dout0,grp_fu_3435_p_ce);  
parameter    ap_ST_fsm_state1 = 34'd1;
parameter    ap_ST_fsm_state2 = 34'd2;
parameter    ap_ST_fsm_state3 = 34'd4;
parameter    ap_ST_fsm_state4 = 34'd8;
parameter    ap_ST_fsm_state5 = 34'd16;
parameter    ap_ST_fsm_state6 = 34'd32;
parameter    ap_ST_fsm_state7 = 34'd64;
parameter    ap_ST_fsm_state8 = 34'd128;
parameter    ap_ST_fsm_state9 = 34'd256;
parameter    ap_ST_fsm_state10 = 34'd512;
parameter    ap_ST_fsm_state11 = 34'd1024;
parameter    ap_ST_fsm_state12 = 34'd2048;
parameter    ap_ST_fsm_state13 = 34'd4096;
parameter    ap_ST_fsm_state14 = 34'd8192;
parameter    ap_ST_fsm_state15 = 34'd16384;
parameter    ap_ST_fsm_state16 = 34'd32768;
parameter    ap_ST_fsm_state17 = 34'd65536;
parameter    ap_ST_fsm_state18 = 34'd131072;
parameter    ap_ST_fsm_state19 = 34'd262144;
parameter    ap_ST_fsm_state20 = 34'd524288;
parameter    ap_ST_fsm_state21 = 34'd1048576;
parameter    ap_ST_fsm_state22 = 34'd2097152;
parameter    ap_ST_fsm_state23 = 34'd4194304;
parameter    ap_ST_fsm_state24 = 34'd8388608;
parameter    ap_ST_fsm_state25 = 34'd16777216;
parameter    ap_ST_fsm_state26 = 34'd33554432;
parameter    ap_ST_fsm_state27 = 34'd67108864;
parameter    ap_ST_fsm_state28 = 34'd134217728;
parameter    ap_ST_fsm_state29 = 34'd268435456;
parameter    ap_ST_fsm_state30 = 34'd536870912;
parameter    ap_ST_fsm_state31 = 34'd1073741824;
parameter    ap_ST_fsm_state32 = 34'd2147483648;
parameter    ap_ST_fsm_state33 = 34'd4294967296;
parameter    ap_ST_fsm_state34 = 34'd8589934592;
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
(* fsm_encoding = "none" *) reg   [33:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_load_reg_929;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_load_1_reg_934;
reg   [63:0] output_difference_load_2_reg_949;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_load_3_reg_954;
reg   [63:0] output_difference_load_4_reg_969;
wire    ap_CS_fsm_state4;
reg   [63:0] output_difference_load_5_reg_974;
reg   [63:0] output_difference_load_6_reg_989;
wire    ap_CS_fsm_state5;
reg   [63:0] output_difference_load_7_reg_994;
reg   [63:0] output_difference_load_8_reg_1009;
wire    ap_CS_fsm_state6;
reg   [63:0] output_difference_load_9_reg_1014;
reg   [63:0] output_difference_load_10_reg_1029;
wire    ap_CS_fsm_state7;
reg   [63:0] output_difference_load_11_reg_1034;
reg   [63:0] output_difference_load_12_reg_1049;
wire    ap_CS_fsm_state8;
reg   [63:0] output_difference_load_13_reg_1054;
reg   [63:0] output_difference_load_14_reg_1069;
wire    ap_CS_fsm_state9;
reg   [63:0] output_difference_load_15_reg_1074;
reg   [63:0] output_difference_load_16_reg_1089;
wire    ap_CS_fsm_state10;
reg   [63:0] output_difference_load_17_reg_1094;
reg   [63:0] output_difference_load_18_reg_1109;
wire    ap_CS_fsm_state11;
reg   [63:0] output_difference_load_19_reg_1114;
reg   [63:0] output_difference_load_20_reg_1129;
wire    ap_CS_fsm_state12;
reg   [63:0] output_difference_load_21_reg_1134;
reg   [63:0] output_difference_load_22_reg_1149;
wire    ap_CS_fsm_state13;
reg   [63:0] output_difference_load_23_reg_1154;
reg   [63:0] output_difference_load_24_reg_1169;
wire    ap_CS_fsm_state14;
reg   [63:0] output_difference_load_25_reg_1174;
reg   [63:0] output_difference_load_26_reg_1189;
wire    ap_CS_fsm_state15;
reg   [63:0] output_difference_load_27_reg_1194;
reg   [63:0] output_difference_load_28_reg_1209;
wire    ap_CS_fsm_state16;
reg   [63:0] output_difference_load_29_reg_1214;
reg   [63:0] output_difference_load_30_reg_1229;
wire    ap_CS_fsm_state17;
reg   [63:0] output_difference_load_31_reg_1234;
reg   [63:0] output_difference_load_32_reg_1249;
wire    ap_CS_fsm_state18;
reg   [63:0] output_difference_load_33_reg_1254;
reg   [63:0] output_difference_load_34_reg_1269;
wire    ap_CS_fsm_state19;
reg   [63:0] output_difference_load_35_reg_1274;
reg   [63:0] output_difference_load_36_reg_1289;
wire    ap_CS_fsm_state20;
reg   [63:0] output_difference_load_37_reg_1294;
reg   [63:0] output_difference_load_38_reg_1309;
wire    ap_CS_fsm_state21;
reg   [63:0] output_difference_load_39_reg_1314;
reg   [63:0] output_difference_load_40_reg_1329;
wire    ap_CS_fsm_state22;
reg   [63:0] output_difference_load_41_reg_1334;
reg   [63:0] output_difference_load_42_reg_1349;
wire    ap_CS_fsm_state23;
reg   [63:0] output_difference_load_43_reg_1354;
reg   [63:0] output_difference_load_44_reg_1369;
wire    ap_CS_fsm_state24;
reg   [63:0] output_difference_load_45_reg_1374;
reg   [63:0] output_difference_load_46_reg_1389;
wire    ap_CS_fsm_state25;
reg   [63:0] output_difference_load_47_reg_1394;
reg   [63:0] output_difference_load_48_reg_1409;
wire    ap_CS_fsm_state26;
reg   [63:0] output_difference_load_49_reg_1414;
reg   [63:0] output_difference_load_50_reg_1429;
wire    ap_CS_fsm_state27;
reg   [63:0] output_difference_load_51_reg_1434;
reg   [63:0] output_difference_load_52_reg_1449;
wire    ap_CS_fsm_state28;
reg   [63:0] output_difference_load_53_reg_1454;
reg   [63:0] output_difference_load_54_reg_1469;
wire    ap_CS_fsm_state29;
reg   [63:0] output_difference_load_55_reg_1474;
reg   [63:0] output_difference_load_56_reg_1489;
wire    ap_CS_fsm_state30;
reg   [63:0] output_difference_load_57_reg_1494;
reg   [63:0] output_difference_load_58_reg_1509;
wire    ap_CS_fsm_state31;
reg   [63:0] output_difference_load_59_reg_1514;
reg   [63:0] output_difference_load_60_reg_1529;
wire    ap_CS_fsm_state32;
reg   [63:0] output_difference_load_61_reg_1534;
reg   [63:0] output_difference_load_62_reg_1549;
wire    ap_CS_fsm_state33;
reg   [63:0] output_difference_load_63_reg_1554;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_start;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_done;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_idle;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_ready;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_d1;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_d0;
wire   [6:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_d1;
wire   [5:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_last_activations_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_last_activations_ce0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1559_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1559_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1559_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1563_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1563_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1563_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1567_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1567_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1567_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1571_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1571_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1571_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1575_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1575_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1575_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1579_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1579_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1579_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1583_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1583_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1583_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1587_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1587_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1587_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1591_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1591_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1591_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1595_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1595_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1595_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1599_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1599_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1599_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1603_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1603_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1603_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1607_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1607_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1607_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1611_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1611_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1611_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1615_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1615_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1615_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1619_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1619_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1619_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1623_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1623_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1623_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1627_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1627_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1627_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1631_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1631_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1631_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1635_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1635_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1635_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1639_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1639_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1639_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1643_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1643_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1643_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1647_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1647_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1647_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1651_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1651_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1651_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1655_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1655_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1655_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1659_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1659_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1659_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1663_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1663_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1663_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1667_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1667_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1667_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1671_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1671_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1671_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1675_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1675_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1675_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1679_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1679_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1679_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1683_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1683_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1683_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1687_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1687_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1687_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1691_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1691_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1691_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1695_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1695_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1695_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1699_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1699_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1699_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1703_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1703_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1703_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1707_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1707_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1707_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1711_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1711_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1711_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1715_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1715_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1715_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1719_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1719_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1719_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1723_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1723_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1723_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1727_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1727_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1727_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1731_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1731_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1731_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1735_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1735_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1735_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1739_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1739_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1739_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1743_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1743_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1743_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1747_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1747_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1747_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1751_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1751_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1751_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1755_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1755_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1755_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1759_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1759_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1759_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1763_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1763_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1763_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1767_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1767_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1767_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1771_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1771_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1771_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1775_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1775_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1775_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1779_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1779_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1779_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1783_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1783_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1783_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1787_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1787_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1787_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1791_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1791_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1791_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1795_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1795_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1795_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1799_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1799_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1799_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1803_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1803_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1803_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1807_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1807_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1807_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1811_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1811_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1811_p_ce;
reg    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_start_reg;
wire    ap_CS_fsm_state34;
reg    output_difference_ce1_local;
reg   [5:0] output_difference_address1_local;
reg    output_difference_ce0_local;
reg   [5:0] output_difference_address0_local;
reg    grp_fu_1559_ce;
reg    grp_fu_1563_ce;
reg    grp_fu_1567_ce;
reg    grp_fu_1571_ce;
reg    grp_fu_1575_ce;
reg    grp_fu_1579_ce;
reg    grp_fu_1583_ce;
reg    grp_fu_1587_ce;
reg    grp_fu_1591_ce;
reg    grp_fu_1595_ce;
reg    grp_fu_1599_ce;
reg    grp_fu_1603_ce;
reg    grp_fu_1607_ce;
reg    grp_fu_1611_ce;
reg    grp_fu_1615_ce;
reg    grp_fu_1619_ce;
reg    grp_fu_1623_ce;
reg    grp_fu_1627_ce;
reg    grp_fu_1631_ce;
reg    grp_fu_1635_ce;
reg    grp_fu_1639_ce;
reg    grp_fu_1643_ce;
reg    grp_fu_1647_ce;
reg    grp_fu_1651_ce;
reg    grp_fu_1655_ce;
reg    grp_fu_1659_ce;
reg    grp_fu_1663_ce;
reg    grp_fu_1667_ce;
reg    grp_fu_1671_ce;
reg    grp_fu_1675_ce;
reg    grp_fu_1679_ce;
reg    grp_fu_1683_ce;
reg    grp_fu_1687_ce;
reg    grp_fu_1691_ce;
reg    grp_fu_1695_ce;
reg    grp_fu_1699_ce;
reg    grp_fu_1703_ce;
reg    grp_fu_1707_ce;
reg    grp_fu_1711_ce;
reg    grp_fu_1715_ce;
reg    grp_fu_1719_ce;
reg    grp_fu_1723_ce;
reg    grp_fu_1727_ce;
reg    grp_fu_1731_ce;
reg    grp_fu_1735_ce;
reg    grp_fu_1739_ce;
reg    grp_fu_1743_ce;
reg    grp_fu_1747_ce;
reg    grp_fu_1751_ce;
reg    grp_fu_1755_ce;
reg    grp_fu_1759_ce;
reg    grp_fu_1763_ce;
reg    grp_fu_1767_ce;
reg    grp_fu_1771_ce;
reg    grp_fu_1775_ce;
reg    grp_fu_1779_ce;
reg    grp_fu_1783_ce;
reg    grp_fu_1787_ce;
reg    grp_fu_1791_ce;
reg    grp_fu_1795_ce;
reg    grp_fu_1799_ce;
reg    grp_fu_1803_ce;
reg    grp_fu_1807_ce;
reg    grp_fu_1811_ce;
reg   [33:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
reg    ap_ST_fsm_state34_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 34'd1;
#0 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_start),.ap_done(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_done),.ap_idle(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_idle),.ap_ready(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_ready),.delta_weights2_31_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_address0),.delta_weights2_31_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_ce0),.delta_weights2_31_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_we0),.delta_weights2_31_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_d0),.delta_weights2_31_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_address1),.delta_weights2_31_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_ce1),.delta_weights2_31_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_we1),.delta_weights2_31_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_d1),.delta_weights2_30_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_address0),.delta_weights2_30_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_ce0),.delta_weights2_30_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_we0),.delta_weights2_30_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_d0),.delta_weights2_30_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_address1),.delta_weights2_30_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_ce1),.delta_weights2_30_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_we1),.delta_weights2_30_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_d1),.delta_weights2_29_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_address0),.delta_weights2_29_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_ce0),.delta_weights2_29_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_we0),.delta_weights2_29_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_d0),.delta_weights2_29_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_address1),.delta_weights2_29_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_ce1),.delta_weights2_29_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_we1),.delta_weights2_29_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_d1),.delta_weights2_28_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_address0),.delta_weights2_28_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_ce0),.delta_weights2_28_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_we0),.delta_weights2_28_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_d0),.delta_weights2_28_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_address1),.delta_weights2_28_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_ce1),.delta_weights2_28_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_we1),.delta_weights2_28_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_d1),.delta_weights2_27_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_address0),.delta_weights2_27_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_ce0),.delta_weights2_27_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_we0),.delta_weights2_27_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_d0),.delta_weights2_27_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_address1),.delta_weights2_27_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_ce1),.delta_weights2_27_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_we1),.delta_weights2_27_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_d1),.delta_weights2_26_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_address0),.delta_weights2_26_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_ce0),.delta_weights2_26_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_we0),.delta_weights2_26_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_d0),.delta_weights2_26_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_address1),.delta_weights2_26_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_ce1),.delta_weights2_26_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_we1),.delta_weights2_26_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_d1),.delta_weights2_25_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_address0),.delta_weights2_25_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_ce0),.delta_weights2_25_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_we0),.delta_weights2_25_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_d0),.delta_weights2_25_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_address1),.delta_weights2_25_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_ce1),.delta_weights2_25_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_we1),.delta_weights2_25_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_d1),.delta_weights2_24_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_address0),.delta_weights2_24_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_ce0),.delta_weights2_24_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_we0),.delta_weights2_24_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_d0),.delta_weights2_24_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_address1),.delta_weights2_24_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_ce1),.delta_weights2_24_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_we1),.delta_weights2_24_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_d1),.delta_weights2_23_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_address0),.delta_weights2_23_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_ce0),.delta_weights2_23_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_we0),.delta_weights2_23_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_d0),.delta_weights2_23_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_address1),.delta_weights2_23_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_ce1),.delta_weights2_23_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_we1),.delta_weights2_23_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_d1),.delta_weights2_22_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_address0),.delta_weights2_22_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_ce0),.delta_weights2_22_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_we0),.delta_weights2_22_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_d0),.delta_weights2_22_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_address1),.delta_weights2_22_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_ce1),.delta_weights2_22_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_we1),.delta_weights2_22_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_d1),.delta_weights2_21_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_address0),.delta_weights2_21_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_ce0),.delta_weights2_21_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_we0),.delta_weights2_21_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_d0),.delta_weights2_21_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_address1),.delta_weights2_21_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_ce1),.delta_weights2_21_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_we1),.delta_weights2_21_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_d1),.delta_weights2_20_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_address0),.delta_weights2_20_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_ce0),.delta_weights2_20_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_we0),.delta_weights2_20_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_d0),.delta_weights2_20_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_address1),.delta_weights2_20_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_ce1),.delta_weights2_20_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_we1),.delta_weights2_20_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_d1),.delta_weights2_19_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_address0),.delta_weights2_19_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_ce0),.delta_weights2_19_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_we0),.delta_weights2_19_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_d0),.delta_weights2_19_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_address1),.delta_weights2_19_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_ce1),.delta_weights2_19_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_we1),.delta_weights2_19_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_d1),.delta_weights2_18_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_address0),.delta_weights2_18_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_ce0),.delta_weights2_18_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_we0),.delta_weights2_18_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_d0),.delta_weights2_18_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_address1),.delta_weights2_18_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_ce1),.delta_weights2_18_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_we1),.delta_weights2_18_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_d1),.delta_weights2_17_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_address0),.delta_weights2_17_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_ce0),.delta_weights2_17_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_we0),.delta_weights2_17_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_d0),.delta_weights2_17_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_address1),.delta_weights2_17_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_ce1),.delta_weights2_17_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_we1),.delta_weights2_17_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_d1),.delta_weights2_16_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_address0),.delta_weights2_16_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_ce0),.delta_weights2_16_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_we0),.delta_weights2_16_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_d0),.delta_weights2_16_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_address1),.delta_weights2_16_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_ce1),.delta_weights2_16_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_we1),.delta_weights2_16_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_d1),.delta_weights2_15_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_address0),.delta_weights2_15_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_ce0),.delta_weights2_15_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_we0),.delta_weights2_15_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_d0),.delta_weights2_15_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_address1),.delta_weights2_15_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_ce1),.delta_weights2_15_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_we1),.delta_weights2_15_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_d1),.delta_weights2_14_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_address0),.delta_weights2_14_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_ce0),.delta_weights2_14_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_we0),.delta_weights2_14_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_d0),.delta_weights2_14_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_address1),.delta_weights2_14_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_ce1),.delta_weights2_14_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_we1),.delta_weights2_14_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_d1),.delta_weights2_13_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_address0),.delta_weights2_13_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_ce0),.delta_weights2_13_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_we0),.delta_weights2_13_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_d0),.delta_weights2_13_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_address1),.delta_weights2_13_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_ce1),.delta_weights2_13_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_we1),.delta_weights2_13_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_d1),.delta_weights2_12_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_address0),.delta_weights2_12_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_ce0),.delta_weights2_12_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_we0),.delta_weights2_12_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_d0),.delta_weights2_12_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_address1),.delta_weights2_12_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_ce1),.delta_weights2_12_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_we1),.delta_weights2_12_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_d1),.delta_weights2_11_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_address0),.delta_weights2_11_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_ce0),.delta_weights2_11_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_we0),.delta_weights2_11_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_d0),.delta_weights2_11_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_address1),.delta_weights2_11_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_ce1),.delta_weights2_11_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_we1),.delta_weights2_11_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_d1),.delta_weights2_10_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_address0),.delta_weights2_10_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_ce0),.delta_weights2_10_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_we0),.delta_weights2_10_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_d0),.delta_weights2_10_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_address1),.delta_weights2_10_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_ce1),.delta_weights2_10_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_we1),.delta_weights2_10_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_d1),.delta_weights2_9_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_address0),.delta_weights2_9_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_ce0),.delta_weights2_9_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_we0),.delta_weights2_9_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_d0),.delta_weights2_9_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_address1),.delta_weights2_9_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_ce1),.delta_weights2_9_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_we1),.delta_weights2_9_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_d1),.delta_weights2_8_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_address0),.delta_weights2_8_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_ce0),.delta_weights2_8_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_we0),.delta_weights2_8_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_d0),.delta_weights2_8_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_address1),.delta_weights2_8_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_ce1),.delta_weights2_8_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_we1),.delta_weights2_8_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_d1),.delta_weights2_7_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_address0),.delta_weights2_7_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_ce0),.delta_weights2_7_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_we0),.delta_weights2_7_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_d0),.delta_weights2_7_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_address1),.delta_weights2_7_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_ce1),.delta_weights2_7_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_we1),.delta_weights2_7_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_d1),.delta_weights2_6_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_address0),.delta_weights2_6_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_ce0),.delta_weights2_6_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_we0),.delta_weights2_6_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_d0),.delta_weights2_6_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_address1),.delta_weights2_6_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_ce1),.delta_weights2_6_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_we1),.delta_weights2_6_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_d1),.delta_weights2_5_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_address0),.delta_weights2_5_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_ce0),.delta_weights2_5_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_we0),.delta_weights2_5_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_d0),.delta_weights2_5_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_address1),.delta_weights2_5_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_ce1),.delta_weights2_5_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_we1),.delta_weights2_5_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_d1),.delta_weights2_4_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_address0),.delta_weights2_4_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_ce0),.delta_weights2_4_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_we0),.delta_weights2_4_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_d0),.delta_weights2_4_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_address1),.delta_weights2_4_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_ce1),.delta_weights2_4_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_we1),.delta_weights2_4_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_d1),.delta_weights2_3_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_address0),.delta_weights2_3_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_ce0),.delta_weights2_3_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_we0),.delta_weights2_3_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_d0),.delta_weights2_3_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_address1),.delta_weights2_3_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_ce1),.delta_weights2_3_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_we1),.delta_weights2_3_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_d1),.delta_weights2_2_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_address0),.delta_weights2_2_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_ce0),.delta_weights2_2_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_we0),.delta_weights2_2_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_d0),.delta_weights2_2_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_address1),.delta_weights2_2_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_ce1),.delta_weights2_2_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_we1),.delta_weights2_2_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_d1),.delta_weights2_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_we0),.delta_weights2_1_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_d0),.delta_weights2_1_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_we1),.delta_weights2_1_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_d1),.delta_weights2_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_address0),.delta_weights2_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_ce0),.delta_weights2_0_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_we0),.delta_weights2_0_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_d0),.delta_weights2_0_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_address1),.delta_weights2_0_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_ce1),.delta_weights2_0_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_we1),.delta_weights2_0_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_d1),.last_activations_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_last_activations_address0),.last_activations_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_last_activations_ce0),.last_activations_q0(last_activations_q0),.output_difference_load(output_difference_load_reg_929),.output_difference_load_1(output_difference_load_1_reg_934),.output_difference_load_2(output_difference_load_2_reg_949),.output_difference_load_3(output_difference_load_3_reg_954),.output_difference_load_4(output_difference_load_4_reg_969),.output_difference_load_5(output_difference_load_5_reg_974),.output_difference_load_6(output_difference_load_6_reg_989),.output_difference_load_7(output_difference_load_7_reg_994),.output_difference_load_8(output_difference_load_8_reg_1009),.output_difference_load_9(output_difference_load_9_reg_1014),.output_difference_load_10(output_difference_load_10_reg_1029),.output_difference_load_11(output_difference_load_11_reg_1034),.output_difference_load_12(output_difference_load_12_reg_1049),.output_difference_load_13(output_difference_load_13_reg_1054),.output_difference_load_14(output_difference_load_14_reg_1069),.output_difference_load_15(output_difference_load_15_reg_1074),.output_difference_load_16(output_difference_load_16_reg_1089),.output_difference_load_17(output_difference_load_17_reg_1094),.output_difference_load_18(output_difference_load_18_reg_1109),.output_difference_load_19(output_difference_load_19_reg_1114),.output_difference_load_20(output_difference_load_20_reg_1129),.output_difference_load_21(output_difference_load_21_reg_1134),.output_difference_load_22(output_difference_load_22_reg_1149),.output_difference_load_23(output_difference_load_23_reg_1154),.output_difference_load_24(output_difference_load_24_reg_1169),.output_difference_load_25(output_difference_load_25_reg_1174),.output_difference_load_26(output_difference_load_26_reg_1189),.output_difference_load_27(output_difference_load_27_reg_1194),.output_difference_load_28(output_difference_load_28_reg_1209),.output_difference_load_29(output_difference_load_29_reg_1214),.output_difference_load_30(output_difference_load_30_reg_1229),.output_difference_load_31(output_difference_load_31_reg_1234),.output_difference_load_32(output_difference_load_32_reg_1249),.output_difference_load_33(output_difference_load_33_reg_1254),.output_difference_load_34(output_difference_load_34_reg_1269),.output_difference_load_35(output_difference_load_35_reg_1274),.output_difference_load_36(output_difference_load_36_reg_1289),.output_difference_load_37(output_difference_load_37_reg_1294),.output_difference_load_38(output_difference_load_38_reg_1309),.output_difference_load_39(output_difference_load_39_reg_1314),.output_difference_load_40(output_difference_load_40_reg_1329),.output_difference_load_41(output_difference_load_41_reg_1334),.output_difference_load_42(output_difference_load_42_reg_1349),.output_difference_load_43(output_difference_load_43_reg_1354),.output_difference_load_44(output_difference_load_44_reg_1369),.output_difference_load_45(output_difference_load_45_reg_1374),.output_difference_load_46(output_difference_load_46_reg_1389),.output_difference_load_47(output_difference_load_47_reg_1394),.output_difference_load_48(output_difference_load_48_reg_1409),.output_difference_load_49(output_difference_load_49_reg_1414),.output_difference_load_50(output_difference_load_50_reg_1429),.output_difference_load_51(output_difference_load_51_reg_1434),.output_difference_load_52(output_difference_load_52_reg_1449),.output_difference_load_53(output_difference_load_53_reg_1454),.output_difference_load_54(output_difference_load_54_reg_1469),.output_difference_load_55(output_difference_load_55_reg_1474),.output_difference_load_56(output_difference_load_56_reg_1489),.output_difference_load_57(output_difference_load_57_reg_1494),.output_difference_load_58(output_difference_load_58_reg_1509),.output_difference_load_59(output_difference_load_59_reg_1514),.output_difference_load_60(output_difference_load_60_reg_1529),.output_difference_load_61(output_difference_load_61_reg_1534),.output_difference_load_62(output_difference_load_62_reg_1549),.output_difference_load_63(output_difference_load_63_reg_1554),.grp_fu_1559_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1559_p_din0),.grp_fu_1559_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1559_p_din1),.grp_fu_1559_p_dout0(grp_fu_3151_p_dout0),.grp_fu_1559_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1559_p_ce),.grp_fu_1563_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1563_p_din0),.grp_fu_1563_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1563_p_din1),.grp_fu_1563_p_dout0(grp_fu_3155_p_dout0),.grp_fu_1563_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1563_p_ce),.grp_fu_1567_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1567_p_din0),.grp_fu_1567_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1567_p_din1),.grp_fu_1567_p_dout0(grp_fu_3159_p_dout0),.grp_fu_1567_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1567_p_ce),.grp_fu_1571_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1571_p_din0),.grp_fu_1571_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1571_p_din1),.grp_fu_1571_p_dout0(grp_fu_3163_p_dout0),.grp_fu_1571_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1571_p_ce),.grp_fu_1575_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1575_p_din0),.grp_fu_1575_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1575_p_din1),.grp_fu_1575_p_dout0(grp_fu_3167_p_dout0),.grp_fu_1575_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1575_p_ce),.grp_fu_1579_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1579_p_din0),.grp_fu_1579_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1579_p_din1),.grp_fu_1579_p_dout0(grp_fu_3171_p_dout0),.grp_fu_1579_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1579_p_ce),.grp_fu_1583_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1583_p_din0),.grp_fu_1583_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1583_p_din1),.grp_fu_1583_p_dout0(grp_fu_3175_p_dout0),.grp_fu_1583_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1583_p_ce),.grp_fu_1587_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1587_p_din0),.grp_fu_1587_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1587_p_din1),.grp_fu_1587_p_dout0(grp_fu_3179_p_dout0),.grp_fu_1587_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1587_p_ce),.grp_fu_1591_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1591_p_din0),.grp_fu_1591_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1591_p_din1),.grp_fu_1591_p_dout0(grp_fu_3183_p_dout0),.grp_fu_1591_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1591_p_ce),.grp_fu_1595_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1595_p_din0),.grp_fu_1595_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1595_p_din1),.grp_fu_1595_p_dout0(grp_fu_3187_p_dout0),.grp_fu_1595_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1595_p_ce),.grp_fu_1599_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1599_p_din0),.grp_fu_1599_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1599_p_din1),.grp_fu_1599_p_dout0(grp_fu_3191_p_dout0),.grp_fu_1599_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1599_p_ce),.grp_fu_1603_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1603_p_din0),.grp_fu_1603_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1603_p_din1),.grp_fu_1603_p_dout0(grp_fu_3195_p_dout0),.grp_fu_1603_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1603_p_ce),.grp_fu_1607_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1607_p_din0),.grp_fu_1607_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1607_p_din1),.grp_fu_1607_p_dout0(grp_fu_3199_p_dout0),.grp_fu_1607_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1607_p_ce),.grp_fu_1611_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1611_p_din0),.grp_fu_1611_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1611_p_din1),.grp_fu_1611_p_dout0(grp_fu_3203_p_dout0),.grp_fu_1611_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1611_p_ce),.grp_fu_1615_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1615_p_din0),.grp_fu_1615_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1615_p_din1),.grp_fu_1615_p_dout0(grp_fu_3207_p_dout0),.grp_fu_1615_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1615_p_ce),.grp_fu_1619_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1619_p_din0),.grp_fu_1619_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1619_p_din1),.grp_fu_1619_p_dout0(grp_fu_3211_p_dout0),.grp_fu_1619_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1619_p_ce),.grp_fu_1623_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1623_p_din0),.grp_fu_1623_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1623_p_din1),.grp_fu_1623_p_dout0(grp_fu_3215_p_dout0),.grp_fu_1623_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1623_p_ce),.grp_fu_1627_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1627_p_din0),.grp_fu_1627_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1627_p_din1),.grp_fu_1627_p_dout0(grp_fu_3219_p_dout0),.grp_fu_1627_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1627_p_ce),.grp_fu_1631_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1631_p_din0),.grp_fu_1631_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1631_p_din1),.grp_fu_1631_p_dout0(grp_fu_3223_p_dout0),.grp_fu_1631_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1631_p_ce),.grp_fu_1635_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1635_p_din0),.grp_fu_1635_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1635_p_din1),.grp_fu_1635_p_dout0(grp_fu_3227_p_dout0),.grp_fu_1635_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1635_p_ce),.grp_fu_1639_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1639_p_din0),.grp_fu_1639_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1639_p_din1),.grp_fu_1639_p_dout0(grp_fu_3231_p_dout0),.grp_fu_1639_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1639_p_ce),.grp_fu_1643_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1643_p_din0),.grp_fu_1643_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1643_p_din1),.grp_fu_1643_p_dout0(grp_fu_3235_p_dout0),.grp_fu_1643_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1643_p_ce),.grp_fu_1647_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1647_p_din0),.grp_fu_1647_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1647_p_din1),.grp_fu_1647_p_dout0(grp_fu_3239_p_dout0),.grp_fu_1647_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1647_p_ce),.grp_fu_1651_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1651_p_din0),.grp_fu_1651_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1651_p_din1),.grp_fu_1651_p_dout0(grp_fu_3243_p_dout0),.grp_fu_1651_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1651_p_ce),.grp_fu_1655_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1655_p_din0),.grp_fu_1655_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1655_p_din1),.grp_fu_1655_p_dout0(grp_fu_3247_p_dout0),.grp_fu_1655_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1655_p_ce),.grp_fu_1659_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1659_p_din0),.grp_fu_1659_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1659_p_din1),.grp_fu_1659_p_dout0(grp_fu_3251_p_dout0),.grp_fu_1659_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1659_p_ce),.grp_fu_1663_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1663_p_din0),.grp_fu_1663_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1663_p_din1),.grp_fu_1663_p_dout0(grp_fu_3255_p_dout0),.grp_fu_1663_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1663_p_ce),.grp_fu_1667_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1667_p_din0),.grp_fu_1667_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1667_p_din1),.grp_fu_1667_p_dout0(grp_fu_3259_p_dout0),.grp_fu_1667_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1667_p_ce),.grp_fu_1671_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1671_p_din0),.grp_fu_1671_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1671_p_din1),.grp_fu_1671_p_dout0(grp_fu_3263_p_dout0),.grp_fu_1671_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1671_p_ce),.grp_fu_1675_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1675_p_din0),.grp_fu_1675_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1675_p_din1),.grp_fu_1675_p_dout0(grp_fu_3267_p_dout0),.grp_fu_1675_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1675_p_ce),.grp_fu_1679_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1679_p_din0),.grp_fu_1679_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1679_p_din1),.grp_fu_1679_p_dout0(grp_fu_3271_p_dout0),.grp_fu_1679_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1679_p_ce),.grp_fu_1683_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1683_p_din0),.grp_fu_1683_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1683_p_din1),.grp_fu_1683_p_dout0(grp_fu_3275_p_dout0),.grp_fu_1683_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1683_p_ce),.grp_fu_1687_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1687_p_din0),.grp_fu_1687_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1687_p_din1),.grp_fu_1687_p_dout0(grp_fu_3279_p_dout0),.grp_fu_1687_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1687_p_ce),.grp_fu_1691_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1691_p_din0),.grp_fu_1691_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1691_p_din1),.grp_fu_1691_p_dout0(grp_fu_3283_p_dout0),.grp_fu_1691_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1691_p_ce),.grp_fu_1695_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1695_p_din0),.grp_fu_1695_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1695_p_din1),.grp_fu_1695_p_dout0(grp_fu_3287_p_dout0),.grp_fu_1695_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1695_p_ce),.grp_fu_1699_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1699_p_din0),.grp_fu_1699_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1699_p_din1),.grp_fu_1699_p_dout0(grp_fu_3315_p_dout0),.grp_fu_1699_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1699_p_ce),.grp_fu_1703_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1703_p_din0),.grp_fu_1703_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1703_p_din1),.grp_fu_1703_p_dout0(grp_fu_3319_p_dout0),.grp_fu_1703_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1703_p_ce),.grp_fu_1707_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1707_p_din0),.grp_fu_1707_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1707_p_din1),.grp_fu_1707_p_dout0(grp_fu_3323_p_dout0),.grp_fu_1707_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1707_p_ce),.grp_fu_1711_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1711_p_din0),.grp_fu_1711_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1711_p_din1),.grp_fu_1711_p_dout0(grp_fu_3327_p_dout0),.grp_fu_1711_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1711_p_ce),.grp_fu_1715_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1715_p_din0),.grp_fu_1715_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1715_p_din1),.grp_fu_1715_p_dout0(grp_fu_3331_p_dout0),.grp_fu_1715_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1715_p_ce),.grp_fu_1719_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1719_p_din0),.grp_fu_1719_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1719_p_din1),.grp_fu_1719_p_dout0(grp_fu_3335_p_dout0),.grp_fu_1719_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1719_p_ce),.grp_fu_1723_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1723_p_din0),.grp_fu_1723_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1723_p_din1),.grp_fu_1723_p_dout0(grp_fu_3339_p_dout0),.grp_fu_1723_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1723_p_ce),.grp_fu_1727_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1727_p_din0),.grp_fu_1727_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1727_p_din1),.grp_fu_1727_p_dout0(grp_fu_3343_p_dout0),.grp_fu_1727_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1727_p_ce),.grp_fu_1731_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1731_p_din0),.grp_fu_1731_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1731_p_din1),.grp_fu_1731_p_dout0(grp_fu_3347_p_dout0),.grp_fu_1731_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1731_p_ce),.grp_fu_1735_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1735_p_din0),.grp_fu_1735_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1735_p_din1),.grp_fu_1735_p_dout0(grp_fu_3351_p_dout0),.grp_fu_1735_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1735_p_ce),.grp_fu_1739_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1739_p_din0),.grp_fu_1739_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1739_p_din1),.grp_fu_1739_p_dout0(grp_fu_3355_p_dout0),.grp_fu_1739_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1739_p_ce),.grp_fu_1743_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1743_p_din0),.grp_fu_1743_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1743_p_din1),.grp_fu_1743_p_dout0(grp_fu_3359_p_dout0),.grp_fu_1743_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1743_p_ce),.grp_fu_1747_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1747_p_din0),.grp_fu_1747_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1747_p_din1),.grp_fu_1747_p_dout0(grp_fu_3363_p_dout0),.grp_fu_1747_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1747_p_ce),.grp_fu_1751_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1751_p_din0),.grp_fu_1751_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1751_p_din1),.grp_fu_1751_p_dout0(grp_fu_3375_p_dout0),.grp_fu_1751_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1751_p_ce),.grp_fu_1755_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1755_p_din0),.grp_fu_1755_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1755_p_din1),.grp_fu_1755_p_dout0(grp_fu_3379_p_dout0),.grp_fu_1755_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1755_p_ce),.grp_fu_1759_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1759_p_din0),.grp_fu_1759_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1759_p_din1),.grp_fu_1759_p_dout0(grp_fu_3383_p_dout0),.grp_fu_1759_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1759_p_ce),.grp_fu_1763_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1763_p_din0),.grp_fu_1763_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1763_p_din1),.grp_fu_1763_p_dout0(grp_fu_3387_p_dout0),.grp_fu_1763_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1763_p_ce),.grp_fu_1767_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1767_p_din0),.grp_fu_1767_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1767_p_din1),.grp_fu_1767_p_dout0(grp_fu_3391_p_dout0),.grp_fu_1767_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1767_p_ce),.grp_fu_1771_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1771_p_din0),.grp_fu_1771_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1771_p_din1),.grp_fu_1771_p_dout0(grp_fu_3395_p_dout0),.grp_fu_1771_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1771_p_ce),.grp_fu_1775_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1775_p_din0),.grp_fu_1775_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1775_p_din1),.grp_fu_1775_p_dout0(grp_fu_3399_p_dout0),.grp_fu_1775_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1775_p_ce),.grp_fu_1779_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1779_p_din0),.grp_fu_1779_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1779_p_din1),.grp_fu_1779_p_dout0(grp_fu_3403_p_dout0),.grp_fu_1779_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1779_p_ce),.grp_fu_1783_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1783_p_din0),.grp_fu_1783_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1783_p_din1),.grp_fu_1783_p_dout0(grp_fu_3407_p_dout0),.grp_fu_1783_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1783_p_ce),.grp_fu_1787_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1787_p_din0),.grp_fu_1787_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1787_p_din1),.grp_fu_1787_p_dout0(grp_fu_3411_p_dout0),.grp_fu_1787_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1787_p_ce),.grp_fu_1791_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1791_p_din0),.grp_fu_1791_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1791_p_din1),.grp_fu_1791_p_dout0(grp_fu_3415_p_dout0),.grp_fu_1791_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1791_p_ce),.grp_fu_1795_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1795_p_din0),.grp_fu_1795_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1795_p_din1),.grp_fu_1795_p_dout0(grp_fu_3419_p_dout0),.grp_fu_1795_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1795_p_ce),.grp_fu_1799_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1799_p_din0),.grp_fu_1799_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1799_p_din1),.grp_fu_1799_p_dout0(grp_fu_3423_p_dout0),.grp_fu_1799_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1799_p_ce),.grp_fu_1803_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1803_p_din0),.grp_fu_1803_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1803_p_din1),.grp_fu_1803_p_dout0(grp_fu_3427_p_dout0),.grp_fu_1803_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1803_p_ce),.grp_fu_1807_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1807_p_din0),.grp_fu_1807_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1807_p_din1),.grp_fu_1807_p_dout0(grp_fu_3431_p_dout0),.grp_fu_1807_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1807_p_ce),.grp_fu_1811_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1811_p_din0),.grp_fu_1811_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1811_p_din1),.grp_fu_1811_p_dout0(grp_fu_3435_p_dout0),.grp_fu_1811_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1811_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state33)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_load_10_reg_1029 <= output_difference_q1;
        output_difference_load_11_reg_1034 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_load_12_reg_1049 <= output_difference_q1;
        output_difference_load_13_reg_1054 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_difference_load_14_reg_1069 <= output_difference_q1;
        output_difference_load_15_reg_1074 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        output_difference_load_16_reg_1089 <= output_difference_q1;
        output_difference_load_17_reg_1094 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        output_difference_load_18_reg_1109 <= output_difference_q1;
        output_difference_load_19_reg_1114 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_load_1_reg_934 <= output_difference_q0;
        output_difference_load_reg_929 <= output_difference_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        output_difference_load_20_reg_1129 <= output_difference_q1;
        output_difference_load_21_reg_1134 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        output_difference_load_22_reg_1149 <= output_difference_q1;
        output_difference_load_23_reg_1154 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_difference_load_24_reg_1169 <= output_difference_q1;
        output_difference_load_25_reg_1174 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        output_difference_load_26_reg_1189 <= output_difference_q1;
        output_difference_load_27_reg_1194 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_difference_load_28_reg_1209 <= output_difference_q1;
        output_difference_load_29_reg_1214 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_load_2_reg_949 <= output_difference_q1;
        output_difference_load_3_reg_954 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        output_difference_load_30_reg_1229 <= output_difference_q1;
        output_difference_load_31_reg_1234 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        output_difference_load_32_reg_1249 <= output_difference_q1;
        output_difference_load_33_reg_1254 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        output_difference_load_34_reg_1269 <= output_difference_q1;
        output_difference_load_35_reg_1274 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        output_difference_load_36_reg_1289 <= output_difference_q1;
        output_difference_load_37_reg_1294 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        output_difference_load_38_reg_1309 <= output_difference_q1;
        output_difference_load_39_reg_1314 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        output_difference_load_40_reg_1329 <= output_difference_q1;
        output_difference_load_41_reg_1334 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        output_difference_load_42_reg_1349 <= output_difference_q1;
        output_difference_load_43_reg_1354 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        output_difference_load_44_reg_1369 <= output_difference_q1;
        output_difference_load_45_reg_1374 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        output_difference_load_46_reg_1389 <= output_difference_q1;
        output_difference_load_47_reg_1394 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        output_difference_load_48_reg_1409 <= output_difference_q1;
        output_difference_load_49_reg_1414 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_load_4_reg_969 <= output_difference_q1;
        output_difference_load_5_reg_974 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        output_difference_load_50_reg_1429 <= output_difference_q1;
        output_difference_load_51_reg_1434 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        output_difference_load_52_reg_1449 <= output_difference_q1;
        output_difference_load_53_reg_1454 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        output_difference_load_54_reg_1469 <= output_difference_q1;
        output_difference_load_55_reg_1474 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        output_difference_load_56_reg_1489 <= output_difference_q1;
        output_difference_load_57_reg_1494 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        output_difference_load_58_reg_1509 <= output_difference_q1;
        output_difference_load_59_reg_1514 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        output_difference_load_60_reg_1529 <= output_difference_q1;
        output_difference_load_61_reg_1534 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        output_difference_load_62_reg_1549 <= output_difference_q1;
        output_difference_load_63_reg_1554 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_load_6_reg_989 <= output_difference_q1;
        output_difference_load_7_reg_994 <= output_difference_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_load_8_reg_1009 <= output_difference_q1;
        output_difference_load_9_reg_1014 <= output_difference_q0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
always @ (*) begin
    if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_done == 1'b0)) begin
        ap_ST_fsm_state34_blk = 1'b1;
    end else begin
        ap_ST_fsm_state34_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state34)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state34))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1559_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1559_p_ce;
    end else begin
        grp_fu_1559_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1563_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1563_p_ce;
    end else begin
        grp_fu_1563_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1567_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1567_p_ce;
    end else begin
        grp_fu_1567_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1571_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1571_p_ce;
    end else begin
        grp_fu_1571_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1575_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1575_p_ce;
    end else begin
        grp_fu_1575_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1579_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1579_p_ce;
    end else begin
        grp_fu_1579_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1583_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1583_p_ce;
    end else begin
        grp_fu_1583_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1587_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1587_p_ce;
    end else begin
        grp_fu_1587_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1591_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1591_p_ce;
    end else begin
        grp_fu_1591_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1595_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1595_p_ce;
    end else begin
        grp_fu_1595_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1599_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1599_p_ce;
    end else begin
        grp_fu_1599_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1603_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1603_p_ce;
    end else begin
        grp_fu_1603_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1607_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1607_p_ce;
    end else begin
        grp_fu_1607_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1611_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1611_p_ce;
    end else begin
        grp_fu_1611_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1615_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1615_p_ce;
    end else begin
        grp_fu_1615_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1619_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1619_p_ce;
    end else begin
        grp_fu_1619_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1623_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1623_p_ce;
    end else begin
        grp_fu_1623_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1627_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1627_p_ce;
    end else begin
        grp_fu_1627_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1631_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1631_p_ce;
    end else begin
        grp_fu_1631_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1635_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1635_p_ce;
    end else begin
        grp_fu_1635_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1639_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1639_p_ce;
    end else begin
        grp_fu_1639_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1643_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1643_p_ce;
    end else begin
        grp_fu_1643_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1647_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1647_p_ce;
    end else begin
        grp_fu_1647_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1651_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1651_p_ce;
    end else begin
        grp_fu_1651_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1655_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1655_p_ce;
    end else begin
        grp_fu_1655_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1659_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1659_p_ce;
    end else begin
        grp_fu_1659_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1663_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1663_p_ce;
    end else begin
        grp_fu_1663_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1667_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1667_p_ce;
    end else begin
        grp_fu_1667_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1671_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1671_p_ce;
    end else begin
        grp_fu_1671_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1675_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1675_p_ce;
    end else begin
        grp_fu_1675_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1679_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1679_p_ce;
    end else begin
        grp_fu_1679_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1683_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1683_p_ce;
    end else begin
        grp_fu_1683_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1687_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1687_p_ce;
    end else begin
        grp_fu_1687_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1691_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1691_p_ce;
    end else begin
        grp_fu_1691_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1695_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1695_p_ce;
    end else begin
        grp_fu_1695_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1699_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1699_p_ce;
    end else begin
        grp_fu_1699_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1703_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1703_p_ce;
    end else begin
        grp_fu_1703_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1707_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1707_p_ce;
    end else begin
        grp_fu_1707_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1711_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1711_p_ce;
    end else begin
        grp_fu_1711_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1715_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1715_p_ce;
    end else begin
        grp_fu_1715_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1719_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1719_p_ce;
    end else begin
        grp_fu_1719_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1723_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1723_p_ce;
    end else begin
        grp_fu_1723_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1727_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1727_p_ce;
    end else begin
        grp_fu_1727_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1731_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1731_p_ce;
    end else begin
        grp_fu_1731_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1735_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1735_p_ce;
    end else begin
        grp_fu_1735_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1739_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1739_p_ce;
    end else begin
        grp_fu_1739_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1743_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1743_p_ce;
    end else begin
        grp_fu_1743_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1747_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1747_p_ce;
    end else begin
        grp_fu_1747_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1751_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1751_p_ce;
    end else begin
        grp_fu_1751_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1755_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1755_p_ce;
    end else begin
        grp_fu_1755_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1759_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1759_p_ce;
    end else begin
        grp_fu_1759_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1763_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1763_p_ce;
    end else begin
        grp_fu_1763_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1767_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1767_p_ce;
    end else begin
        grp_fu_1767_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1771_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1771_p_ce;
    end else begin
        grp_fu_1771_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1775_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1775_p_ce;
    end else begin
        grp_fu_1775_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1779_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1779_p_ce;
    end else begin
        grp_fu_1779_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1783_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1783_p_ce;
    end else begin
        grp_fu_1783_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1787_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1787_p_ce;
    end else begin
        grp_fu_1787_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1791_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1791_p_ce;
    end else begin
        grp_fu_1791_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1795_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1795_p_ce;
    end else begin
        grp_fu_1795_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1799_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1799_p_ce;
    end else begin
        grp_fu_1799_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1803_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1803_p_ce;
    end else begin
        grp_fu_1803_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1807_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1807_p_ce;
    end else begin
        grp_fu_1807_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1811_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1811_p_ce;
    end else begin
        grp_fu_1811_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        output_difference_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        output_difference_address0_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        output_difference_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        output_difference_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        output_difference_address0_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        output_difference_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        output_difference_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        output_difference_address0_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        output_difference_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        output_difference_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        output_difference_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        output_difference_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        output_difference_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        output_difference_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        output_difference_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        output_difference_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        output_difference_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_difference_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_difference_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_difference_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_difference_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_difference_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_difference_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_difference_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address0_local = 64'd1;
    end else begin
        output_difference_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        output_difference_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        output_difference_address1_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        output_difference_address1_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        output_difference_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        output_difference_address1_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        output_difference_address1_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        output_difference_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        output_difference_address1_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        output_difference_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        output_difference_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        output_difference_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        output_difference_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        output_difference_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        output_difference_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        output_difference_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        output_difference_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        output_difference_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_difference_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_difference_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_difference_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_difference_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_difference_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_difference_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_difference_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_address1_local = 64'd0;
    end else begin
        output_difference_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_ce0_local = 1'b1;
    end else begin
        output_difference_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_ce1_local = 1'b1;
    end else begin
        output_difference_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state34))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state34;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights2_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_address0;
assign delta_weights2_0_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_address1;
assign delta_weights2_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_ce0;
assign delta_weights2_0_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_ce1;
assign delta_weights2_0_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_d0;
assign delta_weights2_0_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_d1;
assign delta_weights2_0_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_we0;
assign delta_weights2_0_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_0_we1;
assign delta_weights2_10_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_address0;
assign delta_weights2_10_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_address1;
assign delta_weights2_10_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_ce0;
assign delta_weights2_10_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_ce1;
assign delta_weights2_10_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_d0;
assign delta_weights2_10_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_d1;
assign delta_weights2_10_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_we0;
assign delta_weights2_10_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_10_we1;
assign delta_weights2_11_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_address0;
assign delta_weights2_11_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_address1;
assign delta_weights2_11_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_ce0;
assign delta_weights2_11_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_ce1;
assign delta_weights2_11_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_d0;
assign delta_weights2_11_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_d1;
assign delta_weights2_11_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_we0;
assign delta_weights2_11_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_11_we1;
assign delta_weights2_12_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_address0;
assign delta_weights2_12_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_address1;
assign delta_weights2_12_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_ce0;
assign delta_weights2_12_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_ce1;
assign delta_weights2_12_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_d0;
assign delta_weights2_12_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_d1;
assign delta_weights2_12_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_we0;
assign delta_weights2_12_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_12_we1;
assign delta_weights2_13_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_address0;
assign delta_weights2_13_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_address1;
assign delta_weights2_13_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_ce0;
assign delta_weights2_13_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_ce1;
assign delta_weights2_13_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_d0;
assign delta_weights2_13_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_d1;
assign delta_weights2_13_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_we0;
assign delta_weights2_13_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_13_we1;
assign delta_weights2_14_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_address0;
assign delta_weights2_14_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_address1;
assign delta_weights2_14_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_ce0;
assign delta_weights2_14_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_ce1;
assign delta_weights2_14_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_d0;
assign delta_weights2_14_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_d1;
assign delta_weights2_14_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_we0;
assign delta_weights2_14_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_14_we1;
assign delta_weights2_15_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_address0;
assign delta_weights2_15_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_address1;
assign delta_weights2_15_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_ce0;
assign delta_weights2_15_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_ce1;
assign delta_weights2_15_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_d0;
assign delta_weights2_15_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_d1;
assign delta_weights2_15_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_we0;
assign delta_weights2_15_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_15_we1;
assign delta_weights2_16_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_address0;
assign delta_weights2_16_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_address1;
assign delta_weights2_16_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_ce0;
assign delta_weights2_16_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_ce1;
assign delta_weights2_16_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_d0;
assign delta_weights2_16_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_d1;
assign delta_weights2_16_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_we0;
assign delta_weights2_16_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_16_we1;
assign delta_weights2_17_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_address0;
assign delta_weights2_17_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_address1;
assign delta_weights2_17_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_ce0;
assign delta_weights2_17_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_ce1;
assign delta_weights2_17_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_d0;
assign delta_weights2_17_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_d1;
assign delta_weights2_17_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_we0;
assign delta_weights2_17_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_17_we1;
assign delta_weights2_18_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_address0;
assign delta_weights2_18_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_address1;
assign delta_weights2_18_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_ce0;
assign delta_weights2_18_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_ce1;
assign delta_weights2_18_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_d0;
assign delta_weights2_18_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_d1;
assign delta_weights2_18_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_we0;
assign delta_weights2_18_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_18_we1;
assign delta_weights2_19_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_address0;
assign delta_weights2_19_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_address1;
assign delta_weights2_19_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_ce0;
assign delta_weights2_19_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_ce1;
assign delta_weights2_19_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_d0;
assign delta_weights2_19_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_d1;
assign delta_weights2_19_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_we0;
assign delta_weights2_19_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_19_we1;
assign delta_weights2_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_address0;
assign delta_weights2_1_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_address1;
assign delta_weights2_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_ce0;
assign delta_weights2_1_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_ce1;
assign delta_weights2_1_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_d0;
assign delta_weights2_1_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_d1;
assign delta_weights2_1_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_we0;
assign delta_weights2_1_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_1_we1;
assign delta_weights2_20_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_address0;
assign delta_weights2_20_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_address1;
assign delta_weights2_20_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_ce0;
assign delta_weights2_20_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_ce1;
assign delta_weights2_20_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_d0;
assign delta_weights2_20_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_d1;
assign delta_weights2_20_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_we0;
assign delta_weights2_20_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_20_we1;
assign delta_weights2_21_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_address0;
assign delta_weights2_21_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_address1;
assign delta_weights2_21_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_ce0;
assign delta_weights2_21_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_ce1;
assign delta_weights2_21_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_d0;
assign delta_weights2_21_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_d1;
assign delta_weights2_21_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_we0;
assign delta_weights2_21_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_21_we1;
assign delta_weights2_22_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_address0;
assign delta_weights2_22_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_address1;
assign delta_weights2_22_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_ce0;
assign delta_weights2_22_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_ce1;
assign delta_weights2_22_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_d0;
assign delta_weights2_22_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_d1;
assign delta_weights2_22_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_we0;
assign delta_weights2_22_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_22_we1;
assign delta_weights2_23_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_address0;
assign delta_weights2_23_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_address1;
assign delta_weights2_23_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_ce0;
assign delta_weights2_23_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_ce1;
assign delta_weights2_23_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_d0;
assign delta_weights2_23_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_d1;
assign delta_weights2_23_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_we0;
assign delta_weights2_23_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_23_we1;
assign delta_weights2_24_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_address0;
assign delta_weights2_24_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_address1;
assign delta_weights2_24_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_ce0;
assign delta_weights2_24_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_ce1;
assign delta_weights2_24_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_d0;
assign delta_weights2_24_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_d1;
assign delta_weights2_24_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_we0;
assign delta_weights2_24_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_24_we1;
assign delta_weights2_25_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_address0;
assign delta_weights2_25_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_address1;
assign delta_weights2_25_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_ce0;
assign delta_weights2_25_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_ce1;
assign delta_weights2_25_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_d0;
assign delta_weights2_25_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_d1;
assign delta_weights2_25_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_we0;
assign delta_weights2_25_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_25_we1;
assign delta_weights2_26_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_address0;
assign delta_weights2_26_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_address1;
assign delta_weights2_26_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_ce0;
assign delta_weights2_26_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_ce1;
assign delta_weights2_26_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_d0;
assign delta_weights2_26_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_d1;
assign delta_weights2_26_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_we0;
assign delta_weights2_26_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_26_we1;
assign delta_weights2_27_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_address0;
assign delta_weights2_27_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_address1;
assign delta_weights2_27_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_ce0;
assign delta_weights2_27_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_ce1;
assign delta_weights2_27_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_d0;
assign delta_weights2_27_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_d1;
assign delta_weights2_27_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_we0;
assign delta_weights2_27_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_27_we1;
assign delta_weights2_28_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_address0;
assign delta_weights2_28_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_address1;
assign delta_weights2_28_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_ce0;
assign delta_weights2_28_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_ce1;
assign delta_weights2_28_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_d0;
assign delta_weights2_28_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_d1;
assign delta_weights2_28_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_we0;
assign delta_weights2_28_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_28_we1;
assign delta_weights2_29_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_address0;
assign delta_weights2_29_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_address1;
assign delta_weights2_29_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_ce0;
assign delta_weights2_29_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_ce1;
assign delta_weights2_29_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_d0;
assign delta_weights2_29_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_d1;
assign delta_weights2_29_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_we0;
assign delta_weights2_29_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_29_we1;
assign delta_weights2_2_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_address0;
assign delta_weights2_2_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_address1;
assign delta_weights2_2_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_ce0;
assign delta_weights2_2_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_ce1;
assign delta_weights2_2_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_d0;
assign delta_weights2_2_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_d1;
assign delta_weights2_2_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_we0;
assign delta_weights2_2_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_2_we1;
assign delta_weights2_30_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_address0;
assign delta_weights2_30_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_address1;
assign delta_weights2_30_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_ce0;
assign delta_weights2_30_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_ce1;
assign delta_weights2_30_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_d0;
assign delta_weights2_30_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_d1;
assign delta_weights2_30_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_we0;
assign delta_weights2_30_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_30_we1;
assign delta_weights2_31_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_address0;
assign delta_weights2_31_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_address1;
assign delta_weights2_31_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_ce0;
assign delta_weights2_31_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_ce1;
assign delta_weights2_31_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_d0;
assign delta_weights2_31_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_d1;
assign delta_weights2_31_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_we0;
assign delta_weights2_31_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_31_we1;
assign delta_weights2_3_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_address0;
assign delta_weights2_3_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_address1;
assign delta_weights2_3_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_ce0;
assign delta_weights2_3_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_ce1;
assign delta_weights2_3_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_d0;
assign delta_weights2_3_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_d1;
assign delta_weights2_3_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_we0;
assign delta_weights2_3_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_3_we1;
assign delta_weights2_4_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_address0;
assign delta_weights2_4_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_address1;
assign delta_weights2_4_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_ce0;
assign delta_weights2_4_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_ce1;
assign delta_weights2_4_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_d0;
assign delta_weights2_4_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_d1;
assign delta_weights2_4_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_we0;
assign delta_weights2_4_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_4_we1;
assign delta_weights2_5_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_address0;
assign delta_weights2_5_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_address1;
assign delta_weights2_5_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_ce0;
assign delta_weights2_5_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_ce1;
assign delta_weights2_5_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_d0;
assign delta_weights2_5_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_d1;
assign delta_weights2_5_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_we0;
assign delta_weights2_5_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_5_we1;
assign delta_weights2_6_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_address0;
assign delta_weights2_6_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_address1;
assign delta_weights2_6_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_ce0;
assign delta_weights2_6_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_ce1;
assign delta_weights2_6_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_d0;
assign delta_weights2_6_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_d1;
assign delta_weights2_6_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_we0;
assign delta_weights2_6_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_6_we1;
assign delta_weights2_7_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_address0;
assign delta_weights2_7_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_address1;
assign delta_weights2_7_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_ce0;
assign delta_weights2_7_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_ce1;
assign delta_weights2_7_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_d0;
assign delta_weights2_7_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_d1;
assign delta_weights2_7_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_we0;
assign delta_weights2_7_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_7_we1;
assign delta_weights2_8_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_address0;
assign delta_weights2_8_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_address1;
assign delta_weights2_8_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_ce0;
assign delta_weights2_8_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_ce1;
assign delta_weights2_8_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_d0;
assign delta_weights2_8_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_d1;
assign delta_weights2_8_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_we0;
assign delta_weights2_8_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_8_we1;
assign delta_weights2_9_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_address0;
assign delta_weights2_9_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_address1;
assign delta_weights2_9_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_ce0;
assign delta_weights2_9_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_ce1;
assign delta_weights2_9_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_d0;
assign delta_weights2_9_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_d1;
assign delta_weights2_9_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_we0;
assign delta_weights2_9_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_delta_weights2_9_we1;
assign grp_fu_3151_p_ce = grp_fu_1559_ce;
assign grp_fu_3151_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1559_p_din0;
assign grp_fu_3151_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1559_p_din1;
assign grp_fu_3155_p_ce = grp_fu_1563_ce;
assign grp_fu_3155_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1563_p_din0;
assign grp_fu_3155_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1563_p_din1;
assign grp_fu_3159_p_ce = grp_fu_1567_ce;
assign grp_fu_3159_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1567_p_din0;
assign grp_fu_3159_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1567_p_din1;
assign grp_fu_3163_p_ce = grp_fu_1571_ce;
assign grp_fu_3163_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1571_p_din0;
assign grp_fu_3163_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1571_p_din1;
assign grp_fu_3167_p_ce = grp_fu_1575_ce;
assign grp_fu_3167_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1575_p_din0;
assign grp_fu_3167_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1575_p_din1;
assign grp_fu_3171_p_ce = grp_fu_1579_ce;
assign grp_fu_3171_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1579_p_din0;
assign grp_fu_3171_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1579_p_din1;
assign grp_fu_3175_p_ce = grp_fu_1583_ce;
assign grp_fu_3175_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1583_p_din0;
assign grp_fu_3175_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1583_p_din1;
assign grp_fu_3179_p_ce = grp_fu_1587_ce;
assign grp_fu_3179_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1587_p_din0;
assign grp_fu_3179_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1587_p_din1;
assign grp_fu_3183_p_ce = grp_fu_1591_ce;
assign grp_fu_3183_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1591_p_din0;
assign grp_fu_3183_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1591_p_din1;
assign grp_fu_3187_p_ce = grp_fu_1595_ce;
assign grp_fu_3187_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1595_p_din0;
assign grp_fu_3187_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1595_p_din1;
assign grp_fu_3191_p_ce = grp_fu_1599_ce;
assign grp_fu_3191_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1599_p_din0;
assign grp_fu_3191_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1599_p_din1;
assign grp_fu_3195_p_ce = grp_fu_1603_ce;
assign grp_fu_3195_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1603_p_din0;
assign grp_fu_3195_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1603_p_din1;
assign grp_fu_3199_p_ce = grp_fu_1607_ce;
assign grp_fu_3199_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1607_p_din0;
assign grp_fu_3199_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1607_p_din1;
assign grp_fu_3203_p_ce = grp_fu_1611_ce;
assign grp_fu_3203_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1611_p_din0;
assign grp_fu_3203_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1611_p_din1;
assign grp_fu_3207_p_ce = grp_fu_1615_ce;
assign grp_fu_3207_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1615_p_din0;
assign grp_fu_3207_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1615_p_din1;
assign grp_fu_3211_p_ce = grp_fu_1619_ce;
assign grp_fu_3211_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1619_p_din0;
assign grp_fu_3211_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1619_p_din1;
assign grp_fu_3215_p_ce = grp_fu_1623_ce;
assign grp_fu_3215_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1623_p_din0;
assign grp_fu_3215_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1623_p_din1;
assign grp_fu_3219_p_ce = grp_fu_1627_ce;
assign grp_fu_3219_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1627_p_din0;
assign grp_fu_3219_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1627_p_din1;
assign grp_fu_3223_p_ce = grp_fu_1631_ce;
assign grp_fu_3223_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1631_p_din0;
assign grp_fu_3223_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1631_p_din1;
assign grp_fu_3227_p_ce = grp_fu_1635_ce;
assign grp_fu_3227_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1635_p_din0;
assign grp_fu_3227_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1635_p_din1;
assign grp_fu_3231_p_ce = grp_fu_1639_ce;
assign grp_fu_3231_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1639_p_din0;
assign grp_fu_3231_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1639_p_din1;
assign grp_fu_3235_p_ce = grp_fu_1643_ce;
assign grp_fu_3235_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1643_p_din0;
assign grp_fu_3235_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1643_p_din1;
assign grp_fu_3239_p_ce = grp_fu_1647_ce;
assign grp_fu_3239_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1647_p_din0;
assign grp_fu_3239_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1647_p_din1;
assign grp_fu_3243_p_ce = grp_fu_1651_ce;
assign grp_fu_3243_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1651_p_din0;
assign grp_fu_3243_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1651_p_din1;
assign grp_fu_3247_p_ce = grp_fu_1655_ce;
assign grp_fu_3247_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1655_p_din0;
assign grp_fu_3247_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1655_p_din1;
assign grp_fu_3251_p_ce = grp_fu_1659_ce;
assign grp_fu_3251_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1659_p_din0;
assign grp_fu_3251_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1659_p_din1;
assign grp_fu_3255_p_ce = grp_fu_1663_ce;
assign grp_fu_3255_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1663_p_din0;
assign grp_fu_3255_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1663_p_din1;
assign grp_fu_3259_p_ce = grp_fu_1667_ce;
assign grp_fu_3259_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1667_p_din0;
assign grp_fu_3259_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1667_p_din1;
assign grp_fu_3263_p_ce = grp_fu_1671_ce;
assign grp_fu_3263_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1671_p_din0;
assign grp_fu_3263_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1671_p_din1;
assign grp_fu_3267_p_ce = grp_fu_1675_ce;
assign grp_fu_3267_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1675_p_din0;
assign grp_fu_3267_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1675_p_din1;
assign grp_fu_3271_p_ce = grp_fu_1679_ce;
assign grp_fu_3271_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1679_p_din0;
assign grp_fu_3271_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1679_p_din1;
assign grp_fu_3275_p_ce = grp_fu_1683_ce;
assign grp_fu_3275_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1683_p_din0;
assign grp_fu_3275_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1683_p_din1;
assign grp_fu_3279_p_ce = grp_fu_1687_ce;
assign grp_fu_3279_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1687_p_din0;
assign grp_fu_3279_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1687_p_din1;
assign grp_fu_3283_p_ce = grp_fu_1691_ce;
assign grp_fu_3283_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1691_p_din0;
assign grp_fu_3283_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1691_p_din1;
assign grp_fu_3287_p_ce = grp_fu_1695_ce;
assign grp_fu_3287_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1695_p_din0;
assign grp_fu_3287_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1695_p_din1;
assign grp_fu_3315_p_ce = grp_fu_1699_ce;
assign grp_fu_3315_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1699_p_din0;
assign grp_fu_3315_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1699_p_din1;
assign grp_fu_3319_p_ce = grp_fu_1703_ce;
assign grp_fu_3319_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1703_p_din0;
assign grp_fu_3319_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1703_p_din1;
assign grp_fu_3323_p_ce = grp_fu_1707_ce;
assign grp_fu_3323_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1707_p_din0;
assign grp_fu_3323_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1707_p_din1;
assign grp_fu_3327_p_ce = grp_fu_1711_ce;
assign grp_fu_3327_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1711_p_din0;
assign grp_fu_3327_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1711_p_din1;
assign grp_fu_3331_p_ce = grp_fu_1715_ce;
assign grp_fu_3331_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1715_p_din0;
assign grp_fu_3331_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1715_p_din1;
assign grp_fu_3335_p_ce = grp_fu_1719_ce;
assign grp_fu_3335_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1719_p_din0;
assign grp_fu_3335_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1719_p_din1;
assign grp_fu_3339_p_ce = grp_fu_1723_ce;
assign grp_fu_3339_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1723_p_din0;
assign grp_fu_3339_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1723_p_din1;
assign grp_fu_3343_p_ce = grp_fu_1727_ce;
assign grp_fu_3343_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1727_p_din0;
assign grp_fu_3343_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1727_p_din1;
assign grp_fu_3347_p_ce = grp_fu_1731_ce;
assign grp_fu_3347_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1731_p_din0;
assign grp_fu_3347_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1731_p_din1;
assign grp_fu_3351_p_ce = grp_fu_1735_ce;
assign grp_fu_3351_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1735_p_din0;
assign grp_fu_3351_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1735_p_din1;
assign grp_fu_3355_p_ce = grp_fu_1739_ce;
assign grp_fu_3355_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1739_p_din0;
assign grp_fu_3355_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1739_p_din1;
assign grp_fu_3359_p_ce = grp_fu_1743_ce;
assign grp_fu_3359_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1743_p_din0;
assign grp_fu_3359_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1743_p_din1;
assign grp_fu_3363_p_ce = grp_fu_1747_ce;
assign grp_fu_3363_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1747_p_din0;
assign grp_fu_3363_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1747_p_din1;
assign grp_fu_3375_p_ce = grp_fu_1751_ce;
assign grp_fu_3375_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1751_p_din0;
assign grp_fu_3375_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1751_p_din1;
assign grp_fu_3379_p_ce = grp_fu_1755_ce;
assign grp_fu_3379_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1755_p_din0;
assign grp_fu_3379_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1755_p_din1;
assign grp_fu_3383_p_ce = grp_fu_1759_ce;
assign grp_fu_3383_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1759_p_din0;
assign grp_fu_3383_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1759_p_din1;
assign grp_fu_3387_p_ce = grp_fu_1763_ce;
assign grp_fu_3387_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1763_p_din0;
assign grp_fu_3387_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1763_p_din1;
assign grp_fu_3391_p_ce = grp_fu_1767_ce;
assign grp_fu_3391_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1767_p_din0;
assign grp_fu_3391_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1767_p_din1;
assign grp_fu_3395_p_ce = grp_fu_1771_ce;
assign grp_fu_3395_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1771_p_din0;
assign grp_fu_3395_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1771_p_din1;
assign grp_fu_3399_p_ce = grp_fu_1775_ce;
assign grp_fu_3399_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1775_p_din0;
assign grp_fu_3399_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1775_p_din1;
assign grp_fu_3403_p_ce = grp_fu_1779_ce;
assign grp_fu_3403_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1779_p_din0;
assign grp_fu_3403_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1779_p_din1;
assign grp_fu_3407_p_ce = grp_fu_1783_ce;
assign grp_fu_3407_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1783_p_din0;
assign grp_fu_3407_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1783_p_din1;
assign grp_fu_3411_p_ce = grp_fu_1787_ce;
assign grp_fu_3411_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1787_p_din0;
assign grp_fu_3411_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1787_p_din1;
assign grp_fu_3415_p_ce = grp_fu_1791_ce;
assign grp_fu_3415_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1791_p_din0;
assign grp_fu_3415_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1791_p_din1;
assign grp_fu_3419_p_ce = grp_fu_1795_ce;
assign grp_fu_3419_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1795_p_din0;
assign grp_fu_3419_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1795_p_din1;
assign grp_fu_3423_p_ce = grp_fu_1799_ce;
assign grp_fu_3423_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1799_p_din0;
assign grp_fu_3423_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1799_p_din1;
assign grp_fu_3427_p_ce = grp_fu_1803_ce;
assign grp_fu_3427_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1803_p_din0;
assign grp_fu_3427_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1803_p_din1;
assign grp_fu_3431_p_ce = grp_fu_1807_ce;
assign grp_fu_3431_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1807_p_din0;
assign grp_fu_3431_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1807_p_din1;
assign grp_fu_3435_p_ce = grp_fu_1811_ce;
assign grp_fu_3435_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1811_p_din0;
assign grp_fu_3435_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_grp_fu_1811_p_din1;
assign grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_start = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_ap_start_reg;
assign last_activations_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_last_activations_address0;
assign last_activations_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_783_last_activations_ce0;
assign output_difference_address0 = output_difference_address0_local;
assign output_difference_address1 = output_difference_address1_local;
assign output_difference_ce0 = output_difference_ce0_local;
assign output_difference_ce1 = output_difference_ce1_local;
endmodule 
