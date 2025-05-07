module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_24_address0,delta_weights3_24_ce0,delta_weights3_24_we0,delta_weights3_24_d0,delta_weights3_25_address0,delta_weights3_25_ce0,delta_weights3_25_we0,delta_weights3_25_d0,delta_weights3_26_address0,delta_weights3_26_ce0,delta_weights3_26_we0,delta_weights3_26_d0,delta_weights3_27_address0,delta_weights3_27_ce0,delta_weights3_27_we0,delta_weights3_27_d0,delta_weights3_28_address0,delta_weights3_28_ce0,delta_weights3_28_we0,delta_weights3_28_d0,delta_weights3_29_address0,delta_weights3_29_ce0,delta_weights3_29_we0,delta_weights3_29_d0,delta_weights3_30_address0,delta_weights3_30_ce0,delta_weights3_30_we0,delta_weights3_30_d0,delta_weights3_31_address0,delta_weights3_31_ce0,delta_weights3_31_we0,delta_weights3_31_d0,delta_weights3_32_address0,delta_weights3_32_ce0,delta_weights3_32_we0,delta_weights3_32_d0,delta_weights3_33_address0,delta_weights3_33_ce0,delta_weights3_33_we0,delta_weights3_33_d0,delta_weights3_34_address0,delta_weights3_34_ce0,delta_weights3_34_we0,delta_weights3_34_d0,delta_weights3_35_address0,delta_weights3_35_ce0,delta_weights3_35_we0,delta_weights3_35_d0,delta_weights3_36_address0,delta_weights3_36_ce0,delta_weights3_36_we0,delta_weights3_36_d0,delta_weights3_37_address0,delta_weights3_37_ce0,delta_weights3_37_we0,delta_weights3_37_d0,delta_weights3_38_address0,delta_weights3_38_ce0,delta_weights3_38_we0,delta_weights3_38_d0,delta_weights3_39_address0,delta_weights3_39_ce0,delta_weights3_39_we0,delta_weights3_39_d0,delta_weights3_40_address0,delta_weights3_40_ce0,delta_weights3_40_we0,delta_weights3_40_d0,delta_weights3_41_address0,delta_weights3_41_ce0,delta_weights3_41_we0,delta_weights3_41_d0,delta_weights3_42_address0,delta_weights3_42_ce0,delta_weights3_42_we0,delta_weights3_42_d0,delta_weights3_43_address0,delta_weights3_43_ce0,delta_weights3_43_we0,delta_weights3_43_d0,delta_weights3_44_address0,delta_weights3_44_ce0,delta_weights3_44_we0,delta_weights3_44_d0,delta_weights3_45_address0,delta_weights3_45_ce0,delta_weights3_45_we0,delta_weights3_45_d0,delta_weights3_46_address0,delta_weights3_46_ce0,delta_weights3_46_we0,delta_weights3_46_d0,delta_weights3_47_address0,delta_weights3_47_ce0,delta_weights3_47_we0,delta_weights3_47_d0,delta_weights3_48_address0,delta_weights3_48_ce0,delta_weights3_48_we0,delta_weights3_48_d0,delta_weights3_49_address0,delta_weights3_49_ce0,delta_weights3_49_we0,delta_weights3_49_d0,delta_weights3_50_address0,delta_weights3_50_ce0,delta_weights3_50_we0,delta_weights3_50_d0,delta_weights3_51_address0,delta_weights3_51_ce0,delta_weights3_51_we0,delta_weights3_51_d0,delta_weights3_52_address0,delta_weights3_52_ce0,delta_weights3_52_we0,delta_weights3_52_d0,delta_weights3_53_address0,delta_weights3_53_ce0,delta_weights3_53_we0,delta_weights3_53_d0,delta_weights3_54_address0,delta_weights3_54_ce0,delta_weights3_54_we0,delta_weights3_54_d0,delta_weights3_55_address0,delta_weights3_55_ce0,delta_weights3_55_we0,delta_weights3_55_d0,delta_weights3_56_address0,delta_weights3_56_ce0,delta_weights3_56_we0,delta_weights3_56_d0,delta_weights3_57_address0,delta_weights3_57_ce0,delta_weights3_57_we0,delta_weights3_57_d0,delta_weights3_58_address0,delta_weights3_58_ce0,delta_weights3_58_we0,delta_weights3_58_d0,delta_weights3_59_address0,delta_weights3_59_ce0,delta_weights3_59_we0,delta_weights3_59_d0,delta_weights3_60_address0,delta_weights3_60_ce0,delta_weights3_60_we0,delta_weights3_60_d0,delta_weights3_61_address0,delta_weights3_61_ce0,delta_weights3_61_we0,delta_weights3_61_d0,delta_weights3_62_address0,delta_weights3_62_ce0,delta_weights3_62_we0,delta_weights3_62_d0,delta_weights3_63_address0,delta_weights3_63_ce0,delta_weights3_63_we0,delta_weights3_63_d0,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_val,last_activations_1_val,last_activations_2_val,last_activations_3_val,last_activations_4_val,last_activations_5_val,last_activations_6_val,last_activations_7_val,last_activations_8_val,last_activations_9_val,last_activations_10_val,last_activations_11_val,last_activations_12_val,last_activations_13_val,last_activations_14_val,last_activations_15_val,last_activations_16_val,last_activations_17_val,last_activations_18_val,last_activations_19_val,last_activations_20_val,last_activations_21_val,last_activations_22_val,last_activations_23_val,last_activations_24_val,last_activations_25_val,last_activations_26_val,last_activations_27_val,last_activations_28_val,last_activations_29_val,last_activations_30_val,last_activations_31_val,last_activations_32_val,last_activations_33_val,last_activations_34_val,last_activations_35_val,last_activations_36_val,last_activations_37_val,last_activations_38_val,last_activations_39_val,last_activations_40_val,last_activations_41_val,last_activations_42_val,last_activations_43_val,last_activations_44_val,last_activations_45_val,last_activations_46_val,last_activations_47_val,last_activations_48_val,last_activations_49_val,last_activations_50_val,last_activations_51_val,last_activations_52_val,last_activations_53_val,last_activations_54_val,last_activations_55_val,last_activations_56_val,last_activations_57_val,last_activations_58_val,last_activations_59_val,last_activations_60_val,last_activations_61_val,last_activations_62_val,last_activations_63_val,grp_fu_22879_p_din0,grp_fu_22879_p_din1,grp_fu_22879_p_dout0,grp_fu_22879_p_ce,grp_fu_22883_p_din0,grp_fu_22883_p_din1,grp_fu_22883_p_dout0,grp_fu_22883_p_ce,grp_fu_22887_p_din0,grp_fu_22887_p_din1,grp_fu_22887_p_dout0,grp_fu_22887_p_ce,grp_fu_22891_p_din0,grp_fu_22891_p_din1,grp_fu_22891_p_dout0,grp_fu_22891_p_ce,grp_fu_22895_p_din0,grp_fu_22895_p_din1,grp_fu_22895_p_dout0,grp_fu_22895_p_ce,grp_fu_22899_p_din0,grp_fu_22899_p_din1,grp_fu_22899_p_dout0,grp_fu_22899_p_ce,grp_fu_22903_p_din0,grp_fu_22903_p_din1,grp_fu_22903_p_dout0,grp_fu_22903_p_ce,grp_fu_22907_p_din0,grp_fu_22907_p_din1,grp_fu_22907_p_dout0,grp_fu_22907_p_ce,grp_fu_22911_p_din0,grp_fu_22911_p_din1,grp_fu_22911_p_dout0,grp_fu_22911_p_ce,grp_fu_22915_p_din0,grp_fu_22915_p_din1,grp_fu_22915_p_dout0,grp_fu_22915_p_ce,grp_fu_22919_p_din0,grp_fu_22919_p_din1,grp_fu_22919_p_dout0,grp_fu_22919_p_ce,grp_fu_22923_p_din0,grp_fu_22923_p_din1,grp_fu_22923_p_dout0,grp_fu_22923_p_ce,grp_fu_22927_p_din0,grp_fu_22927_p_din1,grp_fu_22927_p_dout0,grp_fu_22927_p_ce,grp_fu_22931_p_din0,grp_fu_22931_p_din1,grp_fu_22931_p_dout0,grp_fu_22931_p_ce,grp_fu_22935_p_din0,grp_fu_22935_p_din1,grp_fu_22935_p_dout0,grp_fu_22935_p_ce,grp_fu_22939_p_din0,grp_fu_22939_p_din1,grp_fu_22939_p_dout0,grp_fu_22939_p_ce,grp_fu_22943_p_din0,grp_fu_22943_p_din1,grp_fu_22943_p_dout0,grp_fu_22943_p_ce,grp_fu_22947_p_din0,grp_fu_22947_p_din1,grp_fu_22947_p_dout0,grp_fu_22947_p_ce,grp_fu_22951_p_din0,grp_fu_22951_p_din1,grp_fu_22951_p_dout0,grp_fu_22951_p_ce,grp_fu_22955_p_din0,grp_fu_22955_p_din1,grp_fu_22955_p_dout0,grp_fu_22955_p_ce,grp_fu_22959_p_din0,grp_fu_22959_p_din1,grp_fu_22959_p_dout0,grp_fu_22959_p_ce,grp_fu_22963_p_din0,grp_fu_22963_p_din1,grp_fu_22963_p_dout0,grp_fu_22963_p_ce,grp_fu_22967_p_din0,grp_fu_22967_p_din1,grp_fu_22967_p_dout0,grp_fu_22967_p_ce,grp_fu_22971_p_din0,grp_fu_22971_p_din1,grp_fu_22971_p_dout0,grp_fu_22971_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [1:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [1:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [1:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [1:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [1:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [1:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [1:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [1:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [1:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [1:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [1:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [1:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [1:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [1:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [1:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
output  [1:0] delta_weights3_16_address0;
output   delta_weights3_16_ce0;
output   delta_weights3_16_we0;
output  [63:0] delta_weights3_16_d0;
output  [1:0] delta_weights3_17_address0;
output   delta_weights3_17_ce0;
output   delta_weights3_17_we0;
output  [63:0] delta_weights3_17_d0;
output  [1:0] delta_weights3_18_address0;
output   delta_weights3_18_ce0;
output   delta_weights3_18_we0;
output  [63:0] delta_weights3_18_d0;
output  [1:0] delta_weights3_19_address0;
output   delta_weights3_19_ce0;
output   delta_weights3_19_we0;
output  [63:0] delta_weights3_19_d0;
output  [1:0] delta_weights3_20_address0;
output   delta_weights3_20_ce0;
output   delta_weights3_20_we0;
output  [63:0] delta_weights3_20_d0;
output  [1:0] delta_weights3_21_address0;
output   delta_weights3_21_ce0;
output   delta_weights3_21_we0;
output  [63:0] delta_weights3_21_d0;
output  [1:0] delta_weights3_22_address0;
output   delta_weights3_22_ce0;
output   delta_weights3_22_we0;
output  [63:0] delta_weights3_22_d0;
output  [1:0] delta_weights3_23_address0;
output   delta_weights3_23_ce0;
output   delta_weights3_23_we0;
output  [63:0] delta_weights3_23_d0;
output  [1:0] delta_weights3_24_address0;
output   delta_weights3_24_ce0;
output   delta_weights3_24_we0;
output  [63:0] delta_weights3_24_d0;
output  [1:0] delta_weights3_25_address0;
output   delta_weights3_25_ce0;
output   delta_weights3_25_we0;
output  [63:0] delta_weights3_25_d0;
output  [1:0] delta_weights3_26_address0;
output   delta_weights3_26_ce0;
output   delta_weights3_26_we0;
output  [63:0] delta_weights3_26_d0;
output  [1:0] delta_weights3_27_address0;
output   delta_weights3_27_ce0;
output   delta_weights3_27_we0;
output  [63:0] delta_weights3_27_d0;
output  [1:0] delta_weights3_28_address0;
output   delta_weights3_28_ce0;
output   delta_weights3_28_we0;
output  [63:0] delta_weights3_28_d0;
output  [1:0] delta_weights3_29_address0;
output   delta_weights3_29_ce0;
output   delta_weights3_29_we0;
output  [63:0] delta_weights3_29_d0;
output  [1:0] delta_weights3_30_address0;
output   delta_weights3_30_ce0;
output   delta_weights3_30_we0;
output  [63:0] delta_weights3_30_d0;
output  [1:0] delta_weights3_31_address0;
output   delta_weights3_31_ce0;
output   delta_weights3_31_we0;
output  [63:0] delta_weights3_31_d0;
output  [1:0] delta_weights3_32_address0;
output   delta_weights3_32_ce0;
output   delta_weights3_32_we0;
output  [63:0] delta_weights3_32_d0;
output  [1:0] delta_weights3_33_address0;
output   delta_weights3_33_ce0;
output   delta_weights3_33_we0;
output  [63:0] delta_weights3_33_d0;
output  [1:0] delta_weights3_34_address0;
output   delta_weights3_34_ce0;
output   delta_weights3_34_we0;
output  [63:0] delta_weights3_34_d0;
output  [1:0] delta_weights3_35_address0;
output   delta_weights3_35_ce0;
output   delta_weights3_35_we0;
output  [63:0] delta_weights3_35_d0;
output  [1:0] delta_weights3_36_address0;
output   delta_weights3_36_ce0;
output   delta_weights3_36_we0;
output  [63:0] delta_weights3_36_d0;
output  [1:0] delta_weights3_37_address0;
output   delta_weights3_37_ce0;
output   delta_weights3_37_we0;
output  [63:0] delta_weights3_37_d0;
output  [1:0] delta_weights3_38_address0;
output   delta_weights3_38_ce0;
output   delta_weights3_38_we0;
output  [63:0] delta_weights3_38_d0;
output  [1:0] delta_weights3_39_address0;
output   delta_weights3_39_ce0;
output   delta_weights3_39_we0;
output  [63:0] delta_weights3_39_d0;
output  [1:0] delta_weights3_40_address0;
output   delta_weights3_40_ce0;
output   delta_weights3_40_we0;
output  [63:0] delta_weights3_40_d0;
output  [1:0] delta_weights3_41_address0;
output   delta_weights3_41_ce0;
output   delta_weights3_41_we0;
output  [63:0] delta_weights3_41_d0;
output  [1:0] delta_weights3_42_address0;
output   delta_weights3_42_ce0;
output   delta_weights3_42_we0;
output  [63:0] delta_weights3_42_d0;
output  [1:0] delta_weights3_43_address0;
output   delta_weights3_43_ce0;
output   delta_weights3_43_we0;
output  [63:0] delta_weights3_43_d0;
output  [1:0] delta_weights3_44_address0;
output   delta_weights3_44_ce0;
output   delta_weights3_44_we0;
output  [63:0] delta_weights3_44_d0;
output  [1:0] delta_weights3_45_address0;
output   delta_weights3_45_ce0;
output   delta_weights3_45_we0;
output  [63:0] delta_weights3_45_d0;
output  [1:0] delta_weights3_46_address0;
output   delta_weights3_46_ce0;
output   delta_weights3_46_we0;
output  [63:0] delta_weights3_46_d0;
output  [1:0] delta_weights3_47_address0;
output   delta_weights3_47_ce0;
output   delta_weights3_47_we0;
output  [63:0] delta_weights3_47_d0;
output  [1:0] delta_weights3_48_address0;
output   delta_weights3_48_ce0;
output   delta_weights3_48_we0;
output  [63:0] delta_weights3_48_d0;
output  [1:0] delta_weights3_49_address0;
output   delta_weights3_49_ce0;
output   delta_weights3_49_we0;
output  [63:0] delta_weights3_49_d0;
output  [1:0] delta_weights3_50_address0;
output   delta_weights3_50_ce0;
output   delta_weights3_50_we0;
output  [63:0] delta_weights3_50_d0;
output  [1:0] delta_weights3_51_address0;
output   delta_weights3_51_ce0;
output   delta_weights3_51_we0;
output  [63:0] delta_weights3_51_d0;
output  [1:0] delta_weights3_52_address0;
output   delta_weights3_52_ce0;
output   delta_weights3_52_we0;
output  [63:0] delta_weights3_52_d0;
output  [1:0] delta_weights3_53_address0;
output   delta_weights3_53_ce0;
output   delta_weights3_53_we0;
output  [63:0] delta_weights3_53_d0;
output  [1:0] delta_weights3_54_address0;
output   delta_weights3_54_ce0;
output   delta_weights3_54_we0;
output  [63:0] delta_weights3_54_d0;
output  [1:0] delta_weights3_55_address0;
output   delta_weights3_55_ce0;
output   delta_weights3_55_we0;
output  [63:0] delta_weights3_55_d0;
output  [1:0] delta_weights3_56_address0;
output   delta_weights3_56_ce0;
output   delta_weights3_56_we0;
output  [63:0] delta_weights3_56_d0;
output  [1:0] delta_weights3_57_address0;
output   delta_weights3_57_ce0;
output   delta_weights3_57_we0;
output  [63:0] delta_weights3_57_d0;
output  [1:0] delta_weights3_58_address0;
output   delta_weights3_58_ce0;
output   delta_weights3_58_we0;
output  [63:0] delta_weights3_58_d0;
output  [1:0] delta_weights3_59_address0;
output   delta_weights3_59_ce0;
output   delta_weights3_59_we0;
output  [63:0] delta_weights3_59_d0;
output  [1:0] delta_weights3_60_address0;
output   delta_weights3_60_ce0;
output   delta_weights3_60_we0;
output  [63:0] delta_weights3_60_d0;
output  [1:0] delta_weights3_61_address0;
output   delta_weights3_61_ce0;
output   delta_weights3_61_we0;
output  [63:0] delta_weights3_61_d0;
output  [1:0] delta_weights3_62_address0;
output   delta_weights3_62_ce0;
output   delta_weights3_62_we0;
output  [63:0] delta_weights3_62_d0;
output  [1:0] delta_weights3_63_address0;
output   delta_weights3_63_ce0;
output   delta_weights3_63_we0;
output  [63:0] delta_weights3_63_d0;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
input  [63:0] last_activations_0_val;
input  [63:0] last_activations_1_val;
input  [63:0] last_activations_2_val;
input  [63:0] last_activations_3_val;
input  [63:0] last_activations_4_val;
input  [63:0] last_activations_5_val;
input  [63:0] last_activations_6_val;
input  [63:0] last_activations_7_val;
input  [63:0] last_activations_8_val;
input  [63:0] last_activations_9_val;
input  [63:0] last_activations_10_val;
input  [63:0] last_activations_11_val;
input  [63:0] last_activations_12_val;
input  [63:0] last_activations_13_val;
input  [63:0] last_activations_14_val;
input  [63:0] last_activations_15_val;
input  [63:0] last_activations_16_val;
input  [63:0] last_activations_17_val;
input  [63:0] last_activations_18_val;
input  [63:0] last_activations_19_val;
input  [63:0] last_activations_20_val;
input  [63:0] last_activations_21_val;
input  [63:0] last_activations_22_val;
input  [63:0] last_activations_23_val;
input  [63:0] last_activations_24_val;
input  [63:0] last_activations_25_val;
input  [63:0] last_activations_26_val;
input  [63:0] last_activations_27_val;
input  [63:0] last_activations_28_val;
input  [63:0] last_activations_29_val;
input  [63:0] last_activations_30_val;
input  [63:0] last_activations_31_val;
input  [63:0] last_activations_32_val;
input  [63:0] last_activations_33_val;
input  [63:0] last_activations_34_val;
input  [63:0] last_activations_35_val;
input  [63:0] last_activations_36_val;
input  [63:0] last_activations_37_val;
input  [63:0] last_activations_38_val;
input  [63:0] last_activations_39_val;
input  [63:0] last_activations_40_val;
input  [63:0] last_activations_41_val;
input  [63:0] last_activations_42_val;
input  [63:0] last_activations_43_val;
input  [63:0] last_activations_44_val;
input  [63:0] last_activations_45_val;
input  [63:0] last_activations_46_val;
input  [63:0] last_activations_47_val;
input  [63:0] last_activations_48_val;
input  [63:0] last_activations_49_val;
input  [63:0] last_activations_50_val;
input  [63:0] last_activations_51_val;
input  [63:0] last_activations_52_val;
input  [63:0] last_activations_53_val;
input  [63:0] last_activations_54_val;
input  [63:0] last_activations_55_val;
input  [63:0] last_activations_56_val;
input  [63:0] last_activations_57_val;
input  [63:0] last_activations_58_val;
input  [63:0] last_activations_59_val;
input  [63:0] last_activations_60_val;
input  [63:0] last_activations_61_val;
input  [63:0] last_activations_62_val;
input  [63:0] last_activations_63_val;
output  [63:0] grp_fu_22879_p_din0;
output  [63:0] grp_fu_22879_p_din1;
input  [63:0] grp_fu_22879_p_dout0;
output   grp_fu_22879_p_ce;
output  [63:0] grp_fu_22883_p_din0;
output  [63:0] grp_fu_22883_p_din1;
input  [63:0] grp_fu_22883_p_dout0;
output   grp_fu_22883_p_ce;
output  [63:0] grp_fu_22887_p_din0;
output  [63:0] grp_fu_22887_p_din1;
input  [63:0] grp_fu_22887_p_dout0;
output   grp_fu_22887_p_ce;
output  [63:0] grp_fu_22891_p_din0;
output  [63:0] grp_fu_22891_p_din1;
input  [63:0] grp_fu_22891_p_dout0;
output   grp_fu_22891_p_ce;
output  [63:0] grp_fu_22895_p_din0;
output  [63:0] grp_fu_22895_p_din1;
input  [63:0] grp_fu_22895_p_dout0;
output   grp_fu_22895_p_ce;
output  [63:0] grp_fu_22899_p_din0;
output  [63:0] grp_fu_22899_p_din1;
input  [63:0] grp_fu_22899_p_dout0;
output   grp_fu_22899_p_ce;
output  [63:0] grp_fu_22903_p_din0;
output  [63:0] grp_fu_22903_p_din1;
input  [63:0] grp_fu_22903_p_dout0;
output   grp_fu_22903_p_ce;
output  [63:0] grp_fu_22907_p_din0;
output  [63:0] grp_fu_22907_p_din1;
input  [63:0] grp_fu_22907_p_dout0;
output   grp_fu_22907_p_ce;
output  [63:0] grp_fu_22911_p_din0;
output  [63:0] grp_fu_22911_p_din1;
input  [63:0] grp_fu_22911_p_dout0;
output   grp_fu_22911_p_ce;
output  [63:0] grp_fu_22915_p_din0;
output  [63:0] grp_fu_22915_p_din1;
input  [63:0] grp_fu_22915_p_dout0;
output   grp_fu_22915_p_ce;
output  [63:0] grp_fu_22919_p_din0;
output  [63:0] grp_fu_22919_p_din1;
input  [63:0] grp_fu_22919_p_dout0;
output   grp_fu_22919_p_ce;
output  [63:0] grp_fu_22923_p_din0;
output  [63:0] grp_fu_22923_p_din1;
input  [63:0] grp_fu_22923_p_dout0;
output   grp_fu_22923_p_ce;
output  [63:0] grp_fu_22927_p_din0;
output  [63:0] grp_fu_22927_p_din1;
input  [63:0] grp_fu_22927_p_dout0;
output   grp_fu_22927_p_ce;
output  [63:0] grp_fu_22931_p_din0;
output  [63:0] grp_fu_22931_p_din1;
input  [63:0] grp_fu_22931_p_dout0;
output   grp_fu_22931_p_ce;
output  [63:0] grp_fu_22935_p_din0;
output  [63:0] grp_fu_22935_p_din1;
input  [63:0] grp_fu_22935_p_dout0;
output   grp_fu_22935_p_ce;
output  [63:0] grp_fu_22939_p_din0;
output  [63:0] grp_fu_22939_p_din1;
input  [63:0] grp_fu_22939_p_dout0;
output   grp_fu_22939_p_ce;
output  [63:0] grp_fu_22943_p_din0;
output  [63:0] grp_fu_22943_p_din1;
input  [63:0] grp_fu_22943_p_dout0;
output   grp_fu_22943_p_ce;
output  [63:0] grp_fu_22947_p_din0;
output  [63:0] grp_fu_22947_p_din1;
input  [63:0] grp_fu_22947_p_dout0;
output   grp_fu_22947_p_ce;
output  [63:0] grp_fu_22951_p_din0;
output  [63:0] grp_fu_22951_p_din1;
input  [63:0] grp_fu_22951_p_dout0;
output   grp_fu_22951_p_ce;
output  [63:0] grp_fu_22955_p_din0;
output  [63:0] grp_fu_22955_p_din1;
input  [63:0] grp_fu_22955_p_dout0;
output   grp_fu_22955_p_ce;
output  [63:0] grp_fu_22959_p_din0;
output  [63:0] grp_fu_22959_p_din1;
input  [63:0] grp_fu_22959_p_dout0;
output   grp_fu_22959_p_ce;
output  [63:0] grp_fu_22963_p_din0;
output  [63:0] grp_fu_22963_p_din1;
input  [63:0] grp_fu_22963_p_dout0;
output   grp_fu_22963_p_ce;
output  [63:0] grp_fu_22967_p_din0;
output  [63:0] grp_fu_22967_p_din1;
input  [63:0] grp_fu_22967_p_dout0;
output   grp_fu_22967_p_ce;
output  [63:0] grp_fu_22971_p_din0;
output  [63:0] grp_fu_22971_p_din1;
input  [63:0] grp_fu_22971_p_dout0;
output   grp_fu_22971_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_11_fu_2730_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] trunc_ln73_fu_2742_p1;
reg   [5:0] trunc_ln73_reg_3740;
reg   [5:0] trunc_ln73_reg_3740_pp0_iter1_reg;
reg   [5:0] trunc_ln73_reg_3740_pp0_iter2_reg;
reg   [5:0] trunc_ln73_reg_3740_pp0_iter3_reg;
reg   [5:0] trunc_ln73_reg_3740_pp0_iter4_reg;
reg   [5:0] trunc_ln73_reg_3740_pp0_iter5_reg;
reg   [5:0] trunc_ln73_reg_3740_pp0_iter6_reg;
wire   [63:0] tmp_fu_2746_p19;
reg   [63:0] tmp_reg_3744;
reg   [1:0] lshr_ln_reg_3751;
reg   [1:0] lshr_ln_reg_3751_pp0_iter1_reg;
reg   [1:0] lshr_ln_reg_3751_pp0_iter2_reg;
reg   [1:0] lshr_ln_reg_3751_pp0_iter3_reg;
reg   [1:0] lshr_ln_reg_3751_pp0_iter4_reg;
reg   [1:0] lshr_ln_reg_3751_pp0_iter5_reg;
reg   [1:0] lshr_ln_reg_3751_pp0_iter6_reg;
reg   [1:0] lshr_ln_reg_3751_pp0_iter7_reg;
reg   [5:0] tmp_206_reg_3756;
reg   [5:0] tmp_206_reg_3756_pp0_iter1_reg;
reg   [5:0] tmp_206_reg_3756_pp0_iter2_reg;
reg   [5:0] tmp_206_reg_3756_pp0_iter3_reg;
reg   [5:0] tmp_206_reg_3756_pp0_iter4_reg;
reg   [5:0] tmp_206_reg_3756_pp0_iter5_reg;
reg   [5:0] tmp_206_reg_3756_pp0_iter6_reg;
reg   [5:0] tmp_206_reg_3756_pp0_iter7_reg;
wire   [63:0] tmp_s_fu_2820_p19;
reg   [63:0] tmp_s_reg_3761;
wire   [63:0] tmp_208_fu_2860_p19;
reg   [63:0] tmp_208_reg_3768;
wire   [63:0] tmp_209_fu_2900_p19;
reg   [63:0] tmp_209_reg_3775;
wire   [63:0] tmp_210_fu_2940_p19;
reg   [63:0] tmp_210_reg_3782;
wire   [63:0] tmp_211_fu_2980_p19;
reg   [63:0] tmp_211_reg_3789;
wire   [63:0] tmp_212_fu_3020_p19;
reg   [63:0] tmp_212_reg_3796;
wire   [63:0] tmp_213_fu_3060_p19;
reg   [63:0] tmp_213_reg_3803;
reg   [63:0] mul_reg_3810;
reg   [63:0] mul_s_reg_3822;
reg   [63:0] mul_8_reg_3834;
reg   [63:0] mul_1_reg_3846;
reg   [63:0] mul_1_1_reg_3858;
reg   [63:0] mul_1_2_reg_3870;
reg   [63:0] mul_2_reg_3882;
reg   [63:0] mul_2_1_reg_3894;
reg   [63:0] mul_2_2_reg_3906;
reg   [63:0] mul_3_reg_3918;
reg   [63:0] mul_3_1_reg_3930;
reg   [63:0] mul_3_2_reg_3942;
reg   [63:0] mul_4_reg_3954;
reg   [63:0] mul_4_1_reg_3966;
reg   [63:0] mul_4_2_reg_3978;
reg   [63:0] mul_5_reg_3990;
reg   [63:0] mul_5_1_reg_4002;
reg   [63:0] mul_5_2_reg_4014;
reg   [63:0] mul_6_reg_4026;
reg   [63:0] mul_6_1_reg_4038;
reg   [63:0] mul_6_2_reg_4050;
reg   [63:0] mul_7_reg_4062;
reg   [63:0] mul_7_1_reg_4074;
reg   [63:0] mul_7_2_reg_4086;
wire   [63:0] zext_ln75_1_fu_3111_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_2_fu_3177_p1;
wire   [63:0] zext_ln75_3_fu_3205_p1;
wire   [63:0] zext_ln75_4_fu_3233_p1;
wire   [63:0] zext_ln75_5_fu_3261_p1;
wire   [63:0] zext_ln75_6_fu_3289_p1;
wire   [63:0] zext_ln75_7_fu_3317_p1;
wire   [63:0] zext_ln75_8_fu_3345_p1;
wire   [63:0] zext_ln75_9_fu_3373_p1;
wire   [63:0] zext_ln75_10_fu_3401_p1;
wire   [63:0] zext_ln75_11_fu_3429_p1;
wire   [63:0] zext_ln75_12_fu_3457_p1;
wire   [63:0] zext_ln75_13_fu_3485_p1;
wire   [63:0] zext_ln75_14_fu_3513_p1;
wire   [63:0] zext_ln75_15_fu_3541_p1;
wire   [63:0] zext_ln75_16_fu_3569_p1;
wire   [63:0] zext_ln75_17_fu_3597_p1;
wire   [63:0] zext_ln75_18_fu_3625_p1;
wire   [63:0] zext_ln75_19_fu_3653_p1;
wire   [63:0] zext_ln75_20_fu_3681_p1;
reg   [6:0] i_fu_364;
wire   [6:0] add_ln73_fu_3100_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_9;
reg    delta_weights3_48_we0_local;
reg    ap_predicate_pred1070_state9;
reg   [63:0] delta_weights3_48_d0_local;
reg    delta_weights3_48_ce0_local;
reg   [1:0] delta_weights3_48_address0_local;
reg    ap_predicate_pred1079_state9;
reg    ap_predicate_pred1107_state9;
reg    delta_weights3_49_we0_local;
reg   [63:0] delta_weights3_49_d0_local;
reg    delta_weights3_49_ce0_local;
reg   [1:0] delta_weights3_49_address0_local;
reg    delta_weights3_50_we0_local;
reg   [63:0] delta_weights3_50_d0_local;
reg    delta_weights3_50_ce0_local;
reg   [1:0] delta_weights3_50_address0_local;
reg    delta_weights3_51_we0_local;
reg   [63:0] delta_weights3_51_d0_local;
reg    delta_weights3_51_ce0_local;
reg   [1:0] delta_weights3_51_address0_local;
reg    delta_weights3_52_we0_local;
reg   [63:0] delta_weights3_52_d0_local;
reg    delta_weights3_52_ce0_local;
reg   [1:0] delta_weights3_52_address0_local;
reg    delta_weights3_53_we0_local;
reg   [63:0] delta_weights3_53_d0_local;
reg    delta_weights3_53_ce0_local;
reg   [1:0] delta_weights3_53_address0_local;
reg    delta_weights3_54_we0_local;
reg   [63:0] delta_weights3_54_d0_local;
reg    delta_weights3_54_ce0_local;
reg   [1:0] delta_weights3_54_address0_local;
reg    delta_weights3_55_we0_local;
reg   [63:0] delta_weights3_55_d0_local;
reg    delta_weights3_55_ce0_local;
reg   [1:0] delta_weights3_55_address0_local;
reg    delta_weights3_56_we0_local;
reg   [63:0] delta_weights3_56_d0_local;
reg    delta_weights3_56_ce0_local;
reg   [1:0] delta_weights3_56_address0_local;
reg    ap_predicate_pred1103_state9;
reg    delta_weights3_57_we0_local;
reg   [63:0] delta_weights3_57_d0_local;
reg    delta_weights3_57_ce0_local;
reg   [1:0] delta_weights3_57_address0_local;
reg    delta_weights3_58_we0_local;
reg   [63:0] delta_weights3_58_d0_local;
reg    delta_weights3_58_ce0_local;
reg   [1:0] delta_weights3_58_address0_local;
reg    delta_weights3_59_we0_local;
reg   [63:0] delta_weights3_59_d0_local;
reg    delta_weights3_59_ce0_local;
reg   [1:0] delta_weights3_59_address0_local;
reg    delta_weights3_60_we0_local;
reg   [63:0] delta_weights3_60_d0_local;
reg    delta_weights3_60_ce0_local;
reg   [1:0] delta_weights3_60_address0_local;
reg    delta_weights3_61_we0_local;
reg   [63:0] delta_weights3_61_d0_local;
reg    delta_weights3_61_ce0_local;
reg   [1:0] delta_weights3_61_address0_local;
reg    delta_weights3_62_we0_local;
reg   [63:0] delta_weights3_62_d0_local;
reg    delta_weights3_62_ce0_local;
reg   [1:0] delta_weights3_62_address0_local;
reg    delta_weights3_63_we0_local;
reg   [63:0] delta_weights3_63_d0_local;
reg    delta_weights3_63_ce0_local;
reg   [1:0] delta_weights3_63_address0_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [1:0] delta_weights3_0_address0_local;
reg    ap_predicate_pred1086_state9;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [1:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [1:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [1:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [1:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [1:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [1:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we0_local;
reg   [63:0] delta_weights3_7_d0_local;
reg    delta_weights3_7_ce0_local;
reg   [1:0] delta_weights3_7_address0_local;
reg    delta_weights3_8_we0_local;
reg   [63:0] delta_weights3_8_d0_local;
reg    delta_weights3_8_ce0_local;
reg   [1:0] delta_weights3_8_address0_local;
reg    ap_predicate_pred1089_state9;
reg    delta_weights3_9_we0_local;
reg   [63:0] delta_weights3_9_d0_local;
reg    delta_weights3_9_ce0_local;
reg   [1:0] delta_weights3_9_address0_local;
reg    delta_weights3_10_we0_local;
reg   [63:0] delta_weights3_10_d0_local;
reg    delta_weights3_10_ce0_local;
reg   [1:0] delta_weights3_10_address0_local;
reg    delta_weights3_11_we0_local;
reg   [63:0] delta_weights3_11_d0_local;
reg    delta_weights3_11_ce0_local;
reg   [1:0] delta_weights3_11_address0_local;
reg    delta_weights3_12_we0_local;
reg   [63:0] delta_weights3_12_d0_local;
reg    delta_weights3_12_ce0_local;
reg   [1:0] delta_weights3_12_address0_local;
reg    delta_weights3_13_we0_local;
reg   [63:0] delta_weights3_13_d0_local;
reg    delta_weights3_13_ce0_local;
reg   [1:0] delta_weights3_13_address0_local;
reg    delta_weights3_14_we0_local;
reg   [63:0] delta_weights3_14_d0_local;
reg    delta_weights3_14_ce0_local;
reg   [1:0] delta_weights3_14_address0_local;
reg    delta_weights3_15_we0_local;
reg   [63:0] delta_weights3_15_d0_local;
reg    delta_weights3_15_ce0_local;
reg   [1:0] delta_weights3_15_address0_local;
reg    delta_weights3_32_we0_local;
reg   [63:0] delta_weights3_32_d0_local;
reg    delta_weights3_32_ce0_local;
reg   [1:0] delta_weights3_32_address0_local;
reg    ap_predicate_pred1097_state9;
reg    ap_predicate_pred1093_state9;
reg    delta_weights3_33_we0_local;
reg   [63:0] delta_weights3_33_d0_local;
reg    delta_weights3_33_ce0_local;
reg   [1:0] delta_weights3_33_address0_local;
reg    delta_weights3_34_we0_local;
reg   [63:0] delta_weights3_34_d0_local;
reg    delta_weights3_34_ce0_local;
reg   [1:0] delta_weights3_34_address0_local;
reg    delta_weights3_35_we0_local;
reg   [63:0] delta_weights3_35_d0_local;
reg    delta_weights3_35_ce0_local;
reg   [1:0] delta_weights3_35_address0_local;
reg    delta_weights3_36_we0_local;
reg   [63:0] delta_weights3_36_d0_local;
reg    delta_weights3_36_ce0_local;
reg   [1:0] delta_weights3_36_address0_local;
reg    delta_weights3_37_we0_local;
reg   [63:0] delta_weights3_37_d0_local;
reg    delta_weights3_37_ce0_local;
reg   [1:0] delta_weights3_37_address0_local;
reg    delta_weights3_38_we0_local;
reg   [63:0] delta_weights3_38_d0_local;
reg    delta_weights3_38_ce0_local;
reg   [1:0] delta_weights3_38_address0_local;
reg    delta_weights3_39_we0_local;
reg   [63:0] delta_weights3_39_d0_local;
reg    delta_weights3_39_ce0_local;
reg   [1:0] delta_weights3_39_address0_local;
reg    delta_weights3_40_we0_local;
reg   [63:0] delta_weights3_40_d0_local;
reg    delta_weights3_40_ce0_local;
reg   [1:0] delta_weights3_40_address0_local;
reg    delta_weights3_41_we0_local;
reg   [63:0] delta_weights3_41_d0_local;
reg    delta_weights3_41_ce0_local;
reg   [1:0] delta_weights3_41_address0_local;
reg    delta_weights3_42_we0_local;
reg   [63:0] delta_weights3_42_d0_local;
reg    delta_weights3_42_ce0_local;
reg   [1:0] delta_weights3_42_address0_local;
reg    delta_weights3_43_we0_local;
reg   [63:0] delta_weights3_43_d0_local;
reg    delta_weights3_43_ce0_local;
reg   [1:0] delta_weights3_43_address0_local;
reg    delta_weights3_44_we0_local;
reg   [63:0] delta_weights3_44_d0_local;
reg    delta_weights3_44_ce0_local;
reg   [1:0] delta_weights3_44_address0_local;
reg    delta_weights3_45_we0_local;
reg   [63:0] delta_weights3_45_d0_local;
reg    delta_weights3_45_ce0_local;
reg   [1:0] delta_weights3_45_address0_local;
reg    delta_weights3_46_we0_local;
reg   [63:0] delta_weights3_46_d0_local;
reg    delta_weights3_46_ce0_local;
reg   [1:0] delta_weights3_46_address0_local;
reg    delta_weights3_47_we0_local;
reg   [63:0] delta_weights3_47_d0_local;
reg    delta_weights3_47_ce0_local;
reg   [1:0] delta_weights3_47_address0_local;
reg    delta_weights3_24_we0_local;
reg   [63:0] delta_weights3_24_d0_local;
reg    delta_weights3_24_ce0_local;
reg   [1:0] delta_weights3_24_address0_local;
reg    delta_weights3_25_we0_local;
reg   [63:0] delta_weights3_25_d0_local;
reg    delta_weights3_25_ce0_local;
reg   [1:0] delta_weights3_25_address0_local;
reg    delta_weights3_26_we0_local;
reg   [63:0] delta_weights3_26_d0_local;
reg    delta_weights3_26_ce0_local;
reg   [1:0] delta_weights3_26_address0_local;
reg    delta_weights3_27_we0_local;
reg   [63:0] delta_weights3_27_d0_local;
reg    delta_weights3_27_ce0_local;
reg   [1:0] delta_weights3_27_address0_local;
reg    delta_weights3_28_we0_local;
reg   [63:0] delta_weights3_28_d0_local;
reg    delta_weights3_28_ce0_local;
reg   [1:0] delta_weights3_28_address0_local;
reg    delta_weights3_29_we0_local;
reg   [63:0] delta_weights3_29_d0_local;
reg    delta_weights3_29_ce0_local;
reg   [1:0] delta_weights3_29_address0_local;
reg    delta_weights3_30_we0_local;
reg   [63:0] delta_weights3_30_d0_local;
reg    delta_weights3_30_ce0_local;
reg   [1:0] delta_weights3_30_address0_local;
reg    delta_weights3_31_we0_local;
reg   [63:0] delta_weights3_31_d0_local;
reg    delta_weights3_31_ce0_local;
reg   [1:0] delta_weights3_31_address0_local;
reg    delta_weights3_16_we0_local;
reg   [63:0] delta_weights3_16_d0_local;
reg    delta_weights3_16_ce0_local;
reg   [1:0] delta_weights3_16_address0_local;
reg    delta_weights3_17_we0_local;
reg   [63:0] delta_weights3_17_d0_local;
reg    delta_weights3_17_ce0_local;
reg   [1:0] delta_weights3_17_address0_local;
reg    delta_weights3_18_we0_local;
reg   [63:0] delta_weights3_18_d0_local;
reg    delta_weights3_18_ce0_local;
reg   [1:0] delta_weights3_18_address0_local;
reg    delta_weights3_19_we0_local;
reg   [63:0] delta_weights3_19_d0_local;
reg    delta_weights3_19_ce0_local;
reg   [1:0] delta_weights3_19_address0_local;
reg    delta_weights3_20_we0_local;
reg   [63:0] delta_weights3_20_d0_local;
reg    delta_weights3_20_ce0_local;
reg   [1:0] delta_weights3_20_address0_local;
reg    delta_weights3_21_we0_local;
reg   [63:0] delta_weights3_21_d0_local;
reg    delta_weights3_21_ce0_local;
reg   [1:0] delta_weights3_21_address0_local;
reg    delta_weights3_22_we0_local;
reg   [63:0] delta_weights3_22_d0_local;
reg    delta_weights3_22_ce0_local;
reg   [1:0] delta_weights3_22_address0_local;
reg    delta_weights3_23_we0_local;
reg   [63:0] delta_weights3_23_d0_local;
reg    delta_weights3_23_ce0_local;
reg   [1:0] delta_weights3_23_address0_local;
wire   [63:0] tmp_fu_2746_p17;
wire   [7:0] p_shl_fu_2786_p3;
wire   [7:0] zext_ln75_fu_2738_p1;
wire   [7:0] sub_ln75_fu_2794_p2;
wire   [63:0] tmp_s_fu_2820_p17;
wire   [63:0] tmp_208_fu_2860_p17;
wire   [63:0] tmp_209_fu_2900_p17;
wire   [63:0] tmp_210_fu_2940_p17;
wire   [63:0] tmp_211_fu_2980_p17;
wire   [63:0] tmp_212_fu_3020_p17;
wire   [63:0] tmp_213_fu_3060_p17;
wire   [7:0] tmp_207_fu_3154_p3;
wire   [7:0] add_ln75_fu_3161_p2;
wire   [1:0] lshr_ln75_1_fu_3167_p4;
wire   [7:0] add_ln75_1_fu_3189_p2;
wire   [1:0] lshr_ln75_2_fu_3195_p4;
wire   [7:0] empty_fu_3217_p2;
wire   [1:0] lshr_ln75_3_fu_3223_p4;
wire   [7:0] add_ln75_2_fu_3245_p2;
wire   [1:0] lshr_ln75_4_fu_3251_p4;
wire   [7:0] empty_940_fu_3273_p2;
wire   [1:0] lshr_ln75_5_fu_3279_p4;
wire   [7:0] add_ln75_3_fu_3301_p2;
wire   [1:0] lshr_ln75_6_fu_3307_p4;
wire   [7:0] add_ln75_4_fu_3329_p2;
wire   [1:0] lshr_ln75_7_fu_3335_p4;
wire   [7:0] empty_941_fu_3357_p2;
wire   [1:0] lshr_ln75_8_fu_3363_p4;
wire   [7:0] add_ln75_5_fu_3385_p2;
wire   [1:0] lshr_ln75_9_fu_3391_p4;
wire   [7:0] add_ln75_6_fu_3413_p2;
wire   [1:0] lshr_ln75_s_fu_3419_p4;
wire   [7:0] empty_942_fu_3441_p2;
wire   [1:0] lshr_ln75_10_fu_3447_p4;
wire   [7:0] add_ln75_7_fu_3469_p2;
wire   [1:0] lshr_ln75_11_fu_3475_p4;
wire   [7:0] add_ln75_8_fu_3497_p2;
wire   [1:0] lshr_ln75_12_fu_3503_p4;
wire   [7:0] empty_943_fu_3525_p2;
wire   [1:0] lshr_ln75_13_fu_3531_p4;
wire   [7:0] add_ln75_9_fu_3553_p2;
wire   [1:0] lshr_ln75_14_fu_3559_p4;
wire   [7:0] add_ln75_10_fu_3581_p2;
wire   [1:0] lshr_ln75_15_fu_3587_p4;
wire   [7:0] empty_944_fu_3609_p2;
wire   [1:0] lshr_ln75_16_fu_3615_p4;
wire   [7:0] add_ln75_11_fu_3637_p2;
wire   [1:0] lshr_ln75_17_fu_3643_p4;
wire   [7:0] add_ln75_12_fu_3665_p2;
wire   [1:0] lshr_ln75_18_fu_3671_p4;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_fu_2746_p1;
wire   [5:0] tmp_fu_2746_p3;
wire   [5:0] tmp_fu_2746_p5;
wire   [5:0] tmp_fu_2746_p7;
wire  signed [5:0] tmp_fu_2746_p9;
wire  signed [5:0] tmp_fu_2746_p11;
wire  signed [5:0] tmp_fu_2746_p13;
wire  signed [5:0] tmp_fu_2746_p15;
wire   [5:0] tmp_s_fu_2820_p1;
wire   [5:0] tmp_s_fu_2820_p3;
wire   [5:0] tmp_s_fu_2820_p5;
wire   [5:0] tmp_s_fu_2820_p7;
wire  signed [5:0] tmp_s_fu_2820_p9;
wire  signed [5:0] tmp_s_fu_2820_p11;
wire  signed [5:0] tmp_s_fu_2820_p13;
wire  signed [5:0] tmp_s_fu_2820_p15;
wire   [5:0] tmp_208_fu_2860_p1;
wire   [5:0] tmp_208_fu_2860_p3;
wire   [5:0] tmp_208_fu_2860_p5;
wire   [5:0] tmp_208_fu_2860_p7;
wire  signed [5:0] tmp_208_fu_2860_p9;
wire  signed [5:0] tmp_208_fu_2860_p11;
wire  signed [5:0] tmp_208_fu_2860_p13;
wire  signed [5:0] tmp_208_fu_2860_p15;
wire   [5:0] tmp_209_fu_2900_p1;
wire   [5:0] tmp_209_fu_2900_p3;
wire   [5:0] tmp_209_fu_2900_p5;
wire   [5:0] tmp_209_fu_2900_p7;
wire  signed [5:0] tmp_209_fu_2900_p9;
wire  signed [5:0] tmp_209_fu_2900_p11;
wire  signed [5:0] tmp_209_fu_2900_p13;
wire  signed [5:0] tmp_209_fu_2900_p15;
wire   [5:0] tmp_210_fu_2940_p1;
wire   [5:0] tmp_210_fu_2940_p3;
wire   [5:0] tmp_210_fu_2940_p5;
wire   [5:0] tmp_210_fu_2940_p7;
wire  signed [5:0] tmp_210_fu_2940_p9;
wire  signed [5:0] tmp_210_fu_2940_p11;
wire  signed [5:0] tmp_210_fu_2940_p13;
wire  signed [5:0] tmp_210_fu_2940_p15;
wire   [5:0] tmp_211_fu_2980_p1;
wire   [5:0] tmp_211_fu_2980_p3;
wire   [5:0] tmp_211_fu_2980_p5;
wire   [5:0] tmp_211_fu_2980_p7;
wire  signed [5:0] tmp_211_fu_2980_p9;
wire  signed [5:0] tmp_211_fu_2980_p11;
wire  signed [5:0] tmp_211_fu_2980_p13;
wire  signed [5:0] tmp_211_fu_2980_p15;
wire   [5:0] tmp_212_fu_3020_p1;
wire   [5:0] tmp_212_fu_3020_p3;
wire   [5:0] tmp_212_fu_3020_p5;
wire   [5:0] tmp_212_fu_3020_p7;
wire  signed [5:0] tmp_212_fu_3020_p9;
wire  signed [5:0] tmp_212_fu_3020_p11;
wire  signed [5:0] tmp_212_fu_3020_p13;
wire  signed [5:0] tmp_212_fu_3020_p15;
wire   [5:0] tmp_213_fu_3060_p1;
wire   [5:0] tmp_213_fu_3060_p3;
wire   [5:0] tmp_213_fu_3060_p5;
wire   [5:0] tmp_213_fu_3060_p7;
wire  signed [5:0] tmp_213_fu_3060_p9;
wire  signed [5:0] tmp_213_fu_3060_p11;
wire  signed [5:0] tmp_213_fu_3060_p13;
wire  signed [5:0] tmp_213_fu_3060_p15;
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
#0 i_fu_364 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U2068(.din0(last_activations_0_val),.din1(last_activations_8_val),.din2(last_activations_16_val),.din3(last_activations_24_val),.din4(last_activations_32_val),.din5(last_activations_40_val),.din6(last_activations_48_val),.din7(last_activations_56_val),.def(tmp_fu_2746_p17),.sel(trunc_ln73_fu_2742_p1),.dout(tmp_fu_2746_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U2069(.din0(last_activations_1_val),.din1(last_activations_9_val),.din2(last_activations_17_val),.din3(last_activations_25_val),.din4(last_activations_33_val),.din5(last_activations_41_val),.din6(last_activations_49_val),.din7(last_activations_57_val),.def(tmp_s_fu_2820_p17),.sel(trunc_ln73_fu_2742_p1),.dout(tmp_s_fu_2820_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U2070(.din0(last_activations_2_val),.din1(last_activations_10_val),.din2(last_activations_18_val),.din3(last_activations_26_val),.din4(last_activations_34_val),.din5(last_activations_42_val),.din6(last_activations_50_val),.din7(last_activations_58_val),.def(tmp_208_fu_2860_p17),.sel(trunc_ln73_fu_2742_p1),.dout(tmp_208_fu_2860_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U2071(.din0(last_activations_3_val),.din1(last_activations_11_val),.din2(last_activations_19_val),.din3(last_activations_27_val),.din4(last_activations_35_val),.din5(last_activations_43_val),.din6(last_activations_51_val),.din7(last_activations_59_val),.def(tmp_209_fu_2900_p17),.sel(trunc_ln73_fu_2742_p1),.dout(tmp_209_fu_2900_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U2072(.din0(last_activations_4_val),.din1(last_activations_12_val),.din2(last_activations_20_val),.din3(last_activations_28_val),.din4(last_activations_36_val),.din5(last_activations_44_val),.din6(last_activations_52_val),.din7(last_activations_60_val),.def(tmp_210_fu_2940_p17),.sel(trunc_ln73_fu_2742_p1),.dout(tmp_210_fu_2940_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U2073(.din0(last_activations_5_val),.din1(last_activations_13_val),.din2(last_activations_21_val),.din3(last_activations_29_val),.din4(last_activations_37_val),.din5(last_activations_45_val),.din6(last_activations_53_val),.din7(last_activations_61_val),.def(tmp_211_fu_2980_p17),.sel(trunc_ln73_fu_2742_p1),.dout(tmp_211_fu_2980_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U2074(.din0(last_activations_6_val),.din1(last_activations_14_val),.din2(last_activations_22_val),.din3(last_activations_30_val),.din4(last_activations_38_val),.din5(last_activations_46_val),.din6(last_activations_54_val),.din7(last_activations_62_val),.def(tmp_212_fu_3020_p17),.sel(trunc_ln73_fu_2742_p1),.dout(tmp_212_fu_3020_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h8 ),.din1_WIDTH( 64 ),.CASE2( 6'h10 ),.din2_WIDTH( 64 ),.CASE3( 6'h18 ),.din3_WIDTH( 64 ),.CASE4( 6'h20 ),.din4_WIDTH( 64 ),.CASE5( 6'h28 ),.din5_WIDTH( 64 ),.CASE6( 6'h30 ),.din6_WIDTH( 64 ),.CASE7( 6'h38 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_17_6_64_1_1_x_U2075(.din0(last_activations_7_val),.din1(last_activations_15_val),.din2(last_activations_23_val),.din3(last_activations_31_val),.din4(last_activations_39_val),.din5(last_activations_47_val),.din6(last_activations_55_val),.din7(last_activations_63_val),.def(tmp_213_fu_3060_p17),.sel(trunc_ln73_fu_2742_p1),.dout(tmp_213_fu_3060_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_11_fu_2730_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_364 <= add_ln73_fu_3100_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_364 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln_reg_3751 <= {{sub_ln75_fu_2794_p2[7:6]}};
        lshr_ln_reg_3751_pp0_iter1_reg <= lshr_ln_reg_3751;
        tmp_206_reg_3756 <= {{sub_ln75_fu_2794_p2[7:2]}};
        tmp_206_reg_3756_pp0_iter1_reg <= tmp_206_reg_3756;
        tmp_208_reg_3768 <= tmp_208_fu_2860_p19;
        tmp_209_reg_3775 <= tmp_209_fu_2900_p19;
        tmp_210_reg_3782 <= tmp_210_fu_2940_p19;
        tmp_211_reg_3789 <= tmp_211_fu_2980_p19;
        tmp_212_reg_3796 <= tmp_212_fu_3020_p19;
        tmp_213_reg_3803 <= tmp_213_fu_3060_p19;
        tmp_reg_3744 <= tmp_fu_2746_p19;
        tmp_s_reg_3761 <= tmp_s_fu_2820_p19;
        trunc_ln73_reg_3740 <= trunc_ln73_fu_2742_p1;
        trunc_ln73_reg_3740_pp0_iter1_reg <= trunc_ln73_reg_3740;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_predicate_pred1070_state9 <= (trunc_ln73_reg_3740_pp0_iter6_reg == 6'd16);
        ap_predicate_pred1079_state9 <= (trunc_ln73_reg_3740_pp0_iter6_reg == 6'd32);
        ap_predicate_pred1086_state9 <= (trunc_ln73_reg_3740_pp0_iter6_reg == 6'd0);
        ap_predicate_pred1089_state9 <= (trunc_ln73_reg_3740_pp0_iter6_reg == 6'd24);
        ap_predicate_pred1093_state9 <= (trunc_ln73_reg_3740_pp0_iter6_reg == 6'd48);
        ap_predicate_pred1097_state9 <= (trunc_ln73_reg_3740_pp0_iter6_reg == 6'd8);
        ap_predicate_pred1103_state9 <= (trunc_ln73_reg_3740_pp0_iter6_reg == 6'd40);
        ap_predicate_pred1107_state9 <= (~(trunc_ln73_reg_3740_pp0_iter6_reg == 6'd40) & ~(trunc_ln73_reg_3740_pp0_iter6_reg == 6'd8) & ~(trunc_ln73_reg_3740_pp0_iter6_reg == 6'd48) & ~(trunc_ln73_reg_3740_pp0_iter6_reg == 6'd24) & ~(trunc_ln73_reg_3740_pp0_iter6_reg == 6'd0) & ~(trunc_ln73_reg_3740_pp0_iter6_reg == 6'd32) & ~(trunc_ln73_reg_3740_pp0_iter6_reg == 6'd16));
        lshr_ln_reg_3751_pp0_iter2_reg <= lshr_ln_reg_3751_pp0_iter1_reg;
        lshr_ln_reg_3751_pp0_iter3_reg <= lshr_ln_reg_3751_pp0_iter2_reg;
        lshr_ln_reg_3751_pp0_iter4_reg <= lshr_ln_reg_3751_pp0_iter3_reg;
        lshr_ln_reg_3751_pp0_iter5_reg <= lshr_ln_reg_3751_pp0_iter4_reg;
        lshr_ln_reg_3751_pp0_iter6_reg <= lshr_ln_reg_3751_pp0_iter5_reg;
        lshr_ln_reg_3751_pp0_iter7_reg <= lshr_ln_reg_3751_pp0_iter6_reg;
        mul_1_1_reg_3858 <= grp_fu_22895_p_dout0;
        mul_1_2_reg_3870 <= grp_fu_22899_p_dout0;
        mul_1_reg_3846 <= grp_fu_22891_p_dout0;
        mul_2_1_reg_3894 <= grp_fu_22907_p_dout0;
        mul_2_2_reg_3906 <= grp_fu_22911_p_dout0;
        mul_2_reg_3882 <= grp_fu_22903_p_dout0;
        mul_3_1_reg_3930 <= grp_fu_22919_p_dout0;
        mul_3_2_reg_3942 <= grp_fu_22923_p_dout0;
        mul_3_reg_3918 <= grp_fu_22915_p_dout0;
        mul_4_1_reg_3966 <= grp_fu_22931_p_dout0;
        mul_4_2_reg_3978 <= grp_fu_22935_p_dout0;
        mul_4_reg_3954 <= grp_fu_22927_p_dout0;
        mul_5_1_reg_4002 <= grp_fu_22943_p_dout0;
        mul_5_2_reg_4014 <= grp_fu_22947_p_dout0;
        mul_5_reg_3990 <= grp_fu_22939_p_dout0;
        mul_6_1_reg_4038 <= grp_fu_22955_p_dout0;
        mul_6_2_reg_4050 <= grp_fu_22959_p_dout0;
        mul_6_reg_4026 <= grp_fu_22951_p_dout0;
        mul_7_1_reg_4074 <= grp_fu_22967_p_dout0;
        mul_7_2_reg_4086 <= grp_fu_22971_p_dout0;
        mul_7_reg_4062 <= grp_fu_22963_p_dout0;
        mul_8_reg_3834 <= grp_fu_22887_p_dout0;
        mul_reg_3810 <= grp_fu_22879_p_dout0;
        mul_s_reg_3822 <= grp_fu_22883_p_dout0;
        tmp_206_reg_3756_pp0_iter2_reg <= tmp_206_reg_3756_pp0_iter1_reg;
        tmp_206_reg_3756_pp0_iter3_reg <= tmp_206_reg_3756_pp0_iter2_reg;
        tmp_206_reg_3756_pp0_iter4_reg <= tmp_206_reg_3756_pp0_iter3_reg;
        tmp_206_reg_3756_pp0_iter5_reg <= tmp_206_reg_3756_pp0_iter4_reg;
        tmp_206_reg_3756_pp0_iter6_reg <= tmp_206_reg_3756_pp0_iter5_reg;
        tmp_206_reg_3756_pp0_iter7_reg <= tmp_206_reg_3756_pp0_iter6_reg;
        trunc_ln73_reg_3740_pp0_iter2_reg <= trunc_ln73_reg_3740_pp0_iter1_reg;
        trunc_ln73_reg_3740_pp0_iter3_reg <= trunc_ln73_reg_3740_pp0_iter2_reg;
        trunc_ln73_reg_3740_pp0_iter4_reg <= trunc_ln73_reg_3740_pp0_iter3_reg;
        trunc_ln73_reg_3740_pp0_iter5_reg <= trunc_ln73_reg_3740_pp0_iter4_reg;
        trunc_ln73_reg_3740_pp0_iter6_reg <= trunc_ln73_reg_3740_pp0_iter5_reg;
    end
end
always @ (*) begin
    if (((tmp_11_fu_2730_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_9 = i_fu_364;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_0_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_0_address0_local = zext_ln75_5_fu_3261_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_0_address0_local = zext_ln75_13_fu_3485_p1;
        end else begin
            delta_weights3_0_address0_local = 'bx;
        end
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_0_d0_local = mul_reg_3810;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_0_d0_local = mul_2_2_reg_3906;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_0_d0_local = mul_5_1_reg_4002;
        end else begin
            delta_weights3_0_d0_local = 'bx;
        end
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_7_fu_3317_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_15_fu_3541_p1;
        end else begin
            delta_weights3_10_address0_local = 'bx;
        end
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_3_1_reg_3930;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_8_reg_3834;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_6_reg_4026;
        end else begin
            delta_weights3_10_d0_local = 'bx;
        end
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_8_fu_3345_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_16_fu_3569_p1;
        end else begin
            delta_weights3_11_address0_local = 'bx;
        end
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_3_2_reg_3942;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_1_reg_3846;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_6_1_reg_4038;
        end else begin
            delta_weights3_11_d0_local = 'bx;
        end
    end else begin
        delta_weights3_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_9_fu_3373_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_2_fu_3177_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_17_fu_3597_p1;
        end else begin
            delta_weights3_12_address0_local = 'bx;
        end
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_4_reg_3954;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_1_1_reg_3858;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_6_2_reg_4050;
        end else begin
            delta_weights3_12_d0_local = 'bx;
        end
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_10_fu_3401_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_3_fu_3205_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_18_fu_3625_p1;
        end else begin
            delta_weights3_13_address0_local = 'bx;
        end
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_4_1_reg_3966;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_1_2_reg_3870;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_7_reg_4062;
        end else begin
            delta_weights3_13_d0_local = 'bx;
        end
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_11_fu_3429_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_4_fu_3233_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_19_fu_3653_p1;
        end else begin
            delta_weights3_14_address0_local = 'bx;
        end
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_4_2_reg_3978;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_2_reg_3882;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_7_1_reg_4074;
        end else begin
            delta_weights3_14_d0_local = 'bx;
        end
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_12_fu_3457_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_20_fu_3681_p1;
        end else begin
            delta_weights3_15_address0_local = 'bx;
        end
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_5_reg_3990;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_2_1_reg_3894;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_7_2_reg_4086;
        end else begin
            delta_weights3_15_d0_local = 'bx;
        end
    end else begin
        delta_weights3_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_13_fu_3485_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_5_fu_3261_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_16_address0_local = 'bx;
        end
    end else begin
        delta_weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_16_ce0_local = 1'b1;
    end else begin
        delta_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_5_1_reg_4002;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_2_2_reg_3906;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_reg_3810;
        end else begin
            delta_weights3_16_d0_local = 'bx;
        end
    end else begin
        delta_weights3_16_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_14_fu_3513_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_6_fu_3289_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_17_address0_local = 'bx;
        end
    end else begin
        delta_weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_17_ce0_local = 1'b1;
    end else begin
        delta_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_5_2_reg_4014;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_3_reg_3918;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_s_reg_3822;
        end else begin
            delta_weights3_17_d0_local = 'bx;
        end
    end else begin
        delta_weights3_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_15_fu_3541_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_7_fu_3317_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_18_address0_local = 'bx;
        end
    end else begin
        delta_weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_18_ce0_local = 1'b1;
    end else begin
        delta_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_6_reg_4026;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_3_1_reg_3930;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_8_reg_3834;
        end else begin
            delta_weights3_18_d0_local = 'bx;
        end
    end else begin
        delta_weights3_18_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_16_fu_3569_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_8_fu_3345_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_19_address0_local = 'bx;
        end
    end else begin
        delta_weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_19_ce0_local = 1'b1;
    end else begin
        delta_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_6_1_reg_4038;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_3_2_reg_3942;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_1_reg_3846;
        end else begin
            delta_weights3_19_d0_local = 'bx;
        end
    end else begin
        delta_weights3_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_6_fu_3289_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_14_fu_3513_p1;
        end else begin
            delta_weights3_1_address0_local = 'bx;
        end
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_s_reg_3822;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_3_reg_3918;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_5_2_reg_4014;
        end else begin
            delta_weights3_1_d0_local = 'bx;
        end
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_17_fu_3597_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_9_fu_3373_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_2_fu_3177_p1;
        end else begin
            delta_weights3_20_address0_local = 'bx;
        end
    end else begin
        delta_weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_20_ce0_local = 1'b1;
    end else begin
        delta_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_6_2_reg_4050;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_4_reg_3954;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_1_1_reg_3858;
        end else begin
            delta_weights3_20_d0_local = 'bx;
        end
    end else begin
        delta_weights3_20_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_18_fu_3625_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_10_fu_3401_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_3_fu_3205_p1;
        end else begin
            delta_weights3_21_address0_local = 'bx;
        end
    end else begin
        delta_weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_21_ce0_local = 1'b1;
    end else begin
        delta_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_7_reg_4062;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_4_1_reg_3966;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_1_2_reg_3870;
        end else begin
            delta_weights3_21_d0_local = 'bx;
        end
    end else begin
        delta_weights3_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_19_fu_3653_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_11_fu_3429_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_4_fu_3233_p1;
        end else begin
            delta_weights3_22_address0_local = 'bx;
        end
    end else begin
        delta_weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_22_ce0_local = 1'b1;
    end else begin
        delta_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_7_1_reg_4074;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_4_2_reg_3978;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_2_reg_3882;
        end else begin
            delta_weights3_22_d0_local = 'bx;
        end
    end else begin
        delta_weights3_22_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_20_fu_3681_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_12_fu_3457_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_23_address0_local = 'bx;
        end
    end else begin
        delta_weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_23_ce0_local = 1'b1;
    end else begin
        delta_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_7_2_reg_4086;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_5_reg_3990;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_2_1_reg_3894;
        end else begin
            delta_weights3_23_d0_local = 'bx;
        end
    end else begin
        delta_weights3_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_13_fu_3485_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_5_fu_3261_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_24_address0_local = 'bx;
        end
    end else begin
        delta_weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_24_ce0_local = 1'b1;
    end else begin
        delta_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_5_1_reg_4002;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_2_2_reg_3906;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_reg_3810;
        end else begin
            delta_weights3_24_d0_local = 'bx;
        end
    end else begin
        delta_weights3_24_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_24_we0_local = 1'b1;
    end else begin
        delta_weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_14_fu_3513_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_6_fu_3289_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_25_address0_local = 'bx;
        end
    end else begin
        delta_weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_25_ce0_local = 1'b1;
    end else begin
        delta_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_5_2_reg_4014;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_3_reg_3918;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_s_reg_3822;
        end else begin
            delta_weights3_25_d0_local = 'bx;
        end
    end else begin
        delta_weights3_25_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_25_we0_local = 1'b1;
    end else begin
        delta_weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_15_fu_3541_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_7_fu_3317_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_26_address0_local = 'bx;
        end
    end else begin
        delta_weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_26_ce0_local = 1'b1;
    end else begin
        delta_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_6_reg_4026;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_3_1_reg_3930;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_8_reg_3834;
        end else begin
            delta_weights3_26_d0_local = 'bx;
        end
    end else begin
        delta_weights3_26_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_26_we0_local = 1'b1;
    end else begin
        delta_weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_16_fu_3569_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_8_fu_3345_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_27_address0_local = 'bx;
        end
    end else begin
        delta_weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_27_ce0_local = 1'b1;
    end else begin
        delta_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_6_1_reg_4038;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_3_2_reg_3942;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_1_reg_3846;
        end else begin
            delta_weights3_27_d0_local = 'bx;
        end
    end else begin
        delta_weights3_27_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_27_we0_local = 1'b1;
    end else begin
        delta_weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_17_fu_3597_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_9_fu_3373_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_2_fu_3177_p1;
        end else begin
            delta_weights3_28_address0_local = 'bx;
        end
    end else begin
        delta_weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_28_ce0_local = 1'b1;
    end else begin
        delta_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_6_2_reg_4050;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_4_reg_3954;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_1_1_reg_3858;
        end else begin
            delta_weights3_28_d0_local = 'bx;
        end
    end else begin
        delta_weights3_28_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_28_we0_local = 1'b1;
    end else begin
        delta_weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_18_fu_3625_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_10_fu_3401_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_3_fu_3205_p1;
        end else begin
            delta_weights3_29_address0_local = 'bx;
        end
    end else begin
        delta_weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_29_ce0_local = 1'b1;
    end else begin
        delta_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_7_reg_4062;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_4_1_reg_3966;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_1_2_reg_3870;
        end else begin
            delta_weights3_29_d0_local = 'bx;
        end
    end else begin
        delta_weights3_29_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_29_we0_local = 1'b1;
    end else begin
        delta_weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_7_fu_3317_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_15_fu_3541_p1;
        end else begin
            delta_weights3_2_address0_local = 'bx;
        end
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_8_reg_3834;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_3_1_reg_3930;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_6_reg_4026;
        end else begin
            delta_weights3_2_d0_local = 'bx;
        end
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_19_fu_3653_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_11_fu_3429_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_4_fu_3233_p1;
        end else begin
            delta_weights3_30_address0_local = 'bx;
        end
    end else begin
        delta_weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_30_ce0_local = 1'b1;
    end else begin
        delta_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_7_1_reg_4074;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_4_2_reg_3978;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_2_reg_3882;
        end else begin
            delta_weights3_30_d0_local = 'bx;
        end
    end else begin
        delta_weights3_30_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_30_we0_local = 1'b1;
    end else begin
        delta_weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_20_fu_3681_p1;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_12_fu_3457_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_31_address0_local = 'bx;
        end
    end else begin
        delta_weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_31_ce0_local = 1'b1;
    end else begin
        delta_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_7_2_reg_4086;
        end else if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_5_reg_3990;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_2_1_reg_3894;
        end else begin
            delta_weights3_31_d0_local = 'bx;
        end
    end else begin
        delta_weights3_31_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)))) begin
        delta_weights3_31_we0_local = 1'b1;
    end else begin
        delta_weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_32_address0_local = zext_ln75_13_fu_3485_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_32_address0_local = zext_ln75_5_fu_3261_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_32_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_32_address0_local = 'bx;
        end
    end else begin
        delta_weights3_32_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_32_ce0_local = 1'b1;
    end else begin
        delta_weights3_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_32_d0_local = mul_5_1_reg_4002;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_32_d0_local = mul_2_2_reg_3906;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_32_d0_local = mul_reg_3810;
        end else begin
            delta_weights3_32_d0_local = 'bx;
        end
    end else begin
        delta_weights3_32_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_32_we0_local = 1'b1;
    end else begin
        delta_weights3_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_33_address0_local = zext_ln75_14_fu_3513_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_33_address0_local = zext_ln75_6_fu_3289_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_33_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_33_address0_local = 'bx;
        end
    end else begin
        delta_weights3_33_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_33_ce0_local = 1'b1;
    end else begin
        delta_weights3_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_33_d0_local = mul_5_2_reg_4014;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_33_d0_local = mul_3_reg_3918;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_33_d0_local = mul_s_reg_3822;
        end else begin
            delta_weights3_33_d0_local = 'bx;
        end
    end else begin
        delta_weights3_33_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_33_we0_local = 1'b1;
    end else begin
        delta_weights3_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_34_address0_local = zext_ln75_15_fu_3541_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_34_address0_local = zext_ln75_7_fu_3317_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_34_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_34_address0_local = 'bx;
        end
    end else begin
        delta_weights3_34_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_34_ce0_local = 1'b1;
    end else begin
        delta_weights3_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_34_d0_local = mul_6_reg_4026;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_34_d0_local = mul_3_1_reg_3930;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_34_d0_local = mul_8_reg_3834;
        end else begin
            delta_weights3_34_d0_local = 'bx;
        end
    end else begin
        delta_weights3_34_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_34_we0_local = 1'b1;
    end else begin
        delta_weights3_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_35_address0_local = zext_ln75_16_fu_3569_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_35_address0_local = zext_ln75_8_fu_3345_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_35_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_35_address0_local = 'bx;
        end
    end else begin
        delta_weights3_35_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_35_ce0_local = 1'b1;
    end else begin
        delta_weights3_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_35_d0_local = mul_6_1_reg_4038;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_35_d0_local = mul_3_2_reg_3942;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_35_d0_local = mul_1_reg_3846;
        end else begin
            delta_weights3_35_d0_local = 'bx;
        end
    end else begin
        delta_weights3_35_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_35_we0_local = 1'b1;
    end else begin
        delta_weights3_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_36_address0_local = zext_ln75_17_fu_3597_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_36_address0_local = zext_ln75_9_fu_3373_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_36_address0_local = zext_ln75_2_fu_3177_p1;
        end else begin
            delta_weights3_36_address0_local = 'bx;
        end
    end else begin
        delta_weights3_36_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_36_ce0_local = 1'b1;
    end else begin
        delta_weights3_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_36_d0_local = mul_6_2_reg_4050;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_36_d0_local = mul_4_reg_3954;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_36_d0_local = mul_1_1_reg_3858;
        end else begin
            delta_weights3_36_d0_local = 'bx;
        end
    end else begin
        delta_weights3_36_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_36_we0_local = 1'b1;
    end else begin
        delta_weights3_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_37_address0_local = zext_ln75_18_fu_3625_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_37_address0_local = zext_ln75_10_fu_3401_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_37_address0_local = zext_ln75_3_fu_3205_p1;
        end else begin
            delta_weights3_37_address0_local = 'bx;
        end
    end else begin
        delta_weights3_37_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_37_ce0_local = 1'b1;
    end else begin
        delta_weights3_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_37_d0_local = mul_7_reg_4062;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_37_d0_local = mul_4_1_reg_3966;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_37_d0_local = mul_1_2_reg_3870;
        end else begin
            delta_weights3_37_d0_local = 'bx;
        end
    end else begin
        delta_weights3_37_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_37_we0_local = 1'b1;
    end else begin
        delta_weights3_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_38_address0_local = zext_ln75_19_fu_3653_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_38_address0_local = zext_ln75_11_fu_3429_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_38_address0_local = zext_ln75_4_fu_3233_p1;
        end else begin
            delta_weights3_38_address0_local = 'bx;
        end
    end else begin
        delta_weights3_38_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_38_ce0_local = 1'b1;
    end else begin
        delta_weights3_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_38_d0_local = mul_7_1_reg_4074;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_38_d0_local = mul_4_2_reg_3978;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_38_d0_local = mul_2_reg_3882;
        end else begin
            delta_weights3_38_d0_local = 'bx;
        end
    end else begin
        delta_weights3_38_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_38_we0_local = 1'b1;
    end else begin
        delta_weights3_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_39_address0_local = zext_ln75_20_fu_3681_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_39_address0_local = zext_ln75_12_fu_3457_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_39_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_39_address0_local = 'bx;
        end
    end else begin
        delta_weights3_39_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_39_ce0_local = 1'b1;
    end else begin
        delta_weights3_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1093_state9 == 1'b1)) begin
            delta_weights3_39_d0_local = mul_7_2_reg_4086;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_39_d0_local = mul_5_reg_3990;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_39_d0_local = mul_2_1_reg_3894;
        end else begin
            delta_weights3_39_d0_local = 'bx;
        end
    end else begin
        delta_weights3_39_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1093_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_39_we0_local = 1'b1;
    end else begin
        delta_weights3_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_8_fu_3345_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_16_fu_3569_p1;
        end else begin
            delta_weights3_3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_1_reg_3846;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_3_2_reg_3942;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_6_1_reg_4038;
        end else begin
            delta_weights3_3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_40_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_40_address0_local = zext_ln75_13_fu_3485_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_40_address0_local = zext_ln75_5_fu_3261_p1;
        end else begin
            delta_weights3_40_address0_local = 'bx;
        end
    end else begin
        delta_weights3_40_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_40_ce0_local = 1'b1;
    end else begin
        delta_weights3_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_40_d0_local = mul_reg_3810;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_40_d0_local = mul_5_1_reg_4002;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_40_d0_local = mul_2_2_reg_3906;
        end else begin
            delta_weights3_40_d0_local = 'bx;
        end
    end else begin
        delta_weights3_40_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_40_we0_local = 1'b1;
    end else begin
        delta_weights3_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_41_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_41_address0_local = zext_ln75_14_fu_3513_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_41_address0_local = zext_ln75_6_fu_3289_p1;
        end else begin
            delta_weights3_41_address0_local = 'bx;
        end
    end else begin
        delta_weights3_41_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_41_ce0_local = 1'b1;
    end else begin
        delta_weights3_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_41_d0_local = mul_s_reg_3822;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_41_d0_local = mul_5_2_reg_4014;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_41_d0_local = mul_3_reg_3918;
        end else begin
            delta_weights3_41_d0_local = 'bx;
        end
    end else begin
        delta_weights3_41_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_41_we0_local = 1'b1;
    end else begin
        delta_weights3_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_42_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_42_address0_local = zext_ln75_15_fu_3541_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_42_address0_local = zext_ln75_7_fu_3317_p1;
        end else begin
            delta_weights3_42_address0_local = 'bx;
        end
    end else begin
        delta_weights3_42_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_42_ce0_local = 1'b1;
    end else begin
        delta_weights3_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_42_d0_local = mul_8_reg_3834;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_42_d0_local = mul_6_reg_4026;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_42_d0_local = mul_3_1_reg_3930;
        end else begin
            delta_weights3_42_d0_local = 'bx;
        end
    end else begin
        delta_weights3_42_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_42_we0_local = 1'b1;
    end else begin
        delta_weights3_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_43_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_43_address0_local = zext_ln75_16_fu_3569_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_43_address0_local = zext_ln75_8_fu_3345_p1;
        end else begin
            delta_weights3_43_address0_local = 'bx;
        end
    end else begin
        delta_weights3_43_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_43_ce0_local = 1'b1;
    end else begin
        delta_weights3_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_43_d0_local = mul_1_reg_3846;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_43_d0_local = mul_6_1_reg_4038;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_43_d0_local = mul_3_2_reg_3942;
        end else begin
            delta_weights3_43_d0_local = 'bx;
        end
    end else begin
        delta_weights3_43_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_43_we0_local = 1'b1;
    end else begin
        delta_weights3_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_44_address0_local = zext_ln75_2_fu_3177_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_44_address0_local = zext_ln75_17_fu_3597_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_44_address0_local = zext_ln75_9_fu_3373_p1;
        end else begin
            delta_weights3_44_address0_local = 'bx;
        end
    end else begin
        delta_weights3_44_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_44_ce0_local = 1'b1;
    end else begin
        delta_weights3_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_44_d0_local = mul_1_1_reg_3858;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_44_d0_local = mul_6_2_reg_4050;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_44_d0_local = mul_4_reg_3954;
        end else begin
            delta_weights3_44_d0_local = 'bx;
        end
    end else begin
        delta_weights3_44_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_44_we0_local = 1'b1;
    end else begin
        delta_weights3_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_45_address0_local = zext_ln75_3_fu_3205_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_45_address0_local = zext_ln75_18_fu_3625_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_45_address0_local = zext_ln75_10_fu_3401_p1;
        end else begin
            delta_weights3_45_address0_local = 'bx;
        end
    end else begin
        delta_weights3_45_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_45_ce0_local = 1'b1;
    end else begin
        delta_weights3_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_45_d0_local = mul_1_2_reg_3870;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_45_d0_local = mul_7_reg_4062;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_45_d0_local = mul_4_1_reg_3966;
        end else begin
            delta_weights3_45_d0_local = 'bx;
        end
    end else begin
        delta_weights3_45_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_45_we0_local = 1'b1;
    end else begin
        delta_weights3_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_46_address0_local = zext_ln75_4_fu_3233_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_46_address0_local = zext_ln75_19_fu_3653_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_46_address0_local = zext_ln75_11_fu_3429_p1;
        end else begin
            delta_weights3_46_address0_local = 'bx;
        end
    end else begin
        delta_weights3_46_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_46_ce0_local = 1'b1;
    end else begin
        delta_weights3_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_46_d0_local = mul_2_reg_3882;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_46_d0_local = mul_7_1_reg_4074;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_46_d0_local = mul_4_2_reg_3978;
        end else begin
            delta_weights3_46_d0_local = 'bx;
        end
    end else begin
        delta_weights3_46_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_46_we0_local = 1'b1;
    end else begin
        delta_weights3_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_47_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_47_address0_local = zext_ln75_20_fu_3681_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_47_address0_local = zext_ln75_12_fu_3457_p1;
        end else begin
            delta_weights3_47_address0_local = 'bx;
        end
    end else begin
        delta_weights3_47_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_47_ce0_local = 1'b1;
    end else begin
        delta_weights3_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_47_d0_local = mul_2_1_reg_3894;
        end else if ((ap_predicate_pred1097_state9 == 1'b1)) begin
            delta_weights3_47_d0_local = mul_7_2_reg_4086;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_47_d0_local = mul_5_reg_3990;
        end else begin
            delta_weights3_47_d0_local = 'bx;
        end
    end else begin
        delta_weights3_47_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1097_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)))) begin
        delta_weights3_47_we0_local = 1'b1;
    end else begin
        delta_weights3_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_48_address0_local = zext_ln75_5_fu_3261_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_48_address0_local = zext_ln75_13_fu_3485_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_48_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_48_address0_local = 'bx;
        end
    end else begin
        delta_weights3_48_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_48_ce0_local = 1'b1;
    end else begin
        delta_weights3_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_48_d0_local = mul_2_2_reg_3906;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_48_d0_local = mul_5_1_reg_4002;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_48_d0_local = mul_reg_3810;
        end else begin
            delta_weights3_48_d0_local = 'bx;
        end
    end else begin
        delta_weights3_48_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_48_we0_local = 1'b1;
    end else begin
        delta_weights3_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_49_address0_local = zext_ln75_6_fu_3289_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_49_address0_local = zext_ln75_14_fu_3513_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_49_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_49_address0_local = 'bx;
        end
    end else begin
        delta_weights3_49_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_49_ce0_local = 1'b1;
    end else begin
        delta_weights3_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_49_d0_local = mul_3_reg_3918;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_49_d0_local = mul_5_2_reg_4014;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_49_d0_local = mul_s_reg_3822;
        end else begin
            delta_weights3_49_d0_local = 'bx;
        end
    end else begin
        delta_weights3_49_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_49_we0_local = 1'b1;
    end else begin
        delta_weights3_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_2_fu_3177_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_9_fu_3373_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_17_fu_3597_p1;
        end else begin
            delta_weights3_4_address0_local = 'bx;
        end
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_1_1_reg_3858;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_4_reg_3954;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_6_2_reg_4050;
        end else begin
            delta_weights3_4_d0_local = 'bx;
        end
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_50_address0_local = zext_ln75_7_fu_3317_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_50_address0_local = zext_ln75_15_fu_3541_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_50_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_50_address0_local = 'bx;
        end
    end else begin
        delta_weights3_50_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_50_ce0_local = 1'b1;
    end else begin
        delta_weights3_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_50_d0_local = mul_3_1_reg_3930;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_50_d0_local = mul_6_reg_4026;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_50_d0_local = mul_8_reg_3834;
        end else begin
            delta_weights3_50_d0_local = 'bx;
        end
    end else begin
        delta_weights3_50_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_50_we0_local = 1'b1;
    end else begin
        delta_weights3_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_51_address0_local = zext_ln75_8_fu_3345_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_51_address0_local = zext_ln75_16_fu_3569_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_51_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_51_address0_local = 'bx;
        end
    end else begin
        delta_weights3_51_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_51_ce0_local = 1'b1;
    end else begin
        delta_weights3_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_51_d0_local = mul_3_2_reg_3942;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_51_d0_local = mul_6_1_reg_4038;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_51_d0_local = mul_1_reg_3846;
        end else begin
            delta_weights3_51_d0_local = 'bx;
        end
    end else begin
        delta_weights3_51_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_51_we0_local = 1'b1;
    end else begin
        delta_weights3_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_52_address0_local = zext_ln75_9_fu_3373_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_52_address0_local = zext_ln75_17_fu_3597_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_52_address0_local = zext_ln75_2_fu_3177_p1;
        end else begin
            delta_weights3_52_address0_local = 'bx;
        end
    end else begin
        delta_weights3_52_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_52_ce0_local = 1'b1;
    end else begin
        delta_weights3_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_52_d0_local = mul_4_reg_3954;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_52_d0_local = mul_6_2_reg_4050;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_52_d0_local = mul_1_1_reg_3858;
        end else begin
            delta_weights3_52_d0_local = 'bx;
        end
    end else begin
        delta_weights3_52_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_52_we0_local = 1'b1;
    end else begin
        delta_weights3_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_53_address0_local = zext_ln75_10_fu_3401_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_53_address0_local = zext_ln75_18_fu_3625_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_53_address0_local = zext_ln75_3_fu_3205_p1;
        end else begin
            delta_weights3_53_address0_local = 'bx;
        end
    end else begin
        delta_weights3_53_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_53_ce0_local = 1'b1;
    end else begin
        delta_weights3_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_53_d0_local = mul_4_1_reg_3966;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_53_d0_local = mul_7_reg_4062;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_53_d0_local = mul_1_2_reg_3870;
        end else begin
            delta_weights3_53_d0_local = 'bx;
        end
    end else begin
        delta_weights3_53_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_53_we0_local = 1'b1;
    end else begin
        delta_weights3_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_54_address0_local = zext_ln75_11_fu_3429_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_54_address0_local = zext_ln75_19_fu_3653_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_54_address0_local = zext_ln75_4_fu_3233_p1;
        end else begin
            delta_weights3_54_address0_local = 'bx;
        end
    end else begin
        delta_weights3_54_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_54_ce0_local = 1'b1;
    end else begin
        delta_weights3_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_54_d0_local = mul_4_2_reg_3978;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_54_d0_local = mul_7_1_reg_4074;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_54_d0_local = mul_2_reg_3882;
        end else begin
            delta_weights3_54_d0_local = 'bx;
        end
    end else begin
        delta_weights3_54_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_54_we0_local = 1'b1;
    end else begin
        delta_weights3_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_55_address0_local = zext_ln75_12_fu_3457_p1;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_55_address0_local = zext_ln75_20_fu_3681_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_55_address0_local = zext_ln75_1_fu_3111_p1;
        end else begin
            delta_weights3_55_address0_local = 'bx;
        end
    end else begin
        delta_weights3_55_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_55_ce0_local = 1'b1;
    end else begin
        delta_weights3_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_55_d0_local = mul_5_reg_3990;
        end else if ((ap_predicate_pred1079_state9 == 1'b1)) begin
            delta_weights3_55_d0_local = mul_7_2_reg_4086;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_55_d0_local = mul_2_1_reg_3894;
        end else begin
            delta_weights3_55_d0_local = 'bx;
        end
    end else begin
        delta_weights3_55_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1079_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_55_we0_local = 1'b1;
    end else begin
        delta_weights3_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_56_address0_local = zext_ln75_13_fu_3485_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_56_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_56_address0_local = zext_ln75_5_fu_3261_p1;
        end else begin
            delta_weights3_56_address0_local = 'bx;
        end
    end else begin
        delta_weights3_56_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_56_ce0_local = 1'b1;
    end else begin
        delta_weights3_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_56_d0_local = mul_5_1_reg_4002;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_56_d0_local = mul_reg_3810;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_56_d0_local = mul_2_2_reg_3906;
        end else begin
            delta_weights3_56_d0_local = 'bx;
        end
    end else begin
        delta_weights3_56_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_56_we0_local = 1'b1;
    end else begin
        delta_weights3_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_57_address0_local = zext_ln75_14_fu_3513_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_57_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_57_address0_local = zext_ln75_6_fu_3289_p1;
        end else begin
            delta_weights3_57_address0_local = 'bx;
        end
    end else begin
        delta_weights3_57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_57_ce0_local = 1'b1;
    end else begin
        delta_weights3_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_57_d0_local = mul_5_2_reg_4014;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_57_d0_local = mul_s_reg_3822;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_57_d0_local = mul_3_reg_3918;
        end else begin
            delta_weights3_57_d0_local = 'bx;
        end
    end else begin
        delta_weights3_57_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_57_we0_local = 1'b1;
    end else begin
        delta_weights3_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_58_address0_local = zext_ln75_15_fu_3541_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_58_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_58_address0_local = zext_ln75_7_fu_3317_p1;
        end else begin
            delta_weights3_58_address0_local = 'bx;
        end
    end else begin
        delta_weights3_58_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_58_ce0_local = 1'b1;
    end else begin
        delta_weights3_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_58_d0_local = mul_6_reg_4026;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_58_d0_local = mul_8_reg_3834;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_58_d0_local = mul_3_1_reg_3930;
        end else begin
            delta_weights3_58_d0_local = 'bx;
        end
    end else begin
        delta_weights3_58_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_58_we0_local = 1'b1;
    end else begin
        delta_weights3_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_59_address0_local = zext_ln75_16_fu_3569_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_59_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_59_address0_local = zext_ln75_8_fu_3345_p1;
        end else begin
            delta_weights3_59_address0_local = 'bx;
        end
    end else begin
        delta_weights3_59_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_59_ce0_local = 1'b1;
    end else begin
        delta_weights3_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_59_d0_local = mul_6_1_reg_4038;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_59_d0_local = mul_1_reg_3846;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_59_d0_local = mul_3_2_reg_3942;
        end else begin
            delta_weights3_59_d0_local = 'bx;
        end
    end else begin
        delta_weights3_59_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_59_we0_local = 1'b1;
    end else begin
        delta_weights3_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_3_fu_3205_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_10_fu_3401_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_18_fu_3625_p1;
        end else begin
            delta_weights3_5_address0_local = 'bx;
        end
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_1_2_reg_3870;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_4_1_reg_3966;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_7_reg_4062;
        end else begin
            delta_weights3_5_d0_local = 'bx;
        end
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_60_address0_local = zext_ln75_17_fu_3597_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_60_address0_local = zext_ln75_2_fu_3177_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_60_address0_local = zext_ln75_9_fu_3373_p1;
        end else begin
            delta_weights3_60_address0_local = 'bx;
        end
    end else begin
        delta_weights3_60_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_60_ce0_local = 1'b1;
    end else begin
        delta_weights3_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_60_d0_local = mul_6_2_reg_4050;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_60_d0_local = mul_1_1_reg_3858;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_60_d0_local = mul_4_reg_3954;
        end else begin
            delta_weights3_60_d0_local = 'bx;
        end
    end else begin
        delta_weights3_60_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_60_we0_local = 1'b1;
    end else begin
        delta_weights3_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_61_address0_local = zext_ln75_18_fu_3625_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_61_address0_local = zext_ln75_3_fu_3205_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_61_address0_local = zext_ln75_10_fu_3401_p1;
        end else begin
            delta_weights3_61_address0_local = 'bx;
        end
    end else begin
        delta_weights3_61_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_61_ce0_local = 1'b1;
    end else begin
        delta_weights3_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_61_d0_local = mul_7_reg_4062;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_61_d0_local = mul_1_2_reg_3870;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_61_d0_local = mul_4_1_reg_3966;
        end else begin
            delta_weights3_61_d0_local = 'bx;
        end
    end else begin
        delta_weights3_61_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_61_we0_local = 1'b1;
    end else begin
        delta_weights3_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_62_address0_local = zext_ln75_19_fu_3653_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_62_address0_local = zext_ln75_4_fu_3233_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_62_address0_local = zext_ln75_11_fu_3429_p1;
        end else begin
            delta_weights3_62_address0_local = 'bx;
        end
    end else begin
        delta_weights3_62_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_62_ce0_local = 1'b1;
    end else begin
        delta_weights3_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_62_d0_local = mul_7_1_reg_4074;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_62_d0_local = mul_2_reg_3882;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_62_d0_local = mul_4_2_reg_3978;
        end else begin
            delta_weights3_62_d0_local = 'bx;
        end
    end else begin
        delta_weights3_62_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_62_we0_local = 1'b1;
    end else begin
        delta_weights3_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_63_address0_local = zext_ln75_20_fu_3681_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_63_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_63_address0_local = zext_ln75_12_fu_3457_p1;
        end else begin
            delta_weights3_63_address0_local = 'bx;
        end
    end else begin
        delta_weights3_63_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_63_ce0_local = 1'b1;
    end else begin
        delta_weights3_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1107_state9 == 1'b1)) begin
            delta_weights3_63_d0_local = mul_7_2_reg_4086;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_63_d0_local = mul_2_1_reg_3894;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_63_d0_local = mul_5_reg_3990;
        end else begin
            delta_weights3_63_d0_local = 'bx;
        end
    end else begin
        delta_weights3_63_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1107_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_63_we0_local = 1'b1;
    end else begin
        delta_weights3_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_4_fu_3233_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_11_fu_3429_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_19_fu_3653_p1;
        end else begin
            delta_weights3_6_address0_local = 'bx;
        end
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_2_reg_3882;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_4_2_reg_3978;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_7_1_reg_4074;
        end else begin
            delta_weights3_6_d0_local = 'bx;
        end
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_12_fu_3457_p1;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_20_fu_3681_p1;
        end else begin
            delta_weights3_7_address0_local = 'bx;
        end
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_2_1_reg_3894;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_5_reg_3990;
        end else if ((ap_predicate_pred1070_state9 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_7_2_reg_4086;
        end else begin
            delta_weights3_7_d0_local = 'bx;
        end
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1070_state9 == 1'b1)))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_5_fu_3261_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_13_fu_3485_p1;
        end else begin
            delta_weights3_8_address0_local = 'bx;
        end
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_2_2_reg_3906;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_reg_3810;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_5_1_reg_4002;
        end else begin
            delta_weights3_8_d0_local = 'bx;
        end
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_6_fu_3289_p1;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_1_fu_3111_p1;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_14_fu_3513_p1;
        end else begin
            delta_weights3_9_address0_local = 'bx;
        end
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        if ((ap_predicate_pred1086_state9 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_3_reg_3918;
        end else if ((ap_predicate_pred1089_state9 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_s_reg_3822;
        end else if ((ap_predicate_pred1103_state9 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_5_2_reg_4014;
        end else begin
            delta_weights3_9_d0_local = 'bx;
        end
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1089_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1086_state9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (ap_predicate_pred1103_state9 == 1'b1)))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
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
assign add_ln73_fu_3100_p2 = (ap_sig_allocacmp_i_9 + 7'd8);
assign add_ln75_10_fu_3581_p2 = (tmp_207_fu_3154_p3 + 8'd17);
assign add_ln75_11_fu_3637_p2 = (tmp_207_fu_3154_p3 + 8'd19);
assign add_ln75_12_fu_3665_p2 = (tmp_207_fu_3154_p3 + 8'd20);
assign add_ln75_1_fu_3189_p2 = (tmp_207_fu_3154_p3 + 8'd2);
assign add_ln75_2_fu_3245_p2 = (tmp_207_fu_3154_p3 + 8'd5);
assign add_ln75_3_fu_3301_p2 = (tmp_207_fu_3154_p3 + 8'd7);
assign add_ln75_4_fu_3329_p2 = (tmp_207_fu_3154_p3 + 8'd8);
assign add_ln75_5_fu_3385_p2 = (tmp_207_fu_3154_p3 + 8'd10);
assign add_ln75_6_fu_3413_p2 = (tmp_207_fu_3154_p3 + 8'd11);
assign add_ln75_7_fu_3469_p2 = (tmp_207_fu_3154_p3 + 8'd13);
assign add_ln75_8_fu_3497_p2 = (tmp_207_fu_3154_p3 + 8'd14);
assign add_ln75_9_fu_3553_p2 = (tmp_207_fu_3154_p3 + 8'd16);
assign add_ln75_fu_3161_p2 = (tmp_207_fu_3154_p3 + 8'd1);
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
assign delta_weights3_32_address0 = delta_weights3_32_address0_local;
assign delta_weights3_32_ce0 = delta_weights3_32_ce0_local;
assign delta_weights3_32_d0 = delta_weights3_32_d0_local;
assign delta_weights3_32_we0 = delta_weights3_32_we0_local;
assign delta_weights3_33_address0 = delta_weights3_33_address0_local;
assign delta_weights3_33_ce0 = delta_weights3_33_ce0_local;
assign delta_weights3_33_d0 = delta_weights3_33_d0_local;
assign delta_weights3_33_we0 = delta_weights3_33_we0_local;
assign delta_weights3_34_address0 = delta_weights3_34_address0_local;
assign delta_weights3_34_ce0 = delta_weights3_34_ce0_local;
assign delta_weights3_34_d0 = delta_weights3_34_d0_local;
assign delta_weights3_34_we0 = delta_weights3_34_we0_local;
assign delta_weights3_35_address0 = delta_weights3_35_address0_local;
assign delta_weights3_35_ce0 = delta_weights3_35_ce0_local;
assign delta_weights3_35_d0 = delta_weights3_35_d0_local;
assign delta_weights3_35_we0 = delta_weights3_35_we0_local;
assign delta_weights3_36_address0 = delta_weights3_36_address0_local;
assign delta_weights3_36_ce0 = delta_weights3_36_ce0_local;
assign delta_weights3_36_d0 = delta_weights3_36_d0_local;
assign delta_weights3_36_we0 = delta_weights3_36_we0_local;
assign delta_weights3_37_address0 = delta_weights3_37_address0_local;
assign delta_weights3_37_ce0 = delta_weights3_37_ce0_local;
assign delta_weights3_37_d0 = delta_weights3_37_d0_local;
assign delta_weights3_37_we0 = delta_weights3_37_we0_local;
assign delta_weights3_38_address0 = delta_weights3_38_address0_local;
assign delta_weights3_38_ce0 = delta_weights3_38_ce0_local;
assign delta_weights3_38_d0 = delta_weights3_38_d0_local;
assign delta_weights3_38_we0 = delta_weights3_38_we0_local;
assign delta_weights3_39_address0 = delta_weights3_39_address0_local;
assign delta_weights3_39_ce0 = delta_weights3_39_ce0_local;
assign delta_weights3_39_d0 = delta_weights3_39_d0_local;
assign delta_weights3_39_we0 = delta_weights3_39_we0_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_40_address0 = delta_weights3_40_address0_local;
assign delta_weights3_40_ce0 = delta_weights3_40_ce0_local;
assign delta_weights3_40_d0 = delta_weights3_40_d0_local;
assign delta_weights3_40_we0 = delta_weights3_40_we0_local;
assign delta_weights3_41_address0 = delta_weights3_41_address0_local;
assign delta_weights3_41_ce0 = delta_weights3_41_ce0_local;
assign delta_weights3_41_d0 = delta_weights3_41_d0_local;
assign delta_weights3_41_we0 = delta_weights3_41_we0_local;
assign delta_weights3_42_address0 = delta_weights3_42_address0_local;
assign delta_weights3_42_ce0 = delta_weights3_42_ce0_local;
assign delta_weights3_42_d0 = delta_weights3_42_d0_local;
assign delta_weights3_42_we0 = delta_weights3_42_we0_local;
assign delta_weights3_43_address0 = delta_weights3_43_address0_local;
assign delta_weights3_43_ce0 = delta_weights3_43_ce0_local;
assign delta_weights3_43_d0 = delta_weights3_43_d0_local;
assign delta_weights3_43_we0 = delta_weights3_43_we0_local;
assign delta_weights3_44_address0 = delta_weights3_44_address0_local;
assign delta_weights3_44_ce0 = delta_weights3_44_ce0_local;
assign delta_weights3_44_d0 = delta_weights3_44_d0_local;
assign delta_weights3_44_we0 = delta_weights3_44_we0_local;
assign delta_weights3_45_address0 = delta_weights3_45_address0_local;
assign delta_weights3_45_ce0 = delta_weights3_45_ce0_local;
assign delta_weights3_45_d0 = delta_weights3_45_d0_local;
assign delta_weights3_45_we0 = delta_weights3_45_we0_local;
assign delta_weights3_46_address0 = delta_weights3_46_address0_local;
assign delta_weights3_46_ce0 = delta_weights3_46_ce0_local;
assign delta_weights3_46_d0 = delta_weights3_46_d0_local;
assign delta_weights3_46_we0 = delta_weights3_46_we0_local;
assign delta_weights3_47_address0 = delta_weights3_47_address0_local;
assign delta_weights3_47_ce0 = delta_weights3_47_ce0_local;
assign delta_weights3_47_d0 = delta_weights3_47_d0_local;
assign delta_weights3_47_we0 = delta_weights3_47_we0_local;
assign delta_weights3_48_address0 = delta_weights3_48_address0_local;
assign delta_weights3_48_ce0 = delta_weights3_48_ce0_local;
assign delta_weights3_48_d0 = delta_weights3_48_d0_local;
assign delta_weights3_48_we0 = delta_weights3_48_we0_local;
assign delta_weights3_49_address0 = delta_weights3_49_address0_local;
assign delta_weights3_49_ce0 = delta_weights3_49_ce0_local;
assign delta_weights3_49_d0 = delta_weights3_49_d0_local;
assign delta_weights3_49_we0 = delta_weights3_49_we0_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_50_address0 = delta_weights3_50_address0_local;
assign delta_weights3_50_ce0 = delta_weights3_50_ce0_local;
assign delta_weights3_50_d0 = delta_weights3_50_d0_local;
assign delta_weights3_50_we0 = delta_weights3_50_we0_local;
assign delta_weights3_51_address0 = delta_weights3_51_address0_local;
assign delta_weights3_51_ce0 = delta_weights3_51_ce0_local;
assign delta_weights3_51_d0 = delta_weights3_51_d0_local;
assign delta_weights3_51_we0 = delta_weights3_51_we0_local;
assign delta_weights3_52_address0 = delta_weights3_52_address0_local;
assign delta_weights3_52_ce0 = delta_weights3_52_ce0_local;
assign delta_weights3_52_d0 = delta_weights3_52_d0_local;
assign delta_weights3_52_we0 = delta_weights3_52_we0_local;
assign delta_weights3_53_address0 = delta_weights3_53_address0_local;
assign delta_weights3_53_ce0 = delta_weights3_53_ce0_local;
assign delta_weights3_53_d0 = delta_weights3_53_d0_local;
assign delta_weights3_53_we0 = delta_weights3_53_we0_local;
assign delta_weights3_54_address0 = delta_weights3_54_address0_local;
assign delta_weights3_54_ce0 = delta_weights3_54_ce0_local;
assign delta_weights3_54_d0 = delta_weights3_54_d0_local;
assign delta_weights3_54_we0 = delta_weights3_54_we0_local;
assign delta_weights3_55_address0 = delta_weights3_55_address0_local;
assign delta_weights3_55_ce0 = delta_weights3_55_ce0_local;
assign delta_weights3_55_d0 = delta_weights3_55_d0_local;
assign delta_weights3_55_we0 = delta_weights3_55_we0_local;
assign delta_weights3_56_address0 = delta_weights3_56_address0_local;
assign delta_weights3_56_ce0 = delta_weights3_56_ce0_local;
assign delta_weights3_56_d0 = delta_weights3_56_d0_local;
assign delta_weights3_56_we0 = delta_weights3_56_we0_local;
assign delta_weights3_57_address0 = delta_weights3_57_address0_local;
assign delta_weights3_57_ce0 = delta_weights3_57_ce0_local;
assign delta_weights3_57_d0 = delta_weights3_57_d0_local;
assign delta_weights3_57_we0 = delta_weights3_57_we0_local;
assign delta_weights3_58_address0 = delta_weights3_58_address0_local;
assign delta_weights3_58_ce0 = delta_weights3_58_ce0_local;
assign delta_weights3_58_d0 = delta_weights3_58_d0_local;
assign delta_weights3_58_we0 = delta_weights3_58_we0_local;
assign delta_weights3_59_address0 = delta_weights3_59_address0_local;
assign delta_weights3_59_ce0 = delta_weights3_59_ce0_local;
assign delta_weights3_59_d0 = delta_weights3_59_d0_local;
assign delta_weights3_59_we0 = delta_weights3_59_we0_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_60_address0 = delta_weights3_60_address0_local;
assign delta_weights3_60_ce0 = delta_weights3_60_ce0_local;
assign delta_weights3_60_d0 = delta_weights3_60_d0_local;
assign delta_weights3_60_we0 = delta_weights3_60_we0_local;
assign delta_weights3_61_address0 = delta_weights3_61_address0_local;
assign delta_weights3_61_ce0 = delta_weights3_61_ce0_local;
assign delta_weights3_61_d0 = delta_weights3_61_d0_local;
assign delta_weights3_61_we0 = delta_weights3_61_we0_local;
assign delta_weights3_62_address0 = delta_weights3_62_address0_local;
assign delta_weights3_62_ce0 = delta_weights3_62_ce0_local;
assign delta_weights3_62_d0 = delta_weights3_62_d0_local;
assign delta_weights3_62_we0 = delta_weights3_62_we0_local;
assign delta_weights3_63_address0 = delta_weights3_63_address0_local;
assign delta_weights3_63_ce0 = delta_weights3_63_ce0_local;
assign delta_weights3_63_d0 = delta_weights3_63_d0_local;
assign delta_weights3_63_we0 = delta_weights3_63_we0_local;
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
assign empty_940_fu_3273_p2 = (tmp_207_fu_3154_p3 + 8'd6);
assign empty_941_fu_3357_p2 = (tmp_207_fu_3154_p3 + 8'd9);
assign empty_942_fu_3441_p2 = (tmp_207_fu_3154_p3 + 8'd12);
assign empty_943_fu_3525_p2 = (tmp_207_fu_3154_p3 + 8'd15);
assign empty_944_fu_3609_p2 = (tmp_207_fu_3154_p3 + 8'd18);
assign empty_fu_3217_p2 = (tmp_207_fu_3154_p3 + 8'd3);
assign grp_fu_22879_p_ce = 1'b1;
assign grp_fu_22879_p_din0 = tmp_reg_3744;
assign grp_fu_22879_p_din1 = output_difference_0_0_val;
assign grp_fu_22883_p_ce = 1'b1;
assign grp_fu_22883_p_din0 = tmp_reg_3744;
assign grp_fu_22883_p_din1 = output_difference_0_1_val;
assign grp_fu_22887_p_ce = 1'b1;
assign grp_fu_22887_p_din0 = tmp_reg_3744;
assign grp_fu_22887_p_din1 = output_difference_0_2_val;
assign grp_fu_22891_p_ce = 1'b1;
assign grp_fu_22891_p_din0 = tmp_s_reg_3761;
assign grp_fu_22891_p_din1 = output_difference_0_0_val;
assign grp_fu_22895_p_ce = 1'b1;
assign grp_fu_22895_p_din0 = tmp_s_reg_3761;
assign grp_fu_22895_p_din1 = output_difference_0_1_val;
assign grp_fu_22899_p_ce = 1'b1;
assign grp_fu_22899_p_din0 = tmp_s_reg_3761;
assign grp_fu_22899_p_din1 = output_difference_0_2_val;
assign grp_fu_22903_p_ce = 1'b1;
assign grp_fu_22903_p_din0 = tmp_208_reg_3768;
assign grp_fu_22903_p_din1 = output_difference_0_0_val;
assign grp_fu_22907_p_ce = 1'b1;
assign grp_fu_22907_p_din0 = tmp_208_reg_3768;
assign grp_fu_22907_p_din1 = output_difference_0_1_val;
assign grp_fu_22911_p_ce = 1'b1;
assign grp_fu_22911_p_din0 = tmp_208_reg_3768;
assign grp_fu_22911_p_din1 = output_difference_0_2_val;
assign grp_fu_22915_p_ce = 1'b1;
assign grp_fu_22915_p_din0 = tmp_209_reg_3775;
assign grp_fu_22915_p_din1 = output_difference_0_0_val;
assign grp_fu_22919_p_ce = 1'b1;
assign grp_fu_22919_p_din0 = tmp_209_reg_3775;
assign grp_fu_22919_p_din1 = output_difference_0_1_val;
assign grp_fu_22923_p_ce = 1'b1;
assign grp_fu_22923_p_din0 = tmp_209_reg_3775;
assign grp_fu_22923_p_din1 = output_difference_0_2_val;
assign grp_fu_22927_p_ce = 1'b1;
assign grp_fu_22927_p_din0 = tmp_210_reg_3782;
assign grp_fu_22927_p_din1 = output_difference_0_0_val;
assign grp_fu_22931_p_ce = 1'b1;
assign grp_fu_22931_p_din0 = tmp_210_reg_3782;
assign grp_fu_22931_p_din1 = output_difference_0_1_val;
assign grp_fu_22935_p_ce = 1'b1;
assign grp_fu_22935_p_din0 = tmp_210_reg_3782;
assign grp_fu_22935_p_din1 = output_difference_0_2_val;
assign grp_fu_22939_p_ce = 1'b1;
assign grp_fu_22939_p_din0 = tmp_211_reg_3789;
assign grp_fu_22939_p_din1 = output_difference_0_0_val;
assign grp_fu_22943_p_ce = 1'b1;
assign grp_fu_22943_p_din0 = tmp_211_reg_3789;
assign grp_fu_22943_p_din1 = output_difference_0_1_val;
assign grp_fu_22947_p_ce = 1'b1;
assign grp_fu_22947_p_din0 = tmp_211_reg_3789;
assign grp_fu_22947_p_din1 = output_difference_0_2_val;
assign grp_fu_22951_p_ce = 1'b1;
assign grp_fu_22951_p_din0 = tmp_212_reg_3796;
assign grp_fu_22951_p_din1 = output_difference_0_0_val;
assign grp_fu_22955_p_ce = 1'b1;
assign grp_fu_22955_p_din0 = tmp_212_reg_3796;
assign grp_fu_22955_p_din1 = output_difference_0_1_val;
assign grp_fu_22959_p_ce = 1'b1;
assign grp_fu_22959_p_din0 = tmp_212_reg_3796;
assign grp_fu_22959_p_din1 = output_difference_0_2_val;
assign grp_fu_22963_p_ce = 1'b1;
assign grp_fu_22963_p_din0 = tmp_213_reg_3803;
assign grp_fu_22963_p_din1 = output_difference_0_0_val;
assign grp_fu_22967_p_ce = 1'b1;
assign grp_fu_22967_p_din0 = tmp_213_reg_3803;
assign grp_fu_22967_p_din1 = output_difference_0_1_val;
assign grp_fu_22971_p_ce = 1'b1;
assign grp_fu_22971_p_din0 = tmp_213_reg_3803;
assign grp_fu_22971_p_din1 = output_difference_0_2_val;
assign lshr_ln75_10_fu_3447_p4 = {{empty_942_fu_3441_p2[7:6]}};
assign lshr_ln75_11_fu_3475_p4 = {{add_ln75_7_fu_3469_p2[7:6]}};
assign lshr_ln75_12_fu_3503_p4 = {{add_ln75_8_fu_3497_p2[7:6]}};
assign lshr_ln75_13_fu_3531_p4 = {{empty_943_fu_3525_p2[7:6]}};
assign lshr_ln75_14_fu_3559_p4 = {{add_ln75_9_fu_3553_p2[7:6]}};
assign lshr_ln75_15_fu_3587_p4 = {{add_ln75_10_fu_3581_p2[7:6]}};
assign lshr_ln75_16_fu_3615_p4 = {{empty_944_fu_3609_p2[7:6]}};
assign lshr_ln75_17_fu_3643_p4 = {{add_ln75_11_fu_3637_p2[7:6]}};
assign lshr_ln75_18_fu_3671_p4 = {{add_ln75_12_fu_3665_p2[7:6]}};
assign lshr_ln75_1_fu_3167_p4 = {{add_ln75_fu_3161_p2[7:6]}};
assign lshr_ln75_2_fu_3195_p4 = {{add_ln75_1_fu_3189_p2[7:6]}};
assign lshr_ln75_3_fu_3223_p4 = {{empty_fu_3217_p2[7:6]}};
assign lshr_ln75_4_fu_3251_p4 = {{add_ln75_2_fu_3245_p2[7:6]}};
assign lshr_ln75_5_fu_3279_p4 = {{empty_940_fu_3273_p2[7:6]}};
assign lshr_ln75_6_fu_3307_p4 = {{add_ln75_3_fu_3301_p2[7:6]}};
assign lshr_ln75_7_fu_3335_p4 = {{add_ln75_4_fu_3329_p2[7:6]}};
assign lshr_ln75_8_fu_3363_p4 = {{empty_941_fu_3357_p2[7:6]}};
assign lshr_ln75_9_fu_3391_p4 = {{add_ln75_5_fu_3385_p2[7:6]}};
assign lshr_ln75_s_fu_3419_p4 = {{add_ln75_6_fu_3413_p2[7:6]}};
assign p_shl_fu_2786_p3 = {{trunc_ln73_fu_2742_p1}, {2'd0}};
assign sub_ln75_fu_2794_p2 = (p_shl_fu_2786_p3 - zext_ln75_fu_2738_p1);
assign tmp_11_fu_2730_p3 = ap_sig_allocacmp_i_9[32'd6];
assign tmp_207_fu_3154_p3 = {{tmp_206_reg_3756_pp0_iter7_reg}, {2'd3}};
assign tmp_208_fu_2860_p17 = 'bx;
assign tmp_209_fu_2900_p17 = 'bx;
assign tmp_210_fu_2940_p17 = 'bx;
assign tmp_211_fu_2980_p17 = 'bx;
assign tmp_212_fu_3020_p17 = 'bx;
assign tmp_213_fu_3060_p17 = 'bx;
assign tmp_fu_2746_p17 = 'bx;
assign tmp_s_fu_2820_p17 = 'bx;
assign trunc_ln73_fu_2742_p1 = ap_sig_allocacmp_i_9[5:0];
assign zext_ln75_10_fu_3401_p1 = lshr_ln75_9_fu_3391_p4;
assign zext_ln75_11_fu_3429_p1 = lshr_ln75_s_fu_3419_p4;
assign zext_ln75_12_fu_3457_p1 = lshr_ln75_10_fu_3447_p4;
assign zext_ln75_13_fu_3485_p1 = lshr_ln75_11_fu_3475_p4;
assign zext_ln75_14_fu_3513_p1 = lshr_ln75_12_fu_3503_p4;
assign zext_ln75_15_fu_3541_p1 = lshr_ln75_13_fu_3531_p4;
assign zext_ln75_16_fu_3569_p1 = lshr_ln75_14_fu_3559_p4;
assign zext_ln75_17_fu_3597_p1 = lshr_ln75_15_fu_3587_p4;
assign zext_ln75_18_fu_3625_p1 = lshr_ln75_16_fu_3615_p4;
assign zext_ln75_19_fu_3653_p1 = lshr_ln75_17_fu_3643_p4;
assign zext_ln75_1_fu_3111_p1 = lshr_ln_reg_3751_pp0_iter7_reg;
assign zext_ln75_20_fu_3681_p1 = lshr_ln75_18_fu_3671_p4;
assign zext_ln75_2_fu_3177_p1 = lshr_ln75_1_fu_3167_p4;
assign zext_ln75_3_fu_3205_p1 = lshr_ln75_2_fu_3195_p4;
assign zext_ln75_4_fu_3233_p1 = lshr_ln75_3_fu_3223_p4;
assign zext_ln75_5_fu_3261_p1 = lshr_ln75_4_fu_3251_p4;
assign zext_ln75_6_fu_3289_p1 = lshr_ln75_5_fu_3279_p4;
assign zext_ln75_7_fu_3317_p1 = lshr_ln75_6_fu_3307_p4;
assign zext_ln75_8_fu_3345_p1 = lshr_ln75_7_fu_3335_p4;
assign zext_ln75_9_fu_3373_p1 = lshr_ln75_8_fu_3363_p4;
assign zext_ln75_fu_2738_p1 = ap_sig_allocacmp_i_9;
endmodule 